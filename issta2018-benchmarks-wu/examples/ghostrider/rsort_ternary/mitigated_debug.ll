; ModuleID = 'mitigated.c'
source_filename = "mitigated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ds_base = type { i8*, i64*, i32, i8, i32, i32 }

@count = dso_local global [10 x i32] zeroinitializer, align 16
@in = dso_local global [2 x i32] zeroinitializer, align 4
@constinit.1 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([2 x i32]* @in to i8*), i64* null, i32 1, i8 1, i32 4, i32 4 }], align 8
@constinit.7 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([2 x i32]* @in to i8*), i64* null, i32 1, i8 1, i32 0, i32 0 }], align 8
@constinit.8 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([10 x i32]* @count to i8*), i64* null, i32 10, i8 1, i32 0, i32 36 }], align 8

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @mm256_hadd_to_64(<4 x i64> %0) local_unnamed_addr #1 {
  %2 = shufflevector <4 x i64> %0, <4 x i64> undef, <2 x i32> <i32 0, i32 1>
  %3 = shufflevector <4 x i64> %0, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %4 = add <2 x i64> %3, %2
  %5 = shufflevector <2 x i64> %4, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>
  %6 = add <2 x i64> %5, %4
  %7 = extractelement <2 x i64> %6, i32 0
  ret i64 %7
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define dso_local i64 @uint64_t_secure_load_impl(i64* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #2 {
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
declare <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64>, i8*, <4 x i64>, <4 x i64>, i8 immarg) #3

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i64 @uint64_t_secure_load(i64* readonly %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #4 {
  %5 = tail call i64 @uint64_t_secure_load_impl(i64* %0, %struct.ds_base* %1, i32 %2, i32 undef)
  ret i64 %5
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @uint64_t_secure_load_sensitive(i64* readonly %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #5 {
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
define dso_local i32 @uint32_t_secure_load(i32* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #4 {
  %5 = bitcast i32* %0 to i64*
  %6 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef) #12
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: nofree nounwind readonly uwtable
define dso_local zeroext i16 @uint16_t_secure_load(i16* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #4 {
  %5 = bitcast i16* %0 to i64*
  %6 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef) #12
  %7 = trunc i64 %6 to i16
  ret i16 %7
}

; Function Attrs: nofree nounwind readonly uwtable
define dso_local zeroext i8 @uint8_t_secure_load(i8* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #4 {
  %5 = bitcast i8* %0 to i64*
  %6 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef) #12
  %7 = trunc i64 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @uint32_t_secure_load_sensitive(i32* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #5 {
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
  %17 = tail call i64 @uint64_t_secure_load_impl(i64* %16, %struct.ds_base* %1, i32 %2, i32 undef) #12
  br label %18

18:                                               ; preds = %6, %15
  %19 = phi i64 [ %14, %6 ], [ %17, %15 ]
  %20 = trunc i64 %19 to i8
  ret i8 %20
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @uint32_t_secure_store_impl(i32* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #6 {
  %5 = ptrtoint i32* %0 to i64
  %6 = shl i64 %5, 3
  %7 = and i64 %6, 56
  %8 = and i64 %5, -8
  %9 = insertelement <4 x i64> undef, i64 %8, i32 0
  %10 = shufflevector <4 x i64> %9, <4 x i64> poison, <4 x i32> zeroinitializer
  %11 = and i64 %5, -32
  %12 = shl i64 4294967295, %7
  %13 = insertelement <4 x i64> undef, i64 %12, i32 0
  %14 = shufflevector <4 x i64> %13, <4 x i64> poison, <4 x i32> zeroinitializer
  %15 = insertelement <2 x i64> poison, i64 %11, i32 0
  %16 = shufflevector <2 x i64> %15, <2 x i64> poison, <2 x i32> zeroinitializer
  %17 = or <2 x i64> %16, <i64 8, i64 16>
  %18 = or i64 %11, 24
  %19 = insertelement <4 x i64> undef, i64 %11, i32 0
  %20 = shufflevector <2 x i64> %17, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %21 = shufflevector <4 x i64> %19, <4 x i64> %20, <4 x i32> <i32 0, i32 4, i32 5, i32 undef>
  %22 = insertelement <4 x i64> %21, i64 %18, i32 3
  %23 = inttoptr i64 %11 to i8*
  %24 = icmp eq i32 %2, 0
  br i1 %24, label %58, label %25

25:                                               ; preds = %4
  %26 = zext i32 %2 to i64
  %27 = and i64 %26, 1
  %28 = icmp eq i32 %2, 1
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = and i64 %26, 4294967294
  br label %59

31:                                               ; preds = %110, %25
  %32 = phi i64 [ 0, %25 ], [ %111, %110 ]
  %33 = icmp eq i64 %27, 0
  br i1 %33, label %58, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %32, i32 5
  %36 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %32, i32 0
  %37 = load i8*, i8** %36, align 8, !tbaa !11
  %38 = load i32, i32* %35, align 4, !tbaa !13
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = icmp ult i8* %40, %23
  br i1 %41, label %58, label %42

42:                                               ; preds = %34, %42
  %43 = phi i8* [ %52, %42 ], [ %23, %34 ]
  %44 = phi <4 x i64> [ %51, %42 ], [ %22, %34 ]
  %45 = icmp eq <4 x i64> %44, %10
  %46 = select <4 x i1> %45, <4 x i64> %14, <4 x i64> zeroinitializer
  %47 = bitcast i8* %43 to <32 x i8>*
  %48 = load <32 x i8>, <32 x i8>* %47, align 1, !tbaa !14
  %49 = bitcast <4 x i64> %46 to <32 x i8>
  %50 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %48, <32 x i8> zeroinitializer, <32 x i8> %49) #12
  store <32 x i8> %50, <32 x i8>* %47, align 1, !tbaa !14
  %51 = add <4 x i64> %44, <i64 32, i64 32, i64 32, i64 32>
  %52 = getelementptr inbounds i8, i8* %43, i64 32
  %53 = load i8*, i8** %36, align 8, !tbaa !11
  %54 = load i32, i32* %35, align 4, !tbaa !13
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = icmp ugt i8* %52, %56
  br i1 %57, label %58, label %42, !llvm.loop !26

58:                                               ; preds = %31, %34, %42, %4
  ret void

59:                                               ; preds = %110, %29
  %60 = phi i64 [ 0, %29 ], [ %111, %110 ]
  %61 = phi i64 [ %30, %29 ], [ %112, %110 ]
  %62 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %60, i32 5
  %63 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %60, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !11
  %65 = load i32, i32* %62, align 4, !tbaa !13
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = icmp ult i8* %67, %23
  br i1 %68, label %69, label %78

69:                                               ; preds = %78, %59
  %70 = or i64 %60, 1
  %71 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %70, i32 5
  %72 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %70, i32 0
  %73 = load i8*, i8** %72, align 8, !tbaa !11
  %74 = load i32, i32* %71, align 4, !tbaa !13
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = icmp ult i8* %76, %23
  br i1 %77, label %110, label %94

78:                                               ; preds = %59, %78
  %79 = phi i8* [ %88, %78 ], [ %23, %59 ]
  %80 = phi <4 x i64> [ %87, %78 ], [ %22, %59 ]
  %81 = icmp eq <4 x i64> %80, %10
  %82 = select <4 x i1> %81, <4 x i64> %14, <4 x i64> zeroinitializer
  %83 = bitcast i8* %79 to <32 x i8>*
  %84 = load <32 x i8>, <32 x i8>* %83, align 1, !tbaa !14
  %85 = bitcast <4 x i64> %82 to <32 x i8>
  %86 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %84, <32 x i8> zeroinitializer, <32 x i8> %85) #12
  store <32 x i8> %86, <32 x i8>* %83, align 1, !tbaa !14
  %87 = add <4 x i64> %80, <i64 32, i64 32, i64 32, i64 32>
  %88 = getelementptr inbounds i8, i8* %79, i64 32
  %89 = load i8*, i8** %63, align 8, !tbaa !11
  %90 = load i32, i32* %62, align 4, !tbaa !13
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = icmp ugt i8* %88, %92
  br i1 %93, label %69, label %78, !llvm.loop !26

94:                                               ; preds = %69, %94
  %95 = phi i8* [ %104, %94 ], [ %23, %69 ]
  %96 = phi <4 x i64> [ %103, %94 ], [ %22, %69 ]
  %97 = icmp eq <4 x i64> %96, %10
  %98 = select <4 x i1> %97, <4 x i64> %14, <4 x i64> zeroinitializer
  %99 = bitcast i8* %95 to <32 x i8>*
  %100 = load <32 x i8>, <32 x i8>* %99, align 1, !tbaa !14
  %101 = bitcast <4 x i64> %98 to <32 x i8>
  %102 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %100, <32 x i8> zeroinitializer, <32 x i8> %101) #12
  store <32 x i8> %102, <32 x i8>* %99, align 1, !tbaa !14
  %103 = add <4 x i64> %96, <i64 32, i64 32, i64 32, i64 32>
  %104 = getelementptr inbounds i8, i8* %95, i64 32
  %105 = load i8*, i8** %72, align 8, !tbaa !11
  %106 = load i32, i32* %71, align 4, !tbaa !13
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = icmp ugt i8* %104, %108
  br i1 %109, label %110, label %94, !llvm.loop !26

