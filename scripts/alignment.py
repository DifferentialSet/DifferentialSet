
# input: (obsv_id, [(base, offset)], pc_is_sensitive), (obsv_id, [(base, offset)], pc_is_sensitive)
# output: [(3-tuple, 3-tuple)] where 3-tuple can be None
def align_simple_branches_rec(left, right): 
    if len(left) == 0:
        return [(None, o) for o in right]
    elif len(right) == 0:
        return [(o, None) for o in left]

    sizes_left = [len(o[1]) for o in left]
    largest_set_index_left = sizes_left.index(max(sizes_left))
    largest_set_left = left[largest_set_index_left][1]
    overlap_size_right = [len({(tup[0], tup[1])for tup in largest_set_left} & {(tup[0], tup[1])for tup in o[1]}) for o in right]
    if (all(s == 0 for s in overlap_size_right)):
        # if there's no optimal alignment for base/offset pairs, find the optimal alignment for base only
        overlap_size_right = [len(set(lbo[0] for lbo in largest_set_left) & set(rbo[0] for rbo in o[1])) for o in right]
    matched_index_right = overlap_size_right.index(max(overlap_size_right))

    # Now largest_set_index_left is matched with matched_index_right

    # recursively align the before and after
    before_rec_result = align_simple_branches_rec(left[:largest_set_index_left], right[:matched_index_right])
    after_rec_result = align_simple_branches_rec(left[largest_set_index_left+1:], right[matched_index_right+1:])

    return before_rec_result + [(left[largest_set_index_left], right[matched_index_right])] + after_rec_result


def pub_three_tuple_to_dict(l, r=None):
    if r == None:
        r = []
    assert(type(l) == list and type(r) == list)
    
    obsv_to_pubs = {}
    for tup in l + r:
        if (tup[0], tup[1]) not in obsv_to_pubs:
            obsv_to_pubs[(tup[0], tup[1])] = tup[2]
        else:
            obsv_to_pubs[(tup[0], tup[1])].extend(tup[2])

    return obsv_to_pubs

# return a list of tuples, (list of obsv_ids, list of base_offset_pairs, pc_is_sensitive)
def align_simple_branches(left, right):

    # assert(left["pc_is_sensitive"] == right["pc_is_sensitive"])
    # pc_is_sensitive = left["pc_is_sensitive"]
    decoy_local_index = 0
    list_of_aligned_pairs = align_simple_branches_rec(left, right)
    result = []
    if left:
        left_pc = left[0][0][0].split("_")[1]
        right_pc = left_pc[:-1] + str(int(left_pc[-1]) ^ 1)
    elif right:
        right_pc = right[0][0][0].split("_")[1]
        left_pc = right_pc[:-1] + str(int(right_pc[-1]) ^ 1)
    left_decoy_prefixes = ["decoy_" + left_pc + "_"]
    right_decoy_prefixes = ["decoy_" + right_pc + "_"]
    for (l, r) in list_of_aligned_pairs:
        if l == None:
            left_decoy_names = [pre + "_" + str(decoy_local_index) for pre in left_decoy_prefixes]
            decoy_local_index += 1
            result.append((r[0] + left_decoy_names, r[1], r[2]))
        elif r == None:
            right_decoy_names = [pre + "_" + str(decoy_local_index) for pre in right_decoy_prefixes]
            decoy_local_index += 1
            result.append((l[0] + right_decoy_names, l[1], l[2]))
        else:
            decoy_local_index = 0
            left_decoy_prefixes = ["decoy_" + left_pc + "_" + o.split("_")[2] for o in l[0]]
            right_decoy_prefixes = ["decoy_" + right_pc + "_" + o.split("_")[2] for o in r[0]]
            assert(l[2] == r[2]) # pc_is_sensitive should be the same

            result.append((l[0] + r[0], {k: l[1].get(k, []) + r[1].get(k, []) for k in list(l[1].keys()) + list(r[1].keys())}, l[2]))
    return result


def align_ds(ds_map):
    obsv_ids_to_base_offset_pairs_list = []

    pc_trie = {"current": [], "branches": {}}
    for obsv_id, ds_list, pc_is_sensitive in ds_map:
        if not pc_is_sensitive:
            obsv_ids_to_base_offset_pairs_list.append(([obsv_id], pub_three_tuple_to_dict(ds_list), pc_is_sensitive))
            continue
        pc_value = str(obsv_id.split("_")[1])
        pc_trie_visitor = pc_trie
        for current_pc in pc_value.split("$"):
            if current_pc == "":
                continue
            if current_pc not in pc_trie_visitor["branches"]:
                pc_trie_visitor["branches"][current_pc] = {"current": [], "branches": {}}
            pc_trie_visitor = pc_trie_visitor["branches"][current_pc]
        pc_trie_visitor["current"].append(([obsv_id], ds_list, pc_is_sensitive))
        pc_trie_visitor["pc_is_sensitive"] = pc_is_sensitive
        
        pc_trie_visitor["current"] = sorted(pc_trie_visitor["current"], key=lambda x: int(x[0][0].split("_")[2]))

    # perform DFS on trie
    # return [([obsv_id], [(base, offset)], pc_is_sensitive)]
    def dfs(pc_trie):
        if len(pc_trie["branches"]) == 0:
            stripped_curr = [(o[0], pub_three_tuple_to_dict(o[1]), pc_trie["pc_is_sensitive"]) for o in pc_trie["current"] if o[1][0][0] != -1]
            return stripped_curr
        max_branch_index = int(max(pc_trie["branches"].keys(), key=lambda x: int(x)))

        # insert an an empty trie for the single branch to ensure that branches always come in pairs
        for i in range(2*(max_branch_index // 2 + 1)):
            if str(i) not in pc_trie["branches"]:
                pc_trie["branches"][str(i)] = {"current": [], "branches": {}}
        max_branch_index = int(max(pc_trie["branches"].keys(), key=lambda x: int(x)))
        assert(max_branch_index % 2 == 1)

        result = []
        for i in range(max_branch_index // 2 + 1):
            left_branch = dfs(pc_trie["branches"][str(2*i)])
            right_branch =  dfs(pc_trie["branches"][str(2*i+1)])
            if not left_branch and not right_branch:
                continue

            # add interleaving observations in the current scope
            index_inside_branch = left_branch[0][0][0].split("_")[2] if left_branch else right_branch[0][0][0].split("_")[2]
            while pc_trie["current"]:
                if int(pc_trie["current"][0][0][0].split("_")[2]) > int(index_inside_branch):
                    break
                result.append(pc_trie["current"].pop(0))

            result += align_simple_branches(left_branch, right_branch)
        result.extend(pc_trie["current"])

        return result

    obsv_ids_to_base_offset_pairs_list.extend(dfs(pc_trie))

    return obsv_ids_to_base_offset_pairs_list
