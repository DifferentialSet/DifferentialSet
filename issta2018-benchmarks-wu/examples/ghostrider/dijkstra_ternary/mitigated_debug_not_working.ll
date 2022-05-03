; ModuleID = 'mitigated.c'
source_filename = "mitigated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ds_base = type { i8*, i64*, i32, i8, i32, i32 }

@dis = dso_local global [8 x i32] zeroinitializer, align 16
@secret = dso_local global i32 0, align 4
@vis = dso_local global [8 x i32] zeroinitializer, align 16
@in = dso_local global [8 x [8 x i32]] zeroinitializer, align 16
@constinit.232 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([8 x [8 x i32]]* @in to i8*), i64* null, i32 8, i8 1, i32 24, i32 248 }], align 8
@constinit.252 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([8 x [8 x i32]]* @in to i8*), i64* null, i32 8, i8 1, i32 28, i32 252 }], align 8
@constinit.360 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([8 x [8 x i32]]* @in to i8*), i64* null, i32 8, i8 1, i32 0, i32 224 }], align 8
@.str.361 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.362 = private unnamed_addr constant [12 x i8] c"mitigated.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@constinit.381 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([8 x [8 x i32]]* @in to i8*), i64* null, i32 8, i8 1, i32 4, i32 228 }], align 8
@constinit.400 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([8 x [8 x i32]]* @in to i8*), i64* null, i32 8, i8 1, i32 8, i32 232 }], align 8
@constinit.419 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([8 x [8 x i32]]* @in to i8*), i64* null, i32 8, i8 1, i32 12, i32 236 }], align 8
@constinit.439 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([8 x [8 x i32]]* @in to i8*), i64* null, i32 8, i8 1, i32 16, i32 240 }], align 8
@constinit.458 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([8 x i32]* @dis to i8*), i64* null, i32 8, i8 1, i32 0, i32 28 }], align 8
@constinit.459 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([8 x [8 x i32]]* @in to i8*), i64* null, i32 8, i8 1, i32 20, i32 244 }], align 8
@.str.461 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
  %10 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef) #14
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
  %10 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef) #14
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
  %10 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef) #14
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
  %17 = tail call i64 @uint64_t_secure_load_impl(i64* %16, %struct.ds_base* %1, i32 %2, i32 undef) #14
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
  %17 = tail call i64 @uint64_t_secure_load_impl(i64* %16, %struct.ds_base* %1, i32 %2, i32 undef) #14
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
  %17 = tail call i64 @uint64_t_secure_load_impl(i64* %16, %struct.ds_base* %1, i32 %2, i32 undef) #14
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
  %63 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %61, <32 x i8> %19, <32 x i8> %62) #14
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
  %64 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %62, <32 x i8> %20, <32 x i8> %63) #14
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
  %64 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %62, <32 x i8> %20, <32 x i8> %63) #14
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
  %64 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %62, <32 x i8> %20, <32 x i8> %63) #14
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

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #8 {
  %1 = alloca [0 x i8*], align 8
  %2 = alloca [1 x %struct.ds_base], align 8
  %3 = alloca [1 x %struct.ds_base], align 8
  %4 = alloca [1 x %struct.ds_base], align 8
  %5 = alloca [1 x %struct.ds_base], align 8
  %6 = alloca [1 x %struct.ds_base], align 8
  %7 = alloca [1 x %struct.ds_base], align 8
  %8 = alloca [1 x %struct.ds_base], align 8
  %9 = alloca [1 x %struct.ds_base], align 8
  %10 = tail call i64 @read(i32 0, i8* bitcast (i32* @secret to i8*), i64 1) #14
  %11 = load i32, i32* @secret, align 4, !tbaa !33
  %12 = and i32 %11, -256
  store i32 %12, i32* @secret, align 4, !tbaa !33
  %13 = tail call i64 @read(i32 0, i8* bitcast ([8 x [8 x i32]]* @in to i8*), i64 256) #14
  store i32 1, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @vis, i64 0, i64 0), align 16, !tbaa !33
  %14 = load i64, i64* bitcast ([8 x [8 x i32]]* @in to i64*), align 16, !tbaa !23
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 0), align 16, !tbaa !33
  %16 = load i64, i64* bitcast (i32* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 0, i64 1) to i64*), align 8, !tbaa !23
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 1), align 4, !tbaa !33
  %18 = load i64, i64* bitcast (i32* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 0, i64 2) to i64*), align 8, !tbaa !23
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 2), align 8, !tbaa !33
  %20 = load i64, i64* bitcast (i32* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 0, i64 3) to i64*), align 8, !tbaa !23
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3), align 4, !tbaa !33
  %22 = load i64, i64* bitcast (i32* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 0, i64 4) to i64*), align 16, !tbaa !23
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4), align 16, !tbaa !33
  %24 = load i64, i64* bitcast (i32* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 0, i64 5) to i64*), align 8, !tbaa !23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 5), align 4, !tbaa !33
  %26 = load i64, i64* bitcast (i32* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 0, i64 6) to i64*), align 8, !tbaa !23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 6), align 8, !tbaa !33
  %28 = load i64, i64* bitcast (i32* getelementptr inbounds ([8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 0, i64 7) to i64*), align 8, !tbaa !23
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 7), align 4, !tbaa !33
  %30 = load i64, i64* bitcast ([8 x i32]* @vis to i64*), align 16, !tbaa !23
  %31 = trunc i64 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %0
  %34 = load i32, i32* @secret, align 4, !tbaa !33
  %35 = load i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @vis, i64 0, i64 1) to i64*), align 8, !tbaa !23
  %36 = trunc i64 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %70

38:                                               ; preds = %0
  %39 = load i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @vis, i64 0, i64 1) to i64*), align 8, !tbaa !23
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %77

42:                                               ; preds = %38
  %43 = load i32, i32* @secret, align 4, !tbaa !33
  br label %62

44:                                               ; preds = %33
  %45 = icmp sgt i32 %34, -1
  br i1 %45, label %46, label %62

46:                                               ; preds = %44
  %47 = bitcast [0 x i8*]* %1 to %struct.ds_base*
  %48 = call i64 @uint64_t_secure_load_impl(i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 1) to i64*), %struct.ds_base* nonnull %47, i32 0, i32 undef) #14
  %49 = trunc i64 %48 to i32
  %50 = zext i32 %34 to i64
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %50
  %52 = bitcast i32* %51 to i64*
  %53 = call i64 @uint64_t_secure_load_impl(i64* nonnull %52, %struct.ds_base* nonnull %47, i32 0, i32 undef) #14
  %54 = trunc i64 %53 to i32
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %46
  %57 = shl nsw i32 %34, 2
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %58
  %60 = bitcast i8* %59 to i32*
  %61 = load volatile i32, i32* %60, align 4, !tbaa !33
  br label %70

62:                                               ; preds = %42, %44, %46
  %63 = phi i64 [ %39, %42 ], [ %35, %44 ], [ %35, %46 ]
  %64 = phi i32 [ %43, %42 ], [ %34, %44 ], [ %34, %46 ]
  %65 = add nsw i32 %64, 1
  %66 = shl nsw i32 %65, 2
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %67
  %69 = bitcast i8* %68 to i32*
  store volatile i32 1, i32* %69, align 4, !tbaa !33
  br label %70

70:                                               ; preds = %33, %56, %62
  %71 = phi i64 [ %63, %62 ], [ %35, %56 ], [ %35, %33 ]
  %72 = phi i32 [ %64, %62 ], [ %34, %56 ], [ %34, %33 ]
  %73 = phi i32 [ %65, %62 ], [ %34, %56 ], [ %34, %33 ]
  %74 = load i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @vis, i64 0, i64 2) to i64*), align 8, !tbaa !23
  %75 = trunc i64 %74 to i32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %83, label %122

77:                                               ; preds = %38
  %78 = load i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @vis, i64 0, i64 2) to i64*), align 8, !tbaa !23
  %79 = trunc i64 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %130

81:                                               ; preds = %77
  %82 = load i32, i32* @secret, align 4, !tbaa !33
  br label %85

83:                                               ; preds = %70
  %84 = icmp sgt i32 %73, -1
  br i1 %84, label %99, label %85

85:                                               ; preds = %81, %83
  %86 = phi i32 [ %72, %83 ], [ %82, %81 ]
  %87 = phi i64 [ %74, %83 ], [ %78, %81 ]
  %88 = phi i64 [ %71, %83 ], [ %39, %81 ]
  %89 = phi i32 [ %73, %83 ], [ -1, %81 ]
  %90 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 2) to i64*), align 8, !tbaa !23
  %91 = shl nsw i32 %89, 2
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @dis to i8*), i64 %92
  %94 = bitcast i8* %93 to i64*
  %95 = load volatile i64, i64* %94, align 8, !tbaa !23
  %96 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %92
  %97 = bitcast i8* %96 to i32*
  %98 = load volatile i32, i32* %97, align 4, !tbaa !33
  br label %113