110:                                              ; preds = %94, %69
  %111 = add nuw nsw i64 %60, 2
  %112 = add i64 %61, -2
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %31, label %59, !llvm.loop !27
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @uint64_t_secure_store_impl(i64* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #6 {
  %5 = ptrtoint i64* %0 to i64
  %6 = shl i64 %5, 3
  %7 = and i64 %6, 56
  %8 = and i64 %5, -8
  %9 = insertelement <4 x i64> undef, i64 %8, i32 0
  %10 = shufflevector <4 x i64> %9, <4 x i64> poison, <4 x i32> zeroinitializer
  %11 = shl nsw i64 -1, %7
  %12 = insertelement <4 x i64> undef, i64 %11, i32 0
  %13 = shufflevector <4 x i64> %12, <4 x i64> poison, <4 x i32> zeroinitializer
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = zext i32 %2 to i64
  br label %18

17:                                               ; preds = %43, %4
  ret void

18:                                               ; preds = %15, %43
  %19 = phi i64 [ 0, %15 ], [ %44, %43 ]
  %20 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %19, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !11
  %22 = ptrtoint i8* %21 to i64
  %23 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %19, i32 4
  %24 = load i32, i32* %23, align 8, !tbaa !12
  %25 = zext i32 %24 to i64
  %26 = add i64 %25, %22
  %27 = and i64 %26, -32
  %28 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %19, i32 5
  %29 = inttoptr i64 %27 to i8*
  %30 = load i32, i32* %28, align 4, !tbaa !13
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %21, i64 %31
  %33 = icmp ult i8* %32, %29
  br i1 %33, label %43, label %34

34:                                               ; preds = %18
  %35 = insertelement <4 x i64> undef, i64 %27, i32 0
  %36 = insertelement <2 x i64> poison, i64 %27, i32 0
  %37 = shufflevector <2 x i64> %36, <2 x i64> poison, <2 x i32> zeroinitializer
  %38 = or <2 x i64> %37, <i64 8, i64 16>
  %39 = shufflevector <2 x i64> %38, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %40 = shufflevector <4 x i64> %35, <4 x i64> %39, <4 x i32> <i32 0, i32 4, i32 5, i32 undef>
  %41 = or i64 %27, 24
  %42 = insertelement <4 x i64> %40, i64 %41, i32 3
  br label %46

43:                                               ; preds = %46, %18
  %44 = add nuw nsw i64 %19, 1
  %45 = icmp eq i64 %44, %16
  br i1 %45, label %17, label %18, !llvm.loop !28

46:                                               ; preds = %34, %46
  %47 = phi i8* [ %56, %46 ], [ %29, %34 ]
  %48 = phi <4 x i64> [ %55, %46 ], [ %42, %34 ]
  %49 = icmp eq <4 x i64> %48, %10
  %50 = select <4 x i1> %49, <4 x i64> %13, <4 x i64> zeroinitializer
  %51 = bitcast i8* %47 to <32 x i8>*
  %52 = load <32 x i8>, <32 x i8>* %51, align 1, !tbaa !14
  %53 = bitcast <4 x i64> %50 to <32 x i8>
  %54 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %52, <32 x i8> zeroinitializer, <32 x i8> %53) #12
  store <32 x i8> %54, <32 x i8>* %51, align 1, !tbaa !14
  %55 = add <4 x i64> %48, <i64 32, i64 32, i64 32, i64 32>
  %56 = getelementptr inbounds i8, i8* %47, i64 32
  %57 = load i8*, i8** %20, align 8, !tbaa !11
  %58 = load i32, i32* %28, align 4, !tbaa !13
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = icmp ugt i8* %56, %60
  br i1 %61, label %43, label %46, !llvm.loop !29
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @uint16_t_secure_store_impl(i16* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #6 {
  %5 = ptrtoint i16* %0 to i64
  %6 = shl i64 %5, 3
  %7 = and i64 %6, 56
  %8 = and i64 %5, -8
  %9 = insertelement <4 x i64> undef, i64 %8, i32 0
  %10 = shufflevector <4 x i64> %9, <4 x i64> poison, <4 x i32> zeroinitializer
  %11 = shl i64 65535, %7
  %12 = insertelement <4 x i64> undef, i64 %11, i32 0
  %13 = shufflevector <4 x i64> %12, <4 x i64> poison, <4 x i32> zeroinitializer
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = zext i32 %2 to i64
  br label %18

17:                                               ; preds = %43, %4
  ret void

18:                                               ; preds = %15, %43
  %19 = phi i64 [ 0, %15 ], [ %44, %43 ]
  %20 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %19, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !11
  %22 = ptrtoint i8* %21 to i64
  %23 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %19, i32 4
  %24 = load i32, i32* %23, align 8, !tbaa !12
  %25 = zext i32 %24 to i64
  %26 = add i64 %25, %22
  %27 = and i64 %26, -32
  %28 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %19, i32 5
  %29 = inttoptr i64 %27 to i8*
  %30 = load i32, i32* %28, align 4, !tbaa !13
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %21, i64 %31
  %33 = icmp ult i8* %32, %29
  br i1 %33, label %43, label %34

34:                                               ; preds = %18
  %35 = insertelement <4 x i64> undef, i64 %27, i32 0
  %36 = insertelement <2 x i64> poison, i64 %27, i32 0
  %37 = shufflevector <2 x i64> %36, <2 x i64> poison, <2 x i32> zeroinitializer
  %38 = or <2 x i64> %37, <i64 8, i64 16>
  %39 = shufflevector <2 x i64> %38, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %40 = shufflevector <4 x i64> %35, <4 x i64> %39, <4 x i32> <i32 0, i32 4, i32 5, i32 undef>
  %41 = or i64 %27, 24
  %42 = insertelement <4 x i64> %40, i64 %41, i32 3
  br label %46

43:                                               ; preds = %46, %18
  %44 = add nuw nsw i64 %19, 1
  %45 = icmp eq i64 %44, %16
  br i1 %45, label %17, label %18, !llvm.loop !30

46:                                               ; preds = %34, %46
  %47 = phi i8* [ %56, %46 ], [ %29, %34 ]
  %48 = phi <4 x i64> [ %55, %46 ], [ %42, %34 ]
  %49 = icmp eq <4 x i64> %48, %10
  %50 = select <4 x i1> %49, <4 x i64> %13, <4 x i64> zeroinitializer
  %51 = bitcast i8* %47 to <32 x i8>*
  %52 = load <32 x i8>, <32 x i8>* %51, align 1, !tbaa !14
  %53 = bitcast <4 x i64> %50 to <32 x i8>
  %54 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %52, <32 x i8> zeroinitializer, <32 x i8> %53) #12
  store <32 x i8> %54, <32 x i8>* %51, align 1, !tbaa !14
  %55 = add <4 x i64> %48, <i64 32, i64 32, i64 32, i64 32>
  %56 = getelementptr inbounds i8, i8* %47, i64 32
  %57 = load i8*, i8** %20, align 8, !tbaa !11
  %58 = load i32, i32* %28, align 4, !tbaa !13
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = icmp ugt i8* %56, %60
  br i1 %61, label %43, label %46, !llvm.loop !31
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @uint8_t_secure_store_impl(i8* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #6 {
  %5 = ptrtoint i8* %0 to i64
  %6 = shl i64 %5, 3
  %7 = and i64 %6, 56
  %8 = and i64 %5, -8
  %9 = insertelement <4 x i64> undef, i64 %8, i32 0
  %10 = shufflevector <4 x i64> %9, <4 x i64> poison, <4 x i32> zeroinitializer
  %11 = shl nuw i64 255, %7
  %12 = insertelement <4 x i64> undef, i64 %11, i32 0
  %13 = shufflevector <4 x i64> %12, <4 x i64> poison, <4 x i32> zeroinitializer
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = zext i32 %2 to i64
  br label %18

17:                                               ; preds = %43, %4
  ret void

18:                                               ; preds = %15, %43
  %19 = phi i64 [ 0, %15 ], [ %44, %43 ]
  %20 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %19, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !11
  %22 = ptrtoint i8* %21 to i64
  %23 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %19, i32 4
  %24 = load i32, i32* %23, align 8, !tbaa !12
  %25 = zext i32 %24 to i64
  %26 = add i64 %25, %22
  %27 = and i64 %26, -32
  %28 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %19, i32 5
  %29 = inttoptr i64 %27 to i8*
  %30 = load i32, i32* %28, align 4, !tbaa !13
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %21, i64 %31
  %33 = icmp ult i8* %32, %29
  br i1 %33, label %43, label %34

34:                                               ; preds = %18
  %35 = insertelement <4 x i64> undef, i64 %27, i32 0
  %36 = insertelement <2 x i64> poison, i64 %27, i32 0
  %37 = shufflevector <2 x i64> %36, <2 x i64> poison, <2 x i32> zeroinitializer
  %38 = or <2 x i64> %37, <i64 8, i64 16>
  %39 = shufflevector <2 x i64> %38, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %40 = shufflevector <4 x i64> %35, <4 x i64> %39, <4 x i32> <i32 0, i32 4, i32 5, i32 undef>
  %41 = or i64 %27, 24
  %42 = insertelement <4 x i64> %40, i64 %41, i32 3
  br label %46

43:                                               ; preds = %46, %18
  %44 = add nuw nsw i64 %19, 1
  %45 = icmp eq i64 %44, %16
  br i1 %45, label %17, label %18, !llvm.loop !32

46:                                               ; preds = %34, %46
  %47 = phi i8* [ %56, %46 ], [ %29, %34 ]
  %48 = phi <4 x i64> [ %55, %46 ], [ %42, %34 ]
  %49 = icmp eq <4 x i64> %48, %10
  %50 = select <4 x i1> %49, <4 x i64> %13, <4 x i64> zeroinitializer
  %51 = bitcast i8* %47 to <32 x i8>*
  %52 = load <32 x i8>, <32 x i8>* %51, align 1, !tbaa !14
  %53 = bitcast <4 x i64> %50 to <32 x i8>
  %54 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %52, <32 x i8> zeroinitializer, <32 x i8> %53) #12
  store <32 x i8> %54, <32 x i8>* %51, align 1, !tbaa !14
  %55 = add <4 x i64> %48, <i64 32, i64 32, i64 32, i64 32>
  %56 = getelementptr inbounds i8, i8* %47, i64 32
  %57 = load i8*, i8** %20, align 8, !tbaa !11
  %58 = load i32, i32* %28, align 4, !tbaa !13
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = icmp ugt i8* %56, %60
  br i1 %61, label %43, label %46, !llvm.loop !33
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @uint32_t_secure_store(i32* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #7 {
  tail call void @uint32_t_secure_store_impl(i32* %0, %struct.ds_base* %1, i32 %2, i32 undef)
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @uint64_t_secure_store(i64* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #7 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = icmp eq i64* %0, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  store i64 0, i64* %0, align 8, !tbaa !24
  br label %10

9:                                                ; preds = %4
  tail call void @uint64_t_secure_store_impl(i64* %0, %struct.ds_base* %1, i32 %2, i32 undef)
  br label %10

10:                                               ; preds = %6, %8, %9
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @uint16_t_secure_store(i16* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #7 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = icmp eq i16* %0, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  store i16 0, i16* %0, align 2, !tbaa !34
  br label %10

9:                                                ; preds = %4
  tail call void @uint16_t_secure_store_impl(i16* %0, %struct.ds_base* %1, i32 %2, i32 undef)
  br label %10

10:                                               ; preds = %6, %8, %9
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @uint8_t_secure_store(i8* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #7 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = icmp eq i8* %0, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  store i8 0, i8* %0, align 1, !tbaa !14
  br label %10

9:                                                ; preds = %4
  tail call void @uint8_t_secure_store_impl(i8* %0, %struct.ds_base* %1, i32 %2, i32 undef)
  br label %10

10:                                               ; preds = %6, %8, %9
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @uint64_t_secure_store_sensitive(i64 %0, i64* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #5 {
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
  tail call void @uint64_t_secure_store_impl(i64* %1, %struct.ds_base* %2, i32 %3, i32 undef)
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
  %10 = load i8*, i8** %9, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 4
  %12 = load i32, i32* %11, align 8, !tbaa !12
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  %15 = bitcast i8* %14 to i32*
  br i1 %8, label %17, label %16

16:                                               ; preds = %7
  store volatile i32 %0, i32* %15, align 4, !tbaa !36
  br label %20

17:                                               ; preds = %7
  %18 = load volatile i32, i32* %15, align 4, !tbaa !36
  br label %20

19:                                               ; preds = %5
  tail call void @uint32_t_secure_store_impl(i32* %1, %struct.ds_base* %2, i32 %3, i32 undef)
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
  %10 = load i8*, i8** %9, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 4
  %12 = load i32, i32* %11, align 8, !tbaa !12
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
  tail call void @uint16_t_secure_store_impl(i16* %1, %struct.ds_base* %2, i32 %3, i32 undef)
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
  tail call void @uint8_t_secure_store_impl(i8* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %19

19:                                               ; preds = %15, %16, %18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @branch_id(i8* nocapture %0) local_unnamed_addr #8 {
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #5 {
  %1 = alloca [1 x %struct.ds_base], align 8
  %2 = tail call i64 @read(i32 0, i8* bitcast ([2 x i32]* @in to i8*), i64 8) #12
  %3 = tail call i64 @uint64_t_secure_load_impl(i64* bitcast ([2 x i32]* @in to i64*), %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.7, i64 0, i64 0), i32 1, i32 undef) #12
  %4 = tail call i64 @uint64_t_secure_load_impl(i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1) to i64*), %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.1, i64 0, i64 0), i32 1, i32 undef) #12
  %5 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @in, i64 0, i64 1) to i64*), align 8, !tbaa !24
  %6 = tail call i64 @uint64_t_secure_load_impl(i64* bitcast ([2 x i32]* @in to i64*), %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.7, i64 0, i64 0), i32 1, i32 undef) #12
  %7 = trunc i64 %6 to i32
  %8 = urem i32 %7, 10
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %9
  %11 = bitcast i32* %10 to i64*
  %12 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %11, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.8, i64 0, i64 0), i32 1, i32 undef) #12
  %13 = tail call i64 @uint64_t_secure_load_impl(i64* bitcast ([2 x i32]* @in to i64*), %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.7, i64 0, i64 0), i32 1, i32 undef) #12
  %14 = trunc i64 %13 to i32
  %15 = urem i32 %14, 10
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [10 x i32], [10 x i32]* @count, i64 0, i64 %16
  %18 = bitcast [1 x %struct.ds_base]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %18, i8* noundef nonnull align 8 dereferenceable(32) bitcast ([1 x %struct.ds_base]* @constinit.8 to i8*), i64 32, i1 false), !tbaa.struct !37
  %19 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %1, i64 0, i64 0
  call void @uint32_t_secure_store_impl(i32* nonnull %17, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.7, i64 0, i64 0), i32 1, i32 undef) #12
  %20 = tail call i64 @write(i32 1, i8* bitcast ([2 x i32]* @in to i8*), i64 8) #12
  ret i32 0
}

; Function Attrs: nofree
declare dso_local noundef i64 @read(i32 noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nofree
declare dso_local noundef i64 @write(i32 noundef, i8* nocapture noundef readonly, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nosync nounwind readnone
declare <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8>, <32 x i8>, <32 x i8>) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nofree nounwind readonly }
attributes #4 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #11 = { nofree nosync nounwind readnone }
attributes #12 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"short", !6, i64 0}
!36 = !{!8, !8, i64 0}
!37 = !{i64 0, i64 32, !14}
