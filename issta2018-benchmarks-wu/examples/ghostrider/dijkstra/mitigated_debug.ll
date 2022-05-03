; ModuleID = 'mitigated.c'
source_filename = "mitigated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ds_base = type { i8*, i64*, i32, i8, i32, i32 }

@dis = dso_local global [2 x i32] zeroinitializer, align 8
@secret = dso_local global i32 0, align 4
@vis = dso_local global [2 x i32] zeroinitializer, align 8
@in = dso_local global [2 x [2 x i32]] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@constinit.50 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([2 x i32]* @vis to i8*), i64* null, i32 2, i8 1, i32 0, i32 4 }], align 8
@constinit.79 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([2 x i32]* @dis to i8*), i64* null, i32 2, i8 1, i32 0, i32 4 }], align 8
@constinit.80 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([2 x [2 x i32]]* @in to i8*), i64* null, i32 2, i8 1, i32 0, i32 8 }], align 8
@.str.83 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: norecurse nounwind readnone uwtable willreturn
define dso_local i32 @hsum_epi32_avx(<2 x i64> %0) local_unnamed_addr #0 {
  %2 = bitcast <2 x i64> %0 to <4 x i32>
  %3 = shufflevector <4 x i32> %2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %4 = bitcast <2 x i64> %0 to <4 x i32>
  %5 = add <4 x i32> %3, %4
  %6 = shufflevector <4 x i32> %5, <4 x i32> poison, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %7 = add <4 x i32> %6, %5
  %8 = extractelement <4 x i32> %7, i32 0
  ret i32 %8
}

; Function Attrs: norecurse nounwind readnone uwtable willreturn
define dso_local i32 @mm256_hadd_to_32(<4 x i64> %0) local_unnamed_addr #1 {
  %2 = shufflevector <4 x i64> %0, <4 x i64> undef, <2 x i32> <i32 0, i32 1>
  %3 = shufflevector <4 x i64> %0, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %4 = bitcast <2 x i64> %2 to <4 x i32>
  %5 = bitcast <2 x i64> %3 to <4 x i32>
  %6 = add <4 x i32> %5, %4
  %7 = shufflevector <4 x i32> %6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %8 = add <4 x i32> %6, %7
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %10 = add <4 x i32> %9, %8
  %11 = extractelement <4 x i32> %10, i32 0
  ret i32 %11
}

; Function Attrs: norecurse nounwind readnone uwtable willreturn
define dso_local i64 @mm256_hadd_to_64(<4 x i64> %0) local_unnamed_addr #1 {
  %2 = shufflevector <4 x i64> %0, <4 x i64> undef, <2 x i32> <i32 0, i32 1>
  %3 = shufflevector <4 x i64> %0, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %4 = add <2 x i64> %3, %2
  %5 = shufflevector <2 x i64> %4, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>
  %6 = add <2 x i64> %5, %4
  %7 = extractelement <2 x i64> %6, i32 0
  ret i64 %7
}

