; ModuleID = 'mitigated.c'
source_filename = "mitigated.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@lookup = dso_local global <{ [22 x i8], [10 x i8] }> <{ [22 x i8] c"\00\01\02\03\04\05\06\07\08\09\00\01\02\03\04\05\06\07\08\09\0A\0B", [10 x i8] zeroinitializer }>, align 1
@in_key = internal global [32 x i8] zeroinitializer, align 1
@in_pub = internal global [32 x i8] zeroinitializer, align 1
@out = internal global [32 x i8] zeroinitializer, align 1
@constinit.31 = private unnamed_addr constant [32 x i8*] [i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i32 0), i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i64 1), i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i64 2), i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i64 3), i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i64 4), i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i64 5), i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i64 6), i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i64 7), i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i64 8), i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i64 9), i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i64 10), i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i64 11), i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i64 12), i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i64 13), i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i64 14), i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i64 15), i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i64 16), i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i64 17), i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i64 18), i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i64 19), i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i64 20), i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i64 21), i8* getelementptr (i8, i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i32 0), i64 22), i8* getelementptr (i8, i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i32 0), i64 23), i8* getelementptr (i8, i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i32 0), i64 24), i8* getelementptr (i8, i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i32 0), i64 25), i8* getelementptr (i8, i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i32 0), i64 26), i8* getelementptr (i8, i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i32 0), i64 27), i8* getelementptr (i8, i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i32 0), i64 28), i8* getelementptr (i8, i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i32 0), i64 29), i8* getelementptr (i8, i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i32 0), i64 30), i8* getelementptr (i8, i8* getelementptr inbounds (<{ [22 x i8], [10 x i8] }>, <{ [22 x i8], [10 x i8] }>* @lookup, i32 0, i32 0, i32 0), i64 31)], align 4
@.str = private unnamed_addr constant [16 x i8] c"!(success != 0)\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"mitigated.c\00", align 1
@__PRETTY_FUNCTION__.secure_load_32 = private unnamed_addr constant [55 x i8] c"uint32_t secure_load_32(uint32_t *, void **, uint32_t)\00", align 1
@decoy_tmp_32 = dso_local local_unnamed_addr global i32 0, align 4
@.str.33 = private unnamed_addr constant [49 x i8] c"success != 0 || !(address != ((uint32_t *)NULL))\00", align 1
@__PRETTY_FUNCTION__.secure_load_8 = private unnamed_addr constant [52 x i8] c"uint8_t secure_load_8(uint8_t *, void **, uint32_t)\00", align 1
@decoy_tmp_8 = dso_local local_unnamed_addr global i8 0, align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"success != 0 || !(address != ((uint8_t *)NULL))\00", align 1
@__PRETTY_FUNCTION__.secure_store_32 = private unnamed_addr constant [62 x i8] c"void secure_store_32(uint32_t, uint32_t *, void **, uint32_t)\00", align 1
@__PRETTY_FUNCTION__.secure_store_8 = private unnamed_addr constant [59 x i8] c"void secure_store_8(uint8_t, uint8_t *, void **, uint32_t)\00", align 1

; Function Attrs: nounwind
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @read(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 0), i32 32) #3
  %call1 = tail call i32 @read(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 0), i32 32) #3
  %0 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 0), align 1, !tbaa !3
  %1 = and i8 %0, 31
  %2 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 0), align 1, !tbaa !3
  %3 = and i8 %2, 31
  %conv503824 = zext i8 %1 to i32
  %arrayidx51 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv503824
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.1, %entry
  %i.038.i = phi i32 [ 0, %entry ], [ %add.i.1, %for.inc.i.1 ]
  %success.037.i = phi i8 [ 0, %entry ], [ %success.1.i.1, %for.inc.i.1 ]
  %ret_val.036.i = phi i8 [ undef, %entry ], [ %ret_val.1.i.1, %for.inc.i.1 ]
  %arrayidx.i = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i
  %4 = load i8*, i8** %arrayidx.i, align 4, !tbaa !6
  %cmp2.i = icmp eq i8* %4, %arrayidx51
  br i1 %cmp2.i, label %if.then3.i, label %if.else9.i

if.then3.i:                                       ; preds = %for.body.i
  %5 = and i8 %success.037.i, 1
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else8.i

if.else8.i:                                       ; preds = %if.then3.i.1, %if.then3.i
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i:                                         ; preds = %if.then3.i
  %6 = load i8, i8* %arrayidx51, align 1, !tbaa !3
  br label %for.inc.i

if.else9.i:                                       ; preds = %for.body.i
  %7 = load i8, i8* %4, align 1, !tbaa !3
  store i8 %7, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else9.i, %if.end.i
  %ret_val.1.i = phi i8 [ %6, %if.end.i ], [ %ret_val.036.i, %if.else9.i ]
  %success.1.i = phi i8 [ 1, %if.end.i ], [ %success.037.i, %if.else9.i ]
  %add.i = or i32 %i.038.i, 1
  %arrayidx.i.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i
  %8 = load i8*, i8** %arrayidx.i.1, align 4, !tbaa !6
  %cmp2.i.1 = icmp eq i8* %8, %arrayidx51
  br i1 %cmp2.i.1, label %if.then3.i.1, label %if.else9.i.1

for.end.i:                                        ; preds = %for.inc.i.1
  %9 = and i8 %success.1.i.1, 1
  %cmp14.i = icmp eq i8 %9, 0
  br i1 %cmp14.i, label %if.else19.i, label %secure_load_8.exit

if.else19.i:                                      ; preds = %for.end.i
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit:                               ; preds = %for.end.i
  %conv60 = zext i8 %3 to i32
  %arrayidx61 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv60
  %10 = load i8, i8* %arrayidx61, align 1, !tbaa !3
  %add = add i8 %10, %ret_val.1.i.1
  store i8 %add, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 0), align 1, !tbaa !3
  %11 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 1), align 1, !tbaa !3
  %12 = and i8 %11, 31
  %13 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 1), align 1, !tbaa !3
  %14 = and i8 %13, 31
  %conv1313825 = zext i8 %12 to i32
  %arrayidx132 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv1313825
  br label %for.body.i2861

for.body.i2861:                                   ; preds = %for.inc.i2871.1, %secure_load_8.exit
  %i.038.i2856 = phi i32 [ 0, %secure_load_8.exit ], [ %add.i2869.1, %for.inc.i2871.1 ]
  %success.037.i2857 = phi i8 [ 0, %secure_load_8.exit ], [ %success.1.i2868.1, %for.inc.i2871.1 ]
  %ret_val.036.i2858 = phi i8 [ undef, %secure_load_8.exit ], [ %ret_val.1.i2867.1, %for.inc.i2871.1 ]
  %arrayidx.i2859 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i2856
  %15 = load i8*, i8** %arrayidx.i2859, align 4, !tbaa !6
  %cmp2.i2860 = icmp eq i8* %15, %arrayidx132
  br i1 %cmp2.i2860, label %if.then3.i2863, label %if.else9.i2866

if.then3.i2863:                                   ; preds = %for.body.i2861
  %16 = and i8 %success.037.i2857, 1
  %tobool.not.i2862 = icmp eq i8 %16, 0
  br i1 %tobool.not.i2862, label %if.end.i2865, label %if.else8.i2864

if.else8.i2864:                                   ; preds = %if.then3.i2863.1, %if.then3.i2863
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i2865:                                     ; preds = %if.then3.i2863
  %17 = load i8, i8* %arrayidx132, align 1, !tbaa !3
  br label %for.inc.i2871

if.else9.i2866:                                   ; preds = %for.body.i2861
  %18 = load i8, i8* %15, align 1, !tbaa !3
  store i8 %18, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i2871

for.inc.i2871:                                    ; preds = %if.else9.i2866, %if.end.i2865
  %ret_val.1.i2867 = phi i8 [ %17, %if.end.i2865 ], [ %ret_val.036.i2858, %if.else9.i2866 ]
  %success.1.i2868 = phi i8 [ 1, %if.end.i2865 ], [ %success.037.i2857, %if.else9.i2866 ]
  %add.i2869 = or i32 %i.038.i2856, 1
  %arrayidx.i2859.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i2869
  %19 = load i8*, i8** %arrayidx.i2859.1, align 4, !tbaa !6
  %cmp2.i2860.1 = icmp eq i8* %19, %arrayidx132
  br i1 %cmp2.i2860.1, label %if.then3.i2863.1, label %if.else9.i2866.1

for.end.i2875:                                    ; preds = %for.inc.i2871.1
  %20 = and i8 %success.1.i2868.1, 1
  %cmp14.i2872 = icmp eq i8 %20, 0
  br i1 %cmp14.i2872, label %if.else19.i2876, label %secure_load_8.exit2877

if.else19.i2876:                                  ; preds = %for.end.i2875
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit2877:                           ; preds = %for.end.i2875
  %conv141 = zext i8 %14 to i32
  %arrayidx142 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv141
  %21 = load i8, i8* %arrayidx142, align 1, !tbaa !3
  %add157 = add i8 %21, %ret_val.1.i2867.1
  store i8 %add157, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 1), align 1, !tbaa !3
  %22 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 2), align 1, !tbaa !3
  %23 = and i8 %22, 31
  %24 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 2), align 1, !tbaa !3
  %25 = and i8 %24, 31
  %conv2133826 = zext i8 %23 to i32
  %arrayidx214 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv2133826
  br label %for.body.i2883

for.body.i2883:                                   ; preds = %for.inc.i2893.1, %secure_load_8.exit2877
  %i.038.i2878 = phi i32 [ 0, %secure_load_8.exit2877 ], [ %add.i2891.1, %for.inc.i2893.1 ]
  %success.037.i2879 = phi i8 [ 0, %secure_load_8.exit2877 ], [ %success.1.i2890.1, %for.inc.i2893.1 ]
  %ret_val.036.i2880 = phi i8 [ undef, %secure_load_8.exit2877 ], [ %ret_val.1.i2889.1, %for.inc.i2893.1 ]
  %arrayidx.i2881 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i2878
  %26 = load i8*, i8** %arrayidx.i2881, align 4, !tbaa !6
  %cmp2.i2882 = icmp eq i8* %26, %arrayidx214
  br i1 %cmp2.i2882, label %if.then3.i2885, label %if.else9.i2888

if.then3.i2885:                                   ; preds = %for.body.i2883
  %27 = and i8 %success.037.i2879, 1
  %tobool.not.i2884 = icmp eq i8 %27, 0
  br i1 %tobool.not.i2884, label %if.end.i2887, label %if.else8.i2886

if.else8.i2886:                                   ; preds = %if.then3.i2885.1, %if.then3.i2885
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i2887:                                     ; preds = %if.then3.i2885
  %28 = load i8, i8* %arrayidx214, align 1, !tbaa !3
  br label %for.inc.i2893

if.else9.i2888:                                   ; preds = %for.body.i2883
  %29 = load i8, i8* %26, align 1, !tbaa !3
  store i8 %29, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i2893

for.inc.i2893:                                    ; preds = %if.else9.i2888, %if.end.i2887
  %ret_val.1.i2889 = phi i8 [ %28, %if.end.i2887 ], [ %ret_val.036.i2880, %if.else9.i2888 ]
  %success.1.i2890 = phi i8 [ 1, %if.end.i2887 ], [ %success.037.i2879, %if.else9.i2888 ]
  %add.i2891 = or i32 %i.038.i2878, 1
  %arrayidx.i2881.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i2891
  %30 = load i8*, i8** %arrayidx.i2881.1, align 4, !tbaa !6
  %cmp2.i2882.1 = icmp eq i8* %30, %arrayidx214
  br i1 %cmp2.i2882.1, label %if.then3.i2885.1, label %if.else9.i2888.1

for.end.i2897:                                    ; preds = %for.inc.i2893.1
  %31 = and i8 %success.1.i2890.1, 1
  %cmp14.i2894 = icmp eq i8 %31, 0
  br i1 %cmp14.i2894, label %if.else19.i2898, label %secure_load_8.exit2899

if.else19.i2898:                                  ; preds = %for.end.i2897
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit2899:                           ; preds = %for.end.i2897
  %conv223 = zext i8 %25 to i32
  %arrayidx224 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv223
  %32 = load i8, i8* %arrayidx224, align 1, !tbaa !3
  %add239 = add i8 %32, %ret_val.1.i2889.1
  store i8 %add239, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 2), align 1, !tbaa !3
  %33 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 3), align 1, !tbaa !3
  %34 = and i8 %33, 31
  %35 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 3), align 1, !tbaa !3
  %36 = and i8 %35, 31
  %conv2953827 = zext i8 %34 to i32
  %arrayidx296 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv2953827
  br label %for.body.i2905

for.body.i2905:                                   ; preds = %for.inc.i2915.1, %secure_load_8.exit2899
  %i.038.i2900 = phi i32 [ 0, %secure_load_8.exit2899 ], [ %add.i2913.1, %for.inc.i2915.1 ]
  %success.037.i2901 = phi i8 [ 0, %secure_load_8.exit2899 ], [ %success.1.i2912.1, %for.inc.i2915.1 ]
  %ret_val.036.i2902 = phi i8 [ undef, %secure_load_8.exit2899 ], [ %ret_val.1.i2911.1, %for.inc.i2915.1 ]
  %arrayidx.i2903 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i2900
  %37 = load i8*, i8** %arrayidx.i2903, align 4, !tbaa !6
  %cmp2.i2904 = icmp eq i8* %37, %arrayidx296
  br i1 %cmp2.i2904, label %if.then3.i2907, label %if.else9.i2910

if.then3.i2907:                                   ; preds = %for.body.i2905
  %38 = and i8 %success.037.i2901, 1
  %tobool.not.i2906 = icmp eq i8 %38, 0
  br i1 %tobool.not.i2906, label %if.end.i2909, label %if.else8.i2908

if.else8.i2908:                                   ; preds = %if.then3.i2907.1, %if.then3.i2907
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i2909:                                     ; preds = %if.then3.i2907
  %39 = load i8, i8* %arrayidx296, align 1, !tbaa !3
  br label %for.inc.i2915

if.else9.i2910:                                   ; preds = %for.body.i2905
  %40 = load i8, i8* %37, align 1, !tbaa !3
  store i8 %40, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i2915

for.inc.i2915:                                    ; preds = %if.else9.i2910, %if.end.i2909
  %ret_val.1.i2911 = phi i8 [ %39, %if.end.i2909 ], [ %ret_val.036.i2902, %if.else9.i2910 ]
  %success.1.i2912 = phi i8 [ 1, %if.end.i2909 ], [ %success.037.i2901, %if.else9.i2910 ]
  %add.i2913 = or i32 %i.038.i2900, 1
  %arrayidx.i2903.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i2913
  %41 = load i8*, i8** %arrayidx.i2903.1, align 4, !tbaa !6
  %cmp2.i2904.1 = icmp eq i8* %41, %arrayidx296
  br i1 %cmp2.i2904.1, label %if.then3.i2907.1, label %if.else9.i2910.1

for.end.i2919:                                    ; preds = %for.inc.i2915.1
  %42 = and i8 %success.1.i2912.1, 1
  %cmp14.i2916 = icmp eq i8 %42, 0
  br i1 %cmp14.i2916, label %if.else19.i2920, label %secure_load_8.exit2921

if.else19.i2920:                                  ; preds = %for.end.i2919
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit2921:                           ; preds = %for.end.i2919
  %conv305 = zext i8 %36 to i32
  %arrayidx306 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv305
  %43 = load i8, i8* %arrayidx306, align 1, !tbaa !3
  %add321 = add i8 %43, %ret_val.1.i2911.1
  store i8 %add321, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 3), align 1, !tbaa !3
  %44 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 4), align 1, !tbaa !3
  %45 = and i8 %44, 31
  %46 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 4), align 1, !tbaa !3
  %47 = and i8 %46, 31
  %conv3773828 = zext i8 %45 to i32
  %arrayidx378 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv3773828
  br label %for.body.i2927

for.body.i2927:                                   ; preds = %for.inc.i2937.1, %secure_load_8.exit2921
  %i.038.i2922 = phi i32 [ 0, %secure_load_8.exit2921 ], [ %add.i2935.1, %for.inc.i2937.1 ]
  %success.037.i2923 = phi i8 [ 0, %secure_load_8.exit2921 ], [ %success.1.i2934.1, %for.inc.i2937.1 ]
  %ret_val.036.i2924 = phi i8 [ undef, %secure_load_8.exit2921 ], [ %ret_val.1.i2933.1, %for.inc.i2937.1 ]
  %arrayidx.i2925 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i2922
  %48 = load i8*, i8** %arrayidx.i2925, align 4, !tbaa !6
  %cmp2.i2926 = icmp eq i8* %48, %arrayidx378
  br i1 %cmp2.i2926, label %if.then3.i2929, label %if.else9.i2932

if.then3.i2929:                                   ; preds = %for.body.i2927
  %49 = and i8 %success.037.i2923, 1
  %tobool.not.i2928 = icmp eq i8 %49, 0
  br i1 %tobool.not.i2928, label %if.end.i2931, label %if.else8.i2930

if.else8.i2930:                                   ; preds = %if.then3.i2929.1, %if.then3.i2929
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i2931:                                     ; preds = %if.then3.i2929
  %50 = load i8, i8* %arrayidx378, align 1, !tbaa !3
  br label %for.inc.i2937

if.else9.i2932:                                   ; preds = %for.body.i2927
  %51 = load i8, i8* %48, align 1, !tbaa !3
  store i8 %51, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i2937

for.inc.i2937:                                    ; preds = %if.else9.i2932, %if.end.i2931
  %ret_val.1.i2933 = phi i8 [ %50, %if.end.i2931 ], [ %ret_val.036.i2924, %if.else9.i2932 ]
  %success.1.i2934 = phi i8 [ 1, %if.end.i2931 ], [ %success.037.i2923, %if.else9.i2932 ]
  %add.i2935 = or i32 %i.038.i2922, 1
  %arrayidx.i2925.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i2935
  %52 = load i8*, i8** %arrayidx.i2925.1, align 4, !tbaa !6
  %cmp2.i2926.1 = icmp eq i8* %52, %arrayidx378
  br i1 %cmp2.i2926.1, label %if.then3.i2929.1, label %if.else9.i2932.1

for.end.i2941:                                    ; preds = %for.inc.i2937.1
  %53 = and i8 %success.1.i2934.1, 1
  %cmp14.i2938 = icmp eq i8 %53, 0
  br i1 %cmp14.i2938, label %if.else19.i2942, label %secure_load_8.exit2943

if.else19.i2942:                                  ; preds = %for.end.i2941
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit2943:                           ; preds = %for.end.i2941
  %conv387 = zext i8 %47 to i32
  %arrayidx388 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv387
  %54 = load i8, i8* %arrayidx388, align 1, !tbaa !3
  %add403 = add i8 %54, %ret_val.1.i2933.1
  store i8 %add403, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 4), align 1, !tbaa !3
  %55 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 5), align 1, !tbaa !3
  %56 = and i8 %55, 31
  %57 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 5), align 1, !tbaa !3
  %58 = and i8 %57, 31
  %conv4593829 = zext i8 %56 to i32
  %arrayidx460 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv4593829
  br label %for.body.i2949

for.body.i2949:                                   ; preds = %for.inc.i2959.1, %secure_load_8.exit2943
  %i.038.i2944 = phi i32 [ 0, %secure_load_8.exit2943 ], [ %add.i2957.1, %for.inc.i2959.1 ]
  %success.037.i2945 = phi i8 [ 0, %secure_load_8.exit2943 ], [ %success.1.i2956.1, %for.inc.i2959.1 ]
  %ret_val.036.i2946 = phi i8 [ undef, %secure_load_8.exit2943 ], [ %ret_val.1.i2955.1, %for.inc.i2959.1 ]
  %arrayidx.i2947 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i2944
  %59 = load i8*, i8** %arrayidx.i2947, align 4, !tbaa !6
  %cmp2.i2948 = icmp eq i8* %59, %arrayidx460
  br i1 %cmp2.i2948, label %if.then3.i2951, label %if.else9.i2954