99:                                               ; preds = %83
  %100 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 2) to i64*), align 8, !tbaa !23
  %101 = trunc i64 %100 to i32
  %102 = shl nsw i32 %73, 2
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @dis to i8*), i64 %103
  %105 = bitcast i8* %104 to i64*
  %106 = load volatile i64, i64* %105, align 8, !tbaa !23
  %107 = trunc i64 %106 to i32
  %108 = icmp slt i32 %101, %107
  br i1 %108, label %113, label %109

109:                                              ; preds = %99
  %110 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %103
  %111 = bitcast i8* %110 to i32*
  %112 = load volatile i32, i32* %111, align 4, !tbaa !33
  br label %122

113:                                              ; preds = %85, %99
  %114 = phi i64 [ %87, %85 ], [ %74, %99 ]
  %115 = phi i64 [ %88, %85 ], [ %71, %99 ]
  %116 = phi i32 [ %86, %85 ], [ %72, %99 ]
  %117 = add nsw i32 %116, 2
  %118 = shl nsw i32 %117, 2
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %119
  %121 = bitcast i8* %120 to i32*
  store volatile i32 1, i32* %121, align 4, !tbaa !33
  br label %122

122:                                              ; preds = %70, %109, %113
  %123 = phi i64 [ %114, %113 ], [ %74, %109 ], [ %74, %70 ]
  %124 = phi i64 [ %115, %113 ], [ %71, %109 ], [ %71, %70 ]
  %125 = phi i32 [ %116, %113 ], [ %72, %109 ], [ %72, %70 ]
  %126 = phi i32 [ %117, %113 ], [ %73, %109 ], [ %73, %70 ]
  %127 = load i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @vis, i64 0, i64 3) to i64*), align 8, !tbaa !23
  %128 = trunc i64 %127 to i32
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %136, label %176

130:                                              ; preds = %77
  %131 = load i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @vis, i64 0, i64 3) to i64*), align 8, !tbaa !23
  %132 = trunc i64 %131 to i32
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %185

134:                                              ; preds = %130
  %135 = load i32, i32* @secret, align 4, !tbaa !33
  br label %138

136:                                              ; preds = %122
  %137 = icmp sgt i32 %126, -1
  br i1 %137, label %151, label %138

138:                                              ; preds = %134, %136
  %139 = phi i32 [ %125, %136 ], [ %135, %134 ]
  %140 = phi i64 [ %127, %136 ], [ %131, %134 ]
  %141 = phi i64 [ %123, %136 ], [ %78, %134 ]
  %142 = phi i64 [ %124, %136 ], [ %39, %134 ]
  %143 = phi i32 [ %126, %136 ], [ -1, %134 ]
  %144 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3) to i64*), align 8, !tbaa !23
  %145 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %146 = shl nsw i32 %143, 2
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %147
  %149 = bitcast i8* %148 to i32*
  %150 = load volatile i32, i32* %149, align 4, !tbaa !33
  br label %166

151:                                              ; preds = %136
  %152 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3) to i64*), align 8, !tbaa !23
  %153 = trunc i64 %152 to i32
  %154 = zext i32 %126 to i64
  %155 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %154
  %156 = bitcast i32* %155 to i64*
  %157 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %156, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %158 = trunc i64 %157 to i32
  %159 = icmp slt i32 %153, %158
  br i1 %159, label %166, label %160

160:                                              ; preds = %151
  %161 = shl nsw i32 %126, 2
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %162
  %164 = bitcast i8* %163 to i32*
  %165 = load volatile i32, i32* %164, align 4, !tbaa !33
  br label %176

166:                                              ; preds = %138, %151
  %167 = phi i64 [ %140, %138 ], [ %127, %151 ]
  %168 = phi i64 [ %141, %138 ], [ %123, %151 ]
  %169 = phi i64 [ %142, %138 ], [ %124, %151 ]
  %170 = phi i32 [ %139, %138 ], [ %125, %151 ]
  %171 = add nsw i32 %170, 3
  %172 = shl nsw i32 %171, 2
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %173
  %175 = bitcast i8* %174 to i32*
  store volatile i32 1, i32* %175, align 4, !tbaa !33
  br label %176

176:                                              ; preds = %122, %160, %166
  %177 = phi i64 [ %167, %166 ], [ %127, %160 ], [ %127, %122 ]
  %178 = phi i64 [ %168, %166 ], [ %123, %160 ], [ %123, %122 ]
  %179 = phi i64 [ %169, %166 ], [ %124, %160 ], [ %124, %122 ]
  %180 = phi i32 [ %170, %166 ], [ %125, %160 ], [ %125, %122 ]
  %181 = phi i32 [ %171, %166 ], [ %126, %160 ], [ %126, %122 ]
  %182 = load i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @vis, i64 0, i64 4) to i64*), align 16, !tbaa !23
  %183 = trunc i64 %182 to i32
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %191, label %233

185:                                              ; preds = %130
  %186 = load i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @vis, i64 0, i64 4) to i64*), align 16, !tbaa !23
  %187 = trunc i64 %186 to i32
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %243

189:                                              ; preds = %185
  %190 = load i32, i32* @secret, align 4, !tbaa !33
  br label %193

191:                                              ; preds = %176
  %192 = icmp sgt i32 %181, -1
  br i1 %192, label %207, label %193

193:                                              ; preds = %189, %191
  %194 = phi i32 [ %180, %191 ], [ %190, %189 ]
  %195 = phi i64 [ %182, %191 ], [ %186, %189 ]
  %196 = phi i64 [ %177, %191 ], [ %131, %189 ]
  %197 = phi i64 [ %178, %191 ], [ %78, %189 ]
  %198 = phi i64 [ %179, %191 ], [ %39, %189 ]
  %199 = phi i32 [ %181, %191 ], [ -1, %189 ]
  %200 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4) to i64*), align 16, !tbaa !23
  %201 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %202 = shl nsw i32 %199, 2
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %203
  %205 = bitcast i8* %204 to i32*
  %206 = load volatile i32, i32* %205, align 4, !tbaa !33
  br label %222

207:                                              ; preds = %191
  %208 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4) to i64*), align 16, !tbaa !23
  %209 = trunc i64 %208 to i32
  %210 = zext i32 %181 to i64
  %211 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %210
  %212 = bitcast i32* %211 to i64*
  %213 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %212, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %214 = trunc i64 %213 to i32
  %215 = icmp slt i32 %209, %214
  br i1 %215, label %222, label %216

216:                                              ; preds = %207
  %217 = shl nsw i32 %181, 2
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %218
  %220 = bitcast i8* %219 to i32*
  %221 = load volatile i32, i32* %220, align 4, !tbaa !33
  br label %233

222:                                              ; preds = %193, %207
  %223 = phi i64 [ %195, %193 ], [ %182, %207 ]
  %224 = phi i64 [ %196, %193 ], [ %177, %207 ]
  %225 = phi i64 [ %197, %193 ], [ %178, %207 ]
  %226 = phi i64 [ %198, %193 ], [ %179, %207 ]
  %227 = phi i32 [ %194, %193 ], [ %180, %207 ]
  %228 = add nsw i32 %227, 4
  %229 = shl nsw i32 %228, 2
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %230
  %232 = bitcast i8* %231 to i32*
  store volatile i32 1, i32* %232, align 4, !tbaa !33
  br label %233

233:                                              ; preds = %176, %216, %222
  %234 = phi i64 [ %223, %222 ], [ %182, %216 ], [ %182, %176 ]
  %235 = phi i64 [ %224, %222 ], [ %177, %216 ], [ %177, %176 ]
  %236 = phi i64 [ %225, %222 ], [ %178, %216 ], [ %178, %176 ]
  %237 = phi i64 [ %226, %222 ], [ %179, %216 ], [ %179, %176 ]
  %238 = phi i32 [ %227, %222 ], [ %180, %216 ], [ %180, %176 ]
  %239 = phi i32 [ %228, %222 ], [ %181, %216 ], [ %181, %176 ]
  %240 = load i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @vis, i64 0, i64 5) to i64*), align 8, !tbaa !23
  %241 = trunc i64 %240 to i32
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %249, label %293

243:                                              ; preds = %185
  %244 = load i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @vis, i64 0, i64 5) to i64*), align 8, !tbaa !23
  %245 = trunc i64 %244 to i32
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %304