; Function Attrs: noinline nounwind readonly uwtable
define dso_local i64 @uint64_t_secure_load_impl(i64* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #2 {
  %5 = icmp eq i32 %2, 0
  %6 = ptrtoint i64* %0 to i64
  br i1 %5, label %181, label %7

7:                                                ; preds = %4
  %8 = and i64 %6, -8
  %9 = insertelement <4 x i64> undef, i64 %8, i32 0
  %10 = shufflevector <4 x i64> %9, <4 x i64> undef, <4 x i32> zeroinitializer
  %11 = zext i32 %2 to i64
  br label %12

12:                                               ; preds = %50, %7
  %13 = phi i64 [ %53, %50 ], [ 0, %7 ]
  %14 = phi <4 x i64> [ %52, %50 ], [ zeroinitializer, %7 ]
  %15 = phi i8 [ %51, %50 ], [ 1, %7 ]
  %16 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %13, i32 3
  %17 = load i8, i8* %16, align 4, !tbaa !2, !range !9
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %13, i32 0
  %20 = load i8*, i8** %19, align 8, !tbaa !10
  %21 = ptrtoint i8* %20 to i64
  br i1 %18, label %46, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %13, i32 4
  %24 = load i32, i32* %23, align 8, !tbaa !11
  %25 = trunc i64 %21 to i32
  %26 = add i32 %24, %25
  %27 = and i32 %26, -32
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %13, i32 5
  %30 = inttoptr i64 %28 to i8*
  %31 = load i32, i32* %29, align 4, !tbaa !12
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %20, i64 %32
  %34 = icmp ult i8* %33, %30
  br i1 %34, label %50, label %154

35:                                               ; preds = %154, %35
  %36 = phi <4 x i64> [ %14, %154 ], [ %42, %35 ]
  %37 = phi <4 x i64> [ %166, %154 ], [ %43, %35 ]
  %38 = phi i8* [ %30, %154 ], [ %44, %35 ]
  %39 = icmp eq <4 x i64> %37, %10
  %40 = bitcast i8* %38 to <4 x i64>*
  %41 = load <4 x i64>, <4 x i64>* %40, align 1, !tbaa !13
  %42 = select <4 x i1> %39, <4 x i64> %41, <4 x i64> %36
  %43 = add <4 x i64> %37, <i64 32, i64 32, i64 32, i64 32>
  %44 = getelementptr inbounds i8, i8* %38, i64 32
  %45 = icmp ugt i8* %44, %33
  br i1 %45, label %50, label %35, !llvm.loop !14

46:                                               ; preds = %12
  %47 = sub i64 %6, %21
  %48 = insertelement <4 x i64> undef, i64 %47, i32 0
  %49 = shufflevector <4 x i64> %48, <4 x i64> undef, <4 x i32> zeroinitializer
  br label %148

50:                                               ; preds = %35, %74, %22
  %51 = phi i8 [ %15, %22 ], [ 0, %74 ], [ %15, %35 ]
  %52 = phi <4 x i64> [ %14, %22 ], [ %75, %74 ], [ %42, %35 ]
  %53 = add nuw nsw i64 %13, 1
  %54 = icmp eq i64 %53, %11
  br i1 %54, label %181, label %12, !llvm.loop !16

55:                                               ; preds = %78, %167
  %56 = phi <4 x i64> [ undef, %167 ], [ %144, %78 ]
  %57 = phi i64 [ 0, %167 ], [ %145, %78 ]
  %58 = phi <4 x i64> [ %150, %167 ], [ %144, %78 ]
  %59 = icmp eq i64 %177, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %55, %60
  %61 = phi i64 [ %71, %60 ], [ %57, %55 ]
  %62 = phi <4 x i64> [ %70, %60 ], [ %58, %55 ]
  %63 = phi i64 [ %72, %60 ], [ %177, %55 ]
  %64 = shl i64 %61, 2
  %65 = getelementptr inbounds i64, i64* %169, i64 %64
  %66 = bitcast i64* %65 to <4 x i64>*
  %67 = load <4 x i64>, <4 x i64>* %66, align 1, !tbaa !13
  %68 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %171, <4 x i64> %67, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %69 = icmp eq <4 x i64> %67, %49
  %70 = select <4 x i1> %69, <4 x i64> %68, <4 x i64> %62
  %71 = add nuw nsw i64 %61, 1
  %72 = add i64 %63, -1
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %60, !llvm.loop !17

74:                                               ; preds = %55, %60, %148
  %75 = phi <4 x i64> [ %150, %148 ], [ %56, %55 ], [ %70, %60 ]
  %76 = add nuw nsw i64 %149, 1
  %77 = icmp eq i64 %76, %11
  br i1 %77, label %50, label %148, !llvm.loop !19

78:                                               ; preds = %78, %179
  %79 = phi i64 [ 0, %179 ], [ %145, %78 ]
  %80 = phi <4 x i64> [ %150, %179 ], [ %144, %78 ]
  %81 = phi i64 [ %180, %179 ], [ %146, %78 ]
  %82 = shl i64 %79, 2
  %83 = getelementptr inbounds i64, i64* %169, i64 %82
  %84 = bitcast i64* %83 to <4 x i64>*
  %85 = load <4 x i64>, <4 x i64>* %84, align 1, !tbaa !13
  %86 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %171, <4 x i64> %85, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %87 = icmp eq <4 x i64> %85, %49
  %88 = select <4 x i1> %87, <4 x i64> %86, <4 x i64> %80
  %89 = shl i64 %79, 2
  %90 = or i64 %89, 4
  %91 = getelementptr inbounds i64, i64* %169, i64 %90
  %92 = bitcast i64* %91 to <4 x i64>*
  %93 = load <4 x i64>, <4 x i64>* %92, align 1, !tbaa !13
  %94 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %171, <4 x i64> %93, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %95 = icmp eq <4 x i64> %93, %49
  %96 = select <4 x i1> %95, <4 x i64> %94, <4 x i64> %88
  %97 = shl i64 %79, 2
  %98 = or i64 %97, 8
  %99 = getelementptr inbounds i64, i64* %169, i64 %98
  %100 = bitcast i64* %99 to <4 x i64>*
  %101 = load <4 x i64>, <4 x i64>* %100, align 1, !tbaa !13
  %102 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %171, <4 x i64> %101, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %103 = icmp eq <4 x i64> %101, %49
  %104 = select <4 x i1> %103, <4 x i64> %102, <4 x i64> %96
  %105 = shl i64 %79, 2
  %106 = or i64 %105, 12
  %107 = getelementptr inbounds i64, i64* %169, i64 %106
  %108 = bitcast i64* %107 to <4 x i64>*
  %109 = load <4 x i64>, <4 x i64>* %108, align 1, !tbaa !13
  %110 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %171, <4 x i64> %109, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %111 = icmp eq <4 x i64> %109, %49
  %112 = select <4 x i1> %111, <4 x i64> %110, <4 x i64> %104
  %113 = shl i64 %79, 2
  %114 = or i64 %113, 16
  %115 = getelementptr inbounds i64, i64* %169, i64 %114
  %116 = bitcast i64* %115 to <4 x i64>*
  %117 = load <4 x i64>, <4 x i64>* %116, align 1, !tbaa !13
  %118 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %171, <4 x i64> %117, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %119 = icmp eq <4 x i64> %117, %49
  %120 = select <4 x i1> %119, <4 x i64> %118, <4 x i64> %112
  %121 = shl i64 %79, 2
  %122 = or i64 %121, 20
  %123 = getelementptr inbounds i64, i64* %169, i64 %122
  %124 = bitcast i64* %123 to <4 x i64>*
  %125 = load <4 x i64>, <4 x i64>* %124, align 1, !tbaa !13
  %126 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %171, <4 x i64> %125, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %127 = icmp eq <4 x i64> %125, %49
  %128 = select <4 x i1> %127, <4 x i64> %126, <4 x i64> %120
  %129 = shl i64 %79, 2
  %130 = or i64 %129, 24
  %131 = getelementptr inbounds i64, i64* %169, i64 %130
  %132 = bitcast i64* %131 to <4 x i64>*
  %133 = load <4 x i64>, <4 x i64>* %132, align 1, !tbaa !13
  %134 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %171, <4 x i64> %133, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %135 = icmp eq <4 x i64> %133, %49
  %136 = select <4 x i1> %135, <4 x i64> %134, <4 x i64> %128
  %137 = shl i64 %79, 2
  %138 = or i64 %137, 28
  %139 = getelementptr inbounds i64, i64* %169, i64 %138
  %140 = bitcast i64* %139 to <4 x i64>*
  %141 = load <4 x i64>, <4 x i64>* %140, align 1, !tbaa !13
  %142 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %171, <4 x i64> %141, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %143 = icmp eq <4 x i64> %141, %49
  %144 = select <4 x i1> %143, <4 x i64> %142, <4 x i64> %136
  %145 = add nuw nsw i64 %79, 8
  %146 = add i64 %81, -8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %55, label %78, !llvm.loop !20

148:                                              ; preds = %46, %74
  %149 = phi i64 [ 0, %46 ], [ %76, %74 ]
  %150 = phi <4 x i64> [ %14, %46 ], [ %75, %74 ]
  %151 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %149, i32 2
  %152 = load i32, i32* %151, align 8, !tbaa !21
  %153 = icmp ult i32 %152, 4
  br i1 %153, label %74, label %167

154:                                              ; preds = %22
  %155 = insertelement <4 x i64> undef, i64 %28, i32 0
  %156 = insertelement <2 x i32> poison, i32 %27, i32 0
  %157 = shufflevector <2 x i32> %156, <2 x i32> undef, <2 x i32> zeroinitializer
  %158 = or <2 x i32> %157, <i32 8, i32 16>
  %159 = zext <2 x i32> %158 to <2 x i64>
  %160 = extractelement <2 x i64> %159, i32 0
  %161 = insertelement <4 x i64> %155, i64 %160, i32 1
  %162 = extractelement <2 x i64> %159, i32 1
  %163 = insertelement <4 x i64> %161, i64 %162, i32 2
  %164 = or i32 %27, 24
  %165 = zext i32 %164 to i64
  %166 = insertelement <4 x i64> %163, i64 %165, i32 3
  br label %35

167:                                              ; preds = %148
  %168 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %149, i32 1
  %169 = load i64*, i64** %168, align 8, !tbaa !22
  %170 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %149, i32 0
  %171 = load i8*, i8** %170, align 8, !tbaa !10
  %172 = lshr i32 %152, 2
  %173 = icmp ugt i32 %172, 1
  %174 = select i1 %173, i32 %172, i32 1
  %175 = zext i32 %174 to i64
  %176 = add nsw i64 %175, -1
  %177 = and i64 %175, 7
  %178 = icmp ult i64 %176, 7
  br i1 %178, label %55, label %179

179:                                              ; preds = %167
  %180 = and i64 %175, 1073741816
  br label %78

181:                                              ; preds = %50, %4
  %182 = phi i8 [ 1, %4 ], [ %51, %50 ]
  %183 = phi <4 x i64> [ zeroinitializer, %4 ], [ %52, %50 ]
  %184 = shufflevector <4 x i64> %183, <4 x i64> undef, <2 x i32> <i32 0, i32 1>
  %185 = shufflevector <4 x i64> %183, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %186 = add <2 x i64> %185, %184
  %187 = shufflevector <2 x i64> %186, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>
  %188 = add <2 x i64> %187, %186
  %189 = extractelement <2 x i64> %188, i32 0
  %190 = and i8 %182, 1
  %191 = icmp eq i8 %190, 0
  %192 = shl i64 %6, 3
  %193 = and i64 %192, 56
  %194 = select i1 %191, i64 0, i64 %193
  %195 = lshr i64 %189, %194
  ret i64 %195
}

