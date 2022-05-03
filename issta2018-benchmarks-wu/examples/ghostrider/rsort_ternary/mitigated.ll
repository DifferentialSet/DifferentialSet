; ModuleID = 'mitigated.c'
source_filename = "mitigated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ds_base = type { i8*, i64*, i32, i8, i32, i32 }

@count = dso_local global [10 x i32] zeroinitializer, align 16
@in = dso_local global [2 x i32] zeroinitializer, align 8
@constinit.368 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([10 x i32]* @count to i8*), i64* null, i32 10, i8 1, i32 0, i32 36 }], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
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

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @mm256_hadd_to_32(<4 x i64> %0) local_unnamed_addr #2 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @mm256_hadd_to_64(<4 x i64> %0) local_unnamed_addr #2 {
  %2 = shufflevector <4 x i64> %0, <4 x i64> undef, <2 x i32> <i32 0, i32 1>
  %3 = shufflevector <4 x i64> %0, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %4 = add <2 x i64> %3, %2
  %5 = shufflevector <2 x i64> %4, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>
  %6 = add <2 x i64> %5, %4
  %7 = extractelement <2 x i64> %6, i32 0
  ret i64 %7
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define dso_local i64 @uint64_t_secure_load_impl(i64* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #3 {
  %5 = ptrtoint i64* %0 to i64
  %6 = and i64 %5, -8
  %7 = insertelement <4 x i64> undef, i64 %6, i32 0
  %8 = shufflevector <4 x i64> %7, <4 x i64> poison, <4 x i32> zeroinitializer
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = zext i32 %2 to i64
  br label %27

12:                                               ; preds = %187, %4
  %13 = phi i8 [ 1, %4 ], [ %188, %187 ]
  %14 = phi <4 x i64> [ zeroinitializer, %4 ], [ %189, %187 ]
  %15 = shufflevector <4 x i64> %14, <4 x i64> undef, <2 x i32> <i32 0, i32 1>
  %16 = shufflevector <4 x i64> %14, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %17 = add <2 x i64> %16, %15
  %18 = shufflevector <2 x i64> %17, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>
  %19 = add <2 x i64> %18, %17
  %20 = extractelement <2 x i64> %19, i32 0
  %21 = and i8 %13, 1
  %22 = icmp eq i8 %21, 0
  %23 = shl i64 %5, 3
  %24 = and i64 %23, 56
  %25 = select i1 %22, i64 0, i64 %24
  %26 = lshr i64 %20, %25
  ret i64 %26

27:                                               ; preds = %10, %187
  %28 = phi i64 [ 0, %10 ], [ %190, %187 ]
  %29 = phi <4 x i64> [ zeroinitializer, %10 ], [ %189, %187 ]
  %30 = phi i8 [ 1, %10 ], [ %188, %187 ]
  %31 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %28, i32 3
  %32 = load i8, i8* %31, align 4, !tbaa !3, !range !10
  %33 = icmp eq i8 %32, 0
  %34 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %28, i32 0
  %35 = load i8*, i8** %34, align 8, !tbaa !11
  %36 = ptrtoint i8* %35 to i64
  br i1 %33, label %72, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %28, i32 4
  %39 = load i32, i32* %38, align 8, !tbaa !12
  %40 = trunc i64 %36 to i32
  %41 = add i32 %39, %40
  %42 = and i32 %41, -32
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %28, i32 5
  %45 = inttoptr i64 %43 to i8*
  %46 = load i32, i32* %44, align 4, !tbaa !13
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %35, i64 %47
  %49 = icmp ult i8* %48, %45
  br i1 %49, label %187, label %50

50:                                               ; preds = %37
  %51 = insertelement <4 x i64> undef, i64 %43, i32 0
  %52 = or i32 %42, 8
  %53 = zext i32 %52 to i64
  %54 = insertelement <4 x i64> %51, i64 %53, i32 1
  %55 = insertelement <2 x i32> poison, i32 %42, i32 0
  %56 = shufflevector <2 x i32> %55, <2 x i32> poison, <2 x i32> zeroinitializer
  %57 = or <2 x i32> %56, <i32 16, i32 24>
  %58 = zext <2 x i32> %57 to <2 x i64>
  %59 = shufflevector <2 x i64> %58, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %60 = shufflevector <4 x i64> %54, <4 x i64> %59, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %61

61:                                               ; preds = %50, %61
  %62 = phi <4 x i64> [ %68, %61 ], [ %29, %50 ]
  %63 = phi <4 x i64> [ %69, %61 ], [ %60, %50 ]
  %64 = phi i8* [ %70, %61 ], [ %45, %50 ]
  %65 = icmp eq <4 x i64> %63, %8
  %66 = bitcast i8* %64 to <4 x i64>*
  %67 = load <4 x i64>, <4 x i64>* %66, align 1, !tbaa !14
  %68 = select <4 x i1> %65, <4 x i64> %67, <4 x i64> %62
  %69 = add <4 x i64> %63, <i64 32, i64 32, i64 32, i64 32>
  %70 = getelementptr inbounds i8, i8* %64, i64 32
  %71 = icmp ugt i8* %70, %48
  br i1 %71, label %187, label %61, !llvm.loop !15

72:                                               ; preds = %27
  %73 = sub i64 %5, %36
  %74 = insertelement <4 x i64> undef, i64 %73, i32 0
  %75 = shufflevector <4 x i64> %74, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %76

76:                                               ; preds = %72, %113
  %77 = phi i64 [ 0, %72 ], [ %115, %113 ]
  %78 = phi <4 x i64> [ %29, %72 ], [ %114, %113 ]
  %79 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %77, i32 2
  %80 = load i32, i32* %79, align 8, !tbaa !17
  %81 = icmp ult i32 %80, 4
  br i1 %81, label %113, label %82

82:                                               ; preds = %76
  %83 = lshr i32 %80, 2
  %84 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %77, i32 0
  %85 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %77, i32 1
  %86 = load i64*, i64** %85, align 8, !tbaa !18
  %87 = load i8*, i8** %84, align 8, !tbaa !11
  %88 = zext i32 %83 to i64
  %89 = add nsw i64 %88, -1
  %90 = and i64 %88, 7
  %91 = icmp ult i64 %89, 7
  br i1 %91, label %94, label %92

92:                                               ; preds = %82
  %93 = and i64 %88, 1073741816
  br label %117

94:                                               ; preds = %117, %82
  %95 = phi <4 x i64> [ undef, %82 ], [ %183, %117 ]
  %96 = phi i64 [ 0, %82 ], [ %184, %117 ]
  %97 = phi <4 x i64> [ %78, %82 ], [ %183, %117 ]
  %98 = icmp eq i64 %90, 0
  br i1 %98, label %113, label %99

99:                                               ; preds = %94, %99
  %100 = phi i64 [ %110, %99 ], [ %96, %94 ]
  %101 = phi <4 x i64> [ %109, %99 ], [ %97, %94 ]
  %102 = phi i64 [ %111, %99 ], [ %90, %94 ]
  %103 = shl i64 %100, 2
  %104 = getelementptr inbounds i64, i64* %86, i64 %103
  %105 = bitcast i64* %104 to <4 x i64>*
  %106 = load <4 x i64>, <4 x i64>* %105, align 1, !tbaa !14
  %107 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %87, <4 x i64> %106, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %108 = icmp eq <4 x i64> %106, %75
  %109 = select <4 x i1> %108, <4 x i64> %107, <4 x i64> %101
  %110 = add nuw nsw i64 %100, 1
  %111 = add i64 %102, -1
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %99, !llvm.loop !19

113:                                              ; preds = %94, %99, %76
  %114 = phi <4 x i64> [ %78, %76 ], [ %95, %94 ], [ %109, %99 ]
  %115 = add nuw nsw i64 %77, 1
  %116 = icmp eq i64 %115, %11
  br i1 %116, label %187, label %76, !llvm.loop !21

117:                                              ; preds = %117, %92
  %118 = phi i64 [ 0, %92 ], [ %184, %117 ]
  %119 = phi <4 x i64> [ %78, %92 ], [ %183, %117 ]
  %120 = phi i64 [ %93, %92 ], [ %185, %117 ]
  %121 = shl i64 %118, 2
  %122 = getelementptr inbounds i64, i64* %86, i64 %121
  %123 = bitcast i64* %122 to <4 x i64>*
  %124 = load <4 x i64>, <4 x i64>* %123, align 1, !tbaa !14
  %125 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %87, <4 x i64> %124, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %126 = icmp eq <4 x i64> %124, %75
  %127 = select <4 x i1> %126, <4 x i64> %125, <4 x i64> %119
  %128 = shl i64 %118, 2
  %129 = or i64 %128, 4
  %130 = getelementptr inbounds i64, i64* %86, i64 %129
  %131 = bitcast i64* %130 to <4 x i64>*
  %132 = load <4 x i64>, <4 x i64>* %131, align 1, !tbaa !14
  %133 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %87, <4 x i64> %132, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %134 = icmp eq <4 x i64> %132, %75
  %135 = select <4 x i1> %134, <4 x i64> %133, <4 x i64> %127
  %136 = shl i64 %118, 2
  %137 = or i64 %136, 8
  %138 = getelementptr inbounds i64, i64* %86, i64 %137
  %139 = bitcast i64* %138 to <4 x i64>*
  %140 = load <4 x i64>, <4 x i64>* %139, align 1, !tbaa !14
  %141 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %87, <4 x i64> %140, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %142 = icmp eq <4 x i64> %140, %75
  %143 = select <4 x i1> %142, <4 x i64> %141, <4 x i64> %135
  %144 = shl i64 %118, 2
  %145 = or i64 %144, 12
  %146 = getelementptr inbounds i64, i64* %86, i64 %145
  %147 = bitcast i64* %146 to <4 x i64>*
  %148 = load <4 x i64>, <4 x i64>* %147, align 1, !tbaa !14
  %149 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %87, <4 x i64> %148, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %150 = icmp eq <4 x i64> %148, %75
  %151 = select <4 x i1> %150, <4 x i64> %149, <4 x i64> %143
  %152 = shl i64 %118, 2
  %153 = or i64 %152, 16
  %154 = getelementptr inbounds i64, i64* %86, i64 %153
  %155 = bitcast i64* %154 to <4 x i64>*
  %156 = load <4 x i64>, <4 x i64>* %155, align 1, !tbaa !14
  %157 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %87, <4 x i64> %156, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %158 = icmp eq <4 x i64> %156, %75
  %159 = select <4 x i1> %158, <4 x i64> %157, <4 x i64> %151
  %160 = shl i64 %118, 2
  %161 = or i64 %160, 20
  %162 = getelementptr inbounds i64, i64* %86, i64 %161
  %163 = bitcast i64* %162 to <4 x i64>*
  %164 = load <4 x i64>, <4 x i64>* %163, align 1, !tbaa !14
  %165 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %87, <4 x i64> %164, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %166 = icmp eq <4 x i64> %164, %75
  %167 = select <4 x i1> %166, <4 x i64> %165, <4 x i64> %159
  %168 = shl i64 %118, 2
  %169 = or i64 %168, 24
  %170 = getelementptr inbounds i64, i64* %86, i64 %169
  %171 = bitcast i64* %170 to <4 x i64>*
  %172 = load <4 x i64>, <4 x i64>* %171, align 1, !tbaa !14
  %173 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %87, <4 x i64> %172, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %174 = icmp eq <4 x i64> %172, %75
  %175 = select <4 x i1> %174, <4 x i64> %173, <4 x i64> %167
  %176 = shl i64 %118, 2
  %177 = or i64 %176, 28
  %178 = getelementptr inbounds i64, i64* %86, i64 %177
  %179 = bitcast i64* %178 to <4 x i64>*
  %180 = load <4 x i64>, <4 x i64>* %179, align 1, !tbaa !14
  %181 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %87, <4 x i64> %180, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %182 = icmp eq <4 x i64> %180, %75
  %183 = select <4 x i1> %182, <4 x i64> %181, <4 x i64> %175
  %184 = add nuw nsw i64 %118, 8
  %185 = add i64 %120, -8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %94, label %117, !llvm.loop !22

187:                                              ; preds = %61, %113, %37
  %188 = phi i8 [ %30, %37 ], [ 0, %113 ], [ %30, %61 ]
  %189 = phi <4 x i64> [ %29, %37 ], [ %114, %113 ], [ %68, %61 ]
  %190 = add nuw nsw i64 %28, 1
  %191 = icmp eq i64 %190, %11
  br i1 %191, label %12, label %27, !llvm.loop !23
}

