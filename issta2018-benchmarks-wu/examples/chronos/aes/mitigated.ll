j faster
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

12:                                               ; preds = %73, %4
  %13 = phi <4 x i64> [ zeroinitializer, %4 ], [ %74, %73 ]
  %14 = shufflevector <4 x i64> %13, <4 x i64> undef, <2 x i32> <i32 0, i32 1>
  %15 = shufflevector <4 x i64> %13, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %16 = add <2 x i64> %15, %14
  %17 = shufflevector <2 x i64> %16, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>
  %18 = add <2 x i64> %17, %16
  %19 = extractelement <2 x i64> %18, i32 0
  ret i64 %19

20:                                               ; preds = %10, %73
  %21 = phi i64 [ 0, %10 ], [ %75, %73 ]
  %22 = phi <4 x i64> [ zeroinitializer, %10 ], [ %74, %73 ]
  %23 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %21, i32 0
  %24 = load i8*, i8** %23, align 8, !tbaa !3
  %25 = ptrtoint i8* %24 to i64
  %26 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %21, i32 4
  %27 = load i32, i32* %26, align 8, !tbaa !10
  %28 = zext i32 %27 to i64
  %29 = add i64 %28, %25
  %30 = and i64 %29, -8
  %31 = or i64 %30, %8
  %32 = insertelement <2 x i64> poison, i64 %31, i32 0
  %33 = shufflevector <2 x i64> %32, <2 x i64> poison, <2 x i32> zeroinitializer
  %34 = add <2 x i64> %33, <i64 8, i64 16>
  %35 = add i64 %31, 24
  %36 = insertelement <4 x i64> undef, i64 %31, i32 0
  %37 = shufflevector <2 x i64> %34, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %38 = shufflevector <4 x i64> %36, <4 x i64> %37, <4 x i32> <i32 0, i32 4, i32 5, i32 undef>
  %39 = insertelement <4 x i64> %38, i64 %35, i32 3
  %40 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %21, i32 5
  %41 = load i32, i32* %40, align 4, !tbaa !11
  %42 = sub i32 %41, %27
  %43 = lshr i32 %42, 5
  %44 = inttoptr i64 %31 to i8*
  %45 = add nuw nsw i32 %43, 1
  %46 = zext i32 %45 to i64
  %47 = add nsw i64 %46, -1
  %48 = and i64 %46, 7
  %49 = icmp ult i64 %47, 7
  br i1 %49, label %52, label %50

50:                                               ; preds = %20
  %51 = and i64 %46, 268435448
  br label %77

52:                                               ; preds = %77, %20
  %53 = phi <4 x i64> [ undef, %20 ], [ %143, %77 ]
  %54 = phi i64 [ 0, %20 ], [ %145, %77 ]
  %55 = phi <4 x i64> [ %22, %20 ], [ %143, %77 ]
  %56 = phi <4 x i64> [ %39, %20 ], [ %144, %77 ]
  %57 = icmp eq i64 %48, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %52, %58
  %59 = phi i64 [ %70, %58 ], [ %54, %52 ]
  %60 = phi <4 x i64> [ %68, %58 ], [ %55, %52 ]
  %61 = phi <4 x i64> [ %69, %58 ], [ %56, %52 ]
  %62 = phi i64 [ %71, %58 ], [ %48, %52 ]
  %63 = icmp eq <4 x i64> %61, %7
  %64 = shl i64 %59, 5
  %65 = getelementptr inbounds i8, i8* %44, i64 %64
  %66 = bitcast i8* %65 to <4 x i64>*
  %67 = load <4 x i64>, <4 x i64>* %66, align 1, !tbaa !12
  %68 = select <4 x i1> %63, <4 x i64> %67, <4 x i64> %60
  %69 = add <4 x i64> %61, <i64 32, i64 32, i64 32, i64 32>
  %70 = add nuw nsw i64 %59, 1
  %71 = add i64 %62, -1
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %58, !llvm.loop !13

73:                                               ; preds = %58, %52
  %74 = phi <4 x i64> [ %53, %52 ], [ %68, %58 ]
  %75 = add nuw nsw i64 %21, 1
  %76 = icmp eq i64 %75, %11
  br i1 %76, label %12, label %20, !llvm.loop !15