; Function Attrs: nounwind readonly
declare <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64>, i8*, <4 x i64>, <4 x i64>, i8 immarg) #3

; Function Attrs: nounwind readonly uwtable
define dso_local i64 @uint64_t_secure_load(i64* readonly %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #4 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = load i64, i64* %0, align 8, !tbaa !23
  br label %10

8:                                                ; preds = %4
  %9 = tail call i64 @uint64_t_secure_load_impl(i64* %0, %struct.ds_base* %1, i32 %2, i32 undef)
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i64 [ %7, %6 ], [ %9, %8 ]
  ret i64 %11
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @uint64_t_secure_load_sensitive(i64* readonly %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #5 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 0
  %8 = load i8*, i8** %7, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 4
  %10 = load i32, i32* %9, align 8, !tbaa !11
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %8, i64 %11
  %13 = bitcast i8* %12 to i64*
  %14 = load volatile i64, i64* %13, align 8, !tbaa !23
  br label %17

15:                                               ; preds = %4
  %16 = tail call i64 @uint64_t_secure_load_impl(i64* %0, %struct.ds_base* %1, i32 %2, i32 undef)
  br label %17

17:                                               ; preds = %15, %6
  %18 = phi i64 [ %14, %6 ], [ %16, %15 ]
  ret i64 %18
}

; Function Attrs: nounwind readonly uwtable
define dso_local i32 @uint32_t_secure_load(i32* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #4 {
  %5 = bitcast i32* %0 to i64*
  %6 = icmp eq i32 %3, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = load i64, i64* %5, align 8, !tbaa !23
  br label %11

9:                                                ; preds = %4
  %10 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef) #12
  br label %11

11:                                               ; preds = %7, %9
  %12 = phi i64 [ %8, %7 ], [ %10, %9 ]
  %13 = trunc i64 %12 to i32
  ret i32 %13
}

; Function Attrs: nounwind readonly uwtable
define dso_local zeroext i16 @uint16_t_secure_load(i16* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #4 {
  %5 = bitcast i16* %0 to i64*
  %6 = icmp eq i32 %3, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = load i64, i64* %5, align 8, !tbaa !23
  br label %11

9:                                                ; preds = %4
  %10 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef) #12
  br label %11

11:                                               ; preds = %7, %9
  %12 = phi i64 [ %8, %7 ], [ %10, %9 ]
  %13 = trunc i64 %12 to i16
  ret i16 %13
}

; Function Attrs: nounwind readonly uwtable
define dso_local zeroext i8 @uint8_t_secure_load(i8* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #4 {
  %5 = bitcast i8* %0 to i64*
  %6 = icmp eq i32 %3, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = load i64, i64* %5, align 8, !tbaa !23
  br label %11

9:                                                ; preds = %4
  %10 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef) #12
  br label %11