if.then3.i2951:                                   ; preds = %for.body.i2949
  %60 = and i8 %success.037.i2945, 1
  %tobool.not.i2950 = icmp eq i8 %60, 0
  br i1 %tobool.not.i2950, label %if.end.i2953, label %if.else8.i2952

if.else8.i2952:                                   ; preds = %if.then3.i2951.1, %if.then3.i2951
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i2953:                                     ; preds = %if.then3.i2951
  %61 = load i8, i8* %arrayidx460, align 1, !tbaa !3
  br label %for.inc.i2959

if.else9.i2954:                                   ; preds = %for.body.i2949
  %62 = load i8, i8* %59, align 1, !tbaa !3
  store i8 %62, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i2959

for.inc.i2959:                                    ; preds = %if.else9.i2954, %if.end.i2953
  %ret_val.1.i2955 = phi i8 [ %61, %if.end.i2953 ], [ %ret_val.036.i2946, %if.else9.i2954 ]
  %success.1.i2956 = phi i8 [ 1, %if.end.i2953 ], [ %success.037.i2945, %if.else9.i2954 ]
  %add.i2957 = or i32 %i.038.i2944, 1
  %arrayidx.i2947.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i2957
  %63 = load i8*, i8** %arrayidx.i2947.1, align 4, !tbaa !6
  %cmp2.i2948.1 = icmp eq i8* %63, %arrayidx460
  br i1 %cmp2.i2948.1, label %if.then3.i2951.1, label %if.else9.i2954.1

for.end.i2963:                                    ; preds = %for.inc.i2959.1
  %64 = and i8 %success.1.i2956.1, 1
  %cmp14.i2960 = icmp eq i8 %64, 0
  br i1 %cmp14.i2960, label %if.else19.i2964, label %secure_load_8.exit2965

if.else19.i2964:                                  ; preds = %for.end.i2963
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit2965:                           ; preds = %for.end.i2963
  %conv469 = zext i8 %58 to i32
  %arrayidx470 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv469
  %65 = load i8, i8* %arrayidx470, align 1, !tbaa !3
  %add485 = add i8 %65, %ret_val.1.i2955.1
  store i8 %add485, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 5), align 1, !tbaa !3
  %66 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 6), align 1, !tbaa !3
  %67 = and i8 %66, 31
  %68 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 6), align 1, !tbaa !3
  %69 = and i8 %68, 31
  %conv5413830 = zext i8 %67 to i32
  %arrayidx542 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv5413830
  br label %for.body.i2971

for.body.i2971:                                   ; preds = %for.inc.i2981.1, %secure_load_8.exit2965
  %i.038.i2966 = phi i32 [ 0, %secure_load_8.exit2965 ], [ %add.i2979.1, %for.inc.i2981.1 ]
  %success.037.i2967 = phi i8 [ 0, %secure_load_8.exit2965 ], [ %success.1.i2978.1, %for.inc.i2981.1 ]
  %ret_val.036.i2968 = phi i8 [ undef, %secure_load_8.exit2965 ], [ %ret_val.1.i2977.1, %for.inc.i2981.1 ]
  %arrayidx.i2969 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i2966
  %70 = load i8*, i8** %arrayidx.i2969, align 4, !tbaa !6
  %cmp2.i2970 = icmp eq i8* %70, %arrayidx542
  br i1 %cmp2.i2970, label %if.then3.i2973, label %if.else9.i2976

if.then3.i2973:                                   ; preds = %for.body.i2971
  %71 = and i8 %success.037.i2967, 1
  %tobool.not.i2972 = icmp eq i8 %71, 0
  br i1 %tobool.not.i2972, label %if.end.i2975, label %if.else8.i2974

if.else8.i2974:                                   ; preds = %if.then3.i2973.1, %if.then3.i2973
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i2975:                                     ; preds = %if.then3.i2973
  %72 = load i8, i8* %arrayidx542, align 1, !tbaa !3
  br label %for.inc.i2981

if.else9.i2976:                                   ; preds = %for.body.i2971
  %73 = load i8, i8* %70, align 1, !tbaa !3
  store i8 %73, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i2981

for.inc.i2981:                                    ; preds = %if.else9.i2976, %if.end.i2975
  %ret_val.1.i2977 = phi i8 [ %72, %if.end.i2975 ], [ %ret_val.036.i2968, %if.else9.i2976 ]
  %success.1.i2978 = phi i8 [ 1, %if.end.i2975 ], [ %success.037.i2967, %if.else9.i2976 ]
  %add.i2979 = or i32 %i.038.i2966, 1
  %arrayidx.i2969.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i2979
  %74 = load i8*, i8** %arrayidx.i2969.1, align 4, !tbaa !6
  %cmp2.i2970.1 = icmp eq i8* %74, %arrayidx542
  br i1 %cmp2.i2970.1, label %if.then3.i2973.1, label %if.else9.i2976.1

for.end.i2985:                                    ; preds = %for.inc.i2981.1
  %75 = and i8 %success.1.i2978.1, 1
  %cmp14.i2982 = icmp eq i8 %75, 0
  br i1 %cmp14.i2982, label %if.else19.i2986, label %secure_load_8.exit2987

if.else19.i2986:                                  ; preds = %for.end.i2985
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit2987:                           ; preds = %for.end.i2985
  %conv551 = zext i8 %69 to i32
  %arrayidx552 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv551
  %76 = load i8, i8* %arrayidx552, align 1, !tbaa !3
  %add567 = add i8 %76, %ret_val.1.i2977.1
  store i8 %add567, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 6), align 1, !tbaa !3
  %77 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 7), align 1, !tbaa !3
  %78 = and i8 %77, 31
  %79 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 7), align 1, !tbaa !3
  %80 = and i8 %79, 31
  %conv6233831 = zext i8 %78 to i32
  %arrayidx624 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv6233831
  br label %for.body.i2993

for.body.i2993:                                   ; preds = %for.inc.i3003.1, %secure_load_8.exit2987
  %i.038.i2988 = phi i32 [ 0, %secure_load_8.exit2987 ], [ %add.i3001.1, %for.inc.i3003.1 ]
  %success.037.i2989 = phi i8 [ 0, %secure_load_8.exit2987 ], [ %success.1.i3000.1, %for.inc.i3003.1 ]
  %ret_val.036.i2990 = phi i8 [ undef, %secure_load_8.exit2987 ], [ %ret_val.1.i2999.1, %for.inc.i3003.1 ]
  %arrayidx.i2991 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i2988
  %81 = load i8*, i8** %arrayidx.i2991, align 4, !tbaa !6
  %cmp2.i2992 = icmp eq i8* %81, %arrayidx624
  br i1 %cmp2.i2992, label %if.then3.i2995, label %if.else9.i2998

if.then3.i2995:                                   ; preds = %for.body.i2993
  %82 = and i8 %success.037.i2989, 1
  %tobool.not.i2994 = icmp eq i8 %82, 0
  br i1 %tobool.not.i2994, label %if.end.i2997, label %if.else8.i2996

if.else8.i2996:                                   ; preds = %if.then3.i2995.1, %if.then3.i2995
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i2997:                                     ; preds = %if.then3.i2995
  %83 = load i8, i8* %arrayidx624, align 1, !tbaa !3
  br label %for.inc.i3003

if.else9.i2998:                                   ; preds = %for.body.i2993
  %84 = load i8, i8* %81, align 1, !tbaa !3
  store i8 %84, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3003

for.inc.i3003:                                    ; preds = %if.else9.i2998, %if.end.i2997
  %ret_val.1.i2999 = phi i8 [ %83, %if.end.i2997 ], [ %ret_val.036.i2990, %if.else9.i2998 ]
  %success.1.i3000 = phi i8 [ 1, %if.end.i2997 ], [ %success.037.i2989, %if.else9.i2998 ]
  %add.i3001 = or i32 %i.038.i2988, 1
  %arrayidx.i2991.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3001
  %85 = load i8*, i8** %arrayidx.i2991.1, align 4, !tbaa !6
  %cmp2.i2992.1 = icmp eq i8* %85, %arrayidx624
  br i1 %cmp2.i2992.1, label %if.then3.i2995.1, label %if.else9.i2998.1

for.end.i3007:                                    ; preds = %for.inc.i3003.1
  %86 = and i8 %success.1.i3000.1, 1
  %cmp14.i3004 = icmp eq i8 %86, 0
  br i1 %cmp14.i3004, label %if.else19.i3008, label %secure_load_8.exit3009

if.else19.i3008:                                  ; preds = %for.end.i3007
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3009:                           ; preds = %for.end.i3007
  %conv633 = zext i8 %80 to i32
  %arrayidx634 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv633
  %87 = load i8, i8* %arrayidx634, align 1, !tbaa !3
  %add649 = add i8 %87, %ret_val.1.i2999.1
  store i8 %add649, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 7), align 1, !tbaa !3
  %88 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 8), align 1, !tbaa !3
  %89 = and i8 %88, 31
  %90 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 8), align 1, !tbaa !3
  %91 = and i8 %90, 31
  %conv7053832 = zext i8 %89 to i32
  %arrayidx706 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv7053832
  br label %for.body.i3015

for.body.i3015:                                   ; preds = %for.inc.i3025.1, %secure_load_8.exit3009
  %i.038.i3010 = phi i32 [ 0, %secure_load_8.exit3009 ], [ %add.i3023.1, %for.inc.i3025.1 ]
  %success.037.i3011 = phi i8 [ 0, %secure_load_8.exit3009 ], [ %success.1.i3022.1, %for.inc.i3025.1 ]
  %ret_val.036.i3012 = phi i8 [ undef, %secure_load_8.exit3009 ], [ %ret_val.1.i3021.1, %for.inc.i3025.1 ]
  %arrayidx.i3013 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3010
  %92 = load i8*, i8** %arrayidx.i3013, align 4, !tbaa !6
  %cmp2.i3014 = icmp eq i8* %92, %arrayidx706
  br i1 %cmp2.i3014, label %if.then3.i3017, label %if.else9.i3020

if.then3.i3017:                                   ; preds = %for.body.i3015
  %93 = and i8 %success.037.i3011, 1
  %tobool.not.i3016 = icmp eq i8 %93, 0
  br i1 %tobool.not.i3016, label %if.end.i3019, label %if.else8.i3018

if.else8.i3018:                                   ; preds = %if.then3.i3017.1, %if.then3.i3017
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3019:                                     ; preds = %if.then3.i3017
  %94 = load i8, i8* %arrayidx706, align 1, !tbaa !3
  br label %for.inc.i3025

if.else9.i3020:                                   ; preds = %for.body.i3015
  %95 = load i8, i8* %92, align 1, !tbaa !3
  store i8 %95, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3025

for.inc.i3025:                                    ; preds = %if.else9.i3020, %if.end.i3019
  %ret_val.1.i3021 = phi i8 [ %94, %if.end.i3019 ], [ %ret_val.036.i3012, %if.else9.i3020 ]
  %success.1.i3022 = phi i8 [ 1, %if.end.i3019 ], [ %success.037.i3011, %if.else9.i3020 ]
  %add.i3023 = or i32 %i.038.i3010, 1
  %arrayidx.i3013.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3023
  %96 = load i8*, i8** %arrayidx.i3013.1, align 4, !tbaa !6
  %cmp2.i3014.1 = icmp eq i8* %96, %arrayidx706
  br i1 %cmp2.i3014.1, label %if.then3.i3017.1, label %if.else9.i3020.1

for.end.i3029:                                    ; preds = %for.inc.i3025.1
  %97 = and i8 %success.1.i3022.1, 1
  %cmp14.i3026 = icmp eq i8 %97, 0
  br i1 %cmp14.i3026, label %if.else19.i3030, label %secure_load_8.exit3031

if.else19.i3030:                                  ; preds = %for.end.i3029
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3031:                           ; preds = %for.end.i3029
  %conv715 = zext i8 %91 to i32
  %arrayidx716 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv715
  %98 = load i8, i8* %arrayidx716, align 1, !tbaa !3
  %add731 = add i8 %98, %ret_val.1.i3021.1
  store i8 %add731, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 8), align 1, !tbaa !3
  %99 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 9), align 1, !tbaa !3
  %100 = and i8 %99, 31
  %101 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 9), align 1, !tbaa !3
  %102 = and i8 %101, 31
  %conv7873833 = zext i8 %100 to i32
  %arrayidx788 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv7873833
  br label %for.body.i3037

for.body.i3037:                                   ; preds = %for.inc.i3047.1, %secure_load_8.exit3031
  %i.038.i3032 = phi i32 [ 0, %secure_load_8.exit3031 ], [ %add.i3045.1, %for.inc.i3047.1 ]
  %success.037.i3033 = phi i8 [ 0, %secure_load_8.exit3031 ], [ %success.1.i3044.1, %for.inc.i3047.1 ]
  %ret_val.036.i3034 = phi i8 [ undef, %secure_load_8.exit3031 ], [ %ret_val.1.i3043.1, %for.inc.i3047.1 ]
  %arrayidx.i3035 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3032
  %103 = load i8*, i8** %arrayidx.i3035, align 4, !tbaa !6
  %cmp2.i3036 = icmp eq i8* %103, %arrayidx788
  br i1 %cmp2.i3036, label %if.then3.i3039, label %if.else9.i3042

if.then3.i3039:                                   ; preds = %for.body.i3037
  %104 = and i8 %success.037.i3033, 1
  %tobool.not.i3038 = icmp eq i8 %104, 0
  br i1 %tobool.not.i3038, label %if.end.i3041, label %if.else8.i3040

if.else8.i3040:                                   ; preds = %if.then3.i3039.1, %if.then3.i3039
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3041:                                     ; preds = %if.then3.i3039
  %105 = load i8, i8* %arrayidx788, align 1, !tbaa !3
  br label %for.inc.i3047

if.else9.i3042:                                   ; preds = %for.body.i3037
  %106 = load i8, i8* %103, align 1, !tbaa !3
  store i8 %106, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3047

for.inc.i3047:                                    ; preds = %if.else9.i3042, %if.end.i3041
  %ret_val.1.i3043 = phi i8 [ %105, %if.end.i3041 ], [ %ret_val.036.i3034, %if.else9.i3042 ]
  %success.1.i3044 = phi i8 [ 1, %if.end.i3041 ], [ %success.037.i3033, %if.else9.i3042 ]
  %add.i3045 = or i32 %i.038.i3032, 1
  %arrayidx.i3035.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3045
  %107 = load i8*, i8** %arrayidx.i3035.1, align 4, !tbaa !6
  %cmp2.i3036.1 = icmp eq i8* %107, %arrayidx788
  br i1 %cmp2.i3036.1, label %if.then3.i3039.1, label %if.else9.i3042.1

for.end.i3051:                                    ; preds = %for.inc.i3047.1
  %108 = and i8 %success.1.i3044.1, 1
  %cmp14.i3048 = icmp eq i8 %108, 0
  br i1 %cmp14.i3048, label %if.else19.i3052, label %secure_load_8.exit3053

if.else19.i3052:                                  ; preds = %for.end.i3051
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3053:                           ; preds = %for.end.i3051
  %conv797 = zext i8 %102 to i32
  %arrayidx798 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv797
  %109 = load i8, i8* %arrayidx798, align 1, !tbaa !3
  %add813 = add i8 %109, %ret_val.1.i3043.1
  store i8 %add813, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 9), align 1, !tbaa !3
  %110 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 10), align 1, !tbaa !3
  %111 = and i8 %110, 31
  %112 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 10), align 1, !tbaa !3
  %113 = and i8 %112, 31
  %conv8693834 = zext i8 %111 to i32
  %arrayidx870 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv8693834
  br label %for.body.i3059

for.body.i3059:                                   ; preds = %for.inc.i3069.1, %secure_load_8.exit3053
  %i.038.i3054 = phi i32 [ 0, %secure_load_8.exit3053 ], [ %add.i3067.1, %for.inc.i3069.1 ]
  %success.037.i3055 = phi i8 [ 0, %secure_load_8.exit3053 ], [ %success.1.i3066.1, %for.inc.i3069.1 ]
  %ret_val.036.i3056 = phi i8 [ undef, %secure_load_8.exit3053 ], [ %ret_val.1.i3065.1, %for.inc.i3069.1 ]
  %arrayidx.i3057 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3054
  %114 = load i8*, i8** %arrayidx.i3057, align 4, !tbaa !6
  %cmp2.i3058 = icmp eq i8* %114, %arrayidx870
  br i1 %cmp2.i3058, label %if.then3.i3061, label %if.else9.i3064

if.then3.i3061:                                   ; preds = %for.body.i3059
  %115 = and i8 %success.037.i3055, 1
  %tobool.not.i3060 = icmp eq i8 %115, 0
  br i1 %tobool.not.i3060, label %if.end.i3063, label %if.else8.i3062

if.else8.i3062:                                   ; preds = %if.then3.i3061.1, %if.then3.i3061
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3063:                                     ; preds = %if.then3.i3061
  %116 = load i8, i8* %arrayidx870, align 1, !tbaa !3
  br label %for.inc.i3069

if.else9.i3064:                                   ; preds = %for.body.i3059
  %117 = load i8, i8* %114, align 1, !tbaa !3
  store i8 %117, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3069

for.inc.i3069:                                    ; preds = %if.else9.i3064, %if.end.i3063
  %ret_val.1.i3065 = phi i8 [ %116, %if.end.i3063 ], [ %ret_val.036.i3056, %if.else9.i3064 ]
  %success.1.i3066 = phi i8 [ 1, %if.end.i3063 ], [ %success.037.i3055, %if.else9.i3064 ]
  %add.i3067 = or i32 %i.038.i3054, 1
  %arrayidx.i3057.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3067
  %118 = load i8*, i8** %arrayidx.i3057.1, align 4, !tbaa !6
  %cmp2.i3058.1 = icmp eq i8* %118, %arrayidx870
  br i1 %cmp2.i3058.1, label %if.then3.i3061.1, label %if.else9.i3064.1

for.end.i3073:                                    ; preds = %for.inc.i3069.1
  %119 = and i8 %success.1.i3066.1, 1
  %cmp14.i3070 = icmp eq i8 %119, 0
  br i1 %cmp14.i3070, label %if.else19.i3074, label %secure_load_8.exit3075

if.else19.i3074:                                  ; preds = %for.end.i3073
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3075:                           ; preds = %for.end.i3073
  %conv879 = zext i8 %113 to i32
  %arrayidx880 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv879
  %120 = load i8, i8* %arrayidx880, align 1, !tbaa !3
  %add895 = add i8 %120, %ret_val.1.i3065.1
  store i8 %add895, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 10), align 1, !tbaa !3
  %121 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 11), align 1, !tbaa !3
  %122 = and i8 %121, 31
  %123 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 11), align 1, !tbaa !3
  %124 = and i8 %123, 31
  %conv9513835 = zext i8 %122 to i32
  %arrayidx952 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv9513835
  br label %for.body.i3081

for.body.i3081:                                   ; preds = %for.inc.i3091.1, %secure_load_8.exit3075
  %i.038.i3076 = phi i32 [ 0, %secure_load_8.exit3075 ], [ %add.i3089.1, %for.inc.i3091.1 ]
  %success.037.i3077 = phi i8 [ 0, %secure_load_8.exit3075 ], [ %success.1.i3088.1, %for.inc.i3091.1 ]
  %ret_val.036.i3078 = phi i8 [ undef, %secure_load_8.exit3075 ], [ %ret_val.1.i3087.1, %for.inc.i3091.1 ]
  %arrayidx.i3079 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3076
  %125 = load i8*, i8** %arrayidx.i3079, align 4, !tbaa !6
  %cmp2.i3080 = icmp eq i8* %125, %arrayidx952
  br i1 %cmp2.i3080, label %if.then3.i3083, label %if.else9.i3086

if.then3.i3083:                                   ; preds = %for.body.i3081
  %126 = and i8 %success.037.i3077, 1
  %tobool.not.i3082 = icmp eq i8 %126, 0
  br i1 %tobool.not.i3082, label %if.end.i3085, label %if.else8.i3084

if.else8.i3084:                                   ; preds = %if.then3.i3083.1, %if.then3.i3083
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3085:                                     ; preds = %if.then3.i3083
  %127 = load i8, i8* %arrayidx952, align 1, !tbaa !3
  br label %for.inc.i3091

