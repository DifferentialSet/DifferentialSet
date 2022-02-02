

# def flatter(lst):
#     x = []
#     for i in lst:
#         abs_lst = [abs(j) for j in i]
#         x.extend(abs_lst)
    
#     return x

# def Tseitin(dnf):
#     maxi = max(flatter(dnf))
#     next = maxi + 1

#     ans=[]

#     for i in dnf:
#         ans.append([-1*i[j] for j in range(len(i))]+[next])
#         for j in i:
#             ans.append([j,-1*next])
#         next += 1

#     return ans

# print(Tseitin([[1,2],[3,4]]))

from pyexpat import model
from z3 import *

ele = []
for i in range(10):
    i0 = Bool('i'+str(i))
    i1 = Bool('i_'+str(i))
    ele.append((i0, i1))

g = Goal()
g.add(Or([e[0] == e[1] for e in ele]))
t = Then('simplify', 'bit-blast', 'tseitin-cnf')
subgoal = t(g)
for c in subgoal[0]:
    print(c)

solve(g)