11:                                               ; preds = %7, %9
  %12 = phi i64 [ %8, %7 ], [ %10, %9 ]
  %13 = trunc i64 %12 to i8
  ret i8 %13
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @uint32_t_secure_load_sensitive(i32* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #5 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 0
  %8 = load i8*, i8** %7, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 4
  %10 = load i32, i32* %9, align 8, !tbaa !11
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %8, i64 %11
  %13 = bitcast i8* %12 to i64*
  %14 = load volatile i64, i64* %13, align 8, !tbaa !23
  br label %18

15:                                               ; preds = %4
  %16 = bitcast i32* %0 to i64*
  %17 = tail call i64 @uint64_t_secure_load_impl(i64* %16, %struct.ds_base* %1, i32 %2, i32 undef) #12
  br label %18

18:                                               ; preds = %6, %15
  %19 = phi i64 [ %14, %6 ], [ %17, %15 ]
  %20 = trunc i64 %19 to i32
  ret i32 %20
}

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i16 @uint16_t_secure_load_sensitive(i16* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #5 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 0
  %8 = load i8*, i8** %7, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 4
  %10 = load i32, i32* %9, align 8, !tbaa !11
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %8, i64 %11
  %13 = bitcast i8* %12 to i64*
  %14 = load volatile i64, i64* %13, align 8, !tbaa !23
  br label %18

15:                                               ; preds = %4
  %16 = bitcast i16* %0 to i64*
  %17 = tail call i64 @uint64_t_secure_load_impl(i64* %16, %struct.ds_base* %1, i32 %2, i32 undef) #12
  br label %18

18:                                               ; preds = %6, %15
  %19 = phi i64 [ %14, %6 ], [ %17, %15 ]
  %20 = trunc i64 %19 to i16
  ret i16 %20
}

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i8 @uint8_t_secure_load_sensitive(i8* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #5 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 0
  %8 = load i8*, i8** %7, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 4
  %10 = load i32, i32* %9, align 8, !tbaa !11
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %8, i64 %11
  %13 = bitcast i8* %12 to i64*
  %14 = load volatile i64, i64* %13, align 8, !tbaa !23
  br label %18

15:                                               ; preds = %4
  %16 = bitcast i8* %0 to i64*
  %17 = tail call i64 @uint64_t_secure_load_impl(i64* %16, %struct.ds_base* %1, i32 %2, i32 undef) #12
  br label %18

18:                                               ; preds = %6, %15
  %19 = phi i64 [ %14, %6 ], [ %17, %15 ]
  %20 = trunc i64 %19 to i8
  ret i8 %20
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @uint64_t_secure_store_impl(i64 %0, i64* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #6 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %5
  %8 = insertelement <4 x i64> undef, i64 %0, i32 0
  %9 = shufflevector <4 x i64> %8, <4 x i64> undef, <4 x i32> zeroinitializer
  %10 = ptrtoint i64* %1 to i64
  %11 = and i64 %10, -8
  %12 = insertelement <4 x i64> undef, i64 %11, i32 0
  %13 = shufflevector <4 x i64> %12, <4 x i64> undef, <4 x i32> zeroinitializer
  %14 = shl i64 %10, 3
  %15 = and i64 %14, 56
  %16 = shl nsw i64 -1, %15
  %17 = insertelement <4 x i64> undef, i64 %16, i32 0
  %18 = shufflevector <4 x i64> %17, <4 x i64> undef, <4 x i32> zeroinitializer
  %19 = bitcast <4 x i64> %9 to <32 x i8>
  %20 = zext i32 %3 to i64
  br label %22

21:                                               ; preds = %52, %5
  ret void

22:                                               ; preds = %7, %52
  %23 = phi i64 [ 0, %7 ], [ %53, %52 ]
  %24 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %23, i32 0
  %25 = load i8*, i8** %24, align 8, !tbaa !10
  %26 = ptrtoint i8* %25 to i64
  %27 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %23, i32 4
  %28 = load i32, i32* %27, align 8, !tbaa !11
  %29 = trunc i64 %26 to i32
  %30 = add i32 %28, %29
  %31 = and i32 %30, -32
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %23, i32 5
  %34 = inttoptr i64 %32 to i8*
  %35 = load i32, i32* %33, align 4, !tbaa !12
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %25, i64 %36
  %38 = icmp ult i8* %37, %34
  br i1 %38, label %52, label %39

39:                                               ; preds = %22
  %40 = insertelement <4 x i64> undef, i64 %32, i32 0
  %41 = insertelement <2 x i32> poison, i32 %31, i32 0
  %42 = shufflevector <2 x i32> %41, <2 x i32> undef, <2 x i32> zeroinitializer
  %43 = or <2 x i32> %42, <i32 8, i32 16>
  %44 = zext <2 x i32> %43 to <2 x i64>
  %45 = extractelement <2 x i64> %44, i32 0
  %46 = insertelement <4 x i64> %40, i64 %45, i32 1
  %47 = extractelement <2 x i64> %44, i32 1
  %48 = insertelement <4 x i64> %46, i64 %47, i32 2
  %49 = or i32 %31, 24
  %50 = zext i32 %49 to i64
  %51 = insertelement <4 x i64> %48, i64 %50, i32 3
  br label %55

52:                                               ; preds = %55, %22
  %53 = add nuw nsw i64 %23, 1
  %54 = icmp eq i64 %53, %20
  br i1 %54, label %21, label %22, !llvm.loop !25

55:                                               ; preds = %39, %55
  %56 = phi i8* [ %65, %55 ], [ %34, %39 ]
  %57 = phi <4 x i64> [ %64, %55 ], [ %51, %39 ]
  %58 = icmp eq <4 x i64> %57, %13
  %59 = select <4 x i1> %58, <4 x i64> %18, <4 x i64> zeroinitializer
  %60 = bitcast i8* %56 to <32 x i8>*
  %61 = load <32 x i8>, <32 x i8>* %60, align 1, !tbaa !13
  %62 = bitcast <4 x i64> %59 to <32 x i8>
  %63 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %61, <32 x i8> %19, <32 x i8> %62) #12
  store <32 x i8> %63, <32 x i8>* %60, align 1, !tbaa !13
  %64 = add <4 x i64> %57, <i64 32, i64 32, i64 32, i64 32>
  %65 = getelementptr inbounds i8, i8* %56, i64 32
  %66 = load i8*, i8** %24, align 8, !tbaa !10
  %67 = load i32, i32* %33, align 4, !tbaa !12
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = icmp ugt i8* %65, %69
  br i1 %70, label %52, label %55, !llvm.loop !26
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @uint32_t_secure_store_impl(i32 %0, i32* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #6 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %5
  %8 = zext i32 %0 to i64
  %9 = insertelement <4 x i64> undef, i64 %8, i32 0
  %10 = shufflevector <4 x i64> %9, <4 x i64> undef, <4 x i32> zeroinitializer
  %11 = ptrtoint i32* %1 to i64
  %12 = and i64 %11, -8
  %13 = insertelement <4 x i64> undef, i64 %12, i32 0
  %14 = shufflevector <4 x i64> %13, <4 x i64> undef, <4 x i32> zeroinitializer
  %15 = shl i64 %11, 3
  %16 = and i64 %15, 56
  %17 = shl i64 4294967295, %16
  %18 = insertelement <4 x i64> undef, i64 %17, i32 0
  %19 = shufflevector <4 x i64> %18, <4 x i64> undef, <4 x i32> zeroinitializer
  %20 = bitcast <4 x i64> %10 to <32 x i8>
  %21 = zext i32 %3 to i64
  br label %23

22:                                               ; preds = %53, %5
  ret void

23:                                               ; preds = %7, %53
  %24 = phi i64 [ 0, %7 ], [ %54, %53 ]
  %25 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %24, i32 0
  %26 = load i8*, i8** %25, align 8, !tbaa !10
  %27 = ptrtoint i8* %26 to i64
  %28 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %24, i32 4
  %29 = load i32, i32* %28, align 8, !tbaa !11
  %30 = trunc i64 %27 to i32
  %31 = add i32 %29, %30
  %32 = and i32 %31, -32
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %24, i32 5
  %35 = inttoptr i64 %33 to i8*
  %36 = load i32, i32* %34, align 4, !tbaa !12
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %26, i64 %37
  %39 = icmp ult i8* %38, %35
  br i1 %39, label %53, label %40

40:                                               ; preds = %23
  %41 = insertelement <4 x i64> undef, i64 %33, i32 0
  %42 = insertelement <2 x i32> poison, i32 %32, i32 0
  %43 = shufflevector <2 x i32> %42, <2 x i32> undef, <2 x i32> zeroinitializer
  %44 = or <2 x i32> %43, <i32 8, i32 16>
  %45 = zext <2 x i32> %44 to <2 x i64>
  %46 = extractelement <2 x i64> %45, i32 0
  %47 = insertelement <4 x i64> %41, i64 %46, i32 1
  %48 = extractelement <2 x i64> %45, i32 1
  %49 = insertelement <4 x i64> %47, i64 %48, i32 2
  %50 = or i32 %32, 24
  %51 = zext i32 %50 to i64
  %52 = insertelement <4 x i64> %49, i64 %51, i32 3
  br label %56

53:                                               ; preds = %56, %23
  %54 = add nuw nsw i64 %24, 1
  %55 = icmp eq i64 %54, %21
  br i1 %55, label %22, label %23, !llvm.loop !27

56:                                               ; preds = %40, %56
  %57 = phi i8* [ %66, %56 ], [ %35, %40 ]
  %58 = phi <4 x i64> [ %65, %56 ], [ %52, %40 ]
  %59 = icmp eq <4 x i64> %58, %14
  %60 = select <4 x i1> %59, <4 x i64> %19, <4 x i64> zeroinitializer
  %61 = bitcast i8* %57 to <32 x i8>*
  %62 = load <32 x i8>, <32 x i8>* %61, align 1, !tbaa !13
  %63 = bitcast <4 x i64> %60 to <32 x i8>
  %64 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %62, <32 x i8> %20, <32 x i8> %63) #12
  store <32 x i8> %64, <32 x i8>* %61, align 1, !tbaa !13
  %65 = add <4 x i64> %58, <i64 32, i64 32, i64 32, i64 32>
  %66 = getelementptr inbounds i8, i8* %57, i64 32
  %67 = load i8*, i8** %25, align 8, !tbaa !10
  %68 = load i32, i32* %34, align 4, !tbaa !12
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = icmp ugt i8* %66, %70
  br i1 %71, label %53, label %56, !llvm.loop !28
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @uint16_t_secure_store_impl(i16 zeroext %0, i16* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #6 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %5
  %8 = zext i16 %0 to i64
  %9 = insertelement <4 x i64> undef, i64 %8, i32 0
  %10 = shufflevector <4 x i64> %9, <4 x i64> undef, <4 x i32> zeroinitializer
  %11 = ptrtoint i16* %1 to i64
  %12 = and i64 %11, -8
  %13 = insertelement <4 x i64> undef, i64 %12, i32 0
  %14 = shufflevector <4 x i64> %13, <4 x i64> undef, <4 x i32> zeroinitializer
  %15 = shl i64 %11, 3
  %16 = and i64 %15, 56
  %17 = shl i64 65535, %16
  %18 = insertelement <4 x i64> undef, i64 %17, i32 0
  %19 = shufflevector <4 x i64> %18, <4 x i64> undef, <4 x i32> zeroinitializer
  %20 = bitcast <4 x i64> %10 to <32 x i8>
  %21 = zext i32 %3 to i64
  br label %23

22:                                               ; preds = %53, %5
  ret void

23:                                               ; preds = %7, %53
  %24 = phi i64 [ 0, %7 ], [ %54, %53 ]
  %25 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %24, i32 0
  %26 = load i8*, i8** %25, align 8, !tbaa !10
  %27 = ptrtoint i8* %26 to i64
  %28 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %24, i32 4
  %29 = load i32, i32* %28, align 8, !tbaa !11
  %30 = trunc i64 %27 to i32
  %31 = add i32 %29, %30
  %32 = and i32 %31, -32
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %24, i32 5
  %35 = inttoptr i64 %33 to i8*
  %36 = load i32, i32* %34, align 4, !tbaa !12
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %26, i64 %37
  %39 = icmp ult i8* %38, %35
  br i1 %39, label %53, label %40

40:                                               ; preds = %23
  %41 = insertelement <4 x i64> undef, i64 %33, i32 0
  %42 = insertelement <2 x i32> poison, i32 %32, i32 0
  %43 = shufflevector <2 x i32> %42, <2 x i32> undef, <2 x i32> zeroinitializer
  %44 = or <2 x i32> %43, <i32 8, i32 16>
  %45 = zext <2 x i32> %44 to <2 x i64>
  %46 = extractelement <2 x i64> %45, i32 0
  %47 = insertelement <4 x i64> %41, i64 %46, i32 1
  %48 = extractelement <2 x i64> %45, i32 1
  %49 = insertelement <4 x i64> %47, i64 %48, i32 2
  %50 = or i32 %32, 24
  %51 = zext i32 %50 to i64
  %52 = insertelement <4 x i64> %49, i64 %51, i32 3
  br label %56

53:                                               ; preds = %56, %23
  %54 = add nuw nsw i64 %24, 1
  %55 = icmp eq i64 %54, %21
  br i1 %55, label %22, label %23, !llvm.loop !29

56:                                               ; preds = %40, %56
  %57 = phi i8* [ %66, %56 ], [ %35, %40 ]
  %58 = phi <4 x i64> [ %65, %56 ], [ %52, %40 ]
  %59 = icmp eq <4 x i64> %58, %14
  %60 = select <4 x i1> %59, <4 x i64> %19, <4 x i64> zeroinitializer
  %61 = bitcast i8* %57 to <32 x i8>*
  %62 = load <32 x i8>, <32 x i8>* %61, align 1, !tbaa !13
  %63 = bitcast <4 x i64> %60 to <32 x i8>
  %64 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %62, <32 x i8> %20, <32 x i8> %63) #12
  store <32 x i8> %64, <32 x i8>* %61, align 1, !tbaa !13
  %65 = add <4 x i64> %58, <i64 32, i64 32, i64 32, i64 32>
  %66 = getelementptr inbounds i8, i8* %57, i64 32
  %67 = load i8*, i8** %25, align 8, !tbaa !10
  %68 = load i32, i32* %34, align 4, !tbaa !12
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = icmp ugt i8* %66, %70
  br i1 %71, label %53, label %56, !llvm.loop !30
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @uint8_t_secure_store_impl(i8 zeroext %0, i8* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #6 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %5
  %8 = zext i8 %0 to i64
  %9 = insertelement <4 x i64> undef, i64 %8, i32 0
  %10 = shufflevector <4 x i64> %9, <4 x i64> undef, <4 x i32> zeroinitializer
  %11 = ptrtoint i8* %1 to i64
  %12 = and i64 %11, -8
  %13 = insertelement <4 x i64> undef, i64 %12, i32 0
  %14 = shufflevector <4 x i64> %13, <4 x i64> undef, <4 x i32> zeroinitializer
  %15 = shl i64 %11, 3
  %16 = and i64 %15, 56
  %17 = shl nuw i64 255, %16
  %18 = insertelement <4 x i64> undef, i64 %17, i32 0
  %19 = shufflevector <4 x i64> %18, <4 x i64> undef, <4 x i32> zeroinitializer
  %20 = bitcast <4 x i64> %10 to <32 x i8>
  %21 = zext i32 %3 to i64
  br label %23

22:                                               ; preds = %53, %5
  ret void

23:                                               ; preds = %7, %53
  %24 = phi i64 [ 0, %7 ], [ %54, %53 ]
  %25 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %24, i32 0
  %26 = load i8*, i8** %25, align 8, !tbaa !10
  %27 = ptrtoint i8* %26 to i64
  %28 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %24, i32 4
  %29 = load i32, i32* %28, align 8, !tbaa !11
  %30 = trunc i64 %27 to i32
  %31 = add i32 %29, %30
  %32 = and i32 %31, -32
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %24, i32 5
  %35 = inttoptr i64 %33 to i8*
  %36 = load i32, i32* %34, align 4, !tbaa !12
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %26, i64 %37
  %39 = icmp ult i8* %38, %35
  br i1 %39, label %53, label %40

40:                                               ; preds = %23
  %41 = insertelement <4 x i64> undef, i64 %33, i32 0
  %42 = insertelement <2 x i32> poison, i32 %32, i32 0
  %43 = shufflevector <2 x i32> %42, <2 x i32> undef, <2 x i32> zeroinitializer
  %44 = or <2 x i32> %43, <i32 8, i32 16>
  %45 = zext <2 x i32> %44 to <2 x i64>
  %46 = extractelement <2 x i64> %45, i32 0
  %47 = insertelement <4 x i64> %41, i64 %46, i32 1
  %48 = extractelement <2 x i64> %45, i32 1
  %49 = insertelement <4 x i64> %47, i64 %48, i32 2
  %50 = or i32 %32, 24
  %51 = zext i32 %50 to i64
  %52 = insertelement <4 x i64> %49, i64 %51, i32 3
  br label %56

53:                                               ; preds = %56, %23
  %54 = add nuw nsw i64 %24, 1
  %55 = icmp eq i64 %54, %21
  br i1 %55, label %22, label %23, !llvm.loop !31

56:                                               ; preds = %40, %56
  %57 = phi i8* [ %66, %56 ], [ %35, %40 ]
  %58 = phi <4 x i64> [ %65, %56 ], [ %52, %40 ]
  %59 = icmp eq <4 x i64> %58, %14
  %60 = select <4 x i1> %59, <4 x i64> %19, <4 x i64> zeroinitializer
  %61 = bitcast i8* %57 to <32 x i8>*
  %62 = load <32 x i8>, <32 x i8>* %61, align 1, !tbaa !13
  %63 = bitcast <4 x i64> %60 to <32 x i8>
  %64 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %62, <32 x i8> %20, <32 x i8> %63) #12
  store <32 x i8> %64, <32 x i8>* %61, align 1, !tbaa !13
  %65 = add <4 x i64> %58, <i64 32, i64 32, i64 32, i64 32>
  %66 = getelementptr inbounds i8, i8* %57, i64 32
  %67 = load i8*, i8** %25, align 8, !tbaa !10
  %68 = load i32, i32* %34, align 4, !tbaa !12
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = icmp ugt i8* %66, %70
  br i1 %71, label %53, label %56, !llvm.loop !32
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @uint64_t_secure_store(i64 %0, i64* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #5 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = icmp eq i64* %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  store i64 %0, i64* %1, align 8, !tbaa !23
  br label %11

10:                                               ; preds = %5
  tail call void @uint64_t_secure_store_impl(i64 %0, i64* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %11

11:                                               ; preds = %7, %9, %10
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @uint32_t_secure_store(i32 %0, i32* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #5 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = icmp eq i32* %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  store i32 %0, i32* %1, align 4, !tbaa !33
  br label %11

10:                                               ; preds = %5
  tail call void @uint32_t_secure_store_impl(i32 %0, i32* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %11

11:                                               ; preds = %7, %9, %10
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @uint16_t_secure_store(i16 zeroext %0, i16* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #5 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = icmp eq i16* %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  store i16 %0, i16* %1, align 2, !tbaa !34
  br label %11

10:                                               ; preds = %5
  tail call void @uint16_t_secure_store_impl(i16 zeroext %0, i16* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %11

11:                                               ; preds = %7, %9, %10
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @uint8_t_secure_store(i8 zeroext %0, i8* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #5 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = icmp eq i8* %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  store i8 %0, i8* %1, align 1, !tbaa !13
  br label %11

10:                                               ; preds = %5
  tail call void @uint8_t_secure_store_impl(i8 zeroext %0, i8* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %11

11:                                               ; preds = %7, %9, %10
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @uint64_t_secure_store_sensitive(i64 %0, i64* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #5 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %19

7:                                                ; preds = %5
  %8 = icmp eq i64* %1, null
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 0
  %10 = load i8*, i8** %9, align 8, !tbaa !10
  %11 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 4
  %12 = load i32, i32* %11, align 8, !tbaa !11
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  %15 = bitcast i8* %14 to i64*
  br i1 %8, label %17, label %16

16:                                               ; preds = %7
  store volatile i64 %0, i64* %15, align 8, !tbaa !23
  br label %20

17:                                               ; preds = %7
  %18 = load volatile i64, i64* %15, align 8, !tbaa !23
  br label %20

19:                                               ; preds = %5
  tail call void @uint64_t_secure_store_impl(i64 %0, i64* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %20

20:                                               ; preds = %16, %17, %19
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @uint32_t_secure_store_sensitive(i32 %0, i32* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #5 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %19

7:                                                ; preds = %5
  %8 = icmp eq i32* %1, null
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 0
  %10 = load i8*, i8** %9, align 8, !tbaa !10
  %11 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 4
  %12 = load i32, i32* %11, align 8, !tbaa !11
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  %15 = bitcast i8* %14 to i32*
  br i1 %8, label %17, label %16

16:                                               ; preds = %7
  store volatile i32 %0, i32* %15, align 4, !tbaa !33
  br label %20

17:                                               ; preds = %7
  %18 = load volatile i32, i32* %15, align 4, !tbaa !33
  br label %20

19:                                               ; preds = %5
  tail call void @uint32_t_secure_store_impl(i32 %0, i32* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %20

20:                                               ; preds = %16, %17, %19
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @uint16_t_secure_store_sensitive(i16 zeroext %0, i16* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #5 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %19

7:                                                ; preds = %5
  %8 = icmp eq i16* %1, null
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 0
  %10 = load i8*, i8** %9, align 8, !tbaa !10
  %11 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 4
  %12 = load i32, i32* %11, align 8, !tbaa !11
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  %15 = bitcast i8* %14 to i16*
  br i1 %8, label %17, label %16

16:                                               ; preds = %7
  store volatile i16 %0, i16* %15, align 2, !tbaa !34
  br label %20

17:                                               ; preds = %7
  %18 = load volatile i16, i16* %15, align 2, !tbaa !34
  br label %20

19:                                               ; preds = %5
  tail call void @uint16_t_secure_store_impl(i16 zeroext %0, i16* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %20

20:                                               ; preds = %16, %17, %19
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @uint8_t_secure_store_sensitive(i8 zeroext %0, i8* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #5 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %18

7:                                                ; preds = %5
  %8 = icmp eq i8* %1, null
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 0
  %10 = load i8*, i8** %9, align 8, !tbaa !10
  %11 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 4
  %12 = load i32, i32* %11, align 8, !tbaa !11
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  br i1 %8, label %16, label %15

15:                                               ; preds = %7
  store volatile i8 %0, i8* %14, align 1, !tbaa !13
  br label %19

16:                                               ; preds = %7
  %17 = load volatile i8, i8* %14, align 1, !tbaa !13
  br label %19

18:                                               ; preds = %5
  tail call void @uint8_t_secure_store_impl(i8 zeroext %0, i8* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %19

19:                                               ; preds = %15, %16, %18
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable willreturn
define dso_local void @branch_id(i8* nocapture %0) local_unnamed_addr #7 {
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #5 {
  %1 = alloca [0 x i8*], align 8
  %2 = alloca [1 x %struct.ds_base], align 8
  %3 = alloca [1 x %struct.ds_base], align 8
  %4 = alloca [1 x %struct.ds_base], align 8
  %5 = tail call i64 @read(i32 0, i8* bitcast (i32* @secret to i8*), i64 1) #12
  %6 = load i32, i32* @secret, align 4, !tbaa !33
  %7 = and i32 %6, -256
  store i32 %7, i32* @secret, align 4, !tbaa !33
  %8 = tail call i64 @read(i32 0, i8* bitcast ([2 x [2 x i32]]* @in to i8*), i64 16) #12
  store i32 1, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @vis, i64 0, i64 0), align 8, !tbaa !33
  %9 = load i64, i64* bitcast ([2 x [2 x i32]]* @in to i64*), align 16, !tbaa !23
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dis, i64 0, i64 0), align 8, !tbaa !33
  %11 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @in, i64 0, i64 0, i64 1) to i64*), align 8, !tbaa !23
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dis, i64 0, i64 1), align 4, !tbaa !33
  %13 = load i64, i64* bitcast ([2 x i32]* @vis to i64*), align 8, !tbaa !23
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i32 %14, 0
  %16 = load i32, i32* @secret, align 4
  %17 = select i1 %15, i32 %16, i32 -1
  %18 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @vis, i64 0, i64 1), align 4, !tbaa !33
  %19 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 1, i32 %18)
  %20 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @vis, i64 0, i64 1) to i64*), align 8, !tbaa !23
  %21 = trunc i64 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %0
  %24 = icmp sgt i32 %17, -1
  br i1 %24, label %25, label %41

25:                                               ; preds = %23
  %26 = bitcast [0 x i8*]* %1 to %struct.ds_base*
  %27 = call i64 @uint64_t_secure_load_impl(i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dis, i64 0, i64 1) to i64*), %struct.ds_base* nonnull %26, i32 0, i32 undef) #12
  %28 = trunc i64 %27 to i32
  %29 = zext i32 %17 to i64
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* @dis, i64 0, i64 %29
  %31 = bitcast i32* %30 to i64*
  %32 = call i64 @uint64_t_secure_load_impl(i64* nonnull %31, %struct.ds_base* nonnull %26, i32 0, i32 undef) #12
  %33 = trunc i64 %32 to i32
  %34 = icmp slt i32 %28, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %25
  %36 = shl nsw i32 %17, 2
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* bitcast ([2 x i32]* @vis to i8*), i64 %37
  %39 = bitcast i8* %38 to i32*
  %40 = load volatile i32, i32* %39, align 4, !tbaa !33
  br label %49

41:                                               ; preds = %23, %25
  %42 = load i32, i32* @secret, align 4, !tbaa !33
  %43 = add nsw i32 %42, 1
  %44 = shl nsw i32 %43, 2
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* bitcast ([2 x i32]* @vis to i8*), i64 %45
  %47 = bitcast i8* %46 to i32*
  store volatile i32 1, i32* %47, align 4, !tbaa !33
  %48 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @vis, i64 0, i64 1), align 4, !tbaa !33
  br label %49

49:                                               ; preds = %0, %35, %41
  %50 = phi i32 [ %48, %41 ], [ 0, %35 ], [ %21, %0 ]
  %51 = phi i32 [ %43, %41 ], [ %16, %35 ], [ %17, %0 ]
  %52 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @vis, i64 0, i64 0), align 8, !tbaa !33
  %53 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %52, i32 %50)
  %54 = load i64, i64* bitcast ([2 x i32]* @vis to i64*), align 8, !tbaa !23
  %55 = trunc i64 %54 to i32
  %56 = icmp eq i32 %55, 0
  %57 = shl nsw i32 %51, 2
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* bitcast ([2 x i32]* @dis to i8*), i64 %58
  %60 = bitcast i8* %59 to i64*
  %61 = load volatile i64, i64* %60, align 8, !tbaa !23
  br i1 %56, label %70, label %62

62:                                               ; preds = %49
  %63 = getelementptr inbounds i8, i8* bitcast ([2 x [2 x i32]]* @in to i8*), i64 %58
  %64 = bitcast i8* %63 to i64*
  %65 = load volatile i64, i64* %64, align 8, !tbaa !23
  %66 = load volatile i64, i64* bitcast ([2 x i32]* @dis to i64*), align 8, !tbaa !23
  %67 = load volatile i64, i64* %60, align 8, !tbaa !23
  %68 = load volatile i64, i64* %64, align 8, !tbaa !23
  %69 = load volatile i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dis, i64 0, i64 0), align 8, !tbaa !33
  br label %89

70:                                               ; preds = %49
  %71 = trunc i64 %61 to i32
  %72 = getelementptr inbounds i8, i8* bitcast ([2 x [2 x i32]]* @in to i8*), i64 %58
  %73 = bitcast i8* %72 to i64*
  %74 = load volatile i64, i64* %73, align 8, !tbaa !23
  %75 = trunc i64 %74 to i32
  %76 = load volatile i64, i64* bitcast ([2 x i32]* @dis to i64*), align 8, !tbaa !23
  %77 = trunc i64 %76 to i32
  %78 = add nsw i32 %75, %71
  %79 = icmp slt i32 %78, %77
  %80 = load volatile i64, i64* %60, align 8, !tbaa !23
  br i1 %79, label %84, label %81

81:                                               ; preds = %70
  %82 = load volatile i64, i64* %73, align 8, !tbaa !23
  %83 = load volatile i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dis, i64 0, i64 0), align 8, !tbaa !33
  br label %89

84:                                               ; preds = %70
  %85 = trunc i64 %80 to i32
  %86 = load volatile i64, i64* %73, align 8, !tbaa !23
  %87 = trunc i64 %86 to i32
  %88 = add nsw i32 %87, %85
  store volatile i32 %88, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dis, i64 0, i64 0), align 8, !tbaa !33
  br label %89