if.else9.i3086:                                   ; preds = %for.body.i3081
  %128 = load i8, i8* %125, align 1, !tbaa !3
  store i8 %128, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3091

for.inc.i3091:                                    ; preds = %if.else9.i3086, %if.end.i3085
  %ret_val.1.i3087 = phi i8 [ %127, %if.end.i3085 ], [ %ret_val.036.i3078, %if.else9.i3086 ]
  %success.1.i3088 = phi i8 [ 1, %if.end.i3085 ], [ %success.037.i3077, %if.else9.i3086 ]
  %add.i3089 = or i32 %i.038.i3076, 1
  %arrayidx.i3079.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3089
  %129 = load i8*, i8** %arrayidx.i3079.1, align 4, !tbaa !6
  %cmp2.i3080.1 = icmp eq i8* %129, %arrayidx952
  br i1 %cmp2.i3080.1, label %if.then3.i3083.1, label %if.else9.i3086.1

for.end.i3095:                                    ; preds = %for.inc.i3091.1
  %130 = and i8 %success.1.i3088.1, 1
  %cmp14.i3092 = icmp eq i8 %130, 0
  br i1 %cmp14.i3092, label %if.else19.i3096, label %secure_load_8.exit3097

if.else19.i3096:                                  ; preds = %for.end.i3095
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3097:                           ; preds = %for.end.i3095
  %conv961 = zext i8 %124 to i32
  %arrayidx962 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv961
  %131 = load i8, i8* %arrayidx962, align 1, !tbaa !3
  %add977 = add i8 %131, %ret_val.1.i3087.1
  store i8 %add977, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 11), align 1, !tbaa !3
  %132 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 12), align 1, !tbaa !3
  %133 = and i8 %132, 31
  %134 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 12), align 1, !tbaa !3
  %135 = and i8 %134, 31
  %conv10333836 = zext i8 %133 to i32
  %arrayidx1034 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv10333836
  br label %for.body.i3103

for.body.i3103:                                   ; preds = %for.inc.i3113.1, %secure_load_8.exit3097
  %i.038.i3098 = phi i32 [ 0, %secure_load_8.exit3097 ], [ %add.i3111.1, %for.inc.i3113.1 ]
  %success.037.i3099 = phi i8 [ 0, %secure_load_8.exit3097 ], [ %success.1.i3110.1, %for.inc.i3113.1 ]
  %ret_val.036.i3100 = phi i8 [ undef, %secure_load_8.exit3097 ], [ %ret_val.1.i3109.1, %for.inc.i3113.1 ]
  %arrayidx.i3101 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3098
  %136 = load i8*, i8** %arrayidx.i3101, align 4, !tbaa !6
  %cmp2.i3102 = icmp eq i8* %136, %arrayidx1034
  br i1 %cmp2.i3102, label %if.then3.i3105, label %if.else9.i3108

if.then3.i3105:                                   ; preds = %for.body.i3103
  %137 = and i8 %success.037.i3099, 1
  %tobool.not.i3104 = icmp eq i8 %137, 0
  br i1 %tobool.not.i3104, label %if.end.i3107, label %if.else8.i3106

if.else8.i3106:                                   ; preds = %if.then3.i3105.1, %if.then3.i3105
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3107:                                     ; preds = %if.then3.i3105
  %138 = load i8, i8* %arrayidx1034, align 1, !tbaa !3
  br label %for.inc.i3113

if.else9.i3108:                                   ; preds = %for.body.i3103
  %139 = load i8, i8* %136, align 1, !tbaa !3
  store i8 %139, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3113

for.inc.i3113:                                    ; preds = %if.else9.i3108, %if.end.i3107
  %ret_val.1.i3109 = phi i8 [ %138, %if.end.i3107 ], [ %ret_val.036.i3100, %if.else9.i3108 ]
  %success.1.i3110 = phi i8 [ 1, %if.end.i3107 ], [ %success.037.i3099, %if.else9.i3108 ]
  %add.i3111 = or i32 %i.038.i3098, 1
  %arrayidx.i3101.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3111
  %140 = load i8*, i8** %arrayidx.i3101.1, align 4, !tbaa !6
  %cmp2.i3102.1 = icmp eq i8* %140, %arrayidx1034
  br i1 %cmp2.i3102.1, label %if.then3.i3105.1, label %if.else9.i3108.1

for.end.i3117:                                    ; preds = %for.inc.i3113.1
  %141 = and i8 %success.1.i3110.1, 1
  %cmp14.i3114 = icmp eq i8 %141, 0
  br i1 %cmp14.i3114, label %if.else19.i3118, label %secure_load_8.exit3119

if.else19.i3118:                                  ; preds = %for.end.i3117
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3119:                           ; preds = %for.end.i3117
  %conv1043 = zext i8 %135 to i32
  %arrayidx1044 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv1043
  %142 = load i8, i8* %arrayidx1044, align 1, !tbaa !3
  %add1059 = add i8 %142, %ret_val.1.i3109.1
  store i8 %add1059, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 12), align 1, !tbaa !3
  %143 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 13), align 1, !tbaa !3
  %144 = and i8 %143, 31
  %145 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 13), align 1, !tbaa !3
  %146 = and i8 %145, 31
  %conv11153837 = zext i8 %144 to i32
  %arrayidx1116 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv11153837
  br label %for.body.i3125

for.body.i3125:                                   ; preds = %for.inc.i3135.1, %secure_load_8.exit3119
  %i.038.i3120 = phi i32 [ 0, %secure_load_8.exit3119 ], [ %add.i3133.1, %for.inc.i3135.1 ]
  %success.037.i3121 = phi i8 [ 0, %secure_load_8.exit3119 ], [ %success.1.i3132.1, %for.inc.i3135.1 ]
  %ret_val.036.i3122 = phi i8 [ undef, %secure_load_8.exit3119 ], [ %ret_val.1.i3131.1, %for.inc.i3135.1 ]
  %arrayidx.i3123 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3120
  %147 = load i8*, i8** %arrayidx.i3123, align 4, !tbaa !6
  %cmp2.i3124 = icmp eq i8* %147, %arrayidx1116
  br i1 %cmp2.i3124, label %if.then3.i3127, label %if.else9.i3130

if.then3.i3127:                                   ; preds = %for.body.i3125
  %148 = and i8 %success.037.i3121, 1
  %tobool.not.i3126 = icmp eq i8 %148, 0
  br i1 %tobool.not.i3126, label %if.end.i3129, label %if.else8.i3128

if.else8.i3128:                                   ; preds = %if.then3.i3127.1, %if.then3.i3127
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3129:                                     ; preds = %if.then3.i3127
  %149 = load i8, i8* %arrayidx1116, align 1, !tbaa !3
  br label %for.inc.i3135

if.else9.i3130:                                   ; preds = %for.body.i3125
  %150 = load i8, i8* %147, align 1, !tbaa !3
  store i8 %150, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3135

for.inc.i3135:                                    ; preds = %if.else9.i3130, %if.end.i3129
  %ret_val.1.i3131 = phi i8 [ %149, %if.end.i3129 ], [ %ret_val.036.i3122, %if.else9.i3130 ]
  %success.1.i3132 = phi i8 [ 1, %if.end.i3129 ], [ %success.037.i3121, %if.else9.i3130 ]
  %add.i3133 = or i32 %i.038.i3120, 1
  %arrayidx.i3123.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3133
  %151 = load i8*, i8** %arrayidx.i3123.1, align 4, !tbaa !6
  %cmp2.i3124.1 = icmp eq i8* %151, %arrayidx1116
  br i1 %cmp2.i3124.1, label %if.then3.i3127.1, label %if.else9.i3130.1

for.end.i3139:                                    ; preds = %for.inc.i3135.1
  %152 = and i8 %success.1.i3132.1, 1
  %cmp14.i3136 = icmp eq i8 %152, 0
  br i1 %cmp14.i3136, label %if.else19.i3140, label %secure_load_8.exit3141

if.else19.i3140:                                  ; preds = %for.end.i3139
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3141:                           ; preds = %for.end.i3139
  %conv1125 = zext i8 %146 to i32
  %arrayidx1126 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv1125
  %153 = load i8, i8* %arrayidx1126, align 1, !tbaa !3
  %add1141 = add i8 %153, %ret_val.1.i3131.1
  store i8 %add1141, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 13), align 1, !tbaa !3
  %154 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 14), align 1, !tbaa !3
  %155 = and i8 %154, 31
  %156 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 14), align 1, !tbaa !3
  %157 = and i8 %156, 31
  %conv11973838 = zext i8 %155 to i32
  %arrayidx1198 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv11973838
  br label %for.body.i3147

for.body.i3147:                                   ; preds = %for.inc.i3157.1, %secure_load_8.exit3141
  %i.038.i3142 = phi i32 [ 0, %secure_load_8.exit3141 ], [ %add.i3155.1, %for.inc.i3157.1 ]
  %success.037.i3143 = phi i8 [ 0, %secure_load_8.exit3141 ], [ %success.1.i3154.1, %for.inc.i3157.1 ]
  %ret_val.036.i3144 = phi i8 [ undef, %secure_load_8.exit3141 ], [ %ret_val.1.i3153.1, %for.inc.i3157.1 ]
  %arrayidx.i3145 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3142
  %158 = load i8*, i8** %arrayidx.i3145, align 4, !tbaa !6
  %cmp2.i3146 = icmp eq i8* %158, %arrayidx1198
  br i1 %cmp2.i3146, label %if.then3.i3149, label %if.else9.i3152

if.then3.i3149:                                   ; preds = %for.body.i3147
  %159 = and i8 %success.037.i3143, 1
  %tobool.not.i3148 = icmp eq i8 %159, 0
  br i1 %tobool.not.i3148, label %if.end.i3151, label %if.else8.i3150

if.else8.i3150:                                   ; preds = %if.then3.i3149.1, %if.then3.i3149
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3151:                                     ; preds = %if.then3.i3149
  %160 = load i8, i8* %arrayidx1198, align 1, !tbaa !3
  br label %for.inc.i3157

if.else9.i3152:                                   ; preds = %for.body.i3147
  %161 = load i8, i8* %158, align 1, !tbaa !3
  store i8 %161, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3157

for.inc.i3157:                                    ; preds = %if.else9.i3152, %if.end.i3151
  %ret_val.1.i3153 = phi i8 [ %160, %if.end.i3151 ], [ %ret_val.036.i3144, %if.else9.i3152 ]
  %success.1.i3154 = phi i8 [ 1, %if.end.i3151 ], [ %success.037.i3143, %if.else9.i3152 ]
  %add.i3155 = or i32 %i.038.i3142, 1
  %arrayidx.i3145.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3155
  %162 = load i8*, i8** %arrayidx.i3145.1, align 4, !tbaa !6
  %cmp2.i3146.1 = icmp eq i8* %162, %arrayidx1198
  br i1 %cmp2.i3146.1, label %if.then3.i3149.1, label %if.else9.i3152.1

for.end.i3161:                                    ; preds = %for.inc.i3157.1
  %163 = and i8 %success.1.i3154.1, 1
  %cmp14.i3158 = icmp eq i8 %163, 0
  br i1 %cmp14.i3158, label %if.else19.i3162, label %secure_load_8.exit3163

if.else19.i3162:                                  ; preds = %for.end.i3161
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3163:                           ; preds = %for.end.i3161
  %conv1207 = zext i8 %157 to i32
  %arrayidx1208 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv1207
  %164 = load i8, i8* %arrayidx1208, align 1, !tbaa !3
  %add1223 = add i8 %164, %ret_val.1.i3153.1
  store i8 %add1223, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 14), align 1, !tbaa !3
  %165 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 15), align 1, !tbaa !3
  %166 = and i8 %165, 31
  %167 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 15), align 1, !tbaa !3
  %168 = and i8 %167, 31
  %conv12793839 = zext i8 %166 to i32
  %arrayidx1280 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv12793839
  br label %for.body.i3169

for.body.i3169:                                   ; preds = %for.inc.i3179.1, %secure_load_8.exit3163
  %i.038.i3164 = phi i32 [ 0, %secure_load_8.exit3163 ], [ %add.i3177.1, %for.inc.i3179.1 ]
  %success.037.i3165 = phi i8 [ 0, %secure_load_8.exit3163 ], [ %success.1.i3176.1, %for.inc.i3179.1 ]
  %ret_val.036.i3166 = phi i8 [ undef, %secure_load_8.exit3163 ], [ %ret_val.1.i3175.1, %for.inc.i3179.1 ]
  %arrayidx.i3167 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3164
  %169 = load i8*, i8** %arrayidx.i3167, align 4, !tbaa !6
  %cmp2.i3168 = icmp eq i8* %169, %arrayidx1280
  br i1 %cmp2.i3168, label %if.then3.i3171, label %if.else9.i3174

if.then3.i3171:                                   ; preds = %for.body.i3169
  %170 = and i8 %success.037.i3165, 1
  %tobool.not.i3170 = icmp eq i8 %170, 0
  br i1 %tobool.not.i3170, label %if.end.i3173, label %if.else8.i3172

if.else8.i3172:                                   ; preds = %if.then3.i3171.1, %if.then3.i3171
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3173:                                     ; preds = %if.then3.i3171
  %171 = load i8, i8* %arrayidx1280, align 1, !tbaa !3
  br label %for.inc.i3179

if.else9.i3174:                                   ; preds = %for.body.i3169
  %172 = load i8, i8* %169, align 1, !tbaa !3
  store i8 %172, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3179

for.inc.i3179:                                    ; preds = %if.else9.i3174, %if.end.i3173
  %ret_val.1.i3175 = phi i8 [ %171, %if.end.i3173 ], [ %ret_val.036.i3166, %if.else9.i3174 ]
  %success.1.i3176 = phi i8 [ 1, %if.end.i3173 ], [ %success.037.i3165, %if.else9.i3174 ]
  %add.i3177 = or i32 %i.038.i3164, 1
  %arrayidx.i3167.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3177
  %173 = load i8*, i8** %arrayidx.i3167.1, align 4, !tbaa !6
  %cmp2.i3168.1 = icmp eq i8* %173, %arrayidx1280
  br i1 %cmp2.i3168.1, label %if.then3.i3171.1, label %if.else9.i3174.1

for.end.i3183:                                    ; preds = %for.inc.i3179.1
  %174 = and i8 %success.1.i3176.1, 1
  %cmp14.i3180 = icmp eq i8 %174, 0
  br i1 %cmp14.i3180, label %if.else19.i3184, label %secure_load_8.exit3185

if.else19.i3184:                                  ; preds = %for.end.i3183
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3185:                           ; preds = %for.end.i3183
  %conv1289 = zext i8 %168 to i32
  %arrayidx1290 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv1289
  %175 = load i8, i8* %arrayidx1290, align 1, !tbaa !3
  %add1305 = add i8 %175, %ret_val.1.i3175.1
  store i8 %add1305, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 15), align 1, !tbaa !3
  %176 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 16), align 1, !tbaa !3
  %177 = and i8 %176, 31
  %178 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 16), align 1, !tbaa !3
  %179 = and i8 %178, 31
  %conv13613840 = zext i8 %177 to i32
  %arrayidx1362 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv13613840
  br label %for.body.i3191

for.body.i3191:                                   ; preds = %for.inc.i3201.1, %secure_load_8.exit3185
  %i.038.i3186 = phi i32 [ 0, %secure_load_8.exit3185 ], [ %add.i3199.1, %for.inc.i3201.1 ]
  %success.037.i3187 = phi i8 [ 0, %secure_load_8.exit3185 ], [ %success.1.i3198.1, %for.inc.i3201.1 ]
  %ret_val.036.i3188 = phi i8 [ undef, %secure_load_8.exit3185 ], [ %ret_val.1.i3197.1, %for.inc.i3201.1 ]
  %arrayidx.i3189 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3186
  %180 = load i8*, i8** %arrayidx.i3189, align 4, !tbaa !6
  %cmp2.i3190 = icmp eq i8* %180, %arrayidx1362
  br i1 %cmp2.i3190, label %if.then3.i3193, label %if.else9.i3196

if.then3.i3193:                                   ; preds = %for.body.i3191
  %181 = and i8 %success.037.i3187, 1
  %tobool.not.i3192 = icmp eq i8 %181, 0
  br i1 %tobool.not.i3192, label %if.end.i3195, label %if.else8.i3194

if.else8.i3194:                                   ; preds = %if.then3.i3193.1, %if.then3.i3193
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3195:                                     ; preds = %if.then3.i3193
  %182 = load i8, i8* %arrayidx1362, align 1, !tbaa !3
  br label %for.inc.i3201

if.else9.i3196:                                   ; preds = %for.body.i3191
  %183 = load i8, i8* %180, align 1, !tbaa !3
  store i8 %183, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3201

for.inc.i3201:                                    ; preds = %if.else9.i3196, %if.end.i3195
  %ret_val.1.i3197 = phi i8 [ %182, %if.end.i3195 ], [ %ret_val.036.i3188, %if.else9.i3196 ]
  %success.1.i3198 = phi i8 [ 1, %if.end.i3195 ], [ %success.037.i3187, %if.else9.i3196 ]
  %add.i3199 = or i32 %i.038.i3186, 1
  %arrayidx.i3189.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3199
  %184 = load i8*, i8** %arrayidx.i3189.1, align 4, !tbaa !6
  %cmp2.i3190.1 = icmp eq i8* %184, %arrayidx1362
  br i1 %cmp2.i3190.1, label %if.then3.i3193.1, label %if.else9.i3196.1

for.end.i3205:                                    ; preds = %for.inc.i3201.1
  %185 = and i8 %success.1.i3198.1, 1
  %cmp14.i3202 = icmp eq i8 %185, 0
  br i1 %cmp14.i3202, label %if.else19.i3206, label %secure_load_8.exit3207

if.else19.i3206:                                  ; preds = %for.end.i3205
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3207:                           ; preds = %for.end.i3205
  %conv1371 = zext i8 %179 to i32
  %arrayidx1372 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv1371
  %186 = load i8, i8* %arrayidx1372, align 1, !tbaa !3
  %add1387 = add i8 %186, %ret_val.1.i3197.1
  store i8 %add1387, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 16), align 1, !tbaa !3
  %187 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 17), align 1, !tbaa !3
  %188 = and i8 %187, 31
  %189 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 17), align 1, !tbaa !3
  %190 = and i8 %189, 31
  %conv14433841 = zext i8 %188 to i32
  %arrayidx1444 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv14433841
  br label %for.body.i3213

for.body.i3213:                                   ; preds = %for.inc.i3223.1, %secure_load_8.exit3207
  %i.038.i3208 = phi i32 [ 0, %secure_load_8.exit3207 ], [ %add.i3221.1, %for.inc.i3223.1 ]
  %success.037.i3209 = phi i8 [ 0, %secure_load_8.exit3207 ], [ %success.1.i3220.1, %for.inc.i3223.1 ]
  %ret_val.036.i3210 = phi i8 [ undef, %secure_load_8.exit3207 ], [ %ret_val.1.i3219.1, %for.inc.i3223.1 ]
  %arrayidx.i3211 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3208
  %191 = load i8*, i8** %arrayidx.i3211, align 4, !tbaa !6
  %cmp2.i3212 = icmp eq i8* %191, %arrayidx1444
  br i1 %cmp2.i3212, label %if.then3.i3215, label %if.else9.i3218

if.then3.i3215:                                   ; preds = %for.body.i3213
  %192 = and i8 %success.037.i3209, 1
  %tobool.not.i3214 = icmp eq i8 %192, 0
  br i1 %tobool.not.i3214, label %if.end.i3217, label %if.else8.i3216

if.else8.i3216:                                   ; preds = %if.then3.i3215.1, %if.then3.i3215
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3217:                                     ; preds = %if.then3.i3215
  %193 = load i8, i8* %arrayidx1444, align 1, !tbaa !3
  br label %for.inc.i3223

if.else9.i3218:                                   ; preds = %for.body.i3213
  %194 = load i8, i8* %191, align 1, !tbaa !3
  store i8 %194, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3223