247:                                              ; preds = %243
  %248 = load i32, i32* @secret, align 4, !tbaa !33
  br label %251

249:                                              ; preds = %233
  %250 = icmp sgt i32 %239, -1
  br i1 %250, label %266, label %251

251:                                              ; preds = %247, %249
  %252 = phi i32 [ %238, %249 ], [ %248, %247 ]
  %253 = phi i64 [ %240, %249 ], [ %244, %247 ]
  %254 = phi i64 [ %234, %249 ], [ %186, %247 ]
  %255 = phi i64 [ %235, %249 ], [ %131, %247 ]
  %256 = phi i64 [ %236, %249 ], [ %78, %247 ]
  %257 = phi i64 [ %237, %249 ], [ %39, %247 ]
  %258 = phi i32 [ %239, %249 ], [ -1, %247 ]
  %259 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 5) to i64*), align 8, !tbaa !23
  %260 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %261 = shl nsw i32 %258, 2
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %262
  %264 = bitcast i8* %263 to i32*
  %265 = load volatile i32, i32* %264, align 4, !tbaa !33
  br label %281

266:                                              ; preds = %249
  %267 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 5) to i64*), align 8, !tbaa !23
  %268 = trunc i64 %267 to i32
  %269 = zext i32 %239 to i64
  %270 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %269
  %271 = bitcast i32* %270 to i64*
  %272 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %271, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %273 = trunc i64 %272 to i32
  %274 = icmp slt i32 %268, %273
  br i1 %274, label %281, label %275

275:                                              ; preds = %266
  %276 = shl nsw i32 %239, 2
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %277
  %279 = bitcast i8* %278 to i32*
  %280 = load volatile i32, i32* %279, align 4, !tbaa !33
  br label %293

281:                                              ; preds = %251, %266
  %282 = phi i64 [ %253, %251 ], [ %240, %266 ]
  %283 = phi i64 [ %254, %251 ], [ %234, %266 ]
  %284 = phi i64 [ %255, %251 ], [ %235, %266 ]
  %285 = phi i64 [ %256, %251 ], [ %236, %266 ]
  %286 = phi i64 [ %257, %251 ], [ %237, %266 ]
  %287 = phi i32 [ %252, %251 ], [ %238, %266 ]
  %288 = add nsw i32 %287, 5
  %289 = shl nsw i32 %288, 2
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %290
  %292 = bitcast i8* %291 to i32*
  store volatile i32 1, i32* %292, align 4, !tbaa !33
  br label %293

293:                                              ; preds = %233, %275, %281
  %294 = phi i64 [ %282, %281 ], [ %240, %275 ], [ %240, %233 ]
  %295 = phi i64 [ %283, %281 ], [ %234, %275 ], [ %234, %233 ]
  %296 = phi i64 [ %284, %281 ], [ %235, %275 ], [ %235, %233 ]
  %297 = phi i64 [ %285, %281 ], [ %236, %275 ], [ %236, %233 ]
  %298 = phi i64 [ %286, %281 ], [ %237, %275 ], [ %237, %233 ]
  %299 = phi i32 [ %287, %281 ], [ %238, %275 ], [ %238, %233 ]
  %300 = phi i32 [ %288, %281 ], [ %239, %275 ], [ %239, %233 ]
  %301 = load i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @vis, i64 0, i64 6) to i64*), align 8, !tbaa !23
  %302 = trunc i64 %301 to i32
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %310, label %356

304:                                              ; preds = %243
  %305 = load i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @vis, i64 0, i64 6) to i64*), align 8, !tbaa !23
  %306 = trunc i64 %305 to i32
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %368

308:                                              ; preds = %304
  %309 = load i32, i32* @secret, align 4, !tbaa !33
  br label %312

310:                                              ; preds = %293
  %311 = icmp sgt i32 %300, -1
  br i1 %311, label %328, label %312

312:                                              ; preds = %308, %310
  %313 = phi i32 [ %299, %310 ], [ %309, %308 ]
  %314 = phi i64 [ %301, %310 ], [ %305, %308 ]
  %315 = phi i64 [ %294, %310 ], [ %244, %308 ]
  %316 = phi i64 [ %295, %310 ], [ %186, %308 ]
  %317 = phi i64 [ %296, %310 ], [ %131, %308 ]
  %318 = phi i64 [ %297, %310 ], [ %78, %308 ]
  %319 = phi i64 [ %298, %310 ], [ %39, %308 ]
  %320 = phi i32 [ %300, %310 ], [ -1, %308 ]
  %321 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 6) to i64*), align 8, !tbaa !23
  %322 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %323 = shl nsw i32 %320, 2
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %324
  %326 = bitcast i8* %325 to i32*
  %327 = load volatile i32, i32* %326, align 4, !tbaa !33
  br label %343

328:                                              ; preds = %310
  %329 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 6) to i64*), align 8, !tbaa !23
  %330 = trunc i64 %329 to i32
  %331 = zext i32 %300 to i64
  %332 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %331
  %333 = bitcast i32* %332 to i64*
  %334 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %333, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %335 = trunc i64 %334 to i32
  %336 = icmp slt i32 %330, %335
  br i1 %336, label %343, label %337

337:                                              ; preds = %328
  %338 = shl nsw i32 %300, 2
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %339
  %341 = bitcast i8* %340 to i32*
  %342 = load volatile i32, i32* %341, align 4, !tbaa !33
  br label %356

343:                                              ; preds = %312, %328
  %344 = phi i64 [ %314, %312 ], [ %301, %328 ]
  %345 = phi i64 [ %315, %312 ], [ %294, %328 ]
  %346 = phi i64 [ %316, %312 ], [ %295, %328 ]
  %347 = phi i64 [ %317, %312 ], [ %296, %328 ]
  %348 = phi i64 [ %318, %312 ], [ %297, %328 ]
  %349 = phi i64 [ %319, %312 ], [ %298, %328 ]
  %350 = phi i32 [ %313, %312 ], [ %299, %328 ]
  %351 = add nsw i32 %350, 6
  %352 = shl nsw i32 %351, 2
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %353
  %355 = bitcast i8* %354 to i32*
  store volatile i32 1, i32* %355, align 4, !tbaa !33
  br label %356

356:                                              ; preds = %293, %337, %343
  %357 = phi i64 [ %344, %343 ], [ %301, %337 ], [ %301, %293 ]
  %358 = phi i64 [ %345, %343 ], [ %294, %337 ], [ %294, %293 ]
  %359 = phi i64 [ %346, %343 ], [ %295, %337 ], [ %295, %293 ]
  %360 = phi i64 [ %347, %343 ], [ %296, %337 ], [ %296, %293 ]
  %361 = phi i64 [ %348, %343 ], [ %297, %337 ], [ %297, %293 ]
  %362 = phi i64 [ %349, %343 ], [ %298, %337 ], [ %298, %293 ]
  %363 = phi i32 [ %350, %343 ], [ %299, %337 ], [ %299, %293 ]
  %364 = phi i32 [ %351, %343 ], [ %300, %337 ], [ %300, %293 ]
  %365 = load i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @vis, i64 0, i64 7) to i64*), align 8, !tbaa !23
  %366 = trunc i64 %365 to i32
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %374, label %422

368:                                              ; preds = %304
  %369 = load i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @vis, i64 0, i64 7) to i64*), align 8, !tbaa !23
  %370 = trunc i64 %369 to i32
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %431

372:                                              ; preds = %368
  %373 = load i32, i32* @secret, align 4, !tbaa !33
  br label %376

374:                                              ; preds = %356
  %375 = icmp sgt i32 %364, -1
  br i1 %375, label %393, label %376

376:                                              ; preds = %372, %374
  %377 = phi i32 [ %363, %374 ], [ %373, %372 ]
  %378 = phi i64 [ %365, %374 ], [ %369, %372 ]
  %379 = phi i64 [ %357, %374 ], [ %305, %372 ]
  %380 = phi i64 [ %358, %374 ], [ %244, %372 ]
  %381 = phi i64 [ %359, %374 ], [ %186, %372 ]
  %382 = phi i64 [ %360, %374 ], [ %131, %372 ]
  %383 = phi i64 [ %361, %374 ], [ %78, %372 ]
  %384 = phi i64 [ %362, %374 ], [ %39, %372 ]
  %385 = phi i32 [ %364, %374 ], [ -1, %372 ]
  %386 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 7) to i64*), align 8, !tbaa !23
  %387 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %388 = shl nsw i32 %385, 2
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %389
  %391 = bitcast i8* %390 to i32*
  %392 = load volatile i32, i32* %391, align 4, !tbaa !33
  br label %408