89:                                               ; preds = %81, %84, %62
  %90 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @vis, i64 0, i64 1), align 4, !tbaa !33
  %91 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %55, i32 %90)
  %92 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @vis, i64 0, i64 1) to i64*), align 8, !tbaa !23
  %93 = trunc i64 %92 to i32
  %94 = icmp eq i32 %93, 0
  %95 = shl nsw i32 %51, 2
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* bitcast ([2 x i32]* @dis to i8*), i64 %96
  %98 = bitcast i8* %97 to i64*
  %99 = load volatile i64, i64* %98, align 8, !tbaa !23
  br i1 %94, label %108, label %100

100:                                              ; preds = %89
  %101 = getelementptr inbounds i8, i8* bitcast ([2 x [2 x i32]]* @in to i8*), i64 %96
  %102 = bitcast i8* %101 to i64*
  %103 = load volatile i64, i64* %102, align 8, !tbaa !23
  %104 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dis, i64 0, i64 1) to i64*), align 8, !tbaa !23
  %105 = load volatile i64, i64* %98, align 8, !tbaa !23
  %106 = load volatile i64, i64* %102, align 8, !tbaa !23
  %107 = load volatile i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dis, i64 0, i64 1), align 4, !tbaa !33
  br label %127

108:                                              ; preds = %89
  %109 = trunc i64 %99 to i32
  %110 = getelementptr inbounds i8, i8* bitcast ([2 x [2 x i32]]* @in to i8*), i64 %96
  %111 = bitcast i8* %110 to i64*
  %112 = load volatile i64, i64* %111, align 8, !tbaa !23
  %113 = trunc i64 %112 to i32
  %114 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dis, i64 0, i64 1) to i64*), align 8, !tbaa !23
  %115 = trunc i64 %114 to i32
  %116 = add nsw i32 %113, %109
  %117 = icmp slt i32 %116, %115
  %118 = load volatile i64, i64* %98, align 8, !tbaa !23
  br i1 %117, label %122, label %119