for.inc.i3223:                                    ; preds = %if.else9.i3218, %if.end.i3217
  %ret_val.1.i3219 = phi i8 [ %193, %if.end.i3217 ], [ %ret_val.036.i3210, %if.else9.i3218 ]
  %success.1.i3220 = phi i8 [ 1, %if.end.i3217 ], [ %success.037.i3209, %if.else9.i3218 ]
  %add.i3221 = or i32 %i.038.i3208, 1
  %arrayidx.i3211.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3221
  %195 = load i8*, i8** %arrayidx.i3211.1, align 4, !tbaa !6
  %cmp2.i3212.1 = icmp eq i8* %195, %arrayidx1444
  br i1 %cmp2.i3212.1, label %if.then3.i3215.1, label %if.else9.i3218.1

for.end.i3227:                                    ; preds = %for.inc.i3223.1
  %196 = and i8 %success.1.i3220.1, 1
  %cmp14.i3224 = icmp eq i8 %196, 0
  br i1 %cmp14.i3224, label %if.else19.i3228, label %secure_load_8.exit3229

if.else19.i3228:                                  ; preds = %for.end.i3227
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3229:                           ; preds = %for.end.i3227
  %conv1453 = zext i8 %190 to i32
  %arrayidx1454 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv1453
  %197 = load i8, i8* %arrayidx1454, align 1, !tbaa !3
  %add1469 = add i8 %197, %ret_val.1.i3219.1
  store i8 %add1469, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 17), align 1, !tbaa !3
  %198 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 18), align 1, !tbaa !3
  %199 = and i8 %198, 31
  %200 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 18), align 1, !tbaa !3
  %201 = and i8 %200, 31
  %conv15253842 = zext i8 %199 to i32
  %arrayidx1526 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv15253842
  br label %for.body.i3235

for.body.i3235:                                   ; preds = %for.inc.i3245.1, %secure_load_8.exit3229
  %i.038.i3230 = phi i32 [ 0, %secure_load_8.exit3229 ], [ %add.i3243.1, %for.inc.i3245.1 ]
  %success.037.i3231 = phi i8 [ 0, %secure_load_8.exit3229 ], [ %success.1.i3242.1, %for.inc.i3245.1 ]
  %ret_val.036.i3232 = phi i8 [ undef, %secure_load_8.exit3229 ], [ %ret_val.1.i3241.1, %for.inc.i3245.1 ]
  %arrayidx.i3233 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3230
  %202 = load i8*, i8** %arrayidx.i3233, align 4, !tbaa !6
  %cmp2.i3234 = icmp eq i8* %202, %arrayidx1526
  br i1 %cmp2.i3234, label %if.then3.i3237, label %if.else9.i3240

if.then3.i3237:                                   ; preds = %for.body.i3235
  %203 = and i8 %success.037.i3231, 1
  %tobool.not.i3236 = icmp eq i8 %203, 0
  br i1 %tobool.not.i3236, label %if.end.i3239, label %if.else8.i3238

if.else8.i3238:                                   ; preds = %if.then3.i3237.1, %if.then3.i3237
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3239:                                     ; preds = %if.then3.i3237
  %204 = load i8, i8* %arrayidx1526, align 1, !tbaa !3
  br label %for.inc.i3245

if.else9.i3240:                                   ; preds = %for.body.i3235
  %205 = load i8, i8* %202, align 1, !tbaa !3
  store i8 %205, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3245

for.inc.i3245:                                    ; preds = %if.else9.i3240, %if.end.i3239
  %ret_val.1.i3241 = phi i8 [ %204, %if.end.i3239 ], [ %ret_val.036.i3232, %if.else9.i3240 ]
  %success.1.i3242 = phi i8 [ 1, %if.end.i3239 ], [ %success.037.i3231, %if.else9.i3240 ]
  %add.i3243 = or i32 %i.038.i3230, 1
  %arrayidx.i3233.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3243
  %206 = load i8*, i8** %arrayidx.i3233.1, align 4, !tbaa !6
  %cmp2.i3234.1 = icmp eq i8* %206, %arrayidx1526
  br i1 %cmp2.i3234.1, label %if.then3.i3237.1, label %if.else9.i3240.1

for.end.i3249:                                    ; preds = %for.inc.i3245.1
  %207 = and i8 %success.1.i3242.1, 1
  %cmp14.i3246 = icmp eq i8 %207, 0
  br i1 %cmp14.i3246, label %if.else19.i3250, label %secure_load_8.exit3251

if.else19.i3250:                                  ; preds = %for.end.i3249
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3251:                           ; preds = %for.end.i3249
  %conv1535 = zext i8 %201 to i32
  %arrayidx1536 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv1535
  %208 = load i8, i8* %arrayidx1536, align 1, !tbaa !3
  %add1551 = add i8 %208, %ret_val.1.i3241.1
  store i8 %add1551, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 18), align 1, !tbaa !3
  %209 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 19), align 1, !tbaa !3
  %210 = and i8 %209, 31
  %211 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 19), align 1, !tbaa !3
  %212 = and i8 %211, 31
  %conv16073843 = zext i8 %210 to i32
  %arrayidx1608 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv16073843
  br label %for.body.i3257

for.body.i3257:                                   ; preds = %for.inc.i3267.1, %secure_load_8.exit3251
  %i.038.i3252 = phi i32 [ 0, %secure_load_8.exit3251 ], [ %add.i3265.1, %for.inc.i3267.1 ]
  %success.037.i3253 = phi i8 [ 0, %secure_load_8.exit3251 ], [ %success.1.i3264.1, %for.inc.i3267.1 ]
  %ret_val.036.i3254 = phi i8 [ undef, %secure_load_8.exit3251 ], [ %ret_val.1.i3263.1, %for.inc.i3267.1 ]
  %arrayidx.i3255 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3252
  %213 = load i8*, i8** %arrayidx.i3255, align 4, !tbaa !6
  %cmp2.i3256 = icmp eq i8* %213, %arrayidx1608
  br i1 %cmp2.i3256, label %if.then3.i3259, label %if.else9.i3262

if.then3.i3259:                                   ; preds = %for.body.i3257
  %214 = and i8 %success.037.i3253, 1
  %tobool.not.i3258 = icmp eq i8 %214, 0
  br i1 %tobool.not.i3258, label %if.end.i3261, label %if.else8.i3260

if.else8.i3260:                                   ; preds = %if.then3.i3259.1, %if.then3.i3259
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3261:                                     ; preds = %if.then3.i3259
  %215 = load i8, i8* %arrayidx1608, align 1, !tbaa !3
  br label %for.inc.i3267

if.else9.i3262:                                   ; preds = %for.body.i3257
  %216 = load i8, i8* %213, align 1, !tbaa !3
  store i8 %216, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3267

for.inc.i3267:                                    ; preds = %if.else9.i3262, %if.end.i3261
  %ret_val.1.i3263 = phi i8 [ %215, %if.end.i3261 ], [ %ret_val.036.i3254, %if.else9.i3262 ]
  %success.1.i3264 = phi i8 [ 1, %if.end.i3261 ], [ %success.037.i3253, %if.else9.i3262 ]
  %add.i3265 = or i32 %i.038.i3252, 1
  %arrayidx.i3255.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3265
  %217 = load i8*, i8** %arrayidx.i3255.1, align 4, !tbaa !6
  %cmp2.i3256.1 = icmp eq i8* %217, %arrayidx1608
  br i1 %cmp2.i3256.1, label %if.then3.i3259.1, label %if.else9.i3262.1

for.end.i3271:                                    ; preds = %for.inc.i3267.1
  %218 = and i8 %success.1.i3264.1, 1
  %cmp14.i3268 = icmp eq i8 %218, 0
  br i1 %cmp14.i3268, label %if.else19.i3272, label %secure_load_8.exit3273

if.else19.i3272:                                  ; preds = %for.end.i3271
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3273:                           ; preds = %for.end.i3271
  %conv1617 = zext i8 %212 to i32
  %arrayidx1618 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv1617
  %219 = load i8, i8* %arrayidx1618, align 1, !tbaa !3
  %add1633 = add i8 %219, %ret_val.1.i3263.1
  store i8 %add1633, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 19), align 1, !tbaa !3
  %220 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 20), align 1, !tbaa !3
  %221 = and i8 %220, 31
  %222 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 20), align 1, !tbaa !3
  %223 = and i8 %222, 31
  %conv16893844 = zext i8 %221 to i32
  %arrayidx1690 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv16893844
  br label %for.body.i3279

for.body.i3279:                                   ; preds = %for.inc.i3289.1, %secure_load_8.exit3273
  %i.038.i3274 = phi i32 [ 0, %secure_load_8.exit3273 ], [ %add.i3287.1, %for.inc.i3289.1 ]
  %success.037.i3275 = phi i8 [ 0, %secure_load_8.exit3273 ], [ %success.1.i3286.1, %for.inc.i3289.1 ]
  %ret_val.036.i3276 = phi i8 [ undef, %secure_load_8.exit3273 ], [ %ret_val.1.i3285.1, %for.inc.i3289.1 ]
  %arrayidx.i3277 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3274
  %224 = load i8*, i8** %arrayidx.i3277, align 4, !tbaa !6
  %cmp2.i3278 = icmp eq i8* %224, %arrayidx1690
  br i1 %cmp2.i3278, label %if.then3.i3281, label %if.else9.i3284

if.then3.i3281:                                   ; preds = %for.body.i3279
  %225 = and i8 %success.037.i3275, 1
  %tobool.not.i3280 = icmp eq i8 %225, 0
  br i1 %tobool.not.i3280, label %if.end.i3283, label %if.else8.i3282

if.else8.i3282:                                   ; preds = %if.then3.i3281.1, %if.then3.i3281
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3283:                                     ; preds = %if.then3.i3281
  %226 = load i8, i8* %arrayidx1690, align 1, !tbaa !3
  br label %for.inc.i3289

if.else9.i3284:                                   ; preds = %for.body.i3279
  %227 = load i8, i8* %224, align 1, !tbaa !3
  store i8 %227, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3289

for.inc.i3289:                                    ; preds = %if.else9.i3284, %if.end.i3283
  %ret_val.1.i3285 = phi i8 [ %226, %if.end.i3283 ], [ %ret_val.036.i3276, %if.else9.i3284 ]
  %success.1.i3286 = phi i8 [ 1, %if.end.i3283 ], [ %success.037.i3275, %if.else9.i3284 ]
  %add.i3287 = or i32 %i.038.i3274, 1
  %arrayidx.i3277.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3287
  %228 = load i8*, i8** %arrayidx.i3277.1, align 4, !tbaa !6
  %cmp2.i3278.1 = icmp eq i8* %228, %arrayidx1690
  br i1 %cmp2.i3278.1, label %if.then3.i3281.1, label %if.else9.i3284.1

for.end.i3293:                                    ; preds = %for.inc.i3289.1
  %229 = and i8 %success.1.i3286.1, 1
  %cmp14.i3290 = icmp eq i8 %229, 0
  br i1 %cmp14.i3290, label %if.else19.i3294, label %secure_load_8.exit3295

if.else19.i3294:                                  ; preds = %for.end.i3293
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3295:                           ; preds = %for.end.i3293
  %conv1699 = zext i8 %223 to i32
  %arrayidx1700 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv1699
  %230 = load i8, i8* %arrayidx1700, align 1, !tbaa !3
  %add1715 = add i8 %230, %ret_val.1.i3285.1
  store i8 %add1715, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 20), align 1, !tbaa !3
  %231 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 21), align 1, !tbaa !3
  %232 = and i8 %231, 31
  %233 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 21), align 1, !tbaa !3
  %234 = and i8 %233, 31
  %conv17713845 = zext i8 %232 to i32
  %arrayidx1772 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv17713845
  br label %for.body.i3301

for.body.i3301:                                   ; preds = %for.inc.i3311.1, %secure_load_8.exit3295
  %i.038.i3296 = phi i32 [ 0, %secure_load_8.exit3295 ], [ %add.i3309.1, %for.inc.i3311.1 ]
  %success.037.i3297 = phi i8 [ 0, %secure_load_8.exit3295 ], [ %success.1.i3308.1, %for.inc.i3311.1 ]
  %ret_val.036.i3298 = phi i8 [ undef, %secure_load_8.exit3295 ], [ %ret_val.1.i3307.1, %for.inc.i3311.1 ]
  %arrayidx.i3299 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3296
  %235 = load i8*, i8** %arrayidx.i3299, align 4, !tbaa !6
  %cmp2.i3300 = icmp eq i8* %235, %arrayidx1772
  br i1 %cmp2.i3300, label %if.then3.i3303, label %if.else9.i3306

if.then3.i3303:                                   ; preds = %for.body.i3301
  %236 = and i8 %success.037.i3297, 1
  %tobool.not.i3302 = icmp eq i8 %236, 0
  br i1 %tobool.not.i3302, label %if.end.i3305, label %if.else8.i3304

if.else8.i3304:                                   ; preds = %if.then3.i3303.1, %if.then3.i3303
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3305:                                     ; preds = %if.then3.i3303
  %237 = load i8, i8* %arrayidx1772, align 1, !tbaa !3
  br label %for.inc.i3311

if.else9.i3306:                                   ; preds = %for.body.i3301
  %238 = load i8, i8* %235, align 1, !tbaa !3
  store i8 %238, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3311

for.inc.i3311:                                    ; preds = %if.else9.i3306, %if.end.i3305
  %ret_val.1.i3307 = phi i8 [ %237, %if.end.i3305 ], [ %ret_val.036.i3298, %if.else9.i3306 ]
  %success.1.i3308 = phi i8 [ 1, %if.end.i3305 ], [ %success.037.i3297, %if.else9.i3306 ]
  %add.i3309 = or i32 %i.038.i3296, 1
  %arrayidx.i3299.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3309
  %239 = load i8*, i8** %arrayidx.i3299.1, align 4, !tbaa !6
  %cmp2.i3300.1 = icmp eq i8* %239, %arrayidx1772
  br i1 %cmp2.i3300.1, label %if.then3.i3303.1, label %if.else9.i3306.1

for.end.i3315:                                    ; preds = %for.inc.i3311.1
  %240 = and i8 %success.1.i3308.1, 1
  %cmp14.i3312 = icmp eq i8 %240, 0
  br i1 %cmp14.i3312, label %if.else19.i3316, label %secure_load_8.exit3317

if.else19.i3316:                                  ; preds = %for.end.i3315
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3317:                           ; preds = %for.end.i3315
  %conv1781 = zext i8 %234 to i32
  %arrayidx1782 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv1781
  %241 = load i8, i8* %arrayidx1782, align 1, !tbaa !3
  %add1797 = add i8 %241, %ret_val.1.i3307.1
  store i8 %add1797, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 21), align 1, !tbaa !3
  %242 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 22), align 1, !tbaa !3
  %243 = and i8 %242, 31
  %244 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 22), align 1, !tbaa !3
  %245 = and i8 %244, 31
  %conv18533846 = zext i8 %243 to i32
  %arrayidx1854 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv18533846
  br label %for.body.i3323

for.body.i3323:                                   ; preds = %for.inc.i3333.1, %secure_load_8.exit3317
  %i.038.i3318 = phi i32 [ 0, %secure_load_8.exit3317 ], [ %add.i3331.1, %for.inc.i3333.1 ]
  %success.037.i3319 = phi i8 [ 0, %secure_load_8.exit3317 ], [ %success.1.i3330.1, %for.inc.i3333.1 ]
  %ret_val.036.i3320 = phi i8 [ undef, %secure_load_8.exit3317 ], [ %ret_val.1.i3329.1, %for.inc.i3333.1 ]
  %arrayidx.i3321 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3318
  %246 = load i8*, i8** %arrayidx.i3321, align 4, !tbaa !6
  %cmp2.i3322 = icmp eq i8* %246, %arrayidx1854
  br i1 %cmp2.i3322, label %if.then3.i3325, label %if.else9.i3328

if.then3.i3325:                                   ; preds = %for.body.i3323
  %247 = and i8 %success.037.i3319, 1
  %tobool.not.i3324 = icmp eq i8 %247, 0
  br i1 %tobool.not.i3324, label %if.end.i3327, label %if.else8.i3326

if.else8.i3326:                                   ; preds = %if.then3.i3325.1, %if.then3.i3325
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3327:                                     ; preds = %if.then3.i3325
  %248 = load i8, i8* %arrayidx1854, align 1, !tbaa !3
  br label %for.inc.i3333

if.else9.i3328:                                   ; preds = %for.body.i3323
  %249 = load i8, i8* %246, align 1, !tbaa !3
  store i8 %249, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3333

for.inc.i3333:                                    ; preds = %if.else9.i3328, %if.end.i3327
  %ret_val.1.i3329 = phi i8 [ %248, %if.end.i3327 ], [ %ret_val.036.i3320, %if.else9.i3328 ]
  %success.1.i3330 = phi i8 [ 1, %if.end.i3327 ], [ %success.037.i3319, %if.else9.i3328 ]
  %add.i3331 = or i32 %i.038.i3318, 1
  %arrayidx.i3321.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3331
  %250 = load i8*, i8** %arrayidx.i3321.1, align 4, !tbaa !6
  %cmp2.i3322.1 = icmp eq i8* %250, %arrayidx1854
  br i1 %cmp2.i3322.1, label %if.then3.i3325.1, label %if.else9.i3328.1

for.end.i3337:                                    ; preds = %for.inc.i3333.1
  %251 = and i8 %success.1.i3330.1, 1
  %cmp14.i3334 = icmp eq i8 %251, 0
  br i1 %cmp14.i3334, label %if.else19.i3338, label %secure_load_8.exit3339

if.else19.i3338:                                  ; preds = %for.end.i3337
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3339:                           ; preds = %for.end.i3337
  %conv1863 = zext i8 %245 to i32
  %arrayidx1864 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv1863
  %252 = load i8, i8* %arrayidx1864, align 1, !tbaa !3
  %add1879 = add i8 %252, %ret_val.1.i3329.1
  store i8 %add1879, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 22), align 1, !tbaa !3
  %253 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 23), align 1, !tbaa !3
  %254 = and i8 %253, 31
  %255 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 23), align 1, !tbaa !3
  %256 = and i8 %255, 31
  %conv19353847 = zext i8 %254 to i32
  %arrayidx1936 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv19353847
  br label %for.body.i3345

for.body.i3345:                                   ; preds = %for.inc.i3355.1, %secure_load_8.exit3339
  %i.038.i3340 = phi i32 [ 0, %secure_load_8.exit3339 ], [ %add.i3353.1, %for.inc.i3355.1 ]
  %success.037.i3341 = phi i8 [ 0, %secure_load_8.exit3339 ], [ %success.1.i3352.1, %for.inc.i3355.1 ]
  %ret_val.036.i3342 = phi i8 [ undef, %secure_load_8.exit3339 ], [ %ret_val.1.i3351.1, %for.inc.i3355.1 ]
  %arrayidx.i3343 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3340
  %257 = load i8*, i8** %arrayidx.i3343, align 4, !tbaa !6
  %cmp2.i3344 = icmp eq i8* %257, %arrayidx1936
  br i1 %cmp2.i3344, label %if.then3.i3347, label %if.else9.i3350

if.then3.i3347:                                   ; preds = %for.body.i3345
  %258 = and i8 %success.037.i3341, 1
  %tobool.not.i3346 = icmp eq i8 %258, 0
  br i1 %tobool.not.i3346, label %if.end.i3349, label %if.else8.i3348

if.else8.i3348:                                   ; preds = %if.then3.i3347.1, %if.then3.i3347
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3349:                                     ; preds = %if.then3.i3347
  %259 = load i8, i8* %arrayidx1936, align 1, !tbaa !3
  br label %for.inc.i3355

if.else9.i3350:                                   ; preds = %for.body.i3345
  %260 = load i8, i8* %257, align 1, !tbaa !3
  store i8 %260, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3355