393:                                              ; preds = %374
  %394 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 7) to i64*), align 8, !tbaa !23
  %395 = trunc i64 %394 to i32
  %396 = zext i32 %364 to i64
  %397 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %396
  %398 = bitcast i32* %397 to i64*
  %399 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %398, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %400 = trunc i64 %399 to i32
  %401 = icmp slt i32 %395, %400
  br i1 %401, label %408, label %402

402:                                              ; preds = %393
  %403 = shl nsw i32 %364, 2
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %404
  %406 = bitcast i8* %405 to i32*
  %407 = load volatile i32, i32* %406, align 4, !tbaa !33
  br label %422

408:                                              ; preds = %376, %393
  %409 = phi i64 [ %378, %376 ], [ %365, %393 ]
  %410 = phi i64 [ %379, %376 ], [ %357, %393 ]
  %411 = phi i64 [ %380, %376 ], [ %358, %393 ]
  %412 = phi i64 [ %381, %376 ], [ %359, %393 ]
  %413 = phi i64 [ %382, %376 ], [ %360, %393 ]
  %414 = phi i64 [ %383, %376 ], [ %361, %393 ]
  %415 = phi i64 [ %384, %376 ], [ %362, %393 ]
  %416 = phi i32 [ %377, %376 ], [ %363, %393 ]
  %417 = add nsw i32 %416, 7
  %418 = shl nsw i32 %417, 2
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %419
  %421 = bitcast i8* %420 to i32*
  store volatile i32 1, i32* %421, align 4, !tbaa !33
  br label %422

422:                                              ; preds = %356, %402, %408
  %423 = phi i64 [ %409, %408 ], [ %365, %402 ], [ %365, %356 ]
  %424 = phi i64 [ %410, %408 ], [ %357, %402 ], [ %357, %356 ]
  %425 = phi i64 [ %411, %408 ], [ %358, %402 ], [ %358, %356 ]
  %426 = phi i64 [ %412, %408 ], [ %359, %402 ], [ %359, %356 ]
  %427 = phi i64 [ %413, %408 ], [ %360, %402 ], [ %360, %356 ]
  %428 = phi i64 [ %414, %408 ], [ %361, %402 ], [ %361, %356 ]
  %429 = phi i64 [ %415, %408 ], [ %362, %402 ], [ %362, %356 ]
  %430 = phi i32 [ %417, %408 ], [ %364, %402 ], [ %364, %356 ]
  br i1 %32, label %446, label %431

431:                                              ; preds = %368, %422
  %432 = phi i32 [ %430, %422 ], [ -1, %368 ]
  %433 = phi i64 [ %429, %422 ], [ %39, %368 ]
  %434 = phi i64 [ %428, %422 ], [ %78, %368 ]
  %435 = phi i64 [ %427, %422 ], [ %131, %368 ]
  %436 = phi i64 [ %426, %422 ], [ %186, %368 ]
  %437 = phi i64 [ %425, %422 ], [ %244, %368 ]
  %438 = phi i64 [ %424, %422 ], [ %305, %368 ]
  %439 = phi i64 [ %423, %422 ], [ %369, %368 ]
  %440 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %441 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.360, i64 0, i64 0), i32 1, i32 undef) #14
  %442 = load volatile i64, i64* bitcast ([8 x i32]* @dis to i64*), align 16, !tbaa !23
  %443 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %444 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.360, i64 0, i64 0), i32 1, i32 undef) #14
  %445 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 0), align 16, !tbaa !33
  br label %470

446:                                              ; preds = %422
  %447 = sext i32 %430 to i64
  %448 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %447
  %449 = bitcast i32* %448 to i64*
  %450 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %449, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %451 = trunc i64 %450 to i32
  %452 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %447, i64 0
  %453 = bitcast i32* %452 to i64*
  %454 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %453, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.360, i64 0, i64 0), i32 1, i32 undef) #14
  %455 = trunc i64 %454 to i32
  %456 = load volatile i64, i64* bitcast ([8 x i32]* @dis to i64*), align 16, !tbaa !23
  %457 = trunc i64 %456 to i32
  %458 = add nsw i32 %455, %451
  %459 = icmp slt i32 %458, %457
  br i1 %459, label %464, label %460

460:                                              ; preds = %446
  %461 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %462 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.360, i64 0, i64 0), i32 1, i32 undef) #14
  %463 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 0), align 16, !tbaa !33
  br label %470

464:                                              ; preds = %446
  %465 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %449, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %466 = trunc i64 %465 to i32
  %467 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %453, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.360, i64 0, i64 0), i32 1, i32 undef) #14
  %468 = trunc i64 %467 to i32
  %469 = add nsw i32 %468, %466
  store volatile i32 %469, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 0), align 16, !tbaa !33
  br label %470

470:                                              ; preds = %460, %464, %431
  %471 = phi i32 [ %430, %460 ], [ %430, %464 ], [ %432, %431 ]
  %472 = phi i64 [ %429, %460 ], [ %429, %464 ], [ %433, %431 ]
  %473 = phi i64 [ %428, %460 ], [ %428, %464 ], [ %434, %431 ]
  %474 = phi i64 [ %427, %460 ], [ %427, %464 ], [ %435, %431 ]
  %475 = phi i64 [ %426, %460 ], [ %426, %464 ], [ %436, %431 ]
  %476 = phi i64 [ %425, %460 ], [ %425, %464 ], [ %437, %431 ]
  %477 = phi i64 [ %424, %460 ], [ %424, %464 ], [ %438, %431 ]
  %478 = phi i64 [ %423, %460 ], [ %423, %464 ], [ %439, %431 ]
  %479 = trunc i64 %472 to i32
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %488, label %481

481:                                              ; preds = %470
  %482 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %483 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.381, i64 0, i64 0), i32 1, i32 undef) #14
  %484 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 1) to i64*), align 8, !tbaa !23
  %485 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %486 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.381, i64 0, i64 0), i32 1, i32 undef) #14
  %487 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 1), align 4, !tbaa !33
  br label %512

488:                                              ; preds = %470
  %489 = sext i32 %471 to i64
  %490 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %489
  %491 = bitcast i32* %490 to i64*
  %492 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %491, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %493 = trunc i64 %492 to i32
  %494 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %489, i64 1
  %495 = bitcast i32* %494 to i64*
  %496 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %495, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.381, i64 0, i64 0), i32 1, i32 undef) #14
  %497 = trunc i64 %496 to i32
  %498 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 1) to i64*), align 8, !tbaa !23
  %499 = trunc i64 %498 to i32
  %500 = add nsw i32 %497, %493
  %501 = icmp slt i32 %500, %499
  br i1 %501, label %506, label %502

502:                                              ; preds = %488
  %503 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %504 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.381, i64 0, i64 0), i32 1, i32 undef) #14
  %505 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 1), align 4, !tbaa !33
  br label %512

506:                                              ; preds = %488
  %507 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %491, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %508 = trunc i64 %507 to i32
  %509 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %495, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.381, i64 0, i64 0), i32 1, i32 undef) #14
  %510 = trunc i64 %509 to i32
  %511 = add nsw i32 %510, %508
  store volatile i32 %511, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 1), align 4, !tbaa !33
  br label %512

512:                                              ; preds = %502, %506, %481
  %513 = trunc i64 %473 to i32
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %522, label %515

515:                                              ; preds = %512
  %516 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %517 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.400, i64 0, i64 0), i32 1, i32 undef) #14
  %518 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 2) to i64*), align 8, !tbaa !23
  %519 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %520 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.400, i64 0, i64 0), i32 1, i32 undef) #14
  %521 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 2), align 8, !tbaa !33
  br label %546

522:                                              ; preds = %512
  %523 = sext i32 %471 to i64
  %524 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %523
  %525 = bitcast i32* %524 to i64*
  %526 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %525, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %527 = trunc i64 %526 to i32
  %528 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %523, i64 2
  %529 = bitcast i32* %528 to i64*
  %530 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %529, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.400, i64 0, i64 0), i32 1, i32 undef) #14
  %531 = trunc i64 %530 to i32
  %532 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 2) to i64*), align 8, !tbaa !23
  %533 = trunc i64 %532 to i32
  %534 = add nsw i32 %531, %527
  %535 = icmp slt i32 %534, %533
  br i1 %535, label %540, label %536

536:                                              ; preds = %522
  %537 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %538 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.400, i64 0, i64 0), i32 1, i32 undef) #14
  %539 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 2), align 8, !tbaa !33
  br label %546