119:                                              ; preds = %108
  %120 = load volatile i64, i64* %111, align 8, !tbaa !23
  %121 = load volatile i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dis, i64 0, i64 1), align 4, !tbaa !33
  br label %127

122:                                              ; preds = %108
  %123 = trunc i64 %118 to i32
  %124 = load volatile i64, i64* %111, align 8, !tbaa !23
  %125 = trunc i64 %124 to i32
  %126 = add nsw i32 %125, %123
  store volatile i32 %126, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dis, i64 0, i64 1), align 4, !tbaa !33
  br label %127

127:                                              ; preds = %119, %122, %100
  %128 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @vis, i64 0, i64 0), align 8, !tbaa !33
  %129 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %128, i32 %93)
  %130 = load i64, i64* bitcast ([2 x i32]* @vis to i64*), align 8, !tbaa !23
  %131 = trunc i64 %130 to i32
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %162

133:                                              ; preds = %127
  %134 = icmp sgt i32 %51, -1
  %135 = load volatile i64, i64* bitcast ([2 x i32]* @dis to i64*), align 8, !tbaa !23
  br i1 %134, label %144, label %136

136:                                              ; preds = %133
  %137 = shl nsw i32 %51, 2
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* bitcast ([2 x i32]* @dis to i8*), i64 %138
  %140 = bitcast i8* %139 to i64*
  %141 = load volatile i64, i64* %140, align 8, !tbaa !23
  %142 = bitcast [1 x %struct.ds_base]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %142, i8* nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.50 to i8*), i64 32, i1 false), !tbaa.struct !36
  %143 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %2, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 0, i32* null, %struct.ds_base* nonnull %143, i32 1, i32 undef) #12
  br label %156