for.inc.i3355:                                    ; preds = %if.else9.i3350, %if.end.i3349
  %ret_val.1.i3351 = phi i8 [ %259, %if.end.i3349 ], [ %ret_val.036.i3342, %if.else9.i3350 ]
  %success.1.i3352 = phi i8 [ 1, %if.end.i3349 ], [ %success.037.i3341, %if.else9.i3350 ]
  %add.i3353 = or i32 %i.038.i3340, 1
  %arrayidx.i3343.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3353
  %261 = load i8*, i8** %arrayidx.i3343.1, align 4, !tbaa !6
  %cmp2.i3344.1 = icmp eq i8* %261, %arrayidx1936
  br i1 %cmp2.i3344.1, label %if.then3.i3347.1, label %if.else9.i3350.1

for.end.i3359:                                    ; preds = %for.inc.i3355.1
  %262 = and i8 %success.1.i3352.1, 1
  %cmp14.i3356 = icmp eq i8 %262, 0
  br i1 %cmp14.i3356, label %if.else19.i3360, label %secure_load_8.exit3361

if.else19.i3360:                                  ; preds = %for.end.i3359
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3361:                           ; preds = %for.end.i3359
  %conv1945 = zext i8 %256 to i32
  %arrayidx1946 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv1945
  %263 = load i8, i8* %arrayidx1946, align 1, !tbaa !3
  %add1961 = add i8 %263, %ret_val.1.i3351.1
  store i8 %add1961, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 23), align 1, !tbaa !3
  %264 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 24), align 1, !tbaa !3
  %265 = and i8 %264, 31
  %266 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 24), align 1, !tbaa !3
  %267 = and i8 %266, 31
  %conv20173848 = zext i8 %265 to i32
  %arrayidx2018 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv20173848
  br label %for.body.i3367

for.body.i3367:                                   ; preds = %for.inc.i3377.1, %secure_load_8.exit3361
  %i.038.i3362 = phi i32 [ 0, %secure_load_8.exit3361 ], [ %add.i3375.1, %for.inc.i3377.1 ]
  %success.037.i3363 = phi i8 [ 0, %secure_load_8.exit3361 ], [ %success.1.i3374.1, %for.inc.i3377.1 ]
  %ret_val.036.i3364 = phi i8 [ undef, %secure_load_8.exit3361 ], [ %ret_val.1.i3373.1, %for.inc.i3377.1 ]
  %arrayidx.i3365 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3362
  %268 = load i8*, i8** %arrayidx.i3365, align 4, !tbaa !6
  %cmp2.i3366 = icmp eq i8* %268, %arrayidx2018
  br i1 %cmp2.i3366, label %if.then3.i3369, label %if.else9.i3372

if.then3.i3369:                                   ; preds = %for.body.i3367
  %269 = and i8 %success.037.i3363, 1
  %tobool.not.i3368 = icmp eq i8 %269, 0
  br i1 %tobool.not.i3368, label %if.end.i3371, label %if.else8.i3370

if.else8.i3370:                                   ; preds = %if.then3.i3369.1, %if.then3.i3369
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3371:                                     ; preds = %if.then3.i3369
  %270 = load i8, i8* %arrayidx2018, align 1, !tbaa !3
  br label %for.inc.i3377

if.else9.i3372:                                   ; preds = %for.body.i3367
  %271 = load i8, i8* %268, align 1, !tbaa !3
  store i8 %271, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3377

for.inc.i3377:                                    ; preds = %if.else9.i3372, %if.end.i3371
  %ret_val.1.i3373 = phi i8 [ %270, %if.end.i3371 ], [ %ret_val.036.i3364, %if.else9.i3372 ]
  %success.1.i3374 = phi i8 [ 1, %if.end.i3371 ], [ %success.037.i3363, %if.else9.i3372 ]
  %add.i3375 = or i32 %i.038.i3362, 1
  %arrayidx.i3365.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3375
  %272 = load i8*, i8** %arrayidx.i3365.1, align 4, !tbaa !6
  %cmp2.i3366.1 = icmp eq i8* %272, %arrayidx2018
  br i1 %cmp2.i3366.1, label %if.then3.i3369.1, label %if.else9.i3372.1

for.end.i3381:                                    ; preds = %for.inc.i3377.1
  %273 = and i8 %success.1.i3374.1, 1
  %cmp14.i3378 = icmp eq i8 %273, 0
  br i1 %cmp14.i3378, label %if.else19.i3382, label %secure_load_8.exit3383

if.else19.i3382:                                  ; preds = %for.end.i3381
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3383:                           ; preds = %for.end.i3381
  %conv2027 = zext i8 %267 to i32
  %arrayidx2028 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv2027
  %274 = load i8, i8* %arrayidx2028, align 1, !tbaa !3
  %add2043 = add i8 %274, %ret_val.1.i3373.1
  store i8 %add2043, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 24), align 1, !tbaa !3
  %275 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 25), align 1, !tbaa !3
  %276 = and i8 %275, 31
  %277 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 25), align 1, !tbaa !3
  %278 = and i8 %277, 31
  %conv20993849 = zext i8 %276 to i32
  %arrayidx2100 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv20993849
  br label %for.body.i3389

for.body.i3389:                                   ; preds = %for.inc.i3399.1, %secure_load_8.exit3383
  %i.038.i3384 = phi i32 [ 0, %secure_load_8.exit3383 ], [ %add.i3397.1, %for.inc.i3399.1 ]
  %success.037.i3385 = phi i8 [ 0, %secure_load_8.exit3383 ], [ %success.1.i3396.1, %for.inc.i3399.1 ]
  %ret_val.036.i3386 = phi i8 [ undef, %secure_load_8.exit3383 ], [ %ret_val.1.i3395.1, %for.inc.i3399.1 ]
  %arrayidx.i3387 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3384
  %279 = load i8*, i8** %arrayidx.i3387, align 4, !tbaa !6
  %cmp2.i3388 = icmp eq i8* %279, %arrayidx2100
  br i1 %cmp2.i3388, label %if.then3.i3391, label %if.else9.i3394

if.then3.i3391:                                   ; preds = %for.body.i3389
  %280 = and i8 %success.037.i3385, 1
  %tobool.not.i3390 = icmp eq i8 %280, 0
  br i1 %tobool.not.i3390, label %if.end.i3393, label %if.else8.i3392

if.else8.i3392:                                   ; preds = %if.then3.i3391.1, %if.then3.i3391
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3393:                                     ; preds = %if.then3.i3391
  %281 = load i8, i8* %arrayidx2100, align 1, !tbaa !3
  br label %for.inc.i3399

if.else9.i3394:                                   ; preds = %for.body.i3389
  %282 = load i8, i8* %279, align 1, !tbaa !3
  store i8 %282, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3399

for.inc.i3399:                                    ; preds = %if.else9.i3394, %if.end.i3393
  %ret_val.1.i3395 = phi i8 [ %281, %if.end.i3393 ], [ %ret_val.036.i3386, %if.else9.i3394 ]
  %success.1.i3396 = phi i8 [ 1, %if.end.i3393 ], [ %success.037.i3385, %if.else9.i3394 ]
  %add.i3397 = or i32 %i.038.i3384, 1
  %arrayidx.i3387.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3397
  %283 = load i8*, i8** %arrayidx.i3387.1, align 4, !tbaa !6
  %cmp2.i3388.1 = icmp eq i8* %283, %arrayidx2100
  br i1 %cmp2.i3388.1, label %if.then3.i3391.1, label %if.else9.i3394.1

for.end.i3403:                                    ; preds = %for.inc.i3399.1
  %284 = and i8 %success.1.i3396.1, 1
  %cmp14.i3400 = icmp eq i8 %284, 0
  br i1 %cmp14.i3400, label %if.else19.i3404, label %secure_load_8.exit3405

if.else19.i3404:                                  ; preds = %for.end.i3403
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3405:                           ; preds = %for.end.i3403
  %conv2109 = zext i8 %278 to i32
  %arrayidx2110 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv2109
  %285 = load i8, i8* %arrayidx2110, align 1, !tbaa !3
  %add2125 = add i8 %285, %ret_val.1.i3395.1
  store i8 %add2125, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 25), align 1, !tbaa !3
  %286 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 26), align 1, !tbaa !3
  %287 = and i8 %286, 31
  %288 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 26), align 1, !tbaa !3
  %289 = and i8 %288, 31
  %conv21813850 = zext i8 %287 to i32
  %arrayidx2182 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv21813850
  br label %for.body.i3411

for.body.i3411:                                   ; preds = %for.inc.i3421.1, %secure_load_8.exit3405
  %i.038.i3406 = phi i32 [ 0, %secure_load_8.exit3405 ], [ %add.i3419.1, %for.inc.i3421.1 ]
  %success.037.i3407 = phi i8 [ 0, %secure_load_8.exit3405 ], [ %success.1.i3418.1, %for.inc.i3421.1 ]
  %ret_val.036.i3408 = phi i8 [ undef, %secure_load_8.exit3405 ], [ %ret_val.1.i3417.1, %for.inc.i3421.1 ]
  %arrayidx.i3409 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3406
  %290 = load i8*, i8** %arrayidx.i3409, align 4, !tbaa !6
  %cmp2.i3410 = icmp eq i8* %290, %arrayidx2182
  br i1 %cmp2.i3410, label %if.then3.i3413, label %if.else9.i3416

if.then3.i3413:                                   ; preds = %for.body.i3411
  %291 = and i8 %success.037.i3407, 1
  %tobool.not.i3412 = icmp eq i8 %291, 0
  br i1 %tobool.not.i3412, label %if.end.i3415, label %if.else8.i3414

if.else8.i3414:                                   ; preds = %if.then3.i3413.1, %if.then3.i3413
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3415:                                     ; preds = %if.then3.i3413
  %292 = load i8, i8* %arrayidx2182, align 1, !tbaa !3
  br label %for.inc.i3421

if.else9.i3416:                                   ; preds = %for.body.i3411
  %293 = load i8, i8* %290, align 1, !tbaa !3
  store i8 %293, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3421

for.inc.i3421:                                    ; preds = %if.else9.i3416, %if.end.i3415
  %ret_val.1.i3417 = phi i8 [ %292, %if.end.i3415 ], [ %ret_val.036.i3408, %if.else9.i3416 ]
  %success.1.i3418 = phi i8 [ 1, %if.end.i3415 ], [ %success.037.i3407, %if.else9.i3416 ]
  %add.i3419 = or i32 %i.038.i3406, 1
  %arrayidx.i3409.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3419
  %294 = load i8*, i8** %arrayidx.i3409.1, align 4, !tbaa !6
  %cmp2.i3410.1 = icmp eq i8* %294, %arrayidx2182
  br i1 %cmp2.i3410.1, label %if.then3.i3413.1, label %if.else9.i3416.1

for.end.i3425:                                    ; preds = %for.inc.i3421.1
  %295 = and i8 %success.1.i3418.1, 1
  %cmp14.i3422 = icmp eq i8 %295, 0
  br i1 %cmp14.i3422, label %if.else19.i3426, label %secure_load_8.exit3427

if.else19.i3426:                                  ; preds = %for.end.i3425
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3427:                           ; preds = %for.end.i3425
  %conv2191 = zext i8 %289 to i32
  %arrayidx2192 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv2191
  %296 = load i8, i8* %arrayidx2192, align 1, !tbaa !3
  %add2207 = add i8 %296, %ret_val.1.i3417.1
  store i8 %add2207, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 26), align 1, !tbaa !3
  %297 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 27), align 1, !tbaa !3
  %298 = and i8 %297, 31
  %299 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 27), align 1, !tbaa !3
  %300 = and i8 %299, 31
  %conv22633851 = zext i8 %298 to i32
  %arrayidx2264 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv22633851
  br label %for.body.i3433

for.body.i3433:                                   ; preds = %for.inc.i3443.1, %secure_load_8.exit3427
  %i.038.i3428 = phi i32 [ 0, %secure_load_8.exit3427 ], [ %add.i3441.1, %for.inc.i3443.1 ]
  %success.037.i3429 = phi i8 [ 0, %secure_load_8.exit3427 ], [ %success.1.i3440.1, %for.inc.i3443.1 ]
  %ret_val.036.i3430 = phi i8 [ undef, %secure_load_8.exit3427 ], [ %ret_val.1.i3439.1, %for.inc.i3443.1 ]
  %arrayidx.i3431 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3428
  %301 = load i8*, i8** %arrayidx.i3431, align 4, !tbaa !6
  %cmp2.i3432 = icmp eq i8* %301, %arrayidx2264
  br i1 %cmp2.i3432, label %if.then3.i3435, label %if.else9.i3438

if.then3.i3435:                                   ; preds = %for.body.i3433
  %302 = and i8 %success.037.i3429, 1
  %tobool.not.i3434 = icmp eq i8 %302, 0
  br i1 %tobool.not.i3434, label %if.end.i3437, label %if.else8.i3436

if.else8.i3436:                                   ; preds = %if.then3.i3435.1, %if.then3.i3435
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3437:                                     ; preds = %if.then3.i3435
  %303 = load i8, i8* %arrayidx2264, align 1, !tbaa !3
  br label %for.inc.i3443

if.else9.i3438:                                   ; preds = %for.body.i3433
  %304 = load i8, i8* %301, align 1, !tbaa !3
  store i8 %304, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3443

for.inc.i3443:                                    ; preds = %if.else9.i3438, %if.end.i3437
  %ret_val.1.i3439 = phi i8 [ %303, %if.end.i3437 ], [ %ret_val.036.i3430, %if.else9.i3438 ]
  %success.1.i3440 = phi i8 [ 1, %if.end.i3437 ], [ %success.037.i3429, %if.else9.i3438 ]
  %add.i3441 = or i32 %i.038.i3428, 1
  %arrayidx.i3431.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3441
  %305 = load i8*, i8** %arrayidx.i3431.1, align 4, !tbaa !6
  %cmp2.i3432.1 = icmp eq i8* %305, %arrayidx2264
  br i1 %cmp2.i3432.1, label %if.then3.i3435.1, label %if.else9.i3438.1

for.end.i3447:                                    ; preds = %for.inc.i3443.1
  %306 = and i8 %success.1.i3440.1, 1
  %cmp14.i3444 = icmp eq i8 %306, 0
  br i1 %cmp14.i3444, label %if.else19.i3448, label %secure_load_8.exit3449

if.else19.i3448:                                  ; preds = %for.end.i3447
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3449:                           ; preds = %for.end.i3447
  %conv2273 = zext i8 %300 to i32
  %arrayidx2274 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv2273
  %307 = load i8, i8* %arrayidx2274, align 1, !tbaa !3
  %add2289 = add i8 %307, %ret_val.1.i3439.1
  store i8 %add2289, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 27), align 1, !tbaa !3
  %308 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 28), align 1, !tbaa !3
  %309 = and i8 %308, 31
  %310 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 28), align 1, !tbaa !3
  %311 = and i8 %310, 31
  %conv23453852 = zext i8 %309 to i32
  %arrayidx2346 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv23453852
  br label %for.body.i3455

for.body.i3455:                                   ; preds = %for.inc.i3465.1, %secure_load_8.exit3449
  %i.038.i3450 = phi i32 [ 0, %secure_load_8.exit3449 ], [ %add.i3463.1, %for.inc.i3465.1 ]
  %success.037.i3451 = phi i8 [ 0, %secure_load_8.exit3449 ], [ %success.1.i3462.1, %for.inc.i3465.1 ]
  %ret_val.036.i3452 = phi i8 [ undef, %secure_load_8.exit3449 ], [ %ret_val.1.i3461.1, %for.inc.i3465.1 ]
  %arrayidx.i3453 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3450
  %312 = load i8*, i8** %arrayidx.i3453, align 4, !tbaa !6
  %cmp2.i3454 = icmp eq i8* %312, %arrayidx2346
  br i1 %cmp2.i3454, label %if.then3.i3457, label %if.else9.i3460

if.then3.i3457:                                   ; preds = %for.body.i3455
  %313 = and i8 %success.037.i3451, 1
  %tobool.not.i3456 = icmp eq i8 %313, 0
  br i1 %tobool.not.i3456, label %if.end.i3459, label %if.else8.i3458

if.else8.i3458:                                   ; preds = %if.then3.i3457.1, %if.then3.i3457
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3459:                                     ; preds = %if.then3.i3457
  %314 = load i8, i8* %arrayidx2346, align 1, !tbaa !3
  br label %for.inc.i3465

if.else9.i3460:                                   ; preds = %for.body.i3455
  %315 = load i8, i8* %312, align 1, !tbaa !3
  store i8 %315, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3465

for.inc.i3465:                                    ; preds = %if.else9.i3460, %if.end.i3459
  %ret_val.1.i3461 = phi i8 [ %314, %if.end.i3459 ], [ %ret_val.036.i3452, %if.else9.i3460 ]
  %success.1.i3462 = phi i8 [ 1, %if.end.i3459 ], [ %success.037.i3451, %if.else9.i3460 ]
  %add.i3463 = or i32 %i.038.i3450, 1
  %arrayidx.i3453.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3463
  %316 = load i8*, i8** %arrayidx.i3453.1, align 4, !tbaa !6
  %cmp2.i3454.1 = icmp eq i8* %316, %arrayidx2346
  br i1 %cmp2.i3454.1, label %if.then3.i3457.1, label %if.else9.i3460.1

for.end.i3469:                                    ; preds = %for.inc.i3465.1
  %317 = and i8 %success.1.i3462.1, 1
  %cmp14.i3466 = icmp eq i8 %317, 0
  br i1 %cmp14.i3466, label %if.else19.i3470, label %secure_load_8.exit3471

if.else19.i3470:                                  ; preds = %for.end.i3469
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3471:                           ; preds = %for.end.i3469
  %conv2355 = zext i8 %311 to i32
  %arrayidx2356 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv2355
  %318 = load i8, i8* %arrayidx2356, align 1, !tbaa !3
  %add2371 = add i8 %318, %ret_val.1.i3461.1
  store i8 %add2371, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 28), align 1, !tbaa !3
  %319 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 29), align 1, !tbaa !3
  %320 = and i8 %319, 31
  %321 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 29), align 1, !tbaa !3
  %322 = and i8 %321, 31
  %conv24273853 = zext i8 %320 to i32
  %arrayidx2428 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv24273853
  br label %for.body.i3477

for.body.i3477:                                   ; preds = %for.inc.i3487.1, %secure_load_8.exit3471
  %i.038.i3472 = phi i32 [ 0, %secure_load_8.exit3471 ], [ %add.i3485.1, %for.inc.i3487.1 ]
  %success.037.i3473 = phi i8 [ 0, %secure_load_8.exit3471 ], [ %success.1.i3484.1, %for.inc.i3487.1 ]
  %ret_val.036.i3474 = phi i8 [ undef, %secure_load_8.exit3471 ], [ %ret_val.1.i3483.1, %for.inc.i3487.1 ]
  %arrayidx.i3475 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3472
  %323 = load i8*, i8** %arrayidx.i3475, align 4, !tbaa !6
  %cmp2.i3476 = icmp eq i8* %323, %arrayidx2428
  br i1 %cmp2.i3476, label %if.then3.i3479, label %if.else9.i3482

if.then3.i3479:                                   ; preds = %for.body.i3477
  %324 = and i8 %success.037.i3473, 1
  %tobool.not.i3478 = icmp eq i8 %324, 0
  br i1 %tobool.not.i3478, label %if.end.i3481, label %if.else8.i3480

if.else8.i3480:                                   ; preds = %if.then3.i3479.1, %if.then3.i3479
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3481:                                     ; preds = %if.then3.i3479
  %325 = load i8, i8* %arrayidx2428, align 1, !tbaa !3
  br label %for.inc.i3487

if.else9.i3482:                                   ; preds = %for.body.i3477
  %326 = load i8, i8* %323, align 1, !tbaa !3
  store i8 %326, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3487

for.inc.i3487:                                    ; preds = %if.else9.i3482, %if.end.i3481
  %ret_val.1.i3483 = phi i8 [ %325, %if.end.i3481 ], [ %ret_val.036.i3474, %if.else9.i3482 ]
  %success.1.i3484 = phi i8 [ 1, %if.end.i3481 ], [ %success.037.i3473, %if.else9.i3482 ]
  %add.i3485 = or i32 %i.038.i3472, 1
  %arrayidx.i3475.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3485
  %327 = load i8*, i8** %arrayidx.i3475.1, align 4, !tbaa !6
  %cmp2.i3476.1 = icmp eq i8* %327, %arrayidx2428
  br i1 %cmp2.i3476.1, label %if.then3.i3479.1, label %if.else9.i3482.1