540:                                              ; preds = %522
  %541 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %525, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %542 = trunc i64 %541 to i32
  %543 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %529, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.400, i64 0, i64 0), i32 1, i32 undef) #14
  %544 = trunc i64 %543 to i32
  %545 = add nsw i32 %544, %542
  store volatile i32 %545, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 2), align 8, !tbaa !33
  br label %546

546:                                              ; preds = %536, %540, %515
  %547 = trunc i64 %474 to i32
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %556, label %549

549:                                              ; preds = %546
  %550 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %551 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.419, i64 0, i64 0), i32 1, i32 undef) #14
  %552 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3) to i64*), align 8, !tbaa !23
  %553 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %554 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.419, i64 0, i64 0), i32 1, i32 undef) #14
  %555 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3), align 4, !tbaa !33
  br label %580

556:                                              ; preds = %546
  %557 = sext i32 %471 to i64
  %558 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %557
  %559 = bitcast i32* %558 to i64*
  %560 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %559, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %561 = trunc i64 %560 to i32
  %562 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %557, i64 3
  %563 = bitcast i32* %562 to i64*
  %564 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %563, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.419, i64 0, i64 0), i32 1, i32 undef) #14
  %565 = trunc i64 %564 to i32
  %566 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3) to i64*), align 8, !tbaa !23
  %567 = trunc i64 %566 to i32
  %568 = add nsw i32 %565, %561
  %569 = icmp slt i32 %568, %567
  br i1 %569, label %574, label %570

570:                                              ; preds = %556
  %571 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %572 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.419, i64 0, i64 0), i32 1, i32 undef) #14
  %573 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3), align 4, !tbaa !33
  br label %580

574:                                              ; preds = %556
  %575 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %559, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %576 = trunc i64 %575 to i32
  %577 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %563, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.419, i64 0, i64 0), i32 1, i32 undef) #14
  %578 = trunc i64 %577 to i32
  %579 = add nsw i32 %578, %576
  store volatile i32 %579, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3), align 4, !tbaa !33
  br label %580

580:                                              ; preds = %570, %574, %549
  %581 = trunc i64 %475 to i32
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %590, label %583

583:                                              ; preds = %580
  %584 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %585 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.439, i64 0, i64 0), i32 1, i32 undef) #14
  %586 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4) to i64*), align 16, !tbaa !23
  %587 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %588 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.439, i64 0, i64 0), i32 1, i32 undef) #14
  %589 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4), align 16, !tbaa !33
  br label %614

590:                                              ; preds = %580
  %591 = sext i32 %471 to i64
  %592 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %591
  %593 = bitcast i32* %592 to i64*
  %594 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %593, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %595 = trunc i64 %594 to i32
  %596 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %591, i64 4
  %597 = bitcast i32* %596 to i64*
  %598 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %597, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.439, i64 0, i64 0), i32 1, i32 undef) #14
  %599 = trunc i64 %598 to i32
  %600 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4) to i64*), align 16, !tbaa !23
  %601 = trunc i64 %600 to i32
  %602 = add nsw i32 %599, %595
  %603 = icmp slt i32 %602, %601
  br i1 %603, label %608, label %604

604:                                              ; preds = %590
  %605 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %606 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.439, i64 0, i64 0), i32 1, i32 undef) #14
  %607 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4), align 16, !tbaa !33
  br label %614

608:                                              ; preds = %590
  %609 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %593, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %610 = trunc i64 %609 to i32
  %611 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %597, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.439, i64 0, i64 0), i32 1, i32 undef) #14
  %612 = trunc i64 %611 to i32
  %613 = add nsw i32 %612, %610
  store volatile i32 %613, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4), align 16, !tbaa !33
  br label %614

614:                                              ; preds = %604, %608, %583
  %615 = trunc i64 %476 to i32
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %624, label %617

617:                                              ; preds = %614
  %618 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %619 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.459, i64 0, i64 0), i32 1, i32 undef) #14
  %620 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 5) to i64*), align 8, !tbaa !23
  %621 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %622 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.459, i64 0, i64 0), i32 1, i32 undef) #14
  %623 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 5), align 4, !tbaa !33
  br label %648

624:                                              ; preds = %614
  %625 = sext i32 %471 to i64
  %626 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %625
  %627 = bitcast i32* %626 to i64*
  %628 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %627, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %629 = trunc i64 %628 to i32
  %630 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %625, i64 5
  %631 = bitcast i32* %630 to i64*
  %632 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %631, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.459, i64 0, i64 0), i32 1, i32 undef) #14
  %633 = trunc i64 %632 to i32
  %634 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 5) to i64*), align 8, !tbaa !23
  %635 = trunc i64 %634 to i32
  %636 = add nsw i32 %633, %629
  %637 = icmp slt i32 %636, %635
  br i1 %637, label %642, label %638

638:                                              ; preds = %624
  %639 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %640 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.459, i64 0, i64 0), i32 1, i32 undef) #14
  %641 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 5), align 4, !tbaa !33
  br label %648

642:                                              ; preds = %624
  %643 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %627, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %644 = trunc i64 %643 to i32
  %645 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %631, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.459, i64 0, i64 0), i32 1, i32 undef) #14
  %646 = trunc i64 %645 to i32
  %647 = add nsw i32 %646, %644
  store volatile i32 %647, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 5), align 4, !tbaa !33
  br label %648

648:                                              ; preds = %638, %642, %617
  %649 = trunc i64 %477 to i32
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %658, label %651

651:                                              ; preds = %648
  %652 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %653 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.232, i64 0, i64 0), i32 1, i32 undef) #14
  %654 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 6) to i64*), align 8, !tbaa !23
  %655 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %656 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.232, i64 0, i64 0), i32 1, i32 undef) #14
  %657 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 6), align 8, !tbaa !33
  br label %682

658:                                              ; preds = %648
  %659 = sext i32 %471 to i64
  %660 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %659
  %661 = bitcast i32* %660 to i64*
  %662 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %661, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %663 = trunc i64 %662 to i32
  %664 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %659, i64 6
  %665 = bitcast i32* %664 to i64*
  %666 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %665, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.232, i64 0, i64 0), i32 1, i32 undef) #14
  %667 = trunc i64 %666 to i32
  %668 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 6) to i64*), align 8, !tbaa !23
  %669 = trunc i64 %668 to i32
  %670 = add nsw i32 %667, %663
  %671 = icmp slt i32 %670, %669
  br i1 %671, label %676, label %672

672:                                              ; preds = %658
  %673 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %674 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.232, i64 0, i64 0), i32 1, i32 undef) #14
  %675 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 6), align 8, !tbaa !33
  br label %682

676:                                              ; preds = %658
  %677 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %661, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %678 = trunc i64 %677 to i32
  %679 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %665, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.232, i64 0, i64 0), i32 1, i32 undef) #14
  %680 = trunc i64 %679 to i32
  %681 = add nsw i32 %680, %678
  store volatile i32 %681, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 6), align 8, !tbaa !33
  br label %682

682:                                              ; preds = %672, %676, %651
  %683 = trunc i64 %478 to i32
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %692, label %685

685:                                              ; preds = %682
  %686 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %687 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.252, i64 0, i64 0), i32 1, i32 undef) #14
  %688 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 7) to i64*), align 8, !tbaa !23
  %689 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %690 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.252, i64 0, i64 0), i32 1, i32 undef) #14
  %691 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 7), align 4, !tbaa !33
  br label %716

692:                                              ; preds = %682
  %693 = sext i32 %471 to i64
  %694 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %693
  %695 = bitcast i32* %694 to i64*
  %696 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %695, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %697 = trunc i64 %696 to i32
  %698 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %693, i64 7
  %699 = bitcast i32* %698 to i64*
  %700 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %699, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.252, i64 0, i64 0), i32 1, i32 undef) #14
  %701 = trunc i64 %700 to i32
  %702 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 7) to i64*), align 8, !tbaa !23
  %703 = trunc i64 %702 to i32
  %704 = add nsw i32 %701, %697
  %705 = icmp slt i32 %704, %703
  br i1 %705, label %710, label %706

706:                                              ; preds = %692
  %707 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %708 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.252, i64 0, i64 0), i32 1, i32 undef) #14
  %709 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 7), align 4, !tbaa !33
  br label %716

710:                                              ; preds = %692
  %711 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %695, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %712 = trunc i64 %711 to i32
  %713 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %699, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.252, i64 0, i64 0), i32 1, i32 undef) #14
  %714 = trunc i64 %713 to i32
  %715 = add nsw i32 %714, %712
  store volatile i32 %715, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 7), align 4, !tbaa !33
  br label %716

716:                                              ; preds = %706, %710, %685
  br i1 %32, label %717, label %747

