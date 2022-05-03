iter slower
; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local i64 @uint64_t_secure_load_impl(i64* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #3 {
  %5 = ptrtoint i64* %0 to i64
  %6 = insertelement <4 x i64> undef, i64 %5, i32 0
  %7 = shufflevector <4 x i64> %6, <4 x i64> poison, <4 x i32> zeroinitializer
  %8 = and i64 %5, 7
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = zext i32 %2 to i64
  br label %20

12:                                               ; preds = %47, %4
  %13 = phi <4 x i64> [ zeroinitializer, %4 ], [ %48, %47 ]
  %14 = shufflevector <4 x i64> %13, <4 x i64> undef, <2 x i32> <i32 0, i32 1>
  %15 = shufflevector <4 x i64> %13, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %16 = add <2 x i64> %15, %14
  %17 = shufflevector <2 x i64> %16, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>
  %18 = add <2 x i64> %17, %16
  %19 = extractelement <2 x i64> %18, i32 0
  ret i64 %19

20:                                               ; preds = %10, %47
  %21 = phi i64 [ 0, %10 ], [ %49, %47 ]
  %22 = phi <4 x i64> [ zeroinitializer, %10 ], [ %48, %47 ]
  %23 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %21, i32 0
  %24 = load i8*, i8** %23, align 8, !tbaa !3
  %25 = ptrtoint i8* %24 to i64
  %26 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %21, i32 4
  %27 = load i32, i32* %26, align 8, !tbaa !10
  %28 = zext i32 %27 to i64
  %29 = add i64 %28, %25
  %30 = and i64 %29, -8
  %31 = or i64 %30, %8
  %32 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %21, i32 5
  %33 = inttoptr i64 %31 to i8*
  %34 = load i32, i32* %32, align 4, !tbaa !11
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %24, i64 %35
  %37 = icmp ult i8* %36, %33
  br i1 %37, label %47, label %38

38:                                               ; preds = %20
  %39 = insertelement <4 x i64> undef, i64 %31, i32 0
  %40 = insertelement <2 x i64> poison, i64 %31, i32 0
  %41 = shufflevector <2 x i64> %40, <2 x i64> poison, <2 x i32> zeroinitializer
  %42 = add <2 x i64> %41, <i64 8, i64 16>
  %43 = shufflevector <2 x i64> %42, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %44 = shufflevector <4 x i64> %39, <4 x i64> %43, <4 x i32> <i32 0, i32 4, i32 5, i32 undef>
  %45 = add i64 %31, 24
  %46 = insertelement <4 x i64> %44, i64 %45, i32 3
  br label %51

47:                                               ; preds = %51, %20
  %48 = phi <4 x i64> [ %22, %20 ], [ %58, %51 ]
  %49 = add nuw nsw i64 %21, 1
  %50 = icmp eq i64 %49, %11
  br i1 %50, label %12, label %20, !llvm.loop !12

51:                                               ; preds = %38, %51
  %52 = phi <4 x i64> [ %58, %51 ], [ %22, %38 ]
  %53 = phi i8* [ %60, %51 ], [ %33, %38 ]
  %54 = phi <4 x i64> [ %59, %51 ], [ %46, %38 ]
  %55 = icmp eq <4 x i64> %54, %7
  %56 = bitcast i8* %53 to <4 x i64>*
  %57 = load <4 x i64>, <4 x i64>* %56, align 1, !tbaa !14
  %58 = select <4 x i1> %55, <4 x i64> %57, <4 x i64> %52
  %59 = add <4 x i64> %54, <i64 32, i64 32, i64 32, i64 32>
  %60 = getelementptr inbounds i8, i8* %53, i64 32
  %61 = icmp ugt i8* %60, %36
  br i1 %61, label %47, label %51, !llvm.loop !15
}