; Function Attrs: nofree nounwind readonly
declare <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64>, i8*, <4 x i64>, <4 x i64>, i8 immarg) #4

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i64 @uint64_t_secure_load(i64* readonly %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #5 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = load i64, i64* %0, align 8, !tbaa !24
  br label %10

8:                                                ; preds = %4
  %9 = tail call i64 @uint64_t_secure_load_impl(i64* %0, %struct.ds_base* %1, i32 %2, i32 undef)
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i64 [ %7, %6 ], [ %9, %8 ]
  ret i64 %11
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @uint64_t_secure_load_sensitive(i64* readonly %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #6 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 0
  %8 = load i8*, i8** %7, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 4
  %10 = load i32, i32* %9, align 8, !tbaa !12
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %8, i64 %11
  %13 = bitcast i8* %12 to i64*
  %14 = load volatile i64, i64* %13, align 8, !tbaa !24
  br label %17

15:                                               ; preds = %4
  %16 = tail call i64 @uint64_t_secure_load_impl(i64* %0, %struct.ds_base* %1, i32 %2, i32 undef)
  br label %17

17:                                               ; preds = %15, %6
  %18 = phi i64 [ %14, %6 ], [ %16, %15 ]
  ret i64 %18
}

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @uint32_t_secure_load(i32* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #5 {
  %5 = bitcast i32* %0 to i64*
  %6 = icmp eq i32 %3, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = load i64, i64* %5, align 8, !tbaa !24
  br label %11

9:                                                ; preds = %4
  %10 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef) #14
  br label %11

11:                                               ; preds = %7, %9
  %12 = phi i64 [ %8, %7 ], [ %10, %9 ]
  %13 = trunc i64 %12 to i32
  ret i32 %13
}

; Function Attrs: nofree nounwind readonly uwtable
define dso_local zeroext i16 @uint16_t_secure_load(i16* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #5 {
  %5 = bitcast i16* %0 to i64*
  %6 = icmp eq i32 %3, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = load i64, i64* %5, align 8, !tbaa !24
  br label %11

9:                                                ; preds = %4
  %10 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef) #14
  br label %11

11:                                               ; preds = %7, %9
  %12 = phi i64 [ %8, %7 ], [ %10, %9 ]
  %13 = trunc i64 %12 to i16
  ret i16 %13
}