717:                                              ; preds = %716
  %718 = icmp sgt i32 %471, -1
  %719 = load volatile i64, i64* bitcast ([8 x i32]* @dis to i64*), align 16, !tbaa !23
  br i1 %718, label %727, label %720

720:                                              ; preds = %717
  %721 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %722 = shl nsw i32 %471, 2
  %723 = zext i32 %722 to i64
  %724 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %723
  %725 = bitcast i8* %724 to i32*
  %726 = load volatile i32, i32* %725, align 4, !tbaa !33
  br label %741

727:                                              ; preds = %717
  %728 = trunc i64 %719 to i32
  %729 = zext i32 %471 to i64
  %730 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %729
  %731 = bitcast i32* %730 to i64*
  %732 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %731, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %733 = trunc i64 %732 to i32
  %734 = icmp slt i32 %728, %733
  br i1 %734, label %741, label %735

735:                                              ; preds = %727
  %736 = shl nsw i32 %471, 2
  %737 = zext i32 %736 to i64
  %738 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %737
  %739 = bitcast i8* %738 to i32*
  %740 = load volatile i32, i32* %739, align 4, !tbaa !33
  br label %747

741:                                              ; preds = %720, %727
  %742 = load i32, i32* @secret, align 4, !tbaa !33
  %743 = shl nsw i32 %742, 2
  %744 = zext i32 %743 to i64
  %745 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %744
  %746 = bitcast i8* %745 to i32*
  store volatile i32 1, i32* %746, align 4, !tbaa !33
  br label %747

747:                                              ; preds = %716, %735, %741
  %748 = phi i32 [ %742, %741 ], [ %471, %735 ], [ %471, %716 ]
  br i1 %480, label %749, label %780

749:                                              ; preds = %747
  %750 = icmp sgt i32 %748, -1
  %751 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 1) to i64*), align 8, !tbaa !23
  br i1 %750, label %759, label %752

752:                                              ; preds = %749
  %753 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %754 = shl nsw i32 %748, 2
  %755 = zext i32 %754 to i64
  %756 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %755
  %757 = bitcast i8* %756 to i32*
  %758 = load volatile i32, i32* %757, align 4, !tbaa !33
  br label %773

759:                                              ; preds = %749
  %760 = trunc i64 %751 to i32
  %761 = zext i32 %748 to i64
  %762 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %761
  %763 = bitcast i32* %762 to i64*
  %764 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %763, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %765 = trunc i64 %764 to i32
  %766 = icmp slt i32 %760, %765
  br i1 %766, label %773, label %767

767:                                              ; preds = %759
  %768 = shl nsw i32 %748, 2
  %769 = zext i32 %768 to i64
  %770 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %769
  %771 = bitcast i8* %770 to i32*
  %772 = load volatile i32, i32* %771, align 4, !tbaa !33
  br label %780

773:                                              ; preds = %752, %759
  %774 = load i32, i32* @secret, align 4, !tbaa !33
  %775 = add nsw i32 %774, 1
  %776 = shl nsw i32 %775, 2
  %777 = zext i32 %776 to i64
  %778 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %777
  %779 = bitcast i8* %778 to i32*
  store volatile i32 1, i32* %779, align 4, !tbaa !33
  br label %780

780:                                              ; preds = %747, %767, %773
  %781 = phi i32 [ %775, %773 ], [ %748, %767 ], [ %748, %747 ]
  br i1 %514, label %782, label %813

782:                                              ; preds = %780
  %783 = icmp sgt i32 %781, -1
  %784 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 2) to i64*), align 8, !tbaa !23
  br i1 %783, label %792, label %785

785:                                              ; preds = %782
  %786 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %787 = shl nsw i32 %781, 2
  %788 = zext i32 %787 to i64
  %789 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %788
  %790 = bitcast i8* %789 to i32*
  %791 = load volatile i32, i32* %790, align 4, !tbaa !33
  br label %806

792:                                              ; preds = %782
  %793 = trunc i64 %784 to i32
  %794 = zext i32 %781 to i64
  %795 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %794
  %796 = bitcast i32* %795 to i64*
  %797 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %796, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %798 = trunc i64 %797 to i32
  %799 = icmp slt i32 %793, %798
  br i1 %799, label %806, label %800

800:                                              ; preds = %792
  %801 = shl nsw i32 %781, 2
  %802 = zext i32 %801 to i64
  %803 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %802
  %804 = bitcast i8* %803 to i32*
  %805 = load volatile i32, i32* %804, align 4, !tbaa !33
  br label %813

806:                                              ; preds = %785, %792
  %807 = load i32, i32* @secret, align 4, !tbaa !33
  %808 = add nsw i32 %807, 2
  %809 = shl nsw i32 %808, 2
  %810 = zext i32 %809 to i64
  %811 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %810
  %812 = bitcast i8* %811 to i32*
  store volatile i32 1, i32* %812, align 4, !tbaa !33
  br label %813

813:                                              ; preds = %780, %800, %806
  %814 = phi i32 [ %808, %806 ], [ %781, %800 ], [ %781, %780 ]
  br i1 %548, label %815, label %846

815:                                              ; preds = %813
  %816 = icmp sgt i32 %814, -1
  %817 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3) to i64*), align 8, !tbaa !23
  br i1 %816, label %825, label %818

818:                                              ; preds = %815
  %819 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %820 = shl nsw i32 %814, 2
  %821 = zext i32 %820 to i64
  %822 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %821
  %823 = bitcast i8* %822 to i32*
  %824 = load volatile i32, i32* %823, align 4, !tbaa !33
  br label %839

825:                                              ; preds = %815
  %826 = trunc i64 %817 to i32
  %827 = zext i32 %814 to i64
  %828 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %827
  %829 = bitcast i32* %828 to i64*
  %830 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %829, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %831 = trunc i64 %830 to i32
  %832 = icmp slt i32 %826, %831
  br i1 %832, label %839, label %833

833:                                              ; preds = %825
  %834 = shl nsw i32 %814, 2
  %835 = zext i32 %834 to i64
  %836 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %835
  %837 = bitcast i8* %836 to i32*
  %838 = load volatile i32, i32* %837, align 4, !tbaa !33
  br label %846

839:                                              ; preds = %818, %825
  %840 = load i32, i32* @secret, align 4, !tbaa !33
  %841 = add nsw i32 %840, 3
  %842 = shl nsw i32 %841, 2
  %843 = zext i32 %842 to i64
  %844 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %843
  %845 = bitcast i8* %844 to i32*
  store volatile i32 1, i32* %845, align 4, !tbaa !33
  br label %846

846:                                              ; preds = %813, %833, %839
  %847 = phi i32 [ %841, %839 ], [ %814, %833 ], [ %814, %813 ]
  br i1 %582, label %848, label %879

848:                                              ; preds = %846
  %849 = icmp sgt i32 %847, -1
  %850 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4) to i64*), align 16, !tbaa !23
  br i1 %849, label %858, label %851

851:                                              ; preds = %848
  %852 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %853 = shl nsw i32 %847, 2
  %854 = zext i32 %853 to i64
  %855 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %854
  %856 = bitcast i8* %855 to i32*
  %857 = load volatile i32, i32* %856, align 4, !tbaa !33
  br label %872

858:                                              ; preds = %848
  %859 = trunc i64 %850 to i32
  %860 = zext i32 %847 to i64
  %861 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %860
  %862 = bitcast i32* %861 to i64*
  %863 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %862, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %864 = trunc i64 %863 to i32
  %865 = icmp slt i32 %859, %864
  br i1 %865, label %872, label %866

866:                                              ; preds = %858
  %867 = shl nsw i32 %847, 2
  %868 = zext i32 %867 to i64
  %869 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %868
  %870 = bitcast i8* %869 to i32*
  %871 = load volatile i32, i32* %870, align 4, !tbaa !33
  br label %879

872:                                              ; preds = %851, %858
  %873 = load i32, i32* @secret, align 4, !tbaa !33
  %874 = add nsw i32 %873, 4
  %875 = shl nsw i32 %874, 2
  %876 = zext i32 %875 to i64
  %877 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %876
  %878 = bitcast i8* %877 to i32*
  store volatile i32 1, i32* %878, align 4, !tbaa !33
  br label %879

879:                                              ; preds = %846, %866, %872
  %880 = phi i32 [ %874, %872 ], [ %847, %866 ], [ %847, %846 ]
  br i1 %616, label %881, label %912

881:                                              ; preds = %879
  %882 = icmp sgt i32 %880, -1
  %883 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 5) to i64*), align 8, !tbaa !23
  br i1 %882, label %891, label %884