77:                                               ; preds = %77, %50
  %78 = phi i64 [ 0, %50 ], [ %145, %77 ]
  %79 = phi <4 x i64> [ %22, %50 ], [ %143, %77 ]
  %80 = phi <4 x i64> [ %39, %50 ], [ %144, %77 ]
  %81 = phi i64 [ %51, %50 ], [ %146, %77 ]
  %82 = icmp eq <4 x i64> %80, %7
  %83 = shl i64 %78, 5
  %84 = getelementptr inbounds i8, i8* %44, i64 %83
  %85 = bitcast i8* %84 to <4 x i64>*
  %86 = load <4 x i64>, <4 x i64>* %85, align 1, !tbaa !12
  %87 = select <4 x i1> %82, <4 x i64> %86, <4 x i64> %79
  %88 = add <4 x i64> %80, <i64 32, i64 32, i64 32, i64 32>
  %89 = icmp eq <4 x i64> %88, %7
  %90 = shl i64 %78, 5
  %91 = or i64 %90, 32
  %92 = getelementptr inbounds i8, i8* %44, i64 %91
  %93 = bitcast i8* %92 to <4 x i64>*
  %94 = load <4 x i64>, <4 x i64>* %93, align 1, !tbaa !12
  %95 = select <4 x i1> %89, <4 x i64> %94, <4 x i64> %87
  %96 = add <4 x i64> %80, <i64 64, i64 64, i64 64, i64 64>
  %97 = icmp eq <4 x i64> %96, %7
  %98 = shl i64 %78, 5
  %99 = or i64 %98, 64
  %100 = getelementptr inbounds i8, i8* %44, i64 %99
  %101 = bitcast i8* %100 to <4 x i64>*
  %102 = load <4 x i64>, <4 x i64>* %101, align 1, !tbaa !12
  %103 = select <4 x i1> %97, <4 x i64> %102, <4 x i64> %95
  %104 = add <4 x i64> %80, <i64 96, i64 96, i64 96, i64 96>
  %105 = icmp eq <4 x i64> %104, %7
  %106 = shl i64 %78, 5
  %107 = or i64 %106, 96
  %108 = getelementptr inbounds i8, i8* %44, i64 %107
  %109 = bitcast i8* %108 to <4 x i64>*
  %110 = load <4 x i64>, <4 x i64>* %109, align 1, !tbaa !12
  %111 = select <4 x i1> %105, <4 x i64> %110, <4 x i64> %103
  %112 = add <4 x i64> %80, <i64 128, i64 128, i64 128, i64 128>
  %113 = icmp eq <4 x i64> %112, %7
  %114 = shl i64 %78, 5
  %115 = or i64 %114, 128
  %116 = getelementptr inbounds i8, i8* %44, i64 %115
  %117 = bitcast i8* %116 to <4 x i64>*
  %118 = load <4 x i64>, <4 x i64>* %117, align 1, !tbaa !12
  %119 = select <4 x i1> %113, <4 x i64> %118, <4 x i64> %111
  %120 = add <4 x i64> %80, <i64 160, i64 160, i64 160, i64 160>
  %121 = icmp eq <4 x i64> %120, %7
  %122 = shl i64 %78, 5
  %123 = or i64 %122, 160
  %124 = getelementptr inbounds i8, i8* %44, i64 %123
  %125 = bitcast i8* %124 to <4 x i64>*
  %126 = load <4 x i64>, <4 x i64>* %125, align 1, !tbaa !12
  %127 = select <4 x i1> %121, <4 x i64> %126, <4 x i64> %119
  %128 = add <4 x i64> %80, <i64 192, i64 192, i64 192, i64 192>
  %129 = icmp eq <4 x i64> %128, %7
  %130 = shl i64 %78, 5
  %131 = or i64 %130, 192
  %132 = getelementptr inbounds i8, i8* %44, i64 %131
  %133 = bitcast i8* %132 to <4 x i64>*
  %134 = load <4 x i64>, <4 x i64>* %133, align 1, !tbaa !12
  %135 = select <4 x i1> %129, <4 x i64> %134, <4 x i64> %127
  %136 = add <4 x i64> %80, <i64 224, i64 224, i64 224, i64 224>
  %137 = icmp eq <4 x i64> %136, %7
  %138 = shl i64 %78, 5
  %139 = or i64 %138, 224
  %140 = getelementptr inbounds i8, i8* %44, i64 %139
  %141 = bitcast i8* %140 to <4 x i64>*
  %142 = load <4 x i64>, <4 x i64>* %141, align 1, !tbaa !12
  %143 = select <4 x i1> %137, <4 x i64> %142, <4 x i64> %135
  %144 = add <4 x i64> %80, <i64 256, i64 256, i64 256, i64 256>
  %145 = add nuw nsw i64 %78, 8
  %146 = add i64 %81, -8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %52, label %77, !llvm.loop !17
}