144:                                              ; preds = %133
  %145 = trunc i64 %135 to i32
  %146 = shl nsw i32 %51, 2
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* bitcast ([2 x i32]* @dis to i8*), i64 %147
  %149 = bitcast i8* %148 to i64*
  %150 = load volatile i64, i64* %149, align 8, !tbaa !23
  %151 = trunc i64 %150 to i32
  %152 = icmp slt i32 %145, %151
  br i1 %152, label %156, label %153

153:                                              ; preds = %144
  %154 = bitcast [1 x %struct.ds_base]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %154, i8* nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.50 to i8*), i64 32, i1 false), !tbaa.struct !36
  %155 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %3, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 0, i32* null, %struct.ds_base* nonnull %155, i32 1, i32 undef) #12
  br label %162

156:                                              ; preds = %136, %144
  %157 = load i32, i32* @secret, align 4, !tbaa !33
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* @vis, i64 0, i64 %158
  %160 = bitcast [1 x %struct.ds_base]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %160, i8* nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.50 to i8*), i64 32, i1 false), !tbaa.struct !36
  %161 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %4, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 1, i32* nonnull %159, %struct.ds_base* nonnull %161, i32 1, i32 undef) #12
  br label %162

162:                                              ; preds = %127, %153, %156
  %163 = phi i32 [ %157, %156 ], [ %51, %153 ], [ %51, %127 ]
  %164 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @vis, i64 0, i64 0), align 8, !tbaa !33
  %165 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @vis, i64 0, i64 1), align 4, !tbaa !33
  %166 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %164, i32 %165)
  %167 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @vis, i64 0, i64 1) to i64*), align 8, !tbaa !23
  %168 = trunc i64 %167 to i32
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %202