884:                                              ; preds = %881
  %885 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %886 = shl nsw i32 %880, 2
  %887 = zext i32 %886 to i64
  %888 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %887
  %889 = bitcast i8* %888 to i32*
  %890 = load volatile i32, i32* %889, align 4, !tbaa !33
  br label %905

891:                                              ; preds = %881
  %892 = trunc i64 %883 to i32
  %893 = zext i32 %880 to i64
  %894 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %893
  %895 = bitcast i32* %894 to i64*
  %896 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %895, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %897 = trunc i64 %896 to i32
  %898 = icmp slt i32 %892, %897
  br i1 %898, label %905, label %899

899:                                              ; preds = %891
  %900 = shl nsw i32 %880, 2
  %901 = zext i32 %900 to i64
  %902 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %901
  %903 = bitcast i8* %902 to i32*
  %904 = load volatile i32, i32* %903, align 4, !tbaa !33
  br label %912

905:                                              ; preds = %884, %891
  %906 = load i32, i32* @secret, align 4, !tbaa !33
  %907 = add nsw i32 %906, 5
  %908 = shl nsw i32 %907, 2
  %909 = zext i32 %908 to i64
  %910 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %909
  %911 = bitcast i8* %910 to i32*
  store volatile i32 1, i32* %911, align 4, !tbaa !33
  br label %912

912:                                              ; preds = %879, %899, %905
  %913 = phi i32 [ %907, %905 ], [ %880, %899 ], [ %880, %879 ]
  br i1 %650, label %914, label %945

914:                                              ; preds = %912
  %915 = icmp sgt i32 %913, -1
  %916 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 6) to i64*), align 8, !tbaa !23
  br i1 %915, label %924, label %917

917:                                              ; preds = %914
  %918 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %919 = shl nsw i32 %913, 2
  %920 = zext i32 %919 to i64
  %921 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %920
  %922 = bitcast i8* %921 to i32*
  %923 = load volatile i32, i32* %922, align 4, !tbaa !33
  br label %938

924:                                              ; preds = %914
  %925 = trunc i64 %916 to i32
  %926 = zext i32 %913 to i64
  %927 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %926
  %928 = bitcast i32* %927 to i64*
  %929 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %928, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %930 = trunc i64 %929 to i32
  %931 = icmp slt i32 %925, %930
  br i1 %931, label %938, label %932

932:                                              ; preds = %924
  %933 = shl nsw i32 %913, 2
  %934 = zext i32 %933 to i64
  %935 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %934
  %936 = bitcast i8* %935 to i32*
  %937 = load volatile i32, i32* %936, align 4, !tbaa !33
  br label %945

938:                                              ; preds = %917, %924
  %939 = load i32, i32* @secret, align 4, !tbaa !33
  %940 = add nsw i32 %939, 6
  %941 = shl nsw i32 %940, 2
  %942 = zext i32 %941 to i64
  %943 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %942
  %944 = bitcast i8* %943 to i32*
  store volatile i32 1, i32* %944, align 4, !tbaa !33
  br label %945

945:                                              ; preds = %912, %932, %938
  %946 = phi i32 [ %940, %938 ], [ %913, %932 ], [ %913, %912 ]
  br i1 %684, label %947, label %978

947:                                              ; preds = %945
  %948 = icmp sgt i32 %946, -1
  %949 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 7) to i64*), align 8, !tbaa !23
  br i1 %948, label %957, label %950

950:                                              ; preds = %947
  %951 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %952 = shl nsw i32 %946, 2
  %953 = zext i32 %952 to i64
  %954 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %953
  %955 = bitcast i8* %954 to i32*
  %956 = load volatile i32, i32* %955, align 4, !tbaa !33
  br label %971

957:                                              ; preds = %947
  %958 = trunc i64 %949 to i32
  %959 = zext i32 %946 to i64
  %960 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %959
  %961 = bitcast i32* %960 to i64*
  %962 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %961, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %963 = trunc i64 %962 to i32
  %964 = icmp slt i32 %958, %963
  br i1 %964, label %971, label %965

965:                                              ; preds = %957
  %966 = shl nsw i32 %946, 2
  %967 = zext i32 %966 to i64
  %968 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %967
  %969 = bitcast i8* %968 to i32*
  %970 = load volatile i32, i32* %969, align 4, !tbaa !33
  br label %978

971:                                              ; preds = %950, %957
  %972 = load i32, i32* @secret, align 4, !tbaa !33
  %973 = add nsw i32 %972, 7
  %974 = shl nsw i32 %973, 2
  %975 = zext i32 %974 to i64
  %976 = getelementptr inbounds i8, i8* bitcast ([8 x i32]* @vis to i8*), i64 %975
  %977 = bitcast i8* %976 to i32*
  store volatile i32 1, i32* %977, align 4, !tbaa !33
  br label %978

978:                                              ; preds = %945, %965, %971
  %979 = phi i32 [ %973, %971 ], [ %946, %965 ], [ %946, %945 ]
  br i1 %32, label %984, label %980

980:                                              ; preds = %978
  %981 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %982 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.360, i64 0, i64 0), i32 1, i32 undef) #14
  %983 = load volatile i64, i64* bitcast ([8 x i32]* @dis to i64*), align 16, !tbaa !23
  br label %1005

984:                                              ; preds = %978
  %985 = sext i32 %979 to i64
  %986 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %985
  %987 = bitcast i32* %986 to i64*
  %988 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %987, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %989 = trunc i64 %988 to i32
  %990 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %985, i64 0
  %991 = bitcast i32* %990 to i64*
  %992 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %991, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.360, i64 0, i64 0), i32 1, i32 undef) #14
  %993 = trunc i64 %992 to i32
  %994 = load volatile i64, i64* bitcast ([8 x i32]* @dis to i64*), align 16, !tbaa !23
  %995 = trunc i64 %994 to i32
  %996 = add nsw i32 %993, %989
  %997 = icmp slt i32 %996, %995
  br i1 %997, label %998, label %1005

998:                                              ; preds = %984
  %999 = bitcast [1 x %struct.ds_base]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %999, i8* nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.458 to i8*), i64 32, i1 false), !tbaa.struct !36
  %1000 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %2, i64 0, i64 0
  %1001 = call i32 @uint32_t_secure_load_sensitive(i32* nonnull %986, %struct.ds_base* nonnull %1000, i32 1, i32 8)
  %1002 = bitcast [1 x %struct.ds_base]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %1002, i8* nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.360 to i8*), i64 32, i1 false), !tbaa.struct !36
  %1003 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %3, i64 0, i64 0
  %1004 = call i32 @uint32_t_secure_load_sensitive(i32* nonnull %990, %struct.ds_base* nonnull %1003, i32 1, i32 8)
  tail call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.361, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.362, i64 0, i64 0), i32 5988, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

1005:                                             ; preds = %984, %980
  %1006 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1007 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.360, i64 0, i64 0), i32 1, i32 undef) #14
  %1008 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 0), align 16, !tbaa !33
  br i1 %480, label %1013, label %1009

1009:                                             ; preds = %1005
  %1010 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1011 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.381, i64 0, i64 0), i32 1, i32 undef) #14
  %1012 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 1) to i64*), align 8, !tbaa !23
  br label %1034

1013:                                             ; preds = %1005
  %1014 = sext i32 %979 to i64
  %1015 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %1014
  %1016 = bitcast i32* %1015 to i64*
  %1017 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1016, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1018 = trunc i64 %1017 to i32
  %1019 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %1014, i64 1
  %1020 = bitcast i32* %1019 to i64*
  %1021 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1020, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.381, i64 0, i64 0), i32 1, i32 undef) #14
  %1022 = trunc i64 %1021 to i32
  %1023 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 1) to i64*), align 8, !tbaa !23
  %1024 = trunc i64 %1023 to i32
  %1025 = add nsw i32 %1022, %1018
  %1026 = icmp slt i32 %1025, %1024
  br i1 %1026, label %1027, label %1034

1027:                                             ; preds = %1013
  %1028 = bitcast [1 x %struct.ds_base]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %1028, i8* nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.458 to i8*), i64 32, i1 false), !tbaa.struct !36
  %1029 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %4, i64 0, i64 0
  %1030 = call i32 @uint32_t_secure_load_sensitive(i32* nonnull %1015, %struct.ds_base* nonnull %1029, i32 1, i32 8)
  %1031 = bitcast [1 x %struct.ds_base]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %1031, i8* nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.381 to i8*), i64 32, i1 false), !tbaa.struct !36
  %1032 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %5, i64 0, i64 0
  %1033 = call i32 @uint32_t_secure_load_sensitive(i32* nonnull %1019, %struct.ds_base* nonnull %1032, i32 1, i32 8)
  tail call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.361, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.362, i64 0, i64 0), i32 6034, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