; Function Attrs: nofree nounwind readonly uwtable
define dso_local zeroext i8 @uint8_t_secure_load(i8* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #5 {
  %5 = bitcast i8* %0 to i64*
  %6 = icmp eq i32 %3, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = load i64, i64* %5, align 8, !tbaa !24
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
define dso_local i32 @uint32_t_secure_load_sensitive(i32* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #6 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 0
  %8 = load i8*, i8** %7, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 4
  %10 = load i32, i32* %9, align 8, !tbaa !12
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %8, i64 %11
  %13 = bitcast i8* %12 to i64*
  %14 = load volatile i64, i64* %13, align 8, !tbaa !24
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
define dso_local zeroext i16 @uint16_t_secure_load_sensitive(i16* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #6 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 0
  %8 = load i8*, i8** %7, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 4
  %10 = load i32, i32* %9, align 8, !tbaa !12
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %8, i64 %11
  %13 = bitcast i8* %12 to i64*
  %14 = load volatile i64, i64* %13, align 8, !tbaa !24
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
define dso_local zeroext i8 @uint8_t_secure_load_sensitive(i8* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #6 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 0
  %8 = load i8*, i8** %7, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 4
  %10 = load i32, i32* %9, align 8, !tbaa !12
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %8, i64 %11
  %13 = bitcast i8* %12 to i64*
  %14 = load volatile i64, i64* %13, align 8, !tbaa !24
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

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @uint64_t_secure_store_impl(i64 %0, i64* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #7 {
  %6 = ptrtoint i64* %1 to i64
  %7 = shl i64 %6, 3
  %8 = and i64 %7, 56
  %9 = shl i64 %0, %8
  %10 = insertelement <4 x i64> undef, i64 %9, i32 0
  %11 = shufflevector <4 x i64> %10, <4 x i64> poison, <4 x i32> zeroinitializer
  %12 = and i64 %6, -8
  %13 = insertelement <4 x i64> undef, i64 %12, i32 0
  %14 = shufflevector <4 x i64> %13, <4 x i64> poison, <4 x i32> zeroinitializer
  %15 = shl nsw i64 -1, %8
  %16 = insertelement <4 x i64> undef, i64 %15, i32 0
  %17 = shufflevector <4 x i64> %16, <4 x i64> poison, <4 x i32> zeroinitializer
  %18 = bitcast <4 x i64> %11 to <32 x i8>
  %19 = icmp eq i32 %3, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %5
  %21 = zext i32 %3 to i64
  br label %23

22:                                               ; preds = %48, %5
  ret void

23:                                               ; preds = %20, %48
  %24 = phi i64 [ 0, %20 ], [ %49, %48 ]
  %25 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %24, i32 0
  %26 = load i8*, i8** %25, align 8, !tbaa !11
  %27 = ptrtoint i8* %26 to i64
  %28 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %24, i32 4
  %29 = load i32, i32* %28, align 8, !tbaa !12
  %30 = zext i32 %29 to i64
  %31 = add i64 %30, %27
  %32 = and i64 %31, -32
  %33 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %24, i32 5
  %34 = inttoptr i64 %32 to i8*
  %35 = load i32, i32* %33, align 4, !tbaa !13
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %26, i64 %36
  %38 = icmp ult i8* %37, %34
  br i1 %38, label %48, label %39

39:                                               ; preds = %23
  %40 = insertelement <4 x i64> undef, i64 %32, i32 0
  %41 = insertelement <2 x i64> poison, i64 %32, i32 0
  %42 = shufflevector <2 x i64> %41, <2 x i64> poison, <2 x i32> zeroinitializer
  %43 = or <2 x i64> %42, <i64 8, i64 16>
  %44 = shufflevector <2 x i64> %43, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %45 = shufflevector <4 x i64> %40, <4 x i64> %44, <4 x i32> <i32 0, i32 4, i32 5, i32 undef>
  %46 = or i64 %32, 24
  %47 = insertelement <4 x i64> %45, i64 %46, i32 3
  br label %51

48:                                               ; preds = %51, %23
  %49 = add nuw nsw i64 %24, 1
  %50 = icmp eq i64 %49, %21
  br i1 %50, label %22, label %23, !llvm.loop !26

51:                                               ; preds = %39, %51
  %52 = phi i8* [ %61, %51 ], [ %34, %39 ]
  %53 = phi <4 x i64> [ %60, %51 ], [ %47, %39 ]
  %54 = icmp eq <4 x i64> %53, %14
  %55 = select <4 x i1> %54, <4 x i64> %17, <4 x i64> zeroinitializer
  %56 = bitcast i8* %52 to <32 x i8>*
  %57 = load <32 x i8>, <32 x i8>* %56, align 1, !tbaa !14
  %58 = bitcast <4 x i64> %55 to <32 x i8>
  %59 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %57, <32 x i8> %18, <32 x i8> %58) #14
  store <32 x i8> %59, <32 x i8>* %56, align 1, !tbaa !14
  %60 = add <4 x i64> %53, <i64 32, i64 32, i64 32, i64 32>
  %61 = getelementptr inbounds i8, i8* %52, i64 32
  %62 = load i8*, i8** %25, align 8, !tbaa !11
  %63 = load i32, i32* %33, align 4, !tbaa !13
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = icmp ugt i8* %61, %65
  br i1 %66, label %48, label %51, !llvm.loop !27
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @uint32_t_secure_store_impl(i32 %0, i32* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #7 {
  %6 = zext i32 %0 to i64
  %7 = ptrtoint i32* %1 to i64
  %8 = shl i64 %7, 3
  %9 = and i64 %8, 56
  %10 = shl i64 %6, %9
  %11 = insertelement <4 x i64> undef, i64 %10, i32 0
  %12 = shufflevector <4 x i64> %11, <4 x i64> poison, <4 x i32> zeroinitializer
  %13 = and i64 %7, -8
  %14 = insertelement <4 x i64> undef, i64 %13, i32 0
  %15 = shufflevector <4 x i64> %14, <4 x i64> poison, <4 x i32> zeroinitializer
  %16 = shl i64 4294967295, %9
  %17 = insertelement <4 x i64> undef, i64 %16, i32 0
  %18 = shufflevector <4 x i64> %17, <4 x i64> poison, <4 x i32> zeroinitializer
  %19 = bitcast <4 x i64> %12 to <32 x i8>
  %20 = icmp eq i32 %3, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = zext i32 %3 to i64
  br label %24

23:                                               ; preds = %49, %5
  ret void

24:                                               ; preds = %21, %49
  %25 = phi i64 [ 0, %21 ], [ %50, %49 ]
  %26 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %25, i32 0
  %27 = load i8*, i8** %26, align 8, !tbaa !11
  %28 = ptrtoint i8* %27 to i64
  %29 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %25, i32 4
  %30 = load i32, i32* %29, align 8, !tbaa !12
  %31 = zext i32 %30 to i64
  %32 = add i64 %31, %28
  %33 = and i64 %32, -32
  %34 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %25, i32 5
  %35 = inttoptr i64 %33 to i8*
  %36 = load i32, i32* %34, align 4, !tbaa !13
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %27, i64 %37
  %39 = icmp ult i8* %38, %35
  br i1 %39, label %49, label %40

40:                                               ; preds = %24
  %41 = insertelement <4 x i64> undef, i64 %33, i32 0
  %42 = insertelement <2 x i64> poison, i64 %33, i32 0
  %43 = shufflevector <2 x i64> %42, <2 x i64> poison, <2 x i32> zeroinitializer
  %44 = or <2 x i64> %43, <i64 8, i64 16>
  %45 = shufflevector <2 x i64> %44, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %46 = shufflevector <4 x i64> %41, <4 x i64> %45, <4 x i32> <i32 0, i32 4, i32 5, i32 undef>
  %47 = or i64 %33, 24
  %48 = insertelement <4 x i64> %46, i64 %47, i32 3
  br label %52

49:                                               ; preds = %52, %24
  %50 = add nuw nsw i64 %25, 1
  %51 = icmp eq i64 %50, %22
  br i1 %51, label %23, label %24, !llvm.loop !28

52:                                               ; preds = %40, %52
  %53 = phi i8* [ %62, %52 ], [ %35, %40 ]
  %54 = phi <4 x i64> [ %61, %52 ], [ %48, %40 ]
  %55 = icmp eq <4 x i64> %54, %15
  %56 = select <4 x i1> %55, <4 x i64> %18, <4 x i64> zeroinitializer
  %57 = bitcast i8* %53 to <32 x i8>*
  %58 = load <32 x i8>, <32 x i8>* %57, align 1, !tbaa !14
  %59 = bitcast <4 x i64> %56 to <32 x i8>
  %60 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %58, <32 x i8> %19, <32 x i8> %59) #14
  store <32 x i8> %60, <32 x i8>* %57, align 1, !tbaa !14
  %61 = add <4 x i64> %54, <i64 32, i64 32, i64 32, i64 32>
  %62 = getelementptr inbounds i8, i8* %53, i64 32
  %63 = load i8*, i8** %26, align 8, !tbaa !11
  %64 = load i32, i32* %34, align 4, !tbaa !13
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = icmp ugt i8* %62, %66
  br i1 %67, label %49, label %52, !llvm.loop !29
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @uint16_t_secure_store_impl(i16 zeroext %0, i16* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #7 {
  %6 = zext i16 %0 to i64
  %7 = ptrtoint i16* %1 to i64
  %8 = shl i64 %7, 3
  %9 = and i64 %8, 56
  %10 = shl i64 %6, %9
  %11 = insertelement <4 x i64> undef, i64 %10, i32 0
  %12 = shufflevector <4 x i64> %11, <4 x i64> poison, <4 x i32> zeroinitializer
  %13 = and i64 %7, -8
  %14 = insertelement <4 x i64> undef, i64 %13, i32 0
  %15 = shufflevector <4 x i64> %14, <4 x i64> poison, <4 x i32> zeroinitializer
  %16 = shl i64 65535, %9
  %17 = insertelement <4 x i64> undef, i64 %16, i32 0
  %18 = shufflevector <4 x i64> %17, <4 x i64> poison, <4 x i32> zeroinitializer
  %19 = bitcast <4 x i64> %12 to <32 x i8>
  %20 = icmp eq i32 %3, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = zext i32 %3 to i64
  br label %24

23:                                               ; preds = %49, %5
  ret void

24:                                               ; preds = %21, %49
  %25 = phi i64 [ 0, %21 ], [ %50, %49 ]
  %26 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %25, i32 0
  %27 = load i8*, i8** %26, align 8, !tbaa !11
  %28 = ptrtoint i8* %27 to i64
  %29 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %25, i32 4
  %30 = load i32, i32* %29, align 8, !tbaa !12
  %31 = zext i32 %30 to i64
  %32 = add i64 %31, %28
  %33 = and i64 %32, -32
  %34 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %25, i32 5
  %35 = inttoptr i64 %33 to i8*
  %36 = load i32, i32* %34, align 4, !tbaa !13
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %27, i64 %37
  %39 = icmp ult i8* %38, %35
  br i1 %39, label %49, label %40

40:                                               ; preds = %24
  %41 = insertelement <4 x i64> undef, i64 %33, i32 0
  %42 = insertelement <2 x i64> poison, i64 %33, i32 0
  %43 = shufflevector <2 x i64> %42, <2 x i64> poison, <2 x i32> zeroinitializer
  %44 = or <2 x i64> %43, <i64 8, i64 16>
  %45 = shufflevector <2 x i64> %44, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %46 = shufflevector <4 x i64> %41, <4 x i64> %45, <4 x i32> <i32 0, i32 4, i32 5, i32 undef>
  %47 = or i64 %33, 24
  %48 = insertelement <4 x i64> %46, i64 %47, i32 3
  br label %52

49:                                               ; preds = %52, %24
  %50 = add nuw nsw i64 %25, 1
  %51 = icmp eq i64 %50, %22
  br i1 %51, label %23, label %24, !llvm.loop !30

52:                                               ; preds = %40, %52
  %53 = phi i8* [ %62, %52 ], [ %35, %40 ]
  %54 = phi <4 x i64> [ %61, %52 ], [ %48, %40 ]
  %55 = icmp eq <4 x i64> %54, %15
  %56 = select <4 x i1> %55, <4 x i64> %18, <4 x i64> zeroinitializer
  %57 = bitcast i8* %53 to <32 x i8>*
  %58 = load <32 x i8>, <32 x i8>* %57, align 1, !tbaa !14
  %59 = bitcast <4 x i64> %56 to <32 x i8>
  %60 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %58, <32 x i8> %19, <32 x i8> %59) #14
  store <32 x i8> %60, <32 x i8>* %57, align 1, !tbaa !14
  %61 = add <4 x i64> %54, <i64 32, i64 32, i64 32, i64 32>
  %62 = getelementptr inbounds i8, i8* %53, i64 32
  %63 = load i8*, i8** %26, align 8, !tbaa !11
  %64 = load i32, i32* %34, align 4, !tbaa !13
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = icmp ugt i8* %62, %66
  br i1 %67, label %49, label %52, !llvm.loop !31
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @uint8_t_secure_store_impl(i8 zeroext %0, i8* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #7 {
  %6 = zext i8 %0 to i64
  %7 = ptrtoint i8* %1 to i64
  %8 = shl i64 %7, 3
  %9 = and i64 %8, 56
  %10 = shl nuw i64 %6, %9
  %11 = insertelement <4 x i64> undef, i64 %10, i32 0
  %12 = shufflevector <4 x i64> %11, <4 x i64> poison, <4 x i32> zeroinitializer
  %13 = and i64 %7, -8
  %14 = insertelement <4 x i64> undef, i64 %13, i32 0
  %15 = shufflevector <4 x i64> %14, <4 x i64> poison, <4 x i32> zeroinitializer
  %16 = shl nuw i64 255, %9
  %17 = insertelement <4 x i64> undef, i64 %16, i32 0
  %18 = shufflevector <4 x i64> %17, <4 x i64> poison, <4 x i32> zeroinitializer
  %19 = bitcast <4 x i64> %12 to <32 x i8>
  %20 = icmp eq i32 %3, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = zext i32 %3 to i64
  br label %24

23:                                               ; preds = %49, %5
  ret void

24:                                               ; preds = %21, %49
  %25 = phi i64 [ 0, %21 ], [ %50, %49 ]
  %26 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %25, i32 0
  %27 = load i8*, i8** %26, align 8, !tbaa !11
  %28 = ptrtoint i8* %27 to i64
  %29 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %25, i32 4
  %30 = load i32, i32* %29, align 8, !tbaa !12
  %31 = zext i32 %30 to i64
  %32 = add i64 %31, %28
  %33 = and i64 %32, -32
  %34 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %25, i32 5
  %35 = inttoptr i64 %33 to i8*
  %36 = load i32, i32* %34, align 4, !tbaa !13
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %27, i64 %37
  %39 = icmp ult i8* %38, %35
  br i1 %39, label %49, label %40

40:                                               ; preds = %24
  %41 = insertelement <4 x i64> undef, i64 %33, i32 0
  %42 = insertelement <2 x i64> poison, i64 %33, i32 0
  %43 = shufflevector <2 x i64> %42, <2 x i64> poison, <2 x i32> zeroinitializer
  %44 = or <2 x i64> %43, <i64 8, i64 16>
  %45 = shufflevector <2 x i64> %44, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %46 = shufflevector <4 x i64> %41, <4 x i64> %45, <4 x i32> <i32 0, i32 4, i32 5, i32 undef>
  %47 = or i64 %33, 24
  %48 = insertelement <4 x i64> %46, i64 %47, i32 3
  br label %52

49:                                               ; preds = %52, %24
  %50 = add nuw nsw i64 %25, 1
  %51 = icmp eq i64 %50, %22
  br i1 %51, label %23, label %24, !llvm.loop !32

52:                                               ; preds = %40, %52
  %53 = phi i8* [ %62, %52 ], [ %35, %40 ]
  %54 = phi <4 x i64> [ %61, %52 ], [ %48, %40 ]
  %55 = icmp eq <4 x i64> %54, %15
  %56 = select <4 x i1> %55, <4 x i64> %18, <4 x i64> zeroinitializer
  %57 = bitcast i8* %53 to <32 x i8>*
  %58 = load <32 x i8>, <32 x i8>* %57, align 1, !tbaa !14
  %59 = bitcast <4 x i64> %56 to <32 x i8>
  %60 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %58, <32 x i8> %19, <32 x i8> %59) #14
  store <32 x i8> %60, <32 x i8>* %57, align 1, !tbaa !14
  %61 = add <4 x i64> %54, <i64 32, i64 32, i64 32, i64 32>
  %62 = getelementptr inbounds i8, i8* %53, i64 32
  %63 = load i8*, i8** %26, align 8, !tbaa !11
  %64 = load i32, i32* %34, align 4, !tbaa !13
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = icmp ugt i8* %62, %66
  br i1 %67, label %49, label %52, !llvm.loop !33
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @uint64_t_secure_store(i64 %0, i64* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #8 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = icmp eq i64* %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  store i64 %0, i64* %1, align 8, !tbaa !24
  br label %11

10:                                               ; preds = %5
  tail call void @uint64_t_secure_store_impl(i64 %0, i64* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %11

11:                                               ; preds = %7, %9, %10
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @uint32_t_secure_store(i32 %0, i32* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #8 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = icmp eq i32* %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  store i32 %0, i32* %1, align 4, !tbaa !34
  br label %11

10:                                               ; preds = %5
  tail call void @uint32_t_secure_store_impl(i32 %0, i32* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %11

11:                                               ; preds = %7, %9, %10
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @uint16_t_secure_store(i16 zeroext %0, i16* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #8 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = icmp eq i16* %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  store i16 %0, i16* %1, align 2, !tbaa !35
  br label %11

10:                                               ; preds = %5
  tail call void @uint16_t_secure_store_impl(i16 zeroext %0, i16* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %11

11:                                               ; preds = %7, %9, %10
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @uint8_t_secure_store(i8 zeroext %0, i8* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #8 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = icmp eq i8* %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  store i8 %0, i8* %1, align 1, !tbaa !14
  br label %11

10:                                               ; preds = %5
  tail call void @uint8_t_secure_store_impl(i8 zeroext %0, i8* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %11

11:                                               ; preds = %7, %9, %10
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @uint64_t_secure_store_sensitive(i64 %0, i64* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #6 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %19

7:                                                ; preds = %5
  %8 = icmp eq i64* %1, null
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 0
  %10 = load i8*, i8** %9, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 4
  %12 = load i32, i32* %11, align 8, !tbaa !12
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  %15 = bitcast i8* %14 to i64*
  br i1 %8, label %17, label %16

16:                                               ; preds = %7
  store volatile i64 %0, i64* %15, align 8, !tbaa !24
  br label %20

17:                                               ; preds = %7
  %18 = load volatile i64, i64* %15, align 8, !tbaa !24
  br label %20

19:                                               ; preds = %5
  tail call void @uint64_t_secure_store_impl(i64 %0, i64* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %20

20:                                               ; preds = %16, %17, %19
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @uint32_t_secure_store_sensitive(i32 %0, i32* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #6 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %19

7:                                                ; preds = %5
  %8 = icmp eq i32* %1, null
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 0
  %10 = load i8*, i8** %9, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 4
  %12 = load i32, i32* %11, align 8, !tbaa !12
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  %15 = bitcast i8* %14 to i32*
  br i1 %8, label %17, label %16

16:                                               ; preds = %7
  store volatile i32 %0, i32* %15, align 4, !tbaa !34
  br label %20

17:                                               ; preds = %7
  %18 = load volatile i32, i32* %15, align 4, !tbaa !34
  br label %20

19:                                               ; preds = %5
  tail call void @uint32_t_secure_store_impl(i32 %0, i32* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %20

20:                                               ; preds = %16, %17, %19
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @uint16_t_secure_store_sensitive(i16 zeroext %0, i16* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #6 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %19

7:                                                ; preds = %5
  %8 = icmp eq i16* %1, null
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 0
  %10 = load i8*, i8** %9, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 4
  %12 = load i32, i32* %11, align 8, !tbaa !12
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  %15 = bitcast i8* %14 to i16*
  br i1 %8, label %17, label %16

16:                                               ; preds = %7
  store volatile i16 %0, i16* %15, align 2, !tbaa !35
  br label %20

17:                                               ; preds = %7
  %18 = load volatile i16, i16* %15, align 2, !tbaa !35
  br label %20

19:                                               ; preds = %5
  tail call void @uint16_t_secure_store_impl(i16 zeroext %0, i16* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %20

20:                                               ; preds = %16, %17, %19
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @uint8_t_secure_store_sensitive(i8 zeroext %0, i8* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #6 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %18

7:                                                ; preds = %5
  %8 = icmp eq i8* %1, null
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 0
  %10 = load i8*, i8** %9, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 4
  %12 = load i32, i32* %11, align 8, !tbaa !12
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  br i1 %8, label %16, label %15

15:                                               ; preds = %7
  store volatile i8 %0, i8* %14, align 1, !tbaa !14
  br label %19

16:                                               ; preds = %7
  %17 = load volatile i8, i8* %14, align 1, !tbaa !14
  br label %19

18:                                               ; preds = %5
  tail call void @uint8_t_secure_store_impl(i8 zeroext %0, i8* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %19

19:                                               ; preds = %15, %16, %18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @branch_id(i8* nocapture %0) local_unnamed_addr #9 {
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #6 {
  %1 = alloca i64, align 8
  %2 = bitcast i64* %1 to [2 x i32]*
  %3 = alloca [1 x %struct.ds_base], align 8
  %4 = alloca [1 x %struct.ds_base], align 8
  %5 = alloca [1 x %struct.ds_base], align 8
  %6 = alloca [1 x %struct.ds_base], align 8
  %7 = alloca [1 x %struct.ds_base], align 8
  %8 = alloca [1 x %struct.ds_base], align 8
  %9 = alloca [1 x %struct.ds_base], align 8
  %10 = alloca [1 x %struct.ds_base], align 8
  %11 = alloca [1 x %struct.ds_base], align 8
  %12 = alloca [1 x %struct.ds_base], align 8
  %13 = alloca [1 x %struct.ds_base], align 8
  %14 = alloca [1 x %struct.ds_base], align 8
  %15 = alloca [1 x %struct.ds_base], align 8
  %16 = alloca [1 x %struct.ds_base], align 8
  %17 = alloca [1 x %struct.ds_base], align 8
  %18 = alloca [1 x %struct.ds_base], align 8
  %19 = alloca [1 x %struct.ds_base], align 8
  %20 = alloca [1 x %struct.ds_base], align 8
  %21 = alloca [1 x %struct.ds_base], align 8
  %22 = alloca [1 x %struct.ds_base], align 8
  %23 = alloca [1 x %struct.ds_base], align 8
  %24 = alloca [1 x %struct.ds_base], align 8
  %25 = alloca [1 x %struct.ds_base], align 8
  %26 = alloca [1 x %struct.ds_base], align 8
  %27 = alloca [1 x %struct.ds_base], align 8
  %28 = alloca [1 x %struct.ds_base], align 8
  %29 = alloca [1 x %struct.ds_base], align 8
  %30 = alloca [1 x %struct.ds_base], align 8
  %31 = alloca [1 x %struct.ds_base], align 8
  %32 = alloca [1 x %struct.ds_base], align 8
  %33 = alloca [1 x %struct.ds_base], align 8
  %34 = alloca [1 x %struct.ds_base], align 8
  %35 = alloca [1 x %struct.ds_base], align 8
  %36 = alloca [1 x %struct.ds_base], align 8
  %37 = alloca [1 x %struct.ds_base], align 8
  %38 = alloca [1 x %struct.ds_base], align 8
  %39 = bitcast i64* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %39) #14
  %40 = tail call i64 @read(i32 0, i8* bitcast ([2 x i32]* @in to i8*), i64 8) #14
  %41 = load i64, i64* bitcast ([2 x i32]* @in to i64*), align 8, !tbaa !24
  %42 = trunc i64 %41 to i32
  %43 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %44 = urem i32 %42, 10
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %45
  %47 = bitcast i32* %46 to i64*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([10 x i32]* @count to i8*), i8 0, i64 40, i1 false)
  %48 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %47, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %49 = trunc i64 %48 to i32
  %50 = add nsw i32 %49, 1
  %51 = bitcast [1 x %struct.ds_base]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %51, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %52 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %3, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %50, i32* nonnull %46, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %53 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %54 = trunc i64 %53 to i32
  %55 = urem i32 %54, 10
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %56
  %58 = bitcast i32* %57 to i64*
  %59 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %58, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %60 = trunc i64 %59 to i32
  %61 = add nsw i32 %60, 1
  %62 = bitcast [1 x %struct.ds_base]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %62, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %63 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %4, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %61, i32* nonnull %57, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %64 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %65 = trunc i64 %64 to i32
  %66 = load i64, i64* bitcast ([10 x i32]* @count to i64*), align 16, !tbaa !24
  %67 = trunc i64 %66 to i32
  %68 = add nsw i32 %67, %65
  store i32 %68, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 1), align 4, !tbaa !34
  %69 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 2) to i64*), align 8, !tbaa !24
  %70 = trunc i64 %69 to i32
  %71 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %72 = trunc i64 %71 to i32
  %73 = add nsw i32 %72, %70
  store i32 %73, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 2), align 8, !tbaa !34
  %74 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 3) to i64*), align 8, !tbaa !24
  %75 = trunc i64 %74 to i32
  %76 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 2) to i64*), align 8, !tbaa !24
  %77 = trunc i64 %76 to i32
  %78 = add nsw i32 %77, %75
  store i32 %78, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 3), align 4, !tbaa !34
  %79 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 4) to i64*), align 16, !tbaa !24
  %80 = trunc i64 %79 to i32
  %81 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 3) to i64*), align 8, !tbaa !24
  %82 = trunc i64 %81 to i32
  %83 = add nsw i32 %82, %80
  store i32 %83, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 4), align 16, !tbaa !34
  %84 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 5) to i64*), align 8, !tbaa !24
  %85 = trunc i64 %84 to i32
  %86 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 4) to i64*), align 16, !tbaa !24
  %87 = trunc i64 %86 to i32
  %88 = add nsw i32 %87, %85
  store i32 %88, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 5), align 4, !tbaa !34
  %89 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 6) to i64*), align 8, !tbaa !24
  %90 = trunc i64 %89 to i32
  %91 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 5) to i64*), align 8, !tbaa !24
  %92 = trunc i64 %91 to i32
  %93 = add nsw i32 %92, %90
  store i32 %93, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 6), align 8, !tbaa !34
  %94 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 7) to i64*), align 8, !tbaa !24
  %95 = trunc i64 %94 to i32
  %96 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 6) to i64*), align 8, !tbaa !24
  %97 = trunc i64 %96 to i32
  %98 = add nsw i32 %97, %95
  store i32 %98, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 7), align 4, !tbaa !34
  %99 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 8) to i64*), align 16, !tbaa !24
  %100 = trunc i64 %99 to i32
  %101 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 7) to i64*), align 8, !tbaa !24
  %102 = trunc i64 %101 to i32
  %103 = add nsw i32 %102, %100
  store i32 %103, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 8), align 16, !tbaa !34
  %104 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 9) to i64*), align 8, !tbaa !24
  %105 = trunc i64 %104 to i32
  %106 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 8) to i64*), align 16, !tbaa !24
  %107 = trunc i64 %106 to i32
  %108 = add nsw i32 %107, %105
  store i32 %108, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 9), align 4, !tbaa !34
  %109 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %110 = trunc i64 %109 to i32
  %111 = urem i32 %110, 10
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %112
  %114 = bitcast i32* %113 to i64*
  %115 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %114, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %116 = shl i64 %115, 32
  %117 = add i64 %116, -4294967296
  %118 = ashr exact i64 %117, 32
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 %118
  %120 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %5, i64 0, i64 0
  %121 = bitcast [1 x %struct.ds_base]* %5 to i64**
  store i64* %1, i64** %121, align 8, !tbaa !11
  %122 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %5, i64 0, i64 0, i32 1
  store i64* null, i64** %122, align 8, !tbaa !18
  %123 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %5, i64 0, i64 0, i32 2
  store i32 2, i32* %123, align 8, !tbaa !17
  %124 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %5, i64 0, i64 0, i32 3
  store i8 1, i8* %124, align 4, !tbaa !3
  %125 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %5, i64 0, i64 0, i32 4
  store i32 0, i32* %125, align 8, !tbaa !12
  %126 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %5, i64 0, i64 0, i32 5
  store i32 4, i32* %126, align 4, !tbaa !13
  call void @uint32_t_secure_store_impl(i32 %110, i32* nonnull %119, %struct.ds_base* nonnull %120, i32 1, i32 undef) #14
  %127 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %128 = trunc i64 %127 to i32
  %129 = urem i32 %128, 10
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %130
  %132 = bitcast i32* %131 to i64*
  %133 = call i64 @uint64_t_secure_load_impl(i64* nonnull %132, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %134 = trunc i64 %133 to i32
  %135 = add nsw i32 %134, -1
  %136 = bitcast [1 x %struct.ds_base]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %136, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %137 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %6, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %135, i32* nonnull %131, %struct.ds_base* nonnull %137, i32 1, i32 undef) #14
  %138 = load i64, i64* bitcast ([2 x i32]* @in to i64*), align 8, !tbaa !24
  %139 = trunc i64 %138 to i32
  %140 = urem i32 %139, 10
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %141
  %143 = bitcast i32* %142 to i64*
  %144 = call i64 @uint64_t_secure_load_impl(i64* nonnull %143, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %145 = shl i64 %144, 32
  %146 = add i64 %145, -4294967296
  %147 = ashr exact i64 %146, 32
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 %147
  %149 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %7, i64 0, i64 0
  %150 = bitcast [1 x %struct.ds_base]* %7 to i64**
  store i64* %1, i64** %150, align 8, !tbaa !11
  %151 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %7, i64 0, i64 0, i32 1
  store i64* null, i64** %151, align 8, !tbaa !18
  %152 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %7, i64 0, i64 0, i32 2
  store i32 2, i32* %152, align 8, !tbaa !17
  %153 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %7, i64 0, i64 0, i32 3
  store i8 1, i8* %153, align 4, !tbaa !3
  %154 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %7, i64 0, i64 0, i32 4
  store i32 0, i32* %154, align 8, !tbaa !12
  %155 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %7, i64 0, i64 0, i32 5
  store i32 4, i32* %155, align 4, !tbaa !13
  call void @uint32_t_secure_store_impl(i32 %139, i32* nonnull %148, %struct.ds_base* nonnull %149, i32 1, i32 undef) #14
  %156 = load i64, i64* bitcast ([2 x i32]* @in to i64*), align 8, !tbaa !24
  %157 = trunc i64 %156 to i32
  %158 = urem i32 %157, 10
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %159
  %161 = bitcast i32* %160 to i64*
  %162 = call i64 @uint64_t_secure_load_impl(i64* nonnull %161, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %163 = trunc i64 %162 to i32
  %164 = add nsw i32 %163, -1
  %165 = bitcast [1 x %struct.ds_base]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %165, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %166 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %8, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %164, i32* nonnull %160, %struct.ds_base* nonnull %166, i32 1, i32 undef) #14
  %167 = load i64, i64* %1, align 8, !tbaa !24
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 0), align 8, !tbaa !34
  %169 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %170 = bitcast i32* %169 to i64*
  %171 = load i64, i64* %170, align 8, !tbaa !24
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1), align 4, !tbaa !34
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([10 x i32]* @count to i8*), i8 0, i64 40, i1 false)
  %173 = load i64, i64* bitcast ([2 x i32]* @in to i64*), align 8, !tbaa !24
  %174 = trunc i64 %173 to i32
  %175 = udiv i32 %174, 10
  %176 = urem i32 %175, 10
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %177
  %179 = bitcast i32* %178 to i64*
  %180 = call i64 @uint64_t_secure_load_impl(i64* nonnull %179, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %181 = trunc i64 %180 to i32
  %182 = add nsw i32 %181, 1
  %183 = bitcast [1 x %struct.ds_base]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %183, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %184 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %9, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %182, i32* nonnull %178, %struct.ds_base* nonnull %184, i32 1, i32 undef) #14
  %185 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %186 = trunc i64 %185 to i32
  %187 = udiv i32 %186, 10
  %188 = urem i32 %187, 10
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %189
  %191 = bitcast i32* %190 to i64*
  %192 = call i64 @uint64_t_secure_load_impl(i64* nonnull %191, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %193 = trunc i64 %192 to i32
  %194 = add nsw i32 %193, 1
  %195 = bitcast [1 x %struct.ds_base]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %195, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %196 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %10, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %194, i32* nonnull %190, %struct.ds_base* nonnull %196, i32 1, i32 undef) #14
  %197 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %198 = trunc i64 %197 to i32
  %199 = load i64, i64* bitcast ([10 x i32]* @count to i64*), align 16, !tbaa !24
  %200 = trunc i64 %199 to i32
  %201 = add nsw i32 %200, %198
  store i32 %201, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 1), align 4, !tbaa !34
  %202 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 2) to i64*), align 8, !tbaa !24
  %203 = trunc i64 %202 to i32
  %204 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %205 = trunc i64 %204 to i32
  %206 = add nsw i32 %205, %203
  store i32 %206, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 2), align 8, !tbaa !34
  %207 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 3) to i64*), align 8, !tbaa !24
  %208 = trunc i64 %207 to i32
  %209 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 2) to i64*), align 8, !tbaa !24
  %210 = trunc i64 %209 to i32
  %211 = add nsw i32 %210, %208
  store i32 %211, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 3), align 4, !tbaa !34
  %212 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 4) to i64*), align 16, !tbaa !24
  %213 = trunc i64 %212 to i32
  %214 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 3) to i64*), align 8, !tbaa !24
  %215 = trunc i64 %214 to i32
  %216 = add nsw i32 %215, %213
  store i32 %216, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 4), align 16, !tbaa !34
  %217 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 5) to i64*), align 8, !tbaa !24
  %218 = trunc i64 %217 to i32
  %219 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 4) to i64*), align 16, !tbaa !24
  %220 = trunc i64 %219 to i32
  %221 = add nsw i32 %220, %218
  store i32 %221, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 5), align 4, !tbaa !34
  %222 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 6) to i64*), align 8, !tbaa !24
  %223 = trunc i64 %222 to i32
  %224 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 5) to i64*), align 8, !tbaa !24
  %225 = trunc i64 %224 to i32
  %226 = add nsw i32 %225, %223
  store i32 %226, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 6), align 8, !tbaa !34
  %227 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 7) to i64*), align 8, !tbaa !24
  %228 = trunc i64 %227 to i32
  %229 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 6) to i64*), align 8, !tbaa !24
  %230 = trunc i64 %229 to i32
  %231 = add nsw i32 %230, %228
  store i32 %231, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 7), align 4, !tbaa !34
  %232 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 8) to i64*), align 16, !tbaa !24
  %233 = trunc i64 %232 to i32
  %234 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 7) to i64*), align 8, !tbaa !24
  %235 = trunc i64 %234 to i32
  %236 = add nsw i32 %235, %233
  store i32 %236, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 8), align 16, !tbaa !34
  %237 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 9) to i64*), align 8, !tbaa !24
  %238 = trunc i64 %237 to i32
  %239 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 8) to i64*), align 16, !tbaa !24
  %240 = trunc i64 %239 to i32
  %241 = add nsw i32 %240, %238
  store i32 %241, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 9), align 4, !tbaa !34
  %242 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %243 = trunc i64 %242 to i32
  %244 = udiv i32 %243, 10
  %245 = urem i32 %244, 10
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %246
  %248 = bitcast i32* %247 to i64*
  %249 = call i64 @uint64_t_secure_load_impl(i64* nonnull %248, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %250 = shl i64 %249, 32
  %251 = add i64 %250, -4294967296
  %252 = ashr exact i64 %251, 32
  %253 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 %252
  %254 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %11, i64 0, i64 0
  %255 = bitcast [1 x %struct.ds_base]* %11 to i64**
  store i64* %1, i64** %255, align 8, !tbaa !11
  %256 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %11, i64 0, i64 0, i32 1
  store i64* null, i64** %256, align 8, !tbaa !18
  %257 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %11, i64 0, i64 0, i32 2
  store i32 2, i32* %257, align 8, !tbaa !17
  %258 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %11, i64 0, i64 0, i32 3
  store i8 1, i8* %258, align 4, !tbaa !3
  %259 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %11, i64 0, i64 0, i32 4
  store i32 0, i32* %259, align 8, !tbaa !12
  %260 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %11, i64 0, i64 0, i32 5
  store i32 4, i32* %260, align 4, !tbaa !13
  call void @uint32_t_secure_store_impl(i32 %243, i32* nonnull %253, %struct.ds_base* nonnull %254, i32 1, i32 undef) #14
  %261 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %262 = trunc i64 %261 to i32
  %263 = udiv i32 %262, 10
  %264 = urem i32 %263, 10
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %265
  %267 = bitcast i32* %266 to i64*
  %268 = call i64 @uint64_t_secure_load_impl(i64* nonnull %267, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %269 = trunc i64 %268 to i32
  %270 = add nsw i32 %269, -1
  %271 = bitcast [1 x %struct.ds_base]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %271, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %272 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %12, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %270, i32* nonnull %266, %struct.ds_base* nonnull %272, i32 1, i32 undef) #14
  %273 = load i64, i64* bitcast ([2 x i32]* @in to i64*), align 8, !tbaa !24
  %274 = trunc i64 %273 to i32
  %275 = udiv i32 %274, 10
  %276 = urem i32 %275, 10
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %277
  %279 = bitcast i32* %278 to i64*
  %280 = call i64 @uint64_t_secure_load_impl(i64* nonnull %279, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %281 = shl i64 %280, 32
  %282 = add i64 %281, -4294967296
  %283 = ashr exact i64 %282, 32
  %284 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 %283
  %285 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %13, i64 0, i64 0
  %286 = bitcast [1 x %struct.ds_base]* %13 to i64**
  store i64* %1, i64** %286, align 8, !tbaa !11
  %287 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %13, i64 0, i64 0, i32 1
  store i64* null, i64** %287, align 8, !tbaa !18
  %288 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %13, i64 0, i64 0, i32 2
  store i32 2, i32* %288, align 8, !tbaa !17
  %289 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %13, i64 0, i64 0, i32 3
  store i8 1, i8* %289, align 4, !tbaa !3
  %290 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %13, i64 0, i64 0, i32 4
  store i32 0, i32* %290, align 8, !tbaa !12
  %291 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %13, i64 0, i64 0, i32 5
  store i32 4, i32* %291, align 4, !tbaa !13
  call void @uint32_t_secure_store_impl(i32 %274, i32* nonnull %284, %struct.ds_base* nonnull %285, i32 1, i32 undef) #14
  %292 = load i64, i64* bitcast ([2 x i32]* @in to i64*), align 8, !tbaa !24
  %293 = trunc i64 %292 to i32
  %294 = udiv i32 %293, 10
  %295 = urem i32 %294, 10
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %296
  %298 = bitcast i32* %297 to i64*
  %299 = call i64 @uint64_t_secure_load_impl(i64* nonnull %298, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %300 = trunc i64 %299 to i32
  %301 = add nsw i32 %300, -1
  %302 = bitcast [1 x %struct.ds_base]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %302, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %303 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %14, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %301, i32* nonnull %297, %struct.ds_base* nonnull %303, i32 1, i32 undef) #14
  %304 = load i64, i64* %1, align 8, !tbaa !24
  %305 = trunc i64 %304 to i32
  store i32 %305, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 0), align 8, !tbaa !34
  %306 = load i64, i64* %170, align 8, !tbaa !24
  %307 = trunc i64 %306 to i32
  store i32 %307, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1), align 4, !tbaa !34
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([10 x i32]* @count to i8*), i8 0, i64 40, i1 false)
  %308 = load i64, i64* bitcast ([2 x i32]* @in to i64*), align 8, !tbaa !24
  %309 = trunc i64 %308 to i32
  %310 = udiv i32 %309, 100
  %311 = urem i32 %310, 10
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %312
  %314 = bitcast i32* %313 to i64*
  %315 = call i64 @uint64_t_secure_load_impl(i64* nonnull %314, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %316 = trunc i64 %315 to i32
  %317 = add nsw i32 %316, 1
  %318 = bitcast [1 x %struct.ds_base]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %318, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %319 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %15, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %317, i32* nonnull %313, %struct.ds_base* nonnull %319, i32 1, i32 undef) #14
  %320 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %321 = trunc i64 %320 to i32
  %322 = udiv i32 %321, 100
  %323 = urem i32 %322, 10
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %324
  %326 = bitcast i32* %325 to i64*
  %327 = call i64 @uint64_t_secure_load_impl(i64* nonnull %326, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %328 = trunc i64 %327 to i32
  %329 = add nsw i32 %328, 1
  %330 = bitcast [1 x %struct.ds_base]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %330, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %331 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %16, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %329, i32* nonnull %325, %struct.ds_base* nonnull %331, i32 1, i32 undef) #14
  %332 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %333 = trunc i64 %332 to i32
  %334 = load i64, i64* bitcast ([10 x i32]* @count to i64*), align 16, !tbaa !24
  %335 = trunc i64 %334 to i32
  %336 = add nsw i32 %335, %333
  store i32 %336, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 1), align 4, !tbaa !34
  %337 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 2) to i64*), align 8, !tbaa !24
  %338 = trunc i64 %337 to i32
  %339 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %340 = trunc i64 %339 to i32
  %341 = add nsw i32 %340, %338
  store i32 %341, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 2), align 8, !tbaa !34
  %342 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 3) to i64*), align 8, !tbaa !24
  %343 = trunc i64 %342 to i32
  %344 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 2) to i64*), align 8, !tbaa !24
  %345 = trunc i64 %344 to i32
  %346 = add nsw i32 %345, %343
  store i32 %346, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 3), align 4, !tbaa !34
  %347 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 4) to i64*), align 16, !tbaa !24
  %348 = trunc i64 %347 to i32
  %349 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 3) to i64*), align 8, !tbaa !24
  %350 = trunc i64 %349 to i32
  %351 = add nsw i32 %350, %348
  store i32 %351, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 4), align 16, !tbaa !34
  %352 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 5) to i64*), align 8, !tbaa !24
  %353 = trunc i64 %352 to i32
  %354 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 4) to i64*), align 16, !tbaa !24
  %355 = trunc i64 %354 to i32
  %356 = add nsw i32 %355, %353
  store i32 %356, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 5), align 4, !tbaa !34
  %357 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 6) to i64*), align 8, !tbaa !24
  %358 = trunc i64 %357 to i32
  %359 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 5) to i64*), align 8, !tbaa !24
  %360 = trunc i64 %359 to i32
  %361 = add nsw i32 %360, %358
  store i32 %361, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 6), align 8, !tbaa !34
  %362 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 7) to i64*), align 8, !tbaa !24
  %363 = trunc i64 %362 to i32
  %364 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 6) to i64*), align 8, !tbaa !24
  %365 = trunc i64 %364 to i32
  %366 = add nsw i32 %365, %363
  store i32 %366, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 7), align 4, !tbaa !34
  %367 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 8) to i64*), align 16, !tbaa !24
  %368 = trunc i64 %367 to i32
  %369 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 7) to i64*), align 8, !tbaa !24
  %370 = trunc i64 %369 to i32
  %371 = add nsw i32 %370, %368
  store i32 %371, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 8), align 16, !tbaa !34
  %372 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 9) to i64*), align 8, !tbaa !24
  %373 = trunc i64 %372 to i32
  %374 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 8) to i64*), align 16, !tbaa !24
  %375 = trunc i64 %374 to i32
  %376 = add nsw i32 %375, %373
  store i32 %376, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 9), align 4, !tbaa !34
  %377 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %378 = trunc i64 %377 to i32
  %379 = udiv i32 %378, 100
  %380 = urem i32 %379, 10
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %381
  %383 = bitcast i32* %382 to i64*
  %384 = call i64 @uint64_t_secure_load_impl(i64* nonnull %383, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %385 = shl i64 %384, 32
  %386 = add i64 %385, -4294967296
  %387 = ashr exact i64 %386, 32
  %388 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 %387
  %389 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %17, i64 0, i64 0
  %390 = bitcast [1 x %struct.ds_base]* %17 to i64**
  store i64* %1, i64** %390, align 8, !tbaa !11
  %391 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %17, i64 0, i64 0, i32 1
  store i64* null, i64** %391, align 8, !tbaa !18
  %392 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %17, i64 0, i64 0, i32 2
  store i32 2, i32* %392, align 8, !tbaa !17
  %393 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %17, i64 0, i64 0, i32 3
  store i8 1, i8* %393, align 4, !tbaa !3
  %394 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %17, i64 0, i64 0, i32 4
  store i32 0, i32* %394, align 8, !tbaa !12
  %395 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %17, i64 0, i64 0, i32 5
  store i32 4, i32* %395, align 4, !tbaa !13
  call void @uint32_t_secure_store_impl(i32 %378, i32* nonnull %388, %struct.ds_base* nonnull %389, i32 1, i32 undef) #14
  %396 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %397 = trunc i64 %396 to i32
  %398 = udiv i32 %397, 100
  %399 = urem i32 %398, 10
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %400
  %402 = bitcast i32* %401 to i64*
  %403 = call i64 @uint64_t_secure_load_impl(i64* nonnull %402, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %404 = trunc i64 %403 to i32
  %405 = add nsw i32 %404, -1
  %406 = bitcast [1 x %struct.ds_base]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %406, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %407 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %18, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %405, i32* nonnull %401, %struct.ds_base* nonnull %407, i32 1, i32 undef) #14
  %408 = load i64, i64* bitcast ([2 x i32]* @in to i64*), align 8, !tbaa !24
  %409 = trunc i64 %408 to i32
  %410 = udiv i32 %409, 100
  %411 = urem i32 %410, 10
  %412 = zext i32 %411 to i64
  %413 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %412
  %414 = bitcast i32* %413 to i64*
  %415 = call i64 @uint64_t_secure_load_impl(i64* nonnull %414, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %416 = shl i64 %415, 32
  %417 = add i64 %416, -4294967296
  %418 = ashr exact i64 %417, 32
  %419 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 %418
  %420 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %19, i64 0, i64 0
  %421 = bitcast [1 x %struct.ds_base]* %19 to i64**
  store i64* %1, i64** %421, align 8, !tbaa !11
  %422 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %19, i64 0, i64 0, i32 1
  store i64* null, i64** %422, align 8, !tbaa !18
  %423 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %19, i64 0, i64 0, i32 2
  store i32 2, i32* %423, align 8, !tbaa !17
  %424 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %19, i64 0, i64 0, i32 3
  store i8 1, i8* %424, align 4, !tbaa !3
  %425 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %19, i64 0, i64 0, i32 4
  store i32 0, i32* %425, align 8, !tbaa !12
  %426 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %19, i64 0, i64 0, i32 5
  store i32 4, i32* %426, align 4, !tbaa !13
  call void @uint32_t_secure_store_impl(i32 %409, i32* nonnull %419, %struct.ds_base* nonnull %420, i32 1, i32 undef) #14
  %427 = load i64, i64* bitcast ([2 x i32]* @in to i64*), align 8, !tbaa !24
  %428 = trunc i64 %427 to i32
  %429 = udiv i32 %428, 100
  %430 = urem i32 %429, 10
  %431 = zext i32 %430 to i64
  %432 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %431
  %433 = bitcast i32* %432 to i64*
  %434 = call i64 @uint64_t_secure_load_impl(i64* nonnull %433, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %435 = trunc i64 %434 to i32
  %436 = add nsw i32 %435, -1
  %437 = bitcast [1 x %struct.ds_base]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %437, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %438 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %20, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %436, i32* nonnull %432, %struct.ds_base* nonnull %438, i32 1, i32 undef) #14
  %439 = load i64, i64* %1, align 8, !tbaa !24
  %440 = trunc i64 %439 to i32
  store i32 %440, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 0), align 8, !tbaa !34
  %441 = load i64, i64* %170, align 8, !tbaa !24
  %442 = trunc i64 %441 to i32
  store i32 %442, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1), align 4, !tbaa !34
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([10 x i32]* @count to i8*), i8 0, i64 40, i1 false)
  %443 = load i64, i64* bitcast ([2 x i32]* @in to i64*), align 8, !tbaa !24
  %444 = trunc i64 %443 to i32
  %445 = udiv i32 %444, 1000
  %446 = urem i32 %445, 10
  %447 = zext i32 %446 to i64
  %448 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %447
  %449 = bitcast i32* %448 to i64*
  %450 = call i64 @uint64_t_secure_load_impl(i64* nonnull %449, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %451 = trunc i64 %450 to i32
  %452 = add nsw i32 %451, 1
  %453 = bitcast [1 x %struct.ds_base]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %453, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %454 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %21, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %452, i32* nonnull %448, %struct.ds_base* nonnull %454, i32 1, i32 undef) #14
  %455 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %456 = trunc i64 %455 to i32
  %457 = udiv i32 %456, 1000
  %458 = urem i32 %457, 10
  %459 = zext i32 %458 to i64
  %460 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %459
  %461 = bitcast i32* %460 to i64*
  %462 = call i64 @uint64_t_secure_load_impl(i64* nonnull %461, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %463 = trunc i64 %462 to i32
  %464 = add nsw i32 %463, 1
  %465 = bitcast [1 x %struct.ds_base]* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %465, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %466 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %22, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %464, i32* nonnull %460, %struct.ds_base* nonnull %466, i32 1, i32 undef) #14
  %467 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %468 = trunc i64 %467 to i32
  %469 = load i64, i64* bitcast ([10 x i32]* @count to i64*), align 16, !tbaa !24
  %470 = trunc i64 %469 to i32
  %471 = add nsw i32 %470, %468
  store i32 %471, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 1), align 4, !tbaa !34
  %472 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 2) to i64*), align 8, !tbaa !24
  %473 = trunc i64 %472 to i32
  %474 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %475 = trunc i64 %474 to i32
  %476 = add nsw i32 %475, %473
  store i32 %476, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 2), align 8, !tbaa !34
  %477 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 3) to i64*), align 8, !tbaa !24
  %478 = trunc i64 %477 to i32
  %479 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 2) to i64*), align 8, !tbaa !24
  %480 = trunc i64 %479 to i32
  %481 = add nsw i32 %480, %478
  store i32 %481, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 3), align 4, !tbaa !34
  %482 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 4) to i64*), align 16, !tbaa !24
  %483 = trunc i64 %482 to i32
  %484 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 3) to i64*), align 8, !tbaa !24
  %485 = trunc i64 %484 to i32
  %486 = add nsw i32 %485, %483
  store i32 %486, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 4), align 16, !tbaa !34
  %487 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 5) to i64*), align 8, !tbaa !24
  %488 = trunc i64 %487 to i32
  %489 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 4) to i64*), align 16, !tbaa !24
  %490 = trunc i64 %489 to i32
  %491 = add nsw i32 %490, %488
  store i32 %491, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 5), align 4, !tbaa !34
  %492 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 6) to i64*), align 8, !tbaa !24
  %493 = trunc i64 %492 to i32
  %494 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 5) to i64*), align 8, !tbaa !24
  %495 = trunc i64 %494 to i32
  %496 = add nsw i32 %495, %493
  store i32 %496, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 6), align 8, !tbaa !34
  %497 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 7) to i64*), align 8, !tbaa !24
  %498 = trunc i64 %497 to i32
  %499 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 6) to i64*), align 8, !tbaa !24
  %500 = trunc i64 %499 to i32
  %501 = add nsw i32 %500, %498
  store i32 %501, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 7), align 4, !tbaa !34
  %502 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 8) to i64*), align 16, !tbaa !24
  %503 = trunc i64 %502 to i32
  %504 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 7) to i64*), align 8, !tbaa !24
  %505 = trunc i64 %504 to i32
  %506 = add nsw i32 %505, %503
  store i32 %506, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 8), align 16, !tbaa !34
  %507 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 9) to i64*), align 8, !tbaa !24
  %508 = trunc i64 %507 to i32
  %509 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 8) to i64*), align 16, !tbaa !24
  %510 = trunc i64 %509 to i32
  %511 = add nsw i32 %510, %508
  store i32 %511, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 9), align 4, !tbaa !34
  %512 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %513 = trunc i64 %512 to i32
  %514 = udiv i32 %513, 1000
  %515 = urem i32 %514, 10
  %516 = zext i32 %515 to i64
  %517 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %516
  %518 = bitcast i32* %517 to i64*
  %519 = call i64 @uint64_t_secure_load_impl(i64* nonnull %518, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %520 = shl i64 %519, 32
  %521 = add i64 %520, -4294967296
  %522 = ashr exact i64 %521, 32
  %523 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 %522
  %524 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %23, i64 0, i64 0
  %525 = bitcast [1 x %struct.ds_base]* %23 to i64**
  store i64* %1, i64** %525, align 8, !tbaa !11
  %526 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %23, i64 0, i64 0, i32 1
  store i64* null, i64** %526, align 8, !tbaa !18
  %527 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %23, i64 0, i64 0, i32 2
  store i32 2, i32* %527, align 8, !tbaa !17
  %528 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %23, i64 0, i64 0, i32 3
  store i8 1, i8* %528, align 4, !tbaa !3
  %529 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %23, i64 0, i64 0, i32 4
  store i32 0, i32* %529, align 8, !tbaa !12
  %530 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %23, i64 0, i64 0, i32 5
  store i32 4, i32* %530, align 4, !tbaa !13
  call void @uint32_t_secure_store_impl(i32 %513, i32* nonnull %523, %struct.ds_base* nonnull %524, i32 1, i32 undef) #14
  %531 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %532 = trunc i64 %531 to i32
  %533 = udiv i32 %532, 1000
  %534 = urem i32 %533, 10
  %535 = zext i32 %534 to i64
  %536 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %535
  %537 = bitcast i32* %536 to i64*
  %538 = call i64 @uint64_t_secure_load_impl(i64* nonnull %537, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %539 = trunc i64 %538 to i32
  %540 = add nsw i32 %539, -1
  %541 = bitcast [1 x %struct.ds_base]* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %541, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %542 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %24, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %540, i32* nonnull %536, %struct.ds_base* nonnull %542, i32 1, i32 undef) #14
  %543 = load i64, i64* bitcast ([2 x i32]* @in to i64*), align 8, !tbaa !24
  %544 = trunc i64 %543 to i32
  %545 = udiv i32 %544, 1000
  %546 = urem i32 %545, 10
  %547 = zext i32 %546 to i64
  %548 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %547
  %549 = bitcast i32* %548 to i64*
  %550 = call i64 @uint64_t_secure_load_impl(i64* nonnull %549, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %551 = shl i64 %550, 32
  %552 = add i64 %551, -4294967296
  %553 = ashr exact i64 %552, 32
  %554 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 %553
  %555 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %25, i64 0, i64 0
  %556 = bitcast [1 x %struct.ds_base]* %25 to i64**
  store i64* %1, i64** %556, align 8, !tbaa !11
  %557 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %25, i64 0, i64 0, i32 1
  store i64* null, i64** %557, align 8, !tbaa !18
  %558 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %25, i64 0, i64 0, i32 2
  store i32 2, i32* %558, align 8, !tbaa !17
  %559 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %25, i64 0, i64 0, i32 3
  store i8 1, i8* %559, align 4, !tbaa !3
  %560 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %25, i64 0, i64 0, i32 4
  store i32 0, i32* %560, align 8, !tbaa !12
  %561 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %25, i64 0, i64 0, i32 5
  store i32 4, i32* %561, align 4, !tbaa !13
  call void @uint32_t_secure_store_impl(i32 %544, i32* nonnull %554, %struct.ds_base* nonnull %555, i32 1, i32 undef) #14
  %562 = load i64, i64* bitcast ([2 x i32]* @in to i64*), align 8, !tbaa !24
  %563 = trunc i64 %562 to i32
  %564 = udiv i32 %563, 1000
  %565 = urem i32 %564, 10
  %566 = zext i32 %565 to i64
  %567 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %566
  %568 = bitcast i32* %567 to i64*
  %569 = call i64 @uint64_t_secure_load_impl(i64* nonnull %568, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %570 = trunc i64 %569 to i32
  %571 = add nsw i32 %570, -1
  %572 = bitcast [1 x %struct.ds_base]* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %572, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %573 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %26, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %571, i32* nonnull %567, %struct.ds_base* nonnull %573, i32 1, i32 undef) #14
  %574 = load i64, i64* %1, align 8, !tbaa !24
  %575 = trunc i64 %574 to i32
  store i32 %575, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 0), align 8, !tbaa !34
  %576 = load i64, i64* %170, align 8, !tbaa !24
  %577 = trunc i64 %576 to i32
  store i32 %577, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1), align 4, !tbaa !34
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([10 x i32]* @count to i8*), i8 0, i64 40, i1 false)
  %578 = load i64, i64* bitcast ([2 x i32]* @in to i64*), align 8, !tbaa !24
  %579 = trunc i64 %578 to i32
  %580 = udiv i32 %579, 10000
  %581 = urem i32 %580, 10
  %582 = zext i32 %581 to i64
  %583 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %582
  %584 = bitcast i32* %583 to i64*
  %585 = call i64 @uint64_t_secure_load_impl(i64* nonnull %584, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %586 = trunc i64 %585 to i32
  %587 = add nsw i32 %586, 1
  %588 = bitcast [1 x %struct.ds_base]* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %588, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %589 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %27, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %587, i32* nonnull %583, %struct.ds_base* nonnull %589, i32 1, i32 undef) #14
  %590 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %591 = trunc i64 %590 to i32
  %592 = udiv i32 %591, 10000
  %593 = urem i32 %592, 10
  %594 = zext i32 %593 to i64
  %595 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %594
  %596 = bitcast i32* %595 to i64*
  %597 = call i64 @uint64_t_secure_load_impl(i64* nonnull %596, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %598 = trunc i64 %597 to i32
  %599 = add nsw i32 %598, 1
  %600 = bitcast [1 x %struct.ds_base]* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %600, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %601 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %28, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %599, i32* nonnull %595, %struct.ds_base* nonnull %601, i32 1, i32 undef) #14
  %602 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %603 = trunc i64 %602 to i32
  %604 = load i64, i64* bitcast ([10 x i32]* @count to i64*), align 16, !tbaa !24
  %605 = trunc i64 %604 to i32
  %606 = add nsw i32 %605, %603
  store i32 %606, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 1), align 4, !tbaa !34
  %607 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 2) to i64*), align 8, !tbaa !24
  %608 = trunc i64 %607 to i32
  %609 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %610 = trunc i64 %609 to i32
  %611 = add nsw i32 %610, %608
  store i32 %611, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 2), align 8, !tbaa !34
  %612 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 3) to i64*), align 8, !tbaa !24
  %613 = trunc i64 %612 to i32
  %614 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 2) to i64*), align 8, !tbaa !24
  %615 = trunc i64 %614 to i32
  %616 = add nsw i32 %615, %613
  store i32 %616, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 3), align 4, !tbaa !34
  %617 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 4) to i64*), align 16, !tbaa !24
  %618 = trunc i64 %617 to i32
  %619 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 3) to i64*), align 8, !tbaa !24
  %620 = trunc i64 %619 to i32
  %621 = add nsw i32 %620, %618
  store i32 %621, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 4), align 16, !tbaa !34
  %622 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 5) to i64*), align 8, !tbaa !24
  %623 = trunc i64 %622 to i32
  %624 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 4) to i64*), align 16, !tbaa !24
  %625 = trunc i64 %624 to i32
  %626 = add nsw i32 %625, %623
  store i32 %626, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 5), align 4, !tbaa !34
  %627 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 6) to i64*), align 8, !tbaa !24
  %628 = trunc i64 %627 to i32
  %629 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 5) to i64*), align 8, !tbaa !24
  %630 = trunc i64 %629 to i32
  %631 = add nsw i32 %630, %628
  store i32 %631, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 6), align 8, !tbaa !34
  %632 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 7) to i64*), align 8, !tbaa !24
  %633 = trunc i64 %632 to i32
  %634 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 6) to i64*), align 8, !tbaa !24
  %635 = trunc i64 %634 to i32
  %636 = add nsw i32 %635, %633
  store i32 %636, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 7), align 4, !tbaa !34
  %637 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 8) to i64*), align 16, !tbaa !24
  %638 = trunc i64 %637 to i32
  %639 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 7) to i64*), align 8, !tbaa !24
  %640 = trunc i64 %639 to i32
  %641 = add nsw i32 %640, %638
  store i32 %641, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 8), align 16, !tbaa !34
  %642 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 9) to i64*), align 8, !tbaa !24
  %643 = trunc i64 %642 to i32
  %644 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 8) to i64*), align 16, !tbaa !24
  %645 = trunc i64 %644 to i32
  %646 = add nsw i32 %645, %643
  store i32 %646, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 9), align 4, !tbaa !34
  %647 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %648 = trunc i64 %647 to i32
  %649 = udiv i32 %648, 10000
  %650 = urem i32 %649, 10
  %651 = zext i32 %650 to i64
  %652 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %651
  %653 = bitcast i32* %652 to i64*
  %654 = call i64 @uint64_t_secure_load_impl(i64* nonnull %653, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %655 = shl i64 %654, 32
  %656 = add i64 %655, -4294967296
  %657 = ashr exact i64 %656, 32
  %658 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 %657
  %659 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %29, i64 0, i64 0
  %660 = bitcast [1 x %struct.ds_base]* %29 to i64**
  store i64* %1, i64** %660, align 8, !tbaa !11
  %661 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %29, i64 0, i64 0, i32 1
  store i64* null, i64** %661, align 8, !tbaa !18
  %662 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %29, i64 0, i64 0, i32 2
  store i32 2, i32* %662, align 8, !tbaa !17
  %663 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %29, i64 0, i64 0, i32 3
  store i8 1, i8* %663, align 4, !tbaa !3
  %664 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %29, i64 0, i64 0, i32 4
  store i32 0, i32* %664, align 8, !tbaa !12
  %665 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %29, i64 0, i64 0, i32 5
  store i32 4, i32* %665, align 4, !tbaa !13
  call void @uint32_t_secure_store_impl(i32 %648, i32* nonnull %658, %struct.ds_base* nonnull %659, i32 1, i32 undef) #14
  %666 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %667 = trunc i64 %666 to i32
  %668 = udiv i32 %667, 10000
  %669 = urem i32 %668, 10
  %670 = zext i32 %669 to i64
  %671 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %670
  %672 = bitcast i32* %671 to i64*
  %673 = call i64 @uint64_t_secure_load_impl(i64* nonnull %672, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %674 = trunc i64 %673 to i32
  %675 = add nsw i32 %674, -1
  %676 = bitcast [1 x %struct.ds_base]* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %676, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %677 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %30, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %675, i32* nonnull %671, %struct.ds_base* nonnull %677, i32 1, i32 undef) #14
  %678 = load i64, i64* bitcast ([2 x i32]* @in to i64*), align 8, !tbaa !24
  %679 = trunc i64 %678 to i32
  %680 = udiv i32 %679, 10000
  %681 = urem i32 %680, 10
  %682 = zext i32 %681 to i64
  %683 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %682
  %684 = bitcast i32* %683 to i64*
  %685 = call i64 @uint64_t_secure_load_impl(i64* nonnull %684, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %686 = shl i64 %685, 32
  %687 = add i64 %686, -4294967296
  %688 = ashr exact i64 %687, 32
  %689 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 %688
  %690 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %31, i64 0, i64 0
  %691 = bitcast [1 x %struct.ds_base]* %31 to i64**
  store i64* %1, i64** %691, align 8, !tbaa !11
  %692 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %31, i64 0, i64 0, i32 1
  store i64* null, i64** %692, align 8, !tbaa !18
  %693 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %31, i64 0, i64 0, i32 2
  store i32 2, i32* %693, align 8, !tbaa !17
  %694 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %31, i64 0, i64 0, i32 3
  store i8 1, i8* %694, align 4, !tbaa !3
  %695 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %31, i64 0, i64 0, i32 4
  store i32 0, i32* %695, align 8, !tbaa !12
  %696 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %31, i64 0, i64 0, i32 5
  store i32 4, i32* %696, align 4, !tbaa !13
  call void @uint32_t_secure_store_impl(i32 %679, i32* nonnull %689, %struct.ds_base* nonnull %690, i32 1, i32 undef) #14
  %697 = load i64, i64* bitcast ([2 x i32]* @in to i64*), align 8, !tbaa !24
  %698 = trunc i64 %697 to i32
  %699 = udiv i32 %698, 10000
  %700 = urem i32 %699, 10
  %701 = zext i32 %700 to i64
  %702 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %701
  %703 = bitcast i32* %702 to i64*
  %704 = call i64 @uint64_t_secure_load_impl(i64* nonnull %703, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %705 = trunc i64 %704 to i32
  %706 = add nsw i32 %705, -1
  %707 = bitcast [1 x %struct.ds_base]* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %707, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %708 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %32, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %706, i32* nonnull %702, %struct.ds_base* nonnull %708, i32 1, i32 undef) #14
  %709 = load i64, i64* %1, align 8, !tbaa !24
  %710 = trunc i64 %709 to i32
  store i32 %710, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 0), align 8, !tbaa !34
  %711 = load i64, i64* %170, align 8, !tbaa !24
  %712 = trunc i64 %711 to i32
  store i32 %712, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1), align 4, !tbaa !34
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([10 x i32]* @count to i8*), i8 0, i64 40, i1 false)
  %713 = load i64, i64* bitcast ([2 x i32]* @in to i64*), align 8, !tbaa !24
  %714 = trunc i64 %713 to i32
  %715 = udiv i32 %714, 100000
  %716 = trunc i32 %715 to i16
  %717 = urem i16 %716, 10
  %718 = zext i16 %717 to i64
  %719 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %718
  %720 = bitcast i32* %719 to i64*
  %721 = call i64 @uint64_t_secure_load_impl(i64* nonnull %720, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %722 = trunc i64 %721 to i32
  %723 = add nsw i32 %722, 1
  %724 = bitcast [1 x %struct.ds_base]* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %724, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %725 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %33, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %723, i32* nonnull %719, %struct.ds_base* nonnull %725, i32 1, i32 undef) #14
  %726 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %727 = trunc i64 %726 to i32
  %728 = udiv i32 %727, 100000
  %729 = trunc i32 %728 to i16
  %730 = urem i16 %729, 10
  %731 = zext i16 %730 to i64
  %732 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %731
  %733 = bitcast i32* %732 to i64*
  %734 = call i64 @uint64_t_secure_load_impl(i64* nonnull %733, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %735 = trunc i64 %734 to i32
  %736 = add nsw i32 %735, 1
  %737 = bitcast [1 x %struct.ds_base]* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %737, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %738 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %34, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %736, i32* nonnull %732, %struct.ds_base* nonnull %738, i32 1, i32 undef) #14
  %739 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %740 = trunc i64 %739 to i32
  %741 = load i64, i64* bitcast ([10 x i32]* @count to i64*), align 16, !tbaa !24
  %742 = trunc i64 %741 to i32
  %743 = add nsw i32 %742, %740
  store i32 %743, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 1), align 4, !tbaa !34
  %744 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 2) to i64*), align 8, !tbaa !24
  %745 = trunc i64 %744 to i32
  %746 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %747 = trunc i64 %746 to i32
  %748 = add nsw i32 %747, %745
  store i32 %748, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 2), align 8, !tbaa !34
  %749 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 3) to i64*), align 8, !tbaa !24
  %750 = trunc i64 %749 to i32
  %751 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 2) to i64*), align 8, !tbaa !24
  %752 = trunc i64 %751 to i32
  %753 = add nsw i32 %752, %750
  store i32 %753, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 3), align 4, !tbaa !34
  %754 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 4) to i64*), align 16, !tbaa !24
  %755 = trunc i64 %754 to i32
  %756 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 3) to i64*), align 8, !tbaa !24
  %757 = trunc i64 %756 to i32
  %758 = add nsw i32 %757, %755
  store i32 %758, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 4), align 16, !tbaa !34
  %759 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 5) to i64*), align 8, !tbaa !24
  %760 = trunc i64 %759 to i32
  %761 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 4) to i64*), align 16, !tbaa !24
  %762 = trunc i64 %761 to i32
  %763 = add nsw i32 %762, %760
  store i32 %763, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 5), align 4, !tbaa !34
  %764 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 6) to i64*), align 8, !tbaa !24
  %765 = trunc i64 %764 to i32
  %766 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 5) to i64*), align 8, !tbaa !24
  %767 = trunc i64 %766 to i32
  %768 = add nsw i32 %767, %765
  store i32 %768, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 6), align 8, !tbaa !34
  %769 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 7) to i64*), align 8, !tbaa !24
  %770 = trunc i64 %769 to i32
  %771 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 6) to i64*), align 8, !tbaa !24
  %772 = trunc i64 %771 to i32
  %773 = add nsw i32 %772, %770
  store i32 %773, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 7), align 4, !tbaa !34
  %774 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 8) to i64*), align 16, !tbaa !24
  %775 = trunc i64 %774 to i32
  %776 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 7) to i64*), align 8, !tbaa !24
  %777 = trunc i64 %776 to i32
  %778 = add nsw i32 %777, %775
  store i32 %778, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 8), align 16, !tbaa !34
  %779 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 9) to i64*), align 8, !tbaa !24
  %780 = trunc i64 %779 to i32
  %781 = load i64, i64* bitcast (i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 8) to i64*), align 16, !tbaa !24
  %782 = trunc i64 %781 to i32
  %783 = add nsw i32 %782, %780
  store i32 %783, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @count, i64 0, i64 9), align 4, !tbaa !34
  %784 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %785 = trunc i64 %784 to i32
  %786 = udiv i32 %785, 100000
  %787 = trunc i32 %786 to i16
  %788 = urem i16 %787, 10
  %789 = zext i16 %788 to i64
  %790 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %789
  %791 = bitcast i32* %790 to i64*
  %792 = call i64 @uint64_t_secure_load_impl(i64* nonnull %791, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %793 = shl i64 %792, 32
  %794 = add i64 %793, -4294967296
  %795 = ashr exact i64 %794, 32
  %796 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 %795
  %797 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %35, i64 0, i64 0
  %798 = bitcast [1 x %struct.ds_base]* %35 to i64**
  store i64* %1, i64** %798, align 8, !tbaa !11
  %799 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %35, i64 0, i64 0, i32 1
  store i64* null, i64** %799, align 8, !tbaa !18
  %800 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %35, i64 0, i64 0, i32 2
  store i32 2, i32* %800, align 8, !tbaa !17
  %801 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %35, i64 0, i64 0, i32 3
  store i8 1, i8* %801, align 4, !tbaa !3
  %802 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %35, i64 0, i64 0, i32 4
  store i32 0, i32* %802, align 8, !tbaa !12
  %803 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %35, i64 0, i64 0, i32 5
  store i32 4, i32* %803, align 4, !tbaa !13
  call void @uint32_t_secure_store_impl(i32 %785, i32* nonnull %796, %struct.ds_base* nonnull %797, i32 1, i32 undef) #14
  %804 = load i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %805 = trunc i64 %804 to i32
  %806 = udiv i32 %805, 100000
  %807 = trunc i32 %806 to i16
  %808 = urem i16 %807, 10
  %809 = zext i16 %808 to i64
  %810 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %809
  %811 = bitcast i32* %810 to i64*
  %812 = call i64 @uint64_t_secure_load_impl(i64* nonnull %811, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %813 = trunc i64 %812 to i32
  %814 = add nsw i32 %813, -1
  %815 = bitcast [1 x %struct.ds_base]* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %815, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %816 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %36, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %814, i32* nonnull %810, %struct.ds_base* nonnull %816, i32 1, i32 undef) #14
  %817 = load i64, i64* bitcast ([2 x i32]* @in to i64*), align 8, !tbaa !24
  %818 = trunc i64 %817 to i32
  %819 = udiv i32 %818, 100000
  %820 = trunc i32 %819 to i16
  %821 = urem i16 %820, 10
  %822 = zext i16 %821 to i64
  %823 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %822
  %824 = bitcast i32* %823 to i64*
  %825 = call i64 @uint64_t_secure_load_impl(i64* nonnull %824, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %826 = shl i64 %825, 32
  %827 = add i64 %826, -4294967296
  %828 = ashr exact i64 %827, 32
  %829 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 %828
  %830 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %37, i64 0, i64 0
  %831 = bitcast [1 x %struct.ds_base]* %37 to i64**
  store i64* %1, i64** %831, align 8, !tbaa !11
  %832 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %37, i64 0, i64 0, i32 1
  store i64* null, i64** %832, align 8, !tbaa !18
  %833 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %37, i64 0, i64 0, i32 2
  store i32 2, i32* %833, align 8, !tbaa !17
  %834 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %37, i64 0, i64 0, i32 3
  store i8 1, i8* %834, align 4, !tbaa !3
  %835 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %37, i64 0, i64 0, i32 4
  store i32 0, i32* %835, align 8, !tbaa !12
  %836 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %37, i64 0, i64 0, i32 5
  store i32 4, i32* %836, align 4, !tbaa !13
  call void @uint32_t_secure_store_impl(i32 %818, i32* nonnull %829, %struct.ds_base* nonnull %830, i32 1, i32 undef) #14
  %837 = load i64, i64* bitcast ([2 x i32]* @in to i64*), align 8, !tbaa !24
  %838 = trunc i64 %837 to i32
  %839 = udiv i32 %838, 100000
  %840 = trunc i32 %839 to i16
  %841 = urem i16 %840, 10
  %842 = zext i16 %841 to i64
  %843 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %842
  %844 = bitcast i32* %843 to i64*
  %845 = call i64 @uint64_t_secure_load_impl(i64* nonnull %844, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.368, i64 0, i64 0), i32 1, i32 undef) #14
  %846 = trunc i64 %845 to i32
  %847 = add nsw i32 %846, -1
  %848 = bitcast [1 x %struct.ds_base]* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %848, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.368 to i8*), i64 32, i1 false), !tbaa.struct !37
  %849 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %38, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32 %847, i32* nonnull %843, %struct.ds_base* nonnull %849, i32 1, i32 undef) #14
  %850 = load i64, i64* %1, align 8, !tbaa !24
  %851 = trunc i64 %850 to i32
  store i32 %851, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 0), align 8, !tbaa !34
  %852 = load i64, i64* %170, align 8, !tbaa !24
  %853 = trunc i64 %852 to i32
  store i32 %853, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1), align 4, !tbaa !34
  %854 = call i64 @write(i32 1, i8* bitcast ([2 x i32]* @in to i8*), i64 8) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39) #14
  ret i32 0
}

; Function Attrs: nofree
declare dso_local noundef i64 @read(i32 noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nofree
declare dso_local noundef i64 @write(i32 noundef, i8* nocapture noundef readonly, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nosync nounwind readnone
declare <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8>, <32 x i8>, <32 x i8>) #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nofree nounwind readonly }
attributes #5 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #12 = { nofree nosync nounwind readnone }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"Ubuntu clang version 13.0.1-++20211223012851+9468a0f95385-1~exp1~20211223012902.41"}
!3 = !{!4, !9, i64 20}
!4 = !{!"ds_base", !5, i64 0, !5, i64 8, !8, i64 16, !9, i64 20, !8, i64 24, !8, i64 28}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!"_Bool", !6, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{!4, !5, i64 0}
!12 = !{!4, !8, i64 24}
!13 = !{!4, !8, i64 28}
!14 = !{!6, !6, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!4, !8, i64 16}
!18 = !{!4, !5, i64 8}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = !{!25, !25, i64 0}
!25 = !{!"long", !6, i64 0}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = !{!8, !8, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"short", !6, i64 0}
!37 = !{i64 0, i64 32, !14}