170:                                              ; preds = %162
  %171 = icmp sgt i32 %163, -1
  %172 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dis, i64 0, i64 1) to i64*), align 8, !tbaa !23
  br i1 %171, label %180, label %173

173:                                              ; preds = %170
  %174 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.79, i64 0, i64 0), i32 1, i32 undef) #12
  %175 = shl nsw i32 %163, 2
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* bitcast ([2 x i32]* @vis to i8*), i64 %176
  %178 = bitcast i8* %177 to i32*
  %179 = load volatile i32, i32* %178, align 4, !tbaa !33
  br label %194

180:                                              ; preds = %170
  %181 = trunc i64 %172 to i32
  %182 = zext i32 %163 to i64
  %183 = getelementptr inbounds [2 x i32], [2 x i32]* @dis, i64 0, i64 %182
  %184 = bitcast i32* %183 to i64*
  %185 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %184, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.79, i64 0, i64 0), i32 1, i32 undef) #12
  %186 = trunc i64 %185 to i32
  %187 = icmp slt i32 %181, %186
  br i1 %187, label %194, label %188

188:                                              ; preds = %180
  %189 = shl nsw i32 %163, 2
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* bitcast ([2 x i32]* @vis to i8*), i64 %190
  %192 = bitcast i8* %191 to i32*
  %193 = load volatile i32, i32* %192, align 4, !tbaa !33
  br label %202

194:                                              ; preds = %173, %180
  %195 = load i32, i32* @secret, align 4, !tbaa !33
  %196 = add nsw i32 %195, 1
  %197 = shl nsw i32 %196, 2
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* bitcast ([2 x i32]* @vis to i8*), i64 %198
  %200 = bitcast i8* %199 to i32*
  store volatile i32 1, i32* %200, align 4, !tbaa !33
  %201 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @vis, i64 0, i64 1), align 4, !tbaa !33
  br label %202

202:                                              ; preds = %162, %188, %194
  %203 = phi i32 [ %201, %194 ], [ 0, %188 ], [ %168, %162 ]
  %204 = phi i32 [ %196, %194 ], [ %163, %188 ], [ %163, %162 ]
  %205 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @vis, i64 0, i64 0), align 8, !tbaa !33
  %206 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %205, i32 %203)
  %207 = load i64, i64* bitcast ([2 x i32]* @vis to i64*), align 8, !tbaa !23
  %208 = trunc i64 %207 to i32
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %217, label %210

210:                                              ; preds = %202
  %211 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.79, i64 0, i64 0), i32 1, i32 undef) #12
  %212 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.80, i64 0, i64 0), i32 1, i32 undef) #12
  %213 = load volatile i64, i64* bitcast ([2 x i32]* @dis to i64*), align 8, !tbaa !23
  %214 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.79, i64 0, i64 0), i32 1, i32 undef) #12
  %215 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.80, i64 0, i64 0), i32 1, i32 undef) #12
  %216 = load volatile i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dis, i64 0, i64 0), align 8, !tbaa !33
  br label %241

217:                                              ; preds = %202
  %218 = sext i32 %204 to i64
  %219 = getelementptr inbounds [2 x i32], [2 x i32]* @dis, i64 0, i64 %218
  %220 = bitcast i32* %219 to i64*
  %221 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %220, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.79, i64 0, i64 0), i32 1, i32 undef) #12
  %222 = trunc i64 %221 to i32
  %223 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @in, i64 0, i64 %218, i64 0
  %224 = bitcast i32* %223 to i64*
  %225 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %224, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.80, i64 0, i64 0), i32 1, i32 undef) #12
  %226 = trunc i64 %225 to i32
  %227 = load volatile i64, i64* bitcast ([2 x i32]* @dis to i64*), align 8, !tbaa !23
  %228 = trunc i64 %227 to i32
  %229 = add nsw i32 %226, %222
  %230 = icmp slt i32 %229, %228
  br i1 %230, label %235, label %231

231:                                              ; preds = %217
  %232 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.79, i64 0, i64 0), i32 1, i32 undef) #12
  %233 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.80, i64 0, i64 0), i32 1, i32 undef) #12
  %234 = load volatile i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dis, i64 0, i64 0), align 8, !tbaa !33
  br label %241

235:                                              ; preds = %217
  %236 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %220, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.79, i64 0, i64 0), i32 1, i32 undef) #12
  %237 = trunc i64 %236 to i32
  %238 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %224, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.80, i64 0, i64 0), i32 1, i32 undef) #12
  %239 = trunc i64 %238 to i32
  %240 = add nsw i32 %239, %237
  store volatile i32 %240, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dis, i64 0, i64 0), align 8, !tbaa !33
  br label %241

241:                                              ; preds = %231, %235, %210
  %242 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @vis, i64 0, i64 1), align 4, !tbaa !33
  %243 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %208, i32 %242)
  %244 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @vis, i64 0, i64 1) to i64*), align 8, !tbaa !23
  %245 = trunc i64 %244 to i32
  %246 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i64 0, i64 0), i32 %245)
  ret i32 0
}

; Function Attrs: nofree
declare dso_local noundef i64 @read(i32 noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind readnone
declare <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8>, <32 x i8>, <32 x i8>) #11

attributes #0 = { norecurse nounwind readnone uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse nounwind readnone uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="256" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind readonly uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="256" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind readonly uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="256" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse nounwind readnone uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.0-3ubuntu1~20.04.4"}
!2 = !{!3, !8, i64 20}
!3 = !{!"ds_base", !4, i64 0, !4, i64 8, !7, i64 16, !8, i64 20, !7, i64 24, !7, i64 28}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"_Bool", !5, i64 0}
!9 = !{i8 0, i8 2}
!10 = !{!3, !4, i64 0}
!11 = !{!3, !7, i64 24}
!12 = !{!3, !7, i64 28}
!13 = !{!5, !5, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = !{!3, !7, i64 16}
!22 = !{!3, !4, i64 8}
!23 = !{!24, !24, i64 0}
!24 = !{!"long", !5, i64 0}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = !{!7, !7, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"short", !5, i64 0}
!36 = !{i64 0, i64 32, !13}