for.end.i3491:                                    ; preds = %for.inc.i3487.1
  %328 = and i8 %success.1.i3484.1, 1
  %cmp14.i3488 = icmp eq i8 %328, 0
  br i1 %cmp14.i3488, label %if.else19.i3492, label %secure_load_8.exit3493

if.else19.i3492:                                  ; preds = %for.end.i3491
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3493:                           ; preds = %for.end.i3491
  %conv2437 = zext i8 %322 to i32
  %arrayidx2438 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv2437
  %329 = load i8, i8* %arrayidx2438, align 1, !tbaa !3
  %add2453 = add i8 %329, %ret_val.1.i3483.1
  store i8 %add2453, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 29), align 1, !tbaa !3
  %330 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 30), align 1, !tbaa !3
  %331 = and i8 %330, 31
  %332 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 30), align 1, !tbaa !3
  %333 = and i8 %332, 31
  %conv25093854 = zext i8 %331 to i32
  %arrayidx2510 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv25093854
  br label %for.body.i3499

for.body.i3499:                                   ; preds = %for.inc.i3509.1, %secure_load_8.exit3493
  %i.038.i3494 = phi i32 [ 0, %secure_load_8.exit3493 ], [ %add.i3507.1, %for.inc.i3509.1 ]
  %success.037.i3495 = phi i8 [ 0, %secure_load_8.exit3493 ], [ %success.1.i3506.1, %for.inc.i3509.1 ]
  %ret_val.036.i3496 = phi i8 [ undef, %secure_load_8.exit3493 ], [ %ret_val.1.i3505.1, %for.inc.i3509.1 ]
  %arrayidx.i3497 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3494
  %334 = load i8*, i8** %arrayidx.i3497, align 4, !tbaa !6
  %cmp2.i3498 = icmp eq i8* %334, %arrayidx2510
  br i1 %cmp2.i3498, label %if.then3.i3501, label %if.else9.i3504

if.then3.i3501:                                   ; preds = %for.body.i3499
  %335 = and i8 %success.037.i3495, 1
  %tobool.not.i3500 = icmp eq i8 %335, 0
  br i1 %tobool.not.i3500, label %if.end.i3503, label %if.else8.i3502

if.else8.i3502:                                   ; preds = %if.then3.i3501.1, %if.then3.i3501
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3503:                                     ; preds = %if.then3.i3501
  %336 = load i8, i8* %arrayidx2510, align 1, !tbaa !3
  br label %for.inc.i3509

if.else9.i3504:                                   ; preds = %for.body.i3499
  %337 = load i8, i8* %334, align 1, !tbaa !3
  store i8 %337, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3509

for.inc.i3509:                                    ; preds = %if.else9.i3504, %if.end.i3503
  %ret_val.1.i3505 = phi i8 [ %336, %if.end.i3503 ], [ %ret_val.036.i3496, %if.else9.i3504 ]
  %success.1.i3506 = phi i8 [ 1, %if.end.i3503 ], [ %success.037.i3495, %if.else9.i3504 ]
  %add.i3507 = or i32 %i.038.i3494, 1
  %arrayidx.i3497.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3507
  %338 = load i8*, i8** %arrayidx.i3497.1, align 4, !tbaa !6
  %cmp2.i3498.1 = icmp eq i8* %338, %arrayidx2510
  br i1 %cmp2.i3498.1, label %if.then3.i3501.1, label %if.else9.i3504.1

for.end.i3513:                                    ; preds = %for.inc.i3509.1
  %339 = and i8 %success.1.i3506.1, 1
  %cmp14.i3510 = icmp eq i8 %339, 0
  br i1 %cmp14.i3510, label %if.else19.i3514, label %secure_load_8.exit3515

if.else19.i3514:                                  ; preds = %for.end.i3513
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3515:                           ; preds = %for.end.i3513
  %conv2519 = zext i8 %333 to i32
  %arrayidx2520 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv2519
  %340 = load i8, i8* %arrayidx2520, align 1, !tbaa !3
  %add2535 = add i8 %340, %ret_val.1.i3505.1
  store i8 %add2535, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 30), align 1, !tbaa !3
  %341 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 31), align 1, !tbaa !3
  %342 = and i8 %341, 31
  %343 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_pub, i32 0, i32 31), align 1, !tbaa !3
  %conv25913855 = zext i8 %342 to i32
  %arrayidx2592 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv25913855
  br label %for.body.i3521

for.body.i3521:                                   ; preds = %for.inc.i3531.1, %secure_load_8.exit3515
  %i.038.i3516 = phi i32 [ 0, %secure_load_8.exit3515 ], [ %add.i3529.1, %for.inc.i3531.1 ]
  %success.037.i3517 = phi i8 [ 0, %secure_load_8.exit3515 ], [ %success.1.i3528.1, %for.inc.i3531.1 ]
  %ret_val.036.i3518 = phi i8 [ undef, %secure_load_8.exit3515 ], [ %ret_val.1.i3527.1, %for.inc.i3531.1 ]
  %arrayidx.i3519 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %i.038.i3516
  %344 = load i8*, i8** %arrayidx.i3519, align 4, !tbaa !6
  %cmp2.i3520 = icmp eq i8* %344, %arrayidx2592
  br i1 %cmp2.i3520, label %if.then3.i3523, label %if.else9.i3526

if.then3.i3523:                                   ; preds = %for.body.i3521
  %345 = and i8 %success.037.i3517, 1
  %tobool.not.i3522 = icmp eq i8 %345, 0
  br i1 %tobool.not.i3522, label %if.end.i3525, label %if.else8.i3524

if.else8.i3524:                                   ; preds = %if.then3.i3523.1, %if.then3.i3523
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end.i3525:                                     ; preds = %if.then3.i3523
  %346 = load i8, i8* %arrayidx2592, align 1, !tbaa !3
  br label %for.inc.i3531

if.else9.i3526:                                   ; preds = %for.body.i3521
  %347 = load i8, i8* %344, align 1, !tbaa !3
  store i8 %347, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3531

for.inc.i3531:                                    ; preds = %if.else9.i3526, %if.end.i3525
  %ret_val.1.i3527 = phi i8 [ %346, %if.end.i3525 ], [ %ret_val.036.i3518, %if.else9.i3526 ]
  %success.1.i3528 = phi i8 [ 1, %if.end.i3525 ], [ %success.037.i3517, %if.else9.i3526 ]
  %add.i3529 = or i32 %i.038.i3516, 1
  %arrayidx.i3519.1 = getelementptr inbounds [32 x i8*], [32 x i8*]* @constinit.31, i32 0, i32 %add.i3529
  %348 = load i8*, i8** %arrayidx.i3519.1, align 4, !tbaa !6
  %cmp2.i3520.1 = icmp eq i8* %348, %arrayidx2592
  br i1 %cmp2.i3520.1, label %if.then3.i3523.1, label %if.else9.i3526.1

for.end.i3535:                                    ; preds = %for.inc.i3531.1
  %349 = and i8 %success.1.i3528.1, 1
  %cmp14.i3532 = icmp eq i8 %349, 0
  br i1 %cmp14.i3532, label %if.else19.i3536, label %secure_load_8.exit3537

if.else19.i3536:                                  ; preds = %for.end.i3535
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

secure_load_8.exit3537:                           ; preds = %for.end.i3535
  %350 = and i8 %343, 31
  %conv2601 = zext i8 %350 to i32
  %arrayidx2602 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ [22 x i8], [10 x i8] }>* @lookup to [32 x i8]*), i32 0, i32 %conv2601
  %351 = load i8, i8* %arrayidx2602, align 1, !tbaa !3
  %add2617 = add i8 %351, %ret_val.1.i3527.1
  store i8 %add2617, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 31), align 1, !tbaa !3
  %call2631 = tail call i32 @write(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @out, i32 0, i32 0), i32 32) #3
  ret i32 0

if.else9.i.1:                                     ; preds = %for.inc.i
  %352 = load i8, i8* %8, align 1, !tbaa !3
  store i8 %352, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i.1

if.then3.i.1:                                     ; preds = %for.inc.i
  %353 = and i8 %success.1.i, 1
  %tobool.not.i.1 = icmp eq i8 %353, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %if.else8.i

if.end.i.1:                                       ; preds = %if.then3.i.1
  %354 = load i8, i8* %arrayidx51, align 1, !tbaa !3
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.end.i.1, %if.else9.i.1
  %ret_val.1.i.1 = phi i8 [ %354, %if.end.i.1 ], [ %ret_val.1.i, %if.else9.i.1 ]
  %success.1.i.1 = phi i8 [ 1, %if.end.i.1 ], [ %success.1.i, %if.else9.i.1 ]
  %add.i.1 = add nuw nsw i32 %i.038.i, 2
  %exitcond.not.i.1 = icmp eq i32 %add.i.1, 32
  br i1 %exitcond.not.i.1, label %for.end.i, label %for.body.i, !llvm.loop !8

if.else9.i2866.1:                                 ; preds = %for.inc.i2871
  %355 = load i8, i8* %19, align 1, !tbaa !3
  store i8 %355, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i2871.1

if.then3.i2863.1:                                 ; preds = %for.inc.i2871
  %356 = and i8 %success.1.i2868, 1
  %tobool.not.i2862.1 = icmp eq i8 %356, 0
  br i1 %tobool.not.i2862.1, label %if.end.i2865.1, label %if.else8.i2864

if.end.i2865.1:                                   ; preds = %if.then3.i2863.1
  %357 = load i8, i8* %arrayidx132, align 1, !tbaa !3
  br label %for.inc.i2871.1

for.inc.i2871.1:                                  ; preds = %if.end.i2865.1, %if.else9.i2866.1
  %ret_val.1.i2867.1 = phi i8 [ %357, %if.end.i2865.1 ], [ %ret_val.1.i2867, %if.else9.i2866.1 ]
  %success.1.i2868.1 = phi i8 [ 1, %if.end.i2865.1 ], [ %success.1.i2868, %if.else9.i2866.1 ]
  %add.i2869.1 = add nuw nsw i32 %i.038.i2856, 2
  %exitcond.not.i2870.1 = icmp eq i32 %add.i2869.1, 32
  br i1 %exitcond.not.i2870.1, label %for.end.i2875, label %for.body.i2861, !llvm.loop !8

if.else9.i2888.1:                                 ; preds = %for.inc.i2893
  %358 = load i8, i8* %30, align 1, !tbaa !3
  store i8 %358, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i2893.1

if.then3.i2885.1:                                 ; preds = %for.inc.i2893
  %359 = and i8 %success.1.i2890, 1
  %tobool.not.i2884.1 = icmp eq i8 %359, 0
  br i1 %tobool.not.i2884.1, label %if.end.i2887.1, label %if.else8.i2886

if.end.i2887.1:                                   ; preds = %if.then3.i2885.1
  %360 = load i8, i8* %arrayidx214, align 1, !tbaa !3
  br label %for.inc.i2893.1

for.inc.i2893.1:                                  ; preds = %if.end.i2887.1, %if.else9.i2888.1
  %ret_val.1.i2889.1 = phi i8 [ %360, %if.end.i2887.1 ], [ %ret_val.1.i2889, %if.else9.i2888.1 ]
  %success.1.i2890.1 = phi i8 [ 1, %if.end.i2887.1 ], [ %success.1.i2890, %if.else9.i2888.1 ]
  %add.i2891.1 = add nuw nsw i32 %i.038.i2878, 2
  %exitcond.not.i2892.1 = icmp eq i32 %add.i2891.1, 32
  br i1 %exitcond.not.i2892.1, label %for.end.i2897, label %for.body.i2883, !llvm.loop !8

if.else9.i2910.1:                                 ; preds = %for.inc.i2915
  %361 = load i8, i8* %41, align 1, !tbaa !3
  store i8 %361, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i2915.1

if.then3.i2907.1:                                 ; preds = %for.inc.i2915
  %362 = and i8 %success.1.i2912, 1
  %tobool.not.i2906.1 = icmp eq i8 %362, 0
  br i1 %tobool.not.i2906.1, label %if.end.i2909.1, label %if.else8.i2908

if.end.i2909.1:                                   ; preds = %if.then3.i2907.1
  %363 = load i8, i8* %arrayidx296, align 1, !tbaa !3
  br label %for.inc.i2915.1

for.inc.i2915.1:                                  ; preds = %if.end.i2909.1, %if.else9.i2910.1
  %ret_val.1.i2911.1 = phi i8 [ %363, %if.end.i2909.1 ], [ %ret_val.1.i2911, %if.else9.i2910.1 ]
  %success.1.i2912.1 = phi i8 [ 1, %if.end.i2909.1 ], [ %success.1.i2912, %if.else9.i2910.1 ]
  %add.i2913.1 = add nuw nsw i32 %i.038.i2900, 2
  %exitcond.not.i2914.1 = icmp eq i32 %add.i2913.1, 32
  br i1 %exitcond.not.i2914.1, label %for.end.i2919, label %for.body.i2905, !llvm.loop !8

if.else9.i2932.1:                                 ; preds = %for.inc.i2937
  %364 = load i8, i8* %52, align 1, !tbaa !3
  store i8 %364, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i2937.1

if.then3.i2929.1:                                 ; preds = %for.inc.i2937
  %365 = and i8 %success.1.i2934, 1
  %tobool.not.i2928.1 = icmp eq i8 %365, 0
  br i1 %tobool.not.i2928.1, label %if.end.i2931.1, label %if.else8.i2930

if.end.i2931.1:                                   ; preds = %if.then3.i2929.1
  %366 = load i8, i8* %arrayidx378, align 1, !tbaa !3
  br label %for.inc.i2937.1

for.inc.i2937.1:                                  ; preds = %if.end.i2931.1, %if.else9.i2932.1
  %ret_val.1.i2933.1 = phi i8 [ %366, %if.end.i2931.1 ], [ %ret_val.1.i2933, %if.else9.i2932.1 ]
  %success.1.i2934.1 = phi i8 [ 1, %if.end.i2931.1 ], [ %success.1.i2934, %if.else9.i2932.1 ]
  %add.i2935.1 = add nuw nsw i32 %i.038.i2922, 2
  %exitcond.not.i2936.1 = icmp eq i32 %add.i2935.1, 32
  br i1 %exitcond.not.i2936.1, label %for.end.i2941, label %for.body.i2927, !llvm.loop !8

if.else9.i2954.1:                                 ; preds = %for.inc.i2959
  %367 = load i8, i8* %63, align 1, !tbaa !3
  store i8 %367, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i2959.1

if.then3.i2951.1:                                 ; preds = %for.inc.i2959
  %368 = and i8 %success.1.i2956, 1
  %tobool.not.i2950.1 = icmp eq i8 %368, 0
  br i1 %tobool.not.i2950.1, label %if.end.i2953.1, label %if.else8.i2952

if.end.i2953.1:                                   ; preds = %if.then3.i2951.1
  %369 = load i8, i8* %arrayidx460, align 1, !tbaa !3
  br label %for.inc.i2959.1

for.inc.i2959.1:                                  ; preds = %if.end.i2953.1, %if.else9.i2954.1
  %ret_val.1.i2955.1 = phi i8 [ %369, %if.end.i2953.1 ], [ %ret_val.1.i2955, %if.else9.i2954.1 ]
  %success.1.i2956.1 = phi i8 [ 1, %if.end.i2953.1 ], [ %success.1.i2956, %if.else9.i2954.1 ]
  %add.i2957.1 = add nuw nsw i32 %i.038.i2944, 2
  %exitcond.not.i2958.1 = icmp eq i32 %add.i2957.1, 32
  br i1 %exitcond.not.i2958.1, label %for.end.i2963, label %for.body.i2949, !llvm.loop !8

if.else9.i2976.1:                                 ; preds = %for.inc.i2981
  %370 = load i8, i8* %74, align 1, !tbaa !3
  store i8 %370, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i2981.1

if.then3.i2973.1:                                 ; preds = %for.inc.i2981
  %371 = and i8 %success.1.i2978, 1
  %tobool.not.i2972.1 = icmp eq i8 %371, 0
  br i1 %tobool.not.i2972.1, label %if.end.i2975.1, label %if.else8.i2974

if.end.i2975.1:                                   ; preds = %if.then3.i2973.1
  %372 = load i8, i8* %arrayidx542, align 1, !tbaa !3
  br label %for.inc.i2981.1

for.inc.i2981.1:                                  ; preds = %if.end.i2975.1, %if.else9.i2976.1
  %ret_val.1.i2977.1 = phi i8 [ %372, %if.end.i2975.1 ], [ %ret_val.1.i2977, %if.else9.i2976.1 ]
  %success.1.i2978.1 = phi i8 [ 1, %if.end.i2975.1 ], [ %success.1.i2978, %if.else9.i2976.1 ]
  %add.i2979.1 = add nuw nsw i32 %i.038.i2966, 2
  %exitcond.not.i2980.1 = icmp eq i32 %add.i2979.1, 32
  br i1 %exitcond.not.i2980.1, label %for.end.i2985, label %for.body.i2971, !llvm.loop !8

if.else9.i2998.1:                                 ; preds = %for.inc.i3003
  %373 = load i8, i8* %85, align 1, !tbaa !3
  store i8 %373, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3003.1

if.then3.i2995.1:                                 ; preds = %for.inc.i3003
  %374 = and i8 %success.1.i3000, 1
  %tobool.not.i2994.1 = icmp eq i8 %374, 0
  br i1 %tobool.not.i2994.1, label %if.end.i2997.1, label %if.else8.i2996

if.end.i2997.1:                                   ; preds = %if.then3.i2995.1
  %375 = load i8, i8* %arrayidx624, align 1, !tbaa !3
  br label %for.inc.i3003.1

for.inc.i3003.1:                                  ; preds = %if.end.i2997.1, %if.else9.i2998.1
  %ret_val.1.i2999.1 = phi i8 [ %375, %if.end.i2997.1 ], [ %ret_val.1.i2999, %if.else9.i2998.1 ]
  %success.1.i3000.1 = phi i8 [ 1, %if.end.i2997.1 ], [ %success.1.i3000, %if.else9.i2998.1 ]
  %add.i3001.1 = add nuw nsw i32 %i.038.i2988, 2
  %exitcond.not.i3002.1 = icmp eq i32 %add.i3001.1, 32
  br i1 %exitcond.not.i3002.1, label %for.end.i3007, label %for.body.i2993, !llvm.loop !8

if.else9.i3020.1:                                 ; preds = %for.inc.i3025
  %376 = load i8, i8* %96, align 1, !tbaa !3
  store i8 %376, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3025.1

if.then3.i3017.1:                                 ; preds = %for.inc.i3025
  %377 = and i8 %success.1.i3022, 1
  %tobool.not.i3016.1 = icmp eq i8 %377, 0
  br i1 %tobool.not.i3016.1, label %if.end.i3019.1, label %if.else8.i3018

if.end.i3019.1:                                   ; preds = %if.then3.i3017.1
  %378 = load i8, i8* %arrayidx706, align 1, !tbaa !3
  br label %for.inc.i3025.1

for.inc.i3025.1:                                  ; preds = %if.end.i3019.1, %if.else9.i3020.1
  %ret_val.1.i3021.1 = phi i8 [ %378, %if.end.i3019.1 ], [ %ret_val.1.i3021, %if.else9.i3020.1 ]
  %success.1.i3022.1 = phi i8 [ 1, %if.end.i3019.1 ], [ %success.1.i3022, %if.else9.i3020.1 ]
  %add.i3023.1 = add nuw nsw i32 %i.038.i3010, 2
  %exitcond.not.i3024.1 = icmp eq i32 %add.i3023.1, 32
  br i1 %exitcond.not.i3024.1, label %for.end.i3029, label %for.body.i3015, !llvm.loop !8

if.else9.i3042.1:                                 ; preds = %for.inc.i3047
  %379 = load i8, i8* %107, align 1, !tbaa !3
  store i8 %379, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3047.1

