; ModuleID = 'mitigated.c'
source_filename = "mitigated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ds_base = type { i8*, i64*, i32, i32, i32, i32 }
%struct.anonymous = type { [256 x i8], i8, i8 }

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

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i64 @uint64_t_secure_load_impl(i64* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #3 {
  %5 = alloca i32, align 4
  %6 = ptrtoint i64* %0 to i64
  %7 = and i64 %6, -8
  %8 = insertelement <4 x i64> undef, i64 %7, i32 0
  %9 = shufflevector <4 x i64> %8, <4 x i64> poison, <4 x i32> zeroinitializer
  %10 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8, !tbaa !3
  %12 = ptrtoint i8* %11 to i64
  %13 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 4
  %14 = load i32, i32* %13, align 8, !tbaa !9
  %15 = zext i32 %14 to i64
  %16 = add i64 %15, %12
  %17 = and i64 %16, -32
  %18 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 5
  %19 = load i32, i32* %18, align 4, !tbaa !10
  %20 = zext i32 %19 to i64
  %21 = add i64 %20, %12
  %22 = sub i64 %21, %17
  %23 = lshr i64 %22, 5
  %24 = trunc i64 %23 to i32
  %25 = add i32 %24, 1
  %26 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26)
  store volatile i32 0, i32* %5, align 4, !tbaa !11
  %27 = inttoptr i64 %17 to i8*
  %28 = load volatile i32, i32* %5, align 4, !tbaa !11
  %29 = icmp ult i32 %28, %25
  br i1 %29, label %30, label %39

30:                                               ; preds = %4
  %31 = insertelement <4 x i64> undef, i64 %17, i32 0
  %32 = insertelement <2 x i64> poison, i64 %17, i32 0
  %33 = shufflevector <2 x i64> %32, <2 x i64> poison, <2 x i32> zeroinitializer
  %34 = or <2 x i64> %33, <i64 8, i64 16>
  %35 = shufflevector <2 x i64> %34, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %36 = shufflevector <4 x i64> %31, <4 x i64> %35, <4 x i32> <i32 0, i32 4, i32 5, i32 undef>
  %37 = or i64 %17, 24
  %38 = insertelement <4 x i64> %36, i64 %37, i32 3
  br label %50

39:                                               ; preds = %50, %4
  %40 = phi <4 x i64> [ zeroinitializer, %4 ], [ %60, %50 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26)
  %41 = shufflevector <4 x i64> %40, <4 x i64> undef, <2 x i32> <i32 0, i32 1>
  %42 = shufflevector <4 x i64> %40, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %43 = add <2 x i64> %42, %41
  %44 = shufflevector <2 x i64> %43, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>
  %45 = add <2 x i64> %44, %43
  %46 = extractelement <2 x i64> %45, i32 0
  %47 = shl i64 %6, 3
  %48 = and i64 %47, 56
  %49 = lshr i64 %46, %48
  ret i64 %49

50:                                               ; preds = %30, %50
  %51 = phi <4 x i64> [ %60, %50 ], [ zeroinitializer, %30 ]
  %52 = phi <4 x i64> [ %61, %50 ], [ %38, %30 ]
  %53 = load volatile i32, i32* %5, align 4, !tbaa !11
  %54 = shl i32 %53, 5
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %27, i64 %55
  %57 = icmp eq <4 x i64> %52, %9
  %58 = bitcast i8* %56 to <4 x i64>*
  %59 = load <4 x i64>, <4 x i64>* %58, align 32, !tbaa !12
  %60 = select <4 x i1> %57, <4 x i64> %59, <4 x i64> %51
  %61 = add <4 x i64> %52, <i64 32, i64 32, i64 32, i64 32>
  %62 = load volatile i32, i32* %5, align 4, !tbaa !11
  %63 = add i32 %62, 1
  store volatile i32 %63, i32* %5, align 4, !tbaa !11
  %64 = load volatile i32, i32* %5, align 4, !tbaa !11
  %65 = icmp ult i32 %64, %25
  br i1 %65, label %50, label %39, !llvm.loop !13
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i64 @uint64_t_secure_double_load_impl(i64* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #3 {
  %5 = alloca <4 x i64>, align 32
  %6 = ptrtoint i64* %0 to i64
  %7 = and i64 %6, -8
  %8 = insertelement <4 x i64> undef, i64 %7, i32 0
  %9 = shufflevector <4 x i64> %8, <4 x i64> poison, <4 x i32> zeroinitializer
  %10 = shl i64 %6, 3
  %11 = and i64 %10, 56
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = zext i32 %2 to i64
  %15 = bitcast <4 x i64>* %5 to i8*
  br label %18

16:                                               ; preds = %77, %4
  %17 = phi i64 [ 0, %4 ], [ %86, %77 ]
  ret i64 %17

18:                                               ; preds = %13, %77
  %19 = phi i64 [ 0, %13 ], [ %87, %77 ]
  %20 = phi i64 [ 0, %13 ], [ %86, %77 ]
  %21 = phi <4 x i64> [ zeroinitializer, %13 ], [ %78, %77 ]
  %22 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %19, i32 0
  %23 = load i8*, i8** %22, align 8, !tbaa !3
  %24 = ptrtoint i8* %23 to i64
  %25 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %19, i32 4
  %26 = load i32, i32* %25, align 8, !tbaa !9
  %27 = zext i32 %26 to i64
  %28 = add i64 %27, %24
  %29 = and i64 %28, -32
  %30 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %19, i32 5
  %31 = load i32, i32* %30, align 4, !tbaa !10
  %32 = zext i32 %31 to i64
  %33 = add i64 %32, %24
  %34 = sub i64 %33, %29
  %35 = lshr i64 %34, 5
  %36 = trunc i64 %35 to i32
  %37 = add i32 %36, 1
  %38 = inttoptr i64 %29 to i8*
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %77, label %40

40:                                               ; preds = %18
  %41 = insertelement <4 x i64> undef, i64 %29, i32 0
  %42 = insertelement <2 x i64> poison, i64 %29, i32 0
  %43 = shufflevector <2 x i64> %42, <2 x i64> poison, <2 x i32> zeroinitializer
  %44 = or <2 x i64> %43, <i64 8, i64 16>
  %45 = shufflevector <2 x i64> %44, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %46 = shufflevector <4 x i64> %41, <4 x i64> %45, <4 x i32> <i32 0, i32 4, i32 5, i32 undef>
  %47 = or i64 %29, 24
  %48 = insertelement <4 x i64> %46, i64 %47, i32 3
  %49 = zext i32 %37 to i64
  %50 = add nsw i64 %49, -1
  %51 = and i64 %49, 3
  %52 = icmp ult i64 %50, 3
  br i1 %52, label %55, label %53

53:                                               ; preds = %40
  %54 = and i64 %49, 4294967292
  br label %89

55:                                               ; preds = %89, %40
  %56 = phi <4 x i64> [ undef, %40 ], [ %127, %89 ]
  %57 = phi i64 [ 0, %40 ], [ %129, %89 ]
  %58 = phi <4 x i64> [ %21, %40 ], [ %127, %89 ]
  %59 = phi <4 x i64> [ %48, %40 ], [ %128, %89 ]
  %60 = icmp eq i64 %51, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %55, %61
  %62 = phi i64 [ %74, %61 ], [ %57, %55 ]
  %63 = phi <4 x i64> [ %72, %61 ], [ %58, %55 ]
  %64 = phi <4 x i64> [ %73, %61 ], [ %59, %55 ]
  %65 = phi i64 [ %75, %61 ], [ %51, %55 ]
  %66 = shl i64 %62, 5
  %67 = and i64 %66, 4294967264
  %68 = getelementptr inbounds i8, i8* %38, i64 %67
  %69 = icmp eq <4 x i64> %64, %9
  %70 = bitcast i8* %68 to <4 x i64>*
  %71 = load <4 x i64>, <4 x i64>* %70, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15)
  store volatile <4 x i64> %71, <4 x i64>* %5, align 32, !tbaa !12
  %72 = select <4 x i1> %69, <4 x i64> %71, <4 x i64> %63
  %73 = add <4 x i64> %64, <i64 32, i64 32, i64 32, i64 32>
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15)
  %74 = add nuw nsw i64 %62, 1
  %75 = add i64 %65, -1
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %61, !llvm.loop !17

77:                                               ; preds = %55, %61, %18
  %78 = phi <4 x i64> [ %21, %18 ], [ %56, %55 ], [ %72, %61 ]
  %79 = shufflevector <4 x i64> %78, <4 x i64> undef, <2 x i32> <i32 0, i32 1>
  %80 = shufflevector <4 x i64> %78, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %81 = add <2 x i64> %80, %79
  %82 = shufflevector <2 x i64> %81, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>
  %83 = add <2 x i64> %82, %81
  %84 = extractelement <2 x i64> %83, i32 0
  %85 = or i64 %84, %20
  %86 = lshr i64 %85, %11
  %87 = add nuw nsw i64 %19, 1
  %88 = icmp eq i64 %87, %14
  br i1 %88, label %16, label %18, !llvm.loop !19

89:                                               ; preds = %89, %53
  %90 = phi i64 [ 0, %53 ], [ %129, %89 ]
  %91 = phi <4 x i64> [ %21, %53 ], [ %127, %89 ]
  %92 = phi <4 x i64> [ %48, %53 ], [ %128, %89 ]
  %93 = phi i64 [ %54, %53 ], [ %130, %89 ]
  %94 = shl i64 %90, 5
  %95 = and i64 %94, 4294967168
  %96 = getelementptr inbounds i8, i8* %38, i64 %95
  %97 = icmp eq <4 x i64> %92, %9
  %98 = bitcast i8* %96 to <4 x i64>*
  %99 = load <4 x i64>, <4 x i64>* %98, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15)
  store volatile <4 x i64> %99, <4 x i64>* %5, align 32, !tbaa !12
  %100 = select <4 x i1> %97, <4 x i64> %99, <4 x i64> %91
  %101 = add <4 x i64> %92, <i64 32, i64 32, i64 32, i64 32>
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15)
  %102 = shl i64 %90, 5
  %103 = and i64 %102, 4294967168
  %104 = or i64 %103, 32
  %105 = getelementptr inbounds i8, i8* %38, i64 %104
  %106 = icmp eq <4 x i64> %101, %9
  %107 = bitcast i8* %105 to <4 x i64>*
  %108 = load <4 x i64>, <4 x i64>* %107, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15)
  store volatile <4 x i64> %108, <4 x i64>* %5, align 32, !tbaa !12
  %109 = select <4 x i1> %106, <4 x i64> %108, <4 x i64> %100
  %110 = add <4 x i64> %92, <i64 64, i64 64, i64 64, i64 64>
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15)
  %111 = shl i64 %90, 5
  %112 = and i64 %111, 4294967168
  %113 = or i64 %112, 64
  %114 = getelementptr inbounds i8, i8* %38, i64 %113
  %115 = icmp eq <4 x i64> %110, %9
  %116 = bitcast i8* %114 to <4 x i64>*
  %117 = load <4 x i64>, <4 x i64>* %116, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15)
  store volatile <4 x i64> %117, <4 x i64>* %5, align 32, !tbaa !12
  %118 = select <4 x i1> %115, <4 x i64> %117, <4 x i64> %109
  %119 = add <4 x i64> %92, <i64 96, i64 96, i64 96, i64 96>
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15)
  %120 = shl i64 %90, 5
  %121 = and i64 %120, 4294967168
  %122 = or i64 %121, 96
  %123 = getelementptr inbounds i8, i8* %38, i64 %122
  %124 = icmp eq <4 x i64> %119, %9
  %125 = bitcast i8* %123 to <4 x i64>*
  %126 = load <4 x i64>, <4 x i64>* %125, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15)
  store volatile <4 x i64> %126, <4 x i64>* %5, align 32, !tbaa !12
  %127 = select <4 x i1> %124, <4 x i64> %126, <4 x i64> %118
  %128 = add <4 x i64> %92, <i64 128, i64 128, i64 128, i64 128>
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15)
  %129 = add nuw nsw i64 %90, 4
  %130 = add i64 %93, -4
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %55, label %89, !llvm.loop !20
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @uint64_t_secure_load(i64* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #4 {
  %5 = tail call i64 @uint64_t_secure_load_impl(i64* %0, %struct.ds_base* %1, i32 undef, i32 undef)
  ret i64 %5
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @uint32_t_secure_load(i32* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #4 {
  %5 = bitcast i32* %0 to i64*
  %6 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 undef, i32 undef)
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i16 @uint16_t_secure_load(i16* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #4 {
  %5 = bitcast i16* %0 to i64*
  %6 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 undef, i32 undef)
  %7 = trunc i64 %6 to i16
  ret i16 %7
}

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i8 @uint8_t_secure_load(i8* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #4 {
  %5 = bitcast i8* %0 to i64*
  %6 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 undef, i32 undef)
  %7 = trunc i64 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @uint64_t_secure_load_sensitive(i64* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #4 {
  %5 = tail call i64 @uint64_t_secure_double_load_impl(i64* %0, %struct.ds_base* %1, i32 %2, i32 undef)
  ret i64 %5
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @uint32_t_secure_load_sensitive(i32* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #4 {
  %5 = bitcast i32* %0 to i64*
  %6 = tail call i64 @uint64_t_secure_double_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef)
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i16 @uint16_t_secure_load_sensitive(i16* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #4 {
  %5 = bitcast i16* %0 to i64*
  %6 = tail call i64 @uint64_t_secure_double_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef)
  %7 = trunc i64 %6 to i16
  ret i16 %7
}

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i8 @uint8_t_secure_load_sensitive(i8* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #4 {
  %5 = bitcast i8* %0 to i64*
  %6 = tail call i64 @uint64_t_secure_double_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef)
  %7 = trunc i64 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @uint64_t_secure_load_single(i64* nocapture readonly %0, %struct.ds_base* nocapture readnone %1, i32 %2, i32 %3) local_unnamed_addr #5 {
  %5 = load i64, i64* %0, align 8, !tbaa !21
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @uint32_t_secure_load_single(i32* nocapture readonly %0, %struct.ds_base* nocapture readnone %1, i32 %2, i32 %3) local_unnamed_addr #5 {
  %5 = load i32, i32* %0, align 4, !tbaa !11
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local zeroext i16 @uint16_t_secure_load_single(i16* nocapture readonly %0, %struct.ds_base* nocapture readnone %1, i32 %2, i32 %3) local_unnamed_addr #5 {
  %5 = load i16, i16* %0, align 2, !tbaa !23
  ret i16 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local zeroext i8 @uint8_t_secure_load_single(i8* nocapture readonly %0, %struct.ds_base* nocapture readnone %1, i32 %2, i32 %3) local_unnamed_addr #5 {
  %5 = load i8, i8* %0, align 1, !tbaa !12
  ret i8 %5
}

; Function Attrs: mustprogress nofree norecurse nounwind uwtable willreturn
define dso_local i64 @uint64_t_secure_load_single_sensitive(i64* nocapture readnone %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 0
  %6 = load i8*, i8** %5, align 8, !tbaa !3
  %7 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 4
  %8 = load i32, i32* %7, align 8, !tbaa !9
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %6, i64 %9
  %11 = bitcast i8* %10 to i64*
  %12 = load volatile i64, i64* %11, align 8, !tbaa !21
  %13 = load volatile i64, i64* %11, align 8, !tbaa !21
  ret i64 %13
}

; Function Attrs: mustprogress nofree norecurse nounwind uwtable willreturn
define dso_local i32 @uint32_t_secure_load_single_sensitive(i32* nocapture readnone %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 0
  %6 = load i8*, i8** %5, align 8, !tbaa !3
  %7 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 4
  %8 = load i32, i32* %7, align 8, !tbaa !9
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %6, i64 %9
  %11 = bitcast i8* %10 to i32*
  %12 = load volatile i32, i32* %11, align 4, !tbaa !11
  %13 = load volatile i32, i32* %11, align 4, !tbaa !11
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nounwind uwtable willreturn
define dso_local zeroext i16 @uint16_t_secure_load_single_sensitive(i16* nocapture readnone %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 0
  %6 = load i8*, i8** %5, align 8, !tbaa !3
  %7 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 4
  %8 = load i32, i32* %7, align 8, !tbaa !9
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %6, i64 %9
  %11 = bitcast i8* %10 to i16*
  %12 = load volatile i16, i16* %11, align 2, !tbaa !23
  %13 = load volatile i16, i16* %11, align 2, !tbaa !23
  ret i16 %13
}

; Function Attrs: mustprogress nofree norecurse nounwind uwtable willreturn
define dso_local zeroext i8 @uint8_t_secure_load_single_sensitive(i8* nocapture readnone %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 0
  %6 = load i8*, i8** %5, align 8, !tbaa !3
  %7 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 0, i32 4
  %8 = load i32, i32* %7, align 8, !tbaa !9
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %6, i64 %9
  %11 = load volatile i8, i8* %10, align 1, !tbaa !12
  %12 = load volatile i8, i8* %10, align 1, !tbaa !12
  ret i8 %12
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
  %26 = load i8*, i8** %25, align 8, !tbaa !3
  %27 = ptrtoint i8* %26 to i64
  %28 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %24, i32 4
  %29 = load i32, i32* %28, align 8, !tbaa !9
  %30 = zext i32 %29 to i64
  %31 = add i64 %30, %27
  %32 = and i64 %31, -32
  %33 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %24, i32 5
  %34 = inttoptr i64 %32 to i8*
  %35 = load i32, i32* %33, align 4, !tbaa !10
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
  br i1 %50, label %22, label %23, !llvm.loop !25

51:                                               ; preds = %39, %51
  %52 = phi i8* [ %61, %51 ], [ %34, %39 ]
  %53 = phi <4 x i64> [ %60, %51 ], [ %47, %39 ]
  %54 = icmp eq <4 x i64> %53, %14
  %55 = select <4 x i1> %54, <4 x i64> %17, <4 x i64> zeroinitializer
  %56 = bitcast i8* %52 to <32 x i8>*
  %57 = load <32 x i8>, <32 x i8>* %56, align 1, !tbaa !12
  %58 = bitcast <4 x i64> %55 to <32 x i8>
  %59 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %57, <32 x i8> %18, <32 x i8> %58) #15
  store <32 x i8> %59, <32 x i8>* %56, align 1, !tbaa !12
  %60 = add <4 x i64> %53, <i64 32, i64 32, i64 32, i64 32>
  %61 = getelementptr inbounds i8, i8* %52, i64 32
  %62 = load i8*, i8** %25, align 8, !tbaa !3
  %63 = load i32, i32* %33, align 4, !tbaa !10
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = icmp ugt i8* %61, %65
  br i1 %66, label %48, label %51, !llvm.loop !26
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
  %27 = load i8*, i8** %26, align 8, !tbaa !3
  %28 = ptrtoint i8* %27 to i64
  %29 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %25, i32 4
  %30 = load i32, i32* %29, align 8, !tbaa !9
  %31 = zext i32 %30 to i64
  %32 = add i64 %31, %28
  %33 = and i64 %32, -32
  %34 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %25, i32 5
  %35 = inttoptr i64 %33 to i8*
  %36 = load i32, i32* %34, align 4, !tbaa !10
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
  br i1 %51, label %23, label %24, !llvm.loop !27

52:                                               ; preds = %40, %52
  %53 = phi i8* [ %62, %52 ], [ %35, %40 ]
  %54 = phi <4 x i64> [ %61, %52 ], [ %48, %40 ]
  %55 = icmp eq <4 x i64> %54, %15
  %56 = select <4 x i1> %55, <4 x i64> %18, <4 x i64> zeroinitializer
  %57 = bitcast i8* %53 to <32 x i8>*
  %58 = load <32 x i8>, <32 x i8>* %57, align 1, !tbaa !12
  %59 = bitcast <4 x i64> %56 to <32 x i8>
  %60 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %58, <32 x i8> %19, <32 x i8> %59) #15
  store <32 x i8> %60, <32 x i8>* %57, align 1, !tbaa !12
  %61 = add <4 x i64> %54, <i64 32, i64 32, i64 32, i64 32>
  %62 = getelementptr inbounds i8, i8* %53, i64 32
  %63 = load i8*, i8** %26, align 8, !tbaa !3
  %64 = load i32, i32* %34, align 4, !tbaa !10
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = icmp ugt i8* %62, %66
  br i1 %67, label %49, label %52, !llvm.loop !28
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
  %27 = load i8*, i8** %26, align 8, !tbaa !3
  %28 = ptrtoint i8* %27 to i64
  %29 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %25, i32 4
  %30 = load i32, i32* %29, align 8, !tbaa !9
  %31 = zext i32 %30 to i64
  %32 = add i64 %31, %28
  %33 = and i64 %32, -32
  %34 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %25, i32 5
  %35 = inttoptr i64 %33 to i8*
  %36 = load i32, i32* %34, align 4, !tbaa !10
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
  br i1 %51, label %23, label %24, !llvm.loop !29

52:                                               ; preds = %40, %52
  %53 = phi i8* [ %62, %52 ], [ %35, %40 ]
  %54 = phi <4 x i64> [ %61, %52 ], [ %48, %40 ]
  %55 = icmp eq <4 x i64> %54, %15
  %56 = select <4 x i1> %55, <4 x i64> %18, <4 x i64> zeroinitializer
  %57 = bitcast i8* %53 to <32 x i8>*
  %58 = load <32 x i8>, <32 x i8>* %57, align 1, !tbaa !12
  %59 = bitcast <4 x i64> %56 to <32 x i8>
  %60 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %58, <32 x i8> %19, <32 x i8> %59) #15
  store <32 x i8> %60, <32 x i8>* %57, align 1, !tbaa !12
  %61 = add <4 x i64> %54, <i64 32, i64 32, i64 32, i64 32>
  %62 = getelementptr inbounds i8, i8* %53, i64 32
  %63 = load i8*, i8** %26, align 8, !tbaa !3
  %64 = load i32, i32* %34, align 4, !tbaa !10
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = icmp ugt i8* %62, %66
  br i1 %67, label %49, label %52, !llvm.loop !30
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
  %27 = load i8*, i8** %26, align 8, !tbaa !3
  %28 = ptrtoint i8* %27 to i64
  %29 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %25, i32 4
  %30 = load i32, i32* %29, align 8, !tbaa !9
  %31 = zext i32 %30 to i64
  %32 = add i64 %31, %28
  %33 = and i64 %32, -32
  %34 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 %25, i32 5
  %35 = inttoptr i64 %33 to i8*
  %36 = load i32, i32* %34, align 4, !tbaa !10
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
  br i1 %51, label %23, label %24, !llvm.loop !31

52:                                               ; preds = %40, %52
  %53 = phi i8* [ %62, %52 ], [ %35, %40 ]
  %54 = phi <4 x i64> [ %61, %52 ], [ %48, %40 ]
  %55 = icmp eq <4 x i64> %54, %15
  %56 = select <4 x i1> %55, <4 x i64> %18, <4 x i64> zeroinitializer
  %57 = bitcast i8* %53 to <32 x i8>*
  %58 = load <32 x i8>, <32 x i8>* %57, align 1, !tbaa !12
  %59 = bitcast <4 x i64> %56 to <32 x i8>
  %60 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %58, <32 x i8> %19, <32 x i8> %59) #15
  store <32 x i8> %60, <32 x i8>* %57, align 1, !tbaa !12
  %61 = add <4 x i64> %54, <i64 32, i64 32, i64 32, i64 32>
  %62 = getelementptr inbounds i8, i8* %53, i64 32
  %63 = load i8*, i8** %26, align 8, !tbaa !3
  %64 = load i32, i32* %34, align 4, !tbaa !10
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = icmp ugt i8* %62, %66
  br i1 %67, label %49, label %52, !llvm.loop !32
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @uint64_t_secure_store(i64 %0, i64* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #8 {
  tail call void @uint64_t_secure_store_impl(i64 %0, i64* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @uint32_t_secure_store(i32 %0, i32* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #8 {
  tail call void @uint32_t_secure_store_impl(i32 %0, i32* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @uint16_t_secure_store(i16 zeroext %0, i16* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #8 {
  tail call void @uint16_t_secure_store_impl(i16 zeroext %0, i16* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @uint8_t_secure_store(i8 zeroext %0, i8* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #8 {
  tail call void @uint8_t_secure_store_impl(i8 zeroext %0, i8* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @uint64_t_secure_store_sensitive(i64 %0, i64* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #8 {
  tail call void @uint64_t_secure_store_impl(i64 %0, i64* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @uint32_t_secure_store_sensitive(i32 %0, i32* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #8 {
  tail call void @uint32_t_secure_store_impl(i32 %0, i32* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @uint16_t_secure_store_sensitive(i16 zeroext %0, i16* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #8 {
  tail call void @uint16_t_secure_store_impl(i16 zeroext %0, i16* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @uint8_t_secure_store_sensitive(i8 zeroext %0, i8* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #8 {
  tail call void @uint8_t_secure_store_impl(i8 zeroext %0, i8* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @uint64_t_secure_store_single(i64 %0, i64* nocapture %1, %struct.ds_base* nocapture readnone %2, i32 %3, i32 %4) local_unnamed_addr #9 {
  store i64 %0, i64* %1, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @uint32_t_secure_store_single(i32 %0, i32* nocapture %1, %struct.ds_base* nocapture readnone %2, i32 %3, i32 %4) local_unnamed_addr #9 {
  store i32 %0, i32* %1, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @uint16_t_secure_store_single(i16 zeroext %0, i16* nocapture %1, %struct.ds_base* nocapture readnone %2, i32 %3, i32 %4) local_unnamed_addr #9 {
  store i16 %0, i16* %1, align 2, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @uint8_t_secure_store_single(i8 zeroext %0, i8* nocapture %1, %struct.ds_base* nocapture readnone %2, i32 %3, i32 %4) local_unnamed_addr #9 {
  store i8 %0, i8* %1, align 1, !tbaa !12
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @uint64_t_secure_store_single_sensitive(i64 %0, i64* readnone %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #10 {
  %6 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !3
  %8 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 4
  %9 = load i32, i32* %8, align 8, !tbaa !9
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %7, i64 %10
  %12 = bitcast i8* %11 to i64*
  %13 = load volatile i64, i64* %12, align 8, !tbaa !21
  %14 = icmp eq i64* %1, null
  %15 = select i1 %14, i64 %13, i64 %0
  store volatile i64 %15, i64* %12, align 8, !tbaa !21
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @uint32_t_secure_store_single_sensitive(i32 %0, i32* readnone %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #10 {
  %6 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !3
  %8 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 4
  %9 = load i32, i32* %8, align 8, !tbaa !9
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %7, i64 %10
  %12 = bitcast i8* %11 to i32*
  %13 = load volatile i32, i32* %12, align 4, !tbaa !11
  %14 = icmp eq i32* %1, null
  %15 = select i1 %14, i32 %13, i32 %0
  store volatile i32 %15, i32* %12, align 4, !tbaa !11
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @uint16_t_secure_store_single_sensitive(i16 zeroext %0, i16* readnone %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #10 {
  %6 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !3
  %8 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 4
  %9 = load i32, i32* %8, align 8, !tbaa !9
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %7, i64 %10
  %12 = bitcast i8* %11 to i16*
  %13 = load volatile i16, i16* %12, align 2, !tbaa !23
  %14 = icmp eq i16* %1, null
  %15 = select i1 %14, i16 %13, i16 %0
  store volatile i16 %15, i16* %12, align 2, !tbaa !23
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @uint8_t_secure_store_single_sensitive(i8 zeroext %0, i8* readnone %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #10 {
  %6 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !3
  %8 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 4
  %9 = load i32, i32* %8, align 8, !tbaa !9
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %7, i64 %10
  %12 = load volatile i8, i8* %11, align 1, !tbaa !12
  %13 = icmp eq i8* %1, null
  %14 = select i1 %13, i8 %12, i8 %0
  store volatile i8 %14, i8* %11, align 1, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @branch_id(i8* nocapture %0) local_unnamed_addr #11 {
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #4 {
  %1 = alloca [32 x i8], align 16
  %2 = alloca %struct.anonymous, align 1
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
  %39 = alloca [1 x %struct.ds_base], align 8
  %40 = alloca [1 x %struct.ds_base], align 8
  %41 = alloca [1 x %struct.ds_base], align 8
  %42 = alloca [1 x %struct.ds_base], align 8
  %43 = alloca [1 x %struct.ds_base], align 8
  %44 = alloca [1 x %struct.ds_base], align 8
  %45 = alloca [1 x %struct.ds_base], align 8
  %46 = alloca [1 x %struct.ds_base], align 8
  %47 = alloca [1 x %struct.ds_base], align 8
  %48 = alloca [1 x %struct.ds_base], align 8
  %49 = alloca [1 x %struct.ds_base], align 8
  %50 = alloca [1 x %struct.ds_base], align 8
  %51 = alloca [1 x %struct.ds_base], align 8
  %52 = alloca [1 x %struct.ds_base], align 8
  %53 = alloca [1 x %struct.ds_base], align 8
  %54 = alloca [1 x %struct.ds_base], align 8
  %55 = alloca [1 x %struct.ds_base], align 8
  %56 = alloca [1 x %struct.ds_base], align 8
  %57 = alloca [1 x %struct.ds_base], align 8
  %58 = alloca [1 x %struct.ds_base], align 8
  %59 = alloca [1 x %struct.ds_base], align 8
  %60 = alloca [1 x %struct.ds_base], align 8
  %61 = alloca [1 x %struct.ds_base], align 8
  %62 = alloca [1 x %struct.ds_base], align 8
  %63 = alloca [1 x %struct.ds_base], align 8
  %64 = alloca [1 x %struct.ds_base], align 8
  %65 = alloca [1 x %struct.ds_base], align 8
  %66 = alloca [1 x %struct.ds_base], align 8
  %67 = alloca [1 x %struct.ds_base], align 8
  %68 = alloca [1 x %struct.ds_base], align 8
  %69 = alloca [1 x %struct.ds_base], align 8
  %70 = alloca [1 x %struct.ds_base], align 8
  %71 = alloca [1 x %struct.ds_base], align 8
  %72 = alloca [1 x %struct.ds_base], align 8
  %73 = alloca [1 x %struct.ds_base], align 8
  %74 = alloca [1 x %struct.ds_base], align 8
  %75 = alloca [1 x %struct.ds_base], align 8
  %76 = alloca [1 x %struct.ds_base], align 8
  %77 = alloca [1 x %struct.ds_base], align 8
  %78 = alloca [1 x %struct.ds_base], align 8
  %79 = alloca [1 x %struct.ds_base], align 8
  %80 = alloca [1 x %struct.ds_base], align 8
  %81 = alloca [1 x %struct.ds_base], align 8
  %82 = alloca [1 x %struct.ds_base], align 8
  %83 = alloca [1 x %struct.ds_base], align 8
  %84 = alloca [1 x %struct.ds_base], align 8
  %85 = alloca [1 x %struct.ds_base], align 8
  %86 = alloca [1 x %struct.ds_base], align 8
  %87 = alloca [1 x %struct.ds_base], align 8
  %88 = alloca [1 x %struct.ds_base], align 8
  %89 = alloca [1 x %struct.ds_base], align 8
  %90 = alloca [1 x %struct.ds_base], align 8
  %91 = alloca [1 x %struct.ds_base], align 8
  %92 = alloca [1 x %struct.ds_base], align 8
  %93 = alloca [1 x %struct.ds_base], align 8
  %94 = alloca [1 x %struct.ds_base], align 8
  %95 = alloca [1 x %struct.ds_base], align 8
  %96 = alloca [1 x %struct.ds_base], align 8
  %97 = alloca [1 x %struct.ds_base], align 8
  %98 = alloca [1 x %struct.ds_base], align 8
  %99 = alloca [1 x %struct.ds_base], align 8
  %100 = alloca [1 x %struct.ds_base], align 8
  %101 = alloca [1 x %struct.ds_base], align 8
  %102 = alloca [1 x %struct.ds_base], align 8
  %103 = alloca [1 x %struct.ds_base], align 8
  %104 = alloca [1 x %struct.ds_base], align 8
  %105 = alloca [1 x %struct.ds_base], align 8
  %106 = alloca [1 x %struct.ds_base], align 8
  %107 = alloca [1 x %struct.ds_base], align 8
  %108 = alloca [1 x %struct.ds_base], align 8
  %109 = alloca [1 x %struct.ds_base], align 8
  %110 = alloca [1 x %struct.ds_base], align 8
  %111 = alloca [1 x %struct.ds_base], align 8
  %112 = alloca [1 x %struct.ds_base], align 8
  %113 = alloca [1 x %struct.ds_base], align 8
  %114 = alloca [1 x %struct.ds_base], align 8
  %115 = alloca [1 x %struct.ds_base], align 8
  %116 = alloca [1 x %struct.ds_base], align 8
  %117 = alloca [1 x %struct.ds_base], align 8
  %118 = alloca [1 x %struct.ds_base], align 8
  %119 = alloca [1 x %struct.ds_base], align 8
  %120 = alloca [1 x %struct.ds_base], align 8
  %121 = alloca [1 x %struct.ds_base], align 8
  %122 = alloca [1 x %struct.ds_base], align 8
  %123 = alloca [1 x %struct.ds_base], align 8
  %124 = alloca [1 x %struct.ds_base], align 8
  %125 = alloca [1 x %struct.ds_base], align 8
  %126 = alloca [1 x %struct.ds_base], align 8
  %127 = alloca [1 x %struct.ds_base], align 8
  %128 = alloca [1 x %struct.ds_base], align 8
  %129 = alloca [1 x %struct.ds_base], align 8
  %130 = alloca [1 x %struct.ds_base], align 8
  %131 = alloca [1 x %struct.ds_base], align 8
  %132 = alloca [1 x %struct.ds_base], align 8
  %133 = alloca [1 x %struct.ds_base], align 8
  %134 = alloca [1 x %struct.ds_base], align 8
  %135 = alloca [1 x %struct.ds_base], align 8
  %136 = alloca [1 x %struct.ds_base], align 8
  %137 = alloca [1 x %struct.ds_base], align 8
  %138 = alloca [1 x %struct.ds_base], align 8
  %139 = alloca [1 x %struct.ds_base], align 8
  %140 = alloca [1 x %struct.ds_base], align 8
  %141 = alloca [1 x %struct.ds_base], align 8
  %142 = alloca [1 x %struct.ds_base], align 8
  %143 = alloca [1 x %struct.ds_base], align 8
  %144 = alloca [1 x %struct.ds_base], align 8
  %145 = alloca [1 x %struct.ds_base], align 8
  %146 = alloca [1 x %struct.ds_base], align 8
  %147 = alloca [1 x %struct.ds_base], align 8
  %148 = alloca [1 x %struct.ds_base], align 8
  %149 = alloca [1 x %struct.ds_base], align 8
  %150 = alloca [1 x %struct.ds_base], align 8
  %151 = alloca [1 x %struct.ds_base], align 8
  %152 = alloca [1 x %struct.ds_base], align 8
  %153 = alloca [1 x %struct.ds_base], align 8
  %154 = alloca [1 x %struct.ds_base], align 8
  %155 = alloca [1 x %struct.ds_base], align 8
  %156 = alloca [1 x %struct.ds_base], align 8
  %157 = alloca [1 x %struct.ds_base], align 8
  %158 = alloca [1 x %struct.ds_base], align 8
  %159 = alloca [1 x %struct.ds_base], align 8
  %160 = alloca [1 x %struct.ds_base], align 8
  %161 = alloca [1 x %struct.ds_base], align 8
  %162 = alloca [1 x %struct.ds_base], align 8
  %163 = alloca [1 x %struct.ds_base], align 8
  %164 = alloca [1 x %struct.ds_base], align 8
  %165 = alloca [1 x %struct.ds_base], align 8
  %166 = alloca [1 x %struct.ds_base], align 8
  %167 = alloca [1 x %struct.ds_base], align 8
  %168 = alloca [1 x %struct.ds_base], align 8
  %169 = alloca [1 x %struct.ds_base], align 8
  %170 = alloca [1 x %struct.ds_base], align 8
  %171 = alloca [1 x %struct.ds_base], align 8
  %172 = alloca [1 x %struct.ds_base], align 8
  %173 = alloca [1 x %struct.ds_base], align 8
  %174 = alloca [1 x %struct.ds_base], align 8
  %175 = alloca [1 x %struct.ds_base], align 8
  %176 = alloca [1 x %struct.ds_base], align 8
  %177 = alloca [1 x %struct.ds_base], align 8
  %178 = alloca [1 x %struct.ds_base], align 8
  %179 = alloca [1 x %struct.ds_base], align 8
  %180 = alloca [1 x %struct.ds_base], align 8
  %181 = alloca [1 x %struct.ds_base], align 8
  %182 = alloca [1 x %struct.ds_base], align 8
  %183 = alloca [1 x %struct.ds_base], align 8
  %184 = alloca [1 x %struct.ds_base], align 8
  %185 = alloca [1 x %struct.ds_base], align 8
  %186 = alloca [1 x %struct.ds_base], align 8
  %187 = alloca [1 x %struct.ds_base], align 8
  %188 = alloca [1 x %struct.ds_base], align 8
  %189 = alloca [1 x %struct.ds_base], align 8
  %190 = alloca [1 x %struct.ds_base], align 8
  %191 = alloca [1 x %struct.ds_base], align 8
  %192 = alloca [1 x %struct.ds_base], align 8
  %193 = alloca [1 x %struct.ds_base], align 8
  %194 = alloca [1 x %struct.ds_base], align 8
  %195 = alloca [1 x %struct.ds_base], align 8
  %196 = alloca [1 x %struct.ds_base], align 8
  %197 = alloca [1 x %struct.ds_base], align 8
  %198 = alloca [1 x %struct.ds_base], align 8
  %199 = alloca [1 x %struct.ds_base], align 8
  %200 = alloca [1 x %struct.ds_base], align 8
  %201 = alloca [1 x %struct.ds_base], align 8
  %202 = alloca [1 x %struct.ds_base], align 8
  %203 = alloca [1 x %struct.ds_base], align 8
  %204 = alloca [1 x %struct.ds_base], align 8
  %205 = alloca [1 x %struct.ds_base], align 8
  %206 = alloca [1 x %struct.ds_base], align 8
  %207 = alloca [1 x %struct.ds_base], align 8
  %208 = alloca [1 x %struct.ds_base], align 8
  %209 = alloca [1 x %struct.ds_base], align 8
  %210 = alloca [1 x %struct.ds_base], align 8
  %211 = alloca [1 x %struct.ds_base], align 8
  %212 = alloca [1 x %struct.ds_base], align 8
  %213 = alloca [1 x %struct.ds_base], align 8
  %214 = alloca [1 x %struct.ds_base], align 8
  %215 = alloca [1 x %struct.ds_base], align 8
  %216 = alloca [1 x %struct.ds_base], align 8
  %217 = alloca [1 x %struct.ds_base], align 8
  %218 = alloca [1 x %struct.ds_base], align 8
  %219 = alloca [1 x %struct.ds_base], align 8
  %220 = alloca [1 x %struct.ds_base], align 8
  %221 = alloca [1 x %struct.ds_base], align 8
  %222 = alloca [1 x %struct.ds_base], align 8
  %223 = alloca [1 x %struct.ds_base], align 8
  %224 = alloca [1 x %struct.ds_base], align 8
  %225 = alloca [1 x %struct.ds_base], align 8
  %226 = alloca [1 x %struct.ds_base], align 8
  %227 = alloca [1 x %struct.ds_base], align 8
  %228 = alloca [1 x %struct.ds_base], align 8
  %229 = alloca [1 x %struct.ds_base], align 8
  %230 = alloca [1 x %struct.ds_base], align 8
  %231 = alloca [1 x %struct.ds_base], align 8
  %232 = alloca [1 x %struct.ds_base], align 8
  %233 = alloca [1 x %struct.ds_base], align 8
  %234 = alloca [1 x %struct.ds_base], align 8
  %235 = alloca [1 x %struct.ds_base], align 8
  %236 = alloca [1 x %struct.ds_base], align 8
  %237 = alloca [1 x %struct.ds_base], align 8
  %238 = alloca [1 x %struct.ds_base], align 8
  %239 = alloca [1 x %struct.ds_base], align 8
  %240 = alloca [1 x %struct.ds_base], align 8
  %241 = alloca [1 x %struct.ds_base], align 8
  %242 = alloca [1 x %struct.ds_base], align 8
  %243 = alloca [1 x %struct.ds_base], align 8
  %244 = alloca [1 x %struct.ds_base], align 8
  %245 = alloca [1 x %struct.ds_base], align 8
  %246 = alloca [1 x %struct.ds_base], align 8
  %247 = alloca [1 x %struct.ds_base], align 8
  %248 = alloca [1 x %struct.ds_base], align 8
  %249 = alloca [1 x %struct.ds_base], align 8
  %250 = alloca [1 x %struct.ds_base], align 8
  %251 = alloca [1 x %struct.ds_base], align 8
  %252 = alloca [1 x %struct.ds_base], align 8
  %253 = alloca [1 x %struct.ds_base], align 8
  %254 = alloca [1 x %struct.ds_base], align 8
  %255 = alloca [1 x %struct.ds_base], align 8
  %256 = alloca [1 x %struct.ds_base], align 8
  %257 = alloca [1 x %struct.ds_base], align 8
  %258 = alloca [1 x %struct.ds_base], align 8
  %259 = alloca [1 x %struct.ds_base], align 8
  %260 = alloca [1 x %struct.ds_base], align 8
  %261 = alloca [1 x %struct.ds_base], align 8
  %262 = alloca [1 x %struct.ds_base], align 8
  %263 = alloca [1 x %struct.ds_base], align 8
  %264 = alloca [1 x %struct.ds_base], align 8
  %265 = alloca [1 x %struct.ds_base], align 8
  %266 = alloca [1 x %struct.ds_base], align 8
  %267 = alloca [1 x %struct.ds_base], align 8
  %268 = alloca [1 x %struct.ds_base], align 8
  %269 = alloca [1 x %struct.ds_base], align 8
  %270 = alloca [1 x %struct.ds_base], align 8
  %271 = alloca [1 x %struct.ds_base], align 8
  %272 = alloca [1 x %struct.ds_base], align 8
  %273 = alloca [1 x %struct.ds_base], align 8
  %274 = alloca [1 x %struct.ds_base], align 8
  %275 = alloca [1 x %struct.ds_base], align 8
  %276 = alloca [1 x %struct.ds_base], align 8
  %277 = alloca [1 x %struct.ds_base], align 8
  %278 = alloca [1 x %struct.ds_base], align 8
  %279 = alloca [1 x %struct.ds_base], align 8
  %280 = alloca [1 x %struct.ds_base], align 8
  %281 = alloca [1 x %struct.ds_base], align 8
  %282 = alloca [1 x %struct.ds_base], align 8
  %283 = alloca [1 x %struct.ds_base], align 8
  %284 = alloca [1 x %struct.ds_base], align 8
  %285 = alloca [1 x %struct.ds_base], align 8
  %286 = alloca [1 x %struct.ds_base], align 8
  %287 = alloca [1 x %struct.ds_base], align 8
  %288 = alloca [1 x %struct.ds_base], align 8
  %289 = alloca [1 x %struct.ds_base], align 8
  %290 = alloca [1 x %struct.ds_base], align 8
  %291 = alloca [1 x %struct.ds_base], align 8
  %292 = alloca [1 x %struct.ds_base], align 8
  %293 = alloca [1 x %struct.ds_base], align 8
  %294 = alloca [1 x %struct.ds_base], align 8
  %295 = alloca [1 x %struct.ds_base], align 8
  %296 = alloca [1 x %struct.ds_base], align 8
  %297 = alloca [1 x %struct.ds_base], align 8
  %298 = alloca [1 x %struct.ds_base], align 8
  %299 = alloca [1 x %struct.ds_base], align 8
  %300 = alloca [1 x %struct.ds_base], align 8
  %301 = alloca [1 x %struct.ds_base], align 8
  %302 = alloca [1 x %struct.ds_base], align 8
  %303 = alloca [1 x %struct.ds_base], align 8
  %304 = alloca [1 x %struct.ds_base], align 8
  %305 = alloca [1 x %struct.ds_base], align 8
  %306 = alloca [1 x %struct.ds_base], align 8
  %307 = alloca [1 x %struct.ds_base], align 8
  %308 = alloca [1 x %struct.ds_base], align 8
  %309 = alloca [1 x %struct.ds_base], align 8
  %310 = alloca [1 x %struct.ds_base], align 8
  %311 = alloca [1 x %struct.ds_base], align 8
  %312 = alloca [1 x %struct.ds_base], align 8
  %313 = alloca [1 x %struct.ds_base], align 8
  %314 = alloca [1 x %struct.ds_base], align 8
  %315 = alloca [1 x %struct.ds_base], align 8
  %316 = alloca [1 x %struct.ds_base], align 8
  %317 = alloca [1 x %struct.ds_base], align 8
  %318 = alloca [1 x %struct.ds_base], align 8
  %319 = alloca [1 x %struct.ds_base], align 8
  %320 = alloca [1 x %struct.ds_base], align 8
  %321 = alloca [1 x %struct.ds_base], align 8
  %322 = alloca [1 x %struct.ds_base], align 8
  %323 = alloca [1 x %struct.ds_base], align 8
  %324 = alloca [1 x %struct.ds_base], align 8
  %325 = alloca [1 x %struct.ds_base], align 8
  %326 = alloca [1 x %struct.ds_base], align 8
  %327 = alloca [1 x %struct.ds_base], align 8
  %328 = alloca [1 x %struct.ds_base], align 8
  %329 = alloca [1 x %struct.ds_base], align 8
  %330 = alloca [1 x %struct.ds_base], align 8
  %331 = alloca [1 x %struct.ds_base], align 8
  %332 = alloca [1 x %struct.ds_base], align 8
  %333 = alloca [1 x %struct.ds_base], align 8
  %334 = alloca [1 x %struct.ds_base], align 8
  %335 = alloca [1 x %struct.ds_base], align 8
  %336 = alloca [1 x %struct.ds_base], align 8
  %337 = alloca [1 x %struct.ds_base], align 8
  %338 = alloca [1 x %struct.ds_base], align 8
  %339 = alloca [1 x %struct.ds_base], align 8
  %340 = alloca [1 x %struct.ds_base], align 8
  %341 = alloca [1 x %struct.ds_base], align 8
  %342 = alloca [1 x %struct.ds_base], align 8
  %343 = alloca [1 x %struct.ds_base], align 8
  %344 = alloca [1 x %struct.ds_base], align 8
  %345 = alloca [1 x %struct.ds_base], align 8
  %346 = alloca [1 x %struct.ds_base], align 8
  %347 = alloca [1 x %struct.ds_base], align 8
  %348 = alloca [1 x %struct.ds_base], align 8
  %349 = alloca [1 x %struct.ds_base], align 8
  %350 = alloca [1 x %struct.ds_base], align 8
  %351 = alloca [1 x %struct.ds_base], align 8
  %352 = alloca [1 x %struct.ds_base], align 8
  %353 = alloca [1 x %struct.ds_base], align 8
  %354 = alloca [1 x %struct.ds_base], align 8
  %355 = alloca [1 x %struct.ds_base], align 8
  %356 = alloca [1 x %struct.ds_base], align 8
  %357 = alloca [1 x %struct.ds_base], align 8
  %358 = alloca [1 x %struct.ds_base], align 8
  %359 = alloca [1 x %struct.ds_base], align 8
  %360 = alloca [1 x %struct.ds_base], align 8
  %361 = alloca [1 x %struct.ds_base], align 8
  %362 = alloca [1 x %struct.ds_base], align 8
  %363 = alloca [1 x %struct.ds_base], align 8
  %364 = alloca [1 x %struct.ds_base], align 8
  %365 = alloca [1 x %struct.ds_base], align 8
  %366 = alloca [1 x %struct.ds_base], align 8
  %367 = alloca [1 x %struct.ds_base], align 8
  %368 = alloca [1 x %struct.ds_base], align 8
  %369 = alloca [1 x %struct.ds_base], align 8
  %370 = alloca [1 x %struct.ds_base], align 8
  %371 = alloca [1 x %struct.ds_base], align 8
  %372 = alloca [1 x %struct.ds_base], align 8
  %373 = alloca [1 x %struct.ds_base], align 8
  %374 = alloca [1 x %struct.ds_base], align 8
  %375 = alloca [1 x %struct.ds_base], align 8
  %376 = alloca [1 x %struct.ds_base], align 8
  %377 = alloca [1 x %struct.ds_base], align 8
  %378 = alloca [1 x %struct.ds_base], align 8
  %379 = alloca [1 x %struct.ds_base], align 8
  %380 = alloca [1 x %struct.ds_base], align 8
  %381 = alloca [1 x %struct.ds_base], align 8
  %382 = alloca [1 x %struct.ds_base], align 8
  %383 = alloca [1 x %struct.ds_base], align 8
  %384 = alloca [1 x %struct.ds_base], align 8
  %385 = alloca [1 x %struct.ds_base], align 8
  %386 = alloca [1 x %struct.ds_base], align 8
  %387 = alloca [1 x %struct.ds_base], align 8
  %388 = alloca [1 x %struct.ds_base], align 8
  %389 = alloca [1 x %struct.ds_base], align 8
  %390 = alloca [1 x %struct.ds_base], align 8
  %391 = alloca [1 x %struct.ds_base], align 8
  %392 = alloca [1 x %struct.ds_base], align 8
  %393 = alloca [1 x %struct.ds_base], align 8
  %394 = alloca [1 x %struct.ds_base], align 8
  %395 = alloca [1 x %struct.ds_base], align 8
  %396 = alloca [1 x %struct.ds_base], align 8
  %397 = alloca [1 x %struct.ds_base], align 8
  %398 = alloca [1 x %struct.ds_base], align 8
  %399 = alloca [1 x %struct.ds_base], align 8
  %400 = alloca [1 x %struct.ds_base], align 8
  %401 = alloca [1 x %struct.ds_base], align 8
  %402 = alloca [1 x %struct.ds_base], align 8
  %403 = alloca [1 x %struct.ds_base], align 8
  %404 = alloca [1 x %struct.ds_base], align 8
  %405 = alloca [1 x %struct.ds_base], align 8
  %406 = alloca [1 x %struct.ds_base], align 8
  %407 = alloca [1 x %struct.ds_base], align 8
  %408 = alloca [1 x %struct.ds_base], align 8
  %409 = alloca [1 x %struct.ds_base], align 8
  %410 = alloca [1 x %struct.ds_base], align 8
  %411 = alloca [1 x %struct.ds_base], align 8
  %412 = alloca [1 x %struct.ds_base], align 8
  %413 = alloca [1 x %struct.ds_base], align 8
  %414 = alloca [1 x %struct.ds_base], align 8
  %415 = alloca [1 x %struct.ds_base], align 8
  %416 = alloca [1 x %struct.ds_base], align 8
  %417 = alloca [1 x %struct.ds_base], align 8
  %418 = alloca [1 x %struct.ds_base], align 8
  %419 = alloca [1 x %struct.ds_base], align 8
  %420 = alloca [1 x %struct.ds_base], align 8
  %421 = alloca [1 x %struct.ds_base], align 8
  %422 = alloca [1 x %struct.ds_base], align 8
  %423 = alloca [1 x %struct.ds_base], align 8
  %424 = alloca [1 x %struct.ds_base], align 8
  %425 = alloca [1 x %struct.ds_base], align 8
  %426 = alloca [1 x %struct.ds_base], align 8
  %427 = alloca [1 x %struct.ds_base], align 8
  %428 = alloca [1 x %struct.ds_base], align 8
  %429 = alloca [1 x %struct.ds_base], align 8
  %430 = alloca [1 x %struct.ds_base], align 8
  %431 = alloca [1 x %struct.ds_base], align 8
  %432 = alloca [1 x %struct.ds_base], align 8
  %433 = alloca [1 x %struct.ds_base], align 8
  %434 = alloca [1 x %struct.ds_base], align 8
  %435 = alloca [1 x %struct.ds_base], align 8
  %436 = alloca [1 x %struct.ds_base], align 8
  %437 = alloca [1 x %struct.ds_base], align 8
  %438 = alloca [1 x %struct.ds_base], align 8
  %439 = alloca [1 x %struct.ds_base], align 8
  %440 = alloca [1 x %struct.ds_base], align 8
  %441 = alloca [1 x %struct.ds_base], align 8
  %442 = alloca [1 x %struct.ds_base], align 8
  %443 = alloca [1 x %struct.ds_base], align 8
  %444 = alloca [1 x %struct.ds_base], align 8
  %445 = alloca [1 x %struct.ds_base], align 8
  %446 = alloca [1 x %struct.ds_base], align 8
  %447 = alloca [1 x %struct.ds_base], align 8
  %448 = alloca [1 x %struct.ds_base], align 8
  %449 = alloca [1 x %struct.ds_base], align 8
  %450 = alloca [1 x %struct.ds_base], align 8
  %451 = alloca [1 x %struct.ds_base], align 8
  %452 = alloca [1 x %struct.ds_base], align 8
  %453 = alloca [1 x %struct.ds_base], align 8
  %454 = alloca [1 x %struct.ds_base], align 8
  %455 = alloca [1 x %struct.ds_base], align 8
  %456 = alloca [1 x %struct.ds_base], align 8
  %457 = alloca [1 x %struct.ds_base], align 8
  %458 = alloca [1 x %struct.ds_base], align 8
  %459 = alloca [1 x %struct.ds_base], align 8
  %460 = alloca [1 x %struct.ds_base], align 8
  %461 = alloca [1 x %struct.ds_base], align 8
  %462 = alloca [1 x %struct.ds_base], align 8
  %463 = alloca [1 x %struct.ds_base], align 8
  %464 = alloca [1 x %struct.ds_base], align 8
  %465 = alloca [1 x %struct.ds_base], align 8
  %466 = alloca [1 x %struct.ds_base], align 8
  %467 = alloca [1 x %struct.ds_base], align 8
  %468 = alloca [1 x %struct.ds_base], align 8
  %469 = alloca [1 x %struct.ds_base], align 8
  %470 = alloca [1 x %struct.ds_base], align 8
  %471 = alloca [1 x %struct.ds_base], align 8
  %472 = alloca [1 x %struct.ds_base], align 8
  %473 = alloca [1 x %struct.ds_base], align 8
  %474 = alloca [1 x %struct.ds_base], align 8
  %475 = alloca [1 x %struct.ds_base], align 8
  %476 = alloca [1 x %struct.ds_base], align 8
  %477 = alloca [1 x %struct.ds_base], align 8
  %478 = alloca [1 x %struct.ds_base], align 8
  %479 = alloca [1 x %struct.ds_base], align 8
  %480 = alloca [1 x %struct.ds_base], align 8
  %481 = alloca [1 x %struct.ds_base], align 8
  %482 = alloca [1 x %struct.ds_base], align 8
  %483 = alloca [1 x %struct.ds_base], align 8
  %484 = alloca [1 x %struct.ds_base], align 8
  %485 = alloca [1 x %struct.ds_base], align 8
  %486 = alloca [1 x %struct.ds_base], align 8
  %487 = alloca [1 x %struct.ds_base], align 8
  %488 = alloca [1 x %struct.ds_base], align 8
  %489 = alloca [1 x %struct.ds_base], align 8
  %490 = alloca [1 x %struct.ds_base], align 8
  %491 = alloca [1 x %struct.ds_base], align 8
  %492 = alloca [1 x %struct.ds_base], align 8
  %493 = alloca [1 x %struct.ds_base], align 8
  %494 = alloca [1 x %struct.ds_base], align 8
  %495 = alloca [1 x %struct.ds_base], align 8
  %496 = alloca [1 x %struct.ds_base], align 8
  %497 = alloca [1 x %struct.ds_base], align 8
  %498 = alloca [1 x %struct.ds_base], align 8
  %499 = alloca [1 x %struct.ds_base], align 8
  %500 = alloca [1 x %struct.ds_base], align 8
  %501 = alloca [1 x %struct.ds_base], align 8
  %502 = alloca [1 x %struct.ds_base], align 8
  %503 = alloca [1 x %struct.ds_base], align 8
  %504 = alloca [1 x %struct.ds_base], align 8
  %505 = alloca [1 x %struct.ds_base], align 8
  %506 = alloca [1 x %struct.ds_base], align 8
  %507 = alloca [1 x %struct.ds_base], align 8
  %508 = alloca [1 x %struct.ds_base], align 8
  %509 = alloca [1 x %struct.ds_base], align 8
  %510 = alloca [1 x %struct.ds_base], align 8
  %511 = alloca [1 x %struct.ds_base], align 8
  %512 = alloca [1 x %struct.ds_base], align 8
  %513 = alloca [1 x %struct.ds_base], align 8
  %514 = alloca [1 x %struct.ds_base], align 8
  %515 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %515) #15
  %516 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 258, i8* nonnull %516) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(258) %516, i8 0, i64 258, i1 false)
  %517 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 1
  %518 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 2
  %519 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 3
  %520 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 4
  %521 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 5
  %522 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 6
  %523 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 7
  %524 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 8
  %525 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 9
  %526 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 10
  %527 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 11
  %528 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 12
  %529 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 13
  %530 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 14
  %531 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 15
  %532 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 16
  %533 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 17
  %534 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 18
  %535 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 19
  %536 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 20
  %537 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 21
  %538 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 22
  %539 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 23
  %540 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 24
  %541 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 25
  %542 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 26
  %543 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 27
  %544 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 28
  %545 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 29
  %546 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 30
  %547 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 31
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %515, i8 0, i64 32, i1 false)
  %548 = call i64 @read(i32 0, i8* nonnull %515, i64 32) #15
  %549 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 1
  %550 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 2
  %551 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 3
  %552 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 4
  %553 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 5
  %554 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 6
  %555 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 7
  %556 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 8
  %557 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 9
  %558 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 10
  %559 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 11
  %560 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 12
  %561 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 13
  %562 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 14
  %563 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 15
  %564 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 16
  %565 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 17
  %566 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 18
  %567 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 19
  %568 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 20
  %569 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 21
  %570 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 22
  %571 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 23
  %572 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 24
  %573 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 25
  %574 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 26
  %575 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 27
  %576 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 28
  %577 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 29
  %578 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 30
  %579 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 31
  %580 = bitcast %struct.anonymous* %2 to <32 x i8>*
  store <32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, <32 x i8>* %580, align 1, !tbaa !12
  %581 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 32
  %582 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 33
  %583 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 34
  %584 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 35
  %585 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 36
  %586 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 37
  %587 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 38
  %588 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 39
  %589 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 40
  %590 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 41
  %591 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 42
  %592 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 43
  %593 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 44
  %594 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 45
  %595 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 46
  %596 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 47
  %597 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 48
  %598 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 49
  %599 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 50
  %600 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 51
  %601 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 52
  %602 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 53
  %603 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 54
  %604 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 55
  %605 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 56
  %606 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 57
  %607 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 58
  %608 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 59
  %609 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 60
  %610 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 61
  %611 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 62
  %612 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 63
  %613 = bitcast i8* %581 to <32 x i8>*
  store <32 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <32 x i8>* %613, align 1, !tbaa !12
  %614 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 64
  %615 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 65
  %616 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 66
  %617 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 67
  %618 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 68
  %619 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 69
  %620 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 70
  %621 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 71
  %622 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 72
  %623 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 73
  %624 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 74
  %625 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 75
  %626 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 76
  %627 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 77
  %628 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 78
  %629 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 79
  %630 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 80
  %631 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 81
  %632 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 82
  %633 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 83
  %634 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 84
  %635 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 85
  %636 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 86
  %637 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 87
  %638 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 88
  %639 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 89
  %640 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 90
  %641 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 91
  %642 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 92
  %643 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 93
  %644 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 94
  %645 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 95
  %646 = bitcast i8* %614 to <32 x i8>*
  store <32 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79, i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, <32 x i8>* %646, align 1, !tbaa !12
  %647 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 96
  %648 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 97
  %649 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 98
  %650 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 99
  %651 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 100
  %652 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 101
  %653 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 102
  %654 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 103
  %655 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 104
  %656 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 105
  %657 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 106
  %658 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 107
  %659 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 108
  %660 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 109
  %661 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 110
  %662 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 111
  %663 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 112
  %664 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 113
  %665 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 114
  %666 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 115
  %667 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 116
  %668 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 117
  %669 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 118
  %670 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 119
  %671 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 120
  %672 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 121
  %673 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 122
  %674 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 123
  %675 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 124
  %676 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 125
  %677 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 126
  %678 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 127
  %679 = bitcast i8* %647 to <32 x i8>*
  store <32 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111, i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, <32 x i8>* %679, align 1, !tbaa !12
  %680 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 128
  %681 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 129
  %682 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 130
  %683 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 131
  %684 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 132
  %685 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 133
  %686 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 134
  %687 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 135
  %688 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 136
  %689 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 137
  %690 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 138
  %691 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 139
  %692 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 140
  %693 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 141
  %694 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 142
  %695 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 143
  %696 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 144
  %697 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 145
  %698 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 146
  %699 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 147
  %700 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 148
  %701 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 149
  %702 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 150
  %703 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 151
  %704 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 152
  %705 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 153
  %706 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 154
  %707 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 155
  %708 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 156
  %709 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 157
  %710 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 158
  %711 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 159
  %712 = bitcast i8* %680 to <32 x i8>*
  store <32 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113, i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, <32 x i8>* %712, align 1, !tbaa !12
  %713 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 160
  %714 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 161
  %715 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 162
  %716 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 163
  %717 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 164
  %718 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 165
  %719 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 166
  %720 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 167
  %721 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 168
  %722 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 169
  %723 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 170
  %724 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 171
  %725 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 172
  %726 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 173
  %727 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 174
  %728 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 175
  %729 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 176
  %730 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 177
  %731 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 178
  %732 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 179
  %733 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 180
  %734 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 181
  %735 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 182
  %736 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 183
  %737 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 184
  %738 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 185
  %739 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 186
  %740 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 187
  %741 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 188
  %742 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 189
  %743 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 190
  %744 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 191
  %745 = bitcast i8* %713 to <32 x i8>*
  store <32 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81, i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, <32 x i8>* %745, align 1, !tbaa !12
  %746 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 192
  %747 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 193
  %748 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 194
  %749 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 195
  %750 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 196
  %751 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 197
  %752 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 198
  %753 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 199
  %754 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 200
  %755 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 201
  %756 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 202
  %757 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 203
  %758 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 204
  %759 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 205
  %760 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 206
  %761 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 207
  %762 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 208
  %763 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 209
  %764 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 210
  %765 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 211
  %766 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 212
  %767 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 213
  %768 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 214
  %769 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 215
  %770 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 216
  %771 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 217
  %772 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 218
  %773 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 219
  %774 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 220
  %775 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 221
  %776 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 222
  %777 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 223
  %778 = bitcast i8* %746 to <32 x i8>*
  store <32 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49, i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, <32 x i8>* %778, align 1, !tbaa !12
  %779 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 224
  %780 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 225
  %781 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 226
  %782 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 227
  %783 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 228
  %784 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 229
  %785 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 230
  %786 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 231
  %787 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 232
  %788 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 233
  %789 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 234
  %790 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 235
  %791 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 236
  %792 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 237
  %793 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 238
  %794 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 239
  %795 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 240
  %796 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 241
  %797 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 242
  %798 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 243
  %799 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 244
  %800 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 245
  %801 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 246
  %802 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 247
  %803 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 248
  %804 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 249
  %805 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 250
  %806 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 251
  %807 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 252
  %808 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 253
  %809 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 254
  %810 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 255
  %811 = bitcast i8* %779 to <32 x i8>*
  store <32 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17, i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8>* %811, align 1, !tbaa !12
  %812 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 1
  store i8 0, i8* %812, align 1, !tbaa !12
  %813 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 2
  store i8 0, i8* %813, align 1, !tbaa !12
  %814 = load i8, i8* %515, align 16, !tbaa !12
  %815 = load i8, i8* %516, align 1, !tbaa !12
  %816 = zext i8 %814 to i32
  %817 = zext i8 %815 to i32
  %818 = add nuw nsw i32 %817, %816
  %819 = and i32 %818, 31
  %820 = zext i32 %819 to i64
  %821 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %820
  %822 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %3, i64 0, i64 0
  %823 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %3, i64 0, i64 0, i32 0
  store i8* %516, i8** %823, align 8, !tbaa !3
  %824 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %3, i64 0, i64 0, i32 1
  store i64* null, i64** %824, align 8, !tbaa !33
  %825 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %3, i64 0, i64 0, i32 2
  %826 = bitcast i32* %825 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %826, align 8, !tbaa !11
  %827 = bitcast i8* %821 to i64*
  %828 = call i64 @uint64_t_secure_load_impl(i64* nonnull %827, %struct.ds_base* nonnull %822, i32 undef, i32 undef) #15
  %829 = trunc i64 %828 to i8
  store i8 %829, i8* %516, align 1, !tbaa !12
  %830 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %4, i64 0, i64 0
  %831 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %4, i64 0, i64 0, i32 0
  store i8* %516, i8** %831, align 8, !tbaa !3
  %832 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %4, i64 0, i64 0, i32 1
  store i64* null, i64** %832, align 8, !tbaa !33
  %833 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %4, i64 0, i64 0, i32 2
  %834 = bitcast i32* %833 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %834, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %815, i8* nonnull %821, %struct.ds_base* nonnull %830, i32 1, i32 undef) #15
  %835 = load i8, i8* %517, align 1, !tbaa !12
  %836 = load i8, i8* %549, align 1, !tbaa !12
  %837 = zext i8 %835 to i32
  %838 = zext i8 %836 to i32
  %839 = add nuw nsw i32 %818, %837
  %840 = add nuw nsw i32 %839, %838
  %841 = and i32 %840, 31
  %842 = zext i32 %841 to i64
  %843 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %842
  %844 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %5, i64 0, i64 0
  %845 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %5, i64 0, i64 0, i32 0
  store i8* %516, i8** %845, align 8, !tbaa !3
  %846 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %5, i64 0, i64 0, i32 1
  store i64* null, i64** %846, align 8, !tbaa !33
  %847 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %5, i64 0, i64 0, i32 2
  %848 = bitcast i32* %847 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %848, align 8, !tbaa !11
  %849 = bitcast i8* %843 to i64*
  %850 = call i64 @uint64_t_secure_load_impl(i64* nonnull %849, %struct.ds_base* nonnull %844, i32 undef, i32 undef) #15
  %851 = trunc i64 %850 to i8
  store i8 %851, i8* %549, align 1, !tbaa !12
  %852 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %6, i64 0, i64 0
  %853 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %6, i64 0, i64 0, i32 0
  store i8* %516, i8** %853, align 8, !tbaa !3
  %854 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %6, i64 0, i64 0, i32 1
  store i64* null, i64** %854, align 8, !tbaa !33
  %855 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %6, i64 0, i64 0, i32 2
  %856 = bitcast i32* %855 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %856, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %836, i8* nonnull %843, %struct.ds_base* nonnull %852, i32 1, i32 undef) #15
  %857 = load i8, i8* %518, align 2, !tbaa !12
  %858 = load i8, i8* %550, align 1, !tbaa !12
  %859 = zext i8 %857 to i32
  %860 = zext i8 %858 to i32
  %861 = add nuw nsw i32 %840, %859
  %862 = add nuw nsw i32 %861, %860
  %863 = and i32 %862, 31
  %864 = zext i32 %863 to i64
  %865 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %864
  %866 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %7, i64 0, i64 0
  %867 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %7, i64 0, i64 0, i32 0
  store i8* %516, i8** %867, align 8, !tbaa !3
  %868 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %7, i64 0, i64 0, i32 1
  store i64* null, i64** %868, align 8, !tbaa !33
  %869 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %7, i64 0, i64 0, i32 2
  %870 = bitcast i32* %869 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %870, align 8, !tbaa !11
  %871 = bitcast i8* %865 to i64*
  %872 = call i64 @uint64_t_secure_load_impl(i64* nonnull %871, %struct.ds_base* nonnull %866, i32 undef, i32 undef) #15
  %873 = trunc i64 %872 to i8
  store i8 %873, i8* %550, align 1, !tbaa !12
  %874 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %8, i64 0, i64 0
  %875 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %8, i64 0, i64 0, i32 0
  store i8* %516, i8** %875, align 8, !tbaa !3
  %876 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %8, i64 0, i64 0, i32 1
  store i64* null, i64** %876, align 8, !tbaa !33
  %877 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %8, i64 0, i64 0, i32 2
  %878 = bitcast i32* %877 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %878, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %858, i8* nonnull %865, %struct.ds_base* nonnull %874, i32 1, i32 undef) #15
  %879 = load i8, i8* %519, align 1, !tbaa !12
  %880 = load i8, i8* %551, align 1, !tbaa !12
  %881 = zext i8 %879 to i32
  %882 = zext i8 %880 to i32
  %883 = add nuw nsw i32 %862, %881
  %884 = add nuw nsw i32 %883, %882
  %885 = and i32 %884, 31
  %886 = zext i32 %885 to i64
  %887 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %886
  %888 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %9, i64 0, i64 0
  %889 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %9, i64 0, i64 0, i32 0
  store i8* %516, i8** %889, align 8, !tbaa !3
  %890 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %9, i64 0, i64 0, i32 1
  store i64* null, i64** %890, align 8, !tbaa !33
  %891 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %9, i64 0, i64 0, i32 2
  %892 = bitcast i32* %891 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %892, align 8, !tbaa !11
  %893 = bitcast i8* %887 to i64*
  %894 = call i64 @uint64_t_secure_load_impl(i64* nonnull %893, %struct.ds_base* nonnull %888, i32 undef, i32 undef) #15
  %895 = trunc i64 %894 to i8
  store i8 %895, i8* %551, align 1, !tbaa !12
  %896 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %10, i64 0, i64 0
  %897 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %10, i64 0, i64 0, i32 0
  store i8* %516, i8** %897, align 8, !tbaa !3
  %898 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %10, i64 0, i64 0, i32 1
  store i64* null, i64** %898, align 8, !tbaa !33
  %899 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %10, i64 0, i64 0, i32 2
  %900 = bitcast i32* %899 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %900, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %880, i8* nonnull %887, %struct.ds_base* nonnull %896, i32 1, i32 undef) #15
  %901 = load i8, i8* %520, align 4, !tbaa !12
  %902 = load i8, i8* %552, align 1, !tbaa !12
  %903 = zext i8 %901 to i32
  %904 = zext i8 %902 to i32
  %905 = add nuw nsw i32 %884, %903
  %906 = add nuw nsw i32 %905, %904
  %907 = and i32 %906, 31
  %908 = zext i32 %907 to i64
  %909 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %908
  %910 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %11, i64 0, i64 0
  %911 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %11, i64 0, i64 0, i32 0
  store i8* %516, i8** %911, align 8, !tbaa !3
  %912 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %11, i64 0, i64 0, i32 1
  store i64* null, i64** %912, align 8, !tbaa !33
  %913 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %11, i64 0, i64 0, i32 2
  %914 = bitcast i32* %913 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %914, align 8, !tbaa !11
  %915 = bitcast i8* %909 to i64*
  %916 = call i64 @uint64_t_secure_load_impl(i64* nonnull %915, %struct.ds_base* nonnull %910, i32 undef, i32 undef) #15
  %917 = trunc i64 %916 to i8
  store i8 %917, i8* %552, align 1, !tbaa !12
  %918 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %12, i64 0, i64 0
  %919 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %12, i64 0, i64 0, i32 0
  store i8* %516, i8** %919, align 8, !tbaa !3
  %920 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %12, i64 0, i64 0, i32 1
  store i64* null, i64** %920, align 8, !tbaa !33
  %921 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %12, i64 0, i64 0, i32 2
  %922 = bitcast i32* %921 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %922, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %902, i8* nonnull %909, %struct.ds_base* nonnull %918, i32 1, i32 undef) #15
  %923 = load i8, i8* %521, align 1, !tbaa !12
  %924 = load i8, i8* %553, align 1, !tbaa !12
  %925 = zext i8 %923 to i32
  %926 = zext i8 %924 to i32
  %927 = add nuw nsw i32 %906, %925
  %928 = add nuw nsw i32 %927, %926
  %929 = and i32 %928, 31
  %930 = zext i32 %929 to i64
  %931 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %930
  %932 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %13, i64 0, i64 0
  %933 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %13, i64 0, i64 0, i32 0
  store i8* %516, i8** %933, align 8, !tbaa !3
  %934 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %13, i64 0, i64 0, i32 1
  store i64* null, i64** %934, align 8, !tbaa !33
  %935 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %13, i64 0, i64 0, i32 2
  %936 = bitcast i32* %935 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %936, align 8, !tbaa !11
  %937 = bitcast i8* %931 to i64*
  %938 = call i64 @uint64_t_secure_load_impl(i64* nonnull %937, %struct.ds_base* nonnull %932, i32 undef, i32 undef) #15
  %939 = trunc i64 %938 to i8
  store i8 %939, i8* %553, align 1, !tbaa !12
  %940 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %14, i64 0, i64 0
  %941 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %14, i64 0, i64 0, i32 0
  store i8* %516, i8** %941, align 8, !tbaa !3
  %942 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %14, i64 0, i64 0, i32 1
  store i64* null, i64** %942, align 8, !tbaa !33
  %943 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %14, i64 0, i64 0, i32 2
  %944 = bitcast i32* %943 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %944, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %924, i8* nonnull %931, %struct.ds_base* nonnull %940, i32 1, i32 undef) #15
  %945 = load i8, i8* %522, align 2, !tbaa !12
  %946 = load i8, i8* %554, align 1, !tbaa !12
  %947 = zext i8 %945 to i32
  %948 = zext i8 %946 to i32
  %949 = add nuw nsw i32 %928, %947
  %950 = add nuw nsw i32 %949, %948
  %951 = and i32 %950, 31
  %952 = zext i32 %951 to i64
  %953 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %952
  %954 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %15, i64 0, i64 0
  %955 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %15, i64 0, i64 0, i32 0
  store i8* %516, i8** %955, align 8, !tbaa !3
  %956 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %15, i64 0, i64 0, i32 1
  store i64* null, i64** %956, align 8, !tbaa !33
  %957 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %15, i64 0, i64 0, i32 2
  %958 = bitcast i32* %957 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %958, align 8, !tbaa !11
  %959 = bitcast i8* %953 to i64*
  %960 = call i64 @uint64_t_secure_load_impl(i64* nonnull %959, %struct.ds_base* nonnull %954, i32 undef, i32 undef) #15
  %961 = trunc i64 %960 to i8
  store i8 %961, i8* %554, align 1, !tbaa !12
  %962 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %16, i64 0, i64 0
  %963 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %16, i64 0, i64 0, i32 0
  store i8* %516, i8** %963, align 8, !tbaa !3
  %964 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %16, i64 0, i64 0, i32 1
  store i64* null, i64** %964, align 8, !tbaa !33
  %965 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %16, i64 0, i64 0, i32 2
  %966 = bitcast i32* %965 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %966, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %946, i8* nonnull %953, %struct.ds_base* nonnull %962, i32 1, i32 undef) #15
  %967 = load i8, i8* %523, align 1, !tbaa !12
  %968 = load i8, i8* %555, align 1, !tbaa !12
  %969 = zext i8 %967 to i32
  %970 = zext i8 %968 to i32
  %971 = add nuw nsw i32 %950, %969
  %972 = add nuw nsw i32 %971, %970
  %973 = and i32 %972, 31
  %974 = zext i32 %973 to i64
  %975 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %974
  %976 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %17, i64 0, i64 0
  %977 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %17, i64 0, i64 0, i32 0
  store i8* %516, i8** %977, align 8, !tbaa !3
  %978 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %17, i64 0, i64 0, i32 1
  store i64* null, i64** %978, align 8, !tbaa !33
  %979 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %17, i64 0, i64 0, i32 2
  %980 = bitcast i32* %979 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %980, align 8, !tbaa !11
  %981 = bitcast i8* %975 to i64*
  %982 = call i64 @uint64_t_secure_load_impl(i64* nonnull %981, %struct.ds_base* nonnull %976, i32 undef, i32 undef) #15
  %983 = trunc i64 %982 to i8
  store i8 %983, i8* %555, align 1, !tbaa !12
  %984 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %18, i64 0, i64 0
  %985 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %18, i64 0, i64 0, i32 0
  store i8* %516, i8** %985, align 8, !tbaa !3
  %986 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %18, i64 0, i64 0, i32 1
  store i64* null, i64** %986, align 8, !tbaa !33
  %987 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %18, i64 0, i64 0, i32 2
  %988 = bitcast i32* %987 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %988, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %968, i8* nonnull %975, %struct.ds_base* nonnull %984, i32 1, i32 undef) #15
  %989 = load i8, i8* %524, align 8, !tbaa !12
  %990 = load i8, i8* %556, align 1, !tbaa !12
  %991 = zext i8 %989 to i32
  %992 = zext i8 %990 to i32
  %993 = add nuw nsw i32 %972, %991
  %994 = add nuw nsw i32 %993, %992
  %995 = and i32 %994, 31
  %996 = zext i32 %995 to i64
  %997 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %996
  %998 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %19, i64 0, i64 0
  %999 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %19, i64 0, i64 0, i32 0
  store i8* %516, i8** %999, align 8, !tbaa !3
  %1000 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %19, i64 0, i64 0, i32 1
  store i64* null, i64** %1000, align 8, !tbaa !33
  %1001 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %19, i64 0, i64 0, i32 2
  %1002 = bitcast i32* %1001 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1002, align 8, !tbaa !11
  %1003 = bitcast i8* %997 to i64*
  %1004 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1003, %struct.ds_base* nonnull %998, i32 undef, i32 undef) #15
  %1005 = trunc i64 %1004 to i8
  store i8 %1005, i8* %556, align 1, !tbaa !12
  %1006 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %20, i64 0, i64 0
  %1007 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %20, i64 0, i64 0, i32 0
  store i8* %516, i8** %1007, align 8, !tbaa !3
  %1008 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %20, i64 0, i64 0, i32 1
  store i64* null, i64** %1008, align 8, !tbaa !33
  %1009 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %20, i64 0, i64 0, i32 2
  %1010 = bitcast i32* %1009 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1010, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %990, i8* nonnull %997, %struct.ds_base* nonnull %1006, i32 1, i32 undef) #15
  %1011 = load i8, i8* %525, align 1, !tbaa !12
  %1012 = load i8, i8* %557, align 1, !tbaa !12
  %1013 = zext i8 %1011 to i32
  %1014 = zext i8 %1012 to i32
  %1015 = add nuw nsw i32 %994, %1013
  %1016 = add nuw nsw i32 %1015, %1014
  %1017 = and i32 %1016, 31
  %1018 = zext i32 %1017 to i64
  %1019 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1018
  %1020 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %21, i64 0, i64 0
  %1021 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %21, i64 0, i64 0, i32 0
  store i8* %516, i8** %1021, align 8, !tbaa !3
  %1022 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %21, i64 0, i64 0, i32 1
  store i64* null, i64** %1022, align 8, !tbaa !33
  %1023 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %21, i64 0, i64 0, i32 2
  %1024 = bitcast i32* %1023 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1024, align 8, !tbaa !11
  %1025 = bitcast i8* %1019 to i64*
  %1026 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1025, %struct.ds_base* nonnull %1020, i32 undef, i32 undef) #15
  %1027 = trunc i64 %1026 to i8
  store i8 %1027, i8* %557, align 1, !tbaa !12
  %1028 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %22, i64 0, i64 0
  %1029 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %22, i64 0, i64 0, i32 0
  store i8* %516, i8** %1029, align 8, !tbaa !3
  %1030 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %22, i64 0, i64 0, i32 1
  store i64* null, i64** %1030, align 8, !tbaa !33
  %1031 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %22, i64 0, i64 0, i32 2
  %1032 = bitcast i32* %1031 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1032, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1012, i8* nonnull %1019, %struct.ds_base* nonnull %1028, i32 1, i32 undef) #15
  %1033 = load i8, i8* %526, align 2, !tbaa !12
  %1034 = load i8, i8* %558, align 1, !tbaa !12
  %1035 = zext i8 %1033 to i32
  %1036 = zext i8 %1034 to i32
  %1037 = add nuw nsw i32 %1016, %1035
  %1038 = add nuw nsw i32 %1037, %1036
  %1039 = and i32 %1038, 31
  %1040 = zext i32 %1039 to i64
  %1041 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1040
  %1042 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %23, i64 0, i64 0
  %1043 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %23, i64 0, i64 0, i32 0
  store i8* %516, i8** %1043, align 8, !tbaa !3
  %1044 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %23, i64 0, i64 0, i32 1
  store i64* null, i64** %1044, align 8, !tbaa !33
  %1045 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %23, i64 0, i64 0, i32 2
  %1046 = bitcast i32* %1045 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1046, align 8, !tbaa !11
  %1047 = bitcast i8* %1041 to i64*
  %1048 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1047, %struct.ds_base* nonnull %1042, i32 undef, i32 undef) #15
  %1049 = trunc i64 %1048 to i8
  store i8 %1049, i8* %558, align 1, !tbaa !12
  %1050 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %24, i64 0, i64 0
  %1051 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %24, i64 0, i64 0, i32 0
  store i8* %516, i8** %1051, align 8, !tbaa !3
  %1052 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %24, i64 0, i64 0, i32 1
  store i64* null, i64** %1052, align 8, !tbaa !33
  %1053 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %24, i64 0, i64 0, i32 2
  %1054 = bitcast i32* %1053 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1054, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1034, i8* nonnull %1041, %struct.ds_base* nonnull %1050, i32 1, i32 undef) #15
  %1055 = load i8, i8* %527, align 1, !tbaa !12
  %1056 = load i8, i8* %559, align 1, !tbaa !12
  %1057 = zext i8 %1055 to i32
  %1058 = zext i8 %1056 to i32
  %1059 = add nuw nsw i32 %1038, %1057
  %1060 = add nuw nsw i32 %1059, %1058
  %1061 = and i32 %1060, 31
  %1062 = zext i32 %1061 to i64
  %1063 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1062
  %1064 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %25, i64 0, i64 0
  %1065 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %25, i64 0, i64 0, i32 0
  store i8* %516, i8** %1065, align 8, !tbaa !3
  %1066 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %25, i64 0, i64 0, i32 1
  store i64* null, i64** %1066, align 8, !tbaa !33
  %1067 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %25, i64 0, i64 0, i32 2
  %1068 = bitcast i32* %1067 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1068, align 8, !tbaa !11
  %1069 = bitcast i8* %1063 to i64*
  %1070 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1069, %struct.ds_base* nonnull %1064, i32 undef, i32 undef) #15
  %1071 = trunc i64 %1070 to i8
  store i8 %1071, i8* %559, align 1, !tbaa !12
  %1072 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %26, i64 0, i64 0
  %1073 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %26, i64 0, i64 0, i32 0
  store i8* %516, i8** %1073, align 8, !tbaa !3
  %1074 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %26, i64 0, i64 0, i32 1
  store i64* null, i64** %1074, align 8, !tbaa !33
  %1075 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %26, i64 0, i64 0, i32 2
  %1076 = bitcast i32* %1075 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1076, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1056, i8* nonnull %1063, %struct.ds_base* nonnull %1072, i32 1, i32 undef) #15
  %1077 = load i8, i8* %528, align 4, !tbaa !12
  %1078 = load i8, i8* %560, align 1, !tbaa !12
  %1079 = zext i8 %1077 to i32
  %1080 = zext i8 %1078 to i32
  %1081 = add nuw nsw i32 %1060, %1079
  %1082 = add nuw nsw i32 %1081, %1080
  %1083 = and i32 %1082, 31
  %1084 = zext i32 %1083 to i64
  %1085 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1084
  %1086 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %27, i64 0, i64 0
  %1087 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %27, i64 0, i64 0, i32 0
  store i8* %516, i8** %1087, align 8, !tbaa !3
  %1088 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %27, i64 0, i64 0, i32 1
  store i64* null, i64** %1088, align 8, !tbaa !33
  %1089 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %27, i64 0, i64 0, i32 2
  %1090 = bitcast i32* %1089 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1090, align 8, !tbaa !11
  %1091 = bitcast i8* %1085 to i64*
  %1092 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1091, %struct.ds_base* nonnull %1086, i32 undef, i32 undef) #15
  %1093 = trunc i64 %1092 to i8
  store i8 %1093, i8* %560, align 1, !tbaa !12
  %1094 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %28, i64 0, i64 0
  %1095 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %28, i64 0, i64 0, i32 0
  store i8* %516, i8** %1095, align 8, !tbaa !3
  %1096 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %28, i64 0, i64 0, i32 1
  store i64* null, i64** %1096, align 8, !tbaa !33
  %1097 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %28, i64 0, i64 0, i32 2
  %1098 = bitcast i32* %1097 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1098, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1078, i8* nonnull %1085, %struct.ds_base* nonnull %1094, i32 1, i32 undef) #15
  %1099 = load i8, i8* %529, align 1, !tbaa !12
  %1100 = load i8, i8* %561, align 1, !tbaa !12
  %1101 = zext i8 %1099 to i32
  %1102 = zext i8 %1100 to i32
  %1103 = add nuw nsw i32 %1082, %1101
  %1104 = add nuw nsw i32 %1103, %1102
  %1105 = and i32 %1104, 31
  %1106 = zext i32 %1105 to i64
  %1107 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1106
  %1108 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %29, i64 0, i64 0
  %1109 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %29, i64 0, i64 0, i32 0
  store i8* %516, i8** %1109, align 8, !tbaa !3
  %1110 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %29, i64 0, i64 0, i32 1
  store i64* null, i64** %1110, align 8, !tbaa !33
  %1111 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %29, i64 0, i64 0, i32 2
  %1112 = bitcast i32* %1111 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1112, align 8, !tbaa !11
  %1113 = bitcast i8* %1107 to i64*
  %1114 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1113, %struct.ds_base* nonnull %1108, i32 undef, i32 undef) #15
  %1115 = trunc i64 %1114 to i8
  store i8 %1115, i8* %561, align 1, !tbaa !12
  %1116 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %30, i64 0, i64 0
  %1117 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %30, i64 0, i64 0, i32 0
  store i8* %516, i8** %1117, align 8, !tbaa !3
  %1118 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %30, i64 0, i64 0, i32 1
  store i64* null, i64** %1118, align 8, !tbaa !33
  %1119 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %30, i64 0, i64 0, i32 2
  %1120 = bitcast i32* %1119 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1120, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1100, i8* nonnull %1107, %struct.ds_base* nonnull %1116, i32 1, i32 undef) #15
  %1121 = load i8, i8* %530, align 2, !tbaa !12
  %1122 = load i8, i8* %562, align 1, !tbaa !12
  %1123 = zext i8 %1121 to i32
  %1124 = zext i8 %1122 to i32
  %1125 = add nuw nsw i32 %1104, %1123
  %1126 = add nuw nsw i32 %1125, %1124
  %1127 = and i32 %1126, 31
  %1128 = zext i32 %1127 to i64
  %1129 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1128
  %1130 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %31, i64 0, i64 0
  %1131 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %31, i64 0, i64 0, i32 0
  store i8* %516, i8** %1131, align 8, !tbaa !3
  %1132 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %31, i64 0, i64 0, i32 1
  store i64* null, i64** %1132, align 8, !tbaa !33
  %1133 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %31, i64 0, i64 0, i32 2
  %1134 = bitcast i32* %1133 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1134, align 8, !tbaa !11
  %1135 = bitcast i8* %1129 to i64*
  %1136 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1135, %struct.ds_base* nonnull %1130, i32 undef, i32 undef) #15
  %1137 = trunc i64 %1136 to i8
  store i8 %1137, i8* %562, align 1, !tbaa !12
  %1138 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %32, i64 0, i64 0
  %1139 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %32, i64 0, i64 0, i32 0
  store i8* %516, i8** %1139, align 8, !tbaa !3
  %1140 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %32, i64 0, i64 0, i32 1
  store i64* null, i64** %1140, align 8, !tbaa !33
  %1141 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %32, i64 0, i64 0, i32 2
  %1142 = bitcast i32* %1141 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1142, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1122, i8* nonnull %1129, %struct.ds_base* nonnull %1138, i32 1, i32 undef) #15
  %1143 = load i8, i8* %531, align 1, !tbaa !12
  %1144 = load i8, i8* %563, align 1, !tbaa !12
  %1145 = zext i8 %1143 to i32
  %1146 = zext i8 %1144 to i32
  %1147 = add nuw nsw i32 %1126, %1145
  %1148 = add nuw nsw i32 %1147, %1146
  %1149 = and i32 %1148, 31
  %1150 = zext i32 %1149 to i64
  %1151 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1150
  %1152 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %33, i64 0, i64 0
  %1153 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %33, i64 0, i64 0, i32 0
  store i8* %516, i8** %1153, align 8, !tbaa !3
  %1154 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %33, i64 0, i64 0, i32 1
  store i64* null, i64** %1154, align 8, !tbaa !33
  %1155 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %33, i64 0, i64 0, i32 2
  %1156 = bitcast i32* %1155 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1156, align 8, !tbaa !11
  %1157 = bitcast i8* %1151 to i64*
  %1158 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1157, %struct.ds_base* nonnull %1152, i32 undef, i32 undef) #15
  %1159 = trunc i64 %1158 to i8
  store i8 %1159, i8* %563, align 1, !tbaa !12
  %1160 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %34, i64 0, i64 0
  %1161 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %34, i64 0, i64 0, i32 0
  store i8* %516, i8** %1161, align 8, !tbaa !3
  %1162 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %34, i64 0, i64 0, i32 1
  store i64* null, i64** %1162, align 8, !tbaa !33
  %1163 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %34, i64 0, i64 0, i32 2
  %1164 = bitcast i32* %1163 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1164, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1144, i8* nonnull %1151, %struct.ds_base* nonnull %1160, i32 1, i32 undef) #15
  %1165 = load i8, i8* %532, align 16, !tbaa !12
  %1166 = load i8, i8* %564, align 1, !tbaa !12
  %1167 = zext i8 %1165 to i32
  %1168 = zext i8 %1166 to i32
  %1169 = add nuw nsw i32 %1148, %1167
  %1170 = add nuw nsw i32 %1169, %1168
  %1171 = and i32 %1170, 31
  %1172 = zext i32 %1171 to i64
  %1173 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1172
  %1174 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %35, i64 0, i64 0
  %1175 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %35, i64 0, i64 0, i32 0
  store i8* %516, i8** %1175, align 8, !tbaa !3
  %1176 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %35, i64 0, i64 0, i32 1
  store i64* null, i64** %1176, align 8, !tbaa !33
  %1177 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %35, i64 0, i64 0, i32 2
  %1178 = bitcast i32* %1177 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1178, align 8, !tbaa !11
  %1179 = bitcast i8* %1173 to i64*
  %1180 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1179, %struct.ds_base* nonnull %1174, i32 undef, i32 undef) #15
  %1181 = trunc i64 %1180 to i8
  store i8 %1181, i8* %564, align 1, !tbaa !12
  %1182 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %36, i64 0, i64 0
  %1183 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %36, i64 0, i64 0, i32 0
  store i8* %516, i8** %1183, align 8, !tbaa !3
  %1184 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %36, i64 0, i64 0, i32 1
  store i64* null, i64** %1184, align 8, !tbaa !33
  %1185 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %36, i64 0, i64 0, i32 2
  %1186 = bitcast i32* %1185 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1186, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1166, i8* nonnull %1173, %struct.ds_base* nonnull %1182, i32 1, i32 undef) #15
  %1187 = load i8, i8* %533, align 1, !tbaa !12
  %1188 = load i8, i8* %565, align 1, !tbaa !12
  %1189 = zext i8 %1187 to i32
  %1190 = zext i8 %1188 to i32
  %1191 = add nuw nsw i32 %1170, %1189
  %1192 = add nuw nsw i32 %1191, %1190
  %1193 = and i32 %1192, 31
  %1194 = zext i32 %1193 to i64
  %1195 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1194
  %1196 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %37, i64 0, i64 0
  %1197 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %37, i64 0, i64 0, i32 0
  store i8* %516, i8** %1197, align 8, !tbaa !3
  %1198 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %37, i64 0, i64 0, i32 1
  store i64* null, i64** %1198, align 8, !tbaa !33
  %1199 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %37, i64 0, i64 0, i32 2
  %1200 = bitcast i32* %1199 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1200, align 8, !tbaa !11
  %1201 = bitcast i8* %1195 to i64*
  %1202 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1201, %struct.ds_base* nonnull %1196, i32 undef, i32 undef) #15
  %1203 = trunc i64 %1202 to i8
  store i8 %1203, i8* %565, align 1, !tbaa !12
  %1204 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %38, i64 0, i64 0
  %1205 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %38, i64 0, i64 0, i32 0
  store i8* %516, i8** %1205, align 8, !tbaa !3
  %1206 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %38, i64 0, i64 0, i32 1
  store i64* null, i64** %1206, align 8, !tbaa !33
  %1207 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %38, i64 0, i64 0, i32 2
  %1208 = bitcast i32* %1207 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1208, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1188, i8* nonnull %1195, %struct.ds_base* nonnull %1204, i32 1, i32 undef) #15
  %1209 = load i8, i8* %534, align 2, !tbaa !12
  %1210 = load i8, i8* %566, align 1, !tbaa !12
  %1211 = zext i8 %1209 to i32
  %1212 = zext i8 %1210 to i32
  %1213 = add nuw nsw i32 %1192, %1211
  %1214 = add nuw nsw i32 %1213, %1212
  %1215 = and i32 %1214, 31
  %1216 = zext i32 %1215 to i64
  %1217 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1216
  %1218 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %39, i64 0, i64 0
  %1219 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %39, i64 0, i64 0, i32 0
  store i8* %516, i8** %1219, align 8, !tbaa !3
  %1220 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %39, i64 0, i64 0, i32 1
  store i64* null, i64** %1220, align 8, !tbaa !33
  %1221 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %39, i64 0, i64 0, i32 2
  %1222 = bitcast i32* %1221 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1222, align 8, !tbaa !11
  %1223 = bitcast i8* %1217 to i64*
  %1224 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1223, %struct.ds_base* nonnull %1218, i32 undef, i32 undef) #15
  %1225 = trunc i64 %1224 to i8
  store i8 %1225, i8* %566, align 1, !tbaa !12
  %1226 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %40, i64 0, i64 0
  %1227 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %40, i64 0, i64 0, i32 0
  store i8* %516, i8** %1227, align 8, !tbaa !3
  %1228 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %40, i64 0, i64 0, i32 1
  store i64* null, i64** %1228, align 8, !tbaa !33
  %1229 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %40, i64 0, i64 0, i32 2
  %1230 = bitcast i32* %1229 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1230, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1210, i8* nonnull %1217, %struct.ds_base* nonnull %1226, i32 1, i32 undef) #15
  %1231 = load i8, i8* %535, align 1, !tbaa !12
  %1232 = load i8, i8* %567, align 1, !tbaa !12
  %1233 = zext i8 %1231 to i32
  %1234 = zext i8 %1232 to i32
  %1235 = add nuw nsw i32 %1214, %1233
  %1236 = add nuw nsw i32 %1235, %1234
  %1237 = and i32 %1236, 31
  %1238 = zext i32 %1237 to i64
  %1239 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1238
  %1240 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %41, i64 0, i64 0
  %1241 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %41, i64 0, i64 0, i32 0
  store i8* %516, i8** %1241, align 8, !tbaa !3
  %1242 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %41, i64 0, i64 0, i32 1
  store i64* null, i64** %1242, align 8, !tbaa !33
  %1243 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %41, i64 0, i64 0, i32 2
  %1244 = bitcast i32* %1243 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1244, align 8, !tbaa !11
  %1245 = bitcast i8* %1239 to i64*
  %1246 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1245, %struct.ds_base* nonnull %1240, i32 undef, i32 undef) #15
  %1247 = trunc i64 %1246 to i8
  store i8 %1247, i8* %567, align 1, !tbaa !12
  %1248 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %42, i64 0, i64 0
  %1249 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %42, i64 0, i64 0, i32 0
  store i8* %516, i8** %1249, align 8, !tbaa !3
  %1250 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %42, i64 0, i64 0, i32 1
  store i64* null, i64** %1250, align 8, !tbaa !33
  %1251 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %42, i64 0, i64 0, i32 2
  %1252 = bitcast i32* %1251 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1252, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1232, i8* nonnull %1239, %struct.ds_base* nonnull %1248, i32 1, i32 undef) #15
  %1253 = load i8, i8* %536, align 4, !tbaa !12
  %1254 = load i8, i8* %568, align 1, !tbaa !12
  %1255 = zext i8 %1253 to i32
  %1256 = zext i8 %1254 to i32
  %1257 = add nuw nsw i32 %1236, %1255
  %1258 = add nuw nsw i32 %1257, %1256
  %1259 = and i32 %1258, 31
  %1260 = zext i32 %1259 to i64
  %1261 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1260
  %1262 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %43, i64 0, i64 0
  %1263 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %43, i64 0, i64 0, i32 0
  store i8* %516, i8** %1263, align 8, !tbaa !3
  %1264 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %43, i64 0, i64 0, i32 1
  store i64* null, i64** %1264, align 8, !tbaa !33
  %1265 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %43, i64 0, i64 0, i32 2
  %1266 = bitcast i32* %1265 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1266, align 8, !tbaa !11
  %1267 = bitcast i8* %1261 to i64*
  %1268 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1267, %struct.ds_base* nonnull %1262, i32 undef, i32 undef) #15
  %1269 = trunc i64 %1268 to i8
  store i8 %1269, i8* %568, align 1, !tbaa !12
  %1270 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %44, i64 0, i64 0
  %1271 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %44, i64 0, i64 0, i32 0
  store i8* %516, i8** %1271, align 8, !tbaa !3
  %1272 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %44, i64 0, i64 0, i32 1
  store i64* null, i64** %1272, align 8, !tbaa !33
  %1273 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %44, i64 0, i64 0, i32 2
  %1274 = bitcast i32* %1273 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1274, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1254, i8* nonnull %1261, %struct.ds_base* nonnull %1270, i32 1, i32 undef) #15
  %1275 = load i8, i8* %537, align 1, !tbaa !12
  %1276 = load i8, i8* %569, align 1, !tbaa !12
  %1277 = zext i8 %1275 to i32
  %1278 = zext i8 %1276 to i32
  %1279 = add nuw nsw i32 %1258, %1277
  %1280 = add nuw nsw i32 %1279, %1278
  %1281 = and i32 %1280, 31
  %1282 = zext i32 %1281 to i64
  %1283 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1282
  %1284 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %45, i64 0, i64 0
  %1285 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %45, i64 0, i64 0, i32 0
  store i8* %516, i8** %1285, align 8, !tbaa !3
  %1286 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %45, i64 0, i64 0, i32 1
  store i64* null, i64** %1286, align 8, !tbaa !33
  %1287 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %45, i64 0, i64 0, i32 2
  %1288 = bitcast i32* %1287 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1288, align 8, !tbaa !11
  %1289 = bitcast i8* %1283 to i64*
  %1290 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1289, %struct.ds_base* nonnull %1284, i32 undef, i32 undef) #15
  %1291 = trunc i64 %1290 to i8
  store i8 %1291, i8* %569, align 1, !tbaa !12
  %1292 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %46, i64 0, i64 0
  %1293 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %46, i64 0, i64 0, i32 0
  store i8* %516, i8** %1293, align 8, !tbaa !3
  %1294 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %46, i64 0, i64 0, i32 1
  store i64* null, i64** %1294, align 8, !tbaa !33
  %1295 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %46, i64 0, i64 0, i32 2
  %1296 = bitcast i32* %1295 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1296, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1276, i8* nonnull %1283, %struct.ds_base* nonnull %1292, i32 1, i32 undef) #15
  %1297 = load i8, i8* %538, align 2, !tbaa !12
  %1298 = load i8, i8* %570, align 1, !tbaa !12
  %1299 = zext i8 %1297 to i32
  %1300 = zext i8 %1298 to i32
  %1301 = add nuw nsw i32 %1280, %1299
  %1302 = add nuw nsw i32 %1301, %1300
  %1303 = and i32 %1302, 31
  %1304 = zext i32 %1303 to i64
  %1305 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1304
  %1306 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %47, i64 0, i64 0
  %1307 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %47, i64 0, i64 0, i32 0
  store i8* %516, i8** %1307, align 8, !tbaa !3
  %1308 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %47, i64 0, i64 0, i32 1
  store i64* null, i64** %1308, align 8, !tbaa !33
  %1309 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %47, i64 0, i64 0, i32 2
  %1310 = bitcast i32* %1309 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1310, align 8, !tbaa !11
  %1311 = bitcast i8* %1305 to i64*
  %1312 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1311, %struct.ds_base* nonnull %1306, i32 undef, i32 undef) #15
  %1313 = trunc i64 %1312 to i8
  store i8 %1313, i8* %570, align 1, !tbaa !12
  %1314 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %48, i64 0, i64 0
  %1315 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %48, i64 0, i64 0, i32 0
  store i8* %516, i8** %1315, align 8, !tbaa !3
  %1316 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %48, i64 0, i64 0, i32 1
  store i64* null, i64** %1316, align 8, !tbaa !33
  %1317 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %48, i64 0, i64 0, i32 2
  %1318 = bitcast i32* %1317 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1318, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1298, i8* nonnull %1305, %struct.ds_base* nonnull %1314, i32 1, i32 undef) #15
  %1319 = load i8, i8* %539, align 1, !tbaa !12
  %1320 = load i8, i8* %571, align 1, !tbaa !12
  %1321 = zext i8 %1319 to i32
  %1322 = zext i8 %1320 to i32
  %1323 = add nuw nsw i32 %1302, %1321
  %1324 = add nuw nsw i32 %1323, %1322
  %1325 = and i32 %1324, 31
  %1326 = zext i32 %1325 to i64
  %1327 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1326
  %1328 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %49, i64 0, i64 0
  %1329 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %49, i64 0, i64 0, i32 0
  store i8* %516, i8** %1329, align 8, !tbaa !3
  %1330 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %49, i64 0, i64 0, i32 1
  store i64* null, i64** %1330, align 8, !tbaa !33
  %1331 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %49, i64 0, i64 0, i32 2
  %1332 = bitcast i32* %1331 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1332, align 8, !tbaa !11
  %1333 = bitcast i8* %1327 to i64*
  %1334 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1333, %struct.ds_base* nonnull %1328, i32 undef, i32 undef) #15
  %1335 = trunc i64 %1334 to i8
  store i8 %1335, i8* %571, align 1, !tbaa !12
  %1336 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %50, i64 0, i64 0
  %1337 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %50, i64 0, i64 0, i32 0
  store i8* %516, i8** %1337, align 8, !tbaa !3
  %1338 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %50, i64 0, i64 0, i32 1
  store i64* null, i64** %1338, align 8, !tbaa !33
  %1339 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %50, i64 0, i64 0, i32 2
  %1340 = bitcast i32* %1339 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1340, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1320, i8* nonnull %1327, %struct.ds_base* nonnull %1336, i32 1, i32 undef) #15
  %1341 = load i8, i8* %540, align 8, !tbaa !12
  %1342 = load i8, i8* %572, align 1, !tbaa !12
  %1343 = zext i8 %1341 to i32
  %1344 = zext i8 %1342 to i32
  %1345 = add nuw nsw i32 %1324, %1343
  %1346 = add nuw nsw i32 %1345, %1344
  %1347 = and i32 %1346, 31
  %1348 = zext i32 %1347 to i64
  %1349 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1348
  %1350 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %51, i64 0, i64 0
  %1351 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %51, i64 0, i64 0, i32 0
  store i8* %516, i8** %1351, align 8, !tbaa !3
  %1352 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %51, i64 0, i64 0, i32 1
  store i64* null, i64** %1352, align 8, !tbaa !33
  %1353 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %51, i64 0, i64 0, i32 2
  %1354 = bitcast i32* %1353 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1354, align 8, !tbaa !11
  %1355 = bitcast i8* %1349 to i64*
  %1356 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1355, %struct.ds_base* nonnull %1350, i32 undef, i32 undef) #15
  %1357 = trunc i64 %1356 to i8
  store i8 %1357, i8* %572, align 1, !tbaa !12
  %1358 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %52, i64 0, i64 0
  %1359 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %52, i64 0, i64 0, i32 0
  store i8* %516, i8** %1359, align 8, !tbaa !3
  %1360 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %52, i64 0, i64 0, i32 1
  store i64* null, i64** %1360, align 8, !tbaa !33
  %1361 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %52, i64 0, i64 0, i32 2
  %1362 = bitcast i32* %1361 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1362, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1342, i8* nonnull %1349, %struct.ds_base* nonnull %1358, i32 1, i32 undef) #15
  %1363 = load i8, i8* %541, align 1, !tbaa !12
  %1364 = load i8, i8* %573, align 1, !tbaa !12
  %1365 = zext i8 %1363 to i32
  %1366 = zext i8 %1364 to i32
  %1367 = add nuw nsw i32 %1346, %1365
  %1368 = add nuw nsw i32 %1367, %1366
  %1369 = and i32 %1368, 31
  %1370 = zext i32 %1369 to i64
  %1371 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1370
  %1372 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %53, i64 0, i64 0
  %1373 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %53, i64 0, i64 0, i32 0
  store i8* %516, i8** %1373, align 8, !tbaa !3
  %1374 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %53, i64 0, i64 0, i32 1
  store i64* null, i64** %1374, align 8, !tbaa !33
  %1375 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %53, i64 0, i64 0, i32 2
  %1376 = bitcast i32* %1375 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1376, align 8, !tbaa !11
  %1377 = bitcast i8* %1371 to i64*
  %1378 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1377, %struct.ds_base* nonnull %1372, i32 undef, i32 undef) #15
  %1379 = trunc i64 %1378 to i8
  store i8 %1379, i8* %573, align 1, !tbaa !12
  %1380 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %54, i64 0, i64 0
  %1381 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %54, i64 0, i64 0, i32 0
  store i8* %516, i8** %1381, align 8, !tbaa !3
  %1382 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %54, i64 0, i64 0, i32 1
  store i64* null, i64** %1382, align 8, !tbaa !33
  %1383 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %54, i64 0, i64 0, i32 2
  %1384 = bitcast i32* %1383 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1384, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1364, i8* nonnull %1371, %struct.ds_base* nonnull %1380, i32 1, i32 undef) #15
  %1385 = load i8, i8* %542, align 2, !tbaa !12
  %1386 = load i8, i8* %574, align 1, !tbaa !12
  %1387 = zext i8 %1385 to i32
  %1388 = zext i8 %1386 to i32
  %1389 = add nuw nsw i32 %1368, %1387
  %1390 = add nuw nsw i32 %1389, %1388
  %1391 = and i32 %1390, 31
  %1392 = zext i32 %1391 to i64
  %1393 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1392
  %1394 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %55, i64 0, i64 0
  %1395 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %55, i64 0, i64 0, i32 0
  store i8* %516, i8** %1395, align 8, !tbaa !3
  %1396 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %55, i64 0, i64 0, i32 1
  store i64* null, i64** %1396, align 8, !tbaa !33
  %1397 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %55, i64 0, i64 0, i32 2
  %1398 = bitcast i32* %1397 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1398, align 8, !tbaa !11
  %1399 = bitcast i8* %1393 to i64*
  %1400 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1399, %struct.ds_base* nonnull %1394, i32 undef, i32 undef) #15
  %1401 = trunc i64 %1400 to i8
  store i8 %1401, i8* %574, align 1, !tbaa !12
  %1402 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %56, i64 0, i64 0
  %1403 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %56, i64 0, i64 0, i32 0
  store i8* %516, i8** %1403, align 8, !tbaa !3
  %1404 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %56, i64 0, i64 0, i32 1
  store i64* null, i64** %1404, align 8, !tbaa !33
  %1405 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %56, i64 0, i64 0, i32 2
  %1406 = bitcast i32* %1405 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1406, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1386, i8* nonnull %1393, %struct.ds_base* nonnull %1402, i32 1, i32 undef) #15
  %1407 = load i8, i8* %543, align 1, !tbaa !12
  %1408 = load i8, i8* %575, align 1, !tbaa !12
  %1409 = zext i8 %1407 to i32
  %1410 = zext i8 %1408 to i32
  %1411 = add nuw nsw i32 %1390, %1409
  %1412 = add nuw nsw i32 %1411, %1410
  %1413 = and i32 %1412, 31
  %1414 = zext i32 %1413 to i64
  %1415 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1414
  %1416 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %57, i64 0, i64 0
  %1417 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %57, i64 0, i64 0, i32 0
  store i8* %516, i8** %1417, align 8, !tbaa !3
  %1418 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %57, i64 0, i64 0, i32 1
  store i64* null, i64** %1418, align 8, !tbaa !33
  %1419 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %57, i64 0, i64 0, i32 2
  %1420 = bitcast i32* %1419 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1420, align 8, !tbaa !11
  %1421 = bitcast i8* %1415 to i64*
  %1422 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1421, %struct.ds_base* nonnull %1416, i32 undef, i32 undef) #15
  %1423 = trunc i64 %1422 to i8
  store i8 %1423, i8* %575, align 1, !tbaa !12
  %1424 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %58, i64 0, i64 0
  %1425 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %58, i64 0, i64 0, i32 0
  store i8* %516, i8** %1425, align 8, !tbaa !3
  %1426 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %58, i64 0, i64 0, i32 1
  store i64* null, i64** %1426, align 8, !tbaa !33
  %1427 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %58, i64 0, i64 0, i32 2
  %1428 = bitcast i32* %1427 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1428, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1408, i8* nonnull %1415, %struct.ds_base* nonnull %1424, i32 1, i32 undef) #15
  %1429 = load i8, i8* %544, align 4, !tbaa !12
  %1430 = load i8, i8* %576, align 1, !tbaa !12
  %1431 = zext i8 %1429 to i32
  %1432 = zext i8 %1430 to i32
  %1433 = add nuw nsw i32 %1412, %1431
  %1434 = add nuw nsw i32 %1433, %1432
  %1435 = and i32 %1434, 31
  %1436 = zext i32 %1435 to i64
  %1437 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1436
  %1438 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %59, i64 0, i64 0
  %1439 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %59, i64 0, i64 0, i32 0
  store i8* %516, i8** %1439, align 8, !tbaa !3
  %1440 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %59, i64 0, i64 0, i32 1
  store i64* null, i64** %1440, align 8, !tbaa !33
  %1441 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %59, i64 0, i64 0, i32 2
  %1442 = bitcast i32* %1441 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1442, align 8, !tbaa !11
  %1443 = bitcast i8* %1437 to i64*
  %1444 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1443, %struct.ds_base* nonnull %1438, i32 undef, i32 undef) #15
  %1445 = trunc i64 %1444 to i8
  store i8 %1445, i8* %576, align 1, !tbaa !12
  %1446 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %60, i64 0, i64 0
  %1447 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %60, i64 0, i64 0, i32 0
  store i8* %516, i8** %1447, align 8, !tbaa !3
  %1448 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %60, i64 0, i64 0, i32 1
  store i64* null, i64** %1448, align 8, !tbaa !33
  %1449 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %60, i64 0, i64 0, i32 2
  %1450 = bitcast i32* %1449 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1450, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1430, i8* nonnull %1437, %struct.ds_base* nonnull %1446, i32 1, i32 undef) #15
  %1451 = load i8, i8* %545, align 1, !tbaa !12
  %1452 = load i8, i8* %577, align 1, !tbaa !12
  %1453 = zext i8 %1451 to i32
  %1454 = zext i8 %1452 to i32
  %1455 = add nuw nsw i32 %1434, %1453
  %1456 = add nuw nsw i32 %1455, %1454
  %1457 = and i32 %1456, 31
  %1458 = zext i32 %1457 to i64
  %1459 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1458
  %1460 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %61, i64 0, i64 0
  %1461 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %61, i64 0, i64 0, i32 0
  store i8* %516, i8** %1461, align 8, !tbaa !3
  %1462 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %61, i64 0, i64 0, i32 1
  store i64* null, i64** %1462, align 8, !tbaa !33
  %1463 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %61, i64 0, i64 0, i32 2
  %1464 = bitcast i32* %1463 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1464, align 8, !tbaa !11
  %1465 = bitcast i8* %1459 to i64*
  %1466 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1465, %struct.ds_base* nonnull %1460, i32 undef, i32 undef) #15
  %1467 = trunc i64 %1466 to i8
  store i8 %1467, i8* %577, align 1, !tbaa !12
  %1468 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %62, i64 0, i64 0
  %1469 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %62, i64 0, i64 0, i32 0
  store i8* %516, i8** %1469, align 8, !tbaa !3
  %1470 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %62, i64 0, i64 0, i32 1
  store i64* null, i64** %1470, align 8, !tbaa !33
  %1471 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %62, i64 0, i64 0, i32 2
  %1472 = bitcast i32* %1471 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1472, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1452, i8* nonnull %1459, %struct.ds_base* nonnull %1468, i32 1, i32 undef) #15
  %1473 = load i8, i8* %546, align 2, !tbaa !12
  %1474 = load i8, i8* %578, align 1, !tbaa !12
  %1475 = zext i8 %1473 to i32
  %1476 = zext i8 %1474 to i32
  %1477 = add nuw nsw i32 %1456, %1475
  %1478 = add nuw nsw i32 %1477, %1476
  %1479 = and i32 %1478, 31
  %1480 = zext i32 %1479 to i64
  %1481 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1480
  %1482 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %63, i64 0, i64 0
  %1483 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %63, i64 0, i64 0, i32 0
  store i8* %516, i8** %1483, align 8, !tbaa !3
  %1484 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %63, i64 0, i64 0, i32 1
  store i64* null, i64** %1484, align 8, !tbaa !33
  %1485 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %63, i64 0, i64 0, i32 2
  %1486 = bitcast i32* %1485 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1486, align 8, !tbaa !11
  %1487 = bitcast i8* %1481 to i64*
  %1488 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1487, %struct.ds_base* nonnull %1482, i32 undef, i32 undef) #15
  %1489 = trunc i64 %1488 to i8
  store i8 %1489, i8* %578, align 1, !tbaa !12
  %1490 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %64, i64 0, i64 0
  %1491 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %64, i64 0, i64 0, i32 0
  store i8* %516, i8** %1491, align 8, !tbaa !3
  %1492 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %64, i64 0, i64 0, i32 1
  store i64* null, i64** %1492, align 8, !tbaa !33
  %1493 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %64, i64 0, i64 0, i32 2
  %1494 = bitcast i32* %1493 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1494, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1474, i8* nonnull %1481, %struct.ds_base* nonnull %1490, i32 1, i32 undef) #15
  %1495 = load i8, i8* %547, align 1, !tbaa !12
  %1496 = load i8, i8* %579, align 1, !tbaa !12
  %1497 = zext i8 %1495 to i32
  %1498 = zext i8 %1496 to i32
  %1499 = add nuw nsw i32 %1478, %1497
  %1500 = add nuw nsw i32 %1499, %1498
  %1501 = and i32 %1500, 31
  %1502 = zext i32 %1501 to i64
  %1503 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1502
  %1504 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %65, i64 0, i64 0
  %1505 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %65, i64 0, i64 0, i32 0
  store i8* %516, i8** %1505, align 8, !tbaa !3
  %1506 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %65, i64 0, i64 0, i32 1
  store i64* null, i64** %1506, align 8, !tbaa !33
  %1507 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %65, i64 0, i64 0, i32 2
  %1508 = bitcast i32* %1507 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1508, align 8, !tbaa !11
  %1509 = bitcast i8* %1503 to i64*
  %1510 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1509, %struct.ds_base* nonnull %1504, i32 undef, i32 undef) #15
  %1511 = trunc i64 %1510 to i8
  store i8 %1511, i8* %579, align 1, !tbaa !12
  %1512 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %66, i64 0, i64 0
  %1513 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %66, i64 0, i64 0, i32 0
  store i8* %516, i8** %1513, align 8, !tbaa !3
  %1514 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %66, i64 0, i64 0, i32 1
  store i64* null, i64** %1514, align 8, !tbaa !33
  %1515 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %66, i64 0, i64 0, i32 2
  %1516 = bitcast i32* %1515 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1516, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1496, i8* nonnull %1503, %struct.ds_base* nonnull %1512, i32 1, i32 undef) #15
  %1517 = load i8, i8* %515, align 16, !tbaa !12
  %1518 = load i8, i8* %581, align 1, !tbaa !12
  %1519 = zext i8 %1517 to i32
  %1520 = zext i8 %1518 to i32
  %1521 = add nuw nsw i32 %1500, %1519
  %1522 = add nuw nsw i32 %1521, %1520
  %1523 = and i32 %1522, 31
  %1524 = zext i32 %1523 to i64
  %1525 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1524
  %1526 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %67, i64 0, i64 0
  %1527 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %67, i64 0, i64 0, i32 0
  store i8* %516, i8** %1527, align 8, !tbaa !3
  %1528 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %67, i64 0, i64 0, i32 1
  store i64* null, i64** %1528, align 8, !tbaa !33
  %1529 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %67, i64 0, i64 0, i32 2
  %1530 = bitcast i32* %1529 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1530, align 8, !tbaa !11
  %1531 = bitcast i8* %1525 to i64*
  %1532 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1531, %struct.ds_base* nonnull %1526, i32 undef, i32 undef) #15
  %1533 = trunc i64 %1532 to i8
  store i8 %1533, i8* %581, align 1, !tbaa !12
  %1534 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %68, i64 0, i64 0
  %1535 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %68, i64 0, i64 0, i32 0
  store i8* %516, i8** %1535, align 8, !tbaa !3
  %1536 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %68, i64 0, i64 0, i32 1
  store i64* null, i64** %1536, align 8, !tbaa !33
  %1537 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %68, i64 0, i64 0, i32 2
  %1538 = bitcast i32* %1537 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1538, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1518, i8* nonnull %1525, %struct.ds_base* nonnull %1534, i32 1, i32 undef) #15
  %1539 = load i8, i8* %517, align 1, !tbaa !12
  %1540 = load i8, i8* %582, align 1, !tbaa !12
  %1541 = zext i8 %1539 to i32
  %1542 = zext i8 %1540 to i32
  %1543 = add nuw nsw i32 %1522, %1541
  %1544 = add nuw nsw i32 %1543, %1542
  %1545 = and i32 %1544, 31
  %1546 = zext i32 %1545 to i64
  %1547 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1546
  %1548 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %69, i64 0, i64 0
  %1549 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %69, i64 0, i64 0, i32 0
  store i8* %516, i8** %1549, align 8, !tbaa !3
  %1550 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %69, i64 0, i64 0, i32 1
  store i64* null, i64** %1550, align 8, !tbaa !33
  %1551 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %69, i64 0, i64 0, i32 2
  %1552 = bitcast i32* %1551 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1552, align 8, !tbaa !11
  %1553 = bitcast i8* %1547 to i64*
  %1554 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1553, %struct.ds_base* nonnull %1548, i32 undef, i32 undef) #15
  %1555 = trunc i64 %1554 to i8
  store i8 %1555, i8* %582, align 1, !tbaa !12
  %1556 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %70, i64 0, i64 0
  %1557 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %70, i64 0, i64 0, i32 0
  store i8* %516, i8** %1557, align 8, !tbaa !3
  %1558 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %70, i64 0, i64 0, i32 1
  store i64* null, i64** %1558, align 8, !tbaa !33
  %1559 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %70, i64 0, i64 0, i32 2
  %1560 = bitcast i32* %1559 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1560, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1540, i8* nonnull %1547, %struct.ds_base* nonnull %1556, i32 1, i32 undef) #15
  %1561 = load i8, i8* %518, align 2, !tbaa !12
  %1562 = load i8, i8* %583, align 1, !tbaa !12
  %1563 = zext i8 %1561 to i32
  %1564 = zext i8 %1562 to i32
  %1565 = add nuw nsw i32 %1544, %1563
  %1566 = add nuw nsw i32 %1565, %1564
  %1567 = and i32 %1566, 31
  %1568 = zext i32 %1567 to i64
  %1569 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1568
  %1570 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %71, i64 0, i64 0
  %1571 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %71, i64 0, i64 0, i32 0
  store i8* %516, i8** %1571, align 8, !tbaa !3
  %1572 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %71, i64 0, i64 0, i32 1
  store i64* null, i64** %1572, align 8, !tbaa !33
  %1573 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %71, i64 0, i64 0, i32 2
  %1574 = bitcast i32* %1573 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1574, align 8, !tbaa !11
  %1575 = bitcast i8* %1569 to i64*
  %1576 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1575, %struct.ds_base* nonnull %1570, i32 undef, i32 undef) #15
  %1577 = trunc i64 %1576 to i8
  store i8 %1577, i8* %583, align 1, !tbaa !12
  %1578 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %72, i64 0, i64 0
  %1579 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %72, i64 0, i64 0, i32 0
  store i8* %516, i8** %1579, align 8, !tbaa !3
  %1580 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %72, i64 0, i64 0, i32 1
  store i64* null, i64** %1580, align 8, !tbaa !33
  %1581 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %72, i64 0, i64 0, i32 2
  %1582 = bitcast i32* %1581 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1582, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1562, i8* nonnull %1569, %struct.ds_base* nonnull %1578, i32 1, i32 undef) #15
  %1583 = load i8, i8* %519, align 1, !tbaa !12
  %1584 = load i8, i8* %584, align 1, !tbaa !12
  %1585 = zext i8 %1583 to i32
  %1586 = zext i8 %1584 to i32
  %1587 = add nuw nsw i32 %1566, %1585
  %1588 = add nuw nsw i32 %1587, %1586
  %1589 = and i32 %1588, 31
  %1590 = zext i32 %1589 to i64
  %1591 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1590
  %1592 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %73, i64 0, i64 0
  %1593 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %73, i64 0, i64 0, i32 0
  store i8* %516, i8** %1593, align 8, !tbaa !3
  %1594 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %73, i64 0, i64 0, i32 1
  store i64* null, i64** %1594, align 8, !tbaa !33
  %1595 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %73, i64 0, i64 0, i32 2
  %1596 = bitcast i32* %1595 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1596, align 8, !tbaa !11
  %1597 = bitcast i8* %1591 to i64*
  %1598 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1597, %struct.ds_base* nonnull %1592, i32 undef, i32 undef) #15
  %1599 = trunc i64 %1598 to i8
  store i8 %1599, i8* %584, align 1, !tbaa !12
  %1600 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %74, i64 0, i64 0
  %1601 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %74, i64 0, i64 0, i32 0
  store i8* %516, i8** %1601, align 8, !tbaa !3
  %1602 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %74, i64 0, i64 0, i32 1
  store i64* null, i64** %1602, align 8, !tbaa !33
  %1603 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %74, i64 0, i64 0, i32 2
  %1604 = bitcast i32* %1603 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1604, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1584, i8* nonnull %1591, %struct.ds_base* nonnull %1600, i32 1, i32 undef) #15
  %1605 = load i8, i8* %520, align 4, !tbaa !12
  %1606 = load i8, i8* %585, align 1, !tbaa !12
  %1607 = zext i8 %1605 to i32
  %1608 = zext i8 %1606 to i32
  %1609 = add nuw nsw i32 %1588, %1607
  %1610 = add nuw nsw i32 %1609, %1608
  %1611 = and i32 %1610, 31
  %1612 = zext i32 %1611 to i64
  %1613 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1612
  %1614 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %75, i64 0, i64 0
  %1615 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %75, i64 0, i64 0, i32 0
  store i8* %516, i8** %1615, align 8, !tbaa !3
  %1616 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %75, i64 0, i64 0, i32 1
  store i64* null, i64** %1616, align 8, !tbaa !33
  %1617 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %75, i64 0, i64 0, i32 2
  %1618 = bitcast i32* %1617 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1618, align 8, !tbaa !11
  %1619 = bitcast i8* %1613 to i64*
  %1620 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1619, %struct.ds_base* nonnull %1614, i32 undef, i32 undef) #15
  %1621 = trunc i64 %1620 to i8
  store i8 %1621, i8* %585, align 1, !tbaa !12
  %1622 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %76, i64 0, i64 0
  %1623 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %76, i64 0, i64 0, i32 0
  store i8* %516, i8** %1623, align 8, !tbaa !3
  %1624 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %76, i64 0, i64 0, i32 1
  store i64* null, i64** %1624, align 8, !tbaa !33
  %1625 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %76, i64 0, i64 0, i32 2
  %1626 = bitcast i32* %1625 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1626, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1606, i8* nonnull %1613, %struct.ds_base* nonnull %1622, i32 1, i32 undef) #15
  %1627 = load i8, i8* %521, align 1, !tbaa !12
  %1628 = load i8, i8* %586, align 1, !tbaa !12
  %1629 = zext i8 %1627 to i32
  %1630 = zext i8 %1628 to i32
  %1631 = add nuw nsw i32 %1610, %1629
  %1632 = add nuw nsw i32 %1631, %1630
  %1633 = and i32 %1632, 31
  %1634 = zext i32 %1633 to i64
  %1635 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1634
  %1636 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %77, i64 0, i64 0
  %1637 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %77, i64 0, i64 0, i32 0
  store i8* %516, i8** %1637, align 8, !tbaa !3
  %1638 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %77, i64 0, i64 0, i32 1
  store i64* null, i64** %1638, align 8, !tbaa !33
  %1639 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %77, i64 0, i64 0, i32 2
  %1640 = bitcast i32* %1639 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1640, align 8, !tbaa !11
  %1641 = bitcast i8* %1635 to i64*
  %1642 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1641, %struct.ds_base* nonnull %1636, i32 undef, i32 undef) #15
  %1643 = trunc i64 %1642 to i8
  store i8 %1643, i8* %586, align 1, !tbaa !12
  %1644 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %78, i64 0, i64 0
  %1645 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %78, i64 0, i64 0, i32 0
  store i8* %516, i8** %1645, align 8, !tbaa !3
  %1646 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %78, i64 0, i64 0, i32 1
  store i64* null, i64** %1646, align 8, !tbaa !33
  %1647 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %78, i64 0, i64 0, i32 2
  %1648 = bitcast i32* %1647 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1648, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1628, i8* nonnull %1635, %struct.ds_base* nonnull %1644, i32 1, i32 undef) #15
  %1649 = load i8, i8* %522, align 2, !tbaa !12
  %1650 = load i8, i8* %587, align 1, !tbaa !12
  %1651 = zext i8 %1649 to i32
  %1652 = zext i8 %1650 to i32
  %1653 = add nuw nsw i32 %1632, %1651
  %1654 = add nuw nsw i32 %1653, %1652
  %1655 = and i32 %1654, 31
  %1656 = zext i32 %1655 to i64
  %1657 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1656
  %1658 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %79, i64 0, i64 0
  %1659 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %79, i64 0, i64 0, i32 0
  store i8* %516, i8** %1659, align 8, !tbaa !3
  %1660 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %79, i64 0, i64 0, i32 1
  store i64* null, i64** %1660, align 8, !tbaa !33
  %1661 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %79, i64 0, i64 0, i32 2
  %1662 = bitcast i32* %1661 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1662, align 8, !tbaa !11
  %1663 = bitcast i8* %1657 to i64*
  %1664 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1663, %struct.ds_base* nonnull %1658, i32 undef, i32 undef) #15
  %1665 = trunc i64 %1664 to i8
  store i8 %1665, i8* %587, align 1, !tbaa !12
  %1666 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %80, i64 0, i64 0
  %1667 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %80, i64 0, i64 0, i32 0
  store i8* %516, i8** %1667, align 8, !tbaa !3
  %1668 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %80, i64 0, i64 0, i32 1
  store i64* null, i64** %1668, align 8, !tbaa !33
  %1669 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %80, i64 0, i64 0, i32 2
  %1670 = bitcast i32* %1669 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1670, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1650, i8* nonnull %1657, %struct.ds_base* nonnull %1666, i32 1, i32 undef) #15
  %1671 = load i8, i8* %523, align 1, !tbaa !12
  %1672 = load i8, i8* %588, align 1, !tbaa !12
  %1673 = zext i8 %1671 to i32
  %1674 = zext i8 %1672 to i32
  %1675 = add nuw nsw i32 %1654, %1673
  %1676 = add nuw nsw i32 %1675, %1674
  %1677 = and i32 %1676, 31
  %1678 = zext i32 %1677 to i64
  %1679 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1678
  %1680 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %81, i64 0, i64 0
  %1681 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %81, i64 0, i64 0, i32 0
  store i8* %516, i8** %1681, align 8, !tbaa !3
  %1682 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %81, i64 0, i64 0, i32 1
  store i64* null, i64** %1682, align 8, !tbaa !33
  %1683 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %81, i64 0, i64 0, i32 2
  %1684 = bitcast i32* %1683 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1684, align 8, !tbaa !11
  %1685 = bitcast i8* %1679 to i64*
  %1686 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1685, %struct.ds_base* nonnull %1680, i32 undef, i32 undef) #15
  %1687 = trunc i64 %1686 to i8
  store i8 %1687, i8* %588, align 1, !tbaa !12
  %1688 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %82, i64 0, i64 0
  %1689 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %82, i64 0, i64 0, i32 0
  store i8* %516, i8** %1689, align 8, !tbaa !3
  %1690 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %82, i64 0, i64 0, i32 1
  store i64* null, i64** %1690, align 8, !tbaa !33
  %1691 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %82, i64 0, i64 0, i32 2
  %1692 = bitcast i32* %1691 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1692, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1672, i8* nonnull %1679, %struct.ds_base* nonnull %1688, i32 1, i32 undef) #15
  %1693 = load i8, i8* %524, align 8, !tbaa !12
  %1694 = load i8, i8* %589, align 1, !tbaa !12
  %1695 = zext i8 %1693 to i32
  %1696 = zext i8 %1694 to i32
  %1697 = add nuw nsw i32 %1676, %1695
  %1698 = add nuw nsw i32 %1697, %1696
  %1699 = and i32 %1698, 31
  %1700 = zext i32 %1699 to i64
  %1701 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1700
  %1702 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %83, i64 0, i64 0
  %1703 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %83, i64 0, i64 0, i32 0
  store i8* %516, i8** %1703, align 8, !tbaa !3
  %1704 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %83, i64 0, i64 0, i32 1
  store i64* null, i64** %1704, align 8, !tbaa !33
  %1705 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %83, i64 0, i64 0, i32 2
  %1706 = bitcast i32* %1705 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1706, align 8, !tbaa !11
  %1707 = bitcast i8* %1701 to i64*
  %1708 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1707, %struct.ds_base* nonnull %1702, i32 undef, i32 undef) #15
  %1709 = trunc i64 %1708 to i8
  store i8 %1709, i8* %589, align 1, !tbaa !12
  %1710 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %84, i64 0, i64 0
  %1711 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %84, i64 0, i64 0, i32 0
  store i8* %516, i8** %1711, align 8, !tbaa !3
  %1712 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %84, i64 0, i64 0, i32 1
  store i64* null, i64** %1712, align 8, !tbaa !33
  %1713 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %84, i64 0, i64 0, i32 2
  %1714 = bitcast i32* %1713 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1714, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1694, i8* nonnull %1701, %struct.ds_base* nonnull %1710, i32 1, i32 undef) #15
  %1715 = load i8, i8* %525, align 1, !tbaa !12
  %1716 = load i8, i8* %590, align 1, !tbaa !12
  %1717 = zext i8 %1715 to i32
  %1718 = zext i8 %1716 to i32
  %1719 = add nuw nsw i32 %1698, %1717
  %1720 = add nuw nsw i32 %1719, %1718
  %1721 = and i32 %1720, 31
  %1722 = zext i32 %1721 to i64
  %1723 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1722
  %1724 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %85, i64 0, i64 0
  %1725 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %85, i64 0, i64 0, i32 0
  store i8* %516, i8** %1725, align 8, !tbaa !3
  %1726 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %85, i64 0, i64 0, i32 1
  store i64* null, i64** %1726, align 8, !tbaa !33
  %1727 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %85, i64 0, i64 0, i32 2
  %1728 = bitcast i32* %1727 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1728, align 8, !tbaa !11
  %1729 = bitcast i8* %1723 to i64*
  %1730 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1729, %struct.ds_base* nonnull %1724, i32 undef, i32 undef) #15
  %1731 = trunc i64 %1730 to i8
  store i8 %1731, i8* %590, align 1, !tbaa !12
  %1732 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %86, i64 0, i64 0
  %1733 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %86, i64 0, i64 0, i32 0
  store i8* %516, i8** %1733, align 8, !tbaa !3
  %1734 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %86, i64 0, i64 0, i32 1
  store i64* null, i64** %1734, align 8, !tbaa !33
  %1735 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %86, i64 0, i64 0, i32 2
  %1736 = bitcast i32* %1735 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1736, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1716, i8* nonnull %1723, %struct.ds_base* nonnull %1732, i32 1, i32 undef) #15
  %1737 = load i8, i8* %526, align 2, !tbaa !12
  %1738 = load i8, i8* %591, align 1, !tbaa !12
  %1739 = zext i8 %1737 to i32
  %1740 = zext i8 %1738 to i32
  %1741 = add nuw nsw i32 %1720, %1739
  %1742 = add nuw nsw i32 %1741, %1740
  %1743 = and i32 %1742, 31
  %1744 = zext i32 %1743 to i64
  %1745 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1744
  %1746 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %87, i64 0, i64 0
  %1747 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %87, i64 0, i64 0, i32 0
  store i8* %516, i8** %1747, align 8, !tbaa !3
  %1748 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %87, i64 0, i64 0, i32 1
  store i64* null, i64** %1748, align 8, !tbaa !33
  %1749 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %87, i64 0, i64 0, i32 2
  %1750 = bitcast i32* %1749 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1750, align 8, !tbaa !11
  %1751 = bitcast i8* %1745 to i64*
  %1752 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1751, %struct.ds_base* nonnull %1746, i32 undef, i32 undef) #15
  %1753 = trunc i64 %1752 to i8
  store i8 %1753, i8* %591, align 1, !tbaa !12
  %1754 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %88, i64 0, i64 0
  %1755 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %88, i64 0, i64 0, i32 0
  store i8* %516, i8** %1755, align 8, !tbaa !3
  %1756 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %88, i64 0, i64 0, i32 1
  store i64* null, i64** %1756, align 8, !tbaa !33
  %1757 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %88, i64 0, i64 0, i32 2
  %1758 = bitcast i32* %1757 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1758, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1738, i8* nonnull %1745, %struct.ds_base* nonnull %1754, i32 1, i32 undef) #15
  %1759 = load i8, i8* %527, align 1, !tbaa !12
  %1760 = load i8, i8* %592, align 1, !tbaa !12
  %1761 = zext i8 %1759 to i32
  %1762 = zext i8 %1760 to i32
  %1763 = add nuw nsw i32 %1742, %1761
  %1764 = add nuw nsw i32 %1763, %1762
  %1765 = and i32 %1764, 31
  %1766 = zext i32 %1765 to i64
  %1767 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1766
  %1768 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %89, i64 0, i64 0
  %1769 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %89, i64 0, i64 0, i32 0
  store i8* %516, i8** %1769, align 8, !tbaa !3
  %1770 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %89, i64 0, i64 0, i32 1
  store i64* null, i64** %1770, align 8, !tbaa !33
  %1771 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %89, i64 0, i64 0, i32 2
  %1772 = bitcast i32* %1771 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1772, align 8, !tbaa !11
  %1773 = bitcast i8* %1767 to i64*
  %1774 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1773, %struct.ds_base* nonnull %1768, i32 undef, i32 undef) #15
  %1775 = trunc i64 %1774 to i8
  store i8 %1775, i8* %592, align 1, !tbaa !12
  %1776 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %90, i64 0, i64 0
  %1777 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %90, i64 0, i64 0, i32 0
  store i8* %516, i8** %1777, align 8, !tbaa !3
  %1778 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %90, i64 0, i64 0, i32 1
  store i64* null, i64** %1778, align 8, !tbaa !33
  %1779 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %90, i64 0, i64 0, i32 2
  %1780 = bitcast i32* %1779 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1780, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1760, i8* nonnull %1767, %struct.ds_base* nonnull %1776, i32 1, i32 undef) #15
  %1781 = load i8, i8* %528, align 4, !tbaa !12
  %1782 = load i8, i8* %593, align 1, !tbaa !12
  %1783 = zext i8 %1781 to i32
  %1784 = zext i8 %1782 to i32
  %1785 = add nuw nsw i32 %1764, %1783
  %1786 = add nuw nsw i32 %1785, %1784
  %1787 = and i32 %1786, 31
  %1788 = zext i32 %1787 to i64
  %1789 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1788
  %1790 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %91, i64 0, i64 0
  %1791 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %91, i64 0, i64 0, i32 0
  store i8* %516, i8** %1791, align 8, !tbaa !3
  %1792 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %91, i64 0, i64 0, i32 1
  store i64* null, i64** %1792, align 8, !tbaa !33
  %1793 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %91, i64 0, i64 0, i32 2
  %1794 = bitcast i32* %1793 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1794, align 8, !tbaa !11
  %1795 = bitcast i8* %1789 to i64*
  %1796 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1795, %struct.ds_base* nonnull %1790, i32 undef, i32 undef) #15
  %1797 = trunc i64 %1796 to i8
  store i8 %1797, i8* %593, align 1, !tbaa !12
  %1798 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %92, i64 0, i64 0
  %1799 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %92, i64 0, i64 0, i32 0
  store i8* %516, i8** %1799, align 8, !tbaa !3
  %1800 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %92, i64 0, i64 0, i32 1
  store i64* null, i64** %1800, align 8, !tbaa !33
  %1801 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %92, i64 0, i64 0, i32 2
  %1802 = bitcast i32* %1801 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1802, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1782, i8* nonnull %1789, %struct.ds_base* nonnull %1798, i32 1, i32 undef) #15
  %1803 = load i8, i8* %529, align 1, !tbaa !12
  %1804 = load i8, i8* %594, align 1, !tbaa !12
  %1805 = zext i8 %1803 to i32
  %1806 = zext i8 %1804 to i32
  %1807 = add nuw nsw i32 %1786, %1805
  %1808 = add nuw nsw i32 %1807, %1806
  %1809 = and i32 %1808, 31
  %1810 = zext i32 %1809 to i64
  %1811 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1810
  %1812 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %93, i64 0, i64 0
  %1813 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %93, i64 0, i64 0, i32 0
  store i8* %516, i8** %1813, align 8, !tbaa !3
  %1814 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %93, i64 0, i64 0, i32 1
  store i64* null, i64** %1814, align 8, !tbaa !33
  %1815 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %93, i64 0, i64 0, i32 2
  %1816 = bitcast i32* %1815 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1816, align 8, !tbaa !11
  %1817 = bitcast i8* %1811 to i64*
  %1818 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1817, %struct.ds_base* nonnull %1812, i32 undef, i32 undef) #15
  %1819 = trunc i64 %1818 to i8
  store i8 %1819, i8* %594, align 1, !tbaa !12
  %1820 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %94, i64 0, i64 0
  %1821 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %94, i64 0, i64 0, i32 0
  store i8* %516, i8** %1821, align 8, !tbaa !3
  %1822 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %94, i64 0, i64 0, i32 1
  store i64* null, i64** %1822, align 8, !tbaa !33
  %1823 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %94, i64 0, i64 0, i32 2
  %1824 = bitcast i32* %1823 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1824, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1804, i8* nonnull %1811, %struct.ds_base* nonnull %1820, i32 1, i32 undef) #15
  %1825 = load i8, i8* %530, align 2, !tbaa !12
  %1826 = load i8, i8* %595, align 1, !tbaa !12
  %1827 = zext i8 %1825 to i32
  %1828 = zext i8 %1826 to i32
  %1829 = add nuw nsw i32 %1808, %1827
  %1830 = add nuw nsw i32 %1829, %1828
  %1831 = and i32 %1830, 31
  %1832 = zext i32 %1831 to i64
  %1833 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1832
  %1834 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %95, i64 0, i64 0
  %1835 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %95, i64 0, i64 0, i32 0
  store i8* %516, i8** %1835, align 8, !tbaa !3
  %1836 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %95, i64 0, i64 0, i32 1
  store i64* null, i64** %1836, align 8, !tbaa !33
  %1837 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %95, i64 0, i64 0, i32 2
  %1838 = bitcast i32* %1837 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1838, align 8, !tbaa !11
  %1839 = bitcast i8* %1833 to i64*
  %1840 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1839, %struct.ds_base* nonnull %1834, i32 undef, i32 undef) #15
  %1841 = trunc i64 %1840 to i8
  store i8 %1841, i8* %595, align 1, !tbaa !12
  %1842 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %96, i64 0, i64 0
  %1843 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %96, i64 0, i64 0, i32 0
  store i8* %516, i8** %1843, align 8, !tbaa !3
  %1844 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %96, i64 0, i64 0, i32 1
  store i64* null, i64** %1844, align 8, !tbaa !33
  %1845 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %96, i64 0, i64 0, i32 2
  %1846 = bitcast i32* %1845 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1846, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1826, i8* nonnull %1833, %struct.ds_base* nonnull %1842, i32 1, i32 undef) #15
  %1847 = load i8, i8* %531, align 1, !tbaa !12
  %1848 = load i8, i8* %596, align 1, !tbaa !12
  %1849 = zext i8 %1847 to i32
  %1850 = zext i8 %1848 to i32
  %1851 = add nuw nsw i32 %1830, %1849
  %1852 = add nuw nsw i32 %1851, %1850
  %1853 = and i32 %1852, 31
  %1854 = zext i32 %1853 to i64
  %1855 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1854
  %1856 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %97, i64 0, i64 0
  %1857 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %97, i64 0, i64 0, i32 0
  store i8* %516, i8** %1857, align 8, !tbaa !3
  %1858 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %97, i64 0, i64 0, i32 1
  store i64* null, i64** %1858, align 8, !tbaa !33
  %1859 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %97, i64 0, i64 0, i32 2
  %1860 = bitcast i32* %1859 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1860, align 8, !tbaa !11
  %1861 = bitcast i8* %1855 to i64*
  %1862 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1861, %struct.ds_base* nonnull %1856, i32 undef, i32 undef) #15
  %1863 = trunc i64 %1862 to i8
  store i8 %1863, i8* %596, align 1, !tbaa !12
  %1864 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %98, i64 0, i64 0
  %1865 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %98, i64 0, i64 0, i32 0
  store i8* %516, i8** %1865, align 8, !tbaa !3
  %1866 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %98, i64 0, i64 0, i32 1
  store i64* null, i64** %1866, align 8, !tbaa !33
  %1867 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %98, i64 0, i64 0, i32 2
  %1868 = bitcast i32* %1867 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1868, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1848, i8* nonnull %1855, %struct.ds_base* nonnull %1864, i32 1, i32 undef) #15
  %1869 = load i8, i8* %532, align 16, !tbaa !12
  %1870 = load i8, i8* %597, align 1, !tbaa !12
  %1871 = zext i8 %1869 to i32
  %1872 = zext i8 %1870 to i32
  %1873 = add nuw nsw i32 %1852, %1871
  %1874 = add nuw nsw i32 %1873, %1872
  %1875 = and i32 %1874, 31
  %1876 = zext i32 %1875 to i64
  %1877 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1876
  %1878 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %99, i64 0, i64 0
  %1879 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %99, i64 0, i64 0, i32 0
  store i8* %516, i8** %1879, align 8, !tbaa !3
  %1880 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %99, i64 0, i64 0, i32 1
  store i64* null, i64** %1880, align 8, !tbaa !33
  %1881 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %99, i64 0, i64 0, i32 2
  %1882 = bitcast i32* %1881 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1882, align 8, !tbaa !11
  %1883 = bitcast i8* %1877 to i64*
  %1884 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1883, %struct.ds_base* nonnull %1878, i32 undef, i32 undef) #15
  %1885 = trunc i64 %1884 to i8
  store i8 %1885, i8* %597, align 1, !tbaa !12
  %1886 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %100, i64 0, i64 0
  %1887 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %100, i64 0, i64 0, i32 0
  store i8* %516, i8** %1887, align 8, !tbaa !3
  %1888 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %100, i64 0, i64 0, i32 1
  store i64* null, i64** %1888, align 8, !tbaa !33
  %1889 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %100, i64 0, i64 0, i32 2
  %1890 = bitcast i32* %1889 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1890, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1870, i8* nonnull %1877, %struct.ds_base* nonnull %1886, i32 1, i32 undef) #15
  %1891 = load i8, i8* %533, align 1, !tbaa !12
  %1892 = load i8, i8* %598, align 1, !tbaa !12
  %1893 = zext i8 %1891 to i32
  %1894 = zext i8 %1892 to i32
  %1895 = add nuw nsw i32 %1874, %1893
  %1896 = add nuw nsw i32 %1895, %1894
  %1897 = and i32 %1896, 31
  %1898 = zext i32 %1897 to i64
  %1899 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1898
  %1900 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %101, i64 0, i64 0
  %1901 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %101, i64 0, i64 0, i32 0
  store i8* %516, i8** %1901, align 8, !tbaa !3
  %1902 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %101, i64 0, i64 0, i32 1
  store i64* null, i64** %1902, align 8, !tbaa !33
  %1903 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %101, i64 0, i64 0, i32 2
  %1904 = bitcast i32* %1903 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1904, align 8, !tbaa !11
  %1905 = bitcast i8* %1899 to i64*
  %1906 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1905, %struct.ds_base* nonnull %1900, i32 undef, i32 undef) #15
  %1907 = trunc i64 %1906 to i8
  store i8 %1907, i8* %598, align 1, !tbaa !12
  %1908 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %102, i64 0, i64 0
  %1909 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %102, i64 0, i64 0, i32 0
  store i8* %516, i8** %1909, align 8, !tbaa !3
  %1910 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %102, i64 0, i64 0, i32 1
  store i64* null, i64** %1910, align 8, !tbaa !33
  %1911 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %102, i64 0, i64 0, i32 2
  %1912 = bitcast i32* %1911 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1912, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1892, i8* nonnull %1899, %struct.ds_base* nonnull %1908, i32 1, i32 undef) #15
  %1913 = load i8, i8* %534, align 2, !tbaa !12
  %1914 = load i8, i8* %599, align 1, !tbaa !12
  %1915 = zext i8 %1913 to i32
  %1916 = zext i8 %1914 to i32
  %1917 = add nuw nsw i32 %1896, %1915
  %1918 = add nuw nsw i32 %1917, %1916
  %1919 = and i32 %1918, 31
  %1920 = zext i32 %1919 to i64
  %1921 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1920
  %1922 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %103, i64 0, i64 0
  %1923 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %103, i64 0, i64 0, i32 0
  store i8* %516, i8** %1923, align 8, !tbaa !3
  %1924 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %103, i64 0, i64 0, i32 1
  store i64* null, i64** %1924, align 8, !tbaa !33
  %1925 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %103, i64 0, i64 0, i32 2
  %1926 = bitcast i32* %1925 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1926, align 8, !tbaa !11
  %1927 = bitcast i8* %1921 to i64*
  %1928 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1927, %struct.ds_base* nonnull %1922, i32 undef, i32 undef) #15
  %1929 = trunc i64 %1928 to i8
  store i8 %1929, i8* %599, align 1, !tbaa !12
  %1930 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %104, i64 0, i64 0
  %1931 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %104, i64 0, i64 0, i32 0
  store i8* %516, i8** %1931, align 8, !tbaa !3
  %1932 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %104, i64 0, i64 0, i32 1
  store i64* null, i64** %1932, align 8, !tbaa !33
  %1933 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %104, i64 0, i64 0, i32 2
  %1934 = bitcast i32* %1933 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1934, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1914, i8* nonnull %1921, %struct.ds_base* nonnull %1930, i32 1, i32 undef) #15
  %1935 = load i8, i8* %535, align 1, !tbaa !12
  %1936 = load i8, i8* %600, align 1, !tbaa !12
  %1937 = zext i8 %1935 to i32
  %1938 = zext i8 %1936 to i32
  %1939 = add nuw nsw i32 %1918, %1937
  %1940 = add nuw nsw i32 %1939, %1938
  %1941 = and i32 %1940, 31
  %1942 = zext i32 %1941 to i64
  %1943 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1942
  %1944 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %105, i64 0, i64 0
  %1945 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %105, i64 0, i64 0, i32 0
  store i8* %516, i8** %1945, align 8, !tbaa !3
  %1946 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %105, i64 0, i64 0, i32 1
  store i64* null, i64** %1946, align 8, !tbaa !33
  %1947 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %105, i64 0, i64 0, i32 2
  %1948 = bitcast i32* %1947 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1948, align 8, !tbaa !11
  %1949 = bitcast i8* %1943 to i64*
  %1950 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1949, %struct.ds_base* nonnull %1944, i32 undef, i32 undef) #15
  %1951 = trunc i64 %1950 to i8
  store i8 %1951, i8* %600, align 1, !tbaa !12
  %1952 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %106, i64 0, i64 0
  %1953 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %106, i64 0, i64 0, i32 0
  store i8* %516, i8** %1953, align 8, !tbaa !3
  %1954 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %106, i64 0, i64 0, i32 1
  store i64* null, i64** %1954, align 8, !tbaa !33
  %1955 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %106, i64 0, i64 0, i32 2
  %1956 = bitcast i32* %1955 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1956, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1936, i8* nonnull %1943, %struct.ds_base* nonnull %1952, i32 1, i32 undef) #15
  %1957 = load i8, i8* %536, align 4, !tbaa !12
  %1958 = load i8, i8* %601, align 1, !tbaa !12
  %1959 = zext i8 %1957 to i32
  %1960 = zext i8 %1958 to i32
  %1961 = add nuw nsw i32 %1940, %1959
  %1962 = add nuw nsw i32 %1961, %1960
  %1963 = and i32 %1962, 31
  %1964 = zext i32 %1963 to i64
  %1965 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1964
  %1966 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %107, i64 0, i64 0
  %1967 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %107, i64 0, i64 0, i32 0
  store i8* %516, i8** %1967, align 8, !tbaa !3
  %1968 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %107, i64 0, i64 0, i32 1
  store i64* null, i64** %1968, align 8, !tbaa !33
  %1969 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %107, i64 0, i64 0, i32 2
  %1970 = bitcast i32* %1969 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1970, align 8, !tbaa !11
  %1971 = bitcast i8* %1965 to i64*
  %1972 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1971, %struct.ds_base* nonnull %1966, i32 undef, i32 undef) #15
  %1973 = trunc i64 %1972 to i8
  store i8 %1973, i8* %601, align 1, !tbaa !12
  %1974 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %108, i64 0, i64 0
  %1975 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %108, i64 0, i64 0, i32 0
  store i8* %516, i8** %1975, align 8, !tbaa !3
  %1976 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %108, i64 0, i64 0, i32 1
  store i64* null, i64** %1976, align 8, !tbaa !33
  %1977 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %108, i64 0, i64 0, i32 2
  %1978 = bitcast i32* %1977 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1978, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1958, i8* nonnull %1965, %struct.ds_base* nonnull %1974, i32 1, i32 undef) #15
  %1979 = load i8, i8* %537, align 1, !tbaa !12
  %1980 = load i8, i8* %602, align 1, !tbaa !12
  %1981 = zext i8 %1979 to i32
  %1982 = zext i8 %1980 to i32
  %1983 = add nuw nsw i32 %1962, %1981
  %1984 = add nuw nsw i32 %1983, %1982
  %1985 = and i32 %1984, 31
  %1986 = zext i32 %1985 to i64
  %1987 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %1986
  %1988 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %109, i64 0, i64 0
  %1989 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %109, i64 0, i64 0, i32 0
  store i8* %516, i8** %1989, align 8, !tbaa !3
  %1990 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %109, i64 0, i64 0, i32 1
  store i64* null, i64** %1990, align 8, !tbaa !33
  %1991 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %109, i64 0, i64 0, i32 2
  %1992 = bitcast i32* %1991 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %1992, align 8, !tbaa !11
  %1993 = bitcast i8* %1987 to i64*
  %1994 = call i64 @uint64_t_secure_load_impl(i64* nonnull %1993, %struct.ds_base* nonnull %1988, i32 undef, i32 undef) #15
  %1995 = trunc i64 %1994 to i8
  store i8 %1995, i8* %602, align 1, !tbaa !12
  %1996 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %110, i64 0, i64 0
  %1997 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %110, i64 0, i64 0, i32 0
  store i8* %516, i8** %1997, align 8, !tbaa !3
  %1998 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %110, i64 0, i64 0, i32 1
  store i64* null, i64** %1998, align 8, !tbaa !33
  %1999 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %110, i64 0, i64 0, i32 2
  %2000 = bitcast i32* %1999 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2000, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %1980, i8* nonnull %1987, %struct.ds_base* nonnull %1996, i32 1, i32 undef) #15
  %2001 = load i8, i8* %538, align 2, !tbaa !12
  %2002 = load i8, i8* %603, align 1, !tbaa !12
  %2003 = zext i8 %2001 to i32
  %2004 = zext i8 %2002 to i32
  %2005 = add nuw nsw i32 %1984, %2003
  %2006 = add nuw nsw i32 %2005, %2004
  %2007 = and i32 %2006, 31
  %2008 = zext i32 %2007 to i64
  %2009 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2008
  %2010 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %111, i64 0, i64 0
  %2011 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %111, i64 0, i64 0, i32 0
  store i8* %516, i8** %2011, align 8, !tbaa !3
  %2012 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %111, i64 0, i64 0, i32 1
  store i64* null, i64** %2012, align 8, !tbaa !33
  %2013 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %111, i64 0, i64 0, i32 2
  %2014 = bitcast i32* %2013 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2014, align 8, !tbaa !11
  %2015 = bitcast i8* %2009 to i64*
  %2016 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2015, %struct.ds_base* nonnull %2010, i32 undef, i32 undef) #15
  %2017 = trunc i64 %2016 to i8
  store i8 %2017, i8* %603, align 1, !tbaa !12
  %2018 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %112, i64 0, i64 0
  %2019 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %112, i64 0, i64 0, i32 0
  store i8* %516, i8** %2019, align 8, !tbaa !3
  %2020 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %112, i64 0, i64 0, i32 1
  store i64* null, i64** %2020, align 8, !tbaa !33
  %2021 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %112, i64 0, i64 0, i32 2
  %2022 = bitcast i32* %2021 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2022, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2002, i8* nonnull %2009, %struct.ds_base* nonnull %2018, i32 1, i32 undef) #15
  %2023 = load i8, i8* %539, align 1, !tbaa !12
  %2024 = load i8, i8* %604, align 1, !tbaa !12
  %2025 = zext i8 %2023 to i32
  %2026 = zext i8 %2024 to i32
  %2027 = add nuw nsw i32 %2006, %2025
  %2028 = add nuw nsw i32 %2027, %2026
  %2029 = and i32 %2028, 31
  %2030 = zext i32 %2029 to i64
  %2031 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2030
  %2032 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %113, i64 0, i64 0
  %2033 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %113, i64 0, i64 0, i32 0
  store i8* %516, i8** %2033, align 8, !tbaa !3
  %2034 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %113, i64 0, i64 0, i32 1
  store i64* null, i64** %2034, align 8, !tbaa !33
  %2035 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %113, i64 0, i64 0, i32 2
  %2036 = bitcast i32* %2035 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2036, align 8, !tbaa !11
  %2037 = bitcast i8* %2031 to i64*
  %2038 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2037, %struct.ds_base* nonnull %2032, i32 undef, i32 undef) #15
  %2039 = trunc i64 %2038 to i8
  store i8 %2039, i8* %604, align 1, !tbaa !12
  %2040 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %114, i64 0, i64 0
  %2041 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %114, i64 0, i64 0, i32 0
  store i8* %516, i8** %2041, align 8, !tbaa !3
  %2042 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %114, i64 0, i64 0, i32 1
  store i64* null, i64** %2042, align 8, !tbaa !33
  %2043 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %114, i64 0, i64 0, i32 2
  %2044 = bitcast i32* %2043 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2044, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2024, i8* nonnull %2031, %struct.ds_base* nonnull %2040, i32 1, i32 undef) #15
  %2045 = load i8, i8* %540, align 8, !tbaa !12
  %2046 = load i8, i8* %605, align 1, !tbaa !12
  %2047 = zext i8 %2045 to i32
  %2048 = zext i8 %2046 to i32
  %2049 = add nuw nsw i32 %2028, %2047
  %2050 = add nuw nsw i32 %2049, %2048
  %2051 = and i32 %2050, 31
  %2052 = zext i32 %2051 to i64
  %2053 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2052
  %2054 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %115, i64 0, i64 0
  %2055 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %115, i64 0, i64 0, i32 0
  store i8* %516, i8** %2055, align 8, !tbaa !3
  %2056 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %115, i64 0, i64 0, i32 1
  store i64* null, i64** %2056, align 8, !tbaa !33
  %2057 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %115, i64 0, i64 0, i32 2
  %2058 = bitcast i32* %2057 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2058, align 8, !tbaa !11
  %2059 = bitcast i8* %2053 to i64*
  %2060 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2059, %struct.ds_base* nonnull %2054, i32 undef, i32 undef) #15
  %2061 = trunc i64 %2060 to i8
  store i8 %2061, i8* %605, align 1, !tbaa !12
  %2062 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %116, i64 0, i64 0
  %2063 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %116, i64 0, i64 0, i32 0
  store i8* %516, i8** %2063, align 8, !tbaa !3
  %2064 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %116, i64 0, i64 0, i32 1
  store i64* null, i64** %2064, align 8, !tbaa !33
  %2065 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %116, i64 0, i64 0, i32 2
  %2066 = bitcast i32* %2065 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2066, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2046, i8* nonnull %2053, %struct.ds_base* nonnull %2062, i32 1, i32 undef) #15
  %2067 = load i8, i8* %541, align 1, !tbaa !12
  %2068 = load i8, i8* %606, align 1, !tbaa !12
  %2069 = zext i8 %2067 to i32
  %2070 = zext i8 %2068 to i32
  %2071 = add nuw nsw i32 %2050, %2069
  %2072 = add nuw nsw i32 %2071, %2070
  %2073 = and i32 %2072, 31
  %2074 = zext i32 %2073 to i64
  %2075 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2074
  %2076 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %117, i64 0, i64 0
  %2077 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %117, i64 0, i64 0, i32 0
  store i8* %516, i8** %2077, align 8, !tbaa !3
  %2078 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %117, i64 0, i64 0, i32 1
  store i64* null, i64** %2078, align 8, !tbaa !33
  %2079 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %117, i64 0, i64 0, i32 2
  %2080 = bitcast i32* %2079 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2080, align 8, !tbaa !11
  %2081 = bitcast i8* %2075 to i64*
  %2082 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2081, %struct.ds_base* nonnull %2076, i32 undef, i32 undef) #15
  %2083 = trunc i64 %2082 to i8
  store i8 %2083, i8* %606, align 1, !tbaa !12
  %2084 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %118, i64 0, i64 0
  %2085 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %118, i64 0, i64 0, i32 0
  store i8* %516, i8** %2085, align 8, !tbaa !3
  %2086 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %118, i64 0, i64 0, i32 1
  store i64* null, i64** %2086, align 8, !tbaa !33
  %2087 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %118, i64 0, i64 0, i32 2
  %2088 = bitcast i32* %2087 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2088, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2068, i8* nonnull %2075, %struct.ds_base* nonnull %2084, i32 1, i32 undef) #15
  %2089 = load i8, i8* %542, align 2, !tbaa !12
  %2090 = load i8, i8* %607, align 1, !tbaa !12
  %2091 = zext i8 %2089 to i32
  %2092 = zext i8 %2090 to i32
  %2093 = add nuw nsw i32 %2072, %2091
  %2094 = add nuw nsw i32 %2093, %2092
  %2095 = and i32 %2094, 31
  %2096 = zext i32 %2095 to i64
  %2097 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2096
  %2098 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %119, i64 0, i64 0
  %2099 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %119, i64 0, i64 0, i32 0
  store i8* %516, i8** %2099, align 8, !tbaa !3
  %2100 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %119, i64 0, i64 0, i32 1
  store i64* null, i64** %2100, align 8, !tbaa !33
  %2101 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %119, i64 0, i64 0, i32 2
  %2102 = bitcast i32* %2101 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2102, align 8, !tbaa !11
  %2103 = bitcast i8* %2097 to i64*
  %2104 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2103, %struct.ds_base* nonnull %2098, i32 undef, i32 undef) #15
  %2105 = trunc i64 %2104 to i8
  store i8 %2105, i8* %607, align 1, !tbaa !12
  %2106 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %120, i64 0, i64 0
  %2107 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %120, i64 0, i64 0, i32 0
  store i8* %516, i8** %2107, align 8, !tbaa !3
  %2108 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %120, i64 0, i64 0, i32 1
  store i64* null, i64** %2108, align 8, !tbaa !33
  %2109 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %120, i64 0, i64 0, i32 2
  %2110 = bitcast i32* %2109 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2110, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2090, i8* nonnull %2097, %struct.ds_base* nonnull %2106, i32 1, i32 undef) #15
  %2111 = load i8, i8* %543, align 1, !tbaa !12
  %2112 = load i8, i8* %608, align 1, !tbaa !12
  %2113 = zext i8 %2111 to i32
  %2114 = zext i8 %2112 to i32
  %2115 = add nuw nsw i32 %2094, %2113
  %2116 = add nuw nsw i32 %2115, %2114
  %2117 = and i32 %2116, 31
  %2118 = zext i32 %2117 to i64
  %2119 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2118
  %2120 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %121, i64 0, i64 0
  %2121 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %121, i64 0, i64 0, i32 0
  store i8* %516, i8** %2121, align 8, !tbaa !3
  %2122 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %121, i64 0, i64 0, i32 1
  store i64* null, i64** %2122, align 8, !tbaa !33
  %2123 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %121, i64 0, i64 0, i32 2
  %2124 = bitcast i32* %2123 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2124, align 8, !tbaa !11
  %2125 = bitcast i8* %2119 to i64*
  %2126 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2125, %struct.ds_base* nonnull %2120, i32 undef, i32 undef) #15
  %2127 = trunc i64 %2126 to i8
  store i8 %2127, i8* %608, align 1, !tbaa !12
  %2128 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %122, i64 0, i64 0
  %2129 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %122, i64 0, i64 0, i32 0
  store i8* %516, i8** %2129, align 8, !tbaa !3
  %2130 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %122, i64 0, i64 0, i32 1
  store i64* null, i64** %2130, align 8, !tbaa !33
  %2131 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %122, i64 0, i64 0, i32 2
  %2132 = bitcast i32* %2131 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2132, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2112, i8* nonnull %2119, %struct.ds_base* nonnull %2128, i32 1, i32 undef) #15
  %2133 = load i8, i8* %544, align 4, !tbaa !12
  %2134 = load i8, i8* %609, align 1, !tbaa !12
  %2135 = zext i8 %2133 to i32
  %2136 = zext i8 %2134 to i32
  %2137 = add nuw nsw i32 %2116, %2135
  %2138 = add nuw nsw i32 %2137, %2136
  %2139 = and i32 %2138, 31
  %2140 = zext i32 %2139 to i64
  %2141 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2140
  %2142 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %123, i64 0, i64 0
  %2143 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %123, i64 0, i64 0, i32 0
  store i8* %516, i8** %2143, align 8, !tbaa !3
  %2144 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %123, i64 0, i64 0, i32 1
  store i64* null, i64** %2144, align 8, !tbaa !33
  %2145 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %123, i64 0, i64 0, i32 2
  %2146 = bitcast i32* %2145 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2146, align 8, !tbaa !11
  %2147 = bitcast i8* %2141 to i64*
  %2148 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2147, %struct.ds_base* nonnull %2142, i32 undef, i32 undef) #15
  %2149 = trunc i64 %2148 to i8
  store i8 %2149, i8* %609, align 1, !tbaa !12
  %2150 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %124, i64 0, i64 0
  %2151 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %124, i64 0, i64 0, i32 0
  store i8* %516, i8** %2151, align 8, !tbaa !3
  %2152 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %124, i64 0, i64 0, i32 1
  store i64* null, i64** %2152, align 8, !tbaa !33
  %2153 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %124, i64 0, i64 0, i32 2
  %2154 = bitcast i32* %2153 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2154, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2134, i8* nonnull %2141, %struct.ds_base* nonnull %2150, i32 1, i32 undef) #15
  %2155 = load i8, i8* %545, align 1, !tbaa !12
  %2156 = load i8, i8* %610, align 1, !tbaa !12
  %2157 = zext i8 %2155 to i32
  %2158 = zext i8 %2156 to i32
  %2159 = add nuw nsw i32 %2138, %2157
  %2160 = add nuw nsw i32 %2159, %2158
  %2161 = and i32 %2160, 31
  %2162 = zext i32 %2161 to i64
  %2163 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2162
  %2164 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %125, i64 0, i64 0
  %2165 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %125, i64 0, i64 0, i32 0
  store i8* %516, i8** %2165, align 8, !tbaa !3
  %2166 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %125, i64 0, i64 0, i32 1
  store i64* null, i64** %2166, align 8, !tbaa !33
  %2167 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %125, i64 0, i64 0, i32 2
  %2168 = bitcast i32* %2167 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2168, align 8, !tbaa !11
  %2169 = bitcast i8* %2163 to i64*
  %2170 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2169, %struct.ds_base* nonnull %2164, i32 undef, i32 undef) #15
  %2171 = trunc i64 %2170 to i8
  store i8 %2171, i8* %610, align 1, !tbaa !12
  %2172 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %126, i64 0, i64 0
  %2173 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %126, i64 0, i64 0, i32 0
  store i8* %516, i8** %2173, align 8, !tbaa !3
  %2174 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %126, i64 0, i64 0, i32 1
  store i64* null, i64** %2174, align 8, !tbaa !33
  %2175 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %126, i64 0, i64 0, i32 2
  %2176 = bitcast i32* %2175 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2176, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2156, i8* nonnull %2163, %struct.ds_base* nonnull %2172, i32 1, i32 undef) #15
  %2177 = load i8, i8* %546, align 2, !tbaa !12
  %2178 = load i8, i8* %611, align 1, !tbaa !12
  %2179 = zext i8 %2177 to i32
  %2180 = zext i8 %2178 to i32
  %2181 = add nuw nsw i32 %2160, %2179
  %2182 = add nuw nsw i32 %2181, %2180
  %2183 = and i32 %2182, 31
  %2184 = zext i32 %2183 to i64
  %2185 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2184
  %2186 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %127, i64 0, i64 0
  %2187 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %127, i64 0, i64 0, i32 0
  store i8* %516, i8** %2187, align 8, !tbaa !3
  %2188 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %127, i64 0, i64 0, i32 1
  store i64* null, i64** %2188, align 8, !tbaa !33
  %2189 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %127, i64 0, i64 0, i32 2
  %2190 = bitcast i32* %2189 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2190, align 8, !tbaa !11
  %2191 = bitcast i8* %2185 to i64*
  %2192 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2191, %struct.ds_base* nonnull %2186, i32 undef, i32 undef) #15
  %2193 = trunc i64 %2192 to i8
  store i8 %2193, i8* %611, align 1, !tbaa !12
  %2194 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %128, i64 0, i64 0
  %2195 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %128, i64 0, i64 0, i32 0
  store i8* %516, i8** %2195, align 8, !tbaa !3
  %2196 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %128, i64 0, i64 0, i32 1
  store i64* null, i64** %2196, align 8, !tbaa !33
  %2197 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %128, i64 0, i64 0, i32 2
  %2198 = bitcast i32* %2197 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2198, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2178, i8* nonnull %2185, %struct.ds_base* nonnull %2194, i32 1, i32 undef) #15
  %2199 = load i8, i8* %547, align 1, !tbaa !12
  %2200 = load i8, i8* %612, align 1, !tbaa !12
  %2201 = zext i8 %2199 to i32
  %2202 = zext i8 %2200 to i32
  %2203 = add nuw nsw i32 %2182, %2201
  %2204 = add nuw nsw i32 %2203, %2202
  %2205 = and i32 %2204, 31
  %2206 = zext i32 %2205 to i64
  %2207 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2206
  %2208 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %129, i64 0, i64 0
  %2209 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %129, i64 0, i64 0, i32 0
  store i8* %516, i8** %2209, align 8, !tbaa !3
  %2210 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %129, i64 0, i64 0, i32 1
  store i64* null, i64** %2210, align 8, !tbaa !33
  %2211 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %129, i64 0, i64 0, i32 2
  %2212 = bitcast i32* %2211 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2212, align 8, !tbaa !11
  %2213 = bitcast i8* %2207 to i64*
  %2214 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2213, %struct.ds_base* nonnull %2208, i32 undef, i32 undef) #15
  %2215 = trunc i64 %2214 to i8
  store i8 %2215, i8* %612, align 1, !tbaa !12
  %2216 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %130, i64 0, i64 0
  %2217 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %130, i64 0, i64 0, i32 0
  store i8* %516, i8** %2217, align 8, !tbaa !3
  %2218 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %130, i64 0, i64 0, i32 1
  store i64* null, i64** %2218, align 8, !tbaa !33
  %2219 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %130, i64 0, i64 0, i32 2
  %2220 = bitcast i32* %2219 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2220, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2200, i8* nonnull %2207, %struct.ds_base* nonnull %2216, i32 1, i32 undef) #15
  %2221 = load i8, i8* %515, align 16, !tbaa !12
  %2222 = load i8, i8* %614, align 1, !tbaa !12
  %2223 = zext i8 %2221 to i32
  %2224 = zext i8 %2222 to i32
  %2225 = add nuw nsw i32 %2204, %2223
  %2226 = add nuw nsw i32 %2225, %2224
  %2227 = and i32 %2226, 31
  %2228 = zext i32 %2227 to i64
  %2229 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2228
  %2230 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %131, i64 0, i64 0
  %2231 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %131, i64 0, i64 0, i32 0
  store i8* %516, i8** %2231, align 8, !tbaa !3
  %2232 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %131, i64 0, i64 0, i32 1
  store i64* null, i64** %2232, align 8, !tbaa !33
  %2233 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %131, i64 0, i64 0, i32 2
  %2234 = bitcast i32* %2233 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2234, align 8, !tbaa !11
  %2235 = bitcast i8* %2229 to i64*
  %2236 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2235, %struct.ds_base* nonnull %2230, i32 undef, i32 undef) #15
  %2237 = trunc i64 %2236 to i8
  store i8 %2237, i8* %614, align 1, !tbaa !12
  %2238 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %132, i64 0, i64 0
  %2239 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %132, i64 0, i64 0, i32 0
  store i8* %516, i8** %2239, align 8, !tbaa !3
  %2240 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %132, i64 0, i64 0, i32 1
  store i64* null, i64** %2240, align 8, !tbaa !33
  %2241 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %132, i64 0, i64 0, i32 2
  %2242 = bitcast i32* %2241 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2242, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2222, i8* nonnull %2229, %struct.ds_base* nonnull %2238, i32 1, i32 undef) #15
  %2243 = load i8, i8* %517, align 1, !tbaa !12
  %2244 = load i8, i8* %615, align 1, !tbaa !12
  %2245 = zext i8 %2243 to i32
  %2246 = zext i8 %2244 to i32
  %2247 = add nuw nsw i32 %2226, %2245
  %2248 = add nuw nsw i32 %2247, %2246
  %2249 = and i32 %2248, 31
  %2250 = zext i32 %2249 to i64
  %2251 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2250
  %2252 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %133, i64 0, i64 0
  %2253 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %133, i64 0, i64 0, i32 0
  store i8* %516, i8** %2253, align 8, !tbaa !3
  %2254 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %133, i64 0, i64 0, i32 1
  store i64* null, i64** %2254, align 8, !tbaa !33
  %2255 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %133, i64 0, i64 0, i32 2
  %2256 = bitcast i32* %2255 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2256, align 8, !tbaa !11
  %2257 = bitcast i8* %2251 to i64*
  %2258 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2257, %struct.ds_base* nonnull %2252, i32 undef, i32 undef) #15
  %2259 = trunc i64 %2258 to i8
  store i8 %2259, i8* %615, align 1, !tbaa !12
  %2260 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %134, i64 0, i64 0
  %2261 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %134, i64 0, i64 0, i32 0
  store i8* %516, i8** %2261, align 8, !tbaa !3
  %2262 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %134, i64 0, i64 0, i32 1
  store i64* null, i64** %2262, align 8, !tbaa !33
  %2263 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %134, i64 0, i64 0, i32 2
  %2264 = bitcast i32* %2263 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2264, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2244, i8* nonnull %2251, %struct.ds_base* nonnull %2260, i32 1, i32 undef) #15
  %2265 = load i8, i8* %518, align 2, !tbaa !12
  %2266 = load i8, i8* %616, align 1, !tbaa !12
  %2267 = zext i8 %2265 to i32
  %2268 = zext i8 %2266 to i32
  %2269 = add nuw nsw i32 %2248, %2267
  %2270 = add nuw nsw i32 %2269, %2268
  %2271 = and i32 %2270, 31
  %2272 = zext i32 %2271 to i64
  %2273 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2272
  %2274 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %135, i64 0, i64 0
  %2275 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %135, i64 0, i64 0, i32 0
  store i8* %516, i8** %2275, align 8, !tbaa !3
  %2276 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %135, i64 0, i64 0, i32 1
  store i64* null, i64** %2276, align 8, !tbaa !33
  %2277 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %135, i64 0, i64 0, i32 2
  %2278 = bitcast i32* %2277 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2278, align 8, !tbaa !11
  %2279 = bitcast i8* %2273 to i64*
  %2280 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2279, %struct.ds_base* nonnull %2274, i32 undef, i32 undef) #15
  %2281 = trunc i64 %2280 to i8
  store i8 %2281, i8* %616, align 1, !tbaa !12
  %2282 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %136, i64 0, i64 0
  %2283 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %136, i64 0, i64 0, i32 0
  store i8* %516, i8** %2283, align 8, !tbaa !3
  %2284 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %136, i64 0, i64 0, i32 1
  store i64* null, i64** %2284, align 8, !tbaa !33
  %2285 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %136, i64 0, i64 0, i32 2
  %2286 = bitcast i32* %2285 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2286, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2266, i8* nonnull %2273, %struct.ds_base* nonnull %2282, i32 1, i32 undef) #15
  %2287 = load i8, i8* %519, align 1, !tbaa !12
  %2288 = load i8, i8* %617, align 1, !tbaa !12
  %2289 = zext i8 %2287 to i32
  %2290 = zext i8 %2288 to i32
  %2291 = add nuw nsw i32 %2270, %2289
  %2292 = add nuw nsw i32 %2291, %2290
  %2293 = and i32 %2292, 31
  %2294 = zext i32 %2293 to i64
  %2295 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2294
  %2296 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %137, i64 0, i64 0
  %2297 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %137, i64 0, i64 0, i32 0
  store i8* %516, i8** %2297, align 8, !tbaa !3
  %2298 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %137, i64 0, i64 0, i32 1
  store i64* null, i64** %2298, align 8, !tbaa !33
  %2299 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %137, i64 0, i64 0, i32 2
  %2300 = bitcast i32* %2299 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2300, align 8, !tbaa !11
  %2301 = bitcast i8* %2295 to i64*
  %2302 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2301, %struct.ds_base* nonnull %2296, i32 undef, i32 undef) #15
  %2303 = trunc i64 %2302 to i8
  store i8 %2303, i8* %617, align 1, !tbaa !12
  %2304 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %138, i64 0, i64 0
  %2305 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %138, i64 0, i64 0, i32 0
  store i8* %516, i8** %2305, align 8, !tbaa !3
  %2306 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %138, i64 0, i64 0, i32 1
  store i64* null, i64** %2306, align 8, !tbaa !33
  %2307 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %138, i64 0, i64 0, i32 2
  %2308 = bitcast i32* %2307 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2308, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2288, i8* nonnull %2295, %struct.ds_base* nonnull %2304, i32 1, i32 undef) #15
  %2309 = load i8, i8* %520, align 4, !tbaa !12
  %2310 = load i8, i8* %618, align 1, !tbaa !12
  %2311 = zext i8 %2309 to i32
  %2312 = zext i8 %2310 to i32
  %2313 = add nuw nsw i32 %2292, %2311
  %2314 = add nuw nsw i32 %2313, %2312
  %2315 = and i32 %2314, 31
  %2316 = zext i32 %2315 to i64
  %2317 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2316
  %2318 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %139, i64 0, i64 0
  %2319 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %139, i64 0, i64 0, i32 0
  store i8* %516, i8** %2319, align 8, !tbaa !3
  %2320 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %139, i64 0, i64 0, i32 1
  store i64* null, i64** %2320, align 8, !tbaa !33
  %2321 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %139, i64 0, i64 0, i32 2
  %2322 = bitcast i32* %2321 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2322, align 8, !tbaa !11
  %2323 = bitcast i8* %2317 to i64*
  %2324 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2323, %struct.ds_base* nonnull %2318, i32 undef, i32 undef) #15
  %2325 = trunc i64 %2324 to i8
  store i8 %2325, i8* %618, align 1, !tbaa !12
  %2326 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %140, i64 0, i64 0
  %2327 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %140, i64 0, i64 0, i32 0
  store i8* %516, i8** %2327, align 8, !tbaa !3
  %2328 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %140, i64 0, i64 0, i32 1
  store i64* null, i64** %2328, align 8, !tbaa !33
  %2329 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %140, i64 0, i64 0, i32 2
  %2330 = bitcast i32* %2329 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2330, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2310, i8* nonnull %2317, %struct.ds_base* nonnull %2326, i32 1, i32 undef) #15
  %2331 = load i8, i8* %521, align 1, !tbaa !12
  %2332 = load i8, i8* %619, align 1, !tbaa !12
  %2333 = zext i8 %2331 to i32
  %2334 = zext i8 %2332 to i32
  %2335 = add nuw nsw i32 %2314, %2333
  %2336 = add nuw nsw i32 %2335, %2334
  %2337 = and i32 %2336, 31
  %2338 = zext i32 %2337 to i64
  %2339 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2338
  %2340 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %141, i64 0, i64 0
  %2341 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %141, i64 0, i64 0, i32 0
  store i8* %516, i8** %2341, align 8, !tbaa !3
  %2342 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %141, i64 0, i64 0, i32 1
  store i64* null, i64** %2342, align 8, !tbaa !33
  %2343 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %141, i64 0, i64 0, i32 2
  %2344 = bitcast i32* %2343 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2344, align 8, !tbaa !11
  %2345 = bitcast i8* %2339 to i64*
  %2346 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2345, %struct.ds_base* nonnull %2340, i32 undef, i32 undef) #15
  %2347 = trunc i64 %2346 to i8
  store i8 %2347, i8* %619, align 1, !tbaa !12
  %2348 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %142, i64 0, i64 0
  %2349 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %142, i64 0, i64 0, i32 0
  store i8* %516, i8** %2349, align 8, !tbaa !3
  %2350 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %142, i64 0, i64 0, i32 1
  store i64* null, i64** %2350, align 8, !tbaa !33
  %2351 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %142, i64 0, i64 0, i32 2
  %2352 = bitcast i32* %2351 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2352, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2332, i8* nonnull %2339, %struct.ds_base* nonnull %2348, i32 1, i32 undef) #15
  %2353 = load i8, i8* %522, align 2, !tbaa !12
  %2354 = load i8, i8* %620, align 1, !tbaa !12
  %2355 = zext i8 %2353 to i32
  %2356 = zext i8 %2354 to i32
  %2357 = add nuw nsw i32 %2336, %2355
  %2358 = add nuw nsw i32 %2357, %2356
  %2359 = and i32 %2358, 31
  %2360 = zext i32 %2359 to i64
  %2361 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2360
  %2362 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %143, i64 0, i64 0
  %2363 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %143, i64 0, i64 0, i32 0
  store i8* %516, i8** %2363, align 8, !tbaa !3
  %2364 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %143, i64 0, i64 0, i32 1
  store i64* null, i64** %2364, align 8, !tbaa !33
  %2365 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %143, i64 0, i64 0, i32 2
  %2366 = bitcast i32* %2365 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2366, align 8, !tbaa !11
  %2367 = bitcast i8* %2361 to i64*
  %2368 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2367, %struct.ds_base* nonnull %2362, i32 undef, i32 undef) #15
  %2369 = trunc i64 %2368 to i8
  store i8 %2369, i8* %620, align 1, !tbaa !12
  %2370 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %144, i64 0, i64 0
  %2371 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %144, i64 0, i64 0, i32 0
  store i8* %516, i8** %2371, align 8, !tbaa !3
  %2372 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %144, i64 0, i64 0, i32 1
  store i64* null, i64** %2372, align 8, !tbaa !33
  %2373 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %144, i64 0, i64 0, i32 2
  %2374 = bitcast i32* %2373 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2374, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2354, i8* nonnull %2361, %struct.ds_base* nonnull %2370, i32 1, i32 undef) #15
  %2375 = load i8, i8* %523, align 1, !tbaa !12
  %2376 = load i8, i8* %621, align 1, !tbaa !12
  %2377 = zext i8 %2375 to i32
  %2378 = zext i8 %2376 to i32
  %2379 = add nuw nsw i32 %2358, %2377
  %2380 = add nuw nsw i32 %2379, %2378
  %2381 = and i32 %2380, 31
  %2382 = zext i32 %2381 to i64
  %2383 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2382
  %2384 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %145, i64 0, i64 0
  %2385 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %145, i64 0, i64 0, i32 0
  store i8* %516, i8** %2385, align 8, !tbaa !3
  %2386 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %145, i64 0, i64 0, i32 1
  store i64* null, i64** %2386, align 8, !tbaa !33
  %2387 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %145, i64 0, i64 0, i32 2
  %2388 = bitcast i32* %2387 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2388, align 8, !tbaa !11
  %2389 = bitcast i8* %2383 to i64*
  %2390 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2389, %struct.ds_base* nonnull %2384, i32 undef, i32 undef) #15
  %2391 = trunc i64 %2390 to i8
  store i8 %2391, i8* %621, align 1, !tbaa !12
  %2392 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %146, i64 0, i64 0
  %2393 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %146, i64 0, i64 0, i32 0
  store i8* %516, i8** %2393, align 8, !tbaa !3
  %2394 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %146, i64 0, i64 0, i32 1
  store i64* null, i64** %2394, align 8, !tbaa !33
  %2395 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %146, i64 0, i64 0, i32 2
  %2396 = bitcast i32* %2395 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2396, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2376, i8* nonnull %2383, %struct.ds_base* nonnull %2392, i32 1, i32 undef) #15
  %2397 = load i8, i8* %524, align 8, !tbaa !12
  %2398 = load i8, i8* %622, align 1, !tbaa !12
  %2399 = zext i8 %2397 to i32
  %2400 = zext i8 %2398 to i32
  %2401 = add nuw nsw i32 %2380, %2399
  %2402 = add nuw nsw i32 %2401, %2400
  %2403 = and i32 %2402, 31
  %2404 = zext i32 %2403 to i64
  %2405 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2404
  %2406 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %147, i64 0, i64 0
  %2407 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %147, i64 0, i64 0, i32 0
  store i8* %516, i8** %2407, align 8, !tbaa !3
  %2408 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %147, i64 0, i64 0, i32 1
  store i64* null, i64** %2408, align 8, !tbaa !33
  %2409 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %147, i64 0, i64 0, i32 2
  %2410 = bitcast i32* %2409 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2410, align 8, !tbaa !11
  %2411 = bitcast i8* %2405 to i64*
  %2412 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2411, %struct.ds_base* nonnull %2406, i32 undef, i32 undef) #15
  %2413 = trunc i64 %2412 to i8
  store i8 %2413, i8* %622, align 1, !tbaa !12
  %2414 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %148, i64 0, i64 0
  %2415 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %148, i64 0, i64 0, i32 0
  store i8* %516, i8** %2415, align 8, !tbaa !3
  %2416 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %148, i64 0, i64 0, i32 1
  store i64* null, i64** %2416, align 8, !tbaa !33
  %2417 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %148, i64 0, i64 0, i32 2
  %2418 = bitcast i32* %2417 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2418, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2398, i8* nonnull %2405, %struct.ds_base* nonnull %2414, i32 1, i32 undef) #15
  %2419 = load i8, i8* %525, align 1, !tbaa !12
  %2420 = load i8, i8* %623, align 1, !tbaa !12
  %2421 = zext i8 %2419 to i32
  %2422 = zext i8 %2420 to i32
  %2423 = add nuw nsw i32 %2402, %2421
  %2424 = add nuw nsw i32 %2423, %2422
  %2425 = and i32 %2424, 31
  %2426 = zext i32 %2425 to i64
  %2427 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2426
  %2428 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %149, i64 0, i64 0
  %2429 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %149, i64 0, i64 0, i32 0
  store i8* %516, i8** %2429, align 8, !tbaa !3
  %2430 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %149, i64 0, i64 0, i32 1
  store i64* null, i64** %2430, align 8, !tbaa !33
  %2431 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %149, i64 0, i64 0, i32 2
  %2432 = bitcast i32* %2431 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2432, align 8, !tbaa !11
  %2433 = bitcast i8* %2427 to i64*
  %2434 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2433, %struct.ds_base* nonnull %2428, i32 undef, i32 undef) #15
  %2435 = trunc i64 %2434 to i8
  store i8 %2435, i8* %623, align 1, !tbaa !12
  %2436 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %150, i64 0, i64 0
  %2437 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %150, i64 0, i64 0, i32 0
  store i8* %516, i8** %2437, align 8, !tbaa !3
  %2438 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %150, i64 0, i64 0, i32 1
  store i64* null, i64** %2438, align 8, !tbaa !33
  %2439 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %150, i64 0, i64 0, i32 2
  %2440 = bitcast i32* %2439 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2440, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2420, i8* nonnull %2427, %struct.ds_base* nonnull %2436, i32 1, i32 undef) #15
  %2441 = load i8, i8* %526, align 2, !tbaa !12
  %2442 = load i8, i8* %624, align 1, !tbaa !12
  %2443 = zext i8 %2441 to i32
  %2444 = zext i8 %2442 to i32
  %2445 = add nuw nsw i32 %2424, %2443
  %2446 = add nuw nsw i32 %2445, %2444
  %2447 = and i32 %2446, 31
  %2448 = zext i32 %2447 to i64
  %2449 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2448
  %2450 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %151, i64 0, i64 0
  %2451 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %151, i64 0, i64 0, i32 0
  store i8* %516, i8** %2451, align 8, !tbaa !3
  %2452 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %151, i64 0, i64 0, i32 1
  store i64* null, i64** %2452, align 8, !tbaa !33
  %2453 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %151, i64 0, i64 0, i32 2
  %2454 = bitcast i32* %2453 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2454, align 8, !tbaa !11
  %2455 = bitcast i8* %2449 to i64*
  %2456 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2455, %struct.ds_base* nonnull %2450, i32 undef, i32 undef) #15
  %2457 = trunc i64 %2456 to i8
  store i8 %2457, i8* %624, align 1, !tbaa !12
  %2458 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %152, i64 0, i64 0
  %2459 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %152, i64 0, i64 0, i32 0
  store i8* %516, i8** %2459, align 8, !tbaa !3
  %2460 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %152, i64 0, i64 0, i32 1
  store i64* null, i64** %2460, align 8, !tbaa !33
  %2461 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %152, i64 0, i64 0, i32 2
  %2462 = bitcast i32* %2461 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2462, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2442, i8* nonnull %2449, %struct.ds_base* nonnull %2458, i32 1, i32 undef) #15
  %2463 = load i8, i8* %527, align 1, !tbaa !12
  %2464 = load i8, i8* %625, align 1, !tbaa !12
  %2465 = zext i8 %2463 to i32
  %2466 = zext i8 %2464 to i32
  %2467 = add nuw nsw i32 %2446, %2465
  %2468 = add nuw nsw i32 %2467, %2466
  %2469 = and i32 %2468, 31
  %2470 = zext i32 %2469 to i64
  %2471 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2470
  %2472 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %153, i64 0, i64 0
  %2473 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %153, i64 0, i64 0, i32 0
  store i8* %516, i8** %2473, align 8, !tbaa !3
  %2474 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %153, i64 0, i64 0, i32 1
  store i64* null, i64** %2474, align 8, !tbaa !33
  %2475 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %153, i64 0, i64 0, i32 2
  %2476 = bitcast i32* %2475 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2476, align 8, !tbaa !11
  %2477 = bitcast i8* %2471 to i64*
  %2478 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2477, %struct.ds_base* nonnull %2472, i32 undef, i32 undef) #15
  %2479 = trunc i64 %2478 to i8
  store i8 %2479, i8* %625, align 1, !tbaa !12
  %2480 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %154, i64 0, i64 0
  %2481 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %154, i64 0, i64 0, i32 0
  store i8* %516, i8** %2481, align 8, !tbaa !3
  %2482 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %154, i64 0, i64 0, i32 1
  store i64* null, i64** %2482, align 8, !tbaa !33
  %2483 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %154, i64 0, i64 0, i32 2
  %2484 = bitcast i32* %2483 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2484, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2464, i8* nonnull %2471, %struct.ds_base* nonnull %2480, i32 1, i32 undef) #15
  %2485 = load i8, i8* %528, align 4, !tbaa !12
  %2486 = load i8, i8* %626, align 1, !tbaa !12
  %2487 = zext i8 %2485 to i32
  %2488 = zext i8 %2486 to i32
  %2489 = add nuw nsw i32 %2468, %2487
  %2490 = add nuw nsw i32 %2489, %2488
  %2491 = and i32 %2490, 31
  %2492 = zext i32 %2491 to i64
  %2493 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2492
  %2494 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %155, i64 0, i64 0
  %2495 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %155, i64 0, i64 0, i32 0
  store i8* %516, i8** %2495, align 8, !tbaa !3
  %2496 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %155, i64 0, i64 0, i32 1
  store i64* null, i64** %2496, align 8, !tbaa !33
  %2497 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %155, i64 0, i64 0, i32 2
  %2498 = bitcast i32* %2497 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2498, align 8, !tbaa !11
  %2499 = bitcast i8* %2493 to i64*
  %2500 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2499, %struct.ds_base* nonnull %2494, i32 undef, i32 undef) #15
  %2501 = trunc i64 %2500 to i8
  store i8 %2501, i8* %626, align 1, !tbaa !12
  %2502 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %156, i64 0, i64 0
  %2503 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %156, i64 0, i64 0, i32 0
  store i8* %516, i8** %2503, align 8, !tbaa !3
  %2504 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %156, i64 0, i64 0, i32 1
  store i64* null, i64** %2504, align 8, !tbaa !33
  %2505 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %156, i64 0, i64 0, i32 2
  %2506 = bitcast i32* %2505 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2506, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2486, i8* nonnull %2493, %struct.ds_base* nonnull %2502, i32 1, i32 undef) #15
  %2507 = load i8, i8* %529, align 1, !tbaa !12
  %2508 = load i8, i8* %627, align 1, !tbaa !12
  %2509 = zext i8 %2507 to i32
  %2510 = zext i8 %2508 to i32
  %2511 = add nuw nsw i32 %2490, %2509
  %2512 = add nuw nsw i32 %2511, %2510
  %2513 = and i32 %2512, 31
  %2514 = zext i32 %2513 to i64
  %2515 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2514
  %2516 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %157, i64 0, i64 0
  %2517 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %157, i64 0, i64 0, i32 0
  store i8* %516, i8** %2517, align 8, !tbaa !3
  %2518 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %157, i64 0, i64 0, i32 1
  store i64* null, i64** %2518, align 8, !tbaa !33
  %2519 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %157, i64 0, i64 0, i32 2
  %2520 = bitcast i32* %2519 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2520, align 8, !tbaa !11
  %2521 = bitcast i8* %2515 to i64*
  %2522 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2521, %struct.ds_base* nonnull %2516, i32 undef, i32 undef) #15
  %2523 = trunc i64 %2522 to i8
  store i8 %2523, i8* %627, align 1, !tbaa !12
  %2524 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %158, i64 0, i64 0
  %2525 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %158, i64 0, i64 0, i32 0
  store i8* %516, i8** %2525, align 8, !tbaa !3
  %2526 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %158, i64 0, i64 0, i32 1
  store i64* null, i64** %2526, align 8, !tbaa !33
  %2527 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %158, i64 0, i64 0, i32 2
  %2528 = bitcast i32* %2527 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2528, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2508, i8* nonnull %2515, %struct.ds_base* nonnull %2524, i32 1, i32 undef) #15
  %2529 = load i8, i8* %530, align 2, !tbaa !12
  %2530 = load i8, i8* %628, align 1, !tbaa !12
  %2531 = zext i8 %2529 to i32
  %2532 = zext i8 %2530 to i32
  %2533 = add nuw nsw i32 %2512, %2531
  %2534 = add nuw nsw i32 %2533, %2532
  %2535 = and i32 %2534, 31
  %2536 = zext i32 %2535 to i64
  %2537 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2536
  %2538 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %159, i64 0, i64 0
  %2539 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %159, i64 0, i64 0, i32 0
  store i8* %516, i8** %2539, align 8, !tbaa !3
  %2540 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %159, i64 0, i64 0, i32 1
  store i64* null, i64** %2540, align 8, !tbaa !33
  %2541 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %159, i64 0, i64 0, i32 2
  %2542 = bitcast i32* %2541 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2542, align 8, !tbaa !11
  %2543 = bitcast i8* %2537 to i64*
  %2544 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2543, %struct.ds_base* nonnull %2538, i32 undef, i32 undef) #15
  %2545 = trunc i64 %2544 to i8
  store i8 %2545, i8* %628, align 1, !tbaa !12
  %2546 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %160, i64 0, i64 0
  %2547 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %160, i64 0, i64 0, i32 0
  store i8* %516, i8** %2547, align 8, !tbaa !3
  %2548 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %160, i64 0, i64 0, i32 1
  store i64* null, i64** %2548, align 8, !tbaa !33
  %2549 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %160, i64 0, i64 0, i32 2
  %2550 = bitcast i32* %2549 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2550, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2530, i8* nonnull %2537, %struct.ds_base* nonnull %2546, i32 1, i32 undef) #15
  %2551 = load i8, i8* %531, align 1, !tbaa !12
  %2552 = load i8, i8* %629, align 1, !tbaa !12
  %2553 = zext i8 %2551 to i32
  %2554 = zext i8 %2552 to i32
  %2555 = add nuw nsw i32 %2534, %2553
  %2556 = add nuw nsw i32 %2555, %2554
  %2557 = and i32 %2556, 31
  %2558 = zext i32 %2557 to i64
  %2559 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2558
  %2560 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %161, i64 0, i64 0
  %2561 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %161, i64 0, i64 0, i32 0
  store i8* %516, i8** %2561, align 8, !tbaa !3
  %2562 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %161, i64 0, i64 0, i32 1
  store i64* null, i64** %2562, align 8, !tbaa !33
  %2563 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %161, i64 0, i64 0, i32 2
  %2564 = bitcast i32* %2563 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2564, align 8, !tbaa !11
  %2565 = bitcast i8* %2559 to i64*
  %2566 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2565, %struct.ds_base* nonnull %2560, i32 undef, i32 undef) #15
  %2567 = trunc i64 %2566 to i8
  store i8 %2567, i8* %629, align 1, !tbaa !12
  %2568 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %162, i64 0, i64 0
  %2569 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %162, i64 0, i64 0, i32 0
  store i8* %516, i8** %2569, align 8, !tbaa !3
  %2570 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %162, i64 0, i64 0, i32 1
  store i64* null, i64** %2570, align 8, !tbaa !33
  %2571 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %162, i64 0, i64 0, i32 2
  %2572 = bitcast i32* %2571 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2572, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2552, i8* nonnull %2559, %struct.ds_base* nonnull %2568, i32 1, i32 undef) #15
  %2573 = load i8, i8* %532, align 16, !tbaa !12
  %2574 = load i8, i8* %630, align 1, !tbaa !12
  %2575 = zext i8 %2573 to i32
  %2576 = zext i8 %2574 to i32
  %2577 = add nuw nsw i32 %2556, %2575
  %2578 = add nuw nsw i32 %2577, %2576
  %2579 = and i32 %2578, 31
  %2580 = zext i32 %2579 to i64
  %2581 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2580
  %2582 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %163, i64 0, i64 0
  %2583 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %163, i64 0, i64 0, i32 0
  store i8* %516, i8** %2583, align 8, !tbaa !3
  %2584 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %163, i64 0, i64 0, i32 1
  store i64* null, i64** %2584, align 8, !tbaa !33
  %2585 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %163, i64 0, i64 0, i32 2
  %2586 = bitcast i32* %2585 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2586, align 8, !tbaa !11
  %2587 = bitcast i8* %2581 to i64*
  %2588 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2587, %struct.ds_base* nonnull %2582, i32 undef, i32 undef) #15
  %2589 = trunc i64 %2588 to i8
  store i8 %2589, i8* %630, align 1, !tbaa !12
  %2590 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %164, i64 0, i64 0
  %2591 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %164, i64 0, i64 0, i32 0
  store i8* %516, i8** %2591, align 8, !tbaa !3
  %2592 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %164, i64 0, i64 0, i32 1
  store i64* null, i64** %2592, align 8, !tbaa !33
  %2593 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %164, i64 0, i64 0, i32 2
  %2594 = bitcast i32* %2593 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2594, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2574, i8* nonnull %2581, %struct.ds_base* nonnull %2590, i32 1, i32 undef) #15
  %2595 = load i8, i8* %533, align 1, !tbaa !12
  %2596 = load i8, i8* %631, align 1, !tbaa !12
  %2597 = zext i8 %2595 to i32
  %2598 = zext i8 %2596 to i32
  %2599 = add nuw nsw i32 %2578, %2597
  %2600 = add nuw nsw i32 %2599, %2598
  %2601 = and i32 %2600, 31
  %2602 = zext i32 %2601 to i64
  %2603 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2602
  %2604 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %165, i64 0, i64 0
  %2605 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %165, i64 0, i64 0, i32 0
  store i8* %516, i8** %2605, align 8, !tbaa !3
  %2606 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %165, i64 0, i64 0, i32 1
  store i64* null, i64** %2606, align 8, !tbaa !33
  %2607 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %165, i64 0, i64 0, i32 2
  %2608 = bitcast i32* %2607 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2608, align 8, !tbaa !11
  %2609 = bitcast i8* %2603 to i64*
  %2610 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2609, %struct.ds_base* nonnull %2604, i32 undef, i32 undef) #15
  %2611 = trunc i64 %2610 to i8
  store i8 %2611, i8* %631, align 1, !tbaa !12
  %2612 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %166, i64 0, i64 0
  %2613 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %166, i64 0, i64 0, i32 0
  store i8* %516, i8** %2613, align 8, !tbaa !3
  %2614 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %166, i64 0, i64 0, i32 1
  store i64* null, i64** %2614, align 8, !tbaa !33
  %2615 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %166, i64 0, i64 0, i32 2
  %2616 = bitcast i32* %2615 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2616, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2596, i8* nonnull %2603, %struct.ds_base* nonnull %2612, i32 1, i32 undef) #15
  %2617 = load i8, i8* %534, align 2, !tbaa !12
  %2618 = load i8, i8* %632, align 1, !tbaa !12
  %2619 = zext i8 %2617 to i32
  %2620 = zext i8 %2618 to i32
  %2621 = add nuw nsw i32 %2600, %2619
  %2622 = add nuw nsw i32 %2621, %2620
  %2623 = and i32 %2622, 31
  %2624 = zext i32 %2623 to i64
  %2625 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2624
  %2626 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %167, i64 0, i64 0
  %2627 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %167, i64 0, i64 0, i32 0
  store i8* %516, i8** %2627, align 8, !tbaa !3
  %2628 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %167, i64 0, i64 0, i32 1
  store i64* null, i64** %2628, align 8, !tbaa !33
  %2629 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %167, i64 0, i64 0, i32 2
  %2630 = bitcast i32* %2629 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2630, align 8, !tbaa !11
  %2631 = bitcast i8* %2625 to i64*
  %2632 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2631, %struct.ds_base* nonnull %2626, i32 undef, i32 undef) #15
  %2633 = trunc i64 %2632 to i8
  store i8 %2633, i8* %632, align 1, !tbaa !12
  %2634 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %168, i64 0, i64 0
  %2635 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %168, i64 0, i64 0, i32 0
  store i8* %516, i8** %2635, align 8, !tbaa !3
  %2636 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %168, i64 0, i64 0, i32 1
  store i64* null, i64** %2636, align 8, !tbaa !33
  %2637 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %168, i64 0, i64 0, i32 2
  %2638 = bitcast i32* %2637 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2638, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2618, i8* nonnull %2625, %struct.ds_base* nonnull %2634, i32 1, i32 undef) #15
  %2639 = load i8, i8* %535, align 1, !tbaa !12
  %2640 = load i8, i8* %633, align 1, !tbaa !12
  %2641 = zext i8 %2639 to i32
  %2642 = zext i8 %2640 to i32
  %2643 = add nuw nsw i32 %2622, %2641
  %2644 = add nuw nsw i32 %2643, %2642
  %2645 = and i32 %2644, 31
  %2646 = zext i32 %2645 to i64
  %2647 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2646
  %2648 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %169, i64 0, i64 0
  %2649 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %169, i64 0, i64 0, i32 0
  store i8* %516, i8** %2649, align 8, !tbaa !3
  %2650 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %169, i64 0, i64 0, i32 1
  store i64* null, i64** %2650, align 8, !tbaa !33
  %2651 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %169, i64 0, i64 0, i32 2
  %2652 = bitcast i32* %2651 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2652, align 8, !tbaa !11
  %2653 = bitcast i8* %2647 to i64*
  %2654 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2653, %struct.ds_base* nonnull %2648, i32 undef, i32 undef) #15
  %2655 = trunc i64 %2654 to i8
  store i8 %2655, i8* %633, align 1, !tbaa !12
  %2656 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %170, i64 0, i64 0
  %2657 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %170, i64 0, i64 0, i32 0
  store i8* %516, i8** %2657, align 8, !tbaa !3
  %2658 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %170, i64 0, i64 0, i32 1
  store i64* null, i64** %2658, align 8, !tbaa !33
  %2659 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %170, i64 0, i64 0, i32 2
  %2660 = bitcast i32* %2659 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2660, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2640, i8* nonnull %2647, %struct.ds_base* nonnull %2656, i32 1, i32 undef) #15
  %2661 = load i8, i8* %536, align 4, !tbaa !12
  %2662 = load i8, i8* %634, align 1, !tbaa !12
  %2663 = zext i8 %2661 to i32
  %2664 = zext i8 %2662 to i32
  %2665 = add nuw nsw i32 %2644, %2663
  %2666 = add nuw nsw i32 %2665, %2664
  %2667 = and i32 %2666, 31
  %2668 = zext i32 %2667 to i64
  %2669 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2668
  %2670 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %171, i64 0, i64 0
  %2671 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %171, i64 0, i64 0, i32 0
  store i8* %516, i8** %2671, align 8, !tbaa !3
  %2672 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %171, i64 0, i64 0, i32 1
  store i64* null, i64** %2672, align 8, !tbaa !33
  %2673 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %171, i64 0, i64 0, i32 2
  %2674 = bitcast i32* %2673 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2674, align 8, !tbaa !11
  %2675 = bitcast i8* %2669 to i64*
  %2676 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2675, %struct.ds_base* nonnull %2670, i32 undef, i32 undef) #15
  %2677 = trunc i64 %2676 to i8
  store i8 %2677, i8* %634, align 1, !tbaa !12
  %2678 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %172, i64 0, i64 0
  %2679 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %172, i64 0, i64 0, i32 0
  store i8* %516, i8** %2679, align 8, !tbaa !3
  %2680 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %172, i64 0, i64 0, i32 1
  store i64* null, i64** %2680, align 8, !tbaa !33
  %2681 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %172, i64 0, i64 0, i32 2
  %2682 = bitcast i32* %2681 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2682, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2662, i8* nonnull %2669, %struct.ds_base* nonnull %2678, i32 1, i32 undef) #15
  %2683 = load i8, i8* %537, align 1, !tbaa !12
  %2684 = load i8, i8* %635, align 1, !tbaa !12
  %2685 = zext i8 %2683 to i32
  %2686 = zext i8 %2684 to i32
  %2687 = add nuw nsw i32 %2666, %2685
  %2688 = add nuw nsw i32 %2687, %2686
  %2689 = and i32 %2688, 31
  %2690 = zext i32 %2689 to i64
  %2691 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2690
  %2692 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %173, i64 0, i64 0
  %2693 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %173, i64 0, i64 0, i32 0
  store i8* %516, i8** %2693, align 8, !tbaa !3
  %2694 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %173, i64 0, i64 0, i32 1
  store i64* null, i64** %2694, align 8, !tbaa !33
  %2695 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %173, i64 0, i64 0, i32 2
  %2696 = bitcast i32* %2695 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2696, align 8, !tbaa !11
  %2697 = bitcast i8* %2691 to i64*
  %2698 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2697, %struct.ds_base* nonnull %2692, i32 undef, i32 undef) #15
  %2699 = trunc i64 %2698 to i8
  store i8 %2699, i8* %635, align 1, !tbaa !12
  %2700 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %174, i64 0, i64 0
  %2701 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %174, i64 0, i64 0, i32 0
  store i8* %516, i8** %2701, align 8, !tbaa !3
  %2702 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %174, i64 0, i64 0, i32 1
  store i64* null, i64** %2702, align 8, !tbaa !33
  %2703 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %174, i64 0, i64 0, i32 2
  %2704 = bitcast i32* %2703 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2704, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2684, i8* nonnull %2691, %struct.ds_base* nonnull %2700, i32 1, i32 undef) #15
  %2705 = load i8, i8* %538, align 2, !tbaa !12
  %2706 = load i8, i8* %636, align 1, !tbaa !12
  %2707 = zext i8 %2705 to i32
  %2708 = zext i8 %2706 to i32
  %2709 = add nuw nsw i32 %2688, %2707
  %2710 = add nuw nsw i32 %2709, %2708
  %2711 = and i32 %2710, 31
  %2712 = zext i32 %2711 to i64
  %2713 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2712
  %2714 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %175, i64 0, i64 0
  %2715 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %175, i64 0, i64 0, i32 0
  store i8* %516, i8** %2715, align 8, !tbaa !3
  %2716 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %175, i64 0, i64 0, i32 1
  store i64* null, i64** %2716, align 8, !tbaa !33
  %2717 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %175, i64 0, i64 0, i32 2
  %2718 = bitcast i32* %2717 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2718, align 8, !tbaa !11
  %2719 = bitcast i8* %2713 to i64*
  %2720 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2719, %struct.ds_base* nonnull %2714, i32 undef, i32 undef) #15
  %2721 = trunc i64 %2720 to i8
  store i8 %2721, i8* %636, align 1, !tbaa !12
  %2722 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %176, i64 0, i64 0
  %2723 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %176, i64 0, i64 0, i32 0
  store i8* %516, i8** %2723, align 8, !tbaa !3
  %2724 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %176, i64 0, i64 0, i32 1
  store i64* null, i64** %2724, align 8, !tbaa !33
  %2725 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %176, i64 0, i64 0, i32 2
  %2726 = bitcast i32* %2725 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2726, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2706, i8* nonnull %2713, %struct.ds_base* nonnull %2722, i32 1, i32 undef) #15
  %2727 = load i8, i8* %539, align 1, !tbaa !12
  %2728 = load i8, i8* %637, align 1, !tbaa !12
  %2729 = zext i8 %2727 to i32
  %2730 = zext i8 %2728 to i32
  %2731 = add nuw nsw i32 %2710, %2729
  %2732 = add nuw nsw i32 %2731, %2730
  %2733 = and i32 %2732, 31
  %2734 = zext i32 %2733 to i64
  %2735 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2734
  %2736 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %177, i64 0, i64 0
  %2737 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %177, i64 0, i64 0, i32 0
  store i8* %516, i8** %2737, align 8, !tbaa !3
  %2738 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %177, i64 0, i64 0, i32 1
  store i64* null, i64** %2738, align 8, !tbaa !33
  %2739 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %177, i64 0, i64 0, i32 2
  %2740 = bitcast i32* %2739 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2740, align 8, !tbaa !11
  %2741 = bitcast i8* %2735 to i64*
  %2742 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2741, %struct.ds_base* nonnull %2736, i32 undef, i32 undef) #15
  %2743 = trunc i64 %2742 to i8
  store i8 %2743, i8* %637, align 1, !tbaa !12
  %2744 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %178, i64 0, i64 0
  %2745 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %178, i64 0, i64 0, i32 0
  store i8* %516, i8** %2745, align 8, !tbaa !3
  %2746 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %178, i64 0, i64 0, i32 1
  store i64* null, i64** %2746, align 8, !tbaa !33
  %2747 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %178, i64 0, i64 0, i32 2
  %2748 = bitcast i32* %2747 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2748, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2728, i8* nonnull %2735, %struct.ds_base* nonnull %2744, i32 1, i32 undef) #15
  %2749 = load i8, i8* %540, align 8, !tbaa !12
  %2750 = load i8, i8* %638, align 1, !tbaa !12
  %2751 = zext i8 %2749 to i32
  %2752 = zext i8 %2750 to i32
  %2753 = add nuw nsw i32 %2732, %2751
  %2754 = add nuw nsw i32 %2753, %2752
  %2755 = and i32 %2754, 31
  %2756 = zext i32 %2755 to i64
  %2757 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2756
  %2758 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %179, i64 0, i64 0
  %2759 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %179, i64 0, i64 0, i32 0
  store i8* %516, i8** %2759, align 8, !tbaa !3
  %2760 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %179, i64 0, i64 0, i32 1
  store i64* null, i64** %2760, align 8, !tbaa !33
  %2761 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %179, i64 0, i64 0, i32 2
  %2762 = bitcast i32* %2761 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2762, align 8, !tbaa !11
  %2763 = bitcast i8* %2757 to i64*
  %2764 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2763, %struct.ds_base* nonnull %2758, i32 undef, i32 undef) #15
  %2765 = trunc i64 %2764 to i8
  store i8 %2765, i8* %638, align 1, !tbaa !12
  %2766 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %180, i64 0, i64 0
  %2767 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %180, i64 0, i64 0, i32 0
  store i8* %516, i8** %2767, align 8, !tbaa !3
  %2768 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %180, i64 0, i64 0, i32 1
  store i64* null, i64** %2768, align 8, !tbaa !33
  %2769 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %180, i64 0, i64 0, i32 2
  %2770 = bitcast i32* %2769 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2770, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2750, i8* nonnull %2757, %struct.ds_base* nonnull %2766, i32 1, i32 undef) #15
  %2771 = load i8, i8* %541, align 1, !tbaa !12
  %2772 = load i8, i8* %639, align 1, !tbaa !12
  %2773 = zext i8 %2771 to i32
  %2774 = zext i8 %2772 to i32
  %2775 = add nuw nsw i32 %2754, %2773
  %2776 = add nuw nsw i32 %2775, %2774
  %2777 = and i32 %2776, 31
  %2778 = zext i32 %2777 to i64
  %2779 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2778
  %2780 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %181, i64 0, i64 0
  %2781 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %181, i64 0, i64 0, i32 0
  store i8* %516, i8** %2781, align 8, !tbaa !3
  %2782 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %181, i64 0, i64 0, i32 1
  store i64* null, i64** %2782, align 8, !tbaa !33
  %2783 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %181, i64 0, i64 0, i32 2
  %2784 = bitcast i32* %2783 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2784, align 8, !tbaa !11
  %2785 = bitcast i8* %2779 to i64*
  %2786 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2785, %struct.ds_base* nonnull %2780, i32 undef, i32 undef) #15
  %2787 = trunc i64 %2786 to i8
  store i8 %2787, i8* %639, align 1, !tbaa !12
  %2788 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %182, i64 0, i64 0
  %2789 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %182, i64 0, i64 0, i32 0
  store i8* %516, i8** %2789, align 8, !tbaa !3
  %2790 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %182, i64 0, i64 0, i32 1
  store i64* null, i64** %2790, align 8, !tbaa !33
  %2791 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %182, i64 0, i64 0, i32 2
  %2792 = bitcast i32* %2791 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2792, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2772, i8* nonnull %2779, %struct.ds_base* nonnull %2788, i32 1, i32 undef) #15
  %2793 = load i8, i8* %542, align 2, !tbaa !12
  %2794 = load i8, i8* %640, align 1, !tbaa !12
  %2795 = zext i8 %2793 to i32
  %2796 = zext i8 %2794 to i32
  %2797 = add nuw nsw i32 %2776, %2795
  %2798 = add nuw nsw i32 %2797, %2796
  %2799 = and i32 %2798, 31
  %2800 = zext i32 %2799 to i64
  %2801 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2800
  %2802 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %183, i64 0, i64 0
  %2803 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %183, i64 0, i64 0, i32 0
  store i8* %516, i8** %2803, align 8, !tbaa !3
  %2804 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %183, i64 0, i64 0, i32 1
  store i64* null, i64** %2804, align 8, !tbaa !33
  %2805 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %183, i64 0, i64 0, i32 2
  %2806 = bitcast i32* %2805 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2806, align 8, !tbaa !11
  %2807 = bitcast i8* %2801 to i64*
  %2808 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2807, %struct.ds_base* nonnull %2802, i32 undef, i32 undef) #15
  %2809 = trunc i64 %2808 to i8
  store i8 %2809, i8* %640, align 1, !tbaa !12
  %2810 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %184, i64 0, i64 0
  %2811 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %184, i64 0, i64 0, i32 0
  store i8* %516, i8** %2811, align 8, !tbaa !3
  %2812 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %184, i64 0, i64 0, i32 1
  store i64* null, i64** %2812, align 8, !tbaa !33
  %2813 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %184, i64 0, i64 0, i32 2
  %2814 = bitcast i32* %2813 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2814, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2794, i8* nonnull %2801, %struct.ds_base* nonnull %2810, i32 1, i32 undef) #15
  %2815 = load i8, i8* %543, align 1, !tbaa !12
  %2816 = load i8, i8* %641, align 1, !tbaa !12
  %2817 = zext i8 %2815 to i32
  %2818 = zext i8 %2816 to i32
  %2819 = add nuw nsw i32 %2798, %2817
  %2820 = add nuw nsw i32 %2819, %2818
  %2821 = and i32 %2820, 31
  %2822 = zext i32 %2821 to i64
  %2823 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2822
  %2824 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %185, i64 0, i64 0
  %2825 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %185, i64 0, i64 0, i32 0
  store i8* %516, i8** %2825, align 8, !tbaa !3
  %2826 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %185, i64 0, i64 0, i32 1
  store i64* null, i64** %2826, align 8, !tbaa !33
  %2827 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %185, i64 0, i64 0, i32 2
  %2828 = bitcast i32* %2827 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2828, align 8, !tbaa !11
  %2829 = bitcast i8* %2823 to i64*
  %2830 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2829, %struct.ds_base* nonnull %2824, i32 undef, i32 undef) #15
  %2831 = trunc i64 %2830 to i8
  store i8 %2831, i8* %641, align 1, !tbaa !12
  %2832 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %186, i64 0, i64 0
  %2833 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %186, i64 0, i64 0, i32 0
  store i8* %516, i8** %2833, align 8, !tbaa !3
  %2834 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %186, i64 0, i64 0, i32 1
  store i64* null, i64** %2834, align 8, !tbaa !33
  %2835 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %186, i64 0, i64 0, i32 2
  %2836 = bitcast i32* %2835 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2836, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2816, i8* nonnull %2823, %struct.ds_base* nonnull %2832, i32 1, i32 undef) #15
  %2837 = load i8, i8* %544, align 4, !tbaa !12
  %2838 = load i8, i8* %642, align 1, !tbaa !12
  %2839 = zext i8 %2837 to i32
  %2840 = zext i8 %2838 to i32
  %2841 = add nuw nsw i32 %2820, %2839
  %2842 = add nuw nsw i32 %2841, %2840
  %2843 = and i32 %2842, 31
  %2844 = zext i32 %2843 to i64
  %2845 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2844
  %2846 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %187, i64 0, i64 0
  %2847 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %187, i64 0, i64 0, i32 0
  store i8* %516, i8** %2847, align 8, !tbaa !3
  %2848 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %187, i64 0, i64 0, i32 1
  store i64* null, i64** %2848, align 8, !tbaa !33
  %2849 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %187, i64 0, i64 0, i32 2
  %2850 = bitcast i32* %2849 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2850, align 8, !tbaa !11
  %2851 = bitcast i8* %2845 to i64*
  %2852 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2851, %struct.ds_base* nonnull %2846, i32 undef, i32 undef) #15
  %2853 = trunc i64 %2852 to i8
  store i8 %2853, i8* %642, align 1, !tbaa !12
  %2854 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %188, i64 0, i64 0
  %2855 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %188, i64 0, i64 0, i32 0
  store i8* %516, i8** %2855, align 8, !tbaa !3
  %2856 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %188, i64 0, i64 0, i32 1
  store i64* null, i64** %2856, align 8, !tbaa !33
  %2857 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %188, i64 0, i64 0, i32 2
  %2858 = bitcast i32* %2857 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2858, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2838, i8* nonnull %2845, %struct.ds_base* nonnull %2854, i32 1, i32 undef) #15
  %2859 = load i8, i8* %545, align 1, !tbaa !12
  %2860 = load i8, i8* %643, align 1, !tbaa !12
  %2861 = zext i8 %2859 to i32
  %2862 = zext i8 %2860 to i32
  %2863 = add nuw nsw i32 %2842, %2861
  %2864 = add nuw nsw i32 %2863, %2862
  %2865 = and i32 %2864, 31
  %2866 = zext i32 %2865 to i64
  %2867 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2866
  %2868 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %189, i64 0, i64 0
  %2869 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %189, i64 0, i64 0, i32 0
  store i8* %516, i8** %2869, align 8, !tbaa !3
  %2870 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %189, i64 0, i64 0, i32 1
  store i64* null, i64** %2870, align 8, !tbaa !33
  %2871 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %189, i64 0, i64 0, i32 2
  %2872 = bitcast i32* %2871 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2872, align 8, !tbaa !11
  %2873 = bitcast i8* %2867 to i64*
  %2874 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2873, %struct.ds_base* nonnull %2868, i32 undef, i32 undef) #15
  %2875 = trunc i64 %2874 to i8
  store i8 %2875, i8* %643, align 1, !tbaa !12
  %2876 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %190, i64 0, i64 0
  %2877 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %190, i64 0, i64 0, i32 0
  store i8* %516, i8** %2877, align 8, !tbaa !3
  %2878 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %190, i64 0, i64 0, i32 1
  store i64* null, i64** %2878, align 8, !tbaa !33
  %2879 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %190, i64 0, i64 0, i32 2
  %2880 = bitcast i32* %2879 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2880, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2860, i8* nonnull %2867, %struct.ds_base* nonnull %2876, i32 1, i32 undef) #15
  %2881 = load i8, i8* %546, align 2, !tbaa !12
  %2882 = load i8, i8* %644, align 1, !tbaa !12
  %2883 = zext i8 %2881 to i32
  %2884 = zext i8 %2882 to i32
  %2885 = add nuw nsw i32 %2864, %2883
  %2886 = add nuw nsw i32 %2885, %2884
  %2887 = and i32 %2886, 31
  %2888 = zext i32 %2887 to i64
  %2889 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2888
  %2890 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %191, i64 0, i64 0
  %2891 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %191, i64 0, i64 0, i32 0
  store i8* %516, i8** %2891, align 8, !tbaa !3
  %2892 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %191, i64 0, i64 0, i32 1
  store i64* null, i64** %2892, align 8, !tbaa !33
  %2893 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %191, i64 0, i64 0, i32 2
  %2894 = bitcast i32* %2893 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2894, align 8, !tbaa !11
  %2895 = bitcast i8* %2889 to i64*
  %2896 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2895, %struct.ds_base* nonnull %2890, i32 undef, i32 undef) #15
  %2897 = trunc i64 %2896 to i8
  store i8 %2897, i8* %644, align 1, !tbaa !12
  %2898 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %192, i64 0, i64 0
  %2899 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %192, i64 0, i64 0, i32 0
  store i8* %516, i8** %2899, align 8, !tbaa !3
  %2900 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %192, i64 0, i64 0, i32 1
  store i64* null, i64** %2900, align 8, !tbaa !33
  %2901 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %192, i64 0, i64 0, i32 2
  %2902 = bitcast i32* %2901 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2902, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2882, i8* nonnull %2889, %struct.ds_base* nonnull %2898, i32 1, i32 undef) #15
  %2903 = load i8, i8* %547, align 1, !tbaa !12
  %2904 = load i8, i8* %645, align 1, !tbaa !12
  %2905 = zext i8 %2903 to i32
  %2906 = zext i8 %2904 to i32
  %2907 = add nuw nsw i32 %2886, %2905
  %2908 = add nuw nsw i32 %2907, %2906
  %2909 = and i32 %2908, 31
  %2910 = zext i32 %2909 to i64
  %2911 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2910
  %2912 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %193, i64 0, i64 0
  %2913 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %193, i64 0, i64 0, i32 0
  store i8* %516, i8** %2913, align 8, !tbaa !3
  %2914 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %193, i64 0, i64 0, i32 1
  store i64* null, i64** %2914, align 8, !tbaa !33
  %2915 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %193, i64 0, i64 0, i32 2
  %2916 = bitcast i32* %2915 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2916, align 8, !tbaa !11
  %2917 = bitcast i8* %2911 to i64*
  %2918 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2917, %struct.ds_base* nonnull %2912, i32 undef, i32 undef) #15
  %2919 = trunc i64 %2918 to i8
  store i8 %2919, i8* %645, align 1, !tbaa !12
  %2920 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %194, i64 0, i64 0
  %2921 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %194, i64 0, i64 0, i32 0
  store i8* %516, i8** %2921, align 8, !tbaa !3
  %2922 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %194, i64 0, i64 0, i32 1
  store i64* null, i64** %2922, align 8, !tbaa !33
  %2923 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %194, i64 0, i64 0, i32 2
  %2924 = bitcast i32* %2923 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2924, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2904, i8* nonnull %2911, %struct.ds_base* nonnull %2920, i32 1, i32 undef) #15
  %2925 = load i8, i8* %515, align 16, !tbaa !12
  %2926 = load i8, i8* %647, align 1, !tbaa !12
  %2927 = zext i8 %2925 to i32
  %2928 = zext i8 %2926 to i32
  %2929 = add nuw nsw i32 %2908, %2927
  %2930 = add nuw nsw i32 %2929, %2928
  %2931 = and i32 %2930, 31
  %2932 = zext i32 %2931 to i64
  %2933 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2932
  %2934 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %195, i64 0, i64 0
  %2935 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %195, i64 0, i64 0, i32 0
  store i8* %516, i8** %2935, align 8, !tbaa !3
  %2936 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %195, i64 0, i64 0, i32 1
  store i64* null, i64** %2936, align 8, !tbaa !33
  %2937 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %195, i64 0, i64 0, i32 2
  %2938 = bitcast i32* %2937 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2938, align 8, !tbaa !11
  %2939 = bitcast i8* %2933 to i64*
  %2940 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2939, %struct.ds_base* nonnull %2934, i32 undef, i32 undef) #15
  %2941 = trunc i64 %2940 to i8
  store i8 %2941, i8* %647, align 1, !tbaa !12
  %2942 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %196, i64 0, i64 0
  %2943 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %196, i64 0, i64 0, i32 0
  store i8* %516, i8** %2943, align 8, !tbaa !3
  %2944 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %196, i64 0, i64 0, i32 1
  store i64* null, i64** %2944, align 8, !tbaa !33
  %2945 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %196, i64 0, i64 0, i32 2
  %2946 = bitcast i32* %2945 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2946, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2926, i8* nonnull %2933, %struct.ds_base* nonnull %2942, i32 1, i32 undef) #15
  %2947 = load i8, i8* %517, align 1, !tbaa !12
  %2948 = load i8, i8* %648, align 1, !tbaa !12
  %2949 = zext i8 %2947 to i32
  %2950 = zext i8 %2948 to i32
  %2951 = add nuw nsw i32 %2930, %2949
  %2952 = add nuw nsw i32 %2951, %2950
  %2953 = and i32 %2952, 31
  %2954 = zext i32 %2953 to i64
  %2955 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2954
  %2956 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %197, i64 0, i64 0
  %2957 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %197, i64 0, i64 0, i32 0
  store i8* %516, i8** %2957, align 8, !tbaa !3
  %2958 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %197, i64 0, i64 0, i32 1
  store i64* null, i64** %2958, align 8, !tbaa !33
  %2959 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %197, i64 0, i64 0, i32 2
  %2960 = bitcast i32* %2959 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2960, align 8, !tbaa !11
  %2961 = bitcast i8* %2955 to i64*
  %2962 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2961, %struct.ds_base* nonnull %2956, i32 undef, i32 undef) #15
  %2963 = trunc i64 %2962 to i8
  store i8 %2963, i8* %648, align 1, !tbaa !12
  %2964 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %198, i64 0, i64 0
  %2965 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %198, i64 0, i64 0, i32 0
  store i8* %516, i8** %2965, align 8, !tbaa !3
  %2966 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %198, i64 0, i64 0, i32 1
  store i64* null, i64** %2966, align 8, !tbaa !33
  %2967 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %198, i64 0, i64 0, i32 2
  %2968 = bitcast i32* %2967 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2968, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2948, i8* nonnull %2955, %struct.ds_base* nonnull %2964, i32 1, i32 undef) #15
  %2969 = load i8, i8* %518, align 2, !tbaa !12
  %2970 = load i8, i8* %649, align 1, !tbaa !12
  %2971 = zext i8 %2969 to i32
  %2972 = zext i8 %2970 to i32
  %2973 = add nuw nsw i32 %2952, %2971
  %2974 = add nuw nsw i32 %2973, %2972
  %2975 = and i32 %2974, 31
  %2976 = zext i32 %2975 to i64
  %2977 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2976
  %2978 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %199, i64 0, i64 0
  %2979 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %199, i64 0, i64 0, i32 0
  store i8* %516, i8** %2979, align 8, !tbaa !3
  %2980 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %199, i64 0, i64 0, i32 1
  store i64* null, i64** %2980, align 8, !tbaa !33
  %2981 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %199, i64 0, i64 0, i32 2
  %2982 = bitcast i32* %2981 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2982, align 8, !tbaa !11
  %2983 = bitcast i8* %2977 to i64*
  %2984 = call i64 @uint64_t_secure_load_impl(i64* nonnull %2983, %struct.ds_base* nonnull %2978, i32 undef, i32 undef) #15
  %2985 = trunc i64 %2984 to i8
  store i8 %2985, i8* %649, align 1, !tbaa !12
  %2986 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %200, i64 0, i64 0
  %2987 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %200, i64 0, i64 0, i32 0
  store i8* %516, i8** %2987, align 8, !tbaa !3
  %2988 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %200, i64 0, i64 0, i32 1
  store i64* null, i64** %2988, align 8, !tbaa !33
  %2989 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %200, i64 0, i64 0, i32 2
  %2990 = bitcast i32* %2989 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %2990, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2970, i8* nonnull %2977, %struct.ds_base* nonnull %2986, i32 1, i32 undef) #15
  %2991 = load i8, i8* %519, align 1, !tbaa !12
  %2992 = load i8, i8* %650, align 1, !tbaa !12
  %2993 = zext i8 %2991 to i32
  %2994 = zext i8 %2992 to i32
  %2995 = add nuw nsw i32 %2974, %2993
  %2996 = add nuw nsw i32 %2995, %2994
  %2997 = and i32 %2996, 31
  %2998 = zext i32 %2997 to i64
  %2999 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %2998
  %3000 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %201, i64 0, i64 0
  %3001 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %201, i64 0, i64 0, i32 0
  store i8* %516, i8** %3001, align 8, !tbaa !3
  %3002 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %201, i64 0, i64 0, i32 1
  store i64* null, i64** %3002, align 8, !tbaa !33
  %3003 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %201, i64 0, i64 0, i32 2
  %3004 = bitcast i32* %3003 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3004, align 8, !tbaa !11
  %3005 = bitcast i8* %2999 to i64*
  %3006 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3005, %struct.ds_base* nonnull %3000, i32 undef, i32 undef) #15
  %3007 = trunc i64 %3006 to i8
  store i8 %3007, i8* %650, align 1, !tbaa !12
  %3008 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %202, i64 0, i64 0
  %3009 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %202, i64 0, i64 0, i32 0
  store i8* %516, i8** %3009, align 8, !tbaa !3
  %3010 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %202, i64 0, i64 0, i32 1
  store i64* null, i64** %3010, align 8, !tbaa !33
  %3011 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %202, i64 0, i64 0, i32 2
  %3012 = bitcast i32* %3011 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3012, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %2992, i8* nonnull %2999, %struct.ds_base* nonnull %3008, i32 1, i32 undef) #15
  %3013 = load i8, i8* %520, align 4, !tbaa !12
  %3014 = load i8, i8* %651, align 1, !tbaa !12
  %3015 = zext i8 %3013 to i32
  %3016 = zext i8 %3014 to i32
  %3017 = add nuw nsw i32 %2996, %3015
  %3018 = add nuw nsw i32 %3017, %3016
  %3019 = and i32 %3018, 31
  %3020 = zext i32 %3019 to i64
  %3021 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3020
  %3022 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %203, i64 0, i64 0
  %3023 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %203, i64 0, i64 0, i32 0
  store i8* %516, i8** %3023, align 8, !tbaa !3
  %3024 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %203, i64 0, i64 0, i32 1
  store i64* null, i64** %3024, align 8, !tbaa !33
  %3025 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %203, i64 0, i64 0, i32 2
  %3026 = bitcast i32* %3025 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3026, align 8, !tbaa !11
  %3027 = bitcast i8* %3021 to i64*
  %3028 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3027, %struct.ds_base* nonnull %3022, i32 undef, i32 undef) #15
  %3029 = trunc i64 %3028 to i8
  store i8 %3029, i8* %651, align 1, !tbaa !12
  %3030 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %204, i64 0, i64 0
  %3031 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %204, i64 0, i64 0, i32 0
  store i8* %516, i8** %3031, align 8, !tbaa !3
  %3032 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %204, i64 0, i64 0, i32 1
  store i64* null, i64** %3032, align 8, !tbaa !33
  %3033 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %204, i64 0, i64 0, i32 2
  %3034 = bitcast i32* %3033 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3034, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3014, i8* nonnull %3021, %struct.ds_base* nonnull %3030, i32 1, i32 undef) #15
  %3035 = load i8, i8* %521, align 1, !tbaa !12
  %3036 = load i8, i8* %652, align 1, !tbaa !12
  %3037 = zext i8 %3035 to i32
  %3038 = zext i8 %3036 to i32
  %3039 = add nuw nsw i32 %3018, %3037
  %3040 = add nuw nsw i32 %3039, %3038
  %3041 = and i32 %3040, 31
  %3042 = zext i32 %3041 to i64
  %3043 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3042
  %3044 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %205, i64 0, i64 0
  %3045 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %205, i64 0, i64 0, i32 0
  store i8* %516, i8** %3045, align 8, !tbaa !3
  %3046 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %205, i64 0, i64 0, i32 1
  store i64* null, i64** %3046, align 8, !tbaa !33
  %3047 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %205, i64 0, i64 0, i32 2
  %3048 = bitcast i32* %3047 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3048, align 8, !tbaa !11
  %3049 = bitcast i8* %3043 to i64*
  %3050 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3049, %struct.ds_base* nonnull %3044, i32 undef, i32 undef) #15
  %3051 = trunc i64 %3050 to i8
  store i8 %3051, i8* %652, align 1, !tbaa !12
  %3052 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %206, i64 0, i64 0
  %3053 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %206, i64 0, i64 0, i32 0
  store i8* %516, i8** %3053, align 8, !tbaa !3
  %3054 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %206, i64 0, i64 0, i32 1
  store i64* null, i64** %3054, align 8, !tbaa !33
  %3055 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %206, i64 0, i64 0, i32 2
  %3056 = bitcast i32* %3055 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3056, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3036, i8* nonnull %3043, %struct.ds_base* nonnull %3052, i32 1, i32 undef) #15
  %3057 = load i8, i8* %522, align 2, !tbaa !12
  %3058 = load i8, i8* %653, align 1, !tbaa !12
  %3059 = zext i8 %3057 to i32
  %3060 = zext i8 %3058 to i32
  %3061 = add nuw nsw i32 %3040, %3059
  %3062 = add nuw nsw i32 %3061, %3060
  %3063 = and i32 %3062, 31
  %3064 = zext i32 %3063 to i64
  %3065 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3064
  %3066 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %207, i64 0, i64 0
  %3067 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %207, i64 0, i64 0, i32 0
  store i8* %516, i8** %3067, align 8, !tbaa !3
  %3068 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %207, i64 0, i64 0, i32 1
  store i64* null, i64** %3068, align 8, !tbaa !33
  %3069 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %207, i64 0, i64 0, i32 2
  %3070 = bitcast i32* %3069 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3070, align 8, !tbaa !11
  %3071 = bitcast i8* %3065 to i64*
  %3072 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3071, %struct.ds_base* nonnull %3066, i32 undef, i32 undef) #15
  %3073 = trunc i64 %3072 to i8
  store i8 %3073, i8* %653, align 1, !tbaa !12
  %3074 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %208, i64 0, i64 0
  %3075 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %208, i64 0, i64 0, i32 0
  store i8* %516, i8** %3075, align 8, !tbaa !3
  %3076 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %208, i64 0, i64 0, i32 1
  store i64* null, i64** %3076, align 8, !tbaa !33
  %3077 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %208, i64 0, i64 0, i32 2
  %3078 = bitcast i32* %3077 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3078, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3058, i8* nonnull %3065, %struct.ds_base* nonnull %3074, i32 1, i32 undef) #15
  %3079 = load i8, i8* %523, align 1, !tbaa !12
  %3080 = load i8, i8* %654, align 1, !tbaa !12
  %3081 = zext i8 %3079 to i32
  %3082 = zext i8 %3080 to i32
  %3083 = add nuw nsw i32 %3062, %3081
  %3084 = add nuw nsw i32 %3083, %3082
  %3085 = and i32 %3084, 31
  %3086 = zext i32 %3085 to i64
  %3087 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3086
  %3088 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %209, i64 0, i64 0
  %3089 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %209, i64 0, i64 0, i32 0
  store i8* %516, i8** %3089, align 8, !tbaa !3
  %3090 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %209, i64 0, i64 0, i32 1
  store i64* null, i64** %3090, align 8, !tbaa !33
  %3091 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %209, i64 0, i64 0, i32 2
  %3092 = bitcast i32* %3091 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3092, align 8, !tbaa !11
  %3093 = bitcast i8* %3087 to i64*
  %3094 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3093, %struct.ds_base* nonnull %3088, i32 undef, i32 undef) #15
  %3095 = trunc i64 %3094 to i8
  store i8 %3095, i8* %654, align 1, !tbaa !12
  %3096 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %210, i64 0, i64 0
  %3097 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %210, i64 0, i64 0, i32 0
  store i8* %516, i8** %3097, align 8, !tbaa !3
  %3098 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %210, i64 0, i64 0, i32 1
  store i64* null, i64** %3098, align 8, !tbaa !33
  %3099 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %210, i64 0, i64 0, i32 2
  %3100 = bitcast i32* %3099 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3100, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3080, i8* nonnull %3087, %struct.ds_base* nonnull %3096, i32 1, i32 undef) #15
  %3101 = load i8, i8* %524, align 8, !tbaa !12
  %3102 = load i8, i8* %655, align 1, !tbaa !12
  %3103 = zext i8 %3101 to i32
  %3104 = zext i8 %3102 to i32
  %3105 = add nuw nsw i32 %3084, %3103
  %3106 = add nuw nsw i32 %3105, %3104
  %3107 = and i32 %3106, 31
  %3108 = zext i32 %3107 to i64
  %3109 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3108
  %3110 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %211, i64 0, i64 0
  %3111 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %211, i64 0, i64 0, i32 0
  store i8* %516, i8** %3111, align 8, !tbaa !3
  %3112 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %211, i64 0, i64 0, i32 1
  store i64* null, i64** %3112, align 8, !tbaa !33
  %3113 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %211, i64 0, i64 0, i32 2
  %3114 = bitcast i32* %3113 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3114, align 8, !tbaa !11
  %3115 = bitcast i8* %3109 to i64*
  %3116 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3115, %struct.ds_base* nonnull %3110, i32 undef, i32 undef) #15
  %3117 = trunc i64 %3116 to i8
  store i8 %3117, i8* %655, align 1, !tbaa !12
  %3118 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %212, i64 0, i64 0
  %3119 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %212, i64 0, i64 0, i32 0
  store i8* %516, i8** %3119, align 8, !tbaa !3
  %3120 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %212, i64 0, i64 0, i32 1
  store i64* null, i64** %3120, align 8, !tbaa !33
  %3121 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %212, i64 0, i64 0, i32 2
  %3122 = bitcast i32* %3121 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3122, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3102, i8* nonnull %3109, %struct.ds_base* nonnull %3118, i32 1, i32 undef) #15
  %3123 = load i8, i8* %525, align 1, !tbaa !12
  %3124 = load i8, i8* %656, align 1, !tbaa !12
  %3125 = zext i8 %3123 to i32
  %3126 = zext i8 %3124 to i32
  %3127 = add nuw nsw i32 %3106, %3125
  %3128 = add nuw nsw i32 %3127, %3126
  %3129 = and i32 %3128, 31
  %3130 = zext i32 %3129 to i64
  %3131 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3130
  %3132 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %213, i64 0, i64 0
  %3133 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %213, i64 0, i64 0, i32 0
  store i8* %516, i8** %3133, align 8, !tbaa !3
  %3134 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %213, i64 0, i64 0, i32 1
  store i64* null, i64** %3134, align 8, !tbaa !33
  %3135 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %213, i64 0, i64 0, i32 2
  %3136 = bitcast i32* %3135 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3136, align 8, !tbaa !11
  %3137 = bitcast i8* %3131 to i64*
  %3138 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3137, %struct.ds_base* nonnull %3132, i32 undef, i32 undef) #15
  %3139 = trunc i64 %3138 to i8
  store i8 %3139, i8* %656, align 1, !tbaa !12
  %3140 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %214, i64 0, i64 0
  %3141 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %214, i64 0, i64 0, i32 0
  store i8* %516, i8** %3141, align 8, !tbaa !3
  %3142 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %214, i64 0, i64 0, i32 1
  store i64* null, i64** %3142, align 8, !tbaa !33
  %3143 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %214, i64 0, i64 0, i32 2
  %3144 = bitcast i32* %3143 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3144, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3124, i8* nonnull %3131, %struct.ds_base* nonnull %3140, i32 1, i32 undef) #15
  %3145 = load i8, i8* %526, align 2, !tbaa !12
  %3146 = load i8, i8* %657, align 1, !tbaa !12
  %3147 = zext i8 %3145 to i32
  %3148 = zext i8 %3146 to i32
  %3149 = add nuw nsw i32 %3128, %3147
  %3150 = add nuw nsw i32 %3149, %3148
  %3151 = and i32 %3150, 31
  %3152 = zext i32 %3151 to i64
  %3153 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3152
  %3154 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %215, i64 0, i64 0
  %3155 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %215, i64 0, i64 0, i32 0
  store i8* %516, i8** %3155, align 8, !tbaa !3
  %3156 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %215, i64 0, i64 0, i32 1
  store i64* null, i64** %3156, align 8, !tbaa !33
  %3157 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %215, i64 0, i64 0, i32 2
  %3158 = bitcast i32* %3157 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3158, align 8, !tbaa !11
  %3159 = bitcast i8* %3153 to i64*
  %3160 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3159, %struct.ds_base* nonnull %3154, i32 undef, i32 undef) #15
  %3161 = trunc i64 %3160 to i8
  store i8 %3161, i8* %657, align 1, !tbaa !12
  %3162 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %216, i64 0, i64 0
  %3163 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %216, i64 0, i64 0, i32 0
  store i8* %516, i8** %3163, align 8, !tbaa !3
  %3164 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %216, i64 0, i64 0, i32 1
  store i64* null, i64** %3164, align 8, !tbaa !33
  %3165 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %216, i64 0, i64 0, i32 2
  %3166 = bitcast i32* %3165 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3166, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3146, i8* nonnull %3153, %struct.ds_base* nonnull %3162, i32 1, i32 undef) #15
  %3167 = load i8, i8* %527, align 1, !tbaa !12
  %3168 = load i8, i8* %658, align 1, !tbaa !12
  %3169 = zext i8 %3167 to i32
  %3170 = zext i8 %3168 to i32
  %3171 = add nuw nsw i32 %3150, %3169
  %3172 = add nuw nsw i32 %3171, %3170
  %3173 = and i32 %3172, 31
  %3174 = zext i32 %3173 to i64
  %3175 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3174
  %3176 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %217, i64 0, i64 0
  %3177 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %217, i64 0, i64 0, i32 0
  store i8* %516, i8** %3177, align 8, !tbaa !3
  %3178 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %217, i64 0, i64 0, i32 1
  store i64* null, i64** %3178, align 8, !tbaa !33
  %3179 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %217, i64 0, i64 0, i32 2
  %3180 = bitcast i32* %3179 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3180, align 8, !tbaa !11
  %3181 = bitcast i8* %3175 to i64*
  %3182 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3181, %struct.ds_base* nonnull %3176, i32 undef, i32 undef) #15
  %3183 = trunc i64 %3182 to i8
  store i8 %3183, i8* %658, align 1, !tbaa !12
  %3184 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %218, i64 0, i64 0
  %3185 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %218, i64 0, i64 0, i32 0
  store i8* %516, i8** %3185, align 8, !tbaa !3
  %3186 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %218, i64 0, i64 0, i32 1
  store i64* null, i64** %3186, align 8, !tbaa !33
  %3187 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %218, i64 0, i64 0, i32 2
  %3188 = bitcast i32* %3187 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3188, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3168, i8* nonnull %3175, %struct.ds_base* nonnull %3184, i32 1, i32 undef) #15
  %3189 = load i8, i8* %528, align 4, !tbaa !12
  %3190 = load i8, i8* %659, align 1, !tbaa !12
  %3191 = zext i8 %3189 to i32
  %3192 = zext i8 %3190 to i32
  %3193 = add nuw nsw i32 %3172, %3191
  %3194 = add nuw nsw i32 %3193, %3192
  %3195 = and i32 %3194, 31
  %3196 = zext i32 %3195 to i64
  %3197 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3196
  %3198 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %219, i64 0, i64 0
  %3199 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %219, i64 0, i64 0, i32 0
  store i8* %516, i8** %3199, align 8, !tbaa !3
  %3200 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %219, i64 0, i64 0, i32 1
  store i64* null, i64** %3200, align 8, !tbaa !33
  %3201 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %219, i64 0, i64 0, i32 2
  %3202 = bitcast i32* %3201 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3202, align 8, !tbaa !11
  %3203 = bitcast i8* %3197 to i64*
  %3204 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3203, %struct.ds_base* nonnull %3198, i32 undef, i32 undef) #15
  %3205 = trunc i64 %3204 to i8
  store i8 %3205, i8* %659, align 1, !tbaa !12
  %3206 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %220, i64 0, i64 0
  %3207 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %220, i64 0, i64 0, i32 0
  store i8* %516, i8** %3207, align 8, !tbaa !3
  %3208 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %220, i64 0, i64 0, i32 1
  store i64* null, i64** %3208, align 8, !tbaa !33
  %3209 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %220, i64 0, i64 0, i32 2
  %3210 = bitcast i32* %3209 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3210, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3190, i8* nonnull %3197, %struct.ds_base* nonnull %3206, i32 1, i32 undef) #15
  %3211 = load i8, i8* %529, align 1, !tbaa !12
  %3212 = load i8, i8* %660, align 1, !tbaa !12
  %3213 = zext i8 %3211 to i32
  %3214 = zext i8 %3212 to i32
  %3215 = add nuw nsw i32 %3194, %3213
  %3216 = add nuw nsw i32 %3215, %3214
  %3217 = and i32 %3216, 31
  %3218 = zext i32 %3217 to i64
  %3219 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3218
  %3220 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %221, i64 0, i64 0
  %3221 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %221, i64 0, i64 0, i32 0
  store i8* %516, i8** %3221, align 8, !tbaa !3
  %3222 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %221, i64 0, i64 0, i32 1
  store i64* null, i64** %3222, align 8, !tbaa !33
  %3223 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %221, i64 0, i64 0, i32 2
  %3224 = bitcast i32* %3223 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3224, align 8, !tbaa !11
  %3225 = bitcast i8* %3219 to i64*
  %3226 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3225, %struct.ds_base* nonnull %3220, i32 undef, i32 undef) #15
  %3227 = trunc i64 %3226 to i8
  store i8 %3227, i8* %660, align 1, !tbaa !12
  %3228 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %222, i64 0, i64 0
  %3229 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %222, i64 0, i64 0, i32 0
  store i8* %516, i8** %3229, align 8, !tbaa !3
  %3230 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %222, i64 0, i64 0, i32 1
  store i64* null, i64** %3230, align 8, !tbaa !33
  %3231 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %222, i64 0, i64 0, i32 2
  %3232 = bitcast i32* %3231 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3232, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3212, i8* nonnull %3219, %struct.ds_base* nonnull %3228, i32 1, i32 undef) #15
  %3233 = load i8, i8* %530, align 2, !tbaa !12
  %3234 = load i8, i8* %661, align 1, !tbaa !12
  %3235 = zext i8 %3233 to i32
  %3236 = zext i8 %3234 to i32
  %3237 = add nuw nsw i32 %3216, %3235
  %3238 = add nuw nsw i32 %3237, %3236
  %3239 = and i32 %3238, 31
  %3240 = zext i32 %3239 to i64
  %3241 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3240
  %3242 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %223, i64 0, i64 0
  %3243 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %223, i64 0, i64 0, i32 0
  store i8* %516, i8** %3243, align 8, !tbaa !3
  %3244 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %223, i64 0, i64 0, i32 1
  store i64* null, i64** %3244, align 8, !tbaa !33
  %3245 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %223, i64 0, i64 0, i32 2
  %3246 = bitcast i32* %3245 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3246, align 8, !tbaa !11
  %3247 = bitcast i8* %3241 to i64*
  %3248 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3247, %struct.ds_base* nonnull %3242, i32 undef, i32 undef) #15
  %3249 = trunc i64 %3248 to i8
  store i8 %3249, i8* %661, align 1, !tbaa !12
  %3250 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %224, i64 0, i64 0
  %3251 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %224, i64 0, i64 0, i32 0
  store i8* %516, i8** %3251, align 8, !tbaa !3
  %3252 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %224, i64 0, i64 0, i32 1
  store i64* null, i64** %3252, align 8, !tbaa !33
  %3253 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %224, i64 0, i64 0, i32 2
  %3254 = bitcast i32* %3253 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3254, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3234, i8* nonnull %3241, %struct.ds_base* nonnull %3250, i32 1, i32 undef) #15
  %3255 = load i8, i8* %531, align 1, !tbaa !12
  %3256 = load i8, i8* %662, align 1, !tbaa !12
  %3257 = zext i8 %3255 to i32
  %3258 = zext i8 %3256 to i32
  %3259 = add nuw nsw i32 %3238, %3257
  %3260 = add nuw nsw i32 %3259, %3258
  %3261 = and i32 %3260, 31
  %3262 = zext i32 %3261 to i64
  %3263 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3262
  %3264 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %225, i64 0, i64 0
  %3265 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %225, i64 0, i64 0, i32 0
  store i8* %516, i8** %3265, align 8, !tbaa !3
  %3266 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %225, i64 0, i64 0, i32 1
  store i64* null, i64** %3266, align 8, !tbaa !33
  %3267 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %225, i64 0, i64 0, i32 2
  %3268 = bitcast i32* %3267 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3268, align 8, !tbaa !11
  %3269 = bitcast i8* %3263 to i64*
  %3270 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3269, %struct.ds_base* nonnull %3264, i32 undef, i32 undef) #15
  %3271 = trunc i64 %3270 to i8
  store i8 %3271, i8* %662, align 1, !tbaa !12
  %3272 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %226, i64 0, i64 0
  %3273 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %226, i64 0, i64 0, i32 0
  store i8* %516, i8** %3273, align 8, !tbaa !3
  %3274 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %226, i64 0, i64 0, i32 1
  store i64* null, i64** %3274, align 8, !tbaa !33
  %3275 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %226, i64 0, i64 0, i32 2
  %3276 = bitcast i32* %3275 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3276, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3256, i8* nonnull %3263, %struct.ds_base* nonnull %3272, i32 1, i32 undef) #15
  %3277 = load i8, i8* %532, align 16, !tbaa !12
  %3278 = load i8, i8* %663, align 1, !tbaa !12
  %3279 = zext i8 %3277 to i32
  %3280 = zext i8 %3278 to i32
  %3281 = add nuw nsw i32 %3260, %3279
  %3282 = add nuw nsw i32 %3281, %3280
  %3283 = and i32 %3282, 31
  %3284 = zext i32 %3283 to i64
  %3285 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3284
  %3286 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %227, i64 0, i64 0
  %3287 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %227, i64 0, i64 0, i32 0
  store i8* %516, i8** %3287, align 8, !tbaa !3
  %3288 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %227, i64 0, i64 0, i32 1
  store i64* null, i64** %3288, align 8, !tbaa !33
  %3289 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %227, i64 0, i64 0, i32 2
  %3290 = bitcast i32* %3289 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3290, align 8, !tbaa !11
  %3291 = bitcast i8* %3285 to i64*
  %3292 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3291, %struct.ds_base* nonnull %3286, i32 undef, i32 undef) #15
  %3293 = trunc i64 %3292 to i8
  store i8 %3293, i8* %663, align 1, !tbaa !12
  %3294 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %228, i64 0, i64 0
  %3295 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %228, i64 0, i64 0, i32 0
  store i8* %516, i8** %3295, align 8, !tbaa !3
  %3296 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %228, i64 0, i64 0, i32 1
  store i64* null, i64** %3296, align 8, !tbaa !33
  %3297 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %228, i64 0, i64 0, i32 2
  %3298 = bitcast i32* %3297 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3298, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3278, i8* nonnull %3285, %struct.ds_base* nonnull %3294, i32 1, i32 undef) #15
  %3299 = load i8, i8* %533, align 1, !tbaa !12
  %3300 = load i8, i8* %664, align 1, !tbaa !12
  %3301 = zext i8 %3299 to i32
  %3302 = zext i8 %3300 to i32
  %3303 = add nuw nsw i32 %3282, %3301
  %3304 = add nuw nsw i32 %3303, %3302
  %3305 = and i32 %3304, 31
  %3306 = zext i32 %3305 to i64
  %3307 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3306
  %3308 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %229, i64 0, i64 0
  %3309 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %229, i64 0, i64 0, i32 0
  store i8* %516, i8** %3309, align 8, !tbaa !3
  %3310 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %229, i64 0, i64 0, i32 1
  store i64* null, i64** %3310, align 8, !tbaa !33
  %3311 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %229, i64 0, i64 0, i32 2
  %3312 = bitcast i32* %3311 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3312, align 8, !tbaa !11
  %3313 = bitcast i8* %3307 to i64*
  %3314 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3313, %struct.ds_base* nonnull %3308, i32 undef, i32 undef) #15
  %3315 = trunc i64 %3314 to i8
  store i8 %3315, i8* %664, align 1, !tbaa !12
  %3316 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %230, i64 0, i64 0
  %3317 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %230, i64 0, i64 0, i32 0
  store i8* %516, i8** %3317, align 8, !tbaa !3
  %3318 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %230, i64 0, i64 0, i32 1
  store i64* null, i64** %3318, align 8, !tbaa !33
  %3319 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %230, i64 0, i64 0, i32 2
  %3320 = bitcast i32* %3319 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3320, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3300, i8* nonnull %3307, %struct.ds_base* nonnull %3316, i32 1, i32 undef) #15
  %3321 = load i8, i8* %534, align 2, !tbaa !12
  %3322 = load i8, i8* %665, align 1, !tbaa !12
  %3323 = zext i8 %3321 to i32
  %3324 = zext i8 %3322 to i32
  %3325 = add nuw nsw i32 %3304, %3323
  %3326 = add nuw nsw i32 %3325, %3324
  %3327 = and i32 %3326, 31
  %3328 = zext i32 %3327 to i64
  %3329 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3328
  %3330 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %231, i64 0, i64 0
  %3331 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %231, i64 0, i64 0, i32 0
  store i8* %516, i8** %3331, align 8, !tbaa !3
  %3332 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %231, i64 0, i64 0, i32 1
  store i64* null, i64** %3332, align 8, !tbaa !33
  %3333 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %231, i64 0, i64 0, i32 2
  %3334 = bitcast i32* %3333 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3334, align 8, !tbaa !11
  %3335 = bitcast i8* %3329 to i64*
  %3336 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3335, %struct.ds_base* nonnull %3330, i32 undef, i32 undef) #15
  %3337 = trunc i64 %3336 to i8
  store i8 %3337, i8* %665, align 1, !tbaa !12
  %3338 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %232, i64 0, i64 0
  %3339 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %232, i64 0, i64 0, i32 0
  store i8* %516, i8** %3339, align 8, !tbaa !3
  %3340 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %232, i64 0, i64 0, i32 1
  store i64* null, i64** %3340, align 8, !tbaa !33
  %3341 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %232, i64 0, i64 0, i32 2
  %3342 = bitcast i32* %3341 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3342, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3322, i8* nonnull %3329, %struct.ds_base* nonnull %3338, i32 1, i32 undef) #15
  %3343 = load i8, i8* %535, align 1, !tbaa !12
  %3344 = load i8, i8* %666, align 1, !tbaa !12
  %3345 = zext i8 %3343 to i32
  %3346 = zext i8 %3344 to i32
  %3347 = add nuw nsw i32 %3326, %3345
  %3348 = add nuw nsw i32 %3347, %3346
  %3349 = and i32 %3348, 31
  %3350 = zext i32 %3349 to i64
  %3351 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3350
  %3352 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %233, i64 0, i64 0
  %3353 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %233, i64 0, i64 0, i32 0
  store i8* %516, i8** %3353, align 8, !tbaa !3
  %3354 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %233, i64 0, i64 0, i32 1
  store i64* null, i64** %3354, align 8, !tbaa !33
  %3355 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %233, i64 0, i64 0, i32 2
  %3356 = bitcast i32* %3355 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3356, align 8, !tbaa !11
  %3357 = bitcast i8* %3351 to i64*
  %3358 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3357, %struct.ds_base* nonnull %3352, i32 undef, i32 undef) #15
  %3359 = trunc i64 %3358 to i8
  store i8 %3359, i8* %666, align 1, !tbaa !12
  %3360 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %234, i64 0, i64 0
  %3361 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %234, i64 0, i64 0, i32 0
  store i8* %516, i8** %3361, align 8, !tbaa !3
  %3362 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %234, i64 0, i64 0, i32 1
  store i64* null, i64** %3362, align 8, !tbaa !33
  %3363 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %234, i64 0, i64 0, i32 2
  %3364 = bitcast i32* %3363 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3364, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3344, i8* nonnull %3351, %struct.ds_base* nonnull %3360, i32 1, i32 undef) #15
  %3365 = load i8, i8* %536, align 4, !tbaa !12
  %3366 = load i8, i8* %667, align 1, !tbaa !12
  %3367 = zext i8 %3365 to i32
  %3368 = zext i8 %3366 to i32
  %3369 = add nuw nsw i32 %3348, %3367
  %3370 = add nuw nsw i32 %3369, %3368
  %3371 = and i32 %3370, 31
  %3372 = zext i32 %3371 to i64
  %3373 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3372
  %3374 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %235, i64 0, i64 0
  %3375 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %235, i64 0, i64 0, i32 0
  store i8* %516, i8** %3375, align 8, !tbaa !3
  %3376 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %235, i64 0, i64 0, i32 1
  store i64* null, i64** %3376, align 8, !tbaa !33
  %3377 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %235, i64 0, i64 0, i32 2
  %3378 = bitcast i32* %3377 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3378, align 8, !tbaa !11
  %3379 = bitcast i8* %3373 to i64*
  %3380 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3379, %struct.ds_base* nonnull %3374, i32 undef, i32 undef) #15
  %3381 = trunc i64 %3380 to i8
  store i8 %3381, i8* %667, align 1, !tbaa !12
  %3382 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %236, i64 0, i64 0
  %3383 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %236, i64 0, i64 0, i32 0
  store i8* %516, i8** %3383, align 8, !tbaa !3
  %3384 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %236, i64 0, i64 0, i32 1
  store i64* null, i64** %3384, align 8, !tbaa !33
  %3385 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %236, i64 0, i64 0, i32 2
  %3386 = bitcast i32* %3385 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3386, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3366, i8* nonnull %3373, %struct.ds_base* nonnull %3382, i32 1, i32 undef) #15
  %3387 = load i8, i8* %537, align 1, !tbaa !12
  %3388 = load i8, i8* %668, align 1, !tbaa !12
  %3389 = zext i8 %3387 to i32
  %3390 = zext i8 %3388 to i32
  %3391 = add nuw nsw i32 %3370, %3389
  %3392 = add nuw nsw i32 %3391, %3390
  %3393 = and i32 %3392, 31
  %3394 = zext i32 %3393 to i64
  %3395 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3394
  %3396 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %237, i64 0, i64 0
  %3397 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %237, i64 0, i64 0, i32 0
  store i8* %516, i8** %3397, align 8, !tbaa !3
  %3398 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %237, i64 0, i64 0, i32 1
  store i64* null, i64** %3398, align 8, !tbaa !33
  %3399 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %237, i64 0, i64 0, i32 2
  %3400 = bitcast i32* %3399 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3400, align 8, !tbaa !11
  %3401 = bitcast i8* %3395 to i64*
  %3402 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3401, %struct.ds_base* nonnull %3396, i32 undef, i32 undef) #15
  %3403 = trunc i64 %3402 to i8
  store i8 %3403, i8* %668, align 1, !tbaa !12
  %3404 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %238, i64 0, i64 0
  %3405 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %238, i64 0, i64 0, i32 0
  store i8* %516, i8** %3405, align 8, !tbaa !3
  %3406 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %238, i64 0, i64 0, i32 1
  store i64* null, i64** %3406, align 8, !tbaa !33
  %3407 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %238, i64 0, i64 0, i32 2
  %3408 = bitcast i32* %3407 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3408, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3388, i8* nonnull %3395, %struct.ds_base* nonnull %3404, i32 1, i32 undef) #15
  %3409 = load i8, i8* %538, align 2, !tbaa !12
  %3410 = load i8, i8* %669, align 1, !tbaa !12
  %3411 = zext i8 %3409 to i32
  %3412 = zext i8 %3410 to i32
  %3413 = add nuw nsw i32 %3392, %3411
  %3414 = add nuw nsw i32 %3413, %3412
  %3415 = and i32 %3414, 31
  %3416 = zext i32 %3415 to i64
  %3417 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3416
  %3418 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %239, i64 0, i64 0
  %3419 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %239, i64 0, i64 0, i32 0
  store i8* %516, i8** %3419, align 8, !tbaa !3
  %3420 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %239, i64 0, i64 0, i32 1
  store i64* null, i64** %3420, align 8, !tbaa !33
  %3421 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %239, i64 0, i64 0, i32 2
  %3422 = bitcast i32* %3421 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3422, align 8, !tbaa !11
  %3423 = bitcast i8* %3417 to i64*
  %3424 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3423, %struct.ds_base* nonnull %3418, i32 undef, i32 undef) #15
  %3425 = trunc i64 %3424 to i8
  store i8 %3425, i8* %669, align 1, !tbaa !12
  %3426 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %240, i64 0, i64 0
  %3427 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %240, i64 0, i64 0, i32 0
  store i8* %516, i8** %3427, align 8, !tbaa !3
  %3428 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %240, i64 0, i64 0, i32 1
  store i64* null, i64** %3428, align 8, !tbaa !33
  %3429 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %240, i64 0, i64 0, i32 2
  %3430 = bitcast i32* %3429 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3430, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3410, i8* nonnull %3417, %struct.ds_base* nonnull %3426, i32 1, i32 undef) #15
  %3431 = load i8, i8* %539, align 1, !tbaa !12
  %3432 = load i8, i8* %670, align 1, !tbaa !12
  %3433 = zext i8 %3431 to i32
  %3434 = zext i8 %3432 to i32
  %3435 = add nuw nsw i32 %3414, %3433
  %3436 = add nuw nsw i32 %3435, %3434
  %3437 = and i32 %3436, 31
  %3438 = zext i32 %3437 to i64
  %3439 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3438
  %3440 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %241, i64 0, i64 0
  %3441 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %241, i64 0, i64 0, i32 0
  store i8* %516, i8** %3441, align 8, !tbaa !3
  %3442 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %241, i64 0, i64 0, i32 1
  store i64* null, i64** %3442, align 8, !tbaa !33
  %3443 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %241, i64 0, i64 0, i32 2
  %3444 = bitcast i32* %3443 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3444, align 8, !tbaa !11
  %3445 = bitcast i8* %3439 to i64*
  %3446 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3445, %struct.ds_base* nonnull %3440, i32 undef, i32 undef) #15
  %3447 = trunc i64 %3446 to i8
  store i8 %3447, i8* %670, align 1, !tbaa !12
  %3448 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %242, i64 0, i64 0
  %3449 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %242, i64 0, i64 0, i32 0
  store i8* %516, i8** %3449, align 8, !tbaa !3
  %3450 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %242, i64 0, i64 0, i32 1
  store i64* null, i64** %3450, align 8, !tbaa !33
  %3451 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %242, i64 0, i64 0, i32 2
  %3452 = bitcast i32* %3451 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3452, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3432, i8* nonnull %3439, %struct.ds_base* nonnull %3448, i32 1, i32 undef) #15
  %3453 = load i8, i8* %540, align 8, !tbaa !12
  %3454 = load i8, i8* %671, align 1, !tbaa !12
  %3455 = zext i8 %3453 to i32
  %3456 = zext i8 %3454 to i32
  %3457 = add nuw nsw i32 %3436, %3455
  %3458 = add nuw nsw i32 %3457, %3456
  %3459 = and i32 %3458, 31
  %3460 = zext i32 %3459 to i64
  %3461 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3460
  %3462 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %243, i64 0, i64 0
  %3463 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %243, i64 0, i64 0, i32 0
  store i8* %516, i8** %3463, align 8, !tbaa !3
  %3464 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %243, i64 0, i64 0, i32 1
  store i64* null, i64** %3464, align 8, !tbaa !33
  %3465 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %243, i64 0, i64 0, i32 2
  %3466 = bitcast i32* %3465 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3466, align 8, !tbaa !11
  %3467 = bitcast i8* %3461 to i64*
  %3468 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3467, %struct.ds_base* nonnull %3462, i32 undef, i32 undef) #15
  %3469 = trunc i64 %3468 to i8
  store i8 %3469, i8* %671, align 1, !tbaa !12
  %3470 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %244, i64 0, i64 0
  %3471 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %244, i64 0, i64 0, i32 0
  store i8* %516, i8** %3471, align 8, !tbaa !3
  %3472 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %244, i64 0, i64 0, i32 1
  store i64* null, i64** %3472, align 8, !tbaa !33
  %3473 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %244, i64 0, i64 0, i32 2
  %3474 = bitcast i32* %3473 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3474, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3454, i8* nonnull %3461, %struct.ds_base* nonnull %3470, i32 1, i32 undef) #15
  %3475 = load i8, i8* %541, align 1, !tbaa !12
  %3476 = load i8, i8* %672, align 1, !tbaa !12
  %3477 = zext i8 %3475 to i32
  %3478 = zext i8 %3476 to i32
  %3479 = add nuw nsw i32 %3458, %3477
  %3480 = add nuw nsw i32 %3479, %3478
  %3481 = and i32 %3480, 31
  %3482 = zext i32 %3481 to i64
  %3483 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3482
  %3484 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %245, i64 0, i64 0
  %3485 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %245, i64 0, i64 0, i32 0
  store i8* %516, i8** %3485, align 8, !tbaa !3
  %3486 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %245, i64 0, i64 0, i32 1
  store i64* null, i64** %3486, align 8, !tbaa !33
  %3487 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %245, i64 0, i64 0, i32 2
  %3488 = bitcast i32* %3487 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3488, align 8, !tbaa !11
  %3489 = bitcast i8* %3483 to i64*
  %3490 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3489, %struct.ds_base* nonnull %3484, i32 undef, i32 undef) #15
  %3491 = trunc i64 %3490 to i8
  store i8 %3491, i8* %672, align 1, !tbaa !12
  %3492 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %246, i64 0, i64 0
  %3493 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %246, i64 0, i64 0, i32 0
  store i8* %516, i8** %3493, align 8, !tbaa !3
  %3494 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %246, i64 0, i64 0, i32 1
  store i64* null, i64** %3494, align 8, !tbaa !33
  %3495 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %246, i64 0, i64 0, i32 2
  %3496 = bitcast i32* %3495 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3496, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3476, i8* nonnull %3483, %struct.ds_base* nonnull %3492, i32 1, i32 undef) #15
  %3497 = load i8, i8* %542, align 2, !tbaa !12
  %3498 = load i8, i8* %673, align 1, !tbaa !12
  %3499 = zext i8 %3497 to i32
  %3500 = zext i8 %3498 to i32
  %3501 = add nuw nsw i32 %3480, %3499
  %3502 = add nuw nsw i32 %3501, %3500
  %3503 = and i32 %3502, 31
  %3504 = zext i32 %3503 to i64
  %3505 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3504
  %3506 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %247, i64 0, i64 0
  %3507 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %247, i64 0, i64 0, i32 0
  store i8* %516, i8** %3507, align 8, !tbaa !3
  %3508 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %247, i64 0, i64 0, i32 1
  store i64* null, i64** %3508, align 8, !tbaa !33
  %3509 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %247, i64 0, i64 0, i32 2
  %3510 = bitcast i32* %3509 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3510, align 8, !tbaa !11
  %3511 = bitcast i8* %3505 to i64*
  %3512 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3511, %struct.ds_base* nonnull %3506, i32 undef, i32 undef) #15
  %3513 = trunc i64 %3512 to i8
  store i8 %3513, i8* %673, align 1, !tbaa !12
  %3514 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %248, i64 0, i64 0
  %3515 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %248, i64 0, i64 0, i32 0
  store i8* %516, i8** %3515, align 8, !tbaa !3
  %3516 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %248, i64 0, i64 0, i32 1
  store i64* null, i64** %3516, align 8, !tbaa !33
  %3517 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %248, i64 0, i64 0, i32 2
  %3518 = bitcast i32* %3517 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3518, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3498, i8* nonnull %3505, %struct.ds_base* nonnull %3514, i32 1, i32 undef) #15
  %3519 = load i8, i8* %543, align 1, !tbaa !12
  %3520 = load i8, i8* %674, align 1, !tbaa !12
  %3521 = zext i8 %3519 to i32
  %3522 = zext i8 %3520 to i32
  %3523 = add nuw nsw i32 %3502, %3521
  %3524 = add nuw nsw i32 %3523, %3522
  %3525 = and i32 %3524, 31
  %3526 = zext i32 %3525 to i64
  %3527 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3526
  %3528 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %249, i64 0, i64 0
  %3529 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %249, i64 0, i64 0, i32 0
  store i8* %516, i8** %3529, align 8, !tbaa !3
  %3530 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %249, i64 0, i64 0, i32 1
  store i64* null, i64** %3530, align 8, !tbaa !33
  %3531 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %249, i64 0, i64 0, i32 2
  %3532 = bitcast i32* %3531 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3532, align 8, !tbaa !11
  %3533 = bitcast i8* %3527 to i64*
  %3534 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3533, %struct.ds_base* nonnull %3528, i32 undef, i32 undef) #15
  %3535 = trunc i64 %3534 to i8
  store i8 %3535, i8* %674, align 1, !tbaa !12
  %3536 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %250, i64 0, i64 0
  %3537 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %250, i64 0, i64 0, i32 0
  store i8* %516, i8** %3537, align 8, !tbaa !3
  %3538 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %250, i64 0, i64 0, i32 1
  store i64* null, i64** %3538, align 8, !tbaa !33
  %3539 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %250, i64 0, i64 0, i32 2
  %3540 = bitcast i32* %3539 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3540, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3520, i8* nonnull %3527, %struct.ds_base* nonnull %3536, i32 1, i32 undef) #15
  %3541 = load i8, i8* %544, align 4, !tbaa !12
  %3542 = load i8, i8* %675, align 1, !tbaa !12
  %3543 = zext i8 %3541 to i32
  %3544 = zext i8 %3542 to i32
  %3545 = add nuw nsw i32 %3524, %3543
  %3546 = add nuw nsw i32 %3545, %3544
  %3547 = and i32 %3546, 31
  %3548 = zext i32 %3547 to i64
  %3549 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3548
  %3550 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %251, i64 0, i64 0
  %3551 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %251, i64 0, i64 0, i32 0
  store i8* %516, i8** %3551, align 8, !tbaa !3
  %3552 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %251, i64 0, i64 0, i32 1
  store i64* null, i64** %3552, align 8, !tbaa !33
  %3553 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %251, i64 0, i64 0, i32 2
  %3554 = bitcast i32* %3553 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3554, align 8, !tbaa !11
  %3555 = bitcast i8* %3549 to i64*
  %3556 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3555, %struct.ds_base* nonnull %3550, i32 undef, i32 undef) #15
  %3557 = trunc i64 %3556 to i8
  store i8 %3557, i8* %675, align 1, !tbaa !12
  %3558 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %252, i64 0, i64 0
  %3559 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %252, i64 0, i64 0, i32 0
  store i8* %516, i8** %3559, align 8, !tbaa !3
  %3560 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %252, i64 0, i64 0, i32 1
  store i64* null, i64** %3560, align 8, !tbaa !33
  %3561 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %252, i64 0, i64 0, i32 2
  %3562 = bitcast i32* %3561 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3562, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3542, i8* nonnull %3549, %struct.ds_base* nonnull %3558, i32 1, i32 undef) #15
  %3563 = load i8, i8* %545, align 1, !tbaa !12
  %3564 = load i8, i8* %676, align 1, !tbaa !12
  %3565 = zext i8 %3563 to i32
  %3566 = zext i8 %3564 to i32
  %3567 = add nuw nsw i32 %3546, %3565
  %3568 = add nuw nsw i32 %3567, %3566
  %3569 = and i32 %3568, 31
  %3570 = zext i32 %3569 to i64
  %3571 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3570
  %3572 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %253, i64 0, i64 0
  %3573 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %253, i64 0, i64 0, i32 0
  store i8* %516, i8** %3573, align 8, !tbaa !3
  %3574 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %253, i64 0, i64 0, i32 1
  store i64* null, i64** %3574, align 8, !tbaa !33
  %3575 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %253, i64 0, i64 0, i32 2
  %3576 = bitcast i32* %3575 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3576, align 8, !tbaa !11
  %3577 = bitcast i8* %3571 to i64*
  %3578 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3577, %struct.ds_base* nonnull %3572, i32 undef, i32 undef) #15
  %3579 = trunc i64 %3578 to i8
  store i8 %3579, i8* %676, align 1, !tbaa !12
  %3580 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %254, i64 0, i64 0
  %3581 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %254, i64 0, i64 0, i32 0
  store i8* %516, i8** %3581, align 8, !tbaa !3
  %3582 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %254, i64 0, i64 0, i32 1
  store i64* null, i64** %3582, align 8, !tbaa !33
  %3583 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %254, i64 0, i64 0, i32 2
  %3584 = bitcast i32* %3583 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3584, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3564, i8* nonnull %3571, %struct.ds_base* nonnull %3580, i32 1, i32 undef) #15
  %3585 = load i8, i8* %546, align 2, !tbaa !12
  %3586 = load i8, i8* %677, align 1, !tbaa !12
  %3587 = zext i8 %3585 to i32
  %3588 = zext i8 %3586 to i32
  %3589 = add nuw nsw i32 %3568, %3587
  %3590 = add nuw nsw i32 %3589, %3588
  %3591 = and i32 %3590, 31
  %3592 = zext i32 %3591 to i64
  %3593 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3592
  %3594 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %255, i64 0, i64 0
  %3595 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %255, i64 0, i64 0, i32 0
  store i8* %516, i8** %3595, align 8, !tbaa !3
  %3596 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %255, i64 0, i64 0, i32 1
  store i64* null, i64** %3596, align 8, !tbaa !33
  %3597 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %255, i64 0, i64 0, i32 2
  %3598 = bitcast i32* %3597 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3598, align 8, !tbaa !11
  %3599 = bitcast i8* %3593 to i64*
  %3600 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3599, %struct.ds_base* nonnull %3594, i32 undef, i32 undef) #15
  %3601 = trunc i64 %3600 to i8
  store i8 %3601, i8* %677, align 1, !tbaa !12
  %3602 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %256, i64 0, i64 0
  %3603 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %256, i64 0, i64 0, i32 0
  store i8* %516, i8** %3603, align 8, !tbaa !3
  %3604 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %256, i64 0, i64 0, i32 1
  store i64* null, i64** %3604, align 8, !tbaa !33
  %3605 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %256, i64 0, i64 0, i32 2
  %3606 = bitcast i32* %3605 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3606, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3586, i8* nonnull %3593, %struct.ds_base* nonnull %3602, i32 1, i32 undef) #15
  %3607 = load i8, i8* %547, align 1, !tbaa !12
  %3608 = load i8, i8* %678, align 1, !tbaa !12
  %3609 = zext i8 %3607 to i32
  %3610 = zext i8 %3608 to i32
  %3611 = add nuw nsw i32 %3590, %3609
  %3612 = add nuw nsw i32 %3611, %3610
  %3613 = and i32 %3612, 31
  %3614 = zext i32 %3613 to i64
  %3615 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3614
  %3616 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %257, i64 0, i64 0
  %3617 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %257, i64 0, i64 0, i32 0
  store i8* %516, i8** %3617, align 8, !tbaa !3
  %3618 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %257, i64 0, i64 0, i32 1
  store i64* null, i64** %3618, align 8, !tbaa !33
  %3619 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %257, i64 0, i64 0, i32 2
  %3620 = bitcast i32* %3619 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3620, align 8, !tbaa !11
  %3621 = bitcast i8* %3615 to i64*
  %3622 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3621, %struct.ds_base* nonnull %3616, i32 undef, i32 undef) #15
  %3623 = trunc i64 %3622 to i8
  store i8 %3623, i8* %678, align 1, !tbaa !12
  %3624 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %258, i64 0, i64 0
  %3625 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %258, i64 0, i64 0, i32 0
  store i8* %516, i8** %3625, align 8, !tbaa !3
  %3626 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %258, i64 0, i64 0, i32 1
  store i64* null, i64** %3626, align 8, !tbaa !33
  %3627 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %258, i64 0, i64 0, i32 2
  %3628 = bitcast i32* %3627 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3628, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3608, i8* nonnull %3615, %struct.ds_base* nonnull %3624, i32 1, i32 undef) #15
  %3629 = load i8, i8* %515, align 16, !tbaa !12
  %3630 = load i8, i8* %680, align 1, !tbaa !12
  %3631 = zext i8 %3629 to i32
  %3632 = zext i8 %3630 to i32
  %3633 = add nuw nsw i32 %3612, %3631
  %3634 = add nuw nsw i32 %3633, %3632
  %3635 = and i32 %3634, 31
  %3636 = zext i32 %3635 to i64
  %3637 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3636
  %3638 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %259, i64 0, i64 0
  %3639 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %259, i64 0, i64 0, i32 0
  store i8* %516, i8** %3639, align 8, !tbaa !3
  %3640 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %259, i64 0, i64 0, i32 1
  store i64* null, i64** %3640, align 8, !tbaa !33
  %3641 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %259, i64 0, i64 0, i32 2
  %3642 = bitcast i32* %3641 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3642, align 8, !tbaa !11
  %3643 = bitcast i8* %3637 to i64*
  %3644 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3643, %struct.ds_base* nonnull %3638, i32 undef, i32 undef) #15
  %3645 = trunc i64 %3644 to i8
  store i8 %3645, i8* %680, align 1, !tbaa !12
  %3646 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %260, i64 0, i64 0
  %3647 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %260, i64 0, i64 0, i32 0
  store i8* %516, i8** %3647, align 8, !tbaa !3
  %3648 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %260, i64 0, i64 0, i32 1
  store i64* null, i64** %3648, align 8, !tbaa !33
  %3649 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %260, i64 0, i64 0, i32 2
  %3650 = bitcast i32* %3649 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3650, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3630, i8* nonnull %3637, %struct.ds_base* nonnull %3646, i32 1, i32 undef) #15
  %3651 = load i8, i8* %517, align 1, !tbaa !12
  %3652 = load i8, i8* %681, align 1, !tbaa !12
  %3653 = zext i8 %3651 to i32
  %3654 = zext i8 %3652 to i32
  %3655 = add nuw nsw i32 %3634, %3653
  %3656 = add nuw nsw i32 %3655, %3654
  %3657 = and i32 %3656, 31
  %3658 = zext i32 %3657 to i64
  %3659 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3658
  %3660 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %261, i64 0, i64 0
  %3661 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %261, i64 0, i64 0, i32 0
  store i8* %516, i8** %3661, align 8, !tbaa !3
  %3662 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %261, i64 0, i64 0, i32 1
  store i64* null, i64** %3662, align 8, !tbaa !33
  %3663 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %261, i64 0, i64 0, i32 2
  %3664 = bitcast i32* %3663 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3664, align 8, !tbaa !11
  %3665 = bitcast i8* %3659 to i64*
  %3666 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3665, %struct.ds_base* nonnull %3660, i32 undef, i32 undef) #15
  %3667 = trunc i64 %3666 to i8
  store i8 %3667, i8* %681, align 1, !tbaa !12
  %3668 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %262, i64 0, i64 0
  %3669 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %262, i64 0, i64 0, i32 0
  store i8* %516, i8** %3669, align 8, !tbaa !3
  %3670 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %262, i64 0, i64 0, i32 1
  store i64* null, i64** %3670, align 8, !tbaa !33
  %3671 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %262, i64 0, i64 0, i32 2
  %3672 = bitcast i32* %3671 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3672, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3652, i8* nonnull %3659, %struct.ds_base* nonnull %3668, i32 1, i32 undef) #15
  %3673 = load i8, i8* %518, align 2, !tbaa !12
  %3674 = load i8, i8* %682, align 1, !tbaa !12
  %3675 = zext i8 %3673 to i32
  %3676 = zext i8 %3674 to i32
  %3677 = add nuw nsw i32 %3656, %3675
  %3678 = add nuw nsw i32 %3677, %3676
  %3679 = and i32 %3678, 31
  %3680 = zext i32 %3679 to i64
  %3681 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3680
  %3682 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %263, i64 0, i64 0
  %3683 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %263, i64 0, i64 0, i32 0
  store i8* %516, i8** %3683, align 8, !tbaa !3
  %3684 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %263, i64 0, i64 0, i32 1
  store i64* null, i64** %3684, align 8, !tbaa !33
  %3685 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %263, i64 0, i64 0, i32 2
  %3686 = bitcast i32* %3685 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3686, align 8, !tbaa !11
  %3687 = bitcast i8* %3681 to i64*
  %3688 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3687, %struct.ds_base* nonnull %3682, i32 undef, i32 undef) #15
  %3689 = trunc i64 %3688 to i8
  store i8 %3689, i8* %682, align 1, !tbaa !12
  %3690 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %264, i64 0, i64 0
  %3691 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %264, i64 0, i64 0, i32 0
  store i8* %516, i8** %3691, align 8, !tbaa !3
  %3692 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %264, i64 0, i64 0, i32 1
  store i64* null, i64** %3692, align 8, !tbaa !33
  %3693 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %264, i64 0, i64 0, i32 2
  %3694 = bitcast i32* %3693 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3694, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3674, i8* nonnull %3681, %struct.ds_base* nonnull %3690, i32 1, i32 undef) #15
  %3695 = load i8, i8* %519, align 1, !tbaa !12
  %3696 = load i8, i8* %683, align 1, !tbaa !12
  %3697 = zext i8 %3695 to i32
  %3698 = zext i8 %3696 to i32
  %3699 = add nuw nsw i32 %3678, %3697
  %3700 = add nuw nsw i32 %3699, %3698
  %3701 = and i32 %3700, 31
  %3702 = zext i32 %3701 to i64
  %3703 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3702
  %3704 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %265, i64 0, i64 0
  %3705 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %265, i64 0, i64 0, i32 0
  store i8* %516, i8** %3705, align 8, !tbaa !3
  %3706 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %265, i64 0, i64 0, i32 1
  store i64* null, i64** %3706, align 8, !tbaa !33
  %3707 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %265, i64 0, i64 0, i32 2
  %3708 = bitcast i32* %3707 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3708, align 8, !tbaa !11
  %3709 = bitcast i8* %3703 to i64*
  %3710 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3709, %struct.ds_base* nonnull %3704, i32 undef, i32 undef) #15
  %3711 = trunc i64 %3710 to i8
  store i8 %3711, i8* %683, align 1, !tbaa !12
  %3712 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %266, i64 0, i64 0
  %3713 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %266, i64 0, i64 0, i32 0
  store i8* %516, i8** %3713, align 8, !tbaa !3
  %3714 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %266, i64 0, i64 0, i32 1
  store i64* null, i64** %3714, align 8, !tbaa !33
  %3715 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %266, i64 0, i64 0, i32 2
  %3716 = bitcast i32* %3715 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3716, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3696, i8* nonnull %3703, %struct.ds_base* nonnull %3712, i32 1, i32 undef) #15
  %3717 = load i8, i8* %520, align 4, !tbaa !12
  %3718 = load i8, i8* %684, align 1, !tbaa !12
  %3719 = zext i8 %3717 to i32
  %3720 = zext i8 %3718 to i32
  %3721 = add nuw nsw i32 %3700, %3719
  %3722 = add nuw nsw i32 %3721, %3720
  %3723 = and i32 %3722, 31
  %3724 = zext i32 %3723 to i64
  %3725 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3724
  %3726 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %267, i64 0, i64 0
  %3727 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %267, i64 0, i64 0, i32 0
  store i8* %516, i8** %3727, align 8, !tbaa !3
  %3728 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %267, i64 0, i64 0, i32 1
  store i64* null, i64** %3728, align 8, !tbaa !33
  %3729 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %267, i64 0, i64 0, i32 2
  %3730 = bitcast i32* %3729 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3730, align 8, !tbaa !11
  %3731 = bitcast i8* %3725 to i64*
  %3732 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3731, %struct.ds_base* nonnull %3726, i32 undef, i32 undef) #15
  %3733 = trunc i64 %3732 to i8
  store i8 %3733, i8* %684, align 1, !tbaa !12
  %3734 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %268, i64 0, i64 0
  %3735 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %268, i64 0, i64 0, i32 0
  store i8* %516, i8** %3735, align 8, !tbaa !3
  %3736 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %268, i64 0, i64 0, i32 1
  store i64* null, i64** %3736, align 8, !tbaa !33
  %3737 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %268, i64 0, i64 0, i32 2
  %3738 = bitcast i32* %3737 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3738, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3718, i8* nonnull %3725, %struct.ds_base* nonnull %3734, i32 1, i32 undef) #15
  %3739 = load i8, i8* %521, align 1, !tbaa !12
  %3740 = load i8, i8* %685, align 1, !tbaa !12
  %3741 = zext i8 %3739 to i32
  %3742 = zext i8 %3740 to i32
  %3743 = add nuw nsw i32 %3722, %3741
  %3744 = add nuw nsw i32 %3743, %3742
  %3745 = and i32 %3744, 31
  %3746 = zext i32 %3745 to i64
  %3747 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3746
  %3748 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %269, i64 0, i64 0
  %3749 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %269, i64 0, i64 0, i32 0
  store i8* %516, i8** %3749, align 8, !tbaa !3
  %3750 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %269, i64 0, i64 0, i32 1
  store i64* null, i64** %3750, align 8, !tbaa !33
  %3751 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %269, i64 0, i64 0, i32 2
  %3752 = bitcast i32* %3751 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3752, align 8, !tbaa !11
  %3753 = bitcast i8* %3747 to i64*
  %3754 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3753, %struct.ds_base* nonnull %3748, i32 undef, i32 undef) #15
  %3755 = trunc i64 %3754 to i8
  store i8 %3755, i8* %685, align 1, !tbaa !12
  %3756 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %270, i64 0, i64 0
  %3757 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %270, i64 0, i64 0, i32 0
  store i8* %516, i8** %3757, align 8, !tbaa !3
  %3758 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %270, i64 0, i64 0, i32 1
  store i64* null, i64** %3758, align 8, !tbaa !33
  %3759 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %270, i64 0, i64 0, i32 2
  %3760 = bitcast i32* %3759 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3760, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3740, i8* nonnull %3747, %struct.ds_base* nonnull %3756, i32 1, i32 undef) #15
  %3761 = load i8, i8* %522, align 2, !tbaa !12
  %3762 = load i8, i8* %686, align 1, !tbaa !12
  %3763 = zext i8 %3761 to i32
  %3764 = zext i8 %3762 to i32
  %3765 = add nuw nsw i32 %3744, %3763
  %3766 = add nuw nsw i32 %3765, %3764
  %3767 = and i32 %3766, 31
  %3768 = zext i32 %3767 to i64
  %3769 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3768
  %3770 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %271, i64 0, i64 0
  %3771 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %271, i64 0, i64 0, i32 0
  store i8* %516, i8** %3771, align 8, !tbaa !3
  %3772 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %271, i64 0, i64 0, i32 1
  store i64* null, i64** %3772, align 8, !tbaa !33
  %3773 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %271, i64 0, i64 0, i32 2
  %3774 = bitcast i32* %3773 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3774, align 8, !tbaa !11
  %3775 = bitcast i8* %3769 to i64*
  %3776 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3775, %struct.ds_base* nonnull %3770, i32 undef, i32 undef) #15
  %3777 = trunc i64 %3776 to i8
  store i8 %3777, i8* %686, align 1, !tbaa !12
  %3778 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %272, i64 0, i64 0
  %3779 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %272, i64 0, i64 0, i32 0
  store i8* %516, i8** %3779, align 8, !tbaa !3
  %3780 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %272, i64 0, i64 0, i32 1
  store i64* null, i64** %3780, align 8, !tbaa !33
  %3781 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %272, i64 0, i64 0, i32 2
  %3782 = bitcast i32* %3781 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3782, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3762, i8* nonnull %3769, %struct.ds_base* nonnull %3778, i32 1, i32 undef) #15
  %3783 = load i8, i8* %523, align 1, !tbaa !12
  %3784 = load i8, i8* %687, align 1, !tbaa !12
  %3785 = zext i8 %3783 to i32
  %3786 = zext i8 %3784 to i32
  %3787 = add nuw nsw i32 %3766, %3785
  %3788 = add nuw nsw i32 %3787, %3786
  %3789 = and i32 %3788, 31
  %3790 = zext i32 %3789 to i64
  %3791 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3790
  %3792 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %273, i64 0, i64 0
  %3793 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %273, i64 0, i64 0, i32 0
  store i8* %516, i8** %3793, align 8, !tbaa !3
  %3794 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %273, i64 0, i64 0, i32 1
  store i64* null, i64** %3794, align 8, !tbaa !33
  %3795 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %273, i64 0, i64 0, i32 2
  %3796 = bitcast i32* %3795 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3796, align 8, !tbaa !11
  %3797 = bitcast i8* %3791 to i64*
  %3798 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3797, %struct.ds_base* nonnull %3792, i32 undef, i32 undef) #15
  %3799 = trunc i64 %3798 to i8
  store i8 %3799, i8* %687, align 1, !tbaa !12
  %3800 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %274, i64 0, i64 0
  %3801 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %274, i64 0, i64 0, i32 0
  store i8* %516, i8** %3801, align 8, !tbaa !3
  %3802 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %274, i64 0, i64 0, i32 1
  store i64* null, i64** %3802, align 8, !tbaa !33
  %3803 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %274, i64 0, i64 0, i32 2
  %3804 = bitcast i32* %3803 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3804, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3784, i8* nonnull %3791, %struct.ds_base* nonnull %3800, i32 1, i32 undef) #15
  %3805 = load i8, i8* %524, align 8, !tbaa !12
  %3806 = load i8, i8* %688, align 1, !tbaa !12
  %3807 = zext i8 %3805 to i32
  %3808 = zext i8 %3806 to i32
  %3809 = add nuw nsw i32 %3788, %3807
  %3810 = add nuw nsw i32 %3809, %3808
  %3811 = and i32 %3810, 31
  %3812 = zext i32 %3811 to i64
  %3813 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3812
  %3814 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %275, i64 0, i64 0
  %3815 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %275, i64 0, i64 0, i32 0
  store i8* %516, i8** %3815, align 8, !tbaa !3
  %3816 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %275, i64 0, i64 0, i32 1
  store i64* null, i64** %3816, align 8, !tbaa !33
  %3817 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %275, i64 0, i64 0, i32 2
  %3818 = bitcast i32* %3817 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3818, align 8, !tbaa !11
  %3819 = bitcast i8* %3813 to i64*
  %3820 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3819, %struct.ds_base* nonnull %3814, i32 undef, i32 undef) #15
  %3821 = trunc i64 %3820 to i8
  store i8 %3821, i8* %688, align 1, !tbaa !12
  %3822 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %276, i64 0, i64 0
  %3823 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %276, i64 0, i64 0, i32 0
  store i8* %516, i8** %3823, align 8, !tbaa !3
  %3824 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %276, i64 0, i64 0, i32 1
  store i64* null, i64** %3824, align 8, !tbaa !33
  %3825 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %276, i64 0, i64 0, i32 2
  %3826 = bitcast i32* %3825 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3826, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3806, i8* nonnull %3813, %struct.ds_base* nonnull %3822, i32 1, i32 undef) #15
  %3827 = load i8, i8* %525, align 1, !tbaa !12
  %3828 = load i8, i8* %689, align 1, !tbaa !12
  %3829 = zext i8 %3827 to i32
  %3830 = zext i8 %3828 to i32
  %3831 = add nuw nsw i32 %3810, %3829
  %3832 = add nuw nsw i32 %3831, %3830
  %3833 = and i32 %3832, 31
  %3834 = zext i32 %3833 to i64
  %3835 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3834
  %3836 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %277, i64 0, i64 0
  %3837 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %277, i64 0, i64 0, i32 0
  store i8* %516, i8** %3837, align 8, !tbaa !3
  %3838 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %277, i64 0, i64 0, i32 1
  store i64* null, i64** %3838, align 8, !tbaa !33
  %3839 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %277, i64 0, i64 0, i32 2
  %3840 = bitcast i32* %3839 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3840, align 8, !tbaa !11
  %3841 = bitcast i8* %3835 to i64*
  %3842 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3841, %struct.ds_base* nonnull %3836, i32 undef, i32 undef) #15
  %3843 = trunc i64 %3842 to i8
  store i8 %3843, i8* %689, align 1, !tbaa !12
  %3844 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %278, i64 0, i64 0
  %3845 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %278, i64 0, i64 0, i32 0
  store i8* %516, i8** %3845, align 8, !tbaa !3
  %3846 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %278, i64 0, i64 0, i32 1
  store i64* null, i64** %3846, align 8, !tbaa !33
  %3847 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %278, i64 0, i64 0, i32 2
  %3848 = bitcast i32* %3847 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3848, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3828, i8* nonnull %3835, %struct.ds_base* nonnull %3844, i32 1, i32 undef) #15
  %3849 = load i8, i8* %526, align 2, !tbaa !12
  %3850 = load i8, i8* %690, align 1, !tbaa !12
  %3851 = zext i8 %3849 to i32
  %3852 = zext i8 %3850 to i32
  %3853 = add nuw nsw i32 %3832, %3851
  %3854 = add nuw nsw i32 %3853, %3852
  %3855 = and i32 %3854, 31
  %3856 = zext i32 %3855 to i64
  %3857 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3856
  %3858 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %279, i64 0, i64 0
  %3859 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %279, i64 0, i64 0, i32 0
  store i8* %516, i8** %3859, align 8, !tbaa !3
  %3860 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %279, i64 0, i64 0, i32 1
  store i64* null, i64** %3860, align 8, !tbaa !33
  %3861 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %279, i64 0, i64 0, i32 2
  %3862 = bitcast i32* %3861 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3862, align 8, !tbaa !11
  %3863 = bitcast i8* %3857 to i64*
  %3864 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3863, %struct.ds_base* nonnull %3858, i32 undef, i32 undef) #15
  %3865 = trunc i64 %3864 to i8
  store i8 %3865, i8* %690, align 1, !tbaa !12
  %3866 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %280, i64 0, i64 0
  %3867 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %280, i64 0, i64 0, i32 0
  store i8* %516, i8** %3867, align 8, !tbaa !3
  %3868 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %280, i64 0, i64 0, i32 1
  store i64* null, i64** %3868, align 8, !tbaa !33
  %3869 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %280, i64 0, i64 0, i32 2
  %3870 = bitcast i32* %3869 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3870, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3850, i8* nonnull %3857, %struct.ds_base* nonnull %3866, i32 1, i32 undef) #15
  %3871 = load i8, i8* %527, align 1, !tbaa !12
  %3872 = load i8, i8* %691, align 1, !tbaa !12
  %3873 = zext i8 %3871 to i32
  %3874 = zext i8 %3872 to i32
  %3875 = add nuw nsw i32 %3854, %3873
  %3876 = add nuw nsw i32 %3875, %3874
  %3877 = and i32 %3876, 31
  %3878 = zext i32 %3877 to i64
  %3879 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3878
  %3880 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %281, i64 0, i64 0
  %3881 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %281, i64 0, i64 0, i32 0
  store i8* %516, i8** %3881, align 8, !tbaa !3
  %3882 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %281, i64 0, i64 0, i32 1
  store i64* null, i64** %3882, align 8, !tbaa !33
  %3883 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %281, i64 0, i64 0, i32 2
  %3884 = bitcast i32* %3883 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3884, align 8, !tbaa !11
  %3885 = bitcast i8* %3879 to i64*
  %3886 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3885, %struct.ds_base* nonnull %3880, i32 undef, i32 undef) #15
  %3887 = trunc i64 %3886 to i8
  store i8 %3887, i8* %691, align 1, !tbaa !12
  %3888 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %282, i64 0, i64 0
  %3889 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %282, i64 0, i64 0, i32 0
  store i8* %516, i8** %3889, align 8, !tbaa !3
  %3890 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %282, i64 0, i64 0, i32 1
  store i64* null, i64** %3890, align 8, !tbaa !33
  %3891 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %282, i64 0, i64 0, i32 2
  %3892 = bitcast i32* %3891 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3892, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3872, i8* nonnull %3879, %struct.ds_base* nonnull %3888, i32 1, i32 undef) #15
  %3893 = load i8, i8* %528, align 4, !tbaa !12
  %3894 = load i8, i8* %692, align 1, !tbaa !12
  %3895 = zext i8 %3893 to i32
  %3896 = zext i8 %3894 to i32
  %3897 = add nuw nsw i32 %3876, %3895
  %3898 = add nuw nsw i32 %3897, %3896
  %3899 = and i32 %3898, 31
  %3900 = zext i32 %3899 to i64
  %3901 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3900
  %3902 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %283, i64 0, i64 0
  %3903 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %283, i64 0, i64 0, i32 0
  store i8* %516, i8** %3903, align 8, !tbaa !3
  %3904 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %283, i64 0, i64 0, i32 1
  store i64* null, i64** %3904, align 8, !tbaa !33
  %3905 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %283, i64 0, i64 0, i32 2
  %3906 = bitcast i32* %3905 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3906, align 8, !tbaa !11
  %3907 = bitcast i8* %3901 to i64*
  %3908 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3907, %struct.ds_base* nonnull %3902, i32 undef, i32 undef) #15
  %3909 = trunc i64 %3908 to i8
  store i8 %3909, i8* %692, align 1, !tbaa !12
  %3910 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %284, i64 0, i64 0
  %3911 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %284, i64 0, i64 0, i32 0
  store i8* %516, i8** %3911, align 8, !tbaa !3
  %3912 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %284, i64 0, i64 0, i32 1
  store i64* null, i64** %3912, align 8, !tbaa !33
  %3913 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %284, i64 0, i64 0, i32 2
  %3914 = bitcast i32* %3913 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3914, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3894, i8* nonnull %3901, %struct.ds_base* nonnull %3910, i32 1, i32 undef) #15
  %3915 = load i8, i8* %529, align 1, !tbaa !12
  %3916 = load i8, i8* %693, align 1, !tbaa !12
  %3917 = zext i8 %3915 to i32
  %3918 = zext i8 %3916 to i32
  %3919 = add nuw nsw i32 %3898, %3917
  %3920 = add nuw nsw i32 %3919, %3918
  %3921 = and i32 %3920, 31
  %3922 = zext i32 %3921 to i64
  %3923 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3922
  %3924 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %285, i64 0, i64 0
  %3925 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %285, i64 0, i64 0, i32 0
  store i8* %516, i8** %3925, align 8, !tbaa !3
  %3926 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %285, i64 0, i64 0, i32 1
  store i64* null, i64** %3926, align 8, !tbaa !33
  %3927 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %285, i64 0, i64 0, i32 2
  %3928 = bitcast i32* %3927 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3928, align 8, !tbaa !11
  %3929 = bitcast i8* %3923 to i64*
  %3930 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3929, %struct.ds_base* nonnull %3924, i32 undef, i32 undef) #15
  %3931 = trunc i64 %3930 to i8
  store i8 %3931, i8* %693, align 1, !tbaa !12
  %3932 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %286, i64 0, i64 0
  %3933 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %286, i64 0, i64 0, i32 0
  store i8* %516, i8** %3933, align 8, !tbaa !3
  %3934 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %286, i64 0, i64 0, i32 1
  store i64* null, i64** %3934, align 8, !tbaa !33
  %3935 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %286, i64 0, i64 0, i32 2
  %3936 = bitcast i32* %3935 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3936, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3916, i8* nonnull %3923, %struct.ds_base* nonnull %3932, i32 1, i32 undef) #15
  %3937 = load i8, i8* %530, align 2, !tbaa !12
  %3938 = load i8, i8* %694, align 1, !tbaa !12
  %3939 = zext i8 %3937 to i32
  %3940 = zext i8 %3938 to i32
  %3941 = add nuw nsw i32 %3920, %3939
  %3942 = add nuw nsw i32 %3941, %3940
  %3943 = and i32 %3942, 31
  %3944 = zext i32 %3943 to i64
  %3945 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3944
  %3946 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %287, i64 0, i64 0
  %3947 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %287, i64 0, i64 0, i32 0
  store i8* %516, i8** %3947, align 8, !tbaa !3
  %3948 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %287, i64 0, i64 0, i32 1
  store i64* null, i64** %3948, align 8, !tbaa !33
  %3949 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %287, i64 0, i64 0, i32 2
  %3950 = bitcast i32* %3949 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3950, align 8, !tbaa !11
  %3951 = bitcast i8* %3945 to i64*
  %3952 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3951, %struct.ds_base* nonnull %3946, i32 undef, i32 undef) #15
  %3953 = trunc i64 %3952 to i8
  store i8 %3953, i8* %694, align 1, !tbaa !12
  %3954 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %288, i64 0, i64 0
  %3955 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %288, i64 0, i64 0, i32 0
  store i8* %516, i8** %3955, align 8, !tbaa !3
  %3956 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %288, i64 0, i64 0, i32 1
  store i64* null, i64** %3956, align 8, !tbaa !33
  %3957 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %288, i64 0, i64 0, i32 2
  %3958 = bitcast i32* %3957 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3958, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3938, i8* nonnull %3945, %struct.ds_base* nonnull %3954, i32 1, i32 undef) #15
  %3959 = load i8, i8* %531, align 1, !tbaa !12
  %3960 = load i8, i8* %695, align 1, !tbaa !12
  %3961 = zext i8 %3959 to i32
  %3962 = zext i8 %3960 to i32
  %3963 = add nuw nsw i32 %3942, %3961
  %3964 = add nuw nsw i32 %3963, %3962
  %3965 = and i32 %3964, 31
  %3966 = zext i32 %3965 to i64
  %3967 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3966
  %3968 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %289, i64 0, i64 0
  %3969 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %289, i64 0, i64 0, i32 0
  store i8* %516, i8** %3969, align 8, !tbaa !3
  %3970 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %289, i64 0, i64 0, i32 1
  store i64* null, i64** %3970, align 8, !tbaa !33
  %3971 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %289, i64 0, i64 0, i32 2
  %3972 = bitcast i32* %3971 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3972, align 8, !tbaa !11
  %3973 = bitcast i8* %3967 to i64*
  %3974 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3973, %struct.ds_base* nonnull %3968, i32 undef, i32 undef) #15
  %3975 = trunc i64 %3974 to i8
  store i8 %3975, i8* %695, align 1, !tbaa !12
  %3976 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %290, i64 0, i64 0
  %3977 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %290, i64 0, i64 0, i32 0
  store i8* %516, i8** %3977, align 8, !tbaa !3
  %3978 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %290, i64 0, i64 0, i32 1
  store i64* null, i64** %3978, align 8, !tbaa !33
  %3979 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %290, i64 0, i64 0, i32 2
  %3980 = bitcast i32* %3979 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3980, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3960, i8* nonnull %3967, %struct.ds_base* nonnull %3976, i32 1, i32 undef) #15
  %3981 = load i8, i8* %532, align 16, !tbaa !12
  %3982 = load i8, i8* %696, align 1, !tbaa !12
  %3983 = zext i8 %3981 to i32
  %3984 = zext i8 %3982 to i32
  %3985 = add nuw nsw i32 %3964, %3983
  %3986 = add nuw nsw i32 %3985, %3984
  %3987 = and i32 %3986, 31
  %3988 = zext i32 %3987 to i64
  %3989 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %3988
  %3990 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %291, i64 0, i64 0
  %3991 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %291, i64 0, i64 0, i32 0
  store i8* %516, i8** %3991, align 8, !tbaa !3
  %3992 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %291, i64 0, i64 0, i32 1
  store i64* null, i64** %3992, align 8, !tbaa !33
  %3993 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %291, i64 0, i64 0, i32 2
  %3994 = bitcast i32* %3993 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %3994, align 8, !tbaa !11
  %3995 = bitcast i8* %3989 to i64*
  %3996 = call i64 @uint64_t_secure_load_impl(i64* nonnull %3995, %struct.ds_base* nonnull %3990, i32 undef, i32 undef) #15
  %3997 = trunc i64 %3996 to i8
  store i8 %3997, i8* %696, align 1, !tbaa !12
  %3998 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %292, i64 0, i64 0
  %3999 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %292, i64 0, i64 0, i32 0
  store i8* %516, i8** %3999, align 8, !tbaa !3
  %4000 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %292, i64 0, i64 0, i32 1
  store i64* null, i64** %4000, align 8, !tbaa !33
  %4001 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %292, i64 0, i64 0, i32 2
  %4002 = bitcast i32* %4001 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4002, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %3982, i8* nonnull %3989, %struct.ds_base* nonnull %3998, i32 1, i32 undef) #15
  %4003 = load i8, i8* %533, align 1, !tbaa !12
  %4004 = load i8, i8* %697, align 1, !tbaa !12
  %4005 = zext i8 %4003 to i32
  %4006 = zext i8 %4004 to i32
  %4007 = add nuw nsw i32 %3986, %4005
  %4008 = add nuw nsw i32 %4007, %4006
  %4009 = and i32 %4008, 31
  %4010 = zext i32 %4009 to i64
  %4011 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4010
  %4012 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %293, i64 0, i64 0
  %4013 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %293, i64 0, i64 0, i32 0
  store i8* %516, i8** %4013, align 8, !tbaa !3
  %4014 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %293, i64 0, i64 0, i32 1
  store i64* null, i64** %4014, align 8, !tbaa !33
  %4015 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %293, i64 0, i64 0, i32 2
  %4016 = bitcast i32* %4015 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4016, align 8, !tbaa !11
  %4017 = bitcast i8* %4011 to i64*
  %4018 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4017, %struct.ds_base* nonnull %4012, i32 undef, i32 undef) #15
  %4019 = trunc i64 %4018 to i8
  store i8 %4019, i8* %697, align 1, !tbaa !12
  %4020 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %294, i64 0, i64 0
  %4021 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %294, i64 0, i64 0, i32 0
  store i8* %516, i8** %4021, align 8, !tbaa !3
  %4022 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %294, i64 0, i64 0, i32 1
  store i64* null, i64** %4022, align 8, !tbaa !33
  %4023 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %294, i64 0, i64 0, i32 2
  %4024 = bitcast i32* %4023 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4024, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4004, i8* nonnull %4011, %struct.ds_base* nonnull %4020, i32 1, i32 undef) #15
  %4025 = load i8, i8* %534, align 2, !tbaa !12
  %4026 = load i8, i8* %698, align 1, !tbaa !12
  %4027 = zext i8 %4025 to i32
  %4028 = zext i8 %4026 to i32
  %4029 = add nuw nsw i32 %4008, %4027
  %4030 = add nuw nsw i32 %4029, %4028
  %4031 = and i32 %4030, 31
  %4032 = zext i32 %4031 to i64
  %4033 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4032
  %4034 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %295, i64 0, i64 0
  %4035 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %295, i64 0, i64 0, i32 0
  store i8* %516, i8** %4035, align 8, !tbaa !3
  %4036 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %295, i64 0, i64 0, i32 1
  store i64* null, i64** %4036, align 8, !tbaa !33
  %4037 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %295, i64 0, i64 0, i32 2
  %4038 = bitcast i32* %4037 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4038, align 8, !tbaa !11
  %4039 = bitcast i8* %4033 to i64*
  %4040 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4039, %struct.ds_base* nonnull %4034, i32 undef, i32 undef) #15
  %4041 = trunc i64 %4040 to i8
  store i8 %4041, i8* %698, align 1, !tbaa !12
  %4042 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %296, i64 0, i64 0
  %4043 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %296, i64 0, i64 0, i32 0
  store i8* %516, i8** %4043, align 8, !tbaa !3
  %4044 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %296, i64 0, i64 0, i32 1
  store i64* null, i64** %4044, align 8, !tbaa !33
  %4045 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %296, i64 0, i64 0, i32 2
  %4046 = bitcast i32* %4045 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4046, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4026, i8* nonnull %4033, %struct.ds_base* nonnull %4042, i32 1, i32 undef) #15
  %4047 = load i8, i8* %535, align 1, !tbaa !12
  %4048 = load i8, i8* %699, align 1, !tbaa !12
  %4049 = zext i8 %4047 to i32
  %4050 = zext i8 %4048 to i32
  %4051 = add nuw nsw i32 %4030, %4049
  %4052 = add nuw nsw i32 %4051, %4050
  %4053 = and i32 %4052, 31
  %4054 = zext i32 %4053 to i64
  %4055 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4054
  %4056 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %297, i64 0, i64 0
  %4057 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %297, i64 0, i64 0, i32 0
  store i8* %516, i8** %4057, align 8, !tbaa !3
  %4058 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %297, i64 0, i64 0, i32 1
  store i64* null, i64** %4058, align 8, !tbaa !33
  %4059 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %297, i64 0, i64 0, i32 2
  %4060 = bitcast i32* %4059 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4060, align 8, !tbaa !11
  %4061 = bitcast i8* %4055 to i64*
  %4062 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4061, %struct.ds_base* nonnull %4056, i32 undef, i32 undef) #15
  %4063 = trunc i64 %4062 to i8
  store i8 %4063, i8* %699, align 1, !tbaa !12
  %4064 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %298, i64 0, i64 0
  %4065 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %298, i64 0, i64 0, i32 0
  store i8* %516, i8** %4065, align 8, !tbaa !3
  %4066 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %298, i64 0, i64 0, i32 1
  store i64* null, i64** %4066, align 8, !tbaa !33
  %4067 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %298, i64 0, i64 0, i32 2
  %4068 = bitcast i32* %4067 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4068, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4048, i8* nonnull %4055, %struct.ds_base* nonnull %4064, i32 1, i32 undef) #15
  %4069 = load i8, i8* %536, align 4, !tbaa !12
  %4070 = load i8, i8* %700, align 1, !tbaa !12
  %4071 = zext i8 %4069 to i32
  %4072 = zext i8 %4070 to i32
  %4073 = add nuw nsw i32 %4052, %4071
  %4074 = add nuw nsw i32 %4073, %4072
  %4075 = and i32 %4074, 31
  %4076 = zext i32 %4075 to i64
  %4077 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4076
  %4078 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %299, i64 0, i64 0
  %4079 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %299, i64 0, i64 0, i32 0
  store i8* %516, i8** %4079, align 8, !tbaa !3
  %4080 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %299, i64 0, i64 0, i32 1
  store i64* null, i64** %4080, align 8, !tbaa !33
  %4081 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %299, i64 0, i64 0, i32 2
  %4082 = bitcast i32* %4081 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4082, align 8, !tbaa !11
  %4083 = bitcast i8* %4077 to i64*
  %4084 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4083, %struct.ds_base* nonnull %4078, i32 undef, i32 undef) #15
  %4085 = trunc i64 %4084 to i8
  store i8 %4085, i8* %700, align 1, !tbaa !12
  %4086 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %300, i64 0, i64 0
  %4087 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %300, i64 0, i64 0, i32 0
  store i8* %516, i8** %4087, align 8, !tbaa !3
  %4088 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %300, i64 0, i64 0, i32 1
  store i64* null, i64** %4088, align 8, !tbaa !33
  %4089 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %300, i64 0, i64 0, i32 2
  %4090 = bitcast i32* %4089 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4090, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4070, i8* nonnull %4077, %struct.ds_base* nonnull %4086, i32 1, i32 undef) #15
  %4091 = load i8, i8* %537, align 1, !tbaa !12
  %4092 = load i8, i8* %701, align 1, !tbaa !12
  %4093 = zext i8 %4091 to i32
  %4094 = zext i8 %4092 to i32
  %4095 = add nuw nsw i32 %4074, %4093
  %4096 = add nuw nsw i32 %4095, %4094
  %4097 = and i32 %4096, 31
  %4098 = zext i32 %4097 to i64
  %4099 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4098
  %4100 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %301, i64 0, i64 0
  %4101 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %301, i64 0, i64 0, i32 0
  store i8* %516, i8** %4101, align 8, !tbaa !3
  %4102 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %301, i64 0, i64 0, i32 1
  store i64* null, i64** %4102, align 8, !tbaa !33
  %4103 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %301, i64 0, i64 0, i32 2
  %4104 = bitcast i32* %4103 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4104, align 8, !tbaa !11
  %4105 = bitcast i8* %4099 to i64*
  %4106 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4105, %struct.ds_base* nonnull %4100, i32 undef, i32 undef) #15
  %4107 = trunc i64 %4106 to i8
  store i8 %4107, i8* %701, align 1, !tbaa !12
  %4108 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %302, i64 0, i64 0
  %4109 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %302, i64 0, i64 0, i32 0
  store i8* %516, i8** %4109, align 8, !tbaa !3
  %4110 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %302, i64 0, i64 0, i32 1
  store i64* null, i64** %4110, align 8, !tbaa !33
  %4111 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %302, i64 0, i64 0, i32 2
  %4112 = bitcast i32* %4111 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4112, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4092, i8* nonnull %4099, %struct.ds_base* nonnull %4108, i32 1, i32 undef) #15
  %4113 = load i8, i8* %538, align 2, !tbaa !12
  %4114 = load i8, i8* %702, align 1, !tbaa !12
  %4115 = zext i8 %4113 to i32
  %4116 = zext i8 %4114 to i32
  %4117 = add nuw nsw i32 %4096, %4115
  %4118 = add nuw nsw i32 %4117, %4116
  %4119 = and i32 %4118, 31
  %4120 = zext i32 %4119 to i64
  %4121 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4120
  %4122 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %303, i64 0, i64 0
  %4123 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %303, i64 0, i64 0, i32 0
  store i8* %516, i8** %4123, align 8, !tbaa !3
  %4124 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %303, i64 0, i64 0, i32 1
  store i64* null, i64** %4124, align 8, !tbaa !33
  %4125 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %303, i64 0, i64 0, i32 2
  %4126 = bitcast i32* %4125 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4126, align 8, !tbaa !11
  %4127 = bitcast i8* %4121 to i64*
  %4128 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4127, %struct.ds_base* nonnull %4122, i32 undef, i32 undef) #15
  %4129 = trunc i64 %4128 to i8
  store i8 %4129, i8* %702, align 1, !tbaa !12
  %4130 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %304, i64 0, i64 0
  %4131 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %304, i64 0, i64 0, i32 0
  store i8* %516, i8** %4131, align 8, !tbaa !3
  %4132 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %304, i64 0, i64 0, i32 1
  store i64* null, i64** %4132, align 8, !tbaa !33
  %4133 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %304, i64 0, i64 0, i32 2
  %4134 = bitcast i32* %4133 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4134, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4114, i8* nonnull %4121, %struct.ds_base* nonnull %4130, i32 1, i32 undef) #15
  %4135 = load i8, i8* %539, align 1, !tbaa !12
  %4136 = load i8, i8* %703, align 1, !tbaa !12
  %4137 = zext i8 %4135 to i32
  %4138 = zext i8 %4136 to i32
  %4139 = add nuw nsw i32 %4118, %4137
  %4140 = add nuw nsw i32 %4139, %4138
  %4141 = and i32 %4140, 31
  %4142 = zext i32 %4141 to i64
  %4143 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4142
  %4144 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %305, i64 0, i64 0
  %4145 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %305, i64 0, i64 0, i32 0
  store i8* %516, i8** %4145, align 8, !tbaa !3
  %4146 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %305, i64 0, i64 0, i32 1
  store i64* null, i64** %4146, align 8, !tbaa !33
  %4147 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %305, i64 0, i64 0, i32 2
  %4148 = bitcast i32* %4147 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4148, align 8, !tbaa !11
  %4149 = bitcast i8* %4143 to i64*
  %4150 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4149, %struct.ds_base* nonnull %4144, i32 undef, i32 undef) #15
  %4151 = trunc i64 %4150 to i8
  store i8 %4151, i8* %703, align 1, !tbaa !12
  %4152 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %306, i64 0, i64 0
  %4153 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %306, i64 0, i64 0, i32 0
  store i8* %516, i8** %4153, align 8, !tbaa !3
  %4154 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %306, i64 0, i64 0, i32 1
  store i64* null, i64** %4154, align 8, !tbaa !33
  %4155 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %306, i64 0, i64 0, i32 2
  %4156 = bitcast i32* %4155 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4156, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4136, i8* nonnull %4143, %struct.ds_base* nonnull %4152, i32 1, i32 undef) #15
  %4157 = load i8, i8* %540, align 8, !tbaa !12
  %4158 = load i8, i8* %704, align 1, !tbaa !12
  %4159 = zext i8 %4157 to i32
  %4160 = zext i8 %4158 to i32
  %4161 = add nuw nsw i32 %4140, %4159
  %4162 = add nuw nsw i32 %4161, %4160
  %4163 = and i32 %4162, 31
  %4164 = zext i32 %4163 to i64
  %4165 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4164
  %4166 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %307, i64 0, i64 0
  %4167 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %307, i64 0, i64 0, i32 0
  store i8* %516, i8** %4167, align 8, !tbaa !3
  %4168 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %307, i64 0, i64 0, i32 1
  store i64* null, i64** %4168, align 8, !tbaa !33
  %4169 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %307, i64 0, i64 0, i32 2
  %4170 = bitcast i32* %4169 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4170, align 8, !tbaa !11
  %4171 = bitcast i8* %4165 to i64*
  %4172 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4171, %struct.ds_base* nonnull %4166, i32 undef, i32 undef) #15
  %4173 = trunc i64 %4172 to i8
  store i8 %4173, i8* %704, align 1, !tbaa !12
  %4174 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %308, i64 0, i64 0
  %4175 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %308, i64 0, i64 0, i32 0
  store i8* %516, i8** %4175, align 8, !tbaa !3
  %4176 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %308, i64 0, i64 0, i32 1
  store i64* null, i64** %4176, align 8, !tbaa !33
  %4177 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %308, i64 0, i64 0, i32 2
  %4178 = bitcast i32* %4177 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4178, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4158, i8* nonnull %4165, %struct.ds_base* nonnull %4174, i32 1, i32 undef) #15
  %4179 = load i8, i8* %541, align 1, !tbaa !12
  %4180 = load i8, i8* %705, align 1, !tbaa !12
  %4181 = zext i8 %4179 to i32
  %4182 = zext i8 %4180 to i32
  %4183 = add nuw nsw i32 %4162, %4181
  %4184 = add nuw nsw i32 %4183, %4182
  %4185 = and i32 %4184, 31
  %4186 = zext i32 %4185 to i64
  %4187 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4186
  %4188 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %309, i64 0, i64 0
  %4189 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %309, i64 0, i64 0, i32 0
  store i8* %516, i8** %4189, align 8, !tbaa !3
  %4190 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %309, i64 0, i64 0, i32 1
  store i64* null, i64** %4190, align 8, !tbaa !33
  %4191 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %309, i64 0, i64 0, i32 2
  %4192 = bitcast i32* %4191 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4192, align 8, !tbaa !11
  %4193 = bitcast i8* %4187 to i64*
  %4194 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4193, %struct.ds_base* nonnull %4188, i32 undef, i32 undef) #15
  %4195 = trunc i64 %4194 to i8
  store i8 %4195, i8* %705, align 1, !tbaa !12
  %4196 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %310, i64 0, i64 0
  %4197 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %310, i64 0, i64 0, i32 0
  store i8* %516, i8** %4197, align 8, !tbaa !3
  %4198 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %310, i64 0, i64 0, i32 1
  store i64* null, i64** %4198, align 8, !tbaa !33
  %4199 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %310, i64 0, i64 0, i32 2
  %4200 = bitcast i32* %4199 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4200, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4180, i8* nonnull %4187, %struct.ds_base* nonnull %4196, i32 1, i32 undef) #15
  %4201 = load i8, i8* %542, align 2, !tbaa !12
  %4202 = load i8, i8* %706, align 1, !tbaa !12
  %4203 = zext i8 %4201 to i32
  %4204 = zext i8 %4202 to i32
  %4205 = add nuw nsw i32 %4184, %4203
  %4206 = add nuw nsw i32 %4205, %4204
  %4207 = and i32 %4206, 31
  %4208 = zext i32 %4207 to i64
  %4209 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4208
  %4210 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %311, i64 0, i64 0
  %4211 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %311, i64 0, i64 0, i32 0
  store i8* %516, i8** %4211, align 8, !tbaa !3
  %4212 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %311, i64 0, i64 0, i32 1
  store i64* null, i64** %4212, align 8, !tbaa !33
  %4213 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %311, i64 0, i64 0, i32 2
  %4214 = bitcast i32* %4213 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4214, align 8, !tbaa !11
  %4215 = bitcast i8* %4209 to i64*
  %4216 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4215, %struct.ds_base* nonnull %4210, i32 undef, i32 undef) #15
  %4217 = trunc i64 %4216 to i8
  store i8 %4217, i8* %706, align 1, !tbaa !12
  %4218 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %312, i64 0, i64 0
  %4219 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %312, i64 0, i64 0, i32 0
  store i8* %516, i8** %4219, align 8, !tbaa !3
  %4220 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %312, i64 0, i64 0, i32 1
  store i64* null, i64** %4220, align 8, !tbaa !33
  %4221 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %312, i64 0, i64 0, i32 2
  %4222 = bitcast i32* %4221 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4222, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4202, i8* nonnull %4209, %struct.ds_base* nonnull %4218, i32 1, i32 undef) #15
  %4223 = load i8, i8* %543, align 1, !tbaa !12
  %4224 = load i8, i8* %707, align 1, !tbaa !12
  %4225 = zext i8 %4223 to i32
  %4226 = zext i8 %4224 to i32
  %4227 = add nuw nsw i32 %4206, %4225
  %4228 = add nuw nsw i32 %4227, %4226
  %4229 = and i32 %4228, 31
  %4230 = zext i32 %4229 to i64
  %4231 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4230
  %4232 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %313, i64 0, i64 0
  %4233 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %313, i64 0, i64 0, i32 0
  store i8* %516, i8** %4233, align 8, !tbaa !3
  %4234 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %313, i64 0, i64 0, i32 1
  store i64* null, i64** %4234, align 8, !tbaa !33
  %4235 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %313, i64 0, i64 0, i32 2
  %4236 = bitcast i32* %4235 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4236, align 8, !tbaa !11
  %4237 = bitcast i8* %4231 to i64*
  %4238 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4237, %struct.ds_base* nonnull %4232, i32 undef, i32 undef) #15
  %4239 = trunc i64 %4238 to i8
  store i8 %4239, i8* %707, align 1, !tbaa !12
  %4240 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %314, i64 0, i64 0
  %4241 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %314, i64 0, i64 0, i32 0
  store i8* %516, i8** %4241, align 8, !tbaa !3
  %4242 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %314, i64 0, i64 0, i32 1
  store i64* null, i64** %4242, align 8, !tbaa !33
  %4243 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %314, i64 0, i64 0, i32 2
  %4244 = bitcast i32* %4243 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4244, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4224, i8* nonnull %4231, %struct.ds_base* nonnull %4240, i32 1, i32 undef) #15
  %4245 = load i8, i8* %544, align 4, !tbaa !12
  %4246 = load i8, i8* %708, align 1, !tbaa !12
  %4247 = zext i8 %4245 to i32
  %4248 = zext i8 %4246 to i32
  %4249 = add nuw nsw i32 %4228, %4247
  %4250 = add nuw nsw i32 %4249, %4248
  %4251 = and i32 %4250, 31
  %4252 = zext i32 %4251 to i64
  %4253 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4252
  %4254 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %315, i64 0, i64 0
  %4255 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %315, i64 0, i64 0, i32 0
  store i8* %516, i8** %4255, align 8, !tbaa !3
  %4256 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %315, i64 0, i64 0, i32 1
  store i64* null, i64** %4256, align 8, !tbaa !33
  %4257 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %315, i64 0, i64 0, i32 2
  %4258 = bitcast i32* %4257 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4258, align 8, !tbaa !11
  %4259 = bitcast i8* %4253 to i64*
  %4260 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4259, %struct.ds_base* nonnull %4254, i32 undef, i32 undef) #15
  %4261 = trunc i64 %4260 to i8
  store i8 %4261, i8* %708, align 1, !tbaa !12
  %4262 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %316, i64 0, i64 0
  %4263 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %316, i64 0, i64 0, i32 0
  store i8* %516, i8** %4263, align 8, !tbaa !3
  %4264 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %316, i64 0, i64 0, i32 1
  store i64* null, i64** %4264, align 8, !tbaa !33
  %4265 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %316, i64 0, i64 0, i32 2
  %4266 = bitcast i32* %4265 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4266, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4246, i8* nonnull %4253, %struct.ds_base* nonnull %4262, i32 1, i32 undef) #15
  %4267 = load i8, i8* %545, align 1, !tbaa !12
  %4268 = load i8, i8* %709, align 1, !tbaa !12
  %4269 = zext i8 %4267 to i32
  %4270 = zext i8 %4268 to i32
  %4271 = add nuw nsw i32 %4250, %4269
  %4272 = add nuw nsw i32 %4271, %4270
  %4273 = and i32 %4272, 31
  %4274 = zext i32 %4273 to i64
  %4275 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4274
  %4276 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %317, i64 0, i64 0
  %4277 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %317, i64 0, i64 0, i32 0
  store i8* %516, i8** %4277, align 8, !tbaa !3
  %4278 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %317, i64 0, i64 0, i32 1
  store i64* null, i64** %4278, align 8, !tbaa !33
  %4279 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %317, i64 0, i64 0, i32 2
  %4280 = bitcast i32* %4279 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4280, align 8, !tbaa !11
  %4281 = bitcast i8* %4275 to i64*
  %4282 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4281, %struct.ds_base* nonnull %4276, i32 undef, i32 undef) #15
  %4283 = trunc i64 %4282 to i8
  store i8 %4283, i8* %709, align 1, !tbaa !12
  %4284 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %318, i64 0, i64 0
  %4285 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %318, i64 0, i64 0, i32 0
  store i8* %516, i8** %4285, align 8, !tbaa !3
  %4286 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %318, i64 0, i64 0, i32 1
  store i64* null, i64** %4286, align 8, !tbaa !33
  %4287 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %318, i64 0, i64 0, i32 2
  %4288 = bitcast i32* %4287 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4288, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4268, i8* nonnull %4275, %struct.ds_base* nonnull %4284, i32 1, i32 undef) #15
  %4289 = load i8, i8* %546, align 2, !tbaa !12
  %4290 = load i8, i8* %710, align 1, !tbaa !12
  %4291 = zext i8 %4289 to i32
  %4292 = zext i8 %4290 to i32
  %4293 = add nuw nsw i32 %4272, %4291
  %4294 = add nuw nsw i32 %4293, %4292
  %4295 = and i32 %4294, 31
  %4296 = zext i32 %4295 to i64
  %4297 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4296
  %4298 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %319, i64 0, i64 0
  %4299 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %319, i64 0, i64 0, i32 0
  store i8* %516, i8** %4299, align 8, !tbaa !3
  %4300 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %319, i64 0, i64 0, i32 1
  store i64* null, i64** %4300, align 8, !tbaa !33
  %4301 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %319, i64 0, i64 0, i32 2
  %4302 = bitcast i32* %4301 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4302, align 8, !tbaa !11
  %4303 = bitcast i8* %4297 to i64*
  %4304 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4303, %struct.ds_base* nonnull %4298, i32 undef, i32 undef) #15
  %4305 = trunc i64 %4304 to i8
  store i8 %4305, i8* %710, align 1, !tbaa !12
  %4306 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %320, i64 0, i64 0
  %4307 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %320, i64 0, i64 0, i32 0
  store i8* %516, i8** %4307, align 8, !tbaa !3
  %4308 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %320, i64 0, i64 0, i32 1
  store i64* null, i64** %4308, align 8, !tbaa !33
  %4309 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %320, i64 0, i64 0, i32 2
  %4310 = bitcast i32* %4309 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4310, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4290, i8* nonnull %4297, %struct.ds_base* nonnull %4306, i32 1, i32 undef) #15
  %4311 = load i8, i8* %547, align 1, !tbaa !12
  %4312 = load i8, i8* %711, align 1, !tbaa !12
  %4313 = zext i8 %4311 to i32
  %4314 = zext i8 %4312 to i32
  %4315 = add nuw nsw i32 %4294, %4313
  %4316 = add nuw nsw i32 %4315, %4314
  %4317 = and i32 %4316, 31
  %4318 = zext i32 %4317 to i64
  %4319 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4318
  %4320 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %321, i64 0, i64 0
  %4321 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %321, i64 0, i64 0, i32 0
  store i8* %516, i8** %4321, align 8, !tbaa !3
  %4322 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %321, i64 0, i64 0, i32 1
  store i64* null, i64** %4322, align 8, !tbaa !33
  %4323 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %321, i64 0, i64 0, i32 2
  %4324 = bitcast i32* %4323 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4324, align 8, !tbaa !11
  %4325 = bitcast i8* %4319 to i64*
  %4326 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4325, %struct.ds_base* nonnull %4320, i32 undef, i32 undef) #15
  %4327 = trunc i64 %4326 to i8
  store i8 %4327, i8* %711, align 1, !tbaa !12
  %4328 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %322, i64 0, i64 0
  %4329 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %322, i64 0, i64 0, i32 0
  store i8* %516, i8** %4329, align 8, !tbaa !3
  %4330 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %322, i64 0, i64 0, i32 1
  store i64* null, i64** %4330, align 8, !tbaa !33
  %4331 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %322, i64 0, i64 0, i32 2
  %4332 = bitcast i32* %4331 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4332, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4312, i8* nonnull %4319, %struct.ds_base* nonnull %4328, i32 1, i32 undef) #15
  %4333 = load i8, i8* %515, align 16, !tbaa !12
  %4334 = load i8, i8* %713, align 1, !tbaa !12
  %4335 = zext i8 %4333 to i32
  %4336 = zext i8 %4334 to i32
  %4337 = add nuw nsw i32 %4316, %4335
  %4338 = add nuw nsw i32 %4337, %4336
  %4339 = and i32 %4338, 31
  %4340 = zext i32 %4339 to i64
  %4341 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4340
  %4342 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %323, i64 0, i64 0
  %4343 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %323, i64 0, i64 0, i32 0
  store i8* %516, i8** %4343, align 8, !tbaa !3
  %4344 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %323, i64 0, i64 0, i32 1
  store i64* null, i64** %4344, align 8, !tbaa !33
  %4345 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %323, i64 0, i64 0, i32 2
  %4346 = bitcast i32* %4345 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4346, align 8, !tbaa !11
  %4347 = bitcast i8* %4341 to i64*
  %4348 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4347, %struct.ds_base* nonnull %4342, i32 undef, i32 undef) #15
  %4349 = trunc i64 %4348 to i8
  store i8 %4349, i8* %713, align 1, !tbaa !12
  %4350 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %324, i64 0, i64 0
  %4351 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %324, i64 0, i64 0, i32 0
  store i8* %516, i8** %4351, align 8, !tbaa !3
  %4352 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %324, i64 0, i64 0, i32 1
  store i64* null, i64** %4352, align 8, !tbaa !33
  %4353 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %324, i64 0, i64 0, i32 2
  %4354 = bitcast i32* %4353 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4354, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4334, i8* nonnull %4341, %struct.ds_base* nonnull %4350, i32 1, i32 undef) #15
  %4355 = load i8, i8* %517, align 1, !tbaa !12
  %4356 = load i8, i8* %714, align 1, !tbaa !12
  %4357 = zext i8 %4355 to i32
  %4358 = zext i8 %4356 to i32
  %4359 = add nuw nsw i32 %4338, %4357
  %4360 = add nuw nsw i32 %4359, %4358
  %4361 = and i32 %4360, 31
  %4362 = zext i32 %4361 to i64
  %4363 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4362
  %4364 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %325, i64 0, i64 0
  %4365 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %325, i64 0, i64 0, i32 0
  store i8* %516, i8** %4365, align 8, !tbaa !3
  %4366 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %325, i64 0, i64 0, i32 1
  store i64* null, i64** %4366, align 8, !tbaa !33
  %4367 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %325, i64 0, i64 0, i32 2
  %4368 = bitcast i32* %4367 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4368, align 8, !tbaa !11
  %4369 = bitcast i8* %4363 to i64*
  %4370 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4369, %struct.ds_base* nonnull %4364, i32 undef, i32 undef) #15
  %4371 = trunc i64 %4370 to i8
  store i8 %4371, i8* %714, align 1, !tbaa !12
  %4372 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %326, i64 0, i64 0
  %4373 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %326, i64 0, i64 0, i32 0
  store i8* %516, i8** %4373, align 8, !tbaa !3
  %4374 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %326, i64 0, i64 0, i32 1
  store i64* null, i64** %4374, align 8, !tbaa !33
  %4375 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %326, i64 0, i64 0, i32 2
  %4376 = bitcast i32* %4375 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4376, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4356, i8* nonnull %4363, %struct.ds_base* nonnull %4372, i32 1, i32 undef) #15
  %4377 = load i8, i8* %518, align 2, !tbaa !12
  %4378 = load i8, i8* %715, align 1, !tbaa !12
  %4379 = zext i8 %4377 to i32
  %4380 = zext i8 %4378 to i32
  %4381 = add nuw nsw i32 %4360, %4379
  %4382 = add nuw nsw i32 %4381, %4380
  %4383 = and i32 %4382, 31
  %4384 = zext i32 %4383 to i64
  %4385 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4384
  %4386 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %327, i64 0, i64 0
  %4387 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %327, i64 0, i64 0, i32 0
  store i8* %516, i8** %4387, align 8, !tbaa !3
  %4388 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %327, i64 0, i64 0, i32 1
  store i64* null, i64** %4388, align 8, !tbaa !33
  %4389 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %327, i64 0, i64 0, i32 2
  %4390 = bitcast i32* %4389 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4390, align 8, !tbaa !11
  %4391 = bitcast i8* %4385 to i64*
  %4392 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4391, %struct.ds_base* nonnull %4386, i32 undef, i32 undef) #15
  %4393 = trunc i64 %4392 to i8
  store i8 %4393, i8* %715, align 1, !tbaa !12
  %4394 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %328, i64 0, i64 0
  %4395 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %328, i64 0, i64 0, i32 0
  store i8* %516, i8** %4395, align 8, !tbaa !3
  %4396 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %328, i64 0, i64 0, i32 1
  store i64* null, i64** %4396, align 8, !tbaa !33
  %4397 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %328, i64 0, i64 0, i32 2
  %4398 = bitcast i32* %4397 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4398, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4378, i8* nonnull %4385, %struct.ds_base* nonnull %4394, i32 1, i32 undef) #15
  %4399 = load i8, i8* %519, align 1, !tbaa !12
  %4400 = load i8, i8* %716, align 1, !tbaa !12
  %4401 = zext i8 %4399 to i32
  %4402 = zext i8 %4400 to i32
  %4403 = add nuw nsw i32 %4382, %4401
  %4404 = add nuw nsw i32 %4403, %4402
  %4405 = and i32 %4404, 31
  %4406 = zext i32 %4405 to i64
  %4407 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4406
  %4408 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %329, i64 0, i64 0
  %4409 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %329, i64 0, i64 0, i32 0
  store i8* %516, i8** %4409, align 8, !tbaa !3
  %4410 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %329, i64 0, i64 0, i32 1
  store i64* null, i64** %4410, align 8, !tbaa !33
  %4411 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %329, i64 0, i64 0, i32 2
  %4412 = bitcast i32* %4411 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4412, align 8, !tbaa !11
  %4413 = bitcast i8* %4407 to i64*
  %4414 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4413, %struct.ds_base* nonnull %4408, i32 undef, i32 undef) #15
  %4415 = trunc i64 %4414 to i8
  store i8 %4415, i8* %716, align 1, !tbaa !12
  %4416 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %330, i64 0, i64 0
  %4417 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %330, i64 0, i64 0, i32 0
  store i8* %516, i8** %4417, align 8, !tbaa !3
  %4418 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %330, i64 0, i64 0, i32 1
  store i64* null, i64** %4418, align 8, !tbaa !33
  %4419 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %330, i64 0, i64 0, i32 2
  %4420 = bitcast i32* %4419 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4420, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4400, i8* nonnull %4407, %struct.ds_base* nonnull %4416, i32 1, i32 undef) #15
  %4421 = load i8, i8* %520, align 4, !tbaa !12
  %4422 = load i8, i8* %717, align 1, !tbaa !12
  %4423 = zext i8 %4421 to i32
  %4424 = zext i8 %4422 to i32
  %4425 = add nuw nsw i32 %4404, %4423
  %4426 = add nuw nsw i32 %4425, %4424
  %4427 = and i32 %4426, 31
  %4428 = zext i32 %4427 to i64
  %4429 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4428
  %4430 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %331, i64 0, i64 0
  %4431 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %331, i64 0, i64 0, i32 0
  store i8* %516, i8** %4431, align 8, !tbaa !3
  %4432 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %331, i64 0, i64 0, i32 1
  store i64* null, i64** %4432, align 8, !tbaa !33
  %4433 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %331, i64 0, i64 0, i32 2
  %4434 = bitcast i32* %4433 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4434, align 8, !tbaa !11
  %4435 = bitcast i8* %4429 to i64*
  %4436 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4435, %struct.ds_base* nonnull %4430, i32 undef, i32 undef) #15
  %4437 = trunc i64 %4436 to i8
  store i8 %4437, i8* %717, align 1, !tbaa !12
  %4438 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %332, i64 0, i64 0
  %4439 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %332, i64 0, i64 0, i32 0
  store i8* %516, i8** %4439, align 8, !tbaa !3
  %4440 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %332, i64 0, i64 0, i32 1
  store i64* null, i64** %4440, align 8, !tbaa !33
  %4441 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %332, i64 0, i64 0, i32 2
  %4442 = bitcast i32* %4441 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4442, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4422, i8* nonnull %4429, %struct.ds_base* nonnull %4438, i32 1, i32 undef) #15
  %4443 = load i8, i8* %521, align 1, !tbaa !12
  %4444 = load i8, i8* %718, align 1, !tbaa !12
  %4445 = zext i8 %4443 to i32
  %4446 = zext i8 %4444 to i32
  %4447 = add nuw nsw i32 %4426, %4445
  %4448 = add nuw nsw i32 %4447, %4446
  %4449 = and i32 %4448, 31
  %4450 = zext i32 %4449 to i64
  %4451 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4450
  %4452 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %333, i64 0, i64 0
  %4453 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %333, i64 0, i64 0, i32 0
  store i8* %516, i8** %4453, align 8, !tbaa !3
  %4454 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %333, i64 0, i64 0, i32 1
  store i64* null, i64** %4454, align 8, !tbaa !33
  %4455 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %333, i64 0, i64 0, i32 2
  %4456 = bitcast i32* %4455 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4456, align 8, !tbaa !11
  %4457 = bitcast i8* %4451 to i64*
  %4458 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4457, %struct.ds_base* nonnull %4452, i32 undef, i32 undef) #15
  %4459 = trunc i64 %4458 to i8
  store i8 %4459, i8* %718, align 1, !tbaa !12
  %4460 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %334, i64 0, i64 0
  %4461 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %334, i64 0, i64 0, i32 0
  store i8* %516, i8** %4461, align 8, !tbaa !3
  %4462 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %334, i64 0, i64 0, i32 1
  store i64* null, i64** %4462, align 8, !tbaa !33
  %4463 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %334, i64 0, i64 0, i32 2
  %4464 = bitcast i32* %4463 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4464, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4444, i8* nonnull %4451, %struct.ds_base* nonnull %4460, i32 1, i32 undef) #15
  %4465 = load i8, i8* %522, align 2, !tbaa !12
  %4466 = load i8, i8* %719, align 1, !tbaa !12
  %4467 = zext i8 %4465 to i32
  %4468 = zext i8 %4466 to i32
  %4469 = add nuw nsw i32 %4448, %4467
  %4470 = add nuw nsw i32 %4469, %4468
  %4471 = and i32 %4470, 31
  %4472 = zext i32 %4471 to i64
  %4473 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4472
  %4474 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %335, i64 0, i64 0
  %4475 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %335, i64 0, i64 0, i32 0
  store i8* %516, i8** %4475, align 8, !tbaa !3
  %4476 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %335, i64 0, i64 0, i32 1
  store i64* null, i64** %4476, align 8, !tbaa !33
  %4477 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %335, i64 0, i64 0, i32 2
  %4478 = bitcast i32* %4477 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4478, align 8, !tbaa !11
  %4479 = bitcast i8* %4473 to i64*
  %4480 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4479, %struct.ds_base* nonnull %4474, i32 undef, i32 undef) #15
  %4481 = trunc i64 %4480 to i8
  store i8 %4481, i8* %719, align 1, !tbaa !12
  %4482 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %336, i64 0, i64 0
  %4483 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %336, i64 0, i64 0, i32 0
  store i8* %516, i8** %4483, align 8, !tbaa !3
  %4484 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %336, i64 0, i64 0, i32 1
  store i64* null, i64** %4484, align 8, !tbaa !33
  %4485 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %336, i64 0, i64 0, i32 2
  %4486 = bitcast i32* %4485 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4486, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4466, i8* nonnull %4473, %struct.ds_base* nonnull %4482, i32 1, i32 undef) #15
  %4487 = load i8, i8* %523, align 1, !tbaa !12
  %4488 = load i8, i8* %720, align 1, !tbaa !12
  %4489 = zext i8 %4487 to i32
  %4490 = zext i8 %4488 to i32
  %4491 = add nuw nsw i32 %4470, %4489
  %4492 = add nuw nsw i32 %4491, %4490
  %4493 = and i32 %4492, 31
  %4494 = zext i32 %4493 to i64
  %4495 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4494
  %4496 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %337, i64 0, i64 0
  %4497 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %337, i64 0, i64 0, i32 0
  store i8* %516, i8** %4497, align 8, !tbaa !3
  %4498 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %337, i64 0, i64 0, i32 1
  store i64* null, i64** %4498, align 8, !tbaa !33
  %4499 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %337, i64 0, i64 0, i32 2
  %4500 = bitcast i32* %4499 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4500, align 8, !tbaa !11
  %4501 = bitcast i8* %4495 to i64*
  %4502 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4501, %struct.ds_base* nonnull %4496, i32 undef, i32 undef) #15
  %4503 = trunc i64 %4502 to i8
  store i8 %4503, i8* %720, align 1, !tbaa !12
  %4504 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %338, i64 0, i64 0
  %4505 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %338, i64 0, i64 0, i32 0
  store i8* %516, i8** %4505, align 8, !tbaa !3
  %4506 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %338, i64 0, i64 0, i32 1
  store i64* null, i64** %4506, align 8, !tbaa !33
  %4507 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %338, i64 0, i64 0, i32 2
  %4508 = bitcast i32* %4507 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4508, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4488, i8* nonnull %4495, %struct.ds_base* nonnull %4504, i32 1, i32 undef) #15
  %4509 = load i8, i8* %524, align 8, !tbaa !12
  %4510 = load i8, i8* %721, align 1, !tbaa !12
  %4511 = zext i8 %4509 to i32
  %4512 = zext i8 %4510 to i32
  %4513 = add nuw nsw i32 %4492, %4511
  %4514 = add nuw nsw i32 %4513, %4512
  %4515 = and i32 %4514, 31
  %4516 = zext i32 %4515 to i64
  %4517 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4516
  %4518 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %339, i64 0, i64 0
  %4519 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %339, i64 0, i64 0, i32 0
  store i8* %516, i8** %4519, align 8, !tbaa !3
  %4520 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %339, i64 0, i64 0, i32 1
  store i64* null, i64** %4520, align 8, !tbaa !33
  %4521 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %339, i64 0, i64 0, i32 2
  %4522 = bitcast i32* %4521 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4522, align 8, !tbaa !11
  %4523 = bitcast i8* %4517 to i64*
  %4524 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4523, %struct.ds_base* nonnull %4518, i32 undef, i32 undef) #15
  %4525 = trunc i64 %4524 to i8
  store i8 %4525, i8* %721, align 1, !tbaa !12
  %4526 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %340, i64 0, i64 0
  %4527 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %340, i64 0, i64 0, i32 0
  store i8* %516, i8** %4527, align 8, !tbaa !3
  %4528 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %340, i64 0, i64 0, i32 1
  store i64* null, i64** %4528, align 8, !tbaa !33
  %4529 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %340, i64 0, i64 0, i32 2
  %4530 = bitcast i32* %4529 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4530, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4510, i8* nonnull %4517, %struct.ds_base* nonnull %4526, i32 1, i32 undef) #15
  %4531 = load i8, i8* %525, align 1, !tbaa !12
  %4532 = load i8, i8* %722, align 1, !tbaa !12
  %4533 = zext i8 %4531 to i32
  %4534 = zext i8 %4532 to i32
  %4535 = add nuw nsw i32 %4514, %4533
  %4536 = add nuw nsw i32 %4535, %4534
  %4537 = and i32 %4536, 31
  %4538 = zext i32 %4537 to i64
  %4539 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4538
  %4540 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %341, i64 0, i64 0
  %4541 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %341, i64 0, i64 0, i32 0
  store i8* %516, i8** %4541, align 8, !tbaa !3
  %4542 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %341, i64 0, i64 0, i32 1
  store i64* null, i64** %4542, align 8, !tbaa !33
  %4543 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %341, i64 0, i64 0, i32 2
  %4544 = bitcast i32* %4543 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4544, align 8, !tbaa !11
  %4545 = bitcast i8* %4539 to i64*
  %4546 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4545, %struct.ds_base* nonnull %4540, i32 undef, i32 undef) #15
  %4547 = trunc i64 %4546 to i8
  store i8 %4547, i8* %722, align 1, !tbaa !12
  %4548 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %342, i64 0, i64 0
  %4549 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %342, i64 0, i64 0, i32 0
  store i8* %516, i8** %4549, align 8, !tbaa !3
  %4550 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %342, i64 0, i64 0, i32 1
  store i64* null, i64** %4550, align 8, !tbaa !33
  %4551 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %342, i64 0, i64 0, i32 2
  %4552 = bitcast i32* %4551 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4552, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4532, i8* nonnull %4539, %struct.ds_base* nonnull %4548, i32 1, i32 undef) #15
  %4553 = load i8, i8* %526, align 2, !tbaa !12
  %4554 = load i8, i8* %723, align 1, !tbaa !12
  %4555 = zext i8 %4553 to i32
  %4556 = zext i8 %4554 to i32
  %4557 = add nuw nsw i32 %4536, %4555
  %4558 = add nuw nsw i32 %4557, %4556
  %4559 = and i32 %4558, 31
  %4560 = zext i32 %4559 to i64
  %4561 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4560
  %4562 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %343, i64 0, i64 0
  %4563 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %343, i64 0, i64 0, i32 0
  store i8* %516, i8** %4563, align 8, !tbaa !3
  %4564 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %343, i64 0, i64 0, i32 1
  store i64* null, i64** %4564, align 8, !tbaa !33
  %4565 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %343, i64 0, i64 0, i32 2
  %4566 = bitcast i32* %4565 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4566, align 8, !tbaa !11
  %4567 = bitcast i8* %4561 to i64*
  %4568 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4567, %struct.ds_base* nonnull %4562, i32 undef, i32 undef) #15
  %4569 = trunc i64 %4568 to i8
  store i8 %4569, i8* %723, align 1, !tbaa !12
  %4570 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %344, i64 0, i64 0
  %4571 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %344, i64 0, i64 0, i32 0
  store i8* %516, i8** %4571, align 8, !tbaa !3
  %4572 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %344, i64 0, i64 0, i32 1
  store i64* null, i64** %4572, align 8, !tbaa !33
  %4573 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %344, i64 0, i64 0, i32 2
  %4574 = bitcast i32* %4573 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4574, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4554, i8* nonnull %4561, %struct.ds_base* nonnull %4570, i32 1, i32 undef) #15
  %4575 = load i8, i8* %527, align 1, !tbaa !12
  %4576 = load i8, i8* %724, align 1, !tbaa !12
  %4577 = zext i8 %4575 to i32
  %4578 = zext i8 %4576 to i32
  %4579 = add nuw nsw i32 %4558, %4577
  %4580 = add nuw nsw i32 %4579, %4578
  %4581 = and i32 %4580, 31
  %4582 = zext i32 %4581 to i64
  %4583 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4582
  %4584 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %345, i64 0, i64 0
  %4585 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %345, i64 0, i64 0, i32 0
  store i8* %516, i8** %4585, align 8, !tbaa !3
  %4586 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %345, i64 0, i64 0, i32 1
  store i64* null, i64** %4586, align 8, !tbaa !33
  %4587 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %345, i64 0, i64 0, i32 2
  %4588 = bitcast i32* %4587 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4588, align 8, !tbaa !11
  %4589 = bitcast i8* %4583 to i64*
  %4590 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4589, %struct.ds_base* nonnull %4584, i32 undef, i32 undef) #15
  %4591 = trunc i64 %4590 to i8
  store i8 %4591, i8* %724, align 1, !tbaa !12
  %4592 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %346, i64 0, i64 0
  %4593 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %346, i64 0, i64 0, i32 0
  store i8* %516, i8** %4593, align 8, !tbaa !3
  %4594 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %346, i64 0, i64 0, i32 1
  store i64* null, i64** %4594, align 8, !tbaa !33
  %4595 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %346, i64 0, i64 0, i32 2
  %4596 = bitcast i32* %4595 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4596, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4576, i8* nonnull %4583, %struct.ds_base* nonnull %4592, i32 1, i32 undef) #15
  %4597 = load i8, i8* %528, align 4, !tbaa !12
  %4598 = load i8, i8* %725, align 1, !tbaa !12
  %4599 = zext i8 %4597 to i32
  %4600 = zext i8 %4598 to i32
  %4601 = add nuw nsw i32 %4580, %4599
  %4602 = add nuw nsw i32 %4601, %4600
  %4603 = and i32 %4602, 31
  %4604 = zext i32 %4603 to i64
  %4605 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4604
  %4606 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %347, i64 0, i64 0
  %4607 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %347, i64 0, i64 0, i32 0
  store i8* %516, i8** %4607, align 8, !tbaa !3
  %4608 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %347, i64 0, i64 0, i32 1
  store i64* null, i64** %4608, align 8, !tbaa !33
  %4609 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %347, i64 0, i64 0, i32 2
  %4610 = bitcast i32* %4609 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4610, align 8, !tbaa !11
  %4611 = bitcast i8* %4605 to i64*
  %4612 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4611, %struct.ds_base* nonnull %4606, i32 undef, i32 undef) #15
  %4613 = trunc i64 %4612 to i8
  store i8 %4613, i8* %725, align 1, !tbaa !12
  %4614 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %348, i64 0, i64 0
  %4615 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %348, i64 0, i64 0, i32 0
  store i8* %516, i8** %4615, align 8, !tbaa !3
  %4616 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %348, i64 0, i64 0, i32 1
  store i64* null, i64** %4616, align 8, !tbaa !33
  %4617 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %348, i64 0, i64 0, i32 2
  %4618 = bitcast i32* %4617 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4618, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4598, i8* nonnull %4605, %struct.ds_base* nonnull %4614, i32 1, i32 undef) #15
  %4619 = load i8, i8* %529, align 1, !tbaa !12
  %4620 = load i8, i8* %726, align 1, !tbaa !12
  %4621 = zext i8 %4619 to i32
  %4622 = zext i8 %4620 to i32
  %4623 = add nuw nsw i32 %4602, %4621
  %4624 = add nuw nsw i32 %4623, %4622
  %4625 = and i32 %4624, 31
  %4626 = zext i32 %4625 to i64
  %4627 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4626
  %4628 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %349, i64 0, i64 0
  %4629 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %349, i64 0, i64 0, i32 0
  store i8* %516, i8** %4629, align 8, !tbaa !3
  %4630 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %349, i64 0, i64 0, i32 1
  store i64* null, i64** %4630, align 8, !tbaa !33
  %4631 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %349, i64 0, i64 0, i32 2
  %4632 = bitcast i32* %4631 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4632, align 8, !tbaa !11
  %4633 = bitcast i8* %4627 to i64*
  %4634 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4633, %struct.ds_base* nonnull %4628, i32 undef, i32 undef) #15
  %4635 = trunc i64 %4634 to i8
  store i8 %4635, i8* %726, align 1, !tbaa !12
  %4636 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %350, i64 0, i64 0
  %4637 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %350, i64 0, i64 0, i32 0
  store i8* %516, i8** %4637, align 8, !tbaa !3
  %4638 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %350, i64 0, i64 0, i32 1
  store i64* null, i64** %4638, align 8, !tbaa !33
  %4639 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %350, i64 0, i64 0, i32 2
  %4640 = bitcast i32* %4639 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4640, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4620, i8* nonnull %4627, %struct.ds_base* nonnull %4636, i32 1, i32 undef) #15
  %4641 = load i8, i8* %530, align 2, !tbaa !12
  %4642 = load i8, i8* %727, align 1, !tbaa !12
  %4643 = zext i8 %4641 to i32
  %4644 = zext i8 %4642 to i32
  %4645 = add nuw nsw i32 %4624, %4643
  %4646 = add nuw nsw i32 %4645, %4644
  %4647 = and i32 %4646, 31
  %4648 = zext i32 %4647 to i64
  %4649 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4648
  %4650 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %351, i64 0, i64 0
  %4651 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %351, i64 0, i64 0, i32 0
  store i8* %516, i8** %4651, align 8, !tbaa !3
  %4652 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %351, i64 0, i64 0, i32 1
  store i64* null, i64** %4652, align 8, !tbaa !33
  %4653 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %351, i64 0, i64 0, i32 2
  %4654 = bitcast i32* %4653 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4654, align 8, !tbaa !11
  %4655 = bitcast i8* %4649 to i64*
  %4656 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4655, %struct.ds_base* nonnull %4650, i32 undef, i32 undef) #15
  %4657 = trunc i64 %4656 to i8
  store i8 %4657, i8* %727, align 1, !tbaa !12
  %4658 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %352, i64 0, i64 0
  %4659 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %352, i64 0, i64 0, i32 0
  store i8* %516, i8** %4659, align 8, !tbaa !3
  %4660 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %352, i64 0, i64 0, i32 1
  store i64* null, i64** %4660, align 8, !tbaa !33
  %4661 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %352, i64 0, i64 0, i32 2
  %4662 = bitcast i32* %4661 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4662, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4642, i8* nonnull %4649, %struct.ds_base* nonnull %4658, i32 1, i32 undef) #15
  %4663 = load i8, i8* %531, align 1, !tbaa !12
  %4664 = load i8, i8* %728, align 1, !tbaa !12
  %4665 = zext i8 %4663 to i32
  %4666 = zext i8 %4664 to i32
  %4667 = add nuw nsw i32 %4646, %4665
  %4668 = add nuw nsw i32 %4667, %4666
  %4669 = and i32 %4668, 31
  %4670 = zext i32 %4669 to i64
  %4671 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4670
  %4672 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %353, i64 0, i64 0
  %4673 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %353, i64 0, i64 0, i32 0
  store i8* %516, i8** %4673, align 8, !tbaa !3
  %4674 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %353, i64 0, i64 0, i32 1
  store i64* null, i64** %4674, align 8, !tbaa !33
  %4675 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %353, i64 0, i64 0, i32 2
  %4676 = bitcast i32* %4675 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4676, align 8, !tbaa !11
  %4677 = bitcast i8* %4671 to i64*
  %4678 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4677, %struct.ds_base* nonnull %4672, i32 undef, i32 undef) #15
  %4679 = trunc i64 %4678 to i8
  store i8 %4679, i8* %728, align 1, !tbaa !12
  %4680 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %354, i64 0, i64 0
  %4681 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %354, i64 0, i64 0, i32 0
  store i8* %516, i8** %4681, align 8, !tbaa !3
  %4682 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %354, i64 0, i64 0, i32 1
  store i64* null, i64** %4682, align 8, !tbaa !33
  %4683 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %354, i64 0, i64 0, i32 2
  %4684 = bitcast i32* %4683 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4684, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4664, i8* nonnull %4671, %struct.ds_base* nonnull %4680, i32 1, i32 undef) #15
  %4685 = load i8, i8* %532, align 16, !tbaa !12
  %4686 = load i8, i8* %729, align 1, !tbaa !12
  %4687 = zext i8 %4685 to i32
  %4688 = zext i8 %4686 to i32
  %4689 = add nuw nsw i32 %4668, %4687
  %4690 = add nuw nsw i32 %4689, %4688
  %4691 = and i32 %4690, 31
  %4692 = zext i32 %4691 to i64
  %4693 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4692
  %4694 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %355, i64 0, i64 0
  %4695 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %355, i64 0, i64 0, i32 0
  store i8* %516, i8** %4695, align 8, !tbaa !3
  %4696 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %355, i64 0, i64 0, i32 1
  store i64* null, i64** %4696, align 8, !tbaa !33
  %4697 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %355, i64 0, i64 0, i32 2
  %4698 = bitcast i32* %4697 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4698, align 8, !tbaa !11
  %4699 = bitcast i8* %4693 to i64*
  %4700 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4699, %struct.ds_base* nonnull %4694, i32 undef, i32 undef) #15
  %4701 = trunc i64 %4700 to i8
  store i8 %4701, i8* %729, align 1, !tbaa !12
  %4702 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %356, i64 0, i64 0
  %4703 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %356, i64 0, i64 0, i32 0
  store i8* %516, i8** %4703, align 8, !tbaa !3
  %4704 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %356, i64 0, i64 0, i32 1
  store i64* null, i64** %4704, align 8, !tbaa !33
  %4705 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %356, i64 0, i64 0, i32 2
  %4706 = bitcast i32* %4705 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4706, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4686, i8* nonnull %4693, %struct.ds_base* nonnull %4702, i32 1, i32 undef) #15
  %4707 = load i8, i8* %533, align 1, !tbaa !12
  %4708 = load i8, i8* %730, align 1, !tbaa !12
  %4709 = zext i8 %4707 to i32
  %4710 = zext i8 %4708 to i32
  %4711 = add nuw nsw i32 %4690, %4709
  %4712 = add nuw nsw i32 %4711, %4710
  %4713 = and i32 %4712, 31
  %4714 = zext i32 %4713 to i64
  %4715 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4714
  %4716 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %357, i64 0, i64 0
  %4717 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %357, i64 0, i64 0, i32 0
  store i8* %516, i8** %4717, align 8, !tbaa !3
  %4718 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %357, i64 0, i64 0, i32 1
  store i64* null, i64** %4718, align 8, !tbaa !33
  %4719 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %357, i64 0, i64 0, i32 2
  %4720 = bitcast i32* %4719 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4720, align 8, !tbaa !11
  %4721 = bitcast i8* %4715 to i64*
  %4722 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4721, %struct.ds_base* nonnull %4716, i32 undef, i32 undef) #15
  %4723 = trunc i64 %4722 to i8
  store i8 %4723, i8* %730, align 1, !tbaa !12
  %4724 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %358, i64 0, i64 0
  %4725 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %358, i64 0, i64 0, i32 0
  store i8* %516, i8** %4725, align 8, !tbaa !3
  %4726 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %358, i64 0, i64 0, i32 1
  store i64* null, i64** %4726, align 8, !tbaa !33
  %4727 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %358, i64 0, i64 0, i32 2
  %4728 = bitcast i32* %4727 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4728, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4708, i8* nonnull %4715, %struct.ds_base* nonnull %4724, i32 1, i32 undef) #15
  %4729 = load i8, i8* %534, align 2, !tbaa !12
  %4730 = load i8, i8* %731, align 1, !tbaa !12
  %4731 = zext i8 %4729 to i32
  %4732 = zext i8 %4730 to i32
  %4733 = add nuw nsw i32 %4712, %4731
  %4734 = add nuw nsw i32 %4733, %4732
  %4735 = and i32 %4734, 31
  %4736 = zext i32 %4735 to i64
  %4737 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4736
  %4738 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %359, i64 0, i64 0
  %4739 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %359, i64 0, i64 0, i32 0
  store i8* %516, i8** %4739, align 8, !tbaa !3
  %4740 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %359, i64 0, i64 0, i32 1
  store i64* null, i64** %4740, align 8, !tbaa !33
  %4741 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %359, i64 0, i64 0, i32 2
  %4742 = bitcast i32* %4741 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4742, align 8, !tbaa !11
  %4743 = bitcast i8* %4737 to i64*
  %4744 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4743, %struct.ds_base* nonnull %4738, i32 undef, i32 undef) #15
  %4745 = trunc i64 %4744 to i8
  store i8 %4745, i8* %731, align 1, !tbaa !12
  %4746 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %360, i64 0, i64 0
  %4747 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %360, i64 0, i64 0, i32 0
  store i8* %516, i8** %4747, align 8, !tbaa !3
  %4748 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %360, i64 0, i64 0, i32 1
  store i64* null, i64** %4748, align 8, !tbaa !33
  %4749 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %360, i64 0, i64 0, i32 2
  %4750 = bitcast i32* %4749 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4750, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4730, i8* nonnull %4737, %struct.ds_base* nonnull %4746, i32 1, i32 undef) #15
  %4751 = load i8, i8* %535, align 1, !tbaa !12
  %4752 = load i8, i8* %732, align 1, !tbaa !12
  %4753 = zext i8 %4751 to i32
  %4754 = zext i8 %4752 to i32
  %4755 = add nuw nsw i32 %4734, %4753
  %4756 = add nuw nsw i32 %4755, %4754
  %4757 = and i32 %4756, 31
  %4758 = zext i32 %4757 to i64
  %4759 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4758
  %4760 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %361, i64 0, i64 0
  %4761 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %361, i64 0, i64 0, i32 0
  store i8* %516, i8** %4761, align 8, !tbaa !3
  %4762 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %361, i64 0, i64 0, i32 1
  store i64* null, i64** %4762, align 8, !tbaa !33
  %4763 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %361, i64 0, i64 0, i32 2
  %4764 = bitcast i32* %4763 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4764, align 8, !tbaa !11
  %4765 = bitcast i8* %4759 to i64*
  %4766 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4765, %struct.ds_base* nonnull %4760, i32 undef, i32 undef) #15
  %4767 = trunc i64 %4766 to i8
  store i8 %4767, i8* %732, align 1, !tbaa !12
  %4768 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %362, i64 0, i64 0
  %4769 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %362, i64 0, i64 0, i32 0
  store i8* %516, i8** %4769, align 8, !tbaa !3
  %4770 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %362, i64 0, i64 0, i32 1
  store i64* null, i64** %4770, align 8, !tbaa !33
  %4771 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %362, i64 0, i64 0, i32 2
  %4772 = bitcast i32* %4771 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4772, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4752, i8* nonnull %4759, %struct.ds_base* nonnull %4768, i32 1, i32 undef) #15
  %4773 = load i8, i8* %536, align 4, !tbaa !12
  %4774 = load i8, i8* %733, align 1, !tbaa !12
  %4775 = zext i8 %4773 to i32
  %4776 = zext i8 %4774 to i32
  %4777 = add nuw nsw i32 %4756, %4775
  %4778 = add nuw nsw i32 %4777, %4776
  %4779 = and i32 %4778, 31
  %4780 = zext i32 %4779 to i64
  %4781 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4780
  %4782 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %363, i64 0, i64 0
  %4783 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %363, i64 0, i64 0, i32 0
  store i8* %516, i8** %4783, align 8, !tbaa !3
  %4784 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %363, i64 0, i64 0, i32 1
  store i64* null, i64** %4784, align 8, !tbaa !33
  %4785 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %363, i64 0, i64 0, i32 2
  %4786 = bitcast i32* %4785 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4786, align 8, !tbaa !11
  %4787 = bitcast i8* %4781 to i64*
  %4788 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4787, %struct.ds_base* nonnull %4782, i32 undef, i32 undef) #15
  %4789 = trunc i64 %4788 to i8
  store i8 %4789, i8* %733, align 1, !tbaa !12
  %4790 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %364, i64 0, i64 0
  %4791 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %364, i64 0, i64 0, i32 0
  store i8* %516, i8** %4791, align 8, !tbaa !3
  %4792 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %364, i64 0, i64 0, i32 1
  store i64* null, i64** %4792, align 8, !tbaa !33
  %4793 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %364, i64 0, i64 0, i32 2
  %4794 = bitcast i32* %4793 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4794, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4774, i8* nonnull %4781, %struct.ds_base* nonnull %4790, i32 1, i32 undef) #15
  %4795 = load i8, i8* %537, align 1, !tbaa !12
  %4796 = load i8, i8* %734, align 1, !tbaa !12
  %4797 = zext i8 %4795 to i32
  %4798 = zext i8 %4796 to i32
  %4799 = add nuw nsw i32 %4778, %4797
  %4800 = add nuw nsw i32 %4799, %4798
  %4801 = and i32 %4800, 31
  %4802 = zext i32 %4801 to i64
  %4803 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4802
  %4804 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %365, i64 0, i64 0
  %4805 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %365, i64 0, i64 0, i32 0
  store i8* %516, i8** %4805, align 8, !tbaa !3
  %4806 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %365, i64 0, i64 0, i32 1
  store i64* null, i64** %4806, align 8, !tbaa !33
  %4807 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %365, i64 0, i64 0, i32 2
  %4808 = bitcast i32* %4807 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4808, align 8, !tbaa !11
  %4809 = bitcast i8* %4803 to i64*
  %4810 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4809, %struct.ds_base* nonnull %4804, i32 undef, i32 undef) #15
  %4811 = trunc i64 %4810 to i8
  store i8 %4811, i8* %734, align 1, !tbaa !12
  %4812 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %366, i64 0, i64 0
  %4813 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %366, i64 0, i64 0, i32 0
  store i8* %516, i8** %4813, align 8, !tbaa !3
  %4814 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %366, i64 0, i64 0, i32 1
  store i64* null, i64** %4814, align 8, !tbaa !33
  %4815 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %366, i64 0, i64 0, i32 2
  %4816 = bitcast i32* %4815 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4816, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4796, i8* nonnull %4803, %struct.ds_base* nonnull %4812, i32 1, i32 undef) #15
  %4817 = load i8, i8* %538, align 2, !tbaa !12
  %4818 = load i8, i8* %735, align 1, !tbaa !12
  %4819 = zext i8 %4817 to i32
  %4820 = zext i8 %4818 to i32
  %4821 = add nuw nsw i32 %4800, %4819
  %4822 = add nuw nsw i32 %4821, %4820
  %4823 = and i32 %4822, 31
  %4824 = zext i32 %4823 to i64
  %4825 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4824
  %4826 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %367, i64 0, i64 0
  %4827 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %367, i64 0, i64 0, i32 0
  store i8* %516, i8** %4827, align 8, !tbaa !3
  %4828 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %367, i64 0, i64 0, i32 1
  store i64* null, i64** %4828, align 8, !tbaa !33
  %4829 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %367, i64 0, i64 0, i32 2
  %4830 = bitcast i32* %4829 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4830, align 8, !tbaa !11
  %4831 = bitcast i8* %4825 to i64*
  %4832 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4831, %struct.ds_base* nonnull %4826, i32 undef, i32 undef) #15
  %4833 = trunc i64 %4832 to i8
  store i8 %4833, i8* %735, align 1, !tbaa !12
  %4834 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %368, i64 0, i64 0
  %4835 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %368, i64 0, i64 0, i32 0
  store i8* %516, i8** %4835, align 8, !tbaa !3
  %4836 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %368, i64 0, i64 0, i32 1
  store i64* null, i64** %4836, align 8, !tbaa !33
  %4837 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %368, i64 0, i64 0, i32 2
  %4838 = bitcast i32* %4837 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4838, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4818, i8* nonnull %4825, %struct.ds_base* nonnull %4834, i32 1, i32 undef) #15
  %4839 = load i8, i8* %539, align 1, !tbaa !12
  %4840 = load i8, i8* %736, align 1, !tbaa !12
  %4841 = zext i8 %4839 to i32
  %4842 = zext i8 %4840 to i32
  %4843 = add nuw nsw i32 %4822, %4841
  %4844 = add nuw nsw i32 %4843, %4842
  %4845 = and i32 %4844, 31
  %4846 = zext i32 %4845 to i64
  %4847 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4846
  %4848 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %369, i64 0, i64 0
  %4849 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %369, i64 0, i64 0, i32 0
  store i8* %516, i8** %4849, align 8, !tbaa !3
  %4850 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %369, i64 0, i64 0, i32 1
  store i64* null, i64** %4850, align 8, !tbaa !33
  %4851 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %369, i64 0, i64 0, i32 2
  %4852 = bitcast i32* %4851 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4852, align 8, !tbaa !11
  %4853 = bitcast i8* %4847 to i64*
  %4854 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4853, %struct.ds_base* nonnull %4848, i32 undef, i32 undef) #15
  %4855 = trunc i64 %4854 to i8
  store i8 %4855, i8* %736, align 1, !tbaa !12
  %4856 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %370, i64 0, i64 0
  %4857 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %370, i64 0, i64 0, i32 0
  store i8* %516, i8** %4857, align 8, !tbaa !3
  %4858 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %370, i64 0, i64 0, i32 1
  store i64* null, i64** %4858, align 8, !tbaa !33
  %4859 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %370, i64 0, i64 0, i32 2
  %4860 = bitcast i32* %4859 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4860, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4840, i8* nonnull %4847, %struct.ds_base* nonnull %4856, i32 1, i32 undef) #15
  %4861 = load i8, i8* %540, align 8, !tbaa !12
  %4862 = load i8, i8* %737, align 1, !tbaa !12
  %4863 = zext i8 %4861 to i32
  %4864 = zext i8 %4862 to i32
  %4865 = add nuw nsw i32 %4844, %4863
  %4866 = add nuw nsw i32 %4865, %4864
  %4867 = and i32 %4866, 31
  %4868 = zext i32 %4867 to i64
  %4869 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4868
  %4870 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %371, i64 0, i64 0
  %4871 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %371, i64 0, i64 0, i32 0
  store i8* %516, i8** %4871, align 8, !tbaa !3
  %4872 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %371, i64 0, i64 0, i32 1
  store i64* null, i64** %4872, align 8, !tbaa !33
  %4873 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %371, i64 0, i64 0, i32 2
  %4874 = bitcast i32* %4873 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4874, align 8, !tbaa !11
  %4875 = bitcast i8* %4869 to i64*
  %4876 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4875, %struct.ds_base* nonnull %4870, i32 undef, i32 undef) #15
  %4877 = trunc i64 %4876 to i8
  store i8 %4877, i8* %737, align 1, !tbaa !12
  %4878 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %372, i64 0, i64 0
  %4879 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %372, i64 0, i64 0, i32 0
  store i8* %516, i8** %4879, align 8, !tbaa !3
  %4880 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %372, i64 0, i64 0, i32 1
  store i64* null, i64** %4880, align 8, !tbaa !33
  %4881 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %372, i64 0, i64 0, i32 2
  %4882 = bitcast i32* %4881 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4882, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4862, i8* nonnull %4869, %struct.ds_base* nonnull %4878, i32 1, i32 undef) #15
  %4883 = load i8, i8* %541, align 1, !tbaa !12
  %4884 = load i8, i8* %738, align 1, !tbaa !12
  %4885 = zext i8 %4883 to i32
  %4886 = zext i8 %4884 to i32
  %4887 = add nuw nsw i32 %4866, %4885
  %4888 = add nuw nsw i32 %4887, %4886
  %4889 = and i32 %4888, 31
  %4890 = zext i32 %4889 to i64
  %4891 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4890
  %4892 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %373, i64 0, i64 0
  %4893 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %373, i64 0, i64 0, i32 0
  store i8* %516, i8** %4893, align 8, !tbaa !3
  %4894 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %373, i64 0, i64 0, i32 1
  store i64* null, i64** %4894, align 8, !tbaa !33
  %4895 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %373, i64 0, i64 0, i32 2
  %4896 = bitcast i32* %4895 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4896, align 8, !tbaa !11
  %4897 = bitcast i8* %4891 to i64*
  %4898 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4897, %struct.ds_base* nonnull %4892, i32 undef, i32 undef) #15
  %4899 = trunc i64 %4898 to i8
  store i8 %4899, i8* %738, align 1, !tbaa !12
  %4900 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %374, i64 0, i64 0
  %4901 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %374, i64 0, i64 0, i32 0
  store i8* %516, i8** %4901, align 8, !tbaa !3
  %4902 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %374, i64 0, i64 0, i32 1
  store i64* null, i64** %4902, align 8, !tbaa !33
  %4903 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %374, i64 0, i64 0, i32 2
  %4904 = bitcast i32* %4903 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4904, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4884, i8* nonnull %4891, %struct.ds_base* nonnull %4900, i32 1, i32 undef) #15
  %4905 = load i8, i8* %542, align 2, !tbaa !12
  %4906 = load i8, i8* %739, align 1, !tbaa !12
  %4907 = zext i8 %4905 to i32
  %4908 = zext i8 %4906 to i32
  %4909 = add nuw nsw i32 %4888, %4907
  %4910 = add nuw nsw i32 %4909, %4908
  %4911 = and i32 %4910, 31
  %4912 = zext i32 %4911 to i64
  %4913 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4912
  %4914 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %375, i64 0, i64 0
  %4915 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %375, i64 0, i64 0, i32 0
  store i8* %516, i8** %4915, align 8, !tbaa !3
  %4916 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %375, i64 0, i64 0, i32 1
  store i64* null, i64** %4916, align 8, !tbaa !33
  %4917 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %375, i64 0, i64 0, i32 2
  %4918 = bitcast i32* %4917 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4918, align 8, !tbaa !11
  %4919 = bitcast i8* %4913 to i64*
  %4920 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4919, %struct.ds_base* nonnull %4914, i32 undef, i32 undef) #15
  %4921 = trunc i64 %4920 to i8
  store i8 %4921, i8* %739, align 1, !tbaa !12
  %4922 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %376, i64 0, i64 0
  %4923 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %376, i64 0, i64 0, i32 0
  store i8* %516, i8** %4923, align 8, !tbaa !3
  %4924 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %376, i64 0, i64 0, i32 1
  store i64* null, i64** %4924, align 8, !tbaa !33
  %4925 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %376, i64 0, i64 0, i32 2
  %4926 = bitcast i32* %4925 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4926, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4906, i8* nonnull %4913, %struct.ds_base* nonnull %4922, i32 1, i32 undef) #15
  %4927 = load i8, i8* %543, align 1, !tbaa !12
  %4928 = load i8, i8* %740, align 1, !tbaa !12
  %4929 = zext i8 %4927 to i32
  %4930 = zext i8 %4928 to i32
  %4931 = add nuw nsw i32 %4910, %4929
  %4932 = add nuw nsw i32 %4931, %4930
  %4933 = and i32 %4932, 31
  %4934 = zext i32 %4933 to i64
  %4935 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4934
  %4936 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %377, i64 0, i64 0
  %4937 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %377, i64 0, i64 0, i32 0
  store i8* %516, i8** %4937, align 8, !tbaa !3
  %4938 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %377, i64 0, i64 0, i32 1
  store i64* null, i64** %4938, align 8, !tbaa !33
  %4939 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %377, i64 0, i64 0, i32 2
  %4940 = bitcast i32* %4939 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4940, align 8, !tbaa !11
  %4941 = bitcast i8* %4935 to i64*
  %4942 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4941, %struct.ds_base* nonnull %4936, i32 undef, i32 undef) #15
  %4943 = trunc i64 %4942 to i8
  store i8 %4943, i8* %740, align 1, !tbaa !12
  %4944 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %378, i64 0, i64 0
  %4945 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %378, i64 0, i64 0, i32 0
  store i8* %516, i8** %4945, align 8, !tbaa !3
  %4946 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %378, i64 0, i64 0, i32 1
  store i64* null, i64** %4946, align 8, !tbaa !33
  %4947 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %378, i64 0, i64 0, i32 2
  %4948 = bitcast i32* %4947 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4948, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4928, i8* nonnull %4935, %struct.ds_base* nonnull %4944, i32 1, i32 undef) #15
  %4949 = load i8, i8* %544, align 4, !tbaa !12
  %4950 = load i8, i8* %741, align 1, !tbaa !12
  %4951 = zext i8 %4949 to i32
  %4952 = zext i8 %4950 to i32
  %4953 = add nuw nsw i32 %4932, %4951
  %4954 = add nuw nsw i32 %4953, %4952
  %4955 = and i32 %4954, 31
  %4956 = zext i32 %4955 to i64
  %4957 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4956
  %4958 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %379, i64 0, i64 0
  %4959 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %379, i64 0, i64 0, i32 0
  store i8* %516, i8** %4959, align 8, !tbaa !3
  %4960 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %379, i64 0, i64 0, i32 1
  store i64* null, i64** %4960, align 8, !tbaa !33
  %4961 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %379, i64 0, i64 0, i32 2
  %4962 = bitcast i32* %4961 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4962, align 8, !tbaa !11
  %4963 = bitcast i8* %4957 to i64*
  %4964 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4963, %struct.ds_base* nonnull %4958, i32 undef, i32 undef) #15
  %4965 = trunc i64 %4964 to i8
  store i8 %4965, i8* %741, align 1, !tbaa !12
  %4966 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %380, i64 0, i64 0
  %4967 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %380, i64 0, i64 0, i32 0
  store i8* %516, i8** %4967, align 8, !tbaa !3
  %4968 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %380, i64 0, i64 0, i32 1
  store i64* null, i64** %4968, align 8, !tbaa !33
  %4969 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %380, i64 0, i64 0, i32 2
  %4970 = bitcast i32* %4969 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4970, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4950, i8* nonnull %4957, %struct.ds_base* nonnull %4966, i32 1, i32 undef) #15
  %4971 = load i8, i8* %545, align 1, !tbaa !12
  %4972 = load i8, i8* %742, align 1, !tbaa !12
  %4973 = zext i8 %4971 to i32
  %4974 = zext i8 %4972 to i32
  %4975 = add nuw nsw i32 %4954, %4973
  %4976 = add nuw nsw i32 %4975, %4974
  %4977 = and i32 %4976, 31
  %4978 = zext i32 %4977 to i64
  %4979 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %4978
  %4980 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %381, i64 0, i64 0
  %4981 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %381, i64 0, i64 0, i32 0
  store i8* %516, i8** %4981, align 8, !tbaa !3
  %4982 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %381, i64 0, i64 0, i32 1
  store i64* null, i64** %4982, align 8, !tbaa !33
  %4983 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %381, i64 0, i64 0, i32 2
  %4984 = bitcast i32* %4983 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4984, align 8, !tbaa !11
  %4985 = bitcast i8* %4979 to i64*
  %4986 = call i64 @uint64_t_secure_load_impl(i64* nonnull %4985, %struct.ds_base* nonnull %4980, i32 undef, i32 undef) #15
  %4987 = trunc i64 %4986 to i8
  store i8 %4987, i8* %742, align 1, !tbaa !12
  %4988 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %382, i64 0, i64 0
  %4989 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %382, i64 0, i64 0, i32 0
  store i8* %516, i8** %4989, align 8, !tbaa !3
  %4990 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %382, i64 0, i64 0, i32 1
  store i64* null, i64** %4990, align 8, !tbaa !33
  %4991 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %382, i64 0, i64 0, i32 2
  %4992 = bitcast i32* %4991 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %4992, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4972, i8* nonnull %4979, %struct.ds_base* nonnull %4988, i32 1, i32 undef) #15
  %4993 = load i8, i8* %546, align 2, !tbaa !12
  %4994 = load i8, i8* %743, align 1, !tbaa !12
  %4995 = zext i8 %4993 to i32
  %4996 = zext i8 %4994 to i32
  %4997 = add nuw nsw i32 %4976, %4995
  %4998 = add nuw nsw i32 %4997, %4996
  %4999 = and i32 %4998, 31
  %5000 = zext i32 %4999 to i64
  %5001 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5000
  %5002 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %383, i64 0, i64 0
  %5003 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %383, i64 0, i64 0, i32 0
  store i8* %516, i8** %5003, align 8, !tbaa !3
  %5004 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %383, i64 0, i64 0, i32 1
  store i64* null, i64** %5004, align 8, !tbaa !33
  %5005 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %383, i64 0, i64 0, i32 2
  %5006 = bitcast i32* %5005 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5006, align 8, !tbaa !11
  %5007 = bitcast i8* %5001 to i64*
  %5008 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5007, %struct.ds_base* nonnull %5002, i32 undef, i32 undef) #15
  %5009 = trunc i64 %5008 to i8
  store i8 %5009, i8* %743, align 1, !tbaa !12
  %5010 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %384, i64 0, i64 0
  %5011 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %384, i64 0, i64 0, i32 0
  store i8* %516, i8** %5011, align 8, !tbaa !3
  %5012 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %384, i64 0, i64 0, i32 1
  store i64* null, i64** %5012, align 8, !tbaa !33
  %5013 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %384, i64 0, i64 0, i32 2
  %5014 = bitcast i32* %5013 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5014, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %4994, i8* nonnull %5001, %struct.ds_base* nonnull %5010, i32 1, i32 undef) #15
  %5015 = load i8, i8* %547, align 1, !tbaa !12
  %5016 = load i8, i8* %744, align 1, !tbaa !12
  %5017 = zext i8 %5015 to i32
  %5018 = zext i8 %5016 to i32
  %5019 = add nuw nsw i32 %4998, %5017
  %5020 = add nuw nsw i32 %5019, %5018
  %5021 = and i32 %5020, 31
  %5022 = zext i32 %5021 to i64
  %5023 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5022
  %5024 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %385, i64 0, i64 0
  %5025 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %385, i64 0, i64 0, i32 0
  store i8* %516, i8** %5025, align 8, !tbaa !3
  %5026 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %385, i64 0, i64 0, i32 1
  store i64* null, i64** %5026, align 8, !tbaa !33
  %5027 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %385, i64 0, i64 0, i32 2
  %5028 = bitcast i32* %5027 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5028, align 8, !tbaa !11
  %5029 = bitcast i8* %5023 to i64*
  %5030 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5029, %struct.ds_base* nonnull %5024, i32 undef, i32 undef) #15
  %5031 = trunc i64 %5030 to i8
  store i8 %5031, i8* %744, align 1, !tbaa !12
  %5032 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %386, i64 0, i64 0
  %5033 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %386, i64 0, i64 0, i32 0
  store i8* %516, i8** %5033, align 8, !tbaa !3
  %5034 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %386, i64 0, i64 0, i32 1
  store i64* null, i64** %5034, align 8, !tbaa !33
  %5035 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %386, i64 0, i64 0, i32 2
  %5036 = bitcast i32* %5035 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5036, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5016, i8* nonnull %5023, %struct.ds_base* nonnull %5032, i32 1, i32 undef) #15
  %5037 = load i8, i8* %515, align 16, !tbaa !12
  %5038 = load i8, i8* %746, align 1, !tbaa !12
  %5039 = zext i8 %5037 to i32
  %5040 = zext i8 %5038 to i32
  %5041 = add nuw nsw i32 %5020, %5039
  %5042 = add nuw nsw i32 %5041, %5040
  %5043 = and i32 %5042, 31
  %5044 = zext i32 %5043 to i64
  %5045 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5044
  %5046 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %387, i64 0, i64 0
  %5047 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %387, i64 0, i64 0, i32 0
  store i8* %516, i8** %5047, align 8, !tbaa !3
  %5048 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %387, i64 0, i64 0, i32 1
  store i64* null, i64** %5048, align 8, !tbaa !33
  %5049 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %387, i64 0, i64 0, i32 2
  %5050 = bitcast i32* %5049 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5050, align 8, !tbaa !11
  %5051 = bitcast i8* %5045 to i64*
  %5052 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5051, %struct.ds_base* nonnull %5046, i32 undef, i32 undef) #15
  %5053 = trunc i64 %5052 to i8
  store i8 %5053, i8* %746, align 1, !tbaa !12
  %5054 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %388, i64 0, i64 0
  %5055 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %388, i64 0, i64 0, i32 0
  store i8* %516, i8** %5055, align 8, !tbaa !3
  %5056 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %388, i64 0, i64 0, i32 1
  store i64* null, i64** %5056, align 8, !tbaa !33
  %5057 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %388, i64 0, i64 0, i32 2
  %5058 = bitcast i32* %5057 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5058, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5038, i8* nonnull %5045, %struct.ds_base* nonnull %5054, i32 1, i32 undef) #15
  %5059 = load i8, i8* %517, align 1, !tbaa !12
  %5060 = load i8, i8* %747, align 1, !tbaa !12
  %5061 = zext i8 %5059 to i32
  %5062 = zext i8 %5060 to i32
  %5063 = add nuw nsw i32 %5042, %5061
  %5064 = add nuw nsw i32 %5063, %5062
  %5065 = and i32 %5064, 31
  %5066 = zext i32 %5065 to i64
  %5067 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5066
  %5068 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %389, i64 0, i64 0
  %5069 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %389, i64 0, i64 0, i32 0
  store i8* %516, i8** %5069, align 8, !tbaa !3
  %5070 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %389, i64 0, i64 0, i32 1
  store i64* null, i64** %5070, align 8, !tbaa !33
  %5071 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %389, i64 0, i64 0, i32 2
  %5072 = bitcast i32* %5071 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5072, align 8, !tbaa !11
  %5073 = bitcast i8* %5067 to i64*
  %5074 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5073, %struct.ds_base* nonnull %5068, i32 undef, i32 undef) #15
  %5075 = trunc i64 %5074 to i8
  store i8 %5075, i8* %747, align 1, !tbaa !12
  %5076 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %390, i64 0, i64 0
  %5077 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %390, i64 0, i64 0, i32 0
  store i8* %516, i8** %5077, align 8, !tbaa !3
  %5078 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %390, i64 0, i64 0, i32 1
  store i64* null, i64** %5078, align 8, !tbaa !33
  %5079 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %390, i64 0, i64 0, i32 2
  %5080 = bitcast i32* %5079 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5080, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5060, i8* nonnull %5067, %struct.ds_base* nonnull %5076, i32 1, i32 undef) #15
  %5081 = load i8, i8* %518, align 2, !tbaa !12
  %5082 = load i8, i8* %748, align 1, !tbaa !12
  %5083 = zext i8 %5081 to i32
  %5084 = zext i8 %5082 to i32
  %5085 = add nuw nsw i32 %5064, %5083
  %5086 = add nuw nsw i32 %5085, %5084
  %5087 = and i32 %5086, 31
  %5088 = zext i32 %5087 to i64
  %5089 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5088
  %5090 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %391, i64 0, i64 0
  %5091 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %391, i64 0, i64 0, i32 0
  store i8* %516, i8** %5091, align 8, !tbaa !3
  %5092 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %391, i64 0, i64 0, i32 1
  store i64* null, i64** %5092, align 8, !tbaa !33
  %5093 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %391, i64 0, i64 0, i32 2
  %5094 = bitcast i32* %5093 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5094, align 8, !tbaa !11
  %5095 = bitcast i8* %5089 to i64*
  %5096 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5095, %struct.ds_base* nonnull %5090, i32 undef, i32 undef) #15
  %5097 = trunc i64 %5096 to i8
  store i8 %5097, i8* %748, align 1, !tbaa !12
  %5098 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %392, i64 0, i64 0
  %5099 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %392, i64 0, i64 0, i32 0
  store i8* %516, i8** %5099, align 8, !tbaa !3
  %5100 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %392, i64 0, i64 0, i32 1
  store i64* null, i64** %5100, align 8, !tbaa !33
  %5101 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %392, i64 0, i64 0, i32 2
  %5102 = bitcast i32* %5101 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5102, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5082, i8* nonnull %5089, %struct.ds_base* nonnull %5098, i32 1, i32 undef) #15
  %5103 = load i8, i8* %519, align 1, !tbaa !12
  %5104 = load i8, i8* %749, align 1, !tbaa !12
  %5105 = zext i8 %5103 to i32
  %5106 = zext i8 %5104 to i32
  %5107 = add nuw nsw i32 %5086, %5105
  %5108 = add nuw nsw i32 %5107, %5106
  %5109 = and i32 %5108, 31
  %5110 = zext i32 %5109 to i64
  %5111 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5110
  %5112 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %393, i64 0, i64 0
  %5113 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %393, i64 0, i64 0, i32 0
  store i8* %516, i8** %5113, align 8, !tbaa !3
  %5114 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %393, i64 0, i64 0, i32 1
  store i64* null, i64** %5114, align 8, !tbaa !33
  %5115 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %393, i64 0, i64 0, i32 2
  %5116 = bitcast i32* %5115 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5116, align 8, !tbaa !11
  %5117 = bitcast i8* %5111 to i64*
  %5118 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5117, %struct.ds_base* nonnull %5112, i32 undef, i32 undef) #15
  %5119 = trunc i64 %5118 to i8
  store i8 %5119, i8* %749, align 1, !tbaa !12
  %5120 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %394, i64 0, i64 0
  %5121 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %394, i64 0, i64 0, i32 0
  store i8* %516, i8** %5121, align 8, !tbaa !3
  %5122 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %394, i64 0, i64 0, i32 1
  store i64* null, i64** %5122, align 8, !tbaa !33
  %5123 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %394, i64 0, i64 0, i32 2
  %5124 = bitcast i32* %5123 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5124, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5104, i8* nonnull %5111, %struct.ds_base* nonnull %5120, i32 1, i32 undef) #15
  %5125 = load i8, i8* %520, align 4, !tbaa !12
  %5126 = load i8, i8* %750, align 1, !tbaa !12
  %5127 = zext i8 %5125 to i32
  %5128 = zext i8 %5126 to i32
  %5129 = add nuw nsw i32 %5108, %5127
  %5130 = add nuw nsw i32 %5129, %5128
  %5131 = and i32 %5130, 31
  %5132 = zext i32 %5131 to i64
  %5133 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5132
  %5134 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %395, i64 0, i64 0
  %5135 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %395, i64 0, i64 0, i32 0
  store i8* %516, i8** %5135, align 8, !tbaa !3
  %5136 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %395, i64 0, i64 0, i32 1
  store i64* null, i64** %5136, align 8, !tbaa !33
  %5137 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %395, i64 0, i64 0, i32 2
  %5138 = bitcast i32* %5137 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5138, align 8, !tbaa !11
  %5139 = bitcast i8* %5133 to i64*
  %5140 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5139, %struct.ds_base* nonnull %5134, i32 undef, i32 undef) #15
  %5141 = trunc i64 %5140 to i8
  store i8 %5141, i8* %750, align 1, !tbaa !12
  %5142 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %396, i64 0, i64 0
  %5143 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %396, i64 0, i64 0, i32 0
  store i8* %516, i8** %5143, align 8, !tbaa !3
  %5144 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %396, i64 0, i64 0, i32 1
  store i64* null, i64** %5144, align 8, !tbaa !33
  %5145 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %396, i64 0, i64 0, i32 2
  %5146 = bitcast i32* %5145 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5146, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5126, i8* nonnull %5133, %struct.ds_base* nonnull %5142, i32 1, i32 undef) #15
  %5147 = load i8, i8* %521, align 1, !tbaa !12
  %5148 = load i8, i8* %751, align 1, !tbaa !12
  %5149 = zext i8 %5147 to i32
  %5150 = zext i8 %5148 to i32
  %5151 = add nuw nsw i32 %5130, %5149
  %5152 = add nuw nsw i32 %5151, %5150
  %5153 = and i32 %5152, 31
  %5154 = zext i32 %5153 to i64
  %5155 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5154
  %5156 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %397, i64 0, i64 0
  %5157 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %397, i64 0, i64 0, i32 0
  store i8* %516, i8** %5157, align 8, !tbaa !3
  %5158 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %397, i64 0, i64 0, i32 1
  store i64* null, i64** %5158, align 8, !tbaa !33
  %5159 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %397, i64 0, i64 0, i32 2
  %5160 = bitcast i32* %5159 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5160, align 8, !tbaa !11
  %5161 = bitcast i8* %5155 to i64*
  %5162 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5161, %struct.ds_base* nonnull %5156, i32 undef, i32 undef) #15
  %5163 = trunc i64 %5162 to i8
  store i8 %5163, i8* %751, align 1, !tbaa !12
  %5164 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %398, i64 0, i64 0
  %5165 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %398, i64 0, i64 0, i32 0
  store i8* %516, i8** %5165, align 8, !tbaa !3
  %5166 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %398, i64 0, i64 0, i32 1
  store i64* null, i64** %5166, align 8, !tbaa !33
  %5167 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %398, i64 0, i64 0, i32 2
  %5168 = bitcast i32* %5167 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5168, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5148, i8* nonnull %5155, %struct.ds_base* nonnull %5164, i32 1, i32 undef) #15
  %5169 = load i8, i8* %522, align 2, !tbaa !12
  %5170 = load i8, i8* %752, align 1, !tbaa !12
  %5171 = zext i8 %5169 to i32
  %5172 = zext i8 %5170 to i32
  %5173 = add nuw nsw i32 %5152, %5171
  %5174 = add nuw nsw i32 %5173, %5172
  %5175 = and i32 %5174, 31
  %5176 = zext i32 %5175 to i64
  %5177 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5176
  %5178 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %399, i64 0, i64 0
  %5179 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %399, i64 0, i64 0, i32 0
  store i8* %516, i8** %5179, align 8, !tbaa !3
  %5180 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %399, i64 0, i64 0, i32 1
  store i64* null, i64** %5180, align 8, !tbaa !33
  %5181 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %399, i64 0, i64 0, i32 2
  %5182 = bitcast i32* %5181 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5182, align 8, !tbaa !11
  %5183 = bitcast i8* %5177 to i64*
  %5184 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5183, %struct.ds_base* nonnull %5178, i32 undef, i32 undef) #15
  %5185 = trunc i64 %5184 to i8
  store i8 %5185, i8* %752, align 1, !tbaa !12
  %5186 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %400, i64 0, i64 0
  %5187 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %400, i64 0, i64 0, i32 0
  store i8* %516, i8** %5187, align 8, !tbaa !3
  %5188 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %400, i64 0, i64 0, i32 1
  store i64* null, i64** %5188, align 8, !tbaa !33
  %5189 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %400, i64 0, i64 0, i32 2
  %5190 = bitcast i32* %5189 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5190, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5170, i8* nonnull %5177, %struct.ds_base* nonnull %5186, i32 1, i32 undef) #15
  %5191 = load i8, i8* %523, align 1, !tbaa !12
  %5192 = load i8, i8* %753, align 1, !tbaa !12
  %5193 = zext i8 %5191 to i32
  %5194 = zext i8 %5192 to i32
  %5195 = add nuw nsw i32 %5174, %5193
  %5196 = add nuw nsw i32 %5195, %5194
  %5197 = and i32 %5196, 31
  %5198 = zext i32 %5197 to i64
  %5199 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5198
  %5200 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %401, i64 0, i64 0
  %5201 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %401, i64 0, i64 0, i32 0
  store i8* %516, i8** %5201, align 8, !tbaa !3
  %5202 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %401, i64 0, i64 0, i32 1
  store i64* null, i64** %5202, align 8, !tbaa !33
  %5203 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %401, i64 0, i64 0, i32 2
  %5204 = bitcast i32* %5203 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5204, align 8, !tbaa !11
  %5205 = bitcast i8* %5199 to i64*
  %5206 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5205, %struct.ds_base* nonnull %5200, i32 undef, i32 undef) #15
  %5207 = trunc i64 %5206 to i8
  store i8 %5207, i8* %753, align 1, !tbaa !12
  %5208 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %402, i64 0, i64 0
  %5209 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %402, i64 0, i64 0, i32 0
  store i8* %516, i8** %5209, align 8, !tbaa !3
  %5210 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %402, i64 0, i64 0, i32 1
  store i64* null, i64** %5210, align 8, !tbaa !33
  %5211 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %402, i64 0, i64 0, i32 2
  %5212 = bitcast i32* %5211 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5212, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5192, i8* nonnull %5199, %struct.ds_base* nonnull %5208, i32 1, i32 undef) #15
  %5213 = load i8, i8* %524, align 8, !tbaa !12
  %5214 = load i8, i8* %754, align 1, !tbaa !12
  %5215 = zext i8 %5213 to i32
  %5216 = zext i8 %5214 to i32
  %5217 = add nuw nsw i32 %5196, %5215
  %5218 = add nuw nsw i32 %5217, %5216
  %5219 = and i32 %5218, 31
  %5220 = zext i32 %5219 to i64
  %5221 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5220
  %5222 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %403, i64 0, i64 0
  %5223 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %403, i64 0, i64 0, i32 0
  store i8* %516, i8** %5223, align 8, !tbaa !3
  %5224 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %403, i64 0, i64 0, i32 1
  store i64* null, i64** %5224, align 8, !tbaa !33
  %5225 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %403, i64 0, i64 0, i32 2
  %5226 = bitcast i32* %5225 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5226, align 8, !tbaa !11
  %5227 = bitcast i8* %5221 to i64*
  %5228 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5227, %struct.ds_base* nonnull %5222, i32 undef, i32 undef) #15
  %5229 = trunc i64 %5228 to i8
  store i8 %5229, i8* %754, align 1, !tbaa !12
  %5230 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %404, i64 0, i64 0
  %5231 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %404, i64 0, i64 0, i32 0
  store i8* %516, i8** %5231, align 8, !tbaa !3
  %5232 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %404, i64 0, i64 0, i32 1
  store i64* null, i64** %5232, align 8, !tbaa !33
  %5233 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %404, i64 0, i64 0, i32 2
  %5234 = bitcast i32* %5233 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5234, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5214, i8* nonnull %5221, %struct.ds_base* nonnull %5230, i32 1, i32 undef) #15
  %5235 = load i8, i8* %525, align 1, !tbaa !12
  %5236 = load i8, i8* %755, align 1, !tbaa !12
  %5237 = zext i8 %5235 to i32
  %5238 = zext i8 %5236 to i32
  %5239 = add nuw nsw i32 %5218, %5237
  %5240 = add nuw nsw i32 %5239, %5238
  %5241 = and i32 %5240, 31
  %5242 = zext i32 %5241 to i64
  %5243 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5242
  %5244 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %405, i64 0, i64 0
  %5245 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %405, i64 0, i64 0, i32 0
  store i8* %516, i8** %5245, align 8, !tbaa !3
  %5246 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %405, i64 0, i64 0, i32 1
  store i64* null, i64** %5246, align 8, !tbaa !33
  %5247 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %405, i64 0, i64 0, i32 2
  %5248 = bitcast i32* %5247 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5248, align 8, !tbaa !11
  %5249 = bitcast i8* %5243 to i64*
  %5250 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5249, %struct.ds_base* nonnull %5244, i32 undef, i32 undef) #15
  %5251 = trunc i64 %5250 to i8
  store i8 %5251, i8* %755, align 1, !tbaa !12
  %5252 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %406, i64 0, i64 0
  %5253 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %406, i64 0, i64 0, i32 0
  store i8* %516, i8** %5253, align 8, !tbaa !3
  %5254 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %406, i64 0, i64 0, i32 1
  store i64* null, i64** %5254, align 8, !tbaa !33
  %5255 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %406, i64 0, i64 0, i32 2
  %5256 = bitcast i32* %5255 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5256, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5236, i8* nonnull %5243, %struct.ds_base* nonnull %5252, i32 1, i32 undef) #15
  %5257 = load i8, i8* %526, align 2, !tbaa !12
  %5258 = load i8, i8* %756, align 1, !tbaa !12
  %5259 = zext i8 %5257 to i32
  %5260 = zext i8 %5258 to i32
  %5261 = add nuw nsw i32 %5240, %5259
  %5262 = add nuw nsw i32 %5261, %5260
  %5263 = and i32 %5262, 31
  %5264 = zext i32 %5263 to i64
  %5265 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5264
  %5266 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %407, i64 0, i64 0
  %5267 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %407, i64 0, i64 0, i32 0
  store i8* %516, i8** %5267, align 8, !tbaa !3
  %5268 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %407, i64 0, i64 0, i32 1
  store i64* null, i64** %5268, align 8, !tbaa !33
  %5269 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %407, i64 0, i64 0, i32 2
  %5270 = bitcast i32* %5269 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5270, align 8, !tbaa !11
  %5271 = bitcast i8* %5265 to i64*
  %5272 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5271, %struct.ds_base* nonnull %5266, i32 undef, i32 undef) #15
  %5273 = trunc i64 %5272 to i8
  store i8 %5273, i8* %756, align 1, !tbaa !12
  %5274 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %408, i64 0, i64 0
  %5275 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %408, i64 0, i64 0, i32 0
  store i8* %516, i8** %5275, align 8, !tbaa !3
  %5276 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %408, i64 0, i64 0, i32 1
  store i64* null, i64** %5276, align 8, !tbaa !33
  %5277 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %408, i64 0, i64 0, i32 2
  %5278 = bitcast i32* %5277 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5278, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5258, i8* nonnull %5265, %struct.ds_base* nonnull %5274, i32 1, i32 undef) #15
  %5279 = load i8, i8* %527, align 1, !tbaa !12
  %5280 = load i8, i8* %757, align 1, !tbaa !12
  %5281 = zext i8 %5279 to i32
  %5282 = zext i8 %5280 to i32
  %5283 = add nuw nsw i32 %5262, %5281
  %5284 = add nuw nsw i32 %5283, %5282
  %5285 = and i32 %5284, 31
  %5286 = zext i32 %5285 to i64
  %5287 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5286
  %5288 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %409, i64 0, i64 0
  %5289 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %409, i64 0, i64 0, i32 0
  store i8* %516, i8** %5289, align 8, !tbaa !3
  %5290 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %409, i64 0, i64 0, i32 1
  store i64* null, i64** %5290, align 8, !tbaa !33
  %5291 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %409, i64 0, i64 0, i32 2
  %5292 = bitcast i32* %5291 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5292, align 8, !tbaa !11
  %5293 = bitcast i8* %5287 to i64*
  %5294 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5293, %struct.ds_base* nonnull %5288, i32 undef, i32 undef) #15
  %5295 = trunc i64 %5294 to i8
  store i8 %5295, i8* %757, align 1, !tbaa !12
  %5296 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %410, i64 0, i64 0
  %5297 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %410, i64 0, i64 0, i32 0
  store i8* %516, i8** %5297, align 8, !tbaa !3
  %5298 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %410, i64 0, i64 0, i32 1
  store i64* null, i64** %5298, align 8, !tbaa !33
  %5299 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %410, i64 0, i64 0, i32 2
  %5300 = bitcast i32* %5299 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5300, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5280, i8* nonnull %5287, %struct.ds_base* nonnull %5296, i32 1, i32 undef) #15
  %5301 = load i8, i8* %528, align 4, !tbaa !12
  %5302 = load i8, i8* %758, align 1, !tbaa !12
  %5303 = zext i8 %5301 to i32
  %5304 = zext i8 %5302 to i32
  %5305 = add nuw nsw i32 %5284, %5303
  %5306 = add nuw nsw i32 %5305, %5304
  %5307 = and i32 %5306, 31
  %5308 = zext i32 %5307 to i64
  %5309 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5308
  %5310 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %411, i64 0, i64 0
  %5311 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %411, i64 0, i64 0, i32 0
  store i8* %516, i8** %5311, align 8, !tbaa !3
  %5312 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %411, i64 0, i64 0, i32 1
  store i64* null, i64** %5312, align 8, !tbaa !33
  %5313 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %411, i64 0, i64 0, i32 2
  %5314 = bitcast i32* %5313 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5314, align 8, !tbaa !11
  %5315 = bitcast i8* %5309 to i64*
  %5316 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5315, %struct.ds_base* nonnull %5310, i32 undef, i32 undef) #15
  %5317 = trunc i64 %5316 to i8
  store i8 %5317, i8* %758, align 1, !tbaa !12
  %5318 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %412, i64 0, i64 0
  %5319 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %412, i64 0, i64 0, i32 0
  store i8* %516, i8** %5319, align 8, !tbaa !3
  %5320 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %412, i64 0, i64 0, i32 1
  store i64* null, i64** %5320, align 8, !tbaa !33
  %5321 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %412, i64 0, i64 0, i32 2
  %5322 = bitcast i32* %5321 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5322, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5302, i8* nonnull %5309, %struct.ds_base* nonnull %5318, i32 1, i32 undef) #15
  %5323 = load i8, i8* %529, align 1, !tbaa !12
  %5324 = load i8, i8* %759, align 1, !tbaa !12
  %5325 = zext i8 %5323 to i32
  %5326 = zext i8 %5324 to i32
  %5327 = add nuw nsw i32 %5306, %5325
  %5328 = add nuw nsw i32 %5327, %5326
  %5329 = and i32 %5328, 31
  %5330 = zext i32 %5329 to i64
  %5331 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5330
  %5332 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %413, i64 0, i64 0
  %5333 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %413, i64 0, i64 0, i32 0
  store i8* %516, i8** %5333, align 8, !tbaa !3
  %5334 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %413, i64 0, i64 0, i32 1
  store i64* null, i64** %5334, align 8, !tbaa !33
  %5335 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %413, i64 0, i64 0, i32 2
  %5336 = bitcast i32* %5335 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5336, align 8, !tbaa !11
  %5337 = bitcast i8* %5331 to i64*
  %5338 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5337, %struct.ds_base* nonnull %5332, i32 undef, i32 undef) #15
  %5339 = trunc i64 %5338 to i8
  store i8 %5339, i8* %759, align 1, !tbaa !12
  %5340 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %414, i64 0, i64 0
  %5341 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %414, i64 0, i64 0, i32 0
  store i8* %516, i8** %5341, align 8, !tbaa !3
  %5342 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %414, i64 0, i64 0, i32 1
  store i64* null, i64** %5342, align 8, !tbaa !33
  %5343 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %414, i64 0, i64 0, i32 2
  %5344 = bitcast i32* %5343 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5344, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5324, i8* nonnull %5331, %struct.ds_base* nonnull %5340, i32 1, i32 undef) #15
  %5345 = load i8, i8* %530, align 2, !tbaa !12
  %5346 = load i8, i8* %760, align 1, !tbaa !12
  %5347 = zext i8 %5345 to i32
  %5348 = zext i8 %5346 to i32
  %5349 = add nuw nsw i32 %5328, %5347
  %5350 = add nuw nsw i32 %5349, %5348
  %5351 = and i32 %5350, 31
  %5352 = zext i32 %5351 to i64
  %5353 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5352
  %5354 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %415, i64 0, i64 0
  %5355 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %415, i64 0, i64 0, i32 0
  store i8* %516, i8** %5355, align 8, !tbaa !3
  %5356 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %415, i64 0, i64 0, i32 1
  store i64* null, i64** %5356, align 8, !tbaa !33
  %5357 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %415, i64 0, i64 0, i32 2
  %5358 = bitcast i32* %5357 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5358, align 8, !tbaa !11
  %5359 = bitcast i8* %5353 to i64*
  %5360 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5359, %struct.ds_base* nonnull %5354, i32 undef, i32 undef) #15
  %5361 = trunc i64 %5360 to i8
  store i8 %5361, i8* %760, align 1, !tbaa !12
  %5362 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %416, i64 0, i64 0
  %5363 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %416, i64 0, i64 0, i32 0
  store i8* %516, i8** %5363, align 8, !tbaa !3
  %5364 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %416, i64 0, i64 0, i32 1
  store i64* null, i64** %5364, align 8, !tbaa !33
  %5365 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %416, i64 0, i64 0, i32 2
  %5366 = bitcast i32* %5365 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5366, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5346, i8* nonnull %5353, %struct.ds_base* nonnull %5362, i32 1, i32 undef) #15
  %5367 = load i8, i8* %531, align 1, !tbaa !12
  %5368 = load i8, i8* %761, align 1, !tbaa !12
  %5369 = zext i8 %5367 to i32
  %5370 = zext i8 %5368 to i32
  %5371 = add nuw nsw i32 %5350, %5369
  %5372 = add nuw nsw i32 %5371, %5370
  %5373 = and i32 %5372, 31
  %5374 = zext i32 %5373 to i64
  %5375 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5374
  %5376 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %417, i64 0, i64 0
  %5377 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %417, i64 0, i64 0, i32 0
  store i8* %516, i8** %5377, align 8, !tbaa !3
  %5378 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %417, i64 0, i64 0, i32 1
  store i64* null, i64** %5378, align 8, !tbaa !33
  %5379 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %417, i64 0, i64 0, i32 2
  %5380 = bitcast i32* %5379 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5380, align 8, !tbaa !11
  %5381 = bitcast i8* %5375 to i64*
  %5382 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5381, %struct.ds_base* nonnull %5376, i32 undef, i32 undef) #15
  %5383 = trunc i64 %5382 to i8
  store i8 %5383, i8* %761, align 1, !tbaa !12
  %5384 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %418, i64 0, i64 0
  %5385 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %418, i64 0, i64 0, i32 0
  store i8* %516, i8** %5385, align 8, !tbaa !3
  %5386 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %418, i64 0, i64 0, i32 1
  store i64* null, i64** %5386, align 8, !tbaa !33
  %5387 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %418, i64 0, i64 0, i32 2
  %5388 = bitcast i32* %5387 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5388, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5368, i8* nonnull %5375, %struct.ds_base* nonnull %5384, i32 1, i32 undef) #15
  %5389 = load i8, i8* %532, align 16, !tbaa !12
  %5390 = load i8, i8* %762, align 1, !tbaa !12
  %5391 = zext i8 %5389 to i32
  %5392 = zext i8 %5390 to i32
  %5393 = add nuw nsw i32 %5372, %5391
  %5394 = add nuw nsw i32 %5393, %5392
  %5395 = and i32 %5394, 31
  %5396 = zext i32 %5395 to i64
  %5397 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5396
  %5398 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %419, i64 0, i64 0
  %5399 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %419, i64 0, i64 0, i32 0
  store i8* %516, i8** %5399, align 8, !tbaa !3
  %5400 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %419, i64 0, i64 0, i32 1
  store i64* null, i64** %5400, align 8, !tbaa !33
  %5401 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %419, i64 0, i64 0, i32 2
  %5402 = bitcast i32* %5401 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5402, align 8, !tbaa !11
  %5403 = bitcast i8* %5397 to i64*
  %5404 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5403, %struct.ds_base* nonnull %5398, i32 undef, i32 undef) #15
  %5405 = trunc i64 %5404 to i8
  store i8 %5405, i8* %762, align 1, !tbaa !12
  %5406 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %420, i64 0, i64 0
  %5407 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %420, i64 0, i64 0, i32 0
  store i8* %516, i8** %5407, align 8, !tbaa !3
  %5408 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %420, i64 0, i64 0, i32 1
  store i64* null, i64** %5408, align 8, !tbaa !33
  %5409 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %420, i64 0, i64 0, i32 2
  %5410 = bitcast i32* %5409 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5410, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5390, i8* nonnull %5397, %struct.ds_base* nonnull %5406, i32 1, i32 undef) #15
  %5411 = load i8, i8* %533, align 1, !tbaa !12
  %5412 = load i8, i8* %763, align 1, !tbaa !12
  %5413 = zext i8 %5411 to i32
  %5414 = zext i8 %5412 to i32
  %5415 = add nuw nsw i32 %5394, %5413
  %5416 = add nuw nsw i32 %5415, %5414
  %5417 = and i32 %5416, 31
  %5418 = zext i32 %5417 to i64
  %5419 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5418
  %5420 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %421, i64 0, i64 0
  %5421 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %421, i64 0, i64 0, i32 0
  store i8* %516, i8** %5421, align 8, !tbaa !3
  %5422 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %421, i64 0, i64 0, i32 1
  store i64* null, i64** %5422, align 8, !tbaa !33
  %5423 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %421, i64 0, i64 0, i32 2
  %5424 = bitcast i32* %5423 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5424, align 8, !tbaa !11
  %5425 = bitcast i8* %5419 to i64*
  %5426 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5425, %struct.ds_base* nonnull %5420, i32 undef, i32 undef) #15
  %5427 = trunc i64 %5426 to i8
  store i8 %5427, i8* %763, align 1, !tbaa !12
  %5428 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %422, i64 0, i64 0
  %5429 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %422, i64 0, i64 0, i32 0
  store i8* %516, i8** %5429, align 8, !tbaa !3
  %5430 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %422, i64 0, i64 0, i32 1
  store i64* null, i64** %5430, align 8, !tbaa !33
  %5431 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %422, i64 0, i64 0, i32 2
  %5432 = bitcast i32* %5431 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5432, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5412, i8* nonnull %5419, %struct.ds_base* nonnull %5428, i32 1, i32 undef) #15
  %5433 = load i8, i8* %534, align 2, !tbaa !12
  %5434 = load i8, i8* %764, align 1, !tbaa !12
  %5435 = zext i8 %5433 to i32
  %5436 = zext i8 %5434 to i32
  %5437 = add nuw nsw i32 %5416, %5435
  %5438 = add nuw nsw i32 %5437, %5436
  %5439 = and i32 %5438, 31
  %5440 = zext i32 %5439 to i64
  %5441 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5440
  %5442 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %423, i64 0, i64 0
  %5443 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %423, i64 0, i64 0, i32 0
  store i8* %516, i8** %5443, align 8, !tbaa !3
  %5444 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %423, i64 0, i64 0, i32 1
  store i64* null, i64** %5444, align 8, !tbaa !33
  %5445 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %423, i64 0, i64 0, i32 2
  %5446 = bitcast i32* %5445 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5446, align 8, !tbaa !11
  %5447 = bitcast i8* %5441 to i64*
  %5448 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5447, %struct.ds_base* nonnull %5442, i32 undef, i32 undef) #15
  %5449 = trunc i64 %5448 to i8
  store i8 %5449, i8* %764, align 1, !tbaa !12
  %5450 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %424, i64 0, i64 0
  %5451 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %424, i64 0, i64 0, i32 0
  store i8* %516, i8** %5451, align 8, !tbaa !3
  %5452 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %424, i64 0, i64 0, i32 1
  store i64* null, i64** %5452, align 8, !tbaa !33
  %5453 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %424, i64 0, i64 0, i32 2
  %5454 = bitcast i32* %5453 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5454, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5434, i8* nonnull %5441, %struct.ds_base* nonnull %5450, i32 1, i32 undef) #15
  %5455 = load i8, i8* %535, align 1, !tbaa !12
  %5456 = load i8, i8* %765, align 1, !tbaa !12
  %5457 = zext i8 %5455 to i32
  %5458 = zext i8 %5456 to i32
  %5459 = add nuw nsw i32 %5438, %5457
  %5460 = add nuw nsw i32 %5459, %5458
  %5461 = and i32 %5460, 31
  %5462 = zext i32 %5461 to i64
  %5463 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5462
  %5464 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %425, i64 0, i64 0
  %5465 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %425, i64 0, i64 0, i32 0
  store i8* %516, i8** %5465, align 8, !tbaa !3
  %5466 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %425, i64 0, i64 0, i32 1
  store i64* null, i64** %5466, align 8, !tbaa !33
  %5467 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %425, i64 0, i64 0, i32 2
  %5468 = bitcast i32* %5467 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5468, align 8, !tbaa !11
  %5469 = bitcast i8* %5463 to i64*
  %5470 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5469, %struct.ds_base* nonnull %5464, i32 undef, i32 undef) #15
  %5471 = trunc i64 %5470 to i8
  store i8 %5471, i8* %765, align 1, !tbaa !12
  %5472 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %426, i64 0, i64 0
  %5473 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %426, i64 0, i64 0, i32 0
  store i8* %516, i8** %5473, align 8, !tbaa !3
  %5474 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %426, i64 0, i64 0, i32 1
  store i64* null, i64** %5474, align 8, !tbaa !33
  %5475 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %426, i64 0, i64 0, i32 2
  %5476 = bitcast i32* %5475 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5476, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5456, i8* nonnull %5463, %struct.ds_base* nonnull %5472, i32 1, i32 undef) #15
  %5477 = load i8, i8* %536, align 4, !tbaa !12
  %5478 = load i8, i8* %766, align 1, !tbaa !12
  %5479 = zext i8 %5477 to i32
  %5480 = zext i8 %5478 to i32
  %5481 = add nuw nsw i32 %5460, %5479
  %5482 = add nuw nsw i32 %5481, %5480
  %5483 = and i32 %5482, 31
  %5484 = zext i32 %5483 to i64
  %5485 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5484
  %5486 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %427, i64 0, i64 0
  %5487 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %427, i64 0, i64 0, i32 0
  store i8* %516, i8** %5487, align 8, !tbaa !3
  %5488 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %427, i64 0, i64 0, i32 1
  store i64* null, i64** %5488, align 8, !tbaa !33
  %5489 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %427, i64 0, i64 0, i32 2
  %5490 = bitcast i32* %5489 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5490, align 8, !tbaa !11
  %5491 = bitcast i8* %5485 to i64*
  %5492 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5491, %struct.ds_base* nonnull %5486, i32 undef, i32 undef) #15
  %5493 = trunc i64 %5492 to i8
  store i8 %5493, i8* %766, align 1, !tbaa !12
  %5494 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %428, i64 0, i64 0
  %5495 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %428, i64 0, i64 0, i32 0
  store i8* %516, i8** %5495, align 8, !tbaa !3
  %5496 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %428, i64 0, i64 0, i32 1
  store i64* null, i64** %5496, align 8, !tbaa !33
  %5497 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %428, i64 0, i64 0, i32 2
  %5498 = bitcast i32* %5497 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5498, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5478, i8* nonnull %5485, %struct.ds_base* nonnull %5494, i32 1, i32 undef) #15
  %5499 = load i8, i8* %537, align 1, !tbaa !12
  %5500 = load i8, i8* %767, align 1, !tbaa !12
  %5501 = zext i8 %5499 to i32
  %5502 = zext i8 %5500 to i32
  %5503 = add nuw nsw i32 %5482, %5501
  %5504 = add nuw nsw i32 %5503, %5502
  %5505 = and i32 %5504, 31
  %5506 = zext i32 %5505 to i64
  %5507 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5506
  %5508 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %429, i64 0, i64 0
  %5509 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %429, i64 0, i64 0, i32 0
  store i8* %516, i8** %5509, align 8, !tbaa !3
  %5510 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %429, i64 0, i64 0, i32 1
  store i64* null, i64** %5510, align 8, !tbaa !33
  %5511 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %429, i64 0, i64 0, i32 2
  %5512 = bitcast i32* %5511 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5512, align 8, !tbaa !11
  %5513 = bitcast i8* %5507 to i64*
  %5514 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5513, %struct.ds_base* nonnull %5508, i32 undef, i32 undef) #15
  %5515 = trunc i64 %5514 to i8
  store i8 %5515, i8* %767, align 1, !tbaa !12
  %5516 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %430, i64 0, i64 0
  %5517 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %430, i64 0, i64 0, i32 0
  store i8* %516, i8** %5517, align 8, !tbaa !3
  %5518 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %430, i64 0, i64 0, i32 1
  store i64* null, i64** %5518, align 8, !tbaa !33
  %5519 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %430, i64 0, i64 0, i32 2
  %5520 = bitcast i32* %5519 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5520, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5500, i8* nonnull %5507, %struct.ds_base* nonnull %5516, i32 1, i32 undef) #15
  %5521 = load i8, i8* %538, align 2, !tbaa !12
  %5522 = load i8, i8* %768, align 1, !tbaa !12
  %5523 = zext i8 %5521 to i32
  %5524 = zext i8 %5522 to i32
  %5525 = add nuw nsw i32 %5504, %5523
  %5526 = add nuw nsw i32 %5525, %5524
  %5527 = and i32 %5526, 31
  %5528 = zext i32 %5527 to i64
  %5529 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5528
  %5530 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %431, i64 0, i64 0
  %5531 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %431, i64 0, i64 0, i32 0
  store i8* %516, i8** %5531, align 8, !tbaa !3
  %5532 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %431, i64 0, i64 0, i32 1
  store i64* null, i64** %5532, align 8, !tbaa !33
  %5533 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %431, i64 0, i64 0, i32 2
  %5534 = bitcast i32* %5533 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5534, align 8, !tbaa !11
  %5535 = bitcast i8* %5529 to i64*
  %5536 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5535, %struct.ds_base* nonnull %5530, i32 undef, i32 undef) #15
  %5537 = trunc i64 %5536 to i8
  store i8 %5537, i8* %768, align 1, !tbaa !12
  %5538 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %432, i64 0, i64 0
  %5539 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %432, i64 0, i64 0, i32 0
  store i8* %516, i8** %5539, align 8, !tbaa !3
  %5540 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %432, i64 0, i64 0, i32 1
  store i64* null, i64** %5540, align 8, !tbaa !33
  %5541 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %432, i64 0, i64 0, i32 2
  %5542 = bitcast i32* %5541 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5542, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5522, i8* nonnull %5529, %struct.ds_base* nonnull %5538, i32 1, i32 undef) #15
  %5543 = load i8, i8* %539, align 1, !tbaa !12
  %5544 = load i8, i8* %769, align 1, !tbaa !12
  %5545 = zext i8 %5543 to i32
  %5546 = zext i8 %5544 to i32
  %5547 = add nuw nsw i32 %5526, %5545
  %5548 = add nuw nsw i32 %5547, %5546
  %5549 = and i32 %5548, 31
  %5550 = zext i32 %5549 to i64
  %5551 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5550
  %5552 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %433, i64 0, i64 0
  %5553 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %433, i64 0, i64 0, i32 0
  store i8* %516, i8** %5553, align 8, !tbaa !3
  %5554 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %433, i64 0, i64 0, i32 1
  store i64* null, i64** %5554, align 8, !tbaa !33
  %5555 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %433, i64 0, i64 0, i32 2
  %5556 = bitcast i32* %5555 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5556, align 8, !tbaa !11
  %5557 = bitcast i8* %5551 to i64*
  %5558 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5557, %struct.ds_base* nonnull %5552, i32 undef, i32 undef) #15
  %5559 = trunc i64 %5558 to i8
  store i8 %5559, i8* %769, align 1, !tbaa !12
  %5560 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %434, i64 0, i64 0
  %5561 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %434, i64 0, i64 0, i32 0
  store i8* %516, i8** %5561, align 8, !tbaa !3
  %5562 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %434, i64 0, i64 0, i32 1
  store i64* null, i64** %5562, align 8, !tbaa !33
  %5563 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %434, i64 0, i64 0, i32 2
  %5564 = bitcast i32* %5563 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5564, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5544, i8* nonnull %5551, %struct.ds_base* nonnull %5560, i32 1, i32 undef) #15
  %5565 = load i8, i8* %540, align 8, !tbaa !12
  %5566 = load i8, i8* %770, align 1, !tbaa !12
  %5567 = zext i8 %5565 to i32
  %5568 = zext i8 %5566 to i32
  %5569 = add nuw nsw i32 %5548, %5567
  %5570 = add nuw nsw i32 %5569, %5568
  %5571 = and i32 %5570, 31
  %5572 = zext i32 %5571 to i64
  %5573 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5572
  %5574 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %435, i64 0, i64 0
  %5575 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %435, i64 0, i64 0, i32 0
  store i8* %516, i8** %5575, align 8, !tbaa !3
  %5576 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %435, i64 0, i64 0, i32 1
  store i64* null, i64** %5576, align 8, !tbaa !33
  %5577 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %435, i64 0, i64 0, i32 2
  %5578 = bitcast i32* %5577 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5578, align 8, !tbaa !11
  %5579 = bitcast i8* %5573 to i64*
  %5580 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5579, %struct.ds_base* nonnull %5574, i32 undef, i32 undef) #15
  %5581 = trunc i64 %5580 to i8
  store i8 %5581, i8* %770, align 1, !tbaa !12
  %5582 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %436, i64 0, i64 0
  %5583 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %436, i64 0, i64 0, i32 0
  store i8* %516, i8** %5583, align 8, !tbaa !3
  %5584 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %436, i64 0, i64 0, i32 1
  store i64* null, i64** %5584, align 8, !tbaa !33
  %5585 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %436, i64 0, i64 0, i32 2
  %5586 = bitcast i32* %5585 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5586, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5566, i8* nonnull %5573, %struct.ds_base* nonnull %5582, i32 1, i32 undef) #15
  %5587 = load i8, i8* %541, align 1, !tbaa !12
  %5588 = load i8, i8* %771, align 1, !tbaa !12
  %5589 = zext i8 %5587 to i32
  %5590 = zext i8 %5588 to i32
  %5591 = add nuw nsw i32 %5570, %5589
  %5592 = add nuw nsw i32 %5591, %5590
  %5593 = and i32 %5592, 31
  %5594 = zext i32 %5593 to i64
  %5595 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5594
  %5596 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %437, i64 0, i64 0
  %5597 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %437, i64 0, i64 0, i32 0
  store i8* %516, i8** %5597, align 8, !tbaa !3
  %5598 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %437, i64 0, i64 0, i32 1
  store i64* null, i64** %5598, align 8, !tbaa !33
  %5599 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %437, i64 0, i64 0, i32 2
  %5600 = bitcast i32* %5599 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5600, align 8, !tbaa !11
  %5601 = bitcast i8* %5595 to i64*
  %5602 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5601, %struct.ds_base* nonnull %5596, i32 undef, i32 undef) #15
  %5603 = trunc i64 %5602 to i8
  store i8 %5603, i8* %771, align 1, !tbaa !12
  %5604 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %438, i64 0, i64 0
  %5605 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %438, i64 0, i64 0, i32 0
  store i8* %516, i8** %5605, align 8, !tbaa !3
  %5606 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %438, i64 0, i64 0, i32 1
  store i64* null, i64** %5606, align 8, !tbaa !33
  %5607 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %438, i64 0, i64 0, i32 2
  %5608 = bitcast i32* %5607 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5608, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5588, i8* nonnull %5595, %struct.ds_base* nonnull %5604, i32 1, i32 undef) #15
  %5609 = load i8, i8* %542, align 2, !tbaa !12
  %5610 = load i8, i8* %772, align 1, !tbaa !12
  %5611 = zext i8 %5609 to i32
  %5612 = zext i8 %5610 to i32
  %5613 = add nuw nsw i32 %5592, %5611
  %5614 = add nuw nsw i32 %5613, %5612
  %5615 = and i32 %5614, 31
  %5616 = zext i32 %5615 to i64
  %5617 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5616
  %5618 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %439, i64 0, i64 0
  %5619 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %439, i64 0, i64 0, i32 0
  store i8* %516, i8** %5619, align 8, !tbaa !3
  %5620 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %439, i64 0, i64 0, i32 1
  store i64* null, i64** %5620, align 8, !tbaa !33
  %5621 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %439, i64 0, i64 0, i32 2
  %5622 = bitcast i32* %5621 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5622, align 8, !tbaa !11
  %5623 = bitcast i8* %5617 to i64*
  %5624 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5623, %struct.ds_base* nonnull %5618, i32 undef, i32 undef) #15
  %5625 = trunc i64 %5624 to i8
  store i8 %5625, i8* %772, align 1, !tbaa !12
  %5626 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %440, i64 0, i64 0
  %5627 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %440, i64 0, i64 0, i32 0
  store i8* %516, i8** %5627, align 8, !tbaa !3
  %5628 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %440, i64 0, i64 0, i32 1
  store i64* null, i64** %5628, align 8, !tbaa !33
  %5629 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %440, i64 0, i64 0, i32 2
  %5630 = bitcast i32* %5629 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5630, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5610, i8* nonnull %5617, %struct.ds_base* nonnull %5626, i32 1, i32 undef) #15
  %5631 = load i8, i8* %543, align 1, !tbaa !12
  %5632 = load i8, i8* %773, align 1, !tbaa !12
  %5633 = zext i8 %5631 to i32
  %5634 = zext i8 %5632 to i32
  %5635 = add nuw nsw i32 %5614, %5633
  %5636 = add nuw nsw i32 %5635, %5634
  %5637 = and i32 %5636, 31
  %5638 = zext i32 %5637 to i64
  %5639 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5638
  %5640 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %441, i64 0, i64 0
  %5641 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %441, i64 0, i64 0, i32 0
  store i8* %516, i8** %5641, align 8, !tbaa !3
  %5642 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %441, i64 0, i64 0, i32 1
  store i64* null, i64** %5642, align 8, !tbaa !33
  %5643 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %441, i64 0, i64 0, i32 2
  %5644 = bitcast i32* %5643 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5644, align 8, !tbaa !11
  %5645 = bitcast i8* %5639 to i64*
  %5646 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5645, %struct.ds_base* nonnull %5640, i32 undef, i32 undef) #15
  %5647 = trunc i64 %5646 to i8
  store i8 %5647, i8* %773, align 1, !tbaa !12
  %5648 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %442, i64 0, i64 0
  %5649 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %442, i64 0, i64 0, i32 0
  store i8* %516, i8** %5649, align 8, !tbaa !3
  %5650 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %442, i64 0, i64 0, i32 1
  store i64* null, i64** %5650, align 8, !tbaa !33
  %5651 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %442, i64 0, i64 0, i32 2
  %5652 = bitcast i32* %5651 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5652, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5632, i8* nonnull %5639, %struct.ds_base* nonnull %5648, i32 1, i32 undef) #15
  %5653 = load i8, i8* %544, align 4, !tbaa !12
  %5654 = load i8, i8* %774, align 1, !tbaa !12
  %5655 = zext i8 %5653 to i32
  %5656 = zext i8 %5654 to i32
  %5657 = add nuw nsw i32 %5636, %5655
  %5658 = add nuw nsw i32 %5657, %5656
  %5659 = and i32 %5658, 31
  %5660 = zext i32 %5659 to i64
  %5661 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5660
  %5662 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %443, i64 0, i64 0
  %5663 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %443, i64 0, i64 0, i32 0
  store i8* %516, i8** %5663, align 8, !tbaa !3
  %5664 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %443, i64 0, i64 0, i32 1
  store i64* null, i64** %5664, align 8, !tbaa !33
  %5665 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %443, i64 0, i64 0, i32 2
  %5666 = bitcast i32* %5665 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5666, align 8, !tbaa !11
  %5667 = bitcast i8* %5661 to i64*
  %5668 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5667, %struct.ds_base* nonnull %5662, i32 undef, i32 undef) #15
  %5669 = trunc i64 %5668 to i8
  store i8 %5669, i8* %774, align 1, !tbaa !12
  %5670 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %444, i64 0, i64 0
  %5671 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %444, i64 0, i64 0, i32 0
  store i8* %516, i8** %5671, align 8, !tbaa !3
  %5672 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %444, i64 0, i64 0, i32 1
  store i64* null, i64** %5672, align 8, !tbaa !33
  %5673 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %444, i64 0, i64 0, i32 2
  %5674 = bitcast i32* %5673 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5674, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5654, i8* nonnull %5661, %struct.ds_base* nonnull %5670, i32 1, i32 undef) #15
  %5675 = load i8, i8* %545, align 1, !tbaa !12
  %5676 = load i8, i8* %775, align 1, !tbaa !12
  %5677 = zext i8 %5675 to i32
  %5678 = zext i8 %5676 to i32
  %5679 = add nuw nsw i32 %5658, %5677
  %5680 = add nuw nsw i32 %5679, %5678
  %5681 = and i32 %5680, 31
  %5682 = zext i32 %5681 to i64
  %5683 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5682
  %5684 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %445, i64 0, i64 0
  %5685 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %445, i64 0, i64 0, i32 0
  store i8* %516, i8** %5685, align 8, !tbaa !3
  %5686 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %445, i64 0, i64 0, i32 1
  store i64* null, i64** %5686, align 8, !tbaa !33
  %5687 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %445, i64 0, i64 0, i32 2
  %5688 = bitcast i32* %5687 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5688, align 8, !tbaa !11
  %5689 = bitcast i8* %5683 to i64*
  %5690 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5689, %struct.ds_base* nonnull %5684, i32 undef, i32 undef) #15
  %5691 = trunc i64 %5690 to i8
  store i8 %5691, i8* %775, align 1, !tbaa !12
  %5692 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %446, i64 0, i64 0
  %5693 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %446, i64 0, i64 0, i32 0
  store i8* %516, i8** %5693, align 8, !tbaa !3
  %5694 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %446, i64 0, i64 0, i32 1
  store i64* null, i64** %5694, align 8, !tbaa !33
  %5695 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %446, i64 0, i64 0, i32 2
  %5696 = bitcast i32* %5695 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5696, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5676, i8* nonnull %5683, %struct.ds_base* nonnull %5692, i32 1, i32 undef) #15
  %5697 = load i8, i8* %546, align 2, !tbaa !12
  %5698 = load i8, i8* %776, align 1, !tbaa !12
  %5699 = zext i8 %5697 to i32
  %5700 = zext i8 %5698 to i32
  %5701 = add nuw nsw i32 %5680, %5699
  %5702 = add nuw nsw i32 %5701, %5700
  %5703 = and i32 %5702, 31
  %5704 = zext i32 %5703 to i64
  %5705 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5704
  %5706 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %447, i64 0, i64 0
  %5707 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %447, i64 0, i64 0, i32 0
  store i8* %516, i8** %5707, align 8, !tbaa !3
  %5708 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %447, i64 0, i64 0, i32 1
  store i64* null, i64** %5708, align 8, !tbaa !33
  %5709 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %447, i64 0, i64 0, i32 2
  %5710 = bitcast i32* %5709 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5710, align 8, !tbaa !11
  %5711 = bitcast i8* %5705 to i64*
  %5712 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5711, %struct.ds_base* nonnull %5706, i32 undef, i32 undef) #15
  %5713 = trunc i64 %5712 to i8
  store i8 %5713, i8* %776, align 1, !tbaa !12
  %5714 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %448, i64 0, i64 0
  %5715 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %448, i64 0, i64 0, i32 0
  store i8* %516, i8** %5715, align 8, !tbaa !3
  %5716 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %448, i64 0, i64 0, i32 1
  store i64* null, i64** %5716, align 8, !tbaa !33
  %5717 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %448, i64 0, i64 0, i32 2
  %5718 = bitcast i32* %5717 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5718, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5698, i8* nonnull %5705, %struct.ds_base* nonnull %5714, i32 1, i32 undef) #15
  %5719 = load i8, i8* %547, align 1, !tbaa !12
  %5720 = load i8, i8* %777, align 1, !tbaa !12
  %5721 = zext i8 %5719 to i32
  %5722 = zext i8 %5720 to i32
  %5723 = add nuw nsw i32 %5702, %5721
  %5724 = add nuw nsw i32 %5723, %5722
  %5725 = and i32 %5724, 31
  %5726 = zext i32 %5725 to i64
  %5727 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5726
  %5728 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %449, i64 0, i64 0
  %5729 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %449, i64 0, i64 0, i32 0
  store i8* %516, i8** %5729, align 8, !tbaa !3
  %5730 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %449, i64 0, i64 0, i32 1
  store i64* null, i64** %5730, align 8, !tbaa !33
  %5731 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %449, i64 0, i64 0, i32 2
  %5732 = bitcast i32* %5731 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5732, align 8, !tbaa !11
  %5733 = bitcast i8* %5727 to i64*
  %5734 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5733, %struct.ds_base* nonnull %5728, i32 undef, i32 undef) #15
  %5735 = trunc i64 %5734 to i8
  store i8 %5735, i8* %777, align 1, !tbaa !12
  %5736 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %450, i64 0, i64 0
  %5737 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %450, i64 0, i64 0, i32 0
  store i8* %516, i8** %5737, align 8, !tbaa !3
  %5738 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %450, i64 0, i64 0, i32 1
  store i64* null, i64** %5738, align 8, !tbaa !33
  %5739 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %450, i64 0, i64 0, i32 2
  %5740 = bitcast i32* %5739 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5740, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5720, i8* nonnull %5727, %struct.ds_base* nonnull %5736, i32 1, i32 undef) #15
  %5741 = load i8, i8* %515, align 16, !tbaa !12
  %5742 = load i8, i8* %779, align 1, !tbaa !12
  %5743 = zext i8 %5741 to i32
  %5744 = zext i8 %5742 to i32
  %5745 = add nuw nsw i32 %5724, %5743
  %5746 = add nuw nsw i32 %5745, %5744
  %5747 = and i32 %5746, 31
  %5748 = zext i32 %5747 to i64
  %5749 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5748
  %5750 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %451, i64 0, i64 0
  %5751 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %451, i64 0, i64 0, i32 0
  store i8* %516, i8** %5751, align 8, !tbaa !3
  %5752 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %451, i64 0, i64 0, i32 1
  store i64* null, i64** %5752, align 8, !tbaa !33
  %5753 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %451, i64 0, i64 0, i32 2
  %5754 = bitcast i32* %5753 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5754, align 8, !tbaa !11
  %5755 = bitcast i8* %5749 to i64*
  %5756 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5755, %struct.ds_base* nonnull %5750, i32 undef, i32 undef) #15
  %5757 = trunc i64 %5756 to i8
  store i8 %5757, i8* %779, align 1, !tbaa !12
  %5758 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %452, i64 0, i64 0
  %5759 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %452, i64 0, i64 0, i32 0
  store i8* %516, i8** %5759, align 8, !tbaa !3
  %5760 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %452, i64 0, i64 0, i32 1
  store i64* null, i64** %5760, align 8, !tbaa !33
  %5761 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %452, i64 0, i64 0, i32 2
  %5762 = bitcast i32* %5761 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5762, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5742, i8* nonnull %5749, %struct.ds_base* nonnull %5758, i32 1, i32 undef) #15
  %5763 = load i8, i8* %517, align 1, !tbaa !12
  %5764 = load i8, i8* %780, align 1, !tbaa !12
  %5765 = zext i8 %5763 to i32
  %5766 = zext i8 %5764 to i32
  %5767 = add nuw nsw i32 %5746, %5765
  %5768 = add nuw nsw i32 %5767, %5766
  %5769 = and i32 %5768, 31
  %5770 = zext i32 %5769 to i64
  %5771 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5770
  %5772 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %453, i64 0, i64 0
  %5773 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %453, i64 0, i64 0, i32 0
  store i8* %516, i8** %5773, align 8, !tbaa !3
  %5774 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %453, i64 0, i64 0, i32 1
  store i64* null, i64** %5774, align 8, !tbaa !33
  %5775 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %453, i64 0, i64 0, i32 2
  %5776 = bitcast i32* %5775 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5776, align 8, !tbaa !11
  %5777 = bitcast i8* %5771 to i64*
  %5778 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5777, %struct.ds_base* nonnull %5772, i32 undef, i32 undef) #15
  %5779 = trunc i64 %5778 to i8
  store i8 %5779, i8* %780, align 1, !tbaa !12
  %5780 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %454, i64 0, i64 0
  %5781 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %454, i64 0, i64 0, i32 0
  store i8* %516, i8** %5781, align 8, !tbaa !3
  %5782 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %454, i64 0, i64 0, i32 1
  store i64* null, i64** %5782, align 8, !tbaa !33
  %5783 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %454, i64 0, i64 0, i32 2
  %5784 = bitcast i32* %5783 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5784, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5764, i8* nonnull %5771, %struct.ds_base* nonnull %5780, i32 1, i32 undef) #15
  %5785 = load i8, i8* %518, align 2, !tbaa !12
  %5786 = load i8, i8* %781, align 1, !tbaa !12
  %5787 = zext i8 %5785 to i32
  %5788 = zext i8 %5786 to i32
  %5789 = add nuw nsw i32 %5768, %5787
  %5790 = add nuw nsw i32 %5789, %5788
  %5791 = and i32 %5790, 31
  %5792 = zext i32 %5791 to i64
  %5793 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5792
  %5794 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %455, i64 0, i64 0
  %5795 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %455, i64 0, i64 0, i32 0
  store i8* %516, i8** %5795, align 8, !tbaa !3
  %5796 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %455, i64 0, i64 0, i32 1
  store i64* null, i64** %5796, align 8, !tbaa !33
  %5797 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %455, i64 0, i64 0, i32 2
  %5798 = bitcast i32* %5797 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5798, align 8, !tbaa !11
  %5799 = bitcast i8* %5793 to i64*
  %5800 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5799, %struct.ds_base* nonnull %5794, i32 undef, i32 undef) #15
  %5801 = trunc i64 %5800 to i8
  store i8 %5801, i8* %781, align 1, !tbaa !12
  %5802 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %456, i64 0, i64 0
  %5803 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %456, i64 0, i64 0, i32 0
  store i8* %516, i8** %5803, align 8, !tbaa !3
  %5804 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %456, i64 0, i64 0, i32 1
  store i64* null, i64** %5804, align 8, !tbaa !33
  %5805 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %456, i64 0, i64 0, i32 2
  %5806 = bitcast i32* %5805 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5806, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5786, i8* nonnull %5793, %struct.ds_base* nonnull %5802, i32 1, i32 undef) #15
  %5807 = load i8, i8* %519, align 1, !tbaa !12
  %5808 = load i8, i8* %782, align 1, !tbaa !12
  %5809 = zext i8 %5807 to i32
  %5810 = zext i8 %5808 to i32
  %5811 = add nuw nsw i32 %5790, %5809
  %5812 = add nuw nsw i32 %5811, %5810
  %5813 = and i32 %5812, 31
  %5814 = zext i32 %5813 to i64
  %5815 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5814
  %5816 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %457, i64 0, i64 0
  %5817 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %457, i64 0, i64 0, i32 0
  store i8* %516, i8** %5817, align 8, !tbaa !3
  %5818 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %457, i64 0, i64 0, i32 1
  store i64* null, i64** %5818, align 8, !tbaa !33
  %5819 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %457, i64 0, i64 0, i32 2
  %5820 = bitcast i32* %5819 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5820, align 8, !tbaa !11
  %5821 = bitcast i8* %5815 to i64*
  %5822 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5821, %struct.ds_base* nonnull %5816, i32 undef, i32 undef) #15
  %5823 = trunc i64 %5822 to i8
  store i8 %5823, i8* %782, align 1, !tbaa !12
  %5824 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %458, i64 0, i64 0
  %5825 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %458, i64 0, i64 0, i32 0
  store i8* %516, i8** %5825, align 8, !tbaa !3
  %5826 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %458, i64 0, i64 0, i32 1
  store i64* null, i64** %5826, align 8, !tbaa !33
  %5827 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %458, i64 0, i64 0, i32 2
  %5828 = bitcast i32* %5827 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5828, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5808, i8* nonnull %5815, %struct.ds_base* nonnull %5824, i32 1, i32 undef) #15
  %5829 = load i8, i8* %520, align 4, !tbaa !12
  %5830 = load i8, i8* %783, align 1, !tbaa !12
  %5831 = zext i8 %5829 to i32
  %5832 = zext i8 %5830 to i32
  %5833 = add nuw nsw i32 %5812, %5831
  %5834 = add nuw nsw i32 %5833, %5832
  %5835 = and i32 %5834, 31
  %5836 = zext i32 %5835 to i64
  %5837 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5836
  %5838 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %459, i64 0, i64 0
  %5839 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %459, i64 0, i64 0, i32 0
  store i8* %516, i8** %5839, align 8, !tbaa !3
  %5840 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %459, i64 0, i64 0, i32 1
  store i64* null, i64** %5840, align 8, !tbaa !33
  %5841 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %459, i64 0, i64 0, i32 2
  %5842 = bitcast i32* %5841 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5842, align 8, !tbaa !11
  %5843 = bitcast i8* %5837 to i64*
  %5844 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5843, %struct.ds_base* nonnull %5838, i32 undef, i32 undef) #15
  %5845 = trunc i64 %5844 to i8
  store i8 %5845, i8* %783, align 1, !tbaa !12
  %5846 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %460, i64 0, i64 0
  %5847 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %460, i64 0, i64 0, i32 0
  store i8* %516, i8** %5847, align 8, !tbaa !3
  %5848 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %460, i64 0, i64 0, i32 1
  store i64* null, i64** %5848, align 8, !tbaa !33
  %5849 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %460, i64 0, i64 0, i32 2
  %5850 = bitcast i32* %5849 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5850, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5830, i8* nonnull %5837, %struct.ds_base* nonnull %5846, i32 1, i32 undef) #15
  %5851 = load i8, i8* %521, align 1, !tbaa !12
  %5852 = load i8, i8* %784, align 1, !tbaa !12
  %5853 = zext i8 %5851 to i32
  %5854 = zext i8 %5852 to i32
  %5855 = add nuw nsw i32 %5834, %5853
  %5856 = add nuw nsw i32 %5855, %5854
  %5857 = and i32 %5856, 31
  %5858 = zext i32 %5857 to i64
  %5859 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5858
  %5860 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %461, i64 0, i64 0
  %5861 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %461, i64 0, i64 0, i32 0
  store i8* %516, i8** %5861, align 8, !tbaa !3
  %5862 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %461, i64 0, i64 0, i32 1
  store i64* null, i64** %5862, align 8, !tbaa !33
  %5863 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %461, i64 0, i64 0, i32 2
  %5864 = bitcast i32* %5863 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5864, align 8, !tbaa !11
  %5865 = bitcast i8* %5859 to i64*
  %5866 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5865, %struct.ds_base* nonnull %5860, i32 undef, i32 undef) #15
  %5867 = trunc i64 %5866 to i8
  store i8 %5867, i8* %784, align 1, !tbaa !12
  %5868 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %462, i64 0, i64 0
  %5869 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %462, i64 0, i64 0, i32 0
  store i8* %516, i8** %5869, align 8, !tbaa !3
  %5870 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %462, i64 0, i64 0, i32 1
  store i64* null, i64** %5870, align 8, !tbaa !33
  %5871 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %462, i64 0, i64 0, i32 2
  %5872 = bitcast i32* %5871 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5872, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5852, i8* nonnull %5859, %struct.ds_base* nonnull %5868, i32 1, i32 undef) #15
  %5873 = load i8, i8* %522, align 2, !tbaa !12
  %5874 = load i8, i8* %785, align 1, !tbaa !12
  %5875 = zext i8 %5873 to i32
  %5876 = zext i8 %5874 to i32
  %5877 = add nuw nsw i32 %5856, %5875
  %5878 = add nuw nsw i32 %5877, %5876
  %5879 = and i32 %5878, 31
  %5880 = zext i32 %5879 to i64
  %5881 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5880
  %5882 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %463, i64 0, i64 0
  %5883 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %463, i64 0, i64 0, i32 0
  store i8* %516, i8** %5883, align 8, !tbaa !3
  %5884 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %463, i64 0, i64 0, i32 1
  store i64* null, i64** %5884, align 8, !tbaa !33
  %5885 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %463, i64 0, i64 0, i32 2
  %5886 = bitcast i32* %5885 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5886, align 8, !tbaa !11
  %5887 = bitcast i8* %5881 to i64*
  %5888 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5887, %struct.ds_base* nonnull %5882, i32 undef, i32 undef) #15
  %5889 = trunc i64 %5888 to i8
  store i8 %5889, i8* %785, align 1, !tbaa !12
  %5890 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %464, i64 0, i64 0
  %5891 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %464, i64 0, i64 0, i32 0
  store i8* %516, i8** %5891, align 8, !tbaa !3
  %5892 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %464, i64 0, i64 0, i32 1
  store i64* null, i64** %5892, align 8, !tbaa !33
  %5893 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %464, i64 0, i64 0, i32 2
  %5894 = bitcast i32* %5893 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5894, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5874, i8* nonnull %5881, %struct.ds_base* nonnull %5890, i32 1, i32 undef) #15
  %5895 = load i8, i8* %523, align 1, !tbaa !12
  %5896 = load i8, i8* %786, align 1, !tbaa !12
  %5897 = zext i8 %5895 to i32
  %5898 = zext i8 %5896 to i32
  %5899 = add nuw nsw i32 %5878, %5897
  %5900 = add nuw nsw i32 %5899, %5898
  %5901 = and i32 %5900, 31
  %5902 = zext i32 %5901 to i64
  %5903 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5902
  %5904 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %465, i64 0, i64 0
  %5905 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %465, i64 0, i64 0, i32 0
  store i8* %516, i8** %5905, align 8, !tbaa !3
  %5906 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %465, i64 0, i64 0, i32 1
  store i64* null, i64** %5906, align 8, !tbaa !33
  %5907 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %465, i64 0, i64 0, i32 2
  %5908 = bitcast i32* %5907 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5908, align 8, !tbaa !11
  %5909 = bitcast i8* %5903 to i64*
  %5910 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5909, %struct.ds_base* nonnull %5904, i32 undef, i32 undef) #15
  %5911 = trunc i64 %5910 to i8
  store i8 %5911, i8* %786, align 1, !tbaa !12
  %5912 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %466, i64 0, i64 0
  %5913 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %466, i64 0, i64 0, i32 0
  store i8* %516, i8** %5913, align 8, !tbaa !3
  %5914 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %466, i64 0, i64 0, i32 1
  store i64* null, i64** %5914, align 8, !tbaa !33
  %5915 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %466, i64 0, i64 0, i32 2
  %5916 = bitcast i32* %5915 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5916, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5896, i8* nonnull %5903, %struct.ds_base* nonnull %5912, i32 1, i32 undef) #15
  %5917 = load i8, i8* %524, align 8, !tbaa !12
  %5918 = load i8, i8* %787, align 1, !tbaa !12
  %5919 = zext i8 %5917 to i32
  %5920 = zext i8 %5918 to i32
  %5921 = add nuw nsw i32 %5900, %5919
  %5922 = add nuw nsw i32 %5921, %5920
  %5923 = and i32 %5922, 31
  %5924 = zext i32 %5923 to i64
  %5925 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5924
  %5926 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %467, i64 0, i64 0
  %5927 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %467, i64 0, i64 0, i32 0
  store i8* %516, i8** %5927, align 8, !tbaa !3
  %5928 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %467, i64 0, i64 0, i32 1
  store i64* null, i64** %5928, align 8, !tbaa !33
  %5929 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %467, i64 0, i64 0, i32 2
  %5930 = bitcast i32* %5929 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5930, align 8, !tbaa !11
  %5931 = bitcast i8* %5925 to i64*
  %5932 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5931, %struct.ds_base* nonnull %5926, i32 undef, i32 undef) #15
  %5933 = trunc i64 %5932 to i8
  store i8 %5933, i8* %787, align 1, !tbaa !12
  %5934 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %468, i64 0, i64 0
  %5935 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %468, i64 0, i64 0, i32 0
  store i8* %516, i8** %5935, align 8, !tbaa !3
  %5936 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %468, i64 0, i64 0, i32 1
  store i64* null, i64** %5936, align 8, !tbaa !33
  %5937 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %468, i64 0, i64 0, i32 2
  %5938 = bitcast i32* %5937 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5938, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5918, i8* nonnull %5925, %struct.ds_base* nonnull %5934, i32 1, i32 undef) #15
  %5939 = load i8, i8* %525, align 1, !tbaa !12
  %5940 = load i8, i8* %788, align 1, !tbaa !12
  %5941 = zext i8 %5939 to i32
  %5942 = zext i8 %5940 to i32
  %5943 = add nuw nsw i32 %5922, %5941
  %5944 = add nuw nsw i32 %5943, %5942
  %5945 = and i32 %5944, 31
  %5946 = zext i32 %5945 to i64
  %5947 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5946
  %5948 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %469, i64 0, i64 0
  %5949 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %469, i64 0, i64 0, i32 0
  store i8* %516, i8** %5949, align 8, !tbaa !3
  %5950 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %469, i64 0, i64 0, i32 1
  store i64* null, i64** %5950, align 8, !tbaa !33
  %5951 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %469, i64 0, i64 0, i32 2
  %5952 = bitcast i32* %5951 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5952, align 8, !tbaa !11
  %5953 = bitcast i8* %5947 to i64*
  %5954 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5953, %struct.ds_base* nonnull %5948, i32 undef, i32 undef) #15
  %5955 = trunc i64 %5954 to i8
  store i8 %5955, i8* %788, align 1, !tbaa !12
  %5956 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %470, i64 0, i64 0
  %5957 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %470, i64 0, i64 0, i32 0
  store i8* %516, i8** %5957, align 8, !tbaa !3
  %5958 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %470, i64 0, i64 0, i32 1
  store i64* null, i64** %5958, align 8, !tbaa !33
  %5959 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %470, i64 0, i64 0, i32 2
  %5960 = bitcast i32* %5959 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5960, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5940, i8* nonnull %5947, %struct.ds_base* nonnull %5956, i32 1, i32 undef) #15
  %5961 = load i8, i8* %526, align 2, !tbaa !12
  %5962 = load i8, i8* %789, align 1, !tbaa !12
  %5963 = zext i8 %5961 to i32
  %5964 = zext i8 %5962 to i32
  %5965 = add nuw nsw i32 %5944, %5963
  %5966 = add nuw nsw i32 %5965, %5964
  %5967 = and i32 %5966, 31
  %5968 = zext i32 %5967 to i64
  %5969 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5968
  %5970 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %471, i64 0, i64 0
  %5971 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %471, i64 0, i64 0, i32 0
  store i8* %516, i8** %5971, align 8, !tbaa !3
  %5972 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %471, i64 0, i64 0, i32 1
  store i64* null, i64** %5972, align 8, !tbaa !33
  %5973 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %471, i64 0, i64 0, i32 2
  %5974 = bitcast i32* %5973 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5974, align 8, !tbaa !11
  %5975 = bitcast i8* %5969 to i64*
  %5976 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5975, %struct.ds_base* nonnull %5970, i32 undef, i32 undef) #15
  %5977 = trunc i64 %5976 to i8
  store i8 %5977, i8* %789, align 1, !tbaa !12
  %5978 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %472, i64 0, i64 0
  %5979 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %472, i64 0, i64 0, i32 0
  store i8* %516, i8** %5979, align 8, !tbaa !3
  %5980 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %472, i64 0, i64 0, i32 1
  store i64* null, i64** %5980, align 8, !tbaa !33
  %5981 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %472, i64 0, i64 0, i32 2
  %5982 = bitcast i32* %5981 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5982, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5962, i8* nonnull %5969, %struct.ds_base* nonnull %5978, i32 1, i32 undef) #15
  %5983 = load i8, i8* %527, align 1, !tbaa !12
  %5984 = load i8, i8* %790, align 1, !tbaa !12
  %5985 = zext i8 %5983 to i32
  %5986 = zext i8 %5984 to i32
  %5987 = add nuw nsw i32 %5966, %5985
  %5988 = add nuw nsw i32 %5987, %5986
  %5989 = and i32 %5988, 31
  %5990 = zext i32 %5989 to i64
  %5991 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %5990
  %5992 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %473, i64 0, i64 0
  %5993 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %473, i64 0, i64 0, i32 0
  store i8* %516, i8** %5993, align 8, !tbaa !3
  %5994 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %473, i64 0, i64 0, i32 1
  store i64* null, i64** %5994, align 8, !tbaa !33
  %5995 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %473, i64 0, i64 0, i32 2
  %5996 = bitcast i32* %5995 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %5996, align 8, !tbaa !11
  %5997 = bitcast i8* %5991 to i64*
  %5998 = call i64 @uint64_t_secure_load_impl(i64* nonnull %5997, %struct.ds_base* nonnull %5992, i32 undef, i32 undef) #15
  %5999 = trunc i64 %5998 to i8
  store i8 %5999, i8* %790, align 1, !tbaa !12
  %6000 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %474, i64 0, i64 0
  %6001 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %474, i64 0, i64 0, i32 0
  store i8* %516, i8** %6001, align 8, !tbaa !3
  %6002 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %474, i64 0, i64 0, i32 1
  store i64* null, i64** %6002, align 8, !tbaa !33
  %6003 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %474, i64 0, i64 0, i32 2
  %6004 = bitcast i32* %6003 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6004, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %5984, i8* nonnull %5991, %struct.ds_base* nonnull %6000, i32 1, i32 undef) #15
  %6005 = load i8, i8* %528, align 4, !tbaa !12
  %6006 = load i8, i8* %791, align 1, !tbaa !12
  %6007 = zext i8 %6005 to i32
  %6008 = zext i8 %6006 to i32
  %6009 = add nuw nsw i32 %5988, %6007
  %6010 = add nuw nsw i32 %6009, %6008
  %6011 = and i32 %6010, 31
  %6012 = zext i32 %6011 to i64
  %6013 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %6012
  %6014 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %475, i64 0, i64 0
  %6015 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %475, i64 0, i64 0, i32 0
  store i8* %516, i8** %6015, align 8, !tbaa !3
  %6016 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %475, i64 0, i64 0, i32 1
  store i64* null, i64** %6016, align 8, !tbaa !33
  %6017 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %475, i64 0, i64 0, i32 2
  %6018 = bitcast i32* %6017 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6018, align 8, !tbaa !11
  %6019 = bitcast i8* %6013 to i64*
  %6020 = call i64 @uint64_t_secure_load_impl(i64* nonnull %6019, %struct.ds_base* nonnull %6014, i32 undef, i32 undef) #15
  %6021 = trunc i64 %6020 to i8
  store i8 %6021, i8* %791, align 1, !tbaa !12
  %6022 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %476, i64 0, i64 0
  %6023 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %476, i64 0, i64 0, i32 0
  store i8* %516, i8** %6023, align 8, !tbaa !3
  %6024 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %476, i64 0, i64 0, i32 1
  store i64* null, i64** %6024, align 8, !tbaa !33
  %6025 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %476, i64 0, i64 0, i32 2
  %6026 = bitcast i32* %6025 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6026, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %6006, i8* nonnull %6013, %struct.ds_base* nonnull %6022, i32 1, i32 undef) #15
  %6027 = load i8, i8* %529, align 1, !tbaa !12
  %6028 = load i8, i8* %792, align 1, !tbaa !12
  %6029 = zext i8 %6027 to i32
  %6030 = zext i8 %6028 to i32
  %6031 = add nuw nsw i32 %6010, %6029
  %6032 = add nuw nsw i32 %6031, %6030
  %6033 = and i32 %6032, 31
  %6034 = zext i32 %6033 to i64
  %6035 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %6034
  %6036 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %477, i64 0, i64 0
  %6037 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %477, i64 0, i64 0, i32 0
  store i8* %516, i8** %6037, align 8, !tbaa !3
  %6038 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %477, i64 0, i64 0, i32 1
  store i64* null, i64** %6038, align 8, !tbaa !33
  %6039 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %477, i64 0, i64 0, i32 2
  %6040 = bitcast i32* %6039 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6040, align 8, !tbaa !11
  %6041 = bitcast i8* %6035 to i64*
  %6042 = call i64 @uint64_t_secure_load_impl(i64* nonnull %6041, %struct.ds_base* nonnull %6036, i32 undef, i32 undef) #15
  %6043 = trunc i64 %6042 to i8
  store i8 %6043, i8* %792, align 1, !tbaa !12
  %6044 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %478, i64 0, i64 0
  %6045 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %478, i64 0, i64 0, i32 0
  store i8* %516, i8** %6045, align 8, !tbaa !3
  %6046 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %478, i64 0, i64 0, i32 1
  store i64* null, i64** %6046, align 8, !tbaa !33
  %6047 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %478, i64 0, i64 0, i32 2
  %6048 = bitcast i32* %6047 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6048, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %6028, i8* nonnull %6035, %struct.ds_base* nonnull %6044, i32 1, i32 undef) #15
  %6049 = load i8, i8* %530, align 2, !tbaa !12
  %6050 = load i8, i8* %793, align 1, !tbaa !12
  %6051 = zext i8 %6049 to i32
  %6052 = zext i8 %6050 to i32
  %6053 = add nuw nsw i32 %6032, %6051
  %6054 = add nuw nsw i32 %6053, %6052
  %6055 = and i32 %6054, 31
  %6056 = zext i32 %6055 to i64
  %6057 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %6056
  %6058 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %479, i64 0, i64 0
  %6059 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %479, i64 0, i64 0, i32 0
  store i8* %516, i8** %6059, align 8, !tbaa !3
  %6060 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %479, i64 0, i64 0, i32 1
  store i64* null, i64** %6060, align 8, !tbaa !33
  %6061 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %479, i64 0, i64 0, i32 2
  %6062 = bitcast i32* %6061 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6062, align 8, !tbaa !11
  %6063 = bitcast i8* %6057 to i64*
  %6064 = call i64 @uint64_t_secure_load_impl(i64* nonnull %6063, %struct.ds_base* nonnull %6058, i32 undef, i32 undef) #15
  %6065 = trunc i64 %6064 to i8
  store i8 %6065, i8* %793, align 1, !tbaa !12
  %6066 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %480, i64 0, i64 0
  %6067 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %480, i64 0, i64 0, i32 0
  store i8* %516, i8** %6067, align 8, !tbaa !3
  %6068 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %480, i64 0, i64 0, i32 1
  store i64* null, i64** %6068, align 8, !tbaa !33
  %6069 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %480, i64 0, i64 0, i32 2
  %6070 = bitcast i32* %6069 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6070, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %6050, i8* nonnull %6057, %struct.ds_base* nonnull %6066, i32 1, i32 undef) #15
  %6071 = load i8, i8* %531, align 1, !tbaa !12
  %6072 = load i8, i8* %794, align 1, !tbaa !12
  %6073 = zext i8 %6071 to i32
  %6074 = zext i8 %6072 to i32
  %6075 = add nuw nsw i32 %6054, %6073
  %6076 = add nuw nsw i32 %6075, %6074
  %6077 = and i32 %6076, 31
  %6078 = zext i32 %6077 to i64
  %6079 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %6078
  %6080 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %481, i64 0, i64 0
  %6081 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %481, i64 0, i64 0, i32 0
  store i8* %516, i8** %6081, align 8, !tbaa !3
  %6082 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %481, i64 0, i64 0, i32 1
  store i64* null, i64** %6082, align 8, !tbaa !33
  %6083 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %481, i64 0, i64 0, i32 2
  %6084 = bitcast i32* %6083 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6084, align 8, !tbaa !11
  %6085 = bitcast i8* %6079 to i64*
  %6086 = call i64 @uint64_t_secure_load_impl(i64* nonnull %6085, %struct.ds_base* nonnull %6080, i32 undef, i32 undef) #15
  %6087 = trunc i64 %6086 to i8
  store i8 %6087, i8* %794, align 1, !tbaa !12
  %6088 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %482, i64 0, i64 0
  %6089 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %482, i64 0, i64 0, i32 0
  store i8* %516, i8** %6089, align 8, !tbaa !3
  %6090 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %482, i64 0, i64 0, i32 1
  store i64* null, i64** %6090, align 8, !tbaa !33
  %6091 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %482, i64 0, i64 0, i32 2
  %6092 = bitcast i32* %6091 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6092, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %6072, i8* nonnull %6079, %struct.ds_base* nonnull %6088, i32 1, i32 undef) #15
  %6093 = load i8, i8* %532, align 16, !tbaa !12
  %6094 = load i8, i8* %795, align 1, !tbaa !12
  %6095 = zext i8 %6093 to i32
  %6096 = zext i8 %6094 to i32
  %6097 = add nuw nsw i32 %6076, %6095
  %6098 = add nuw nsw i32 %6097, %6096
  %6099 = and i32 %6098, 31
  %6100 = zext i32 %6099 to i64
  %6101 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %6100
  %6102 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %483, i64 0, i64 0
  %6103 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %483, i64 0, i64 0, i32 0
  store i8* %516, i8** %6103, align 8, !tbaa !3
  %6104 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %483, i64 0, i64 0, i32 1
  store i64* null, i64** %6104, align 8, !tbaa !33
  %6105 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %483, i64 0, i64 0, i32 2
  %6106 = bitcast i32* %6105 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6106, align 8, !tbaa !11
  %6107 = bitcast i8* %6101 to i64*
  %6108 = call i64 @uint64_t_secure_load_impl(i64* nonnull %6107, %struct.ds_base* nonnull %6102, i32 undef, i32 undef) #15
  %6109 = trunc i64 %6108 to i8
  store i8 %6109, i8* %795, align 1, !tbaa !12
  %6110 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %484, i64 0, i64 0
  %6111 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %484, i64 0, i64 0, i32 0
  store i8* %516, i8** %6111, align 8, !tbaa !3
  %6112 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %484, i64 0, i64 0, i32 1
  store i64* null, i64** %6112, align 8, !tbaa !33
  %6113 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %484, i64 0, i64 0, i32 2
  %6114 = bitcast i32* %6113 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6114, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %6094, i8* nonnull %6101, %struct.ds_base* nonnull %6110, i32 1, i32 undef) #15
  %6115 = load i8, i8* %533, align 1, !tbaa !12
  %6116 = load i8, i8* %796, align 1, !tbaa !12
  %6117 = zext i8 %6115 to i32
  %6118 = zext i8 %6116 to i32
  %6119 = add nuw nsw i32 %6098, %6117
  %6120 = add nuw nsw i32 %6119, %6118
  %6121 = and i32 %6120, 31
  %6122 = zext i32 %6121 to i64
  %6123 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %6122
  %6124 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %485, i64 0, i64 0
  %6125 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %485, i64 0, i64 0, i32 0
  store i8* %516, i8** %6125, align 8, !tbaa !3
  %6126 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %485, i64 0, i64 0, i32 1
  store i64* null, i64** %6126, align 8, !tbaa !33
  %6127 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %485, i64 0, i64 0, i32 2
  %6128 = bitcast i32* %6127 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6128, align 8, !tbaa !11
  %6129 = bitcast i8* %6123 to i64*
  %6130 = call i64 @uint64_t_secure_load_impl(i64* nonnull %6129, %struct.ds_base* nonnull %6124, i32 undef, i32 undef) #15
  %6131 = trunc i64 %6130 to i8
  store i8 %6131, i8* %796, align 1, !tbaa !12
  %6132 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %486, i64 0, i64 0
  %6133 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %486, i64 0, i64 0, i32 0
  store i8* %516, i8** %6133, align 8, !tbaa !3
  %6134 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %486, i64 0, i64 0, i32 1
  store i64* null, i64** %6134, align 8, !tbaa !33
  %6135 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %486, i64 0, i64 0, i32 2
  %6136 = bitcast i32* %6135 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6136, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %6116, i8* nonnull %6123, %struct.ds_base* nonnull %6132, i32 1, i32 undef) #15
  %6137 = load i8, i8* %534, align 2, !tbaa !12
  %6138 = load i8, i8* %797, align 1, !tbaa !12
  %6139 = zext i8 %6137 to i32
  %6140 = zext i8 %6138 to i32
  %6141 = add nuw nsw i32 %6120, %6139
  %6142 = add nuw nsw i32 %6141, %6140
  %6143 = and i32 %6142, 31
  %6144 = zext i32 %6143 to i64
  %6145 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %6144
  %6146 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %487, i64 0, i64 0
  %6147 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %487, i64 0, i64 0, i32 0
  store i8* %516, i8** %6147, align 8, !tbaa !3
  %6148 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %487, i64 0, i64 0, i32 1
  store i64* null, i64** %6148, align 8, !tbaa !33
  %6149 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %487, i64 0, i64 0, i32 2
  %6150 = bitcast i32* %6149 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6150, align 8, !tbaa !11
  %6151 = bitcast i8* %6145 to i64*
  %6152 = call i64 @uint64_t_secure_load_impl(i64* nonnull %6151, %struct.ds_base* nonnull %6146, i32 undef, i32 undef) #15
  %6153 = trunc i64 %6152 to i8
  store i8 %6153, i8* %797, align 1, !tbaa !12
  %6154 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %488, i64 0, i64 0
  %6155 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %488, i64 0, i64 0, i32 0
  store i8* %516, i8** %6155, align 8, !tbaa !3
  %6156 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %488, i64 0, i64 0, i32 1
  store i64* null, i64** %6156, align 8, !tbaa !33
  %6157 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %488, i64 0, i64 0, i32 2
  %6158 = bitcast i32* %6157 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6158, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %6138, i8* nonnull %6145, %struct.ds_base* nonnull %6154, i32 1, i32 undef) #15
  %6159 = load i8, i8* %535, align 1, !tbaa !12
  %6160 = load i8, i8* %798, align 1, !tbaa !12
  %6161 = zext i8 %6159 to i32
  %6162 = zext i8 %6160 to i32
  %6163 = add nuw nsw i32 %6142, %6161
  %6164 = add nuw nsw i32 %6163, %6162
  %6165 = and i32 %6164, 31
  %6166 = zext i32 %6165 to i64
  %6167 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %6166
  %6168 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %489, i64 0, i64 0
  %6169 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %489, i64 0, i64 0, i32 0
  store i8* %516, i8** %6169, align 8, !tbaa !3
  %6170 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %489, i64 0, i64 0, i32 1
  store i64* null, i64** %6170, align 8, !tbaa !33
  %6171 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %489, i64 0, i64 0, i32 2
  %6172 = bitcast i32* %6171 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6172, align 8, !tbaa !11
  %6173 = bitcast i8* %6167 to i64*
  %6174 = call i64 @uint64_t_secure_load_impl(i64* nonnull %6173, %struct.ds_base* nonnull %6168, i32 undef, i32 undef) #15
  %6175 = trunc i64 %6174 to i8
  store i8 %6175, i8* %798, align 1, !tbaa !12
  %6176 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %490, i64 0, i64 0
  %6177 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %490, i64 0, i64 0, i32 0
  store i8* %516, i8** %6177, align 8, !tbaa !3
  %6178 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %490, i64 0, i64 0, i32 1
  store i64* null, i64** %6178, align 8, !tbaa !33
  %6179 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %490, i64 0, i64 0, i32 2
  %6180 = bitcast i32* %6179 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6180, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %6160, i8* nonnull %6167, %struct.ds_base* nonnull %6176, i32 1, i32 undef) #15
  %6181 = load i8, i8* %536, align 4, !tbaa !12
  %6182 = load i8, i8* %799, align 1, !tbaa !12
  %6183 = zext i8 %6181 to i32
  %6184 = zext i8 %6182 to i32
  %6185 = add nuw nsw i32 %6164, %6183
  %6186 = add nuw nsw i32 %6185, %6184
  %6187 = and i32 %6186, 31
  %6188 = zext i32 %6187 to i64
  %6189 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %6188
  %6190 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %491, i64 0, i64 0
  %6191 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %491, i64 0, i64 0, i32 0
  store i8* %516, i8** %6191, align 8, !tbaa !3
  %6192 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %491, i64 0, i64 0, i32 1
  store i64* null, i64** %6192, align 8, !tbaa !33
  %6193 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %491, i64 0, i64 0, i32 2
  %6194 = bitcast i32* %6193 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6194, align 8, !tbaa !11
  %6195 = bitcast i8* %6189 to i64*
  %6196 = call i64 @uint64_t_secure_load_impl(i64* nonnull %6195, %struct.ds_base* nonnull %6190, i32 undef, i32 undef) #15
  %6197 = trunc i64 %6196 to i8
  store i8 %6197, i8* %799, align 1, !tbaa !12
  %6198 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %492, i64 0, i64 0
  %6199 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %492, i64 0, i64 0, i32 0
  store i8* %516, i8** %6199, align 8, !tbaa !3
  %6200 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %492, i64 0, i64 0, i32 1
  store i64* null, i64** %6200, align 8, !tbaa !33
  %6201 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %492, i64 0, i64 0, i32 2
  %6202 = bitcast i32* %6201 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6202, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %6182, i8* nonnull %6189, %struct.ds_base* nonnull %6198, i32 1, i32 undef) #15
  %6203 = load i8, i8* %537, align 1, !tbaa !12
  %6204 = load i8, i8* %800, align 1, !tbaa !12
  %6205 = zext i8 %6203 to i32
  %6206 = zext i8 %6204 to i32
  %6207 = add nuw nsw i32 %6186, %6205
  %6208 = add nuw nsw i32 %6207, %6206
  %6209 = and i32 %6208, 31
  %6210 = zext i32 %6209 to i64
  %6211 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %6210
  %6212 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %493, i64 0, i64 0
  %6213 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %493, i64 0, i64 0, i32 0
  store i8* %516, i8** %6213, align 8, !tbaa !3
  %6214 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %493, i64 0, i64 0, i32 1
  store i64* null, i64** %6214, align 8, !tbaa !33
  %6215 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %493, i64 0, i64 0, i32 2
  %6216 = bitcast i32* %6215 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6216, align 8, !tbaa !11
  %6217 = bitcast i8* %6211 to i64*
  %6218 = call i64 @uint64_t_secure_load_impl(i64* nonnull %6217, %struct.ds_base* nonnull %6212, i32 undef, i32 undef) #15
  %6219 = trunc i64 %6218 to i8
  store i8 %6219, i8* %800, align 1, !tbaa !12
  %6220 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %494, i64 0, i64 0
  %6221 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %494, i64 0, i64 0, i32 0
  store i8* %516, i8** %6221, align 8, !tbaa !3
  %6222 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %494, i64 0, i64 0, i32 1
  store i64* null, i64** %6222, align 8, !tbaa !33
  %6223 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %494, i64 0, i64 0, i32 2
  %6224 = bitcast i32* %6223 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6224, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %6204, i8* nonnull %6211, %struct.ds_base* nonnull %6220, i32 1, i32 undef) #15
  %6225 = load i8, i8* %538, align 2, !tbaa !12
  %6226 = load i8, i8* %801, align 1, !tbaa !12
  %6227 = zext i8 %6225 to i32
  %6228 = zext i8 %6226 to i32
  %6229 = add nuw nsw i32 %6208, %6227
  %6230 = add nuw nsw i32 %6229, %6228
  %6231 = and i32 %6230, 31
  %6232 = zext i32 %6231 to i64
  %6233 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %6232
  %6234 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %495, i64 0, i64 0
  %6235 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %495, i64 0, i64 0, i32 0
  store i8* %516, i8** %6235, align 8, !tbaa !3
  %6236 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %495, i64 0, i64 0, i32 1
  store i64* null, i64** %6236, align 8, !tbaa !33
  %6237 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %495, i64 0, i64 0, i32 2
  %6238 = bitcast i32* %6237 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6238, align 8, !tbaa !11
  %6239 = bitcast i8* %6233 to i64*
  %6240 = call i64 @uint64_t_secure_load_impl(i64* nonnull %6239, %struct.ds_base* nonnull %6234, i32 undef, i32 undef) #15
  %6241 = trunc i64 %6240 to i8
  store i8 %6241, i8* %801, align 1, !tbaa !12
  %6242 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %496, i64 0, i64 0
  %6243 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %496, i64 0, i64 0, i32 0
  store i8* %516, i8** %6243, align 8, !tbaa !3
  %6244 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %496, i64 0, i64 0, i32 1
  store i64* null, i64** %6244, align 8, !tbaa !33
  %6245 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %496, i64 0, i64 0, i32 2
  %6246 = bitcast i32* %6245 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6246, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %6226, i8* nonnull %6233, %struct.ds_base* nonnull %6242, i32 1, i32 undef) #15
  %6247 = load i8, i8* %539, align 1, !tbaa !12
  %6248 = load i8, i8* %802, align 1, !tbaa !12
  %6249 = zext i8 %6247 to i32
  %6250 = zext i8 %6248 to i32
  %6251 = add nuw nsw i32 %6230, %6249
  %6252 = add nuw nsw i32 %6251, %6250
  %6253 = and i32 %6252, 31
  %6254 = zext i32 %6253 to i64
  %6255 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %6254
  %6256 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %497, i64 0, i64 0
  %6257 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %497, i64 0, i64 0, i32 0
  store i8* %516, i8** %6257, align 8, !tbaa !3
  %6258 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %497, i64 0, i64 0, i32 1
  store i64* null, i64** %6258, align 8, !tbaa !33
  %6259 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %497, i64 0, i64 0, i32 2
  %6260 = bitcast i32* %6259 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6260, align 8, !tbaa !11
  %6261 = bitcast i8* %6255 to i64*
  %6262 = call i64 @uint64_t_secure_load_impl(i64* nonnull %6261, %struct.ds_base* nonnull %6256, i32 undef, i32 undef) #15
  %6263 = trunc i64 %6262 to i8
  store i8 %6263, i8* %802, align 1, !tbaa !12
  %6264 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %498, i64 0, i64 0
  %6265 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %498, i64 0, i64 0, i32 0
  store i8* %516, i8** %6265, align 8, !tbaa !3
  %6266 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %498, i64 0, i64 0, i32 1
  store i64* null, i64** %6266, align 8, !tbaa !33
  %6267 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %498, i64 0, i64 0, i32 2
  %6268 = bitcast i32* %6267 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6268, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %6248, i8* nonnull %6255, %struct.ds_base* nonnull %6264, i32 1, i32 undef) #15
  %6269 = load i8, i8* %540, align 8, !tbaa !12
  %6270 = load i8, i8* %803, align 1, !tbaa !12
  %6271 = zext i8 %6269 to i32
  %6272 = zext i8 %6270 to i32
  %6273 = add nuw nsw i32 %6252, %6271
  %6274 = add nuw nsw i32 %6273, %6272
  %6275 = and i32 %6274, 31
  %6276 = zext i32 %6275 to i64
  %6277 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %6276
  %6278 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %499, i64 0, i64 0
  %6279 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %499, i64 0, i64 0, i32 0
  store i8* %516, i8** %6279, align 8, !tbaa !3
  %6280 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %499, i64 0, i64 0, i32 1
  store i64* null, i64** %6280, align 8, !tbaa !33
  %6281 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %499, i64 0, i64 0, i32 2
  %6282 = bitcast i32* %6281 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6282, align 8, !tbaa !11
  %6283 = bitcast i8* %6277 to i64*
  %6284 = call i64 @uint64_t_secure_load_impl(i64* nonnull %6283, %struct.ds_base* nonnull %6278, i32 undef, i32 undef) #15
  %6285 = trunc i64 %6284 to i8
  store i8 %6285, i8* %803, align 1, !tbaa !12
  %6286 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %500, i64 0, i64 0
  %6287 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %500, i64 0, i64 0, i32 0
  store i8* %516, i8** %6287, align 8, !tbaa !3
  %6288 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %500, i64 0, i64 0, i32 1
  store i64* null, i64** %6288, align 8, !tbaa !33
  %6289 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %500, i64 0, i64 0, i32 2
  %6290 = bitcast i32* %6289 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6290, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %6270, i8* nonnull %6277, %struct.ds_base* nonnull %6286, i32 1, i32 undef) #15
  %6291 = load i8, i8* %541, align 1, !tbaa !12
  %6292 = load i8, i8* %804, align 1, !tbaa !12
  %6293 = zext i8 %6291 to i32
  %6294 = zext i8 %6292 to i32
  %6295 = add nuw nsw i32 %6274, %6293
  %6296 = add nuw nsw i32 %6295, %6294
  %6297 = and i32 %6296, 31
  %6298 = zext i32 %6297 to i64
  %6299 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %6298
  %6300 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %501, i64 0, i64 0
  %6301 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %501, i64 0, i64 0, i32 0
  store i8* %516, i8** %6301, align 8, !tbaa !3
  %6302 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %501, i64 0, i64 0, i32 1
  store i64* null, i64** %6302, align 8, !tbaa !33
  %6303 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %501, i64 0, i64 0, i32 2
  %6304 = bitcast i32* %6303 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6304, align 8, !tbaa !11
  %6305 = bitcast i8* %6299 to i64*
  %6306 = call i64 @uint64_t_secure_load_impl(i64* nonnull %6305, %struct.ds_base* nonnull %6300, i32 undef, i32 undef) #15
  %6307 = trunc i64 %6306 to i8
  store i8 %6307, i8* %804, align 1, !tbaa !12
  %6308 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %502, i64 0, i64 0
  %6309 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %502, i64 0, i64 0, i32 0
  store i8* %516, i8** %6309, align 8, !tbaa !3
  %6310 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %502, i64 0, i64 0, i32 1
  store i64* null, i64** %6310, align 8, !tbaa !33
  %6311 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %502, i64 0, i64 0, i32 2
  %6312 = bitcast i32* %6311 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6312, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %6292, i8* nonnull %6299, %struct.ds_base* nonnull %6308, i32 1, i32 undef) #15
  %6313 = load i8, i8* %542, align 2, !tbaa !12
  %6314 = load i8, i8* %805, align 1, !tbaa !12
  %6315 = zext i8 %6313 to i32
  %6316 = zext i8 %6314 to i32
  %6317 = add nuw nsw i32 %6296, %6315
  %6318 = add nuw nsw i32 %6317, %6316
  %6319 = and i32 %6318, 31
  %6320 = zext i32 %6319 to i64
  %6321 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %6320
  %6322 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %503, i64 0, i64 0
  %6323 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %503, i64 0, i64 0, i32 0
  store i8* %516, i8** %6323, align 8, !tbaa !3
  %6324 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %503, i64 0, i64 0, i32 1
  store i64* null, i64** %6324, align 8, !tbaa !33
  %6325 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %503, i64 0, i64 0, i32 2
  %6326 = bitcast i32* %6325 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6326, align 8, !tbaa !11
  %6327 = bitcast i8* %6321 to i64*
  %6328 = call i64 @uint64_t_secure_load_impl(i64* nonnull %6327, %struct.ds_base* nonnull %6322, i32 undef, i32 undef) #15
  %6329 = trunc i64 %6328 to i8
  store i8 %6329, i8* %805, align 1, !tbaa !12
  %6330 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %504, i64 0, i64 0
  %6331 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %504, i64 0, i64 0, i32 0
  store i8* %516, i8** %6331, align 8, !tbaa !3
  %6332 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %504, i64 0, i64 0, i32 1
  store i64* null, i64** %6332, align 8, !tbaa !33
  %6333 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %504, i64 0, i64 0, i32 2
  %6334 = bitcast i32* %6333 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6334, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %6314, i8* nonnull %6321, %struct.ds_base* nonnull %6330, i32 1, i32 undef) #15
  %6335 = load i8, i8* %543, align 1, !tbaa !12
  %6336 = load i8, i8* %806, align 1, !tbaa !12
  %6337 = zext i8 %6335 to i32
  %6338 = zext i8 %6336 to i32
  %6339 = add nuw nsw i32 %6318, %6337
  %6340 = add nuw nsw i32 %6339, %6338
  %6341 = and i32 %6340, 31
  %6342 = zext i32 %6341 to i64
  %6343 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %6342
  %6344 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %505, i64 0, i64 0
  %6345 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %505, i64 0, i64 0, i32 0
  store i8* %516, i8** %6345, align 8, !tbaa !3
  %6346 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %505, i64 0, i64 0, i32 1
  store i64* null, i64** %6346, align 8, !tbaa !33
  %6347 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %505, i64 0, i64 0, i32 2
  %6348 = bitcast i32* %6347 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6348, align 8, !tbaa !11
  %6349 = bitcast i8* %6343 to i64*
  %6350 = call i64 @uint64_t_secure_load_impl(i64* nonnull %6349, %struct.ds_base* nonnull %6344, i32 undef, i32 undef) #15
  %6351 = trunc i64 %6350 to i8
  store i8 %6351, i8* %806, align 1, !tbaa !12
  %6352 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %506, i64 0, i64 0
  %6353 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %506, i64 0, i64 0, i32 0
  store i8* %516, i8** %6353, align 8, !tbaa !3
  %6354 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %506, i64 0, i64 0, i32 1
  store i64* null, i64** %6354, align 8, !tbaa !33
  %6355 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %506, i64 0, i64 0, i32 2
  %6356 = bitcast i32* %6355 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6356, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %6336, i8* nonnull %6343, %struct.ds_base* nonnull %6352, i32 1, i32 undef) #15
  %6357 = load i8, i8* %544, align 4, !tbaa !12
  %6358 = load i8, i8* %807, align 1, !tbaa !12
  %6359 = zext i8 %6357 to i32
  %6360 = zext i8 %6358 to i32
  %6361 = add nuw nsw i32 %6340, %6359
  %6362 = add nuw nsw i32 %6361, %6360
  %6363 = and i32 %6362, 31
  %6364 = zext i32 %6363 to i64
  %6365 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %6364
  %6366 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %507, i64 0, i64 0
  %6367 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %507, i64 0, i64 0, i32 0
  store i8* %516, i8** %6367, align 8, !tbaa !3
  %6368 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %507, i64 0, i64 0, i32 1
  store i64* null, i64** %6368, align 8, !tbaa !33
  %6369 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %507, i64 0, i64 0, i32 2
  %6370 = bitcast i32* %6369 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6370, align 8, !tbaa !11
  %6371 = bitcast i8* %6365 to i64*
  %6372 = call i64 @uint64_t_secure_load_impl(i64* nonnull %6371, %struct.ds_base* nonnull %6366, i32 undef, i32 undef) #15
  %6373 = trunc i64 %6372 to i8
  store i8 %6373, i8* %807, align 1, !tbaa !12
  %6374 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %508, i64 0, i64 0
  %6375 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %508, i64 0, i64 0, i32 0
  store i8* %516, i8** %6375, align 8, !tbaa !3
  %6376 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %508, i64 0, i64 0, i32 1
  store i64* null, i64** %6376, align 8, !tbaa !33
  %6377 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %508, i64 0, i64 0, i32 2
  %6378 = bitcast i32* %6377 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6378, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %6358, i8* nonnull %6365, %struct.ds_base* nonnull %6374, i32 1, i32 undef) #15
  %6379 = load i8, i8* %545, align 1, !tbaa !12
  %6380 = load i8, i8* %808, align 1, !tbaa !12
  %6381 = zext i8 %6379 to i32
  %6382 = zext i8 %6380 to i32
  %6383 = add nuw nsw i32 %6362, %6381
  %6384 = add nuw nsw i32 %6383, %6382
  %6385 = and i32 %6384, 31
  %6386 = zext i32 %6385 to i64
  %6387 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %6386
  %6388 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %509, i64 0, i64 0
  %6389 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %509, i64 0, i64 0, i32 0
  store i8* %516, i8** %6389, align 8, !tbaa !3
  %6390 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %509, i64 0, i64 0, i32 1
  store i64* null, i64** %6390, align 8, !tbaa !33
  %6391 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %509, i64 0, i64 0, i32 2
  %6392 = bitcast i32* %6391 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6392, align 8, !tbaa !11
  %6393 = bitcast i8* %6387 to i64*
  %6394 = call i64 @uint64_t_secure_load_impl(i64* nonnull %6393, %struct.ds_base* nonnull %6388, i32 undef, i32 undef) #15
  %6395 = trunc i64 %6394 to i8
  store i8 %6395, i8* %808, align 1, !tbaa !12
  %6396 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %510, i64 0, i64 0
  %6397 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %510, i64 0, i64 0, i32 0
  store i8* %516, i8** %6397, align 8, !tbaa !3
  %6398 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %510, i64 0, i64 0, i32 1
  store i64* null, i64** %6398, align 8, !tbaa !33
  %6399 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %510, i64 0, i64 0, i32 2
  %6400 = bitcast i32* %6399 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6400, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %6380, i8* nonnull %6387, %struct.ds_base* nonnull %6396, i32 1, i32 undef) #15
  %6401 = load i8, i8* %546, align 2, !tbaa !12
  %6402 = load i8, i8* %809, align 1, !tbaa !12
  %6403 = zext i8 %6401 to i32
  %6404 = zext i8 %6402 to i32
  %6405 = add nuw nsw i32 %6384, %6403
  %6406 = add nuw nsw i32 %6405, %6404
  %6407 = and i32 %6406, 31
  %6408 = zext i32 %6407 to i64
  %6409 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %6408
  %6410 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %511, i64 0, i64 0
  %6411 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %511, i64 0, i64 0, i32 0
  store i8* %516, i8** %6411, align 8, !tbaa !3
  %6412 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %511, i64 0, i64 0, i32 1
  store i64* null, i64** %6412, align 8, !tbaa !33
  %6413 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %511, i64 0, i64 0, i32 2
  %6414 = bitcast i32* %6413 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6414, align 8, !tbaa !11
  %6415 = bitcast i8* %6409 to i64*
  %6416 = call i64 @uint64_t_secure_load_impl(i64* nonnull %6415, %struct.ds_base* nonnull %6410, i32 undef, i32 undef) #15
  %6417 = trunc i64 %6416 to i8
  store i8 %6417, i8* %809, align 1, !tbaa !12
  %6418 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %512, i64 0, i64 0
  %6419 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %512, i64 0, i64 0, i32 0
  store i8* %516, i8** %6419, align 8, !tbaa !3
  %6420 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %512, i64 0, i64 0, i32 1
  store i64* null, i64** %6420, align 8, !tbaa !33
  %6421 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %512, i64 0, i64 0, i32 2
  %6422 = bitcast i32* %6421 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6422, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %6402, i8* nonnull %6409, %struct.ds_base* nonnull %6418, i32 1, i32 undef) #15
  %6423 = load i8, i8* %547, align 1, !tbaa !12
  %6424 = load i8, i8* %810, align 1, !tbaa !12
  %6425 = zext i8 %6423 to i32
  %6426 = zext i8 %6424 to i32
  %6427 = add nuw nsw i32 %6406, %6425
  %6428 = add nuw nsw i32 %6427, %6426
  %6429 = and i32 %6428, 31
  %6430 = zext i32 %6429 to i64
  %6431 = getelementptr inbounds %struct.anonymous, %struct.anonymous* %2, i64 0, i32 0, i64 %6430
  %6432 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %513, i64 0, i64 0
  %6433 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %513, i64 0, i64 0, i32 0
  store i8* %516, i8** %6433, align 8, !tbaa !3
  %6434 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %513, i64 0, i64 0, i32 1
  store i64* null, i64** %6434, align 8, !tbaa !33
  %6435 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %513, i64 0, i64 0, i32 2
  %6436 = bitcast i32* %6435 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6436, align 8, !tbaa !11
  %6437 = bitcast i8* %6431 to i64*
  %6438 = call i64 @uint64_t_secure_load_impl(i64* nonnull %6437, %struct.ds_base* nonnull %6432, i32 undef, i32 undef) #15
  %6439 = trunc i64 %6438 to i8
  store i8 %6439, i8* %810, align 1, !tbaa !12
  %6440 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %514, i64 0, i64 0
  %6441 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %514, i64 0, i64 0, i32 0
  store i8* %516, i8** %6441, align 8, !tbaa !3
  %6442 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %514, i64 0, i64 0, i32 1
  store i64* null, i64** %6442, align 8, !tbaa !33
  %6443 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %514, i64 0, i64 0, i32 2
  %6444 = bitcast i32* %6443 to <4 x i32>*
  store <4 x i32> <i32 32, i32 0, i32 0, i32 31>, <4 x i32>* %6444, align 8, !tbaa !11
  call void @uint8_t_secure_store_impl(i8 zeroext %6424, i8* nonnull %6431, %struct.ds_base* nonnull %6440, i32 1, i32 undef) #15
  %6445 = call i64 @write(i32 1, i8* nonnull %516, i64 258) #15
  call void @llvm.lifetime.end.p0i8(i64 258, i8* nonnull %516) #15
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %515) #15
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nofree
declare dso_local noundef i64 @read(i32 noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree
declare dso_local noundef i64 @write(i32 noundef, i8* nocapture noundef readonly, i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree nosync nounwind readnone
declare <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8>, <32 x i8>, <32 x i8>) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #3 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #4 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #6 = { mustprogress nofree norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #7 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #8 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #10 = { nofree norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #12 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #13 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cascadelake" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512er,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-clzero,-enqcmd,-fma4,-gfni,-hreset,-kl,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-prefetchwt1,-ptwrite,-rdpid,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-widekl,-xop" }
attributes #14 = { nofree nosync nounwind readnone }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"Ubuntu clang version 13.0.1-++20211223012851+9468a0f95385-1~exp1~20211223012902.41"}
!3 = !{!4, !5, i64 0}
!4 = !{!"ds_base", !5, i64 0, !5, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!4, !8, i64 24}
!10 = !{!4, !8, i64 28}
!11 = !{!8, !8, i64 0}
!12 = !{!6, !6, i64 0}
!13 = distinct !{!13, !14, !15, !16}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.vectorize.width", i32 1}
!16 = !{!"llvm.loop.interleave.count", i32 1}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = !{!22, !22, i64 0}
!22 = !{!"long", !6, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"short", !6, i64 0}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = !{!4, !5, i64 8}