1034:                                             ; preds = %1013, %1009
  %1035 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1036 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.381, i64 0, i64 0), i32 1, i32 undef) #14
  %1037 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 1), align 4, !tbaa !33
  br i1 %514, label %1042, label %1038

1038:                                             ; preds = %1034
  %1039 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1040 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.400, i64 0, i64 0), i32 1, i32 undef) #14
  %1041 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 2) to i64*), align 8, !tbaa !23
  br label %1063

1042:                                             ; preds = %1034
  %1043 = sext i32 %979 to i64
  %1044 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %1043
  %1045 = bitcast i32* %1044 to i64*
  %1046 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1045, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1047 = trunc i64 %1046 to i32
  %1048 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %1043, i64 2
  %1049 = bitcast i32* %1048 to i64*
  %1050 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1049, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.400, i64 0, i64 0), i32 1, i32 undef) #14
  %1051 = trunc i64 %1050 to i32
  %1052 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 2) to i64*), align 8, !tbaa !23
  %1053 = trunc i64 %1052 to i32
  %1054 = add nsw i32 %1051, %1047
  %1055 = icmp slt i32 %1054, %1053
  br i1 %1055, label %1056, label %1063

1056:                                             ; preds = %1042
  %1057 = bitcast [1 x %struct.ds_base]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %1057, i8* nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.458 to i8*), i64 32, i1 false), !tbaa.struct !36
  %1058 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %6, i64 0, i64 0
  %1059 = call i32 @uint32_t_secure_load_sensitive(i32* nonnull %1044, %struct.ds_base* nonnull %1058, i32 1, i32 8)
  %1060 = bitcast [1 x %struct.ds_base]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %1060, i8* nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.400 to i8*), i64 32, i1 false), !tbaa.struct !36
  %1061 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %7, i64 0, i64 0
  %1062 = call i32 @uint32_t_secure_load_sensitive(i32* nonnull %1048, %struct.ds_base* nonnull %1061, i32 1, i32 8)
  tail call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.361, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.362, i64 0, i64 0), i32 6080, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

1063:                                             ; preds = %1042, %1038
  %1064 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1065 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.400, i64 0, i64 0), i32 1, i32 undef) #14
  %1066 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 2), align 8, !tbaa !33
  br i1 %548, label %1074, label %1067

1067:                                             ; preds = %1063
  %1068 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1069 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.419, i64 0, i64 0), i32 1, i32 undef) #14
  %1070 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3) to i64*), align 8, !tbaa !23
  %1071 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1072 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.419, i64 0, i64 0), i32 1, i32 undef) #14
  %1073 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3), align 4, !tbaa !33
  br label %1098

1074:                                             ; preds = %1063
  %1075 = sext i32 %979 to i64
  %1076 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %1075
  %1077 = bitcast i32* %1076 to i64*
  %1078 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1077, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1079 = trunc i64 %1078 to i32
  %1080 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %1075, i64 3
  %1081 = bitcast i32* %1080 to i64*
  %1082 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1081, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.419, i64 0, i64 0), i32 1, i32 undef) #14
  %1083 = trunc i64 %1082 to i32
  %1084 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3) to i64*), align 8, !tbaa !23
  %1085 = trunc i64 %1084 to i32
  %1086 = add nsw i32 %1083, %1079
  %1087 = icmp slt i32 %1086, %1085
  br i1 %1087, label %1092, label %1088

1088:                                             ; preds = %1074
  %1089 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1090 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.419, i64 0, i64 0), i32 1, i32 undef) #14
  %1091 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3), align 4, !tbaa !33
  br label %1098

1092:                                             ; preds = %1074
  %1093 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1077, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1094 = trunc i64 %1093 to i32
  %1095 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1081, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.419, i64 0, i64 0), i32 1, i32 undef) #14
  %1096 = trunc i64 %1095 to i32
  %1097 = add nsw i32 %1096, %1094
  store volatile i32 %1097, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 3), align 4, !tbaa !33
  br label %1098

1098:                                             ; preds = %1088, %1092, %1067
  br i1 %582, label %1106, label %1099

1099:                                             ; preds = %1098
  %1100 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1101 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.439, i64 0, i64 0), i32 1, i32 undef) #14
  %1102 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4) to i64*), align 16, !tbaa !23
  %1103 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1104 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.439, i64 0, i64 0), i32 1, i32 undef) #14
  %1105 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4), align 16, !tbaa !33
  br label %1130

1106:                                             ; preds = %1098
  %1107 = sext i32 %979 to i64
  %1108 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %1107
  %1109 = bitcast i32* %1108 to i64*
  %1110 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1109, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1111 = trunc i64 %1110 to i32
  %1112 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %1107, i64 4
  %1113 = bitcast i32* %1112 to i64*
  %1114 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1113, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.439, i64 0, i64 0), i32 1, i32 undef) #14
  %1115 = trunc i64 %1114 to i32
  %1116 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4) to i64*), align 16, !tbaa !23
  %1117 = trunc i64 %1116 to i32
  %1118 = add nsw i32 %1115, %1111
  %1119 = icmp slt i32 %1118, %1117
  br i1 %1119, label %1124, label %1120

1120:                                             ; preds = %1106
  %1121 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1122 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.439, i64 0, i64 0), i32 1, i32 undef) #14
  %1123 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4), align 16, !tbaa !33
  br label %1130

1124:                                             ; preds = %1106
  %1125 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1109, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1126 = trunc i64 %1125 to i32
  %1127 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1113, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.439, i64 0, i64 0), i32 1, i32 undef) #14
  %1128 = trunc i64 %1127 to i32
  %1129 = add nsw i32 %1128, %1126
  store volatile i32 %1129, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 4), align 16, !tbaa !33
  br label %1130

1130:                                             ; preds = %1120, %1124, %1099
  br i1 %616, label %1135, label %1131

1131:                                             ; preds = %1130
  %1132 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1133 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.459, i64 0, i64 0), i32 1, i32 undef) #14
  %1134 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 5) to i64*), align 8, !tbaa !23
  br label %1156

1135:                                             ; preds = %1130
  %1136 = sext i32 %979 to i64
  %1137 = getelementptr inbounds [8 x i32], [8 x i32]* @dis, i64 0, i64 %1136
  %1138 = bitcast i32* %1137 to i64*
  %1139 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1138, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1140 = trunc i64 %1139 to i32
  %1141 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @in, i64 0, i64 %1136, i64 5
  %1142 = bitcast i32* %1141 to i64*
  %1143 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %1142, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.459, i64 0, i64 0), i32 1, i32 undef) #14
  %1144 = trunc i64 %1143 to i32
  %1145 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 5) to i64*), align 8, !tbaa !23
  %1146 = trunc i64 %1145 to i32
  %1147 = add nsw i32 %1144, %1140
  %1148 = icmp slt i32 %1147, %1146
  br i1 %1148, label %1149, label %1156

1149:                                             ; preds = %1135
  %1150 = bitcast [1 x %struct.ds_base]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %1150, i8* nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.458 to i8*), i64 32, i1 false), !tbaa.struct !36
  %1151 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %8, i64 0, i64 0
  %1152 = call i32 @uint32_t_secure_load_sensitive(i32* nonnull %1137, %struct.ds_base* nonnull %1151, i32 1, i32 8)
  %1153 = bitcast [1 x %struct.ds_base]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %1153, i8* nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.459 to i8*), i64 32, i1 false), !tbaa.struct !36
  %1154 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %9, i64 0, i64 0
  %1155 = call i32 @uint32_t_secure_load_sensitive(i32* nonnull %1141, %struct.ds_base* nonnull %1154, i32 1, i32 8)
  tail call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.361, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.362, i64 0, i64 0), i32 6216, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

1156:                                             ; preds = %1135, %1131
  %1157 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.458, i64 0, i64 0), i32 1, i32 undef) #14
  %1158 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.459, i64 0, i64 0), i32 1, i32 undef) #14
  %1159 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dis, i64 0, i64 5), align 4, !tbaa !33
  %1160 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.461, i64 0, i64 0), i32 0)
  %1161 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.461, i64 0, i64 0), i32 %649)
  ret i32 0
}

; Function Attrs: nofree
declare dso_local noundef i64 @read(i32 noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind readnone
declare <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8>, <32 x i8>, <32 x i8>) #13

attributes #0 = { norecurse nounwind readnone uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse nounwind readnone uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="256" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind readonly uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="256" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind readonly uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="256" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse nounwind readnone uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nofree nosync nounwind willreturn }
attributes #11 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }

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