if.then3.i3039.1:                                 ; preds = %for.inc.i3047
  %380 = and i8 %success.1.i3044, 1
  %tobool.not.i3038.1 = icmp eq i8 %380, 0
  br i1 %tobool.not.i3038.1, label %if.end.i3041.1, label %if.else8.i3040

if.end.i3041.1:                                   ; preds = %if.then3.i3039.1
  %381 = load i8, i8* %arrayidx788, align 1, !tbaa !3
  br label %for.inc.i3047.1

for.inc.i3047.1:                                  ; preds = %if.end.i3041.1, %if.else9.i3042.1
  %ret_val.1.i3043.1 = phi i8 [ %381, %if.end.i3041.1 ], [ %ret_val.1.i3043, %if.else9.i3042.1 ]
  %success.1.i3044.1 = phi i8 [ 1, %if.end.i3041.1 ], [ %success.1.i3044, %if.else9.i3042.1 ]
  %add.i3045.1 = add nuw nsw i32 %i.038.i3032, 2
  %exitcond.not.i3046.1 = icmp eq i32 %add.i3045.1, 32
  br i1 %exitcond.not.i3046.1, label %for.end.i3051, label %for.body.i3037, !llvm.loop !8

if.else9.i3064.1:                                 ; preds = %for.inc.i3069
  %382 = load i8, i8* %118, align 1, !tbaa !3
  store i8 %382, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3069.1

if.then3.i3061.1:                                 ; preds = %for.inc.i3069
  %383 = and i8 %success.1.i3066, 1
  %tobool.not.i3060.1 = icmp eq i8 %383, 0
  br i1 %tobool.not.i3060.1, label %if.end.i3063.1, label %if.else8.i3062

if.end.i3063.1:                                   ; preds = %if.then3.i3061.1
  %384 = load i8, i8* %arrayidx870, align 1, !tbaa !3
  br label %for.inc.i3069.1

for.inc.i3069.1:                                  ; preds = %if.end.i3063.1, %if.else9.i3064.1
  %ret_val.1.i3065.1 = phi i8 [ %384, %if.end.i3063.1 ], [ %ret_val.1.i3065, %if.else9.i3064.1 ]
  %success.1.i3066.1 = phi i8 [ 1, %if.end.i3063.1 ], [ %success.1.i3066, %if.else9.i3064.1 ]
  %add.i3067.1 = add nuw nsw i32 %i.038.i3054, 2
  %exitcond.not.i3068.1 = icmp eq i32 %add.i3067.1, 32
  br i1 %exitcond.not.i3068.1, label %for.end.i3073, label %for.body.i3059, !llvm.loop !8

if.else9.i3086.1:                                 ; preds = %for.inc.i3091
  %385 = load i8, i8* %129, align 1, !tbaa !3
  store i8 %385, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3091.1

if.then3.i3083.1:                                 ; preds = %for.inc.i3091
  %386 = and i8 %success.1.i3088, 1
  %tobool.not.i3082.1 = icmp eq i8 %386, 0
  br i1 %tobool.not.i3082.1, label %if.end.i3085.1, label %if.else8.i3084

if.end.i3085.1:                                   ; preds = %if.then3.i3083.1
  %387 = load i8, i8* %arrayidx952, align 1, !tbaa !3
  br label %for.inc.i3091.1

for.inc.i3091.1:                                  ; preds = %if.end.i3085.1, %if.else9.i3086.1
  %ret_val.1.i3087.1 = phi i8 [ %387, %if.end.i3085.1 ], [ %ret_val.1.i3087, %if.else9.i3086.1 ]
  %success.1.i3088.1 = phi i8 [ 1, %if.end.i3085.1 ], [ %success.1.i3088, %if.else9.i3086.1 ]
  %add.i3089.1 = add nuw nsw i32 %i.038.i3076, 2
  %exitcond.not.i3090.1 = icmp eq i32 %add.i3089.1, 32
  br i1 %exitcond.not.i3090.1, label %for.end.i3095, label %for.body.i3081, !llvm.loop !8

if.else9.i3108.1:                                 ; preds = %for.inc.i3113
  %388 = load i8, i8* %140, align 1, !tbaa !3
  store i8 %388, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3113.1

if.then3.i3105.1:                                 ; preds = %for.inc.i3113
  %389 = and i8 %success.1.i3110, 1
  %tobool.not.i3104.1 = icmp eq i8 %389, 0
  br i1 %tobool.not.i3104.1, label %if.end.i3107.1, label %if.else8.i3106

if.end.i3107.1:                                   ; preds = %if.then3.i3105.1
  %390 = load i8, i8* %arrayidx1034, align 1, !tbaa !3
  br label %for.inc.i3113.1

for.inc.i3113.1:                                  ; preds = %if.end.i3107.1, %if.else9.i3108.1
  %ret_val.1.i3109.1 = phi i8 [ %390, %if.end.i3107.1 ], [ %ret_val.1.i3109, %if.else9.i3108.1 ]
  %success.1.i3110.1 = phi i8 [ 1, %if.end.i3107.1 ], [ %success.1.i3110, %if.else9.i3108.1 ]
  %add.i3111.1 = add nuw nsw i32 %i.038.i3098, 2
  %exitcond.not.i3112.1 = icmp eq i32 %add.i3111.1, 32
  br i1 %exitcond.not.i3112.1, label %for.end.i3117, label %for.body.i3103, !llvm.loop !8

if.else9.i3130.1:                                 ; preds = %for.inc.i3135
  %391 = load i8, i8* %151, align 1, !tbaa !3
  store i8 %391, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3135.1

if.then3.i3127.1:                                 ; preds = %for.inc.i3135
  %392 = and i8 %success.1.i3132, 1
  %tobool.not.i3126.1 = icmp eq i8 %392, 0
  br i1 %tobool.not.i3126.1, label %if.end.i3129.1, label %if.else8.i3128

if.end.i3129.1:                                   ; preds = %if.then3.i3127.1
  %393 = load i8, i8* %arrayidx1116, align 1, !tbaa !3
  br label %for.inc.i3135.1

for.inc.i3135.1:                                  ; preds = %if.end.i3129.1, %if.else9.i3130.1
  %ret_val.1.i3131.1 = phi i8 [ %393, %if.end.i3129.1 ], [ %ret_val.1.i3131, %if.else9.i3130.1 ]
  %success.1.i3132.1 = phi i8 [ 1, %if.end.i3129.1 ], [ %success.1.i3132, %if.else9.i3130.1 ]
  %add.i3133.1 = add nuw nsw i32 %i.038.i3120, 2
  %exitcond.not.i3134.1 = icmp eq i32 %add.i3133.1, 32
  br i1 %exitcond.not.i3134.1, label %for.end.i3139, label %for.body.i3125, !llvm.loop !8

if.else9.i3152.1:                                 ; preds = %for.inc.i3157
  %394 = load i8, i8* %162, align 1, !tbaa !3
  store i8 %394, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3157.1

if.then3.i3149.1:                                 ; preds = %for.inc.i3157
  %395 = and i8 %success.1.i3154, 1
  %tobool.not.i3148.1 = icmp eq i8 %395, 0
  br i1 %tobool.not.i3148.1, label %if.end.i3151.1, label %if.else8.i3150

if.end.i3151.1:                                   ; preds = %if.then3.i3149.1
  %396 = load i8, i8* %arrayidx1198, align 1, !tbaa !3
  br label %for.inc.i3157.1

for.inc.i3157.1:                                  ; preds = %if.end.i3151.1, %if.else9.i3152.1
  %ret_val.1.i3153.1 = phi i8 [ %396, %if.end.i3151.1 ], [ %ret_val.1.i3153, %if.else9.i3152.1 ]
  %success.1.i3154.1 = phi i8 [ 1, %if.end.i3151.1 ], [ %success.1.i3154, %if.else9.i3152.1 ]
  %add.i3155.1 = add nuw nsw i32 %i.038.i3142, 2
  %exitcond.not.i3156.1 = icmp eq i32 %add.i3155.1, 32
  br i1 %exitcond.not.i3156.1, label %for.end.i3161, label %for.body.i3147, !llvm.loop !8

if.else9.i3174.1:                                 ; preds = %for.inc.i3179
  %397 = load i8, i8* %173, align 1, !tbaa !3
  store i8 %397, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3179.1

if.then3.i3171.1:                                 ; preds = %for.inc.i3179
  %398 = and i8 %success.1.i3176, 1
  %tobool.not.i3170.1 = icmp eq i8 %398, 0
  br i1 %tobool.not.i3170.1, label %if.end.i3173.1, label %if.else8.i3172

if.end.i3173.1:                                   ; preds = %if.then3.i3171.1
  %399 = load i8, i8* %arrayidx1280, align 1, !tbaa !3
  br label %for.inc.i3179.1

for.inc.i3179.1:                                  ; preds = %if.end.i3173.1, %if.else9.i3174.1
  %ret_val.1.i3175.1 = phi i8 [ %399, %if.end.i3173.1 ], [ %ret_val.1.i3175, %if.else9.i3174.1 ]
  %success.1.i3176.1 = phi i8 [ 1, %if.end.i3173.1 ], [ %success.1.i3176, %if.else9.i3174.1 ]
  %add.i3177.1 = add nuw nsw i32 %i.038.i3164, 2
  %exitcond.not.i3178.1 = icmp eq i32 %add.i3177.1, 32
  br i1 %exitcond.not.i3178.1, label %for.end.i3183, label %for.body.i3169, !llvm.loop !8

if.else9.i3196.1:                                 ; preds = %for.inc.i3201
  %400 = load i8, i8* %184, align 1, !tbaa !3
  store i8 %400, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3201.1

if.then3.i3193.1:                                 ; preds = %for.inc.i3201
  %401 = and i8 %success.1.i3198, 1
  %tobool.not.i3192.1 = icmp eq i8 %401, 0
  br i1 %tobool.not.i3192.1, label %if.end.i3195.1, label %if.else8.i3194

if.end.i3195.1:                                   ; preds = %if.then3.i3193.1
  %402 = load i8, i8* %arrayidx1362, align 1, !tbaa !3
  br label %for.inc.i3201.1

for.inc.i3201.1:                                  ; preds = %if.end.i3195.1, %if.else9.i3196.1
  %ret_val.1.i3197.1 = phi i8 [ %402, %if.end.i3195.1 ], [ %ret_val.1.i3197, %if.else9.i3196.1 ]
  %success.1.i3198.1 = phi i8 [ 1, %if.end.i3195.1 ], [ %success.1.i3198, %if.else9.i3196.1 ]
  %add.i3199.1 = add nuw nsw i32 %i.038.i3186, 2
  %exitcond.not.i3200.1 = icmp eq i32 %add.i3199.1, 32
  br i1 %exitcond.not.i3200.1, label %for.end.i3205, label %for.body.i3191, !llvm.loop !8

if.else9.i3218.1:                                 ; preds = %for.inc.i3223
  %403 = load i8, i8* %195, align 1, !tbaa !3
  store i8 %403, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3223.1

if.then3.i3215.1:                                 ; preds = %for.inc.i3223
  %404 = and i8 %success.1.i3220, 1
  %tobool.not.i3214.1 = icmp eq i8 %404, 0
  br i1 %tobool.not.i3214.1, label %if.end.i3217.1, label %if.else8.i3216

if.end.i3217.1:                                   ; preds = %if.then3.i3215.1
  %405 = load i8, i8* %arrayidx1444, align 1, !tbaa !3
  br label %for.inc.i3223.1

for.inc.i3223.1:                                  ; preds = %if.end.i3217.1, %if.else9.i3218.1
  %ret_val.1.i3219.1 = phi i8 [ %405, %if.end.i3217.1 ], [ %ret_val.1.i3219, %if.else9.i3218.1 ]
  %success.1.i3220.1 = phi i8 [ 1, %if.end.i3217.1 ], [ %success.1.i3220, %if.else9.i3218.1 ]
  %add.i3221.1 = add nuw nsw i32 %i.038.i3208, 2
  %exitcond.not.i3222.1 = icmp eq i32 %add.i3221.1, 32
  br i1 %exitcond.not.i3222.1, label %for.end.i3227, label %for.body.i3213, !llvm.loop !8

if.else9.i3240.1:                                 ; preds = %for.inc.i3245
  %406 = load i8, i8* %206, align 1, !tbaa !3
  store i8 %406, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3245.1

if.then3.i3237.1:                                 ; preds = %for.inc.i3245
  %407 = and i8 %success.1.i3242, 1
  %tobool.not.i3236.1 = icmp eq i8 %407, 0
  br i1 %tobool.not.i3236.1, label %if.end.i3239.1, label %if.else8.i3238

if.end.i3239.1:                                   ; preds = %if.then3.i3237.1
  %408 = load i8, i8* %arrayidx1526, align 1, !tbaa !3
  br label %for.inc.i3245.1

for.inc.i3245.1:                                  ; preds = %if.end.i3239.1, %if.else9.i3240.1
  %ret_val.1.i3241.1 = phi i8 [ %408, %if.end.i3239.1 ], [ %ret_val.1.i3241, %if.else9.i3240.1 ]
  %success.1.i3242.1 = phi i8 [ 1, %if.end.i3239.1 ], [ %success.1.i3242, %if.else9.i3240.1 ]
  %add.i3243.1 = add nuw nsw i32 %i.038.i3230, 2
  %exitcond.not.i3244.1 = icmp eq i32 %add.i3243.1, 32
  br i1 %exitcond.not.i3244.1, label %for.end.i3249, label %for.body.i3235, !llvm.loop !8

if.else9.i3262.1:                                 ; preds = %for.inc.i3267
  %409 = load i8, i8* %217, align 1, !tbaa !3
  store i8 %409, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3267.1

if.then3.i3259.1:                                 ; preds = %for.inc.i3267
  %410 = and i8 %success.1.i3264, 1
  %tobool.not.i3258.1 = icmp eq i8 %410, 0
  br i1 %tobool.not.i3258.1, label %if.end.i3261.1, label %if.else8.i3260

if.end.i3261.1:                                   ; preds = %if.then3.i3259.1
  %411 = load i8, i8* %arrayidx1608, align 1, !tbaa !3
  br label %for.inc.i3267.1

for.inc.i3267.1:                                  ; preds = %if.end.i3261.1, %if.else9.i3262.1
  %ret_val.1.i3263.1 = phi i8 [ %411, %if.end.i3261.1 ], [ %ret_val.1.i3263, %if.else9.i3262.1 ]
  %success.1.i3264.1 = phi i8 [ 1, %if.end.i3261.1 ], [ %success.1.i3264, %if.else9.i3262.1 ]
  %add.i3265.1 = add nuw nsw i32 %i.038.i3252, 2
  %exitcond.not.i3266.1 = icmp eq i32 %add.i3265.1, 32
  br i1 %exitcond.not.i3266.1, label %for.end.i3271, label %for.body.i3257, !llvm.loop !8

if.else9.i3284.1:                                 ; preds = %for.inc.i3289
  %412 = load i8, i8* %228, align 1, !tbaa !3
  store i8 %412, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3289.1

if.then3.i3281.1:                                 ; preds = %for.inc.i3289
  %413 = and i8 %success.1.i3286, 1
  %tobool.not.i3280.1 = icmp eq i8 %413, 0
  br i1 %tobool.not.i3280.1, label %if.end.i3283.1, label %if.else8.i3282

if.end.i3283.1:                                   ; preds = %if.then3.i3281.1
  %414 = load i8, i8* %arrayidx1690, align 1, !tbaa !3
  br label %for.inc.i3289.1

for.inc.i3289.1:                                  ; preds = %if.end.i3283.1, %if.else9.i3284.1
  %ret_val.1.i3285.1 = phi i8 [ %414, %if.end.i3283.1 ], [ %ret_val.1.i3285, %if.else9.i3284.1 ]
  %success.1.i3286.1 = phi i8 [ 1, %if.end.i3283.1 ], [ %success.1.i3286, %if.else9.i3284.1 ]
  %add.i3287.1 = add nuw nsw i32 %i.038.i3274, 2
  %exitcond.not.i3288.1 = icmp eq i32 %add.i3287.1, 32
  br i1 %exitcond.not.i3288.1, label %for.end.i3293, label %for.body.i3279, !llvm.loop !8

if.else9.i3306.1:                                 ; preds = %for.inc.i3311
  %415 = load i8, i8* %239, align 1, !tbaa !3
  store i8 %415, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3311.1

if.then3.i3303.1:                                 ; preds = %for.inc.i3311
  %416 = and i8 %success.1.i3308, 1
  %tobool.not.i3302.1 = icmp eq i8 %416, 0
  br i1 %tobool.not.i3302.1, label %if.end.i3305.1, label %if.else8.i3304

if.end.i3305.1:                                   ; preds = %if.then3.i3303.1
  %417 = load i8, i8* %arrayidx1772, align 1, !tbaa !3
  br label %for.inc.i3311.1

for.inc.i3311.1:                                  ; preds = %if.end.i3305.1, %if.else9.i3306.1
  %ret_val.1.i3307.1 = phi i8 [ %417, %if.end.i3305.1 ], [ %ret_val.1.i3307, %if.else9.i3306.1 ]
  %success.1.i3308.1 = phi i8 [ 1, %if.end.i3305.1 ], [ %success.1.i3308, %if.else9.i3306.1 ]
  %add.i3309.1 = add nuw nsw i32 %i.038.i3296, 2
  %exitcond.not.i3310.1 = icmp eq i32 %add.i3309.1, 32
  br i1 %exitcond.not.i3310.1, label %for.end.i3315, label %for.body.i3301, !llvm.loop !8

if.else9.i3328.1:                                 ; preds = %for.inc.i3333
  %418 = load i8, i8* %250, align 1, !tbaa !3
  store i8 %418, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3333.1

if.then3.i3325.1:                                 ; preds = %for.inc.i3333
  %419 = and i8 %success.1.i3330, 1
  %tobool.not.i3324.1 = icmp eq i8 %419, 0
  br i1 %tobool.not.i3324.1, label %if.end.i3327.1, label %if.else8.i3326

if.end.i3327.1:                                   ; preds = %if.then3.i3325.1
  %420 = load i8, i8* %arrayidx1854, align 1, !tbaa !3
  br label %for.inc.i3333.1

for.inc.i3333.1:                                  ; preds = %if.end.i3327.1, %if.else9.i3328.1
  %ret_val.1.i3329.1 = phi i8 [ %420, %if.end.i3327.1 ], [ %ret_val.1.i3329, %if.else9.i3328.1 ]
  %success.1.i3330.1 = phi i8 [ 1, %if.end.i3327.1 ], [ %success.1.i3330, %if.else9.i3328.1 ]
  %add.i3331.1 = add nuw nsw i32 %i.038.i3318, 2
  %exitcond.not.i3332.1 = icmp eq i32 %add.i3331.1, 32
  br i1 %exitcond.not.i3332.1, label %for.end.i3337, label %for.body.i3323, !llvm.loop !8

if.else9.i3350.1:                                 ; preds = %for.inc.i3355
  %421 = load i8, i8* %261, align 1, !tbaa !3
  store i8 %421, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3355.1

if.then3.i3347.1:                                 ; preds = %for.inc.i3355
  %422 = and i8 %success.1.i3352, 1
  %tobool.not.i3346.1 = icmp eq i8 %422, 0
  br i1 %tobool.not.i3346.1, label %if.end.i3349.1, label %if.else8.i3348

if.end.i3349.1:                                   ; preds = %if.then3.i3347.1
  %423 = load i8, i8* %arrayidx1936, align 1, !tbaa !3
  br label %for.inc.i3355.1

for.inc.i3355.1:                                  ; preds = %if.end.i3349.1, %if.else9.i3350.1
  %ret_val.1.i3351.1 = phi i8 [ %423, %if.end.i3349.1 ], [ %ret_val.1.i3351, %if.else9.i3350.1 ]
  %success.1.i3352.1 = phi i8 [ 1, %if.end.i3349.1 ], [ %success.1.i3352, %if.else9.i3350.1 ]
  %add.i3353.1 = add nuw nsw i32 %i.038.i3340, 2
  %exitcond.not.i3354.1 = icmp eq i32 %add.i3353.1, 32
  br i1 %exitcond.not.i3354.1, label %for.end.i3359, label %for.body.i3345, !llvm.loop !8

if.else9.i3372.1:                                 ; preds = %for.inc.i3377
  %424 = load i8, i8* %272, align 1, !tbaa !3
  store i8 %424, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3377.1

if.then3.i3369.1:                                 ; preds = %for.inc.i3377
  %425 = and i8 %success.1.i3374, 1
  %tobool.not.i3368.1 = icmp eq i8 %425, 0
  br i1 %tobool.not.i3368.1, label %if.end.i3371.1, label %if.else8.i3370

if.end.i3371.1:                                   ; preds = %if.then3.i3369.1
  %426 = load i8, i8* %arrayidx2018, align 1, !tbaa !3
  br label %for.inc.i3377.1

for.inc.i3377.1:                                  ; preds = %if.end.i3371.1, %if.else9.i3372.1
  %ret_val.1.i3373.1 = phi i8 [ %426, %if.end.i3371.1 ], [ %ret_val.1.i3373, %if.else9.i3372.1 ]
  %success.1.i3374.1 = phi i8 [ 1, %if.end.i3371.1 ], [ %success.1.i3374, %if.else9.i3372.1 ]
  %add.i3375.1 = add nuw nsw i32 %i.038.i3362, 2
  %exitcond.not.i3376.1 = icmp eq i32 %add.i3375.1, 32
  br i1 %exitcond.not.i3376.1, label %for.end.i3381, label %for.body.i3367, !llvm.loop !8

if.else9.i3394.1:                                 ; preds = %for.inc.i3399
  %427 = load i8, i8* %283, align 1, !tbaa !3
  store i8 %427, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3399.1

if.then3.i3391.1:                                 ; preds = %for.inc.i3399
  %428 = and i8 %success.1.i3396, 1
  %tobool.not.i3390.1 = icmp eq i8 %428, 0
  br i1 %tobool.not.i3390.1, label %if.end.i3393.1, label %if.else8.i3392

if.end.i3393.1:                                   ; preds = %if.then3.i3391.1
  %429 = load i8, i8* %arrayidx2100, align 1, !tbaa !3
  br label %for.inc.i3399.1

for.inc.i3399.1:                                  ; preds = %if.end.i3393.1, %if.else9.i3394.1
  %ret_val.1.i3395.1 = phi i8 [ %429, %if.end.i3393.1 ], [ %ret_val.1.i3395, %if.else9.i3394.1 ]
  %success.1.i3396.1 = phi i8 [ 1, %if.end.i3393.1 ], [ %success.1.i3396, %if.else9.i3394.1 ]
  %add.i3397.1 = add nuw nsw i32 %i.038.i3384, 2
  %exitcond.not.i3398.1 = icmp eq i32 %add.i3397.1, 32
  br i1 %exitcond.not.i3398.1, label %for.end.i3403, label %for.body.i3389, !llvm.loop !8

if.else9.i3416.1:                                 ; preds = %for.inc.i3421
  %430 = load i8, i8* %294, align 1, !tbaa !3
  store i8 %430, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3421.1

if.then3.i3413.1:                                 ; preds = %for.inc.i3421
  %431 = and i8 %success.1.i3418, 1
  %tobool.not.i3412.1 = icmp eq i8 %431, 0
  br i1 %tobool.not.i3412.1, label %if.end.i3415.1, label %if.else8.i3414

if.end.i3415.1:                                   ; preds = %if.then3.i3413.1
  %432 = load i8, i8* %arrayidx2182, align 1, !tbaa !3
  br label %for.inc.i3421.1

for.inc.i3421.1:                                  ; preds = %if.end.i3415.1, %if.else9.i3416.1
  %ret_val.1.i3417.1 = phi i8 [ %432, %if.end.i3415.1 ], [ %ret_val.1.i3417, %if.else9.i3416.1 ]
  %success.1.i3418.1 = phi i8 [ 1, %if.end.i3415.1 ], [ %success.1.i3418, %if.else9.i3416.1 ]
  %add.i3419.1 = add nuw nsw i32 %i.038.i3406, 2
  %exitcond.not.i3420.1 = icmp eq i32 %add.i3419.1, 32
  br i1 %exitcond.not.i3420.1, label %for.end.i3425, label %for.body.i3411, !llvm.loop !8

if.else9.i3438.1:                                 ; preds = %for.inc.i3443
  %433 = load i8, i8* %305, align 1, !tbaa !3
  store i8 %433, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3443.1

if.then3.i3435.1:                                 ; preds = %for.inc.i3443
  %434 = and i8 %success.1.i3440, 1
  %tobool.not.i3434.1 = icmp eq i8 %434, 0
  br i1 %tobool.not.i3434.1, label %if.end.i3437.1, label %if.else8.i3436

if.end.i3437.1:                                   ; preds = %if.then3.i3435.1
  %435 = load i8, i8* %arrayidx2264, align 1, !tbaa !3
  br label %for.inc.i3443.1

for.inc.i3443.1:                                  ; preds = %if.end.i3437.1, %if.else9.i3438.1
  %ret_val.1.i3439.1 = phi i8 [ %435, %if.end.i3437.1 ], [ %ret_val.1.i3439, %if.else9.i3438.1 ]
  %success.1.i3440.1 = phi i8 [ 1, %if.end.i3437.1 ], [ %success.1.i3440, %if.else9.i3438.1 ]
  %add.i3441.1 = add nuw nsw i32 %i.038.i3428, 2
  %exitcond.not.i3442.1 = icmp eq i32 %add.i3441.1, 32
  br i1 %exitcond.not.i3442.1, label %for.end.i3447, label %for.body.i3433, !llvm.loop !8

if.else9.i3460.1:                                 ; preds = %for.inc.i3465
  %436 = load i8, i8* %316, align 1, !tbaa !3
  store i8 %436, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3465.1

if.then3.i3457.1:                                 ; preds = %for.inc.i3465
  %437 = and i8 %success.1.i3462, 1
  %tobool.not.i3456.1 = icmp eq i8 %437, 0
  br i1 %tobool.not.i3456.1, label %if.end.i3459.1, label %if.else8.i3458

if.end.i3459.1:                                   ; preds = %if.then3.i3457.1
  %438 = load i8, i8* %arrayidx2346, align 1, !tbaa !3
  br label %for.inc.i3465.1

for.inc.i3465.1:                                  ; preds = %if.end.i3459.1, %if.else9.i3460.1
  %ret_val.1.i3461.1 = phi i8 [ %438, %if.end.i3459.1 ], [ %ret_val.1.i3461, %if.else9.i3460.1 ]
  %success.1.i3462.1 = phi i8 [ 1, %if.end.i3459.1 ], [ %success.1.i3462, %if.else9.i3460.1 ]
  %add.i3463.1 = add nuw nsw i32 %i.038.i3450, 2
  %exitcond.not.i3464.1 = icmp eq i32 %add.i3463.1, 32
  br i1 %exitcond.not.i3464.1, label %for.end.i3469, label %for.body.i3455, !llvm.loop !8

if.else9.i3482.1:                                 ; preds = %for.inc.i3487
  %439 = load i8, i8* %327, align 1, !tbaa !3
  store i8 %439, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3487.1

if.then3.i3479.1:                                 ; preds = %for.inc.i3487
  %440 = and i8 %success.1.i3484, 1
  %tobool.not.i3478.1 = icmp eq i8 %440, 0
  br i1 %tobool.not.i3478.1, label %if.end.i3481.1, label %if.else8.i3480

if.end.i3481.1:                                   ; preds = %if.then3.i3479.1
  %441 = load i8, i8* %arrayidx2428, align 1, !tbaa !3
  br label %for.inc.i3487.1

for.inc.i3487.1:                                  ; preds = %if.end.i3481.1, %if.else9.i3482.1
  %ret_val.1.i3483.1 = phi i8 [ %441, %if.end.i3481.1 ], [ %ret_val.1.i3483, %if.else9.i3482.1 ]
  %success.1.i3484.1 = phi i8 [ 1, %if.end.i3481.1 ], [ %success.1.i3484, %if.else9.i3482.1 ]
  %add.i3485.1 = add nuw nsw i32 %i.038.i3472, 2
  %exitcond.not.i3486.1 = icmp eq i32 %add.i3485.1, 32
  br i1 %exitcond.not.i3486.1, label %for.end.i3491, label %for.body.i3477, !llvm.loop !8

if.else9.i3504.1:                                 ; preds = %for.inc.i3509
  %442 = load i8, i8* %338, align 1, !tbaa !3
  store i8 %442, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3509.1

if.then3.i3501.1:                                 ; preds = %for.inc.i3509
  %443 = and i8 %success.1.i3506, 1
  %tobool.not.i3500.1 = icmp eq i8 %443, 0
  br i1 %tobool.not.i3500.1, label %if.end.i3503.1, label %if.else8.i3502

if.end.i3503.1:                                   ; preds = %if.then3.i3501.1
  %444 = load i8, i8* %arrayidx2510, align 1, !tbaa !3
  br label %for.inc.i3509.1

for.inc.i3509.1:                                  ; preds = %if.end.i3503.1, %if.else9.i3504.1
  %ret_val.1.i3505.1 = phi i8 [ %444, %if.end.i3503.1 ], [ %ret_val.1.i3505, %if.else9.i3504.1 ]
  %success.1.i3506.1 = phi i8 [ 1, %if.end.i3503.1 ], [ %success.1.i3506, %if.else9.i3504.1 ]
  %add.i3507.1 = add nuw nsw i32 %i.038.i3494, 2
  %exitcond.not.i3508.1 = icmp eq i32 %add.i3507.1, 32
  br i1 %exitcond.not.i3508.1, label %for.end.i3513, label %for.body.i3499, !llvm.loop !8

if.else9.i3526.1:                                 ; preds = %for.inc.i3531
  %445 = load i8, i8* %348, align 1, !tbaa !3
  store i8 %445, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc.i3531.1

if.then3.i3523.1:                                 ; preds = %for.inc.i3531
  %446 = and i8 %success.1.i3528, 1
  %tobool.not.i3522.1 = icmp eq i8 %446, 0
  br i1 %tobool.not.i3522.1, label %if.end.i3525.1, label %if.else8.i3524

if.end.i3525.1:                                   ; preds = %if.then3.i3523.1
  %447 = load i8, i8* %arrayidx2592, align 1, !tbaa !3
  br label %for.inc.i3531.1

for.inc.i3531.1:                                  ; preds = %if.end.i3525.1, %if.else9.i3526.1
  %ret_val.1.i3527.1 = phi i8 [ %447, %if.end.i3525.1 ], [ %ret_val.1.i3527, %if.else9.i3526.1 ]
  %success.1.i3528.1 = phi i8 [ 1, %if.end.i3525.1 ], [ %success.1.i3528, %if.else9.i3526.1 ]
  %add.i3529.1 = add nuw nsw i32 %i.038.i3516, 2
  %exitcond.not.i3530.1 = icmp eq i32 %add.i3529.1, 32
  br i1 %exitcond.not.i3530.1, label %for.end.i3535, label %for.body.i3521, !llvm.loop !8
}

; Function Attrs: nofree
declare dso_local noundef i32 @read(i32 noundef, i8* nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local void @secure_store_32(i32 %val, i32* %address, i8** nocapture readonly %ds_void, i32 %ds_size) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %ds_size, 0
  br i1 %cmp, label %if.then, label %for.body

if.then:                                          ; preds = %entry
  store i32 %val, i32* %address, align 4, !tbaa !10
  br label %if.end23

for.body:                                         ; preds = %entry, %for.inc
  %i.045 = phi i32 [ %add, %for.inc ], [ 0, %entry ]
  %success.044 = phi i8 [ %success.1, %for.inc ], [ 0, %entry ]
  %arrayidx41 = getelementptr inbounds i8*, i8** %ds_void, i32 %i.045
  %arrayidx = bitcast i8** %arrayidx41 to i32**
  %0 = load i32*, i32** %arrayidx, align 4, !tbaa !6
  %cmp2 = icmp eq i32* %0, %address
  br i1 %cmp2, label %if.then3, label %if.else10

if.then3:                                         ; preds = %for.body
  %1 = load i32, i32* %address, align 4, !tbaa !10
  store i32 %1, i32* @decoy_tmp_32, align 4, !tbaa !10
  store i32 %val, i32* %address, align 4, !tbaa !10
  %2 = and i8 %success.044, 1
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %for.inc, label %if.else9

if.else9:                                         ; preds = %if.then3
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2253, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.secure_store_32, i32 0, i32 0)) #4
  unreachable

if.else10:                                        ; preds = %for.body
  %3 = load i32, i32* %0, align 4, !tbaa !10
  store i32 %3, i32* @decoy_tmp_32, align 4, !tbaa !10
  store i32 %3, i32* %0, align 4, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %if.else10
  %success.1 = phi i8 [ %success.044, %if.else10 ], [ 1, %if.then3 ]
  %add = add nuw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %add, %ds_size
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !12

for.end:                                          ; preds = %for.inc
  %4 = and i8 %success.1, 1
  %cmp16 = icmp eq i8 %4, 0
  %cmp18 = icmp ne i32* %address, null
  %or.cond = select i1 %cmp16, i1 %cmp18, i1 false
  br i1 %or.cond, label %if.else21, label %if.end23

if.else21:                                        ; preds = %for.end
  tail call void @__assert_fail(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2264, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.secure_store_32, i32 0, i32 0)) #4
  unreachable

if.end23:                                         ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind
define dso_local i32 @secure_load_32(i32* readonly %address, i8** nocapture readonly %ds_void, i32 %ds_size) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %ds_size, 0
  br i1 %cmp, label %if.then, label %for.body

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %address, align 4, !tbaa !10
  br label %return

for.body:                                         ; preds = %entry, %for.inc
  %i.040 = phi i32 [ %add, %for.inc ], [ 0, %entry ]
  %success.039 = phi i8 [ %success.1, %for.inc ], [ 0, %entry ]
  %ret_val.038 = phi i32 [ %ret_val.1, %for.inc ], [ undef, %entry ]
  %arrayidx34 = getelementptr inbounds i8*, i8** %ds_void, i32 %i.040
  %arrayidx = bitcast i8** %arrayidx34 to i32**
  %1 = load i32*, i32** %arrayidx, align 4, !tbaa !6
  %cmp2 = icmp eq i32* %1, %address
  br i1 %cmp2, label %if.then3, label %if.else9

if.then3:                                         ; preds = %for.body
  %2 = and i8 %success.039, 1
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %if.else8

if.else8:                                         ; preds = %if.then3
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2189, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.secure_load_32, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then3
  %3 = load i32, i32* %address, align 4, !tbaa !10
  br label %for.inc

if.else9:                                         ; preds = %for.body
  %4 = load i32, i32* %1, align 4, !tbaa !10
  store i32 %4, i32* @decoy_tmp_32, align 4, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.else9
  %ret_val.1 = phi i32 [ %3, %if.end ], [ %ret_val.038, %if.else9 ]
  %success.1 = phi i8 [ 1, %if.end ], [ %success.039, %if.else9 ]
  %add = add nuw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %add, %ds_size
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !13

for.end:                                          ; preds = %for.inc
  %5 = and i8 %success.1, 1
  %cmp14 = icmp eq i8 %5, 0
  %cmp16 = icmp ne i32* %address, null
  %or.cond = select i1 %cmp14, i1 %cmp16, i1 false
  br i1 %or.cond, label %if.else19, label %return

if.else19:                                        ; preds = %for.end
  tail call void @__assert_fail(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2197, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.secure_load_32, i32 0, i32 0)) #4
  unreachable

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret_val.1, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define dso_local zeroext i8 @secure_load_8(i8* readonly %address, i8** nocapture readonly %ds_void, i32 %ds_size) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %ds_size, 0
  br i1 %cmp, label %if.then, label %for.body

if.then:                                          ; preds = %entry
  %0 = load i8, i8* %address, align 1, !tbaa !3
  br label %return

for.body:                                         ; preds = %entry, %for.inc
  %i.038 = phi i32 [ %add, %for.inc ], [ 0, %entry ]
  %success.037 = phi i8 [ %success.1, %for.inc ], [ 0, %entry ]
  %ret_val.036 = phi i8 [ %ret_val.1, %for.inc ], [ undef, %entry ]
  %arrayidx = getelementptr inbounds i8*, i8** %ds_void, i32 %i.038
  %1 = load i8*, i8** %arrayidx, align 4, !tbaa !6
  %cmp2 = icmp eq i8* %1, %address
  br i1 %cmp2, label %if.then3, label %if.else9

if.then3:                                         ; preds = %for.body
  %2 = and i8 %success.037, 1
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %if.else8

if.else8:                                         ; preds = %if.then3
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then3
  %3 = load i8, i8* %address, align 1, !tbaa !3
  br label %for.inc

if.else9:                                         ; preds = %for.body
  %4 = load i8, i8* %1, align 1, !tbaa !3
  store i8 %4, i8* @decoy_tmp_8, align 1, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.else9
  %ret_val.1 = phi i8 [ %3, %if.end ], [ %ret_val.036, %if.else9 ]
  %success.1 = phi i8 [ 1, %if.end ], [ %success.037, %if.else9 ]
  %add = add nuw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %add, %ds_size
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !8

for.end:                                          ; preds = %for.inc
  %5 = and i8 %success.1, 1
  %cmp14 = icmp eq i8 %5, 0
  %cmp16 = icmp ne i8* %address, null
  %or.cond = select i1 %cmp14, i1 %cmp16, i1 false
  br i1 %or.cond, label %if.else19, label %return

if.else19:                                        ; preds = %for.end
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.secure_load_8, i32 0, i32 0)) #4
  unreachable

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i8 [ %0, %if.then ], [ %ret_val.1, %for.end ]
  ret i8 %retval.0
}

; Function Attrs: nounwind
define dso_local void @secure_store_8(i8 zeroext %val, i8* %address, i8** nocapture readonly %ds_void, i32 %ds_size) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %ds_size, 0
  br i1 %cmp, label %if.then, label %for.body

if.then:                                          ; preds = %entry
  store i8 %val, i8* %address, align 1, !tbaa !3
  br label %if.end23

for.body:                                         ; preds = %entry, %for.inc
  %i.044 = phi i32 [ %add, %for.inc ], [ 0, %entry ]
  %success.043 = phi i8 [ %success.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8*, i8** %ds_void, i32 %i.044
  %0 = load i8*, i8** %arrayidx, align 4, !tbaa !6
  %cmp2 = icmp eq i8* %0, %address
  br i1 %cmp2, label %if.then3, label %if.else10

if.then3:                                         ; preds = %for.body
  %1 = load i8, i8* %address, align 1, !tbaa !3
  store i8 %1, i8* @decoy_tmp_8, align 1, !tbaa !3
  store i8 %val, i8* %address, align 1, !tbaa !3
  %2 = and i8 %success.043, 1
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %for.inc, label %if.else9

if.else9:                                         ; preds = %if.then3
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2287, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.secure_store_8, i32 0, i32 0)) #4
  unreachable

if.else10:                                        ; preds = %for.body
  %3 = load i8, i8* %0, align 1, !tbaa !3
  store i8 %3, i8* @decoy_tmp_8, align 1, !tbaa !3
  store i8 %3, i8* %0, align 1, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %if.else10
  %success.1 = phi i8 [ %success.043, %if.else10 ], [ 1, %if.then3 ]
  %add = add nuw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %add, %ds_size
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !14

for.end:                                          ; preds = %for.inc
  %4 = and i8 %success.1, 1
  %cmp16 = icmp eq i8 %4, 0
  %cmp18 = icmp ne i8* %address, null
  %or.cond = select i1 %cmp16, i1 %cmp18, i1 false
  br i1 %or.cond, label %if.else21, label %if.end23

if.else21:                                        ; preds = %for.end
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 2298, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.secure_store_8, i32 0, i32 0)) #4
  unreachable

if.end23:                                         ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nofree
declare dso_local noundef i32 @write(i32 noundef, i8* nocapture noundef readonly, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #2

attributes #0 = { nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 08c766a7318ab37bf1d77e0c683cd3b00e700877)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !4, i64 0}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
