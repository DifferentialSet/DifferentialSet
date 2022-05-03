; ModuleID = 'mitigated.c'
source_filename = "mitigated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ds_base = type { i8*, i64*, i32, i8, i32, i32 }

@in_key = internal global [32 x i8] zeroinitializer, align 16
@in = internal global [8 x i8] zeroinitializer, align 8
@bigbyte = internal global [24 x i32] [i32 8388608, i32 4194304, i32 2097152, i32 1048576, i32 524288, i32 262144, i32 131072, i32 65536, i32 32768, i32 16384, i32 8192, i32 4096, i32 2048, i32 1024, i32 512, i32 256, i32 128, i32 64, i32 32, i32 16, i32 8, i32 4, i32 2, i32 1], align 16
@KnL = internal unnamed_addr global [32 x i32] zeroinitializer, align 16
@SP7 = internal global [64 x i32] [i32 2097152, i32 69206018, i32 67110914, i32 0, i32 2048, i32 67110914, i32 2099202, i32 69208064, i32 69208066, i32 2097152, i32 0, i32 67108866, i32 2, i32 67108864, i32 69206018, i32 2050, i32 67110912, i32 2099202, i32 2097154, i32 67110912, i32 67108866, i32 69206016, i32 69208064, i32 2097154, i32 69206016, i32 2048, i32 2050, i32 69208066, i32 2099200, i32 2, i32 67108864, i32 2099200, i32 67108864, i32 2099200, i32 2097152, i32 67110914, i32 67110914, i32 69206018, i32 69206018, i32 2, i32 2097154, i32 67108864, i32 67110912, i32 2097152, i32 69208064, i32 2050, i32 2099202, i32 69208064, i32 2050, i32 67108866, i32 69208066, i32 69206016, i32 2099200, i32 0, i32 2, i32 69208066, i32 0, i32 2099202, i32 69206016, i32 2048, i32 67108866, i32 67110912, i32 2048, i32 2097154], align 16
@SP5 = internal global [64 x i32] [i32 256, i32 34078976, i32 34078720, i32 1107296512, i32 524288, i32 256, i32 1073741824, i32 34078720, i32 1074266368, i32 524288, i32 33554688, i32 1074266368, i32 1107296512, i32 1107820544, i32 524544, i32 1073741824, i32 33554432, i32 1074266112, i32 1074266112, i32 0, i32 1073742080, i32 1107820800, i32 1107820800, i32 33554688, i32 1107820544, i32 1073742080, i32 0, i32 1107296256, i32 34078976, i32 33554432, i32 1107296256, i32 524544, i32 524288, i32 1107296512, i32 256, i32 33554432, i32 1073741824, i32 34078720, i32 1107296512, i32 1074266368, i32 33554688, i32 1073741824, i32 1107820544, i32 34078976, i32 1074266368, i32 256, i32 33554432, i32 1107820544, i32 1107820800, i32 524544, i32 1107296256, i32 1107820800, i32 34078720, i32 0, i32 1074266112, i32 1107296256, i32 524544, i32 33554688, i32 1073742080, i32 524288, i32 0, i32 1074266112, i32 34078976, i32 1073742080], align 16
@SP3 = internal global [64 x i32] [i32 520, i32 134349312, i32 0, i32 134348808, i32 134218240, i32 0, i32 131592, i32 134218240, i32 131080, i32 134217736, i32 134217736, i32 131072, i32 134349320, i32 131080, i32 134348800, i32 520, i32 134217728, i32 8, i32 134349312, i32 512, i32 131584, i32 134348800, i32 134348808, i32 131592, i32 134218248, i32 131584, i32 131072, i32 134218248, i32 8, i32 134349320, i32 512, i32 134217728, i32 134349312, i32 134217728, i32 131080, i32 520, i32 131072, i32 134349312, i32 134218240, i32 0, i32 512, i32 131080, i32 134349320, i32 134218240, i32 134217736, i32 512, i32 0, i32 134348808, i32 134218248, i32 131072, i32 134217728, i32 134349320, i32 8, i32 131592, i32 131584, i32 134217736, i32 134348800, i32 134218248, i32 520, i32 134348800, i32 131592, i32 8, i32 134348808, i32 131584], align 16
@SP1 = internal global [64 x i32] [i32 16843776, i32 0, i32 65536, i32 16843780, i32 16842756, i32 66564, i32 4, i32 65536, i32 1024, i32 16843776, i32 16843780, i32 1024, i32 16778244, i32 16842756, i32 16777216, i32 4, i32 1028, i32 16778240, i32 16778240, i32 66560, i32 66560, i32 16842752, i32 16842752, i32 16778244, i32 65540, i32 16777220, i32 16777220, i32 65540, i32 0, i32 1028, i32 66564, i32 16777216, i32 65536, i32 16843780, i32 4, i32 16842752, i32 16843776, i32 16777216, i32 16777216, i32 1024, i32 16842756, i32 65536, i32 66560, i32 16777220, i32 1024, i32 4, i32 16778244, i32 66564, i32 16843780, i32 65540, i32 16842752, i32 16778244, i32 16777220, i32 1028, i32 66564, i32 16843776, i32 1028, i32 16778240, i32 16778240, i32 0, i32 65540, i32 66560, i32 0, i32 16842756], align 16
@SP8 = internal global [64 x i32] [i32 268439616, i32 4096, i32 262144, i32 268701760, i32 268435456, i32 268439616, i32 64, i32 268435456, i32 262208, i32 268697600, i32 268701760, i32 266240, i32 268701696, i32 266304, i32 4096, i32 64, i32 268697600, i32 268435520, i32 268439552, i32 4160, i32 266240, i32 262208, i32 268697664, i32 268701696, i32 4160, i32 0, i32 0, i32 268697664, i32 268435520, i32 268439552, i32 266304, i32 262144, i32 266304, i32 262144, i32 268701696, i32 4096, i32 64, i32 268697664, i32 4096, i32 266304, i32 268439552, i32 64, i32 268435520, i32 268697600, i32 268697664, i32 268435456, i32 262144, i32 268439616, i32 0, i32 268701760, i32 262208, i32 268435520, i32 268697600, i32 268439552, i32 268439616, i32 0, i32 268701760, i32 266240, i32 266240, i32 4160, i32 4160, i32 262208, i32 268435456, i32 268701696], align 16
@SP6 = internal global [64 x i32] [i32 536870928, i32 541065216, i32 16384, i32 541081616, i32 541065216, i32 16, i32 541081616, i32 4194304, i32 536887296, i32 4210704, i32 4194304, i32 536870928, i32 4194320, i32 536887296, i32 536870912, i32 16400, i32 0, i32 4194320, i32 536887312, i32 16384, i32 4210688, i32 536887312, i32 16, i32 541065232, i32 541065232, i32 0, i32 4210704, i32 541081600, i32 16400, i32 4210688, i32 541081600, i32 536870912, i32 536887296, i32 16, i32 541065232, i32 4210688, i32 541081616, i32 4194304, i32 16400, i32 536870928, i32 4194304, i32 536887296, i32 536870912, i32 16400, i32 536870928, i32 541081616, i32 4210688, i32 541065216, i32 4210704, i32 541081600, i32 0, i32 541065232, i32 16, i32 16384, i32 541065216, i32 4210704, i32 16384, i32 4194320, i32 536887312, i32 0, i32 541081600, i32 536870912, i32 4194320, i32 536887312], align 16
@SP4 = internal global [64 x i32] [i32 8396801, i32 8321, i32 8321, i32 128, i32 8396928, i32 8388737, i32 8388609, i32 8193, i32 0, i32 8396800, i32 8396800, i32 8396929, i32 129, i32 0, i32 8388736, i32 8388609, i32 1, i32 8192, i32 8388608, i32 8396801, i32 128, i32 8388608, i32 8193, i32 8320, i32 8388737, i32 1, i32 8320, i32 8388736, i32 8192, i32 8396928, i32 8396929, i32 129, i32 8388736, i32 8388609, i32 8396800, i32 8396929, i32 129, i32 0, i32 0, i32 8396800, i32 8320, i32 8388736, i32 8388737, i32 1, i32 8396801, i32 8321, i32 8321, i32 128, i32 8396929, i32 129, i32 1, i32 8192, i32 8388609, i32 8193, i32 8396928, i32 8388737, i32 8193, i32 8320, i32 8388608, i32 8396801, i32 128, i32 8388608, i32 8192, i32 8396928], align 16
@SP2 = internal global [64 x i32] [i32 -2146402272, i32 -2147450880, i32 32768, i32 1081376, i32 1048576, i32 32, i32 -2146435040, i32 -2147450848, i32 -2147483616, i32 -2146402272, i32 -2146402304, i32 -2147483648, i32 -2147450880, i32 1048576, i32 32, i32 -2146435040, i32 1081344, i32 1048608, i32 -2147450848, i32 0, i32 -2147483648, i32 32768, i32 1081376, i32 -2146435072, i32 1048608, i32 -2147483616, i32 0, i32 1081344, i32 32800, i32 -2146402304, i32 -2146435072, i32 32800, i32 0, i32 1081376, i32 -2146435040, i32 1048576, i32 -2147450848, i32 -2146435072, i32 -2146402304, i32 32768, i32 -2146435072, i32 -2147450880, i32 32, i32 -2146402272, i32 1081376, i32 32, i32 32768, i32 -2147483648, i32 32800, i32 -2146402304, i32 1048576, i32 -2147483616, i32 1048608, i32 -2147450848, i32 -2147483616, i32 1048608, i32 1081344, i32 0, i32 -2147450880, i32 32800, i32 -2147483648, i32 -2146435040, i32 -2146402272, i32 1081344], align 16
@constinit.6919 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([64 x i32]* @SP7 to i8*), i64* null, i32 64, i8 1, i32 0, i32 252 }], align 8
@constinit.6920 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([64 x i32]* @SP5 to i8*), i64* null, i32 64, i8 1, i32 0, i32 252 }], align 8
@constinit.6921 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([64 x i32]* @SP3 to i8*), i64* null, i32 64, i8 1, i32 0, i32 252 }], align 8
@constinit.6922 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([64 x i32]* @SP1 to i8*), i64* null, i32 64, i8 1, i32 0, i32 252 }], align 8
@constinit.6923 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([64 x i32]* @SP8 to i8*), i64* null, i32 64, i8 1, i32 0, i32 252 }], align 8
@constinit.6924 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([64 x i32]* @SP6 to i8*), i64* null, i32 64, i8 1, i32 0, i32 252 }], align 8
@constinit.6925 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([64 x i32]* @SP4 to i8*), i64* null, i32 64, i8 1, i32 0, i32 252 }], align 8
@constinit.6926 = private unnamed_addr constant [1 x %struct.ds_base] [%struct.ds_base { i8* bitcast ([64 x i32]* @SP2 to i8*), i64* null, i32 64, i8 1, i32 0, i32 252 }], align 8
@out = internal global [8 x i8] zeroinitializer, align 1

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

12:                                               ; preds = %248, %4
  %13 = phi i8 [ 1, %4 ], [ %249, %248 ]
  %14 = phi <4 x i64> [ zeroinitializer, %4 ], [ %250, %248 ]
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

27:                                               ; preds = %10, %248
  %28 = phi i64 [ 0, %10 ], [ %251, %248 ]
  %29 = phi <4 x i64> [ zeroinitializer, %10 ], [ %250, %248 ]
  %30 = phi i8 [ 1, %10 ], [ %249, %248 ]
  %31 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %28, i32 3
  %32 = load i8, i8* %31, align 4, !tbaa !3, !range !10
  %33 = icmp eq i8 %32, 0
  %34 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %28, i32 0
  %35 = load i8*, i8** %34, align 8, !tbaa !11
  %36 = ptrtoint i8* %35 to i64
  br i1 %33, label %111, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %28, i32 4
  %39 = load i32, i32* %38, align 8, !tbaa !12
  %40 = zext i32 %39 to i64
  %41 = add i64 %40, %36
  %42 = and i64 %41, -32
  %43 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %28, i32 5
  %44 = load i32, i32* %43, align 4, !tbaa !13
  %45 = zext i32 %44 to i64
  %46 = add i64 %45, %36
  %47 = sub i64 %46, %42
  %48 = lshr i64 %47, 5
  %49 = trunc i64 %48 to i32
  %50 = add i32 %49, 1
  %51 = inttoptr i64 %42 to i8*
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %248, label %53

53:                                               ; preds = %37
  %54 = insertelement <4 x i64> undef, i64 %42, i32 0
  %55 = or i64 %42, 8
  %56 = insertelement <4 x i64> %54, i64 %55, i32 1
  %57 = insertelement <2 x i64> poison, i64 %42, i32 0
  %58 = shufflevector <2 x i64> %57, <2 x i64> poison, <2 x i32> zeroinitializer
  %59 = or <2 x i64> %58, <i64 16, i64 24>
  %60 = shufflevector <2 x i64> %59, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %61 = shufflevector <4 x i64> %56, <4 x i64> %60, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %62 = zext i32 %50 to i64
  %63 = add nsw i64 %62, -1
  %64 = and i64 %62, 3
  %65 = icmp ult i64 %63, 3
  br i1 %65, label %226, label %66

66:                                               ; preds = %53
  %67 = and i64 %62, 4294967292
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi i64 [ 0, %66 ], [ %108, %68 ]
  %70 = phi <4 x i64> [ %29, %66 ], [ %106, %68 ]
  %71 = phi <4 x i64> [ %61, %66 ], [ %107, %68 ]
  %72 = phi i64 [ %67, %66 ], [ %109, %68 ]
  %73 = shl i64 %69, 5
  %74 = and i64 %73, 4294967168
  %75 = getelementptr inbounds i8, i8* %51, i64 %74
  %76 = icmp eq <4 x i64> %71, %8
  %77 = bitcast i8* %75 to <4 x i64>*
  %78 = load <4 x i64>, <4 x i64>* %77, align 32, !tbaa !14
  %79 = select <4 x i1> %76, <4 x i64> %78, <4 x i64> %70
  %80 = add <4 x i64> %71, <i64 32, i64 32, i64 32, i64 32>
  %81 = shl i64 %69, 5
  %82 = and i64 %81, 4294967168
  %83 = or i64 %82, 32
  %84 = getelementptr inbounds i8, i8* %51, i64 %83
  %85 = icmp eq <4 x i64> %80, %8
  %86 = bitcast i8* %84 to <4 x i64>*
  %87 = load <4 x i64>, <4 x i64>* %86, align 32, !tbaa !14
  %88 = select <4 x i1> %85, <4 x i64> %87, <4 x i64> %79
  %89 = add <4 x i64> %71, <i64 64, i64 64, i64 64, i64 64>
  %90 = shl i64 %69, 5
  %91 = and i64 %90, 4294967168
  %92 = or i64 %91, 64
  %93 = getelementptr inbounds i8, i8* %51, i64 %92
  %94 = icmp eq <4 x i64> %89, %8
  %95 = bitcast i8* %93 to <4 x i64>*
  %96 = load <4 x i64>, <4 x i64>* %95, align 32, !tbaa !14
  %97 = select <4 x i1> %94, <4 x i64> %96, <4 x i64> %88
  %98 = add <4 x i64> %71, <i64 96, i64 96, i64 96, i64 96>
  %99 = shl i64 %69, 5
  %100 = and i64 %99, 4294967168
  %101 = or i64 %100, 96
  %102 = getelementptr inbounds i8, i8* %51, i64 %101
  %103 = icmp eq <4 x i64> %98, %8
  %104 = bitcast i8* %102 to <4 x i64>*
  %105 = load <4 x i64>, <4 x i64>* %104, align 32, !tbaa !14
  %106 = select <4 x i1> %103, <4 x i64> %105, <4 x i64> %97
  %107 = add <4 x i64> %71, <i64 128, i64 128, i64 128, i64 128>
  %108 = add nuw nsw i64 %69, 4
  %109 = add i64 %72, -4
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %226, label %68, !llvm.loop !15

111:                                              ; preds = %27
  %112 = sub i64 %5, %36
  %113 = insertelement <4 x i64> undef, i64 %112, i32 0
  %114 = shufflevector <4 x i64> %113, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %115

115:                                              ; preds = %111, %152
  %116 = phi i64 [ 0, %111 ], [ %154, %152 ]
  %117 = phi <4 x i64> [ %29, %111 ], [ %153, %152 ]
  %118 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %116, i32 2
  %119 = load i32, i32* %118, align 8, !tbaa !17
  %120 = icmp ult i32 %119, 4
  br i1 %120, label %152, label %121

121:                                              ; preds = %115
  %122 = lshr i32 %119, 2
  %123 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %116, i32 0
  %124 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i64 %116, i32 1
  %125 = load i64*, i64** %124, align 8, !tbaa !18
  %126 = load i8*, i8** %123, align 8, !tbaa !11
  %127 = zext i32 %122 to i64
  %128 = add nsw i64 %127, -1
  %129 = and i64 %127, 7
  %130 = icmp ult i64 %128, 7
  br i1 %130, label %133, label %131

131:                                              ; preds = %121
  %132 = and i64 %127, 1073741816
  br label %156

133:                                              ; preds = %156, %121
  %134 = phi <4 x i64> [ undef, %121 ], [ %222, %156 ]
  %135 = phi i64 [ 0, %121 ], [ %223, %156 ]
  %136 = phi <4 x i64> [ %117, %121 ], [ %222, %156 ]
  %137 = icmp eq i64 %129, 0
  br i1 %137, label %152, label %138

138:                                              ; preds = %133, %138
  %139 = phi i64 [ %149, %138 ], [ %135, %133 ]
  %140 = phi <4 x i64> [ %148, %138 ], [ %136, %133 ]
  %141 = phi i64 [ %150, %138 ], [ %129, %133 ]
  %142 = shl i64 %139, 2
  %143 = getelementptr inbounds i64, i64* %125, i64 %142
  %144 = bitcast i64* %143 to <4 x i64>*
  %145 = load <4 x i64>, <4 x i64>* %144, align 1, !tbaa !14
  %146 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %126, <4 x i64> %145, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %147 = icmp eq <4 x i64> %145, %114
  %148 = select <4 x i1> %147, <4 x i64> %146, <4 x i64> %140
  %149 = add nuw nsw i64 %139, 1
  %150 = add i64 %141, -1
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %138, !llvm.loop !19

152:                                              ; preds = %133, %138, %115
  %153 = phi <4 x i64> [ %117, %115 ], [ %134, %133 ], [ %148, %138 ]
  %154 = add nuw nsw i64 %116, 1
  %155 = icmp eq i64 %154, %11
  br i1 %155, label %248, label %115, !llvm.loop !21

156:                                              ; preds = %156, %131
  %157 = phi i64 [ 0, %131 ], [ %223, %156 ]
  %158 = phi <4 x i64> [ %117, %131 ], [ %222, %156 ]
  %159 = phi i64 [ %132, %131 ], [ %224, %156 ]
  %160 = shl i64 %157, 2
  %161 = getelementptr inbounds i64, i64* %125, i64 %160
  %162 = bitcast i64* %161 to <4 x i64>*
  %163 = load <4 x i64>, <4 x i64>* %162, align 1, !tbaa !14
  %164 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %126, <4 x i64> %163, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %165 = icmp eq <4 x i64> %163, %114
  %166 = select <4 x i1> %165, <4 x i64> %164, <4 x i64> %158
  %167 = shl i64 %157, 2
  %168 = or i64 %167, 4
  %169 = getelementptr inbounds i64, i64* %125, i64 %168
  %170 = bitcast i64* %169 to <4 x i64>*
  %171 = load <4 x i64>, <4 x i64>* %170, align 1, !tbaa !14
  %172 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %126, <4 x i64> %171, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %173 = icmp eq <4 x i64> %171, %114
  %174 = select <4 x i1> %173, <4 x i64> %172, <4 x i64> %166
  %175 = shl i64 %157, 2
  %176 = or i64 %175, 8
  %177 = getelementptr inbounds i64, i64* %125, i64 %176
  %178 = bitcast i64* %177 to <4 x i64>*
  %179 = load <4 x i64>, <4 x i64>* %178, align 1, !tbaa !14
  %180 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %126, <4 x i64> %179, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %181 = icmp eq <4 x i64> %179, %114
  %182 = select <4 x i1> %181, <4 x i64> %180, <4 x i64> %174
  %183 = shl i64 %157, 2
  %184 = or i64 %183, 12
  %185 = getelementptr inbounds i64, i64* %125, i64 %184
  %186 = bitcast i64* %185 to <4 x i64>*
  %187 = load <4 x i64>, <4 x i64>* %186, align 1, !tbaa !14
  %188 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %126, <4 x i64> %187, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %189 = icmp eq <4 x i64> %187, %114
  %190 = select <4 x i1> %189, <4 x i64> %188, <4 x i64> %182
  %191 = shl i64 %157, 2
  %192 = or i64 %191, 16
  %193 = getelementptr inbounds i64, i64* %125, i64 %192
  %194 = bitcast i64* %193 to <4 x i64>*
  %195 = load <4 x i64>, <4 x i64>* %194, align 1, !tbaa !14
  %196 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %126, <4 x i64> %195, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %197 = icmp eq <4 x i64> %195, %114
  %198 = select <4 x i1> %197, <4 x i64> %196, <4 x i64> %190
  %199 = shl i64 %157, 2
  %200 = or i64 %199, 20
  %201 = getelementptr inbounds i64, i64* %125, i64 %200
  %202 = bitcast i64* %201 to <4 x i64>*
  %203 = load <4 x i64>, <4 x i64>* %202, align 1, !tbaa !14
  %204 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %126, <4 x i64> %203, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %205 = icmp eq <4 x i64> %203, %114
  %206 = select <4 x i1> %205, <4 x i64> %204, <4 x i64> %198
  %207 = shl i64 %157, 2
  %208 = or i64 %207, 24
  %209 = getelementptr inbounds i64, i64* %125, i64 %208
  %210 = bitcast i64* %209 to <4 x i64>*
  %211 = load <4 x i64>, <4 x i64>* %210, align 1, !tbaa !14
  %212 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %126, <4 x i64> %211, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %213 = icmp eq <4 x i64> %211, %114
  %214 = select <4 x i1> %213, <4 x i64> %212, <4 x i64> %206
  %215 = shl i64 %157, 2
  %216 = or i64 %215, 28
  %217 = getelementptr inbounds i64, i64* %125, i64 %216
  %218 = bitcast i64* %217 to <4 x i64>*
  %219 = load <4 x i64>, <4 x i64>* %218, align 1, !tbaa !14
  %220 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %126, <4 x i64> %219, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %221 = icmp eq <4 x i64> %219, %114
  %222 = select <4 x i1> %221, <4 x i64> %220, <4 x i64> %214
  %223 = add nuw nsw i64 %157, 8
  %224 = add i64 %159, -8
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %133, label %156, !llvm.loop !22

226:                                              ; preds = %68, %53
  %227 = phi <4 x i64> [ undef, %53 ], [ %106, %68 ]
  %228 = phi i64 [ 0, %53 ], [ %108, %68 ]
  %229 = phi <4 x i64> [ %29, %53 ], [ %106, %68 ]
  %230 = phi <4 x i64> [ %61, %53 ], [ %107, %68 ]
  %231 = icmp eq i64 %64, 0
  br i1 %231, label %248, label %232

232:                                              ; preds = %226, %232
  %233 = phi i64 [ %245, %232 ], [ %228, %226 ]
  %234 = phi <4 x i64> [ %243, %232 ], [ %229, %226 ]
  %235 = phi <4 x i64> [ %244, %232 ], [ %230, %226 ]
  %236 = phi i64 [ %246, %232 ], [ %64, %226 ]
  %237 = shl i64 %233, 5
  %238 = and i64 %237, 4294967264
  %239 = getelementptr inbounds i8, i8* %51, i64 %238
  %240 = icmp eq <4 x i64> %235, %8
  %241 = bitcast i8* %239 to <4 x i64>*
  %242 = load <4 x i64>, <4 x i64>* %241, align 32, !tbaa !14
  %243 = select <4 x i1> %240, <4 x i64> %242, <4 x i64> %234
  %244 = add <4 x i64> %235, <i64 32, i64 32, i64 32, i64 32>
  %245 = add nuw nsw i64 %233, 1
  %246 = add i64 %236, -1
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %232, !llvm.loop !23

248:                                              ; preds = %226, %232, %152, %37
  %249 = phi i8 [ %30, %37 ], [ 0, %152 ], [ %30, %232 ], [ %30, %226 ]
  %250 = phi <4 x i64> [ %29, %37 ], [ %153, %152 ], [ %227, %226 ], [ %243, %232 ]
  %251 = add nuw nsw i64 %28, 1
  %252 = icmp eq i64 %251, %11
  br i1 %252, label %12, label %27, !llvm.loop !24
}

; Function Attrs: nofree nounwind readonly
declare <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64>, i8*, <4 x i64>, <4 x i64>, i8 immarg) #4

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i64 @uint64_t_secure_load(i64* readonly %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #5 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = load i64, i64* %0, align 8, !tbaa !25
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
  %14 = load volatile i64, i64* %13, align 8, !tbaa !25
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
  %8 = load i64, i64* %5, align 8, !tbaa !25
  br label %11

9:                                                ; preds = %4
  %10 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef) #13
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
  %8 = load i64, i64* %5, align 8, !tbaa !25
  br label %11

9:                                                ; preds = %4
  %10 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef) #13
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
  %8 = load i64, i64* %5, align 8, !tbaa !25
  br label %11

9:                                                ; preds = %4
  %10 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef) #13
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
  %14 = load volatile i64, i64* %13, align 8, !tbaa !25
  br label %18

15:                                               ; preds = %4
  %16 = bitcast i32* %0 to i64*
  %17 = tail call i64 @uint64_t_secure_load_impl(i64* %16, %struct.ds_base* %1, i32 %2, i32 undef) #13
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
  %14 = load volatile i64, i64* %13, align 8, !tbaa !25
  br label %18

15:                                               ; preds = %4
  %16 = bitcast i16* %0 to i64*
  %17 = tail call i64 @uint64_t_secure_load_impl(i64* %16, %struct.ds_base* %1, i32 %2, i32 undef) #13
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
  %14 = load volatile i64, i64* %13, align 8, !tbaa !25
  br label %18

15:                                               ; preds = %4
  %16 = bitcast i8* %0 to i64*
  %17 = tail call i64 @uint64_t_secure_load_impl(i64* %16, %struct.ds_base* %1, i32 %2, i32 undef) #13
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
  br i1 %50, label %22, label %23, !llvm.loop !27

51:                                               ; preds = %39, %51
  %52 = phi i8* [ %61, %51 ], [ %34, %39 ]
  %53 = phi <4 x i64> [ %60, %51 ], [ %47, %39 ]
  %54 = icmp eq <4 x i64> %53, %14
  %55 = select <4 x i1> %54, <4 x i64> %17, <4 x i64> zeroinitializer
  %56 = bitcast i8* %52 to <32 x i8>*
  %57 = load <32 x i8>, <32 x i8>* %56, align 1, !tbaa !14
  %58 = bitcast <4 x i64> %55 to <32 x i8>
  %59 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %57, <32 x i8> %18, <32 x i8> %58) #13
  store <32 x i8> %59, <32 x i8>* %56, align 1, !tbaa !14
  %60 = add <4 x i64> %53, <i64 32, i64 32, i64 32, i64 32>
  %61 = getelementptr inbounds i8, i8* %52, i64 32
  %62 = load i8*, i8** %25, align 8, !tbaa !11
  %63 = load i32, i32* %33, align 4, !tbaa !13
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = icmp ugt i8* %61, %65
  br i1 %66, label %48, label %51, !llvm.loop !28
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
  br i1 %51, label %23, label %24, !llvm.loop !29

52:                                               ; preds = %40, %52
  %53 = phi i8* [ %62, %52 ], [ %35, %40 ]
  %54 = phi <4 x i64> [ %61, %52 ], [ %48, %40 ]
  %55 = icmp eq <4 x i64> %54, %15
  %56 = select <4 x i1> %55, <4 x i64> %18, <4 x i64> zeroinitializer
  %57 = bitcast i8* %53 to <32 x i8>*
  %58 = load <32 x i8>, <32 x i8>* %57, align 1, !tbaa !14
  %59 = bitcast <4 x i64> %56 to <32 x i8>
  %60 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %58, <32 x i8> %19, <32 x i8> %59) #13
  store <32 x i8> %60, <32 x i8>* %57, align 1, !tbaa !14
  %61 = add <4 x i64> %54, <i64 32, i64 32, i64 32, i64 32>
  %62 = getelementptr inbounds i8, i8* %53, i64 32
  %63 = load i8*, i8** %26, align 8, !tbaa !11
  %64 = load i32, i32* %34, align 4, !tbaa !13
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = icmp ugt i8* %62, %66
  br i1 %67, label %49, label %52, !llvm.loop !30
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
  br i1 %51, label %23, label %24, !llvm.loop !31

52:                                               ; preds = %40, %52
  %53 = phi i8* [ %62, %52 ], [ %35, %40 ]
  %54 = phi <4 x i64> [ %61, %52 ], [ %48, %40 ]
  %55 = icmp eq <4 x i64> %54, %15
  %56 = select <4 x i1> %55, <4 x i64> %18, <4 x i64> zeroinitializer
  %57 = bitcast i8* %53 to <32 x i8>*
  %58 = load <32 x i8>, <32 x i8>* %57, align 1, !tbaa !14
  %59 = bitcast <4 x i64> %56 to <32 x i8>
  %60 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %58, <32 x i8> %19, <32 x i8> %59) #13
  store <32 x i8> %60, <32 x i8>* %57, align 1, !tbaa !14
  %61 = add <4 x i64> %54, <i64 32, i64 32, i64 32, i64 32>
  %62 = getelementptr inbounds i8, i8* %53, i64 32
  %63 = load i8*, i8** %26, align 8, !tbaa !11
  %64 = load i32, i32* %34, align 4, !tbaa !13
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = icmp ugt i8* %62, %66
  br i1 %67, label %49, label %52, !llvm.loop !32
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
  br i1 %51, label %23, label %24, !llvm.loop !33

52:                                               ; preds = %40, %52
  %53 = phi i8* [ %62, %52 ], [ %35, %40 ]
  %54 = phi <4 x i64> [ %61, %52 ], [ %48, %40 ]
  %55 = icmp eq <4 x i64> %54, %15
  %56 = select <4 x i1> %55, <4 x i64> %18, <4 x i64> zeroinitializer
  %57 = bitcast i8* %53 to <32 x i8>*
  %58 = load <32 x i8>, <32 x i8>* %57, align 1, !tbaa !14
  %59 = bitcast <4 x i64> %56 to <32 x i8>
  %60 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %58, <32 x i8> %19, <32 x i8> %59) #13
  store <32 x i8> %60, <32 x i8>* %57, align 1, !tbaa !14
  %61 = add <4 x i64> %54, <i64 32, i64 32, i64 32, i64 32>
  %62 = getelementptr inbounds i8, i8* %53, i64 32
  %63 = load i8*, i8** %26, align 8, !tbaa !11
  %64 = load i32, i32* %34, align 4, !tbaa !13
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = icmp ugt i8* %62, %66
  br i1 %67, label %49, label %52, !llvm.loop !34
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @uint64_t_secure_store(i64 %0, i64* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #8 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = icmp eq i64* %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  store i64 %0, i64* %1, align 8, !tbaa !25
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
  store i32 %0, i32* %1, align 4, !tbaa !35
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
  store i16 %0, i16* %1, align 2, !tbaa !36
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
  br i1 %6, label %7, label %22

7:                                                ; preds = %5
  %8 = icmp eq i64* %1, null
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 0
  %10 = load i8*, i8** %9, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 4
  %12 = load i32, i32* %11, align 8, !tbaa !12
  %13 = zext i32 %12 to i64
  br i1 %8, label %14, label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, i8* %10, i64 %13
  %16 = bitcast i8* %15 to i64*
  %17 = load i64, i64* %16, align 8, !tbaa !25
  br label %18

18:                                               ; preds = %7, %14
  %19 = phi i64 [ %17, %14 ], [ %0, %7 ]
  %20 = getelementptr inbounds i8, i8* %10, i64 %13
  %21 = bitcast i8* %20 to i64*
  store volatile i64 %19, i64* %21, align 8, !tbaa !25
  br label %23

22:                                               ; preds = %5
  tail call void @uint64_t_secure_store_impl(i64 %0, i64* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %23

23:                                               ; preds = %22, %18
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @uint32_t_secure_store_sensitive(i32 %0, i32* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #6 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %22

7:                                                ; preds = %5
  %8 = icmp eq i32* %1, null
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 0
  %10 = load i8*, i8** %9, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 4
  %12 = load i32, i32* %11, align 8, !tbaa !12
  %13 = zext i32 %12 to i64
  br i1 %8, label %14, label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, i8* %10, i64 %13
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4, !tbaa !35
  br label %18

18:                                               ; preds = %7, %14
  %19 = phi i32 [ %17, %14 ], [ %0, %7 ]
  %20 = getelementptr inbounds i8, i8* %10, i64 %13
  %21 = bitcast i8* %20 to i32*
  store volatile i32 %19, i32* %21, align 4, !tbaa !35
  br label %23

22:                                               ; preds = %5
  tail call void @uint32_t_secure_store_impl(i32 %0, i32* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %23

23:                                               ; preds = %22, %18
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @uint16_t_secure_store_sensitive(i16 zeroext %0, i16* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #6 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %22

7:                                                ; preds = %5
  %8 = icmp eq i16* %1, null
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 0
  %10 = load i8*, i8** %9, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 4
  %12 = load i32, i32* %11, align 8, !tbaa !12
  %13 = zext i32 %12 to i64
  br i1 %8, label %14, label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, i8* %10, i64 %13
  %16 = bitcast i8* %15 to i16*
  %17 = load i16, i16* %16, align 2, !tbaa !36
  br label %18

18:                                               ; preds = %7, %14
  %19 = phi i16 [ %17, %14 ], [ %0, %7 ]
  %20 = getelementptr inbounds i8, i8* %10, i64 %13
  %21 = bitcast i8* %20 to i16*
  store volatile i16 %19, i16* %21, align 2, !tbaa !36
  br label %23

22:                                               ; preds = %5
  tail call void @uint16_t_secure_store_impl(i16 zeroext %0, i16* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %23

23:                                               ; preds = %22, %18
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @uint8_t_secure_store_sensitive(i8 zeroext %0, i8* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #6 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %20

7:                                                ; preds = %5
  %8 = icmp eq i8* %1, null
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 0
  %10 = load i8*, i8** %9, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i64 0, i32 4
  %12 = load i32, i32* %11, align 8, !tbaa !12
  %13 = zext i32 %12 to i64
  br i1 %8, label %14, label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, i8* %10, i64 %13
  %16 = load i8, i8* %15, align 1, !tbaa !14
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi i8 [ %16, %14 ], [ %0, %7 ]
  %19 = getelementptr inbounds i8, i8* %10, i64 %13
  store volatile i8 %18, i8* %19, align 1, !tbaa !14
  br label %21

20:                                               ; preds = %5
  tail call void @uint8_t_secure_store_impl(i8 zeroext %0, i8* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %21

21:                                               ; preds = %20, %17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @branch_id(i8* nocapture %0) local_unnamed_addr #9 {
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #6 {
  %1 = alloca [32 x i32], align 16
  %2 = alloca [32 x i32], align 16
  %3 = alloca [56 x i8], align 16
  %4 = alloca [56 x i8], align 16
  %5 = alloca [132 x i8], align 8
  %6 = bitcast [32 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6)
  %7 = bitcast [32 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7)
  %8 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %8) #13
  %9 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %9) #13
  %10 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 132, i8* nonnull %10)
  %11 = tail call i64 @read(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 0), i64 32) #13
  %12 = tail call i64 @read(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @in, i64 0, i64 0), i64 8) #13
  %13 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %14 = trunc i64 %13 to i8
  %15 = lshr i8 %14, 7
  store i8 %15, i8* %9, align 16, !tbaa !14
  %16 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %17 = trunc i64 %16 to i8
  %18 = lshr i8 %17, 7
  %19 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 1
  store i8 %18, i8* %19, align 1, !tbaa !14
  %20 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %21 = trunc i64 %20 to i8
  %22 = lshr i8 %21, 7
  %23 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 2
  store i8 %22, i8* %23, align 2, !tbaa !14
  %24 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 4) to i64*), align 8, !tbaa !25
  %25 = trunc i64 %24 to i8
  %26 = lshr i8 %25, 7
  %27 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 3
  store i8 %26, i8* %27, align 1, !tbaa !14
  %28 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %29 = trunc i64 %28 to i8
  %30 = lshr i8 %29, 7
  %31 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 4
  store i8 %30, i8* %31, align 4, !tbaa !14
  %32 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %33 = trunc i64 %32 to i8
  %34 = lshr i8 %33, 7
  %35 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 5
  store i8 %34, i8* %35, align 1, !tbaa !14
  %36 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %37 = trunc i64 %36 to i8
  %38 = lshr i8 %37, 7
  %39 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 6
  store i8 %38, i8* %39, align 2, !tbaa !14
  %40 = load i64, i64* bitcast ([32 x i8]* @in_key to i64*), align 16, !tbaa !25
  %41 = trunc i64 %40 to i8
  %42 = lshr i8 %41, 7
  %43 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 7
  store i8 %42, i8* %43, align 1, !tbaa !14
  %44 = load <2 x i64>, <2 x i64>* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 7) to <2 x i64>*), align 8
  %45 = shufflevector <2 x i64> %44, <2 x i64> poison, <32 x i32> <i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %46 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 8
  %47 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %48 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %49 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 4) to i64*), align 8, !tbaa !25
  %50 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %51 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %52 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %53 = load i64, i64* bitcast ([32 x i8]* @in_key to i64*), align 16, !tbaa !25
  %54 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %55 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %56 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %57 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 4) to i64*), align 8, !tbaa !25
  %58 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %59 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %60 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %61 = load i64, i64* bitcast ([32 x i8]* @in_key to i64*), align 16, !tbaa !25
  %62 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %63 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %64 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %65 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 4) to i64*), align 8, !tbaa !25
  %66 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %67 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %68 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %69 = load i64, i64* bitcast ([32 x i8]* @in_key to i64*), align 16, !tbaa !25
  %70 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %71 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %72 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %73 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 4) to i64*), align 8, !tbaa !25
  %74 = insertelement <32 x i64> %45, i64 %47, i32 1
  %75 = insertelement <32 x i64> %74, i64 %48, i32 2
  %76 = insertelement <32 x i64> %75, i64 %49, i32 3
  %77 = insertelement <32 x i64> %76, i64 %50, i32 4
  %78 = insertelement <32 x i64> %77, i64 %51, i32 5
  %79 = insertelement <32 x i64> %78, i64 %52, i32 6
  %80 = insertelement <32 x i64> %79, i64 %53, i32 7
  %81 = insertelement <32 x i64> %80, i64 %54, i32 8
  %82 = insertelement <32 x i64> %81, i64 %55, i32 9
  %83 = insertelement <32 x i64> %82, i64 %56, i32 10
  %84 = insertelement <32 x i64> %83, i64 %57, i32 11
  %85 = insertelement <32 x i64> %84, i64 %58, i32 12
  %86 = insertelement <32 x i64> %85, i64 %59, i32 13
  %87 = insertelement <32 x i64> %86, i64 %60, i32 14
  %88 = insertelement <32 x i64> %87, i64 %61, i32 15
  %89 = insertelement <32 x i64> %88, i64 %62, i32 16
  %90 = insertelement <32 x i64> %89, i64 %63, i32 17
  %91 = insertelement <32 x i64> %90, i64 %64, i32 18
  %92 = insertelement <32 x i64> %91, i64 %65, i32 19
  %93 = insertelement <32 x i64> %92, i64 %62, i32 20
  %94 = insertelement <32 x i64> %93, i64 %63, i32 21
  %95 = insertelement <32 x i64> %94, i64 %64, i32 22
  %96 = insertelement <32 x i64> %95, i64 %65, i32 23
  %97 = insertelement <32 x i64> %96, i64 %66, i32 24
  %98 = insertelement <32 x i64> %97, i64 %67, i32 25
  %99 = insertelement <32 x i64> %98, i64 %68, i32 26
  %100 = insertelement <32 x i64> %99, i64 %69, i32 27
  %101 = insertelement <32 x i64> %100, i64 %70, i32 28
  %102 = insertelement <32 x i64> %101, i64 %71, i32 29
  %103 = insertelement <32 x i64> %102, i64 %72, i32 30
  %104 = insertelement <32 x i64> %103, i64 %73, i32 31
  %105 = lshr <32 x i64> %104, <i64 6, i64 6, i64 6, i64 6, i64 6, i64 6, i64 6, i64 6, i64 5, i64 5, i64 5, i64 5, i64 5, i64 5, i64 5, i64 5, i64 4, i64 4, i64 4, i64 4, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 2, i64 2, i64 2, i64 2>
  %106 = trunc <32 x i64> %105 to <32 x i8>
  %107 = and <32 x i8> %106, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %108 = bitcast i8* %46 to <32 x i8>*
  store <32 x i8> %107, <32 x i8>* %108, align 8, !tbaa !14
  %109 = load <2 x i64>, <2 x i64>* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 3) to <2 x i64>*), align 8
  %110 = shufflevector <2 x i64> %109, <2 x i64> poison, <16 x i32> <i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %111 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 40
  %112 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %113 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %114 = load i64, i64* bitcast ([32 x i8]* @in_key to i64*), align 16, !tbaa !25
  %115 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %116 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %117 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %118 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 4) to i64*), align 8, !tbaa !25
  %119 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %120 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %121 = load i64, i64* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %122 = load i64, i64* bitcast ([32 x i8]* @in_key to i64*), align 16, !tbaa !25
  %123 = insertelement <16 x i64> %110, i64 %112, i32 1
  %124 = insertelement <16 x i64> %123, i64 %113, i32 2
  %125 = insertelement <16 x i64> %124, i64 %114, i32 3
  %126 = insertelement <16 x i64> %125, i64 %115, i32 4
  %127 = insertelement <16 x i64> %126, i64 %116, i32 5
  %128 = insertelement <16 x i64> %127, i64 %117, i32 6
  %129 = insertelement <16 x i64> %128, i64 %118, i32 7
  %130 = insertelement <16 x i64> %129, i64 %119, i32 8
  %131 = insertelement <16 x i64> %130, i64 %120, i32 9
  %132 = insertelement <16 x i64> %131, i64 %121, i32 10
  %133 = insertelement <16 x i64> %132, i64 %122, i32 11
  %134 = insertelement <16 x i64> %133, i64 %119, i32 12
  %135 = insertelement <16 x i64> %134, i64 %120, i32 13
  %136 = insertelement <16 x i64> %135, i64 %121, i32 14
  %137 = insertelement <16 x i64> %136, i64 %122, i32 15
  %138 = lshr <16 x i64> %137, <i64 2, i64 2, i64 2, i64 2, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 3, i64 4, i64 4, i64 4, i64 4>
  %139 = trunc <16 x i64> %138 to <16 x i8>
  %140 = and <16 x i8> %139, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %141 = bitcast i8* %111 to <16 x i8>*
  store <16 x i8> %140, <16 x i8>* %141, align 8, !tbaa !14
  %142 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  store i32 0, i32* %142, align 16, !tbaa !35
  %143 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 1
  store i32 0, i32* %143, align 4, !tbaa !35
  %144 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 1
  %145 = bitcast i8* %144 to i64*
  %146 = load i64, i64* %145, align 8, !tbaa !25
  %147 = trunc i64 %146 to i8
  store i8 %147, i8* %8, align 16, !tbaa !14
  %148 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 2
  %149 = bitcast i8* %148 to i64*
  %150 = load i64, i64* %149, align 8, !tbaa !25
  %151 = trunc i64 %150 to i8
  %152 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 1
  store i8 %151, i8* %152, align 1, !tbaa !14
  %153 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 3
  %154 = bitcast i8* %153 to i64*
  %155 = load i64, i64* %154, align 8, !tbaa !25
  %156 = trunc i64 %155 to i8
  %157 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 2
  store i8 %156, i8* %157, align 2, !tbaa !14
  %158 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 4
  %159 = bitcast i8* %158 to i64*
  %160 = load i64, i64* %159, align 8, !tbaa !25
  %161 = trunc i64 %160 to i8
  %162 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 3
  store i8 %161, i8* %162, align 1, !tbaa !14
  %163 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 5
  %164 = bitcast i8* %163 to i64*
  %165 = load i64, i64* %164, align 8, !tbaa !25
  %166 = trunc i64 %165 to i8
  %167 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 4
  store i8 %166, i8* %167, align 4, !tbaa !14
  %168 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 6
  %169 = bitcast i8* %168 to i64*
  %170 = load i64, i64* %169, align 8, !tbaa !25
  %171 = trunc i64 %170 to i8
  %172 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 5
  store i8 %171, i8* %172, align 1, !tbaa !14
  %173 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 7
  %174 = bitcast i8* %173 to i64*
  %175 = load i64, i64* %174, align 8, !tbaa !25
  %176 = trunc i64 %175 to i8
  %177 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 6
  store i8 %176, i8* %177, align 2, !tbaa !14
  %178 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 8
  %179 = bitcast i8* %178 to i64*
  %180 = load i64, i64* %179, align 8, !tbaa !25
  %181 = trunc i64 %180 to i8
  %182 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 7
  store i8 %181, i8* %182, align 1, !tbaa !14
  %183 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 9
  %184 = bitcast i8* %183 to i64*
  %185 = load i64, i64* %184, align 8, !tbaa !25
  %186 = trunc i64 %185 to i8
  %187 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 8
  store i8 %186, i8* %187, align 8, !tbaa !14
  %188 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 10
  %189 = bitcast i8* %188 to i64*
  %190 = load i64, i64* %189, align 8, !tbaa !25
  %191 = trunc i64 %190 to i8
  %192 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 9
  store i8 %191, i8* %192, align 1, !tbaa !14
  %193 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 11
  %194 = bitcast i8* %193 to i64*
  %195 = load i64, i64* %194, align 8, !tbaa !25
  %196 = trunc i64 %195 to i8
  %197 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 10
  store i8 %196, i8* %197, align 2, !tbaa !14
  %198 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 12
  %199 = bitcast i8* %198 to i64*
  %200 = load i64, i64* %199, align 8, !tbaa !25
  %201 = trunc i64 %200 to i8
  %202 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 11
  store i8 %201, i8* %202, align 1, !tbaa !14
  %203 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 13
  %204 = bitcast i8* %203 to i64*
  %205 = load i64, i64* %204, align 8, !tbaa !25
  %206 = trunc i64 %205 to i8
  %207 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 12
  store i8 %206, i8* %207, align 4, !tbaa !14
  %208 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 14
  %209 = bitcast i8* %208 to i64*
  %210 = load i64, i64* %209, align 8, !tbaa !25
  %211 = trunc i64 %210 to i8
  %212 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 13
  store i8 %211, i8* %212, align 1, !tbaa !14
  %213 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 15
  %214 = bitcast i8* %213 to i64*
  %215 = load i64, i64* %214, align 8, !tbaa !25
  %216 = trunc i64 %215 to i8
  %217 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 14
  store i8 %216, i8* %217, align 2, !tbaa !14
  %218 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 16
  %219 = bitcast i8* %218 to i64*
  %220 = load i64, i64* %219, align 16, !tbaa !25
  %221 = trunc i64 %220 to i8
  %222 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 15
  store i8 %221, i8* %222, align 1, !tbaa !14
  %223 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 17
  %224 = bitcast i8* %223 to i64*
  %225 = load i64, i64* %224, align 8, !tbaa !25
  %226 = trunc i64 %225 to i8
  %227 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 16
  store i8 %226, i8* %227, align 16, !tbaa !14
  %228 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 18
  %229 = bitcast i8* %228 to i64*
  %230 = load i64, i64* %229, align 8, !tbaa !25
  %231 = trunc i64 %230 to i8
  %232 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 17
  store i8 %231, i8* %232, align 1, !tbaa !14
  %233 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 19
  %234 = bitcast i8* %233 to i64*
  %235 = load i64, i64* %234, align 8, !tbaa !25
  %236 = trunc i64 %235 to i8
  %237 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 18
  store i8 %236, i8* %237, align 2, !tbaa !14
  %238 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 20
  %239 = bitcast i8* %238 to i64*
  %240 = load i64, i64* %239, align 8, !tbaa !25
  %241 = trunc i64 %240 to i8
  %242 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 19
  store i8 %241, i8* %242, align 1, !tbaa !14
  %243 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 21
  %244 = bitcast i8* %243 to i64*
  %245 = load i64, i64* %244, align 8, !tbaa !25
  %246 = trunc i64 %245 to i8
  %247 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 20
  store i8 %246, i8* %247, align 4, !tbaa !14
  %248 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 22
  %249 = bitcast i8* %248 to i64*
  %250 = load i64, i64* %249, align 8, !tbaa !25
  %251 = trunc i64 %250 to i8
  %252 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 21
  store i8 %251, i8* %252, align 1, !tbaa !14
  %253 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 23
  %254 = bitcast i8* %253 to i64*
  %255 = load i64, i64* %254, align 8, !tbaa !25
  %256 = trunc i64 %255 to i8
  %257 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 22
  store i8 %256, i8* %257, align 2, !tbaa !14
  %258 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 24
  %259 = bitcast i8* %258 to i64*
  %260 = load i64, i64* %259, align 8, !tbaa !25
  %261 = trunc i64 %260 to i8
  %262 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 23
  store i8 %261, i8* %262, align 1, !tbaa !14
  %263 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 25
  %264 = bitcast i8* %263 to i64*
  %265 = load i64, i64* %264, align 8, !tbaa !25
  %266 = trunc i64 %265 to i8
  %267 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 24
  store i8 %266, i8* %267, align 8, !tbaa !14
  %268 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 26
  %269 = bitcast i8* %268 to i64*
  %270 = load i64, i64* %269, align 8, !tbaa !25
  %271 = trunc i64 %270 to i8
  %272 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 25
  store i8 %271, i8* %272, align 1, !tbaa !14
  %273 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 27
  %274 = bitcast i8* %273 to i64*
  %275 = load i64, i64* %274, align 8, !tbaa !25
  %276 = trunc i64 %275 to i8
  %277 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 26
  store i8 %276, i8* %277, align 2, !tbaa !14
  %278 = bitcast [56 x i8]* %4 to i64*
  %279 = load i64, i64* %278, align 16, !tbaa !25
  %280 = trunc i64 %279 to i8
  %281 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 27
  store i8 %280, i8* %281, align 1, !tbaa !14
  %282 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 29
  %283 = bitcast i8* %282 to i64*
  %284 = load i64, i64* %283, align 8, !tbaa !25
  %285 = trunc i64 %284 to i8
  %286 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 28
  store i8 %285, i8* %286, align 4, !tbaa !14
  %287 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 30
  %288 = bitcast i8* %287 to i64*
  %289 = load i64, i64* %288, align 8, !tbaa !25
  %290 = trunc i64 %289 to i8
  %291 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 29
  store i8 %290, i8* %291, align 1, !tbaa !14
  %292 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 31
  %293 = bitcast i8* %292 to i64*
  %294 = load i64, i64* %293, align 8, !tbaa !25
  %295 = trunc i64 %294 to i8
  %296 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 30
  store i8 %295, i8* %296, align 2, !tbaa !14
  %297 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 32
  %298 = bitcast i8* %297 to i64*
  %299 = load i64, i64* %298, align 16, !tbaa !25
  %300 = trunc i64 %299 to i8
  %301 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 31
  store i8 %300, i8* %301, align 1, !tbaa !14
  %302 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 33
  %303 = bitcast i8* %302 to i64*
  %304 = load i64, i64* %303, align 8, !tbaa !25
  %305 = trunc i64 %304 to i8
  %306 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 32
  store i8 %305, i8* %306, align 16, !tbaa !14
  %307 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 34
  %308 = bitcast i8* %307 to i64*
  %309 = load i64, i64* %308, align 8, !tbaa !25
  %310 = trunc i64 %309 to i8
  %311 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 33
  store i8 %310, i8* %311, align 1, !tbaa !14
  %312 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 35
  %313 = bitcast i8* %312 to i64*
  %314 = load i64, i64* %313, align 8, !tbaa !25
  %315 = trunc i64 %314 to i8
  %316 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 34
  store i8 %315, i8* %316, align 2, !tbaa !14
  %317 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 36
  %318 = bitcast i8* %317 to i64*
  %319 = load i64, i64* %318, align 8, !tbaa !25
  %320 = trunc i64 %319 to i8
  %321 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 35
  store i8 %320, i8* %321, align 1, !tbaa !14
  %322 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 37
  %323 = bitcast i8* %322 to i64*
  %324 = load i64, i64* %323, align 8, !tbaa !25
  %325 = trunc i64 %324 to i8
  %326 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 36
  store i8 %325, i8* %326, align 4, !tbaa !14
  %327 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 38
  %328 = bitcast i8* %327 to i64*
  %329 = load i64, i64* %328, align 8, !tbaa !25
  %330 = trunc i64 %329 to i8
  %331 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 37
  store i8 %330, i8* %331, align 1, !tbaa !14
  %332 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 39
  %333 = bitcast i8* %332 to i64*
  %334 = load i64, i64* %333, align 8, !tbaa !25
  %335 = trunc i64 %334 to i8
  %336 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 38
  store i8 %335, i8* %336, align 2, !tbaa !14
  %337 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 40
  %338 = bitcast i8* %337 to i64*
  %339 = load i64, i64* %338, align 8, !tbaa !25
  %340 = trunc i64 %339 to i8
  %341 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 39
  store i8 %340, i8* %341, align 1, !tbaa !14
  %342 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 41
  %343 = bitcast i8* %342 to i64*
  %344 = load i64, i64* %343, align 8, !tbaa !25
  %345 = trunc i64 %344 to i8
  %346 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 40
  store i8 %345, i8* %346, align 8, !tbaa !14
  %347 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 42
  %348 = bitcast i8* %347 to i64*
  %349 = load i64, i64* %348, align 8, !tbaa !25
  %350 = trunc i64 %349 to i8
  %351 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 41
  store i8 %350, i8* %351, align 1, !tbaa !14
  %352 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 43
  %353 = bitcast i8* %352 to i64*
  %354 = load i64, i64* %353, align 8, !tbaa !25
  %355 = trunc i64 %354 to i8
  %356 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 42
  store i8 %355, i8* %356, align 2, !tbaa !14
  %357 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 44
  %358 = bitcast i8* %357 to i64*
  %359 = load i64, i64* %358, align 8, !tbaa !25
  %360 = trunc i64 %359 to i8
  %361 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 43
  store i8 %360, i8* %361, align 1, !tbaa !14
  %362 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 45
  %363 = bitcast i8* %362 to i64*
  %364 = load i64, i64* %363, align 8, !tbaa !25
  %365 = trunc i64 %364 to i8
  %366 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 44
  store i8 %365, i8* %366, align 4, !tbaa !14
  %367 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 46
  %368 = bitcast i8* %367 to i64*
  %369 = load i64, i64* %368, align 8, !tbaa !25
  %370 = trunc i64 %369 to i8
  %371 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 45
  store i8 %370, i8* %371, align 1, !tbaa !14
  %372 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 47
  %373 = bitcast i8* %372 to i64*
  %374 = load i64, i64* %373, align 8, !tbaa !25
  %375 = trunc i64 %374 to i8
  %376 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 46
  store i8 %375, i8* %376, align 2, !tbaa !14
  %377 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 48
  %378 = bitcast i8* %377 to i64*
  %379 = load i64, i64* %378, align 16, !tbaa !25
  %380 = trunc i64 %379 to i8
  %381 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 47
  store i8 %380, i8* %381, align 1, !tbaa !14
  %382 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 49
  %383 = bitcast i8* %382 to i64*
  %384 = load i64, i64* %383, align 8, !tbaa !25
  %385 = trunc i64 %384 to i8
  %386 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 48
  store i8 %385, i8* %386, align 16, !tbaa !14
  %387 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 50
  %388 = bitcast i8* %387 to i64*
  %389 = load i64, i64* %388, align 8, !tbaa !25
  %390 = trunc i64 %389 to i8
  %391 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 49
  store i8 %390, i8* %391, align 1, !tbaa !14
  %392 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 51
  %393 = bitcast i8* %392 to i64*
  %394 = load i64, i64* %393, align 8, !tbaa !25
  %395 = trunc i64 %394 to i8
  %396 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 50
  store i8 %395, i8* %396, align 2, !tbaa !14
  %397 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 52
  %398 = bitcast i8* %397 to i64*
  %399 = load i64, i64* %398, align 8, !tbaa !25
  %400 = trunc i64 %399 to i8
  %401 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 51
  store i8 %400, i8* %401, align 1, !tbaa !14
  %402 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 53
  %403 = bitcast i8* %402 to i64*
  %404 = load i64, i64* %403, align 8, !tbaa !25
  %405 = trunc i64 %404 to i8
  %406 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 52
  store i8 %405, i8* %406, align 4, !tbaa !14
  %407 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 54
  %408 = bitcast i8* %407 to i64*
  %409 = load i64, i64* %408, align 8, !tbaa !25
  %410 = trunc i64 %409 to i8
  %411 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 53
  store i8 %410, i8* %411, align 1, !tbaa !14
  %412 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 55
  %413 = bitcast i8* %412 to i64*
  %414 = load i64, i64* %413, align 8, !tbaa !25
  %415 = trunc i64 %414 to i8
  %416 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 54
  store i8 %415, i8* %416, align 2, !tbaa !14
  %417 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 28
  %418 = bitcast i8* %417 to i64*
  %419 = load i64, i64* %418, align 8, !tbaa !25
  %420 = trunc i64 %419 to i8
  %421 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 55
  store i8 %420, i8* %421, align 1, !tbaa !14
  %422 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 13
  %423 = bitcast i8* %422 to i64*
  %424 = load i64, i64* %423, align 8, !tbaa !25
  %425 = trunc i64 %424 to i8
  %426 = icmp eq i8 %425, 0
  %427 = bitcast [32 x i32]* %2 to i64*
  %428 = load volatile i64, i64* %427, align 16, !tbaa !25
  %429 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  br i1 %426, label %430, label %432

430:                                              ; preds = %0
  %431 = trunc i64 %428 to i32
  store volatile i32 %431, i32* %142, align 16, !tbaa !35
  br label %435

432:                                              ; preds = %0
  %433 = or i64 %429, %428
  %434 = trunc i64 %433 to i32
  store volatile i32 %434, i32* %142, align 16, !tbaa !35
  br label %435

435:                                              ; preds = %432, %430
  %436 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 40
  %437 = bitcast i8* %436 to i64*
  %438 = load i64, i64* %437, align 8, !tbaa !25
  %439 = trunc i64 %438 to i8
  %440 = icmp eq i8 %439, 0
  %441 = bitcast i32* %143 to i64*
  %442 = load volatile i64, i64* %441, align 4, !tbaa !25
  %443 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %444 = select i1 %440, i64 0, i64 %443
  %445 = or i64 %442, %444
  %446 = trunc i64 %445 to i32
  store volatile i32 %446, i32* %143, align 4, !tbaa !35
  %447 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 16
  %448 = bitcast i8* %447 to i64*
  %449 = load i64, i64* %448, align 16, !tbaa !25
  %450 = trunc i64 %449 to i8
  %451 = icmp eq i8 %450, 0
  %452 = bitcast [32 x i32]* %2 to i64*
  %453 = load volatile i64, i64* %452, align 16, !tbaa !25
  %454 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  br i1 %451, label %455, label %457

455:                                              ; preds = %435
  %456 = trunc i64 %453 to i32
  store volatile i32 %456, i32* %142, align 16, !tbaa !35
  br label %460

457:                                              ; preds = %435
  %458 = or i64 %454, %453
  %459 = trunc i64 %458 to i32
  store volatile i32 %459, i32* %142, align 16, !tbaa !35
  br label %460

460:                                              ; preds = %457, %455
  %461 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 51
  %462 = bitcast i8* %461 to i64*
  %463 = load i64, i64* %462, align 8, !tbaa !25
  %464 = trunc i64 %463 to i8
  %465 = icmp eq i8 %464, 0
  %466 = bitcast i32* %143 to i64*
  %467 = load volatile i64, i64* %466, align 4, !tbaa !25
  %468 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %469 = select i1 %465, i64 0, i64 %468
  %470 = or i64 %467, %469
  %471 = trunc i64 %470 to i32
  store volatile i32 %471, i32* %143, align 4, !tbaa !35
  %472 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 10
  %473 = bitcast i8* %472 to i64*
  %474 = load i64, i64* %473, align 8, !tbaa !25
  %475 = trunc i64 %474 to i8
  %476 = icmp eq i8 %475, 0
  %477 = bitcast [32 x i32]* %2 to i64*
  %478 = load volatile i64, i64* %477, align 16, !tbaa !25
  %479 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  br i1 %476, label %480, label %482

480:                                              ; preds = %460
  %481 = trunc i64 %478 to i32
  store volatile i32 %481, i32* %142, align 16, !tbaa !35
  br label %485

482:                                              ; preds = %460
  %483 = or i64 %479, %478
  %484 = trunc i64 %483 to i32
  store volatile i32 %484, i32* %142, align 16, !tbaa !35
  br label %485

485:                                              ; preds = %482, %480
  %486 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 30
  %487 = bitcast i8* %486 to i64*
  %488 = load i64, i64* %487, align 8, !tbaa !25
  %489 = trunc i64 %488 to i8
  %490 = icmp eq i8 %489, 0
  %491 = bitcast i32* %143 to i64*
  %492 = load volatile i64, i64* %491, align 4, !tbaa !25
  %493 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %494 = select i1 %490, i64 0, i64 %493
  %495 = or i64 %492, %494
  %496 = trunc i64 %495 to i32
  store volatile i32 %496, i32* %143, align 4, !tbaa !35
  %497 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 23
  %498 = bitcast i8* %497 to i64*
  %499 = load i64, i64* %498, align 8, !tbaa !25
  %500 = trunc i64 %499 to i8
  %501 = icmp eq i8 %500, 0
  %502 = bitcast [32 x i32]* %2 to i64*
  %503 = load volatile i64, i64* %502, align 16, !tbaa !25
  %504 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  br i1 %501, label %505, label %507

505:                                              ; preds = %485
  %506 = trunc i64 %503 to i32
  store volatile i32 %506, i32* %142, align 16, !tbaa !35
  br label %510

507:                                              ; preds = %485
  %508 = or i64 %504, %503
  %509 = trunc i64 %508 to i32
  store volatile i32 %509, i32* %142, align 16, !tbaa !35
  br label %510

510:                                              ; preds = %507, %505
  %511 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 36
  %512 = bitcast i8* %511 to i64*
  %513 = load i64, i64* %512, align 8, !tbaa !25
  %514 = trunc i64 %513 to i8
  %515 = icmp eq i8 %514, 0
  %516 = bitcast i32* %143 to i64*
  %517 = load volatile i64, i64* %516, align 4, !tbaa !25
  %518 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %519 = select i1 %515, i64 0, i64 %518
  %520 = or i64 %517, %519
  %521 = trunc i64 %520 to i32
  store volatile i32 %521, i32* %143, align 4, !tbaa !35
  %522 = bitcast [56 x i8]* %3 to i64*
  %523 = load i64, i64* %522, align 16, !tbaa !25
  %524 = trunc i64 %523 to i8
  %525 = icmp eq i8 %524, 0
  %526 = bitcast [32 x i32]* %2 to i64*
  %527 = load volatile i64, i64* %526, align 16, !tbaa !25
  %528 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  br i1 %525, label %529, label %531

529:                                              ; preds = %510
  %530 = trunc i64 %527 to i32
  store volatile i32 %530, i32* %142, align 16, !tbaa !35
  br label %534

531:                                              ; preds = %510
  %532 = or i64 %528, %527
  %533 = trunc i64 %532 to i32
  store volatile i32 %533, i32* %142, align 16, !tbaa !35
  br label %534

534:                                              ; preds = %531, %529
  %535 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 46
  %536 = bitcast i8* %535 to i64*
  %537 = load i64, i64* %536, align 8, !tbaa !25
  %538 = trunc i64 %537 to i8
  %539 = icmp eq i8 %538, 0
  %540 = bitcast i32* %143 to i64*
  %541 = load volatile i64, i64* %540, align 4, !tbaa !25
  %542 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %543 = select i1 %539, i64 0, i64 %542
  %544 = or i64 %541, %543
  %545 = trunc i64 %544 to i32
  store volatile i32 %545, i32* %143, align 4, !tbaa !35
  %546 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 4
  %547 = bitcast i8* %546 to i64*
  %548 = load i64, i64* %547, align 8, !tbaa !25
  %549 = trunc i64 %548 to i8
  %550 = icmp eq i8 %549, 0
  %551 = bitcast [32 x i32]* %2 to i64*
  %552 = load volatile i64, i64* %551, align 16, !tbaa !25
  %553 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  br i1 %550, label %554, label %556

554:                                              ; preds = %534
  %555 = trunc i64 %552 to i32
  store volatile i32 %555, i32* %142, align 16, !tbaa !35
  br label %559

556:                                              ; preds = %534
  %557 = or i64 %553, %552
  %558 = trunc i64 %557 to i32
  store volatile i32 %558, i32* %142, align 16, !tbaa !35
  br label %559

559:                                              ; preds = %556, %554
  %560 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 54
  %561 = bitcast i8* %560 to i64*
  %562 = load i64, i64* %561, align 8, !tbaa !25
  %563 = trunc i64 %562 to i8
  %564 = icmp eq i8 %563, 0
  %565 = bitcast i32* %143 to i64*
  %566 = load volatile i64, i64* %565, align 4, !tbaa !25
  %567 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %568 = select i1 %564, i64 0, i64 %567
  %569 = or i64 %566, %568
  %570 = trunc i64 %569 to i32
  store volatile i32 %570, i32* %143, align 4, !tbaa !35
  %571 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 2
  %572 = bitcast i8* %571 to i64*
  %573 = load i64, i64* %572, align 8, !tbaa !25
  %574 = trunc i64 %573 to i8
  %575 = icmp eq i8 %574, 0
  %576 = bitcast [32 x i32]* %2 to i64*
  %577 = load volatile i64, i64* %576, align 16, !tbaa !25
  %578 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  br i1 %575, label %579, label %581

579:                                              ; preds = %559
  %580 = trunc i64 %577 to i32
  store volatile i32 %580, i32* %142, align 16, !tbaa !35
  br label %584

581:                                              ; preds = %559
  %582 = or i64 %578, %577
  %583 = trunc i64 %582 to i32
  store volatile i32 %583, i32* %142, align 16, !tbaa !35
  br label %584

584:                                              ; preds = %581, %579
  %585 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 29
  %586 = bitcast i8* %585 to i64*
  %587 = load i64, i64* %586, align 8, !tbaa !25
  %588 = trunc i64 %587 to i8
  %589 = icmp eq i8 %588, 0
  %590 = bitcast i32* %143 to i64*
  %591 = load volatile i64, i64* %590, align 4, !tbaa !25
  %592 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %593 = select i1 %589, i64 0, i64 %592
  %594 = or i64 %591, %593
  %595 = trunc i64 %594 to i32
  store volatile i32 %595, i32* %143, align 4, !tbaa !35
  %596 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 27
  %597 = bitcast i8* %596 to i64*
  %598 = load i64, i64* %597, align 8, !tbaa !25
  %599 = trunc i64 %598 to i8
  %600 = icmp eq i8 %599, 0
  %601 = bitcast [32 x i32]* %2 to i64*
  %602 = load volatile i64, i64* %601, align 16, !tbaa !25
  %603 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  br i1 %600, label %604, label %606

604:                                              ; preds = %584
  %605 = trunc i64 %602 to i32
  store volatile i32 %605, i32* %142, align 16, !tbaa !35
  br label %609

606:                                              ; preds = %584
  %607 = or i64 %603, %602
  %608 = trunc i64 %607 to i32
  store volatile i32 %608, i32* %142, align 16, !tbaa !35
  br label %609

609:                                              ; preds = %606, %604
  %610 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 39
  %611 = bitcast i8* %610 to i64*
  %612 = load i64, i64* %611, align 8, !tbaa !25
  %613 = trunc i64 %612 to i8
  %614 = icmp eq i8 %613, 0
  %615 = bitcast i32* %143 to i64*
  %616 = load volatile i64, i64* %615, align 4, !tbaa !25
  %617 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %618 = select i1 %614, i64 0, i64 %617
  %619 = or i64 %616, %618
  %620 = trunc i64 %619 to i32
  store volatile i32 %620, i32* %143, align 4, !tbaa !35
  %621 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 14
  %622 = bitcast i8* %621 to i64*
  %623 = load i64, i64* %622, align 8, !tbaa !25
  %624 = trunc i64 %623 to i8
  %625 = icmp eq i8 %624, 0
  %626 = bitcast [32 x i32]* %2 to i64*
  %627 = load volatile i64, i64* %626, align 16, !tbaa !25
  %628 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  br i1 %625, label %629, label %631

629:                                              ; preds = %609
  %630 = trunc i64 %627 to i32
  store volatile i32 %630, i32* %142, align 16, !tbaa !35
  br label %634

631:                                              ; preds = %609
  %632 = or i64 %628, %627
  %633 = trunc i64 %632 to i32
  store volatile i32 %633, i32* %142, align 16, !tbaa !35
  br label %634

634:                                              ; preds = %631, %629
  %635 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 50
  %636 = bitcast i8* %635 to i64*
  %637 = load i64, i64* %636, align 8, !tbaa !25
  %638 = trunc i64 %637 to i8
  %639 = icmp eq i8 %638, 0
  %640 = bitcast i32* %143 to i64*
  %641 = load volatile i64, i64* %640, align 4, !tbaa !25
  %642 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %643 = select i1 %639, i64 0, i64 %642
  %644 = or i64 %641, %643
  %645 = trunc i64 %644 to i32
  store volatile i32 %645, i32* %143, align 4, !tbaa !35
  %646 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 5
  %647 = bitcast i8* %646 to i64*
  %648 = load i64, i64* %647, align 8, !tbaa !25
  %649 = trunc i64 %648 to i8
  %650 = icmp eq i8 %649, 0
  %651 = bitcast [32 x i32]* %2 to i64*
  %652 = load volatile i64, i64* %651, align 16, !tbaa !25
  %653 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  br i1 %650, label %654, label %656

654:                                              ; preds = %634
  %655 = trunc i64 %652 to i32
  store volatile i32 %655, i32* %142, align 16, !tbaa !35
  br label %659

656:                                              ; preds = %634
  %657 = or i64 %653, %652
  %658 = trunc i64 %657 to i32
  store volatile i32 %658, i32* %142, align 16, !tbaa !35
  br label %659

659:                                              ; preds = %656, %654
  %660 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 44
  %661 = bitcast i8* %660 to i64*
  %662 = load i64, i64* %661, align 8, !tbaa !25
  %663 = trunc i64 %662 to i8
  %664 = icmp eq i8 %663, 0
  %665 = bitcast i32* %143 to i64*
  %666 = load volatile i64, i64* %665, align 4, !tbaa !25
  %667 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %668 = select i1 %664, i64 0, i64 %667
  %669 = or i64 %666, %668
  %670 = trunc i64 %669 to i32
  store volatile i32 %670, i32* %143, align 4, !tbaa !35
  %671 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 20
  %672 = bitcast i8* %671 to i64*
  %673 = load i64, i64* %672, align 8, !tbaa !25
  %674 = trunc i64 %673 to i8
  %675 = icmp eq i8 %674, 0
  %676 = bitcast [32 x i32]* %2 to i64*
  %677 = load volatile i64, i64* %676, align 16, !tbaa !25
  %678 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  br i1 %675, label %679, label %681

679:                                              ; preds = %659
  %680 = trunc i64 %677 to i32
  store volatile i32 %680, i32* %142, align 16, !tbaa !35
  br label %684

681:                                              ; preds = %659
  %682 = or i64 %678, %677
  %683 = trunc i64 %682 to i32
  store volatile i32 %683, i32* %142, align 16, !tbaa !35
  br label %684

684:                                              ; preds = %681, %679
  %685 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 32
  %686 = bitcast i8* %685 to i64*
  %687 = load i64, i64* %686, align 16, !tbaa !25
  %688 = trunc i64 %687 to i8
  %689 = icmp eq i8 %688, 0
  %690 = bitcast i32* %143 to i64*
  %691 = load volatile i64, i64* %690, align 4, !tbaa !25
  %692 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %693 = select i1 %689, i64 0, i64 %692
  %694 = or i64 %691, %693
  %695 = trunc i64 %694 to i32
  store volatile i32 %695, i32* %143, align 4, !tbaa !35
  %696 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 9
  %697 = bitcast i8* %696 to i64*
  %698 = load i64, i64* %697, align 8, !tbaa !25
  %699 = trunc i64 %698 to i8
  %700 = icmp eq i8 %699, 0
  %701 = bitcast [32 x i32]* %2 to i64*
  %702 = load volatile i64, i64* %701, align 16, !tbaa !25
  %703 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  br i1 %700, label %704, label %706

704:                                              ; preds = %684
  %705 = trunc i64 %702 to i32
  store volatile i32 %705, i32* %142, align 16, !tbaa !35
  br label %709

706:                                              ; preds = %684
  %707 = or i64 %703, %702
  %708 = trunc i64 %707 to i32
  store volatile i32 %708, i32* %142, align 16, !tbaa !35
  br label %709

709:                                              ; preds = %706, %704
  %710 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 47
  %711 = bitcast i8* %710 to i64*
  %712 = load i64, i64* %711, align 8, !tbaa !25
  %713 = trunc i64 %712 to i8
  %714 = icmp eq i8 %713, 0
  %715 = bitcast i32* %143 to i64*
  %716 = load volatile i64, i64* %715, align 4, !tbaa !25
  %717 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %718 = select i1 %714, i64 0, i64 %717
  %719 = or i64 %716, %718
  %720 = trunc i64 %719 to i32
  store volatile i32 %720, i32* %143, align 4, !tbaa !35
  %721 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 22
  %722 = bitcast i8* %721 to i64*
  %723 = load i64, i64* %722, align 8, !tbaa !25
  %724 = trunc i64 %723 to i8
  %725 = icmp eq i8 %724, 0
  %726 = bitcast [32 x i32]* %2 to i64*
  %727 = load volatile i64, i64* %726, align 16, !tbaa !25
  %728 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  br i1 %725, label %729, label %731

729:                                              ; preds = %709
  %730 = trunc i64 %727 to i32
  store volatile i32 %730, i32* %142, align 16, !tbaa !35
  br label %734

731:                                              ; preds = %709
  %732 = or i64 %728, %727
  %733 = trunc i64 %732 to i32
  store volatile i32 %733, i32* %142, align 16, !tbaa !35
  br label %734

734:                                              ; preds = %731, %729
  %735 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 43
  %736 = bitcast i8* %735 to i64*
  %737 = load i64, i64* %736, align 8, !tbaa !25
  %738 = trunc i64 %737 to i8
  %739 = icmp eq i8 %738, 0
  %740 = bitcast i32* %143 to i64*
  %741 = load volatile i64, i64* %740, align 4, !tbaa !25
  %742 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %743 = select i1 %739, i64 0, i64 %742
  %744 = or i64 %741, %743
  %745 = trunc i64 %744 to i32
  store volatile i32 %745, i32* %143, align 4, !tbaa !35
  %746 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 18
  %747 = bitcast i8* %746 to i64*
  %748 = load i64, i64* %747, align 8, !tbaa !25
  %749 = trunc i64 %748 to i8
  %750 = icmp eq i8 %749, 0
  %751 = bitcast [32 x i32]* %2 to i64*
  %752 = load volatile i64, i64* %751, align 16, !tbaa !25
  %753 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  br i1 %750, label %754, label %756

754:                                              ; preds = %734
  %755 = trunc i64 %752 to i32
  store volatile i32 %755, i32* %142, align 16, !tbaa !35
  br label %759

756:                                              ; preds = %734
  %757 = or i64 %753, %752
  %758 = trunc i64 %757 to i32
  store volatile i32 %758, i32* %142, align 16, !tbaa !35
  br label %759

759:                                              ; preds = %756, %754
  %760 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 48
  %761 = bitcast i8* %760 to i64*
  %762 = load i64, i64* %761, align 16, !tbaa !25
  %763 = trunc i64 %762 to i8
  %764 = icmp eq i8 %763, 0
  %765 = bitcast i32* %143 to i64*
  %766 = load volatile i64, i64* %765, align 4, !tbaa !25
  %767 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %768 = select i1 %764, i64 0, i64 %767
  %769 = or i64 %766, %768
  %770 = trunc i64 %769 to i32
  store volatile i32 %770, i32* %143, align 4, !tbaa !35
  %771 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 11
  %772 = bitcast i8* %771 to i64*
  %773 = load i64, i64* %772, align 8, !tbaa !25
  %774 = trunc i64 %773 to i8
  %775 = icmp eq i8 %774, 0
  %776 = bitcast [32 x i32]* %2 to i64*
  %777 = load volatile i64, i64* %776, align 16, !tbaa !25
  %778 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  br i1 %775, label %779, label %781

779:                                              ; preds = %759
  %780 = trunc i64 %777 to i32
  store volatile i32 %780, i32* %142, align 16, !tbaa !35
  br label %784

781:                                              ; preds = %759
  %782 = or i64 %778, %777
  %783 = trunc i64 %782 to i32
  store volatile i32 %783, i32* %142, align 16, !tbaa !35
  br label %784

784:                                              ; preds = %781, %779
  %785 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 38
  %786 = bitcast i8* %785 to i64*
  %787 = load i64, i64* %786, align 8, !tbaa !25
  %788 = trunc i64 %787 to i8
  %789 = icmp eq i8 %788, 0
  %790 = bitcast i32* %143 to i64*
  %791 = load volatile i64, i64* %790, align 4, !tbaa !25
  %792 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %793 = select i1 %789, i64 0, i64 %792
  %794 = or i64 %791, %793
  %795 = trunc i64 %794 to i32
  store volatile i32 %795, i32* %143, align 4, !tbaa !35
  %796 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 3
  %797 = bitcast i8* %796 to i64*
  %798 = load i64, i64* %797, align 8, !tbaa !25
  %799 = trunc i64 %798 to i8
  %800 = icmp eq i8 %799, 0
  %801 = bitcast [32 x i32]* %2 to i64*
  %802 = load volatile i64, i64* %801, align 16, !tbaa !25
  %803 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  br i1 %800, label %804, label %806

804:                                              ; preds = %784
  %805 = trunc i64 %802 to i32
  store volatile i32 %805, i32* %142, align 16, !tbaa !35
  br label %809

806:                                              ; preds = %784
  %807 = or i64 %803, %802
  %808 = trunc i64 %807 to i32
  store volatile i32 %808, i32* %142, align 16, !tbaa !35
  br label %809

809:                                              ; preds = %806, %804
  %810 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 55
  %811 = bitcast i8* %810 to i64*
  %812 = load i64, i64* %811, align 8, !tbaa !25
  %813 = trunc i64 %812 to i8
  %814 = icmp eq i8 %813, 0
  %815 = bitcast i32* %143 to i64*
  %816 = load volatile i64, i64* %815, align 4, !tbaa !25
  %817 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %818 = select i1 %814, i64 0, i64 %817
  %819 = or i64 %816, %818
  %820 = trunc i64 %819 to i32
  store volatile i32 %820, i32* %143, align 4, !tbaa !35
  %821 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 25
  %822 = bitcast i8* %821 to i64*
  %823 = load i64, i64* %822, align 8, !tbaa !25
  %824 = trunc i64 %823 to i8
  %825 = icmp eq i8 %824, 0
  %826 = bitcast [32 x i32]* %2 to i64*
  %827 = load volatile i64, i64* %826, align 16, !tbaa !25
  %828 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  br i1 %825, label %829, label %831

829:                                              ; preds = %809
  %830 = trunc i64 %827 to i32
  store volatile i32 %830, i32* %142, align 16, !tbaa !35
  br label %834

831:                                              ; preds = %809
  %832 = or i64 %828, %827
  %833 = trunc i64 %832 to i32
  store volatile i32 %833, i32* %142, align 16, !tbaa !35
  br label %834

834:                                              ; preds = %831, %829
  %835 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 33
  %836 = bitcast i8* %835 to i64*
  %837 = load i64, i64* %836, align 8, !tbaa !25
  %838 = trunc i64 %837 to i8
  %839 = icmp eq i8 %838, 0
  %840 = bitcast i32* %143 to i64*
  %841 = load volatile i64, i64* %840, align 4, !tbaa !25
  %842 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %843 = select i1 %839, i64 0, i64 %842
  %844 = or i64 %841, %843
  %845 = trunc i64 %844 to i32
  store volatile i32 %845, i32* %143, align 4, !tbaa !35
  %846 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 7
  %847 = bitcast i8* %846 to i64*
  %848 = load i64, i64* %847, align 8, !tbaa !25
  %849 = trunc i64 %848 to i8
  %850 = icmp eq i8 %849, 0
  %851 = bitcast [32 x i32]* %2 to i64*
  %852 = load volatile i64, i64* %851, align 16, !tbaa !25
  %853 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  br i1 %850, label %854, label %856

854:                                              ; preds = %834
  %855 = trunc i64 %852 to i32
  store volatile i32 %855, i32* %142, align 16, !tbaa !35
  br label %859

856:                                              ; preds = %834
  %857 = or i64 %853, %852
  %858 = trunc i64 %857 to i32
  store volatile i32 %858, i32* %142, align 16, !tbaa !35
  br label %859

859:                                              ; preds = %856, %854
  %860 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 52
  %861 = bitcast i8* %860 to i64*
  %862 = load i64, i64* %861, align 8, !tbaa !25
  %863 = trunc i64 %862 to i8
  %864 = icmp eq i8 %863, 0
  %865 = bitcast i32* %143 to i64*
  %866 = load volatile i64, i64* %865, align 4, !tbaa !25
  %867 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %868 = select i1 %864, i64 0, i64 %867
  %869 = or i64 %866, %868
  %870 = trunc i64 %869 to i32
  store volatile i32 %870, i32* %143, align 4, !tbaa !35
  %871 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 15
  %872 = bitcast i8* %871 to i64*
  %873 = load i64, i64* %872, align 8, !tbaa !25
  %874 = trunc i64 %873 to i8
  %875 = icmp eq i8 %874, 0
  %876 = bitcast [32 x i32]* %2 to i64*
  %877 = load volatile i64, i64* %876, align 16, !tbaa !25
  %878 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  br i1 %875, label %879, label %881

879:                                              ; preds = %859
  %880 = trunc i64 %877 to i32
  store volatile i32 %880, i32* %142, align 16, !tbaa !35
  br label %884

881:                                              ; preds = %859
  %882 = or i64 %878, %877
  %883 = trunc i64 %882 to i32
  store volatile i32 %883, i32* %142, align 16, !tbaa !35
  br label %884

884:                                              ; preds = %881, %879
  %885 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 45
  %886 = bitcast i8* %885 to i64*
  %887 = load i64, i64* %886, align 8, !tbaa !25
  %888 = trunc i64 %887 to i8
  %889 = icmp eq i8 %888, 0
  %890 = bitcast i32* %143 to i64*
  %891 = load volatile i64, i64* %890, align 4, !tbaa !25
  %892 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %893 = select i1 %889, i64 0, i64 %892
  %894 = or i64 %891, %893
  %895 = trunc i64 %894 to i32
  store volatile i32 %895, i32* %143, align 4, !tbaa !35
  %896 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 6
  %897 = bitcast i8* %896 to i64*
  %898 = load i64, i64* %897, align 8, !tbaa !25
  %899 = trunc i64 %898 to i8
  %900 = icmp eq i8 %899, 0
  %901 = bitcast [32 x i32]* %2 to i64*
  %902 = load volatile i64, i64* %901, align 16, !tbaa !25
  %903 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  br i1 %900, label %904, label %906

904:                                              ; preds = %884
  %905 = trunc i64 %902 to i32
  store volatile i32 %905, i32* %142, align 16, !tbaa !35
  br label %909

906:                                              ; preds = %884
  %907 = or i64 %903, %902
  %908 = trunc i64 %907 to i32
  store volatile i32 %908, i32* %142, align 16, !tbaa !35
  br label %909

909:                                              ; preds = %906, %904
  %910 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 41
  %911 = bitcast i8* %910 to i64*
  %912 = load i64, i64* %911, align 8, !tbaa !25
  %913 = trunc i64 %912 to i8
  %914 = icmp eq i8 %913, 0
  %915 = bitcast i32* %143 to i64*
  %916 = load volatile i64, i64* %915, align 4, !tbaa !25
  %917 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %918 = select i1 %914, i64 0, i64 %917
  %919 = or i64 %916, %918
  %920 = trunc i64 %919 to i32
  store volatile i32 %920, i32* %143, align 4, !tbaa !35
  %921 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 26
  %922 = bitcast i8* %921 to i64*
  %923 = load i64, i64* %922, align 8, !tbaa !25
  %924 = trunc i64 %923 to i8
  %925 = icmp eq i8 %924, 0
  %926 = bitcast [32 x i32]* %2 to i64*
  %927 = load volatile i64, i64* %926, align 16, !tbaa !25
  %928 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  br i1 %925, label %929, label %931

929:                                              ; preds = %909
  %930 = trunc i64 %927 to i32
  store volatile i32 %930, i32* %142, align 16, !tbaa !35
  br label %934

931:                                              ; preds = %909
  %932 = or i64 %928, %927
  %933 = trunc i64 %932 to i32
  store volatile i32 %933, i32* %142, align 16, !tbaa !35
  br label %934

934:                                              ; preds = %931, %929
  %935 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 49
  %936 = bitcast i8* %935 to i64*
  %937 = load i64, i64* %936, align 8, !tbaa !25
  %938 = trunc i64 %937 to i8
  %939 = icmp eq i8 %938, 0
  %940 = bitcast i32* %143 to i64*
  %941 = load volatile i64, i64* %940, align 4, !tbaa !25
  %942 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %943 = select i1 %939, i64 0, i64 %942
  %944 = or i64 %941, %943
  %945 = trunc i64 %944 to i32
  store volatile i32 %945, i32* %143, align 4, !tbaa !35
  %946 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 19
  %947 = bitcast i8* %946 to i64*
  %948 = load i64, i64* %947, align 8, !tbaa !25
  %949 = trunc i64 %948 to i8
  %950 = icmp eq i8 %949, 0
  %951 = bitcast [32 x i32]* %2 to i64*
  %952 = load volatile i64, i64* %951, align 16, !tbaa !25
  %953 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  br i1 %950, label %954, label %956

954:                                              ; preds = %934
  %955 = trunc i64 %952 to i32
  store volatile i32 %955, i32* %142, align 16, !tbaa !35
  br label %959

956:                                              ; preds = %934
  %957 = or i64 %953, %952
  %958 = trunc i64 %957 to i32
  store volatile i32 %958, i32* %142, align 16, !tbaa !35
  br label %959

959:                                              ; preds = %956, %954
  %960 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 35
  %961 = bitcast i8* %960 to i64*
  %962 = load i64, i64* %961, align 8, !tbaa !25
  %963 = trunc i64 %962 to i8
  %964 = icmp eq i8 %963, 0
  %965 = bitcast i32* %143 to i64*
  %966 = load volatile i64, i64* %965, align 4, !tbaa !25
  %967 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %968 = select i1 %964, i64 0, i64 %967
  %969 = or i64 %966, %968
  %970 = trunc i64 %969 to i32
  store volatile i32 %970, i32* %143, align 4, !tbaa !35
  %971 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 12
  %972 = bitcast i8* %971 to i64*
  %973 = load i64, i64* %972, align 8, !tbaa !25
  %974 = trunc i64 %973 to i8
  %975 = icmp eq i8 %974, 0
  %976 = bitcast [32 x i32]* %2 to i64*
  %977 = load volatile i64, i64* %976, align 16, !tbaa !25
  %978 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  br i1 %975, label %979, label %981

979:                                              ; preds = %959
  %980 = trunc i64 %977 to i32
  store volatile i32 %980, i32* %142, align 16, !tbaa !35
  br label %984

981:                                              ; preds = %959
  %982 = or i64 %978, %977
  %983 = trunc i64 %982 to i32
  store volatile i32 %983, i32* %142, align 16, !tbaa !35
  br label %984

984:                                              ; preds = %981, %979
  %985 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 28
  %986 = bitcast i8* %985 to i64*
  %987 = load i64, i64* %986, align 8, !tbaa !25
  %988 = trunc i64 %987 to i8
  %989 = icmp eq i8 %988, 0
  %990 = bitcast i32* %143 to i64*
  %991 = load volatile i64, i64* %990, align 4, !tbaa !25
  %992 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %993 = select i1 %989, i64 0, i64 %992
  %994 = or i64 %991, %993
  %995 = trunc i64 %994 to i32
  store volatile i32 %995, i32* %143, align 4, !tbaa !35
  %996 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 1
  %997 = bitcast i8* %996 to i64*
  %998 = load i64, i64* %997, align 8, !tbaa !25
  %999 = trunc i64 %998 to i8
  %1000 = icmp eq i8 %999, 0
  %1001 = bitcast [32 x i32]* %2 to i64*
  %1002 = load volatile i64, i64* %1001, align 16, !tbaa !25
  %1003 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  br i1 %1000, label %1004, label %1006

1004:                                             ; preds = %984
  %1005 = trunc i64 %1002 to i32
  store volatile i32 %1005, i32* %142, align 16, !tbaa !35
  br label %1009

1006:                                             ; preds = %984
  %1007 = or i64 %1003, %1002
  %1008 = trunc i64 %1007 to i32
  store volatile i32 %1008, i32* %142, align 16, !tbaa !35
  br label %1009

1009:                                             ; preds = %1006, %1004
  %1010 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 31
  %1011 = bitcast i8* %1010 to i64*
  %1012 = load i64, i64* %1011, align 8, !tbaa !25
  %1013 = trunc i64 %1012 to i8
  %1014 = icmp eq i8 %1013, 0
  %1015 = bitcast i32* %143 to i64*
  %1016 = load volatile i64, i64* %1015, align 4, !tbaa !25
  %1017 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %1018 = select i1 %1014, i64 0, i64 %1017
  %1019 = or i64 %1016, %1018
  %1020 = trunc i64 %1019 to i32
  store volatile i32 %1020, i32* %143, align 4, !tbaa !35
  %1021 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 2
  store i32 0, i32* %1021, align 8, !tbaa !35
  %1022 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 3
  store i32 0, i32* %1022, align 4, !tbaa !35
  %1023 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 2
  %1024 = bitcast i8* %1023 to i64*
  %1025 = load i64, i64* %1024, align 8, !tbaa !25
  %1026 = trunc i64 %1025 to i8
  store i8 %1026, i8* %8, align 16, !tbaa !14
  %1027 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 3
  %1028 = bitcast i8* %1027 to i64*
  %1029 = load i64, i64* %1028, align 8, !tbaa !25
  %1030 = trunc i64 %1029 to i8
  %1031 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 1
  store i8 %1030, i8* %1031, align 1, !tbaa !14
  %1032 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 4
  %1033 = bitcast i8* %1032 to i64*
  %1034 = load i64, i64* %1033, align 8, !tbaa !25
  %1035 = trunc i64 %1034 to i8
  %1036 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 2
  store i8 %1035, i8* %1036, align 2, !tbaa !14
  %1037 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 5
  %1038 = bitcast i8* %1037 to i64*
  %1039 = load i64, i64* %1038, align 8, !tbaa !25
  %1040 = trunc i64 %1039 to i8
  %1041 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 3
  store i8 %1040, i8* %1041, align 1, !tbaa !14
  %1042 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 6
  %1043 = bitcast i8* %1042 to i64*
  %1044 = load i64, i64* %1043, align 8, !tbaa !25
  %1045 = trunc i64 %1044 to i8
  %1046 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 4
  store i8 %1045, i8* %1046, align 4, !tbaa !14
  %1047 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 7
  %1048 = bitcast i8* %1047 to i64*
  %1049 = load i64, i64* %1048, align 8, !tbaa !25
  %1050 = trunc i64 %1049 to i8
  %1051 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 5
  store i8 %1050, i8* %1051, align 1, !tbaa !14
  %1052 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 8
  %1053 = bitcast i8* %1052 to i64*
  %1054 = load i64, i64* %1053, align 8, !tbaa !25
  %1055 = trunc i64 %1054 to i8
  %1056 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 6
  store i8 %1055, i8* %1056, align 2, !tbaa !14
  %1057 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 9
  %1058 = bitcast i8* %1057 to i64*
  %1059 = load i64, i64* %1058, align 8, !tbaa !25
  %1060 = trunc i64 %1059 to i8
  %1061 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 7
  store i8 %1060, i8* %1061, align 1, !tbaa !14
  %1062 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 10
  %1063 = bitcast i8* %1062 to i64*
  %1064 = load i64, i64* %1063, align 8, !tbaa !25
  %1065 = trunc i64 %1064 to i8
  %1066 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 8
  store i8 %1065, i8* %1066, align 8, !tbaa !14
  %1067 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 11
  %1068 = bitcast i8* %1067 to i64*
  %1069 = load i64, i64* %1068, align 8, !tbaa !25
  %1070 = trunc i64 %1069 to i8
  %1071 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 9
  store i8 %1070, i8* %1071, align 1, !tbaa !14
  %1072 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 12
  %1073 = bitcast i8* %1072 to i64*
  %1074 = load i64, i64* %1073, align 8, !tbaa !25
  %1075 = trunc i64 %1074 to i8
  %1076 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 10
  store i8 %1075, i8* %1076, align 2, !tbaa !14
  %1077 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 13
  %1078 = bitcast i8* %1077 to i64*
  %1079 = load i64, i64* %1078, align 8, !tbaa !25
  %1080 = trunc i64 %1079 to i8
  %1081 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 11
  store i8 %1080, i8* %1081, align 1, !tbaa !14
  %1082 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 14
  %1083 = bitcast i8* %1082 to i64*
  %1084 = load i64, i64* %1083, align 8, !tbaa !25
  %1085 = trunc i64 %1084 to i8
  %1086 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 12
  store i8 %1085, i8* %1086, align 4, !tbaa !14
  %1087 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 15
  %1088 = bitcast i8* %1087 to i64*
  %1089 = load i64, i64* %1088, align 8, !tbaa !25
  %1090 = trunc i64 %1089 to i8
  %1091 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 13
  store i8 %1090, i8* %1091, align 1, !tbaa !14
  %1092 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 16
  %1093 = bitcast i8* %1092 to i64*
  %1094 = load i64, i64* %1093, align 16, !tbaa !25
  %1095 = trunc i64 %1094 to i8
  %1096 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 14
  store i8 %1095, i8* %1096, align 2, !tbaa !14
  %1097 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 17
  %1098 = bitcast i8* %1097 to i64*
  %1099 = load i64, i64* %1098, align 8, !tbaa !25
  %1100 = trunc i64 %1099 to i8
  %1101 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 15
  store i8 %1100, i8* %1101, align 1, !tbaa !14
  %1102 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 18
  %1103 = bitcast i8* %1102 to i64*
  %1104 = load i64, i64* %1103, align 8, !tbaa !25
  %1105 = trunc i64 %1104 to i8
  %1106 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 16
  store i8 %1105, i8* %1106, align 16, !tbaa !14
  %1107 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 19
  %1108 = bitcast i8* %1107 to i64*
  %1109 = load i64, i64* %1108, align 8, !tbaa !25
  %1110 = trunc i64 %1109 to i8
  %1111 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 17
  store i8 %1110, i8* %1111, align 1, !tbaa !14
  %1112 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 20
  %1113 = bitcast i8* %1112 to i64*
  %1114 = load i64, i64* %1113, align 8, !tbaa !25
  %1115 = trunc i64 %1114 to i8
  %1116 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 18
  store i8 %1115, i8* %1116, align 2, !tbaa !14
  %1117 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 21
  %1118 = bitcast i8* %1117 to i64*
  %1119 = load i64, i64* %1118, align 8, !tbaa !25
  %1120 = trunc i64 %1119 to i8
  %1121 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 19
  store i8 %1120, i8* %1121, align 1, !tbaa !14
  %1122 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 22
  %1123 = bitcast i8* %1122 to i64*
  %1124 = load i64, i64* %1123, align 8, !tbaa !25
  %1125 = trunc i64 %1124 to i8
  %1126 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 20
  store i8 %1125, i8* %1126, align 4, !tbaa !14
  %1127 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 23
  %1128 = bitcast i8* %1127 to i64*
  %1129 = load i64, i64* %1128, align 8, !tbaa !25
  %1130 = trunc i64 %1129 to i8
  %1131 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 21
  store i8 %1130, i8* %1131, align 1, !tbaa !14
  %1132 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 24
  %1133 = bitcast i8* %1132 to i64*
  %1134 = load i64, i64* %1133, align 8, !tbaa !25
  %1135 = trunc i64 %1134 to i8
  %1136 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 22
  store i8 %1135, i8* %1136, align 2, !tbaa !14
  %1137 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 25
  %1138 = bitcast i8* %1137 to i64*
  %1139 = load i64, i64* %1138, align 8, !tbaa !25
  %1140 = trunc i64 %1139 to i8
  %1141 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 23
  store i8 %1140, i8* %1141, align 1, !tbaa !14
  %1142 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 26
  %1143 = bitcast i8* %1142 to i64*
  %1144 = load i64, i64* %1143, align 8, !tbaa !25
  %1145 = trunc i64 %1144 to i8
  %1146 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 24
  store i8 %1145, i8* %1146, align 8, !tbaa !14
  %1147 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 27
  %1148 = bitcast i8* %1147 to i64*
  %1149 = load i64, i64* %1148, align 8, !tbaa !25
  %1150 = trunc i64 %1149 to i8
  %1151 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 25
  store i8 %1150, i8* %1151, align 1, !tbaa !14
  %1152 = bitcast [56 x i8]* %4 to i64*
  %1153 = load i64, i64* %1152, align 16, !tbaa !25
  %1154 = trunc i64 %1153 to i8
  %1155 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 26
  store i8 %1154, i8* %1155, align 2, !tbaa !14
  %1156 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 1
  %1157 = bitcast i8* %1156 to i64*
  %1158 = load i64, i64* %1157, align 8, !tbaa !25
  %1159 = trunc i64 %1158 to i8
  %1160 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 27
  store i8 %1159, i8* %1160, align 1, !tbaa !14
  %1161 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 30
  %1162 = bitcast i8* %1161 to i64*
  %1163 = load i64, i64* %1162, align 8, !tbaa !25
  %1164 = trunc i64 %1163 to i8
  %1165 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 28
  store i8 %1164, i8* %1165, align 4, !tbaa !14
  %1166 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 31
  %1167 = bitcast i8* %1166 to i64*
  %1168 = load i64, i64* %1167, align 8, !tbaa !25
  %1169 = trunc i64 %1168 to i8
  %1170 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 29
  store i8 %1169, i8* %1170, align 1, !tbaa !14
  %1171 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 32
  %1172 = bitcast i8* %1171 to i64*
  %1173 = load i64, i64* %1172, align 16, !tbaa !25
  %1174 = trunc i64 %1173 to i8
  %1175 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 30
  store i8 %1174, i8* %1175, align 2, !tbaa !14
  %1176 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 33
  %1177 = bitcast i8* %1176 to i64*
  %1178 = load i64, i64* %1177, align 8, !tbaa !25
  %1179 = trunc i64 %1178 to i8
  %1180 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 31
  store i8 %1179, i8* %1180, align 1, !tbaa !14
  %1181 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 34
  %1182 = bitcast i8* %1181 to i64*
  %1183 = load i64, i64* %1182, align 8, !tbaa !25
  %1184 = trunc i64 %1183 to i8
  %1185 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 32
  store i8 %1184, i8* %1185, align 16, !tbaa !14
  %1186 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 35
  %1187 = bitcast i8* %1186 to i64*
  %1188 = load i64, i64* %1187, align 8, !tbaa !25
  %1189 = trunc i64 %1188 to i8
  %1190 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 33
  store i8 %1189, i8* %1190, align 1, !tbaa !14
  %1191 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 36
  %1192 = bitcast i8* %1191 to i64*
  %1193 = load i64, i64* %1192, align 8, !tbaa !25
  %1194 = trunc i64 %1193 to i8
  %1195 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 34
  store i8 %1194, i8* %1195, align 2, !tbaa !14
  %1196 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 37
  %1197 = bitcast i8* %1196 to i64*
  %1198 = load i64, i64* %1197, align 8, !tbaa !25
  %1199 = trunc i64 %1198 to i8
  %1200 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 35
  store i8 %1199, i8* %1200, align 1, !tbaa !14
  %1201 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 38
  %1202 = bitcast i8* %1201 to i64*
  %1203 = load i64, i64* %1202, align 8, !tbaa !25
  %1204 = trunc i64 %1203 to i8
  %1205 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 36
  store i8 %1204, i8* %1205, align 4, !tbaa !14
  %1206 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 39
  %1207 = bitcast i8* %1206 to i64*
  %1208 = load i64, i64* %1207, align 8, !tbaa !25
  %1209 = trunc i64 %1208 to i8
  %1210 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 37
  store i8 %1209, i8* %1210, align 1, !tbaa !14
  %1211 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 40
  %1212 = bitcast i8* %1211 to i64*
  %1213 = load i64, i64* %1212, align 8, !tbaa !25
  %1214 = trunc i64 %1213 to i8
  %1215 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 38
  store i8 %1214, i8* %1215, align 2, !tbaa !14
  %1216 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 41
  %1217 = bitcast i8* %1216 to i64*
  %1218 = load i64, i64* %1217, align 8, !tbaa !25
  %1219 = trunc i64 %1218 to i8
  %1220 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 39
  store i8 %1219, i8* %1220, align 1, !tbaa !14
  %1221 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 42
  %1222 = bitcast i8* %1221 to i64*
  %1223 = load i64, i64* %1222, align 8, !tbaa !25
  %1224 = trunc i64 %1223 to i8
  %1225 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 40
  store i8 %1224, i8* %1225, align 8, !tbaa !14
  %1226 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 43
  %1227 = bitcast i8* %1226 to i64*
  %1228 = load i64, i64* %1227, align 8, !tbaa !25
  %1229 = trunc i64 %1228 to i8
  %1230 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 41
  store i8 %1229, i8* %1230, align 1, !tbaa !14
  %1231 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 44
  %1232 = bitcast i8* %1231 to i64*
  %1233 = load i64, i64* %1232, align 8, !tbaa !25
  %1234 = trunc i64 %1233 to i8
  %1235 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 42
  store i8 %1234, i8* %1235, align 2, !tbaa !14
  %1236 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 45
  %1237 = bitcast i8* %1236 to i64*
  %1238 = load i64, i64* %1237, align 8, !tbaa !25
  %1239 = trunc i64 %1238 to i8
  %1240 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 43
  store i8 %1239, i8* %1240, align 1, !tbaa !14
  %1241 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 46
  %1242 = bitcast i8* %1241 to i64*
  %1243 = load i64, i64* %1242, align 8, !tbaa !25
  %1244 = trunc i64 %1243 to i8
  %1245 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 44
  store i8 %1244, i8* %1245, align 4, !tbaa !14
  %1246 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 47
  %1247 = bitcast i8* %1246 to i64*
  %1248 = load i64, i64* %1247, align 8, !tbaa !25
  %1249 = trunc i64 %1248 to i8
  %1250 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 45
  store i8 %1249, i8* %1250, align 1, !tbaa !14
  %1251 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 48
  %1252 = bitcast i8* %1251 to i64*
  %1253 = load i64, i64* %1252, align 16, !tbaa !25
  %1254 = trunc i64 %1253 to i8
  %1255 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 46
  store i8 %1254, i8* %1255, align 2, !tbaa !14
  %1256 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 49
  %1257 = bitcast i8* %1256 to i64*
  %1258 = load i64, i64* %1257, align 8, !tbaa !25
  %1259 = trunc i64 %1258 to i8
  %1260 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 47
  store i8 %1259, i8* %1260, align 1, !tbaa !14
  %1261 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 50
  %1262 = bitcast i8* %1261 to i64*
  %1263 = load i64, i64* %1262, align 8, !tbaa !25
  %1264 = trunc i64 %1263 to i8
  %1265 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 48
  store i8 %1264, i8* %1265, align 16, !tbaa !14
  %1266 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 51
  %1267 = bitcast i8* %1266 to i64*
  %1268 = load i64, i64* %1267, align 8, !tbaa !25
  %1269 = trunc i64 %1268 to i8
  %1270 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 49
  store i8 %1269, i8* %1270, align 1, !tbaa !14
  %1271 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 52
  %1272 = bitcast i8* %1271 to i64*
  %1273 = load i64, i64* %1272, align 8, !tbaa !25
  %1274 = trunc i64 %1273 to i8
  %1275 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 50
  store i8 %1274, i8* %1275, align 2, !tbaa !14
  %1276 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 53
  %1277 = bitcast i8* %1276 to i64*
  %1278 = load i64, i64* %1277, align 8, !tbaa !25
  %1279 = trunc i64 %1278 to i8
  %1280 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 51
  store i8 %1279, i8* %1280, align 1, !tbaa !14
  %1281 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 54
  %1282 = bitcast i8* %1281 to i64*
  %1283 = load i64, i64* %1282, align 8, !tbaa !25
  %1284 = trunc i64 %1283 to i8
  %1285 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 52
  store i8 %1284, i8* %1285, align 4, !tbaa !14
  %1286 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 55
  %1287 = bitcast i8* %1286 to i64*
  %1288 = load i64, i64* %1287, align 8, !tbaa !25
  %1289 = trunc i64 %1288 to i8
  %1290 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 53
  store i8 %1289, i8* %1290, align 1, !tbaa !14
  %1291 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 28
  %1292 = bitcast i8* %1291 to i64*
  %1293 = load i64, i64* %1292, align 8, !tbaa !25
  %1294 = trunc i64 %1293 to i8
  %1295 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 54
  store i8 %1294, i8* %1295, align 2, !tbaa !14
  %1296 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 29
  %1297 = bitcast i8* %1296 to i64*
  %1298 = load i64, i64* %1297, align 8, !tbaa !25
  %1299 = trunc i64 %1298 to i8
  %1300 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 55
  store i8 %1299, i8* %1300, align 1, !tbaa !14
  %1301 = load i64, i64* %423, align 8, !tbaa !25
  %1302 = trunc i64 %1301 to i8
  %1303 = icmp eq i8 %1302, 0
  %1304 = bitcast i32* %1021 to i64*
  %1305 = load volatile i64, i64* %1304, align 8, !tbaa !25
  %1306 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %1307 = select i1 %1303, i64 0, i64 %1306
  %1308 = or i64 %1305, %1307
  %1309 = trunc i64 %1308 to i32
  store volatile i32 %1309, i32* %1021, align 8, !tbaa !35
  %1310 = load i64, i64* %437, align 8, !tbaa !25
  %1311 = trunc i64 %1310 to i8
  %1312 = icmp eq i8 %1311, 0
  %1313 = bitcast i32* %1022 to i64*
  %1314 = load volatile i64, i64* %1313, align 4, !tbaa !25
  %1315 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %1316 = select i1 %1312, i64 0, i64 %1315
  %1317 = or i64 %1314, %1316
  %1318 = trunc i64 %1317 to i32
  store volatile i32 %1318, i32* %1022, align 4, !tbaa !35
  %1319 = load i64, i64* %448, align 16, !tbaa !25
  %1320 = trunc i64 %1319 to i8
  %1321 = icmp eq i8 %1320, 0
  %1322 = bitcast i32* %1021 to i64*
  %1323 = load volatile i64, i64* %1322, align 8, !tbaa !25
  %1324 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %1325 = select i1 %1321, i64 0, i64 %1324
  %1326 = or i64 %1323, %1325
  %1327 = trunc i64 %1326 to i32
  store volatile i32 %1327, i32* %1021, align 8, !tbaa !35
  %1328 = load i64, i64* %462, align 8, !tbaa !25
  %1329 = trunc i64 %1328 to i8
  %1330 = icmp eq i8 %1329, 0
  %1331 = bitcast i32* %1022 to i64*
  %1332 = load volatile i64, i64* %1331, align 4, !tbaa !25
  %1333 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %1334 = select i1 %1330, i64 0, i64 %1333
  %1335 = or i64 %1332, %1334
  %1336 = trunc i64 %1335 to i32
  store volatile i32 %1336, i32* %1022, align 4, !tbaa !35
  %1337 = load i64, i64* %473, align 8, !tbaa !25
  %1338 = trunc i64 %1337 to i8
  %1339 = icmp eq i8 %1338, 0
  %1340 = bitcast i32* %1021 to i64*
  %1341 = load volatile i64, i64* %1340, align 8, !tbaa !25
  %1342 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %1343 = select i1 %1339, i64 0, i64 %1342
  %1344 = or i64 %1341, %1343
  %1345 = trunc i64 %1344 to i32
  store volatile i32 %1345, i32* %1021, align 8, !tbaa !35
  %1346 = load i64, i64* %487, align 8, !tbaa !25
  %1347 = trunc i64 %1346 to i8
  %1348 = icmp eq i8 %1347, 0
  %1349 = bitcast i32* %1022 to i64*
  %1350 = load volatile i64, i64* %1349, align 4, !tbaa !25
  %1351 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %1352 = select i1 %1348, i64 0, i64 %1351
  %1353 = or i64 %1350, %1352
  %1354 = trunc i64 %1353 to i32
  store volatile i32 %1354, i32* %1022, align 4, !tbaa !35
  %1355 = load i64, i64* %498, align 8, !tbaa !25
  %1356 = trunc i64 %1355 to i8
  %1357 = icmp eq i8 %1356, 0
  %1358 = bitcast i32* %1021 to i64*
  %1359 = load volatile i64, i64* %1358, align 8, !tbaa !25
  %1360 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %1361 = select i1 %1357, i64 0, i64 %1360
  %1362 = or i64 %1359, %1361
  %1363 = trunc i64 %1362 to i32
  store volatile i32 %1363, i32* %1021, align 8, !tbaa !35
  %1364 = load i64, i64* %512, align 8, !tbaa !25
  %1365 = trunc i64 %1364 to i8
  %1366 = icmp eq i8 %1365, 0
  %1367 = bitcast i32* %1022 to i64*
  %1368 = load volatile i64, i64* %1367, align 4, !tbaa !25
  %1369 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %1370 = select i1 %1366, i64 0, i64 %1369
  %1371 = or i64 %1368, %1370
  %1372 = trunc i64 %1371 to i32
  store volatile i32 %1372, i32* %1022, align 4, !tbaa !35
  %1373 = load i64, i64* %522, align 16, !tbaa !25
  %1374 = trunc i64 %1373 to i8
  %1375 = icmp eq i8 %1374, 0
  %1376 = bitcast i32* %1021 to i64*
  %1377 = load volatile i64, i64* %1376, align 8, !tbaa !25
  %1378 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %1379 = select i1 %1375, i64 0, i64 %1378
  %1380 = or i64 %1377, %1379
  %1381 = trunc i64 %1380 to i32
  store volatile i32 %1381, i32* %1021, align 8, !tbaa !35
  %1382 = load i64, i64* %536, align 8, !tbaa !25
  %1383 = trunc i64 %1382 to i8
  %1384 = icmp eq i8 %1383, 0
  %1385 = bitcast i32* %1022 to i64*
  %1386 = load volatile i64, i64* %1385, align 4, !tbaa !25
  %1387 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %1388 = select i1 %1384, i64 0, i64 %1387
  %1389 = or i64 %1386, %1388
  %1390 = trunc i64 %1389 to i32
  store volatile i32 %1390, i32* %1022, align 4, !tbaa !35
  %1391 = load i64, i64* %547, align 8, !tbaa !25
  %1392 = trunc i64 %1391 to i8
  %1393 = icmp eq i8 %1392, 0
  %1394 = bitcast i32* %1021 to i64*
  %1395 = load volatile i64, i64* %1394, align 8, !tbaa !25
  %1396 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %1397 = select i1 %1393, i64 0, i64 %1396
  %1398 = or i64 %1395, %1397
  %1399 = trunc i64 %1398 to i32
  store volatile i32 %1399, i32* %1021, align 8, !tbaa !35
  %1400 = load i64, i64* %561, align 8, !tbaa !25
  %1401 = trunc i64 %1400 to i8
  %1402 = icmp eq i8 %1401, 0
  %1403 = bitcast i32* %1022 to i64*
  %1404 = load volatile i64, i64* %1403, align 4, !tbaa !25
  %1405 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %1406 = select i1 %1402, i64 0, i64 %1405
  %1407 = or i64 %1404, %1406
  %1408 = trunc i64 %1407 to i32
  store volatile i32 %1408, i32* %1022, align 4, !tbaa !35
  %1409 = load i64, i64* %572, align 8, !tbaa !25
  %1410 = trunc i64 %1409 to i8
  %1411 = icmp eq i8 %1410, 0
  %1412 = bitcast i32* %1021 to i64*
  %1413 = load volatile i64, i64* %1412, align 8, !tbaa !25
  %1414 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %1415 = select i1 %1411, i64 0, i64 %1414
  %1416 = or i64 %1413, %1415
  %1417 = trunc i64 %1416 to i32
  store volatile i32 %1417, i32* %1021, align 8, !tbaa !35
  %1418 = load i64, i64* %586, align 8, !tbaa !25
  %1419 = trunc i64 %1418 to i8
  %1420 = icmp eq i8 %1419, 0
  %1421 = bitcast i32* %1022 to i64*
  %1422 = load volatile i64, i64* %1421, align 4, !tbaa !25
  %1423 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %1424 = select i1 %1420, i64 0, i64 %1423
  %1425 = or i64 %1422, %1424
  %1426 = trunc i64 %1425 to i32
  store volatile i32 %1426, i32* %1022, align 4, !tbaa !35
  %1427 = load i64, i64* %597, align 8, !tbaa !25
  %1428 = trunc i64 %1427 to i8
  %1429 = icmp eq i8 %1428, 0
  %1430 = bitcast i32* %1021 to i64*
  %1431 = load volatile i64, i64* %1430, align 8, !tbaa !25
  %1432 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %1433 = select i1 %1429, i64 0, i64 %1432
  %1434 = or i64 %1431, %1433
  %1435 = trunc i64 %1434 to i32
  store volatile i32 %1435, i32* %1021, align 8, !tbaa !35
  %1436 = load i64, i64* %611, align 8, !tbaa !25
  %1437 = trunc i64 %1436 to i8
  %1438 = icmp eq i8 %1437, 0
  %1439 = bitcast i32* %1022 to i64*
  %1440 = load volatile i64, i64* %1439, align 4, !tbaa !25
  %1441 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %1442 = select i1 %1438, i64 0, i64 %1441
  %1443 = or i64 %1440, %1442
  %1444 = trunc i64 %1443 to i32
  store volatile i32 %1444, i32* %1022, align 4, !tbaa !35
  %1445 = load i64, i64* %622, align 8, !tbaa !25
  %1446 = trunc i64 %1445 to i8
  %1447 = icmp eq i8 %1446, 0
  %1448 = bitcast i32* %1021 to i64*
  %1449 = load volatile i64, i64* %1448, align 8, !tbaa !25
  %1450 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %1451 = select i1 %1447, i64 0, i64 %1450
  %1452 = or i64 %1449, %1451
  %1453 = trunc i64 %1452 to i32
  store volatile i32 %1453, i32* %1021, align 8, !tbaa !35
  %1454 = load i64, i64* %636, align 8, !tbaa !25
  %1455 = trunc i64 %1454 to i8
  %1456 = icmp eq i8 %1455, 0
  %1457 = bitcast i32* %1022 to i64*
  %1458 = load volatile i64, i64* %1457, align 4, !tbaa !25
  %1459 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %1460 = select i1 %1456, i64 0, i64 %1459
  %1461 = or i64 %1458, %1460
  %1462 = trunc i64 %1461 to i32
  store volatile i32 %1462, i32* %1022, align 4, !tbaa !35
  %1463 = load i64, i64* %647, align 8, !tbaa !25
  %1464 = trunc i64 %1463 to i8
  %1465 = icmp eq i8 %1464, 0
  %1466 = bitcast i32* %1021 to i64*
  %1467 = load volatile i64, i64* %1466, align 8, !tbaa !25
  %1468 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %1469 = select i1 %1465, i64 0, i64 %1468
  %1470 = or i64 %1467, %1469
  %1471 = trunc i64 %1470 to i32
  store volatile i32 %1471, i32* %1021, align 8, !tbaa !35
  %1472 = load i64, i64* %661, align 8, !tbaa !25
  %1473 = trunc i64 %1472 to i8
  %1474 = icmp eq i8 %1473, 0
  %1475 = bitcast i32* %1022 to i64*
  %1476 = load volatile i64, i64* %1475, align 4, !tbaa !25
  %1477 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %1478 = select i1 %1474, i64 0, i64 %1477
  %1479 = or i64 %1476, %1478
  %1480 = trunc i64 %1479 to i32
  store volatile i32 %1480, i32* %1022, align 4, !tbaa !35
  %1481 = load i64, i64* %672, align 8, !tbaa !25
  %1482 = trunc i64 %1481 to i8
  %1483 = icmp eq i8 %1482, 0
  %1484 = bitcast i32* %1021 to i64*
  %1485 = load volatile i64, i64* %1484, align 8, !tbaa !25
  %1486 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %1487 = select i1 %1483, i64 0, i64 %1486
  %1488 = or i64 %1485, %1487
  %1489 = trunc i64 %1488 to i32
  store volatile i32 %1489, i32* %1021, align 8, !tbaa !35
  %1490 = load i64, i64* %686, align 16, !tbaa !25
  %1491 = trunc i64 %1490 to i8
  %1492 = icmp eq i8 %1491, 0
  %1493 = bitcast i32* %1022 to i64*
  %1494 = load volatile i64, i64* %1493, align 4, !tbaa !25
  %1495 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %1496 = select i1 %1492, i64 0, i64 %1495
  %1497 = or i64 %1494, %1496
  %1498 = trunc i64 %1497 to i32
  store volatile i32 %1498, i32* %1022, align 4, !tbaa !35
  %1499 = load i64, i64* %697, align 8, !tbaa !25
  %1500 = trunc i64 %1499 to i8
  %1501 = icmp eq i8 %1500, 0
  %1502 = bitcast i32* %1021 to i64*
  %1503 = load volatile i64, i64* %1502, align 8, !tbaa !25
  %1504 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %1505 = select i1 %1501, i64 0, i64 %1504
  %1506 = or i64 %1503, %1505
  %1507 = trunc i64 %1506 to i32
  store volatile i32 %1507, i32* %1021, align 8, !tbaa !35
  %1508 = load i64, i64* %711, align 8, !tbaa !25
  %1509 = trunc i64 %1508 to i8
  %1510 = icmp eq i8 %1509, 0
  %1511 = bitcast i32* %1022 to i64*
  %1512 = load volatile i64, i64* %1511, align 4, !tbaa !25
  %1513 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %1514 = select i1 %1510, i64 0, i64 %1513
  %1515 = or i64 %1512, %1514
  %1516 = trunc i64 %1515 to i32
  store volatile i32 %1516, i32* %1022, align 4, !tbaa !35
  %1517 = load i64, i64* %722, align 8, !tbaa !25
  %1518 = trunc i64 %1517 to i8
  %1519 = icmp eq i8 %1518, 0
  %1520 = bitcast i32* %1021 to i64*
  %1521 = load volatile i64, i64* %1520, align 8, !tbaa !25
  %1522 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %1523 = select i1 %1519, i64 0, i64 %1522
  %1524 = or i64 %1521, %1523
  %1525 = trunc i64 %1524 to i32
  store volatile i32 %1525, i32* %1021, align 8, !tbaa !35
  %1526 = load i64, i64* %736, align 8, !tbaa !25
  %1527 = trunc i64 %1526 to i8
  %1528 = icmp eq i8 %1527, 0
  %1529 = bitcast i32* %1022 to i64*
  %1530 = load volatile i64, i64* %1529, align 4, !tbaa !25
  %1531 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %1532 = select i1 %1528, i64 0, i64 %1531
  %1533 = or i64 %1530, %1532
  %1534 = trunc i64 %1533 to i32
  store volatile i32 %1534, i32* %1022, align 4, !tbaa !35
  %1535 = load i64, i64* %747, align 8, !tbaa !25
  %1536 = trunc i64 %1535 to i8
  %1537 = icmp eq i8 %1536, 0
  %1538 = bitcast i32* %1021 to i64*
  %1539 = load volatile i64, i64* %1538, align 8, !tbaa !25
  %1540 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %1541 = select i1 %1537, i64 0, i64 %1540
  %1542 = or i64 %1539, %1541
  %1543 = trunc i64 %1542 to i32
  store volatile i32 %1543, i32* %1021, align 8, !tbaa !35
  %1544 = load i64, i64* %761, align 16, !tbaa !25
  %1545 = trunc i64 %1544 to i8
  %1546 = icmp eq i8 %1545, 0
  %1547 = bitcast i32* %1022 to i64*
  %1548 = load volatile i64, i64* %1547, align 4, !tbaa !25
  %1549 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %1550 = select i1 %1546, i64 0, i64 %1549
  %1551 = or i64 %1548, %1550
  %1552 = trunc i64 %1551 to i32
  store volatile i32 %1552, i32* %1022, align 4, !tbaa !35
  %1553 = load i64, i64* %772, align 8, !tbaa !25
  %1554 = trunc i64 %1553 to i8
  %1555 = icmp eq i8 %1554, 0
  %1556 = bitcast i32* %1021 to i64*
  %1557 = load volatile i64, i64* %1556, align 8, !tbaa !25
  %1558 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %1559 = select i1 %1555, i64 0, i64 %1558
  %1560 = or i64 %1557, %1559
  %1561 = trunc i64 %1560 to i32
  store volatile i32 %1561, i32* %1021, align 8, !tbaa !35
  %1562 = load i64, i64* %786, align 8, !tbaa !25
  %1563 = trunc i64 %1562 to i8
  %1564 = icmp eq i8 %1563, 0
  %1565 = bitcast i32* %1022 to i64*
  %1566 = load volatile i64, i64* %1565, align 4, !tbaa !25
  %1567 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %1568 = select i1 %1564, i64 0, i64 %1567
  %1569 = or i64 %1566, %1568
  %1570 = trunc i64 %1569 to i32
  store volatile i32 %1570, i32* %1022, align 4, !tbaa !35
  %1571 = load i64, i64* %797, align 8, !tbaa !25
  %1572 = trunc i64 %1571 to i8
  %1573 = icmp eq i8 %1572, 0
  %1574 = bitcast i32* %1021 to i64*
  %1575 = load volatile i64, i64* %1574, align 8, !tbaa !25
  %1576 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %1577 = select i1 %1573, i64 0, i64 %1576
  %1578 = or i64 %1575, %1577
  %1579 = trunc i64 %1578 to i32
  store volatile i32 %1579, i32* %1021, align 8, !tbaa !35
  %1580 = load i64, i64* %811, align 8, !tbaa !25
  %1581 = trunc i64 %1580 to i8
  %1582 = icmp eq i8 %1581, 0
  %1583 = bitcast i32* %1022 to i64*
  %1584 = load volatile i64, i64* %1583, align 4, !tbaa !25
  %1585 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %1586 = select i1 %1582, i64 0, i64 %1585
  %1587 = or i64 %1584, %1586
  %1588 = trunc i64 %1587 to i32
  store volatile i32 %1588, i32* %1022, align 4, !tbaa !35
  %1589 = load i64, i64* %822, align 8, !tbaa !25
  %1590 = trunc i64 %1589 to i8
  %1591 = icmp eq i8 %1590, 0
  %1592 = bitcast i32* %1021 to i64*
  %1593 = load volatile i64, i64* %1592, align 8, !tbaa !25
  %1594 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %1595 = select i1 %1591, i64 0, i64 %1594
  %1596 = or i64 %1593, %1595
  %1597 = trunc i64 %1596 to i32
  store volatile i32 %1597, i32* %1021, align 8, !tbaa !35
  %1598 = load i64, i64* %836, align 8, !tbaa !25
  %1599 = trunc i64 %1598 to i8
  %1600 = icmp eq i8 %1599, 0
  %1601 = bitcast i32* %1022 to i64*
  %1602 = load volatile i64, i64* %1601, align 4, !tbaa !25
  %1603 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %1604 = select i1 %1600, i64 0, i64 %1603
  %1605 = or i64 %1602, %1604
  %1606 = trunc i64 %1605 to i32
  store volatile i32 %1606, i32* %1022, align 4, !tbaa !35
  %1607 = load i64, i64* %847, align 8, !tbaa !25
  %1608 = trunc i64 %1607 to i8
  %1609 = icmp eq i8 %1608, 0
  %1610 = bitcast i32* %1021 to i64*
  %1611 = load volatile i64, i64* %1610, align 8, !tbaa !25
  %1612 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %1613 = select i1 %1609, i64 0, i64 %1612
  %1614 = or i64 %1611, %1613
  %1615 = trunc i64 %1614 to i32
  store volatile i32 %1615, i32* %1021, align 8, !tbaa !35
  %1616 = load i64, i64* %861, align 8, !tbaa !25
  %1617 = trunc i64 %1616 to i8
  %1618 = icmp eq i8 %1617, 0
  %1619 = bitcast i32* %1022 to i64*
  %1620 = load volatile i64, i64* %1619, align 4, !tbaa !25
  %1621 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %1622 = select i1 %1618, i64 0, i64 %1621
  %1623 = or i64 %1620, %1622
  %1624 = trunc i64 %1623 to i32
  store volatile i32 %1624, i32* %1022, align 4, !tbaa !35
  %1625 = load i64, i64* %872, align 8, !tbaa !25
  %1626 = trunc i64 %1625 to i8
  %1627 = icmp eq i8 %1626, 0
  %1628 = bitcast i32* %1021 to i64*
  %1629 = load volatile i64, i64* %1628, align 8, !tbaa !25
  %1630 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %1631 = select i1 %1627, i64 0, i64 %1630
  %1632 = or i64 %1629, %1631
  %1633 = trunc i64 %1632 to i32
  store volatile i32 %1633, i32* %1021, align 8, !tbaa !35
  %1634 = load i64, i64* %886, align 8, !tbaa !25
  %1635 = trunc i64 %1634 to i8
  %1636 = icmp eq i8 %1635, 0
  %1637 = bitcast i32* %1022 to i64*
  %1638 = load volatile i64, i64* %1637, align 4, !tbaa !25
  %1639 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %1640 = select i1 %1636, i64 0, i64 %1639
  %1641 = or i64 %1638, %1640
  %1642 = trunc i64 %1641 to i32
  store volatile i32 %1642, i32* %1022, align 4, !tbaa !35
  %1643 = load i64, i64* %897, align 8, !tbaa !25
  %1644 = trunc i64 %1643 to i8
  %1645 = icmp eq i8 %1644, 0
  %1646 = bitcast i32* %1021 to i64*
  %1647 = load volatile i64, i64* %1646, align 8, !tbaa !25
  %1648 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %1649 = select i1 %1645, i64 0, i64 %1648
  %1650 = or i64 %1647, %1649
  %1651 = trunc i64 %1650 to i32
  store volatile i32 %1651, i32* %1021, align 8, !tbaa !35
  %1652 = load i64, i64* %911, align 8, !tbaa !25
  %1653 = trunc i64 %1652 to i8
  %1654 = icmp eq i8 %1653, 0
  %1655 = bitcast i32* %1022 to i64*
  %1656 = load volatile i64, i64* %1655, align 4, !tbaa !25
  %1657 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %1658 = select i1 %1654, i64 0, i64 %1657
  %1659 = or i64 %1656, %1658
  %1660 = trunc i64 %1659 to i32
  store volatile i32 %1660, i32* %1022, align 4, !tbaa !35
  %1661 = load i64, i64* %922, align 8, !tbaa !25
  %1662 = trunc i64 %1661 to i8
  %1663 = icmp eq i8 %1662, 0
  %1664 = bitcast i32* %1021 to i64*
  %1665 = load volatile i64, i64* %1664, align 8, !tbaa !25
  %1666 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %1667 = select i1 %1663, i64 0, i64 %1666
  %1668 = or i64 %1665, %1667
  %1669 = trunc i64 %1668 to i32
  store volatile i32 %1669, i32* %1021, align 8, !tbaa !35
  %1670 = load i64, i64* %936, align 8, !tbaa !25
  %1671 = trunc i64 %1670 to i8
  %1672 = icmp eq i8 %1671, 0
  %1673 = bitcast i32* %1022 to i64*
  %1674 = load volatile i64, i64* %1673, align 4, !tbaa !25
  %1675 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %1676 = select i1 %1672, i64 0, i64 %1675
  %1677 = or i64 %1674, %1676
  %1678 = trunc i64 %1677 to i32
  store volatile i32 %1678, i32* %1022, align 4, !tbaa !35
  %1679 = load i64, i64* %947, align 8, !tbaa !25
  %1680 = trunc i64 %1679 to i8
  %1681 = icmp eq i8 %1680, 0
  %1682 = bitcast i32* %1021 to i64*
  %1683 = load volatile i64, i64* %1682, align 8, !tbaa !25
  %1684 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %1685 = select i1 %1681, i64 0, i64 %1684
  %1686 = or i64 %1683, %1685
  %1687 = trunc i64 %1686 to i32
  store volatile i32 %1687, i32* %1021, align 8, !tbaa !35
  %1688 = load i64, i64* %961, align 8, !tbaa !25
  %1689 = trunc i64 %1688 to i8
  %1690 = icmp eq i8 %1689, 0
  %1691 = bitcast i32* %1022 to i64*
  %1692 = load volatile i64, i64* %1691, align 4, !tbaa !25
  %1693 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %1694 = select i1 %1690, i64 0, i64 %1693
  %1695 = or i64 %1692, %1694
  %1696 = trunc i64 %1695 to i32
  store volatile i32 %1696, i32* %1022, align 4, !tbaa !35
  %1697 = load i64, i64* %972, align 8, !tbaa !25
  %1698 = trunc i64 %1697 to i8
  %1699 = icmp eq i8 %1698, 0
  %1700 = bitcast i32* %1021 to i64*
  %1701 = load volatile i64, i64* %1700, align 8, !tbaa !25
  %1702 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %1703 = select i1 %1699, i64 0, i64 %1702
  %1704 = or i64 %1701, %1703
  %1705 = trunc i64 %1704 to i32
  store volatile i32 %1705, i32* %1021, align 8, !tbaa !35
  %1706 = load i64, i64* %986, align 8, !tbaa !25
  %1707 = trunc i64 %1706 to i8
  %1708 = icmp eq i8 %1707, 0
  %1709 = bitcast i32* %1022 to i64*
  %1710 = load volatile i64, i64* %1709, align 4, !tbaa !25
  %1711 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %1712 = select i1 %1708, i64 0, i64 %1711
  %1713 = or i64 %1710, %1712
  %1714 = trunc i64 %1713 to i32
  store volatile i32 %1714, i32* %1022, align 4, !tbaa !35
  %1715 = load i64, i64* %997, align 8, !tbaa !25
  %1716 = trunc i64 %1715 to i8
  %1717 = icmp eq i8 %1716, 0
  %1718 = bitcast i32* %1021 to i64*
  %1719 = load volatile i64, i64* %1718, align 8, !tbaa !25
  %1720 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %1721 = select i1 %1717, i64 0, i64 %1720
  %1722 = or i64 %1719, %1721
  %1723 = trunc i64 %1722 to i32
  store volatile i32 %1723, i32* %1021, align 8, !tbaa !35
  %1724 = load i64, i64* %1011, align 8, !tbaa !25
  %1725 = trunc i64 %1724 to i8
  %1726 = icmp eq i8 %1725, 0
  %1727 = bitcast i32* %1022 to i64*
  %1728 = load volatile i64, i64* %1727, align 4, !tbaa !25
  %1729 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %1730 = select i1 %1726, i64 0, i64 %1729
  %1731 = or i64 %1728, %1730
  %1732 = trunc i64 %1731 to i32
  store volatile i32 %1732, i32* %1022, align 4, !tbaa !35
  %1733 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 4
  store i32 0, i32* %1733, align 16, !tbaa !35
  %1734 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 5
  store i32 0, i32* %1734, align 4, !tbaa !35
  %1735 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 4
  %1736 = bitcast i8* %1735 to i64*
  %1737 = load i64, i64* %1736, align 8, !tbaa !25
  %1738 = trunc i64 %1737 to i8
  store i8 %1738, i8* %8, align 16, !tbaa !14
  %1739 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 5
  %1740 = bitcast i8* %1739 to i64*
  %1741 = load i64, i64* %1740, align 8, !tbaa !25
  %1742 = trunc i64 %1741 to i8
  %1743 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 1
  store i8 %1742, i8* %1743, align 1, !tbaa !14
  %1744 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 6
  %1745 = bitcast i8* %1744 to i64*
  %1746 = load i64, i64* %1745, align 8, !tbaa !25
  %1747 = trunc i64 %1746 to i8
  %1748 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 2
  store i8 %1747, i8* %1748, align 2, !tbaa !14
  %1749 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 7
  %1750 = bitcast i8* %1749 to i64*
  %1751 = load i64, i64* %1750, align 8, !tbaa !25
  %1752 = trunc i64 %1751 to i8
  %1753 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 3
  store i8 %1752, i8* %1753, align 1, !tbaa !14
  %1754 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 8
  %1755 = bitcast i8* %1754 to i64*
  %1756 = load i64, i64* %1755, align 8, !tbaa !25
  %1757 = trunc i64 %1756 to i8
  %1758 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 4
  store i8 %1757, i8* %1758, align 4, !tbaa !14
  %1759 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 9
  %1760 = bitcast i8* %1759 to i64*
  %1761 = load i64, i64* %1760, align 8, !tbaa !25
  %1762 = trunc i64 %1761 to i8
  %1763 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 5
  store i8 %1762, i8* %1763, align 1, !tbaa !14
  %1764 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 10
  %1765 = bitcast i8* %1764 to i64*
  %1766 = load i64, i64* %1765, align 8, !tbaa !25
  %1767 = trunc i64 %1766 to i8
  %1768 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 6
  store i8 %1767, i8* %1768, align 2, !tbaa !14
  %1769 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 11
  %1770 = bitcast i8* %1769 to i64*
  %1771 = load i64, i64* %1770, align 8, !tbaa !25
  %1772 = trunc i64 %1771 to i8
  %1773 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 7
  store i8 %1772, i8* %1773, align 1, !tbaa !14
  %1774 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 12
  %1775 = bitcast i8* %1774 to i64*
  %1776 = load i64, i64* %1775, align 8, !tbaa !25
  %1777 = trunc i64 %1776 to i8
  %1778 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 8
  store i8 %1777, i8* %1778, align 8, !tbaa !14
  %1779 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 13
  %1780 = bitcast i8* %1779 to i64*
  %1781 = load i64, i64* %1780, align 8, !tbaa !25
  %1782 = trunc i64 %1781 to i8
  %1783 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 9
  store i8 %1782, i8* %1783, align 1, !tbaa !14
  %1784 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 14
  %1785 = bitcast i8* %1784 to i64*
  %1786 = load i64, i64* %1785, align 8, !tbaa !25
  %1787 = trunc i64 %1786 to i8
  %1788 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 10
  store i8 %1787, i8* %1788, align 2, !tbaa !14
  %1789 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 15
  %1790 = bitcast i8* %1789 to i64*
  %1791 = load i64, i64* %1790, align 8, !tbaa !25
  %1792 = trunc i64 %1791 to i8
  %1793 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 11
  store i8 %1792, i8* %1793, align 1, !tbaa !14
  %1794 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 16
  %1795 = bitcast i8* %1794 to i64*
  %1796 = load i64, i64* %1795, align 16, !tbaa !25
  %1797 = trunc i64 %1796 to i8
  %1798 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 12
  store i8 %1797, i8* %1798, align 4, !tbaa !14
  %1799 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 17
  %1800 = bitcast i8* %1799 to i64*
  %1801 = load i64, i64* %1800, align 8, !tbaa !25
  %1802 = trunc i64 %1801 to i8
  %1803 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 13
  store i8 %1802, i8* %1803, align 1, !tbaa !14
  %1804 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 18
  %1805 = bitcast i8* %1804 to i64*
  %1806 = load i64, i64* %1805, align 8, !tbaa !25
  %1807 = trunc i64 %1806 to i8
  %1808 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 14
  store i8 %1807, i8* %1808, align 2, !tbaa !14
  %1809 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 19
  %1810 = bitcast i8* %1809 to i64*
  %1811 = load i64, i64* %1810, align 8, !tbaa !25
  %1812 = trunc i64 %1811 to i8
  %1813 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 15
  store i8 %1812, i8* %1813, align 1, !tbaa !14
  %1814 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 20
  %1815 = bitcast i8* %1814 to i64*
  %1816 = load i64, i64* %1815, align 8, !tbaa !25
  %1817 = trunc i64 %1816 to i8
  %1818 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 16
  store i8 %1817, i8* %1818, align 16, !tbaa !14
  %1819 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 21
  %1820 = bitcast i8* %1819 to i64*
  %1821 = load i64, i64* %1820, align 8, !tbaa !25
  %1822 = trunc i64 %1821 to i8
  %1823 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 17
  store i8 %1822, i8* %1823, align 1, !tbaa !14
  %1824 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 22
  %1825 = bitcast i8* %1824 to i64*
  %1826 = load i64, i64* %1825, align 8, !tbaa !25
  %1827 = trunc i64 %1826 to i8
  %1828 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 18
  store i8 %1827, i8* %1828, align 2, !tbaa !14
  %1829 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 23
  %1830 = bitcast i8* %1829 to i64*
  %1831 = load i64, i64* %1830, align 8, !tbaa !25
  %1832 = trunc i64 %1831 to i8
  %1833 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 19
  store i8 %1832, i8* %1833, align 1, !tbaa !14
  %1834 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 24
  %1835 = bitcast i8* %1834 to i64*
  %1836 = load i64, i64* %1835, align 8, !tbaa !25
  %1837 = trunc i64 %1836 to i8
  %1838 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 20
  store i8 %1837, i8* %1838, align 4, !tbaa !14
  %1839 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 25
  %1840 = bitcast i8* %1839 to i64*
  %1841 = load i64, i64* %1840, align 8, !tbaa !25
  %1842 = trunc i64 %1841 to i8
  %1843 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 21
  store i8 %1842, i8* %1843, align 1, !tbaa !14
  %1844 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 26
  %1845 = bitcast i8* %1844 to i64*
  %1846 = load i64, i64* %1845, align 8, !tbaa !25
  %1847 = trunc i64 %1846 to i8
  %1848 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 22
  store i8 %1847, i8* %1848, align 2, !tbaa !14
  %1849 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 27
  %1850 = bitcast i8* %1849 to i64*
  %1851 = load i64, i64* %1850, align 8, !tbaa !25
  %1852 = trunc i64 %1851 to i8
  %1853 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 23
  store i8 %1852, i8* %1853, align 1, !tbaa !14
  %1854 = bitcast [56 x i8]* %4 to i64*
  %1855 = load i64, i64* %1854, align 16, !tbaa !25
  %1856 = trunc i64 %1855 to i8
  %1857 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 24
  store i8 %1856, i8* %1857, align 8, !tbaa !14
  %1858 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 1
  %1859 = bitcast i8* %1858 to i64*
  %1860 = load i64, i64* %1859, align 8, !tbaa !25
  %1861 = trunc i64 %1860 to i8
  %1862 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 25
  store i8 %1861, i8* %1862, align 1, !tbaa !14
  %1863 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 2
  %1864 = bitcast i8* %1863 to i64*
  %1865 = load i64, i64* %1864, align 8, !tbaa !25
  %1866 = trunc i64 %1865 to i8
  %1867 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 26
  store i8 %1866, i8* %1867, align 2, !tbaa !14
  %1868 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 3
  %1869 = bitcast i8* %1868 to i64*
  %1870 = load i64, i64* %1869, align 8, !tbaa !25
  %1871 = trunc i64 %1870 to i8
  %1872 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 27
  store i8 %1871, i8* %1872, align 1, !tbaa !14
  %1873 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 32
  %1874 = bitcast i8* %1873 to i64*
  %1875 = load i64, i64* %1874, align 16, !tbaa !25
  %1876 = trunc i64 %1875 to i8
  %1877 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 28
  store i8 %1876, i8* %1877, align 4, !tbaa !14
  %1878 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 33
  %1879 = bitcast i8* %1878 to i64*
  %1880 = load i64, i64* %1879, align 8, !tbaa !25
  %1881 = trunc i64 %1880 to i8
  %1882 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 29
  store i8 %1881, i8* %1882, align 1, !tbaa !14
  %1883 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 34
  %1884 = bitcast i8* %1883 to i64*
  %1885 = load i64, i64* %1884, align 8, !tbaa !25
  %1886 = trunc i64 %1885 to i8
  %1887 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 30
  store i8 %1886, i8* %1887, align 2, !tbaa !14
  %1888 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 35
  %1889 = bitcast i8* %1888 to i64*
  %1890 = load i64, i64* %1889, align 8, !tbaa !25
  %1891 = trunc i64 %1890 to i8
  %1892 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 31
  store i8 %1891, i8* %1892, align 1, !tbaa !14
  %1893 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 36
  %1894 = bitcast i8* %1893 to i64*
  %1895 = load i64, i64* %1894, align 8, !tbaa !25
  %1896 = trunc i64 %1895 to i8
  %1897 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 32
  store i8 %1896, i8* %1897, align 16, !tbaa !14
  %1898 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 37
  %1899 = bitcast i8* %1898 to i64*
  %1900 = load i64, i64* %1899, align 8, !tbaa !25
  %1901 = trunc i64 %1900 to i8
  %1902 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 33
  store i8 %1901, i8* %1902, align 1, !tbaa !14
  %1903 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 38
  %1904 = bitcast i8* %1903 to i64*
  %1905 = load i64, i64* %1904, align 8, !tbaa !25
  %1906 = trunc i64 %1905 to i8
  %1907 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 34
  store i8 %1906, i8* %1907, align 2, !tbaa !14
  %1908 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 39
  %1909 = bitcast i8* %1908 to i64*
  %1910 = load i64, i64* %1909, align 8, !tbaa !25
  %1911 = trunc i64 %1910 to i8
  %1912 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 35
  store i8 %1911, i8* %1912, align 1, !tbaa !14
  %1913 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 40
  %1914 = bitcast i8* %1913 to i64*
  %1915 = load i64, i64* %1914, align 8, !tbaa !25
  %1916 = trunc i64 %1915 to i8
  %1917 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 36
  store i8 %1916, i8* %1917, align 4, !tbaa !14
  %1918 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 41
  %1919 = bitcast i8* %1918 to i64*
  %1920 = load i64, i64* %1919, align 8, !tbaa !25
  %1921 = trunc i64 %1920 to i8
  %1922 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 37
  store i8 %1921, i8* %1922, align 1, !tbaa !14
  %1923 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 42
  %1924 = bitcast i8* %1923 to i64*
  %1925 = load i64, i64* %1924, align 8, !tbaa !25
  %1926 = trunc i64 %1925 to i8
  %1927 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 38
  store i8 %1926, i8* %1927, align 2, !tbaa !14
  %1928 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 43
  %1929 = bitcast i8* %1928 to i64*
  %1930 = load i64, i64* %1929, align 8, !tbaa !25
  %1931 = trunc i64 %1930 to i8
  %1932 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 39
  store i8 %1931, i8* %1932, align 1, !tbaa !14
  %1933 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 44
  %1934 = bitcast i8* %1933 to i64*
  %1935 = load i64, i64* %1934, align 8, !tbaa !25
  %1936 = trunc i64 %1935 to i8
  %1937 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 40
  store i8 %1936, i8* %1937, align 8, !tbaa !14
  %1938 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 45
  %1939 = bitcast i8* %1938 to i64*
  %1940 = load i64, i64* %1939, align 8, !tbaa !25
  %1941 = trunc i64 %1940 to i8
  %1942 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 41
  store i8 %1941, i8* %1942, align 1, !tbaa !14
  %1943 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 46
  %1944 = bitcast i8* %1943 to i64*
  %1945 = load i64, i64* %1944, align 8, !tbaa !25
  %1946 = trunc i64 %1945 to i8
  %1947 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 42
  store i8 %1946, i8* %1947, align 2, !tbaa !14
  %1948 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 47
  %1949 = bitcast i8* %1948 to i64*
  %1950 = load i64, i64* %1949, align 8, !tbaa !25
  %1951 = trunc i64 %1950 to i8
  %1952 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 43
  store i8 %1951, i8* %1952, align 1, !tbaa !14
  %1953 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 48
  %1954 = bitcast i8* %1953 to i64*
  %1955 = load i64, i64* %1954, align 16, !tbaa !25
  %1956 = trunc i64 %1955 to i8
  %1957 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 44
  store i8 %1956, i8* %1957, align 4, !tbaa !14
  %1958 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 49
  %1959 = bitcast i8* %1958 to i64*
  %1960 = load i64, i64* %1959, align 8, !tbaa !25
  %1961 = trunc i64 %1960 to i8
  %1962 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 45
  store i8 %1961, i8* %1962, align 1, !tbaa !14
  %1963 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 50
  %1964 = bitcast i8* %1963 to i64*
  %1965 = load i64, i64* %1964, align 8, !tbaa !25
  %1966 = trunc i64 %1965 to i8
  %1967 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 46
  store i8 %1966, i8* %1967, align 2, !tbaa !14
  %1968 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 51
  %1969 = bitcast i8* %1968 to i64*
  %1970 = load i64, i64* %1969, align 8, !tbaa !25
  %1971 = trunc i64 %1970 to i8
  %1972 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 47
  store i8 %1971, i8* %1972, align 1, !tbaa !14
  %1973 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 52
  %1974 = bitcast i8* %1973 to i64*
  %1975 = load i64, i64* %1974, align 8, !tbaa !25
  %1976 = trunc i64 %1975 to i8
  %1977 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 48
  store i8 %1976, i8* %1977, align 16, !tbaa !14
  %1978 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 53
  %1979 = bitcast i8* %1978 to i64*
  %1980 = load i64, i64* %1979, align 8, !tbaa !25
  %1981 = trunc i64 %1980 to i8
  %1982 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 49
  store i8 %1981, i8* %1982, align 1, !tbaa !14
  %1983 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 54
  %1984 = bitcast i8* %1983 to i64*
  %1985 = load i64, i64* %1984, align 8, !tbaa !25
  %1986 = trunc i64 %1985 to i8
  %1987 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 50
  store i8 %1986, i8* %1987, align 2, !tbaa !14
  %1988 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 55
  %1989 = bitcast i8* %1988 to i64*
  %1990 = load i64, i64* %1989, align 8, !tbaa !25
  %1991 = trunc i64 %1990 to i8
  %1992 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 51
  store i8 %1991, i8* %1992, align 1, !tbaa !14
  %1993 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 28
  %1994 = bitcast i8* %1993 to i64*
  %1995 = load i64, i64* %1994, align 8, !tbaa !25
  %1996 = trunc i64 %1995 to i8
  %1997 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 52
  store i8 %1996, i8* %1997, align 4, !tbaa !14
  %1998 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 29
  %1999 = bitcast i8* %1998 to i64*
  %2000 = load i64, i64* %1999, align 8, !tbaa !25
  %2001 = trunc i64 %2000 to i8
  %2002 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 53
  store i8 %2001, i8* %2002, align 1, !tbaa !14
  %2003 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 30
  %2004 = bitcast i8* %2003 to i64*
  %2005 = load i64, i64* %2004, align 8, !tbaa !25
  %2006 = trunc i64 %2005 to i8
  %2007 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 54
  store i8 %2006, i8* %2007, align 2, !tbaa !14
  %2008 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 31
  %2009 = bitcast i8* %2008 to i64*
  %2010 = load i64, i64* %2009, align 8, !tbaa !25
  %2011 = trunc i64 %2010 to i8
  %2012 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 55
  store i8 %2011, i8* %2012, align 1, !tbaa !14
  %2013 = load i64, i64* %423, align 8, !tbaa !25
  %2014 = trunc i64 %2013 to i8
  %2015 = icmp eq i8 %2014, 0
  %2016 = bitcast i32* %1733 to i64*
  %2017 = load volatile i64, i64* %2016, align 16, !tbaa !25
  %2018 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %2019 = select i1 %2015, i64 0, i64 %2018
  %2020 = or i64 %2017, %2019
  %2021 = trunc i64 %2020 to i32
  store volatile i32 %2021, i32* %1733, align 16, !tbaa !35
  %2022 = load i64, i64* %437, align 8, !tbaa !25
  %2023 = trunc i64 %2022 to i8
  %2024 = icmp eq i8 %2023, 0
  %2025 = bitcast i32* %1734 to i64*
  %2026 = load volatile i64, i64* %2025, align 4, !tbaa !25
  %2027 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %2028 = select i1 %2024, i64 0, i64 %2027
  %2029 = or i64 %2026, %2028
  %2030 = trunc i64 %2029 to i32
  store volatile i32 %2030, i32* %1734, align 4, !tbaa !35
  %2031 = load i64, i64* %448, align 16, !tbaa !25
  %2032 = trunc i64 %2031 to i8
  %2033 = icmp eq i8 %2032, 0
  %2034 = bitcast i32* %1733 to i64*
  %2035 = load volatile i64, i64* %2034, align 16, !tbaa !25
  %2036 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %2037 = select i1 %2033, i64 0, i64 %2036
  %2038 = or i64 %2035, %2037
  %2039 = trunc i64 %2038 to i32
  store volatile i32 %2039, i32* %1733, align 16, !tbaa !35
  %2040 = load i64, i64* %462, align 8, !tbaa !25
  %2041 = trunc i64 %2040 to i8
  %2042 = icmp eq i8 %2041, 0
  %2043 = bitcast i32* %1734 to i64*
  %2044 = load volatile i64, i64* %2043, align 4, !tbaa !25
  %2045 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %2046 = select i1 %2042, i64 0, i64 %2045
  %2047 = or i64 %2044, %2046
  %2048 = trunc i64 %2047 to i32
  store volatile i32 %2048, i32* %1734, align 4, !tbaa !35
  %2049 = load i64, i64* %473, align 8, !tbaa !25
  %2050 = trunc i64 %2049 to i8
  %2051 = icmp eq i8 %2050, 0
  %2052 = bitcast i32* %1733 to i64*
  %2053 = load volatile i64, i64* %2052, align 16, !tbaa !25
  %2054 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %2055 = select i1 %2051, i64 0, i64 %2054
  %2056 = or i64 %2053, %2055
  %2057 = trunc i64 %2056 to i32
  store volatile i32 %2057, i32* %1733, align 16, !tbaa !35
  %2058 = load i64, i64* %487, align 8, !tbaa !25
  %2059 = trunc i64 %2058 to i8
  %2060 = icmp eq i8 %2059, 0
  %2061 = bitcast i32* %1734 to i64*
  %2062 = load volatile i64, i64* %2061, align 4, !tbaa !25
  %2063 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %2064 = select i1 %2060, i64 0, i64 %2063
  %2065 = or i64 %2062, %2064
  %2066 = trunc i64 %2065 to i32
  store volatile i32 %2066, i32* %1734, align 4, !tbaa !35
  %2067 = load i64, i64* %498, align 8, !tbaa !25
  %2068 = trunc i64 %2067 to i8
  %2069 = icmp eq i8 %2068, 0
  %2070 = bitcast i32* %1733 to i64*
  %2071 = load volatile i64, i64* %2070, align 16, !tbaa !25
  %2072 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %2073 = select i1 %2069, i64 0, i64 %2072
  %2074 = or i64 %2071, %2073
  %2075 = trunc i64 %2074 to i32
  store volatile i32 %2075, i32* %1733, align 16, !tbaa !35
  %2076 = load i64, i64* %512, align 8, !tbaa !25
  %2077 = trunc i64 %2076 to i8
  %2078 = icmp eq i8 %2077, 0
  %2079 = bitcast i32* %1734 to i64*
  %2080 = load volatile i64, i64* %2079, align 4, !tbaa !25
  %2081 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %2082 = select i1 %2078, i64 0, i64 %2081
  %2083 = or i64 %2080, %2082
  %2084 = trunc i64 %2083 to i32
  store volatile i32 %2084, i32* %1734, align 4, !tbaa !35
  %2085 = load i64, i64* %522, align 16, !tbaa !25
  %2086 = trunc i64 %2085 to i8
  %2087 = icmp eq i8 %2086, 0
  %2088 = bitcast i32* %1733 to i64*
  %2089 = load volatile i64, i64* %2088, align 16, !tbaa !25
  %2090 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %2091 = select i1 %2087, i64 0, i64 %2090
  %2092 = or i64 %2089, %2091
  %2093 = trunc i64 %2092 to i32
  store volatile i32 %2093, i32* %1733, align 16, !tbaa !35
  %2094 = load i64, i64* %536, align 8, !tbaa !25
  %2095 = trunc i64 %2094 to i8
  %2096 = icmp eq i8 %2095, 0
  %2097 = bitcast i32* %1734 to i64*
  %2098 = load volatile i64, i64* %2097, align 4, !tbaa !25
  %2099 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %2100 = select i1 %2096, i64 0, i64 %2099
  %2101 = or i64 %2098, %2100
  %2102 = trunc i64 %2101 to i32
  store volatile i32 %2102, i32* %1734, align 4, !tbaa !35
  %2103 = load i64, i64* %547, align 8, !tbaa !25
  %2104 = trunc i64 %2103 to i8
  %2105 = icmp eq i8 %2104, 0
  %2106 = bitcast i32* %1733 to i64*
  %2107 = load volatile i64, i64* %2106, align 16, !tbaa !25
  %2108 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %2109 = select i1 %2105, i64 0, i64 %2108
  %2110 = or i64 %2107, %2109
  %2111 = trunc i64 %2110 to i32
  store volatile i32 %2111, i32* %1733, align 16, !tbaa !35
  %2112 = load i64, i64* %561, align 8, !tbaa !25
  %2113 = trunc i64 %2112 to i8
  %2114 = icmp eq i8 %2113, 0
  %2115 = bitcast i32* %1734 to i64*
  %2116 = load volatile i64, i64* %2115, align 4, !tbaa !25
  %2117 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %2118 = select i1 %2114, i64 0, i64 %2117
  %2119 = or i64 %2116, %2118
  %2120 = trunc i64 %2119 to i32
  store volatile i32 %2120, i32* %1734, align 4, !tbaa !35
  %2121 = load i64, i64* %572, align 8, !tbaa !25
  %2122 = trunc i64 %2121 to i8
  %2123 = icmp eq i8 %2122, 0
  %2124 = bitcast i32* %1733 to i64*
  %2125 = load volatile i64, i64* %2124, align 16, !tbaa !25
  %2126 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %2127 = select i1 %2123, i64 0, i64 %2126
  %2128 = or i64 %2125, %2127
  %2129 = trunc i64 %2128 to i32
  store volatile i32 %2129, i32* %1733, align 16, !tbaa !35
  %2130 = load i64, i64* %586, align 8, !tbaa !25
  %2131 = trunc i64 %2130 to i8
  %2132 = icmp eq i8 %2131, 0
  %2133 = bitcast i32* %1734 to i64*
  %2134 = load volatile i64, i64* %2133, align 4, !tbaa !25
  %2135 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %2136 = select i1 %2132, i64 0, i64 %2135
  %2137 = or i64 %2134, %2136
  %2138 = trunc i64 %2137 to i32
  store volatile i32 %2138, i32* %1734, align 4, !tbaa !35
  %2139 = load i64, i64* %597, align 8, !tbaa !25
  %2140 = trunc i64 %2139 to i8
  %2141 = icmp eq i8 %2140, 0
  %2142 = bitcast i32* %1733 to i64*
  %2143 = load volatile i64, i64* %2142, align 16, !tbaa !25
  %2144 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %2145 = select i1 %2141, i64 0, i64 %2144
  %2146 = or i64 %2143, %2145
  %2147 = trunc i64 %2146 to i32
  store volatile i32 %2147, i32* %1733, align 16, !tbaa !35
  %2148 = load i64, i64* %611, align 8, !tbaa !25
  %2149 = trunc i64 %2148 to i8
  %2150 = icmp eq i8 %2149, 0
  %2151 = bitcast i32* %1734 to i64*
  %2152 = load volatile i64, i64* %2151, align 4, !tbaa !25
  %2153 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %2154 = select i1 %2150, i64 0, i64 %2153
  %2155 = or i64 %2152, %2154
  %2156 = trunc i64 %2155 to i32
  store volatile i32 %2156, i32* %1734, align 4, !tbaa !35
  %2157 = load i64, i64* %622, align 8, !tbaa !25
  %2158 = trunc i64 %2157 to i8
  %2159 = icmp eq i8 %2158, 0
  %2160 = bitcast i32* %1733 to i64*
  %2161 = load volatile i64, i64* %2160, align 16, !tbaa !25
  %2162 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %2163 = select i1 %2159, i64 0, i64 %2162
  %2164 = or i64 %2161, %2163
  %2165 = trunc i64 %2164 to i32
  store volatile i32 %2165, i32* %1733, align 16, !tbaa !35
  %2166 = load i64, i64* %636, align 8, !tbaa !25
  %2167 = trunc i64 %2166 to i8
  %2168 = icmp eq i8 %2167, 0
  %2169 = bitcast i32* %1734 to i64*
  %2170 = load volatile i64, i64* %2169, align 4, !tbaa !25
  %2171 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %2172 = select i1 %2168, i64 0, i64 %2171
  %2173 = or i64 %2170, %2172
  %2174 = trunc i64 %2173 to i32
  store volatile i32 %2174, i32* %1734, align 4, !tbaa !35
  %2175 = load i64, i64* %647, align 8, !tbaa !25
  %2176 = trunc i64 %2175 to i8
  %2177 = icmp eq i8 %2176, 0
  %2178 = bitcast i32* %1733 to i64*
  %2179 = load volatile i64, i64* %2178, align 16, !tbaa !25
  %2180 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %2181 = select i1 %2177, i64 0, i64 %2180
  %2182 = or i64 %2179, %2181
  %2183 = trunc i64 %2182 to i32
  store volatile i32 %2183, i32* %1733, align 16, !tbaa !35
  %2184 = load i64, i64* %661, align 8, !tbaa !25
  %2185 = trunc i64 %2184 to i8
  %2186 = icmp eq i8 %2185, 0
  %2187 = bitcast i32* %1734 to i64*
  %2188 = load volatile i64, i64* %2187, align 4, !tbaa !25
  %2189 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %2190 = select i1 %2186, i64 0, i64 %2189
  %2191 = or i64 %2188, %2190
  %2192 = trunc i64 %2191 to i32
  store volatile i32 %2192, i32* %1734, align 4, !tbaa !35
  %2193 = load i64, i64* %672, align 8, !tbaa !25
  %2194 = trunc i64 %2193 to i8
  %2195 = icmp eq i8 %2194, 0
  %2196 = bitcast i32* %1733 to i64*
  %2197 = load volatile i64, i64* %2196, align 16, !tbaa !25
  %2198 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %2199 = select i1 %2195, i64 0, i64 %2198
  %2200 = or i64 %2197, %2199
  %2201 = trunc i64 %2200 to i32
  store volatile i32 %2201, i32* %1733, align 16, !tbaa !35
  %2202 = load i64, i64* %686, align 16, !tbaa !25
  %2203 = trunc i64 %2202 to i8
  %2204 = icmp eq i8 %2203, 0
  %2205 = bitcast i32* %1734 to i64*
  %2206 = load volatile i64, i64* %2205, align 4, !tbaa !25
  %2207 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %2208 = select i1 %2204, i64 0, i64 %2207
  %2209 = or i64 %2206, %2208
  %2210 = trunc i64 %2209 to i32
  store volatile i32 %2210, i32* %1734, align 4, !tbaa !35
  %2211 = load i64, i64* %697, align 8, !tbaa !25
  %2212 = trunc i64 %2211 to i8
  %2213 = icmp eq i8 %2212, 0
  %2214 = bitcast i32* %1733 to i64*
  %2215 = load volatile i64, i64* %2214, align 16, !tbaa !25
  %2216 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %2217 = select i1 %2213, i64 0, i64 %2216
  %2218 = or i64 %2215, %2217
  %2219 = trunc i64 %2218 to i32
  store volatile i32 %2219, i32* %1733, align 16, !tbaa !35
  %2220 = load i64, i64* %711, align 8, !tbaa !25
  %2221 = trunc i64 %2220 to i8
  %2222 = icmp eq i8 %2221, 0
  %2223 = bitcast i32* %1734 to i64*
  %2224 = load volatile i64, i64* %2223, align 4, !tbaa !25
  %2225 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %2226 = select i1 %2222, i64 0, i64 %2225
  %2227 = or i64 %2224, %2226
  %2228 = trunc i64 %2227 to i32
  store volatile i32 %2228, i32* %1734, align 4, !tbaa !35
  %2229 = load i64, i64* %722, align 8, !tbaa !25
  %2230 = trunc i64 %2229 to i8
  %2231 = icmp eq i8 %2230, 0
  %2232 = bitcast i32* %1733 to i64*
  %2233 = load volatile i64, i64* %2232, align 16, !tbaa !25
  %2234 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %2235 = select i1 %2231, i64 0, i64 %2234
  %2236 = or i64 %2233, %2235
  %2237 = trunc i64 %2236 to i32
  store volatile i32 %2237, i32* %1733, align 16, !tbaa !35
  %2238 = load i64, i64* %736, align 8, !tbaa !25
  %2239 = trunc i64 %2238 to i8
  %2240 = icmp eq i8 %2239, 0
  %2241 = bitcast i32* %1734 to i64*
  %2242 = load volatile i64, i64* %2241, align 4, !tbaa !25
  %2243 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %2244 = select i1 %2240, i64 0, i64 %2243
  %2245 = or i64 %2242, %2244
  %2246 = trunc i64 %2245 to i32
  store volatile i32 %2246, i32* %1734, align 4, !tbaa !35
  %2247 = load i64, i64* %747, align 8, !tbaa !25
  %2248 = trunc i64 %2247 to i8
  %2249 = icmp eq i8 %2248, 0
  %2250 = bitcast i32* %1733 to i64*
  %2251 = load volatile i64, i64* %2250, align 16, !tbaa !25
  %2252 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %2253 = select i1 %2249, i64 0, i64 %2252
  %2254 = or i64 %2251, %2253
  %2255 = trunc i64 %2254 to i32
  store volatile i32 %2255, i32* %1733, align 16, !tbaa !35
  %2256 = load i64, i64* %761, align 16, !tbaa !25
  %2257 = trunc i64 %2256 to i8
  %2258 = icmp eq i8 %2257, 0
  %2259 = bitcast i32* %1734 to i64*
  %2260 = load volatile i64, i64* %2259, align 4, !tbaa !25
  %2261 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %2262 = select i1 %2258, i64 0, i64 %2261
  %2263 = or i64 %2260, %2262
  %2264 = trunc i64 %2263 to i32
  store volatile i32 %2264, i32* %1734, align 4, !tbaa !35
  %2265 = load i64, i64* %772, align 8, !tbaa !25
  %2266 = trunc i64 %2265 to i8
  %2267 = icmp eq i8 %2266, 0
  %2268 = bitcast i32* %1733 to i64*
  %2269 = load volatile i64, i64* %2268, align 16, !tbaa !25
  %2270 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %2271 = select i1 %2267, i64 0, i64 %2270
  %2272 = or i64 %2269, %2271
  %2273 = trunc i64 %2272 to i32
  store volatile i32 %2273, i32* %1733, align 16, !tbaa !35
  %2274 = load i64, i64* %786, align 8, !tbaa !25
  %2275 = trunc i64 %2274 to i8
  %2276 = icmp eq i8 %2275, 0
  %2277 = bitcast i32* %1734 to i64*
  %2278 = load volatile i64, i64* %2277, align 4, !tbaa !25
  %2279 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %2280 = select i1 %2276, i64 0, i64 %2279
  %2281 = or i64 %2278, %2280
  %2282 = trunc i64 %2281 to i32
  store volatile i32 %2282, i32* %1734, align 4, !tbaa !35
  %2283 = load i64, i64* %797, align 8, !tbaa !25
  %2284 = trunc i64 %2283 to i8
  %2285 = icmp eq i8 %2284, 0
  %2286 = bitcast i32* %1733 to i64*
  %2287 = load volatile i64, i64* %2286, align 16, !tbaa !25
  %2288 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %2289 = select i1 %2285, i64 0, i64 %2288
  %2290 = or i64 %2287, %2289
  %2291 = trunc i64 %2290 to i32
  store volatile i32 %2291, i32* %1733, align 16, !tbaa !35
  %2292 = load i64, i64* %811, align 8, !tbaa !25
  %2293 = trunc i64 %2292 to i8
  %2294 = icmp eq i8 %2293, 0
  %2295 = bitcast i32* %1734 to i64*
  %2296 = load volatile i64, i64* %2295, align 4, !tbaa !25
  %2297 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %2298 = select i1 %2294, i64 0, i64 %2297
  %2299 = or i64 %2296, %2298
  %2300 = trunc i64 %2299 to i32
  store volatile i32 %2300, i32* %1734, align 4, !tbaa !35
  %2301 = load i64, i64* %822, align 8, !tbaa !25
  %2302 = trunc i64 %2301 to i8
  %2303 = icmp eq i8 %2302, 0
  %2304 = bitcast i32* %1733 to i64*
  %2305 = load volatile i64, i64* %2304, align 16, !tbaa !25
  %2306 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %2307 = select i1 %2303, i64 0, i64 %2306
  %2308 = or i64 %2305, %2307
  %2309 = trunc i64 %2308 to i32
  store volatile i32 %2309, i32* %1733, align 16, !tbaa !35
  %2310 = load i64, i64* %836, align 8, !tbaa !25
  %2311 = trunc i64 %2310 to i8
  %2312 = icmp eq i8 %2311, 0
  %2313 = bitcast i32* %1734 to i64*
  %2314 = load volatile i64, i64* %2313, align 4, !tbaa !25
  %2315 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %2316 = select i1 %2312, i64 0, i64 %2315
  %2317 = or i64 %2314, %2316
  %2318 = trunc i64 %2317 to i32
  store volatile i32 %2318, i32* %1734, align 4, !tbaa !35
  %2319 = load i64, i64* %847, align 8, !tbaa !25
  %2320 = trunc i64 %2319 to i8
  %2321 = icmp eq i8 %2320, 0
  %2322 = bitcast i32* %1733 to i64*
  %2323 = load volatile i64, i64* %2322, align 16, !tbaa !25
  %2324 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %2325 = select i1 %2321, i64 0, i64 %2324
  %2326 = or i64 %2323, %2325
  %2327 = trunc i64 %2326 to i32
  store volatile i32 %2327, i32* %1733, align 16, !tbaa !35
  %2328 = load i64, i64* %861, align 8, !tbaa !25
  %2329 = trunc i64 %2328 to i8
  %2330 = icmp eq i8 %2329, 0
  %2331 = bitcast i32* %1734 to i64*
  %2332 = load volatile i64, i64* %2331, align 4, !tbaa !25
  %2333 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %2334 = select i1 %2330, i64 0, i64 %2333
  %2335 = or i64 %2332, %2334
  %2336 = trunc i64 %2335 to i32
  store volatile i32 %2336, i32* %1734, align 4, !tbaa !35
  %2337 = load i64, i64* %872, align 8, !tbaa !25
  %2338 = trunc i64 %2337 to i8
  %2339 = icmp eq i8 %2338, 0
  %2340 = bitcast i32* %1733 to i64*
  %2341 = load volatile i64, i64* %2340, align 16, !tbaa !25
  %2342 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %2343 = select i1 %2339, i64 0, i64 %2342
  %2344 = or i64 %2341, %2343
  %2345 = trunc i64 %2344 to i32
  store volatile i32 %2345, i32* %1733, align 16, !tbaa !35
  %2346 = load i64, i64* %886, align 8, !tbaa !25
  %2347 = trunc i64 %2346 to i8
  %2348 = icmp eq i8 %2347, 0
  %2349 = bitcast i32* %1734 to i64*
  %2350 = load volatile i64, i64* %2349, align 4, !tbaa !25
  %2351 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %2352 = select i1 %2348, i64 0, i64 %2351
  %2353 = or i64 %2350, %2352
  %2354 = trunc i64 %2353 to i32
  store volatile i32 %2354, i32* %1734, align 4, !tbaa !35
  %2355 = load i64, i64* %897, align 8, !tbaa !25
  %2356 = trunc i64 %2355 to i8
  %2357 = icmp eq i8 %2356, 0
  %2358 = bitcast i32* %1733 to i64*
  %2359 = load volatile i64, i64* %2358, align 16, !tbaa !25
  %2360 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %2361 = select i1 %2357, i64 0, i64 %2360
  %2362 = or i64 %2359, %2361
  %2363 = trunc i64 %2362 to i32
  store volatile i32 %2363, i32* %1733, align 16, !tbaa !35
  %2364 = load i64, i64* %911, align 8, !tbaa !25
  %2365 = trunc i64 %2364 to i8
  %2366 = icmp eq i8 %2365, 0
  %2367 = bitcast i32* %1734 to i64*
  %2368 = load volatile i64, i64* %2367, align 4, !tbaa !25
  %2369 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %2370 = select i1 %2366, i64 0, i64 %2369
  %2371 = or i64 %2368, %2370
  %2372 = trunc i64 %2371 to i32
  store volatile i32 %2372, i32* %1734, align 4, !tbaa !35
  %2373 = load i64, i64* %922, align 8, !tbaa !25
  %2374 = trunc i64 %2373 to i8
  %2375 = icmp eq i8 %2374, 0
  %2376 = bitcast i32* %1733 to i64*
  %2377 = load volatile i64, i64* %2376, align 16, !tbaa !25
  %2378 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %2379 = select i1 %2375, i64 0, i64 %2378
  %2380 = or i64 %2377, %2379
  %2381 = trunc i64 %2380 to i32
  store volatile i32 %2381, i32* %1733, align 16, !tbaa !35
  %2382 = load i64, i64* %936, align 8, !tbaa !25
  %2383 = trunc i64 %2382 to i8
  %2384 = icmp eq i8 %2383, 0
  %2385 = bitcast i32* %1734 to i64*
  %2386 = load volatile i64, i64* %2385, align 4, !tbaa !25
  %2387 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %2388 = select i1 %2384, i64 0, i64 %2387
  %2389 = or i64 %2386, %2388
  %2390 = trunc i64 %2389 to i32
  store volatile i32 %2390, i32* %1734, align 4, !tbaa !35
  %2391 = load i64, i64* %947, align 8, !tbaa !25
  %2392 = trunc i64 %2391 to i8
  %2393 = icmp eq i8 %2392, 0
  %2394 = bitcast i32* %1733 to i64*
  %2395 = load volatile i64, i64* %2394, align 16, !tbaa !25
  %2396 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %2397 = select i1 %2393, i64 0, i64 %2396
  %2398 = or i64 %2395, %2397
  %2399 = trunc i64 %2398 to i32
  store volatile i32 %2399, i32* %1733, align 16, !tbaa !35
  %2400 = load i64, i64* %961, align 8, !tbaa !25
  %2401 = trunc i64 %2400 to i8
  %2402 = icmp eq i8 %2401, 0
  %2403 = bitcast i32* %1734 to i64*
  %2404 = load volatile i64, i64* %2403, align 4, !tbaa !25
  %2405 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %2406 = select i1 %2402, i64 0, i64 %2405
  %2407 = or i64 %2404, %2406
  %2408 = trunc i64 %2407 to i32
  store volatile i32 %2408, i32* %1734, align 4, !tbaa !35
  %2409 = load i64, i64* %972, align 8, !tbaa !25
  %2410 = trunc i64 %2409 to i8
  %2411 = icmp eq i8 %2410, 0
  %2412 = bitcast i32* %1733 to i64*
  %2413 = load volatile i64, i64* %2412, align 16, !tbaa !25
  %2414 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %2415 = select i1 %2411, i64 0, i64 %2414
  %2416 = or i64 %2413, %2415
  %2417 = trunc i64 %2416 to i32
  store volatile i32 %2417, i32* %1733, align 16, !tbaa !35
  %2418 = load i64, i64* %986, align 8, !tbaa !25
  %2419 = trunc i64 %2418 to i8
  %2420 = icmp eq i8 %2419, 0
  %2421 = bitcast i32* %1734 to i64*
  %2422 = load volatile i64, i64* %2421, align 4, !tbaa !25
  %2423 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %2424 = select i1 %2420, i64 0, i64 %2423
  %2425 = or i64 %2422, %2424
  %2426 = trunc i64 %2425 to i32
  store volatile i32 %2426, i32* %1734, align 4, !tbaa !35
  %2427 = load i64, i64* %997, align 8, !tbaa !25
  %2428 = trunc i64 %2427 to i8
  %2429 = icmp eq i8 %2428, 0
  %2430 = bitcast i32* %1733 to i64*
  %2431 = load volatile i64, i64* %2430, align 16, !tbaa !25
  %2432 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %2433 = select i1 %2429, i64 0, i64 %2432
  %2434 = or i64 %2431, %2433
  %2435 = trunc i64 %2434 to i32
  store volatile i32 %2435, i32* %1733, align 16, !tbaa !35
  %2436 = load i64, i64* %1011, align 8, !tbaa !25
  %2437 = trunc i64 %2436 to i8
  %2438 = icmp eq i8 %2437, 0
  %2439 = bitcast i32* %1734 to i64*
  %2440 = load volatile i64, i64* %2439, align 4, !tbaa !25
  %2441 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %2442 = select i1 %2438, i64 0, i64 %2441
  %2443 = or i64 %2440, %2442
  %2444 = trunc i64 %2443 to i32
  store volatile i32 %2444, i32* %1734, align 4, !tbaa !35
  %2445 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 6
  store i32 0, i32* %2445, align 8, !tbaa !35
  %2446 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 7
  store i32 0, i32* %2446, align 4, !tbaa !35
  %2447 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 6
  %2448 = bitcast i8* %2447 to i64*
  %2449 = load i64, i64* %2448, align 8, !tbaa !25
  %2450 = trunc i64 %2449 to i8
  store i8 %2450, i8* %8, align 16, !tbaa !14
  %2451 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 7
  %2452 = bitcast i8* %2451 to i64*
  %2453 = load i64, i64* %2452, align 8, !tbaa !25
  %2454 = trunc i64 %2453 to i8
  %2455 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 1
  store i8 %2454, i8* %2455, align 1, !tbaa !14
  %2456 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 8
  %2457 = bitcast i8* %2456 to i64*
  %2458 = load i64, i64* %2457, align 8, !tbaa !25
  %2459 = trunc i64 %2458 to i8
  %2460 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 2
  store i8 %2459, i8* %2460, align 2, !tbaa !14
  %2461 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 9
  %2462 = bitcast i8* %2461 to i64*
  %2463 = load i64, i64* %2462, align 8, !tbaa !25
  %2464 = trunc i64 %2463 to i8
  %2465 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 3
  store i8 %2464, i8* %2465, align 1, !tbaa !14
  %2466 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 10
  %2467 = bitcast i8* %2466 to i64*
  %2468 = load i64, i64* %2467, align 8, !tbaa !25
  %2469 = trunc i64 %2468 to i8
  %2470 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 4
  store i8 %2469, i8* %2470, align 4, !tbaa !14
  %2471 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 11
  %2472 = bitcast i8* %2471 to i64*
  %2473 = load i64, i64* %2472, align 8, !tbaa !25
  %2474 = trunc i64 %2473 to i8
  %2475 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 5
  store i8 %2474, i8* %2475, align 1, !tbaa !14
  %2476 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 12
  %2477 = bitcast i8* %2476 to i64*
  %2478 = load i64, i64* %2477, align 8, !tbaa !25
  %2479 = trunc i64 %2478 to i8
  %2480 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 6
  store i8 %2479, i8* %2480, align 2, !tbaa !14
  %2481 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 13
  %2482 = bitcast i8* %2481 to i64*
  %2483 = load i64, i64* %2482, align 8, !tbaa !25
  %2484 = trunc i64 %2483 to i8
  %2485 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 7
  store i8 %2484, i8* %2485, align 1, !tbaa !14
  %2486 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 14
  %2487 = bitcast i8* %2486 to i64*
  %2488 = load i64, i64* %2487, align 8, !tbaa !25
  %2489 = trunc i64 %2488 to i8
  %2490 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 8
  store i8 %2489, i8* %2490, align 8, !tbaa !14
  %2491 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 15
  %2492 = bitcast i8* %2491 to i64*
  %2493 = load i64, i64* %2492, align 8, !tbaa !25
  %2494 = trunc i64 %2493 to i8
  %2495 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 9
  store i8 %2494, i8* %2495, align 1, !tbaa !14
  %2496 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 16
  %2497 = bitcast i8* %2496 to i64*
  %2498 = load i64, i64* %2497, align 16, !tbaa !25
  %2499 = trunc i64 %2498 to i8
  %2500 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 10
  store i8 %2499, i8* %2500, align 2, !tbaa !14
  %2501 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 17
  %2502 = bitcast i8* %2501 to i64*
  %2503 = load i64, i64* %2502, align 8, !tbaa !25
  %2504 = trunc i64 %2503 to i8
  %2505 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 11
  store i8 %2504, i8* %2505, align 1, !tbaa !14
  %2506 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 18
  %2507 = bitcast i8* %2506 to i64*
  %2508 = load i64, i64* %2507, align 8, !tbaa !25
  %2509 = trunc i64 %2508 to i8
  %2510 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 12
  store i8 %2509, i8* %2510, align 4, !tbaa !14
  %2511 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 19
  %2512 = bitcast i8* %2511 to i64*
  %2513 = load i64, i64* %2512, align 8, !tbaa !25
  %2514 = trunc i64 %2513 to i8
  %2515 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 13
  store i8 %2514, i8* %2515, align 1, !tbaa !14
  %2516 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 20
  %2517 = bitcast i8* %2516 to i64*
  %2518 = load i64, i64* %2517, align 8, !tbaa !25
  %2519 = trunc i64 %2518 to i8
  %2520 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 14
  store i8 %2519, i8* %2520, align 2, !tbaa !14
  %2521 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 21
  %2522 = bitcast i8* %2521 to i64*
  %2523 = load i64, i64* %2522, align 8, !tbaa !25
  %2524 = trunc i64 %2523 to i8
  %2525 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 15
  store i8 %2524, i8* %2525, align 1, !tbaa !14
  %2526 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 22
  %2527 = bitcast i8* %2526 to i64*
  %2528 = load i64, i64* %2527, align 8, !tbaa !25
  %2529 = trunc i64 %2528 to i8
  %2530 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 16
  store i8 %2529, i8* %2530, align 16, !tbaa !14
  %2531 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 23
  %2532 = bitcast i8* %2531 to i64*
  %2533 = load i64, i64* %2532, align 8, !tbaa !25
  %2534 = trunc i64 %2533 to i8
  %2535 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 17
  store i8 %2534, i8* %2535, align 1, !tbaa !14
  %2536 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 24
  %2537 = bitcast i8* %2536 to i64*
  %2538 = load i64, i64* %2537, align 8, !tbaa !25
  %2539 = trunc i64 %2538 to i8
  %2540 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 18
  store i8 %2539, i8* %2540, align 2, !tbaa !14
  %2541 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 25
  %2542 = bitcast i8* %2541 to i64*
  %2543 = load i64, i64* %2542, align 8, !tbaa !25
  %2544 = trunc i64 %2543 to i8
  %2545 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 19
  store i8 %2544, i8* %2545, align 1, !tbaa !14
  %2546 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 26
  %2547 = bitcast i8* %2546 to i64*
  %2548 = load i64, i64* %2547, align 8, !tbaa !25
  %2549 = trunc i64 %2548 to i8
  %2550 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 20
  store i8 %2549, i8* %2550, align 4, !tbaa !14
  %2551 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 27
  %2552 = bitcast i8* %2551 to i64*
  %2553 = load i64, i64* %2552, align 8, !tbaa !25
  %2554 = trunc i64 %2553 to i8
  %2555 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 21
  store i8 %2554, i8* %2555, align 1, !tbaa !14
  %2556 = bitcast [56 x i8]* %4 to i64*
  %2557 = load i64, i64* %2556, align 16, !tbaa !25
  %2558 = trunc i64 %2557 to i8
  %2559 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 22
  store i8 %2558, i8* %2559, align 2, !tbaa !14
  %2560 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 1
  %2561 = bitcast i8* %2560 to i64*
  %2562 = load i64, i64* %2561, align 8, !tbaa !25
  %2563 = trunc i64 %2562 to i8
  %2564 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 23
  store i8 %2563, i8* %2564, align 1, !tbaa !14
  %2565 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 2
  %2566 = bitcast i8* %2565 to i64*
  %2567 = load i64, i64* %2566, align 8, !tbaa !25
  %2568 = trunc i64 %2567 to i8
  %2569 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 24
  store i8 %2568, i8* %2569, align 8, !tbaa !14
  %2570 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 3
  %2571 = bitcast i8* %2570 to i64*
  %2572 = load i64, i64* %2571, align 8, !tbaa !25
  %2573 = trunc i64 %2572 to i8
  %2574 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 25
  store i8 %2573, i8* %2574, align 1, !tbaa !14
  %2575 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 4
  %2576 = bitcast i8* %2575 to i64*
  %2577 = load i64, i64* %2576, align 8, !tbaa !25
  %2578 = trunc i64 %2577 to i8
  %2579 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 26
  store i8 %2578, i8* %2579, align 2, !tbaa !14
  %2580 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 5
  %2581 = bitcast i8* %2580 to i64*
  %2582 = load i64, i64* %2581, align 8, !tbaa !25
  %2583 = trunc i64 %2582 to i8
  %2584 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 27
  store i8 %2583, i8* %2584, align 1, !tbaa !14
  %2585 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 34
  %2586 = bitcast i8* %2585 to i64*
  %2587 = load i64, i64* %2586, align 8, !tbaa !25
  %2588 = trunc i64 %2587 to i8
  %2589 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 28
  store i8 %2588, i8* %2589, align 4, !tbaa !14
  %2590 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 35
  %2591 = bitcast i8* %2590 to i64*
  %2592 = load i64, i64* %2591, align 8, !tbaa !25
  %2593 = trunc i64 %2592 to i8
  %2594 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 29
  store i8 %2593, i8* %2594, align 1, !tbaa !14
  %2595 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 36
  %2596 = bitcast i8* %2595 to i64*
  %2597 = load i64, i64* %2596, align 8, !tbaa !25
  %2598 = trunc i64 %2597 to i8
  %2599 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 30
  store i8 %2598, i8* %2599, align 2, !tbaa !14
  %2600 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 37
  %2601 = bitcast i8* %2600 to i64*
  %2602 = load i64, i64* %2601, align 8, !tbaa !25
  %2603 = trunc i64 %2602 to i8
  %2604 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 31
  store i8 %2603, i8* %2604, align 1, !tbaa !14
  %2605 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 38
  %2606 = bitcast i8* %2605 to i64*
  %2607 = load i64, i64* %2606, align 8, !tbaa !25
  %2608 = trunc i64 %2607 to i8
  %2609 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 32
  store i8 %2608, i8* %2609, align 16, !tbaa !14
  %2610 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 39
  %2611 = bitcast i8* %2610 to i64*
  %2612 = load i64, i64* %2611, align 8, !tbaa !25
  %2613 = trunc i64 %2612 to i8
  %2614 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 33
  store i8 %2613, i8* %2614, align 1, !tbaa !14
  %2615 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 40
  %2616 = bitcast i8* %2615 to i64*
  %2617 = load i64, i64* %2616, align 8, !tbaa !25
  %2618 = trunc i64 %2617 to i8
  %2619 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 34
  store i8 %2618, i8* %2619, align 2, !tbaa !14
  %2620 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 41
  %2621 = bitcast i8* %2620 to i64*
  %2622 = load i64, i64* %2621, align 8, !tbaa !25
  %2623 = trunc i64 %2622 to i8
  %2624 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 35
  store i8 %2623, i8* %2624, align 1, !tbaa !14
  %2625 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 42
  %2626 = bitcast i8* %2625 to i64*
  %2627 = load i64, i64* %2626, align 8, !tbaa !25
  %2628 = trunc i64 %2627 to i8
  %2629 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 36
  store i8 %2628, i8* %2629, align 4, !tbaa !14
  %2630 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 43
  %2631 = bitcast i8* %2630 to i64*
  %2632 = load i64, i64* %2631, align 8, !tbaa !25
  %2633 = trunc i64 %2632 to i8
  %2634 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 37
  store i8 %2633, i8* %2634, align 1, !tbaa !14
  %2635 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 44
  %2636 = bitcast i8* %2635 to i64*
  %2637 = load i64, i64* %2636, align 8, !tbaa !25
  %2638 = trunc i64 %2637 to i8
  %2639 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 38
  store i8 %2638, i8* %2639, align 2, !tbaa !14
  %2640 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 45
  %2641 = bitcast i8* %2640 to i64*
  %2642 = load i64, i64* %2641, align 8, !tbaa !25
  %2643 = trunc i64 %2642 to i8
  %2644 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 39
  store i8 %2643, i8* %2644, align 1, !tbaa !14
  %2645 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 46
  %2646 = bitcast i8* %2645 to i64*
  %2647 = load i64, i64* %2646, align 8, !tbaa !25
  %2648 = trunc i64 %2647 to i8
  %2649 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 40
  store i8 %2648, i8* %2649, align 8, !tbaa !14
  %2650 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 47
  %2651 = bitcast i8* %2650 to i64*
  %2652 = load i64, i64* %2651, align 8, !tbaa !25
  %2653 = trunc i64 %2652 to i8
  %2654 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 41
  store i8 %2653, i8* %2654, align 1, !tbaa !14
  %2655 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 48
  %2656 = bitcast i8* %2655 to i64*
  %2657 = load i64, i64* %2656, align 16, !tbaa !25
  %2658 = trunc i64 %2657 to i8
  %2659 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 42
  store i8 %2658, i8* %2659, align 2, !tbaa !14
  %2660 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 49
  %2661 = bitcast i8* %2660 to i64*
  %2662 = load i64, i64* %2661, align 8, !tbaa !25
  %2663 = trunc i64 %2662 to i8
  %2664 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 43
  store i8 %2663, i8* %2664, align 1, !tbaa !14
  %2665 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 50
  %2666 = bitcast i8* %2665 to i64*
  %2667 = load i64, i64* %2666, align 8, !tbaa !25
  %2668 = trunc i64 %2667 to i8
  %2669 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 44
  store i8 %2668, i8* %2669, align 4, !tbaa !14
  %2670 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 51
  %2671 = bitcast i8* %2670 to i64*
  %2672 = load i64, i64* %2671, align 8, !tbaa !25
  %2673 = trunc i64 %2672 to i8
  %2674 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 45
  store i8 %2673, i8* %2674, align 1, !tbaa !14
  %2675 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 52
  %2676 = bitcast i8* %2675 to i64*
  %2677 = load i64, i64* %2676, align 8, !tbaa !25
  %2678 = trunc i64 %2677 to i8
  %2679 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 46
  store i8 %2678, i8* %2679, align 2, !tbaa !14
  %2680 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 53
  %2681 = bitcast i8* %2680 to i64*
  %2682 = load i64, i64* %2681, align 8, !tbaa !25
  %2683 = trunc i64 %2682 to i8
  %2684 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 47
  store i8 %2683, i8* %2684, align 1, !tbaa !14
  %2685 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 54
  %2686 = bitcast i8* %2685 to i64*
  %2687 = load i64, i64* %2686, align 8, !tbaa !25
  %2688 = trunc i64 %2687 to i8
  %2689 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 48
  store i8 %2688, i8* %2689, align 16, !tbaa !14
  %2690 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 55
  %2691 = bitcast i8* %2690 to i64*
  %2692 = load i64, i64* %2691, align 8, !tbaa !25
  %2693 = trunc i64 %2692 to i8
  %2694 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 49
  store i8 %2693, i8* %2694, align 1, !tbaa !14
  %2695 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 28
  %2696 = bitcast i8* %2695 to i64*
  %2697 = load i64, i64* %2696, align 8, !tbaa !25
  %2698 = trunc i64 %2697 to i8
  %2699 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 50
  store i8 %2698, i8* %2699, align 2, !tbaa !14
  %2700 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 29
  %2701 = bitcast i8* %2700 to i64*
  %2702 = load i64, i64* %2701, align 8, !tbaa !25
  %2703 = trunc i64 %2702 to i8
  %2704 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 51
  store i8 %2703, i8* %2704, align 1, !tbaa !14
  %2705 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 30
  %2706 = bitcast i8* %2705 to i64*
  %2707 = load i64, i64* %2706, align 8, !tbaa !25
  %2708 = trunc i64 %2707 to i8
  %2709 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 52
  store i8 %2708, i8* %2709, align 4, !tbaa !14
  %2710 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 31
  %2711 = bitcast i8* %2710 to i64*
  %2712 = load i64, i64* %2711, align 8, !tbaa !25
  %2713 = trunc i64 %2712 to i8
  %2714 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 53
  store i8 %2713, i8* %2714, align 1, !tbaa !14
  %2715 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 32
  %2716 = bitcast i8* %2715 to i64*
  %2717 = load i64, i64* %2716, align 16, !tbaa !25
  %2718 = trunc i64 %2717 to i8
  %2719 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 54
  store i8 %2718, i8* %2719, align 2, !tbaa !14
  %2720 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 33
  %2721 = bitcast i8* %2720 to i64*
  %2722 = load i64, i64* %2721, align 8, !tbaa !25
  %2723 = trunc i64 %2722 to i8
  %2724 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 55
  store i8 %2723, i8* %2724, align 1, !tbaa !14
  %2725 = load i64, i64* %423, align 8, !tbaa !25
  %2726 = trunc i64 %2725 to i8
  %2727 = icmp eq i8 %2726, 0
  %2728 = bitcast i32* %2445 to i64*
  %2729 = load volatile i64, i64* %2728, align 8, !tbaa !25
  %2730 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %2731 = select i1 %2727, i64 0, i64 %2730
  %2732 = or i64 %2729, %2731
  %2733 = trunc i64 %2732 to i32
  store volatile i32 %2733, i32* %2445, align 8, !tbaa !35
  %2734 = load i64, i64* %437, align 8, !tbaa !25
  %2735 = trunc i64 %2734 to i8
  %2736 = icmp eq i8 %2735, 0
  %2737 = bitcast i32* %2446 to i64*
  %2738 = load volatile i64, i64* %2737, align 4, !tbaa !25
  %2739 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %2740 = select i1 %2736, i64 0, i64 %2739
  %2741 = or i64 %2738, %2740
  %2742 = trunc i64 %2741 to i32
  store volatile i32 %2742, i32* %2446, align 4, !tbaa !35
  %2743 = load i64, i64* %448, align 16, !tbaa !25
  %2744 = trunc i64 %2743 to i8
  %2745 = icmp eq i8 %2744, 0
  %2746 = bitcast i32* %2445 to i64*
  %2747 = load volatile i64, i64* %2746, align 8, !tbaa !25
  %2748 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %2749 = select i1 %2745, i64 0, i64 %2748
  %2750 = or i64 %2747, %2749
  %2751 = trunc i64 %2750 to i32
  store volatile i32 %2751, i32* %2445, align 8, !tbaa !35
  %2752 = load i64, i64* %462, align 8, !tbaa !25
  %2753 = trunc i64 %2752 to i8
  %2754 = icmp eq i8 %2753, 0
  %2755 = bitcast i32* %2446 to i64*
  %2756 = load volatile i64, i64* %2755, align 4, !tbaa !25
  %2757 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %2758 = select i1 %2754, i64 0, i64 %2757
  %2759 = or i64 %2756, %2758
  %2760 = trunc i64 %2759 to i32
  store volatile i32 %2760, i32* %2446, align 4, !tbaa !35
  %2761 = load i64, i64* %473, align 8, !tbaa !25
  %2762 = trunc i64 %2761 to i8
  %2763 = icmp eq i8 %2762, 0
  %2764 = bitcast i32* %2445 to i64*
  %2765 = load volatile i64, i64* %2764, align 8, !tbaa !25
  %2766 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %2767 = select i1 %2763, i64 0, i64 %2766
  %2768 = or i64 %2765, %2767
  %2769 = trunc i64 %2768 to i32
  store volatile i32 %2769, i32* %2445, align 8, !tbaa !35
  %2770 = load i64, i64* %487, align 8, !tbaa !25
  %2771 = trunc i64 %2770 to i8
  %2772 = icmp eq i8 %2771, 0
  %2773 = bitcast i32* %2446 to i64*
  %2774 = load volatile i64, i64* %2773, align 4, !tbaa !25
  %2775 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %2776 = select i1 %2772, i64 0, i64 %2775
  %2777 = or i64 %2774, %2776
  %2778 = trunc i64 %2777 to i32
  store volatile i32 %2778, i32* %2446, align 4, !tbaa !35
  %2779 = load i64, i64* %498, align 8, !tbaa !25
  %2780 = trunc i64 %2779 to i8
  %2781 = icmp eq i8 %2780, 0
  %2782 = bitcast i32* %2445 to i64*
  %2783 = load volatile i64, i64* %2782, align 8, !tbaa !25
  %2784 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %2785 = select i1 %2781, i64 0, i64 %2784
  %2786 = or i64 %2783, %2785
  %2787 = trunc i64 %2786 to i32
  store volatile i32 %2787, i32* %2445, align 8, !tbaa !35
  %2788 = load i64, i64* %512, align 8, !tbaa !25
  %2789 = trunc i64 %2788 to i8
  %2790 = icmp eq i8 %2789, 0
  %2791 = bitcast i32* %2446 to i64*
  %2792 = load volatile i64, i64* %2791, align 4, !tbaa !25
  %2793 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %2794 = select i1 %2790, i64 0, i64 %2793
  %2795 = or i64 %2792, %2794
  %2796 = trunc i64 %2795 to i32
  store volatile i32 %2796, i32* %2446, align 4, !tbaa !35
  %2797 = load i64, i64* %522, align 16, !tbaa !25
  %2798 = trunc i64 %2797 to i8
  %2799 = icmp eq i8 %2798, 0
  %2800 = bitcast i32* %2445 to i64*
  %2801 = load volatile i64, i64* %2800, align 8, !tbaa !25
  %2802 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %2803 = select i1 %2799, i64 0, i64 %2802
  %2804 = or i64 %2801, %2803
  %2805 = trunc i64 %2804 to i32
  store volatile i32 %2805, i32* %2445, align 8, !tbaa !35
  %2806 = load i64, i64* %536, align 8, !tbaa !25
  %2807 = trunc i64 %2806 to i8
  %2808 = icmp eq i8 %2807, 0
  %2809 = bitcast i32* %2446 to i64*
  %2810 = load volatile i64, i64* %2809, align 4, !tbaa !25
  %2811 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %2812 = select i1 %2808, i64 0, i64 %2811
  %2813 = or i64 %2810, %2812
  %2814 = trunc i64 %2813 to i32
  store volatile i32 %2814, i32* %2446, align 4, !tbaa !35
  %2815 = load i64, i64* %547, align 8, !tbaa !25
  %2816 = trunc i64 %2815 to i8
  %2817 = icmp eq i8 %2816, 0
  %2818 = bitcast i32* %2445 to i64*
  %2819 = load volatile i64, i64* %2818, align 8, !tbaa !25
  %2820 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %2821 = select i1 %2817, i64 0, i64 %2820
  %2822 = or i64 %2819, %2821
  %2823 = trunc i64 %2822 to i32
  store volatile i32 %2823, i32* %2445, align 8, !tbaa !35
  %2824 = load i64, i64* %561, align 8, !tbaa !25
  %2825 = trunc i64 %2824 to i8
  %2826 = icmp eq i8 %2825, 0
  %2827 = bitcast i32* %2446 to i64*
  %2828 = load volatile i64, i64* %2827, align 4, !tbaa !25
  %2829 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %2830 = select i1 %2826, i64 0, i64 %2829
  %2831 = or i64 %2828, %2830
  %2832 = trunc i64 %2831 to i32
  store volatile i32 %2832, i32* %2446, align 4, !tbaa !35
  %2833 = load i64, i64* %572, align 8, !tbaa !25
  %2834 = trunc i64 %2833 to i8
  %2835 = icmp eq i8 %2834, 0
  %2836 = bitcast i32* %2445 to i64*
  %2837 = load volatile i64, i64* %2836, align 8, !tbaa !25
  %2838 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %2839 = select i1 %2835, i64 0, i64 %2838
  %2840 = or i64 %2837, %2839
  %2841 = trunc i64 %2840 to i32
  store volatile i32 %2841, i32* %2445, align 8, !tbaa !35
  %2842 = load i64, i64* %586, align 8, !tbaa !25
  %2843 = trunc i64 %2842 to i8
  %2844 = icmp eq i8 %2843, 0
  %2845 = bitcast i32* %2446 to i64*
  %2846 = load volatile i64, i64* %2845, align 4, !tbaa !25
  %2847 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %2848 = select i1 %2844, i64 0, i64 %2847
  %2849 = or i64 %2846, %2848
  %2850 = trunc i64 %2849 to i32
  store volatile i32 %2850, i32* %2446, align 4, !tbaa !35
  %2851 = load i64, i64* %597, align 8, !tbaa !25
  %2852 = trunc i64 %2851 to i8
  %2853 = icmp eq i8 %2852, 0
  %2854 = bitcast i32* %2445 to i64*
  %2855 = load volatile i64, i64* %2854, align 8, !tbaa !25
  %2856 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %2857 = select i1 %2853, i64 0, i64 %2856
  %2858 = or i64 %2855, %2857
  %2859 = trunc i64 %2858 to i32
  store volatile i32 %2859, i32* %2445, align 8, !tbaa !35
  %2860 = load i64, i64* %611, align 8, !tbaa !25
  %2861 = trunc i64 %2860 to i8
  %2862 = icmp eq i8 %2861, 0
  %2863 = bitcast i32* %2446 to i64*
  %2864 = load volatile i64, i64* %2863, align 4, !tbaa !25
  %2865 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %2866 = select i1 %2862, i64 0, i64 %2865
  %2867 = or i64 %2864, %2866
  %2868 = trunc i64 %2867 to i32
  store volatile i32 %2868, i32* %2446, align 4, !tbaa !35
  %2869 = load i64, i64* %622, align 8, !tbaa !25
  %2870 = trunc i64 %2869 to i8
  %2871 = icmp eq i8 %2870, 0
  %2872 = bitcast i32* %2445 to i64*
  %2873 = load volatile i64, i64* %2872, align 8, !tbaa !25
  %2874 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %2875 = select i1 %2871, i64 0, i64 %2874
  %2876 = or i64 %2873, %2875
  %2877 = trunc i64 %2876 to i32
  store volatile i32 %2877, i32* %2445, align 8, !tbaa !35
  %2878 = load i64, i64* %636, align 8, !tbaa !25
  %2879 = trunc i64 %2878 to i8
  %2880 = icmp eq i8 %2879, 0
  %2881 = bitcast i32* %2446 to i64*
  %2882 = load volatile i64, i64* %2881, align 4, !tbaa !25
  %2883 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %2884 = select i1 %2880, i64 0, i64 %2883
  %2885 = or i64 %2882, %2884
  %2886 = trunc i64 %2885 to i32
  store volatile i32 %2886, i32* %2446, align 4, !tbaa !35
  %2887 = load i64, i64* %647, align 8, !tbaa !25
  %2888 = trunc i64 %2887 to i8
  %2889 = icmp eq i8 %2888, 0
  %2890 = bitcast i32* %2445 to i64*
  %2891 = load volatile i64, i64* %2890, align 8, !tbaa !25
  %2892 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %2893 = select i1 %2889, i64 0, i64 %2892
  %2894 = or i64 %2891, %2893
  %2895 = trunc i64 %2894 to i32
  store volatile i32 %2895, i32* %2445, align 8, !tbaa !35
  %2896 = load i64, i64* %661, align 8, !tbaa !25
  %2897 = trunc i64 %2896 to i8
  %2898 = icmp eq i8 %2897, 0
  %2899 = bitcast i32* %2446 to i64*
  %2900 = load volatile i64, i64* %2899, align 4, !tbaa !25
  %2901 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %2902 = select i1 %2898, i64 0, i64 %2901
  %2903 = or i64 %2900, %2902
  %2904 = trunc i64 %2903 to i32
  store volatile i32 %2904, i32* %2446, align 4, !tbaa !35
  %2905 = load i64, i64* %672, align 8, !tbaa !25
  %2906 = trunc i64 %2905 to i8
  %2907 = icmp eq i8 %2906, 0
  %2908 = bitcast i32* %2445 to i64*
  %2909 = load volatile i64, i64* %2908, align 8, !tbaa !25
  %2910 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %2911 = select i1 %2907, i64 0, i64 %2910
  %2912 = or i64 %2909, %2911
  %2913 = trunc i64 %2912 to i32
  store volatile i32 %2913, i32* %2445, align 8, !tbaa !35
  %2914 = load i64, i64* %686, align 16, !tbaa !25
  %2915 = trunc i64 %2914 to i8
  %2916 = icmp eq i8 %2915, 0
  %2917 = bitcast i32* %2446 to i64*
  %2918 = load volatile i64, i64* %2917, align 4, !tbaa !25
  %2919 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %2920 = select i1 %2916, i64 0, i64 %2919
  %2921 = or i64 %2918, %2920
  %2922 = trunc i64 %2921 to i32
  store volatile i32 %2922, i32* %2446, align 4, !tbaa !35
  %2923 = load i64, i64* %697, align 8, !tbaa !25
  %2924 = trunc i64 %2923 to i8
  %2925 = icmp eq i8 %2924, 0
  %2926 = bitcast i32* %2445 to i64*
  %2927 = load volatile i64, i64* %2926, align 8, !tbaa !25
  %2928 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %2929 = select i1 %2925, i64 0, i64 %2928
  %2930 = or i64 %2927, %2929
  %2931 = trunc i64 %2930 to i32
  store volatile i32 %2931, i32* %2445, align 8, !tbaa !35
  %2932 = load i64, i64* %711, align 8, !tbaa !25
  %2933 = trunc i64 %2932 to i8
  %2934 = icmp eq i8 %2933, 0
  %2935 = bitcast i32* %2446 to i64*
  %2936 = load volatile i64, i64* %2935, align 4, !tbaa !25
  %2937 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %2938 = select i1 %2934, i64 0, i64 %2937
  %2939 = or i64 %2936, %2938
  %2940 = trunc i64 %2939 to i32
  store volatile i32 %2940, i32* %2446, align 4, !tbaa !35
  %2941 = load i64, i64* %722, align 8, !tbaa !25
  %2942 = trunc i64 %2941 to i8
  %2943 = icmp eq i8 %2942, 0
  %2944 = bitcast i32* %2445 to i64*
  %2945 = load volatile i64, i64* %2944, align 8, !tbaa !25
  %2946 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %2947 = select i1 %2943, i64 0, i64 %2946
  %2948 = or i64 %2945, %2947
  %2949 = trunc i64 %2948 to i32
  store volatile i32 %2949, i32* %2445, align 8, !tbaa !35
  %2950 = load i64, i64* %736, align 8, !tbaa !25
  %2951 = trunc i64 %2950 to i8
  %2952 = icmp eq i8 %2951, 0
  %2953 = bitcast i32* %2446 to i64*
  %2954 = load volatile i64, i64* %2953, align 4, !tbaa !25
  %2955 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %2956 = select i1 %2952, i64 0, i64 %2955
  %2957 = or i64 %2954, %2956
  %2958 = trunc i64 %2957 to i32
  store volatile i32 %2958, i32* %2446, align 4, !tbaa !35
  %2959 = load i64, i64* %747, align 8, !tbaa !25
  %2960 = trunc i64 %2959 to i8
  %2961 = icmp eq i8 %2960, 0
  %2962 = bitcast i32* %2445 to i64*
  %2963 = load volatile i64, i64* %2962, align 8, !tbaa !25
  %2964 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %2965 = select i1 %2961, i64 0, i64 %2964
  %2966 = or i64 %2963, %2965
  %2967 = trunc i64 %2966 to i32
  store volatile i32 %2967, i32* %2445, align 8, !tbaa !35
  %2968 = load i64, i64* %761, align 16, !tbaa !25
  %2969 = trunc i64 %2968 to i8
  %2970 = icmp eq i8 %2969, 0
  %2971 = bitcast i32* %2446 to i64*
  %2972 = load volatile i64, i64* %2971, align 4, !tbaa !25
  %2973 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %2974 = select i1 %2970, i64 0, i64 %2973
  %2975 = or i64 %2972, %2974
  %2976 = trunc i64 %2975 to i32
  store volatile i32 %2976, i32* %2446, align 4, !tbaa !35
  %2977 = load i64, i64* %772, align 8, !tbaa !25
  %2978 = trunc i64 %2977 to i8
  %2979 = icmp eq i8 %2978, 0
  %2980 = bitcast i32* %2445 to i64*
  %2981 = load volatile i64, i64* %2980, align 8, !tbaa !25
  %2982 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %2983 = select i1 %2979, i64 0, i64 %2982
  %2984 = or i64 %2981, %2983
  %2985 = trunc i64 %2984 to i32
  store volatile i32 %2985, i32* %2445, align 8, !tbaa !35
  %2986 = load i64, i64* %786, align 8, !tbaa !25
  %2987 = trunc i64 %2986 to i8
  %2988 = icmp eq i8 %2987, 0
  %2989 = bitcast i32* %2446 to i64*
  %2990 = load volatile i64, i64* %2989, align 4, !tbaa !25
  %2991 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %2992 = select i1 %2988, i64 0, i64 %2991
  %2993 = or i64 %2990, %2992
  %2994 = trunc i64 %2993 to i32
  store volatile i32 %2994, i32* %2446, align 4, !tbaa !35
  %2995 = load i64, i64* %797, align 8, !tbaa !25
  %2996 = trunc i64 %2995 to i8
  %2997 = icmp eq i8 %2996, 0
  %2998 = bitcast i32* %2445 to i64*
  %2999 = load volatile i64, i64* %2998, align 8, !tbaa !25
  %3000 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %3001 = select i1 %2997, i64 0, i64 %3000
  %3002 = or i64 %2999, %3001
  %3003 = trunc i64 %3002 to i32
  store volatile i32 %3003, i32* %2445, align 8, !tbaa !35
  %3004 = load i64, i64* %811, align 8, !tbaa !25
  %3005 = trunc i64 %3004 to i8
  %3006 = icmp eq i8 %3005, 0
  %3007 = bitcast i32* %2446 to i64*
  %3008 = load volatile i64, i64* %3007, align 4, !tbaa !25
  %3009 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %3010 = select i1 %3006, i64 0, i64 %3009
  %3011 = or i64 %3008, %3010
  %3012 = trunc i64 %3011 to i32
  store volatile i32 %3012, i32* %2446, align 4, !tbaa !35
  %3013 = load i64, i64* %822, align 8, !tbaa !25
  %3014 = trunc i64 %3013 to i8
  %3015 = icmp eq i8 %3014, 0
  %3016 = bitcast i32* %2445 to i64*
  %3017 = load volatile i64, i64* %3016, align 8, !tbaa !25
  %3018 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %3019 = select i1 %3015, i64 0, i64 %3018
  %3020 = or i64 %3017, %3019
  %3021 = trunc i64 %3020 to i32
  store volatile i32 %3021, i32* %2445, align 8, !tbaa !35
  %3022 = load i64, i64* %836, align 8, !tbaa !25
  %3023 = trunc i64 %3022 to i8
  %3024 = icmp eq i8 %3023, 0
  %3025 = bitcast i32* %2446 to i64*
  %3026 = load volatile i64, i64* %3025, align 4, !tbaa !25
  %3027 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %3028 = select i1 %3024, i64 0, i64 %3027
  %3029 = or i64 %3026, %3028
  %3030 = trunc i64 %3029 to i32
  store volatile i32 %3030, i32* %2446, align 4, !tbaa !35
  %3031 = load i64, i64* %847, align 8, !tbaa !25
  %3032 = trunc i64 %3031 to i8
  %3033 = icmp eq i8 %3032, 0
  %3034 = bitcast i32* %2445 to i64*
  %3035 = load volatile i64, i64* %3034, align 8, !tbaa !25
  %3036 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %3037 = select i1 %3033, i64 0, i64 %3036
  %3038 = or i64 %3035, %3037
  %3039 = trunc i64 %3038 to i32
  store volatile i32 %3039, i32* %2445, align 8, !tbaa !35
  %3040 = load i64, i64* %861, align 8, !tbaa !25
  %3041 = trunc i64 %3040 to i8
  %3042 = icmp eq i8 %3041, 0
  %3043 = bitcast i32* %2446 to i64*
  %3044 = load volatile i64, i64* %3043, align 4, !tbaa !25
  %3045 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %3046 = select i1 %3042, i64 0, i64 %3045
  %3047 = or i64 %3044, %3046
  %3048 = trunc i64 %3047 to i32
  store volatile i32 %3048, i32* %2446, align 4, !tbaa !35
  %3049 = load i64, i64* %872, align 8, !tbaa !25
  %3050 = trunc i64 %3049 to i8
  %3051 = icmp eq i8 %3050, 0
  %3052 = bitcast i32* %2445 to i64*
  %3053 = load volatile i64, i64* %3052, align 8, !tbaa !25
  %3054 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %3055 = select i1 %3051, i64 0, i64 %3054
  %3056 = or i64 %3053, %3055
  %3057 = trunc i64 %3056 to i32
  store volatile i32 %3057, i32* %2445, align 8, !tbaa !35
  %3058 = load i64, i64* %886, align 8, !tbaa !25
  %3059 = trunc i64 %3058 to i8
  %3060 = icmp eq i8 %3059, 0
  %3061 = bitcast i32* %2446 to i64*
  %3062 = load volatile i64, i64* %3061, align 4, !tbaa !25
  %3063 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %3064 = select i1 %3060, i64 0, i64 %3063
  %3065 = or i64 %3062, %3064
  %3066 = trunc i64 %3065 to i32
  store volatile i32 %3066, i32* %2446, align 4, !tbaa !35
  %3067 = load i64, i64* %897, align 8, !tbaa !25
  %3068 = trunc i64 %3067 to i8
  %3069 = icmp eq i8 %3068, 0
  %3070 = bitcast i32* %2445 to i64*
  %3071 = load volatile i64, i64* %3070, align 8, !tbaa !25
  %3072 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %3073 = select i1 %3069, i64 0, i64 %3072
  %3074 = or i64 %3071, %3073
  %3075 = trunc i64 %3074 to i32
  store volatile i32 %3075, i32* %2445, align 8, !tbaa !35
  %3076 = load i64, i64* %911, align 8, !tbaa !25
  %3077 = trunc i64 %3076 to i8
  %3078 = icmp eq i8 %3077, 0
  %3079 = bitcast i32* %2446 to i64*
  %3080 = load volatile i64, i64* %3079, align 4, !tbaa !25
  %3081 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %3082 = select i1 %3078, i64 0, i64 %3081
  %3083 = or i64 %3080, %3082
  %3084 = trunc i64 %3083 to i32
  store volatile i32 %3084, i32* %2446, align 4, !tbaa !35
  %3085 = load i64, i64* %922, align 8, !tbaa !25
  %3086 = trunc i64 %3085 to i8
  %3087 = icmp eq i8 %3086, 0
  %3088 = bitcast i32* %2445 to i64*
  %3089 = load volatile i64, i64* %3088, align 8, !tbaa !25
  %3090 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %3091 = select i1 %3087, i64 0, i64 %3090
  %3092 = or i64 %3089, %3091
  %3093 = trunc i64 %3092 to i32
  store volatile i32 %3093, i32* %2445, align 8, !tbaa !35
  %3094 = load i64, i64* %936, align 8, !tbaa !25
  %3095 = trunc i64 %3094 to i8
  %3096 = icmp eq i8 %3095, 0
  %3097 = bitcast i32* %2446 to i64*
  %3098 = load volatile i64, i64* %3097, align 4, !tbaa !25
  %3099 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %3100 = select i1 %3096, i64 0, i64 %3099
  %3101 = or i64 %3098, %3100
  %3102 = trunc i64 %3101 to i32
  store volatile i32 %3102, i32* %2446, align 4, !tbaa !35
  %3103 = load i64, i64* %947, align 8, !tbaa !25
  %3104 = trunc i64 %3103 to i8
  %3105 = icmp eq i8 %3104, 0
  %3106 = bitcast i32* %2445 to i64*
  %3107 = load volatile i64, i64* %3106, align 8, !tbaa !25
  %3108 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %3109 = select i1 %3105, i64 0, i64 %3108
  %3110 = or i64 %3107, %3109
  %3111 = trunc i64 %3110 to i32
  store volatile i32 %3111, i32* %2445, align 8, !tbaa !35
  %3112 = load i64, i64* %961, align 8, !tbaa !25
  %3113 = trunc i64 %3112 to i8
  %3114 = icmp eq i8 %3113, 0
  %3115 = bitcast i32* %2446 to i64*
  %3116 = load volatile i64, i64* %3115, align 4, !tbaa !25
  %3117 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %3118 = select i1 %3114, i64 0, i64 %3117
  %3119 = or i64 %3116, %3118
  %3120 = trunc i64 %3119 to i32
  store volatile i32 %3120, i32* %2446, align 4, !tbaa !35
  %3121 = load i64, i64* %972, align 8, !tbaa !25
  %3122 = trunc i64 %3121 to i8
  %3123 = icmp eq i8 %3122, 0
  %3124 = bitcast i32* %2445 to i64*
  %3125 = load volatile i64, i64* %3124, align 8, !tbaa !25
  %3126 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %3127 = select i1 %3123, i64 0, i64 %3126
  %3128 = or i64 %3125, %3127
  %3129 = trunc i64 %3128 to i32
  store volatile i32 %3129, i32* %2445, align 8, !tbaa !35
  %3130 = load i64, i64* %986, align 8, !tbaa !25
  %3131 = trunc i64 %3130 to i8
  %3132 = icmp eq i8 %3131, 0
  %3133 = bitcast i32* %2446 to i64*
  %3134 = load volatile i64, i64* %3133, align 4, !tbaa !25
  %3135 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %3136 = select i1 %3132, i64 0, i64 %3135
  %3137 = or i64 %3134, %3136
  %3138 = trunc i64 %3137 to i32
  store volatile i32 %3138, i32* %2446, align 4, !tbaa !35
  %3139 = load i64, i64* %997, align 8, !tbaa !25
  %3140 = trunc i64 %3139 to i8
  %3141 = icmp eq i8 %3140, 0
  %3142 = bitcast i32* %2445 to i64*
  %3143 = load volatile i64, i64* %3142, align 8, !tbaa !25
  %3144 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %3145 = select i1 %3141, i64 0, i64 %3144
  %3146 = or i64 %3143, %3145
  %3147 = trunc i64 %3146 to i32
  store volatile i32 %3147, i32* %2445, align 8, !tbaa !35
  %3148 = load i64, i64* %1011, align 8, !tbaa !25
  %3149 = trunc i64 %3148 to i8
  %3150 = icmp eq i8 %3149, 0
  %3151 = bitcast i32* %2446 to i64*
  %3152 = load volatile i64, i64* %3151, align 4, !tbaa !25
  %3153 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %3154 = select i1 %3150, i64 0, i64 %3153
  %3155 = or i64 %3152, %3154
  %3156 = trunc i64 %3155 to i32
  store volatile i32 %3156, i32* %2446, align 4, !tbaa !35
  %3157 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 8
  store i32 0, i32* %3157, align 16, !tbaa !35
  %3158 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 9
  store i32 0, i32* %3158, align 4, !tbaa !35
  %3159 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 8
  %3160 = bitcast i8* %3159 to i64*
  %3161 = load i64, i64* %3160, align 8, !tbaa !25
  %3162 = trunc i64 %3161 to i8
  store i8 %3162, i8* %8, align 16, !tbaa !14
  %3163 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 9
  %3164 = bitcast i8* %3163 to i64*
  %3165 = load i64, i64* %3164, align 8, !tbaa !25
  %3166 = trunc i64 %3165 to i8
  %3167 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 1
  store i8 %3166, i8* %3167, align 1, !tbaa !14
  %3168 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 10
  %3169 = bitcast i8* %3168 to i64*
  %3170 = load i64, i64* %3169, align 8, !tbaa !25
  %3171 = trunc i64 %3170 to i8
  %3172 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 2
  store i8 %3171, i8* %3172, align 2, !tbaa !14
  %3173 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 11
  %3174 = bitcast i8* %3173 to i64*
  %3175 = load i64, i64* %3174, align 8, !tbaa !25
  %3176 = trunc i64 %3175 to i8
  %3177 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 3
  store i8 %3176, i8* %3177, align 1, !tbaa !14
  %3178 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 12
  %3179 = bitcast i8* %3178 to i64*
  %3180 = load i64, i64* %3179, align 8, !tbaa !25
  %3181 = trunc i64 %3180 to i8
  %3182 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 4
  store i8 %3181, i8* %3182, align 4, !tbaa !14
  %3183 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 13
  %3184 = bitcast i8* %3183 to i64*
  %3185 = load i64, i64* %3184, align 8, !tbaa !25
  %3186 = trunc i64 %3185 to i8
  %3187 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 5
  store i8 %3186, i8* %3187, align 1, !tbaa !14
  %3188 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 14
  %3189 = bitcast i8* %3188 to i64*
  %3190 = load i64, i64* %3189, align 8, !tbaa !25
  %3191 = trunc i64 %3190 to i8
  %3192 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 6
  store i8 %3191, i8* %3192, align 2, !tbaa !14
  %3193 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 15
  %3194 = bitcast i8* %3193 to i64*
  %3195 = load i64, i64* %3194, align 8, !tbaa !25
  %3196 = trunc i64 %3195 to i8
  %3197 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 7
  store i8 %3196, i8* %3197, align 1, !tbaa !14
  %3198 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 16
  %3199 = bitcast i8* %3198 to i64*
  %3200 = load i64, i64* %3199, align 16, !tbaa !25
  %3201 = trunc i64 %3200 to i8
  %3202 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 8
  store i8 %3201, i8* %3202, align 8, !tbaa !14
  %3203 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 17
  %3204 = bitcast i8* %3203 to i64*
  %3205 = load i64, i64* %3204, align 8, !tbaa !25
  %3206 = trunc i64 %3205 to i8
  %3207 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 9
  store i8 %3206, i8* %3207, align 1, !tbaa !14
  %3208 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 18
  %3209 = bitcast i8* %3208 to i64*
  %3210 = load i64, i64* %3209, align 8, !tbaa !25
  %3211 = trunc i64 %3210 to i8
  %3212 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 10
  store i8 %3211, i8* %3212, align 2, !tbaa !14
  %3213 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 19
  %3214 = bitcast i8* %3213 to i64*
  %3215 = load i64, i64* %3214, align 8, !tbaa !25
  %3216 = trunc i64 %3215 to i8
  %3217 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 11
  store i8 %3216, i8* %3217, align 1, !tbaa !14
  %3218 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 20
  %3219 = bitcast i8* %3218 to i64*
  %3220 = load i64, i64* %3219, align 8, !tbaa !25
  %3221 = trunc i64 %3220 to i8
  %3222 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 12
  store i8 %3221, i8* %3222, align 4, !tbaa !14
  %3223 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 21
  %3224 = bitcast i8* %3223 to i64*
  %3225 = load i64, i64* %3224, align 8, !tbaa !25
  %3226 = trunc i64 %3225 to i8
  %3227 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 13
  store i8 %3226, i8* %3227, align 1, !tbaa !14
  %3228 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 22
  %3229 = bitcast i8* %3228 to i64*
  %3230 = load i64, i64* %3229, align 8, !tbaa !25
  %3231 = trunc i64 %3230 to i8
  %3232 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 14
  store i8 %3231, i8* %3232, align 2, !tbaa !14
  %3233 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 23
  %3234 = bitcast i8* %3233 to i64*
  %3235 = load i64, i64* %3234, align 8, !tbaa !25
  %3236 = trunc i64 %3235 to i8
  %3237 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 15
  store i8 %3236, i8* %3237, align 1, !tbaa !14
  %3238 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 24
  %3239 = bitcast i8* %3238 to i64*
  %3240 = load i64, i64* %3239, align 8, !tbaa !25
  %3241 = trunc i64 %3240 to i8
  %3242 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 16
  store i8 %3241, i8* %3242, align 16, !tbaa !14
  %3243 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 25
  %3244 = bitcast i8* %3243 to i64*
  %3245 = load i64, i64* %3244, align 8, !tbaa !25
  %3246 = trunc i64 %3245 to i8
  %3247 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 17
  store i8 %3246, i8* %3247, align 1, !tbaa !14
  %3248 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 26
  %3249 = bitcast i8* %3248 to i64*
  %3250 = load i64, i64* %3249, align 8, !tbaa !25
  %3251 = trunc i64 %3250 to i8
  %3252 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 18
  store i8 %3251, i8* %3252, align 2, !tbaa !14
  %3253 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 27
  %3254 = bitcast i8* %3253 to i64*
  %3255 = load i64, i64* %3254, align 8, !tbaa !25
  %3256 = trunc i64 %3255 to i8
  %3257 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 19
  store i8 %3256, i8* %3257, align 1, !tbaa !14
  %3258 = bitcast [56 x i8]* %4 to i64*
  %3259 = load i64, i64* %3258, align 16, !tbaa !25
  %3260 = trunc i64 %3259 to i8
  %3261 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 20
  store i8 %3260, i8* %3261, align 4, !tbaa !14
  %3262 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 1
  %3263 = bitcast i8* %3262 to i64*
  %3264 = load i64, i64* %3263, align 8, !tbaa !25
  %3265 = trunc i64 %3264 to i8
  %3266 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 21
  store i8 %3265, i8* %3266, align 1, !tbaa !14
  %3267 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 2
  %3268 = bitcast i8* %3267 to i64*
  %3269 = load i64, i64* %3268, align 8, !tbaa !25
  %3270 = trunc i64 %3269 to i8
  %3271 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 22
  store i8 %3270, i8* %3271, align 2, !tbaa !14
  %3272 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 3
  %3273 = bitcast i8* %3272 to i64*
  %3274 = load i64, i64* %3273, align 8, !tbaa !25
  %3275 = trunc i64 %3274 to i8
  %3276 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 23
  store i8 %3275, i8* %3276, align 1, !tbaa !14
  %3277 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 4
  %3278 = bitcast i8* %3277 to i64*
  %3279 = load i64, i64* %3278, align 8, !tbaa !25
  %3280 = trunc i64 %3279 to i8
  %3281 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 24
  store i8 %3280, i8* %3281, align 8, !tbaa !14
  %3282 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 5
  %3283 = bitcast i8* %3282 to i64*
  %3284 = load i64, i64* %3283, align 8, !tbaa !25
  %3285 = trunc i64 %3284 to i8
  %3286 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 25
  store i8 %3285, i8* %3286, align 1, !tbaa !14
  %3287 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 6
  %3288 = bitcast i8* %3287 to i64*
  %3289 = load i64, i64* %3288, align 8, !tbaa !25
  %3290 = trunc i64 %3289 to i8
  %3291 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 26
  store i8 %3290, i8* %3291, align 2, !tbaa !14
  %3292 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 7
  %3293 = bitcast i8* %3292 to i64*
  %3294 = load i64, i64* %3293, align 8, !tbaa !25
  %3295 = trunc i64 %3294 to i8
  %3296 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 27
  store i8 %3295, i8* %3296, align 1, !tbaa !14
  %3297 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 36
  %3298 = bitcast i8* %3297 to i64*
  %3299 = load i64, i64* %3298, align 8, !tbaa !25
  %3300 = trunc i64 %3299 to i8
  %3301 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 28
  store i8 %3300, i8* %3301, align 4, !tbaa !14
  %3302 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 37
  %3303 = bitcast i8* %3302 to i64*
  %3304 = load i64, i64* %3303, align 8, !tbaa !25
  %3305 = trunc i64 %3304 to i8
  %3306 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 29
  store i8 %3305, i8* %3306, align 1, !tbaa !14
  %3307 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 38
  %3308 = bitcast i8* %3307 to i64*
  %3309 = load i64, i64* %3308, align 8, !tbaa !25
  %3310 = trunc i64 %3309 to i8
  %3311 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 30
  store i8 %3310, i8* %3311, align 2, !tbaa !14
  %3312 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 39
  %3313 = bitcast i8* %3312 to i64*
  %3314 = load i64, i64* %3313, align 8, !tbaa !25
  %3315 = trunc i64 %3314 to i8
  %3316 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 31
  store i8 %3315, i8* %3316, align 1, !tbaa !14
  %3317 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 40
  %3318 = bitcast i8* %3317 to i64*
  %3319 = load i64, i64* %3318, align 8, !tbaa !25
  %3320 = trunc i64 %3319 to i8
  %3321 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 32
  store i8 %3320, i8* %3321, align 16, !tbaa !14
  %3322 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 41
  %3323 = bitcast i8* %3322 to i64*
  %3324 = load i64, i64* %3323, align 8, !tbaa !25
  %3325 = trunc i64 %3324 to i8
  %3326 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 33
  store i8 %3325, i8* %3326, align 1, !tbaa !14
  %3327 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 42
  %3328 = bitcast i8* %3327 to i64*
  %3329 = load i64, i64* %3328, align 8, !tbaa !25
  %3330 = trunc i64 %3329 to i8
  %3331 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 34
  store i8 %3330, i8* %3331, align 2, !tbaa !14
  %3332 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 43
  %3333 = bitcast i8* %3332 to i64*
  %3334 = load i64, i64* %3333, align 8, !tbaa !25
  %3335 = trunc i64 %3334 to i8
  %3336 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 35
  store i8 %3335, i8* %3336, align 1, !tbaa !14
  %3337 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 44
  %3338 = bitcast i8* %3337 to i64*
  %3339 = load i64, i64* %3338, align 8, !tbaa !25
  %3340 = trunc i64 %3339 to i8
  %3341 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 36
  store i8 %3340, i8* %3341, align 4, !tbaa !14
  %3342 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 45
  %3343 = bitcast i8* %3342 to i64*
  %3344 = load i64, i64* %3343, align 8, !tbaa !25
  %3345 = trunc i64 %3344 to i8
  %3346 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 37
  store i8 %3345, i8* %3346, align 1, !tbaa !14
  %3347 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 46
  %3348 = bitcast i8* %3347 to i64*
  %3349 = load i64, i64* %3348, align 8, !tbaa !25
  %3350 = trunc i64 %3349 to i8
  %3351 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 38
  store i8 %3350, i8* %3351, align 2, !tbaa !14
  %3352 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 47
  %3353 = bitcast i8* %3352 to i64*
  %3354 = load i64, i64* %3353, align 8, !tbaa !25
  %3355 = trunc i64 %3354 to i8
  %3356 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 39
  store i8 %3355, i8* %3356, align 1, !tbaa !14
  %3357 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 48
  %3358 = bitcast i8* %3357 to i64*
  %3359 = load i64, i64* %3358, align 16, !tbaa !25
  %3360 = trunc i64 %3359 to i8
  %3361 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 40
  store i8 %3360, i8* %3361, align 8, !tbaa !14
  %3362 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 49
  %3363 = bitcast i8* %3362 to i64*
  %3364 = load i64, i64* %3363, align 8, !tbaa !25
  %3365 = trunc i64 %3364 to i8
  %3366 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 41
  store i8 %3365, i8* %3366, align 1, !tbaa !14
  %3367 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 50
  %3368 = bitcast i8* %3367 to i64*
  %3369 = load i64, i64* %3368, align 8, !tbaa !25
  %3370 = trunc i64 %3369 to i8
  %3371 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 42
  store i8 %3370, i8* %3371, align 2, !tbaa !14
  %3372 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 51
  %3373 = bitcast i8* %3372 to i64*
  %3374 = load i64, i64* %3373, align 8, !tbaa !25
  %3375 = trunc i64 %3374 to i8
  %3376 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 43
  store i8 %3375, i8* %3376, align 1, !tbaa !14
  %3377 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 52
  %3378 = bitcast i8* %3377 to i64*
  %3379 = load i64, i64* %3378, align 8, !tbaa !25
  %3380 = trunc i64 %3379 to i8
  %3381 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 44
  store i8 %3380, i8* %3381, align 4, !tbaa !14
  %3382 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 53
  %3383 = bitcast i8* %3382 to i64*
  %3384 = load i64, i64* %3383, align 8, !tbaa !25
  %3385 = trunc i64 %3384 to i8
  %3386 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 45
  store i8 %3385, i8* %3386, align 1, !tbaa !14
  %3387 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 54
  %3388 = bitcast i8* %3387 to i64*
  %3389 = load i64, i64* %3388, align 8, !tbaa !25
  %3390 = trunc i64 %3389 to i8
  %3391 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 46
  store i8 %3390, i8* %3391, align 2, !tbaa !14
  %3392 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 55
  %3393 = bitcast i8* %3392 to i64*
  %3394 = load i64, i64* %3393, align 8, !tbaa !25
  %3395 = trunc i64 %3394 to i8
  %3396 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 47
  store i8 %3395, i8* %3396, align 1, !tbaa !14
  %3397 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 28
  %3398 = bitcast i8* %3397 to i64*
  %3399 = load i64, i64* %3398, align 8, !tbaa !25
  %3400 = trunc i64 %3399 to i8
  %3401 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 48
  store i8 %3400, i8* %3401, align 16, !tbaa !14
  %3402 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 29
  %3403 = bitcast i8* %3402 to i64*
  %3404 = load i64, i64* %3403, align 8, !tbaa !25
  %3405 = trunc i64 %3404 to i8
  %3406 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 49
  store i8 %3405, i8* %3406, align 1, !tbaa !14
  %3407 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 30
  %3408 = bitcast i8* %3407 to i64*
  %3409 = load i64, i64* %3408, align 8, !tbaa !25
  %3410 = trunc i64 %3409 to i8
  %3411 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 50
  store i8 %3410, i8* %3411, align 2, !tbaa !14
  %3412 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 31
  %3413 = bitcast i8* %3412 to i64*
  %3414 = load i64, i64* %3413, align 8, !tbaa !25
  %3415 = trunc i64 %3414 to i8
  %3416 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 51
  store i8 %3415, i8* %3416, align 1, !tbaa !14
  %3417 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 32
  %3418 = bitcast i8* %3417 to i64*
  %3419 = load i64, i64* %3418, align 16, !tbaa !25
  %3420 = trunc i64 %3419 to i8
  %3421 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 52
  store i8 %3420, i8* %3421, align 4, !tbaa !14
  %3422 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 33
  %3423 = bitcast i8* %3422 to i64*
  %3424 = load i64, i64* %3423, align 8, !tbaa !25
  %3425 = trunc i64 %3424 to i8
  %3426 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 53
  store i8 %3425, i8* %3426, align 1, !tbaa !14
  %3427 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 34
  %3428 = bitcast i8* %3427 to i64*
  %3429 = load i64, i64* %3428, align 8, !tbaa !25
  %3430 = trunc i64 %3429 to i8
  %3431 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 54
  store i8 %3430, i8* %3431, align 2, !tbaa !14
  %3432 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 35
  %3433 = bitcast i8* %3432 to i64*
  %3434 = load i64, i64* %3433, align 8, !tbaa !25
  %3435 = trunc i64 %3434 to i8
  %3436 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 55
  store i8 %3435, i8* %3436, align 1, !tbaa !14
  %3437 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 13
  %3438 = bitcast i8* %3437 to i64*
  %3439 = load i64, i64* %3438, align 8, !tbaa !25
  %3440 = trunc i64 %3439 to i8
  %3441 = icmp eq i8 %3440, 0
  %3442 = bitcast i32* %3157 to i64*
  %3443 = load volatile i64, i64* %3442, align 16, !tbaa !25
  %3444 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %3445 = select i1 %3441, i64 0, i64 %3444
  %3446 = or i64 %3443, %3445
  %3447 = trunc i64 %3446 to i32
  store volatile i32 %3447, i32* %3157, align 16, !tbaa !35
  %3448 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 40
  %3449 = bitcast i8* %3448 to i64*
  %3450 = load i64, i64* %3449, align 8, !tbaa !25
  %3451 = trunc i64 %3450 to i8
  %3452 = icmp eq i8 %3451, 0
  %3453 = bitcast i32* %3158 to i64*
  %3454 = load volatile i64, i64* %3453, align 4, !tbaa !25
  %3455 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %3456 = select i1 %3452, i64 0, i64 %3455
  %3457 = or i64 %3454, %3456
  %3458 = trunc i64 %3457 to i32
  store volatile i32 %3458, i32* %3158, align 4, !tbaa !35
  %3459 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 16
  %3460 = bitcast i8* %3459 to i64*
  %3461 = load i64, i64* %3460, align 16, !tbaa !25
  %3462 = trunc i64 %3461 to i8
  %3463 = icmp eq i8 %3462, 0
  %3464 = bitcast i32* %3157 to i64*
  %3465 = load volatile i64, i64* %3464, align 16, !tbaa !25
  %3466 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %3467 = select i1 %3463, i64 0, i64 %3466
  %3468 = or i64 %3465, %3467
  %3469 = trunc i64 %3468 to i32
  store volatile i32 %3469, i32* %3157, align 16, !tbaa !35
  %3470 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 51
  %3471 = bitcast i8* %3470 to i64*
  %3472 = load i64, i64* %3471, align 8, !tbaa !25
  %3473 = trunc i64 %3472 to i8
  %3474 = icmp eq i8 %3473, 0
  %3475 = bitcast i32* %3158 to i64*
  %3476 = load volatile i64, i64* %3475, align 4, !tbaa !25
  %3477 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %3478 = select i1 %3474, i64 0, i64 %3477
  %3479 = or i64 %3476, %3478
  %3480 = trunc i64 %3479 to i32
  store volatile i32 %3480, i32* %3158, align 4, !tbaa !35
  %3481 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 10
  %3482 = bitcast i8* %3481 to i64*
  %3483 = load i64, i64* %3482, align 8, !tbaa !25
  %3484 = trunc i64 %3483 to i8
  %3485 = icmp eq i8 %3484, 0
  %3486 = bitcast i32* %3157 to i64*
  %3487 = load volatile i64, i64* %3486, align 16, !tbaa !25
  %3488 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %3489 = select i1 %3485, i64 0, i64 %3488
  %3490 = or i64 %3487, %3489
  %3491 = trunc i64 %3490 to i32
  store volatile i32 %3491, i32* %3157, align 16, !tbaa !35
  %3492 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 30
  %3493 = bitcast i8* %3492 to i64*
  %3494 = load i64, i64* %3493, align 8, !tbaa !25
  %3495 = trunc i64 %3494 to i8
  %3496 = icmp eq i8 %3495, 0
  %3497 = bitcast i32* %3158 to i64*
  %3498 = load volatile i64, i64* %3497, align 4, !tbaa !25
  %3499 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %3500 = select i1 %3496, i64 0, i64 %3499
  %3501 = or i64 %3498, %3500
  %3502 = trunc i64 %3501 to i32
  store volatile i32 %3502, i32* %3158, align 4, !tbaa !35
  %3503 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 23
  %3504 = bitcast i8* %3503 to i64*
  %3505 = load i64, i64* %3504, align 8, !tbaa !25
  %3506 = trunc i64 %3505 to i8
  %3507 = icmp eq i8 %3506, 0
  %3508 = bitcast i32* %3157 to i64*
  %3509 = load volatile i64, i64* %3508, align 16, !tbaa !25
  %3510 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %3511 = select i1 %3507, i64 0, i64 %3510
  %3512 = or i64 %3509, %3511
  %3513 = trunc i64 %3512 to i32
  store volatile i32 %3513, i32* %3157, align 16, !tbaa !35
  %3514 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 36
  %3515 = bitcast i8* %3514 to i64*
  %3516 = load i64, i64* %3515, align 8, !tbaa !25
  %3517 = trunc i64 %3516 to i8
  %3518 = icmp eq i8 %3517, 0
  %3519 = bitcast i32* %3158 to i64*
  %3520 = load volatile i64, i64* %3519, align 4, !tbaa !25
  %3521 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %3522 = select i1 %3518, i64 0, i64 %3521
  %3523 = or i64 %3520, %3522
  %3524 = trunc i64 %3523 to i32
  store volatile i32 %3524, i32* %3158, align 4, !tbaa !35
  %3525 = bitcast [56 x i8]* %3 to i64*
  %3526 = load i64, i64* %3525, align 16, !tbaa !25
  %3527 = trunc i64 %3526 to i8
  %3528 = icmp eq i8 %3527, 0
  %3529 = bitcast i32* %3157 to i64*
  %3530 = load volatile i64, i64* %3529, align 16, !tbaa !25
  %3531 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %3532 = select i1 %3528, i64 0, i64 %3531
  %3533 = or i64 %3530, %3532
  %3534 = trunc i64 %3533 to i32
  store volatile i32 %3534, i32* %3157, align 16, !tbaa !35
  %3535 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 46
  %3536 = bitcast i8* %3535 to i64*
  %3537 = load i64, i64* %3536, align 8, !tbaa !25
  %3538 = trunc i64 %3537 to i8
  %3539 = icmp eq i8 %3538, 0
  %3540 = bitcast i32* %3158 to i64*
  %3541 = load volatile i64, i64* %3540, align 4, !tbaa !25
  %3542 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %3543 = select i1 %3539, i64 0, i64 %3542
  %3544 = or i64 %3541, %3543
  %3545 = trunc i64 %3544 to i32
  store volatile i32 %3545, i32* %3158, align 4, !tbaa !35
  %3546 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 4
  %3547 = bitcast i8* %3546 to i64*
  %3548 = load i64, i64* %3547, align 8, !tbaa !25
  %3549 = trunc i64 %3548 to i8
  %3550 = icmp eq i8 %3549, 0
  %3551 = bitcast i32* %3157 to i64*
  %3552 = load volatile i64, i64* %3551, align 16, !tbaa !25
  %3553 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %3554 = select i1 %3550, i64 0, i64 %3553
  %3555 = or i64 %3552, %3554
  %3556 = trunc i64 %3555 to i32
  store volatile i32 %3556, i32* %3157, align 16, !tbaa !35
  %3557 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 54
  %3558 = bitcast i8* %3557 to i64*
  %3559 = load i64, i64* %3558, align 8, !tbaa !25
  %3560 = trunc i64 %3559 to i8
  %3561 = icmp eq i8 %3560, 0
  %3562 = bitcast i32* %3158 to i64*
  %3563 = load volatile i64, i64* %3562, align 4, !tbaa !25
  %3564 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %3565 = select i1 %3561, i64 0, i64 %3564
  %3566 = or i64 %3563, %3565
  %3567 = trunc i64 %3566 to i32
  store volatile i32 %3567, i32* %3158, align 4, !tbaa !35
  %3568 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 2
  %3569 = bitcast i8* %3568 to i64*
  %3570 = load i64, i64* %3569, align 8, !tbaa !25
  %3571 = trunc i64 %3570 to i8
  %3572 = icmp eq i8 %3571, 0
  %3573 = bitcast i32* %3157 to i64*
  %3574 = load volatile i64, i64* %3573, align 16, !tbaa !25
  %3575 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %3576 = select i1 %3572, i64 0, i64 %3575
  %3577 = or i64 %3574, %3576
  %3578 = trunc i64 %3577 to i32
  store volatile i32 %3578, i32* %3157, align 16, !tbaa !35
  %3579 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 29
  %3580 = bitcast i8* %3579 to i64*
  %3581 = load i64, i64* %3580, align 8, !tbaa !25
  %3582 = trunc i64 %3581 to i8
  %3583 = icmp eq i8 %3582, 0
  %3584 = bitcast i32* %3158 to i64*
  %3585 = load volatile i64, i64* %3584, align 4, !tbaa !25
  %3586 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %3587 = select i1 %3583, i64 0, i64 %3586
  %3588 = or i64 %3585, %3587
  %3589 = trunc i64 %3588 to i32
  store volatile i32 %3589, i32* %3158, align 4, !tbaa !35
  %3590 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 27
  %3591 = bitcast i8* %3590 to i64*
  %3592 = load i64, i64* %3591, align 8, !tbaa !25
  %3593 = trunc i64 %3592 to i8
  %3594 = icmp eq i8 %3593, 0
  %3595 = bitcast i32* %3157 to i64*
  %3596 = load volatile i64, i64* %3595, align 16, !tbaa !25
  %3597 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %3598 = select i1 %3594, i64 0, i64 %3597
  %3599 = or i64 %3596, %3598
  %3600 = trunc i64 %3599 to i32
  store volatile i32 %3600, i32* %3157, align 16, !tbaa !35
  %3601 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 39
  %3602 = bitcast i8* %3601 to i64*
  %3603 = load i64, i64* %3602, align 8, !tbaa !25
  %3604 = trunc i64 %3603 to i8
  %3605 = icmp eq i8 %3604, 0
  %3606 = bitcast i32* %3158 to i64*
  %3607 = load volatile i64, i64* %3606, align 4, !tbaa !25
  %3608 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %3609 = select i1 %3605, i64 0, i64 %3608
  %3610 = or i64 %3607, %3609
  %3611 = trunc i64 %3610 to i32
  store volatile i32 %3611, i32* %3158, align 4, !tbaa !35
  %3612 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 14
  %3613 = bitcast i8* %3612 to i64*
  %3614 = load i64, i64* %3613, align 8, !tbaa !25
  %3615 = trunc i64 %3614 to i8
  %3616 = icmp eq i8 %3615, 0
  %3617 = bitcast i32* %3157 to i64*
  %3618 = load volatile i64, i64* %3617, align 16, !tbaa !25
  %3619 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %3620 = select i1 %3616, i64 0, i64 %3619
  %3621 = or i64 %3618, %3620
  %3622 = trunc i64 %3621 to i32
  store volatile i32 %3622, i32* %3157, align 16, !tbaa !35
  %3623 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 50
  %3624 = bitcast i8* %3623 to i64*
  %3625 = load i64, i64* %3624, align 8, !tbaa !25
  %3626 = trunc i64 %3625 to i8
  %3627 = icmp eq i8 %3626, 0
  %3628 = bitcast i32* %3158 to i64*
  %3629 = load volatile i64, i64* %3628, align 4, !tbaa !25
  %3630 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %3631 = select i1 %3627, i64 0, i64 %3630
  %3632 = or i64 %3629, %3631
  %3633 = trunc i64 %3632 to i32
  store volatile i32 %3633, i32* %3158, align 4, !tbaa !35
  %3634 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 5
  %3635 = bitcast i8* %3634 to i64*
  %3636 = load i64, i64* %3635, align 8, !tbaa !25
  %3637 = trunc i64 %3636 to i8
  %3638 = icmp eq i8 %3637, 0
  %3639 = bitcast i32* %3157 to i64*
  %3640 = load volatile i64, i64* %3639, align 16, !tbaa !25
  %3641 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %3642 = select i1 %3638, i64 0, i64 %3641
  %3643 = or i64 %3640, %3642
  %3644 = trunc i64 %3643 to i32
  store volatile i32 %3644, i32* %3157, align 16, !tbaa !35
  %3645 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 44
  %3646 = bitcast i8* %3645 to i64*
  %3647 = load i64, i64* %3646, align 8, !tbaa !25
  %3648 = trunc i64 %3647 to i8
  %3649 = icmp eq i8 %3648, 0
  %3650 = bitcast i32* %3158 to i64*
  %3651 = load volatile i64, i64* %3650, align 4, !tbaa !25
  %3652 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %3653 = select i1 %3649, i64 0, i64 %3652
  %3654 = or i64 %3651, %3653
  %3655 = trunc i64 %3654 to i32
  store volatile i32 %3655, i32* %3158, align 4, !tbaa !35
  %3656 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 20
  %3657 = bitcast i8* %3656 to i64*
  %3658 = load i64, i64* %3657, align 8, !tbaa !25
  %3659 = trunc i64 %3658 to i8
  %3660 = icmp eq i8 %3659, 0
  %3661 = bitcast i32* %3157 to i64*
  %3662 = load volatile i64, i64* %3661, align 16, !tbaa !25
  %3663 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %3664 = select i1 %3660, i64 0, i64 %3663
  %3665 = or i64 %3662, %3664
  %3666 = trunc i64 %3665 to i32
  store volatile i32 %3666, i32* %3157, align 16, !tbaa !35
  %3667 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 32
  %3668 = bitcast i8* %3667 to i64*
  %3669 = load i64, i64* %3668, align 16, !tbaa !25
  %3670 = trunc i64 %3669 to i8
  %3671 = icmp eq i8 %3670, 0
  %3672 = bitcast i32* %3158 to i64*
  %3673 = load volatile i64, i64* %3672, align 4, !tbaa !25
  %3674 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %3675 = select i1 %3671, i64 0, i64 %3674
  %3676 = or i64 %3673, %3675
  %3677 = trunc i64 %3676 to i32
  store volatile i32 %3677, i32* %3158, align 4, !tbaa !35
  %3678 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 9
  %3679 = bitcast i8* %3678 to i64*
  %3680 = load i64, i64* %3679, align 8, !tbaa !25
  %3681 = trunc i64 %3680 to i8
  %3682 = icmp eq i8 %3681, 0
  %3683 = bitcast i32* %3157 to i64*
  %3684 = load volatile i64, i64* %3683, align 16, !tbaa !25
  %3685 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %3686 = select i1 %3682, i64 0, i64 %3685
  %3687 = or i64 %3684, %3686
  %3688 = trunc i64 %3687 to i32
  store volatile i32 %3688, i32* %3157, align 16, !tbaa !35
  %3689 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 47
  %3690 = bitcast i8* %3689 to i64*
  %3691 = load i64, i64* %3690, align 8, !tbaa !25
  %3692 = trunc i64 %3691 to i8
  %3693 = icmp eq i8 %3692, 0
  %3694 = bitcast i32* %3158 to i64*
  %3695 = load volatile i64, i64* %3694, align 4, !tbaa !25
  %3696 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %3697 = select i1 %3693, i64 0, i64 %3696
  %3698 = or i64 %3695, %3697
  %3699 = trunc i64 %3698 to i32
  store volatile i32 %3699, i32* %3158, align 4, !tbaa !35
  %3700 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 22
  %3701 = bitcast i8* %3700 to i64*
  %3702 = load i64, i64* %3701, align 8, !tbaa !25
  %3703 = trunc i64 %3702 to i8
  %3704 = icmp eq i8 %3703, 0
  %3705 = bitcast i32* %3157 to i64*
  %3706 = load volatile i64, i64* %3705, align 16, !tbaa !25
  %3707 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %3708 = select i1 %3704, i64 0, i64 %3707
  %3709 = or i64 %3706, %3708
  %3710 = trunc i64 %3709 to i32
  store volatile i32 %3710, i32* %3157, align 16, !tbaa !35
  %3711 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 43
  %3712 = bitcast i8* %3711 to i64*
  %3713 = load i64, i64* %3712, align 8, !tbaa !25
  %3714 = trunc i64 %3713 to i8
  %3715 = icmp eq i8 %3714, 0
  %3716 = bitcast i32* %3158 to i64*
  %3717 = load volatile i64, i64* %3716, align 4, !tbaa !25
  %3718 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %3719 = select i1 %3715, i64 0, i64 %3718
  %3720 = or i64 %3717, %3719
  %3721 = trunc i64 %3720 to i32
  store volatile i32 %3721, i32* %3158, align 4, !tbaa !35
  %3722 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 18
  %3723 = bitcast i8* %3722 to i64*
  %3724 = load i64, i64* %3723, align 8, !tbaa !25
  %3725 = trunc i64 %3724 to i8
  %3726 = icmp eq i8 %3725, 0
  %3727 = bitcast i32* %3157 to i64*
  %3728 = load volatile i64, i64* %3727, align 16, !tbaa !25
  %3729 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %3730 = select i1 %3726, i64 0, i64 %3729
  %3731 = or i64 %3728, %3730
  %3732 = trunc i64 %3731 to i32
  store volatile i32 %3732, i32* %3157, align 16, !tbaa !35
  %3733 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 48
  %3734 = bitcast i8* %3733 to i64*
  %3735 = load i64, i64* %3734, align 16, !tbaa !25
  %3736 = trunc i64 %3735 to i8
  %3737 = icmp eq i8 %3736, 0
  %3738 = bitcast i32* %3158 to i64*
  %3739 = load volatile i64, i64* %3738, align 4, !tbaa !25
  %3740 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %3741 = select i1 %3737, i64 0, i64 %3740
  %3742 = or i64 %3739, %3741
  %3743 = trunc i64 %3742 to i32
  store volatile i32 %3743, i32* %3158, align 4, !tbaa !35
  %3744 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 11
  %3745 = bitcast i8* %3744 to i64*
  %3746 = load i64, i64* %3745, align 8, !tbaa !25
  %3747 = trunc i64 %3746 to i8
  %3748 = icmp eq i8 %3747, 0
  %3749 = bitcast i32* %3157 to i64*
  %3750 = load volatile i64, i64* %3749, align 16, !tbaa !25
  %3751 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %3752 = select i1 %3748, i64 0, i64 %3751
  %3753 = or i64 %3750, %3752
  %3754 = trunc i64 %3753 to i32
  store volatile i32 %3754, i32* %3157, align 16, !tbaa !35
  %3755 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 38
  %3756 = bitcast i8* %3755 to i64*
  %3757 = load i64, i64* %3756, align 8, !tbaa !25
  %3758 = trunc i64 %3757 to i8
  %3759 = icmp eq i8 %3758, 0
  %3760 = bitcast i32* %3158 to i64*
  %3761 = load volatile i64, i64* %3760, align 4, !tbaa !25
  %3762 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %3763 = select i1 %3759, i64 0, i64 %3762
  %3764 = or i64 %3761, %3763
  %3765 = trunc i64 %3764 to i32
  store volatile i32 %3765, i32* %3158, align 4, !tbaa !35
  %3766 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 3
  %3767 = bitcast i8* %3766 to i64*
  %3768 = load i64, i64* %3767, align 8, !tbaa !25
  %3769 = trunc i64 %3768 to i8
  %3770 = icmp eq i8 %3769, 0
  %3771 = bitcast i32* %3157 to i64*
  %3772 = load volatile i64, i64* %3771, align 16, !tbaa !25
  %3773 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %3774 = select i1 %3770, i64 0, i64 %3773
  %3775 = or i64 %3772, %3774
  %3776 = trunc i64 %3775 to i32
  store volatile i32 %3776, i32* %3157, align 16, !tbaa !35
  %3777 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 55
  %3778 = bitcast i8* %3777 to i64*
  %3779 = load i64, i64* %3778, align 8, !tbaa !25
  %3780 = trunc i64 %3779 to i8
  %3781 = icmp eq i8 %3780, 0
  %3782 = bitcast i32* %3158 to i64*
  %3783 = load volatile i64, i64* %3782, align 4, !tbaa !25
  %3784 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %3785 = select i1 %3781, i64 0, i64 %3784
  %3786 = or i64 %3783, %3785
  %3787 = trunc i64 %3786 to i32
  store volatile i32 %3787, i32* %3158, align 4, !tbaa !35
  %3788 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 25
  %3789 = bitcast i8* %3788 to i64*
  %3790 = load i64, i64* %3789, align 8, !tbaa !25
  %3791 = trunc i64 %3790 to i8
  %3792 = icmp eq i8 %3791, 0
  %3793 = bitcast i32* %3157 to i64*
  %3794 = load volatile i64, i64* %3793, align 16, !tbaa !25
  %3795 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %3796 = select i1 %3792, i64 0, i64 %3795
  %3797 = or i64 %3794, %3796
  %3798 = trunc i64 %3797 to i32
  store volatile i32 %3798, i32* %3157, align 16, !tbaa !35
  %3799 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 33
  %3800 = bitcast i8* %3799 to i64*
  %3801 = load i64, i64* %3800, align 8, !tbaa !25
  %3802 = trunc i64 %3801 to i8
  %3803 = icmp eq i8 %3802, 0
  %3804 = bitcast i32* %3158 to i64*
  %3805 = load volatile i64, i64* %3804, align 4, !tbaa !25
  %3806 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %3807 = select i1 %3803, i64 0, i64 %3806
  %3808 = or i64 %3805, %3807
  %3809 = trunc i64 %3808 to i32
  store volatile i32 %3809, i32* %3158, align 4, !tbaa !35
  %3810 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 7
  %3811 = bitcast i8* %3810 to i64*
  %3812 = load i64, i64* %3811, align 8, !tbaa !25
  %3813 = trunc i64 %3812 to i8
  %3814 = icmp eq i8 %3813, 0
  %3815 = bitcast i32* %3157 to i64*
  %3816 = load volatile i64, i64* %3815, align 16, !tbaa !25
  %3817 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %3818 = select i1 %3814, i64 0, i64 %3817
  %3819 = or i64 %3816, %3818
  %3820 = trunc i64 %3819 to i32
  store volatile i32 %3820, i32* %3157, align 16, !tbaa !35
  %3821 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 52
  %3822 = bitcast i8* %3821 to i64*
  %3823 = load i64, i64* %3822, align 8, !tbaa !25
  %3824 = trunc i64 %3823 to i8
  %3825 = icmp eq i8 %3824, 0
  %3826 = bitcast i32* %3158 to i64*
  %3827 = load volatile i64, i64* %3826, align 4, !tbaa !25
  %3828 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %3829 = select i1 %3825, i64 0, i64 %3828
  %3830 = or i64 %3827, %3829
  %3831 = trunc i64 %3830 to i32
  store volatile i32 %3831, i32* %3158, align 4, !tbaa !35
  %3832 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 15
  %3833 = bitcast i8* %3832 to i64*
  %3834 = load i64, i64* %3833, align 8, !tbaa !25
  %3835 = trunc i64 %3834 to i8
  %3836 = icmp eq i8 %3835, 0
  %3837 = bitcast i32* %3157 to i64*
  %3838 = load volatile i64, i64* %3837, align 16, !tbaa !25
  %3839 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %3840 = select i1 %3836, i64 0, i64 %3839
  %3841 = or i64 %3838, %3840
  %3842 = trunc i64 %3841 to i32
  store volatile i32 %3842, i32* %3157, align 16, !tbaa !35
  %3843 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 45
  %3844 = bitcast i8* %3843 to i64*
  %3845 = load i64, i64* %3844, align 8, !tbaa !25
  %3846 = trunc i64 %3845 to i8
  %3847 = icmp eq i8 %3846, 0
  %3848 = bitcast i32* %3158 to i64*
  %3849 = load volatile i64, i64* %3848, align 4, !tbaa !25
  %3850 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %3851 = select i1 %3847, i64 0, i64 %3850
  %3852 = or i64 %3849, %3851
  %3853 = trunc i64 %3852 to i32
  store volatile i32 %3853, i32* %3158, align 4, !tbaa !35
  %3854 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 6
  %3855 = bitcast i8* %3854 to i64*
  %3856 = load i64, i64* %3855, align 8, !tbaa !25
  %3857 = trunc i64 %3856 to i8
  %3858 = icmp eq i8 %3857, 0
  %3859 = bitcast i32* %3157 to i64*
  %3860 = load volatile i64, i64* %3859, align 16, !tbaa !25
  %3861 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %3862 = select i1 %3858, i64 0, i64 %3861
  %3863 = or i64 %3860, %3862
  %3864 = trunc i64 %3863 to i32
  store volatile i32 %3864, i32* %3157, align 16, !tbaa !35
  %3865 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 41
  %3866 = bitcast i8* %3865 to i64*
  %3867 = load i64, i64* %3866, align 8, !tbaa !25
  %3868 = trunc i64 %3867 to i8
  %3869 = icmp eq i8 %3868, 0
  %3870 = bitcast i32* %3158 to i64*
  %3871 = load volatile i64, i64* %3870, align 4, !tbaa !25
  %3872 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %3873 = select i1 %3869, i64 0, i64 %3872
  %3874 = or i64 %3871, %3873
  %3875 = trunc i64 %3874 to i32
  store volatile i32 %3875, i32* %3158, align 4, !tbaa !35
  %3876 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 26
  %3877 = bitcast i8* %3876 to i64*
  %3878 = load i64, i64* %3877, align 8, !tbaa !25
  %3879 = trunc i64 %3878 to i8
  %3880 = icmp eq i8 %3879, 0
  %3881 = bitcast i32* %3157 to i64*
  %3882 = load volatile i64, i64* %3881, align 16, !tbaa !25
  %3883 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %3884 = select i1 %3880, i64 0, i64 %3883
  %3885 = or i64 %3882, %3884
  %3886 = trunc i64 %3885 to i32
  store volatile i32 %3886, i32* %3157, align 16, !tbaa !35
  %3887 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 49
  %3888 = bitcast i8* %3887 to i64*
  %3889 = load i64, i64* %3888, align 8, !tbaa !25
  %3890 = trunc i64 %3889 to i8
  %3891 = icmp eq i8 %3890, 0
  %3892 = bitcast i32* %3158 to i64*
  %3893 = load volatile i64, i64* %3892, align 4, !tbaa !25
  %3894 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %3895 = select i1 %3891, i64 0, i64 %3894
  %3896 = or i64 %3893, %3895
  %3897 = trunc i64 %3896 to i32
  store volatile i32 %3897, i32* %3158, align 4, !tbaa !35
  %3898 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 19
  %3899 = bitcast i8* %3898 to i64*
  %3900 = load i64, i64* %3899, align 8, !tbaa !25
  %3901 = trunc i64 %3900 to i8
  %3902 = icmp eq i8 %3901, 0
  %3903 = bitcast i32* %3157 to i64*
  %3904 = load volatile i64, i64* %3903, align 16, !tbaa !25
  %3905 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %3906 = select i1 %3902, i64 0, i64 %3905
  %3907 = or i64 %3904, %3906
  %3908 = trunc i64 %3907 to i32
  store volatile i32 %3908, i32* %3157, align 16, !tbaa !35
  %3909 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 35
  %3910 = bitcast i8* %3909 to i64*
  %3911 = load i64, i64* %3910, align 8, !tbaa !25
  %3912 = trunc i64 %3911 to i8
  %3913 = icmp eq i8 %3912, 0
  %3914 = bitcast i32* %3158 to i64*
  %3915 = load volatile i64, i64* %3914, align 4, !tbaa !25
  %3916 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %3917 = select i1 %3913, i64 0, i64 %3916
  %3918 = or i64 %3915, %3917
  %3919 = trunc i64 %3918 to i32
  store volatile i32 %3919, i32* %3158, align 4, !tbaa !35
  %3920 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 12
  %3921 = bitcast i8* %3920 to i64*
  %3922 = load i64, i64* %3921, align 8, !tbaa !25
  %3923 = trunc i64 %3922 to i8
  %3924 = icmp eq i8 %3923, 0
  %3925 = bitcast i32* %3157 to i64*
  %3926 = load volatile i64, i64* %3925, align 16, !tbaa !25
  %3927 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %3928 = select i1 %3924, i64 0, i64 %3927
  %3929 = or i64 %3926, %3928
  %3930 = trunc i64 %3929 to i32
  store volatile i32 %3930, i32* %3157, align 16, !tbaa !35
  %3931 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 28
  %3932 = bitcast i8* %3931 to i64*
  %3933 = load i64, i64* %3932, align 8, !tbaa !25
  %3934 = trunc i64 %3933 to i8
  %3935 = icmp eq i8 %3934, 0
  %3936 = bitcast i32* %3158 to i64*
  %3937 = load volatile i64, i64* %3936, align 4, !tbaa !25
  %3938 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %3939 = select i1 %3935, i64 0, i64 %3938
  %3940 = or i64 %3937, %3939
  %3941 = trunc i64 %3940 to i32
  store volatile i32 %3941, i32* %3158, align 4, !tbaa !35
  %3942 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 1
  %3943 = bitcast i8* %3942 to i64*
  %3944 = load i64, i64* %3943, align 8, !tbaa !25
  %3945 = trunc i64 %3944 to i8
  %3946 = icmp eq i8 %3945, 0
  %3947 = bitcast i32* %3157 to i64*
  %3948 = load volatile i64, i64* %3947, align 16, !tbaa !25
  %3949 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %3950 = select i1 %3946, i64 0, i64 %3949
  %3951 = or i64 %3948, %3950
  %3952 = trunc i64 %3951 to i32
  store volatile i32 %3952, i32* %3157, align 16, !tbaa !35
  %3953 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 31
  %3954 = bitcast i8* %3953 to i64*
  %3955 = load i64, i64* %3954, align 8, !tbaa !25
  %3956 = trunc i64 %3955 to i8
  %3957 = icmp eq i8 %3956, 0
  %3958 = bitcast i32* %3158 to i64*
  %3959 = load volatile i64, i64* %3958, align 4, !tbaa !25
  %3960 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %3961 = select i1 %3957, i64 0, i64 %3960
  %3962 = or i64 %3959, %3961
  %3963 = trunc i64 %3962 to i32
  store volatile i32 %3963, i32* %3158, align 4, !tbaa !35
  %3964 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 10
  store i32 0, i32* %3964, align 8, !tbaa !35
  %3965 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 11
  store i32 0, i32* %3965, align 4, !tbaa !35
  %3966 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 10
  %3967 = bitcast i8* %3966 to i64*
  %3968 = load i64, i64* %3967, align 8, !tbaa !25
  %3969 = trunc i64 %3968 to i8
  store i8 %3969, i8* %8, align 16, !tbaa !14
  %3970 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 11
  %3971 = bitcast i8* %3970 to i64*
  %3972 = load i64, i64* %3971, align 8, !tbaa !25
  %3973 = trunc i64 %3972 to i8
  %3974 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 1
  store i8 %3973, i8* %3974, align 1, !tbaa !14
  %3975 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 12
  %3976 = bitcast i8* %3975 to i64*
  %3977 = load i64, i64* %3976, align 8, !tbaa !25
  %3978 = trunc i64 %3977 to i8
  %3979 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 2
  store i8 %3978, i8* %3979, align 2, !tbaa !14
  %3980 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 13
  %3981 = bitcast i8* %3980 to i64*
  %3982 = load i64, i64* %3981, align 8, !tbaa !25
  %3983 = trunc i64 %3982 to i8
  %3984 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 3
  store i8 %3983, i8* %3984, align 1, !tbaa !14
  %3985 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 14
  %3986 = bitcast i8* %3985 to i64*
  %3987 = load i64, i64* %3986, align 8, !tbaa !25
  %3988 = trunc i64 %3987 to i8
  %3989 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 4
  store i8 %3988, i8* %3989, align 4, !tbaa !14
  %3990 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 15
  %3991 = bitcast i8* %3990 to i64*
  %3992 = load i64, i64* %3991, align 8, !tbaa !25
  %3993 = trunc i64 %3992 to i8
  %3994 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 5
  store i8 %3993, i8* %3994, align 1, !tbaa !14
  %3995 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 16
  %3996 = bitcast i8* %3995 to i64*
  %3997 = load i64, i64* %3996, align 16, !tbaa !25
  %3998 = trunc i64 %3997 to i8
  %3999 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 6
  store i8 %3998, i8* %3999, align 2, !tbaa !14
  %4000 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 17
  %4001 = bitcast i8* %4000 to i64*
  %4002 = load i64, i64* %4001, align 8, !tbaa !25
  %4003 = trunc i64 %4002 to i8
  %4004 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 7
  store i8 %4003, i8* %4004, align 1, !tbaa !14
  %4005 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 18
  %4006 = bitcast i8* %4005 to i64*
  %4007 = load i64, i64* %4006, align 8, !tbaa !25
  %4008 = trunc i64 %4007 to i8
  %4009 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 8
  store i8 %4008, i8* %4009, align 8, !tbaa !14
  %4010 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 19
  %4011 = bitcast i8* %4010 to i64*
  %4012 = load i64, i64* %4011, align 8, !tbaa !25
  %4013 = trunc i64 %4012 to i8
  %4014 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 9
  store i8 %4013, i8* %4014, align 1, !tbaa !14
  %4015 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 20
  %4016 = bitcast i8* %4015 to i64*
  %4017 = load i64, i64* %4016, align 8, !tbaa !25
  %4018 = trunc i64 %4017 to i8
  %4019 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 10
  store i8 %4018, i8* %4019, align 2, !tbaa !14
  %4020 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 21
  %4021 = bitcast i8* %4020 to i64*
  %4022 = load i64, i64* %4021, align 8, !tbaa !25
  %4023 = trunc i64 %4022 to i8
  %4024 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 11
  store i8 %4023, i8* %4024, align 1, !tbaa !14
  %4025 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 22
  %4026 = bitcast i8* %4025 to i64*
  %4027 = load i64, i64* %4026, align 8, !tbaa !25
  %4028 = trunc i64 %4027 to i8
  %4029 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 12
  store i8 %4028, i8* %4029, align 4, !tbaa !14
  %4030 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 23
  %4031 = bitcast i8* %4030 to i64*
  %4032 = load i64, i64* %4031, align 8, !tbaa !25
  %4033 = trunc i64 %4032 to i8
  %4034 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 13
  store i8 %4033, i8* %4034, align 1, !tbaa !14
  %4035 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 24
  %4036 = bitcast i8* %4035 to i64*
  %4037 = load i64, i64* %4036, align 8, !tbaa !25
  %4038 = trunc i64 %4037 to i8
  %4039 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 14
  store i8 %4038, i8* %4039, align 2, !tbaa !14
  %4040 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 25
  %4041 = bitcast i8* %4040 to i64*
  %4042 = load i64, i64* %4041, align 8, !tbaa !25
  %4043 = trunc i64 %4042 to i8
  %4044 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 15
  store i8 %4043, i8* %4044, align 1, !tbaa !14
  %4045 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 26
  %4046 = bitcast i8* %4045 to i64*
  %4047 = load i64, i64* %4046, align 8, !tbaa !25
  %4048 = trunc i64 %4047 to i8
  %4049 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 16
  store i8 %4048, i8* %4049, align 16, !tbaa !14
  %4050 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 27
  %4051 = bitcast i8* %4050 to i64*
  %4052 = load i64, i64* %4051, align 8, !tbaa !25
  %4053 = trunc i64 %4052 to i8
  %4054 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 17
  store i8 %4053, i8* %4054, align 1, !tbaa !14
  %4055 = bitcast [56 x i8]* %4 to i64*
  %4056 = load i64, i64* %4055, align 16, !tbaa !25
  %4057 = trunc i64 %4056 to i8
  %4058 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 18
  store i8 %4057, i8* %4058, align 2, !tbaa !14
  %4059 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 1
  %4060 = bitcast i8* %4059 to i64*
  %4061 = load i64, i64* %4060, align 8, !tbaa !25
  %4062 = trunc i64 %4061 to i8
  %4063 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 19
  store i8 %4062, i8* %4063, align 1, !tbaa !14
  %4064 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 2
  %4065 = bitcast i8* %4064 to i64*
  %4066 = load i64, i64* %4065, align 8, !tbaa !25
  %4067 = trunc i64 %4066 to i8
  %4068 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 20
  store i8 %4067, i8* %4068, align 4, !tbaa !14
  %4069 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 3
  %4070 = bitcast i8* %4069 to i64*
  %4071 = load i64, i64* %4070, align 8, !tbaa !25
  %4072 = trunc i64 %4071 to i8
  %4073 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 21
  store i8 %4072, i8* %4073, align 1, !tbaa !14
  %4074 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 4
  %4075 = bitcast i8* %4074 to i64*
  %4076 = load i64, i64* %4075, align 8, !tbaa !25
  %4077 = trunc i64 %4076 to i8
  %4078 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 22
  store i8 %4077, i8* %4078, align 2, !tbaa !14
  %4079 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 5
  %4080 = bitcast i8* %4079 to i64*
  %4081 = load i64, i64* %4080, align 8, !tbaa !25
  %4082 = trunc i64 %4081 to i8
  %4083 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 23
  store i8 %4082, i8* %4083, align 1, !tbaa !14
  %4084 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 6
  %4085 = bitcast i8* %4084 to i64*
  %4086 = load i64, i64* %4085, align 8, !tbaa !25
  %4087 = trunc i64 %4086 to i8
  %4088 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 24
  store i8 %4087, i8* %4088, align 8, !tbaa !14
  %4089 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 7
  %4090 = bitcast i8* %4089 to i64*
  %4091 = load i64, i64* %4090, align 8, !tbaa !25
  %4092 = trunc i64 %4091 to i8
  %4093 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 25
  store i8 %4092, i8* %4093, align 1, !tbaa !14
  %4094 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 8
  %4095 = bitcast i8* %4094 to i64*
  %4096 = load i64, i64* %4095, align 8, !tbaa !25
  %4097 = trunc i64 %4096 to i8
  %4098 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 26
  store i8 %4097, i8* %4098, align 2, !tbaa !14
  %4099 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 9
  %4100 = bitcast i8* %4099 to i64*
  %4101 = load i64, i64* %4100, align 8, !tbaa !25
  %4102 = trunc i64 %4101 to i8
  %4103 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 27
  store i8 %4102, i8* %4103, align 1, !tbaa !14
  %4104 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 38
  %4105 = bitcast i8* %4104 to i64*
  %4106 = load i64, i64* %4105, align 8, !tbaa !25
  %4107 = trunc i64 %4106 to i8
  %4108 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 28
  store i8 %4107, i8* %4108, align 4, !tbaa !14
  %4109 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 39
  %4110 = bitcast i8* %4109 to i64*
  %4111 = load i64, i64* %4110, align 8, !tbaa !25
  %4112 = trunc i64 %4111 to i8
  %4113 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 29
  store i8 %4112, i8* %4113, align 1, !tbaa !14
  %4114 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 40
  %4115 = bitcast i8* %4114 to i64*
  %4116 = load i64, i64* %4115, align 8, !tbaa !25
  %4117 = trunc i64 %4116 to i8
  %4118 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 30
  store i8 %4117, i8* %4118, align 2, !tbaa !14
  %4119 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 41
  %4120 = bitcast i8* %4119 to i64*
  %4121 = load i64, i64* %4120, align 8, !tbaa !25
  %4122 = trunc i64 %4121 to i8
  %4123 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 31
  store i8 %4122, i8* %4123, align 1, !tbaa !14
  %4124 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 42
  %4125 = bitcast i8* %4124 to i64*
  %4126 = load i64, i64* %4125, align 8, !tbaa !25
  %4127 = trunc i64 %4126 to i8
  %4128 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 32
  store i8 %4127, i8* %4128, align 16, !tbaa !14
  %4129 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 43
  %4130 = bitcast i8* %4129 to i64*
  %4131 = load i64, i64* %4130, align 8, !tbaa !25
  %4132 = trunc i64 %4131 to i8
  %4133 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 33
  store i8 %4132, i8* %4133, align 1, !tbaa !14
  %4134 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 44
  %4135 = bitcast i8* %4134 to i64*
  %4136 = load i64, i64* %4135, align 8, !tbaa !25
  %4137 = trunc i64 %4136 to i8
  %4138 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 34
  store i8 %4137, i8* %4138, align 2, !tbaa !14
  %4139 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 45
  %4140 = bitcast i8* %4139 to i64*
  %4141 = load i64, i64* %4140, align 8, !tbaa !25
  %4142 = trunc i64 %4141 to i8
  %4143 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 35
  store i8 %4142, i8* %4143, align 1, !tbaa !14
  %4144 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 46
  %4145 = bitcast i8* %4144 to i64*
  %4146 = load i64, i64* %4145, align 8, !tbaa !25
  %4147 = trunc i64 %4146 to i8
  %4148 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 36
  store i8 %4147, i8* %4148, align 4, !tbaa !14
  %4149 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 47
  %4150 = bitcast i8* %4149 to i64*
  %4151 = load i64, i64* %4150, align 8, !tbaa !25
  %4152 = trunc i64 %4151 to i8
  %4153 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 37
  store i8 %4152, i8* %4153, align 1, !tbaa !14
  %4154 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 48
  %4155 = bitcast i8* %4154 to i64*
  %4156 = load i64, i64* %4155, align 16, !tbaa !25
  %4157 = trunc i64 %4156 to i8
  %4158 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 38
  store i8 %4157, i8* %4158, align 2, !tbaa !14
  %4159 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 49
  %4160 = bitcast i8* %4159 to i64*
  %4161 = load i64, i64* %4160, align 8, !tbaa !25
  %4162 = trunc i64 %4161 to i8
  %4163 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 39
  store i8 %4162, i8* %4163, align 1, !tbaa !14
  %4164 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 50
  %4165 = bitcast i8* %4164 to i64*
  %4166 = load i64, i64* %4165, align 8, !tbaa !25
  %4167 = trunc i64 %4166 to i8
  %4168 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 40
  store i8 %4167, i8* %4168, align 8, !tbaa !14
  %4169 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 51
  %4170 = bitcast i8* %4169 to i64*
  %4171 = load i64, i64* %4170, align 8, !tbaa !25
  %4172 = trunc i64 %4171 to i8
  %4173 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 41
  store i8 %4172, i8* %4173, align 1, !tbaa !14
  %4174 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 52
  %4175 = bitcast i8* %4174 to i64*
  %4176 = load i64, i64* %4175, align 8, !tbaa !25
  %4177 = trunc i64 %4176 to i8
  %4178 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 42
  store i8 %4177, i8* %4178, align 2, !tbaa !14
  %4179 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 53
  %4180 = bitcast i8* %4179 to i64*
  %4181 = load i64, i64* %4180, align 8, !tbaa !25
  %4182 = trunc i64 %4181 to i8
  %4183 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 43
  store i8 %4182, i8* %4183, align 1, !tbaa !14
  %4184 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 54
  %4185 = bitcast i8* %4184 to i64*
  %4186 = load i64, i64* %4185, align 8, !tbaa !25
  %4187 = trunc i64 %4186 to i8
  %4188 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 44
  store i8 %4187, i8* %4188, align 4, !tbaa !14
  %4189 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 55
  %4190 = bitcast i8* %4189 to i64*
  %4191 = load i64, i64* %4190, align 8, !tbaa !25
  %4192 = trunc i64 %4191 to i8
  %4193 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 45
  store i8 %4192, i8* %4193, align 1, !tbaa !14
  %4194 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 28
  %4195 = bitcast i8* %4194 to i64*
  %4196 = load i64, i64* %4195, align 8, !tbaa !25
  %4197 = trunc i64 %4196 to i8
  %4198 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 46
  store i8 %4197, i8* %4198, align 2, !tbaa !14
  %4199 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 29
  %4200 = bitcast i8* %4199 to i64*
  %4201 = load i64, i64* %4200, align 8, !tbaa !25
  %4202 = trunc i64 %4201 to i8
  %4203 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 47
  store i8 %4202, i8* %4203, align 1, !tbaa !14
  %4204 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 30
  %4205 = bitcast i8* %4204 to i64*
  %4206 = load i64, i64* %4205, align 8, !tbaa !25
  %4207 = trunc i64 %4206 to i8
  %4208 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 48
  store i8 %4207, i8* %4208, align 16, !tbaa !14
  %4209 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 31
  %4210 = bitcast i8* %4209 to i64*
  %4211 = load i64, i64* %4210, align 8, !tbaa !25
  %4212 = trunc i64 %4211 to i8
  %4213 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 49
  store i8 %4212, i8* %4213, align 1, !tbaa !14
  %4214 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 32
  %4215 = bitcast i8* %4214 to i64*
  %4216 = load i64, i64* %4215, align 16, !tbaa !25
  %4217 = trunc i64 %4216 to i8
  %4218 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 50
  store i8 %4217, i8* %4218, align 2, !tbaa !14
  %4219 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 33
  %4220 = bitcast i8* %4219 to i64*
  %4221 = load i64, i64* %4220, align 8, !tbaa !25
  %4222 = trunc i64 %4221 to i8
  %4223 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 51
  store i8 %4222, i8* %4223, align 1, !tbaa !14
  %4224 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 34
  %4225 = bitcast i8* %4224 to i64*
  %4226 = load i64, i64* %4225, align 8, !tbaa !25
  %4227 = trunc i64 %4226 to i8
  %4228 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 52
  store i8 %4227, i8* %4228, align 4, !tbaa !14
  %4229 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 35
  %4230 = bitcast i8* %4229 to i64*
  %4231 = load i64, i64* %4230, align 8, !tbaa !25
  %4232 = trunc i64 %4231 to i8
  %4233 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 53
  store i8 %4232, i8* %4233, align 1, !tbaa !14
  %4234 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 36
  %4235 = bitcast i8* %4234 to i64*
  %4236 = load i64, i64* %4235, align 8, !tbaa !25
  %4237 = trunc i64 %4236 to i8
  %4238 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 54
  store i8 %4237, i8* %4238, align 2, !tbaa !14
  %4239 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 37
  %4240 = bitcast i8* %4239 to i64*
  %4241 = load i64, i64* %4240, align 8, !tbaa !25
  %4242 = trunc i64 %4241 to i8
  %4243 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 55
  store i8 %4242, i8* %4243, align 1, !tbaa !14
  %4244 = load i64, i64* %3438, align 8, !tbaa !25
  %4245 = trunc i64 %4244 to i8
  %4246 = icmp eq i8 %4245, 0
  %4247 = bitcast i32* %3964 to i64*
  %4248 = load volatile i64, i64* %4247, align 8, !tbaa !25
  %4249 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %4250 = select i1 %4246, i64 0, i64 %4249
  %4251 = or i64 %4248, %4250
  %4252 = trunc i64 %4251 to i32
  store volatile i32 %4252, i32* %3964, align 8, !tbaa !35
  %4253 = load i64, i64* %3449, align 8, !tbaa !25
  %4254 = trunc i64 %4253 to i8
  %4255 = icmp eq i8 %4254, 0
  %4256 = bitcast i32* %3965 to i64*
  %4257 = load volatile i64, i64* %4256, align 4, !tbaa !25
  %4258 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %4259 = select i1 %4255, i64 0, i64 %4258
  %4260 = or i64 %4257, %4259
  %4261 = trunc i64 %4260 to i32
  store volatile i32 %4261, i32* %3965, align 4, !tbaa !35
  %4262 = load i64, i64* %3460, align 16, !tbaa !25
  %4263 = trunc i64 %4262 to i8
  %4264 = icmp eq i8 %4263, 0
  %4265 = bitcast i32* %3964 to i64*
  %4266 = load volatile i64, i64* %4265, align 8, !tbaa !25
  %4267 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %4268 = select i1 %4264, i64 0, i64 %4267
  %4269 = or i64 %4266, %4268
  %4270 = trunc i64 %4269 to i32
  store volatile i32 %4270, i32* %3964, align 8, !tbaa !35
  %4271 = load i64, i64* %3471, align 8, !tbaa !25
  %4272 = trunc i64 %4271 to i8
  %4273 = icmp eq i8 %4272, 0
  %4274 = bitcast i32* %3965 to i64*
  %4275 = load volatile i64, i64* %4274, align 4, !tbaa !25
  %4276 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %4277 = select i1 %4273, i64 0, i64 %4276
  %4278 = or i64 %4275, %4277
  %4279 = trunc i64 %4278 to i32
  store volatile i32 %4279, i32* %3965, align 4, !tbaa !35
  %4280 = load i64, i64* %3482, align 8, !tbaa !25
  %4281 = trunc i64 %4280 to i8
  %4282 = icmp eq i8 %4281, 0
  %4283 = bitcast i32* %3964 to i64*
  %4284 = load volatile i64, i64* %4283, align 8, !tbaa !25
  %4285 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %4286 = select i1 %4282, i64 0, i64 %4285
  %4287 = or i64 %4284, %4286
  %4288 = trunc i64 %4287 to i32
  store volatile i32 %4288, i32* %3964, align 8, !tbaa !35
  %4289 = load i64, i64* %3493, align 8, !tbaa !25
  %4290 = trunc i64 %4289 to i8
  %4291 = icmp eq i8 %4290, 0
  %4292 = bitcast i32* %3965 to i64*
  %4293 = load volatile i64, i64* %4292, align 4, !tbaa !25
  %4294 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %4295 = select i1 %4291, i64 0, i64 %4294
  %4296 = or i64 %4293, %4295
  %4297 = trunc i64 %4296 to i32
  store volatile i32 %4297, i32* %3965, align 4, !tbaa !35
  %4298 = load i64, i64* %3504, align 8, !tbaa !25
  %4299 = trunc i64 %4298 to i8
  %4300 = icmp eq i8 %4299, 0
  %4301 = bitcast i32* %3964 to i64*
  %4302 = load volatile i64, i64* %4301, align 8, !tbaa !25
  %4303 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %4304 = select i1 %4300, i64 0, i64 %4303
  %4305 = or i64 %4302, %4304
  %4306 = trunc i64 %4305 to i32
  store volatile i32 %4306, i32* %3964, align 8, !tbaa !35
  %4307 = load i64, i64* %3515, align 8, !tbaa !25
  %4308 = trunc i64 %4307 to i8
  %4309 = icmp eq i8 %4308, 0
  %4310 = bitcast i32* %3965 to i64*
  %4311 = load volatile i64, i64* %4310, align 4, !tbaa !25
  %4312 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %4313 = select i1 %4309, i64 0, i64 %4312
  %4314 = or i64 %4311, %4313
  %4315 = trunc i64 %4314 to i32
  store volatile i32 %4315, i32* %3965, align 4, !tbaa !35
  %4316 = load i64, i64* %3525, align 16, !tbaa !25
  %4317 = trunc i64 %4316 to i8
  %4318 = icmp eq i8 %4317, 0
  %4319 = bitcast i32* %3964 to i64*
  %4320 = load volatile i64, i64* %4319, align 8, !tbaa !25
  %4321 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %4322 = select i1 %4318, i64 0, i64 %4321
  %4323 = or i64 %4320, %4322
  %4324 = trunc i64 %4323 to i32
  store volatile i32 %4324, i32* %3964, align 8, !tbaa !35
  %4325 = load i64, i64* %3536, align 8, !tbaa !25
  %4326 = trunc i64 %4325 to i8
  %4327 = icmp eq i8 %4326, 0
  %4328 = bitcast i32* %3965 to i64*
  %4329 = load volatile i64, i64* %4328, align 4, !tbaa !25
  %4330 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %4331 = select i1 %4327, i64 0, i64 %4330
  %4332 = or i64 %4329, %4331
  %4333 = trunc i64 %4332 to i32
  store volatile i32 %4333, i32* %3965, align 4, !tbaa !35
  %4334 = load i64, i64* %3547, align 8, !tbaa !25
  %4335 = trunc i64 %4334 to i8
  %4336 = icmp eq i8 %4335, 0
  %4337 = bitcast i32* %3964 to i64*
  %4338 = load volatile i64, i64* %4337, align 8, !tbaa !25
  %4339 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %4340 = select i1 %4336, i64 0, i64 %4339
  %4341 = or i64 %4338, %4340
  %4342 = trunc i64 %4341 to i32
  store volatile i32 %4342, i32* %3964, align 8, !tbaa !35
  %4343 = load i64, i64* %3558, align 8, !tbaa !25
  %4344 = trunc i64 %4343 to i8
  %4345 = icmp eq i8 %4344, 0
  %4346 = bitcast i32* %3965 to i64*
  %4347 = load volatile i64, i64* %4346, align 4, !tbaa !25
  %4348 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %4349 = select i1 %4345, i64 0, i64 %4348
  %4350 = or i64 %4347, %4349
  %4351 = trunc i64 %4350 to i32
  store volatile i32 %4351, i32* %3965, align 4, !tbaa !35
  %4352 = load i64, i64* %3569, align 8, !tbaa !25
  %4353 = trunc i64 %4352 to i8
  %4354 = icmp eq i8 %4353, 0
  %4355 = bitcast i32* %3964 to i64*
  %4356 = load volatile i64, i64* %4355, align 8, !tbaa !25
  %4357 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %4358 = select i1 %4354, i64 0, i64 %4357
  %4359 = or i64 %4356, %4358
  %4360 = trunc i64 %4359 to i32
  store volatile i32 %4360, i32* %3964, align 8, !tbaa !35
  %4361 = load i64, i64* %3580, align 8, !tbaa !25
  %4362 = trunc i64 %4361 to i8
  %4363 = icmp eq i8 %4362, 0
  %4364 = bitcast i32* %3965 to i64*
  %4365 = load volatile i64, i64* %4364, align 4, !tbaa !25
  %4366 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %4367 = select i1 %4363, i64 0, i64 %4366
  %4368 = or i64 %4365, %4367
  %4369 = trunc i64 %4368 to i32
  store volatile i32 %4369, i32* %3965, align 4, !tbaa !35
  %4370 = load i64, i64* %3591, align 8, !tbaa !25
  %4371 = trunc i64 %4370 to i8
  %4372 = icmp eq i8 %4371, 0
  %4373 = bitcast i32* %3964 to i64*
  %4374 = load volatile i64, i64* %4373, align 8, !tbaa !25
  %4375 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %4376 = select i1 %4372, i64 0, i64 %4375
  %4377 = or i64 %4374, %4376
  %4378 = trunc i64 %4377 to i32
  store volatile i32 %4378, i32* %3964, align 8, !tbaa !35
  %4379 = load i64, i64* %3602, align 8, !tbaa !25
  %4380 = trunc i64 %4379 to i8
  %4381 = icmp eq i8 %4380, 0
  %4382 = bitcast i32* %3965 to i64*
  %4383 = load volatile i64, i64* %4382, align 4, !tbaa !25
  %4384 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %4385 = select i1 %4381, i64 0, i64 %4384
  %4386 = or i64 %4383, %4385
  %4387 = trunc i64 %4386 to i32
  store volatile i32 %4387, i32* %3965, align 4, !tbaa !35
  %4388 = load i64, i64* %3613, align 8, !tbaa !25
  %4389 = trunc i64 %4388 to i8
  %4390 = icmp eq i8 %4389, 0
  %4391 = bitcast i32* %3964 to i64*
  %4392 = load volatile i64, i64* %4391, align 8, !tbaa !25
  %4393 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %4394 = select i1 %4390, i64 0, i64 %4393
  %4395 = or i64 %4392, %4394
  %4396 = trunc i64 %4395 to i32
  store volatile i32 %4396, i32* %3964, align 8, !tbaa !35
  %4397 = load i64, i64* %3624, align 8, !tbaa !25
  %4398 = trunc i64 %4397 to i8
  %4399 = icmp eq i8 %4398, 0
  %4400 = bitcast i32* %3965 to i64*
  %4401 = load volatile i64, i64* %4400, align 4, !tbaa !25
  %4402 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %4403 = select i1 %4399, i64 0, i64 %4402
  %4404 = or i64 %4401, %4403
  %4405 = trunc i64 %4404 to i32
  store volatile i32 %4405, i32* %3965, align 4, !tbaa !35
  %4406 = load i64, i64* %3635, align 8, !tbaa !25
  %4407 = trunc i64 %4406 to i8
  %4408 = icmp eq i8 %4407, 0
  %4409 = bitcast i32* %3964 to i64*
  %4410 = load volatile i64, i64* %4409, align 8, !tbaa !25
  %4411 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %4412 = select i1 %4408, i64 0, i64 %4411
  %4413 = or i64 %4410, %4412
  %4414 = trunc i64 %4413 to i32
  store volatile i32 %4414, i32* %3964, align 8, !tbaa !35
  %4415 = load i64, i64* %3646, align 8, !tbaa !25
  %4416 = trunc i64 %4415 to i8
  %4417 = icmp eq i8 %4416, 0
  %4418 = bitcast i32* %3965 to i64*
  %4419 = load volatile i64, i64* %4418, align 4, !tbaa !25
  %4420 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %4421 = select i1 %4417, i64 0, i64 %4420
  %4422 = or i64 %4419, %4421
  %4423 = trunc i64 %4422 to i32
  store volatile i32 %4423, i32* %3965, align 4, !tbaa !35
  %4424 = load i64, i64* %3657, align 8, !tbaa !25
  %4425 = trunc i64 %4424 to i8
  %4426 = icmp eq i8 %4425, 0
  %4427 = bitcast i32* %3964 to i64*
  %4428 = load volatile i64, i64* %4427, align 8, !tbaa !25
  %4429 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %4430 = select i1 %4426, i64 0, i64 %4429
  %4431 = or i64 %4428, %4430
  %4432 = trunc i64 %4431 to i32
  store volatile i32 %4432, i32* %3964, align 8, !tbaa !35
  %4433 = load i64, i64* %3668, align 16, !tbaa !25
  %4434 = trunc i64 %4433 to i8
  %4435 = icmp eq i8 %4434, 0
  %4436 = bitcast i32* %3965 to i64*
  %4437 = load volatile i64, i64* %4436, align 4, !tbaa !25
  %4438 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %4439 = select i1 %4435, i64 0, i64 %4438
  %4440 = or i64 %4437, %4439
  %4441 = trunc i64 %4440 to i32
  store volatile i32 %4441, i32* %3965, align 4, !tbaa !35
  %4442 = load i64, i64* %3679, align 8, !tbaa !25
  %4443 = trunc i64 %4442 to i8
  %4444 = icmp eq i8 %4443, 0
  %4445 = bitcast i32* %3964 to i64*
  %4446 = load volatile i64, i64* %4445, align 8, !tbaa !25
  %4447 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %4448 = select i1 %4444, i64 0, i64 %4447
  %4449 = or i64 %4446, %4448
  %4450 = trunc i64 %4449 to i32
  store volatile i32 %4450, i32* %3964, align 8, !tbaa !35
  %4451 = load i64, i64* %3690, align 8, !tbaa !25
  %4452 = trunc i64 %4451 to i8
  %4453 = icmp eq i8 %4452, 0
  %4454 = bitcast i32* %3965 to i64*
  %4455 = load volatile i64, i64* %4454, align 4, !tbaa !25
  %4456 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %4457 = select i1 %4453, i64 0, i64 %4456
  %4458 = or i64 %4455, %4457
  %4459 = trunc i64 %4458 to i32
  store volatile i32 %4459, i32* %3965, align 4, !tbaa !35
  %4460 = load i64, i64* %3701, align 8, !tbaa !25
  %4461 = trunc i64 %4460 to i8
  %4462 = icmp eq i8 %4461, 0
  %4463 = bitcast i32* %3964 to i64*
  %4464 = load volatile i64, i64* %4463, align 8, !tbaa !25
  %4465 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %4466 = select i1 %4462, i64 0, i64 %4465
  %4467 = or i64 %4464, %4466
  %4468 = trunc i64 %4467 to i32
  store volatile i32 %4468, i32* %3964, align 8, !tbaa !35
  %4469 = load i64, i64* %3712, align 8, !tbaa !25
  %4470 = trunc i64 %4469 to i8
  %4471 = icmp eq i8 %4470, 0
  %4472 = bitcast i32* %3965 to i64*
  %4473 = load volatile i64, i64* %4472, align 4, !tbaa !25
  %4474 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %4475 = select i1 %4471, i64 0, i64 %4474
  %4476 = or i64 %4473, %4475
  %4477 = trunc i64 %4476 to i32
  store volatile i32 %4477, i32* %3965, align 4, !tbaa !35
  %4478 = load i64, i64* %3723, align 8, !tbaa !25
  %4479 = trunc i64 %4478 to i8
  %4480 = icmp eq i8 %4479, 0
  %4481 = bitcast i32* %3964 to i64*
  %4482 = load volatile i64, i64* %4481, align 8, !tbaa !25
  %4483 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %4484 = select i1 %4480, i64 0, i64 %4483
  %4485 = or i64 %4482, %4484
  %4486 = trunc i64 %4485 to i32
  store volatile i32 %4486, i32* %3964, align 8, !tbaa !35
  %4487 = load i64, i64* %3734, align 16, !tbaa !25
  %4488 = trunc i64 %4487 to i8
  %4489 = icmp eq i8 %4488, 0
  %4490 = bitcast i32* %3965 to i64*
  %4491 = load volatile i64, i64* %4490, align 4, !tbaa !25
  %4492 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %4493 = select i1 %4489, i64 0, i64 %4492
  %4494 = or i64 %4491, %4493
  %4495 = trunc i64 %4494 to i32
  store volatile i32 %4495, i32* %3965, align 4, !tbaa !35
  %4496 = load i64, i64* %3745, align 8, !tbaa !25
  %4497 = trunc i64 %4496 to i8
  %4498 = icmp eq i8 %4497, 0
  %4499 = bitcast i32* %3964 to i64*
  %4500 = load volatile i64, i64* %4499, align 8, !tbaa !25
  %4501 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %4502 = select i1 %4498, i64 0, i64 %4501
  %4503 = or i64 %4500, %4502
  %4504 = trunc i64 %4503 to i32
  store volatile i32 %4504, i32* %3964, align 8, !tbaa !35
  %4505 = load i64, i64* %3756, align 8, !tbaa !25
  %4506 = trunc i64 %4505 to i8
  %4507 = icmp eq i8 %4506, 0
  %4508 = bitcast i32* %3965 to i64*
  %4509 = load volatile i64, i64* %4508, align 4, !tbaa !25
  %4510 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %4511 = select i1 %4507, i64 0, i64 %4510
  %4512 = or i64 %4509, %4511
  %4513 = trunc i64 %4512 to i32
  store volatile i32 %4513, i32* %3965, align 4, !tbaa !35
  %4514 = load i64, i64* %3767, align 8, !tbaa !25
  %4515 = trunc i64 %4514 to i8
  %4516 = icmp eq i8 %4515, 0
  %4517 = bitcast i32* %3964 to i64*
  %4518 = load volatile i64, i64* %4517, align 8, !tbaa !25
  %4519 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %4520 = select i1 %4516, i64 0, i64 %4519
  %4521 = or i64 %4518, %4520
  %4522 = trunc i64 %4521 to i32
  store volatile i32 %4522, i32* %3964, align 8, !tbaa !35
  %4523 = load i64, i64* %3778, align 8, !tbaa !25
  %4524 = trunc i64 %4523 to i8
  %4525 = icmp eq i8 %4524, 0
  %4526 = bitcast i32* %3965 to i64*
  %4527 = load volatile i64, i64* %4526, align 4, !tbaa !25
  %4528 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %4529 = select i1 %4525, i64 0, i64 %4528
  %4530 = or i64 %4527, %4529
  %4531 = trunc i64 %4530 to i32
  store volatile i32 %4531, i32* %3965, align 4, !tbaa !35
  %4532 = load i64, i64* %3789, align 8, !tbaa !25
  %4533 = trunc i64 %4532 to i8
  %4534 = icmp eq i8 %4533, 0
  %4535 = bitcast i32* %3964 to i64*
  %4536 = load volatile i64, i64* %4535, align 8, !tbaa !25
  %4537 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %4538 = select i1 %4534, i64 0, i64 %4537
  %4539 = or i64 %4536, %4538
  %4540 = trunc i64 %4539 to i32
  store volatile i32 %4540, i32* %3964, align 8, !tbaa !35
  %4541 = load i64, i64* %3800, align 8, !tbaa !25
  %4542 = trunc i64 %4541 to i8
  %4543 = icmp eq i8 %4542, 0
  %4544 = bitcast i32* %3965 to i64*
  %4545 = load volatile i64, i64* %4544, align 4, !tbaa !25
  %4546 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %4547 = select i1 %4543, i64 0, i64 %4546
  %4548 = or i64 %4545, %4547
  %4549 = trunc i64 %4548 to i32
  store volatile i32 %4549, i32* %3965, align 4, !tbaa !35
  %4550 = load i64, i64* %3811, align 8, !tbaa !25
  %4551 = trunc i64 %4550 to i8
  %4552 = icmp eq i8 %4551, 0
  %4553 = bitcast i32* %3964 to i64*
  %4554 = load volatile i64, i64* %4553, align 8, !tbaa !25
  %4555 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %4556 = select i1 %4552, i64 0, i64 %4555
  %4557 = or i64 %4554, %4556
  %4558 = trunc i64 %4557 to i32
  store volatile i32 %4558, i32* %3964, align 8, !tbaa !35
  %4559 = load i64, i64* %3822, align 8, !tbaa !25
  %4560 = trunc i64 %4559 to i8
  %4561 = icmp eq i8 %4560, 0
  %4562 = bitcast i32* %3965 to i64*
  %4563 = load volatile i64, i64* %4562, align 4, !tbaa !25
  %4564 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %4565 = select i1 %4561, i64 0, i64 %4564
  %4566 = or i64 %4563, %4565
  %4567 = trunc i64 %4566 to i32
  store volatile i32 %4567, i32* %3965, align 4, !tbaa !35
  %4568 = load i64, i64* %3833, align 8, !tbaa !25
  %4569 = trunc i64 %4568 to i8
  %4570 = icmp eq i8 %4569, 0
  %4571 = bitcast i32* %3964 to i64*
  %4572 = load volatile i64, i64* %4571, align 8, !tbaa !25
  %4573 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %4574 = select i1 %4570, i64 0, i64 %4573
  %4575 = or i64 %4572, %4574
  %4576 = trunc i64 %4575 to i32
  store volatile i32 %4576, i32* %3964, align 8, !tbaa !35
  %4577 = load i64, i64* %3844, align 8, !tbaa !25
  %4578 = trunc i64 %4577 to i8
  %4579 = icmp eq i8 %4578, 0
  %4580 = bitcast i32* %3965 to i64*
  %4581 = load volatile i64, i64* %4580, align 4, !tbaa !25
  %4582 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %4583 = select i1 %4579, i64 0, i64 %4582
  %4584 = or i64 %4581, %4583
  %4585 = trunc i64 %4584 to i32
  store volatile i32 %4585, i32* %3965, align 4, !tbaa !35
  %4586 = load i64, i64* %3855, align 8, !tbaa !25
  %4587 = trunc i64 %4586 to i8
  %4588 = icmp eq i8 %4587, 0
  %4589 = bitcast i32* %3964 to i64*
  %4590 = load volatile i64, i64* %4589, align 8, !tbaa !25
  %4591 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %4592 = select i1 %4588, i64 0, i64 %4591
  %4593 = or i64 %4590, %4592
  %4594 = trunc i64 %4593 to i32
  store volatile i32 %4594, i32* %3964, align 8, !tbaa !35
  %4595 = load i64, i64* %3866, align 8, !tbaa !25
  %4596 = trunc i64 %4595 to i8
  %4597 = icmp eq i8 %4596, 0
  %4598 = bitcast i32* %3965 to i64*
  %4599 = load volatile i64, i64* %4598, align 4, !tbaa !25
  %4600 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %4601 = select i1 %4597, i64 0, i64 %4600
  %4602 = or i64 %4599, %4601
  %4603 = trunc i64 %4602 to i32
  store volatile i32 %4603, i32* %3965, align 4, !tbaa !35
  %4604 = load i64, i64* %3877, align 8, !tbaa !25
  %4605 = trunc i64 %4604 to i8
  %4606 = icmp eq i8 %4605, 0
  %4607 = bitcast i32* %3964 to i64*
  %4608 = load volatile i64, i64* %4607, align 8, !tbaa !25
  %4609 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %4610 = select i1 %4606, i64 0, i64 %4609
  %4611 = or i64 %4608, %4610
  %4612 = trunc i64 %4611 to i32
  store volatile i32 %4612, i32* %3964, align 8, !tbaa !35
  %4613 = load i64, i64* %3888, align 8, !tbaa !25
  %4614 = trunc i64 %4613 to i8
  %4615 = icmp eq i8 %4614, 0
  %4616 = bitcast i32* %3965 to i64*
  %4617 = load volatile i64, i64* %4616, align 4, !tbaa !25
  %4618 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %4619 = select i1 %4615, i64 0, i64 %4618
  %4620 = or i64 %4617, %4619
  %4621 = trunc i64 %4620 to i32
  store volatile i32 %4621, i32* %3965, align 4, !tbaa !35
  %4622 = load i64, i64* %3899, align 8, !tbaa !25
  %4623 = trunc i64 %4622 to i8
  %4624 = icmp eq i8 %4623, 0
  %4625 = bitcast i32* %3964 to i64*
  %4626 = load volatile i64, i64* %4625, align 8, !tbaa !25
  %4627 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %4628 = select i1 %4624, i64 0, i64 %4627
  %4629 = or i64 %4626, %4628
  %4630 = trunc i64 %4629 to i32
  store volatile i32 %4630, i32* %3964, align 8, !tbaa !35
  %4631 = load i64, i64* %3910, align 8, !tbaa !25
  %4632 = trunc i64 %4631 to i8
  %4633 = icmp eq i8 %4632, 0
  %4634 = bitcast i32* %3965 to i64*
  %4635 = load volatile i64, i64* %4634, align 4, !tbaa !25
  %4636 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %4637 = select i1 %4633, i64 0, i64 %4636
  %4638 = or i64 %4635, %4637
  %4639 = trunc i64 %4638 to i32
  store volatile i32 %4639, i32* %3965, align 4, !tbaa !35
  %4640 = load i64, i64* %3921, align 8, !tbaa !25
  %4641 = trunc i64 %4640 to i8
  %4642 = icmp eq i8 %4641, 0
  %4643 = bitcast i32* %3964 to i64*
  %4644 = load volatile i64, i64* %4643, align 8, !tbaa !25
  %4645 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %4646 = select i1 %4642, i64 0, i64 %4645
  %4647 = or i64 %4644, %4646
  %4648 = trunc i64 %4647 to i32
  store volatile i32 %4648, i32* %3964, align 8, !tbaa !35
  %4649 = load i64, i64* %3932, align 8, !tbaa !25
  %4650 = trunc i64 %4649 to i8
  %4651 = icmp eq i8 %4650, 0
  %4652 = bitcast i32* %3965 to i64*
  %4653 = load volatile i64, i64* %4652, align 4, !tbaa !25
  %4654 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %4655 = select i1 %4651, i64 0, i64 %4654
  %4656 = or i64 %4653, %4655
  %4657 = trunc i64 %4656 to i32
  store volatile i32 %4657, i32* %3965, align 4, !tbaa !35
  %4658 = load i64, i64* %3943, align 8, !tbaa !25
  %4659 = trunc i64 %4658 to i8
  %4660 = icmp eq i8 %4659, 0
  %4661 = bitcast i32* %3964 to i64*
  %4662 = load volatile i64, i64* %4661, align 8, !tbaa !25
  %4663 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %4664 = select i1 %4660, i64 0, i64 %4663
  %4665 = or i64 %4662, %4664
  %4666 = trunc i64 %4665 to i32
  store volatile i32 %4666, i32* %3964, align 8, !tbaa !35
  %4667 = load i64, i64* %3954, align 8, !tbaa !25
  %4668 = trunc i64 %4667 to i8
  %4669 = icmp eq i8 %4668, 0
  %4670 = bitcast i32* %3965 to i64*
  %4671 = load volatile i64, i64* %4670, align 4, !tbaa !25
  %4672 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %4673 = select i1 %4669, i64 0, i64 %4672
  %4674 = or i64 %4671, %4673
  %4675 = trunc i64 %4674 to i32
  store volatile i32 %4675, i32* %3965, align 4, !tbaa !35
  %4676 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 12
  store i32 0, i32* %4676, align 16, !tbaa !35
  %4677 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 13
  store i32 0, i32* %4677, align 4, !tbaa !35
  %4678 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 12
  %4679 = bitcast i8* %4678 to i64*
  %4680 = load i64, i64* %4679, align 8, !tbaa !25
  %4681 = trunc i64 %4680 to i8
  store i8 %4681, i8* %8, align 16, !tbaa !14
  %4682 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 13
  %4683 = bitcast i8* %4682 to i64*
  %4684 = load i64, i64* %4683, align 8, !tbaa !25
  %4685 = trunc i64 %4684 to i8
  %4686 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 1
  store i8 %4685, i8* %4686, align 1, !tbaa !14
  %4687 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 14
  %4688 = bitcast i8* %4687 to i64*
  %4689 = load i64, i64* %4688, align 8, !tbaa !25
  %4690 = trunc i64 %4689 to i8
  %4691 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 2
  store i8 %4690, i8* %4691, align 2, !tbaa !14
  %4692 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 15
  %4693 = bitcast i8* %4692 to i64*
  %4694 = load i64, i64* %4693, align 8, !tbaa !25
  %4695 = trunc i64 %4694 to i8
  %4696 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 3
  store i8 %4695, i8* %4696, align 1, !tbaa !14
  %4697 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 16
  %4698 = bitcast i8* %4697 to i64*
  %4699 = load i64, i64* %4698, align 16, !tbaa !25
  %4700 = trunc i64 %4699 to i8
  %4701 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 4
  store i8 %4700, i8* %4701, align 4, !tbaa !14
  %4702 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 17
  %4703 = bitcast i8* %4702 to i64*
  %4704 = load i64, i64* %4703, align 8, !tbaa !25
  %4705 = trunc i64 %4704 to i8
  %4706 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 5
  store i8 %4705, i8* %4706, align 1, !tbaa !14
  %4707 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 18
  %4708 = bitcast i8* %4707 to i64*
  %4709 = load i64, i64* %4708, align 8, !tbaa !25
  %4710 = trunc i64 %4709 to i8
  %4711 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 6
  store i8 %4710, i8* %4711, align 2, !tbaa !14
  %4712 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 19
  %4713 = bitcast i8* %4712 to i64*
  %4714 = load i64, i64* %4713, align 8, !tbaa !25
  %4715 = trunc i64 %4714 to i8
  %4716 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 7
  store i8 %4715, i8* %4716, align 1, !tbaa !14
  %4717 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 20
  %4718 = bitcast i8* %4717 to i64*
  %4719 = load i64, i64* %4718, align 8, !tbaa !25
  %4720 = trunc i64 %4719 to i8
  %4721 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 8
  store i8 %4720, i8* %4721, align 8, !tbaa !14
  %4722 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 21
  %4723 = bitcast i8* %4722 to i64*
  %4724 = load i64, i64* %4723, align 8, !tbaa !25
  %4725 = trunc i64 %4724 to i8
  %4726 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 9
  store i8 %4725, i8* %4726, align 1, !tbaa !14
  %4727 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 22
  %4728 = bitcast i8* %4727 to i64*
  %4729 = load i64, i64* %4728, align 8, !tbaa !25
  %4730 = trunc i64 %4729 to i8
  %4731 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 10
  store i8 %4730, i8* %4731, align 2, !tbaa !14
  %4732 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 23
  %4733 = bitcast i8* %4732 to i64*
  %4734 = load i64, i64* %4733, align 8, !tbaa !25
  %4735 = trunc i64 %4734 to i8
  %4736 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 11
  store i8 %4735, i8* %4736, align 1, !tbaa !14
  %4737 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 24
  %4738 = bitcast i8* %4737 to i64*
  %4739 = load i64, i64* %4738, align 8, !tbaa !25
  %4740 = trunc i64 %4739 to i8
  %4741 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 12
  store i8 %4740, i8* %4741, align 4, !tbaa !14
  %4742 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 25
  %4743 = bitcast i8* %4742 to i64*
  %4744 = load i64, i64* %4743, align 8, !tbaa !25
  %4745 = trunc i64 %4744 to i8
  %4746 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 13
  store i8 %4745, i8* %4746, align 1, !tbaa !14
  %4747 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 26
  %4748 = bitcast i8* %4747 to i64*
  %4749 = load i64, i64* %4748, align 8, !tbaa !25
  %4750 = trunc i64 %4749 to i8
  %4751 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 14
  store i8 %4750, i8* %4751, align 2, !tbaa !14
  %4752 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 27
  %4753 = bitcast i8* %4752 to i64*
  %4754 = load i64, i64* %4753, align 8, !tbaa !25
  %4755 = trunc i64 %4754 to i8
  %4756 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 15
  store i8 %4755, i8* %4756, align 1, !tbaa !14
  %4757 = bitcast [56 x i8]* %4 to i64*
  %4758 = load i64, i64* %4757, align 16, !tbaa !25
  %4759 = trunc i64 %4758 to i8
  %4760 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 16
  store i8 %4759, i8* %4760, align 16, !tbaa !14
  %4761 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 1
  %4762 = bitcast i8* %4761 to i64*
  %4763 = load i64, i64* %4762, align 8, !tbaa !25
  %4764 = trunc i64 %4763 to i8
  %4765 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 17
  store i8 %4764, i8* %4765, align 1, !tbaa !14
  %4766 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 2
  %4767 = bitcast i8* %4766 to i64*
  %4768 = load i64, i64* %4767, align 8, !tbaa !25
  %4769 = trunc i64 %4768 to i8
  %4770 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 18
  store i8 %4769, i8* %4770, align 2, !tbaa !14
  %4771 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 3
  %4772 = bitcast i8* %4771 to i64*
  %4773 = load i64, i64* %4772, align 8, !tbaa !25
  %4774 = trunc i64 %4773 to i8
  %4775 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 19
  store i8 %4774, i8* %4775, align 1, !tbaa !14
  %4776 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 4
  %4777 = bitcast i8* %4776 to i64*
  %4778 = load i64, i64* %4777, align 8, !tbaa !25
  %4779 = trunc i64 %4778 to i8
  %4780 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 20
  store i8 %4779, i8* %4780, align 4, !tbaa !14
  %4781 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 5
  %4782 = bitcast i8* %4781 to i64*
  %4783 = load i64, i64* %4782, align 8, !tbaa !25
  %4784 = trunc i64 %4783 to i8
  %4785 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 21
  store i8 %4784, i8* %4785, align 1, !tbaa !14
  %4786 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 6
  %4787 = bitcast i8* %4786 to i64*
  %4788 = load i64, i64* %4787, align 8, !tbaa !25
  %4789 = trunc i64 %4788 to i8
  %4790 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 22
  store i8 %4789, i8* %4790, align 2, !tbaa !14
  %4791 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 7
  %4792 = bitcast i8* %4791 to i64*
  %4793 = load i64, i64* %4792, align 8, !tbaa !25
  %4794 = trunc i64 %4793 to i8
  %4795 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 23
  store i8 %4794, i8* %4795, align 1, !tbaa !14
  %4796 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 8
  %4797 = bitcast i8* %4796 to i64*
  %4798 = load i64, i64* %4797, align 8, !tbaa !25
  %4799 = trunc i64 %4798 to i8
  %4800 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 24
  store i8 %4799, i8* %4800, align 8, !tbaa !14
  %4801 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 9
  %4802 = bitcast i8* %4801 to i64*
  %4803 = load i64, i64* %4802, align 8, !tbaa !25
  %4804 = trunc i64 %4803 to i8
  %4805 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 25
  store i8 %4804, i8* %4805, align 1, !tbaa !14
  %4806 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 10
  %4807 = bitcast i8* %4806 to i64*
  %4808 = load i64, i64* %4807, align 8, !tbaa !25
  %4809 = trunc i64 %4808 to i8
  %4810 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 26
  store i8 %4809, i8* %4810, align 2, !tbaa !14
  %4811 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 11
  %4812 = bitcast i8* %4811 to i64*
  %4813 = load i64, i64* %4812, align 8, !tbaa !25
  %4814 = trunc i64 %4813 to i8
  %4815 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 27
  store i8 %4814, i8* %4815, align 1, !tbaa !14
  %4816 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 40
  %4817 = bitcast i8* %4816 to i64*
  %4818 = load i64, i64* %4817, align 8, !tbaa !25
  %4819 = trunc i64 %4818 to i8
  %4820 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 28
  store i8 %4819, i8* %4820, align 4, !tbaa !14
  %4821 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 41
  %4822 = bitcast i8* %4821 to i64*
  %4823 = load i64, i64* %4822, align 8, !tbaa !25
  %4824 = trunc i64 %4823 to i8
  %4825 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 29
  store i8 %4824, i8* %4825, align 1, !tbaa !14
  %4826 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 42
  %4827 = bitcast i8* %4826 to i64*
  %4828 = load i64, i64* %4827, align 8, !tbaa !25
  %4829 = trunc i64 %4828 to i8
  %4830 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 30
  store i8 %4829, i8* %4830, align 2, !tbaa !14
  %4831 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 43
  %4832 = bitcast i8* %4831 to i64*
  %4833 = load i64, i64* %4832, align 8, !tbaa !25
  %4834 = trunc i64 %4833 to i8
  %4835 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 31
  store i8 %4834, i8* %4835, align 1, !tbaa !14
  %4836 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 44
  %4837 = bitcast i8* %4836 to i64*
  %4838 = load i64, i64* %4837, align 8, !tbaa !25
  %4839 = trunc i64 %4838 to i8
  %4840 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 32
  store i8 %4839, i8* %4840, align 16, !tbaa !14
  %4841 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 45
  %4842 = bitcast i8* %4841 to i64*
  %4843 = load i64, i64* %4842, align 8, !tbaa !25
  %4844 = trunc i64 %4843 to i8
  %4845 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 33
  store i8 %4844, i8* %4845, align 1, !tbaa !14
  %4846 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 46
  %4847 = bitcast i8* %4846 to i64*
  %4848 = load i64, i64* %4847, align 8, !tbaa !25
  %4849 = trunc i64 %4848 to i8
  %4850 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 34
  store i8 %4849, i8* %4850, align 2, !tbaa !14
  %4851 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 47
  %4852 = bitcast i8* %4851 to i64*
  %4853 = load i64, i64* %4852, align 8, !tbaa !25
  %4854 = trunc i64 %4853 to i8
  %4855 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 35
  store i8 %4854, i8* %4855, align 1, !tbaa !14
  %4856 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 48
  %4857 = bitcast i8* %4856 to i64*
  %4858 = load i64, i64* %4857, align 16, !tbaa !25
  %4859 = trunc i64 %4858 to i8
  %4860 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 36
  store i8 %4859, i8* %4860, align 4, !tbaa !14
  %4861 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 49
  %4862 = bitcast i8* %4861 to i64*
  %4863 = load i64, i64* %4862, align 8, !tbaa !25
  %4864 = trunc i64 %4863 to i8
  %4865 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 37
  store i8 %4864, i8* %4865, align 1, !tbaa !14
  %4866 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 50
  %4867 = bitcast i8* %4866 to i64*
  %4868 = load i64, i64* %4867, align 8, !tbaa !25
  %4869 = trunc i64 %4868 to i8
  %4870 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 38
  store i8 %4869, i8* %4870, align 2, !tbaa !14
  %4871 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 51
  %4872 = bitcast i8* %4871 to i64*
  %4873 = load i64, i64* %4872, align 8, !tbaa !25
  %4874 = trunc i64 %4873 to i8
  %4875 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 39
  store i8 %4874, i8* %4875, align 1, !tbaa !14
  %4876 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 52
  %4877 = bitcast i8* %4876 to i64*
  %4878 = load i64, i64* %4877, align 8, !tbaa !25
  %4879 = trunc i64 %4878 to i8
  %4880 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 40
  store i8 %4879, i8* %4880, align 8, !tbaa !14
  %4881 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 53
  %4882 = bitcast i8* %4881 to i64*
  %4883 = load i64, i64* %4882, align 8, !tbaa !25
  %4884 = trunc i64 %4883 to i8
  %4885 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 41
  store i8 %4884, i8* %4885, align 1, !tbaa !14
  %4886 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 54
  %4887 = bitcast i8* %4886 to i64*
  %4888 = load i64, i64* %4887, align 8, !tbaa !25
  %4889 = trunc i64 %4888 to i8
  %4890 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 42
  store i8 %4889, i8* %4890, align 2, !tbaa !14
  %4891 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 55
  %4892 = bitcast i8* %4891 to i64*
  %4893 = load i64, i64* %4892, align 8, !tbaa !25
  %4894 = trunc i64 %4893 to i8
  %4895 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 43
  store i8 %4894, i8* %4895, align 1, !tbaa !14
  %4896 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 28
  %4897 = bitcast i8* %4896 to i64*
  %4898 = load i64, i64* %4897, align 8, !tbaa !25
  %4899 = trunc i64 %4898 to i8
  %4900 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 44
  store i8 %4899, i8* %4900, align 4, !tbaa !14
  %4901 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 29
  %4902 = bitcast i8* %4901 to i64*
  %4903 = load i64, i64* %4902, align 8, !tbaa !25
  %4904 = trunc i64 %4903 to i8
  %4905 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 45
  store i8 %4904, i8* %4905, align 1, !tbaa !14
  %4906 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 30
  %4907 = bitcast i8* %4906 to i64*
  %4908 = load i64, i64* %4907, align 8, !tbaa !25
  %4909 = trunc i64 %4908 to i8
  %4910 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 46
  store i8 %4909, i8* %4910, align 2, !tbaa !14
  %4911 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 31
  %4912 = bitcast i8* %4911 to i64*
  %4913 = load i64, i64* %4912, align 8, !tbaa !25
  %4914 = trunc i64 %4913 to i8
  %4915 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 47
  store i8 %4914, i8* %4915, align 1, !tbaa !14
  %4916 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 32
  %4917 = bitcast i8* %4916 to i64*
  %4918 = load i64, i64* %4917, align 16, !tbaa !25
  %4919 = trunc i64 %4918 to i8
  %4920 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 48
  store i8 %4919, i8* %4920, align 16, !tbaa !14
  %4921 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 33
  %4922 = bitcast i8* %4921 to i64*
  %4923 = load i64, i64* %4922, align 8, !tbaa !25
  %4924 = trunc i64 %4923 to i8
  %4925 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 49
  store i8 %4924, i8* %4925, align 1, !tbaa !14
  %4926 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 34
  %4927 = bitcast i8* %4926 to i64*
  %4928 = load i64, i64* %4927, align 8, !tbaa !25
  %4929 = trunc i64 %4928 to i8
  %4930 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 50
  store i8 %4929, i8* %4930, align 2, !tbaa !14
  %4931 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 35
  %4932 = bitcast i8* %4931 to i64*
  %4933 = load i64, i64* %4932, align 8, !tbaa !25
  %4934 = trunc i64 %4933 to i8
  %4935 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 51
  store i8 %4934, i8* %4935, align 1, !tbaa !14
  %4936 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 36
  %4937 = bitcast i8* %4936 to i64*
  %4938 = load i64, i64* %4937, align 8, !tbaa !25
  %4939 = trunc i64 %4938 to i8
  %4940 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 52
  store i8 %4939, i8* %4940, align 4, !tbaa !14
  %4941 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 37
  %4942 = bitcast i8* %4941 to i64*
  %4943 = load i64, i64* %4942, align 8, !tbaa !25
  %4944 = trunc i64 %4943 to i8
  %4945 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 53
  store i8 %4944, i8* %4945, align 1, !tbaa !14
  %4946 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 38
  %4947 = bitcast i8* %4946 to i64*
  %4948 = load i64, i64* %4947, align 8, !tbaa !25
  %4949 = trunc i64 %4948 to i8
  %4950 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 54
  store i8 %4949, i8* %4950, align 2, !tbaa !14
  %4951 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 39
  %4952 = bitcast i8* %4951 to i64*
  %4953 = load i64, i64* %4952, align 8, !tbaa !25
  %4954 = trunc i64 %4953 to i8
  %4955 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 55
  store i8 %4954, i8* %4955, align 1, !tbaa !14
  %4956 = load i64, i64* %3438, align 8, !tbaa !25
  %4957 = trunc i64 %4956 to i8
  %4958 = icmp eq i8 %4957, 0
  %4959 = bitcast i32* %4676 to i64*
  %4960 = load volatile i64, i64* %4959, align 16, !tbaa !25
  %4961 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %4962 = select i1 %4958, i64 0, i64 %4961
  %4963 = or i64 %4960, %4962
  %4964 = trunc i64 %4963 to i32
  store volatile i32 %4964, i32* %4676, align 16, !tbaa !35
  %4965 = load i64, i64* %3449, align 8, !tbaa !25
  %4966 = trunc i64 %4965 to i8
  %4967 = icmp eq i8 %4966, 0
  %4968 = bitcast i32* %4677 to i64*
  %4969 = load volatile i64, i64* %4968, align 4, !tbaa !25
  %4970 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %4971 = select i1 %4967, i64 0, i64 %4970
  %4972 = or i64 %4969, %4971
  %4973 = trunc i64 %4972 to i32
  store volatile i32 %4973, i32* %4677, align 4, !tbaa !35
  %4974 = load i64, i64* %3460, align 16, !tbaa !25
  %4975 = trunc i64 %4974 to i8
  %4976 = icmp eq i8 %4975, 0
  %4977 = bitcast i32* %4676 to i64*
  %4978 = load volatile i64, i64* %4977, align 16, !tbaa !25
  %4979 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %4980 = select i1 %4976, i64 0, i64 %4979
  %4981 = or i64 %4978, %4980
  %4982 = trunc i64 %4981 to i32
  store volatile i32 %4982, i32* %4676, align 16, !tbaa !35
  %4983 = load i64, i64* %3471, align 8, !tbaa !25
  %4984 = trunc i64 %4983 to i8
  %4985 = icmp eq i8 %4984, 0
  %4986 = bitcast i32* %4677 to i64*
  %4987 = load volatile i64, i64* %4986, align 4, !tbaa !25
  %4988 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %4989 = select i1 %4985, i64 0, i64 %4988
  %4990 = or i64 %4987, %4989
  %4991 = trunc i64 %4990 to i32
  store volatile i32 %4991, i32* %4677, align 4, !tbaa !35
  %4992 = load i64, i64* %3482, align 8, !tbaa !25
  %4993 = trunc i64 %4992 to i8
  %4994 = icmp eq i8 %4993, 0
  %4995 = bitcast i32* %4676 to i64*
  %4996 = load volatile i64, i64* %4995, align 16, !tbaa !25
  %4997 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %4998 = select i1 %4994, i64 0, i64 %4997
  %4999 = or i64 %4996, %4998
  %5000 = trunc i64 %4999 to i32
  store volatile i32 %5000, i32* %4676, align 16, !tbaa !35
  %5001 = load i64, i64* %3493, align 8, !tbaa !25
  %5002 = trunc i64 %5001 to i8
  %5003 = icmp eq i8 %5002, 0
  %5004 = bitcast i32* %4677 to i64*
  %5005 = load volatile i64, i64* %5004, align 4, !tbaa !25
  %5006 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %5007 = select i1 %5003, i64 0, i64 %5006
  %5008 = or i64 %5005, %5007
  %5009 = trunc i64 %5008 to i32
  store volatile i32 %5009, i32* %4677, align 4, !tbaa !35
  %5010 = load i64, i64* %3504, align 8, !tbaa !25
  %5011 = trunc i64 %5010 to i8
  %5012 = icmp eq i8 %5011, 0
  %5013 = bitcast i32* %4676 to i64*
  %5014 = load volatile i64, i64* %5013, align 16, !tbaa !25
  %5015 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %5016 = select i1 %5012, i64 0, i64 %5015
  %5017 = or i64 %5014, %5016
  %5018 = trunc i64 %5017 to i32
  store volatile i32 %5018, i32* %4676, align 16, !tbaa !35
  %5019 = load i64, i64* %3515, align 8, !tbaa !25
  %5020 = trunc i64 %5019 to i8
  %5021 = icmp eq i8 %5020, 0
  %5022 = bitcast i32* %4677 to i64*
  %5023 = load volatile i64, i64* %5022, align 4, !tbaa !25
  %5024 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %5025 = select i1 %5021, i64 0, i64 %5024
  %5026 = or i64 %5023, %5025
  %5027 = trunc i64 %5026 to i32
  store volatile i32 %5027, i32* %4677, align 4, !tbaa !35
  %5028 = load i64, i64* %3525, align 16, !tbaa !25
  %5029 = trunc i64 %5028 to i8
  %5030 = icmp eq i8 %5029, 0
  %5031 = bitcast i32* %4676 to i64*
  %5032 = load volatile i64, i64* %5031, align 16, !tbaa !25
  %5033 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %5034 = select i1 %5030, i64 0, i64 %5033
  %5035 = or i64 %5032, %5034
  %5036 = trunc i64 %5035 to i32
  store volatile i32 %5036, i32* %4676, align 16, !tbaa !35
  %5037 = load i64, i64* %3536, align 8, !tbaa !25
  %5038 = trunc i64 %5037 to i8
  %5039 = icmp eq i8 %5038, 0
  %5040 = bitcast i32* %4677 to i64*
  %5041 = load volatile i64, i64* %5040, align 4, !tbaa !25
  %5042 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %5043 = select i1 %5039, i64 0, i64 %5042
  %5044 = or i64 %5041, %5043
  %5045 = trunc i64 %5044 to i32
  store volatile i32 %5045, i32* %4677, align 4, !tbaa !35
  %5046 = load i64, i64* %3547, align 8, !tbaa !25
  %5047 = trunc i64 %5046 to i8
  %5048 = icmp eq i8 %5047, 0
  %5049 = bitcast i32* %4676 to i64*
  %5050 = load volatile i64, i64* %5049, align 16, !tbaa !25
  %5051 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %5052 = select i1 %5048, i64 0, i64 %5051
  %5053 = or i64 %5050, %5052
  %5054 = trunc i64 %5053 to i32
  store volatile i32 %5054, i32* %4676, align 16, !tbaa !35
  %5055 = load i64, i64* %3558, align 8, !tbaa !25
  %5056 = trunc i64 %5055 to i8
  %5057 = icmp eq i8 %5056, 0
  %5058 = bitcast i32* %4677 to i64*
  %5059 = load volatile i64, i64* %5058, align 4, !tbaa !25
  %5060 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %5061 = select i1 %5057, i64 0, i64 %5060
  %5062 = or i64 %5059, %5061
  %5063 = trunc i64 %5062 to i32
  store volatile i32 %5063, i32* %4677, align 4, !tbaa !35
  %5064 = load i64, i64* %3569, align 8, !tbaa !25
  %5065 = trunc i64 %5064 to i8
  %5066 = icmp eq i8 %5065, 0
  %5067 = bitcast i32* %4676 to i64*
  %5068 = load volatile i64, i64* %5067, align 16, !tbaa !25
  %5069 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %5070 = select i1 %5066, i64 0, i64 %5069
  %5071 = or i64 %5068, %5070
  %5072 = trunc i64 %5071 to i32
  store volatile i32 %5072, i32* %4676, align 16, !tbaa !35
  %5073 = load i64, i64* %3580, align 8, !tbaa !25
  %5074 = trunc i64 %5073 to i8
  %5075 = icmp eq i8 %5074, 0
  %5076 = bitcast i32* %4677 to i64*
  %5077 = load volatile i64, i64* %5076, align 4, !tbaa !25
  %5078 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %5079 = select i1 %5075, i64 0, i64 %5078
  %5080 = or i64 %5077, %5079
  %5081 = trunc i64 %5080 to i32
  store volatile i32 %5081, i32* %4677, align 4, !tbaa !35
  %5082 = load i64, i64* %3591, align 8, !tbaa !25
  %5083 = trunc i64 %5082 to i8
  %5084 = icmp eq i8 %5083, 0
  %5085 = bitcast i32* %4676 to i64*
  %5086 = load volatile i64, i64* %5085, align 16, !tbaa !25
  %5087 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %5088 = select i1 %5084, i64 0, i64 %5087
  %5089 = or i64 %5086, %5088
  %5090 = trunc i64 %5089 to i32
  store volatile i32 %5090, i32* %4676, align 16, !tbaa !35
  %5091 = load i64, i64* %3602, align 8, !tbaa !25
  %5092 = trunc i64 %5091 to i8
  %5093 = icmp eq i8 %5092, 0
  %5094 = bitcast i32* %4677 to i64*
  %5095 = load volatile i64, i64* %5094, align 4, !tbaa !25
  %5096 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %5097 = select i1 %5093, i64 0, i64 %5096
  %5098 = or i64 %5095, %5097
  %5099 = trunc i64 %5098 to i32
  store volatile i32 %5099, i32* %4677, align 4, !tbaa !35
  %5100 = load i64, i64* %3613, align 8, !tbaa !25
  %5101 = trunc i64 %5100 to i8
  %5102 = icmp eq i8 %5101, 0
  %5103 = bitcast i32* %4676 to i64*
  %5104 = load volatile i64, i64* %5103, align 16, !tbaa !25
  %5105 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %5106 = select i1 %5102, i64 0, i64 %5105
  %5107 = or i64 %5104, %5106
  %5108 = trunc i64 %5107 to i32
  store volatile i32 %5108, i32* %4676, align 16, !tbaa !35
  %5109 = load i64, i64* %3624, align 8, !tbaa !25
  %5110 = trunc i64 %5109 to i8
  %5111 = icmp eq i8 %5110, 0
  %5112 = bitcast i32* %4677 to i64*
  %5113 = load volatile i64, i64* %5112, align 4, !tbaa !25
  %5114 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %5115 = select i1 %5111, i64 0, i64 %5114
  %5116 = or i64 %5113, %5115
  %5117 = trunc i64 %5116 to i32
  store volatile i32 %5117, i32* %4677, align 4, !tbaa !35
  %5118 = load i64, i64* %3635, align 8, !tbaa !25
  %5119 = trunc i64 %5118 to i8
  %5120 = icmp eq i8 %5119, 0
  %5121 = bitcast i32* %4676 to i64*
  %5122 = load volatile i64, i64* %5121, align 16, !tbaa !25
  %5123 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %5124 = select i1 %5120, i64 0, i64 %5123
  %5125 = or i64 %5122, %5124
  %5126 = trunc i64 %5125 to i32
  store volatile i32 %5126, i32* %4676, align 16, !tbaa !35
  %5127 = load i64, i64* %3646, align 8, !tbaa !25
  %5128 = trunc i64 %5127 to i8
  %5129 = icmp eq i8 %5128, 0
  %5130 = bitcast i32* %4677 to i64*
  %5131 = load volatile i64, i64* %5130, align 4, !tbaa !25
  %5132 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %5133 = select i1 %5129, i64 0, i64 %5132
  %5134 = or i64 %5131, %5133
  %5135 = trunc i64 %5134 to i32
  store volatile i32 %5135, i32* %4677, align 4, !tbaa !35
  %5136 = load i64, i64* %3657, align 8, !tbaa !25
  %5137 = trunc i64 %5136 to i8
  %5138 = icmp eq i8 %5137, 0
  %5139 = bitcast i32* %4676 to i64*
  %5140 = load volatile i64, i64* %5139, align 16, !tbaa !25
  %5141 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %5142 = select i1 %5138, i64 0, i64 %5141
  %5143 = or i64 %5140, %5142
  %5144 = trunc i64 %5143 to i32
  store volatile i32 %5144, i32* %4676, align 16, !tbaa !35
  %5145 = load i64, i64* %3668, align 16, !tbaa !25
  %5146 = trunc i64 %5145 to i8
  %5147 = icmp eq i8 %5146, 0
  %5148 = bitcast i32* %4677 to i64*
  %5149 = load volatile i64, i64* %5148, align 4, !tbaa !25
  %5150 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %5151 = select i1 %5147, i64 0, i64 %5150
  %5152 = or i64 %5149, %5151
  %5153 = trunc i64 %5152 to i32
  store volatile i32 %5153, i32* %4677, align 4, !tbaa !35
  %5154 = load i64, i64* %3679, align 8, !tbaa !25
  %5155 = trunc i64 %5154 to i8
  %5156 = icmp eq i8 %5155, 0
  %5157 = bitcast i32* %4676 to i64*
  %5158 = load volatile i64, i64* %5157, align 16, !tbaa !25
  %5159 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %5160 = select i1 %5156, i64 0, i64 %5159
  %5161 = or i64 %5158, %5160
  %5162 = trunc i64 %5161 to i32
  store volatile i32 %5162, i32* %4676, align 16, !tbaa !35
  %5163 = load i64, i64* %3690, align 8, !tbaa !25
  %5164 = trunc i64 %5163 to i8
  %5165 = icmp eq i8 %5164, 0
  %5166 = bitcast i32* %4677 to i64*
  %5167 = load volatile i64, i64* %5166, align 4, !tbaa !25
  %5168 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %5169 = select i1 %5165, i64 0, i64 %5168
  %5170 = or i64 %5167, %5169
  %5171 = trunc i64 %5170 to i32
  store volatile i32 %5171, i32* %4677, align 4, !tbaa !35
  %5172 = load i64, i64* %3701, align 8, !tbaa !25
  %5173 = trunc i64 %5172 to i8
  %5174 = icmp eq i8 %5173, 0
  %5175 = bitcast i32* %4676 to i64*
  %5176 = load volatile i64, i64* %5175, align 16, !tbaa !25
  %5177 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %5178 = select i1 %5174, i64 0, i64 %5177
  %5179 = or i64 %5176, %5178
  %5180 = trunc i64 %5179 to i32
  store volatile i32 %5180, i32* %4676, align 16, !tbaa !35
  %5181 = load i64, i64* %3712, align 8, !tbaa !25
  %5182 = trunc i64 %5181 to i8
  %5183 = icmp eq i8 %5182, 0
  %5184 = bitcast i32* %4677 to i64*
  %5185 = load volatile i64, i64* %5184, align 4, !tbaa !25
  %5186 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %5187 = select i1 %5183, i64 0, i64 %5186
  %5188 = or i64 %5185, %5187
  %5189 = trunc i64 %5188 to i32
  store volatile i32 %5189, i32* %4677, align 4, !tbaa !35
  %5190 = load i64, i64* %3723, align 8, !tbaa !25
  %5191 = trunc i64 %5190 to i8
  %5192 = icmp eq i8 %5191, 0
  %5193 = bitcast i32* %4676 to i64*
  %5194 = load volatile i64, i64* %5193, align 16, !tbaa !25
  %5195 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %5196 = select i1 %5192, i64 0, i64 %5195
  %5197 = or i64 %5194, %5196
  %5198 = trunc i64 %5197 to i32
  store volatile i32 %5198, i32* %4676, align 16, !tbaa !35
  %5199 = load i64, i64* %3734, align 16, !tbaa !25
  %5200 = trunc i64 %5199 to i8
  %5201 = icmp eq i8 %5200, 0
  %5202 = bitcast i32* %4677 to i64*
  %5203 = load volatile i64, i64* %5202, align 4, !tbaa !25
  %5204 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %5205 = select i1 %5201, i64 0, i64 %5204
  %5206 = or i64 %5203, %5205
  %5207 = trunc i64 %5206 to i32
  store volatile i32 %5207, i32* %4677, align 4, !tbaa !35
  %5208 = load i64, i64* %3745, align 8, !tbaa !25
  %5209 = trunc i64 %5208 to i8
  %5210 = icmp eq i8 %5209, 0
  %5211 = bitcast i32* %4676 to i64*
  %5212 = load volatile i64, i64* %5211, align 16, !tbaa !25
  %5213 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %5214 = select i1 %5210, i64 0, i64 %5213
  %5215 = or i64 %5212, %5214
  %5216 = trunc i64 %5215 to i32
  store volatile i32 %5216, i32* %4676, align 16, !tbaa !35
  %5217 = load i64, i64* %3756, align 8, !tbaa !25
  %5218 = trunc i64 %5217 to i8
  %5219 = icmp eq i8 %5218, 0
  %5220 = bitcast i32* %4677 to i64*
  %5221 = load volatile i64, i64* %5220, align 4, !tbaa !25
  %5222 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %5223 = select i1 %5219, i64 0, i64 %5222
  %5224 = or i64 %5221, %5223
  %5225 = trunc i64 %5224 to i32
  store volatile i32 %5225, i32* %4677, align 4, !tbaa !35
  %5226 = load i64, i64* %3767, align 8, !tbaa !25
  %5227 = trunc i64 %5226 to i8
  %5228 = icmp eq i8 %5227, 0
  %5229 = bitcast i32* %4676 to i64*
  %5230 = load volatile i64, i64* %5229, align 16, !tbaa !25
  %5231 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %5232 = select i1 %5228, i64 0, i64 %5231
  %5233 = or i64 %5230, %5232
  %5234 = trunc i64 %5233 to i32
  store volatile i32 %5234, i32* %4676, align 16, !tbaa !35
  %5235 = load i64, i64* %3778, align 8, !tbaa !25
  %5236 = trunc i64 %5235 to i8
  %5237 = icmp eq i8 %5236, 0
  %5238 = bitcast i32* %4677 to i64*
  %5239 = load volatile i64, i64* %5238, align 4, !tbaa !25
  %5240 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %5241 = select i1 %5237, i64 0, i64 %5240
  %5242 = or i64 %5239, %5241
  %5243 = trunc i64 %5242 to i32
  store volatile i32 %5243, i32* %4677, align 4, !tbaa !35
  %5244 = load i64, i64* %3789, align 8, !tbaa !25
  %5245 = trunc i64 %5244 to i8
  %5246 = icmp eq i8 %5245, 0
  %5247 = bitcast i32* %4676 to i64*
  %5248 = load volatile i64, i64* %5247, align 16, !tbaa !25
  %5249 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %5250 = select i1 %5246, i64 0, i64 %5249
  %5251 = or i64 %5248, %5250
  %5252 = trunc i64 %5251 to i32
  store volatile i32 %5252, i32* %4676, align 16, !tbaa !35
  %5253 = load i64, i64* %3800, align 8, !tbaa !25
  %5254 = trunc i64 %5253 to i8
  %5255 = icmp eq i8 %5254, 0
  %5256 = bitcast i32* %4677 to i64*
  %5257 = load volatile i64, i64* %5256, align 4, !tbaa !25
  %5258 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %5259 = select i1 %5255, i64 0, i64 %5258
  %5260 = or i64 %5257, %5259
  %5261 = trunc i64 %5260 to i32
  store volatile i32 %5261, i32* %4677, align 4, !tbaa !35
  %5262 = load i64, i64* %3811, align 8, !tbaa !25
  %5263 = trunc i64 %5262 to i8
  %5264 = icmp eq i8 %5263, 0
  %5265 = bitcast i32* %4676 to i64*
  %5266 = load volatile i64, i64* %5265, align 16, !tbaa !25
  %5267 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %5268 = select i1 %5264, i64 0, i64 %5267
  %5269 = or i64 %5266, %5268
  %5270 = trunc i64 %5269 to i32
  store volatile i32 %5270, i32* %4676, align 16, !tbaa !35
  %5271 = load i64, i64* %3822, align 8, !tbaa !25
  %5272 = trunc i64 %5271 to i8
  %5273 = icmp eq i8 %5272, 0
  %5274 = bitcast i32* %4677 to i64*
  %5275 = load volatile i64, i64* %5274, align 4, !tbaa !25
  %5276 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %5277 = select i1 %5273, i64 0, i64 %5276
  %5278 = or i64 %5275, %5277
  %5279 = trunc i64 %5278 to i32
  store volatile i32 %5279, i32* %4677, align 4, !tbaa !35
  %5280 = load i64, i64* %3833, align 8, !tbaa !25
  %5281 = trunc i64 %5280 to i8
  %5282 = icmp eq i8 %5281, 0
  %5283 = bitcast i32* %4676 to i64*
  %5284 = load volatile i64, i64* %5283, align 16, !tbaa !25
  %5285 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %5286 = select i1 %5282, i64 0, i64 %5285
  %5287 = or i64 %5284, %5286
  %5288 = trunc i64 %5287 to i32
  store volatile i32 %5288, i32* %4676, align 16, !tbaa !35
  %5289 = load i64, i64* %3844, align 8, !tbaa !25
  %5290 = trunc i64 %5289 to i8
  %5291 = icmp eq i8 %5290, 0
  %5292 = bitcast i32* %4677 to i64*
  %5293 = load volatile i64, i64* %5292, align 4, !tbaa !25
  %5294 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %5295 = select i1 %5291, i64 0, i64 %5294
  %5296 = or i64 %5293, %5295
  %5297 = trunc i64 %5296 to i32
  store volatile i32 %5297, i32* %4677, align 4, !tbaa !35
  %5298 = load i64, i64* %3855, align 8, !tbaa !25
  %5299 = trunc i64 %5298 to i8
  %5300 = icmp eq i8 %5299, 0
  %5301 = bitcast i32* %4676 to i64*
  %5302 = load volatile i64, i64* %5301, align 16, !tbaa !25
  %5303 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %5304 = select i1 %5300, i64 0, i64 %5303
  %5305 = or i64 %5302, %5304
  %5306 = trunc i64 %5305 to i32
  store volatile i32 %5306, i32* %4676, align 16, !tbaa !35
  %5307 = load i64, i64* %3866, align 8, !tbaa !25
  %5308 = trunc i64 %5307 to i8
  %5309 = icmp eq i8 %5308, 0
  %5310 = bitcast i32* %4677 to i64*
  %5311 = load volatile i64, i64* %5310, align 4, !tbaa !25
  %5312 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %5313 = select i1 %5309, i64 0, i64 %5312
  %5314 = or i64 %5311, %5313
  %5315 = trunc i64 %5314 to i32
  store volatile i32 %5315, i32* %4677, align 4, !tbaa !35
  %5316 = load i64, i64* %3877, align 8, !tbaa !25
  %5317 = trunc i64 %5316 to i8
  %5318 = icmp eq i8 %5317, 0
  %5319 = bitcast i32* %4676 to i64*
  %5320 = load volatile i64, i64* %5319, align 16, !tbaa !25
  %5321 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %5322 = select i1 %5318, i64 0, i64 %5321
  %5323 = or i64 %5320, %5322
  %5324 = trunc i64 %5323 to i32
  store volatile i32 %5324, i32* %4676, align 16, !tbaa !35
  %5325 = load i64, i64* %3888, align 8, !tbaa !25
  %5326 = trunc i64 %5325 to i8
  %5327 = icmp eq i8 %5326, 0
  %5328 = bitcast i32* %4677 to i64*
  %5329 = load volatile i64, i64* %5328, align 4, !tbaa !25
  %5330 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %5331 = select i1 %5327, i64 0, i64 %5330
  %5332 = or i64 %5329, %5331
  %5333 = trunc i64 %5332 to i32
  store volatile i32 %5333, i32* %4677, align 4, !tbaa !35
  %5334 = load i64, i64* %3899, align 8, !tbaa !25
  %5335 = trunc i64 %5334 to i8
  %5336 = icmp eq i8 %5335, 0
  %5337 = bitcast i32* %4676 to i64*
  %5338 = load volatile i64, i64* %5337, align 16, !tbaa !25
  %5339 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %5340 = select i1 %5336, i64 0, i64 %5339
  %5341 = or i64 %5338, %5340
  %5342 = trunc i64 %5341 to i32
  store volatile i32 %5342, i32* %4676, align 16, !tbaa !35
  %5343 = load i64, i64* %3910, align 8, !tbaa !25
  %5344 = trunc i64 %5343 to i8
  %5345 = icmp eq i8 %5344, 0
  %5346 = bitcast i32* %4677 to i64*
  %5347 = load volatile i64, i64* %5346, align 4, !tbaa !25
  %5348 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %5349 = select i1 %5345, i64 0, i64 %5348
  %5350 = or i64 %5347, %5349
  %5351 = trunc i64 %5350 to i32
  store volatile i32 %5351, i32* %4677, align 4, !tbaa !35
  %5352 = load i64, i64* %3921, align 8, !tbaa !25
  %5353 = trunc i64 %5352 to i8
  %5354 = icmp eq i8 %5353, 0
  %5355 = bitcast i32* %4676 to i64*
  %5356 = load volatile i64, i64* %5355, align 16, !tbaa !25
  %5357 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %5358 = select i1 %5354, i64 0, i64 %5357
  %5359 = or i64 %5356, %5358
  %5360 = trunc i64 %5359 to i32
  store volatile i32 %5360, i32* %4676, align 16, !tbaa !35
  %5361 = load i64, i64* %3932, align 8, !tbaa !25
  %5362 = trunc i64 %5361 to i8
  %5363 = icmp eq i8 %5362, 0
  %5364 = bitcast i32* %4677 to i64*
  %5365 = load volatile i64, i64* %5364, align 4, !tbaa !25
  %5366 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %5367 = select i1 %5363, i64 0, i64 %5366
  %5368 = or i64 %5365, %5367
  %5369 = trunc i64 %5368 to i32
  store volatile i32 %5369, i32* %4677, align 4, !tbaa !35
  %5370 = load i64, i64* %3943, align 8, !tbaa !25
  %5371 = trunc i64 %5370 to i8
  %5372 = icmp eq i8 %5371, 0
  %5373 = bitcast i32* %4676 to i64*
  %5374 = load volatile i64, i64* %5373, align 16, !tbaa !25
  %5375 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %5376 = select i1 %5372, i64 0, i64 %5375
  %5377 = or i64 %5374, %5376
  %5378 = trunc i64 %5377 to i32
  store volatile i32 %5378, i32* %4676, align 16, !tbaa !35
  %5379 = load i64, i64* %3954, align 8, !tbaa !25
  %5380 = trunc i64 %5379 to i8
  %5381 = icmp eq i8 %5380, 0
  %5382 = bitcast i32* %4677 to i64*
  %5383 = load volatile i64, i64* %5382, align 4, !tbaa !25
  %5384 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %5385 = select i1 %5381, i64 0, i64 %5384
  %5386 = or i64 %5383, %5385
  %5387 = trunc i64 %5386 to i32
  store volatile i32 %5387, i32* %4677, align 4, !tbaa !35
  %5388 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 14
  store i32 0, i32* %5388, align 8, !tbaa !35
  %5389 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 15
  store i32 0, i32* %5389, align 4, !tbaa !35
  %5390 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 14
  %5391 = bitcast i8* %5390 to i64*
  %5392 = load i64, i64* %5391, align 8, !tbaa !25
  %5393 = trunc i64 %5392 to i8
  store i8 %5393, i8* %8, align 16, !tbaa !14
  %5394 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 15
  %5395 = bitcast i8* %5394 to i64*
  %5396 = load i64, i64* %5395, align 8, !tbaa !25
  %5397 = trunc i64 %5396 to i8
  %5398 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 1
  store i8 %5397, i8* %5398, align 1, !tbaa !14
  %5399 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 16
  %5400 = bitcast i8* %5399 to i64*
  %5401 = load i64, i64* %5400, align 16, !tbaa !25
  %5402 = trunc i64 %5401 to i8
  %5403 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 2
  store i8 %5402, i8* %5403, align 2, !tbaa !14
  %5404 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 17
  %5405 = bitcast i8* %5404 to i64*
  %5406 = load i64, i64* %5405, align 8, !tbaa !25
  %5407 = trunc i64 %5406 to i8
  %5408 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 3
  store i8 %5407, i8* %5408, align 1, !tbaa !14
  %5409 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 18
  %5410 = bitcast i8* %5409 to i64*
  %5411 = load i64, i64* %5410, align 8, !tbaa !25
  %5412 = trunc i64 %5411 to i8
  %5413 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 4
  store i8 %5412, i8* %5413, align 4, !tbaa !14
  %5414 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 19
  %5415 = bitcast i8* %5414 to i64*
  %5416 = load i64, i64* %5415, align 8, !tbaa !25
  %5417 = trunc i64 %5416 to i8
  %5418 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 5
  store i8 %5417, i8* %5418, align 1, !tbaa !14
  %5419 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 20
  %5420 = bitcast i8* %5419 to i64*
  %5421 = load i64, i64* %5420, align 8, !tbaa !25
  %5422 = trunc i64 %5421 to i8
  %5423 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 6
  store i8 %5422, i8* %5423, align 2, !tbaa !14
  %5424 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 21
  %5425 = bitcast i8* %5424 to i64*
  %5426 = load i64, i64* %5425, align 8, !tbaa !25
  %5427 = trunc i64 %5426 to i8
  %5428 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 7
  store i8 %5427, i8* %5428, align 1, !tbaa !14
  %5429 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 22
  %5430 = bitcast i8* %5429 to i64*
  %5431 = load i64, i64* %5430, align 8, !tbaa !25
  %5432 = trunc i64 %5431 to i8
  %5433 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 8
  store i8 %5432, i8* %5433, align 8, !tbaa !14
  %5434 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 23
  %5435 = bitcast i8* %5434 to i64*
  %5436 = load i64, i64* %5435, align 8, !tbaa !25
  %5437 = trunc i64 %5436 to i8
  %5438 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 9
  store i8 %5437, i8* %5438, align 1, !tbaa !14
  %5439 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 24
  %5440 = bitcast i8* %5439 to i64*
  %5441 = load i64, i64* %5440, align 8, !tbaa !25
  %5442 = trunc i64 %5441 to i8
  %5443 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 10
  store i8 %5442, i8* %5443, align 2, !tbaa !14
  %5444 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 25
  %5445 = bitcast i8* %5444 to i64*
  %5446 = load i64, i64* %5445, align 8, !tbaa !25
  %5447 = trunc i64 %5446 to i8
  %5448 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 11
  store i8 %5447, i8* %5448, align 1, !tbaa !14
  %5449 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 26
  %5450 = bitcast i8* %5449 to i64*
  %5451 = load i64, i64* %5450, align 8, !tbaa !25
  %5452 = trunc i64 %5451 to i8
  %5453 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 12
  store i8 %5452, i8* %5453, align 4, !tbaa !14
  %5454 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 27
  %5455 = bitcast i8* %5454 to i64*
  %5456 = load i64, i64* %5455, align 8, !tbaa !25
  %5457 = trunc i64 %5456 to i8
  %5458 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 13
  store i8 %5457, i8* %5458, align 1, !tbaa !14
  %5459 = bitcast [56 x i8]* %4 to i64*
  %5460 = load i64, i64* %5459, align 16, !tbaa !25
  %5461 = trunc i64 %5460 to i8
  %5462 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 14
  store i8 %5461, i8* %5462, align 2, !tbaa !14
  %5463 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 1
  %5464 = bitcast i8* %5463 to i64*
  %5465 = load i64, i64* %5464, align 8, !tbaa !25
  %5466 = trunc i64 %5465 to i8
  %5467 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 15
  store i8 %5466, i8* %5467, align 1, !tbaa !14
  %5468 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 2
  %5469 = bitcast i8* %5468 to i64*
  %5470 = load i64, i64* %5469, align 8, !tbaa !25
  %5471 = trunc i64 %5470 to i8
  %5472 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 16
  store i8 %5471, i8* %5472, align 16, !tbaa !14
  %5473 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 3
  %5474 = bitcast i8* %5473 to i64*
  %5475 = load i64, i64* %5474, align 8, !tbaa !25
  %5476 = trunc i64 %5475 to i8
  %5477 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 17
  store i8 %5476, i8* %5477, align 1, !tbaa !14
  %5478 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 4
  %5479 = bitcast i8* %5478 to i64*
  %5480 = load i64, i64* %5479, align 8, !tbaa !25
  %5481 = trunc i64 %5480 to i8
  %5482 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 18
  store i8 %5481, i8* %5482, align 2, !tbaa !14
  %5483 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 5
  %5484 = bitcast i8* %5483 to i64*
  %5485 = load i64, i64* %5484, align 8, !tbaa !25
  %5486 = trunc i64 %5485 to i8
  %5487 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 19
  store i8 %5486, i8* %5487, align 1, !tbaa !14
  %5488 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 6
  %5489 = bitcast i8* %5488 to i64*
  %5490 = load i64, i64* %5489, align 8, !tbaa !25
  %5491 = trunc i64 %5490 to i8
  %5492 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 20
  store i8 %5491, i8* %5492, align 4, !tbaa !14
  %5493 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 7
  %5494 = bitcast i8* %5493 to i64*
  %5495 = load i64, i64* %5494, align 8, !tbaa !25
  %5496 = trunc i64 %5495 to i8
  %5497 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 21
  store i8 %5496, i8* %5497, align 1, !tbaa !14
  %5498 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 8
  %5499 = bitcast i8* %5498 to i64*
  %5500 = load i64, i64* %5499, align 8, !tbaa !25
  %5501 = trunc i64 %5500 to i8
  %5502 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 22
  store i8 %5501, i8* %5502, align 2, !tbaa !14
  %5503 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 9
  %5504 = bitcast i8* %5503 to i64*
  %5505 = load i64, i64* %5504, align 8, !tbaa !25
  %5506 = trunc i64 %5505 to i8
  %5507 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 23
  store i8 %5506, i8* %5507, align 1, !tbaa !14
  %5508 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 10
  %5509 = bitcast i8* %5508 to i64*
  %5510 = load i64, i64* %5509, align 8, !tbaa !25
  %5511 = trunc i64 %5510 to i8
  %5512 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 24
  store i8 %5511, i8* %5512, align 8, !tbaa !14
  %5513 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 11
  %5514 = bitcast i8* %5513 to i64*
  %5515 = load i64, i64* %5514, align 8, !tbaa !25
  %5516 = trunc i64 %5515 to i8
  %5517 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 25
  store i8 %5516, i8* %5517, align 1, !tbaa !14
  %5518 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 12
  %5519 = bitcast i8* %5518 to i64*
  %5520 = load i64, i64* %5519, align 8, !tbaa !25
  %5521 = trunc i64 %5520 to i8
  %5522 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 26
  store i8 %5521, i8* %5522, align 2, !tbaa !14
  %5523 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 13
  %5524 = bitcast i8* %5523 to i64*
  %5525 = load i64, i64* %5524, align 8, !tbaa !25
  %5526 = trunc i64 %5525 to i8
  %5527 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 27
  store i8 %5526, i8* %5527, align 1, !tbaa !14
  %5528 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 42
  %5529 = bitcast i8* %5528 to i64*
  %5530 = load i64, i64* %5529, align 8, !tbaa !25
  %5531 = trunc i64 %5530 to i8
  %5532 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 28
  store i8 %5531, i8* %5532, align 4, !tbaa !14
  %5533 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 43
  %5534 = bitcast i8* %5533 to i64*
  %5535 = load i64, i64* %5534, align 8, !tbaa !25
  %5536 = trunc i64 %5535 to i8
  %5537 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 29
  store i8 %5536, i8* %5537, align 1, !tbaa !14
  %5538 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 44
  %5539 = bitcast i8* %5538 to i64*
  %5540 = load i64, i64* %5539, align 8, !tbaa !25
  %5541 = trunc i64 %5540 to i8
  %5542 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 30
  store i8 %5541, i8* %5542, align 2, !tbaa !14
  %5543 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 45
  %5544 = bitcast i8* %5543 to i64*
  %5545 = load i64, i64* %5544, align 8, !tbaa !25
  %5546 = trunc i64 %5545 to i8
  %5547 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 31
  store i8 %5546, i8* %5547, align 1, !tbaa !14
  %5548 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 46
  %5549 = bitcast i8* %5548 to i64*
  %5550 = load i64, i64* %5549, align 8, !tbaa !25
  %5551 = trunc i64 %5550 to i8
  %5552 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 32
  store i8 %5551, i8* %5552, align 16, !tbaa !14
  %5553 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 47
  %5554 = bitcast i8* %5553 to i64*
  %5555 = load i64, i64* %5554, align 8, !tbaa !25
  %5556 = trunc i64 %5555 to i8
  %5557 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 33
  store i8 %5556, i8* %5557, align 1, !tbaa !14
  %5558 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 48
  %5559 = bitcast i8* %5558 to i64*
  %5560 = load i64, i64* %5559, align 16, !tbaa !25
  %5561 = trunc i64 %5560 to i8
  %5562 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 34
  store i8 %5561, i8* %5562, align 2, !tbaa !14
  %5563 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 49
  %5564 = bitcast i8* %5563 to i64*
  %5565 = load i64, i64* %5564, align 8, !tbaa !25
  %5566 = trunc i64 %5565 to i8
  %5567 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 35
  store i8 %5566, i8* %5567, align 1, !tbaa !14
  %5568 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 50
  %5569 = bitcast i8* %5568 to i64*
  %5570 = load i64, i64* %5569, align 8, !tbaa !25
  %5571 = trunc i64 %5570 to i8
  %5572 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 36
  store i8 %5571, i8* %5572, align 4, !tbaa !14
  %5573 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 51
  %5574 = bitcast i8* %5573 to i64*
  %5575 = load i64, i64* %5574, align 8, !tbaa !25
  %5576 = trunc i64 %5575 to i8
  %5577 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 37
  store i8 %5576, i8* %5577, align 1, !tbaa !14
  %5578 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 52
  %5579 = bitcast i8* %5578 to i64*
  %5580 = load i64, i64* %5579, align 8, !tbaa !25
  %5581 = trunc i64 %5580 to i8
  %5582 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 38
  store i8 %5581, i8* %5582, align 2, !tbaa !14
  %5583 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 53
  %5584 = bitcast i8* %5583 to i64*
  %5585 = load i64, i64* %5584, align 8, !tbaa !25
  %5586 = trunc i64 %5585 to i8
  %5587 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 39
  store i8 %5586, i8* %5587, align 1, !tbaa !14
  %5588 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 54
  %5589 = bitcast i8* %5588 to i64*
  %5590 = load i64, i64* %5589, align 8, !tbaa !25
  %5591 = trunc i64 %5590 to i8
  %5592 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 40
  store i8 %5591, i8* %5592, align 8, !tbaa !14
  %5593 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 55
  %5594 = bitcast i8* %5593 to i64*
  %5595 = load i64, i64* %5594, align 8, !tbaa !25
  %5596 = trunc i64 %5595 to i8
  %5597 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 41
  store i8 %5596, i8* %5597, align 1, !tbaa !14
  %5598 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 28
  %5599 = bitcast i8* %5598 to i64*
  %5600 = load i64, i64* %5599, align 8, !tbaa !25
  %5601 = trunc i64 %5600 to i8
  %5602 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 42
  store i8 %5601, i8* %5602, align 2, !tbaa !14
  %5603 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 29
  %5604 = bitcast i8* %5603 to i64*
  %5605 = load i64, i64* %5604, align 8, !tbaa !25
  %5606 = trunc i64 %5605 to i8
  %5607 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 43
  store i8 %5606, i8* %5607, align 1, !tbaa !14
  %5608 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 30
  %5609 = bitcast i8* %5608 to i64*
  %5610 = load i64, i64* %5609, align 8, !tbaa !25
  %5611 = trunc i64 %5610 to i8
  %5612 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 44
  store i8 %5611, i8* %5612, align 4, !tbaa !14
  %5613 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 31
  %5614 = bitcast i8* %5613 to i64*
  %5615 = load i64, i64* %5614, align 8, !tbaa !25
  %5616 = trunc i64 %5615 to i8
  %5617 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 45
  store i8 %5616, i8* %5617, align 1, !tbaa !14
  %5618 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 32
  %5619 = bitcast i8* %5618 to i64*
  %5620 = load i64, i64* %5619, align 16, !tbaa !25
  %5621 = trunc i64 %5620 to i8
  %5622 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 46
  store i8 %5621, i8* %5622, align 2, !tbaa !14
  %5623 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 33
  %5624 = bitcast i8* %5623 to i64*
  %5625 = load i64, i64* %5624, align 8, !tbaa !25
  %5626 = trunc i64 %5625 to i8
  %5627 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 47
  store i8 %5626, i8* %5627, align 1, !tbaa !14
  %5628 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 34
  %5629 = bitcast i8* %5628 to i64*
  %5630 = load i64, i64* %5629, align 8, !tbaa !25
  %5631 = trunc i64 %5630 to i8
  %5632 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 48
  store i8 %5631, i8* %5632, align 16, !tbaa !14
  %5633 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 35
  %5634 = bitcast i8* %5633 to i64*
  %5635 = load i64, i64* %5634, align 8, !tbaa !25
  %5636 = trunc i64 %5635 to i8
  %5637 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 49
  store i8 %5636, i8* %5637, align 1, !tbaa !14
  %5638 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 36
  %5639 = bitcast i8* %5638 to i64*
  %5640 = load i64, i64* %5639, align 8, !tbaa !25
  %5641 = trunc i64 %5640 to i8
  %5642 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 50
  store i8 %5641, i8* %5642, align 2, !tbaa !14
  %5643 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 37
  %5644 = bitcast i8* %5643 to i64*
  %5645 = load i64, i64* %5644, align 8, !tbaa !25
  %5646 = trunc i64 %5645 to i8
  %5647 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 51
  store i8 %5646, i8* %5647, align 1, !tbaa !14
  %5648 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 38
  %5649 = bitcast i8* %5648 to i64*
  %5650 = load i64, i64* %5649, align 8, !tbaa !25
  %5651 = trunc i64 %5650 to i8
  %5652 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 52
  store i8 %5651, i8* %5652, align 4, !tbaa !14
  %5653 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 39
  %5654 = bitcast i8* %5653 to i64*
  %5655 = load i64, i64* %5654, align 8, !tbaa !25
  %5656 = trunc i64 %5655 to i8
  %5657 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 53
  store i8 %5656, i8* %5657, align 1, !tbaa !14
  %5658 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 40
  %5659 = bitcast i8* %5658 to i64*
  %5660 = load i64, i64* %5659, align 8, !tbaa !25
  %5661 = trunc i64 %5660 to i8
  %5662 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 54
  store i8 %5661, i8* %5662, align 2, !tbaa !14
  %5663 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 41
  %5664 = bitcast i8* %5663 to i64*
  %5665 = load i64, i64* %5664, align 8, !tbaa !25
  %5666 = trunc i64 %5665 to i8
  %5667 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 55
  store i8 %5666, i8* %5667, align 1, !tbaa !14
  %5668 = load i64, i64* %3438, align 8, !tbaa !25
  %5669 = trunc i64 %5668 to i8
  %5670 = icmp eq i8 %5669, 0
  %5671 = bitcast i32* %5388 to i64*
  %5672 = load volatile i64, i64* %5671, align 8, !tbaa !25
  %5673 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %5674 = select i1 %5670, i64 0, i64 %5673
  %5675 = or i64 %5672, %5674
  %5676 = trunc i64 %5675 to i32
  store volatile i32 %5676, i32* %5388, align 8, !tbaa !35
  %5677 = load i64, i64* %3449, align 8, !tbaa !25
  %5678 = trunc i64 %5677 to i8
  %5679 = icmp eq i8 %5678, 0
  %5680 = bitcast i32* %5389 to i64*
  %5681 = load volatile i64, i64* %5680, align 4, !tbaa !25
  %5682 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %5683 = select i1 %5679, i64 0, i64 %5682
  %5684 = or i64 %5681, %5683
  %5685 = trunc i64 %5684 to i32
  store volatile i32 %5685, i32* %5389, align 4, !tbaa !35
  %5686 = load i64, i64* %3460, align 16, !tbaa !25
  %5687 = trunc i64 %5686 to i8
  %5688 = icmp eq i8 %5687, 0
  %5689 = bitcast i32* %5388 to i64*
  %5690 = load volatile i64, i64* %5689, align 8, !tbaa !25
  %5691 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %5692 = select i1 %5688, i64 0, i64 %5691
  %5693 = or i64 %5690, %5692
  %5694 = trunc i64 %5693 to i32
  store volatile i32 %5694, i32* %5388, align 8, !tbaa !35
  %5695 = load i64, i64* %3471, align 8, !tbaa !25
  %5696 = trunc i64 %5695 to i8
  %5697 = icmp eq i8 %5696, 0
  %5698 = bitcast i32* %5389 to i64*
  %5699 = load volatile i64, i64* %5698, align 4, !tbaa !25
  %5700 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %5701 = select i1 %5697, i64 0, i64 %5700
  %5702 = or i64 %5699, %5701
  %5703 = trunc i64 %5702 to i32
  store volatile i32 %5703, i32* %5389, align 4, !tbaa !35
  %5704 = load i64, i64* %3482, align 8, !tbaa !25
  %5705 = trunc i64 %5704 to i8
  %5706 = icmp eq i8 %5705, 0
  %5707 = bitcast i32* %5388 to i64*
  %5708 = load volatile i64, i64* %5707, align 8, !tbaa !25
  %5709 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %5710 = select i1 %5706, i64 0, i64 %5709
  %5711 = or i64 %5708, %5710
  %5712 = trunc i64 %5711 to i32
  store volatile i32 %5712, i32* %5388, align 8, !tbaa !35
  %5713 = load i64, i64* %3493, align 8, !tbaa !25
  %5714 = trunc i64 %5713 to i8
  %5715 = icmp eq i8 %5714, 0
  %5716 = bitcast i32* %5389 to i64*
  %5717 = load volatile i64, i64* %5716, align 4, !tbaa !25
  %5718 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %5719 = select i1 %5715, i64 0, i64 %5718
  %5720 = or i64 %5717, %5719
  %5721 = trunc i64 %5720 to i32
  store volatile i32 %5721, i32* %5389, align 4, !tbaa !35
  %5722 = load i64, i64* %3504, align 8, !tbaa !25
  %5723 = trunc i64 %5722 to i8
  %5724 = icmp eq i8 %5723, 0
  %5725 = bitcast i32* %5388 to i64*
  %5726 = load volatile i64, i64* %5725, align 8, !tbaa !25
  %5727 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %5728 = select i1 %5724, i64 0, i64 %5727
  %5729 = or i64 %5726, %5728
  %5730 = trunc i64 %5729 to i32
  store volatile i32 %5730, i32* %5388, align 8, !tbaa !35
  %5731 = load i64, i64* %3515, align 8, !tbaa !25
  %5732 = trunc i64 %5731 to i8
  %5733 = icmp eq i8 %5732, 0
  %5734 = bitcast i32* %5389 to i64*
  %5735 = load volatile i64, i64* %5734, align 4, !tbaa !25
  %5736 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %5737 = select i1 %5733, i64 0, i64 %5736
  %5738 = or i64 %5735, %5737
  %5739 = trunc i64 %5738 to i32
  store volatile i32 %5739, i32* %5389, align 4, !tbaa !35
  %5740 = load i64, i64* %3525, align 16, !tbaa !25
  %5741 = trunc i64 %5740 to i8
  %5742 = icmp eq i8 %5741, 0
  %5743 = bitcast i32* %5388 to i64*
  %5744 = load volatile i64, i64* %5743, align 8, !tbaa !25
  %5745 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %5746 = select i1 %5742, i64 0, i64 %5745
  %5747 = or i64 %5744, %5746
  %5748 = trunc i64 %5747 to i32
  store volatile i32 %5748, i32* %5388, align 8, !tbaa !35
  %5749 = load i64, i64* %3536, align 8, !tbaa !25
  %5750 = trunc i64 %5749 to i8
  %5751 = icmp eq i8 %5750, 0
  %5752 = bitcast i32* %5389 to i64*
  %5753 = load volatile i64, i64* %5752, align 4, !tbaa !25
  %5754 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %5755 = select i1 %5751, i64 0, i64 %5754
  %5756 = or i64 %5753, %5755
  %5757 = trunc i64 %5756 to i32
  store volatile i32 %5757, i32* %5389, align 4, !tbaa !35
  %5758 = load i64, i64* %3547, align 8, !tbaa !25
  %5759 = trunc i64 %5758 to i8
  %5760 = icmp eq i8 %5759, 0
  %5761 = bitcast i32* %5388 to i64*
  %5762 = load volatile i64, i64* %5761, align 8, !tbaa !25
  %5763 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %5764 = select i1 %5760, i64 0, i64 %5763
  %5765 = or i64 %5762, %5764
  %5766 = trunc i64 %5765 to i32
  store volatile i32 %5766, i32* %5388, align 8, !tbaa !35
  %5767 = load i64, i64* %3558, align 8, !tbaa !25
  %5768 = trunc i64 %5767 to i8
  %5769 = icmp eq i8 %5768, 0
  %5770 = bitcast i32* %5389 to i64*
  %5771 = load volatile i64, i64* %5770, align 4, !tbaa !25
  %5772 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %5773 = select i1 %5769, i64 0, i64 %5772
  %5774 = or i64 %5771, %5773
  %5775 = trunc i64 %5774 to i32
  store volatile i32 %5775, i32* %5389, align 4, !tbaa !35
  %5776 = load i64, i64* %3569, align 8, !tbaa !25
  %5777 = trunc i64 %5776 to i8
  %5778 = icmp eq i8 %5777, 0
  %5779 = bitcast i32* %5388 to i64*
  %5780 = load volatile i64, i64* %5779, align 8, !tbaa !25
  %5781 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %5782 = select i1 %5778, i64 0, i64 %5781
  %5783 = or i64 %5780, %5782
  %5784 = trunc i64 %5783 to i32
  store volatile i32 %5784, i32* %5388, align 8, !tbaa !35
  %5785 = load i64, i64* %3580, align 8, !tbaa !25
  %5786 = trunc i64 %5785 to i8
  %5787 = icmp eq i8 %5786, 0
  %5788 = bitcast i32* %5389 to i64*
  %5789 = load volatile i64, i64* %5788, align 4, !tbaa !25
  %5790 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %5791 = select i1 %5787, i64 0, i64 %5790
  %5792 = or i64 %5789, %5791
  %5793 = trunc i64 %5792 to i32
  store volatile i32 %5793, i32* %5389, align 4, !tbaa !35
  %5794 = load i64, i64* %3591, align 8, !tbaa !25
  %5795 = trunc i64 %5794 to i8
  %5796 = icmp eq i8 %5795, 0
  %5797 = bitcast i32* %5388 to i64*
  %5798 = load volatile i64, i64* %5797, align 8, !tbaa !25
  %5799 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %5800 = select i1 %5796, i64 0, i64 %5799
  %5801 = or i64 %5798, %5800
  %5802 = trunc i64 %5801 to i32
  store volatile i32 %5802, i32* %5388, align 8, !tbaa !35
  %5803 = load i64, i64* %3602, align 8, !tbaa !25
  %5804 = trunc i64 %5803 to i8
  %5805 = icmp eq i8 %5804, 0
  %5806 = bitcast i32* %5389 to i64*
  %5807 = load volatile i64, i64* %5806, align 4, !tbaa !25
  %5808 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %5809 = select i1 %5805, i64 0, i64 %5808
  %5810 = or i64 %5807, %5809
  %5811 = trunc i64 %5810 to i32
  store volatile i32 %5811, i32* %5389, align 4, !tbaa !35
  %5812 = load i64, i64* %3613, align 8, !tbaa !25
  %5813 = trunc i64 %5812 to i8
  %5814 = icmp eq i8 %5813, 0
  %5815 = bitcast i32* %5388 to i64*
  %5816 = load volatile i64, i64* %5815, align 8, !tbaa !25
  %5817 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %5818 = select i1 %5814, i64 0, i64 %5817
  %5819 = or i64 %5816, %5818
  %5820 = trunc i64 %5819 to i32
  store volatile i32 %5820, i32* %5388, align 8, !tbaa !35
  %5821 = load i64, i64* %3624, align 8, !tbaa !25
  %5822 = trunc i64 %5821 to i8
  %5823 = icmp eq i8 %5822, 0
  %5824 = bitcast i32* %5389 to i64*
  %5825 = load volatile i64, i64* %5824, align 4, !tbaa !25
  %5826 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %5827 = select i1 %5823, i64 0, i64 %5826
  %5828 = or i64 %5825, %5827
  %5829 = trunc i64 %5828 to i32
  store volatile i32 %5829, i32* %5389, align 4, !tbaa !35
  %5830 = load i64, i64* %3635, align 8, !tbaa !25
  %5831 = trunc i64 %5830 to i8
  %5832 = icmp eq i8 %5831, 0
  %5833 = bitcast i32* %5388 to i64*
  %5834 = load volatile i64, i64* %5833, align 8, !tbaa !25
  %5835 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %5836 = select i1 %5832, i64 0, i64 %5835
  %5837 = or i64 %5834, %5836
  %5838 = trunc i64 %5837 to i32
  store volatile i32 %5838, i32* %5388, align 8, !tbaa !35
  %5839 = load i64, i64* %3646, align 8, !tbaa !25
  %5840 = trunc i64 %5839 to i8
  %5841 = icmp eq i8 %5840, 0
  %5842 = bitcast i32* %5389 to i64*
  %5843 = load volatile i64, i64* %5842, align 4, !tbaa !25
  %5844 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %5845 = select i1 %5841, i64 0, i64 %5844
  %5846 = or i64 %5843, %5845
  %5847 = trunc i64 %5846 to i32
  store volatile i32 %5847, i32* %5389, align 4, !tbaa !35
  %5848 = load i64, i64* %3657, align 8, !tbaa !25
  %5849 = trunc i64 %5848 to i8
  %5850 = icmp eq i8 %5849, 0
  %5851 = bitcast i32* %5388 to i64*
  %5852 = load volatile i64, i64* %5851, align 8, !tbaa !25
  %5853 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %5854 = select i1 %5850, i64 0, i64 %5853
  %5855 = or i64 %5852, %5854
  %5856 = trunc i64 %5855 to i32
  store volatile i32 %5856, i32* %5388, align 8, !tbaa !35
  %5857 = load i64, i64* %3668, align 16, !tbaa !25
  %5858 = trunc i64 %5857 to i8
  %5859 = icmp eq i8 %5858, 0
  %5860 = bitcast i32* %5389 to i64*
  %5861 = load volatile i64, i64* %5860, align 4, !tbaa !25
  %5862 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %5863 = select i1 %5859, i64 0, i64 %5862
  %5864 = or i64 %5861, %5863
  %5865 = trunc i64 %5864 to i32
  store volatile i32 %5865, i32* %5389, align 4, !tbaa !35
  %5866 = load i64, i64* %3679, align 8, !tbaa !25
  %5867 = trunc i64 %5866 to i8
  %5868 = icmp eq i8 %5867, 0
  %5869 = bitcast i32* %5388 to i64*
  %5870 = load volatile i64, i64* %5869, align 8, !tbaa !25
  %5871 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %5872 = select i1 %5868, i64 0, i64 %5871
  %5873 = or i64 %5870, %5872
  %5874 = trunc i64 %5873 to i32
  store volatile i32 %5874, i32* %5388, align 8, !tbaa !35
  %5875 = load i64, i64* %3690, align 8, !tbaa !25
  %5876 = trunc i64 %5875 to i8
  %5877 = icmp eq i8 %5876, 0
  %5878 = bitcast i32* %5389 to i64*
  %5879 = load volatile i64, i64* %5878, align 4, !tbaa !25
  %5880 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %5881 = select i1 %5877, i64 0, i64 %5880
  %5882 = or i64 %5879, %5881
  %5883 = trunc i64 %5882 to i32
  store volatile i32 %5883, i32* %5389, align 4, !tbaa !35
  %5884 = load i64, i64* %3701, align 8, !tbaa !25
  %5885 = trunc i64 %5884 to i8
  %5886 = icmp eq i8 %5885, 0
  %5887 = bitcast i32* %5388 to i64*
  %5888 = load volatile i64, i64* %5887, align 8, !tbaa !25
  %5889 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %5890 = select i1 %5886, i64 0, i64 %5889
  %5891 = or i64 %5888, %5890
  %5892 = trunc i64 %5891 to i32
  store volatile i32 %5892, i32* %5388, align 8, !tbaa !35
  %5893 = load i64, i64* %3712, align 8, !tbaa !25
  %5894 = trunc i64 %5893 to i8
  %5895 = icmp eq i8 %5894, 0
  %5896 = bitcast i32* %5389 to i64*
  %5897 = load volatile i64, i64* %5896, align 4, !tbaa !25
  %5898 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %5899 = select i1 %5895, i64 0, i64 %5898
  %5900 = or i64 %5897, %5899
  %5901 = trunc i64 %5900 to i32
  store volatile i32 %5901, i32* %5389, align 4, !tbaa !35
  %5902 = load i64, i64* %3723, align 8, !tbaa !25
  %5903 = trunc i64 %5902 to i8
  %5904 = icmp eq i8 %5903, 0
  %5905 = bitcast i32* %5388 to i64*
  %5906 = load volatile i64, i64* %5905, align 8, !tbaa !25
  %5907 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %5908 = select i1 %5904, i64 0, i64 %5907
  %5909 = or i64 %5906, %5908
  %5910 = trunc i64 %5909 to i32
  store volatile i32 %5910, i32* %5388, align 8, !tbaa !35
  %5911 = load i64, i64* %3734, align 16, !tbaa !25
  %5912 = trunc i64 %5911 to i8
  %5913 = icmp eq i8 %5912, 0
  %5914 = bitcast i32* %5389 to i64*
  %5915 = load volatile i64, i64* %5914, align 4, !tbaa !25
  %5916 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %5917 = select i1 %5913, i64 0, i64 %5916
  %5918 = or i64 %5915, %5917
  %5919 = trunc i64 %5918 to i32
  store volatile i32 %5919, i32* %5389, align 4, !tbaa !35
  %5920 = load i64, i64* %3745, align 8, !tbaa !25
  %5921 = trunc i64 %5920 to i8
  %5922 = icmp eq i8 %5921, 0
  %5923 = bitcast i32* %5388 to i64*
  %5924 = load volatile i64, i64* %5923, align 8, !tbaa !25
  %5925 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %5926 = select i1 %5922, i64 0, i64 %5925
  %5927 = or i64 %5924, %5926
  %5928 = trunc i64 %5927 to i32
  store volatile i32 %5928, i32* %5388, align 8, !tbaa !35
  %5929 = load i64, i64* %3756, align 8, !tbaa !25
  %5930 = trunc i64 %5929 to i8
  %5931 = icmp eq i8 %5930, 0
  %5932 = bitcast i32* %5389 to i64*
  %5933 = load volatile i64, i64* %5932, align 4, !tbaa !25
  %5934 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %5935 = select i1 %5931, i64 0, i64 %5934
  %5936 = or i64 %5933, %5935
  %5937 = trunc i64 %5936 to i32
  store volatile i32 %5937, i32* %5389, align 4, !tbaa !35
  %5938 = load i64, i64* %3767, align 8, !tbaa !25
  %5939 = trunc i64 %5938 to i8
  %5940 = icmp eq i8 %5939, 0
  %5941 = bitcast i32* %5388 to i64*
  %5942 = load volatile i64, i64* %5941, align 8, !tbaa !25
  %5943 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %5944 = select i1 %5940, i64 0, i64 %5943
  %5945 = or i64 %5942, %5944
  %5946 = trunc i64 %5945 to i32
  store volatile i32 %5946, i32* %5388, align 8, !tbaa !35
  %5947 = load i64, i64* %3778, align 8, !tbaa !25
  %5948 = trunc i64 %5947 to i8
  %5949 = icmp eq i8 %5948, 0
  %5950 = bitcast i32* %5389 to i64*
  %5951 = load volatile i64, i64* %5950, align 4, !tbaa !25
  %5952 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %5953 = select i1 %5949, i64 0, i64 %5952
  %5954 = or i64 %5951, %5953
  %5955 = trunc i64 %5954 to i32
  store volatile i32 %5955, i32* %5389, align 4, !tbaa !35
  %5956 = load i64, i64* %3789, align 8, !tbaa !25
  %5957 = trunc i64 %5956 to i8
  %5958 = icmp eq i8 %5957, 0
  %5959 = bitcast i32* %5388 to i64*
  %5960 = load volatile i64, i64* %5959, align 8, !tbaa !25
  %5961 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %5962 = select i1 %5958, i64 0, i64 %5961
  %5963 = or i64 %5960, %5962
  %5964 = trunc i64 %5963 to i32
  store volatile i32 %5964, i32* %5388, align 8, !tbaa !35
  %5965 = load i64, i64* %3800, align 8, !tbaa !25
  %5966 = trunc i64 %5965 to i8
  %5967 = icmp eq i8 %5966, 0
  %5968 = bitcast i32* %5389 to i64*
  %5969 = load volatile i64, i64* %5968, align 4, !tbaa !25
  %5970 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %5971 = select i1 %5967, i64 0, i64 %5970
  %5972 = or i64 %5969, %5971
  %5973 = trunc i64 %5972 to i32
  store volatile i32 %5973, i32* %5389, align 4, !tbaa !35
  %5974 = load i64, i64* %3811, align 8, !tbaa !25
  %5975 = trunc i64 %5974 to i8
  %5976 = icmp eq i8 %5975, 0
  %5977 = bitcast i32* %5388 to i64*
  %5978 = load volatile i64, i64* %5977, align 8, !tbaa !25
  %5979 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %5980 = select i1 %5976, i64 0, i64 %5979
  %5981 = or i64 %5978, %5980
  %5982 = trunc i64 %5981 to i32
  store volatile i32 %5982, i32* %5388, align 8, !tbaa !35
  %5983 = load i64, i64* %3822, align 8, !tbaa !25
  %5984 = trunc i64 %5983 to i8
  %5985 = icmp eq i8 %5984, 0
  %5986 = bitcast i32* %5389 to i64*
  %5987 = load volatile i64, i64* %5986, align 4, !tbaa !25
  %5988 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %5989 = select i1 %5985, i64 0, i64 %5988
  %5990 = or i64 %5987, %5989
  %5991 = trunc i64 %5990 to i32
  store volatile i32 %5991, i32* %5389, align 4, !tbaa !35
  %5992 = load i64, i64* %3833, align 8, !tbaa !25
  %5993 = trunc i64 %5992 to i8
  %5994 = icmp eq i8 %5993, 0
  %5995 = bitcast i32* %5388 to i64*
  %5996 = load volatile i64, i64* %5995, align 8, !tbaa !25
  %5997 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %5998 = select i1 %5994, i64 0, i64 %5997
  %5999 = or i64 %5996, %5998
  %6000 = trunc i64 %5999 to i32
  store volatile i32 %6000, i32* %5388, align 8, !tbaa !35
  %6001 = load i64, i64* %3844, align 8, !tbaa !25
  %6002 = trunc i64 %6001 to i8
  %6003 = icmp eq i8 %6002, 0
  %6004 = bitcast i32* %5389 to i64*
  %6005 = load volatile i64, i64* %6004, align 4, !tbaa !25
  %6006 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %6007 = select i1 %6003, i64 0, i64 %6006
  %6008 = or i64 %6005, %6007
  %6009 = trunc i64 %6008 to i32
  store volatile i32 %6009, i32* %5389, align 4, !tbaa !35
  %6010 = load i64, i64* %3855, align 8, !tbaa !25
  %6011 = trunc i64 %6010 to i8
  %6012 = icmp eq i8 %6011, 0
  %6013 = bitcast i32* %5388 to i64*
  %6014 = load volatile i64, i64* %6013, align 8, !tbaa !25
  %6015 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %6016 = select i1 %6012, i64 0, i64 %6015
  %6017 = or i64 %6014, %6016
  %6018 = trunc i64 %6017 to i32
  store volatile i32 %6018, i32* %5388, align 8, !tbaa !35
  %6019 = load i64, i64* %3866, align 8, !tbaa !25
  %6020 = trunc i64 %6019 to i8
  %6021 = icmp eq i8 %6020, 0
  %6022 = bitcast i32* %5389 to i64*
  %6023 = load volatile i64, i64* %6022, align 4, !tbaa !25
  %6024 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %6025 = select i1 %6021, i64 0, i64 %6024
  %6026 = or i64 %6023, %6025
  %6027 = trunc i64 %6026 to i32
  store volatile i32 %6027, i32* %5389, align 4, !tbaa !35
  %6028 = load i64, i64* %3877, align 8, !tbaa !25
  %6029 = trunc i64 %6028 to i8
  %6030 = icmp eq i8 %6029, 0
  %6031 = bitcast i32* %5388 to i64*
  %6032 = load volatile i64, i64* %6031, align 8, !tbaa !25
  %6033 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %6034 = select i1 %6030, i64 0, i64 %6033
  %6035 = or i64 %6032, %6034
  %6036 = trunc i64 %6035 to i32
  store volatile i32 %6036, i32* %5388, align 8, !tbaa !35
  %6037 = load i64, i64* %3888, align 8, !tbaa !25
  %6038 = trunc i64 %6037 to i8
  %6039 = icmp eq i8 %6038, 0
  %6040 = bitcast i32* %5389 to i64*
  %6041 = load volatile i64, i64* %6040, align 4, !tbaa !25
  %6042 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %6043 = select i1 %6039, i64 0, i64 %6042
  %6044 = or i64 %6041, %6043
  %6045 = trunc i64 %6044 to i32
  store volatile i32 %6045, i32* %5389, align 4, !tbaa !35
  %6046 = load i64, i64* %3899, align 8, !tbaa !25
  %6047 = trunc i64 %6046 to i8
  %6048 = icmp eq i8 %6047, 0
  %6049 = bitcast i32* %5388 to i64*
  %6050 = load volatile i64, i64* %6049, align 8, !tbaa !25
  %6051 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %6052 = select i1 %6048, i64 0, i64 %6051
  %6053 = or i64 %6050, %6052
  %6054 = trunc i64 %6053 to i32
  store volatile i32 %6054, i32* %5388, align 8, !tbaa !35
  %6055 = load i64, i64* %3910, align 8, !tbaa !25
  %6056 = trunc i64 %6055 to i8
  %6057 = icmp eq i8 %6056, 0
  %6058 = bitcast i32* %5389 to i64*
  %6059 = load volatile i64, i64* %6058, align 4, !tbaa !25
  %6060 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %6061 = select i1 %6057, i64 0, i64 %6060
  %6062 = or i64 %6059, %6061
  %6063 = trunc i64 %6062 to i32
  store volatile i32 %6063, i32* %5389, align 4, !tbaa !35
  %6064 = load i64, i64* %3921, align 8, !tbaa !25
  %6065 = trunc i64 %6064 to i8
  %6066 = icmp eq i8 %6065, 0
  %6067 = bitcast i32* %5388 to i64*
  %6068 = load volatile i64, i64* %6067, align 8, !tbaa !25
  %6069 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %6070 = select i1 %6066, i64 0, i64 %6069
  %6071 = or i64 %6068, %6070
  %6072 = trunc i64 %6071 to i32
  store volatile i32 %6072, i32* %5388, align 8, !tbaa !35
  %6073 = load i64, i64* %3932, align 8, !tbaa !25
  %6074 = trunc i64 %6073 to i8
  %6075 = icmp eq i8 %6074, 0
  %6076 = bitcast i32* %5389 to i64*
  %6077 = load volatile i64, i64* %6076, align 4, !tbaa !25
  %6078 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %6079 = select i1 %6075, i64 0, i64 %6078
  %6080 = or i64 %6077, %6079
  %6081 = trunc i64 %6080 to i32
  store volatile i32 %6081, i32* %5389, align 4, !tbaa !35
  %6082 = load i64, i64* %3943, align 8, !tbaa !25
  %6083 = trunc i64 %6082 to i8
  %6084 = icmp eq i8 %6083, 0
  %6085 = bitcast i32* %5388 to i64*
  %6086 = load volatile i64, i64* %6085, align 8, !tbaa !25
  %6087 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %6088 = select i1 %6084, i64 0, i64 %6087
  %6089 = or i64 %6086, %6088
  %6090 = trunc i64 %6089 to i32
  store volatile i32 %6090, i32* %5388, align 8, !tbaa !35
  %6091 = load i64, i64* %3954, align 8, !tbaa !25
  %6092 = trunc i64 %6091 to i8
  %6093 = icmp eq i8 %6092, 0
  %6094 = bitcast i32* %5389 to i64*
  %6095 = load volatile i64, i64* %6094, align 4, !tbaa !25
  %6096 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %6097 = select i1 %6093, i64 0, i64 %6096
  %6098 = or i64 %6095, %6097
  %6099 = trunc i64 %6098 to i32
  store volatile i32 %6099, i32* %5389, align 4, !tbaa !35
  %6100 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 16
  store i32 0, i32* %6100, align 16, !tbaa !35
  %6101 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 17
  store i32 0, i32* %6101, align 4, !tbaa !35
  %6102 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 15
  %6103 = bitcast i8* %6102 to i64*
  %6104 = load i64, i64* %6103, align 8, !tbaa !25
  %6105 = trunc i64 %6104 to i8
  store i8 %6105, i8* %8, align 16, !tbaa !14
  %6106 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 16
  %6107 = bitcast i8* %6106 to i64*
  %6108 = load i64, i64* %6107, align 16, !tbaa !25
  %6109 = trunc i64 %6108 to i8
  %6110 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 1
  store i8 %6109, i8* %6110, align 1, !tbaa !14
  %6111 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 17
  %6112 = bitcast i8* %6111 to i64*
  %6113 = load i64, i64* %6112, align 8, !tbaa !25
  %6114 = trunc i64 %6113 to i8
  %6115 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 2
  store i8 %6114, i8* %6115, align 2, !tbaa !14
  %6116 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 18
  %6117 = bitcast i8* %6116 to i64*
  %6118 = load i64, i64* %6117, align 8, !tbaa !25
  %6119 = trunc i64 %6118 to i8
  %6120 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 3
  store i8 %6119, i8* %6120, align 1, !tbaa !14
  %6121 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 19
  %6122 = bitcast i8* %6121 to i64*
  %6123 = load i64, i64* %6122, align 8, !tbaa !25
  %6124 = trunc i64 %6123 to i8
  %6125 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 4
  store i8 %6124, i8* %6125, align 4, !tbaa !14
  %6126 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 20
  %6127 = bitcast i8* %6126 to i64*
  %6128 = load i64, i64* %6127, align 8, !tbaa !25
  %6129 = trunc i64 %6128 to i8
  %6130 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 5
  store i8 %6129, i8* %6130, align 1, !tbaa !14
  %6131 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 21
  %6132 = bitcast i8* %6131 to i64*
  %6133 = load i64, i64* %6132, align 8, !tbaa !25
  %6134 = trunc i64 %6133 to i8
  %6135 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 6
  store i8 %6134, i8* %6135, align 2, !tbaa !14
  %6136 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 22
  %6137 = bitcast i8* %6136 to i64*
  %6138 = load i64, i64* %6137, align 8, !tbaa !25
  %6139 = trunc i64 %6138 to i8
  %6140 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 7
  store i8 %6139, i8* %6140, align 1, !tbaa !14
  %6141 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 23
  %6142 = bitcast i8* %6141 to i64*
  %6143 = load i64, i64* %6142, align 8, !tbaa !25
  %6144 = trunc i64 %6143 to i8
  %6145 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 8
  store i8 %6144, i8* %6145, align 8, !tbaa !14
  %6146 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 24
  %6147 = bitcast i8* %6146 to i64*
  %6148 = load i64, i64* %6147, align 8, !tbaa !25
  %6149 = trunc i64 %6148 to i8
  %6150 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 9
  store i8 %6149, i8* %6150, align 1, !tbaa !14
  %6151 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 25
  %6152 = bitcast i8* %6151 to i64*
  %6153 = load i64, i64* %6152, align 8, !tbaa !25
  %6154 = trunc i64 %6153 to i8
  %6155 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 10
  store i8 %6154, i8* %6155, align 2, !tbaa !14
  %6156 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 26
  %6157 = bitcast i8* %6156 to i64*
  %6158 = load i64, i64* %6157, align 8, !tbaa !25
  %6159 = trunc i64 %6158 to i8
  %6160 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 11
  store i8 %6159, i8* %6160, align 1, !tbaa !14
  %6161 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 27
  %6162 = bitcast i8* %6161 to i64*
  %6163 = load i64, i64* %6162, align 8, !tbaa !25
  %6164 = trunc i64 %6163 to i8
  %6165 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 12
  store i8 %6164, i8* %6165, align 4, !tbaa !14
  %6166 = bitcast [56 x i8]* %4 to i64*
  %6167 = load i64, i64* %6166, align 16, !tbaa !25
  %6168 = trunc i64 %6167 to i8
  %6169 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 13
  store i8 %6168, i8* %6169, align 1, !tbaa !14
  %6170 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 1
  %6171 = bitcast i8* %6170 to i64*
  %6172 = load i64, i64* %6171, align 8, !tbaa !25
  %6173 = trunc i64 %6172 to i8
  %6174 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 14
  store i8 %6173, i8* %6174, align 2, !tbaa !14
  %6175 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 2
  %6176 = bitcast i8* %6175 to i64*
  %6177 = load i64, i64* %6176, align 8, !tbaa !25
  %6178 = trunc i64 %6177 to i8
  %6179 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 15
  store i8 %6178, i8* %6179, align 1, !tbaa !14
  %6180 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 3
  %6181 = bitcast i8* %6180 to i64*
  %6182 = load i64, i64* %6181, align 8, !tbaa !25
  %6183 = trunc i64 %6182 to i8
  %6184 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 16
  store i8 %6183, i8* %6184, align 16, !tbaa !14
  %6185 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 4
  %6186 = bitcast i8* %6185 to i64*
  %6187 = load i64, i64* %6186, align 8, !tbaa !25
  %6188 = trunc i64 %6187 to i8
  %6189 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 17
  store i8 %6188, i8* %6189, align 1, !tbaa !14
  %6190 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 5
  %6191 = bitcast i8* %6190 to i64*
  %6192 = load i64, i64* %6191, align 8, !tbaa !25
  %6193 = trunc i64 %6192 to i8
  %6194 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 18
  store i8 %6193, i8* %6194, align 2, !tbaa !14
  %6195 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 6
  %6196 = bitcast i8* %6195 to i64*
  %6197 = load i64, i64* %6196, align 8, !tbaa !25
  %6198 = trunc i64 %6197 to i8
  %6199 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 19
  store i8 %6198, i8* %6199, align 1, !tbaa !14
  %6200 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 7
  %6201 = bitcast i8* %6200 to i64*
  %6202 = load i64, i64* %6201, align 8, !tbaa !25
  %6203 = trunc i64 %6202 to i8
  %6204 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 20
  store i8 %6203, i8* %6204, align 4, !tbaa !14
  %6205 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 8
  %6206 = bitcast i8* %6205 to i64*
  %6207 = load i64, i64* %6206, align 8, !tbaa !25
  %6208 = trunc i64 %6207 to i8
  %6209 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 21
  store i8 %6208, i8* %6209, align 1, !tbaa !14
  %6210 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 9
  %6211 = bitcast i8* %6210 to i64*
  %6212 = load i64, i64* %6211, align 8, !tbaa !25
  %6213 = trunc i64 %6212 to i8
  %6214 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 22
  store i8 %6213, i8* %6214, align 2, !tbaa !14
  %6215 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 10
  %6216 = bitcast i8* %6215 to i64*
  %6217 = load i64, i64* %6216, align 8, !tbaa !25
  %6218 = trunc i64 %6217 to i8
  %6219 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 23
  store i8 %6218, i8* %6219, align 1, !tbaa !14
  %6220 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 11
  %6221 = bitcast i8* %6220 to i64*
  %6222 = load i64, i64* %6221, align 8, !tbaa !25
  %6223 = trunc i64 %6222 to i8
  %6224 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 24
  store i8 %6223, i8* %6224, align 8, !tbaa !14
  %6225 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 12
  %6226 = bitcast i8* %6225 to i64*
  %6227 = load i64, i64* %6226, align 8, !tbaa !25
  %6228 = trunc i64 %6227 to i8
  %6229 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 25
  store i8 %6228, i8* %6229, align 1, !tbaa !14
  %6230 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 13
  %6231 = bitcast i8* %6230 to i64*
  %6232 = load i64, i64* %6231, align 8, !tbaa !25
  %6233 = trunc i64 %6232 to i8
  %6234 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 26
  store i8 %6233, i8* %6234, align 2, !tbaa !14
  %6235 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 14
  %6236 = bitcast i8* %6235 to i64*
  %6237 = load i64, i64* %6236, align 8, !tbaa !25
  %6238 = trunc i64 %6237 to i8
  %6239 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 27
  store i8 %6238, i8* %6239, align 1, !tbaa !14
  %6240 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 43
  %6241 = bitcast i8* %6240 to i64*
  %6242 = load i64, i64* %6241, align 8, !tbaa !25
  %6243 = trunc i64 %6242 to i8
  %6244 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 28
  store i8 %6243, i8* %6244, align 4, !tbaa !14
  %6245 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 44
  %6246 = bitcast i8* %6245 to i64*
  %6247 = load i64, i64* %6246, align 8, !tbaa !25
  %6248 = trunc i64 %6247 to i8
  %6249 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 29
  store i8 %6248, i8* %6249, align 1, !tbaa !14
  %6250 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 45
  %6251 = bitcast i8* %6250 to i64*
  %6252 = load i64, i64* %6251, align 8, !tbaa !25
  %6253 = trunc i64 %6252 to i8
  %6254 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 30
  store i8 %6253, i8* %6254, align 2, !tbaa !14
  %6255 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 46
  %6256 = bitcast i8* %6255 to i64*
  %6257 = load i64, i64* %6256, align 8, !tbaa !25
  %6258 = trunc i64 %6257 to i8
  %6259 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 31
  store i8 %6258, i8* %6259, align 1, !tbaa !14
  %6260 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 47
  %6261 = bitcast i8* %6260 to i64*
  %6262 = load i64, i64* %6261, align 8, !tbaa !25
  %6263 = trunc i64 %6262 to i8
  %6264 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 32
  store i8 %6263, i8* %6264, align 16, !tbaa !14
  %6265 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 48
  %6266 = bitcast i8* %6265 to i64*
  %6267 = load i64, i64* %6266, align 16, !tbaa !25
  %6268 = trunc i64 %6267 to i8
  %6269 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 33
  store i8 %6268, i8* %6269, align 1, !tbaa !14
  %6270 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 49
  %6271 = bitcast i8* %6270 to i64*
  %6272 = load i64, i64* %6271, align 8, !tbaa !25
  %6273 = trunc i64 %6272 to i8
  %6274 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 34
  store i8 %6273, i8* %6274, align 2, !tbaa !14
  %6275 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 50
  %6276 = bitcast i8* %6275 to i64*
  %6277 = load i64, i64* %6276, align 8, !tbaa !25
  %6278 = trunc i64 %6277 to i8
  %6279 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 35
  store i8 %6278, i8* %6279, align 1, !tbaa !14
  %6280 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 51
  %6281 = bitcast i8* %6280 to i64*
  %6282 = load i64, i64* %6281, align 8, !tbaa !25
  %6283 = trunc i64 %6282 to i8
  %6284 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 36
  store i8 %6283, i8* %6284, align 4, !tbaa !14
  %6285 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 52
  %6286 = bitcast i8* %6285 to i64*
  %6287 = load i64, i64* %6286, align 8, !tbaa !25
  %6288 = trunc i64 %6287 to i8
  %6289 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 37
  store i8 %6288, i8* %6289, align 1, !tbaa !14
  %6290 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 53
  %6291 = bitcast i8* %6290 to i64*
  %6292 = load i64, i64* %6291, align 8, !tbaa !25
  %6293 = trunc i64 %6292 to i8
  %6294 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 38
  store i8 %6293, i8* %6294, align 2, !tbaa !14
  %6295 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 54
  %6296 = bitcast i8* %6295 to i64*
  %6297 = load i64, i64* %6296, align 8, !tbaa !25
  %6298 = trunc i64 %6297 to i8
  %6299 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 39
  store i8 %6298, i8* %6299, align 1, !tbaa !14
  %6300 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 55
  %6301 = bitcast i8* %6300 to i64*
  %6302 = load i64, i64* %6301, align 8, !tbaa !25
  %6303 = trunc i64 %6302 to i8
  %6304 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 40
  store i8 %6303, i8* %6304, align 8, !tbaa !14
  %6305 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 28
  %6306 = bitcast i8* %6305 to i64*
  %6307 = load i64, i64* %6306, align 8, !tbaa !25
  %6308 = trunc i64 %6307 to i8
  %6309 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 41
  store i8 %6308, i8* %6309, align 1, !tbaa !14
  %6310 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 29
  %6311 = bitcast i8* %6310 to i64*
  %6312 = load i64, i64* %6311, align 8, !tbaa !25
  %6313 = trunc i64 %6312 to i8
  %6314 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 42
  store i8 %6313, i8* %6314, align 2, !tbaa !14
  %6315 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 30
  %6316 = bitcast i8* %6315 to i64*
  %6317 = load i64, i64* %6316, align 8, !tbaa !25
  %6318 = trunc i64 %6317 to i8
  %6319 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 43
  store i8 %6318, i8* %6319, align 1, !tbaa !14
  %6320 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 31
  %6321 = bitcast i8* %6320 to i64*
  %6322 = load i64, i64* %6321, align 8, !tbaa !25
  %6323 = trunc i64 %6322 to i8
  %6324 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 44
  store i8 %6323, i8* %6324, align 4, !tbaa !14
  %6325 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 32
  %6326 = bitcast i8* %6325 to i64*
  %6327 = load i64, i64* %6326, align 16, !tbaa !25
  %6328 = trunc i64 %6327 to i8
  %6329 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 45
  store i8 %6328, i8* %6329, align 1, !tbaa !14
  %6330 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 33
  %6331 = bitcast i8* %6330 to i64*
  %6332 = load i64, i64* %6331, align 8, !tbaa !25
  %6333 = trunc i64 %6332 to i8
  %6334 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 46
  store i8 %6333, i8* %6334, align 2, !tbaa !14
  %6335 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 34
  %6336 = bitcast i8* %6335 to i64*
  %6337 = load i64, i64* %6336, align 8, !tbaa !25
  %6338 = trunc i64 %6337 to i8
  %6339 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 47
  store i8 %6338, i8* %6339, align 1, !tbaa !14
  %6340 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 35
  %6341 = bitcast i8* %6340 to i64*
  %6342 = load i64, i64* %6341, align 8, !tbaa !25
  %6343 = trunc i64 %6342 to i8
  %6344 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 48
  store i8 %6343, i8* %6344, align 16, !tbaa !14
  %6345 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 36
  %6346 = bitcast i8* %6345 to i64*
  %6347 = load i64, i64* %6346, align 8, !tbaa !25
  %6348 = trunc i64 %6347 to i8
  %6349 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 49
  store i8 %6348, i8* %6349, align 1, !tbaa !14
  %6350 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 37
  %6351 = bitcast i8* %6350 to i64*
  %6352 = load i64, i64* %6351, align 8, !tbaa !25
  %6353 = trunc i64 %6352 to i8
  %6354 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 50
  store i8 %6353, i8* %6354, align 2, !tbaa !14
  %6355 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 38
  %6356 = bitcast i8* %6355 to i64*
  %6357 = load i64, i64* %6356, align 8, !tbaa !25
  %6358 = trunc i64 %6357 to i8
  %6359 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 51
  store i8 %6358, i8* %6359, align 1, !tbaa !14
  %6360 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 39
  %6361 = bitcast i8* %6360 to i64*
  %6362 = load i64, i64* %6361, align 8, !tbaa !25
  %6363 = trunc i64 %6362 to i8
  %6364 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 52
  store i8 %6363, i8* %6364, align 4, !tbaa !14
  %6365 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 40
  %6366 = bitcast i8* %6365 to i64*
  %6367 = load i64, i64* %6366, align 8, !tbaa !25
  %6368 = trunc i64 %6367 to i8
  %6369 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 53
  store i8 %6368, i8* %6369, align 1, !tbaa !14
  %6370 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 41
  %6371 = bitcast i8* %6370 to i64*
  %6372 = load i64, i64* %6371, align 8, !tbaa !25
  %6373 = trunc i64 %6372 to i8
  %6374 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 54
  store i8 %6373, i8* %6374, align 2, !tbaa !14
  %6375 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 42
  %6376 = bitcast i8* %6375 to i64*
  %6377 = load i64, i64* %6376, align 8, !tbaa !25
  %6378 = trunc i64 %6377 to i8
  %6379 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 55
  store i8 %6378, i8* %6379, align 1, !tbaa !14
  %6380 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 13
  %6381 = bitcast i8* %6380 to i64*
  %6382 = load i64, i64* %6381, align 8, !tbaa !25
  %6383 = trunc i64 %6382 to i8
  %6384 = icmp eq i8 %6383, 0
  %6385 = bitcast i32* %6100 to i64*
  %6386 = load volatile i64, i64* %6385, align 16, !tbaa !25
  %6387 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %6388 = select i1 %6384, i64 0, i64 %6387
  %6389 = or i64 %6386, %6388
  %6390 = trunc i64 %6389 to i32
  store volatile i32 %6390, i32* %6100, align 16, !tbaa !35
  %6391 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 40
  %6392 = bitcast i8* %6391 to i64*
  %6393 = load i64, i64* %6392, align 8, !tbaa !25
  %6394 = trunc i64 %6393 to i8
  %6395 = icmp eq i8 %6394, 0
  %6396 = bitcast i32* %6101 to i64*
  %6397 = load volatile i64, i64* %6396, align 4, !tbaa !25
  %6398 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %6399 = select i1 %6395, i64 0, i64 %6398
  %6400 = or i64 %6397, %6399
  %6401 = trunc i64 %6400 to i32
  store volatile i32 %6401, i32* %6101, align 4, !tbaa !35
  %6402 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 16
  %6403 = bitcast i8* %6402 to i64*
  %6404 = load i64, i64* %6403, align 16, !tbaa !25
  %6405 = trunc i64 %6404 to i8
  %6406 = icmp eq i8 %6405, 0
  %6407 = bitcast i32* %6100 to i64*
  %6408 = load volatile i64, i64* %6407, align 16, !tbaa !25
  %6409 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %6410 = select i1 %6406, i64 0, i64 %6409
  %6411 = or i64 %6408, %6410
  %6412 = trunc i64 %6411 to i32
  store volatile i32 %6412, i32* %6100, align 16, !tbaa !35
  %6413 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 51
  %6414 = bitcast i8* %6413 to i64*
  %6415 = load i64, i64* %6414, align 8, !tbaa !25
  %6416 = trunc i64 %6415 to i8
  %6417 = icmp eq i8 %6416, 0
  %6418 = bitcast i32* %6101 to i64*
  %6419 = load volatile i64, i64* %6418, align 4, !tbaa !25
  %6420 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %6421 = select i1 %6417, i64 0, i64 %6420
  %6422 = or i64 %6419, %6421
  %6423 = trunc i64 %6422 to i32
  store volatile i32 %6423, i32* %6101, align 4, !tbaa !35
  %6424 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 10
  %6425 = bitcast i8* %6424 to i64*
  %6426 = load i64, i64* %6425, align 8, !tbaa !25
  %6427 = trunc i64 %6426 to i8
  %6428 = icmp eq i8 %6427, 0
  %6429 = bitcast i32* %6100 to i64*
  %6430 = load volatile i64, i64* %6429, align 16, !tbaa !25
  %6431 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %6432 = select i1 %6428, i64 0, i64 %6431
  %6433 = or i64 %6430, %6432
  %6434 = trunc i64 %6433 to i32
  store volatile i32 %6434, i32* %6100, align 16, !tbaa !35
  %6435 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 30
  %6436 = bitcast i8* %6435 to i64*
  %6437 = load i64, i64* %6436, align 8, !tbaa !25
  %6438 = trunc i64 %6437 to i8
  %6439 = icmp eq i8 %6438, 0
  %6440 = bitcast i32* %6101 to i64*
  %6441 = load volatile i64, i64* %6440, align 4, !tbaa !25
  %6442 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %6443 = select i1 %6439, i64 0, i64 %6442
  %6444 = or i64 %6441, %6443
  %6445 = trunc i64 %6444 to i32
  store volatile i32 %6445, i32* %6101, align 4, !tbaa !35
  %6446 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 23
  %6447 = bitcast i8* %6446 to i64*
  %6448 = load i64, i64* %6447, align 8, !tbaa !25
  %6449 = trunc i64 %6448 to i8
  %6450 = icmp eq i8 %6449, 0
  %6451 = bitcast i32* %6100 to i64*
  %6452 = load volatile i64, i64* %6451, align 16, !tbaa !25
  %6453 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %6454 = select i1 %6450, i64 0, i64 %6453
  %6455 = or i64 %6452, %6454
  %6456 = trunc i64 %6455 to i32
  store volatile i32 %6456, i32* %6100, align 16, !tbaa !35
  %6457 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 36
  %6458 = bitcast i8* %6457 to i64*
  %6459 = load i64, i64* %6458, align 8, !tbaa !25
  %6460 = trunc i64 %6459 to i8
  %6461 = icmp eq i8 %6460, 0
  %6462 = bitcast i32* %6101 to i64*
  %6463 = load volatile i64, i64* %6462, align 4, !tbaa !25
  %6464 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %6465 = select i1 %6461, i64 0, i64 %6464
  %6466 = or i64 %6463, %6465
  %6467 = trunc i64 %6466 to i32
  store volatile i32 %6467, i32* %6101, align 4, !tbaa !35
  %6468 = bitcast [56 x i8]* %3 to i64*
  %6469 = load i64, i64* %6468, align 16, !tbaa !25
  %6470 = trunc i64 %6469 to i8
  %6471 = icmp eq i8 %6470, 0
  %6472 = bitcast i32* %6100 to i64*
  %6473 = load volatile i64, i64* %6472, align 16, !tbaa !25
  %6474 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %6475 = select i1 %6471, i64 0, i64 %6474
  %6476 = or i64 %6473, %6475
  %6477 = trunc i64 %6476 to i32
  store volatile i32 %6477, i32* %6100, align 16, !tbaa !35
  %6478 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 46
  %6479 = bitcast i8* %6478 to i64*
  %6480 = load i64, i64* %6479, align 8, !tbaa !25
  %6481 = trunc i64 %6480 to i8
  %6482 = icmp eq i8 %6481, 0
  %6483 = bitcast i32* %6101 to i64*
  %6484 = load volatile i64, i64* %6483, align 4, !tbaa !25
  %6485 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %6486 = select i1 %6482, i64 0, i64 %6485
  %6487 = or i64 %6484, %6486
  %6488 = trunc i64 %6487 to i32
  store volatile i32 %6488, i32* %6101, align 4, !tbaa !35
  %6489 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 4
  %6490 = bitcast i8* %6489 to i64*
  %6491 = load i64, i64* %6490, align 8, !tbaa !25
  %6492 = trunc i64 %6491 to i8
  %6493 = icmp eq i8 %6492, 0
  %6494 = bitcast i32* %6100 to i64*
  %6495 = load volatile i64, i64* %6494, align 16, !tbaa !25
  %6496 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %6497 = select i1 %6493, i64 0, i64 %6496
  %6498 = or i64 %6495, %6497
  %6499 = trunc i64 %6498 to i32
  store volatile i32 %6499, i32* %6100, align 16, !tbaa !35
  %6500 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 54
  %6501 = bitcast i8* %6500 to i64*
  %6502 = load i64, i64* %6501, align 8, !tbaa !25
  %6503 = trunc i64 %6502 to i8
  %6504 = icmp eq i8 %6503, 0
  %6505 = bitcast i32* %6101 to i64*
  %6506 = load volatile i64, i64* %6505, align 4, !tbaa !25
  %6507 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %6508 = select i1 %6504, i64 0, i64 %6507
  %6509 = or i64 %6506, %6508
  %6510 = trunc i64 %6509 to i32
  store volatile i32 %6510, i32* %6101, align 4, !tbaa !35
  %6511 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 2
  %6512 = bitcast i8* %6511 to i64*
  %6513 = load i64, i64* %6512, align 8, !tbaa !25
  %6514 = trunc i64 %6513 to i8
  %6515 = icmp eq i8 %6514, 0
  %6516 = bitcast i32* %6100 to i64*
  %6517 = load volatile i64, i64* %6516, align 16, !tbaa !25
  %6518 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %6519 = select i1 %6515, i64 0, i64 %6518
  %6520 = or i64 %6517, %6519
  %6521 = trunc i64 %6520 to i32
  store volatile i32 %6521, i32* %6100, align 16, !tbaa !35
  %6522 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 29
  %6523 = bitcast i8* %6522 to i64*
  %6524 = load i64, i64* %6523, align 8, !tbaa !25
  %6525 = trunc i64 %6524 to i8
  %6526 = icmp eq i8 %6525, 0
  %6527 = bitcast i32* %6101 to i64*
  %6528 = load volatile i64, i64* %6527, align 4, !tbaa !25
  %6529 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %6530 = select i1 %6526, i64 0, i64 %6529
  %6531 = or i64 %6528, %6530
  %6532 = trunc i64 %6531 to i32
  store volatile i32 %6532, i32* %6101, align 4, !tbaa !35
  %6533 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 27
  %6534 = bitcast i8* %6533 to i64*
  %6535 = load i64, i64* %6534, align 8, !tbaa !25
  %6536 = trunc i64 %6535 to i8
  %6537 = icmp eq i8 %6536, 0
  %6538 = bitcast i32* %6100 to i64*
  %6539 = load volatile i64, i64* %6538, align 16, !tbaa !25
  %6540 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %6541 = select i1 %6537, i64 0, i64 %6540
  %6542 = or i64 %6539, %6541
  %6543 = trunc i64 %6542 to i32
  store volatile i32 %6543, i32* %6100, align 16, !tbaa !35
  %6544 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 39
  %6545 = bitcast i8* %6544 to i64*
  %6546 = load i64, i64* %6545, align 8, !tbaa !25
  %6547 = trunc i64 %6546 to i8
  %6548 = icmp eq i8 %6547, 0
  %6549 = bitcast i32* %6101 to i64*
  %6550 = load volatile i64, i64* %6549, align 4, !tbaa !25
  %6551 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %6552 = select i1 %6548, i64 0, i64 %6551
  %6553 = or i64 %6550, %6552
  %6554 = trunc i64 %6553 to i32
  store volatile i32 %6554, i32* %6101, align 4, !tbaa !35
  %6555 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 14
  %6556 = bitcast i8* %6555 to i64*
  %6557 = load i64, i64* %6556, align 8, !tbaa !25
  %6558 = trunc i64 %6557 to i8
  %6559 = icmp eq i8 %6558, 0
  %6560 = bitcast i32* %6100 to i64*
  %6561 = load volatile i64, i64* %6560, align 16, !tbaa !25
  %6562 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %6563 = select i1 %6559, i64 0, i64 %6562
  %6564 = or i64 %6561, %6563
  %6565 = trunc i64 %6564 to i32
  store volatile i32 %6565, i32* %6100, align 16, !tbaa !35
  %6566 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 50
  %6567 = bitcast i8* %6566 to i64*
  %6568 = load i64, i64* %6567, align 8, !tbaa !25
  %6569 = trunc i64 %6568 to i8
  %6570 = icmp eq i8 %6569, 0
  %6571 = bitcast i32* %6101 to i64*
  %6572 = load volatile i64, i64* %6571, align 4, !tbaa !25
  %6573 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %6574 = select i1 %6570, i64 0, i64 %6573
  %6575 = or i64 %6572, %6574
  %6576 = trunc i64 %6575 to i32
  store volatile i32 %6576, i32* %6101, align 4, !tbaa !35
  %6577 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 5
  %6578 = bitcast i8* %6577 to i64*
  %6579 = load i64, i64* %6578, align 8, !tbaa !25
  %6580 = trunc i64 %6579 to i8
  %6581 = icmp eq i8 %6580, 0
  %6582 = bitcast i32* %6100 to i64*
  %6583 = load volatile i64, i64* %6582, align 16, !tbaa !25
  %6584 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %6585 = select i1 %6581, i64 0, i64 %6584
  %6586 = or i64 %6583, %6585
  %6587 = trunc i64 %6586 to i32
  store volatile i32 %6587, i32* %6100, align 16, !tbaa !35
  %6588 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 44
  %6589 = bitcast i8* %6588 to i64*
  %6590 = load i64, i64* %6589, align 8, !tbaa !25
  %6591 = trunc i64 %6590 to i8
  %6592 = icmp eq i8 %6591, 0
  %6593 = bitcast i32* %6101 to i64*
  %6594 = load volatile i64, i64* %6593, align 4, !tbaa !25
  %6595 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %6596 = select i1 %6592, i64 0, i64 %6595
  %6597 = or i64 %6594, %6596
  %6598 = trunc i64 %6597 to i32
  store volatile i32 %6598, i32* %6101, align 4, !tbaa !35
  %6599 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 20
  %6600 = bitcast i8* %6599 to i64*
  %6601 = load i64, i64* %6600, align 8, !tbaa !25
  %6602 = trunc i64 %6601 to i8
  %6603 = icmp eq i8 %6602, 0
  %6604 = bitcast i32* %6100 to i64*
  %6605 = load volatile i64, i64* %6604, align 16, !tbaa !25
  %6606 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %6607 = select i1 %6603, i64 0, i64 %6606
  %6608 = or i64 %6605, %6607
  %6609 = trunc i64 %6608 to i32
  store volatile i32 %6609, i32* %6100, align 16, !tbaa !35
  %6610 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 32
  %6611 = bitcast i8* %6610 to i64*
  %6612 = load i64, i64* %6611, align 16, !tbaa !25
  %6613 = trunc i64 %6612 to i8
  %6614 = icmp eq i8 %6613, 0
  %6615 = bitcast i32* %6101 to i64*
  %6616 = load volatile i64, i64* %6615, align 4, !tbaa !25
  %6617 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %6618 = select i1 %6614, i64 0, i64 %6617
  %6619 = or i64 %6616, %6618
  %6620 = trunc i64 %6619 to i32
  store volatile i32 %6620, i32* %6101, align 4, !tbaa !35
  %6621 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 9
  %6622 = bitcast i8* %6621 to i64*
  %6623 = load i64, i64* %6622, align 8, !tbaa !25
  %6624 = trunc i64 %6623 to i8
  %6625 = icmp eq i8 %6624, 0
  %6626 = bitcast i32* %6100 to i64*
  %6627 = load volatile i64, i64* %6626, align 16, !tbaa !25
  %6628 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %6629 = select i1 %6625, i64 0, i64 %6628
  %6630 = or i64 %6627, %6629
  %6631 = trunc i64 %6630 to i32
  store volatile i32 %6631, i32* %6100, align 16, !tbaa !35
  %6632 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 47
  %6633 = bitcast i8* %6632 to i64*
  %6634 = load i64, i64* %6633, align 8, !tbaa !25
  %6635 = trunc i64 %6634 to i8
  %6636 = icmp eq i8 %6635, 0
  %6637 = bitcast i32* %6101 to i64*
  %6638 = load volatile i64, i64* %6637, align 4, !tbaa !25
  %6639 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %6640 = select i1 %6636, i64 0, i64 %6639
  %6641 = or i64 %6638, %6640
  %6642 = trunc i64 %6641 to i32
  store volatile i32 %6642, i32* %6101, align 4, !tbaa !35
  %6643 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 22
  %6644 = bitcast i8* %6643 to i64*
  %6645 = load i64, i64* %6644, align 8, !tbaa !25
  %6646 = trunc i64 %6645 to i8
  %6647 = icmp eq i8 %6646, 0
  %6648 = bitcast i32* %6100 to i64*
  %6649 = load volatile i64, i64* %6648, align 16, !tbaa !25
  %6650 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %6651 = select i1 %6647, i64 0, i64 %6650
  %6652 = or i64 %6649, %6651
  %6653 = trunc i64 %6652 to i32
  store volatile i32 %6653, i32* %6100, align 16, !tbaa !35
  %6654 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 43
  %6655 = bitcast i8* %6654 to i64*
  %6656 = load i64, i64* %6655, align 8, !tbaa !25
  %6657 = trunc i64 %6656 to i8
  %6658 = icmp eq i8 %6657, 0
  %6659 = bitcast i32* %6101 to i64*
  %6660 = load volatile i64, i64* %6659, align 4, !tbaa !25
  %6661 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %6662 = select i1 %6658, i64 0, i64 %6661
  %6663 = or i64 %6660, %6662
  %6664 = trunc i64 %6663 to i32
  store volatile i32 %6664, i32* %6101, align 4, !tbaa !35
  %6665 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 18
  %6666 = bitcast i8* %6665 to i64*
  %6667 = load i64, i64* %6666, align 8, !tbaa !25
  %6668 = trunc i64 %6667 to i8
  %6669 = icmp eq i8 %6668, 0
  %6670 = bitcast i32* %6100 to i64*
  %6671 = load volatile i64, i64* %6670, align 16, !tbaa !25
  %6672 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %6673 = select i1 %6669, i64 0, i64 %6672
  %6674 = or i64 %6671, %6673
  %6675 = trunc i64 %6674 to i32
  store volatile i32 %6675, i32* %6100, align 16, !tbaa !35
  %6676 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 48
  %6677 = bitcast i8* %6676 to i64*
  %6678 = load i64, i64* %6677, align 16, !tbaa !25
  %6679 = trunc i64 %6678 to i8
  %6680 = icmp eq i8 %6679, 0
  %6681 = bitcast i32* %6101 to i64*
  %6682 = load volatile i64, i64* %6681, align 4, !tbaa !25
  %6683 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %6684 = select i1 %6680, i64 0, i64 %6683
  %6685 = or i64 %6682, %6684
  %6686 = trunc i64 %6685 to i32
  store volatile i32 %6686, i32* %6101, align 4, !tbaa !35
  %6687 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 11
  %6688 = bitcast i8* %6687 to i64*
  %6689 = load i64, i64* %6688, align 8, !tbaa !25
  %6690 = trunc i64 %6689 to i8
  %6691 = icmp eq i8 %6690, 0
  %6692 = bitcast i32* %6100 to i64*
  %6693 = load volatile i64, i64* %6692, align 16, !tbaa !25
  %6694 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %6695 = select i1 %6691, i64 0, i64 %6694
  %6696 = or i64 %6693, %6695
  %6697 = trunc i64 %6696 to i32
  store volatile i32 %6697, i32* %6100, align 16, !tbaa !35
  %6698 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 38
  %6699 = bitcast i8* %6698 to i64*
  %6700 = load i64, i64* %6699, align 8, !tbaa !25
  %6701 = trunc i64 %6700 to i8
  %6702 = icmp eq i8 %6701, 0
  %6703 = bitcast i32* %6101 to i64*
  %6704 = load volatile i64, i64* %6703, align 4, !tbaa !25
  %6705 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %6706 = select i1 %6702, i64 0, i64 %6705
  %6707 = or i64 %6704, %6706
  %6708 = trunc i64 %6707 to i32
  store volatile i32 %6708, i32* %6101, align 4, !tbaa !35
  %6709 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 3
  %6710 = bitcast i8* %6709 to i64*
  %6711 = load i64, i64* %6710, align 8, !tbaa !25
  %6712 = trunc i64 %6711 to i8
  %6713 = icmp eq i8 %6712, 0
  %6714 = bitcast i32* %6100 to i64*
  %6715 = load volatile i64, i64* %6714, align 16, !tbaa !25
  %6716 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %6717 = select i1 %6713, i64 0, i64 %6716
  %6718 = or i64 %6715, %6717
  %6719 = trunc i64 %6718 to i32
  store volatile i32 %6719, i32* %6100, align 16, !tbaa !35
  %6720 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 55
  %6721 = bitcast i8* %6720 to i64*
  %6722 = load i64, i64* %6721, align 8, !tbaa !25
  %6723 = trunc i64 %6722 to i8
  %6724 = icmp eq i8 %6723, 0
  %6725 = bitcast i32* %6101 to i64*
  %6726 = load volatile i64, i64* %6725, align 4, !tbaa !25
  %6727 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %6728 = select i1 %6724, i64 0, i64 %6727
  %6729 = or i64 %6726, %6728
  %6730 = trunc i64 %6729 to i32
  store volatile i32 %6730, i32* %6101, align 4, !tbaa !35
  %6731 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 25
  %6732 = bitcast i8* %6731 to i64*
  %6733 = load i64, i64* %6732, align 8, !tbaa !25
  %6734 = trunc i64 %6733 to i8
  %6735 = icmp eq i8 %6734, 0
  %6736 = bitcast i32* %6100 to i64*
  %6737 = load volatile i64, i64* %6736, align 16, !tbaa !25
  %6738 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %6739 = select i1 %6735, i64 0, i64 %6738
  %6740 = or i64 %6737, %6739
  %6741 = trunc i64 %6740 to i32
  store volatile i32 %6741, i32* %6100, align 16, !tbaa !35
  %6742 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 33
  %6743 = bitcast i8* %6742 to i64*
  %6744 = load i64, i64* %6743, align 8, !tbaa !25
  %6745 = trunc i64 %6744 to i8
  %6746 = icmp eq i8 %6745, 0
  %6747 = bitcast i32* %6101 to i64*
  %6748 = load volatile i64, i64* %6747, align 4, !tbaa !25
  %6749 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %6750 = select i1 %6746, i64 0, i64 %6749
  %6751 = or i64 %6748, %6750
  %6752 = trunc i64 %6751 to i32
  store volatile i32 %6752, i32* %6101, align 4, !tbaa !35
  %6753 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 7
  %6754 = bitcast i8* %6753 to i64*
  %6755 = load i64, i64* %6754, align 8, !tbaa !25
  %6756 = trunc i64 %6755 to i8
  %6757 = icmp eq i8 %6756, 0
  %6758 = bitcast i32* %6100 to i64*
  %6759 = load volatile i64, i64* %6758, align 16, !tbaa !25
  %6760 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %6761 = select i1 %6757, i64 0, i64 %6760
  %6762 = or i64 %6759, %6761
  %6763 = trunc i64 %6762 to i32
  store volatile i32 %6763, i32* %6100, align 16, !tbaa !35
  %6764 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 52
  %6765 = bitcast i8* %6764 to i64*
  %6766 = load i64, i64* %6765, align 8, !tbaa !25
  %6767 = trunc i64 %6766 to i8
  %6768 = icmp eq i8 %6767, 0
  %6769 = bitcast i32* %6101 to i64*
  %6770 = load volatile i64, i64* %6769, align 4, !tbaa !25
  %6771 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %6772 = select i1 %6768, i64 0, i64 %6771
  %6773 = or i64 %6770, %6772
  %6774 = trunc i64 %6773 to i32
  store volatile i32 %6774, i32* %6101, align 4, !tbaa !35
  %6775 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 15
  %6776 = bitcast i8* %6775 to i64*
  %6777 = load i64, i64* %6776, align 8, !tbaa !25
  %6778 = trunc i64 %6777 to i8
  %6779 = icmp eq i8 %6778, 0
  %6780 = bitcast i32* %6100 to i64*
  %6781 = load volatile i64, i64* %6780, align 16, !tbaa !25
  %6782 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %6783 = select i1 %6779, i64 0, i64 %6782
  %6784 = or i64 %6781, %6783
  %6785 = trunc i64 %6784 to i32
  store volatile i32 %6785, i32* %6100, align 16, !tbaa !35
  %6786 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 45
  %6787 = bitcast i8* %6786 to i64*
  %6788 = load i64, i64* %6787, align 8, !tbaa !25
  %6789 = trunc i64 %6788 to i8
  %6790 = icmp eq i8 %6789, 0
  %6791 = bitcast i32* %6101 to i64*
  %6792 = load volatile i64, i64* %6791, align 4, !tbaa !25
  %6793 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %6794 = select i1 %6790, i64 0, i64 %6793
  %6795 = or i64 %6792, %6794
  %6796 = trunc i64 %6795 to i32
  store volatile i32 %6796, i32* %6101, align 4, !tbaa !35
  %6797 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 6
  %6798 = bitcast i8* %6797 to i64*
  %6799 = load i64, i64* %6798, align 8, !tbaa !25
  %6800 = trunc i64 %6799 to i8
  %6801 = icmp eq i8 %6800, 0
  %6802 = bitcast i32* %6100 to i64*
  %6803 = load volatile i64, i64* %6802, align 16, !tbaa !25
  %6804 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %6805 = select i1 %6801, i64 0, i64 %6804
  %6806 = or i64 %6803, %6805
  %6807 = trunc i64 %6806 to i32
  store volatile i32 %6807, i32* %6100, align 16, !tbaa !35
  %6808 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 41
  %6809 = bitcast i8* %6808 to i64*
  %6810 = load i64, i64* %6809, align 8, !tbaa !25
  %6811 = trunc i64 %6810 to i8
  %6812 = icmp eq i8 %6811, 0
  %6813 = bitcast i32* %6101 to i64*
  %6814 = load volatile i64, i64* %6813, align 4, !tbaa !25
  %6815 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %6816 = select i1 %6812, i64 0, i64 %6815
  %6817 = or i64 %6814, %6816
  %6818 = trunc i64 %6817 to i32
  store volatile i32 %6818, i32* %6101, align 4, !tbaa !35
  %6819 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 26
  %6820 = bitcast i8* %6819 to i64*
  %6821 = load i64, i64* %6820, align 8, !tbaa !25
  %6822 = trunc i64 %6821 to i8
  %6823 = icmp eq i8 %6822, 0
  %6824 = bitcast i32* %6100 to i64*
  %6825 = load volatile i64, i64* %6824, align 16, !tbaa !25
  %6826 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %6827 = select i1 %6823, i64 0, i64 %6826
  %6828 = or i64 %6825, %6827
  %6829 = trunc i64 %6828 to i32
  store volatile i32 %6829, i32* %6100, align 16, !tbaa !35
  %6830 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 49
  %6831 = bitcast i8* %6830 to i64*
  %6832 = load i64, i64* %6831, align 8, !tbaa !25
  %6833 = trunc i64 %6832 to i8
  %6834 = icmp eq i8 %6833, 0
  %6835 = bitcast i32* %6101 to i64*
  %6836 = load volatile i64, i64* %6835, align 4, !tbaa !25
  %6837 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %6838 = select i1 %6834, i64 0, i64 %6837
  %6839 = or i64 %6836, %6838
  %6840 = trunc i64 %6839 to i32
  store volatile i32 %6840, i32* %6101, align 4, !tbaa !35
  %6841 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 19
  %6842 = bitcast i8* %6841 to i64*
  %6843 = load i64, i64* %6842, align 8, !tbaa !25
  %6844 = trunc i64 %6843 to i8
  %6845 = icmp eq i8 %6844, 0
  %6846 = bitcast i32* %6100 to i64*
  %6847 = load volatile i64, i64* %6846, align 16, !tbaa !25
  %6848 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %6849 = select i1 %6845, i64 0, i64 %6848
  %6850 = or i64 %6847, %6849
  %6851 = trunc i64 %6850 to i32
  store volatile i32 %6851, i32* %6100, align 16, !tbaa !35
  %6852 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 35
  %6853 = bitcast i8* %6852 to i64*
  %6854 = load i64, i64* %6853, align 8, !tbaa !25
  %6855 = trunc i64 %6854 to i8
  %6856 = icmp eq i8 %6855, 0
  %6857 = bitcast i32* %6101 to i64*
  %6858 = load volatile i64, i64* %6857, align 4, !tbaa !25
  %6859 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %6860 = select i1 %6856, i64 0, i64 %6859
  %6861 = or i64 %6858, %6860
  %6862 = trunc i64 %6861 to i32
  store volatile i32 %6862, i32* %6101, align 4, !tbaa !35
  %6863 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 12
  %6864 = bitcast i8* %6863 to i64*
  %6865 = load i64, i64* %6864, align 8, !tbaa !25
  %6866 = trunc i64 %6865 to i8
  %6867 = icmp eq i8 %6866, 0
  %6868 = bitcast i32* %6100 to i64*
  %6869 = load volatile i64, i64* %6868, align 16, !tbaa !25
  %6870 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %6871 = select i1 %6867, i64 0, i64 %6870
  %6872 = or i64 %6869, %6871
  %6873 = trunc i64 %6872 to i32
  store volatile i32 %6873, i32* %6100, align 16, !tbaa !35
  %6874 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 28
  %6875 = bitcast i8* %6874 to i64*
  %6876 = load i64, i64* %6875, align 8, !tbaa !25
  %6877 = trunc i64 %6876 to i8
  %6878 = icmp eq i8 %6877, 0
  %6879 = bitcast i32* %6101 to i64*
  %6880 = load volatile i64, i64* %6879, align 4, !tbaa !25
  %6881 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %6882 = select i1 %6878, i64 0, i64 %6881
  %6883 = or i64 %6880, %6882
  %6884 = trunc i64 %6883 to i32
  store volatile i32 %6884, i32* %6101, align 4, !tbaa !35
  %6885 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 1
  %6886 = bitcast i8* %6885 to i64*
  %6887 = load i64, i64* %6886, align 8, !tbaa !25
  %6888 = trunc i64 %6887 to i8
  %6889 = icmp eq i8 %6888, 0
  %6890 = bitcast i32* %6100 to i64*
  %6891 = load volatile i64, i64* %6890, align 16, !tbaa !25
  %6892 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %6893 = select i1 %6889, i64 0, i64 %6892
  %6894 = or i64 %6891, %6893
  %6895 = trunc i64 %6894 to i32
  store volatile i32 %6895, i32* %6100, align 16, !tbaa !35
  %6896 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 31
  %6897 = bitcast i8* %6896 to i64*
  %6898 = load i64, i64* %6897, align 8, !tbaa !25
  %6899 = trunc i64 %6898 to i8
  %6900 = icmp eq i8 %6899, 0
  %6901 = bitcast i32* %6101 to i64*
  %6902 = load volatile i64, i64* %6901, align 4, !tbaa !25
  %6903 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %6904 = select i1 %6900, i64 0, i64 %6903
  %6905 = or i64 %6902, %6904
  %6906 = trunc i64 %6905 to i32
  store volatile i32 %6906, i32* %6101, align 4, !tbaa !35
  %6907 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 18
  store i32 0, i32* %6907, align 8, !tbaa !35
  %6908 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 19
  store i32 0, i32* %6908, align 4, !tbaa !35
  %6909 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 17
  %6910 = bitcast i8* %6909 to i64*
  %6911 = load i64, i64* %6910, align 8, !tbaa !25
  %6912 = trunc i64 %6911 to i8
  store i8 %6912, i8* %8, align 16, !tbaa !14
  %6913 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 18
  %6914 = bitcast i8* %6913 to i64*
  %6915 = load i64, i64* %6914, align 8, !tbaa !25
  %6916 = trunc i64 %6915 to i8
  %6917 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 1
  store i8 %6916, i8* %6917, align 1, !tbaa !14
  %6918 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 19
  %6919 = bitcast i8* %6918 to i64*
  %6920 = load i64, i64* %6919, align 8, !tbaa !25
  %6921 = trunc i64 %6920 to i8
  %6922 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 2
  store i8 %6921, i8* %6922, align 2, !tbaa !14
  %6923 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 20
  %6924 = bitcast i8* %6923 to i64*
  %6925 = load i64, i64* %6924, align 8, !tbaa !25
  %6926 = trunc i64 %6925 to i8
  %6927 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 3
  store i8 %6926, i8* %6927, align 1, !tbaa !14
  %6928 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 21
  %6929 = bitcast i8* %6928 to i64*
  %6930 = load i64, i64* %6929, align 8, !tbaa !25
  %6931 = trunc i64 %6930 to i8
  %6932 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 4
  store i8 %6931, i8* %6932, align 4, !tbaa !14
  %6933 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 22
  %6934 = bitcast i8* %6933 to i64*
  %6935 = load i64, i64* %6934, align 8, !tbaa !25
  %6936 = trunc i64 %6935 to i8
  %6937 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 5
  store i8 %6936, i8* %6937, align 1, !tbaa !14
  %6938 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 23
  %6939 = bitcast i8* %6938 to i64*
  %6940 = load i64, i64* %6939, align 8, !tbaa !25
  %6941 = trunc i64 %6940 to i8
  %6942 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 6
  store i8 %6941, i8* %6942, align 2, !tbaa !14
  %6943 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 24
  %6944 = bitcast i8* %6943 to i64*
  %6945 = load i64, i64* %6944, align 8, !tbaa !25
  %6946 = trunc i64 %6945 to i8
  %6947 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 7
  store i8 %6946, i8* %6947, align 1, !tbaa !14
  %6948 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 25
  %6949 = bitcast i8* %6948 to i64*
  %6950 = load i64, i64* %6949, align 8, !tbaa !25
  %6951 = trunc i64 %6950 to i8
  %6952 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 8
  store i8 %6951, i8* %6952, align 8, !tbaa !14
  %6953 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 26
  %6954 = bitcast i8* %6953 to i64*
  %6955 = load i64, i64* %6954, align 8, !tbaa !25
  %6956 = trunc i64 %6955 to i8
  %6957 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 9
  store i8 %6956, i8* %6957, align 1, !tbaa !14
  %6958 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 27
  %6959 = bitcast i8* %6958 to i64*
  %6960 = load i64, i64* %6959, align 8, !tbaa !25
  %6961 = trunc i64 %6960 to i8
  %6962 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 10
  store i8 %6961, i8* %6962, align 2, !tbaa !14
  %6963 = bitcast [56 x i8]* %4 to i64*
  %6964 = load i64, i64* %6963, align 16, !tbaa !25
  %6965 = trunc i64 %6964 to i8
  %6966 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 11
  store i8 %6965, i8* %6966, align 1, !tbaa !14
  %6967 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 1
  %6968 = bitcast i8* %6967 to i64*
  %6969 = load i64, i64* %6968, align 8, !tbaa !25
  %6970 = trunc i64 %6969 to i8
  %6971 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 12
  store i8 %6970, i8* %6971, align 4, !tbaa !14
  %6972 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 2
  %6973 = bitcast i8* %6972 to i64*
  %6974 = load i64, i64* %6973, align 8, !tbaa !25
  %6975 = trunc i64 %6974 to i8
  %6976 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 13
  store i8 %6975, i8* %6976, align 1, !tbaa !14
  %6977 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 3
  %6978 = bitcast i8* %6977 to i64*
  %6979 = load i64, i64* %6978, align 8, !tbaa !25
  %6980 = trunc i64 %6979 to i8
  %6981 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 14
  store i8 %6980, i8* %6981, align 2, !tbaa !14
  %6982 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 4
  %6983 = bitcast i8* %6982 to i64*
  %6984 = load i64, i64* %6983, align 8, !tbaa !25
  %6985 = trunc i64 %6984 to i8
  %6986 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 15
  store i8 %6985, i8* %6986, align 1, !tbaa !14
  %6987 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 5
  %6988 = bitcast i8* %6987 to i64*
  %6989 = load i64, i64* %6988, align 8, !tbaa !25
  %6990 = trunc i64 %6989 to i8
  %6991 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 16
  store i8 %6990, i8* %6991, align 16, !tbaa !14
  %6992 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 6
  %6993 = bitcast i8* %6992 to i64*
  %6994 = load i64, i64* %6993, align 8, !tbaa !25
  %6995 = trunc i64 %6994 to i8
  %6996 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 17
  store i8 %6995, i8* %6996, align 1, !tbaa !14
  %6997 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 7
  %6998 = bitcast i8* %6997 to i64*
  %6999 = load i64, i64* %6998, align 8, !tbaa !25
  %7000 = trunc i64 %6999 to i8
  %7001 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 18
  store i8 %7000, i8* %7001, align 2, !tbaa !14
  %7002 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 8
  %7003 = bitcast i8* %7002 to i64*
  %7004 = load i64, i64* %7003, align 8, !tbaa !25
  %7005 = trunc i64 %7004 to i8
  %7006 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 19
  store i8 %7005, i8* %7006, align 1, !tbaa !14
  %7007 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 9
  %7008 = bitcast i8* %7007 to i64*
  %7009 = load i64, i64* %7008, align 8, !tbaa !25
  %7010 = trunc i64 %7009 to i8
  %7011 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 20
  store i8 %7010, i8* %7011, align 4, !tbaa !14
  %7012 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 10
  %7013 = bitcast i8* %7012 to i64*
  %7014 = load i64, i64* %7013, align 8, !tbaa !25
  %7015 = trunc i64 %7014 to i8
  %7016 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 21
  store i8 %7015, i8* %7016, align 1, !tbaa !14
  %7017 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 11
  %7018 = bitcast i8* %7017 to i64*
  %7019 = load i64, i64* %7018, align 8, !tbaa !25
  %7020 = trunc i64 %7019 to i8
  %7021 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 22
  store i8 %7020, i8* %7021, align 2, !tbaa !14
  %7022 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 12
  %7023 = bitcast i8* %7022 to i64*
  %7024 = load i64, i64* %7023, align 8, !tbaa !25
  %7025 = trunc i64 %7024 to i8
  %7026 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 23
  store i8 %7025, i8* %7026, align 1, !tbaa !14
  %7027 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 13
  %7028 = bitcast i8* %7027 to i64*
  %7029 = load i64, i64* %7028, align 8, !tbaa !25
  %7030 = trunc i64 %7029 to i8
  %7031 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 24
  store i8 %7030, i8* %7031, align 8, !tbaa !14
  %7032 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 14
  %7033 = bitcast i8* %7032 to i64*
  %7034 = load i64, i64* %7033, align 8, !tbaa !25
  %7035 = trunc i64 %7034 to i8
  %7036 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 25
  store i8 %7035, i8* %7036, align 1, !tbaa !14
  %7037 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 15
  %7038 = bitcast i8* %7037 to i64*
  %7039 = load i64, i64* %7038, align 8, !tbaa !25
  %7040 = trunc i64 %7039 to i8
  %7041 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 26
  store i8 %7040, i8* %7041, align 2, !tbaa !14
  %7042 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 16
  %7043 = bitcast i8* %7042 to i64*
  %7044 = load i64, i64* %7043, align 16, !tbaa !25
  %7045 = trunc i64 %7044 to i8
  %7046 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 27
  store i8 %7045, i8* %7046, align 1, !tbaa !14
  %7047 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 45
  %7048 = bitcast i8* %7047 to i64*
  %7049 = load i64, i64* %7048, align 8, !tbaa !25
  %7050 = trunc i64 %7049 to i8
  %7051 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 28
  store i8 %7050, i8* %7051, align 4, !tbaa !14
  %7052 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 46
  %7053 = bitcast i8* %7052 to i64*
  %7054 = load i64, i64* %7053, align 8, !tbaa !25
  %7055 = trunc i64 %7054 to i8
  %7056 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 29
  store i8 %7055, i8* %7056, align 1, !tbaa !14
  %7057 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 47
  %7058 = bitcast i8* %7057 to i64*
  %7059 = load i64, i64* %7058, align 8, !tbaa !25
  %7060 = trunc i64 %7059 to i8
  %7061 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 30
  store i8 %7060, i8* %7061, align 2, !tbaa !14
  %7062 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 48
  %7063 = bitcast i8* %7062 to i64*
  %7064 = load i64, i64* %7063, align 16, !tbaa !25
  %7065 = trunc i64 %7064 to i8
  %7066 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 31
  store i8 %7065, i8* %7066, align 1, !tbaa !14
  %7067 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 49
  %7068 = bitcast i8* %7067 to i64*
  %7069 = load i64, i64* %7068, align 8, !tbaa !25
  %7070 = trunc i64 %7069 to i8
  %7071 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 32
  store i8 %7070, i8* %7071, align 16, !tbaa !14
  %7072 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 50
  %7073 = bitcast i8* %7072 to i64*
  %7074 = load i64, i64* %7073, align 8, !tbaa !25
  %7075 = trunc i64 %7074 to i8
  %7076 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 33
  store i8 %7075, i8* %7076, align 1, !tbaa !14
  %7077 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 51
  %7078 = bitcast i8* %7077 to i64*
  %7079 = load i64, i64* %7078, align 8, !tbaa !25
  %7080 = trunc i64 %7079 to i8
  %7081 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 34
  store i8 %7080, i8* %7081, align 2, !tbaa !14
  %7082 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 52
  %7083 = bitcast i8* %7082 to i64*
  %7084 = load i64, i64* %7083, align 8, !tbaa !25
  %7085 = trunc i64 %7084 to i8
  %7086 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 35
  store i8 %7085, i8* %7086, align 1, !tbaa !14
  %7087 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 53
  %7088 = bitcast i8* %7087 to i64*
  %7089 = load i64, i64* %7088, align 8, !tbaa !25
  %7090 = trunc i64 %7089 to i8
  %7091 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 36
  store i8 %7090, i8* %7091, align 4, !tbaa !14
  %7092 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 54
  %7093 = bitcast i8* %7092 to i64*
  %7094 = load i64, i64* %7093, align 8, !tbaa !25
  %7095 = trunc i64 %7094 to i8
  %7096 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 37
  store i8 %7095, i8* %7096, align 1, !tbaa !14
  %7097 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 55
  %7098 = bitcast i8* %7097 to i64*
  %7099 = load i64, i64* %7098, align 8, !tbaa !25
  %7100 = trunc i64 %7099 to i8
  %7101 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 38
  store i8 %7100, i8* %7101, align 2, !tbaa !14
  %7102 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 28
  %7103 = bitcast i8* %7102 to i64*
  %7104 = load i64, i64* %7103, align 8, !tbaa !25
  %7105 = trunc i64 %7104 to i8
  %7106 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 39
  store i8 %7105, i8* %7106, align 1, !tbaa !14
  %7107 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 29
  %7108 = bitcast i8* %7107 to i64*
  %7109 = load i64, i64* %7108, align 8, !tbaa !25
  %7110 = trunc i64 %7109 to i8
  %7111 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 40
  store i8 %7110, i8* %7111, align 8, !tbaa !14
  %7112 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 30
  %7113 = bitcast i8* %7112 to i64*
  %7114 = load i64, i64* %7113, align 8, !tbaa !25
  %7115 = trunc i64 %7114 to i8
  %7116 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 41
  store i8 %7115, i8* %7116, align 1, !tbaa !14
  %7117 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 31
  %7118 = bitcast i8* %7117 to i64*
  %7119 = load i64, i64* %7118, align 8, !tbaa !25
  %7120 = trunc i64 %7119 to i8
  %7121 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 42
  store i8 %7120, i8* %7121, align 2, !tbaa !14
  %7122 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 32
  %7123 = bitcast i8* %7122 to i64*
  %7124 = load i64, i64* %7123, align 16, !tbaa !25
  %7125 = trunc i64 %7124 to i8
  %7126 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 43
  store i8 %7125, i8* %7126, align 1, !tbaa !14
  %7127 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 33
  %7128 = bitcast i8* %7127 to i64*
  %7129 = load i64, i64* %7128, align 8, !tbaa !25
  %7130 = trunc i64 %7129 to i8
  %7131 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 44
  store i8 %7130, i8* %7131, align 4, !tbaa !14
  %7132 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 34
  %7133 = bitcast i8* %7132 to i64*
  %7134 = load i64, i64* %7133, align 8, !tbaa !25
  %7135 = trunc i64 %7134 to i8
  %7136 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 45
  store i8 %7135, i8* %7136, align 1, !tbaa !14
  %7137 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 35
  %7138 = bitcast i8* %7137 to i64*
  %7139 = load i64, i64* %7138, align 8, !tbaa !25
  %7140 = trunc i64 %7139 to i8
  %7141 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 46
  store i8 %7140, i8* %7141, align 2, !tbaa !14
  %7142 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 36
  %7143 = bitcast i8* %7142 to i64*
  %7144 = load i64, i64* %7143, align 8, !tbaa !25
  %7145 = trunc i64 %7144 to i8
  %7146 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 47
  store i8 %7145, i8* %7146, align 1, !tbaa !14
  %7147 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 37
  %7148 = bitcast i8* %7147 to i64*
  %7149 = load i64, i64* %7148, align 8, !tbaa !25
  %7150 = trunc i64 %7149 to i8
  %7151 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 48
  store i8 %7150, i8* %7151, align 16, !tbaa !14
  %7152 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 38
  %7153 = bitcast i8* %7152 to i64*
  %7154 = load i64, i64* %7153, align 8, !tbaa !25
  %7155 = trunc i64 %7154 to i8
  %7156 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 49
  store i8 %7155, i8* %7156, align 1, !tbaa !14
  %7157 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 39
  %7158 = bitcast i8* %7157 to i64*
  %7159 = load i64, i64* %7158, align 8, !tbaa !25
  %7160 = trunc i64 %7159 to i8
  %7161 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 50
  store i8 %7160, i8* %7161, align 2, !tbaa !14
  %7162 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 40
  %7163 = bitcast i8* %7162 to i64*
  %7164 = load i64, i64* %7163, align 8, !tbaa !25
  %7165 = trunc i64 %7164 to i8
  %7166 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 51
  store i8 %7165, i8* %7166, align 1, !tbaa !14
  %7167 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 41
  %7168 = bitcast i8* %7167 to i64*
  %7169 = load i64, i64* %7168, align 8, !tbaa !25
  %7170 = trunc i64 %7169 to i8
  %7171 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 52
  store i8 %7170, i8* %7171, align 4, !tbaa !14
  %7172 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 42
  %7173 = bitcast i8* %7172 to i64*
  %7174 = load i64, i64* %7173, align 8, !tbaa !25
  %7175 = trunc i64 %7174 to i8
  %7176 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 53
  store i8 %7175, i8* %7176, align 1, !tbaa !14
  %7177 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 43
  %7178 = bitcast i8* %7177 to i64*
  %7179 = load i64, i64* %7178, align 8, !tbaa !25
  %7180 = trunc i64 %7179 to i8
  %7181 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 54
  store i8 %7180, i8* %7181, align 2, !tbaa !14
  %7182 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 44
  %7183 = bitcast i8* %7182 to i64*
  %7184 = load i64, i64* %7183, align 8, !tbaa !25
  %7185 = trunc i64 %7184 to i8
  %7186 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 55
  store i8 %7185, i8* %7186, align 1, !tbaa !14
  %7187 = load i64, i64* %6381, align 8, !tbaa !25
  %7188 = trunc i64 %7187 to i8
  %7189 = icmp eq i8 %7188, 0
  %7190 = bitcast i32* %6907 to i64*
  %7191 = load volatile i64, i64* %7190, align 8, !tbaa !25
  %7192 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %7193 = select i1 %7189, i64 0, i64 %7192
  %7194 = or i64 %7191, %7193
  %7195 = trunc i64 %7194 to i32
  store volatile i32 %7195, i32* %6907, align 8, !tbaa !35
  %7196 = load i64, i64* %6392, align 8, !tbaa !25
  %7197 = trunc i64 %7196 to i8
  %7198 = icmp eq i8 %7197, 0
  %7199 = bitcast i32* %6908 to i64*
  %7200 = load volatile i64, i64* %7199, align 4, !tbaa !25
  %7201 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %7202 = select i1 %7198, i64 0, i64 %7201
  %7203 = or i64 %7200, %7202
  %7204 = trunc i64 %7203 to i32
  store volatile i32 %7204, i32* %6908, align 4, !tbaa !35
  %7205 = load i64, i64* %6403, align 16, !tbaa !25
  %7206 = trunc i64 %7205 to i8
  %7207 = icmp eq i8 %7206, 0
  %7208 = bitcast i32* %6907 to i64*
  %7209 = load volatile i64, i64* %7208, align 8, !tbaa !25
  %7210 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %7211 = select i1 %7207, i64 0, i64 %7210
  %7212 = or i64 %7209, %7211
  %7213 = trunc i64 %7212 to i32
  store volatile i32 %7213, i32* %6907, align 8, !tbaa !35
  %7214 = load i64, i64* %6414, align 8, !tbaa !25
  %7215 = trunc i64 %7214 to i8
  %7216 = icmp eq i8 %7215, 0
  %7217 = bitcast i32* %6908 to i64*
  %7218 = load volatile i64, i64* %7217, align 4, !tbaa !25
  %7219 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %7220 = select i1 %7216, i64 0, i64 %7219
  %7221 = or i64 %7218, %7220
  %7222 = trunc i64 %7221 to i32
  store volatile i32 %7222, i32* %6908, align 4, !tbaa !35
  %7223 = load i64, i64* %6425, align 8, !tbaa !25
  %7224 = trunc i64 %7223 to i8
  %7225 = icmp eq i8 %7224, 0
  %7226 = bitcast i32* %6907 to i64*
  %7227 = load volatile i64, i64* %7226, align 8, !tbaa !25
  %7228 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %7229 = select i1 %7225, i64 0, i64 %7228
  %7230 = or i64 %7227, %7229
  %7231 = trunc i64 %7230 to i32
  store volatile i32 %7231, i32* %6907, align 8, !tbaa !35
  %7232 = load i64, i64* %6436, align 8, !tbaa !25
  %7233 = trunc i64 %7232 to i8
  %7234 = icmp eq i8 %7233, 0
  %7235 = bitcast i32* %6908 to i64*
  %7236 = load volatile i64, i64* %7235, align 4, !tbaa !25
  %7237 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %7238 = select i1 %7234, i64 0, i64 %7237
  %7239 = or i64 %7236, %7238
  %7240 = trunc i64 %7239 to i32
  store volatile i32 %7240, i32* %6908, align 4, !tbaa !35
  %7241 = load i64, i64* %6447, align 8, !tbaa !25
  %7242 = trunc i64 %7241 to i8
  %7243 = icmp eq i8 %7242, 0
  %7244 = bitcast i32* %6907 to i64*
  %7245 = load volatile i64, i64* %7244, align 8, !tbaa !25
  %7246 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %7247 = select i1 %7243, i64 0, i64 %7246
  %7248 = or i64 %7245, %7247
  %7249 = trunc i64 %7248 to i32
  store volatile i32 %7249, i32* %6907, align 8, !tbaa !35
  %7250 = load i64, i64* %6458, align 8, !tbaa !25
  %7251 = trunc i64 %7250 to i8
  %7252 = icmp eq i8 %7251, 0
  %7253 = bitcast i32* %6908 to i64*
  %7254 = load volatile i64, i64* %7253, align 4, !tbaa !25
  %7255 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %7256 = select i1 %7252, i64 0, i64 %7255
  %7257 = or i64 %7254, %7256
  %7258 = trunc i64 %7257 to i32
  store volatile i32 %7258, i32* %6908, align 4, !tbaa !35
  %7259 = load i64, i64* %6468, align 16, !tbaa !25
  %7260 = trunc i64 %7259 to i8
  %7261 = icmp eq i8 %7260, 0
  %7262 = bitcast i32* %6907 to i64*
  %7263 = load volatile i64, i64* %7262, align 8, !tbaa !25
  %7264 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %7265 = select i1 %7261, i64 0, i64 %7264
  %7266 = or i64 %7263, %7265
  %7267 = trunc i64 %7266 to i32
  store volatile i32 %7267, i32* %6907, align 8, !tbaa !35
  %7268 = load i64, i64* %6479, align 8, !tbaa !25
  %7269 = trunc i64 %7268 to i8
  %7270 = icmp eq i8 %7269, 0
  %7271 = bitcast i32* %6908 to i64*
  %7272 = load volatile i64, i64* %7271, align 4, !tbaa !25
  %7273 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %7274 = select i1 %7270, i64 0, i64 %7273
  %7275 = or i64 %7272, %7274
  %7276 = trunc i64 %7275 to i32
  store volatile i32 %7276, i32* %6908, align 4, !tbaa !35
  %7277 = load i64, i64* %6490, align 8, !tbaa !25
  %7278 = trunc i64 %7277 to i8
  %7279 = icmp eq i8 %7278, 0
  %7280 = bitcast i32* %6907 to i64*
  %7281 = load volatile i64, i64* %7280, align 8, !tbaa !25
  %7282 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %7283 = select i1 %7279, i64 0, i64 %7282
  %7284 = or i64 %7281, %7283
  %7285 = trunc i64 %7284 to i32
  store volatile i32 %7285, i32* %6907, align 8, !tbaa !35
  %7286 = load i64, i64* %6501, align 8, !tbaa !25
  %7287 = trunc i64 %7286 to i8
  %7288 = icmp eq i8 %7287, 0
  %7289 = bitcast i32* %6908 to i64*
  %7290 = load volatile i64, i64* %7289, align 4, !tbaa !25
  %7291 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %7292 = select i1 %7288, i64 0, i64 %7291
  %7293 = or i64 %7290, %7292
  %7294 = trunc i64 %7293 to i32
  store volatile i32 %7294, i32* %6908, align 4, !tbaa !35
  %7295 = load i64, i64* %6512, align 8, !tbaa !25
  %7296 = trunc i64 %7295 to i8
  %7297 = icmp eq i8 %7296, 0
  %7298 = bitcast i32* %6907 to i64*
  %7299 = load volatile i64, i64* %7298, align 8, !tbaa !25
  %7300 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %7301 = select i1 %7297, i64 0, i64 %7300
  %7302 = or i64 %7299, %7301
  %7303 = trunc i64 %7302 to i32
  store volatile i32 %7303, i32* %6907, align 8, !tbaa !35
  %7304 = load i64, i64* %6523, align 8, !tbaa !25
  %7305 = trunc i64 %7304 to i8
  %7306 = icmp eq i8 %7305, 0
  %7307 = bitcast i32* %6908 to i64*
  %7308 = load volatile i64, i64* %7307, align 4, !tbaa !25
  %7309 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %7310 = select i1 %7306, i64 0, i64 %7309
  %7311 = or i64 %7308, %7310
  %7312 = trunc i64 %7311 to i32
  store volatile i32 %7312, i32* %6908, align 4, !tbaa !35
  %7313 = load i64, i64* %6534, align 8, !tbaa !25
  %7314 = trunc i64 %7313 to i8
  %7315 = icmp eq i8 %7314, 0
  %7316 = bitcast i32* %6907 to i64*
  %7317 = load volatile i64, i64* %7316, align 8, !tbaa !25
  %7318 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %7319 = select i1 %7315, i64 0, i64 %7318
  %7320 = or i64 %7317, %7319
  %7321 = trunc i64 %7320 to i32
  store volatile i32 %7321, i32* %6907, align 8, !tbaa !35
  %7322 = load i64, i64* %6545, align 8, !tbaa !25
  %7323 = trunc i64 %7322 to i8
  %7324 = icmp eq i8 %7323, 0
  %7325 = bitcast i32* %6908 to i64*
  %7326 = load volatile i64, i64* %7325, align 4, !tbaa !25
  %7327 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %7328 = select i1 %7324, i64 0, i64 %7327
  %7329 = or i64 %7326, %7328
  %7330 = trunc i64 %7329 to i32
  store volatile i32 %7330, i32* %6908, align 4, !tbaa !35
  %7331 = load i64, i64* %6556, align 8, !tbaa !25
  %7332 = trunc i64 %7331 to i8
  %7333 = icmp eq i8 %7332, 0
  %7334 = bitcast i32* %6907 to i64*
  %7335 = load volatile i64, i64* %7334, align 8, !tbaa !25
  %7336 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %7337 = select i1 %7333, i64 0, i64 %7336
  %7338 = or i64 %7335, %7337
  %7339 = trunc i64 %7338 to i32
  store volatile i32 %7339, i32* %6907, align 8, !tbaa !35
  %7340 = load i64, i64* %6567, align 8, !tbaa !25
  %7341 = trunc i64 %7340 to i8
  %7342 = icmp eq i8 %7341, 0
  %7343 = bitcast i32* %6908 to i64*
  %7344 = load volatile i64, i64* %7343, align 4, !tbaa !25
  %7345 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %7346 = select i1 %7342, i64 0, i64 %7345
  %7347 = or i64 %7344, %7346
  %7348 = trunc i64 %7347 to i32
  store volatile i32 %7348, i32* %6908, align 4, !tbaa !35
  %7349 = load i64, i64* %6578, align 8, !tbaa !25
  %7350 = trunc i64 %7349 to i8
  %7351 = icmp eq i8 %7350, 0
  %7352 = bitcast i32* %6907 to i64*
  %7353 = load volatile i64, i64* %7352, align 8, !tbaa !25
  %7354 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %7355 = select i1 %7351, i64 0, i64 %7354
  %7356 = or i64 %7353, %7355
  %7357 = trunc i64 %7356 to i32
  store volatile i32 %7357, i32* %6907, align 8, !tbaa !35
  %7358 = load i64, i64* %6589, align 8, !tbaa !25
  %7359 = trunc i64 %7358 to i8
  %7360 = icmp eq i8 %7359, 0
  %7361 = bitcast i32* %6908 to i64*
  %7362 = load volatile i64, i64* %7361, align 4, !tbaa !25
  %7363 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %7364 = select i1 %7360, i64 0, i64 %7363
  %7365 = or i64 %7362, %7364
  %7366 = trunc i64 %7365 to i32
  store volatile i32 %7366, i32* %6908, align 4, !tbaa !35
  %7367 = load i64, i64* %6600, align 8, !tbaa !25
  %7368 = trunc i64 %7367 to i8
  %7369 = icmp eq i8 %7368, 0
  %7370 = bitcast i32* %6907 to i64*
  %7371 = load volatile i64, i64* %7370, align 8, !tbaa !25
  %7372 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %7373 = select i1 %7369, i64 0, i64 %7372
  %7374 = or i64 %7371, %7373
  %7375 = trunc i64 %7374 to i32
  store volatile i32 %7375, i32* %6907, align 8, !tbaa !35
  %7376 = load i64, i64* %6611, align 16, !tbaa !25
  %7377 = trunc i64 %7376 to i8
  %7378 = icmp eq i8 %7377, 0
  %7379 = bitcast i32* %6908 to i64*
  %7380 = load volatile i64, i64* %7379, align 4, !tbaa !25
  %7381 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %7382 = select i1 %7378, i64 0, i64 %7381
  %7383 = or i64 %7380, %7382
  %7384 = trunc i64 %7383 to i32
  store volatile i32 %7384, i32* %6908, align 4, !tbaa !35
  %7385 = load i64, i64* %6622, align 8, !tbaa !25
  %7386 = trunc i64 %7385 to i8
  %7387 = icmp eq i8 %7386, 0
  %7388 = bitcast i32* %6907 to i64*
  %7389 = load volatile i64, i64* %7388, align 8, !tbaa !25
  %7390 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %7391 = select i1 %7387, i64 0, i64 %7390
  %7392 = or i64 %7389, %7391
  %7393 = trunc i64 %7392 to i32
  store volatile i32 %7393, i32* %6907, align 8, !tbaa !35
  %7394 = load i64, i64* %6633, align 8, !tbaa !25
  %7395 = trunc i64 %7394 to i8
  %7396 = icmp eq i8 %7395, 0
  %7397 = bitcast i32* %6908 to i64*
  %7398 = load volatile i64, i64* %7397, align 4, !tbaa !25
  %7399 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %7400 = select i1 %7396, i64 0, i64 %7399
  %7401 = or i64 %7398, %7400
  %7402 = trunc i64 %7401 to i32
  store volatile i32 %7402, i32* %6908, align 4, !tbaa !35
  %7403 = load i64, i64* %6644, align 8, !tbaa !25
  %7404 = trunc i64 %7403 to i8
  %7405 = icmp eq i8 %7404, 0
  %7406 = bitcast i32* %6907 to i64*
  %7407 = load volatile i64, i64* %7406, align 8, !tbaa !25
  %7408 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %7409 = select i1 %7405, i64 0, i64 %7408
  %7410 = or i64 %7407, %7409
  %7411 = trunc i64 %7410 to i32
  store volatile i32 %7411, i32* %6907, align 8, !tbaa !35
  %7412 = load i64, i64* %6655, align 8, !tbaa !25
  %7413 = trunc i64 %7412 to i8
  %7414 = icmp eq i8 %7413, 0
  %7415 = bitcast i32* %6908 to i64*
  %7416 = load volatile i64, i64* %7415, align 4, !tbaa !25
  %7417 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %7418 = select i1 %7414, i64 0, i64 %7417
  %7419 = or i64 %7416, %7418
  %7420 = trunc i64 %7419 to i32
  store volatile i32 %7420, i32* %6908, align 4, !tbaa !35
  %7421 = load i64, i64* %6666, align 8, !tbaa !25
  %7422 = trunc i64 %7421 to i8
  %7423 = icmp eq i8 %7422, 0
  %7424 = bitcast i32* %6907 to i64*
  %7425 = load volatile i64, i64* %7424, align 8, !tbaa !25
  %7426 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %7427 = select i1 %7423, i64 0, i64 %7426
  %7428 = or i64 %7425, %7427
  %7429 = trunc i64 %7428 to i32
  store volatile i32 %7429, i32* %6907, align 8, !tbaa !35
  %7430 = load i64, i64* %6677, align 16, !tbaa !25
  %7431 = trunc i64 %7430 to i8
  %7432 = icmp eq i8 %7431, 0
  %7433 = bitcast i32* %6908 to i64*
  %7434 = load volatile i64, i64* %7433, align 4, !tbaa !25
  %7435 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %7436 = select i1 %7432, i64 0, i64 %7435
  %7437 = or i64 %7434, %7436
  %7438 = trunc i64 %7437 to i32
  store volatile i32 %7438, i32* %6908, align 4, !tbaa !35
  %7439 = load i64, i64* %6688, align 8, !tbaa !25
  %7440 = trunc i64 %7439 to i8
  %7441 = icmp eq i8 %7440, 0
  %7442 = bitcast i32* %6907 to i64*
  %7443 = load volatile i64, i64* %7442, align 8, !tbaa !25
  %7444 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %7445 = select i1 %7441, i64 0, i64 %7444
  %7446 = or i64 %7443, %7445
  %7447 = trunc i64 %7446 to i32
  store volatile i32 %7447, i32* %6907, align 8, !tbaa !35
  %7448 = load i64, i64* %6699, align 8, !tbaa !25
  %7449 = trunc i64 %7448 to i8
  %7450 = icmp eq i8 %7449, 0
  %7451 = bitcast i32* %6908 to i64*
  %7452 = load volatile i64, i64* %7451, align 4, !tbaa !25
  %7453 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %7454 = select i1 %7450, i64 0, i64 %7453
  %7455 = or i64 %7452, %7454
  %7456 = trunc i64 %7455 to i32
  store volatile i32 %7456, i32* %6908, align 4, !tbaa !35
  %7457 = load i64, i64* %6710, align 8, !tbaa !25
  %7458 = trunc i64 %7457 to i8
  %7459 = icmp eq i8 %7458, 0
  %7460 = bitcast i32* %6907 to i64*
  %7461 = load volatile i64, i64* %7460, align 8, !tbaa !25
  %7462 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %7463 = select i1 %7459, i64 0, i64 %7462
  %7464 = or i64 %7461, %7463
  %7465 = trunc i64 %7464 to i32
  store volatile i32 %7465, i32* %6907, align 8, !tbaa !35
  %7466 = load i64, i64* %6721, align 8, !tbaa !25
  %7467 = trunc i64 %7466 to i8
  %7468 = icmp eq i8 %7467, 0
  %7469 = bitcast i32* %6908 to i64*
  %7470 = load volatile i64, i64* %7469, align 4, !tbaa !25
  %7471 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %7472 = select i1 %7468, i64 0, i64 %7471
  %7473 = or i64 %7470, %7472
  %7474 = trunc i64 %7473 to i32
  store volatile i32 %7474, i32* %6908, align 4, !tbaa !35
  %7475 = load i64, i64* %6732, align 8, !tbaa !25
  %7476 = trunc i64 %7475 to i8
  %7477 = icmp eq i8 %7476, 0
  %7478 = bitcast i32* %6907 to i64*
  %7479 = load volatile i64, i64* %7478, align 8, !tbaa !25
  %7480 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %7481 = select i1 %7477, i64 0, i64 %7480
  %7482 = or i64 %7479, %7481
  %7483 = trunc i64 %7482 to i32
  store volatile i32 %7483, i32* %6907, align 8, !tbaa !35
  %7484 = load i64, i64* %6743, align 8, !tbaa !25
  %7485 = trunc i64 %7484 to i8
  %7486 = icmp eq i8 %7485, 0
  %7487 = bitcast i32* %6908 to i64*
  %7488 = load volatile i64, i64* %7487, align 4, !tbaa !25
  %7489 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %7490 = select i1 %7486, i64 0, i64 %7489
  %7491 = or i64 %7488, %7490
  %7492 = trunc i64 %7491 to i32
  store volatile i32 %7492, i32* %6908, align 4, !tbaa !35
  %7493 = load i64, i64* %6754, align 8, !tbaa !25
  %7494 = trunc i64 %7493 to i8
  %7495 = icmp eq i8 %7494, 0
  %7496 = bitcast i32* %6907 to i64*
  %7497 = load volatile i64, i64* %7496, align 8, !tbaa !25
  %7498 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %7499 = select i1 %7495, i64 0, i64 %7498
  %7500 = or i64 %7497, %7499
  %7501 = trunc i64 %7500 to i32
  store volatile i32 %7501, i32* %6907, align 8, !tbaa !35
  %7502 = load i64, i64* %6765, align 8, !tbaa !25
  %7503 = trunc i64 %7502 to i8
  %7504 = icmp eq i8 %7503, 0
  %7505 = bitcast i32* %6908 to i64*
  %7506 = load volatile i64, i64* %7505, align 4, !tbaa !25
  %7507 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %7508 = select i1 %7504, i64 0, i64 %7507
  %7509 = or i64 %7506, %7508
  %7510 = trunc i64 %7509 to i32
  store volatile i32 %7510, i32* %6908, align 4, !tbaa !35
  %7511 = load i64, i64* %6776, align 8, !tbaa !25
  %7512 = trunc i64 %7511 to i8
  %7513 = icmp eq i8 %7512, 0
  %7514 = bitcast i32* %6907 to i64*
  %7515 = load volatile i64, i64* %7514, align 8, !tbaa !25
  %7516 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %7517 = select i1 %7513, i64 0, i64 %7516
  %7518 = or i64 %7515, %7517
  %7519 = trunc i64 %7518 to i32
  store volatile i32 %7519, i32* %6907, align 8, !tbaa !35
  %7520 = load i64, i64* %6787, align 8, !tbaa !25
  %7521 = trunc i64 %7520 to i8
  %7522 = icmp eq i8 %7521, 0
  %7523 = bitcast i32* %6908 to i64*
  %7524 = load volatile i64, i64* %7523, align 4, !tbaa !25
  %7525 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %7526 = select i1 %7522, i64 0, i64 %7525
  %7527 = or i64 %7524, %7526
  %7528 = trunc i64 %7527 to i32
  store volatile i32 %7528, i32* %6908, align 4, !tbaa !35
  %7529 = load i64, i64* %6798, align 8, !tbaa !25
  %7530 = trunc i64 %7529 to i8
  %7531 = icmp eq i8 %7530, 0
  %7532 = bitcast i32* %6907 to i64*
  %7533 = load volatile i64, i64* %7532, align 8, !tbaa !25
  %7534 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %7535 = select i1 %7531, i64 0, i64 %7534
  %7536 = or i64 %7533, %7535
  %7537 = trunc i64 %7536 to i32
  store volatile i32 %7537, i32* %6907, align 8, !tbaa !35
  %7538 = load i64, i64* %6809, align 8, !tbaa !25
  %7539 = trunc i64 %7538 to i8
  %7540 = icmp eq i8 %7539, 0
  %7541 = bitcast i32* %6908 to i64*
  %7542 = load volatile i64, i64* %7541, align 4, !tbaa !25
  %7543 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %7544 = select i1 %7540, i64 0, i64 %7543
  %7545 = or i64 %7542, %7544
  %7546 = trunc i64 %7545 to i32
  store volatile i32 %7546, i32* %6908, align 4, !tbaa !35
  %7547 = load i64, i64* %6820, align 8, !tbaa !25
  %7548 = trunc i64 %7547 to i8
  %7549 = icmp eq i8 %7548, 0
  %7550 = bitcast i32* %6907 to i64*
  %7551 = load volatile i64, i64* %7550, align 8, !tbaa !25
  %7552 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %7553 = select i1 %7549, i64 0, i64 %7552
  %7554 = or i64 %7551, %7553
  %7555 = trunc i64 %7554 to i32
  store volatile i32 %7555, i32* %6907, align 8, !tbaa !35
  %7556 = load i64, i64* %6831, align 8, !tbaa !25
  %7557 = trunc i64 %7556 to i8
  %7558 = icmp eq i8 %7557, 0
  %7559 = bitcast i32* %6908 to i64*
  %7560 = load volatile i64, i64* %7559, align 4, !tbaa !25
  %7561 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %7562 = select i1 %7558, i64 0, i64 %7561
  %7563 = or i64 %7560, %7562
  %7564 = trunc i64 %7563 to i32
  store volatile i32 %7564, i32* %6908, align 4, !tbaa !35
  %7565 = load i64, i64* %6842, align 8, !tbaa !25
  %7566 = trunc i64 %7565 to i8
  %7567 = icmp eq i8 %7566, 0
  %7568 = bitcast i32* %6907 to i64*
  %7569 = load volatile i64, i64* %7568, align 8, !tbaa !25
  %7570 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %7571 = select i1 %7567, i64 0, i64 %7570
  %7572 = or i64 %7569, %7571
  %7573 = trunc i64 %7572 to i32
  store volatile i32 %7573, i32* %6907, align 8, !tbaa !35
  %7574 = load i64, i64* %6853, align 8, !tbaa !25
  %7575 = trunc i64 %7574 to i8
  %7576 = icmp eq i8 %7575, 0
  %7577 = bitcast i32* %6908 to i64*
  %7578 = load volatile i64, i64* %7577, align 4, !tbaa !25
  %7579 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %7580 = select i1 %7576, i64 0, i64 %7579
  %7581 = or i64 %7578, %7580
  %7582 = trunc i64 %7581 to i32
  store volatile i32 %7582, i32* %6908, align 4, !tbaa !35
  %7583 = load i64, i64* %6864, align 8, !tbaa !25
  %7584 = trunc i64 %7583 to i8
  %7585 = icmp eq i8 %7584, 0
  %7586 = bitcast i32* %6907 to i64*
  %7587 = load volatile i64, i64* %7586, align 8, !tbaa !25
  %7588 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %7589 = select i1 %7585, i64 0, i64 %7588
  %7590 = or i64 %7587, %7589
  %7591 = trunc i64 %7590 to i32
  store volatile i32 %7591, i32* %6907, align 8, !tbaa !35
  %7592 = load i64, i64* %6875, align 8, !tbaa !25
  %7593 = trunc i64 %7592 to i8
  %7594 = icmp eq i8 %7593, 0
  %7595 = bitcast i32* %6908 to i64*
  %7596 = load volatile i64, i64* %7595, align 4, !tbaa !25
  %7597 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %7598 = select i1 %7594, i64 0, i64 %7597
  %7599 = or i64 %7596, %7598
  %7600 = trunc i64 %7599 to i32
  store volatile i32 %7600, i32* %6908, align 4, !tbaa !35
  %7601 = load i64, i64* %6886, align 8, !tbaa !25
  %7602 = trunc i64 %7601 to i8
  %7603 = icmp eq i8 %7602, 0
  %7604 = bitcast i32* %6907 to i64*
  %7605 = load volatile i64, i64* %7604, align 8, !tbaa !25
  %7606 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %7607 = select i1 %7603, i64 0, i64 %7606
  %7608 = or i64 %7605, %7607
  %7609 = trunc i64 %7608 to i32
  store volatile i32 %7609, i32* %6907, align 8, !tbaa !35
  %7610 = load i64, i64* %6897, align 8, !tbaa !25
  %7611 = trunc i64 %7610 to i8
  %7612 = icmp eq i8 %7611, 0
  %7613 = bitcast i32* %6908 to i64*
  %7614 = load volatile i64, i64* %7613, align 4, !tbaa !25
  %7615 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %7616 = select i1 %7612, i64 0, i64 %7615
  %7617 = or i64 %7614, %7616
  %7618 = trunc i64 %7617 to i32
  store volatile i32 %7618, i32* %6908, align 4, !tbaa !35
  %7619 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 20
  store i32 0, i32* %7619, align 16, !tbaa !35
  %7620 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 21
  store i32 0, i32* %7620, align 4, !tbaa !35
  %7621 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 19
  %7622 = bitcast i8* %7621 to i64*
  %7623 = load i64, i64* %7622, align 8, !tbaa !25
  %7624 = trunc i64 %7623 to i8
  store i8 %7624, i8* %8, align 16, !tbaa !14
  %7625 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 20
  %7626 = bitcast i8* %7625 to i64*
  %7627 = load i64, i64* %7626, align 8, !tbaa !25
  %7628 = trunc i64 %7627 to i8
  %7629 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 1
  store i8 %7628, i8* %7629, align 1, !tbaa !14
  %7630 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 21
  %7631 = bitcast i8* %7630 to i64*
  %7632 = load i64, i64* %7631, align 8, !tbaa !25
  %7633 = trunc i64 %7632 to i8
  %7634 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 2
  store i8 %7633, i8* %7634, align 2, !tbaa !14
  %7635 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 22
  %7636 = bitcast i8* %7635 to i64*
  %7637 = load i64, i64* %7636, align 8, !tbaa !25
  %7638 = trunc i64 %7637 to i8
  %7639 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 3
  store i8 %7638, i8* %7639, align 1, !tbaa !14
  %7640 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 23
  %7641 = bitcast i8* %7640 to i64*
  %7642 = load i64, i64* %7641, align 8, !tbaa !25
  %7643 = trunc i64 %7642 to i8
  %7644 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 4
  store i8 %7643, i8* %7644, align 4, !tbaa !14
  %7645 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 24
  %7646 = bitcast i8* %7645 to i64*
  %7647 = load i64, i64* %7646, align 8, !tbaa !25
  %7648 = trunc i64 %7647 to i8
  %7649 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 5
  store i8 %7648, i8* %7649, align 1, !tbaa !14
  %7650 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 25
  %7651 = bitcast i8* %7650 to i64*
  %7652 = load i64, i64* %7651, align 8, !tbaa !25
  %7653 = trunc i64 %7652 to i8
  %7654 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 6
  store i8 %7653, i8* %7654, align 2, !tbaa !14
  %7655 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 26
  %7656 = bitcast i8* %7655 to i64*
  %7657 = load i64, i64* %7656, align 8, !tbaa !25
  %7658 = trunc i64 %7657 to i8
  %7659 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 7
  store i8 %7658, i8* %7659, align 1, !tbaa !14
  %7660 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 27
  %7661 = bitcast i8* %7660 to i64*
  %7662 = load i64, i64* %7661, align 8, !tbaa !25
  %7663 = trunc i64 %7662 to i8
  %7664 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 8
  store i8 %7663, i8* %7664, align 8, !tbaa !14
  %7665 = bitcast [56 x i8]* %4 to i64*
  %7666 = load i64, i64* %7665, align 16, !tbaa !25
  %7667 = trunc i64 %7666 to i8
  %7668 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 9
  store i8 %7667, i8* %7668, align 1, !tbaa !14
  %7669 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 1
  %7670 = bitcast i8* %7669 to i64*
  %7671 = load i64, i64* %7670, align 8, !tbaa !25
  %7672 = trunc i64 %7671 to i8
  %7673 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 10
  store i8 %7672, i8* %7673, align 2, !tbaa !14
  %7674 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 2
  %7675 = bitcast i8* %7674 to i64*
  %7676 = load i64, i64* %7675, align 8, !tbaa !25
  %7677 = trunc i64 %7676 to i8
  %7678 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 11
  store i8 %7677, i8* %7678, align 1, !tbaa !14
  %7679 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 3
  %7680 = bitcast i8* %7679 to i64*
  %7681 = load i64, i64* %7680, align 8, !tbaa !25
  %7682 = trunc i64 %7681 to i8
  %7683 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 12
  store i8 %7682, i8* %7683, align 4, !tbaa !14
  %7684 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 4
  %7685 = bitcast i8* %7684 to i64*
  %7686 = load i64, i64* %7685, align 8, !tbaa !25
  %7687 = trunc i64 %7686 to i8
  %7688 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 13
  store i8 %7687, i8* %7688, align 1, !tbaa !14
  %7689 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 5
  %7690 = bitcast i8* %7689 to i64*
  %7691 = load i64, i64* %7690, align 8, !tbaa !25
  %7692 = trunc i64 %7691 to i8
  %7693 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 14
  store i8 %7692, i8* %7693, align 2, !tbaa !14
  %7694 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 6
  %7695 = bitcast i8* %7694 to i64*
  %7696 = load i64, i64* %7695, align 8, !tbaa !25
  %7697 = trunc i64 %7696 to i8
  %7698 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 15
  store i8 %7697, i8* %7698, align 1, !tbaa !14
  %7699 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 7
  %7700 = bitcast i8* %7699 to i64*
  %7701 = load i64, i64* %7700, align 8, !tbaa !25
  %7702 = trunc i64 %7701 to i8
  %7703 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 16
  store i8 %7702, i8* %7703, align 16, !tbaa !14
  %7704 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 8
  %7705 = bitcast i8* %7704 to i64*
  %7706 = load i64, i64* %7705, align 8, !tbaa !25
  %7707 = trunc i64 %7706 to i8
  %7708 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 17
  store i8 %7707, i8* %7708, align 1, !tbaa !14
  %7709 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 9
  %7710 = bitcast i8* %7709 to i64*
  %7711 = load i64, i64* %7710, align 8, !tbaa !25
  %7712 = trunc i64 %7711 to i8
  %7713 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 18
  store i8 %7712, i8* %7713, align 2, !tbaa !14
  %7714 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 10
  %7715 = bitcast i8* %7714 to i64*
  %7716 = load i64, i64* %7715, align 8, !tbaa !25
  %7717 = trunc i64 %7716 to i8
  %7718 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 19
  store i8 %7717, i8* %7718, align 1, !tbaa !14
  %7719 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 11
  %7720 = bitcast i8* %7719 to i64*
  %7721 = load i64, i64* %7720, align 8, !tbaa !25
  %7722 = trunc i64 %7721 to i8
  %7723 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 20
  store i8 %7722, i8* %7723, align 4, !tbaa !14
  %7724 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 12
  %7725 = bitcast i8* %7724 to i64*
  %7726 = load i64, i64* %7725, align 8, !tbaa !25
  %7727 = trunc i64 %7726 to i8
  %7728 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 21
  store i8 %7727, i8* %7728, align 1, !tbaa !14
  %7729 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 13
  %7730 = bitcast i8* %7729 to i64*
  %7731 = load i64, i64* %7730, align 8, !tbaa !25
  %7732 = trunc i64 %7731 to i8
  %7733 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 22
  store i8 %7732, i8* %7733, align 2, !tbaa !14
  %7734 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 14
  %7735 = bitcast i8* %7734 to i64*
  %7736 = load i64, i64* %7735, align 8, !tbaa !25
  %7737 = trunc i64 %7736 to i8
  %7738 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 23
  store i8 %7737, i8* %7738, align 1, !tbaa !14
  %7739 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 15
  %7740 = bitcast i8* %7739 to i64*
  %7741 = load i64, i64* %7740, align 8, !tbaa !25
  %7742 = trunc i64 %7741 to i8
  %7743 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 24
  store i8 %7742, i8* %7743, align 8, !tbaa !14
  %7744 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 16
  %7745 = bitcast i8* %7744 to i64*
  %7746 = load i64, i64* %7745, align 16, !tbaa !25
  %7747 = trunc i64 %7746 to i8
  %7748 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 25
  store i8 %7747, i8* %7748, align 1, !tbaa !14
  %7749 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 17
  %7750 = bitcast i8* %7749 to i64*
  %7751 = load i64, i64* %7750, align 8, !tbaa !25
  %7752 = trunc i64 %7751 to i8
  %7753 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 26
  store i8 %7752, i8* %7753, align 2, !tbaa !14
  %7754 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 18
  %7755 = bitcast i8* %7754 to i64*
  %7756 = load i64, i64* %7755, align 8, !tbaa !25
  %7757 = trunc i64 %7756 to i8
  %7758 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 27
  store i8 %7757, i8* %7758, align 1, !tbaa !14
  %7759 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 47
  %7760 = bitcast i8* %7759 to i64*
  %7761 = load i64, i64* %7760, align 8, !tbaa !25
  %7762 = trunc i64 %7761 to i8
  %7763 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 28
  store i8 %7762, i8* %7763, align 4, !tbaa !14
  %7764 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 48
  %7765 = bitcast i8* %7764 to i64*
  %7766 = load i64, i64* %7765, align 16, !tbaa !25
  %7767 = trunc i64 %7766 to i8
  %7768 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 29
  store i8 %7767, i8* %7768, align 1, !tbaa !14
  %7769 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 49
  %7770 = bitcast i8* %7769 to i64*
  %7771 = load i64, i64* %7770, align 8, !tbaa !25
  %7772 = trunc i64 %7771 to i8
  %7773 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 30
  store i8 %7772, i8* %7773, align 2, !tbaa !14
  %7774 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 50
  %7775 = bitcast i8* %7774 to i64*
  %7776 = load i64, i64* %7775, align 8, !tbaa !25
  %7777 = trunc i64 %7776 to i8
  %7778 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 31
  store i8 %7777, i8* %7778, align 1, !tbaa !14
  %7779 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 51
  %7780 = bitcast i8* %7779 to i64*
  %7781 = load i64, i64* %7780, align 8, !tbaa !25
  %7782 = trunc i64 %7781 to i8
  %7783 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 32
  store i8 %7782, i8* %7783, align 16, !tbaa !14
  %7784 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 52
  %7785 = bitcast i8* %7784 to i64*
  %7786 = load i64, i64* %7785, align 8, !tbaa !25
  %7787 = trunc i64 %7786 to i8
  %7788 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 33
  store i8 %7787, i8* %7788, align 1, !tbaa !14
  %7789 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 53
  %7790 = bitcast i8* %7789 to i64*
  %7791 = load i64, i64* %7790, align 8, !tbaa !25
  %7792 = trunc i64 %7791 to i8
  %7793 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 34
  store i8 %7792, i8* %7793, align 2, !tbaa !14
  %7794 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 54
  %7795 = bitcast i8* %7794 to i64*
  %7796 = load i64, i64* %7795, align 8, !tbaa !25
  %7797 = trunc i64 %7796 to i8
  %7798 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 35
  store i8 %7797, i8* %7798, align 1, !tbaa !14
  %7799 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 55
  %7800 = bitcast i8* %7799 to i64*
  %7801 = load i64, i64* %7800, align 8, !tbaa !25
  %7802 = trunc i64 %7801 to i8
  %7803 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 36
  store i8 %7802, i8* %7803, align 4, !tbaa !14
  %7804 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 28
  %7805 = bitcast i8* %7804 to i64*
  %7806 = load i64, i64* %7805, align 8, !tbaa !25
  %7807 = trunc i64 %7806 to i8
  %7808 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 37
  store i8 %7807, i8* %7808, align 1, !tbaa !14
  %7809 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 29
  %7810 = bitcast i8* %7809 to i64*
  %7811 = load i64, i64* %7810, align 8, !tbaa !25
  %7812 = trunc i64 %7811 to i8
  %7813 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 38
  store i8 %7812, i8* %7813, align 2, !tbaa !14
  %7814 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 30
  %7815 = bitcast i8* %7814 to i64*
  %7816 = load i64, i64* %7815, align 8, !tbaa !25
  %7817 = trunc i64 %7816 to i8
  %7818 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 39
  store i8 %7817, i8* %7818, align 1, !tbaa !14
  %7819 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 31
  %7820 = bitcast i8* %7819 to i64*
  %7821 = load i64, i64* %7820, align 8, !tbaa !25
  %7822 = trunc i64 %7821 to i8
  %7823 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 40
  store i8 %7822, i8* %7823, align 8, !tbaa !14
  %7824 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 32
  %7825 = bitcast i8* %7824 to i64*
  %7826 = load i64, i64* %7825, align 16, !tbaa !25
  %7827 = trunc i64 %7826 to i8
  %7828 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 41
  store i8 %7827, i8* %7828, align 1, !tbaa !14
  %7829 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 33
  %7830 = bitcast i8* %7829 to i64*
  %7831 = load i64, i64* %7830, align 8, !tbaa !25
  %7832 = trunc i64 %7831 to i8
  %7833 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 42
  store i8 %7832, i8* %7833, align 2, !tbaa !14
  %7834 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 34
  %7835 = bitcast i8* %7834 to i64*
  %7836 = load i64, i64* %7835, align 8, !tbaa !25
  %7837 = trunc i64 %7836 to i8
  %7838 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 43
  store i8 %7837, i8* %7838, align 1, !tbaa !14
  %7839 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 35
  %7840 = bitcast i8* %7839 to i64*
  %7841 = load i64, i64* %7840, align 8, !tbaa !25
  %7842 = trunc i64 %7841 to i8
  %7843 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 44
  store i8 %7842, i8* %7843, align 4, !tbaa !14
  %7844 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 36
  %7845 = bitcast i8* %7844 to i64*
  %7846 = load i64, i64* %7845, align 8, !tbaa !25
  %7847 = trunc i64 %7846 to i8
  %7848 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 45
  store i8 %7847, i8* %7848, align 1, !tbaa !14
  %7849 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 37
  %7850 = bitcast i8* %7849 to i64*
  %7851 = load i64, i64* %7850, align 8, !tbaa !25
  %7852 = trunc i64 %7851 to i8
  %7853 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 46
  store i8 %7852, i8* %7853, align 2, !tbaa !14
  %7854 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 38
  %7855 = bitcast i8* %7854 to i64*
  %7856 = load i64, i64* %7855, align 8, !tbaa !25
  %7857 = trunc i64 %7856 to i8
  %7858 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 47
  store i8 %7857, i8* %7858, align 1, !tbaa !14
  %7859 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 39
  %7860 = bitcast i8* %7859 to i64*
  %7861 = load i64, i64* %7860, align 8, !tbaa !25
  %7862 = trunc i64 %7861 to i8
  %7863 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 48
  store i8 %7862, i8* %7863, align 16, !tbaa !14
  %7864 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 40
  %7865 = bitcast i8* %7864 to i64*
  %7866 = load i64, i64* %7865, align 8, !tbaa !25
  %7867 = trunc i64 %7866 to i8
  %7868 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 49
  store i8 %7867, i8* %7868, align 1, !tbaa !14
  %7869 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 41
  %7870 = bitcast i8* %7869 to i64*
  %7871 = load i64, i64* %7870, align 8, !tbaa !25
  %7872 = trunc i64 %7871 to i8
  %7873 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 50
  store i8 %7872, i8* %7873, align 2, !tbaa !14
  %7874 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 42
  %7875 = bitcast i8* %7874 to i64*
  %7876 = load i64, i64* %7875, align 8, !tbaa !25
  %7877 = trunc i64 %7876 to i8
  %7878 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 51
  store i8 %7877, i8* %7878, align 1, !tbaa !14
  %7879 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 43
  %7880 = bitcast i8* %7879 to i64*
  %7881 = load i64, i64* %7880, align 8, !tbaa !25
  %7882 = trunc i64 %7881 to i8
  %7883 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 52
  store i8 %7882, i8* %7883, align 4, !tbaa !14
  %7884 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 44
  %7885 = bitcast i8* %7884 to i64*
  %7886 = load i64, i64* %7885, align 8, !tbaa !25
  %7887 = trunc i64 %7886 to i8
  %7888 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 53
  store i8 %7887, i8* %7888, align 1, !tbaa !14
  %7889 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 45
  %7890 = bitcast i8* %7889 to i64*
  %7891 = load i64, i64* %7890, align 8, !tbaa !25
  %7892 = trunc i64 %7891 to i8
  %7893 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 54
  store i8 %7892, i8* %7893, align 2, !tbaa !14
  %7894 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 46
  %7895 = bitcast i8* %7894 to i64*
  %7896 = load i64, i64* %7895, align 8, !tbaa !25
  %7897 = trunc i64 %7896 to i8
  %7898 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 55
  store i8 %7897, i8* %7898, align 1, !tbaa !14
  %7899 = load i64, i64* %6381, align 8, !tbaa !25
  %7900 = trunc i64 %7899 to i8
  %7901 = icmp eq i8 %7900, 0
  %7902 = bitcast i32* %7619 to i64*
  %7903 = load volatile i64, i64* %7902, align 16, !tbaa !25
  %7904 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %7905 = select i1 %7901, i64 0, i64 %7904
  %7906 = or i64 %7903, %7905
  %7907 = trunc i64 %7906 to i32
  store volatile i32 %7907, i32* %7619, align 16, !tbaa !35
  %7908 = load i64, i64* %6392, align 8, !tbaa !25
  %7909 = trunc i64 %7908 to i8
  %7910 = icmp eq i8 %7909, 0
  %7911 = bitcast i32* %7620 to i64*
  %7912 = load volatile i64, i64* %7911, align 4, !tbaa !25
  %7913 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %7914 = select i1 %7910, i64 0, i64 %7913
  %7915 = or i64 %7912, %7914
  %7916 = trunc i64 %7915 to i32
  store volatile i32 %7916, i32* %7620, align 4, !tbaa !35
  %7917 = load i64, i64* %6403, align 16, !tbaa !25
  %7918 = trunc i64 %7917 to i8
  %7919 = icmp eq i8 %7918, 0
  %7920 = bitcast i32* %7619 to i64*
  %7921 = load volatile i64, i64* %7920, align 16, !tbaa !25
  %7922 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %7923 = select i1 %7919, i64 0, i64 %7922
  %7924 = or i64 %7921, %7923
  %7925 = trunc i64 %7924 to i32
  store volatile i32 %7925, i32* %7619, align 16, !tbaa !35
  %7926 = load i64, i64* %6414, align 8, !tbaa !25
  %7927 = trunc i64 %7926 to i8
  %7928 = icmp eq i8 %7927, 0
  %7929 = bitcast i32* %7620 to i64*
  %7930 = load volatile i64, i64* %7929, align 4, !tbaa !25
  %7931 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %7932 = select i1 %7928, i64 0, i64 %7931
  %7933 = or i64 %7930, %7932
  %7934 = trunc i64 %7933 to i32
  store volatile i32 %7934, i32* %7620, align 4, !tbaa !35
  %7935 = load i64, i64* %6425, align 8, !tbaa !25
  %7936 = trunc i64 %7935 to i8
  %7937 = icmp eq i8 %7936, 0
  %7938 = bitcast i32* %7619 to i64*
  %7939 = load volatile i64, i64* %7938, align 16, !tbaa !25
  %7940 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %7941 = select i1 %7937, i64 0, i64 %7940
  %7942 = or i64 %7939, %7941
  %7943 = trunc i64 %7942 to i32
  store volatile i32 %7943, i32* %7619, align 16, !tbaa !35
  %7944 = load i64, i64* %6436, align 8, !tbaa !25
  %7945 = trunc i64 %7944 to i8
  %7946 = icmp eq i8 %7945, 0
  %7947 = bitcast i32* %7620 to i64*
  %7948 = load volatile i64, i64* %7947, align 4, !tbaa !25
  %7949 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %7950 = select i1 %7946, i64 0, i64 %7949
  %7951 = or i64 %7948, %7950
  %7952 = trunc i64 %7951 to i32
  store volatile i32 %7952, i32* %7620, align 4, !tbaa !35
  %7953 = load i64, i64* %6447, align 8, !tbaa !25
  %7954 = trunc i64 %7953 to i8
  %7955 = icmp eq i8 %7954, 0
  %7956 = bitcast i32* %7619 to i64*
  %7957 = load volatile i64, i64* %7956, align 16, !tbaa !25
  %7958 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %7959 = select i1 %7955, i64 0, i64 %7958
  %7960 = or i64 %7957, %7959
  %7961 = trunc i64 %7960 to i32
  store volatile i32 %7961, i32* %7619, align 16, !tbaa !35
  %7962 = load i64, i64* %6458, align 8, !tbaa !25
  %7963 = trunc i64 %7962 to i8
  %7964 = icmp eq i8 %7963, 0
  %7965 = bitcast i32* %7620 to i64*
  %7966 = load volatile i64, i64* %7965, align 4, !tbaa !25
  %7967 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %7968 = select i1 %7964, i64 0, i64 %7967
  %7969 = or i64 %7966, %7968
  %7970 = trunc i64 %7969 to i32
  store volatile i32 %7970, i32* %7620, align 4, !tbaa !35
  %7971 = load i64, i64* %6468, align 16, !tbaa !25
  %7972 = trunc i64 %7971 to i8
  %7973 = icmp eq i8 %7972, 0
  %7974 = bitcast i32* %7619 to i64*
  %7975 = load volatile i64, i64* %7974, align 16, !tbaa !25
  %7976 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %7977 = select i1 %7973, i64 0, i64 %7976
  %7978 = or i64 %7975, %7977
  %7979 = trunc i64 %7978 to i32
  store volatile i32 %7979, i32* %7619, align 16, !tbaa !35
  %7980 = load i64, i64* %6479, align 8, !tbaa !25
  %7981 = trunc i64 %7980 to i8
  %7982 = icmp eq i8 %7981, 0
  %7983 = bitcast i32* %7620 to i64*
  %7984 = load volatile i64, i64* %7983, align 4, !tbaa !25
  %7985 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %7986 = select i1 %7982, i64 0, i64 %7985
  %7987 = or i64 %7984, %7986
  %7988 = trunc i64 %7987 to i32
  store volatile i32 %7988, i32* %7620, align 4, !tbaa !35
  %7989 = load i64, i64* %6490, align 8, !tbaa !25
  %7990 = trunc i64 %7989 to i8
  %7991 = icmp eq i8 %7990, 0
  %7992 = bitcast i32* %7619 to i64*
  %7993 = load volatile i64, i64* %7992, align 16, !tbaa !25
  %7994 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %7995 = select i1 %7991, i64 0, i64 %7994
  %7996 = or i64 %7993, %7995
  %7997 = trunc i64 %7996 to i32
  store volatile i32 %7997, i32* %7619, align 16, !tbaa !35
  %7998 = load i64, i64* %6501, align 8, !tbaa !25
  %7999 = trunc i64 %7998 to i8
  %8000 = icmp eq i8 %7999, 0
  %8001 = bitcast i32* %7620 to i64*
  %8002 = load volatile i64, i64* %8001, align 4, !tbaa !25
  %8003 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %8004 = select i1 %8000, i64 0, i64 %8003
  %8005 = or i64 %8002, %8004
  %8006 = trunc i64 %8005 to i32
  store volatile i32 %8006, i32* %7620, align 4, !tbaa !35
  %8007 = load i64, i64* %6512, align 8, !tbaa !25
  %8008 = trunc i64 %8007 to i8
  %8009 = icmp eq i8 %8008, 0
  %8010 = bitcast i32* %7619 to i64*
  %8011 = load volatile i64, i64* %8010, align 16, !tbaa !25
  %8012 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %8013 = select i1 %8009, i64 0, i64 %8012
  %8014 = or i64 %8011, %8013
  %8015 = trunc i64 %8014 to i32
  store volatile i32 %8015, i32* %7619, align 16, !tbaa !35
  %8016 = load i64, i64* %6523, align 8, !tbaa !25
  %8017 = trunc i64 %8016 to i8
  %8018 = icmp eq i8 %8017, 0
  %8019 = bitcast i32* %7620 to i64*
  %8020 = load volatile i64, i64* %8019, align 4, !tbaa !25
  %8021 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %8022 = select i1 %8018, i64 0, i64 %8021
  %8023 = or i64 %8020, %8022
  %8024 = trunc i64 %8023 to i32
  store volatile i32 %8024, i32* %7620, align 4, !tbaa !35
  %8025 = load i64, i64* %6534, align 8, !tbaa !25
  %8026 = trunc i64 %8025 to i8
  %8027 = icmp eq i8 %8026, 0
  %8028 = bitcast i32* %7619 to i64*
  %8029 = load volatile i64, i64* %8028, align 16, !tbaa !25
  %8030 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %8031 = select i1 %8027, i64 0, i64 %8030
  %8032 = or i64 %8029, %8031
  %8033 = trunc i64 %8032 to i32
  store volatile i32 %8033, i32* %7619, align 16, !tbaa !35
  %8034 = load i64, i64* %6545, align 8, !tbaa !25
  %8035 = trunc i64 %8034 to i8
  %8036 = icmp eq i8 %8035, 0
  %8037 = bitcast i32* %7620 to i64*
  %8038 = load volatile i64, i64* %8037, align 4, !tbaa !25
  %8039 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %8040 = select i1 %8036, i64 0, i64 %8039
  %8041 = or i64 %8038, %8040
  %8042 = trunc i64 %8041 to i32
  store volatile i32 %8042, i32* %7620, align 4, !tbaa !35
  %8043 = load i64, i64* %6556, align 8, !tbaa !25
  %8044 = trunc i64 %8043 to i8
  %8045 = icmp eq i8 %8044, 0
  %8046 = bitcast i32* %7619 to i64*
  %8047 = load volatile i64, i64* %8046, align 16, !tbaa !25
  %8048 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %8049 = select i1 %8045, i64 0, i64 %8048
  %8050 = or i64 %8047, %8049
  %8051 = trunc i64 %8050 to i32
  store volatile i32 %8051, i32* %7619, align 16, !tbaa !35
  %8052 = load i64, i64* %6567, align 8, !tbaa !25
  %8053 = trunc i64 %8052 to i8
  %8054 = icmp eq i8 %8053, 0
  %8055 = bitcast i32* %7620 to i64*
  %8056 = load volatile i64, i64* %8055, align 4, !tbaa !25
  %8057 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %8058 = select i1 %8054, i64 0, i64 %8057
  %8059 = or i64 %8056, %8058
  %8060 = trunc i64 %8059 to i32
  store volatile i32 %8060, i32* %7620, align 4, !tbaa !35
  %8061 = load i64, i64* %6578, align 8, !tbaa !25
  %8062 = trunc i64 %8061 to i8
  %8063 = icmp eq i8 %8062, 0
  %8064 = bitcast i32* %7619 to i64*
  %8065 = load volatile i64, i64* %8064, align 16, !tbaa !25
  %8066 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %8067 = select i1 %8063, i64 0, i64 %8066
  %8068 = or i64 %8065, %8067
  %8069 = trunc i64 %8068 to i32
  store volatile i32 %8069, i32* %7619, align 16, !tbaa !35
  %8070 = load i64, i64* %6589, align 8, !tbaa !25
  %8071 = trunc i64 %8070 to i8
  %8072 = icmp eq i8 %8071, 0
  %8073 = bitcast i32* %7620 to i64*
  %8074 = load volatile i64, i64* %8073, align 4, !tbaa !25
  %8075 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %8076 = select i1 %8072, i64 0, i64 %8075
  %8077 = or i64 %8074, %8076
  %8078 = trunc i64 %8077 to i32
  store volatile i32 %8078, i32* %7620, align 4, !tbaa !35
  %8079 = load i64, i64* %6600, align 8, !tbaa !25
  %8080 = trunc i64 %8079 to i8
  %8081 = icmp eq i8 %8080, 0
  %8082 = bitcast i32* %7619 to i64*
  %8083 = load volatile i64, i64* %8082, align 16, !tbaa !25
  %8084 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %8085 = select i1 %8081, i64 0, i64 %8084
  %8086 = or i64 %8083, %8085
  %8087 = trunc i64 %8086 to i32
  store volatile i32 %8087, i32* %7619, align 16, !tbaa !35
  %8088 = load i64, i64* %6611, align 16, !tbaa !25
  %8089 = trunc i64 %8088 to i8
  %8090 = icmp eq i8 %8089, 0
  %8091 = bitcast i32* %7620 to i64*
  %8092 = load volatile i64, i64* %8091, align 4, !tbaa !25
  %8093 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %8094 = select i1 %8090, i64 0, i64 %8093
  %8095 = or i64 %8092, %8094
  %8096 = trunc i64 %8095 to i32
  store volatile i32 %8096, i32* %7620, align 4, !tbaa !35
  %8097 = load i64, i64* %6622, align 8, !tbaa !25
  %8098 = trunc i64 %8097 to i8
  %8099 = icmp eq i8 %8098, 0
  %8100 = bitcast i32* %7619 to i64*
  %8101 = load volatile i64, i64* %8100, align 16, !tbaa !25
  %8102 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %8103 = select i1 %8099, i64 0, i64 %8102
  %8104 = or i64 %8101, %8103
  %8105 = trunc i64 %8104 to i32
  store volatile i32 %8105, i32* %7619, align 16, !tbaa !35
  %8106 = load i64, i64* %6633, align 8, !tbaa !25
  %8107 = trunc i64 %8106 to i8
  %8108 = icmp eq i8 %8107, 0
  %8109 = bitcast i32* %7620 to i64*
  %8110 = load volatile i64, i64* %8109, align 4, !tbaa !25
  %8111 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %8112 = select i1 %8108, i64 0, i64 %8111
  %8113 = or i64 %8110, %8112
  %8114 = trunc i64 %8113 to i32
  store volatile i32 %8114, i32* %7620, align 4, !tbaa !35
  %8115 = load i64, i64* %6644, align 8, !tbaa !25
  %8116 = trunc i64 %8115 to i8
  %8117 = icmp eq i8 %8116, 0
  %8118 = bitcast i32* %7619 to i64*
  %8119 = load volatile i64, i64* %8118, align 16, !tbaa !25
  %8120 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %8121 = select i1 %8117, i64 0, i64 %8120
  %8122 = or i64 %8119, %8121
  %8123 = trunc i64 %8122 to i32
  store volatile i32 %8123, i32* %7619, align 16, !tbaa !35
  %8124 = load i64, i64* %6655, align 8, !tbaa !25
  %8125 = trunc i64 %8124 to i8
  %8126 = icmp eq i8 %8125, 0
  %8127 = bitcast i32* %7620 to i64*
  %8128 = load volatile i64, i64* %8127, align 4, !tbaa !25
  %8129 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %8130 = select i1 %8126, i64 0, i64 %8129
  %8131 = or i64 %8128, %8130
  %8132 = trunc i64 %8131 to i32
  store volatile i32 %8132, i32* %7620, align 4, !tbaa !35
  %8133 = load i64, i64* %6666, align 8, !tbaa !25
  %8134 = trunc i64 %8133 to i8
  %8135 = icmp eq i8 %8134, 0
  %8136 = bitcast i32* %7619 to i64*
  %8137 = load volatile i64, i64* %8136, align 16, !tbaa !25
  %8138 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %8139 = select i1 %8135, i64 0, i64 %8138
  %8140 = or i64 %8137, %8139
  %8141 = trunc i64 %8140 to i32
  store volatile i32 %8141, i32* %7619, align 16, !tbaa !35
  %8142 = load i64, i64* %6677, align 16, !tbaa !25
  %8143 = trunc i64 %8142 to i8
  %8144 = icmp eq i8 %8143, 0
  %8145 = bitcast i32* %7620 to i64*
  %8146 = load volatile i64, i64* %8145, align 4, !tbaa !25
  %8147 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %8148 = select i1 %8144, i64 0, i64 %8147
  %8149 = or i64 %8146, %8148
  %8150 = trunc i64 %8149 to i32
  store volatile i32 %8150, i32* %7620, align 4, !tbaa !35
  %8151 = load i64, i64* %6688, align 8, !tbaa !25
  %8152 = trunc i64 %8151 to i8
  %8153 = icmp eq i8 %8152, 0
  %8154 = bitcast i32* %7619 to i64*
  %8155 = load volatile i64, i64* %8154, align 16, !tbaa !25
  %8156 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %8157 = select i1 %8153, i64 0, i64 %8156
  %8158 = or i64 %8155, %8157
  %8159 = trunc i64 %8158 to i32
  store volatile i32 %8159, i32* %7619, align 16, !tbaa !35
  %8160 = load i64, i64* %6699, align 8, !tbaa !25
  %8161 = trunc i64 %8160 to i8
  %8162 = icmp eq i8 %8161, 0
  %8163 = bitcast i32* %7620 to i64*
  %8164 = load volatile i64, i64* %8163, align 4, !tbaa !25
  %8165 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %8166 = select i1 %8162, i64 0, i64 %8165
  %8167 = or i64 %8164, %8166
  %8168 = trunc i64 %8167 to i32
  store volatile i32 %8168, i32* %7620, align 4, !tbaa !35
  %8169 = load i64, i64* %6710, align 8, !tbaa !25
  %8170 = trunc i64 %8169 to i8
  %8171 = icmp eq i8 %8170, 0
  %8172 = bitcast i32* %7619 to i64*
  %8173 = load volatile i64, i64* %8172, align 16, !tbaa !25
  %8174 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %8175 = select i1 %8171, i64 0, i64 %8174
  %8176 = or i64 %8173, %8175
  %8177 = trunc i64 %8176 to i32
  store volatile i32 %8177, i32* %7619, align 16, !tbaa !35
  %8178 = load i64, i64* %6721, align 8, !tbaa !25
  %8179 = trunc i64 %8178 to i8
  %8180 = icmp eq i8 %8179, 0
  %8181 = bitcast i32* %7620 to i64*
  %8182 = load volatile i64, i64* %8181, align 4, !tbaa !25
  %8183 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %8184 = select i1 %8180, i64 0, i64 %8183
  %8185 = or i64 %8182, %8184
  %8186 = trunc i64 %8185 to i32
  store volatile i32 %8186, i32* %7620, align 4, !tbaa !35
  %8187 = load i64, i64* %6732, align 8, !tbaa !25
  %8188 = trunc i64 %8187 to i8
  %8189 = icmp eq i8 %8188, 0
  %8190 = bitcast i32* %7619 to i64*
  %8191 = load volatile i64, i64* %8190, align 16, !tbaa !25
  %8192 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %8193 = select i1 %8189, i64 0, i64 %8192
  %8194 = or i64 %8191, %8193
  %8195 = trunc i64 %8194 to i32
  store volatile i32 %8195, i32* %7619, align 16, !tbaa !35
  %8196 = load i64, i64* %6743, align 8, !tbaa !25
  %8197 = trunc i64 %8196 to i8
  %8198 = icmp eq i8 %8197, 0
  %8199 = bitcast i32* %7620 to i64*
  %8200 = load volatile i64, i64* %8199, align 4, !tbaa !25
  %8201 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %8202 = select i1 %8198, i64 0, i64 %8201
  %8203 = or i64 %8200, %8202
  %8204 = trunc i64 %8203 to i32
  store volatile i32 %8204, i32* %7620, align 4, !tbaa !35
  %8205 = load i64, i64* %6754, align 8, !tbaa !25
  %8206 = trunc i64 %8205 to i8
  %8207 = icmp eq i8 %8206, 0
  %8208 = bitcast i32* %7619 to i64*
  %8209 = load volatile i64, i64* %8208, align 16, !tbaa !25
  %8210 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %8211 = select i1 %8207, i64 0, i64 %8210
  %8212 = or i64 %8209, %8211
  %8213 = trunc i64 %8212 to i32
  store volatile i32 %8213, i32* %7619, align 16, !tbaa !35
  %8214 = load i64, i64* %6765, align 8, !tbaa !25
  %8215 = trunc i64 %8214 to i8
  %8216 = icmp eq i8 %8215, 0
  %8217 = bitcast i32* %7620 to i64*
  %8218 = load volatile i64, i64* %8217, align 4, !tbaa !25
  %8219 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %8220 = select i1 %8216, i64 0, i64 %8219
  %8221 = or i64 %8218, %8220
  %8222 = trunc i64 %8221 to i32
  store volatile i32 %8222, i32* %7620, align 4, !tbaa !35
  %8223 = load i64, i64* %6776, align 8, !tbaa !25
  %8224 = trunc i64 %8223 to i8
  %8225 = icmp eq i8 %8224, 0
  %8226 = bitcast i32* %7619 to i64*
  %8227 = load volatile i64, i64* %8226, align 16, !tbaa !25
  %8228 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %8229 = select i1 %8225, i64 0, i64 %8228
  %8230 = or i64 %8227, %8229
  %8231 = trunc i64 %8230 to i32
  store volatile i32 %8231, i32* %7619, align 16, !tbaa !35
  %8232 = load i64, i64* %6787, align 8, !tbaa !25
  %8233 = trunc i64 %8232 to i8
  %8234 = icmp eq i8 %8233, 0
  %8235 = bitcast i32* %7620 to i64*
  %8236 = load volatile i64, i64* %8235, align 4, !tbaa !25
  %8237 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %8238 = select i1 %8234, i64 0, i64 %8237
  %8239 = or i64 %8236, %8238
  %8240 = trunc i64 %8239 to i32
  store volatile i32 %8240, i32* %7620, align 4, !tbaa !35
  %8241 = load i64, i64* %6798, align 8, !tbaa !25
  %8242 = trunc i64 %8241 to i8
  %8243 = icmp eq i8 %8242, 0
  %8244 = bitcast i32* %7619 to i64*
  %8245 = load volatile i64, i64* %8244, align 16, !tbaa !25
  %8246 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %8247 = select i1 %8243, i64 0, i64 %8246
  %8248 = or i64 %8245, %8247
  %8249 = trunc i64 %8248 to i32
  store volatile i32 %8249, i32* %7619, align 16, !tbaa !35
  %8250 = load i64, i64* %6809, align 8, !tbaa !25
  %8251 = trunc i64 %8250 to i8
  %8252 = icmp eq i8 %8251, 0
  %8253 = bitcast i32* %7620 to i64*
  %8254 = load volatile i64, i64* %8253, align 4, !tbaa !25
  %8255 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %8256 = select i1 %8252, i64 0, i64 %8255
  %8257 = or i64 %8254, %8256
  %8258 = trunc i64 %8257 to i32
  store volatile i32 %8258, i32* %7620, align 4, !tbaa !35
  %8259 = load i64, i64* %6820, align 8, !tbaa !25
  %8260 = trunc i64 %8259 to i8
  %8261 = icmp eq i8 %8260, 0
  %8262 = bitcast i32* %7619 to i64*
  %8263 = load volatile i64, i64* %8262, align 16, !tbaa !25
  %8264 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %8265 = select i1 %8261, i64 0, i64 %8264
  %8266 = or i64 %8263, %8265
  %8267 = trunc i64 %8266 to i32
  store volatile i32 %8267, i32* %7619, align 16, !tbaa !35
  %8268 = load i64, i64* %6831, align 8, !tbaa !25
  %8269 = trunc i64 %8268 to i8
  %8270 = icmp eq i8 %8269, 0
  %8271 = bitcast i32* %7620 to i64*
  %8272 = load volatile i64, i64* %8271, align 4, !tbaa !25
  %8273 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %8274 = select i1 %8270, i64 0, i64 %8273
  %8275 = or i64 %8272, %8274
  %8276 = trunc i64 %8275 to i32
  store volatile i32 %8276, i32* %7620, align 4, !tbaa !35
  %8277 = load i64, i64* %6842, align 8, !tbaa !25
  %8278 = trunc i64 %8277 to i8
  %8279 = icmp eq i8 %8278, 0
  %8280 = bitcast i32* %7619 to i64*
  %8281 = load volatile i64, i64* %8280, align 16, !tbaa !25
  %8282 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %8283 = select i1 %8279, i64 0, i64 %8282
  %8284 = or i64 %8281, %8283
  %8285 = trunc i64 %8284 to i32
  store volatile i32 %8285, i32* %7619, align 16, !tbaa !35
  %8286 = load i64, i64* %6853, align 8, !tbaa !25
  %8287 = trunc i64 %8286 to i8
  %8288 = icmp eq i8 %8287, 0
  %8289 = bitcast i32* %7620 to i64*
  %8290 = load volatile i64, i64* %8289, align 4, !tbaa !25
  %8291 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %8292 = select i1 %8288, i64 0, i64 %8291
  %8293 = or i64 %8290, %8292
  %8294 = trunc i64 %8293 to i32
  store volatile i32 %8294, i32* %7620, align 4, !tbaa !35
  %8295 = load i64, i64* %6864, align 8, !tbaa !25
  %8296 = trunc i64 %8295 to i8
  %8297 = icmp eq i8 %8296, 0
  %8298 = bitcast i32* %7619 to i64*
  %8299 = load volatile i64, i64* %8298, align 16, !tbaa !25
  %8300 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %8301 = select i1 %8297, i64 0, i64 %8300
  %8302 = or i64 %8299, %8301
  %8303 = trunc i64 %8302 to i32
  store volatile i32 %8303, i32* %7619, align 16, !tbaa !35
  %8304 = load i64, i64* %6875, align 8, !tbaa !25
  %8305 = trunc i64 %8304 to i8
  %8306 = icmp eq i8 %8305, 0
  %8307 = bitcast i32* %7620 to i64*
  %8308 = load volatile i64, i64* %8307, align 4, !tbaa !25
  %8309 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %8310 = select i1 %8306, i64 0, i64 %8309
  %8311 = or i64 %8308, %8310
  %8312 = trunc i64 %8311 to i32
  store volatile i32 %8312, i32* %7620, align 4, !tbaa !35
  %8313 = load i64, i64* %6886, align 8, !tbaa !25
  %8314 = trunc i64 %8313 to i8
  %8315 = icmp eq i8 %8314, 0
  %8316 = bitcast i32* %7619 to i64*
  %8317 = load volatile i64, i64* %8316, align 16, !tbaa !25
  %8318 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %8319 = select i1 %8315, i64 0, i64 %8318
  %8320 = or i64 %8317, %8319
  %8321 = trunc i64 %8320 to i32
  store volatile i32 %8321, i32* %7619, align 16, !tbaa !35
  %8322 = load i64, i64* %6897, align 8, !tbaa !25
  %8323 = trunc i64 %8322 to i8
  %8324 = icmp eq i8 %8323, 0
  %8325 = bitcast i32* %7620 to i64*
  %8326 = load volatile i64, i64* %8325, align 4, !tbaa !25
  %8327 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %8328 = select i1 %8324, i64 0, i64 %8327
  %8329 = or i64 %8326, %8328
  %8330 = trunc i64 %8329 to i32
  store volatile i32 %8330, i32* %7620, align 4, !tbaa !35
  %8331 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 22
  store i32 0, i32* %8331, align 8, !tbaa !35
  %8332 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 23
  store i32 0, i32* %8332, align 4, !tbaa !35
  %8333 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 21
  %8334 = bitcast i8* %8333 to i64*
  %8335 = load i64, i64* %8334, align 8, !tbaa !25
  %8336 = trunc i64 %8335 to i8
  store i8 %8336, i8* %8, align 16, !tbaa !14
  %8337 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 22
  %8338 = bitcast i8* %8337 to i64*
  %8339 = load i64, i64* %8338, align 8, !tbaa !25
  %8340 = trunc i64 %8339 to i8
  %8341 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 1
  store i8 %8340, i8* %8341, align 1, !tbaa !14
  %8342 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 23
  %8343 = bitcast i8* %8342 to i64*
  %8344 = load i64, i64* %8343, align 8, !tbaa !25
  %8345 = trunc i64 %8344 to i8
  %8346 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 2
  store i8 %8345, i8* %8346, align 2, !tbaa !14
  %8347 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 24
  %8348 = bitcast i8* %8347 to i64*
  %8349 = load i64, i64* %8348, align 8, !tbaa !25
  %8350 = trunc i64 %8349 to i8
  %8351 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 3
  store i8 %8350, i8* %8351, align 1, !tbaa !14
  %8352 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 25
  %8353 = bitcast i8* %8352 to i64*
  %8354 = load i64, i64* %8353, align 8, !tbaa !25
  %8355 = trunc i64 %8354 to i8
  %8356 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 4
  store i8 %8355, i8* %8356, align 4, !tbaa !14
  %8357 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 26
  %8358 = bitcast i8* %8357 to i64*
  %8359 = load i64, i64* %8358, align 8, !tbaa !25
  %8360 = trunc i64 %8359 to i8
  %8361 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 5
  store i8 %8360, i8* %8361, align 1, !tbaa !14
  %8362 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 27
  %8363 = bitcast i8* %8362 to i64*
  %8364 = load i64, i64* %8363, align 8, !tbaa !25
  %8365 = trunc i64 %8364 to i8
  %8366 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 6
  store i8 %8365, i8* %8366, align 2, !tbaa !14
  %8367 = bitcast [56 x i8]* %4 to i64*
  %8368 = load i64, i64* %8367, align 16, !tbaa !25
  %8369 = trunc i64 %8368 to i8
  %8370 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 7
  store i8 %8369, i8* %8370, align 1, !tbaa !14
  %8371 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 1
  %8372 = bitcast i8* %8371 to i64*
  %8373 = load i64, i64* %8372, align 8, !tbaa !25
  %8374 = trunc i64 %8373 to i8
  %8375 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 8
  store i8 %8374, i8* %8375, align 8, !tbaa !14
  %8376 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 2
  %8377 = bitcast i8* %8376 to i64*
  %8378 = load i64, i64* %8377, align 8, !tbaa !25
  %8379 = trunc i64 %8378 to i8
  %8380 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 9
  store i8 %8379, i8* %8380, align 1, !tbaa !14
  %8381 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 3
  %8382 = bitcast i8* %8381 to i64*
  %8383 = load i64, i64* %8382, align 8, !tbaa !25
  %8384 = trunc i64 %8383 to i8
  %8385 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 10
  store i8 %8384, i8* %8385, align 2, !tbaa !14
  %8386 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 4
  %8387 = bitcast i8* %8386 to i64*
  %8388 = load i64, i64* %8387, align 8, !tbaa !25
  %8389 = trunc i64 %8388 to i8
  %8390 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 11
  store i8 %8389, i8* %8390, align 1, !tbaa !14
  %8391 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 5
  %8392 = bitcast i8* %8391 to i64*
  %8393 = load i64, i64* %8392, align 8, !tbaa !25
  %8394 = trunc i64 %8393 to i8
  %8395 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 12
  store i8 %8394, i8* %8395, align 4, !tbaa !14
  %8396 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 6
  %8397 = bitcast i8* %8396 to i64*
  %8398 = load i64, i64* %8397, align 8, !tbaa !25
  %8399 = trunc i64 %8398 to i8
  %8400 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 13
  store i8 %8399, i8* %8400, align 1, !tbaa !14
  %8401 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 7
  %8402 = bitcast i8* %8401 to i64*
  %8403 = load i64, i64* %8402, align 8, !tbaa !25
  %8404 = trunc i64 %8403 to i8
  %8405 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 14
  store i8 %8404, i8* %8405, align 2, !tbaa !14
  %8406 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 8
  %8407 = bitcast i8* %8406 to i64*
  %8408 = load i64, i64* %8407, align 8, !tbaa !25
  %8409 = trunc i64 %8408 to i8
  %8410 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 15
  store i8 %8409, i8* %8410, align 1, !tbaa !14
  %8411 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 9
  %8412 = bitcast i8* %8411 to i64*
  %8413 = load i64, i64* %8412, align 8, !tbaa !25
  %8414 = trunc i64 %8413 to i8
  %8415 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 16
  store i8 %8414, i8* %8415, align 16, !tbaa !14
  %8416 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 10
  %8417 = bitcast i8* %8416 to i64*
  %8418 = load i64, i64* %8417, align 8, !tbaa !25
  %8419 = trunc i64 %8418 to i8
  %8420 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 17
  store i8 %8419, i8* %8420, align 1, !tbaa !14
  %8421 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 11
  %8422 = bitcast i8* %8421 to i64*
  %8423 = load i64, i64* %8422, align 8, !tbaa !25
  %8424 = trunc i64 %8423 to i8
  %8425 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 18
  store i8 %8424, i8* %8425, align 2, !tbaa !14
  %8426 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 12
  %8427 = bitcast i8* %8426 to i64*
  %8428 = load i64, i64* %8427, align 8, !tbaa !25
  %8429 = trunc i64 %8428 to i8
  %8430 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 19
  store i8 %8429, i8* %8430, align 1, !tbaa !14
  %8431 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 13
  %8432 = bitcast i8* %8431 to i64*
  %8433 = load i64, i64* %8432, align 8, !tbaa !25
  %8434 = trunc i64 %8433 to i8
  %8435 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 20
  store i8 %8434, i8* %8435, align 4, !tbaa !14
  %8436 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 14
  %8437 = bitcast i8* %8436 to i64*
  %8438 = load i64, i64* %8437, align 8, !tbaa !25
  %8439 = trunc i64 %8438 to i8
  %8440 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 21
  store i8 %8439, i8* %8440, align 1, !tbaa !14
  %8441 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 15
  %8442 = bitcast i8* %8441 to i64*
  %8443 = load i64, i64* %8442, align 8, !tbaa !25
  %8444 = trunc i64 %8443 to i8
  %8445 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 22
  store i8 %8444, i8* %8445, align 2, !tbaa !14
  %8446 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 16
  %8447 = bitcast i8* %8446 to i64*
  %8448 = load i64, i64* %8447, align 16, !tbaa !25
  %8449 = trunc i64 %8448 to i8
  %8450 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 23
  store i8 %8449, i8* %8450, align 1, !tbaa !14
  %8451 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 17
  %8452 = bitcast i8* %8451 to i64*
  %8453 = load i64, i64* %8452, align 8, !tbaa !25
  %8454 = trunc i64 %8453 to i8
  %8455 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 24
  store i8 %8454, i8* %8455, align 8, !tbaa !14
  %8456 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 18
  %8457 = bitcast i8* %8456 to i64*
  %8458 = load i64, i64* %8457, align 8, !tbaa !25
  %8459 = trunc i64 %8458 to i8
  %8460 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 25
  store i8 %8459, i8* %8460, align 1, !tbaa !14
  %8461 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 19
  %8462 = bitcast i8* %8461 to i64*
  %8463 = load i64, i64* %8462, align 8, !tbaa !25
  %8464 = trunc i64 %8463 to i8
  %8465 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 26
  store i8 %8464, i8* %8465, align 2, !tbaa !14
  %8466 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 20
  %8467 = bitcast i8* %8466 to i64*
  %8468 = load i64, i64* %8467, align 8, !tbaa !25
  %8469 = trunc i64 %8468 to i8
  %8470 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 27
  store i8 %8469, i8* %8470, align 1, !tbaa !14
  %8471 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 49
  %8472 = bitcast i8* %8471 to i64*
  %8473 = load i64, i64* %8472, align 8, !tbaa !25
  %8474 = trunc i64 %8473 to i8
  %8475 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 28
  store i8 %8474, i8* %8475, align 4, !tbaa !14
  %8476 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 50
  %8477 = bitcast i8* %8476 to i64*
  %8478 = load i64, i64* %8477, align 8, !tbaa !25
  %8479 = trunc i64 %8478 to i8
  %8480 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 29
  store i8 %8479, i8* %8480, align 1, !tbaa !14
  %8481 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 51
  %8482 = bitcast i8* %8481 to i64*
  %8483 = load i64, i64* %8482, align 8, !tbaa !25
  %8484 = trunc i64 %8483 to i8
  %8485 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 30
  store i8 %8484, i8* %8485, align 2, !tbaa !14
  %8486 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 52
  %8487 = bitcast i8* %8486 to i64*
  %8488 = load i64, i64* %8487, align 8, !tbaa !25
  %8489 = trunc i64 %8488 to i8
  %8490 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 31
  store i8 %8489, i8* %8490, align 1, !tbaa !14
  %8491 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 53
  %8492 = bitcast i8* %8491 to i64*
  %8493 = load i64, i64* %8492, align 8, !tbaa !25
  %8494 = trunc i64 %8493 to i8
  %8495 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 32
  store i8 %8494, i8* %8495, align 16, !tbaa !14
  %8496 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 54
  %8497 = bitcast i8* %8496 to i64*
  %8498 = load i64, i64* %8497, align 8, !tbaa !25
  %8499 = trunc i64 %8498 to i8
  %8500 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 33
  store i8 %8499, i8* %8500, align 1, !tbaa !14
  %8501 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 55
  %8502 = bitcast i8* %8501 to i64*
  %8503 = load i64, i64* %8502, align 8, !tbaa !25
  %8504 = trunc i64 %8503 to i8
  %8505 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 34
  store i8 %8504, i8* %8505, align 2, !tbaa !14
  %8506 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 28
  %8507 = bitcast i8* %8506 to i64*
  %8508 = load i64, i64* %8507, align 8, !tbaa !25
  %8509 = trunc i64 %8508 to i8
  %8510 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 35
  store i8 %8509, i8* %8510, align 1, !tbaa !14
  %8511 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 29
  %8512 = bitcast i8* %8511 to i64*
  %8513 = load i64, i64* %8512, align 8, !tbaa !25
  %8514 = trunc i64 %8513 to i8
  %8515 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 36
  store i8 %8514, i8* %8515, align 4, !tbaa !14
  %8516 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 30
  %8517 = bitcast i8* %8516 to i64*
  %8518 = load i64, i64* %8517, align 8, !tbaa !25
  %8519 = trunc i64 %8518 to i8
  %8520 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 37
  store i8 %8519, i8* %8520, align 1, !tbaa !14
  %8521 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 31
  %8522 = bitcast i8* %8521 to i64*
  %8523 = load i64, i64* %8522, align 8, !tbaa !25
  %8524 = trunc i64 %8523 to i8
  %8525 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 38
  store i8 %8524, i8* %8525, align 2, !tbaa !14
  %8526 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 32
  %8527 = bitcast i8* %8526 to i64*
  %8528 = load i64, i64* %8527, align 16, !tbaa !25
  %8529 = trunc i64 %8528 to i8
  %8530 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 39
  store i8 %8529, i8* %8530, align 1, !tbaa !14
  %8531 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 33
  %8532 = bitcast i8* %8531 to i64*
  %8533 = load i64, i64* %8532, align 8, !tbaa !25
  %8534 = trunc i64 %8533 to i8
  %8535 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 40
  store i8 %8534, i8* %8535, align 8, !tbaa !14
  %8536 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 34
  %8537 = bitcast i8* %8536 to i64*
  %8538 = load i64, i64* %8537, align 8, !tbaa !25
  %8539 = trunc i64 %8538 to i8
  %8540 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 41
  store i8 %8539, i8* %8540, align 1, !tbaa !14
  %8541 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 35
  %8542 = bitcast i8* %8541 to i64*
  %8543 = load i64, i64* %8542, align 8, !tbaa !25
  %8544 = trunc i64 %8543 to i8
  %8545 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 42
  store i8 %8544, i8* %8545, align 2, !tbaa !14
  %8546 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 36
  %8547 = bitcast i8* %8546 to i64*
  %8548 = load i64, i64* %8547, align 8, !tbaa !25
  %8549 = trunc i64 %8548 to i8
  %8550 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 43
  store i8 %8549, i8* %8550, align 1, !tbaa !14
  %8551 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 37
  %8552 = bitcast i8* %8551 to i64*
  %8553 = load i64, i64* %8552, align 8, !tbaa !25
  %8554 = trunc i64 %8553 to i8
  %8555 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 44
  store i8 %8554, i8* %8555, align 4, !tbaa !14
  %8556 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 38
  %8557 = bitcast i8* %8556 to i64*
  %8558 = load i64, i64* %8557, align 8, !tbaa !25
  %8559 = trunc i64 %8558 to i8
  %8560 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 45
  store i8 %8559, i8* %8560, align 1, !tbaa !14
  %8561 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 39
  %8562 = bitcast i8* %8561 to i64*
  %8563 = load i64, i64* %8562, align 8, !tbaa !25
  %8564 = trunc i64 %8563 to i8
  %8565 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 46
  store i8 %8564, i8* %8565, align 2, !tbaa !14
  %8566 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 40
  %8567 = bitcast i8* %8566 to i64*
  %8568 = load i64, i64* %8567, align 8, !tbaa !25
  %8569 = trunc i64 %8568 to i8
  %8570 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 47
  store i8 %8569, i8* %8570, align 1, !tbaa !14
  %8571 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 41
  %8572 = bitcast i8* %8571 to i64*
  %8573 = load i64, i64* %8572, align 8, !tbaa !25
  %8574 = trunc i64 %8573 to i8
  %8575 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 48
  store i8 %8574, i8* %8575, align 16, !tbaa !14
  %8576 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 42
  %8577 = bitcast i8* %8576 to i64*
  %8578 = load i64, i64* %8577, align 8, !tbaa !25
  %8579 = trunc i64 %8578 to i8
  %8580 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 49
  store i8 %8579, i8* %8580, align 1, !tbaa !14
  %8581 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 43
  %8582 = bitcast i8* %8581 to i64*
  %8583 = load i64, i64* %8582, align 8, !tbaa !25
  %8584 = trunc i64 %8583 to i8
  %8585 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 50
  store i8 %8584, i8* %8585, align 2, !tbaa !14
  %8586 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 44
  %8587 = bitcast i8* %8586 to i64*
  %8588 = load i64, i64* %8587, align 8, !tbaa !25
  %8589 = trunc i64 %8588 to i8
  %8590 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 51
  store i8 %8589, i8* %8590, align 1, !tbaa !14
  %8591 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 45
  %8592 = bitcast i8* %8591 to i64*
  %8593 = load i64, i64* %8592, align 8, !tbaa !25
  %8594 = trunc i64 %8593 to i8
  %8595 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 52
  store i8 %8594, i8* %8595, align 4, !tbaa !14
  %8596 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 46
  %8597 = bitcast i8* %8596 to i64*
  %8598 = load i64, i64* %8597, align 8, !tbaa !25
  %8599 = trunc i64 %8598 to i8
  %8600 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 53
  store i8 %8599, i8* %8600, align 1, !tbaa !14
  %8601 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 47
  %8602 = bitcast i8* %8601 to i64*
  %8603 = load i64, i64* %8602, align 8, !tbaa !25
  %8604 = trunc i64 %8603 to i8
  %8605 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 54
  store i8 %8604, i8* %8605, align 2, !tbaa !14
  %8606 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 48
  %8607 = bitcast i8* %8606 to i64*
  %8608 = load i64, i64* %8607, align 16, !tbaa !25
  %8609 = trunc i64 %8608 to i8
  %8610 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 55
  store i8 %8609, i8* %8610, align 1, !tbaa !14
  %8611 = load i64, i64* %6381, align 8, !tbaa !25
  %8612 = trunc i64 %8611 to i8
  %8613 = icmp eq i8 %8612, 0
  %8614 = bitcast i32* %8331 to i64*
  %8615 = load volatile i64, i64* %8614, align 8, !tbaa !25
  %8616 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %8617 = select i1 %8613, i64 0, i64 %8616
  %8618 = or i64 %8615, %8617
  %8619 = trunc i64 %8618 to i32
  store volatile i32 %8619, i32* %8331, align 8, !tbaa !35
  %8620 = load i64, i64* %6392, align 8, !tbaa !25
  %8621 = trunc i64 %8620 to i8
  %8622 = icmp eq i8 %8621, 0
  %8623 = bitcast i32* %8332 to i64*
  %8624 = load volatile i64, i64* %8623, align 4, !tbaa !25
  %8625 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %8626 = select i1 %8622, i64 0, i64 %8625
  %8627 = or i64 %8624, %8626
  %8628 = trunc i64 %8627 to i32
  store volatile i32 %8628, i32* %8332, align 4, !tbaa !35
  %8629 = load i64, i64* %6403, align 16, !tbaa !25
  %8630 = trunc i64 %8629 to i8
  %8631 = icmp eq i8 %8630, 0
  %8632 = bitcast i32* %8331 to i64*
  %8633 = load volatile i64, i64* %8632, align 8, !tbaa !25
  %8634 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %8635 = select i1 %8631, i64 0, i64 %8634
  %8636 = or i64 %8633, %8635
  %8637 = trunc i64 %8636 to i32
  store volatile i32 %8637, i32* %8331, align 8, !tbaa !35
  %8638 = load i64, i64* %6414, align 8, !tbaa !25
  %8639 = trunc i64 %8638 to i8
  %8640 = icmp eq i8 %8639, 0
  %8641 = bitcast i32* %8332 to i64*
  %8642 = load volatile i64, i64* %8641, align 4, !tbaa !25
  %8643 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %8644 = select i1 %8640, i64 0, i64 %8643
  %8645 = or i64 %8642, %8644
  %8646 = trunc i64 %8645 to i32
  store volatile i32 %8646, i32* %8332, align 4, !tbaa !35
  %8647 = load i64, i64* %6425, align 8, !tbaa !25
  %8648 = trunc i64 %8647 to i8
  %8649 = icmp eq i8 %8648, 0
  %8650 = bitcast i32* %8331 to i64*
  %8651 = load volatile i64, i64* %8650, align 8, !tbaa !25
  %8652 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %8653 = select i1 %8649, i64 0, i64 %8652
  %8654 = or i64 %8651, %8653
  %8655 = trunc i64 %8654 to i32
  store volatile i32 %8655, i32* %8331, align 8, !tbaa !35
  %8656 = load i64, i64* %6436, align 8, !tbaa !25
  %8657 = trunc i64 %8656 to i8
  %8658 = icmp eq i8 %8657, 0
  %8659 = bitcast i32* %8332 to i64*
  %8660 = load volatile i64, i64* %8659, align 4, !tbaa !25
  %8661 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %8662 = select i1 %8658, i64 0, i64 %8661
  %8663 = or i64 %8660, %8662
  %8664 = trunc i64 %8663 to i32
  store volatile i32 %8664, i32* %8332, align 4, !tbaa !35
  %8665 = load i64, i64* %6447, align 8, !tbaa !25
  %8666 = trunc i64 %8665 to i8
  %8667 = icmp eq i8 %8666, 0
  %8668 = bitcast i32* %8331 to i64*
  %8669 = load volatile i64, i64* %8668, align 8, !tbaa !25
  %8670 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %8671 = select i1 %8667, i64 0, i64 %8670
  %8672 = or i64 %8669, %8671
  %8673 = trunc i64 %8672 to i32
  store volatile i32 %8673, i32* %8331, align 8, !tbaa !35
  %8674 = load i64, i64* %6458, align 8, !tbaa !25
  %8675 = trunc i64 %8674 to i8
  %8676 = icmp eq i8 %8675, 0
  %8677 = bitcast i32* %8332 to i64*
  %8678 = load volatile i64, i64* %8677, align 4, !tbaa !25
  %8679 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %8680 = select i1 %8676, i64 0, i64 %8679
  %8681 = or i64 %8678, %8680
  %8682 = trunc i64 %8681 to i32
  store volatile i32 %8682, i32* %8332, align 4, !tbaa !35
  %8683 = load i64, i64* %6468, align 16, !tbaa !25
  %8684 = trunc i64 %8683 to i8
  %8685 = icmp eq i8 %8684, 0
  %8686 = bitcast i32* %8331 to i64*
  %8687 = load volatile i64, i64* %8686, align 8, !tbaa !25
  %8688 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %8689 = select i1 %8685, i64 0, i64 %8688
  %8690 = or i64 %8687, %8689
  %8691 = trunc i64 %8690 to i32
  store volatile i32 %8691, i32* %8331, align 8, !tbaa !35
  %8692 = load i64, i64* %6479, align 8, !tbaa !25
  %8693 = trunc i64 %8692 to i8
  %8694 = icmp eq i8 %8693, 0
  %8695 = bitcast i32* %8332 to i64*
  %8696 = load volatile i64, i64* %8695, align 4, !tbaa !25
  %8697 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %8698 = select i1 %8694, i64 0, i64 %8697
  %8699 = or i64 %8696, %8698
  %8700 = trunc i64 %8699 to i32
  store volatile i32 %8700, i32* %8332, align 4, !tbaa !35
  %8701 = load i64, i64* %6490, align 8, !tbaa !25
  %8702 = trunc i64 %8701 to i8
  %8703 = icmp eq i8 %8702, 0
  %8704 = bitcast i32* %8331 to i64*
  %8705 = load volatile i64, i64* %8704, align 8, !tbaa !25
  %8706 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %8707 = select i1 %8703, i64 0, i64 %8706
  %8708 = or i64 %8705, %8707
  %8709 = trunc i64 %8708 to i32
  store volatile i32 %8709, i32* %8331, align 8, !tbaa !35
  %8710 = load i64, i64* %6501, align 8, !tbaa !25
  %8711 = trunc i64 %8710 to i8
  %8712 = icmp eq i8 %8711, 0
  %8713 = bitcast i32* %8332 to i64*
  %8714 = load volatile i64, i64* %8713, align 4, !tbaa !25
  %8715 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %8716 = select i1 %8712, i64 0, i64 %8715
  %8717 = or i64 %8714, %8716
  %8718 = trunc i64 %8717 to i32
  store volatile i32 %8718, i32* %8332, align 4, !tbaa !35
  %8719 = load i64, i64* %6512, align 8, !tbaa !25
  %8720 = trunc i64 %8719 to i8
  %8721 = icmp eq i8 %8720, 0
  %8722 = bitcast i32* %8331 to i64*
  %8723 = load volatile i64, i64* %8722, align 8, !tbaa !25
  %8724 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %8725 = select i1 %8721, i64 0, i64 %8724
  %8726 = or i64 %8723, %8725
  %8727 = trunc i64 %8726 to i32
  store volatile i32 %8727, i32* %8331, align 8, !tbaa !35
  %8728 = load i64, i64* %6523, align 8, !tbaa !25
  %8729 = trunc i64 %8728 to i8
  %8730 = icmp eq i8 %8729, 0
  %8731 = bitcast i32* %8332 to i64*
  %8732 = load volatile i64, i64* %8731, align 4, !tbaa !25
  %8733 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %8734 = select i1 %8730, i64 0, i64 %8733
  %8735 = or i64 %8732, %8734
  %8736 = trunc i64 %8735 to i32
  store volatile i32 %8736, i32* %8332, align 4, !tbaa !35
  %8737 = load i64, i64* %6534, align 8, !tbaa !25
  %8738 = trunc i64 %8737 to i8
  %8739 = icmp eq i8 %8738, 0
  %8740 = bitcast i32* %8331 to i64*
  %8741 = load volatile i64, i64* %8740, align 8, !tbaa !25
  %8742 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %8743 = select i1 %8739, i64 0, i64 %8742
  %8744 = or i64 %8741, %8743
  %8745 = trunc i64 %8744 to i32
  store volatile i32 %8745, i32* %8331, align 8, !tbaa !35
  %8746 = load i64, i64* %6545, align 8, !tbaa !25
  %8747 = trunc i64 %8746 to i8
  %8748 = icmp eq i8 %8747, 0
  %8749 = bitcast i32* %8332 to i64*
  %8750 = load volatile i64, i64* %8749, align 4, !tbaa !25
  %8751 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %8752 = select i1 %8748, i64 0, i64 %8751
  %8753 = or i64 %8750, %8752
  %8754 = trunc i64 %8753 to i32
  store volatile i32 %8754, i32* %8332, align 4, !tbaa !35
  %8755 = load i64, i64* %6556, align 8, !tbaa !25
  %8756 = trunc i64 %8755 to i8
  %8757 = icmp eq i8 %8756, 0
  %8758 = bitcast i32* %8331 to i64*
  %8759 = load volatile i64, i64* %8758, align 8, !tbaa !25
  %8760 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %8761 = select i1 %8757, i64 0, i64 %8760
  %8762 = or i64 %8759, %8761
  %8763 = trunc i64 %8762 to i32
  store volatile i32 %8763, i32* %8331, align 8, !tbaa !35
  %8764 = load i64, i64* %6567, align 8, !tbaa !25
  %8765 = trunc i64 %8764 to i8
  %8766 = icmp eq i8 %8765, 0
  %8767 = bitcast i32* %8332 to i64*
  %8768 = load volatile i64, i64* %8767, align 4, !tbaa !25
  %8769 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %8770 = select i1 %8766, i64 0, i64 %8769
  %8771 = or i64 %8768, %8770
  %8772 = trunc i64 %8771 to i32
  store volatile i32 %8772, i32* %8332, align 4, !tbaa !35
  %8773 = load i64, i64* %6578, align 8, !tbaa !25
  %8774 = trunc i64 %8773 to i8
  %8775 = icmp eq i8 %8774, 0
  %8776 = bitcast i32* %8331 to i64*
  %8777 = load volatile i64, i64* %8776, align 8, !tbaa !25
  %8778 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %8779 = select i1 %8775, i64 0, i64 %8778
  %8780 = or i64 %8777, %8779
  %8781 = trunc i64 %8780 to i32
  store volatile i32 %8781, i32* %8331, align 8, !tbaa !35
  %8782 = load i64, i64* %6589, align 8, !tbaa !25
  %8783 = trunc i64 %8782 to i8
  %8784 = icmp eq i8 %8783, 0
  %8785 = bitcast i32* %8332 to i64*
  %8786 = load volatile i64, i64* %8785, align 4, !tbaa !25
  %8787 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %8788 = select i1 %8784, i64 0, i64 %8787
  %8789 = or i64 %8786, %8788
  %8790 = trunc i64 %8789 to i32
  store volatile i32 %8790, i32* %8332, align 4, !tbaa !35
  %8791 = load i64, i64* %6600, align 8, !tbaa !25
  %8792 = trunc i64 %8791 to i8
  %8793 = icmp eq i8 %8792, 0
  %8794 = bitcast i32* %8331 to i64*
  %8795 = load volatile i64, i64* %8794, align 8, !tbaa !25
  %8796 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %8797 = select i1 %8793, i64 0, i64 %8796
  %8798 = or i64 %8795, %8797
  %8799 = trunc i64 %8798 to i32
  store volatile i32 %8799, i32* %8331, align 8, !tbaa !35
  %8800 = load i64, i64* %6611, align 16, !tbaa !25
  %8801 = trunc i64 %8800 to i8
  %8802 = icmp eq i8 %8801, 0
  %8803 = bitcast i32* %8332 to i64*
  %8804 = load volatile i64, i64* %8803, align 4, !tbaa !25
  %8805 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %8806 = select i1 %8802, i64 0, i64 %8805
  %8807 = or i64 %8804, %8806
  %8808 = trunc i64 %8807 to i32
  store volatile i32 %8808, i32* %8332, align 4, !tbaa !35
  %8809 = load i64, i64* %6622, align 8, !tbaa !25
  %8810 = trunc i64 %8809 to i8
  %8811 = icmp eq i8 %8810, 0
  %8812 = bitcast i32* %8331 to i64*
  %8813 = load volatile i64, i64* %8812, align 8, !tbaa !25
  %8814 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %8815 = select i1 %8811, i64 0, i64 %8814
  %8816 = or i64 %8813, %8815
  %8817 = trunc i64 %8816 to i32
  store volatile i32 %8817, i32* %8331, align 8, !tbaa !35
  %8818 = load i64, i64* %6633, align 8, !tbaa !25
  %8819 = trunc i64 %8818 to i8
  %8820 = icmp eq i8 %8819, 0
  %8821 = bitcast i32* %8332 to i64*
  %8822 = load volatile i64, i64* %8821, align 4, !tbaa !25
  %8823 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %8824 = select i1 %8820, i64 0, i64 %8823
  %8825 = or i64 %8822, %8824
  %8826 = trunc i64 %8825 to i32
  store volatile i32 %8826, i32* %8332, align 4, !tbaa !35
  %8827 = load i64, i64* %6644, align 8, !tbaa !25
  %8828 = trunc i64 %8827 to i8
  %8829 = icmp eq i8 %8828, 0
  %8830 = bitcast i32* %8331 to i64*
  %8831 = load volatile i64, i64* %8830, align 8, !tbaa !25
  %8832 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %8833 = select i1 %8829, i64 0, i64 %8832
  %8834 = or i64 %8831, %8833
  %8835 = trunc i64 %8834 to i32
  store volatile i32 %8835, i32* %8331, align 8, !tbaa !35
  %8836 = load i64, i64* %6655, align 8, !tbaa !25
  %8837 = trunc i64 %8836 to i8
  %8838 = icmp eq i8 %8837, 0
  %8839 = bitcast i32* %8332 to i64*
  %8840 = load volatile i64, i64* %8839, align 4, !tbaa !25
  %8841 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %8842 = select i1 %8838, i64 0, i64 %8841
  %8843 = or i64 %8840, %8842
  %8844 = trunc i64 %8843 to i32
  store volatile i32 %8844, i32* %8332, align 4, !tbaa !35
  %8845 = load i64, i64* %6666, align 8, !tbaa !25
  %8846 = trunc i64 %8845 to i8
  %8847 = icmp eq i8 %8846, 0
  %8848 = bitcast i32* %8331 to i64*
  %8849 = load volatile i64, i64* %8848, align 8, !tbaa !25
  %8850 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %8851 = select i1 %8847, i64 0, i64 %8850
  %8852 = or i64 %8849, %8851
  %8853 = trunc i64 %8852 to i32
  store volatile i32 %8853, i32* %8331, align 8, !tbaa !35
  %8854 = load i64, i64* %6677, align 16, !tbaa !25
  %8855 = trunc i64 %8854 to i8
  %8856 = icmp eq i8 %8855, 0
  %8857 = bitcast i32* %8332 to i64*
  %8858 = load volatile i64, i64* %8857, align 4, !tbaa !25
  %8859 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %8860 = select i1 %8856, i64 0, i64 %8859
  %8861 = or i64 %8858, %8860
  %8862 = trunc i64 %8861 to i32
  store volatile i32 %8862, i32* %8332, align 4, !tbaa !35
  %8863 = load i64, i64* %6688, align 8, !tbaa !25
  %8864 = trunc i64 %8863 to i8
  %8865 = icmp eq i8 %8864, 0
  %8866 = bitcast i32* %8331 to i64*
  %8867 = load volatile i64, i64* %8866, align 8, !tbaa !25
  %8868 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %8869 = select i1 %8865, i64 0, i64 %8868
  %8870 = or i64 %8867, %8869
  %8871 = trunc i64 %8870 to i32
  store volatile i32 %8871, i32* %8331, align 8, !tbaa !35
  %8872 = load i64, i64* %6699, align 8, !tbaa !25
  %8873 = trunc i64 %8872 to i8
  %8874 = icmp eq i8 %8873, 0
  %8875 = bitcast i32* %8332 to i64*
  %8876 = load volatile i64, i64* %8875, align 4, !tbaa !25
  %8877 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %8878 = select i1 %8874, i64 0, i64 %8877
  %8879 = or i64 %8876, %8878
  %8880 = trunc i64 %8879 to i32
  store volatile i32 %8880, i32* %8332, align 4, !tbaa !35
  %8881 = load i64, i64* %6710, align 8, !tbaa !25
  %8882 = trunc i64 %8881 to i8
  %8883 = icmp eq i8 %8882, 0
  %8884 = bitcast i32* %8331 to i64*
  %8885 = load volatile i64, i64* %8884, align 8, !tbaa !25
  %8886 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %8887 = select i1 %8883, i64 0, i64 %8886
  %8888 = or i64 %8885, %8887
  %8889 = trunc i64 %8888 to i32
  store volatile i32 %8889, i32* %8331, align 8, !tbaa !35
  %8890 = load i64, i64* %6721, align 8, !tbaa !25
  %8891 = trunc i64 %8890 to i8
  %8892 = icmp eq i8 %8891, 0
  %8893 = bitcast i32* %8332 to i64*
  %8894 = load volatile i64, i64* %8893, align 4, !tbaa !25
  %8895 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %8896 = select i1 %8892, i64 0, i64 %8895
  %8897 = or i64 %8894, %8896
  %8898 = trunc i64 %8897 to i32
  store volatile i32 %8898, i32* %8332, align 4, !tbaa !35
  %8899 = load i64, i64* %6732, align 8, !tbaa !25
  %8900 = trunc i64 %8899 to i8
  %8901 = icmp eq i8 %8900, 0
  %8902 = bitcast i32* %8331 to i64*
  %8903 = load volatile i64, i64* %8902, align 8, !tbaa !25
  %8904 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %8905 = select i1 %8901, i64 0, i64 %8904
  %8906 = or i64 %8903, %8905
  %8907 = trunc i64 %8906 to i32
  store volatile i32 %8907, i32* %8331, align 8, !tbaa !35
  %8908 = load i64, i64* %6743, align 8, !tbaa !25
  %8909 = trunc i64 %8908 to i8
  %8910 = icmp eq i8 %8909, 0
  %8911 = bitcast i32* %8332 to i64*
  %8912 = load volatile i64, i64* %8911, align 4, !tbaa !25
  %8913 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %8914 = select i1 %8910, i64 0, i64 %8913
  %8915 = or i64 %8912, %8914
  %8916 = trunc i64 %8915 to i32
  store volatile i32 %8916, i32* %8332, align 4, !tbaa !35
  %8917 = load i64, i64* %6754, align 8, !tbaa !25
  %8918 = trunc i64 %8917 to i8
  %8919 = icmp eq i8 %8918, 0
  %8920 = bitcast i32* %8331 to i64*
  %8921 = load volatile i64, i64* %8920, align 8, !tbaa !25
  %8922 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %8923 = select i1 %8919, i64 0, i64 %8922
  %8924 = or i64 %8921, %8923
  %8925 = trunc i64 %8924 to i32
  store volatile i32 %8925, i32* %8331, align 8, !tbaa !35
  %8926 = load i64, i64* %6765, align 8, !tbaa !25
  %8927 = trunc i64 %8926 to i8
  %8928 = icmp eq i8 %8927, 0
  %8929 = bitcast i32* %8332 to i64*
  %8930 = load volatile i64, i64* %8929, align 4, !tbaa !25
  %8931 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %8932 = select i1 %8928, i64 0, i64 %8931
  %8933 = or i64 %8930, %8932
  %8934 = trunc i64 %8933 to i32
  store volatile i32 %8934, i32* %8332, align 4, !tbaa !35
  %8935 = load i64, i64* %6776, align 8, !tbaa !25
  %8936 = trunc i64 %8935 to i8
  %8937 = icmp eq i8 %8936, 0
  %8938 = bitcast i32* %8331 to i64*
  %8939 = load volatile i64, i64* %8938, align 8, !tbaa !25
  %8940 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %8941 = select i1 %8937, i64 0, i64 %8940
  %8942 = or i64 %8939, %8941
  %8943 = trunc i64 %8942 to i32
  store volatile i32 %8943, i32* %8331, align 8, !tbaa !35
  %8944 = load i64, i64* %6787, align 8, !tbaa !25
  %8945 = trunc i64 %8944 to i8
  %8946 = icmp eq i8 %8945, 0
  %8947 = bitcast i32* %8332 to i64*
  %8948 = load volatile i64, i64* %8947, align 4, !tbaa !25
  %8949 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %8950 = select i1 %8946, i64 0, i64 %8949
  %8951 = or i64 %8948, %8950
  %8952 = trunc i64 %8951 to i32
  store volatile i32 %8952, i32* %8332, align 4, !tbaa !35
  %8953 = load i64, i64* %6798, align 8, !tbaa !25
  %8954 = trunc i64 %8953 to i8
  %8955 = icmp eq i8 %8954, 0
  %8956 = bitcast i32* %8331 to i64*
  %8957 = load volatile i64, i64* %8956, align 8, !tbaa !25
  %8958 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %8959 = select i1 %8955, i64 0, i64 %8958
  %8960 = or i64 %8957, %8959
  %8961 = trunc i64 %8960 to i32
  store volatile i32 %8961, i32* %8331, align 8, !tbaa !35
  %8962 = load i64, i64* %6809, align 8, !tbaa !25
  %8963 = trunc i64 %8962 to i8
  %8964 = icmp eq i8 %8963, 0
  %8965 = bitcast i32* %8332 to i64*
  %8966 = load volatile i64, i64* %8965, align 4, !tbaa !25
  %8967 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %8968 = select i1 %8964, i64 0, i64 %8967
  %8969 = or i64 %8966, %8968
  %8970 = trunc i64 %8969 to i32
  store volatile i32 %8970, i32* %8332, align 4, !tbaa !35
  %8971 = load i64, i64* %6820, align 8, !tbaa !25
  %8972 = trunc i64 %8971 to i8
  %8973 = icmp eq i8 %8972, 0
  %8974 = bitcast i32* %8331 to i64*
  %8975 = load volatile i64, i64* %8974, align 8, !tbaa !25
  %8976 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %8977 = select i1 %8973, i64 0, i64 %8976
  %8978 = or i64 %8975, %8977
  %8979 = trunc i64 %8978 to i32
  store volatile i32 %8979, i32* %8331, align 8, !tbaa !35
  %8980 = load i64, i64* %6831, align 8, !tbaa !25
  %8981 = trunc i64 %8980 to i8
  %8982 = icmp eq i8 %8981, 0
  %8983 = bitcast i32* %8332 to i64*
  %8984 = load volatile i64, i64* %8983, align 4, !tbaa !25
  %8985 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %8986 = select i1 %8982, i64 0, i64 %8985
  %8987 = or i64 %8984, %8986
  %8988 = trunc i64 %8987 to i32
  store volatile i32 %8988, i32* %8332, align 4, !tbaa !35
  %8989 = load i64, i64* %6842, align 8, !tbaa !25
  %8990 = trunc i64 %8989 to i8
  %8991 = icmp eq i8 %8990, 0
  %8992 = bitcast i32* %8331 to i64*
  %8993 = load volatile i64, i64* %8992, align 8, !tbaa !25
  %8994 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %8995 = select i1 %8991, i64 0, i64 %8994
  %8996 = or i64 %8993, %8995
  %8997 = trunc i64 %8996 to i32
  store volatile i32 %8997, i32* %8331, align 8, !tbaa !35
  %8998 = load i64, i64* %6853, align 8, !tbaa !25
  %8999 = trunc i64 %8998 to i8
  %9000 = icmp eq i8 %8999, 0
  %9001 = bitcast i32* %8332 to i64*
  %9002 = load volatile i64, i64* %9001, align 4, !tbaa !25
  %9003 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %9004 = select i1 %9000, i64 0, i64 %9003
  %9005 = or i64 %9002, %9004
  %9006 = trunc i64 %9005 to i32
  store volatile i32 %9006, i32* %8332, align 4, !tbaa !35
  %9007 = load i64, i64* %6864, align 8, !tbaa !25
  %9008 = trunc i64 %9007 to i8
  %9009 = icmp eq i8 %9008, 0
  %9010 = bitcast i32* %8331 to i64*
  %9011 = load volatile i64, i64* %9010, align 8, !tbaa !25
  %9012 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %9013 = select i1 %9009, i64 0, i64 %9012
  %9014 = or i64 %9011, %9013
  %9015 = trunc i64 %9014 to i32
  store volatile i32 %9015, i32* %8331, align 8, !tbaa !35
  %9016 = load i64, i64* %6875, align 8, !tbaa !25
  %9017 = trunc i64 %9016 to i8
  %9018 = icmp eq i8 %9017, 0
  %9019 = bitcast i32* %8332 to i64*
  %9020 = load volatile i64, i64* %9019, align 4, !tbaa !25
  %9021 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %9022 = select i1 %9018, i64 0, i64 %9021
  %9023 = or i64 %9020, %9022
  %9024 = trunc i64 %9023 to i32
  store volatile i32 %9024, i32* %8332, align 4, !tbaa !35
  %9025 = load i64, i64* %6886, align 8, !tbaa !25
  %9026 = trunc i64 %9025 to i8
  %9027 = icmp eq i8 %9026, 0
  %9028 = bitcast i32* %8331 to i64*
  %9029 = load volatile i64, i64* %9028, align 8, !tbaa !25
  %9030 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %9031 = select i1 %9027, i64 0, i64 %9030
  %9032 = or i64 %9029, %9031
  %9033 = trunc i64 %9032 to i32
  store volatile i32 %9033, i32* %8331, align 8, !tbaa !35
  %9034 = load i64, i64* %6897, align 8, !tbaa !25
  %9035 = trunc i64 %9034 to i8
  %9036 = icmp eq i8 %9035, 0
  %9037 = bitcast i32* %8332 to i64*
  %9038 = load volatile i64, i64* %9037, align 4, !tbaa !25
  %9039 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %9040 = select i1 %9036, i64 0, i64 %9039
  %9041 = or i64 %9038, %9040
  %9042 = trunc i64 %9041 to i32
  store volatile i32 %9042, i32* %8332, align 4, !tbaa !35
  %9043 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 24
  store i32 0, i32* %9043, align 16, !tbaa !35
  %9044 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 25
  store i32 0, i32* %9044, align 4, !tbaa !35
  %9045 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 23
  %9046 = bitcast i8* %9045 to i64*
  %9047 = load i64, i64* %9046, align 8, !tbaa !25
  %9048 = trunc i64 %9047 to i8
  store i8 %9048, i8* %8, align 16, !tbaa !14
  %9049 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 24
  %9050 = bitcast i8* %9049 to i64*
  %9051 = load i64, i64* %9050, align 8, !tbaa !25
  %9052 = trunc i64 %9051 to i8
  %9053 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 1
  store i8 %9052, i8* %9053, align 1, !tbaa !14
  %9054 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 25
  %9055 = bitcast i8* %9054 to i64*
  %9056 = load i64, i64* %9055, align 8, !tbaa !25
  %9057 = trunc i64 %9056 to i8
  %9058 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 2
  store i8 %9057, i8* %9058, align 2, !tbaa !14
  %9059 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 26
  %9060 = bitcast i8* %9059 to i64*
  %9061 = load i64, i64* %9060, align 8, !tbaa !25
  %9062 = trunc i64 %9061 to i8
  %9063 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 3
  store i8 %9062, i8* %9063, align 1, !tbaa !14
  %9064 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 27
  %9065 = bitcast i8* %9064 to i64*
  %9066 = load i64, i64* %9065, align 8, !tbaa !25
  %9067 = trunc i64 %9066 to i8
  %9068 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 4
  store i8 %9067, i8* %9068, align 4, !tbaa !14
  %9069 = bitcast [56 x i8]* %4 to i64*
  %9070 = load i64, i64* %9069, align 16, !tbaa !25
  %9071 = trunc i64 %9070 to i8
  %9072 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 5
  store i8 %9071, i8* %9072, align 1, !tbaa !14
  %9073 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 1
  %9074 = bitcast i8* %9073 to i64*
  %9075 = load i64, i64* %9074, align 8, !tbaa !25
  %9076 = trunc i64 %9075 to i8
  %9077 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 6
  store i8 %9076, i8* %9077, align 2, !tbaa !14
  %9078 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 2
  %9079 = bitcast i8* %9078 to i64*
  %9080 = load i64, i64* %9079, align 8, !tbaa !25
  %9081 = trunc i64 %9080 to i8
  %9082 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 7
  store i8 %9081, i8* %9082, align 1, !tbaa !14
  %9083 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 3
  %9084 = bitcast i8* %9083 to i64*
  %9085 = load i64, i64* %9084, align 8, !tbaa !25
  %9086 = trunc i64 %9085 to i8
  %9087 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 8
  store i8 %9086, i8* %9087, align 8, !tbaa !14
  %9088 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 4
  %9089 = bitcast i8* %9088 to i64*
  %9090 = load i64, i64* %9089, align 8, !tbaa !25
  %9091 = trunc i64 %9090 to i8
  %9092 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 9
  store i8 %9091, i8* %9092, align 1, !tbaa !14
  %9093 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 5
  %9094 = bitcast i8* %9093 to i64*
  %9095 = load i64, i64* %9094, align 8, !tbaa !25
  %9096 = trunc i64 %9095 to i8
  %9097 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 10
  store i8 %9096, i8* %9097, align 2, !tbaa !14
  %9098 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 6
  %9099 = bitcast i8* %9098 to i64*
  %9100 = load i64, i64* %9099, align 8, !tbaa !25
  %9101 = trunc i64 %9100 to i8
  %9102 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 11
  store i8 %9101, i8* %9102, align 1, !tbaa !14
  %9103 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 7
  %9104 = bitcast i8* %9103 to i64*
  %9105 = load i64, i64* %9104, align 8, !tbaa !25
  %9106 = trunc i64 %9105 to i8
  %9107 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 12
  store i8 %9106, i8* %9107, align 4, !tbaa !14
  %9108 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 8
  %9109 = bitcast i8* %9108 to i64*
  %9110 = load i64, i64* %9109, align 8, !tbaa !25
  %9111 = trunc i64 %9110 to i8
  %9112 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 13
  store i8 %9111, i8* %9112, align 1, !tbaa !14
  %9113 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 9
  %9114 = bitcast i8* %9113 to i64*
  %9115 = load i64, i64* %9114, align 8, !tbaa !25
  %9116 = trunc i64 %9115 to i8
  %9117 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 14
  store i8 %9116, i8* %9117, align 2, !tbaa !14
  %9118 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 10
  %9119 = bitcast i8* %9118 to i64*
  %9120 = load i64, i64* %9119, align 8, !tbaa !25
  %9121 = trunc i64 %9120 to i8
  %9122 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 15
  store i8 %9121, i8* %9122, align 1, !tbaa !14
  %9123 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 11
  %9124 = bitcast i8* %9123 to i64*
  %9125 = load i64, i64* %9124, align 8, !tbaa !25
  %9126 = trunc i64 %9125 to i8
  %9127 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 16
  store i8 %9126, i8* %9127, align 16, !tbaa !14
  %9128 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 12
  %9129 = bitcast i8* %9128 to i64*
  %9130 = load i64, i64* %9129, align 8, !tbaa !25
  %9131 = trunc i64 %9130 to i8
  %9132 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 17
  store i8 %9131, i8* %9132, align 1, !tbaa !14
  %9133 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 13
  %9134 = bitcast i8* %9133 to i64*
  %9135 = load i64, i64* %9134, align 8, !tbaa !25
  %9136 = trunc i64 %9135 to i8
  %9137 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 18
  store i8 %9136, i8* %9137, align 2, !tbaa !14
  %9138 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 14
  %9139 = bitcast i8* %9138 to i64*
  %9140 = load i64, i64* %9139, align 8, !tbaa !25
  %9141 = trunc i64 %9140 to i8
  %9142 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 19
  store i8 %9141, i8* %9142, align 1, !tbaa !14
  %9143 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 15
  %9144 = bitcast i8* %9143 to i64*
  %9145 = load i64, i64* %9144, align 8, !tbaa !25
  %9146 = trunc i64 %9145 to i8
  %9147 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 20
  store i8 %9146, i8* %9147, align 4, !tbaa !14
  %9148 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 16
  %9149 = bitcast i8* %9148 to i64*
  %9150 = load i64, i64* %9149, align 16, !tbaa !25
  %9151 = trunc i64 %9150 to i8
  %9152 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 21
  store i8 %9151, i8* %9152, align 1, !tbaa !14
  %9153 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 17
  %9154 = bitcast i8* %9153 to i64*
  %9155 = load i64, i64* %9154, align 8, !tbaa !25
  %9156 = trunc i64 %9155 to i8
  %9157 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 22
  store i8 %9156, i8* %9157, align 2, !tbaa !14
  %9158 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 18
  %9159 = bitcast i8* %9158 to i64*
  %9160 = load i64, i64* %9159, align 8, !tbaa !25
  %9161 = trunc i64 %9160 to i8
  %9162 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 23
  store i8 %9161, i8* %9162, align 1, !tbaa !14
  %9163 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 19
  %9164 = bitcast i8* %9163 to i64*
  %9165 = load i64, i64* %9164, align 8, !tbaa !25
  %9166 = trunc i64 %9165 to i8
  %9167 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 24
  store i8 %9166, i8* %9167, align 8, !tbaa !14
  %9168 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 20
  %9169 = bitcast i8* %9168 to i64*
  %9170 = load i64, i64* %9169, align 8, !tbaa !25
  %9171 = trunc i64 %9170 to i8
  %9172 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 25
  store i8 %9171, i8* %9172, align 1, !tbaa !14
  %9173 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 21
  %9174 = bitcast i8* %9173 to i64*
  %9175 = load i64, i64* %9174, align 8, !tbaa !25
  %9176 = trunc i64 %9175 to i8
  %9177 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 26
  store i8 %9176, i8* %9177, align 2, !tbaa !14
  %9178 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 22
  %9179 = bitcast i8* %9178 to i64*
  %9180 = load i64, i64* %9179, align 8, !tbaa !25
  %9181 = trunc i64 %9180 to i8
  %9182 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 27
  store i8 %9181, i8* %9182, align 1, !tbaa !14
  %9183 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 51
  %9184 = bitcast i8* %9183 to i64*
  %9185 = load i64, i64* %9184, align 8, !tbaa !25
  %9186 = trunc i64 %9185 to i8
  %9187 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 28
  store i8 %9186, i8* %9187, align 4, !tbaa !14
  %9188 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 52
  %9189 = bitcast i8* %9188 to i64*
  %9190 = load i64, i64* %9189, align 8, !tbaa !25
  %9191 = trunc i64 %9190 to i8
  %9192 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 29
  store i8 %9191, i8* %9192, align 1, !tbaa !14
  %9193 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 53
  %9194 = bitcast i8* %9193 to i64*
  %9195 = load i64, i64* %9194, align 8, !tbaa !25
  %9196 = trunc i64 %9195 to i8
  %9197 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 30
  store i8 %9196, i8* %9197, align 2, !tbaa !14
  %9198 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 54
  %9199 = bitcast i8* %9198 to i64*
  %9200 = load i64, i64* %9199, align 8, !tbaa !25
  %9201 = trunc i64 %9200 to i8
  %9202 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 31
  store i8 %9201, i8* %9202, align 1, !tbaa !14
  %9203 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 55
  %9204 = bitcast i8* %9203 to i64*
  %9205 = load i64, i64* %9204, align 8, !tbaa !25
  %9206 = trunc i64 %9205 to i8
  %9207 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 32
  store i8 %9206, i8* %9207, align 16, !tbaa !14
  %9208 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 28
  %9209 = bitcast i8* %9208 to i64*
  %9210 = load i64, i64* %9209, align 8, !tbaa !25
  %9211 = trunc i64 %9210 to i8
  %9212 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 33
  store i8 %9211, i8* %9212, align 1, !tbaa !14
  %9213 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 29
  %9214 = bitcast i8* %9213 to i64*
  %9215 = load i64, i64* %9214, align 8, !tbaa !25
  %9216 = trunc i64 %9215 to i8
  %9217 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 34
  store i8 %9216, i8* %9217, align 2, !tbaa !14
  %9218 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 30
  %9219 = bitcast i8* %9218 to i64*
  %9220 = load i64, i64* %9219, align 8, !tbaa !25
  %9221 = trunc i64 %9220 to i8
  %9222 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 35
  store i8 %9221, i8* %9222, align 1, !tbaa !14
  %9223 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 31
  %9224 = bitcast i8* %9223 to i64*
  %9225 = load i64, i64* %9224, align 8, !tbaa !25
  %9226 = trunc i64 %9225 to i8
  %9227 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 36
  store i8 %9226, i8* %9227, align 4, !tbaa !14
  %9228 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 32
  %9229 = bitcast i8* %9228 to i64*
  %9230 = load i64, i64* %9229, align 16, !tbaa !25
  %9231 = trunc i64 %9230 to i8
  %9232 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 37
  store i8 %9231, i8* %9232, align 1, !tbaa !14
  %9233 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 33
  %9234 = bitcast i8* %9233 to i64*
  %9235 = load i64, i64* %9234, align 8, !tbaa !25
  %9236 = trunc i64 %9235 to i8
  %9237 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 38
  store i8 %9236, i8* %9237, align 2, !tbaa !14
  %9238 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 34
  %9239 = bitcast i8* %9238 to i64*
  %9240 = load i64, i64* %9239, align 8, !tbaa !25
  %9241 = trunc i64 %9240 to i8
  %9242 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 39
  store i8 %9241, i8* %9242, align 1, !tbaa !14
  %9243 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 35
  %9244 = bitcast i8* %9243 to i64*
  %9245 = load i64, i64* %9244, align 8, !tbaa !25
  %9246 = trunc i64 %9245 to i8
  %9247 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 40
  store i8 %9246, i8* %9247, align 8, !tbaa !14
  %9248 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 36
  %9249 = bitcast i8* %9248 to i64*
  %9250 = load i64, i64* %9249, align 8, !tbaa !25
  %9251 = trunc i64 %9250 to i8
  %9252 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 41
  store i8 %9251, i8* %9252, align 1, !tbaa !14
  %9253 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 37
  %9254 = bitcast i8* %9253 to i64*
  %9255 = load i64, i64* %9254, align 8, !tbaa !25
  %9256 = trunc i64 %9255 to i8
  %9257 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 42
  store i8 %9256, i8* %9257, align 2, !tbaa !14
  %9258 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 38
  %9259 = bitcast i8* %9258 to i64*
  %9260 = load i64, i64* %9259, align 8, !tbaa !25
  %9261 = trunc i64 %9260 to i8
  %9262 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 43
  store i8 %9261, i8* %9262, align 1, !tbaa !14
  %9263 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 39
  %9264 = bitcast i8* %9263 to i64*
  %9265 = load i64, i64* %9264, align 8, !tbaa !25
  %9266 = trunc i64 %9265 to i8
  %9267 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 44
  store i8 %9266, i8* %9267, align 4, !tbaa !14
  %9268 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 40
  %9269 = bitcast i8* %9268 to i64*
  %9270 = load i64, i64* %9269, align 8, !tbaa !25
  %9271 = trunc i64 %9270 to i8
  %9272 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 45
  store i8 %9271, i8* %9272, align 1, !tbaa !14
  %9273 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 41
  %9274 = bitcast i8* %9273 to i64*
  %9275 = load i64, i64* %9274, align 8, !tbaa !25
  %9276 = trunc i64 %9275 to i8
  %9277 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 46
  store i8 %9276, i8* %9277, align 2, !tbaa !14
  %9278 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 42
  %9279 = bitcast i8* %9278 to i64*
  %9280 = load i64, i64* %9279, align 8, !tbaa !25
  %9281 = trunc i64 %9280 to i8
  %9282 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 47
  store i8 %9281, i8* %9282, align 1, !tbaa !14
  %9283 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 43
  %9284 = bitcast i8* %9283 to i64*
  %9285 = load i64, i64* %9284, align 8, !tbaa !25
  %9286 = trunc i64 %9285 to i8
  %9287 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 48
  store i8 %9286, i8* %9287, align 16, !tbaa !14
  %9288 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 44
  %9289 = bitcast i8* %9288 to i64*
  %9290 = load i64, i64* %9289, align 8, !tbaa !25
  %9291 = trunc i64 %9290 to i8
  %9292 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 49
  store i8 %9291, i8* %9292, align 1, !tbaa !14
  %9293 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 45
  %9294 = bitcast i8* %9293 to i64*
  %9295 = load i64, i64* %9294, align 8, !tbaa !25
  %9296 = trunc i64 %9295 to i8
  %9297 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 50
  store i8 %9296, i8* %9297, align 2, !tbaa !14
  %9298 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 46
  %9299 = bitcast i8* %9298 to i64*
  %9300 = load i64, i64* %9299, align 8, !tbaa !25
  %9301 = trunc i64 %9300 to i8
  %9302 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 51
  store i8 %9301, i8* %9302, align 1, !tbaa !14
  %9303 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 47
  %9304 = bitcast i8* %9303 to i64*
  %9305 = load i64, i64* %9304, align 8, !tbaa !25
  %9306 = trunc i64 %9305 to i8
  %9307 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 52
  store i8 %9306, i8* %9307, align 4, !tbaa !14
  %9308 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 48
  %9309 = bitcast i8* %9308 to i64*
  %9310 = load i64, i64* %9309, align 16, !tbaa !25
  %9311 = trunc i64 %9310 to i8
  %9312 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 53
  store i8 %9311, i8* %9312, align 1, !tbaa !14
  %9313 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 49
  %9314 = bitcast i8* %9313 to i64*
  %9315 = load i64, i64* %9314, align 8, !tbaa !25
  %9316 = trunc i64 %9315 to i8
  %9317 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 54
  store i8 %9316, i8* %9317, align 2, !tbaa !14
  %9318 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 50
  %9319 = bitcast i8* %9318 to i64*
  %9320 = load i64, i64* %9319, align 8, !tbaa !25
  %9321 = trunc i64 %9320 to i8
  %9322 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 55
  store i8 %9321, i8* %9322, align 1, !tbaa !14
  %9323 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 13
  %9324 = bitcast i8* %9323 to i64*
  %9325 = load i64, i64* %9324, align 8, !tbaa !25
  %9326 = trunc i64 %9325 to i8
  %9327 = icmp eq i8 %9326, 0
  %9328 = bitcast i32* %9043 to i64*
  %9329 = load volatile i64, i64* %9328, align 16, !tbaa !25
  %9330 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %9331 = select i1 %9327, i64 0, i64 %9330
  %9332 = or i64 %9329, %9331
  %9333 = trunc i64 %9332 to i32
  store volatile i32 %9333, i32* %9043, align 16, !tbaa !35
  %9334 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 40
  %9335 = bitcast i8* %9334 to i64*
  %9336 = load i64, i64* %9335, align 8, !tbaa !25
  %9337 = trunc i64 %9336 to i8
  %9338 = icmp eq i8 %9337, 0
  %9339 = bitcast i32* %9044 to i64*
  %9340 = load volatile i64, i64* %9339, align 4, !tbaa !25
  %9341 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %9342 = select i1 %9338, i64 0, i64 %9341
  %9343 = or i64 %9340, %9342
  %9344 = trunc i64 %9343 to i32
  store volatile i32 %9344, i32* %9044, align 4, !tbaa !35
  %9345 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 16
  %9346 = bitcast i8* %9345 to i64*
  %9347 = load i64, i64* %9346, align 16, !tbaa !25
  %9348 = trunc i64 %9347 to i8
  %9349 = icmp eq i8 %9348, 0
  %9350 = bitcast i32* %9043 to i64*
  %9351 = load volatile i64, i64* %9350, align 16, !tbaa !25
  %9352 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %9353 = select i1 %9349, i64 0, i64 %9352
  %9354 = or i64 %9351, %9353
  %9355 = trunc i64 %9354 to i32
  store volatile i32 %9355, i32* %9043, align 16, !tbaa !35
  %9356 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 51
  %9357 = bitcast i8* %9356 to i64*
  %9358 = load i64, i64* %9357, align 8, !tbaa !25
  %9359 = trunc i64 %9358 to i8
  %9360 = icmp eq i8 %9359, 0
  %9361 = bitcast i32* %9044 to i64*
  %9362 = load volatile i64, i64* %9361, align 4, !tbaa !25
  %9363 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %9364 = select i1 %9360, i64 0, i64 %9363
  %9365 = or i64 %9362, %9364
  %9366 = trunc i64 %9365 to i32
  store volatile i32 %9366, i32* %9044, align 4, !tbaa !35
  %9367 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 10
  %9368 = bitcast i8* %9367 to i64*
  %9369 = load i64, i64* %9368, align 8, !tbaa !25
  %9370 = trunc i64 %9369 to i8
  %9371 = icmp eq i8 %9370, 0
  %9372 = bitcast i32* %9043 to i64*
  %9373 = load volatile i64, i64* %9372, align 16, !tbaa !25
  %9374 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %9375 = select i1 %9371, i64 0, i64 %9374
  %9376 = or i64 %9373, %9375
  %9377 = trunc i64 %9376 to i32
  store volatile i32 %9377, i32* %9043, align 16, !tbaa !35
  %9378 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 30
  %9379 = bitcast i8* %9378 to i64*
  %9380 = load i64, i64* %9379, align 8, !tbaa !25
  %9381 = trunc i64 %9380 to i8
  %9382 = icmp eq i8 %9381, 0
  %9383 = bitcast i32* %9044 to i64*
  %9384 = load volatile i64, i64* %9383, align 4, !tbaa !25
  %9385 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %9386 = select i1 %9382, i64 0, i64 %9385
  %9387 = or i64 %9384, %9386
  %9388 = trunc i64 %9387 to i32
  store volatile i32 %9388, i32* %9044, align 4, !tbaa !35
  %9389 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 23
  %9390 = bitcast i8* %9389 to i64*
  %9391 = load i64, i64* %9390, align 8, !tbaa !25
  %9392 = trunc i64 %9391 to i8
  %9393 = icmp eq i8 %9392, 0
  %9394 = bitcast i32* %9043 to i64*
  %9395 = load volatile i64, i64* %9394, align 16, !tbaa !25
  %9396 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %9397 = select i1 %9393, i64 0, i64 %9396
  %9398 = or i64 %9395, %9397
  %9399 = trunc i64 %9398 to i32
  store volatile i32 %9399, i32* %9043, align 16, !tbaa !35
  %9400 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 36
  %9401 = bitcast i8* %9400 to i64*
  %9402 = load i64, i64* %9401, align 8, !tbaa !25
  %9403 = trunc i64 %9402 to i8
  %9404 = icmp eq i8 %9403, 0
  %9405 = bitcast i32* %9044 to i64*
  %9406 = load volatile i64, i64* %9405, align 4, !tbaa !25
  %9407 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %9408 = select i1 %9404, i64 0, i64 %9407
  %9409 = or i64 %9406, %9408
  %9410 = trunc i64 %9409 to i32
  store volatile i32 %9410, i32* %9044, align 4, !tbaa !35
  %9411 = bitcast [56 x i8]* %3 to i64*
  %9412 = load i64, i64* %9411, align 16, !tbaa !25
  %9413 = trunc i64 %9412 to i8
  %9414 = icmp eq i8 %9413, 0
  %9415 = bitcast i32* %9043 to i64*
  %9416 = load volatile i64, i64* %9415, align 16, !tbaa !25
  %9417 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %9418 = select i1 %9414, i64 0, i64 %9417
  %9419 = or i64 %9416, %9418
  %9420 = trunc i64 %9419 to i32
  store volatile i32 %9420, i32* %9043, align 16, !tbaa !35
  %9421 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 46
  %9422 = bitcast i8* %9421 to i64*
  %9423 = load i64, i64* %9422, align 8, !tbaa !25
  %9424 = trunc i64 %9423 to i8
  %9425 = icmp eq i8 %9424, 0
  %9426 = bitcast i32* %9044 to i64*
  %9427 = load volatile i64, i64* %9426, align 4, !tbaa !25
  %9428 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %9429 = select i1 %9425, i64 0, i64 %9428
  %9430 = or i64 %9427, %9429
  %9431 = trunc i64 %9430 to i32
  store volatile i32 %9431, i32* %9044, align 4, !tbaa !35
  %9432 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 4
  %9433 = bitcast i8* %9432 to i64*
  %9434 = load i64, i64* %9433, align 8, !tbaa !25
  %9435 = trunc i64 %9434 to i8
  %9436 = icmp eq i8 %9435, 0
  %9437 = bitcast i32* %9043 to i64*
  %9438 = load volatile i64, i64* %9437, align 16, !tbaa !25
  %9439 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %9440 = select i1 %9436, i64 0, i64 %9439
  %9441 = or i64 %9438, %9440
  %9442 = trunc i64 %9441 to i32
  store volatile i32 %9442, i32* %9043, align 16, !tbaa !35
  %9443 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 54
  %9444 = bitcast i8* %9443 to i64*
  %9445 = load i64, i64* %9444, align 8, !tbaa !25
  %9446 = trunc i64 %9445 to i8
  %9447 = icmp eq i8 %9446, 0
  %9448 = bitcast i32* %9044 to i64*
  %9449 = load volatile i64, i64* %9448, align 4, !tbaa !25
  %9450 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %9451 = select i1 %9447, i64 0, i64 %9450
  %9452 = or i64 %9449, %9451
  %9453 = trunc i64 %9452 to i32
  store volatile i32 %9453, i32* %9044, align 4, !tbaa !35
  %9454 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 2
  %9455 = bitcast i8* %9454 to i64*
  %9456 = load i64, i64* %9455, align 8, !tbaa !25
  %9457 = trunc i64 %9456 to i8
  %9458 = icmp eq i8 %9457, 0
  %9459 = bitcast i32* %9043 to i64*
  %9460 = load volatile i64, i64* %9459, align 16, !tbaa !25
  %9461 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %9462 = select i1 %9458, i64 0, i64 %9461
  %9463 = or i64 %9460, %9462
  %9464 = trunc i64 %9463 to i32
  store volatile i32 %9464, i32* %9043, align 16, !tbaa !35
  %9465 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 29
  %9466 = bitcast i8* %9465 to i64*
  %9467 = load i64, i64* %9466, align 8, !tbaa !25
  %9468 = trunc i64 %9467 to i8
  %9469 = icmp eq i8 %9468, 0
  %9470 = bitcast i32* %9044 to i64*
  %9471 = load volatile i64, i64* %9470, align 4, !tbaa !25
  %9472 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %9473 = select i1 %9469, i64 0, i64 %9472
  %9474 = or i64 %9471, %9473
  %9475 = trunc i64 %9474 to i32
  store volatile i32 %9475, i32* %9044, align 4, !tbaa !35
  %9476 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 27
  %9477 = bitcast i8* %9476 to i64*
  %9478 = load i64, i64* %9477, align 8, !tbaa !25
  %9479 = trunc i64 %9478 to i8
  %9480 = icmp eq i8 %9479, 0
  %9481 = bitcast i32* %9043 to i64*
  %9482 = load volatile i64, i64* %9481, align 16, !tbaa !25
  %9483 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %9484 = select i1 %9480, i64 0, i64 %9483
  %9485 = or i64 %9482, %9484
  %9486 = trunc i64 %9485 to i32
  store volatile i32 %9486, i32* %9043, align 16, !tbaa !35
  %9487 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 39
  %9488 = bitcast i8* %9487 to i64*
  %9489 = load i64, i64* %9488, align 8, !tbaa !25
  %9490 = trunc i64 %9489 to i8
  %9491 = icmp eq i8 %9490, 0
  %9492 = bitcast i32* %9044 to i64*
  %9493 = load volatile i64, i64* %9492, align 4, !tbaa !25
  %9494 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %9495 = select i1 %9491, i64 0, i64 %9494
  %9496 = or i64 %9493, %9495
  %9497 = trunc i64 %9496 to i32
  store volatile i32 %9497, i32* %9044, align 4, !tbaa !35
  %9498 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 14
  %9499 = bitcast i8* %9498 to i64*
  %9500 = load i64, i64* %9499, align 8, !tbaa !25
  %9501 = trunc i64 %9500 to i8
  %9502 = icmp eq i8 %9501, 0
  %9503 = bitcast i32* %9043 to i64*
  %9504 = load volatile i64, i64* %9503, align 16, !tbaa !25
  %9505 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %9506 = select i1 %9502, i64 0, i64 %9505
  %9507 = or i64 %9504, %9506
  %9508 = trunc i64 %9507 to i32
  store volatile i32 %9508, i32* %9043, align 16, !tbaa !35
  %9509 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 50
  %9510 = bitcast i8* %9509 to i64*
  %9511 = load i64, i64* %9510, align 8, !tbaa !25
  %9512 = trunc i64 %9511 to i8
  %9513 = icmp eq i8 %9512, 0
  %9514 = bitcast i32* %9044 to i64*
  %9515 = load volatile i64, i64* %9514, align 4, !tbaa !25
  %9516 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %9517 = select i1 %9513, i64 0, i64 %9516
  %9518 = or i64 %9515, %9517
  %9519 = trunc i64 %9518 to i32
  store volatile i32 %9519, i32* %9044, align 4, !tbaa !35
  %9520 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 5
  %9521 = bitcast i8* %9520 to i64*
  %9522 = load i64, i64* %9521, align 8, !tbaa !25
  %9523 = trunc i64 %9522 to i8
  %9524 = icmp eq i8 %9523, 0
  %9525 = bitcast i32* %9043 to i64*
  %9526 = load volatile i64, i64* %9525, align 16, !tbaa !25
  %9527 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %9528 = select i1 %9524, i64 0, i64 %9527
  %9529 = or i64 %9526, %9528
  %9530 = trunc i64 %9529 to i32
  store volatile i32 %9530, i32* %9043, align 16, !tbaa !35
  %9531 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 44
  %9532 = bitcast i8* %9531 to i64*
  %9533 = load i64, i64* %9532, align 8, !tbaa !25
  %9534 = trunc i64 %9533 to i8
  %9535 = icmp eq i8 %9534, 0
  %9536 = bitcast i32* %9044 to i64*
  %9537 = load volatile i64, i64* %9536, align 4, !tbaa !25
  %9538 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %9539 = select i1 %9535, i64 0, i64 %9538
  %9540 = or i64 %9537, %9539
  %9541 = trunc i64 %9540 to i32
  store volatile i32 %9541, i32* %9044, align 4, !tbaa !35
  %9542 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 20
  %9543 = bitcast i8* %9542 to i64*
  %9544 = load i64, i64* %9543, align 8, !tbaa !25
  %9545 = trunc i64 %9544 to i8
  %9546 = icmp eq i8 %9545, 0
  %9547 = bitcast i32* %9043 to i64*
  %9548 = load volatile i64, i64* %9547, align 16, !tbaa !25
  %9549 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %9550 = select i1 %9546, i64 0, i64 %9549
  %9551 = or i64 %9548, %9550
  %9552 = trunc i64 %9551 to i32
  store volatile i32 %9552, i32* %9043, align 16, !tbaa !35
  %9553 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 32
  %9554 = bitcast i8* %9553 to i64*
  %9555 = load i64, i64* %9554, align 16, !tbaa !25
  %9556 = trunc i64 %9555 to i8
  %9557 = icmp eq i8 %9556, 0
  %9558 = bitcast i32* %9044 to i64*
  %9559 = load volatile i64, i64* %9558, align 4, !tbaa !25
  %9560 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %9561 = select i1 %9557, i64 0, i64 %9560
  %9562 = or i64 %9559, %9561
  %9563 = trunc i64 %9562 to i32
  store volatile i32 %9563, i32* %9044, align 4, !tbaa !35
  %9564 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 9
  %9565 = bitcast i8* %9564 to i64*
  %9566 = load i64, i64* %9565, align 8, !tbaa !25
  %9567 = trunc i64 %9566 to i8
  %9568 = icmp eq i8 %9567, 0
  %9569 = bitcast i32* %9043 to i64*
  %9570 = load volatile i64, i64* %9569, align 16, !tbaa !25
  %9571 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %9572 = select i1 %9568, i64 0, i64 %9571
  %9573 = or i64 %9570, %9572
  %9574 = trunc i64 %9573 to i32
  store volatile i32 %9574, i32* %9043, align 16, !tbaa !35
  %9575 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 47
  %9576 = bitcast i8* %9575 to i64*
  %9577 = load i64, i64* %9576, align 8, !tbaa !25
  %9578 = trunc i64 %9577 to i8
  %9579 = icmp eq i8 %9578, 0
  %9580 = bitcast i32* %9044 to i64*
  %9581 = load volatile i64, i64* %9580, align 4, !tbaa !25
  %9582 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %9583 = select i1 %9579, i64 0, i64 %9582
  %9584 = or i64 %9581, %9583
  %9585 = trunc i64 %9584 to i32
  store volatile i32 %9585, i32* %9044, align 4, !tbaa !35
  %9586 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 22
  %9587 = bitcast i8* %9586 to i64*
  %9588 = load i64, i64* %9587, align 8, !tbaa !25
  %9589 = trunc i64 %9588 to i8
  %9590 = icmp eq i8 %9589, 0
  %9591 = bitcast i32* %9043 to i64*
  %9592 = load volatile i64, i64* %9591, align 16, !tbaa !25
  %9593 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %9594 = select i1 %9590, i64 0, i64 %9593
  %9595 = or i64 %9592, %9594
  %9596 = trunc i64 %9595 to i32
  store volatile i32 %9596, i32* %9043, align 16, !tbaa !35
  %9597 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 43
  %9598 = bitcast i8* %9597 to i64*
  %9599 = load i64, i64* %9598, align 8, !tbaa !25
  %9600 = trunc i64 %9599 to i8
  %9601 = icmp eq i8 %9600, 0
  %9602 = bitcast i32* %9044 to i64*
  %9603 = load volatile i64, i64* %9602, align 4, !tbaa !25
  %9604 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %9605 = select i1 %9601, i64 0, i64 %9604
  %9606 = or i64 %9603, %9605
  %9607 = trunc i64 %9606 to i32
  store volatile i32 %9607, i32* %9044, align 4, !tbaa !35
  %9608 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 18
  %9609 = bitcast i8* %9608 to i64*
  %9610 = load i64, i64* %9609, align 8, !tbaa !25
  %9611 = trunc i64 %9610 to i8
  %9612 = icmp eq i8 %9611, 0
  %9613 = bitcast i32* %9043 to i64*
  %9614 = load volatile i64, i64* %9613, align 16, !tbaa !25
  %9615 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %9616 = select i1 %9612, i64 0, i64 %9615
  %9617 = or i64 %9614, %9616
  %9618 = trunc i64 %9617 to i32
  store volatile i32 %9618, i32* %9043, align 16, !tbaa !35
  %9619 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 48
  %9620 = bitcast i8* %9619 to i64*
  %9621 = load i64, i64* %9620, align 16, !tbaa !25
  %9622 = trunc i64 %9621 to i8
  %9623 = icmp eq i8 %9622, 0
  %9624 = bitcast i32* %9044 to i64*
  %9625 = load volatile i64, i64* %9624, align 4, !tbaa !25
  %9626 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %9627 = select i1 %9623, i64 0, i64 %9626
  %9628 = or i64 %9625, %9627
  %9629 = trunc i64 %9628 to i32
  store volatile i32 %9629, i32* %9044, align 4, !tbaa !35
  %9630 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 11
  %9631 = bitcast i8* %9630 to i64*
  %9632 = load i64, i64* %9631, align 8, !tbaa !25
  %9633 = trunc i64 %9632 to i8
  %9634 = icmp eq i8 %9633, 0
  %9635 = bitcast i32* %9043 to i64*
  %9636 = load volatile i64, i64* %9635, align 16, !tbaa !25
  %9637 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %9638 = select i1 %9634, i64 0, i64 %9637
  %9639 = or i64 %9636, %9638
  %9640 = trunc i64 %9639 to i32
  store volatile i32 %9640, i32* %9043, align 16, !tbaa !35
  %9641 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 38
  %9642 = bitcast i8* %9641 to i64*
  %9643 = load i64, i64* %9642, align 8, !tbaa !25
  %9644 = trunc i64 %9643 to i8
  %9645 = icmp eq i8 %9644, 0
  %9646 = bitcast i32* %9044 to i64*
  %9647 = load volatile i64, i64* %9646, align 4, !tbaa !25
  %9648 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %9649 = select i1 %9645, i64 0, i64 %9648
  %9650 = or i64 %9647, %9649
  %9651 = trunc i64 %9650 to i32
  store volatile i32 %9651, i32* %9044, align 4, !tbaa !35
  %9652 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 3
  %9653 = bitcast i8* %9652 to i64*
  %9654 = load i64, i64* %9653, align 8, !tbaa !25
  %9655 = trunc i64 %9654 to i8
  %9656 = icmp eq i8 %9655, 0
  %9657 = bitcast i32* %9043 to i64*
  %9658 = load volatile i64, i64* %9657, align 16, !tbaa !25
  %9659 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %9660 = select i1 %9656, i64 0, i64 %9659
  %9661 = or i64 %9658, %9660
  %9662 = trunc i64 %9661 to i32
  store volatile i32 %9662, i32* %9043, align 16, !tbaa !35
  %9663 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 55
  %9664 = bitcast i8* %9663 to i64*
  %9665 = load i64, i64* %9664, align 8, !tbaa !25
  %9666 = trunc i64 %9665 to i8
  %9667 = icmp eq i8 %9666, 0
  %9668 = bitcast i32* %9044 to i64*
  %9669 = load volatile i64, i64* %9668, align 4, !tbaa !25
  %9670 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %9671 = select i1 %9667, i64 0, i64 %9670
  %9672 = or i64 %9669, %9671
  %9673 = trunc i64 %9672 to i32
  store volatile i32 %9673, i32* %9044, align 4, !tbaa !35
  %9674 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 25
  %9675 = bitcast i8* %9674 to i64*
  %9676 = load i64, i64* %9675, align 8, !tbaa !25
  %9677 = trunc i64 %9676 to i8
  %9678 = icmp eq i8 %9677, 0
  %9679 = bitcast i32* %9043 to i64*
  %9680 = load volatile i64, i64* %9679, align 16, !tbaa !25
  %9681 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %9682 = select i1 %9678, i64 0, i64 %9681
  %9683 = or i64 %9680, %9682
  %9684 = trunc i64 %9683 to i32
  store volatile i32 %9684, i32* %9043, align 16, !tbaa !35
  %9685 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 33
  %9686 = bitcast i8* %9685 to i64*
  %9687 = load i64, i64* %9686, align 8, !tbaa !25
  %9688 = trunc i64 %9687 to i8
  %9689 = icmp eq i8 %9688, 0
  %9690 = bitcast i32* %9044 to i64*
  %9691 = load volatile i64, i64* %9690, align 4, !tbaa !25
  %9692 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %9693 = select i1 %9689, i64 0, i64 %9692
  %9694 = or i64 %9691, %9693
  %9695 = trunc i64 %9694 to i32
  store volatile i32 %9695, i32* %9044, align 4, !tbaa !35
  %9696 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 7
  %9697 = bitcast i8* %9696 to i64*
  %9698 = load i64, i64* %9697, align 8, !tbaa !25
  %9699 = trunc i64 %9698 to i8
  %9700 = icmp eq i8 %9699, 0
  %9701 = bitcast i32* %9043 to i64*
  %9702 = load volatile i64, i64* %9701, align 16, !tbaa !25
  %9703 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %9704 = select i1 %9700, i64 0, i64 %9703
  %9705 = or i64 %9702, %9704
  %9706 = trunc i64 %9705 to i32
  store volatile i32 %9706, i32* %9043, align 16, !tbaa !35
  %9707 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 52
  %9708 = bitcast i8* %9707 to i64*
  %9709 = load i64, i64* %9708, align 8, !tbaa !25
  %9710 = trunc i64 %9709 to i8
  %9711 = icmp eq i8 %9710, 0
  %9712 = bitcast i32* %9044 to i64*
  %9713 = load volatile i64, i64* %9712, align 4, !tbaa !25
  %9714 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %9715 = select i1 %9711, i64 0, i64 %9714
  %9716 = or i64 %9713, %9715
  %9717 = trunc i64 %9716 to i32
  store volatile i32 %9717, i32* %9044, align 4, !tbaa !35
  %9718 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 15
  %9719 = bitcast i8* %9718 to i64*
  %9720 = load i64, i64* %9719, align 8, !tbaa !25
  %9721 = trunc i64 %9720 to i8
  %9722 = icmp eq i8 %9721, 0
  %9723 = bitcast i32* %9043 to i64*
  %9724 = load volatile i64, i64* %9723, align 16, !tbaa !25
  %9725 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %9726 = select i1 %9722, i64 0, i64 %9725
  %9727 = or i64 %9724, %9726
  %9728 = trunc i64 %9727 to i32
  store volatile i32 %9728, i32* %9043, align 16, !tbaa !35
  %9729 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 45
  %9730 = bitcast i8* %9729 to i64*
  %9731 = load i64, i64* %9730, align 8, !tbaa !25
  %9732 = trunc i64 %9731 to i8
  %9733 = icmp eq i8 %9732, 0
  %9734 = bitcast i32* %9044 to i64*
  %9735 = load volatile i64, i64* %9734, align 4, !tbaa !25
  %9736 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %9737 = select i1 %9733, i64 0, i64 %9736
  %9738 = or i64 %9735, %9737
  %9739 = trunc i64 %9738 to i32
  store volatile i32 %9739, i32* %9044, align 4, !tbaa !35
  %9740 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 6
  %9741 = bitcast i8* %9740 to i64*
  %9742 = load i64, i64* %9741, align 8, !tbaa !25
  %9743 = trunc i64 %9742 to i8
  %9744 = icmp eq i8 %9743, 0
  %9745 = bitcast i32* %9043 to i64*
  %9746 = load volatile i64, i64* %9745, align 16, !tbaa !25
  %9747 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %9748 = select i1 %9744, i64 0, i64 %9747
  %9749 = or i64 %9746, %9748
  %9750 = trunc i64 %9749 to i32
  store volatile i32 %9750, i32* %9043, align 16, !tbaa !35
  %9751 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 41
  %9752 = bitcast i8* %9751 to i64*
  %9753 = load i64, i64* %9752, align 8, !tbaa !25
  %9754 = trunc i64 %9753 to i8
  %9755 = icmp eq i8 %9754, 0
  %9756 = bitcast i32* %9044 to i64*
  %9757 = load volatile i64, i64* %9756, align 4, !tbaa !25
  %9758 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %9759 = select i1 %9755, i64 0, i64 %9758
  %9760 = or i64 %9757, %9759
  %9761 = trunc i64 %9760 to i32
  store volatile i32 %9761, i32* %9044, align 4, !tbaa !35
  %9762 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 26
  %9763 = bitcast i8* %9762 to i64*
  %9764 = load i64, i64* %9763, align 8, !tbaa !25
  %9765 = trunc i64 %9764 to i8
  %9766 = icmp eq i8 %9765, 0
  %9767 = bitcast i32* %9043 to i64*
  %9768 = load volatile i64, i64* %9767, align 16, !tbaa !25
  %9769 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %9770 = select i1 %9766, i64 0, i64 %9769
  %9771 = or i64 %9768, %9770
  %9772 = trunc i64 %9771 to i32
  store volatile i32 %9772, i32* %9043, align 16, !tbaa !35
  %9773 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 49
  %9774 = bitcast i8* %9773 to i64*
  %9775 = load i64, i64* %9774, align 8, !tbaa !25
  %9776 = trunc i64 %9775 to i8
  %9777 = icmp eq i8 %9776, 0
  %9778 = bitcast i32* %9044 to i64*
  %9779 = load volatile i64, i64* %9778, align 4, !tbaa !25
  %9780 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %9781 = select i1 %9777, i64 0, i64 %9780
  %9782 = or i64 %9779, %9781
  %9783 = trunc i64 %9782 to i32
  store volatile i32 %9783, i32* %9044, align 4, !tbaa !35
  %9784 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 19
  %9785 = bitcast i8* %9784 to i64*
  %9786 = load i64, i64* %9785, align 8, !tbaa !25
  %9787 = trunc i64 %9786 to i8
  %9788 = icmp eq i8 %9787, 0
  %9789 = bitcast i32* %9043 to i64*
  %9790 = load volatile i64, i64* %9789, align 16, !tbaa !25
  %9791 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %9792 = select i1 %9788, i64 0, i64 %9791
  %9793 = or i64 %9790, %9792
  %9794 = trunc i64 %9793 to i32
  store volatile i32 %9794, i32* %9043, align 16, !tbaa !35
  %9795 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 35
  %9796 = bitcast i8* %9795 to i64*
  %9797 = load i64, i64* %9796, align 8, !tbaa !25
  %9798 = trunc i64 %9797 to i8
  %9799 = icmp eq i8 %9798, 0
  %9800 = bitcast i32* %9044 to i64*
  %9801 = load volatile i64, i64* %9800, align 4, !tbaa !25
  %9802 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %9803 = select i1 %9799, i64 0, i64 %9802
  %9804 = or i64 %9801, %9803
  %9805 = trunc i64 %9804 to i32
  store volatile i32 %9805, i32* %9044, align 4, !tbaa !35
  %9806 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 12
  %9807 = bitcast i8* %9806 to i64*
  %9808 = load i64, i64* %9807, align 8, !tbaa !25
  %9809 = trunc i64 %9808 to i8
  %9810 = icmp eq i8 %9809, 0
  %9811 = bitcast i32* %9043 to i64*
  %9812 = load volatile i64, i64* %9811, align 16, !tbaa !25
  %9813 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %9814 = select i1 %9810, i64 0, i64 %9813
  %9815 = or i64 %9812, %9814
  %9816 = trunc i64 %9815 to i32
  store volatile i32 %9816, i32* %9043, align 16, !tbaa !35
  %9817 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 28
  %9818 = bitcast i8* %9817 to i64*
  %9819 = load i64, i64* %9818, align 8, !tbaa !25
  %9820 = trunc i64 %9819 to i8
  %9821 = icmp eq i8 %9820, 0
  %9822 = bitcast i32* %9044 to i64*
  %9823 = load volatile i64, i64* %9822, align 4, !tbaa !25
  %9824 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %9825 = select i1 %9821, i64 0, i64 %9824
  %9826 = or i64 %9823, %9825
  %9827 = trunc i64 %9826 to i32
  store volatile i32 %9827, i32* %9044, align 4, !tbaa !35
  %9828 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 1
  %9829 = bitcast i8* %9828 to i64*
  %9830 = load i64, i64* %9829, align 8, !tbaa !25
  %9831 = trunc i64 %9830 to i8
  %9832 = icmp eq i8 %9831, 0
  %9833 = bitcast i32* %9043 to i64*
  %9834 = load volatile i64, i64* %9833, align 16, !tbaa !25
  %9835 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %9836 = select i1 %9832, i64 0, i64 %9835
  %9837 = or i64 %9834, %9836
  %9838 = trunc i64 %9837 to i32
  store volatile i32 %9838, i32* %9043, align 16, !tbaa !35
  %9839 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 31
  %9840 = bitcast i8* %9839 to i64*
  %9841 = load i64, i64* %9840, align 8, !tbaa !25
  %9842 = trunc i64 %9841 to i8
  %9843 = icmp eq i8 %9842, 0
  %9844 = bitcast i32* %9044 to i64*
  %9845 = load volatile i64, i64* %9844, align 4, !tbaa !25
  %9846 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %9847 = select i1 %9843, i64 0, i64 %9846
  %9848 = or i64 %9845, %9847
  %9849 = trunc i64 %9848 to i32
  store volatile i32 %9849, i32* %9044, align 4, !tbaa !35
  %9850 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 26
  store i32 0, i32* %9850, align 8, !tbaa !35
  %9851 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 27
  store i32 0, i32* %9851, align 4, !tbaa !35
  %9852 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 25
  %9853 = bitcast i8* %9852 to i64*
  %9854 = load i64, i64* %9853, align 8, !tbaa !25
  %9855 = trunc i64 %9854 to i8
  store i8 %9855, i8* %8, align 16, !tbaa !14
  %9856 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 26
  %9857 = bitcast i8* %9856 to i64*
  %9858 = load i64, i64* %9857, align 8, !tbaa !25
  %9859 = trunc i64 %9858 to i8
  %9860 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 1
  store i8 %9859, i8* %9860, align 1, !tbaa !14
  %9861 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 27
  %9862 = bitcast i8* %9861 to i64*
  %9863 = load i64, i64* %9862, align 8, !tbaa !25
  %9864 = trunc i64 %9863 to i8
  %9865 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 2
  store i8 %9864, i8* %9865, align 2, !tbaa !14
  %9866 = bitcast [56 x i8]* %4 to i64*
  %9867 = load i64, i64* %9866, align 16, !tbaa !25
  %9868 = trunc i64 %9867 to i8
  %9869 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 3
  store i8 %9868, i8* %9869, align 1, !tbaa !14
  %9870 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 1
  %9871 = bitcast i8* %9870 to i64*
  %9872 = load i64, i64* %9871, align 8, !tbaa !25
  %9873 = trunc i64 %9872 to i8
  %9874 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 4
  store i8 %9873, i8* %9874, align 4, !tbaa !14
  %9875 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 2
  %9876 = bitcast i8* %9875 to i64*
  %9877 = load i64, i64* %9876, align 8, !tbaa !25
  %9878 = trunc i64 %9877 to i8
  %9879 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 5
  store i8 %9878, i8* %9879, align 1, !tbaa !14
  %9880 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 3
  %9881 = bitcast i8* %9880 to i64*
  %9882 = load i64, i64* %9881, align 8, !tbaa !25
  %9883 = trunc i64 %9882 to i8
  %9884 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 6
  store i8 %9883, i8* %9884, align 2, !tbaa !14
  %9885 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 4
  %9886 = bitcast i8* %9885 to i64*
  %9887 = load i64, i64* %9886, align 8, !tbaa !25
  %9888 = trunc i64 %9887 to i8
  %9889 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 7
  store i8 %9888, i8* %9889, align 1, !tbaa !14
  %9890 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 5
  %9891 = bitcast i8* %9890 to i64*
  %9892 = load i64, i64* %9891, align 8, !tbaa !25
  %9893 = trunc i64 %9892 to i8
  %9894 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 8
  store i8 %9893, i8* %9894, align 8, !tbaa !14
  %9895 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 6
  %9896 = bitcast i8* %9895 to i64*
  %9897 = load i64, i64* %9896, align 8, !tbaa !25
  %9898 = trunc i64 %9897 to i8
  %9899 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 9
  store i8 %9898, i8* %9899, align 1, !tbaa !14
  %9900 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 7
  %9901 = bitcast i8* %9900 to i64*
  %9902 = load i64, i64* %9901, align 8, !tbaa !25
  %9903 = trunc i64 %9902 to i8
  %9904 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 10
  store i8 %9903, i8* %9904, align 2, !tbaa !14
  %9905 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 8
  %9906 = bitcast i8* %9905 to i64*
  %9907 = load i64, i64* %9906, align 8, !tbaa !25
  %9908 = trunc i64 %9907 to i8
  %9909 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 11
  store i8 %9908, i8* %9909, align 1, !tbaa !14
  %9910 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 9
  %9911 = bitcast i8* %9910 to i64*
  %9912 = load i64, i64* %9911, align 8, !tbaa !25
  %9913 = trunc i64 %9912 to i8
  %9914 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 12
  store i8 %9913, i8* %9914, align 4, !tbaa !14
  %9915 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 10
  %9916 = bitcast i8* %9915 to i64*
  %9917 = load i64, i64* %9916, align 8, !tbaa !25
  %9918 = trunc i64 %9917 to i8
  %9919 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 13
  store i8 %9918, i8* %9919, align 1, !tbaa !14
  %9920 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 11
  %9921 = bitcast i8* %9920 to i64*
  %9922 = load i64, i64* %9921, align 8, !tbaa !25
  %9923 = trunc i64 %9922 to i8
  %9924 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 14
  store i8 %9923, i8* %9924, align 2, !tbaa !14
  %9925 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 12
  %9926 = bitcast i8* %9925 to i64*
  %9927 = load i64, i64* %9926, align 8, !tbaa !25
  %9928 = trunc i64 %9927 to i8
  %9929 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 15
  store i8 %9928, i8* %9929, align 1, !tbaa !14
  %9930 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 13
  %9931 = bitcast i8* %9930 to i64*
  %9932 = load i64, i64* %9931, align 8, !tbaa !25
  %9933 = trunc i64 %9932 to i8
  %9934 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 16
  store i8 %9933, i8* %9934, align 16, !tbaa !14
  %9935 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 14
  %9936 = bitcast i8* %9935 to i64*
  %9937 = load i64, i64* %9936, align 8, !tbaa !25
  %9938 = trunc i64 %9937 to i8
  %9939 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 17
  store i8 %9938, i8* %9939, align 1, !tbaa !14
  %9940 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 15
  %9941 = bitcast i8* %9940 to i64*
  %9942 = load i64, i64* %9941, align 8, !tbaa !25
  %9943 = trunc i64 %9942 to i8
  %9944 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 18
  store i8 %9943, i8* %9944, align 2, !tbaa !14
  %9945 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 16
  %9946 = bitcast i8* %9945 to i64*
  %9947 = load i64, i64* %9946, align 16, !tbaa !25
  %9948 = trunc i64 %9947 to i8
  %9949 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 19
  store i8 %9948, i8* %9949, align 1, !tbaa !14
  %9950 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 17
  %9951 = bitcast i8* %9950 to i64*
  %9952 = load i64, i64* %9951, align 8, !tbaa !25
  %9953 = trunc i64 %9952 to i8
  %9954 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 20
  store i8 %9953, i8* %9954, align 4, !tbaa !14
  %9955 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 18
  %9956 = bitcast i8* %9955 to i64*
  %9957 = load i64, i64* %9956, align 8, !tbaa !25
  %9958 = trunc i64 %9957 to i8
  %9959 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 21
  store i8 %9958, i8* %9959, align 1, !tbaa !14
  %9960 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 19
  %9961 = bitcast i8* %9960 to i64*
  %9962 = load i64, i64* %9961, align 8, !tbaa !25
  %9963 = trunc i64 %9962 to i8
  %9964 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 22
  store i8 %9963, i8* %9964, align 2, !tbaa !14
  %9965 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 20
  %9966 = bitcast i8* %9965 to i64*
  %9967 = load i64, i64* %9966, align 8, !tbaa !25
  %9968 = trunc i64 %9967 to i8
  %9969 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 23
  store i8 %9968, i8* %9969, align 1, !tbaa !14
  %9970 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 21
  %9971 = bitcast i8* %9970 to i64*
  %9972 = load i64, i64* %9971, align 8, !tbaa !25
  %9973 = trunc i64 %9972 to i8
  %9974 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 24
  store i8 %9973, i8* %9974, align 8, !tbaa !14
  %9975 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 22
  %9976 = bitcast i8* %9975 to i64*
  %9977 = load i64, i64* %9976, align 8, !tbaa !25
  %9978 = trunc i64 %9977 to i8
  %9979 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 25
  store i8 %9978, i8* %9979, align 1, !tbaa !14
  %9980 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 23
  %9981 = bitcast i8* %9980 to i64*
  %9982 = load i64, i64* %9981, align 8, !tbaa !25
  %9983 = trunc i64 %9982 to i8
  %9984 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 26
  store i8 %9983, i8* %9984, align 2, !tbaa !14
  %9985 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 24
  %9986 = bitcast i8* %9985 to i64*
  %9987 = load i64, i64* %9986, align 8, !tbaa !25
  %9988 = trunc i64 %9987 to i8
  %9989 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 27
  store i8 %9988, i8* %9989, align 1, !tbaa !14
  %9990 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 53
  %9991 = bitcast i8* %9990 to i64*
  %9992 = load i64, i64* %9991, align 8, !tbaa !25
  %9993 = trunc i64 %9992 to i8
  %9994 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 28
  store i8 %9993, i8* %9994, align 4, !tbaa !14
  %9995 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 54
  %9996 = bitcast i8* %9995 to i64*
  %9997 = load i64, i64* %9996, align 8, !tbaa !25
  %9998 = trunc i64 %9997 to i8
  %9999 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 29
  store i8 %9998, i8* %9999, align 1, !tbaa !14
  %10000 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 55
  %10001 = bitcast i8* %10000 to i64*
  %10002 = load i64, i64* %10001, align 8, !tbaa !25
  %10003 = trunc i64 %10002 to i8
  %10004 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 30
  store i8 %10003, i8* %10004, align 2, !tbaa !14
  %10005 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 28
  %10006 = bitcast i8* %10005 to i64*
  %10007 = load i64, i64* %10006, align 8, !tbaa !25
  %10008 = trunc i64 %10007 to i8
  %10009 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 31
  store i8 %10008, i8* %10009, align 1, !tbaa !14
  %10010 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 29
  %10011 = bitcast i8* %10010 to i64*
  %10012 = load i64, i64* %10011, align 8, !tbaa !25
  %10013 = trunc i64 %10012 to i8
  %10014 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 32
  store i8 %10013, i8* %10014, align 16, !tbaa !14
  %10015 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 30
  %10016 = bitcast i8* %10015 to i64*
  %10017 = load i64, i64* %10016, align 8, !tbaa !25
  %10018 = trunc i64 %10017 to i8
  %10019 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 33
  store i8 %10018, i8* %10019, align 1, !tbaa !14
  %10020 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 31
  %10021 = bitcast i8* %10020 to i64*
  %10022 = load i64, i64* %10021, align 8, !tbaa !25
  %10023 = trunc i64 %10022 to i8
  %10024 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 34
  store i8 %10023, i8* %10024, align 2, !tbaa !14
  %10025 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 32
  %10026 = bitcast i8* %10025 to i64*
  %10027 = load i64, i64* %10026, align 16, !tbaa !25
  %10028 = trunc i64 %10027 to i8
  %10029 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 35
  store i8 %10028, i8* %10029, align 1, !tbaa !14
  %10030 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 33
  %10031 = bitcast i8* %10030 to i64*
  %10032 = load i64, i64* %10031, align 8, !tbaa !25
  %10033 = trunc i64 %10032 to i8
  %10034 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 36
  store i8 %10033, i8* %10034, align 4, !tbaa !14
  %10035 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 34
  %10036 = bitcast i8* %10035 to i64*
  %10037 = load i64, i64* %10036, align 8, !tbaa !25
  %10038 = trunc i64 %10037 to i8
  %10039 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 37
  store i8 %10038, i8* %10039, align 1, !tbaa !14
  %10040 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 35
  %10041 = bitcast i8* %10040 to i64*
  %10042 = load i64, i64* %10041, align 8, !tbaa !25
  %10043 = trunc i64 %10042 to i8
  %10044 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 38
  store i8 %10043, i8* %10044, align 2, !tbaa !14
  %10045 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 36
  %10046 = bitcast i8* %10045 to i64*
  %10047 = load i64, i64* %10046, align 8, !tbaa !25
  %10048 = trunc i64 %10047 to i8
  %10049 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 39
  store i8 %10048, i8* %10049, align 1, !tbaa !14
  %10050 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 37
  %10051 = bitcast i8* %10050 to i64*
  %10052 = load i64, i64* %10051, align 8, !tbaa !25
  %10053 = trunc i64 %10052 to i8
  %10054 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 40
  store i8 %10053, i8* %10054, align 8, !tbaa !14
  %10055 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 38
  %10056 = bitcast i8* %10055 to i64*
  %10057 = load i64, i64* %10056, align 8, !tbaa !25
  %10058 = trunc i64 %10057 to i8
  %10059 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 41
  store i8 %10058, i8* %10059, align 1, !tbaa !14
  %10060 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 39
  %10061 = bitcast i8* %10060 to i64*
  %10062 = load i64, i64* %10061, align 8, !tbaa !25
  %10063 = trunc i64 %10062 to i8
  %10064 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 42
  store i8 %10063, i8* %10064, align 2, !tbaa !14
  %10065 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 40
  %10066 = bitcast i8* %10065 to i64*
  %10067 = load i64, i64* %10066, align 8, !tbaa !25
  %10068 = trunc i64 %10067 to i8
  %10069 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 43
  store i8 %10068, i8* %10069, align 1, !tbaa !14
  %10070 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 41
  %10071 = bitcast i8* %10070 to i64*
  %10072 = load i64, i64* %10071, align 8, !tbaa !25
  %10073 = trunc i64 %10072 to i8
  %10074 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 44
  store i8 %10073, i8* %10074, align 4, !tbaa !14
  %10075 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 42
  %10076 = bitcast i8* %10075 to i64*
  %10077 = load i64, i64* %10076, align 8, !tbaa !25
  %10078 = trunc i64 %10077 to i8
  %10079 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 45
  store i8 %10078, i8* %10079, align 1, !tbaa !14
  %10080 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 43
  %10081 = bitcast i8* %10080 to i64*
  %10082 = load i64, i64* %10081, align 8, !tbaa !25
  %10083 = trunc i64 %10082 to i8
  %10084 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 46
  store i8 %10083, i8* %10084, align 2, !tbaa !14
  %10085 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 44
  %10086 = bitcast i8* %10085 to i64*
  %10087 = load i64, i64* %10086, align 8, !tbaa !25
  %10088 = trunc i64 %10087 to i8
  %10089 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 47
  store i8 %10088, i8* %10089, align 1, !tbaa !14
  %10090 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 45
  %10091 = bitcast i8* %10090 to i64*
  %10092 = load i64, i64* %10091, align 8, !tbaa !25
  %10093 = trunc i64 %10092 to i8
  %10094 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 48
  store i8 %10093, i8* %10094, align 16, !tbaa !14
  %10095 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 46
  %10096 = bitcast i8* %10095 to i64*
  %10097 = load i64, i64* %10096, align 8, !tbaa !25
  %10098 = trunc i64 %10097 to i8
  %10099 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 49
  store i8 %10098, i8* %10099, align 1, !tbaa !14
  %10100 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 47
  %10101 = bitcast i8* %10100 to i64*
  %10102 = load i64, i64* %10101, align 8, !tbaa !25
  %10103 = trunc i64 %10102 to i8
  %10104 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 50
  store i8 %10103, i8* %10104, align 2, !tbaa !14
  %10105 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 48
  %10106 = bitcast i8* %10105 to i64*
  %10107 = load i64, i64* %10106, align 16, !tbaa !25
  %10108 = trunc i64 %10107 to i8
  %10109 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 51
  store i8 %10108, i8* %10109, align 1, !tbaa !14
  %10110 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 49
  %10111 = bitcast i8* %10110 to i64*
  %10112 = load i64, i64* %10111, align 8, !tbaa !25
  %10113 = trunc i64 %10112 to i8
  %10114 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 52
  store i8 %10113, i8* %10114, align 4, !tbaa !14
  %10115 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 50
  %10116 = bitcast i8* %10115 to i64*
  %10117 = load i64, i64* %10116, align 8, !tbaa !25
  %10118 = trunc i64 %10117 to i8
  %10119 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 53
  store i8 %10118, i8* %10119, align 1, !tbaa !14
  %10120 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 51
  %10121 = bitcast i8* %10120 to i64*
  %10122 = load i64, i64* %10121, align 8, !tbaa !25
  %10123 = trunc i64 %10122 to i8
  %10124 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 54
  store i8 %10123, i8* %10124, align 2, !tbaa !14
  %10125 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 52
  %10126 = bitcast i8* %10125 to i64*
  %10127 = load i64, i64* %10126, align 8, !tbaa !25
  %10128 = trunc i64 %10127 to i8
  %10129 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 55
  store i8 %10128, i8* %10129, align 1, !tbaa !14
  %10130 = load i64, i64* %9324, align 8, !tbaa !25
  %10131 = trunc i64 %10130 to i8
  %10132 = icmp eq i8 %10131, 0
  %10133 = bitcast i32* %9850 to i64*
  %10134 = load volatile i64, i64* %10133, align 8, !tbaa !25
  %10135 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %10136 = select i1 %10132, i64 0, i64 %10135
  %10137 = or i64 %10134, %10136
  %10138 = trunc i64 %10137 to i32
  store volatile i32 %10138, i32* %9850, align 8, !tbaa !35
  %10139 = load i64, i64* %9335, align 8, !tbaa !25
  %10140 = trunc i64 %10139 to i8
  %10141 = icmp eq i8 %10140, 0
  %10142 = bitcast i32* %9851 to i64*
  %10143 = load volatile i64, i64* %10142, align 4, !tbaa !25
  %10144 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %10145 = select i1 %10141, i64 0, i64 %10144
  %10146 = or i64 %10143, %10145
  %10147 = trunc i64 %10146 to i32
  store volatile i32 %10147, i32* %9851, align 4, !tbaa !35
  %10148 = load i64, i64* %9346, align 16, !tbaa !25
  %10149 = trunc i64 %10148 to i8
  %10150 = icmp eq i8 %10149, 0
  %10151 = bitcast i32* %9850 to i64*
  %10152 = load volatile i64, i64* %10151, align 8, !tbaa !25
  %10153 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %10154 = select i1 %10150, i64 0, i64 %10153
  %10155 = or i64 %10152, %10154
  %10156 = trunc i64 %10155 to i32
  store volatile i32 %10156, i32* %9850, align 8, !tbaa !35
  %10157 = load i64, i64* %9357, align 8, !tbaa !25
  %10158 = trunc i64 %10157 to i8
  %10159 = icmp eq i8 %10158, 0
  %10160 = bitcast i32* %9851 to i64*
  %10161 = load volatile i64, i64* %10160, align 4, !tbaa !25
  %10162 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %10163 = select i1 %10159, i64 0, i64 %10162
  %10164 = or i64 %10161, %10163
  %10165 = trunc i64 %10164 to i32
  store volatile i32 %10165, i32* %9851, align 4, !tbaa !35
  %10166 = load i64, i64* %9368, align 8, !tbaa !25
  %10167 = trunc i64 %10166 to i8
  %10168 = icmp eq i8 %10167, 0
  %10169 = bitcast i32* %9850 to i64*
  %10170 = load volatile i64, i64* %10169, align 8, !tbaa !25
  %10171 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %10172 = select i1 %10168, i64 0, i64 %10171
  %10173 = or i64 %10170, %10172
  %10174 = trunc i64 %10173 to i32
  store volatile i32 %10174, i32* %9850, align 8, !tbaa !35
  %10175 = load i64, i64* %9379, align 8, !tbaa !25
  %10176 = trunc i64 %10175 to i8
  %10177 = icmp eq i8 %10176, 0
  %10178 = bitcast i32* %9851 to i64*
  %10179 = load volatile i64, i64* %10178, align 4, !tbaa !25
  %10180 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %10181 = select i1 %10177, i64 0, i64 %10180
  %10182 = or i64 %10179, %10181
  %10183 = trunc i64 %10182 to i32
  store volatile i32 %10183, i32* %9851, align 4, !tbaa !35
  %10184 = load i64, i64* %9390, align 8, !tbaa !25
  %10185 = trunc i64 %10184 to i8
  %10186 = icmp eq i8 %10185, 0
  %10187 = bitcast i32* %9850 to i64*
  %10188 = load volatile i64, i64* %10187, align 8, !tbaa !25
  %10189 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %10190 = select i1 %10186, i64 0, i64 %10189
  %10191 = or i64 %10188, %10190
  %10192 = trunc i64 %10191 to i32
  store volatile i32 %10192, i32* %9850, align 8, !tbaa !35
  %10193 = load i64, i64* %9401, align 8, !tbaa !25
  %10194 = trunc i64 %10193 to i8
  %10195 = icmp eq i8 %10194, 0
  %10196 = bitcast i32* %9851 to i64*
  %10197 = load volatile i64, i64* %10196, align 4, !tbaa !25
  %10198 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %10199 = select i1 %10195, i64 0, i64 %10198
  %10200 = or i64 %10197, %10199
  %10201 = trunc i64 %10200 to i32
  store volatile i32 %10201, i32* %9851, align 4, !tbaa !35
  %10202 = load i64, i64* %9411, align 16, !tbaa !25
  %10203 = trunc i64 %10202 to i8
  %10204 = icmp eq i8 %10203, 0
  %10205 = bitcast i32* %9850 to i64*
  %10206 = load volatile i64, i64* %10205, align 8, !tbaa !25
  %10207 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %10208 = select i1 %10204, i64 0, i64 %10207
  %10209 = or i64 %10206, %10208
  %10210 = trunc i64 %10209 to i32
  store volatile i32 %10210, i32* %9850, align 8, !tbaa !35
  %10211 = load i64, i64* %9422, align 8, !tbaa !25
  %10212 = trunc i64 %10211 to i8
  %10213 = icmp eq i8 %10212, 0
  %10214 = bitcast i32* %9851 to i64*
  %10215 = load volatile i64, i64* %10214, align 4, !tbaa !25
  %10216 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %10217 = select i1 %10213, i64 0, i64 %10216
  %10218 = or i64 %10215, %10217
  %10219 = trunc i64 %10218 to i32
  store volatile i32 %10219, i32* %9851, align 4, !tbaa !35
  %10220 = load i64, i64* %9433, align 8, !tbaa !25
  %10221 = trunc i64 %10220 to i8
  %10222 = icmp eq i8 %10221, 0
  %10223 = bitcast i32* %9850 to i64*
  %10224 = load volatile i64, i64* %10223, align 8, !tbaa !25
  %10225 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %10226 = select i1 %10222, i64 0, i64 %10225
  %10227 = or i64 %10224, %10226
  %10228 = trunc i64 %10227 to i32
  store volatile i32 %10228, i32* %9850, align 8, !tbaa !35
  %10229 = load i64, i64* %9444, align 8, !tbaa !25
  %10230 = trunc i64 %10229 to i8
  %10231 = icmp eq i8 %10230, 0
  %10232 = bitcast i32* %9851 to i64*
  %10233 = load volatile i64, i64* %10232, align 4, !tbaa !25
  %10234 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %10235 = select i1 %10231, i64 0, i64 %10234
  %10236 = or i64 %10233, %10235
  %10237 = trunc i64 %10236 to i32
  store volatile i32 %10237, i32* %9851, align 4, !tbaa !35
  %10238 = load i64, i64* %9455, align 8, !tbaa !25
  %10239 = trunc i64 %10238 to i8
  %10240 = icmp eq i8 %10239, 0
  %10241 = bitcast i32* %9850 to i64*
  %10242 = load volatile i64, i64* %10241, align 8, !tbaa !25
  %10243 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %10244 = select i1 %10240, i64 0, i64 %10243
  %10245 = or i64 %10242, %10244
  %10246 = trunc i64 %10245 to i32
  store volatile i32 %10246, i32* %9850, align 8, !tbaa !35
  %10247 = load i64, i64* %9466, align 8, !tbaa !25
  %10248 = trunc i64 %10247 to i8
  %10249 = icmp eq i8 %10248, 0
  %10250 = bitcast i32* %9851 to i64*
  %10251 = load volatile i64, i64* %10250, align 4, !tbaa !25
  %10252 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %10253 = select i1 %10249, i64 0, i64 %10252
  %10254 = or i64 %10251, %10253
  %10255 = trunc i64 %10254 to i32
  store volatile i32 %10255, i32* %9851, align 4, !tbaa !35
  %10256 = load i64, i64* %9477, align 8, !tbaa !25
  %10257 = trunc i64 %10256 to i8
  %10258 = icmp eq i8 %10257, 0
  %10259 = bitcast i32* %9850 to i64*
  %10260 = load volatile i64, i64* %10259, align 8, !tbaa !25
  %10261 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %10262 = select i1 %10258, i64 0, i64 %10261
  %10263 = or i64 %10260, %10262
  %10264 = trunc i64 %10263 to i32
  store volatile i32 %10264, i32* %9850, align 8, !tbaa !35
  %10265 = load i64, i64* %9488, align 8, !tbaa !25
  %10266 = trunc i64 %10265 to i8
  %10267 = icmp eq i8 %10266, 0
  %10268 = bitcast i32* %9851 to i64*
  %10269 = load volatile i64, i64* %10268, align 4, !tbaa !25
  %10270 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %10271 = select i1 %10267, i64 0, i64 %10270
  %10272 = or i64 %10269, %10271
  %10273 = trunc i64 %10272 to i32
  store volatile i32 %10273, i32* %9851, align 4, !tbaa !35
  %10274 = load i64, i64* %9499, align 8, !tbaa !25
  %10275 = trunc i64 %10274 to i8
  %10276 = icmp eq i8 %10275, 0
  %10277 = bitcast i32* %9850 to i64*
  %10278 = load volatile i64, i64* %10277, align 8, !tbaa !25
  %10279 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %10280 = select i1 %10276, i64 0, i64 %10279
  %10281 = or i64 %10278, %10280
  %10282 = trunc i64 %10281 to i32
  store volatile i32 %10282, i32* %9850, align 8, !tbaa !35
  %10283 = load i64, i64* %9510, align 8, !tbaa !25
  %10284 = trunc i64 %10283 to i8
  %10285 = icmp eq i8 %10284, 0
  %10286 = bitcast i32* %9851 to i64*
  %10287 = load volatile i64, i64* %10286, align 4, !tbaa !25
  %10288 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %10289 = select i1 %10285, i64 0, i64 %10288
  %10290 = or i64 %10287, %10289
  %10291 = trunc i64 %10290 to i32
  store volatile i32 %10291, i32* %9851, align 4, !tbaa !35
  %10292 = load i64, i64* %9521, align 8, !tbaa !25
  %10293 = trunc i64 %10292 to i8
  %10294 = icmp eq i8 %10293, 0
  %10295 = bitcast i32* %9850 to i64*
  %10296 = load volatile i64, i64* %10295, align 8, !tbaa !25
  %10297 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %10298 = select i1 %10294, i64 0, i64 %10297
  %10299 = or i64 %10296, %10298
  %10300 = trunc i64 %10299 to i32
  store volatile i32 %10300, i32* %9850, align 8, !tbaa !35
  %10301 = load i64, i64* %9532, align 8, !tbaa !25
  %10302 = trunc i64 %10301 to i8
  %10303 = icmp eq i8 %10302, 0
  %10304 = bitcast i32* %9851 to i64*
  %10305 = load volatile i64, i64* %10304, align 4, !tbaa !25
  %10306 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %10307 = select i1 %10303, i64 0, i64 %10306
  %10308 = or i64 %10305, %10307
  %10309 = trunc i64 %10308 to i32
  store volatile i32 %10309, i32* %9851, align 4, !tbaa !35
  %10310 = load i64, i64* %9543, align 8, !tbaa !25
  %10311 = trunc i64 %10310 to i8
  %10312 = icmp eq i8 %10311, 0
  %10313 = bitcast i32* %9850 to i64*
  %10314 = load volatile i64, i64* %10313, align 8, !tbaa !25
  %10315 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %10316 = select i1 %10312, i64 0, i64 %10315
  %10317 = or i64 %10314, %10316
  %10318 = trunc i64 %10317 to i32
  store volatile i32 %10318, i32* %9850, align 8, !tbaa !35
  %10319 = load i64, i64* %9554, align 16, !tbaa !25
  %10320 = trunc i64 %10319 to i8
  %10321 = icmp eq i8 %10320, 0
  %10322 = bitcast i32* %9851 to i64*
  %10323 = load volatile i64, i64* %10322, align 4, !tbaa !25
  %10324 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %10325 = select i1 %10321, i64 0, i64 %10324
  %10326 = or i64 %10323, %10325
  %10327 = trunc i64 %10326 to i32
  store volatile i32 %10327, i32* %9851, align 4, !tbaa !35
  %10328 = load i64, i64* %9565, align 8, !tbaa !25
  %10329 = trunc i64 %10328 to i8
  %10330 = icmp eq i8 %10329, 0
  %10331 = bitcast i32* %9850 to i64*
  %10332 = load volatile i64, i64* %10331, align 8, !tbaa !25
  %10333 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %10334 = select i1 %10330, i64 0, i64 %10333
  %10335 = or i64 %10332, %10334
  %10336 = trunc i64 %10335 to i32
  store volatile i32 %10336, i32* %9850, align 8, !tbaa !35
  %10337 = load i64, i64* %9576, align 8, !tbaa !25
  %10338 = trunc i64 %10337 to i8
  %10339 = icmp eq i8 %10338, 0
  %10340 = bitcast i32* %9851 to i64*
  %10341 = load volatile i64, i64* %10340, align 4, !tbaa !25
  %10342 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %10343 = select i1 %10339, i64 0, i64 %10342
  %10344 = or i64 %10341, %10343
  %10345 = trunc i64 %10344 to i32
  store volatile i32 %10345, i32* %9851, align 4, !tbaa !35
  %10346 = load i64, i64* %9587, align 8, !tbaa !25
  %10347 = trunc i64 %10346 to i8
  %10348 = icmp eq i8 %10347, 0
  %10349 = bitcast i32* %9850 to i64*
  %10350 = load volatile i64, i64* %10349, align 8, !tbaa !25
  %10351 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %10352 = select i1 %10348, i64 0, i64 %10351
  %10353 = or i64 %10350, %10352
  %10354 = trunc i64 %10353 to i32
  store volatile i32 %10354, i32* %9850, align 8, !tbaa !35
  %10355 = load i64, i64* %9598, align 8, !tbaa !25
  %10356 = trunc i64 %10355 to i8
  %10357 = icmp eq i8 %10356, 0
  %10358 = bitcast i32* %9851 to i64*
  %10359 = load volatile i64, i64* %10358, align 4, !tbaa !25
  %10360 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %10361 = select i1 %10357, i64 0, i64 %10360
  %10362 = or i64 %10359, %10361
  %10363 = trunc i64 %10362 to i32
  store volatile i32 %10363, i32* %9851, align 4, !tbaa !35
  %10364 = load i64, i64* %9609, align 8, !tbaa !25
  %10365 = trunc i64 %10364 to i8
  %10366 = icmp eq i8 %10365, 0
  %10367 = bitcast i32* %9850 to i64*
  %10368 = load volatile i64, i64* %10367, align 8, !tbaa !25
  %10369 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %10370 = select i1 %10366, i64 0, i64 %10369
  %10371 = or i64 %10368, %10370
  %10372 = trunc i64 %10371 to i32
  store volatile i32 %10372, i32* %9850, align 8, !tbaa !35
  %10373 = load i64, i64* %9620, align 16, !tbaa !25
  %10374 = trunc i64 %10373 to i8
  %10375 = icmp eq i8 %10374, 0
  %10376 = bitcast i32* %9851 to i64*
  %10377 = load volatile i64, i64* %10376, align 4, !tbaa !25
  %10378 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %10379 = select i1 %10375, i64 0, i64 %10378
  %10380 = or i64 %10377, %10379
  %10381 = trunc i64 %10380 to i32
  store volatile i32 %10381, i32* %9851, align 4, !tbaa !35
  %10382 = load i64, i64* %9631, align 8, !tbaa !25
  %10383 = trunc i64 %10382 to i8
  %10384 = icmp eq i8 %10383, 0
  %10385 = bitcast i32* %9850 to i64*
  %10386 = load volatile i64, i64* %10385, align 8, !tbaa !25
  %10387 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %10388 = select i1 %10384, i64 0, i64 %10387
  %10389 = or i64 %10386, %10388
  %10390 = trunc i64 %10389 to i32
  store volatile i32 %10390, i32* %9850, align 8, !tbaa !35
  %10391 = load i64, i64* %9642, align 8, !tbaa !25
  %10392 = trunc i64 %10391 to i8
  %10393 = icmp eq i8 %10392, 0
  %10394 = bitcast i32* %9851 to i64*
  %10395 = load volatile i64, i64* %10394, align 4, !tbaa !25
  %10396 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %10397 = select i1 %10393, i64 0, i64 %10396
  %10398 = or i64 %10395, %10397
  %10399 = trunc i64 %10398 to i32
  store volatile i32 %10399, i32* %9851, align 4, !tbaa !35
  %10400 = load i64, i64* %9653, align 8, !tbaa !25
  %10401 = trunc i64 %10400 to i8
  %10402 = icmp eq i8 %10401, 0
  %10403 = bitcast i32* %9850 to i64*
  %10404 = load volatile i64, i64* %10403, align 8, !tbaa !25
  %10405 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %10406 = select i1 %10402, i64 0, i64 %10405
  %10407 = or i64 %10404, %10406
  %10408 = trunc i64 %10407 to i32
  store volatile i32 %10408, i32* %9850, align 8, !tbaa !35
  %10409 = load i64, i64* %9664, align 8, !tbaa !25
  %10410 = trunc i64 %10409 to i8
  %10411 = icmp eq i8 %10410, 0
  %10412 = bitcast i32* %9851 to i64*
  %10413 = load volatile i64, i64* %10412, align 4, !tbaa !25
  %10414 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %10415 = select i1 %10411, i64 0, i64 %10414
  %10416 = or i64 %10413, %10415
  %10417 = trunc i64 %10416 to i32
  store volatile i32 %10417, i32* %9851, align 4, !tbaa !35
  %10418 = load i64, i64* %9675, align 8, !tbaa !25
  %10419 = trunc i64 %10418 to i8
  %10420 = icmp eq i8 %10419, 0
  %10421 = bitcast i32* %9850 to i64*
  %10422 = load volatile i64, i64* %10421, align 8, !tbaa !25
  %10423 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %10424 = select i1 %10420, i64 0, i64 %10423
  %10425 = or i64 %10422, %10424
  %10426 = trunc i64 %10425 to i32
  store volatile i32 %10426, i32* %9850, align 8, !tbaa !35
  %10427 = load i64, i64* %9686, align 8, !tbaa !25
  %10428 = trunc i64 %10427 to i8
  %10429 = icmp eq i8 %10428, 0
  %10430 = bitcast i32* %9851 to i64*
  %10431 = load volatile i64, i64* %10430, align 4, !tbaa !25
  %10432 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %10433 = select i1 %10429, i64 0, i64 %10432
  %10434 = or i64 %10431, %10433
  %10435 = trunc i64 %10434 to i32
  store volatile i32 %10435, i32* %9851, align 4, !tbaa !35
  %10436 = load i64, i64* %9697, align 8, !tbaa !25
  %10437 = trunc i64 %10436 to i8
  %10438 = icmp eq i8 %10437, 0
  %10439 = bitcast i32* %9850 to i64*
  %10440 = load volatile i64, i64* %10439, align 8, !tbaa !25
  %10441 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %10442 = select i1 %10438, i64 0, i64 %10441
  %10443 = or i64 %10440, %10442
  %10444 = trunc i64 %10443 to i32
  store volatile i32 %10444, i32* %9850, align 8, !tbaa !35
  %10445 = load i64, i64* %9708, align 8, !tbaa !25
  %10446 = trunc i64 %10445 to i8
  %10447 = icmp eq i8 %10446, 0
  %10448 = bitcast i32* %9851 to i64*
  %10449 = load volatile i64, i64* %10448, align 4, !tbaa !25
  %10450 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %10451 = select i1 %10447, i64 0, i64 %10450
  %10452 = or i64 %10449, %10451
  %10453 = trunc i64 %10452 to i32
  store volatile i32 %10453, i32* %9851, align 4, !tbaa !35
  %10454 = load i64, i64* %9719, align 8, !tbaa !25
  %10455 = trunc i64 %10454 to i8
  %10456 = icmp eq i8 %10455, 0
  %10457 = bitcast i32* %9850 to i64*
  %10458 = load volatile i64, i64* %10457, align 8, !tbaa !25
  %10459 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %10460 = select i1 %10456, i64 0, i64 %10459
  %10461 = or i64 %10458, %10460
  %10462 = trunc i64 %10461 to i32
  store volatile i32 %10462, i32* %9850, align 8, !tbaa !35
  %10463 = load i64, i64* %9730, align 8, !tbaa !25
  %10464 = trunc i64 %10463 to i8
  %10465 = icmp eq i8 %10464, 0
  %10466 = bitcast i32* %9851 to i64*
  %10467 = load volatile i64, i64* %10466, align 4, !tbaa !25
  %10468 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %10469 = select i1 %10465, i64 0, i64 %10468
  %10470 = or i64 %10467, %10469
  %10471 = trunc i64 %10470 to i32
  store volatile i32 %10471, i32* %9851, align 4, !tbaa !35
  %10472 = load i64, i64* %9741, align 8, !tbaa !25
  %10473 = trunc i64 %10472 to i8
  %10474 = icmp eq i8 %10473, 0
  %10475 = bitcast i32* %9850 to i64*
  %10476 = load volatile i64, i64* %10475, align 8, !tbaa !25
  %10477 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %10478 = select i1 %10474, i64 0, i64 %10477
  %10479 = or i64 %10476, %10478
  %10480 = trunc i64 %10479 to i32
  store volatile i32 %10480, i32* %9850, align 8, !tbaa !35
  %10481 = load i64, i64* %9752, align 8, !tbaa !25
  %10482 = trunc i64 %10481 to i8
  %10483 = icmp eq i8 %10482, 0
  %10484 = bitcast i32* %9851 to i64*
  %10485 = load volatile i64, i64* %10484, align 4, !tbaa !25
  %10486 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %10487 = select i1 %10483, i64 0, i64 %10486
  %10488 = or i64 %10485, %10487
  %10489 = trunc i64 %10488 to i32
  store volatile i32 %10489, i32* %9851, align 4, !tbaa !35
  %10490 = load i64, i64* %9763, align 8, !tbaa !25
  %10491 = trunc i64 %10490 to i8
  %10492 = icmp eq i8 %10491, 0
  %10493 = bitcast i32* %9850 to i64*
  %10494 = load volatile i64, i64* %10493, align 8, !tbaa !25
  %10495 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %10496 = select i1 %10492, i64 0, i64 %10495
  %10497 = or i64 %10494, %10496
  %10498 = trunc i64 %10497 to i32
  store volatile i32 %10498, i32* %9850, align 8, !tbaa !35
  %10499 = load i64, i64* %9774, align 8, !tbaa !25
  %10500 = trunc i64 %10499 to i8
  %10501 = icmp eq i8 %10500, 0
  %10502 = bitcast i32* %9851 to i64*
  %10503 = load volatile i64, i64* %10502, align 4, !tbaa !25
  %10504 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %10505 = select i1 %10501, i64 0, i64 %10504
  %10506 = or i64 %10503, %10505
  %10507 = trunc i64 %10506 to i32
  store volatile i32 %10507, i32* %9851, align 4, !tbaa !35
  %10508 = load i64, i64* %9785, align 8, !tbaa !25
  %10509 = trunc i64 %10508 to i8
  %10510 = icmp eq i8 %10509, 0
  %10511 = bitcast i32* %9850 to i64*
  %10512 = load volatile i64, i64* %10511, align 8, !tbaa !25
  %10513 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %10514 = select i1 %10510, i64 0, i64 %10513
  %10515 = or i64 %10512, %10514
  %10516 = trunc i64 %10515 to i32
  store volatile i32 %10516, i32* %9850, align 8, !tbaa !35
  %10517 = load i64, i64* %9796, align 8, !tbaa !25
  %10518 = trunc i64 %10517 to i8
  %10519 = icmp eq i8 %10518, 0
  %10520 = bitcast i32* %9851 to i64*
  %10521 = load volatile i64, i64* %10520, align 4, !tbaa !25
  %10522 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %10523 = select i1 %10519, i64 0, i64 %10522
  %10524 = or i64 %10521, %10523
  %10525 = trunc i64 %10524 to i32
  store volatile i32 %10525, i32* %9851, align 4, !tbaa !35
  %10526 = load i64, i64* %9807, align 8, !tbaa !25
  %10527 = trunc i64 %10526 to i8
  %10528 = icmp eq i8 %10527, 0
  %10529 = bitcast i32* %9850 to i64*
  %10530 = load volatile i64, i64* %10529, align 8, !tbaa !25
  %10531 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %10532 = select i1 %10528, i64 0, i64 %10531
  %10533 = or i64 %10530, %10532
  %10534 = trunc i64 %10533 to i32
  store volatile i32 %10534, i32* %9850, align 8, !tbaa !35
  %10535 = load i64, i64* %9818, align 8, !tbaa !25
  %10536 = trunc i64 %10535 to i8
  %10537 = icmp eq i8 %10536, 0
  %10538 = bitcast i32* %9851 to i64*
  %10539 = load volatile i64, i64* %10538, align 4, !tbaa !25
  %10540 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %10541 = select i1 %10537, i64 0, i64 %10540
  %10542 = or i64 %10539, %10541
  %10543 = trunc i64 %10542 to i32
  store volatile i32 %10543, i32* %9851, align 4, !tbaa !35
  %10544 = load i64, i64* %9829, align 8, !tbaa !25
  %10545 = trunc i64 %10544 to i8
  %10546 = icmp eq i8 %10545, 0
  %10547 = bitcast i32* %9850 to i64*
  %10548 = load volatile i64, i64* %10547, align 8, !tbaa !25
  %10549 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %10550 = select i1 %10546, i64 0, i64 %10549
  %10551 = or i64 %10548, %10550
  %10552 = trunc i64 %10551 to i32
  store volatile i32 %10552, i32* %9850, align 8, !tbaa !35
  %10553 = load i64, i64* %9840, align 8, !tbaa !25
  %10554 = trunc i64 %10553 to i8
  %10555 = icmp eq i8 %10554, 0
  %10556 = bitcast i32* %9851 to i64*
  %10557 = load volatile i64, i64* %10556, align 4, !tbaa !25
  %10558 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %10559 = select i1 %10555, i64 0, i64 %10558
  %10560 = or i64 %10557, %10559
  %10561 = trunc i64 %10560 to i32
  store volatile i32 %10561, i32* %9851, align 4, !tbaa !35
  %10562 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 28
  store i32 0, i32* %10562, align 16, !tbaa !35
  %10563 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 29
  store i32 0, i32* %10563, align 4, !tbaa !35
  %10564 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 27
  %10565 = bitcast i8* %10564 to i64*
  %10566 = load i64, i64* %10565, align 8, !tbaa !25
  %10567 = trunc i64 %10566 to i8
  store i8 %10567, i8* %8, align 16, !tbaa !14
  %10568 = bitcast [56 x i8]* %4 to i64*
  %10569 = load i64, i64* %10568, align 16, !tbaa !25
  %10570 = trunc i64 %10569 to i8
  %10571 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 1
  store i8 %10570, i8* %10571, align 1, !tbaa !14
  %10572 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 1
  %10573 = bitcast i8* %10572 to i64*
  %10574 = load i64, i64* %10573, align 8, !tbaa !25
  %10575 = trunc i64 %10574 to i8
  %10576 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 2
  store i8 %10575, i8* %10576, align 2, !tbaa !14
  %10577 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 2
  %10578 = bitcast i8* %10577 to i64*
  %10579 = load i64, i64* %10578, align 8, !tbaa !25
  %10580 = trunc i64 %10579 to i8
  %10581 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 3
  store i8 %10580, i8* %10581, align 1, !tbaa !14
  %10582 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 3
  %10583 = bitcast i8* %10582 to i64*
  %10584 = load i64, i64* %10583, align 8, !tbaa !25
  %10585 = trunc i64 %10584 to i8
  %10586 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 4
  store i8 %10585, i8* %10586, align 4, !tbaa !14
  %10587 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 4
  %10588 = bitcast i8* %10587 to i64*
  %10589 = load i64, i64* %10588, align 8, !tbaa !25
  %10590 = trunc i64 %10589 to i8
  %10591 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 5
  store i8 %10590, i8* %10591, align 1, !tbaa !14
  %10592 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 5
  %10593 = bitcast i8* %10592 to i64*
  %10594 = load i64, i64* %10593, align 8, !tbaa !25
  %10595 = trunc i64 %10594 to i8
  %10596 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 6
  store i8 %10595, i8* %10596, align 2, !tbaa !14
  %10597 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 6
  %10598 = bitcast i8* %10597 to i64*
  %10599 = load i64, i64* %10598, align 8, !tbaa !25
  %10600 = trunc i64 %10599 to i8
  %10601 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 7
  store i8 %10600, i8* %10601, align 1, !tbaa !14
  %10602 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 7
  %10603 = bitcast i8* %10602 to i64*
  %10604 = load i64, i64* %10603, align 8, !tbaa !25
  %10605 = trunc i64 %10604 to i8
  %10606 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 8
  store i8 %10605, i8* %10606, align 8, !tbaa !14
  %10607 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 8
  %10608 = bitcast i8* %10607 to i64*
  %10609 = load i64, i64* %10608, align 8, !tbaa !25
  %10610 = trunc i64 %10609 to i8
  %10611 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 9
  store i8 %10610, i8* %10611, align 1, !tbaa !14
  %10612 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 9
  %10613 = bitcast i8* %10612 to i64*
  %10614 = load i64, i64* %10613, align 8, !tbaa !25
  %10615 = trunc i64 %10614 to i8
  %10616 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 10
  store i8 %10615, i8* %10616, align 2, !tbaa !14
  %10617 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 10
  %10618 = bitcast i8* %10617 to i64*
  %10619 = load i64, i64* %10618, align 8, !tbaa !25
  %10620 = trunc i64 %10619 to i8
  %10621 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 11
  store i8 %10620, i8* %10621, align 1, !tbaa !14
  %10622 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 11
  %10623 = bitcast i8* %10622 to i64*
  %10624 = load i64, i64* %10623, align 8, !tbaa !25
  %10625 = trunc i64 %10624 to i8
  %10626 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 12
  store i8 %10625, i8* %10626, align 4, !tbaa !14
  %10627 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 12
  %10628 = bitcast i8* %10627 to i64*
  %10629 = load i64, i64* %10628, align 8, !tbaa !25
  %10630 = trunc i64 %10629 to i8
  %10631 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 13
  store i8 %10630, i8* %10631, align 1, !tbaa !14
  %10632 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 13
  %10633 = bitcast i8* %10632 to i64*
  %10634 = load i64, i64* %10633, align 8, !tbaa !25
  %10635 = trunc i64 %10634 to i8
  %10636 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 14
  store i8 %10635, i8* %10636, align 2, !tbaa !14
  %10637 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 14
  %10638 = bitcast i8* %10637 to i64*
  %10639 = load i64, i64* %10638, align 8, !tbaa !25
  %10640 = trunc i64 %10639 to i8
  %10641 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 15
  store i8 %10640, i8* %10641, align 1, !tbaa !14
  %10642 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 15
  %10643 = bitcast i8* %10642 to i64*
  %10644 = load i64, i64* %10643, align 8, !tbaa !25
  %10645 = trunc i64 %10644 to i8
  %10646 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 16
  store i8 %10645, i8* %10646, align 16, !tbaa !14
  %10647 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 16
  %10648 = bitcast i8* %10647 to i64*
  %10649 = load i64, i64* %10648, align 16, !tbaa !25
  %10650 = trunc i64 %10649 to i8
  %10651 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 17
  store i8 %10650, i8* %10651, align 1, !tbaa !14
  %10652 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 17
  %10653 = bitcast i8* %10652 to i64*
  %10654 = load i64, i64* %10653, align 8, !tbaa !25
  %10655 = trunc i64 %10654 to i8
  %10656 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 18
  store i8 %10655, i8* %10656, align 2, !tbaa !14
  %10657 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 18
  %10658 = bitcast i8* %10657 to i64*
  %10659 = load i64, i64* %10658, align 8, !tbaa !25
  %10660 = trunc i64 %10659 to i8
  %10661 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 19
  store i8 %10660, i8* %10661, align 1, !tbaa !14
  %10662 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 19
  %10663 = bitcast i8* %10662 to i64*
  %10664 = load i64, i64* %10663, align 8, !tbaa !25
  %10665 = trunc i64 %10664 to i8
  %10666 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 20
  store i8 %10665, i8* %10666, align 4, !tbaa !14
  %10667 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 20
  %10668 = bitcast i8* %10667 to i64*
  %10669 = load i64, i64* %10668, align 8, !tbaa !25
  %10670 = trunc i64 %10669 to i8
  %10671 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 21
  store i8 %10670, i8* %10671, align 1, !tbaa !14
  %10672 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 21
  %10673 = bitcast i8* %10672 to i64*
  %10674 = load i64, i64* %10673, align 8, !tbaa !25
  %10675 = trunc i64 %10674 to i8
  %10676 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 22
  store i8 %10675, i8* %10676, align 2, !tbaa !14
  %10677 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 22
  %10678 = bitcast i8* %10677 to i64*
  %10679 = load i64, i64* %10678, align 8, !tbaa !25
  %10680 = trunc i64 %10679 to i8
  %10681 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 23
  store i8 %10680, i8* %10681, align 1, !tbaa !14
  %10682 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 23
  %10683 = bitcast i8* %10682 to i64*
  %10684 = load i64, i64* %10683, align 8, !tbaa !25
  %10685 = trunc i64 %10684 to i8
  %10686 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 24
  store i8 %10685, i8* %10686, align 8, !tbaa !14
  %10687 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 24
  %10688 = bitcast i8* %10687 to i64*
  %10689 = load i64, i64* %10688, align 8, !tbaa !25
  %10690 = trunc i64 %10689 to i8
  %10691 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 25
  store i8 %10690, i8* %10691, align 1, !tbaa !14
  %10692 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 25
  %10693 = bitcast i8* %10692 to i64*
  %10694 = load i64, i64* %10693, align 8, !tbaa !25
  %10695 = trunc i64 %10694 to i8
  %10696 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 26
  store i8 %10695, i8* %10696, align 2, !tbaa !14
  %10697 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 26
  %10698 = bitcast i8* %10697 to i64*
  %10699 = load i64, i64* %10698, align 8, !tbaa !25
  %10700 = trunc i64 %10699 to i8
  %10701 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 27
  store i8 %10700, i8* %10701, align 1, !tbaa !14
  %10702 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 55
  %10703 = bitcast i8* %10702 to i64*
  %10704 = load i64, i64* %10703, align 8, !tbaa !25
  %10705 = trunc i64 %10704 to i8
  %10706 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 28
  store i8 %10705, i8* %10706, align 4, !tbaa !14
  %10707 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 28
  %10708 = bitcast i8* %10707 to i64*
  %10709 = load i64, i64* %10708, align 8, !tbaa !25
  %10710 = trunc i64 %10709 to i8
  %10711 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 29
  store i8 %10710, i8* %10711, align 1, !tbaa !14
  %10712 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 29
  %10713 = bitcast i8* %10712 to i64*
  %10714 = load i64, i64* %10713, align 8, !tbaa !25
  %10715 = trunc i64 %10714 to i8
  %10716 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 30
  store i8 %10715, i8* %10716, align 2, !tbaa !14
  %10717 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 30
  %10718 = bitcast i8* %10717 to i64*
  %10719 = load i64, i64* %10718, align 8, !tbaa !25
  %10720 = trunc i64 %10719 to i8
  %10721 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 31
  store i8 %10720, i8* %10721, align 1, !tbaa !14
  %10722 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 31
  %10723 = bitcast i8* %10722 to i64*
  %10724 = load i64, i64* %10723, align 8, !tbaa !25
  %10725 = trunc i64 %10724 to i8
  %10726 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 32
  store i8 %10725, i8* %10726, align 16, !tbaa !14
  %10727 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 32
  %10728 = bitcast i8* %10727 to i64*
  %10729 = load i64, i64* %10728, align 16, !tbaa !25
  %10730 = trunc i64 %10729 to i8
  %10731 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 33
  store i8 %10730, i8* %10731, align 1, !tbaa !14
  %10732 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 33
  %10733 = bitcast i8* %10732 to i64*
  %10734 = load i64, i64* %10733, align 8, !tbaa !25
  %10735 = trunc i64 %10734 to i8
  %10736 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 34
  store i8 %10735, i8* %10736, align 2, !tbaa !14
  %10737 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 34
  %10738 = bitcast i8* %10737 to i64*
  %10739 = load i64, i64* %10738, align 8, !tbaa !25
  %10740 = trunc i64 %10739 to i8
  %10741 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 35
  store i8 %10740, i8* %10741, align 1, !tbaa !14
  %10742 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 35
  %10743 = bitcast i8* %10742 to i64*
  %10744 = load i64, i64* %10743, align 8, !tbaa !25
  %10745 = trunc i64 %10744 to i8
  %10746 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 36
  store i8 %10745, i8* %10746, align 4, !tbaa !14
  %10747 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 36
  %10748 = bitcast i8* %10747 to i64*
  %10749 = load i64, i64* %10748, align 8, !tbaa !25
  %10750 = trunc i64 %10749 to i8
  %10751 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 37
  store i8 %10750, i8* %10751, align 1, !tbaa !14
  %10752 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 37
  %10753 = bitcast i8* %10752 to i64*
  %10754 = load i64, i64* %10753, align 8, !tbaa !25
  %10755 = trunc i64 %10754 to i8
  %10756 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 38
  store i8 %10755, i8* %10756, align 2, !tbaa !14
  %10757 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 38
  %10758 = bitcast i8* %10757 to i64*
  %10759 = load i64, i64* %10758, align 8, !tbaa !25
  %10760 = trunc i64 %10759 to i8
  %10761 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 39
  store i8 %10760, i8* %10761, align 1, !tbaa !14
  %10762 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 39
  %10763 = bitcast i8* %10762 to i64*
  %10764 = load i64, i64* %10763, align 8, !tbaa !25
  %10765 = trunc i64 %10764 to i8
  %10766 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 40
  store i8 %10765, i8* %10766, align 8, !tbaa !14
  %10767 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 40
  %10768 = bitcast i8* %10767 to i64*
  %10769 = load i64, i64* %10768, align 8, !tbaa !25
  %10770 = trunc i64 %10769 to i8
  %10771 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 41
  store i8 %10770, i8* %10771, align 1, !tbaa !14
  %10772 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 41
  %10773 = bitcast i8* %10772 to i64*
  %10774 = load i64, i64* %10773, align 8, !tbaa !25
  %10775 = trunc i64 %10774 to i8
  %10776 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 42
  store i8 %10775, i8* %10776, align 2, !tbaa !14
  %10777 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 42
  %10778 = bitcast i8* %10777 to i64*
  %10779 = load i64, i64* %10778, align 8, !tbaa !25
  %10780 = trunc i64 %10779 to i8
  %10781 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 43
  store i8 %10780, i8* %10781, align 1, !tbaa !14
  %10782 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 43
  %10783 = bitcast i8* %10782 to i64*
  %10784 = load i64, i64* %10783, align 8, !tbaa !25
  %10785 = trunc i64 %10784 to i8
  %10786 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 44
  store i8 %10785, i8* %10786, align 4, !tbaa !14
  %10787 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 44
  %10788 = bitcast i8* %10787 to i64*
  %10789 = load i64, i64* %10788, align 8, !tbaa !25
  %10790 = trunc i64 %10789 to i8
  %10791 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 45
  store i8 %10790, i8* %10791, align 1, !tbaa !14
  %10792 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 45
  %10793 = bitcast i8* %10792 to i64*
  %10794 = load i64, i64* %10793, align 8, !tbaa !25
  %10795 = trunc i64 %10794 to i8
  %10796 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 46
  store i8 %10795, i8* %10796, align 2, !tbaa !14
  %10797 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 46
  %10798 = bitcast i8* %10797 to i64*
  %10799 = load i64, i64* %10798, align 8, !tbaa !25
  %10800 = trunc i64 %10799 to i8
  %10801 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 47
  store i8 %10800, i8* %10801, align 1, !tbaa !14
  %10802 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 47
  %10803 = bitcast i8* %10802 to i64*
  %10804 = load i64, i64* %10803, align 8, !tbaa !25
  %10805 = trunc i64 %10804 to i8
  %10806 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 48
  store i8 %10805, i8* %10806, align 16, !tbaa !14
  %10807 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 48
  %10808 = bitcast i8* %10807 to i64*
  %10809 = load i64, i64* %10808, align 16, !tbaa !25
  %10810 = trunc i64 %10809 to i8
  %10811 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 49
  store i8 %10810, i8* %10811, align 1, !tbaa !14
  %10812 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 49
  %10813 = bitcast i8* %10812 to i64*
  %10814 = load i64, i64* %10813, align 8, !tbaa !25
  %10815 = trunc i64 %10814 to i8
  %10816 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 50
  store i8 %10815, i8* %10816, align 2, !tbaa !14
  %10817 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 50
  %10818 = bitcast i8* %10817 to i64*
  %10819 = load i64, i64* %10818, align 8, !tbaa !25
  %10820 = trunc i64 %10819 to i8
  %10821 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 51
  store i8 %10820, i8* %10821, align 1, !tbaa !14
  %10822 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 51
  %10823 = bitcast i8* %10822 to i64*
  %10824 = load i64, i64* %10823, align 8, !tbaa !25
  %10825 = trunc i64 %10824 to i8
  %10826 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 52
  store i8 %10825, i8* %10826, align 4, !tbaa !14
  %10827 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 52
  %10828 = bitcast i8* %10827 to i64*
  %10829 = load i64, i64* %10828, align 8, !tbaa !25
  %10830 = trunc i64 %10829 to i8
  %10831 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 53
  store i8 %10830, i8* %10831, align 1, !tbaa !14
  %10832 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 53
  %10833 = bitcast i8* %10832 to i64*
  %10834 = load i64, i64* %10833, align 8, !tbaa !25
  %10835 = trunc i64 %10834 to i8
  %10836 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 54
  store i8 %10835, i8* %10836, align 2, !tbaa !14
  %10837 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 54
  %10838 = bitcast i8* %10837 to i64*
  %10839 = load i64, i64* %10838, align 8, !tbaa !25
  %10840 = trunc i64 %10839 to i8
  %10841 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 55
  store i8 %10840, i8* %10841, align 1, !tbaa !14
  %10842 = load i64, i64* %9324, align 8, !tbaa !25
  %10843 = trunc i64 %10842 to i8
  %10844 = icmp eq i8 %10843, 0
  %10845 = bitcast i32* %10562 to i64*
  %10846 = load volatile i64, i64* %10845, align 16, !tbaa !25
  %10847 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %10848 = select i1 %10844, i64 0, i64 %10847
  %10849 = or i64 %10846, %10848
  %10850 = trunc i64 %10849 to i32
  store volatile i32 %10850, i32* %10562, align 16, !tbaa !35
  %10851 = load i64, i64* %9335, align 8, !tbaa !25
  %10852 = trunc i64 %10851 to i8
  %10853 = icmp eq i8 %10852, 0
  %10854 = bitcast i32* %10563 to i64*
  %10855 = load volatile i64, i64* %10854, align 4, !tbaa !25
  %10856 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %10857 = select i1 %10853, i64 0, i64 %10856
  %10858 = or i64 %10855, %10857
  %10859 = trunc i64 %10858 to i32
  store volatile i32 %10859, i32* %10563, align 4, !tbaa !35
  %10860 = load i64, i64* %9346, align 16, !tbaa !25
  %10861 = trunc i64 %10860 to i8
  %10862 = icmp eq i8 %10861, 0
  %10863 = bitcast i32* %10562 to i64*
  %10864 = load volatile i64, i64* %10863, align 16, !tbaa !25
  %10865 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %10866 = select i1 %10862, i64 0, i64 %10865
  %10867 = or i64 %10864, %10866
  %10868 = trunc i64 %10867 to i32
  store volatile i32 %10868, i32* %10562, align 16, !tbaa !35
  %10869 = load i64, i64* %9357, align 8, !tbaa !25
  %10870 = trunc i64 %10869 to i8
  %10871 = icmp eq i8 %10870, 0
  %10872 = bitcast i32* %10563 to i64*
  %10873 = load volatile i64, i64* %10872, align 4, !tbaa !25
  %10874 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %10875 = select i1 %10871, i64 0, i64 %10874
  %10876 = or i64 %10873, %10875
  %10877 = trunc i64 %10876 to i32
  store volatile i32 %10877, i32* %10563, align 4, !tbaa !35
  %10878 = load i64, i64* %9368, align 8, !tbaa !25
  %10879 = trunc i64 %10878 to i8
  %10880 = icmp eq i8 %10879, 0
  %10881 = bitcast i32* %10562 to i64*
  %10882 = load volatile i64, i64* %10881, align 16, !tbaa !25
  %10883 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %10884 = select i1 %10880, i64 0, i64 %10883
  %10885 = or i64 %10882, %10884
  %10886 = trunc i64 %10885 to i32
  store volatile i32 %10886, i32* %10562, align 16, !tbaa !35
  %10887 = load i64, i64* %9379, align 8, !tbaa !25
  %10888 = trunc i64 %10887 to i8
  %10889 = icmp eq i8 %10888, 0
  %10890 = bitcast i32* %10563 to i64*
  %10891 = load volatile i64, i64* %10890, align 4, !tbaa !25
  %10892 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %10893 = select i1 %10889, i64 0, i64 %10892
  %10894 = or i64 %10891, %10893
  %10895 = trunc i64 %10894 to i32
  store volatile i32 %10895, i32* %10563, align 4, !tbaa !35
  %10896 = load i64, i64* %9390, align 8, !tbaa !25
  %10897 = trunc i64 %10896 to i8
  %10898 = icmp eq i8 %10897, 0
  %10899 = bitcast i32* %10562 to i64*
  %10900 = load volatile i64, i64* %10899, align 16, !tbaa !25
  %10901 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %10902 = select i1 %10898, i64 0, i64 %10901
  %10903 = or i64 %10900, %10902
  %10904 = trunc i64 %10903 to i32
  store volatile i32 %10904, i32* %10562, align 16, !tbaa !35
  %10905 = load i64, i64* %9401, align 8, !tbaa !25
  %10906 = trunc i64 %10905 to i8
  %10907 = icmp eq i8 %10906, 0
  %10908 = bitcast i32* %10563 to i64*
  %10909 = load volatile i64, i64* %10908, align 4, !tbaa !25
  %10910 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %10911 = select i1 %10907, i64 0, i64 %10910
  %10912 = or i64 %10909, %10911
  %10913 = trunc i64 %10912 to i32
  store volatile i32 %10913, i32* %10563, align 4, !tbaa !35
  %10914 = load i64, i64* %9411, align 16, !tbaa !25
  %10915 = trunc i64 %10914 to i8
  %10916 = icmp eq i8 %10915, 0
  %10917 = bitcast i32* %10562 to i64*
  %10918 = load volatile i64, i64* %10917, align 16, !tbaa !25
  %10919 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %10920 = select i1 %10916, i64 0, i64 %10919
  %10921 = or i64 %10918, %10920
  %10922 = trunc i64 %10921 to i32
  store volatile i32 %10922, i32* %10562, align 16, !tbaa !35
  %10923 = load i64, i64* %9422, align 8, !tbaa !25
  %10924 = trunc i64 %10923 to i8
  %10925 = icmp eq i8 %10924, 0
  %10926 = bitcast i32* %10563 to i64*
  %10927 = load volatile i64, i64* %10926, align 4, !tbaa !25
  %10928 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %10929 = select i1 %10925, i64 0, i64 %10928
  %10930 = or i64 %10927, %10929
  %10931 = trunc i64 %10930 to i32
  store volatile i32 %10931, i32* %10563, align 4, !tbaa !35
  %10932 = load i64, i64* %9433, align 8, !tbaa !25
  %10933 = trunc i64 %10932 to i8
  %10934 = icmp eq i8 %10933, 0
  %10935 = bitcast i32* %10562 to i64*
  %10936 = load volatile i64, i64* %10935, align 16, !tbaa !25
  %10937 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %10938 = select i1 %10934, i64 0, i64 %10937
  %10939 = or i64 %10936, %10938
  %10940 = trunc i64 %10939 to i32
  store volatile i32 %10940, i32* %10562, align 16, !tbaa !35
  %10941 = load i64, i64* %9444, align 8, !tbaa !25
  %10942 = trunc i64 %10941 to i8
  %10943 = icmp eq i8 %10942, 0
  %10944 = bitcast i32* %10563 to i64*
  %10945 = load volatile i64, i64* %10944, align 4, !tbaa !25
  %10946 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %10947 = select i1 %10943, i64 0, i64 %10946
  %10948 = or i64 %10945, %10947
  %10949 = trunc i64 %10948 to i32
  store volatile i32 %10949, i32* %10563, align 4, !tbaa !35
  %10950 = load i64, i64* %9455, align 8, !tbaa !25
  %10951 = trunc i64 %10950 to i8
  %10952 = icmp eq i8 %10951, 0
  %10953 = bitcast i32* %10562 to i64*
  %10954 = load volatile i64, i64* %10953, align 16, !tbaa !25
  %10955 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %10956 = select i1 %10952, i64 0, i64 %10955
  %10957 = or i64 %10954, %10956
  %10958 = trunc i64 %10957 to i32
  store volatile i32 %10958, i32* %10562, align 16, !tbaa !35
  %10959 = load i64, i64* %9466, align 8, !tbaa !25
  %10960 = trunc i64 %10959 to i8
  %10961 = icmp eq i8 %10960, 0
  %10962 = bitcast i32* %10563 to i64*
  %10963 = load volatile i64, i64* %10962, align 4, !tbaa !25
  %10964 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %10965 = select i1 %10961, i64 0, i64 %10964
  %10966 = or i64 %10963, %10965
  %10967 = trunc i64 %10966 to i32
  store volatile i32 %10967, i32* %10563, align 4, !tbaa !35
  %10968 = load i64, i64* %9477, align 8, !tbaa !25
  %10969 = trunc i64 %10968 to i8
  %10970 = icmp eq i8 %10969, 0
  %10971 = bitcast i32* %10562 to i64*
  %10972 = load volatile i64, i64* %10971, align 16, !tbaa !25
  %10973 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %10974 = select i1 %10970, i64 0, i64 %10973
  %10975 = or i64 %10972, %10974
  %10976 = trunc i64 %10975 to i32
  store volatile i32 %10976, i32* %10562, align 16, !tbaa !35
  %10977 = load i64, i64* %9488, align 8, !tbaa !25
  %10978 = trunc i64 %10977 to i8
  %10979 = icmp eq i8 %10978, 0
  %10980 = bitcast i32* %10563 to i64*
  %10981 = load volatile i64, i64* %10980, align 4, !tbaa !25
  %10982 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %10983 = select i1 %10979, i64 0, i64 %10982
  %10984 = or i64 %10981, %10983
  %10985 = trunc i64 %10984 to i32
  store volatile i32 %10985, i32* %10563, align 4, !tbaa !35
  %10986 = load i64, i64* %9499, align 8, !tbaa !25
  %10987 = trunc i64 %10986 to i8
  %10988 = icmp eq i8 %10987, 0
  %10989 = bitcast i32* %10562 to i64*
  %10990 = load volatile i64, i64* %10989, align 16, !tbaa !25
  %10991 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %10992 = select i1 %10988, i64 0, i64 %10991
  %10993 = or i64 %10990, %10992
  %10994 = trunc i64 %10993 to i32
  store volatile i32 %10994, i32* %10562, align 16, !tbaa !35
  %10995 = load i64, i64* %9510, align 8, !tbaa !25
  %10996 = trunc i64 %10995 to i8
  %10997 = icmp eq i8 %10996, 0
  %10998 = bitcast i32* %10563 to i64*
  %10999 = load volatile i64, i64* %10998, align 4, !tbaa !25
  %11000 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %11001 = select i1 %10997, i64 0, i64 %11000
  %11002 = or i64 %10999, %11001
  %11003 = trunc i64 %11002 to i32
  store volatile i32 %11003, i32* %10563, align 4, !tbaa !35
  %11004 = load i64, i64* %9521, align 8, !tbaa !25
  %11005 = trunc i64 %11004 to i8
  %11006 = icmp eq i8 %11005, 0
  %11007 = bitcast i32* %10562 to i64*
  %11008 = load volatile i64, i64* %11007, align 16, !tbaa !25
  %11009 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %11010 = select i1 %11006, i64 0, i64 %11009
  %11011 = or i64 %11008, %11010
  %11012 = trunc i64 %11011 to i32
  store volatile i32 %11012, i32* %10562, align 16, !tbaa !35
  %11013 = load i64, i64* %9532, align 8, !tbaa !25
  %11014 = trunc i64 %11013 to i8
  %11015 = icmp eq i8 %11014, 0
  %11016 = bitcast i32* %10563 to i64*
  %11017 = load volatile i64, i64* %11016, align 4, !tbaa !25
  %11018 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %11019 = select i1 %11015, i64 0, i64 %11018
  %11020 = or i64 %11017, %11019
  %11021 = trunc i64 %11020 to i32
  store volatile i32 %11021, i32* %10563, align 4, !tbaa !35
  %11022 = load i64, i64* %9543, align 8, !tbaa !25
  %11023 = trunc i64 %11022 to i8
  %11024 = icmp eq i8 %11023, 0
  %11025 = bitcast i32* %10562 to i64*
  %11026 = load volatile i64, i64* %11025, align 16, !tbaa !25
  %11027 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %11028 = select i1 %11024, i64 0, i64 %11027
  %11029 = or i64 %11026, %11028
  %11030 = trunc i64 %11029 to i32
  store volatile i32 %11030, i32* %10562, align 16, !tbaa !35
  %11031 = load i64, i64* %9554, align 16, !tbaa !25
  %11032 = trunc i64 %11031 to i8
  %11033 = icmp eq i8 %11032, 0
  %11034 = bitcast i32* %10563 to i64*
  %11035 = load volatile i64, i64* %11034, align 4, !tbaa !25
  %11036 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %11037 = select i1 %11033, i64 0, i64 %11036
  %11038 = or i64 %11035, %11037
  %11039 = trunc i64 %11038 to i32
  store volatile i32 %11039, i32* %10563, align 4, !tbaa !35
  %11040 = load i64, i64* %9565, align 8, !tbaa !25
  %11041 = trunc i64 %11040 to i8
  %11042 = icmp eq i8 %11041, 0
  %11043 = bitcast i32* %10562 to i64*
  %11044 = load volatile i64, i64* %11043, align 16, !tbaa !25
  %11045 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %11046 = select i1 %11042, i64 0, i64 %11045
  %11047 = or i64 %11044, %11046
  %11048 = trunc i64 %11047 to i32
  store volatile i32 %11048, i32* %10562, align 16, !tbaa !35
  %11049 = load i64, i64* %9576, align 8, !tbaa !25
  %11050 = trunc i64 %11049 to i8
  %11051 = icmp eq i8 %11050, 0
  %11052 = bitcast i32* %10563 to i64*
  %11053 = load volatile i64, i64* %11052, align 4, !tbaa !25
  %11054 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %11055 = select i1 %11051, i64 0, i64 %11054
  %11056 = or i64 %11053, %11055
  %11057 = trunc i64 %11056 to i32
  store volatile i32 %11057, i32* %10563, align 4, !tbaa !35
  %11058 = load i64, i64* %9587, align 8, !tbaa !25
  %11059 = trunc i64 %11058 to i8
  %11060 = icmp eq i8 %11059, 0
  %11061 = bitcast i32* %10562 to i64*
  %11062 = load volatile i64, i64* %11061, align 16, !tbaa !25
  %11063 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %11064 = select i1 %11060, i64 0, i64 %11063
  %11065 = or i64 %11062, %11064
  %11066 = trunc i64 %11065 to i32
  store volatile i32 %11066, i32* %10562, align 16, !tbaa !35
  %11067 = load i64, i64* %9598, align 8, !tbaa !25
  %11068 = trunc i64 %11067 to i8
  %11069 = icmp eq i8 %11068, 0
  %11070 = bitcast i32* %10563 to i64*
  %11071 = load volatile i64, i64* %11070, align 4, !tbaa !25
  %11072 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %11073 = select i1 %11069, i64 0, i64 %11072
  %11074 = or i64 %11071, %11073
  %11075 = trunc i64 %11074 to i32
  store volatile i32 %11075, i32* %10563, align 4, !tbaa !35
  %11076 = load i64, i64* %9609, align 8, !tbaa !25
  %11077 = trunc i64 %11076 to i8
  %11078 = icmp eq i8 %11077, 0
  %11079 = bitcast i32* %10562 to i64*
  %11080 = load volatile i64, i64* %11079, align 16, !tbaa !25
  %11081 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %11082 = select i1 %11078, i64 0, i64 %11081
  %11083 = or i64 %11080, %11082
  %11084 = trunc i64 %11083 to i32
  store volatile i32 %11084, i32* %10562, align 16, !tbaa !35
  %11085 = load i64, i64* %9620, align 16, !tbaa !25
  %11086 = trunc i64 %11085 to i8
  %11087 = icmp eq i8 %11086, 0
  %11088 = bitcast i32* %10563 to i64*
  %11089 = load volatile i64, i64* %11088, align 4, !tbaa !25
  %11090 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %11091 = select i1 %11087, i64 0, i64 %11090
  %11092 = or i64 %11089, %11091
  %11093 = trunc i64 %11092 to i32
  store volatile i32 %11093, i32* %10563, align 4, !tbaa !35
  %11094 = load i64, i64* %9631, align 8, !tbaa !25
  %11095 = trunc i64 %11094 to i8
  %11096 = icmp eq i8 %11095, 0
  %11097 = bitcast i32* %10562 to i64*
  %11098 = load volatile i64, i64* %11097, align 16, !tbaa !25
  %11099 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %11100 = select i1 %11096, i64 0, i64 %11099
  %11101 = or i64 %11098, %11100
  %11102 = trunc i64 %11101 to i32
  store volatile i32 %11102, i32* %10562, align 16, !tbaa !35
  %11103 = load i64, i64* %9642, align 8, !tbaa !25
  %11104 = trunc i64 %11103 to i8
  %11105 = icmp eq i8 %11104, 0
  %11106 = bitcast i32* %10563 to i64*
  %11107 = load volatile i64, i64* %11106, align 4, !tbaa !25
  %11108 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %11109 = select i1 %11105, i64 0, i64 %11108
  %11110 = or i64 %11107, %11109
  %11111 = trunc i64 %11110 to i32
  store volatile i32 %11111, i32* %10563, align 4, !tbaa !35
  %11112 = load i64, i64* %9653, align 8, !tbaa !25
  %11113 = trunc i64 %11112 to i8
  %11114 = icmp eq i8 %11113, 0
  %11115 = bitcast i32* %10562 to i64*
  %11116 = load volatile i64, i64* %11115, align 16, !tbaa !25
  %11117 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %11118 = select i1 %11114, i64 0, i64 %11117
  %11119 = or i64 %11116, %11118
  %11120 = trunc i64 %11119 to i32
  store volatile i32 %11120, i32* %10562, align 16, !tbaa !35
  %11121 = load i64, i64* %9664, align 8, !tbaa !25
  %11122 = trunc i64 %11121 to i8
  %11123 = icmp eq i8 %11122, 0
  %11124 = bitcast i32* %10563 to i64*
  %11125 = load volatile i64, i64* %11124, align 4, !tbaa !25
  %11126 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %11127 = select i1 %11123, i64 0, i64 %11126
  %11128 = or i64 %11125, %11127
  %11129 = trunc i64 %11128 to i32
  store volatile i32 %11129, i32* %10563, align 4, !tbaa !35
  %11130 = load i64, i64* %9675, align 8, !tbaa !25
  %11131 = trunc i64 %11130 to i8
  %11132 = icmp eq i8 %11131, 0
  %11133 = bitcast i32* %10562 to i64*
  %11134 = load volatile i64, i64* %11133, align 16, !tbaa !25
  %11135 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %11136 = select i1 %11132, i64 0, i64 %11135
  %11137 = or i64 %11134, %11136
  %11138 = trunc i64 %11137 to i32
  store volatile i32 %11138, i32* %10562, align 16, !tbaa !35
  %11139 = load i64, i64* %9686, align 8, !tbaa !25
  %11140 = trunc i64 %11139 to i8
  %11141 = icmp eq i8 %11140, 0
  %11142 = bitcast i32* %10563 to i64*
  %11143 = load volatile i64, i64* %11142, align 4, !tbaa !25
  %11144 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %11145 = select i1 %11141, i64 0, i64 %11144
  %11146 = or i64 %11143, %11145
  %11147 = trunc i64 %11146 to i32
  store volatile i32 %11147, i32* %10563, align 4, !tbaa !35
  %11148 = load i64, i64* %9697, align 8, !tbaa !25
  %11149 = trunc i64 %11148 to i8
  %11150 = icmp eq i8 %11149, 0
  %11151 = bitcast i32* %10562 to i64*
  %11152 = load volatile i64, i64* %11151, align 16, !tbaa !25
  %11153 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %11154 = select i1 %11150, i64 0, i64 %11153
  %11155 = or i64 %11152, %11154
  %11156 = trunc i64 %11155 to i32
  store volatile i32 %11156, i32* %10562, align 16, !tbaa !35
  %11157 = load i64, i64* %9708, align 8, !tbaa !25
  %11158 = trunc i64 %11157 to i8
  %11159 = icmp eq i8 %11158, 0
  %11160 = bitcast i32* %10563 to i64*
  %11161 = load volatile i64, i64* %11160, align 4, !tbaa !25
  %11162 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %11163 = select i1 %11159, i64 0, i64 %11162
  %11164 = or i64 %11161, %11163
  %11165 = trunc i64 %11164 to i32
  store volatile i32 %11165, i32* %10563, align 4, !tbaa !35
  %11166 = load i64, i64* %9719, align 8, !tbaa !25
  %11167 = trunc i64 %11166 to i8
  %11168 = icmp eq i8 %11167, 0
  %11169 = bitcast i32* %10562 to i64*
  %11170 = load volatile i64, i64* %11169, align 16, !tbaa !25
  %11171 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %11172 = select i1 %11168, i64 0, i64 %11171
  %11173 = or i64 %11170, %11172
  %11174 = trunc i64 %11173 to i32
  store volatile i32 %11174, i32* %10562, align 16, !tbaa !35
  %11175 = load i64, i64* %9730, align 8, !tbaa !25
  %11176 = trunc i64 %11175 to i8
  %11177 = icmp eq i8 %11176, 0
  %11178 = bitcast i32* %10563 to i64*
  %11179 = load volatile i64, i64* %11178, align 4, !tbaa !25
  %11180 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %11181 = select i1 %11177, i64 0, i64 %11180
  %11182 = or i64 %11179, %11181
  %11183 = trunc i64 %11182 to i32
  store volatile i32 %11183, i32* %10563, align 4, !tbaa !35
  %11184 = load i64, i64* %9741, align 8, !tbaa !25
  %11185 = trunc i64 %11184 to i8
  %11186 = icmp eq i8 %11185, 0
  %11187 = bitcast i32* %10562 to i64*
  %11188 = load volatile i64, i64* %11187, align 16, !tbaa !25
  %11189 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %11190 = select i1 %11186, i64 0, i64 %11189
  %11191 = or i64 %11188, %11190
  %11192 = trunc i64 %11191 to i32
  store volatile i32 %11192, i32* %10562, align 16, !tbaa !35
  %11193 = load i64, i64* %9752, align 8, !tbaa !25
  %11194 = trunc i64 %11193 to i8
  %11195 = icmp eq i8 %11194, 0
  %11196 = bitcast i32* %10563 to i64*
  %11197 = load volatile i64, i64* %11196, align 4, !tbaa !25
  %11198 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %11199 = select i1 %11195, i64 0, i64 %11198
  %11200 = or i64 %11197, %11199
  %11201 = trunc i64 %11200 to i32
  store volatile i32 %11201, i32* %10563, align 4, !tbaa !35
  %11202 = load i64, i64* %9763, align 8, !tbaa !25
  %11203 = trunc i64 %11202 to i8
  %11204 = icmp eq i8 %11203, 0
  %11205 = bitcast i32* %10562 to i64*
  %11206 = load volatile i64, i64* %11205, align 16, !tbaa !25
  %11207 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %11208 = select i1 %11204, i64 0, i64 %11207
  %11209 = or i64 %11206, %11208
  %11210 = trunc i64 %11209 to i32
  store volatile i32 %11210, i32* %10562, align 16, !tbaa !35
  %11211 = load i64, i64* %9774, align 8, !tbaa !25
  %11212 = trunc i64 %11211 to i8
  %11213 = icmp eq i8 %11212, 0
  %11214 = bitcast i32* %10563 to i64*
  %11215 = load volatile i64, i64* %11214, align 4, !tbaa !25
  %11216 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %11217 = select i1 %11213, i64 0, i64 %11216
  %11218 = or i64 %11215, %11217
  %11219 = trunc i64 %11218 to i32
  store volatile i32 %11219, i32* %10563, align 4, !tbaa !35
  %11220 = load i64, i64* %9785, align 8, !tbaa !25
  %11221 = trunc i64 %11220 to i8
  %11222 = icmp eq i8 %11221, 0
  %11223 = bitcast i32* %10562 to i64*
  %11224 = load volatile i64, i64* %11223, align 16, !tbaa !25
  %11225 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %11226 = select i1 %11222, i64 0, i64 %11225
  %11227 = or i64 %11224, %11226
  %11228 = trunc i64 %11227 to i32
  store volatile i32 %11228, i32* %10562, align 16, !tbaa !35
  %11229 = load i64, i64* %9796, align 8, !tbaa !25
  %11230 = trunc i64 %11229 to i8
  %11231 = icmp eq i8 %11230, 0
  %11232 = bitcast i32* %10563 to i64*
  %11233 = load volatile i64, i64* %11232, align 4, !tbaa !25
  %11234 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %11235 = select i1 %11231, i64 0, i64 %11234
  %11236 = or i64 %11233, %11235
  %11237 = trunc i64 %11236 to i32
  store volatile i32 %11237, i32* %10563, align 4, !tbaa !35
  %11238 = load i64, i64* %9807, align 8, !tbaa !25
  %11239 = trunc i64 %11238 to i8
  %11240 = icmp eq i8 %11239, 0
  %11241 = bitcast i32* %10562 to i64*
  %11242 = load volatile i64, i64* %11241, align 16, !tbaa !25
  %11243 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %11244 = select i1 %11240, i64 0, i64 %11243
  %11245 = or i64 %11242, %11244
  %11246 = trunc i64 %11245 to i32
  store volatile i32 %11246, i32* %10562, align 16, !tbaa !35
  %11247 = load i64, i64* %9818, align 8, !tbaa !25
  %11248 = trunc i64 %11247 to i8
  %11249 = icmp eq i8 %11248, 0
  %11250 = bitcast i32* %10563 to i64*
  %11251 = load volatile i64, i64* %11250, align 4, !tbaa !25
  %11252 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %11253 = select i1 %11249, i64 0, i64 %11252
  %11254 = or i64 %11251, %11253
  %11255 = trunc i64 %11254 to i32
  store volatile i32 %11255, i32* %10563, align 4, !tbaa !35
  %11256 = load i64, i64* %9829, align 8, !tbaa !25
  %11257 = trunc i64 %11256 to i8
  %11258 = icmp eq i8 %11257, 0
  %11259 = bitcast i32* %10562 to i64*
  %11260 = load volatile i64, i64* %11259, align 16, !tbaa !25
  %11261 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %11262 = select i1 %11258, i64 0, i64 %11261
  %11263 = or i64 %11260, %11262
  %11264 = trunc i64 %11263 to i32
  store volatile i32 %11264, i32* %10562, align 16, !tbaa !35
  %11265 = load i64, i64* %9840, align 8, !tbaa !25
  %11266 = trunc i64 %11265 to i8
  %11267 = icmp eq i8 %11266, 0
  %11268 = bitcast i32* %10563 to i64*
  %11269 = load volatile i64, i64* %11268, align 4, !tbaa !25
  %11270 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %11271 = select i1 %11267, i64 0, i64 %11270
  %11272 = or i64 %11269, %11271
  %11273 = trunc i64 %11272 to i32
  store volatile i32 %11273, i32* %10563, align 4, !tbaa !35
  %11274 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 30
  store i32 0, i32* %11274, align 8, !tbaa !35
  %11275 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 31
  store i32 0, i32* %11275, align 4, !tbaa !35
  %11276 = bitcast [56 x i8]* %4 to i64*
  %11277 = load i64, i64* %11276, align 16, !tbaa !25
  %11278 = trunc i64 %11277 to i8
  store i8 %11278, i8* %8, align 16, !tbaa !14
  %11279 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 1
  %11280 = bitcast i8* %11279 to i64*
  %11281 = load i64, i64* %11280, align 8, !tbaa !25
  %11282 = trunc i64 %11281 to i8
  %11283 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 1
  store i8 %11282, i8* %11283, align 1, !tbaa !14
  %11284 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 2
  %11285 = bitcast i8* %11284 to i64*
  %11286 = load i64, i64* %11285, align 8, !tbaa !25
  %11287 = trunc i64 %11286 to i8
  %11288 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 2
  store i8 %11287, i8* %11288, align 2, !tbaa !14
  %11289 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 3
  %11290 = bitcast i8* %11289 to i64*
  %11291 = load i64, i64* %11290, align 8, !tbaa !25
  %11292 = trunc i64 %11291 to i8
  %11293 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 3
  store i8 %11292, i8* %11293, align 1, !tbaa !14
  %11294 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 4
  %11295 = bitcast i8* %11294 to i64*
  %11296 = load i64, i64* %11295, align 8, !tbaa !25
  %11297 = trunc i64 %11296 to i8
  %11298 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 4
  store i8 %11297, i8* %11298, align 4, !tbaa !14
  %11299 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 5
  %11300 = bitcast i8* %11299 to i64*
  %11301 = load i64, i64* %11300, align 8, !tbaa !25
  %11302 = trunc i64 %11301 to i8
  %11303 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 5
  store i8 %11302, i8* %11303, align 1, !tbaa !14
  %11304 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 6
  %11305 = bitcast i8* %11304 to i64*
  %11306 = load i64, i64* %11305, align 8, !tbaa !25
  %11307 = trunc i64 %11306 to i8
  %11308 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 6
  store i8 %11307, i8* %11308, align 2, !tbaa !14
  %11309 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 7
  %11310 = bitcast i8* %11309 to i64*
  %11311 = load i64, i64* %11310, align 8, !tbaa !25
  %11312 = trunc i64 %11311 to i8
  %11313 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 7
  store i8 %11312, i8* %11313, align 1, !tbaa !14
  %11314 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 8
  %11315 = bitcast i8* %11314 to i64*
  %11316 = load i64, i64* %11315, align 8, !tbaa !25
  %11317 = trunc i64 %11316 to i8
  %11318 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 8
  store i8 %11317, i8* %11318, align 8, !tbaa !14
  %11319 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 9
  %11320 = bitcast i8* %11319 to i64*
  %11321 = load i64, i64* %11320, align 8, !tbaa !25
  %11322 = trunc i64 %11321 to i8
  %11323 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 9
  store i8 %11322, i8* %11323, align 1, !tbaa !14
  %11324 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 10
  %11325 = bitcast i8* %11324 to i64*
  %11326 = load i64, i64* %11325, align 8, !tbaa !25
  %11327 = trunc i64 %11326 to i8
  %11328 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 10
  store i8 %11327, i8* %11328, align 2, !tbaa !14
  %11329 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 11
  %11330 = bitcast i8* %11329 to i64*
  %11331 = load i64, i64* %11330, align 8, !tbaa !25
  %11332 = trunc i64 %11331 to i8
  %11333 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 11
  store i8 %11332, i8* %11333, align 1, !tbaa !14
  %11334 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 12
  %11335 = bitcast i8* %11334 to i64*
  %11336 = load i64, i64* %11335, align 8, !tbaa !25
  %11337 = trunc i64 %11336 to i8
  %11338 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 12
  store i8 %11337, i8* %11338, align 4, !tbaa !14
  %11339 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 13
  %11340 = bitcast i8* %11339 to i64*
  %11341 = load i64, i64* %11340, align 8, !tbaa !25
  %11342 = trunc i64 %11341 to i8
  %11343 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 13
  store i8 %11342, i8* %11343, align 1, !tbaa !14
  %11344 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 14
  %11345 = bitcast i8* %11344 to i64*
  %11346 = load i64, i64* %11345, align 8, !tbaa !25
  %11347 = trunc i64 %11346 to i8
  %11348 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 14
  store i8 %11347, i8* %11348, align 2, !tbaa !14
  %11349 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 15
  %11350 = bitcast i8* %11349 to i64*
  %11351 = load i64, i64* %11350, align 8, !tbaa !25
  %11352 = trunc i64 %11351 to i8
  %11353 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 15
  store i8 %11352, i8* %11353, align 1, !tbaa !14
  %11354 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 16
  %11355 = bitcast i8* %11354 to i64*
  %11356 = load i64, i64* %11355, align 16, !tbaa !25
  %11357 = trunc i64 %11356 to i8
  %11358 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 16
  store i8 %11357, i8* %11358, align 16, !tbaa !14
  %11359 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 17
  %11360 = bitcast i8* %11359 to i64*
  %11361 = load i64, i64* %11360, align 8, !tbaa !25
  %11362 = trunc i64 %11361 to i8
  %11363 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 17
  store i8 %11362, i8* %11363, align 1, !tbaa !14
  %11364 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 18
  %11365 = bitcast i8* %11364 to i64*
  %11366 = load i64, i64* %11365, align 8, !tbaa !25
  %11367 = trunc i64 %11366 to i8
  %11368 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 18
  store i8 %11367, i8* %11368, align 2, !tbaa !14
  %11369 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 19
  %11370 = bitcast i8* %11369 to i64*
  %11371 = load i64, i64* %11370, align 8, !tbaa !25
  %11372 = trunc i64 %11371 to i8
  %11373 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 19
  store i8 %11372, i8* %11373, align 1, !tbaa !14
  %11374 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 20
  %11375 = bitcast i8* %11374 to i64*
  %11376 = load i64, i64* %11375, align 8, !tbaa !25
  %11377 = trunc i64 %11376 to i8
  %11378 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 20
  store i8 %11377, i8* %11378, align 4, !tbaa !14
  %11379 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 21
  %11380 = bitcast i8* %11379 to i64*
  %11381 = load i64, i64* %11380, align 8, !tbaa !25
  %11382 = trunc i64 %11381 to i8
  %11383 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 21
  store i8 %11382, i8* %11383, align 1, !tbaa !14
  %11384 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 22
  %11385 = bitcast i8* %11384 to i64*
  %11386 = load i64, i64* %11385, align 8, !tbaa !25
  %11387 = trunc i64 %11386 to i8
  %11388 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 22
  store i8 %11387, i8* %11388, align 2, !tbaa !14
  %11389 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 23
  %11390 = bitcast i8* %11389 to i64*
  %11391 = load i64, i64* %11390, align 8, !tbaa !25
  %11392 = trunc i64 %11391 to i8
  %11393 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 23
  store i8 %11392, i8* %11393, align 1, !tbaa !14
  %11394 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 24
  %11395 = bitcast i8* %11394 to i64*
  %11396 = load i64, i64* %11395, align 8, !tbaa !25
  %11397 = trunc i64 %11396 to i8
  %11398 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 24
  store i8 %11397, i8* %11398, align 8, !tbaa !14
  %11399 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 25
  %11400 = bitcast i8* %11399 to i64*
  %11401 = load i64, i64* %11400, align 8, !tbaa !25
  %11402 = trunc i64 %11401 to i8
  %11403 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 25
  store i8 %11402, i8* %11403, align 1, !tbaa !14
  %11404 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 26
  %11405 = bitcast i8* %11404 to i64*
  %11406 = load i64, i64* %11405, align 8, !tbaa !25
  %11407 = trunc i64 %11406 to i8
  %11408 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 26
  store i8 %11407, i8* %11408, align 2, !tbaa !14
  %11409 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 27
  %11410 = bitcast i8* %11409 to i64*
  %11411 = load i64, i64* %11410, align 8, !tbaa !25
  %11412 = trunc i64 %11411 to i8
  %11413 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 27
  store i8 %11412, i8* %11413, align 1, !tbaa !14
  %11414 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 28
  %11415 = bitcast i8* %11414 to i64*
  %11416 = load i64, i64* %11415, align 8, !tbaa !25
  %11417 = trunc i64 %11416 to i8
  %11418 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 28
  store i8 %11417, i8* %11418, align 4, !tbaa !14
  %11419 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 29
  %11420 = bitcast i8* %11419 to i64*
  %11421 = load i64, i64* %11420, align 8, !tbaa !25
  %11422 = trunc i64 %11421 to i8
  %11423 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 29
  store i8 %11422, i8* %11423, align 1, !tbaa !14
  %11424 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 30
  %11425 = bitcast i8* %11424 to i64*
  %11426 = load i64, i64* %11425, align 8, !tbaa !25
  %11427 = trunc i64 %11426 to i8
  %11428 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 30
  store i8 %11427, i8* %11428, align 2, !tbaa !14
  %11429 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 31
  %11430 = bitcast i8* %11429 to i64*
  %11431 = load i64, i64* %11430, align 8, !tbaa !25
  %11432 = trunc i64 %11431 to i8
  %11433 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 31
  store i8 %11432, i8* %11433, align 1, !tbaa !14
  %11434 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 32
  %11435 = bitcast i8* %11434 to i64*
  %11436 = load i64, i64* %11435, align 16, !tbaa !25
  %11437 = trunc i64 %11436 to i8
  %11438 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 32
  store i8 %11437, i8* %11438, align 16, !tbaa !14
  %11439 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 33
  %11440 = bitcast i8* %11439 to i64*
  %11441 = load i64, i64* %11440, align 8, !tbaa !25
  %11442 = trunc i64 %11441 to i8
  %11443 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 33
  store i8 %11442, i8* %11443, align 1, !tbaa !14
  %11444 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 34
  %11445 = bitcast i8* %11444 to i64*
  %11446 = load i64, i64* %11445, align 8, !tbaa !25
  %11447 = trunc i64 %11446 to i8
  %11448 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 34
  store i8 %11447, i8* %11448, align 2, !tbaa !14
  %11449 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 35
  %11450 = bitcast i8* %11449 to i64*
  %11451 = load i64, i64* %11450, align 8, !tbaa !25
  %11452 = trunc i64 %11451 to i8
  %11453 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 35
  store i8 %11452, i8* %11453, align 1, !tbaa !14
  %11454 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 36
  %11455 = bitcast i8* %11454 to i64*
  %11456 = load i64, i64* %11455, align 8, !tbaa !25
  %11457 = trunc i64 %11456 to i8
  %11458 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 36
  store i8 %11457, i8* %11458, align 4, !tbaa !14
  %11459 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 37
  %11460 = bitcast i8* %11459 to i64*
  %11461 = load i64, i64* %11460, align 8, !tbaa !25
  %11462 = trunc i64 %11461 to i8
  %11463 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 37
  store i8 %11462, i8* %11463, align 1, !tbaa !14
  %11464 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 38
  %11465 = bitcast i8* %11464 to i64*
  %11466 = load i64, i64* %11465, align 8, !tbaa !25
  %11467 = trunc i64 %11466 to i8
  %11468 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 38
  store i8 %11467, i8* %11468, align 2, !tbaa !14
  %11469 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 39
  %11470 = bitcast i8* %11469 to i64*
  %11471 = load i64, i64* %11470, align 8, !tbaa !25
  %11472 = trunc i64 %11471 to i8
  %11473 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 39
  store i8 %11472, i8* %11473, align 1, !tbaa !14
  %11474 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 40
  %11475 = bitcast i8* %11474 to i64*
  %11476 = load i64, i64* %11475, align 8, !tbaa !25
  %11477 = trunc i64 %11476 to i8
  %11478 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 40
  store i8 %11477, i8* %11478, align 8, !tbaa !14
  %11479 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 41
  %11480 = bitcast i8* %11479 to i64*
  %11481 = load i64, i64* %11480, align 8, !tbaa !25
  %11482 = trunc i64 %11481 to i8
  %11483 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 41
  store i8 %11482, i8* %11483, align 1, !tbaa !14
  %11484 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 42
  %11485 = bitcast i8* %11484 to i64*
  %11486 = load i64, i64* %11485, align 8, !tbaa !25
  %11487 = trunc i64 %11486 to i8
  %11488 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 42
  store i8 %11487, i8* %11488, align 2, !tbaa !14
  %11489 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 43
  %11490 = bitcast i8* %11489 to i64*
  %11491 = load i64, i64* %11490, align 8, !tbaa !25
  %11492 = trunc i64 %11491 to i8
  %11493 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 43
  store i8 %11492, i8* %11493, align 1, !tbaa !14
  %11494 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 44
  %11495 = bitcast i8* %11494 to i64*
  %11496 = load i64, i64* %11495, align 8, !tbaa !25
  %11497 = trunc i64 %11496 to i8
  %11498 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 44
  store i8 %11497, i8* %11498, align 4, !tbaa !14
  %11499 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 45
  %11500 = bitcast i8* %11499 to i64*
  %11501 = load i64, i64* %11500, align 8, !tbaa !25
  %11502 = trunc i64 %11501 to i8
  %11503 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 45
  store i8 %11502, i8* %11503, align 1, !tbaa !14
  %11504 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 46
  %11505 = bitcast i8* %11504 to i64*
  %11506 = load i64, i64* %11505, align 8, !tbaa !25
  %11507 = trunc i64 %11506 to i8
  %11508 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 46
  store i8 %11507, i8* %11508, align 2, !tbaa !14
  %11509 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 47
  %11510 = bitcast i8* %11509 to i64*
  %11511 = load i64, i64* %11510, align 8, !tbaa !25
  %11512 = trunc i64 %11511 to i8
  %11513 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 47
  store i8 %11512, i8* %11513, align 1, !tbaa !14
  %11514 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 48
  %11515 = bitcast i8* %11514 to i64*
  %11516 = load i64, i64* %11515, align 16, !tbaa !25
  %11517 = trunc i64 %11516 to i8
  %11518 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 48
  store i8 %11517, i8* %11518, align 16, !tbaa !14
  %11519 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 49
  %11520 = bitcast i8* %11519 to i64*
  %11521 = load i64, i64* %11520, align 8, !tbaa !25
  %11522 = trunc i64 %11521 to i8
  %11523 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 49
  store i8 %11522, i8* %11523, align 1, !tbaa !14
  %11524 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 50
  %11525 = bitcast i8* %11524 to i64*
  %11526 = load i64, i64* %11525, align 8, !tbaa !25
  %11527 = trunc i64 %11526 to i8
  %11528 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 50
  store i8 %11527, i8* %11528, align 2, !tbaa !14
  %11529 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 51
  %11530 = bitcast i8* %11529 to i64*
  %11531 = load i64, i64* %11530, align 8, !tbaa !25
  %11532 = trunc i64 %11531 to i8
  %11533 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 51
  store i8 %11532, i8* %11533, align 1, !tbaa !14
  %11534 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 52
  %11535 = bitcast i8* %11534 to i64*
  %11536 = load i64, i64* %11535, align 8, !tbaa !25
  %11537 = trunc i64 %11536 to i8
  %11538 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 52
  store i8 %11537, i8* %11538, align 4, !tbaa !14
  %11539 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 53
  %11540 = bitcast i8* %11539 to i64*
  %11541 = load i64, i64* %11540, align 8, !tbaa !25
  %11542 = trunc i64 %11541 to i8
  %11543 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 53
  store i8 %11542, i8* %11543, align 1, !tbaa !14
  %11544 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 54
  %11545 = bitcast i8* %11544 to i64*
  %11546 = load i64, i64* %11545, align 8, !tbaa !25
  %11547 = trunc i64 %11546 to i8
  %11548 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 54
  store i8 %11547, i8* %11548, align 2, !tbaa !14
  %11549 = getelementptr inbounds [56 x i8], [56 x i8]* %4, i64 0, i64 55
  %11550 = bitcast i8* %11549 to i64*
  %11551 = load i64, i64* %11550, align 8, !tbaa !25
  %11552 = trunc i64 %11551 to i8
  %11553 = getelementptr inbounds [56 x i8], [56 x i8]* %3, i64 0, i64 55
  store i8 %11552, i8* %11553, align 1, !tbaa !14
  %11554 = load i64, i64* %9324, align 8, !tbaa !25
  %11555 = trunc i64 %11554 to i8
  %11556 = icmp eq i8 %11555, 0
  %11557 = bitcast i32* %11274 to i64*
  %11558 = load volatile i64, i64* %11557, align 8, !tbaa !25
  %11559 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %11560 = select i1 %11556, i64 0, i64 %11559
  %11561 = or i64 %11558, %11560
  %11562 = trunc i64 %11561 to i32
  store volatile i32 %11562, i32* %11274, align 8, !tbaa !35
  %11563 = load i64, i64* %9335, align 8, !tbaa !25
  %11564 = trunc i64 %11563 to i8
  %11565 = icmp eq i8 %11564, 0
  %11566 = bitcast i32* %11275 to i64*
  %11567 = load volatile i64, i64* %11566, align 4, !tbaa !25
  %11568 = load volatile i64, i64* bitcast ([24 x i32]* @bigbyte to i64*), align 16, !tbaa !25
  %11569 = select i1 %11565, i64 0, i64 %11568
  %11570 = or i64 %11567, %11569
  %11571 = trunc i64 %11570 to i32
  store volatile i32 %11571, i32* %11275, align 4, !tbaa !35
  %11572 = load i64, i64* %9346, align 16, !tbaa !25
  %11573 = trunc i64 %11572 to i8
  %11574 = icmp eq i8 %11573, 0
  %11575 = bitcast i32* %11274 to i64*
  %11576 = load volatile i64, i64* %11575, align 8, !tbaa !25
  %11577 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %11578 = select i1 %11574, i64 0, i64 %11577
  %11579 = or i64 %11576, %11578
  %11580 = trunc i64 %11579 to i32
  store volatile i32 %11580, i32* %11274, align 8, !tbaa !35
  %11581 = load i64, i64* %9357, align 8, !tbaa !25
  %11582 = trunc i64 %11581 to i8
  %11583 = icmp eq i8 %11582, 0
  %11584 = bitcast i32* %11275 to i64*
  %11585 = load volatile i64, i64* %11584, align 4, !tbaa !25
  %11586 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %11587 = select i1 %11583, i64 0, i64 %11586
  %11588 = or i64 %11585, %11587
  %11589 = trunc i64 %11588 to i32
  store volatile i32 %11589, i32* %11275, align 4, !tbaa !35
  %11590 = load i64, i64* %9368, align 8, !tbaa !25
  %11591 = trunc i64 %11590 to i8
  %11592 = icmp eq i8 %11591, 0
  %11593 = bitcast i32* %11274 to i64*
  %11594 = load volatile i64, i64* %11593, align 8, !tbaa !25
  %11595 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %11596 = select i1 %11592, i64 0, i64 %11595
  %11597 = or i64 %11594, %11596
  %11598 = trunc i64 %11597 to i32
  store volatile i32 %11598, i32* %11274, align 8, !tbaa !35
  %11599 = load i64, i64* %9379, align 8, !tbaa !25
  %11600 = trunc i64 %11599 to i8
  %11601 = icmp eq i8 %11600, 0
  %11602 = bitcast i32* %11275 to i64*
  %11603 = load volatile i64, i64* %11602, align 4, !tbaa !25
  %11604 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %11605 = select i1 %11601, i64 0, i64 %11604
  %11606 = or i64 %11603, %11605
  %11607 = trunc i64 %11606 to i32
  store volatile i32 %11607, i32* %11275, align 4, !tbaa !35
  %11608 = load i64, i64* %9390, align 8, !tbaa !25
  %11609 = trunc i64 %11608 to i8
  %11610 = icmp eq i8 %11609, 0
  %11611 = bitcast i32* %11274 to i64*
  %11612 = load volatile i64, i64* %11611, align 8, !tbaa !25
  %11613 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %11614 = select i1 %11610, i64 0, i64 %11613
  %11615 = or i64 %11612, %11614
  %11616 = trunc i64 %11615 to i32
  store volatile i32 %11616, i32* %11274, align 8, !tbaa !35
  %11617 = load i64, i64* %9401, align 8, !tbaa !25
  %11618 = trunc i64 %11617 to i8
  %11619 = icmp eq i8 %11618, 0
  %11620 = bitcast i32* %11275 to i64*
  %11621 = load volatile i64, i64* %11620, align 4, !tbaa !25
  %11622 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %11623 = select i1 %11619, i64 0, i64 %11622
  %11624 = or i64 %11621, %11623
  %11625 = trunc i64 %11624 to i32
  store volatile i32 %11625, i32* %11275, align 4, !tbaa !35
  %11626 = load i64, i64* %9411, align 16, !tbaa !25
  %11627 = trunc i64 %11626 to i8
  %11628 = icmp eq i8 %11627, 0
  %11629 = bitcast i32* %11274 to i64*
  %11630 = load volatile i64, i64* %11629, align 8, !tbaa !25
  %11631 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %11632 = select i1 %11628, i64 0, i64 %11631
  %11633 = or i64 %11630, %11632
  %11634 = trunc i64 %11633 to i32
  store volatile i32 %11634, i32* %11274, align 8, !tbaa !35
  %11635 = load i64, i64* %9422, align 8, !tbaa !25
  %11636 = trunc i64 %11635 to i8
  %11637 = icmp eq i8 %11636, 0
  %11638 = bitcast i32* %11275 to i64*
  %11639 = load volatile i64, i64* %11638, align 4, !tbaa !25
  %11640 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %11641 = select i1 %11637, i64 0, i64 %11640
  %11642 = or i64 %11639, %11641
  %11643 = trunc i64 %11642 to i32
  store volatile i32 %11643, i32* %11275, align 4, !tbaa !35
  %11644 = load i64, i64* %9433, align 8, !tbaa !25
  %11645 = trunc i64 %11644 to i8
  %11646 = icmp eq i8 %11645, 0
  %11647 = bitcast i32* %11274 to i64*
  %11648 = load volatile i64, i64* %11647, align 8, !tbaa !25
  %11649 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %11650 = select i1 %11646, i64 0, i64 %11649
  %11651 = or i64 %11648, %11650
  %11652 = trunc i64 %11651 to i32
  store volatile i32 %11652, i32* %11274, align 8, !tbaa !35
  %11653 = load i64, i64* %9444, align 8, !tbaa !25
  %11654 = trunc i64 %11653 to i8
  %11655 = icmp eq i8 %11654, 0
  %11656 = bitcast i32* %11275 to i64*
  %11657 = load volatile i64, i64* %11656, align 4, !tbaa !25
  %11658 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %11659 = select i1 %11655, i64 0, i64 %11658
  %11660 = or i64 %11657, %11659
  %11661 = trunc i64 %11660 to i32
  store volatile i32 %11661, i32* %11275, align 4, !tbaa !35
  %11662 = load i64, i64* %9455, align 8, !tbaa !25
  %11663 = trunc i64 %11662 to i8
  %11664 = icmp eq i8 %11663, 0
  %11665 = bitcast i32* %11274 to i64*
  %11666 = load volatile i64, i64* %11665, align 8, !tbaa !25
  %11667 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %11668 = select i1 %11664, i64 0, i64 %11667
  %11669 = or i64 %11666, %11668
  %11670 = trunc i64 %11669 to i32
  store volatile i32 %11670, i32* %11274, align 8, !tbaa !35
  %11671 = load i64, i64* %9466, align 8, !tbaa !25
  %11672 = trunc i64 %11671 to i8
  %11673 = icmp eq i8 %11672, 0
  %11674 = bitcast i32* %11275 to i64*
  %11675 = load volatile i64, i64* %11674, align 4, !tbaa !25
  %11676 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %11677 = select i1 %11673, i64 0, i64 %11676
  %11678 = or i64 %11675, %11677
  %11679 = trunc i64 %11678 to i32
  store volatile i32 %11679, i32* %11275, align 4, !tbaa !35
  %11680 = load i64, i64* %9477, align 8, !tbaa !25
  %11681 = trunc i64 %11680 to i8
  %11682 = icmp eq i8 %11681, 0
  %11683 = bitcast i32* %11274 to i64*
  %11684 = load volatile i64, i64* %11683, align 8, !tbaa !25
  %11685 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %11686 = select i1 %11682, i64 0, i64 %11685
  %11687 = or i64 %11684, %11686
  %11688 = trunc i64 %11687 to i32
  store volatile i32 %11688, i32* %11274, align 8, !tbaa !35
  %11689 = load i64, i64* %9488, align 8, !tbaa !25
  %11690 = trunc i64 %11689 to i8
  %11691 = icmp eq i8 %11690, 0
  %11692 = bitcast i32* %11275 to i64*
  %11693 = load volatile i64, i64* %11692, align 4, !tbaa !25
  %11694 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %11695 = select i1 %11691, i64 0, i64 %11694
  %11696 = or i64 %11693, %11695
  %11697 = trunc i64 %11696 to i32
  store volatile i32 %11697, i32* %11275, align 4, !tbaa !35
  %11698 = load i64, i64* %9499, align 8, !tbaa !25
  %11699 = trunc i64 %11698 to i8
  %11700 = icmp eq i8 %11699, 0
  %11701 = bitcast i32* %11274 to i64*
  %11702 = load volatile i64, i64* %11701, align 8, !tbaa !25
  %11703 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %11704 = select i1 %11700, i64 0, i64 %11703
  %11705 = or i64 %11702, %11704
  %11706 = trunc i64 %11705 to i32
  store volatile i32 %11706, i32* %11274, align 8, !tbaa !35
  %11707 = load i64, i64* %9510, align 8, !tbaa !25
  %11708 = trunc i64 %11707 to i8
  %11709 = icmp eq i8 %11708, 0
  %11710 = bitcast i32* %11275 to i64*
  %11711 = load volatile i64, i64* %11710, align 4, !tbaa !25
  %11712 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %11713 = select i1 %11709, i64 0, i64 %11712
  %11714 = or i64 %11711, %11713
  %11715 = trunc i64 %11714 to i32
  store volatile i32 %11715, i32* %11275, align 4, !tbaa !35
  %11716 = load i64, i64* %9521, align 8, !tbaa !25
  %11717 = trunc i64 %11716 to i8
  %11718 = icmp eq i8 %11717, 0
  %11719 = bitcast i32* %11274 to i64*
  %11720 = load volatile i64, i64* %11719, align 8, !tbaa !25
  %11721 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %11722 = select i1 %11718, i64 0, i64 %11721
  %11723 = or i64 %11720, %11722
  %11724 = trunc i64 %11723 to i32
  store volatile i32 %11724, i32* %11274, align 8, !tbaa !35
  %11725 = load i64, i64* %9532, align 8, !tbaa !25
  %11726 = trunc i64 %11725 to i8
  %11727 = icmp eq i8 %11726, 0
  %11728 = bitcast i32* %11275 to i64*
  %11729 = load volatile i64, i64* %11728, align 4, !tbaa !25
  %11730 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %11731 = select i1 %11727, i64 0, i64 %11730
  %11732 = or i64 %11729, %11731
  %11733 = trunc i64 %11732 to i32
  store volatile i32 %11733, i32* %11275, align 4, !tbaa !35
  %11734 = load i64, i64* %9543, align 8, !tbaa !25
  %11735 = trunc i64 %11734 to i8
  %11736 = icmp eq i8 %11735, 0
  %11737 = bitcast i32* %11274 to i64*
  %11738 = load volatile i64, i64* %11737, align 8, !tbaa !25
  %11739 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %11740 = select i1 %11736, i64 0, i64 %11739
  %11741 = or i64 %11738, %11740
  %11742 = trunc i64 %11741 to i32
  store volatile i32 %11742, i32* %11274, align 8, !tbaa !35
  %11743 = load i64, i64* %9554, align 16, !tbaa !25
  %11744 = trunc i64 %11743 to i8
  %11745 = icmp eq i8 %11744, 0
  %11746 = bitcast i32* %11275 to i64*
  %11747 = load volatile i64, i64* %11746, align 4, !tbaa !25
  %11748 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %11749 = select i1 %11745, i64 0, i64 %11748
  %11750 = or i64 %11747, %11749
  %11751 = trunc i64 %11750 to i32
  store volatile i32 %11751, i32* %11275, align 4, !tbaa !35
  %11752 = load i64, i64* %9565, align 8, !tbaa !25
  %11753 = trunc i64 %11752 to i8
  %11754 = icmp eq i8 %11753, 0
  %11755 = bitcast i32* %11274 to i64*
  %11756 = load volatile i64, i64* %11755, align 8, !tbaa !25
  %11757 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %11758 = select i1 %11754, i64 0, i64 %11757
  %11759 = or i64 %11756, %11758
  %11760 = trunc i64 %11759 to i32
  store volatile i32 %11760, i32* %11274, align 8, !tbaa !35
  %11761 = load i64, i64* %9576, align 8, !tbaa !25
  %11762 = trunc i64 %11761 to i8
  %11763 = icmp eq i8 %11762, 0
  %11764 = bitcast i32* %11275 to i64*
  %11765 = load volatile i64, i64* %11764, align 4, !tbaa !25
  %11766 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %11767 = select i1 %11763, i64 0, i64 %11766
  %11768 = or i64 %11765, %11767
  %11769 = trunc i64 %11768 to i32
  store volatile i32 %11769, i32* %11275, align 4, !tbaa !35
  %11770 = load i64, i64* %9587, align 8, !tbaa !25
  %11771 = trunc i64 %11770 to i8
  %11772 = icmp eq i8 %11771, 0
  %11773 = bitcast i32* %11274 to i64*
  %11774 = load volatile i64, i64* %11773, align 8, !tbaa !25
  %11775 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %11776 = select i1 %11772, i64 0, i64 %11775
  %11777 = or i64 %11774, %11776
  %11778 = trunc i64 %11777 to i32
  store volatile i32 %11778, i32* %11274, align 8, !tbaa !35
  %11779 = load i64, i64* %9598, align 8, !tbaa !25
  %11780 = trunc i64 %11779 to i8
  %11781 = icmp eq i8 %11780, 0
  %11782 = bitcast i32* %11275 to i64*
  %11783 = load volatile i64, i64* %11782, align 4, !tbaa !25
  %11784 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %11785 = select i1 %11781, i64 0, i64 %11784
  %11786 = or i64 %11783, %11785
  %11787 = trunc i64 %11786 to i32
  store volatile i32 %11787, i32* %11275, align 4, !tbaa !35
  %11788 = load i64, i64* %9609, align 8, !tbaa !25
  %11789 = trunc i64 %11788 to i8
  %11790 = icmp eq i8 %11789, 0
  %11791 = bitcast i32* %11274 to i64*
  %11792 = load volatile i64, i64* %11791, align 8, !tbaa !25
  %11793 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %11794 = select i1 %11790, i64 0, i64 %11793
  %11795 = or i64 %11792, %11794
  %11796 = trunc i64 %11795 to i32
  store volatile i32 %11796, i32* %11274, align 8, !tbaa !35
  %11797 = load i64, i64* %9620, align 16, !tbaa !25
  %11798 = trunc i64 %11797 to i8
  %11799 = icmp eq i8 %11798, 0
  %11800 = bitcast i32* %11275 to i64*
  %11801 = load volatile i64, i64* %11800, align 4, !tbaa !25
  %11802 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %11803 = select i1 %11799, i64 0, i64 %11802
  %11804 = or i64 %11801, %11803
  %11805 = trunc i64 %11804 to i32
  store volatile i32 %11805, i32* %11275, align 4, !tbaa !35
  %11806 = load i64, i64* %9631, align 8, !tbaa !25
  %11807 = trunc i64 %11806 to i8
  %11808 = icmp eq i8 %11807, 0
  %11809 = bitcast i32* %11274 to i64*
  %11810 = load volatile i64, i64* %11809, align 8, !tbaa !25
  %11811 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %11812 = select i1 %11808, i64 0, i64 %11811
  %11813 = or i64 %11810, %11812
  %11814 = trunc i64 %11813 to i32
  store volatile i32 %11814, i32* %11274, align 8, !tbaa !35
  %11815 = load i64, i64* %9642, align 8, !tbaa !25
  %11816 = trunc i64 %11815 to i8
  %11817 = icmp eq i8 %11816, 0
  %11818 = bitcast i32* %11275 to i64*
  %11819 = load volatile i64, i64* %11818, align 4, !tbaa !25
  %11820 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %11821 = select i1 %11817, i64 0, i64 %11820
  %11822 = or i64 %11819, %11821
  %11823 = trunc i64 %11822 to i32
  store volatile i32 %11823, i32* %11275, align 4, !tbaa !35
  %11824 = load i64, i64* %9653, align 8, !tbaa !25
  %11825 = trunc i64 %11824 to i8
  %11826 = icmp eq i8 %11825, 0
  %11827 = bitcast i32* %11274 to i64*
  %11828 = load volatile i64, i64* %11827, align 8, !tbaa !25
  %11829 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %11830 = select i1 %11826, i64 0, i64 %11829
  %11831 = or i64 %11828, %11830
  %11832 = trunc i64 %11831 to i32
  store volatile i32 %11832, i32* %11274, align 8, !tbaa !35
  %11833 = load i64, i64* %9664, align 8, !tbaa !25
  %11834 = trunc i64 %11833 to i8
  %11835 = icmp eq i8 %11834, 0
  %11836 = bitcast i32* %11275 to i64*
  %11837 = load volatile i64, i64* %11836, align 4, !tbaa !25
  %11838 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %11839 = select i1 %11835, i64 0, i64 %11838
  %11840 = or i64 %11837, %11839
  %11841 = trunc i64 %11840 to i32
  store volatile i32 %11841, i32* %11275, align 4, !tbaa !35
  %11842 = load i64, i64* %9675, align 8, !tbaa !25
  %11843 = trunc i64 %11842 to i8
  %11844 = icmp eq i8 %11843, 0
  %11845 = bitcast i32* %11274 to i64*
  %11846 = load volatile i64, i64* %11845, align 8, !tbaa !25
  %11847 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %11848 = select i1 %11844, i64 0, i64 %11847
  %11849 = or i64 %11846, %11848
  %11850 = trunc i64 %11849 to i32
  store volatile i32 %11850, i32* %11274, align 8, !tbaa !35
  %11851 = load i64, i64* %9686, align 8, !tbaa !25
  %11852 = trunc i64 %11851 to i8
  %11853 = icmp eq i8 %11852, 0
  %11854 = bitcast i32* %11275 to i64*
  %11855 = load volatile i64, i64* %11854, align 4, !tbaa !25
  %11856 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %11857 = select i1 %11853, i64 0, i64 %11856
  %11858 = or i64 %11855, %11857
  %11859 = trunc i64 %11858 to i32
  store volatile i32 %11859, i32* %11275, align 4, !tbaa !35
  %11860 = load i64, i64* %9697, align 8, !tbaa !25
  %11861 = trunc i64 %11860 to i8
  %11862 = icmp eq i8 %11861, 0
  %11863 = bitcast i32* %11274 to i64*
  %11864 = load volatile i64, i64* %11863, align 8, !tbaa !25
  %11865 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %11866 = select i1 %11862, i64 0, i64 %11865
  %11867 = or i64 %11864, %11866
  %11868 = trunc i64 %11867 to i32
  store volatile i32 %11868, i32* %11274, align 8, !tbaa !35
  %11869 = load i64, i64* %9708, align 8, !tbaa !25
  %11870 = trunc i64 %11869 to i8
  %11871 = icmp eq i8 %11870, 0
  %11872 = bitcast i32* %11275 to i64*
  %11873 = load volatile i64, i64* %11872, align 4, !tbaa !25
  %11874 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %11875 = select i1 %11871, i64 0, i64 %11874
  %11876 = or i64 %11873, %11875
  %11877 = trunc i64 %11876 to i32
  store volatile i32 %11877, i32* %11275, align 4, !tbaa !35
  %11878 = load i64, i64* %9719, align 8, !tbaa !25
  %11879 = trunc i64 %11878 to i8
  %11880 = icmp eq i8 %11879, 0
  %11881 = bitcast i32* %11274 to i64*
  %11882 = load volatile i64, i64* %11881, align 8, !tbaa !25
  %11883 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %11884 = select i1 %11880, i64 0, i64 %11883
  %11885 = or i64 %11882, %11884
  %11886 = trunc i64 %11885 to i32
  store volatile i32 %11886, i32* %11274, align 8, !tbaa !35
  %11887 = load i64, i64* %9730, align 8, !tbaa !25
  %11888 = trunc i64 %11887 to i8
  %11889 = icmp eq i8 %11888, 0
  %11890 = bitcast i32* %11275 to i64*
  %11891 = load volatile i64, i64* %11890, align 4, !tbaa !25
  %11892 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %11893 = select i1 %11889, i64 0, i64 %11892
  %11894 = or i64 %11891, %11893
  %11895 = trunc i64 %11894 to i32
  store volatile i32 %11895, i32* %11275, align 4, !tbaa !35
  %11896 = load i64, i64* %9741, align 8, !tbaa !25
  %11897 = trunc i64 %11896 to i8
  %11898 = icmp eq i8 %11897, 0
  %11899 = bitcast i32* %11274 to i64*
  %11900 = load volatile i64, i64* %11899, align 8, !tbaa !25
  %11901 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %11902 = select i1 %11898, i64 0, i64 %11901
  %11903 = or i64 %11900, %11902
  %11904 = trunc i64 %11903 to i32
  store volatile i32 %11904, i32* %11274, align 8, !tbaa !35
  %11905 = load i64, i64* %9752, align 8, !tbaa !25
  %11906 = trunc i64 %11905 to i8
  %11907 = icmp eq i8 %11906, 0
  %11908 = bitcast i32* %11275 to i64*
  %11909 = load volatile i64, i64* %11908, align 4, !tbaa !25
  %11910 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %11911 = select i1 %11907, i64 0, i64 %11910
  %11912 = or i64 %11909, %11911
  %11913 = trunc i64 %11912 to i32
  store volatile i32 %11913, i32* %11275, align 4, !tbaa !35
  %11914 = load i64, i64* %9763, align 8, !tbaa !25
  %11915 = trunc i64 %11914 to i8
  %11916 = icmp eq i8 %11915, 0
  %11917 = bitcast i32* %11274 to i64*
  %11918 = load volatile i64, i64* %11917, align 8, !tbaa !25
  %11919 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %11920 = select i1 %11916, i64 0, i64 %11919
  %11921 = or i64 %11918, %11920
  %11922 = trunc i64 %11921 to i32
  store volatile i32 %11922, i32* %11274, align 8, !tbaa !35
  %11923 = load i64, i64* %9774, align 8, !tbaa !25
  %11924 = trunc i64 %11923 to i8
  %11925 = icmp eq i8 %11924, 0
  %11926 = bitcast i32* %11275 to i64*
  %11927 = load volatile i64, i64* %11926, align 4, !tbaa !25
  %11928 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %11929 = select i1 %11925, i64 0, i64 %11928
  %11930 = or i64 %11927, %11929
  %11931 = trunc i64 %11930 to i32
  store volatile i32 %11931, i32* %11275, align 4, !tbaa !35
  %11932 = load i64, i64* %9785, align 8, !tbaa !25
  %11933 = trunc i64 %11932 to i8
  %11934 = icmp eq i8 %11933, 0
  %11935 = bitcast i32* %11274 to i64*
  %11936 = load volatile i64, i64* %11935, align 8, !tbaa !25
  %11937 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %11938 = select i1 %11934, i64 0, i64 %11937
  %11939 = or i64 %11936, %11938
  %11940 = trunc i64 %11939 to i32
  store volatile i32 %11940, i32* %11274, align 8, !tbaa !35
  %11941 = load i64, i64* %9796, align 8, !tbaa !25
  %11942 = trunc i64 %11941 to i8
  %11943 = icmp eq i8 %11942, 0
  %11944 = bitcast i32* %11275 to i64*
  %11945 = load volatile i64, i64* %11944, align 4, !tbaa !25
  %11946 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %11947 = select i1 %11943, i64 0, i64 %11946
  %11948 = or i64 %11945, %11947
  %11949 = trunc i64 %11948 to i32
  store volatile i32 %11949, i32* %11275, align 4, !tbaa !35
  %11950 = load i64, i64* %9807, align 8, !tbaa !25
  %11951 = trunc i64 %11950 to i8
  %11952 = icmp eq i8 %11951, 0
  %11953 = bitcast i32* %11274 to i64*
  %11954 = load volatile i64, i64* %11953, align 8, !tbaa !25
  %11955 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %11956 = select i1 %11952, i64 0, i64 %11955
  %11957 = or i64 %11954, %11956
  %11958 = trunc i64 %11957 to i32
  store volatile i32 %11958, i32* %11274, align 8, !tbaa !35
  %11959 = load i64, i64* %9818, align 8, !tbaa !25
  %11960 = trunc i64 %11959 to i8
  %11961 = icmp eq i8 %11960, 0
  %11962 = bitcast i32* %11275 to i64*
  %11963 = load volatile i64, i64* %11962, align 4, !tbaa !25
  %11964 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %11965 = select i1 %11961, i64 0, i64 %11964
  %11966 = or i64 %11963, %11965
  %11967 = trunc i64 %11966 to i32
  store volatile i32 %11967, i32* %11275, align 4, !tbaa !35
  %11968 = load i64, i64* %9829, align 8, !tbaa !25
  %11969 = trunc i64 %11968 to i8
  %11970 = icmp eq i8 %11969, 0
  %11971 = bitcast i32* %11274 to i64*
  %11972 = load volatile i64, i64* %11971, align 8, !tbaa !25
  %11973 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %11974 = select i1 %11970, i64 0, i64 %11973
  %11975 = or i64 %11972, %11974
  %11976 = trunc i64 %11975 to i32
  store volatile i32 %11976, i32* %11274, align 8, !tbaa !35
  %11977 = load i64, i64* %9840, align 8, !tbaa !25
  %11978 = trunc i64 %11977 to i8
  %11979 = icmp eq i8 %11978, 0
  %11980 = bitcast i32* %11275 to i64*
  %11981 = load volatile i64, i64* %11980, align 4, !tbaa !25
  %11982 = load volatile i64, i64* bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @bigbyte, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %11983 = select i1 %11979, i64 0, i64 %11982
  %11984 = or i64 %11981, %11983
  %11985 = trunc i64 %11984 to i32
  store volatile i32 %11985, i32* %11275, align 4, !tbaa !35
  %11986 = bitcast i32* %11275 to i64*
  %11987 = bitcast [32 x i32]* %2 to i64*
  %11988 = load i64, i64* %11987, align 16, !tbaa !25
  %11989 = trunc i64 %11988 to i32
  %11990 = shl i32 %11989, 6
  %11991 = and i32 %11990, 1056964608
  %11992 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  store i32 %11991, i32* %11992, align 16, !tbaa !35
  %11993 = bitcast [32 x i32]* %1 to i64*
  %11994 = load i64, i64* %11993, align 16, !tbaa !25
  %11995 = trunc i64 %11994 to i32
  %11996 = shl i32 %11989, 10
  %11997 = and i32 %11996, 4128768
  %11998 = or i32 %11997, %11995
  store i32 %11998, i32* %11992, align 16, !tbaa !35
  %11999 = load i64, i64* %11993, align 16, !tbaa !25
  %12000 = trunc i64 %11999 to i32
  %12001 = bitcast i32* %143 to i64*
  %12002 = load i64, i64* %12001, align 4, !tbaa !25
  %12003 = trunc i64 %12002 to i32
  %12004 = lshr i32 %12003, 10
  %12005 = and i32 %12004, 16128
  %12006 = or i32 %12005, %12000
  store i32 %12006, i32* %11992, align 16, !tbaa !35
  %12007 = load i64, i64* %11993, align 16, !tbaa !25
  %12008 = trunc i64 %12007 to i32
  %12009 = lshr i32 %12003, 6
  %12010 = and i32 %12009, 63
  %12011 = or i32 %12010, %12008
  store i32 %12011, i32* %11992, align 16, !tbaa !35
  %12012 = shl i32 %11989, 12
  %12013 = and i32 %12012, 1056964608
  %12014 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 1
  store i32 %12013, i32* %12014, align 4, !tbaa !35
  %12015 = bitcast i32* %12014 to i64*
  %12016 = load i64, i64* %12015, align 4, !tbaa !25
  %12017 = trunc i64 %12016 to i32
  %12018 = shl i32 %11989, 16
  %12019 = and i32 %12018, 4128768
  %12020 = or i32 %12019, %12017
  store i32 %12020, i32* %12014, align 4, !tbaa !35
  %12021 = load i64, i64* %12015, align 4, !tbaa !25
  %12022 = trunc i64 %12021 to i32
  %12023 = lshr i32 %12003, 4
  %12024 = and i32 %12023, 16128
  %12025 = or i32 %12024, %12022
  store i32 %12025, i32* %12014, align 4, !tbaa !35
  %12026 = load i64, i64* %12015, align 4, !tbaa !25
  %12027 = trunc i64 %12026 to i32
  %12028 = and i32 %12003, 63
  %12029 = or i32 %12028, %12027
  store i32 %12029, i32* %12014, align 4, !tbaa !35
  %12030 = bitcast i32* %1021 to i64*
  %12031 = load i64, i64* %12030, align 8, !tbaa !25
  %12032 = trunc i64 %12031 to i32
  %12033 = shl i32 %12032, 6
  %12034 = and i32 %12033, 1056964608
  %12035 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 2
  store i32 %12034, i32* %12035, align 8, !tbaa !35
  %12036 = bitcast i32* %12035 to i64*
  %12037 = load i64, i64* %12036, align 8, !tbaa !25
  %12038 = trunc i64 %12037 to i32
  %12039 = shl i32 %12032, 10
  %12040 = and i32 %12039, 4128768
  %12041 = or i32 %12040, %12038
  store i32 %12041, i32* %12035, align 8, !tbaa !35
  %12042 = load i64, i64* %12036, align 8, !tbaa !25
  %12043 = trunc i64 %12042 to i32
  %12044 = bitcast i32* %1022 to i64*
  %12045 = load i64, i64* %12044, align 4, !tbaa !25
  %12046 = trunc i64 %12045 to i32
  %12047 = lshr i32 %12046, 10
  %12048 = and i32 %12047, 16128
  %12049 = or i32 %12048, %12043
  store i32 %12049, i32* %12035, align 8, !tbaa !35
  %12050 = load i64, i64* %12036, align 8, !tbaa !25
  %12051 = trunc i64 %12050 to i32
  %12052 = lshr i32 %12046, 6
  %12053 = and i32 %12052, 63
  %12054 = or i32 %12053, %12051
  store i32 %12054, i32* %12035, align 8, !tbaa !35
  %12055 = shl i32 %12032, 12
  %12056 = and i32 %12055, 1056964608
  %12057 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 3
  store i32 %12056, i32* %12057, align 4, !tbaa !35
  %12058 = bitcast i32* %12057 to i64*
  %12059 = load i64, i64* %12058, align 4, !tbaa !25
  %12060 = trunc i64 %12059 to i32
  %12061 = shl i32 %12032, 16
  %12062 = and i32 %12061, 4128768
  %12063 = or i32 %12062, %12060
  store i32 %12063, i32* %12057, align 4, !tbaa !35
  %12064 = load i64, i64* %12058, align 4, !tbaa !25
  %12065 = trunc i64 %12064 to i32
  %12066 = lshr i32 %12046, 4
  %12067 = and i32 %12066, 16128
  %12068 = or i32 %12067, %12065
  store i32 %12068, i32* %12057, align 4, !tbaa !35
  %12069 = load i64, i64* %12058, align 4, !tbaa !25
  %12070 = trunc i64 %12069 to i32
  %12071 = and i32 %12046, 63
  %12072 = or i32 %12071, %12070
  store i32 %12072, i32* %12057, align 4, !tbaa !35
  %12073 = bitcast i32* %1733 to i64*
  %12074 = load i64, i64* %12073, align 16, !tbaa !25
  %12075 = trunc i64 %12074 to i32
  %12076 = shl i32 %12075, 6
  %12077 = and i32 %12076, 1056964608
  %12078 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 4
  store i32 %12077, i32* %12078, align 16, !tbaa !35
  %12079 = bitcast i32* %12078 to i64*
  %12080 = load i64, i64* %12079, align 16, !tbaa !25
  %12081 = trunc i64 %12080 to i32
  %12082 = shl i32 %12075, 10
  %12083 = and i32 %12082, 4128768
  %12084 = or i32 %12083, %12081
  store i32 %12084, i32* %12078, align 16, !tbaa !35
  %12085 = load i64, i64* %12079, align 16, !tbaa !25
  %12086 = trunc i64 %12085 to i32
  %12087 = bitcast i32* %1734 to i64*
  %12088 = load i64, i64* %12087, align 4, !tbaa !25
  %12089 = trunc i64 %12088 to i32
  %12090 = lshr i32 %12089, 10
  %12091 = and i32 %12090, 16128
  %12092 = or i32 %12091, %12086
  store i32 %12092, i32* %12078, align 16, !tbaa !35
  %12093 = load i64, i64* %12079, align 16, !tbaa !25
  %12094 = trunc i64 %12093 to i32
  %12095 = lshr i32 %12089, 6
  %12096 = and i32 %12095, 63
  %12097 = or i32 %12096, %12094
  store i32 %12097, i32* %12078, align 16, !tbaa !35
  %12098 = shl i32 %12075, 12
  %12099 = and i32 %12098, 1056964608
  %12100 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 5
  store i32 %12099, i32* %12100, align 4, !tbaa !35
  %12101 = bitcast i32* %12100 to i64*
  %12102 = load i64, i64* %12101, align 4, !tbaa !25
  %12103 = trunc i64 %12102 to i32
  %12104 = shl i32 %12075, 16
  %12105 = and i32 %12104, 4128768
  %12106 = or i32 %12105, %12103
  store i32 %12106, i32* %12100, align 4, !tbaa !35
  %12107 = load i64, i64* %12101, align 4, !tbaa !25
  %12108 = trunc i64 %12107 to i32
  %12109 = lshr i32 %12089, 4
  %12110 = and i32 %12109, 16128
  %12111 = or i32 %12110, %12108
  store i32 %12111, i32* %12100, align 4, !tbaa !35
  %12112 = load i64, i64* %12101, align 4, !tbaa !25
  %12113 = trunc i64 %12112 to i32
  %12114 = and i32 %12089, 63
  %12115 = or i32 %12114, %12113
  store i32 %12115, i32* %12100, align 4, !tbaa !35
  %12116 = bitcast i32* %2445 to i64*
  %12117 = load i64, i64* %12116, align 8, !tbaa !25
  %12118 = trunc i64 %12117 to i32
  %12119 = shl i32 %12118, 6
  %12120 = and i32 %12119, 1056964608
  %12121 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 6
  store i32 %12120, i32* %12121, align 8, !tbaa !35
  %12122 = bitcast i32* %12121 to i64*
  %12123 = load i64, i64* %12122, align 8, !tbaa !25
  %12124 = trunc i64 %12123 to i32
  %12125 = shl i32 %12118, 10
  %12126 = and i32 %12125, 4128768
  %12127 = or i32 %12126, %12124
  store i32 %12127, i32* %12121, align 8, !tbaa !35
  %12128 = load i64, i64* %12122, align 8, !tbaa !25
  %12129 = trunc i64 %12128 to i32
  %12130 = bitcast i32* %2446 to i64*
  %12131 = load i64, i64* %12130, align 4, !tbaa !25
  %12132 = trunc i64 %12131 to i32
  %12133 = lshr i32 %12132, 10
  %12134 = and i32 %12133, 16128
  %12135 = or i32 %12134, %12129
  store i32 %12135, i32* %12121, align 8, !tbaa !35
  %12136 = load i64, i64* %12122, align 8, !tbaa !25
  %12137 = trunc i64 %12136 to i32
  %12138 = lshr i32 %12132, 6
  %12139 = and i32 %12138, 63
  %12140 = or i32 %12139, %12137
  store i32 %12140, i32* %12121, align 8, !tbaa !35
  %12141 = shl i32 %12118, 12
  %12142 = and i32 %12141, 1056964608
  %12143 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 7
  store i32 %12142, i32* %12143, align 4, !tbaa !35
  %12144 = bitcast i32* %12143 to i64*
  %12145 = load i64, i64* %12144, align 4, !tbaa !25
  %12146 = trunc i64 %12145 to i32
  %12147 = shl i32 %12118, 16
  %12148 = and i32 %12147, 4128768
  %12149 = or i32 %12148, %12146
  store i32 %12149, i32* %12143, align 4, !tbaa !35
  %12150 = load i64, i64* %12144, align 4, !tbaa !25
  %12151 = trunc i64 %12150 to i32
  %12152 = lshr i32 %12132, 4
  %12153 = and i32 %12152, 16128
  %12154 = or i32 %12153, %12151
  store i32 %12154, i32* %12143, align 4, !tbaa !35
  %12155 = load i64, i64* %12144, align 4, !tbaa !25
  %12156 = trunc i64 %12155 to i32
  %12157 = and i32 %12132, 63
  %12158 = or i32 %12157, %12156
  store i32 %12158, i32* %12143, align 4, !tbaa !35
  %12159 = bitcast i32* %3157 to i64*
  %12160 = load i64, i64* %12159, align 16, !tbaa !25
  %12161 = trunc i64 %12160 to i32
  %12162 = shl i32 %12161, 6
  %12163 = and i32 %12162, 1056964608
  %12164 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 8
  store i32 %12163, i32* %12164, align 16, !tbaa !35
  %12165 = bitcast i32* %12164 to i64*
  %12166 = load i64, i64* %12165, align 16, !tbaa !25
  %12167 = trunc i64 %12166 to i32
  %12168 = shl i32 %12161, 10
  %12169 = and i32 %12168, 4128768
  %12170 = or i32 %12169, %12167
  store i32 %12170, i32* %12164, align 16, !tbaa !35
  %12171 = load i64, i64* %12165, align 16, !tbaa !25
  %12172 = trunc i64 %12171 to i32
  %12173 = bitcast i32* %3158 to i64*
  %12174 = load i64, i64* %12173, align 4, !tbaa !25
  %12175 = trunc i64 %12174 to i32
  %12176 = lshr i32 %12175, 10
  %12177 = and i32 %12176, 16128
  %12178 = or i32 %12177, %12172
  store i32 %12178, i32* %12164, align 16, !tbaa !35
  %12179 = load i64, i64* %12165, align 16, !tbaa !25
  %12180 = trunc i64 %12179 to i32
  %12181 = lshr i32 %12175, 6
  %12182 = and i32 %12181, 63
  %12183 = or i32 %12182, %12180
  store i32 %12183, i32* %12164, align 16, !tbaa !35
  %12184 = shl i32 %12161, 12
  %12185 = and i32 %12184, 1056964608
  %12186 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 9
  store i32 %12185, i32* %12186, align 4, !tbaa !35
  %12187 = bitcast i32* %12186 to i64*
  %12188 = load i64, i64* %12187, align 4, !tbaa !25
  %12189 = trunc i64 %12188 to i32
  %12190 = shl i32 %12161, 16
  %12191 = and i32 %12190, 4128768
  %12192 = or i32 %12191, %12189
  store i32 %12192, i32* %12186, align 4, !tbaa !35
  %12193 = load i64, i64* %12187, align 4, !tbaa !25
  %12194 = trunc i64 %12193 to i32
  %12195 = lshr i32 %12175, 4
  %12196 = and i32 %12195, 16128
  %12197 = or i32 %12196, %12194
  store i32 %12197, i32* %12186, align 4, !tbaa !35
  %12198 = load i64, i64* %12187, align 4, !tbaa !25
  %12199 = trunc i64 %12198 to i32
  %12200 = and i32 %12175, 63
  %12201 = or i32 %12200, %12199
  store i32 %12201, i32* %12186, align 4, !tbaa !35
  %12202 = bitcast i32* %3964 to i64*
  %12203 = load i64, i64* %12202, align 8, !tbaa !25
  %12204 = trunc i64 %12203 to i32
  %12205 = shl i32 %12204, 6
  %12206 = and i32 %12205, 1056964608
  %12207 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 10
  store i32 %12206, i32* %12207, align 8, !tbaa !35
  %12208 = bitcast i32* %12207 to i64*
  %12209 = load i64, i64* %12208, align 8, !tbaa !25
  %12210 = trunc i64 %12209 to i32
  %12211 = shl i32 %12204, 10
  %12212 = and i32 %12211, 4128768
  %12213 = or i32 %12212, %12210
  store i32 %12213, i32* %12207, align 8, !tbaa !35
  %12214 = load i64, i64* %12208, align 8, !tbaa !25
  %12215 = trunc i64 %12214 to i32
  %12216 = bitcast i32* %3965 to i64*
  %12217 = load i64, i64* %12216, align 4, !tbaa !25
  %12218 = trunc i64 %12217 to i32
  %12219 = lshr i32 %12218, 10
  %12220 = and i32 %12219, 16128
  %12221 = or i32 %12220, %12215
  store i32 %12221, i32* %12207, align 8, !tbaa !35
  %12222 = load i64, i64* %12208, align 8, !tbaa !25
  %12223 = trunc i64 %12222 to i32
  %12224 = lshr i32 %12218, 6
  %12225 = and i32 %12224, 63
  %12226 = or i32 %12225, %12223
  store i32 %12226, i32* %12207, align 8, !tbaa !35
  %12227 = shl i32 %12204, 12
  %12228 = and i32 %12227, 1056964608
  %12229 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 11
  store i32 %12228, i32* %12229, align 4, !tbaa !35
  %12230 = bitcast i32* %12229 to i64*
  %12231 = load i64, i64* %12230, align 4, !tbaa !25
  %12232 = trunc i64 %12231 to i32
  %12233 = shl i32 %12204, 16
  %12234 = and i32 %12233, 4128768
  %12235 = or i32 %12234, %12232
  store i32 %12235, i32* %12229, align 4, !tbaa !35
  %12236 = load i64, i64* %12230, align 4, !tbaa !25
  %12237 = trunc i64 %12236 to i32
  %12238 = lshr i32 %12218, 4
  %12239 = and i32 %12238, 16128
  %12240 = or i32 %12239, %12237
  store i32 %12240, i32* %12229, align 4, !tbaa !35
  %12241 = load i64, i64* %12230, align 4, !tbaa !25
  %12242 = trunc i64 %12241 to i32
  %12243 = and i32 %12218, 63
  %12244 = or i32 %12243, %12242
  store i32 %12244, i32* %12229, align 4, !tbaa !35
  %12245 = bitcast i32* %4676 to i64*
  %12246 = load i64, i64* %12245, align 16, !tbaa !25
  %12247 = trunc i64 %12246 to i32
  %12248 = shl i32 %12247, 6
  %12249 = and i32 %12248, 1056964608
  %12250 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 12
  store i32 %12249, i32* %12250, align 16, !tbaa !35
  %12251 = bitcast i32* %12250 to i64*
  %12252 = load i64, i64* %12251, align 16, !tbaa !25
  %12253 = trunc i64 %12252 to i32
  %12254 = shl i32 %12247, 10
  %12255 = and i32 %12254, 4128768
  %12256 = or i32 %12255, %12253
  store i32 %12256, i32* %12250, align 16, !tbaa !35
  %12257 = load i64, i64* %12251, align 16, !tbaa !25
  %12258 = trunc i64 %12257 to i32
  %12259 = bitcast i32* %4677 to i64*
  %12260 = load i64, i64* %12259, align 4, !tbaa !25
  %12261 = trunc i64 %12260 to i32
  %12262 = lshr i32 %12261, 10
  %12263 = and i32 %12262, 16128
  %12264 = or i32 %12263, %12258
  store i32 %12264, i32* %12250, align 16, !tbaa !35
  %12265 = load i64, i64* %12251, align 16, !tbaa !25
  %12266 = trunc i64 %12265 to i32
  %12267 = lshr i32 %12261, 6
  %12268 = and i32 %12267, 63
  %12269 = or i32 %12268, %12266
  store i32 %12269, i32* %12250, align 16, !tbaa !35
  %12270 = shl i32 %12247, 12
  %12271 = and i32 %12270, 1056964608
  %12272 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 13
  store i32 %12271, i32* %12272, align 4, !tbaa !35
  %12273 = bitcast i32* %12272 to i64*
  %12274 = load i64, i64* %12273, align 4, !tbaa !25
  %12275 = trunc i64 %12274 to i32
  %12276 = shl i32 %12247, 16
  %12277 = and i32 %12276, 4128768
  %12278 = or i32 %12277, %12275
  store i32 %12278, i32* %12272, align 4, !tbaa !35
  %12279 = load i64, i64* %12273, align 4, !tbaa !25
  %12280 = trunc i64 %12279 to i32
  %12281 = lshr i32 %12261, 4
  %12282 = and i32 %12281, 16128
  %12283 = or i32 %12282, %12280
  store i32 %12283, i32* %12272, align 4, !tbaa !35
  %12284 = load i64, i64* %12273, align 4, !tbaa !25
  %12285 = trunc i64 %12284 to i32
  %12286 = and i32 %12261, 63
  %12287 = or i32 %12286, %12285
  store i32 %12287, i32* %12272, align 4, !tbaa !35
  %12288 = bitcast i32* %5388 to i64*
  %12289 = load i64, i64* %12288, align 8, !tbaa !25
  %12290 = trunc i64 %12289 to i32
  %12291 = shl i32 %12290, 6
  %12292 = and i32 %12291, 1056964608
  %12293 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 14
  store i32 %12292, i32* %12293, align 8, !tbaa !35
  %12294 = bitcast i32* %12293 to i64*
  %12295 = load i64, i64* %12294, align 8, !tbaa !25
  %12296 = trunc i64 %12295 to i32
  %12297 = shl i32 %12290, 10
  %12298 = and i32 %12297, 4128768
  %12299 = or i32 %12298, %12296
  store i32 %12299, i32* %12293, align 8, !tbaa !35
  %12300 = load i64, i64* %12294, align 8, !tbaa !25
  %12301 = trunc i64 %12300 to i32
  %12302 = bitcast i32* %5389 to i64*
  %12303 = load i64, i64* %12302, align 4, !tbaa !25
  %12304 = trunc i64 %12303 to i32
  %12305 = lshr i32 %12304, 10
  %12306 = and i32 %12305, 16128
  %12307 = or i32 %12306, %12301
  store i32 %12307, i32* %12293, align 8, !tbaa !35
  %12308 = load i64, i64* %12294, align 8, !tbaa !25
  %12309 = trunc i64 %12308 to i32
  %12310 = lshr i32 %12304, 6
  %12311 = and i32 %12310, 63
  %12312 = or i32 %12311, %12309
  store i32 %12312, i32* %12293, align 8, !tbaa !35
  %12313 = shl i32 %12290, 12
  %12314 = and i32 %12313, 1056964608
  %12315 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 15
  store i32 %12314, i32* %12315, align 4, !tbaa !35
  %12316 = bitcast i32* %12315 to i64*
  %12317 = load i64, i64* %12316, align 4, !tbaa !25
  %12318 = trunc i64 %12317 to i32
  %12319 = shl i32 %12290, 16
  %12320 = and i32 %12319, 4128768
  %12321 = or i32 %12320, %12318
  store i32 %12321, i32* %12315, align 4, !tbaa !35
  %12322 = load i64, i64* %12316, align 4, !tbaa !25
  %12323 = trunc i64 %12322 to i32
  %12324 = lshr i32 %12304, 4
  %12325 = and i32 %12324, 16128
  %12326 = or i32 %12325, %12323
  store i32 %12326, i32* %12315, align 4, !tbaa !35
  %12327 = load i64, i64* %12316, align 4, !tbaa !25
  %12328 = trunc i64 %12327 to i32
  %12329 = and i32 %12304, 63
  %12330 = or i32 %12329, %12328
  store i32 %12330, i32* %12315, align 4, !tbaa !35
  %12331 = bitcast i32* %6100 to i64*
  %12332 = load i64, i64* %12331, align 16, !tbaa !25
  %12333 = trunc i64 %12332 to i32
  %12334 = shl i32 %12333, 6
  %12335 = and i32 %12334, 1056964608
  %12336 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 16
  store i32 %12335, i32* %12336, align 16, !tbaa !35
  %12337 = bitcast i32* %12336 to i64*
  %12338 = load i64, i64* %12337, align 16, !tbaa !25
  %12339 = trunc i64 %12338 to i32
  %12340 = shl i32 %12333, 10
  %12341 = and i32 %12340, 4128768
  %12342 = or i32 %12341, %12339
  store i32 %12342, i32* %12336, align 16, !tbaa !35
  %12343 = load i64, i64* %12337, align 16, !tbaa !25
  %12344 = trunc i64 %12343 to i32
  %12345 = bitcast i32* %6101 to i64*
  %12346 = load i64, i64* %12345, align 4, !tbaa !25
  %12347 = trunc i64 %12346 to i32
  %12348 = lshr i32 %12347, 10
  %12349 = and i32 %12348, 16128
  %12350 = or i32 %12349, %12344
  store i32 %12350, i32* %12336, align 16, !tbaa !35
  %12351 = load i64, i64* %12337, align 16, !tbaa !25
  %12352 = trunc i64 %12351 to i32
  %12353 = lshr i32 %12347, 6
  %12354 = and i32 %12353, 63
  %12355 = or i32 %12354, %12352
  store i32 %12355, i32* %12336, align 16, !tbaa !35
  %12356 = shl i32 %12333, 12
  %12357 = and i32 %12356, 1056964608
  %12358 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 17
  store i32 %12357, i32* %12358, align 4, !tbaa !35
  %12359 = bitcast i32* %12358 to i64*
  %12360 = load i64, i64* %12359, align 4, !tbaa !25
  %12361 = trunc i64 %12360 to i32
  %12362 = shl i32 %12333, 16
  %12363 = and i32 %12362, 4128768
  %12364 = or i32 %12363, %12361
  store i32 %12364, i32* %12358, align 4, !tbaa !35
  %12365 = load i64, i64* %12359, align 4, !tbaa !25
  %12366 = trunc i64 %12365 to i32
  %12367 = lshr i32 %12347, 4
  %12368 = and i32 %12367, 16128
  %12369 = or i32 %12368, %12366
  store i32 %12369, i32* %12358, align 4, !tbaa !35
  %12370 = load i64, i64* %12359, align 4, !tbaa !25
  %12371 = trunc i64 %12370 to i32
  %12372 = and i32 %12347, 63
  %12373 = or i32 %12372, %12371
  store i32 %12373, i32* %12358, align 4, !tbaa !35
  %12374 = bitcast i32* %6907 to i64*
  %12375 = load i64, i64* %12374, align 8, !tbaa !25
  %12376 = trunc i64 %12375 to i32
  %12377 = shl i32 %12376, 6
  %12378 = and i32 %12377, 1056964608
  %12379 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 18
  store i32 %12378, i32* %12379, align 8, !tbaa !35
  %12380 = bitcast i32* %12379 to i64*
  %12381 = load i64, i64* %12380, align 8, !tbaa !25
  %12382 = trunc i64 %12381 to i32
  %12383 = shl i32 %12376, 10
  %12384 = and i32 %12383, 4128768
  %12385 = or i32 %12384, %12382
  store i32 %12385, i32* %12379, align 8, !tbaa !35
  %12386 = load i64, i64* %12380, align 8, !tbaa !25
  %12387 = trunc i64 %12386 to i32
  %12388 = bitcast i32* %6908 to i64*
  %12389 = load i64, i64* %12388, align 4, !tbaa !25
  %12390 = trunc i64 %12389 to i32
  %12391 = lshr i32 %12390, 10
  %12392 = and i32 %12391, 16128
  %12393 = or i32 %12392, %12387
  store i32 %12393, i32* %12379, align 8, !tbaa !35
  %12394 = load i64, i64* %12380, align 8, !tbaa !25
  %12395 = trunc i64 %12394 to i32
  %12396 = lshr i32 %12390, 6
  %12397 = and i32 %12396, 63
  %12398 = or i32 %12397, %12395
  store i32 %12398, i32* %12379, align 8, !tbaa !35
  %12399 = shl i32 %12376, 12
  %12400 = and i32 %12399, 1056964608
  %12401 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 19
  store i32 %12400, i32* %12401, align 4, !tbaa !35
  %12402 = bitcast i32* %12401 to i64*
  %12403 = load i64, i64* %12402, align 4, !tbaa !25
  %12404 = trunc i64 %12403 to i32
  %12405 = shl i32 %12376, 16
  %12406 = and i32 %12405, 4128768
  %12407 = or i32 %12406, %12404
  store i32 %12407, i32* %12401, align 4, !tbaa !35
  %12408 = load i64, i64* %12402, align 4, !tbaa !25
  %12409 = trunc i64 %12408 to i32
  %12410 = lshr i32 %12390, 4
  %12411 = and i32 %12410, 16128
  %12412 = or i32 %12411, %12409
  store i32 %12412, i32* %12401, align 4, !tbaa !35
  %12413 = load i64, i64* %12402, align 4, !tbaa !25
  %12414 = trunc i64 %12413 to i32
  %12415 = and i32 %12390, 63
  %12416 = or i32 %12415, %12414
  store i32 %12416, i32* %12401, align 4, !tbaa !35
  %12417 = bitcast i32* %7619 to i64*
  %12418 = load i64, i64* %12417, align 16, !tbaa !25
  %12419 = trunc i64 %12418 to i32
  %12420 = shl i32 %12419, 6
  %12421 = and i32 %12420, 1056964608
  %12422 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 20
  store i32 %12421, i32* %12422, align 16, !tbaa !35
  %12423 = bitcast i32* %12422 to i64*
  %12424 = load i64, i64* %12423, align 16, !tbaa !25
  %12425 = trunc i64 %12424 to i32
  %12426 = shl i32 %12419, 10
  %12427 = and i32 %12426, 4128768
  %12428 = or i32 %12427, %12425
  store i32 %12428, i32* %12422, align 16, !tbaa !35
  %12429 = load i64, i64* %12423, align 16, !tbaa !25
  %12430 = trunc i64 %12429 to i32
  %12431 = bitcast i32* %7620 to i64*
  %12432 = load i64, i64* %12431, align 4, !tbaa !25
  %12433 = trunc i64 %12432 to i32
  %12434 = lshr i32 %12433, 10
  %12435 = and i32 %12434, 16128
  %12436 = or i32 %12435, %12430
  store i32 %12436, i32* %12422, align 16, !tbaa !35
  %12437 = load i64, i64* %12423, align 16, !tbaa !25
  %12438 = trunc i64 %12437 to i32
  %12439 = lshr i32 %12433, 6
  %12440 = and i32 %12439, 63
  %12441 = or i32 %12440, %12438
  store i32 %12441, i32* %12422, align 16, !tbaa !35
  %12442 = shl i32 %12419, 12
  %12443 = and i32 %12442, 1056964608
  %12444 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 21
  store i32 %12443, i32* %12444, align 4, !tbaa !35
  %12445 = bitcast i32* %12444 to i64*
  %12446 = load i64, i64* %12445, align 4, !tbaa !25
  %12447 = trunc i64 %12446 to i32
  %12448 = shl i32 %12419, 16
  %12449 = and i32 %12448, 4128768
  %12450 = or i32 %12449, %12447
  store i32 %12450, i32* %12444, align 4, !tbaa !35
  %12451 = load i64, i64* %12445, align 4, !tbaa !25
  %12452 = trunc i64 %12451 to i32
  %12453 = lshr i32 %12433, 4
  %12454 = and i32 %12453, 16128
  %12455 = or i32 %12454, %12452
  store i32 %12455, i32* %12444, align 4, !tbaa !35
  %12456 = load i64, i64* %12445, align 4, !tbaa !25
  %12457 = trunc i64 %12456 to i32
  %12458 = and i32 %12433, 63
  %12459 = or i32 %12458, %12457
  store i32 %12459, i32* %12444, align 4, !tbaa !35
  %12460 = bitcast i32* %8331 to i64*
  %12461 = load i64, i64* %12460, align 8, !tbaa !25
  %12462 = trunc i64 %12461 to i32
  %12463 = shl i32 %12462, 6
  %12464 = and i32 %12463, 1056964608
  %12465 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 22
  store i32 %12464, i32* %12465, align 8, !tbaa !35
  %12466 = bitcast i32* %12465 to i64*
  %12467 = load i64, i64* %12466, align 8, !tbaa !25
  %12468 = trunc i64 %12467 to i32
  %12469 = shl i32 %12462, 10
  %12470 = and i32 %12469, 4128768
  %12471 = or i32 %12470, %12468
  store i32 %12471, i32* %12465, align 8, !tbaa !35
  %12472 = load i64, i64* %12466, align 8, !tbaa !25
  %12473 = trunc i64 %12472 to i32
  %12474 = bitcast i32* %8332 to i64*
  %12475 = load i64, i64* %12474, align 4, !tbaa !25
  %12476 = trunc i64 %12475 to i32
  %12477 = lshr i32 %12476, 10
  %12478 = and i32 %12477, 16128
  %12479 = or i32 %12478, %12473
  store i32 %12479, i32* %12465, align 8, !tbaa !35
  %12480 = load i64, i64* %12466, align 8, !tbaa !25
  %12481 = trunc i64 %12480 to i32
  %12482 = lshr i32 %12476, 6
  %12483 = and i32 %12482, 63
  %12484 = or i32 %12483, %12481
  store i32 %12484, i32* %12465, align 8, !tbaa !35
  %12485 = shl i32 %12462, 12
  %12486 = and i32 %12485, 1056964608
  %12487 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 23
  store i32 %12486, i32* %12487, align 4, !tbaa !35
  %12488 = bitcast i32* %12487 to i64*
  %12489 = load i64, i64* %12488, align 4, !tbaa !25
  %12490 = trunc i64 %12489 to i32
  %12491 = shl i32 %12462, 16
  %12492 = and i32 %12491, 4128768
  %12493 = or i32 %12492, %12490
  store i32 %12493, i32* %12487, align 4, !tbaa !35
  %12494 = load i64, i64* %12488, align 4, !tbaa !25
  %12495 = trunc i64 %12494 to i32
  %12496 = lshr i32 %12476, 4
  %12497 = and i32 %12496, 16128
  %12498 = or i32 %12497, %12495
  store i32 %12498, i32* %12487, align 4, !tbaa !35
  %12499 = load i64, i64* %12488, align 4, !tbaa !25
  %12500 = trunc i64 %12499 to i32
  %12501 = and i32 %12476, 63
  %12502 = or i32 %12501, %12500
  store i32 %12502, i32* %12487, align 4, !tbaa !35
  %12503 = bitcast i32* %9043 to i64*
  %12504 = load i64, i64* %12503, align 16, !tbaa !25
  %12505 = trunc i64 %12504 to i32
  %12506 = shl i32 %12505, 6
  %12507 = and i32 %12506, 1056964608
  %12508 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 24
  store i32 %12507, i32* %12508, align 16, !tbaa !35
  %12509 = bitcast i32* %12508 to i64*
  %12510 = load i64, i64* %12509, align 16, !tbaa !25
  %12511 = trunc i64 %12510 to i32
  %12512 = shl i32 %12505, 10
  %12513 = and i32 %12512, 4128768
  %12514 = or i32 %12513, %12511
  store i32 %12514, i32* %12508, align 16, !tbaa !35
  %12515 = load i64, i64* %12509, align 16, !tbaa !25
  %12516 = trunc i64 %12515 to i32
  %12517 = bitcast i32* %9044 to i64*
  %12518 = load i64, i64* %12517, align 4, !tbaa !25
  %12519 = trunc i64 %12518 to i32
  %12520 = lshr i32 %12519, 10
  %12521 = and i32 %12520, 16128
  %12522 = or i32 %12521, %12516
  store i32 %12522, i32* %12508, align 16, !tbaa !35
  %12523 = load i64, i64* %12509, align 16, !tbaa !25
  %12524 = trunc i64 %12523 to i32
  %12525 = lshr i32 %12519, 6
  %12526 = and i32 %12525, 63
  %12527 = or i32 %12526, %12524
  store i32 %12527, i32* %12508, align 16, !tbaa !35
  %12528 = shl i32 %12505, 12
  %12529 = and i32 %12528, 1056964608
  %12530 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 25
  store i32 %12529, i32* %12530, align 4, !tbaa !35
  %12531 = bitcast i32* %12530 to i64*
  %12532 = load i64, i64* %12531, align 4, !tbaa !25
  %12533 = trunc i64 %12532 to i32
  %12534 = shl i32 %12505, 16
  %12535 = and i32 %12534, 4128768
  %12536 = or i32 %12535, %12533
  store i32 %12536, i32* %12530, align 4, !tbaa !35
  %12537 = load i64, i64* %12531, align 4, !tbaa !25
  %12538 = trunc i64 %12537 to i32
  %12539 = lshr i32 %12519, 4
  %12540 = and i32 %12539, 16128
  %12541 = or i32 %12540, %12538
  store i32 %12541, i32* %12530, align 4, !tbaa !35
  %12542 = load i64, i64* %12531, align 4, !tbaa !25
  %12543 = trunc i64 %12542 to i32
  %12544 = and i32 %12519, 63
  %12545 = or i32 %12544, %12543
  store i32 %12545, i32* %12530, align 4, !tbaa !35
  %12546 = bitcast i32* %9850 to i64*
  %12547 = load i64, i64* %12546, align 8, !tbaa !25
  %12548 = trunc i64 %12547 to i32
  %12549 = shl i32 %12548, 6
  %12550 = and i32 %12549, 1056964608
  %12551 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 26
  store i32 %12550, i32* %12551, align 8, !tbaa !35
  %12552 = bitcast i32* %12551 to i64*
  %12553 = load i64, i64* %12552, align 8, !tbaa !25
  %12554 = trunc i64 %12553 to i32
  %12555 = shl i32 %12548, 10
  %12556 = and i32 %12555, 4128768
  %12557 = or i32 %12556, %12554
  store i32 %12557, i32* %12551, align 8, !tbaa !35
  %12558 = load i64, i64* %12552, align 8, !tbaa !25
  %12559 = trunc i64 %12558 to i32
  %12560 = bitcast i32* %9851 to i64*
  %12561 = load i64, i64* %12560, align 4, !tbaa !25
  %12562 = trunc i64 %12561 to i32
  %12563 = lshr i32 %12562, 10
  %12564 = and i32 %12563, 16128
  %12565 = or i32 %12564, %12559
  store i32 %12565, i32* %12551, align 8, !tbaa !35
  %12566 = load i64, i64* %12552, align 8, !tbaa !25
  %12567 = trunc i64 %12566 to i32
  %12568 = lshr i32 %12562, 6
  %12569 = and i32 %12568, 63
  %12570 = or i32 %12569, %12567
  store i32 %12570, i32* %12551, align 8, !tbaa !35
  %12571 = shl i32 %12548, 12
  %12572 = and i32 %12571, 1056964608
  %12573 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 27
  store i32 %12572, i32* %12573, align 4, !tbaa !35
  %12574 = bitcast i32* %12573 to i64*
  %12575 = load i64, i64* %12574, align 4, !tbaa !25
  %12576 = trunc i64 %12575 to i32
  %12577 = shl i32 %12548, 16
  %12578 = and i32 %12577, 4128768
  %12579 = or i32 %12578, %12576
  store i32 %12579, i32* %12573, align 4, !tbaa !35
  %12580 = load i64, i64* %12574, align 4, !tbaa !25
  %12581 = trunc i64 %12580 to i32
  %12582 = lshr i32 %12562, 4
  %12583 = and i32 %12582, 16128
  %12584 = or i32 %12583, %12581
  store i32 %12584, i32* %12573, align 4, !tbaa !35
  %12585 = load i64, i64* %12574, align 4, !tbaa !25
  %12586 = trunc i64 %12585 to i32
  %12587 = and i32 %12562, 63
  %12588 = or i32 %12587, %12586
  store i32 %12588, i32* %12573, align 4, !tbaa !35
  %12589 = bitcast i32* %10562 to i64*
  %12590 = load i64, i64* %12589, align 16, !tbaa !25
  %12591 = trunc i64 %12590 to i32
  %12592 = shl i32 %12591, 6
  %12593 = and i32 %12592, 1056964608
  %12594 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 28
  store i32 %12593, i32* %12594, align 16, !tbaa !35
  %12595 = bitcast i32* %12594 to i64*
  %12596 = load i64, i64* %12595, align 16, !tbaa !25
  %12597 = trunc i64 %12596 to i32
  %12598 = shl i32 %12591, 10
  %12599 = and i32 %12598, 4128768
  %12600 = or i32 %12599, %12597
  store i32 %12600, i32* %12594, align 16, !tbaa !35
  %12601 = load i64, i64* %12595, align 16, !tbaa !25
  %12602 = trunc i64 %12601 to i32
  %12603 = bitcast i32* %10563 to i64*
  %12604 = load i64, i64* %12603, align 4, !tbaa !25
  %12605 = trunc i64 %12604 to i32
  %12606 = lshr i32 %12605, 10
  %12607 = and i32 %12606, 16128
  %12608 = or i32 %12607, %12602
  store i32 %12608, i32* %12594, align 16, !tbaa !35
  %12609 = load i64, i64* %12595, align 16, !tbaa !25
  %12610 = trunc i64 %12609 to i32
  %12611 = lshr i32 %12605, 6
  %12612 = and i32 %12611, 63
  %12613 = or i32 %12612, %12610
  store i32 %12613, i32* %12594, align 16, !tbaa !35
  %12614 = shl i32 %12591, 12
  %12615 = and i32 %12614, 1056964608
  %12616 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 29
  store i32 %12615, i32* %12616, align 4, !tbaa !35
  %12617 = bitcast i32* %12616 to i64*
  %12618 = load i64, i64* %12617, align 4, !tbaa !25
  %12619 = trunc i64 %12618 to i32
  %12620 = shl i32 %12591, 16
  %12621 = and i32 %12620, 4128768
  %12622 = or i32 %12621, %12619
  store i32 %12622, i32* %12616, align 4, !tbaa !35
  %12623 = load i64, i64* %12617, align 4, !tbaa !25
  %12624 = trunc i64 %12623 to i32
  %12625 = lshr i32 %12605, 4
  %12626 = and i32 %12625, 16128
  %12627 = or i32 %12626, %12624
  store i32 %12627, i32* %12616, align 4, !tbaa !35
  %12628 = load i64, i64* %12617, align 4, !tbaa !25
  %12629 = trunc i64 %12628 to i32
  %12630 = and i32 %12605, 63
  %12631 = or i32 %12630, %12629
  store i32 %12631, i32* %12616, align 4, !tbaa !35
  %12632 = bitcast i32* %11274 to i64*
  %12633 = load i64, i64* %12632, align 8, !tbaa !25
  %12634 = trunc i64 %12633 to i32
  %12635 = shl i32 %12634, 6
  %12636 = and i32 %12635, 1056964608
  %12637 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 30
  store i32 %12636, i32* %12637, align 8, !tbaa !35
  %12638 = bitcast i32* %12637 to i64*
  %12639 = load i64, i64* %12638, align 8, !tbaa !25
  %12640 = trunc i64 %12639 to i32
  %12641 = shl i32 %12634, 10
  %12642 = and i32 %12641, 4128768
  %12643 = or i32 %12642, %12640
  store i32 %12643, i32* %12637, align 8, !tbaa !35
  %12644 = load i64, i64* %12638, align 8, !tbaa !25
  %12645 = trunc i64 %12644 to i32
  %12646 = load i64, i64* %11986, align 4, !tbaa !25
  %12647 = trunc i64 %12646 to i32
  %12648 = lshr i32 %12647, 10
  %12649 = and i32 %12648, 16128
  %12650 = or i32 %12649, %12645
  store i32 %12650, i32* %12637, align 8, !tbaa !35
  %12651 = load i64, i64* %12638, align 8, !tbaa !25
  %12652 = trunc i64 %12651 to i32
  %12653 = lshr i32 %12647, 6
  %12654 = and i32 %12653, 63
  %12655 = or i32 %12654, %12652
  store i32 %12655, i32* %12637, align 8, !tbaa !35
  %12656 = shl i32 %12634, 12
  %12657 = and i32 %12656, 1056964608
  %12658 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 31
  store i32 %12657, i32* %12658, align 4, !tbaa !35
  %12659 = bitcast i32* %12658 to i64*
  %12660 = load i64, i64* %12659, align 4, !tbaa !25
  %12661 = trunc i64 %12660 to i32
  %12662 = shl i32 %12634, 16
  %12663 = and i32 %12662, 4128768
  %12664 = or i32 %12663, %12661
  store i32 %12664, i32* %12658, align 4, !tbaa !35
  %12665 = load i64, i64* %12659, align 4, !tbaa !25
  %12666 = trunc i64 %12665 to i32
  %12667 = lshr i32 %12647, 4
  %12668 = and i32 %12667, 16128
  %12669 = or i32 %12668, %12666
  store i32 %12669, i32* %12658, align 4, !tbaa !35
  %12670 = load i64, i64* %12659, align 4, !tbaa !25
  %12671 = trunc i64 %12670 to i32
  %12672 = and i32 %12647, 63
  %12673 = or i32 %12672, %12671
  store i32 %12673, i32* %12658, align 4, !tbaa !35
  %12674 = load i64, i64* %11993, align 16, !tbaa !25
  %12675 = trunc i64 %12674 to i32
  store i32 %12675, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 0), align 16, !tbaa !35
  %12676 = load i64, i64* %12015, align 4, !tbaa !25
  %12677 = trunc i64 %12676 to i32
  store i32 %12677, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 1), align 4, !tbaa !35
  %12678 = load i64, i64* %12036, align 8, !tbaa !25
  %12679 = trunc i64 %12678 to i32
  store i32 %12679, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 2), align 8, !tbaa !35
  %12680 = load i64, i64* %12058, align 4, !tbaa !25
  %12681 = trunc i64 %12680 to i32
  store i32 %12681, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 3), align 4, !tbaa !35
  %12682 = load i64, i64* %12079, align 16, !tbaa !25
  %12683 = trunc i64 %12682 to i32
  store i32 %12683, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 4), align 16, !tbaa !35
  %12684 = load i64, i64* %12101, align 4, !tbaa !25
  %12685 = trunc i64 %12684 to i32
  store i32 %12685, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 5), align 4, !tbaa !35
  %12686 = load i64, i64* %12122, align 8, !tbaa !25
  %12687 = trunc i64 %12686 to i32
  store i32 %12687, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 6), align 8, !tbaa !35
  %12688 = load i64, i64* %12144, align 4, !tbaa !25
  %12689 = trunc i64 %12688 to i32
  store i32 %12689, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 7), align 4, !tbaa !35
  %12690 = load i64, i64* %12165, align 16, !tbaa !25
  %12691 = trunc i64 %12690 to i32
  store i32 %12691, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 8), align 16, !tbaa !35
  %12692 = load i64, i64* %12187, align 4, !tbaa !25
  %12693 = trunc i64 %12692 to i32
  store i32 %12693, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 9), align 4, !tbaa !35
  %12694 = load i64, i64* %12208, align 8, !tbaa !25
  %12695 = trunc i64 %12694 to i32
  store i32 %12695, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 10), align 8, !tbaa !35
  %12696 = load i64, i64* %12230, align 4, !tbaa !25
  %12697 = trunc i64 %12696 to i32
  store i32 %12697, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 11), align 4, !tbaa !35
  %12698 = load i64, i64* %12251, align 16, !tbaa !25
  %12699 = trunc i64 %12698 to i32
  store i32 %12699, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 12), align 16, !tbaa !35
  %12700 = load i64, i64* %12273, align 4, !tbaa !25
  %12701 = trunc i64 %12700 to i32
  store i32 %12701, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 13), align 4, !tbaa !35
  %12702 = load i64, i64* %12294, align 8, !tbaa !25
  %12703 = trunc i64 %12702 to i32
  store i32 %12703, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 14), align 8, !tbaa !35
  %12704 = load i64, i64* %12316, align 4, !tbaa !25
  %12705 = trunc i64 %12704 to i32
  store i32 %12705, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 15), align 4, !tbaa !35
  %12706 = load i64, i64* %12337, align 16, !tbaa !25
  %12707 = trunc i64 %12706 to i32
  store i32 %12707, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 16), align 16, !tbaa !35
  %12708 = load i64, i64* %12359, align 4, !tbaa !25
  %12709 = trunc i64 %12708 to i32
  store i32 %12709, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 17), align 4, !tbaa !35
  %12710 = load i64, i64* %12380, align 8, !tbaa !25
  %12711 = trunc i64 %12710 to i32
  store i32 %12711, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 18), align 8, !tbaa !35
  %12712 = load i64, i64* %12402, align 4, !tbaa !25
  %12713 = trunc i64 %12712 to i32
  store i32 %12713, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 19), align 4, !tbaa !35
  %12714 = load i64, i64* %12423, align 16, !tbaa !25
  %12715 = trunc i64 %12714 to i32
  store i32 %12715, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 20), align 16, !tbaa !35
  %12716 = load i64, i64* %12445, align 4, !tbaa !25
  %12717 = trunc i64 %12716 to i32
  store i32 %12717, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 21), align 4, !tbaa !35
  %12718 = load i64, i64* %12466, align 8, !tbaa !25
  %12719 = trunc i64 %12718 to i32
  store i32 %12719, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 22), align 8, !tbaa !35
  %12720 = load i64, i64* %12488, align 4, !tbaa !25
  %12721 = trunc i64 %12720 to i32
  store i32 %12721, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 23), align 4, !tbaa !35
  %12722 = load i64, i64* %12509, align 16, !tbaa !25
  %12723 = trunc i64 %12722 to i32
  store i32 %12723, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 24), align 16, !tbaa !35
  %12724 = load i64, i64* %12531, align 4, !tbaa !25
  %12725 = trunc i64 %12724 to i32
  store i32 %12725, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 25), align 4, !tbaa !35
  %12726 = load i64, i64* %12552, align 8, !tbaa !25
  %12727 = trunc i64 %12726 to i32
  store i32 %12727, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 26), align 8, !tbaa !35
  %12728 = load i64, i64* %12574, align 4, !tbaa !25
  %12729 = trunc i64 %12728 to i32
  store i32 %12729, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 27), align 4, !tbaa !35
  %12730 = load i64, i64* %12595, align 16, !tbaa !25
  %12731 = trunc i64 %12730 to i32
  store i32 %12731, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 28), align 16, !tbaa !35
  %12732 = load i64, i64* %12617, align 4, !tbaa !25
  %12733 = trunc i64 %12732 to i32
  store i32 %12733, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 29), align 4, !tbaa !35
  %12734 = load i64, i64* %12638, align 8, !tbaa !25
  %12735 = trunc i64 %12734 to i32
  store i32 %12735, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 30), align 8, !tbaa !35
  %12736 = load i64, i64* %12659, align 4, !tbaa !25
  %12737 = trunc i64 %12736 to i32
  store i32 %12737, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 31), align 4, !tbaa !35
  %12738 = load i64, i64* bitcast ([32 x i32]* @KnL to i64*), align 16, !tbaa !25
  %12739 = trunc i64 %12738 to i32
  %12740 = bitcast [132 x i8]* %5 to i32*
  store i32 %12739, i32* %12740, align 8, !tbaa !35
  %12741 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %12742 = trunc i64 %12741 to i32
  %12743 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 4
  %12744 = bitcast i8* %12743 to i32*
  store i32 %12742, i32* %12744, align 4, !tbaa !35
  %12745 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %12746 = trunc i64 %12745 to i32
  %12747 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 8
  %12748 = bitcast i8* %12747 to i32*
  store i32 %12746, i32* %12748, align 8, !tbaa !35
  %12749 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %12750 = trunc i64 %12749 to i32
  %12751 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 12
  %12752 = bitcast i8* %12751 to i32*
  store i32 %12750, i32* %12752, align 4, !tbaa !35
  %12753 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 4) to i64*), align 16, !tbaa !25
  %12754 = trunc i64 %12753 to i32
  %12755 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 16
  %12756 = bitcast i8* %12755 to i32*
  store i32 %12754, i32* %12756, align 8, !tbaa !35
  %12757 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %12758 = trunc i64 %12757 to i32
  %12759 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 20
  %12760 = bitcast i8* %12759 to i32*
  store i32 %12758, i32* %12760, align 4, !tbaa !35
  %12761 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %12762 = trunc i64 %12761 to i32
  %12763 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 24
  %12764 = bitcast i8* %12763 to i32*
  store i32 %12762, i32* %12764, align 8, !tbaa !35
  %12765 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %12766 = trunc i64 %12765 to i32
  %12767 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 28
  %12768 = bitcast i8* %12767 to i32*
  store i32 %12766, i32* %12768, align 4, !tbaa !35
  %12769 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 8) to i64*), align 16, !tbaa !25
  %12770 = trunc i64 %12769 to i32
  %12771 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 32
  %12772 = bitcast i8* %12771 to i32*
  store i32 %12770, i32* %12772, align 8, !tbaa !35
  %12773 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 9) to i64*), align 8, !tbaa !25
  %12774 = trunc i64 %12773 to i32
  %12775 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 36
  %12776 = bitcast i8* %12775 to i32*
  store i32 %12774, i32* %12776, align 4, !tbaa !35
  %12777 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 10) to i64*), align 8, !tbaa !25
  %12778 = trunc i64 %12777 to i32
  %12779 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 40
  %12780 = bitcast i8* %12779 to i32*
  store i32 %12778, i32* %12780, align 8, !tbaa !35
  %12781 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 11) to i64*), align 8, !tbaa !25
  %12782 = trunc i64 %12781 to i32
  %12783 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 44
  %12784 = bitcast i8* %12783 to i32*
  store i32 %12782, i32* %12784, align 4, !tbaa !35
  %12785 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 12) to i64*), align 16, !tbaa !25
  %12786 = trunc i64 %12785 to i32
  %12787 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 48
  %12788 = bitcast i8* %12787 to i32*
  store i32 %12786, i32* %12788, align 8, !tbaa !35
  %12789 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 13) to i64*), align 8, !tbaa !25
  %12790 = trunc i64 %12789 to i32
  %12791 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 52
  %12792 = bitcast i8* %12791 to i32*
  store i32 %12790, i32* %12792, align 4, !tbaa !35
  %12793 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 14) to i64*), align 8, !tbaa !25
  %12794 = trunc i64 %12793 to i32
  %12795 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 56
  %12796 = bitcast i8* %12795 to i32*
  store i32 %12794, i32* %12796, align 8, !tbaa !35
  %12797 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 15) to i64*), align 8, !tbaa !25
  %12798 = trunc i64 %12797 to i32
  %12799 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 60
  %12800 = bitcast i8* %12799 to i32*
  store i32 %12798, i32* %12800, align 4, !tbaa !35
  %12801 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 16) to i64*), align 16, !tbaa !25
  %12802 = trunc i64 %12801 to i32
  %12803 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 64
  %12804 = bitcast i8* %12803 to i32*
  store i32 %12802, i32* %12804, align 8, !tbaa !35
  %12805 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 17) to i64*), align 8, !tbaa !25
  %12806 = trunc i64 %12805 to i32
  %12807 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 68
  %12808 = bitcast i8* %12807 to i32*
  store i32 %12806, i32* %12808, align 4, !tbaa !35
  %12809 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 18) to i64*), align 8, !tbaa !25
  %12810 = trunc i64 %12809 to i32
  %12811 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 72
  %12812 = bitcast i8* %12811 to i32*
  store i32 %12810, i32* %12812, align 8, !tbaa !35
  %12813 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 19) to i64*), align 8, !tbaa !25
  %12814 = trunc i64 %12813 to i32
  %12815 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 76
  %12816 = bitcast i8* %12815 to i32*
  store i32 %12814, i32* %12816, align 4, !tbaa !35
  %12817 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 20) to i64*), align 16, !tbaa !25
  %12818 = trunc i64 %12817 to i32
  %12819 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 80
  %12820 = bitcast i8* %12819 to i32*
  store i32 %12818, i32* %12820, align 8, !tbaa !35
  %12821 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 21) to i64*), align 8, !tbaa !25
  %12822 = trunc i64 %12821 to i32
  %12823 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 84
  %12824 = bitcast i8* %12823 to i32*
  store i32 %12822, i32* %12824, align 4, !tbaa !35
  %12825 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 22) to i64*), align 8, !tbaa !25
  %12826 = trunc i64 %12825 to i32
  %12827 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 88
  %12828 = bitcast i8* %12827 to i32*
  store i32 %12826, i32* %12828, align 8, !tbaa !35
  %12829 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 23) to i64*), align 8, !tbaa !25
  %12830 = trunc i64 %12829 to i32
  %12831 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 92
  %12832 = bitcast i8* %12831 to i32*
  store i32 %12830, i32* %12832, align 4, !tbaa !35
  %12833 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 24) to i64*), align 16, !tbaa !25
  %12834 = trunc i64 %12833 to i32
  %12835 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 96
  %12836 = bitcast i8* %12835 to i32*
  store i32 %12834, i32* %12836, align 8, !tbaa !35
  %12837 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 25) to i64*), align 8, !tbaa !25
  %12838 = trunc i64 %12837 to i32
  %12839 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 100
  %12840 = bitcast i8* %12839 to i32*
  store i32 %12838, i32* %12840, align 4, !tbaa !35
  %12841 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 26) to i64*), align 8, !tbaa !25
  %12842 = trunc i64 %12841 to i32
  %12843 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 104
  %12844 = bitcast i8* %12843 to i32*
  store i32 %12842, i32* %12844, align 8, !tbaa !35
  %12845 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 27) to i64*), align 8, !tbaa !25
  %12846 = trunc i64 %12845 to i32
  %12847 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 108
  %12848 = bitcast i8* %12847 to i32*
  store i32 %12846, i32* %12848, align 4, !tbaa !35
  %12849 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 28) to i64*), align 16, !tbaa !25
  %12850 = trunc i64 %12849 to i32
  %12851 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 112
  %12852 = bitcast i8* %12851 to i32*
  store i32 %12850, i32* %12852, align 8, !tbaa !35
  %12853 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 29) to i64*), align 8, !tbaa !25
  %12854 = trunc i64 %12853 to i32
  %12855 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 116
  %12856 = bitcast i8* %12855 to i32*
  store i32 %12854, i32* %12856, align 4, !tbaa !35
  %12857 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 30) to i64*), align 8, !tbaa !25
  %12858 = trunc i64 %12857 to i32
  %12859 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 120
  %12860 = bitcast i8* %12859 to i32*
  store i32 %12858, i32* %12860, align 8, !tbaa !35
  %12861 = load i64, i64* bitcast (i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KnL, i64 0, i64 31) to i64*), align 8, !tbaa !25
  %12862 = trunc i64 %12861 to i32
  %12863 = getelementptr inbounds [132 x i8], [132 x i8]* %5, i64 0, i64 124
  %12864 = bitcast i8* %12863 to i32*
  store i32 %12862, i32* %12864, align 4, !tbaa !35
  %12865 = load i64, i64* bitcast ([8 x i8]* @in to i64*), align 8, !tbaa !25
  %12866 = shl i64 %12865, 24
  %12867 = load i64, i64* bitcast (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @in, i64 0, i64 1) to i64*), align 8, !tbaa !25
  %12868 = shl i64 %12867, 16
  %12869 = and i64 %12868, 16711680
  %12870 = load i64, i64* bitcast (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @in, i64 0, i64 2) to i64*), align 8, !tbaa !25
  %12871 = shl i64 %12870, 8
  %12872 = and i64 %12871, 65280
  %12873 = load i64, i64* bitcast (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @in, i64 0, i64 3) to i64*), align 8, !tbaa !25
  %12874 = and i64 %12873, 255
  %12875 = load i64, i64* bitcast (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @in, i64 0, i64 4) to i64*), align 8, !tbaa !25
  %12876 = trunc i64 %12875 to i32
  %12877 = shl i32 %12876, 24
  %12878 = load i64, i64* bitcast (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @in, i64 0, i64 5) to i64*), align 8, !tbaa !25
  %12879 = trunc i64 %12878 to i32
  %12880 = shl i32 %12879, 16
  %12881 = and i32 %12880, 16711680
  %12882 = or i32 %12881, %12877
  %12883 = load i64, i64* bitcast (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @in, i64 0, i64 6) to i64*), align 8, !tbaa !25
  %12884 = trunc i64 %12883 to i32
  %12885 = shl i32 %12884, 8
  %12886 = and i32 %12885, 65280
  %12887 = or i32 %12882, %12886
  %12888 = load i64, i64* bitcast (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @in, i64 0, i64 7) to i64*), align 8, !tbaa !25
  %12889 = trunc i64 %12888 to i32
  %12890 = and i32 %12889, 255
  %12891 = or i32 %12887, %12890
  %12892 = or i64 %12869, %12866
  %12893 = or i64 %12892, %12872
  %12894 = or i64 %12893, %12874
  %12895 = trunc i64 %12894 to i32
  %12896 = lshr i32 %12895, 4
  %12897 = xor i32 %12891, %12896
  %12898 = and i32 %12897, 252645135
  %12899 = xor i32 %12898, %12891
  %12900 = shl nuw i32 %12898, 4
  %12901 = xor i32 %12900, %12895
  %12902 = lshr i32 %12901, 16
  %12903 = and i32 %12899, 65535
  %12904 = xor i32 %12902, %12903
  %12905 = xor i32 %12904, %12899
  %12906 = shl nuw i32 %12904, 16
  %12907 = xor i32 %12906, %12901
  %12908 = lshr i32 %12905, 2
  %12909 = xor i32 %12908, %12907
  %12910 = and i32 %12909, 858993459
  %12911 = xor i32 %12910, %12907
  %12912 = shl nuw i32 %12910, 2
  %12913 = xor i32 %12912, %12905
  %12914 = lshr i32 %12913, 8
  %12915 = xor i32 %12914, %12911
  %12916 = and i32 %12915, 16711935
  %12917 = xor i32 %12916, %12911
  %12918 = shl nuw i32 %12916, 8
  %12919 = xor i32 %12918, %12913
  %12920 = tail call i32 @llvm.fshl.i32(i32 %12919, i32 %12919, i32 1)
  %12921 = xor i32 %12920, %12917
  %12922 = and i32 %12921, -1431655766
  %12923 = xor i32 %12922, %12917
  %12924 = xor i32 %12922, %12920
  %12925 = tail call i32 @llvm.fshl.i32(i32 %12923, i32 %12923, i32 1)
  %12926 = tail call i32 @llvm.fshl.i32(i32 %12924, i32 %12924, i32 28)
  %12927 = bitcast [132 x i8]* %5 to i64*
  %12928 = load i64, i64* %12927, align 8, !tbaa !25
  %12929 = trunc i64 %12928 to i32
  %12930 = xor i32 %12926, %12929
  %12931 = and i32 %12930, 63
  %12932 = zext i32 %12931 to i64
  %12933 = getelementptr inbounds [64 x i32], [64 x i32]* @SP7, i64 0, i64 %12932
  %12934 = bitcast i32* %12933 to i64*
  %12935 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %12934, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6919, i64 0, i64 0), i32 1, i32 undef) #13
  %12936 = lshr i32 %12930, 8
  %12937 = and i32 %12936, 63
  %12938 = zext i32 %12937 to i64
  %12939 = getelementptr inbounds [64 x i32], [64 x i32]* @SP5, i64 0, i64 %12938
  %12940 = bitcast i32* %12939 to i64*
  %12941 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %12940, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6920, i64 0, i64 0), i32 1, i32 undef) #13
  %12942 = or i64 %12941, %12935
  %12943 = lshr i32 %12930, 16
  %12944 = and i32 %12943, 63
  %12945 = zext i32 %12944 to i64
  %12946 = getelementptr inbounds [64 x i32], [64 x i32]* @SP3, i64 0, i64 %12945
  %12947 = bitcast i32* %12946 to i64*
  %12948 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %12947, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6921, i64 0, i64 0), i32 1, i32 undef) #13
  %12949 = or i64 %12942, %12948
  %12950 = lshr i32 %12930, 24
  %12951 = and i32 %12950, 63
  %12952 = zext i32 %12951 to i64
  %12953 = getelementptr inbounds [64 x i32], [64 x i32]* @SP1, i64 0, i64 %12952
  %12954 = bitcast i32* %12953 to i64*
  %12955 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %12954, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6922, i64 0, i64 0), i32 1, i32 undef) #13
  %12956 = or i64 %12949, %12955
  %12957 = bitcast i8* %12743 to i64*
  %12958 = load i64, i64* %12957, align 4, !tbaa !25
  %12959 = trunc i64 %12958 to i32
  %12960 = xor i32 %12924, %12959
  %12961 = and i32 %12960, 63
  %12962 = zext i32 %12961 to i64
  %12963 = getelementptr inbounds [64 x i32], [64 x i32]* @SP8, i64 0, i64 %12962
  %12964 = bitcast i32* %12963 to i64*
  %12965 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %12964, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6923, i64 0, i64 0), i32 1, i32 undef) #13
  %12966 = or i64 %12956, %12965
  %12967 = lshr i32 %12960, 8
  %12968 = and i32 %12967, 63
  %12969 = zext i32 %12968 to i64
  %12970 = getelementptr inbounds [64 x i32], [64 x i32]* @SP6, i64 0, i64 %12969
  %12971 = bitcast i32* %12970 to i64*
  %12972 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %12971, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6924, i64 0, i64 0), i32 1, i32 undef) #13
  %12973 = or i64 %12966, %12972
  %12974 = lshr i32 %12960, 16
  %12975 = and i32 %12974, 63
  %12976 = zext i32 %12975 to i64
  %12977 = getelementptr inbounds [64 x i32], [64 x i32]* @SP4, i64 0, i64 %12976
  %12978 = bitcast i32* %12977 to i64*
  %12979 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %12978, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6925, i64 0, i64 0), i32 1, i32 undef) #13
  %12980 = or i64 %12973, %12979
  %12981 = lshr i32 %12960, 24
  %12982 = and i32 %12981, 63
  %12983 = zext i32 %12982 to i64
  %12984 = getelementptr inbounds [64 x i32], [64 x i32]* @SP2, i64 0, i64 %12983
  %12985 = bitcast i32* %12984 to i64*
  %12986 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %12985, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6926, i64 0, i64 0), i32 1, i32 undef) #13
  %12987 = or i64 %12980, %12986
  %12988 = trunc i64 %12987 to i32
  %12989 = xor i32 %12925, %12988
  %12990 = tail call i32 @llvm.fshl.i32(i32 %12989, i32 %12989, i32 28)
  %12991 = bitcast i8* %12747 to i64*
  %12992 = load i64, i64* %12991, align 8, !tbaa !25
  %12993 = trunc i64 %12992 to i32
  %12994 = xor i32 %12990, %12993
  %12995 = and i32 %12994, 63
  %12996 = zext i32 %12995 to i64
  %12997 = getelementptr inbounds [64 x i32], [64 x i32]* @SP7, i64 0, i64 %12996
  %12998 = bitcast i32* %12997 to i64*
  %12999 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %12998, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6919, i64 0, i64 0), i32 1, i32 undef) #13
  %13000 = lshr i32 %12994, 8
  %13001 = and i32 %13000, 63
  %13002 = zext i32 %13001 to i64
  %13003 = getelementptr inbounds [64 x i32], [64 x i32]* @SP5, i64 0, i64 %13002
  %13004 = bitcast i32* %13003 to i64*
  %13005 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13004, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6920, i64 0, i64 0), i32 1, i32 undef) #13
  %13006 = or i64 %13005, %12999
  %13007 = lshr i32 %12994, 16
  %13008 = and i32 %13007, 63
  %13009 = zext i32 %13008 to i64
  %13010 = getelementptr inbounds [64 x i32], [64 x i32]* @SP3, i64 0, i64 %13009
  %13011 = bitcast i32* %13010 to i64*
  %13012 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13011, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6921, i64 0, i64 0), i32 1, i32 undef) #13
  %13013 = or i64 %13006, %13012
  %13014 = lshr i32 %12994, 24
  %13015 = and i32 %13014, 63
  %13016 = zext i32 %13015 to i64
  %13017 = getelementptr inbounds [64 x i32], [64 x i32]* @SP1, i64 0, i64 %13016
  %13018 = bitcast i32* %13017 to i64*
  %13019 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13018, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6922, i64 0, i64 0), i32 1, i32 undef) #13
  %13020 = or i64 %13013, %13019
  %13021 = bitcast i8* %12751 to i64*
  %13022 = load i64, i64* %13021, align 4, !tbaa !25
  %13023 = trunc i64 %13022 to i32
  %13024 = xor i32 %12989, %13023
  %13025 = and i32 %13024, 63
  %13026 = zext i32 %13025 to i64
  %13027 = getelementptr inbounds [64 x i32], [64 x i32]* @SP8, i64 0, i64 %13026
  %13028 = bitcast i32* %13027 to i64*
  %13029 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13028, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6923, i64 0, i64 0), i32 1, i32 undef) #13
  %13030 = or i64 %13020, %13029
  %13031 = lshr i32 %13024, 8
  %13032 = and i32 %13031, 63
  %13033 = zext i32 %13032 to i64
  %13034 = getelementptr inbounds [64 x i32], [64 x i32]* @SP6, i64 0, i64 %13033
  %13035 = bitcast i32* %13034 to i64*
  %13036 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13035, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6924, i64 0, i64 0), i32 1, i32 undef) #13
  %13037 = or i64 %13030, %13036
  %13038 = lshr i32 %13024, 16
  %13039 = and i32 %13038, 63
  %13040 = zext i32 %13039 to i64
  %13041 = getelementptr inbounds [64 x i32], [64 x i32]* @SP4, i64 0, i64 %13040
  %13042 = bitcast i32* %13041 to i64*
  %13043 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13042, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6925, i64 0, i64 0), i32 1, i32 undef) #13
  %13044 = or i64 %13037, %13043
  %13045 = lshr i32 %13024, 24
  %13046 = and i32 %13045, 63
  %13047 = zext i32 %13046 to i64
  %13048 = getelementptr inbounds [64 x i32], [64 x i32]* @SP2, i64 0, i64 %13047
  %13049 = bitcast i32* %13048 to i64*
  %13050 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13049, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6926, i64 0, i64 0), i32 1, i32 undef) #13
  %13051 = or i64 %13044, %13050
  %13052 = trunc i64 %13051 to i32
  %13053 = xor i32 %12924, %13052
  %13054 = tail call i32 @llvm.fshl.i32(i32 %13053, i32 %13053, i32 28)
  %13055 = bitcast i8* %12755 to i64*
  %13056 = load i64, i64* %13055, align 8, !tbaa !25
  %13057 = trunc i64 %13056 to i32
  %13058 = xor i32 %13054, %13057
  %13059 = and i32 %13058, 63
  %13060 = zext i32 %13059 to i64
  %13061 = getelementptr inbounds [64 x i32], [64 x i32]* @SP7, i64 0, i64 %13060
  %13062 = bitcast i32* %13061 to i64*
  %13063 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13062, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6919, i64 0, i64 0), i32 1, i32 undef) #13
  %13064 = lshr i32 %13058, 8
  %13065 = and i32 %13064, 63
  %13066 = zext i32 %13065 to i64
  %13067 = getelementptr inbounds [64 x i32], [64 x i32]* @SP5, i64 0, i64 %13066
  %13068 = bitcast i32* %13067 to i64*
  %13069 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13068, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6920, i64 0, i64 0), i32 1, i32 undef) #13
  %13070 = or i64 %13069, %13063
  %13071 = lshr i32 %13058, 16
  %13072 = and i32 %13071, 63
  %13073 = zext i32 %13072 to i64
  %13074 = getelementptr inbounds [64 x i32], [64 x i32]* @SP3, i64 0, i64 %13073
  %13075 = bitcast i32* %13074 to i64*
  %13076 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13075, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6921, i64 0, i64 0), i32 1, i32 undef) #13
  %13077 = or i64 %13070, %13076
  %13078 = lshr i32 %13058, 24
  %13079 = and i32 %13078, 63
  %13080 = zext i32 %13079 to i64
  %13081 = getelementptr inbounds [64 x i32], [64 x i32]* @SP1, i64 0, i64 %13080
  %13082 = bitcast i32* %13081 to i64*
  %13083 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13082, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6922, i64 0, i64 0), i32 1, i32 undef) #13
  %13084 = or i64 %13077, %13083
  %13085 = bitcast i8* %12759 to i64*
  %13086 = load i64, i64* %13085, align 4, !tbaa !25
  %13087 = trunc i64 %13086 to i32
  %13088 = xor i32 %13053, %13087
  %13089 = and i32 %13088, 63
  %13090 = zext i32 %13089 to i64
  %13091 = getelementptr inbounds [64 x i32], [64 x i32]* @SP8, i64 0, i64 %13090
  %13092 = bitcast i32* %13091 to i64*
  %13093 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13092, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6923, i64 0, i64 0), i32 1, i32 undef) #13
  %13094 = or i64 %13084, %13093
  %13095 = lshr i32 %13088, 8
  %13096 = and i32 %13095, 63
  %13097 = zext i32 %13096 to i64
  %13098 = getelementptr inbounds [64 x i32], [64 x i32]* @SP6, i64 0, i64 %13097
  %13099 = bitcast i32* %13098 to i64*
  %13100 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13099, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6924, i64 0, i64 0), i32 1, i32 undef) #13
  %13101 = or i64 %13094, %13100
  %13102 = lshr i32 %13088, 16
  %13103 = and i32 %13102, 63
  %13104 = zext i32 %13103 to i64
  %13105 = getelementptr inbounds [64 x i32], [64 x i32]* @SP4, i64 0, i64 %13104
  %13106 = bitcast i32* %13105 to i64*
  %13107 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13106, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6925, i64 0, i64 0), i32 1, i32 undef) #13
  %13108 = or i64 %13101, %13107
  %13109 = lshr i32 %13088, 24
  %13110 = and i32 %13109, 63
  %13111 = zext i32 %13110 to i64
  %13112 = getelementptr inbounds [64 x i32], [64 x i32]* @SP2, i64 0, i64 %13111
  %13113 = bitcast i32* %13112 to i64*
  %13114 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13113, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6926, i64 0, i64 0), i32 1, i32 undef) #13
  %13115 = or i64 %13108, %13114
  %13116 = trunc i64 %13115 to i32
  %13117 = xor i32 %12989, %13116
  %13118 = tail call i32 @llvm.fshl.i32(i32 %13117, i32 %13117, i32 28)
  %13119 = bitcast i8* %12763 to i64*
  %13120 = load i64, i64* %13119, align 8, !tbaa !25
  %13121 = trunc i64 %13120 to i32
  %13122 = xor i32 %13118, %13121
  %13123 = and i32 %13122, 63
  %13124 = zext i32 %13123 to i64
  %13125 = getelementptr inbounds [64 x i32], [64 x i32]* @SP7, i64 0, i64 %13124
  %13126 = bitcast i32* %13125 to i64*
  %13127 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13126, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6919, i64 0, i64 0), i32 1, i32 undef) #13
  %13128 = lshr i32 %13122, 8
  %13129 = and i32 %13128, 63
  %13130 = zext i32 %13129 to i64
  %13131 = getelementptr inbounds [64 x i32], [64 x i32]* @SP5, i64 0, i64 %13130
  %13132 = bitcast i32* %13131 to i64*
  %13133 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13132, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6920, i64 0, i64 0), i32 1, i32 undef) #13
  %13134 = or i64 %13133, %13127
  %13135 = lshr i32 %13122, 16
  %13136 = and i32 %13135, 63
  %13137 = zext i32 %13136 to i64
  %13138 = getelementptr inbounds [64 x i32], [64 x i32]* @SP3, i64 0, i64 %13137
  %13139 = bitcast i32* %13138 to i64*
  %13140 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13139, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6921, i64 0, i64 0), i32 1, i32 undef) #13
  %13141 = or i64 %13134, %13140
  %13142 = lshr i32 %13122, 24
  %13143 = and i32 %13142, 63
  %13144 = zext i32 %13143 to i64
  %13145 = getelementptr inbounds [64 x i32], [64 x i32]* @SP1, i64 0, i64 %13144
  %13146 = bitcast i32* %13145 to i64*
  %13147 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13146, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6922, i64 0, i64 0), i32 1, i32 undef) #13
  %13148 = or i64 %13141, %13147
  %13149 = bitcast i8* %12767 to i64*
  %13150 = load i64, i64* %13149, align 4, !tbaa !25
  %13151 = trunc i64 %13150 to i32
  %13152 = xor i32 %13117, %13151
  %13153 = and i32 %13152, 63
  %13154 = zext i32 %13153 to i64
  %13155 = getelementptr inbounds [64 x i32], [64 x i32]* @SP8, i64 0, i64 %13154
  %13156 = bitcast i32* %13155 to i64*
  %13157 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13156, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6923, i64 0, i64 0), i32 1, i32 undef) #13
  %13158 = or i64 %13148, %13157
  %13159 = lshr i32 %13152, 8
  %13160 = and i32 %13159, 63
  %13161 = zext i32 %13160 to i64
  %13162 = getelementptr inbounds [64 x i32], [64 x i32]* @SP6, i64 0, i64 %13161
  %13163 = bitcast i32* %13162 to i64*
  %13164 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13163, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6924, i64 0, i64 0), i32 1, i32 undef) #13
  %13165 = or i64 %13158, %13164
  %13166 = lshr i32 %13152, 16
  %13167 = and i32 %13166, 63
  %13168 = zext i32 %13167 to i64
  %13169 = getelementptr inbounds [64 x i32], [64 x i32]* @SP4, i64 0, i64 %13168
  %13170 = bitcast i32* %13169 to i64*
  %13171 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13170, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6925, i64 0, i64 0), i32 1, i32 undef) #13
  %13172 = or i64 %13165, %13171
  %13173 = lshr i32 %13152, 24
  %13174 = and i32 %13173, 63
  %13175 = zext i32 %13174 to i64
  %13176 = getelementptr inbounds [64 x i32], [64 x i32]* @SP2, i64 0, i64 %13175
  %13177 = bitcast i32* %13176 to i64*
  %13178 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13177, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6926, i64 0, i64 0), i32 1, i32 undef) #13
  %13179 = or i64 %13172, %13178
  %13180 = trunc i64 %13179 to i32
  %13181 = xor i32 %13053, %13180
  %13182 = tail call i32 @llvm.fshl.i32(i32 %13181, i32 %13181, i32 28)
  %13183 = bitcast i8* %12771 to i64*
  %13184 = load i64, i64* %13183, align 8, !tbaa !25
  %13185 = trunc i64 %13184 to i32
  %13186 = xor i32 %13182, %13185
  %13187 = and i32 %13186, 63
  %13188 = zext i32 %13187 to i64
  %13189 = getelementptr inbounds [64 x i32], [64 x i32]* @SP7, i64 0, i64 %13188
  %13190 = bitcast i32* %13189 to i64*
  %13191 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13190, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6919, i64 0, i64 0), i32 1, i32 undef) #13
  %13192 = lshr i32 %13186, 8
  %13193 = and i32 %13192, 63
  %13194 = zext i32 %13193 to i64
  %13195 = getelementptr inbounds [64 x i32], [64 x i32]* @SP5, i64 0, i64 %13194
  %13196 = bitcast i32* %13195 to i64*
  %13197 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13196, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6920, i64 0, i64 0), i32 1, i32 undef) #13
  %13198 = or i64 %13197, %13191
  %13199 = lshr i32 %13186, 16
  %13200 = and i32 %13199, 63
  %13201 = zext i32 %13200 to i64
  %13202 = getelementptr inbounds [64 x i32], [64 x i32]* @SP3, i64 0, i64 %13201
  %13203 = bitcast i32* %13202 to i64*
  %13204 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13203, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6921, i64 0, i64 0), i32 1, i32 undef) #13
  %13205 = or i64 %13198, %13204
  %13206 = lshr i32 %13186, 24
  %13207 = and i32 %13206, 63
  %13208 = zext i32 %13207 to i64
  %13209 = getelementptr inbounds [64 x i32], [64 x i32]* @SP1, i64 0, i64 %13208
  %13210 = bitcast i32* %13209 to i64*
  %13211 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13210, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6922, i64 0, i64 0), i32 1, i32 undef) #13
  %13212 = or i64 %13205, %13211
  %13213 = bitcast i8* %12775 to i64*
  %13214 = load i64, i64* %13213, align 4, !tbaa !25
  %13215 = trunc i64 %13214 to i32
  %13216 = xor i32 %13181, %13215
  %13217 = and i32 %13216, 63
  %13218 = zext i32 %13217 to i64
  %13219 = getelementptr inbounds [64 x i32], [64 x i32]* @SP8, i64 0, i64 %13218
  %13220 = bitcast i32* %13219 to i64*
  %13221 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13220, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6923, i64 0, i64 0), i32 1, i32 undef) #13
  %13222 = or i64 %13212, %13221
  %13223 = lshr i32 %13216, 8
  %13224 = and i32 %13223, 63
  %13225 = zext i32 %13224 to i64
  %13226 = getelementptr inbounds [64 x i32], [64 x i32]* @SP6, i64 0, i64 %13225
  %13227 = bitcast i32* %13226 to i64*
  %13228 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13227, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6924, i64 0, i64 0), i32 1, i32 undef) #13
  %13229 = or i64 %13222, %13228
  %13230 = lshr i32 %13216, 16
  %13231 = and i32 %13230, 63
  %13232 = zext i32 %13231 to i64
  %13233 = getelementptr inbounds [64 x i32], [64 x i32]* @SP4, i64 0, i64 %13232
  %13234 = bitcast i32* %13233 to i64*
  %13235 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13234, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6925, i64 0, i64 0), i32 1, i32 undef) #13
  %13236 = or i64 %13229, %13235
  %13237 = lshr i32 %13216, 24
  %13238 = and i32 %13237, 63
  %13239 = zext i32 %13238 to i64
  %13240 = getelementptr inbounds [64 x i32], [64 x i32]* @SP2, i64 0, i64 %13239
  %13241 = bitcast i32* %13240 to i64*
  %13242 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13241, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6926, i64 0, i64 0), i32 1, i32 undef) #13
  %13243 = or i64 %13236, %13242
  %13244 = trunc i64 %13243 to i32
  %13245 = xor i32 %13117, %13244
  %13246 = tail call i32 @llvm.fshl.i32(i32 %13245, i32 %13245, i32 28)
  %13247 = bitcast i8* %12779 to i64*
  %13248 = load i64, i64* %13247, align 8, !tbaa !25
  %13249 = trunc i64 %13248 to i32
  %13250 = xor i32 %13246, %13249
  %13251 = and i32 %13250, 63
  %13252 = zext i32 %13251 to i64
  %13253 = getelementptr inbounds [64 x i32], [64 x i32]* @SP7, i64 0, i64 %13252
  %13254 = bitcast i32* %13253 to i64*
  %13255 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13254, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6919, i64 0, i64 0), i32 1, i32 undef) #13
  %13256 = lshr i32 %13250, 8
  %13257 = and i32 %13256, 63
  %13258 = zext i32 %13257 to i64
  %13259 = getelementptr inbounds [64 x i32], [64 x i32]* @SP5, i64 0, i64 %13258
  %13260 = bitcast i32* %13259 to i64*
  %13261 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13260, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6920, i64 0, i64 0), i32 1, i32 undef) #13
  %13262 = or i64 %13261, %13255
  %13263 = lshr i32 %13250, 16
  %13264 = and i32 %13263, 63
  %13265 = zext i32 %13264 to i64
  %13266 = getelementptr inbounds [64 x i32], [64 x i32]* @SP3, i64 0, i64 %13265
  %13267 = bitcast i32* %13266 to i64*
  %13268 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13267, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6921, i64 0, i64 0), i32 1, i32 undef) #13
  %13269 = or i64 %13262, %13268
  %13270 = lshr i32 %13250, 24
  %13271 = and i32 %13270, 63
  %13272 = zext i32 %13271 to i64
  %13273 = getelementptr inbounds [64 x i32], [64 x i32]* @SP1, i64 0, i64 %13272
  %13274 = bitcast i32* %13273 to i64*
  %13275 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13274, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6922, i64 0, i64 0), i32 1, i32 undef) #13
  %13276 = or i64 %13269, %13275
  %13277 = bitcast i8* %12783 to i64*
  %13278 = load i64, i64* %13277, align 4, !tbaa !25
  %13279 = trunc i64 %13278 to i32
  %13280 = xor i32 %13245, %13279
  %13281 = and i32 %13280, 63
  %13282 = zext i32 %13281 to i64
  %13283 = getelementptr inbounds [64 x i32], [64 x i32]* @SP8, i64 0, i64 %13282
  %13284 = bitcast i32* %13283 to i64*
  %13285 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13284, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6923, i64 0, i64 0), i32 1, i32 undef) #13
  %13286 = or i64 %13276, %13285
  %13287 = lshr i32 %13280, 8
  %13288 = and i32 %13287, 63
  %13289 = zext i32 %13288 to i64
  %13290 = getelementptr inbounds [64 x i32], [64 x i32]* @SP6, i64 0, i64 %13289
  %13291 = bitcast i32* %13290 to i64*
  %13292 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13291, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6924, i64 0, i64 0), i32 1, i32 undef) #13
  %13293 = or i64 %13286, %13292
  %13294 = lshr i32 %13280, 16
  %13295 = and i32 %13294, 63
  %13296 = zext i32 %13295 to i64
  %13297 = getelementptr inbounds [64 x i32], [64 x i32]* @SP4, i64 0, i64 %13296
  %13298 = bitcast i32* %13297 to i64*
  %13299 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13298, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6925, i64 0, i64 0), i32 1, i32 undef) #13
  %13300 = or i64 %13293, %13299
  %13301 = lshr i32 %13280, 24
  %13302 = and i32 %13301, 63
  %13303 = zext i32 %13302 to i64
  %13304 = getelementptr inbounds [64 x i32], [64 x i32]* @SP2, i64 0, i64 %13303
  %13305 = bitcast i32* %13304 to i64*
  %13306 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13305, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6926, i64 0, i64 0), i32 1, i32 undef) #13
  %13307 = or i64 %13300, %13306
  %13308 = trunc i64 %13307 to i32
  %13309 = xor i32 %13181, %13308
  %13310 = tail call i32 @llvm.fshl.i32(i32 %13309, i32 %13309, i32 28)
  %13311 = bitcast i8* %12787 to i64*
  %13312 = load i64, i64* %13311, align 8, !tbaa !25
  %13313 = trunc i64 %13312 to i32
  %13314 = xor i32 %13310, %13313
  %13315 = and i32 %13314, 63
  %13316 = zext i32 %13315 to i64
  %13317 = getelementptr inbounds [64 x i32], [64 x i32]* @SP7, i64 0, i64 %13316
  %13318 = bitcast i32* %13317 to i64*
  %13319 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13318, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6919, i64 0, i64 0), i32 1, i32 undef) #13
  %13320 = lshr i32 %13314, 8
  %13321 = and i32 %13320, 63
  %13322 = zext i32 %13321 to i64
  %13323 = getelementptr inbounds [64 x i32], [64 x i32]* @SP5, i64 0, i64 %13322
  %13324 = bitcast i32* %13323 to i64*
  %13325 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13324, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6920, i64 0, i64 0), i32 1, i32 undef) #13
  %13326 = or i64 %13325, %13319
  %13327 = lshr i32 %13314, 16
  %13328 = and i32 %13327, 63
  %13329 = zext i32 %13328 to i64
  %13330 = getelementptr inbounds [64 x i32], [64 x i32]* @SP3, i64 0, i64 %13329
  %13331 = bitcast i32* %13330 to i64*
  %13332 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13331, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6921, i64 0, i64 0), i32 1, i32 undef) #13
  %13333 = or i64 %13326, %13332
  %13334 = lshr i32 %13314, 24
  %13335 = and i32 %13334, 63
  %13336 = zext i32 %13335 to i64
  %13337 = getelementptr inbounds [64 x i32], [64 x i32]* @SP1, i64 0, i64 %13336
  %13338 = bitcast i32* %13337 to i64*
  %13339 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13338, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6922, i64 0, i64 0), i32 1, i32 undef) #13
  %13340 = or i64 %13333, %13339
  %13341 = bitcast i8* %12791 to i64*
  %13342 = load i64, i64* %13341, align 4, !tbaa !25
  %13343 = trunc i64 %13342 to i32
  %13344 = xor i32 %13309, %13343
  %13345 = and i32 %13344, 63
  %13346 = zext i32 %13345 to i64
  %13347 = getelementptr inbounds [64 x i32], [64 x i32]* @SP8, i64 0, i64 %13346
  %13348 = bitcast i32* %13347 to i64*
  %13349 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13348, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6923, i64 0, i64 0), i32 1, i32 undef) #13
  %13350 = or i64 %13340, %13349
  %13351 = lshr i32 %13344, 8
  %13352 = and i32 %13351, 63
  %13353 = zext i32 %13352 to i64
  %13354 = getelementptr inbounds [64 x i32], [64 x i32]* @SP6, i64 0, i64 %13353
  %13355 = bitcast i32* %13354 to i64*
  %13356 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13355, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6924, i64 0, i64 0), i32 1, i32 undef) #13
  %13357 = or i64 %13350, %13356
  %13358 = lshr i32 %13344, 16
  %13359 = and i32 %13358, 63
  %13360 = zext i32 %13359 to i64
  %13361 = getelementptr inbounds [64 x i32], [64 x i32]* @SP4, i64 0, i64 %13360
  %13362 = bitcast i32* %13361 to i64*
  %13363 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13362, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6925, i64 0, i64 0), i32 1, i32 undef) #13
  %13364 = or i64 %13357, %13363
  %13365 = lshr i32 %13344, 24
  %13366 = and i32 %13365, 63
  %13367 = zext i32 %13366 to i64
  %13368 = getelementptr inbounds [64 x i32], [64 x i32]* @SP2, i64 0, i64 %13367
  %13369 = bitcast i32* %13368 to i64*
  %13370 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13369, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6926, i64 0, i64 0), i32 1, i32 undef) #13
  %13371 = or i64 %13364, %13370
  %13372 = trunc i64 %13371 to i32
  %13373 = xor i32 %13245, %13372
  %13374 = tail call i32 @llvm.fshl.i32(i32 %13373, i32 %13373, i32 28)
  %13375 = bitcast i8* %12795 to i64*
  %13376 = load i64, i64* %13375, align 8, !tbaa !25
  %13377 = trunc i64 %13376 to i32
  %13378 = xor i32 %13374, %13377
  %13379 = and i32 %13378, 63
  %13380 = zext i32 %13379 to i64
  %13381 = getelementptr inbounds [64 x i32], [64 x i32]* @SP7, i64 0, i64 %13380
  %13382 = bitcast i32* %13381 to i64*
  %13383 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13382, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6919, i64 0, i64 0), i32 1, i32 undef) #13
  %13384 = lshr i32 %13378, 8
  %13385 = and i32 %13384, 63
  %13386 = zext i32 %13385 to i64
  %13387 = getelementptr inbounds [64 x i32], [64 x i32]* @SP5, i64 0, i64 %13386
  %13388 = bitcast i32* %13387 to i64*
  %13389 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13388, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6920, i64 0, i64 0), i32 1, i32 undef) #13
  %13390 = or i64 %13389, %13383
  %13391 = lshr i32 %13378, 16
  %13392 = and i32 %13391, 63
  %13393 = zext i32 %13392 to i64
  %13394 = getelementptr inbounds [64 x i32], [64 x i32]* @SP3, i64 0, i64 %13393
  %13395 = bitcast i32* %13394 to i64*
  %13396 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13395, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6921, i64 0, i64 0), i32 1, i32 undef) #13
  %13397 = or i64 %13390, %13396
  %13398 = lshr i32 %13378, 24
  %13399 = and i32 %13398, 63
  %13400 = zext i32 %13399 to i64
  %13401 = getelementptr inbounds [64 x i32], [64 x i32]* @SP1, i64 0, i64 %13400
  %13402 = bitcast i32* %13401 to i64*
  %13403 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13402, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6922, i64 0, i64 0), i32 1, i32 undef) #13
  %13404 = or i64 %13397, %13403
  %13405 = bitcast i8* %12799 to i64*
  %13406 = load i64, i64* %13405, align 4, !tbaa !25
  %13407 = trunc i64 %13406 to i32
  %13408 = xor i32 %13373, %13407
  %13409 = and i32 %13408, 63
  %13410 = zext i32 %13409 to i64
  %13411 = getelementptr inbounds [64 x i32], [64 x i32]* @SP8, i64 0, i64 %13410
  %13412 = bitcast i32* %13411 to i64*
  %13413 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13412, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6923, i64 0, i64 0), i32 1, i32 undef) #13
  %13414 = or i64 %13404, %13413
  %13415 = lshr i32 %13408, 8
  %13416 = and i32 %13415, 63
  %13417 = zext i32 %13416 to i64
  %13418 = getelementptr inbounds [64 x i32], [64 x i32]* @SP6, i64 0, i64 %13417
  %13419 = bitcast i32* %13418 to i64*
  %13420 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13419, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6924, i64 0, i64 0), i32 1, i32 undef) #13
  %13421 = or i64 %13414, %13420
  %13422 = lshr i32 %13408, 16
  %13423 = and i32 %13422, 63
  %13424 = zext i32 %13423 to i64
  %13425 = getelementptr inbounds [64 x i32], [64 x i32]* @SP4, i64 0, i64 %13424
  %13426 = bitcast i32* %13425 to i64*
  %13427 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13426, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6925, i64 0, i64 0), i32 1, i32 undef) #13
  %13428 = or i64 %13421, %13427
  %13429 = lshr i32 %13408, 24
  %13430 = and i32 %13429, 63
  %13431 = zext i32 %13430 to i64
  %13432 = getelementptr inbounds [64 x i32], [64 x i32]* @SP2, i64 0, i64 %13431
  %13433 = bitcast i32* %13432 to i64*
  %13434 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13433, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6926, i64 0, i64 0), i32 1, i32 undef) #13
  %13435 = or i64 %13428, %13434
  %13436 = trunc i64 %13435 to i32
  %13437 = xor i32 %13309, %13436
  %13438 = tail call i32 @llvm.fshl.i32(i32 %13437, i32 %13437, i32 28)
  %13439 = bitcast i8* %12803 to i64*
  %13440 = load i64, i64* %13439, align 8, !tbaa !25
  %13441 = trunc i64 %13440 to i32
  %13442 = xor i32 %13438, %13441
  %13443 = and i32 %13442, 63
  %13444 = zext i32 %13443 to i64
  %13445 = getelementptr inbounds [64 x i32], [64 x i32]* @SP7, i64 0, i64 %13444
  %13446 = bitcast i32* %13445 to i64*
  %13447 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13446, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6919, i64 0, i64 0), i32 1, i32 undef) #13
  %13448 = lshr i32 %13442, 8
  %13449 = and i32 %13448, 63
  %13450 = zext i32 %13449 to i64
  %13451 = getelementptr inbounds [64 x i32], [64 x i32]* @SP5, i64 0, i64 %13450
  %13452 = bitcast i32* %13451 to i64*
  %13453 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13452, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6920, i64 0, i64 0), i32 1, i32 undef) #13
  %13454 = or i64 %13453, %13447
  %13455 = lshr i32 %13442, 16
  %13456 = and i32 %13455, 63
  %13457 = zext i32 %13456 to i64
  %13458 = getelementptr inbounds [64 x i32], [64 x i32]* @SP3, i64 0, i64 %13457
  %13459 = bitcast i32* %13458 to i64*
  %13460 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13459, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6921, i64 0, i64 0), i32 1, i32 undef) #13
  %13461 = or i64 %13454, %13460
  %13462 = lshr i32 %13442, 24
  %13463 = and i32 %13462, 63
  %13464 = zext i32 %13463 to i64
  %13465 = getelementptr inbounds [64 x i32], [64 x i32]* @SP1, i64 0, i64 %13464
  %13466 = bitcast i32* %13465 to i64*
  %13467 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13466, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6922, i64 0, i64 0), i32 1, i32 undef) #13
  %13468 = or i64 %13461, %13467
  %13469 = bitcast i8* %12807 to i64*
  %13470 = load i64, i64* %13469, align 4, !tbaa !25
  %13471 = trunc i64 %13470 to i32
  %13472 = xor i32 %13437, %13471
  %13473 = and i32 %13472, 63
  %13474 = zext i32 %13473 to i64
  %13475 = getelementptr inbounds [64 x i32], [64 x i32]* @SP8, i64 0, i64 %13474
  %13476 = bitcast i32* %13475 to i64*
  %13477 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13476, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6923, i64 0, i64 0), i32 1, i32 undef) #13
  %13478 = or i64 %13468, %13477
  %13479 = lshr i32 %13472, 8
  %13480 = and i32 %13479, 63
  %13481 = zext i32 %13480 to i64
  %13482 = getelementptr inbounds [64 x i32], [64 x i32]* @SP6, i64 0, i64 %13481
  %13483 = bitcast i32* %13482 to i64*
  %13484 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13483, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6924, i64 0, i64 0), i32 1, i32 undef) #13
  %13485 = or i64 %13478, %13484
  %13486 = lshr i32 %13472, 16
  %13487 = and i32 %13486, 63
  %13488 = zext i32 %13487 to i64
  %13489 = getelementptr inbounds [64 x i32], [64 x i32]* @SP4, i64 0, i64 %13488
  %13490 = bitcast i32* %13489 to i64*
  %13491 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13490, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6925, i64 0, i64 0), i32 1, i32 undef) #13
  %13492 = or i64 %13485, %13491
  %13493 = lshr i32 %13472, 24
  %13494 = and i32 %13493, 63
  %13495 = zext i32 %13494 to i64
  %13496 = getelementptr inbounds [64 x i32], [64 x i32]* @SP2, i64 0, i64 %13495
  %13497 = bitcast i32* %13496 to i64*
  %13498 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13497, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6926, i64 0, i64 0), i32 1, i32 undef) #13
  %13499 = or i64 %13492, %13498
  %13500 = trunc i64 %13499 to i32
  %13501 = xor i32 %13373, %13500
  %13502 = tail call i32 @llvm.fshl.i32(i32 %13501, i32 %13501, i32 28)
  %13503 = bitcast i8* %12811 to i64*
  %13504 = load i64, i64* %13503, align 8, !tbaa !25
  %13505 = trunc i64 %13504 to i32
  %13506 = xor i32 %13502, %13505
  %13507 = and i32 %13506, 63
  %13508 = zext i32 %13507 to i64
  %13509 = getelementptr inbounds [64 x i32], [64 x i32]* @SP7, i64 0, i64 %13508
  %13510 = bitcast i32* %13509 to i64*
  %13511 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13510, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6919, i64 0, i64 0), i32 1, i32 undef) #13
  %13512 = lshr i32 %13506, 8
  %13513 = and i32 %13512, 63
  %13514 = zext i32 %13513 to i64
  %13515 = getelementptr inbounds [64 x i32], [64 x i32]* @SP5, i64 0, i64 %13514
  %13516 = bitcast i32* %13515 to i64*
  %13517 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13516, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6920, i64 0, i64 0), i32 1, i32 undef) #13
  %13518 = or i64 %13517, %13511
  %13519 = lshr i32 %13506, 16
  %13520 = and i32 %13519, 63
  %13521 = zext i32 %13520 to i64
  %13522 = getelementptr inbounds [64 x i32], [64 x i32]* @SP3, i64 0, i64 %13521
  %13523 = bitcast i32* %13522 to i64*
  %13524 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13523, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6921, i64 0, i64 0), i32 1, i32 undef) #13
  %13525 = or i64 %13518, %13524
  %13526 = lshr i32 %13506, 24
  %13527 = and i32 %13526, 63
  %13528 = zext i32 %13527 to i64
  %13529 = getelementptr inbounds [64 x i32], [64 x i32]* @SP1, i64 0, i64 %13528
  %13530 = bitcast i32* %13529 to i64*
  %13531 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13530, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6922, i64 0, i64 0), i32 1, i32 undef) #13
  %13532 = or i64 %13525, %13531
  %13533 = bitcast i8* %12815 to i64*
  %13534 = load i64, i64* %13533, align 4, !tbaa !25
  %13535 = trunc i64 %13534 to i32
  %13536 = xor i32 %13501, %13535
  %13537 = and i32 %13536, 63
  %13538 = zext i32 %13537 to i64
  %13539 = getelementptr inbounds [64 x i32], [64 x i32]* @SP8, i64 0, i64 %13538
  %13540 = bitcast i32* %13539 to i64*
  %13541 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13540, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6923, i64 0, i64 0), i32 1, i32 undef) #13
  %13542 = or i64 %13532, %13541
  %13543 = lshr i32 %13536, 8
  %13544 = and i32 %13543, 63
  %13545 = zext i32 %13544 to i64
  %13546 = getelementptr inbounds [64 x i32], [64 x i32]* @SP6, i64 0, i64 %13545
  %13547 = bitcast i32* %13546 to i64*
  %13548 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13547, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6924, i64 0, i64 0), i32 1, i32 undef) #13
  %13549 = or i64 %13542, %13548
  %13550 = lshr i32 %13536, 16
  %13551 = and i32 %13550, 63
  %13552 = zext i32 %13551 to i64
  %13553 = getelementptr inbounds [64 x i32], [64 x i32]* @SP4, i64 0, i64 %13552
  %13554 = bitcast i32* %13553 to i64*
  %13555 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13554, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6925, i64 0, i64 0), i32 1, i32 undef) #13
  %13556 = or i64 %13549, %13555
  %13557 = lshr i32 %13536, 24
  %13558 = and i32 %13557, 63
  %13559 = zext i32 %13558 to i64
  %13560 = getelementptr inbounds [64 x i32], [64 x i32]* @SP2, i64 0, i64 %13559
  %13561 = bitcast i32* %13560 to i64*
  %13562 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13561, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6926, i64 0, i64 0), i32 1, i32 undef) #13
  %13563 = or i64 %13556, %13562
  %13564 = trunc i64 %13563 to i32
  %13565 = xor i32 %13437, %13564
  %13566 = tail call i32 @llvm.fshl.i32(i32 %13565, i32 %13565, i32 28)
  %13567 = bitcast i8* %12819 to i64*
  %13568 = load i64, i64* %13567, align 8, !tbaa !25
  %13569 = trunc i64 %13568 to i32
  %13570 = xor i32 %13566, %13569
  %13571 = and i32 %13570, 63
  %13572 = zext i32 %13571 to i64
  %13573 = getelementptr inbounds [64 x i32], [64 x i32]* @SP7, i64 0, i64 %13572
  %13574 = bitcast i32* %13573 to i64*
  %13575 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13574, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6919, i64 0, i64 0), i32 1, i32 undef) #13
  %13576 = lshr i32 %13570, 8
  %13577 = and i32 %13576, 63
  %13578 = zext i32 %13577 to i64
  %13579 = getelementptr inbounds [64 x i32], [64 x i32]* @SP5, i64 0, i64 %13578
  %13580 = bitcast i32* %13579 to i64*
  %13581 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13580, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6920, i64 0, i64 0), i32 1, i32 undef) #13
  %13582 = or i64 %13581, %13575
  %13583 = lshr i32 %13570, 16
  %13584 = and i32 %13583, 63
  %13585 = zext i32 %13584 to i64
  %13586 = getelementptr inbounds [64 x i32], [64 x i32]* @SP3, i64 0, i64 %13585
  %13587 = bitcast i32* %13586 to i64*
  %13588 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13587, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6921, i64 0, i64 0), i32 1, i32 undef) #13
  %13589 = or i64 %13582, %13588
  %13590 = lshr i32 %13570, 24
  %13591 = and i32 %13590, 63
  %13592 = zext i32 %13591 to i64
  %13593 = getelementptr inbounds [64 x i32], [64 x i32]* @SP1, i64 0, i64 %13592
  %13594 = bitcast i32* %13593 to i64*
  %13595 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13594, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6922, i64 0, i64 0), i32 1, i32 undef) #13
  %13596 = or i64 %13589, %13595
  %13597 = bitcast i8* %12823 to i64*
  %13598 = load i64, i64* %13597, align 4, !tbaa !25
  %13599 = trunc i64 %13598 to i32
  %13600 = xor i32 %13565, %13599
  %13601 = and i32 %13600, 63
  %13602 = zext i32 %13601 to i64
  %13603 = getelementptr inbounds [64 x i32], [64 x i32]* @SP8, i64 0, i64 %13602
  %13604 = bitcast i32* %13603 to i64*
  %13605 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13604, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6923, i64 0, i64 0), i32 1, i32 undef) #13
  %13606 = or i64 %13596, %13605
  %13607 = lshr i32 %13600, 8
  %13608 = and i32 %13607, 63
  %13609 = zext i32 %13608 to i64
  %13610 = getelementptr inbounds [64 x i32], [64 x i32]* @SP6, i64 0, i64 %13609
  %13611 = bitcast i32* %13610 to i64*
  %13612 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13611, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6924, i64 0, i64 0), i32 1, i32 undef) #13
  %13613 = or i64 %13606, %13612
  %13614 = lshr i32 %13600, 16
  %13615 = and i32 %13614, 63
  %13616 = zext i32 %13615 to i64
  %13617 = getelementptr inbounds [64 x i32], [64 x i32]* @SP4, i64 0, i64 %13616
  %13618 = bitcast i32* %13617 to i64*
  %13619 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13618, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6925, i64 0, i64 0), i32 1, i32 undef) #13
  %13620 = or i64 %13613, %13619
  %13621 = lshr i32 %13600, 24
  %13622 = and i32 %13621, 63
  %13623 = zext i32 %13622 to i64
  %13624 = getelementptr inbounds [64 x i32], [64 x i32]* @SP2, i64 0, i64 %13623
  %13625 = bitcast i32* %13624 to i64*
  %13626 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13625, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6926, i64 0, i64 0), i32 1, i32 undef) #13
  %13627 = or i64 %13620, %13626
  %13628 = trunc i64 %13627 to i32
  %13629 = xor i32 %13501, %13628
  %13630 = tail call i32 @llvm.fshl.i32(i32 %13629, i32 %13629, i32 28)
  %13631 = bitcast i8* %12827 to i64*
  %13632 = load i64, i64* %13631, align 8, !tbaa !25
  %13633 = trunc i64 %13632 to i32
  %13634 = xor i32 %13630, %13633
  %13635 = and i32 %13634, 63
  %13636 = zext i32 %13635 to i64
  %13637 = getelementptr inbounds [64 x i32], [64 x i32]* @SP7, i64 0, i64 %13636
  %13638 = bitcast i32* %13637 to i64*
  %13639 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13638, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6919, i64 0, i64 0), i32 1, i32 undef) #13
  %13640 = lshr i32 %13634, 8
  %13641 = and i32 %13640, 63
  %13642 = zext i32 %13641 to i64
  %13643 = getelementptr inbounds [64 x i32], [64 x i32]* @SP5, i64 0, i64 %13642
  %13644 = bitcast i32* %13643 to i64*
  %13645 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13644, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6920, i64 0, i64 0), i32 1, i32 undef) #13
  %13646 = or i64 %13645, %13639
  %13647 = lshr i32 %13634, 16
  %13648 = and i32 %13647, 63
  %13649 = zext i32 %13648 to i64
  %13650 = getelementptr inbounds [64 x i32], [64 x i32]* @SP3, i64 0, i64 %13649
  %13651 = bitcast i32* %13650 to i64*
  %13652 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13651, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6921, i64 0, i64 0), i32 1, i32 undef) #13
  %13653 = or i64 %13646, %13652
  %13654 = lshr i32 %13634, 24
  %13655 = and i32 %13654, 63
  %13656 = zext i32 %13655 to i64
  %13657 = getelementptr inbounds [64 x i32], [64 x i32]* @SP1, i64 0, i64 %13656
  %13658 = bitcast i32* %13657 to i64*
  %13659 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13658, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6922, i64 0, i64 0), i32 1, i32 undef) #13
  %13660 = or i64 %13653, %13659
  %13661 = bitcast i8* %12831 to i64*
  %13662 = load i64, i64* %13661, align 4, !tbaa !25
  %13663 = trunc i64 %13662 to i32
  %13664 = xor i32 %13629, %13663
  %13665 = and i32 %13664, 63
  %13666 = zext i32 %13665 to i64
  %13667 = getelementptr inbounds [64 x i32], [64 x i32]* @SP8, i64 0, i64 %13666
  %13668 = bitcast i32* %13667 to i64*
  %13669 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13668, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6923, i64 0, i64 0), i32 1, i32 undef) #13
  %13670 = or i64 %13660, %13669
  %13671 = lshr i32 %13664, 8
  %13672 = and i32 %13671, 63
  %13673 = zext i32 %13672 to i64
  %13674 = getelementptr inbounds [64 x i32], [64 x i32]* @SP6, i64 0, i64 %13673
  %13675 = bitcast i32* %13674 to i64*
  %13676 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13675, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6924, i64 0, i64 0), i32 1, i32 undef) #13
  %13677 = or i64 %13670, %13676
  %13678 = lshr i32 %13664, 16
  %13679 = and i32 %13678, 63
  %13680 = zext i32 %13679 to i64
  %13681 = getelementptr inbounds [64 x i32], [64 x i32]* @SP4, i64 0, i64 %13680
  %13682 = bitcast i32* %13681 to i64*
  %13683 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13682, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6925, i64 0, i64 0), i32 1, i32 undef) #13
  %13684 = or i64 %13677, %13683
  %13685 = lshr i32 %13664, 24
  %13686 = and i32 %13685, 63
  %13687 = zext i32 %13686 to i64
  %13688 = getelementptr inbounds [64 x i32], [64 x i32]* @SP2, i64 0, i64 %13687
  %13689 = bitcast i32* %13688 to i64*
  %13690 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13689, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6926, i64 0, i64 0), i32 1, i32 undef) #13
  %13691 = or i64 %13684, %13690
  %13692 = trunc i64 %13691 to i32
  %13693 = xor i32 %13565, %13692
  %13694 = tail call i32 @llvm.fshl.i32(i32 %13693, i32 %13693, i32 28)
  %13695 = bitcast i8* %12835 to i64*
  %13696 = load i64, i64* %13695, align 8, !tbaa !25
  %13697 = trunc i64 %13696 to i32
  %13698 = xor i32 %13694, %13697
  %13699 = and i32 %13698, 63
  %13700 = zext i32 %13699 to i64
  %13701 = getelementptr inbounds [64 x i32], [64 x i32]* @SP7, i64 0, i64 %13700
  %13702 = bitcast i32* %13701 to i64*
  %13703 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13702, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6919, i64 0, i64 0), i32 1, i32 undef) #13
  %13704 = lshr i32 %13698, 8
  %13705 = and i32 %13704, 63
  %13706 = zext i32 %13705 to i64
  %13707 = getelementptr inbounds [64 x i32], [64 x i32]* @SP5, i64 0, i64 %13706
  %13708 = bitcast i32* %13707 to i64*
  %13709 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13708, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6920, i64 0, i64 0), i32 1, i32 undef) #13
  %13710 = or i64 %13709, %13703
  %13711 = lshr i32 %13698, 16
  %13712 = and i32 %13711, 63
  %13713 = zext i32 %13712 to i64
  %13714 = getelementptr inbounds [64 x i32], [64 x i32]* @SP3, i64 0, i64 %13713
  %13715 = bitcast i32* %13714 to i64*
  %13716 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13715, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6921, i64 0, i64 0), i32 1, i32 undef) #13
  %13717 = or i64 %13710, %13716
  %13718 = lshr i32 %13698, 24
  %13719 = and i32 %13718, 63
  %13720 = zext i32 %13719 to i64
  %13721 = getelementptr inbounds [64 x i32], [64 x i32]* @SP1, i64 0, i64 %13720
  %13722 = bitcast i32* %13721 to i64*
  %13723 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13722, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6922, i64 0, i64 0), i32 1, i32 undef) #13
  %13724 = or i64 %13717, %13723
  %13725 = bitcast i8* %12839 to i64*
  %13726 = load i64, i64* %13725, align 4, !tbaa !25
  %13727 = trunc i64 %13726 to i32
  %13728 = xor i32 %13693, %13727
  %13729 = and i32 %13728, 63
  %13730 = zext i32 %13729 to i64
  %13731 = getelementptr inbounds [64 x i32], [64 x i32]* @SP8, i64 0, i64 %13730
  %13732 = bitcast i32* %13731 to i64*
  %13733 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13732, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6923, i64 0, i64 0), i32 1, i32 undef) #13
  %13734 = or i64 %13724, %13733
  %13735 = lshr i32 %13728, 8
  %13736 = and i32 %13735, 63
  %13737 = zext i32 %13736 to i64
  %13738 = getelementptr inbounds [64 x i32], [64 x i32]* @SP6, i64 0, i64 %13737
  %13739 = bitcast i32* %13738 to i64*
  %13740 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13739, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6924, i64 0, i64 0), i32 1, i32 undef) #13
  %13741 = or i64 %13734, %13740
  %13742 = lshr i32 %13728, 16
  %13743 = and i32 %13742, 63
  %13744 = zext i32 %13743 to i64
  %13745 = getelementptr inbounds [64 x i32], [64 x i32]* @SP4, i64 0, i64 %13744
  %13746 = bitcast i32* %13745 to i64*
  %13747 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13746, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6925, i64 0, i64 0), i32 1, i32 undef) #13
  %13748 = or i64 %13741, %13747
  %13749 = lshr i32 %13728, 24
  %13750 = and i32 %13749, 63
  %13751 = zext i32 %13750 to i64
  %13752 = getelementptr inbounds [64 x i32], [64 x i32]* @SP2, i64 0, i64 %13751
  %13753 = bitcast i32* %13752 to i64*
  %13754 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13753, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6926, i64 0, i64 0), i32 1, i32 undef) #13
  %13755 = or i64 %13748, %13754
  %13756 = trunc i64 %13755 to i32
  %13757 = xor i32 %13629, %13756
  %13758 = tail call i32 @llvm.fshl.i32(i32 %13757, i32 %13757, i32 28)
  %13759 = bitcast i8* %12843 to i64*
  %13760 = load i64, i64* %13759, align 8, !tbaa !25
  %13761 = trunc i64 %13760 to i32
  %13762 = xor i32 %13758, %13761
  %13763 = and i32 %13762, 63
  %13764 = zext i32 %13763 to i64
  %13765 = getelementptr inbounds [64 x i32], [64 x i32]* @SP7, i64 0, i64 %13764
  %13766 = bitcast i32* %13765 to i64*
  %13767 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13766, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6919, i64 0, i64 0), i32 1, i32 undef) #13
  %13768 = lshr i32 %13762, 8
  %13769 = and i32 %13768, 63
  %13770 = zext i32 %13769 to i64
  %13771 = getelementptr inbounds [64 x i32], [64 x i32]* @SP5, i64 0, i64 %13770
  %13772 = bitcast i32* %13771 to i64*
  %13773 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13772, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6920, i64 0, i64 0), i32 1, i32 undef) #13
  %13774 = or i64 %13773, %13767
  %13775 = lshr i32 %13762, 16
  %13776 = and i32 %13775, 63
  %13777 = zext i32 %13776 to i64
  %13778 = getelementptr inbounds [64 x i32], [64 x i32]* @SP3, i64 0, i64 %13777
  %13779 = bitcast i32* %13778 to i64*
  %13780 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13779, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6921, i64 0, i64 0), i32 1, i32 undef) #13
  %13781 = or i64 %13774, %13780
  %13782 = lshr i32 %13762, 24
  %13783 = and i32 %13782, 63
  %13784 = zext i32 %13783 to i64
  %13785 = getelementptr inbounds [64 x i32], [64 x i32]* @SP1, i64 0, i64 %13784
  %13786 = bitcast i32* %13785 to i64*
  %13787 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13786, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6922, i64 0, i64 0), i32 1, i32 undef) #13
  %13788 = or i64 %13781, %13787
  %13789 = bitcast i8* %12847 to i64*
  %13790 = load i64, i64* %13789, align 4, !tbaa !25
  %13791 = trunc i64 %13790 to i32
  %13792 = xor i32 %13757, %13791
  %13793 = and i32 %13792, 63
  %13794 = zext i32 %13793 to i64
  %13795 = getelementptr inbounds [64 x i32], [64 x i32]* @SP8, i64 0, i64 %13794
  %13796 = bitcast i32* %13795 to i64*
  %13797 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13796, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6923, i64 0, i64 0), i32 1, i32 undef) #13
  %13798 = or i64 %13788, %13797
  %13799 = lshr i32 %13792, 8
  %13800 = and i32 %13799, 63
  %13801 = zext i32 %13800 to i64
  %13802 = getelementptr inbounds [64 x i32], [64 x i32]* @SP6, i64 0, i64 %13801
  %13803 = bitcast i32* %13802 to i64*
  %13804 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13803, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6924, i64 0, i64 0), i32 1, i32 undef) #13
  %13805 = or i64 %13798, %13804
  %13806 = lshr i32 %13792, 16
  %13807 = and i32 %13806, 63
  %13808 = zext i32 %13807 to i64
  %13809 = getelementptr inbounds [64 x i32], [64 x i32]* @SP4, i64 0, i64 %13808
  %13810 = bitcast i32* %13809 to i64*
  %13811 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13810, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6925, i64 0, i64 0), i32 1, i32 undef) #13
  %13812 = or i64 %13805, %13811
  %13813 = lshr i32 %13792, 24
  %13814 = and i32 %13813, 63
  %13815 = zext i32 %13814 to i64
  %13816 = getelementptr inbounds [64 x i32], [64 x i32]* @SP2, i64 0, i64 %13815
  %13817 = bitcast i32* %13816 to i64*
  %13818 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13817, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6926, i64 0, i64 0), i32 1, i32 undef) #13
  %13819 = or i64 %13812, %13818
  %13820 = trunc i64 %13819 to i32
  %13821 = xor i32 %13693, %13820
  %13822 = tail call i32 @llvm.fshl.i32(i32 %13821, i32 %13821, i32 28)
  %13823 = bitcast i8* %12851 to i64*
  %13824 = load i64, i64* %13823, align 8, !tbaa !25
  %13825 = trunc i64 %13824 to i32
  %13826 = xor i32 %13822, %13825
  %13827 = and i32 %13826, 63
  %13828 = zext i32 %13827 to i64
  %13829 = getelementptr inbounds [64 x i32], [64 x i32]* @SP7, i64 0, i64 %13828
  %13830 = bitcast i32* %13829 to i64*
  %13831 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13830, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6919, i64 0, i64 0), i32 1, i32 undef) #13
  %13832 = lshr i32 %13826, 8
  %13833 = and i32 %13832, 63
  %13834 = zext i32 %13833 to i64
  %13835 = getelementptr inbounds [64 x i32], [64 x i32]* @SP5, i64 0, i64 %13834
  %13836 = bitcast i32* %13835 to i64*
  %13837 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13836, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6920, i64 0, i64 0), i32 1, i32 undef) #13
  %13838 = or i64 %13837, %13831
  %13839 = lshr i32 %13826, 16
  %13840 = and i32 %13839, 63
  %13841 = zext i32 %13840 to i64
  %13842 = getelementptr inbounds [64 x i32], [64 x i32]* @SP3, i64 0, i64 %13841
  %13843 = bitcast i32* %13842 to i64*
  %13844 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13843, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6921, i64 0, i64 0), i32 1, i32 undef) #13
  %13845 = or i64 %13838, %13844
  %13846 = lshr i32 %13826, 24
  %13847 = and i32 %13846, 63
  %13848 = zext i32 %13847 to i64
  %13849 = getelementptr inbounds [64 x i32], [64 x i32]* @SP1, i64 0, i64 %13848
  %13850 = bitcast i32* %13849 to i64*
  %13851 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13850, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6922, i64 0, i64 0), i32 1, i32 undef) #13
  %13852 = or i64 %13845, %13851
  %13853 = bitcast i8* %12855 to i64*
  %13854 = load i64, i64* %13853, align 4, !tbaa !25
  %13855 = trunc i64 %13854 to i32
  %13856 = xor i32 %13821, %13855
  %13857 = and i32 %13856, 63
  %13858 = zext i32 %13857 to i64
  %13859 = getelementptr inbounds [64 x i32], [64 x i32]* @SP8, i64 0, i64 %13858
  %13860 = bitcast i32* %13859 to i64*
  %13861 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13860, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6923, i64 0, i64 0), i32 1, i32 undef) #13
  %13862 = or i64 %13852, %13861
  %13863 = lshr i32 %13856, 8
  %13864 = and i32 %13863, 63
  %13865 = zext i32 %13864 to i64
  %13866 = getelementptr inbounds [64 x i32], [64 x i32]* @SP6, i64 0, i64 %13865
  %13867 = bitcast i32* %13866 to i64*
  %13868 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13867, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6924, i64 0, i64 0), i32 1, i32 undef) #13
  %13869 = or i64 %13862, %13868
  %13870 = lshr i32 %13856, 16
  %13871 = and i32 %13870, 63
  %13872 = zext i32 %13871 to i64
  %13873 = getelementptr inbounds [64 x i32], [64 x i32]* @SP4, i64 0, i64 %13872
  %13874 = bitcast i32* %13873 to i64*
  %13875 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13874, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6925, i64 0, i64 0), i32 1, i32 undef) #13
  %13876 = or i64 %13869, %13875
  %13877 = lshr i32 %13856, 24
  %13878 = and i32 %13877, 63
  %13879 = zext i32 %13878 to i64
  %13880 = getelementptr inbounds [64 x i32], [64 x i32]* @SP2, i64 0, i64 %13879
  %13881 = bitcast i32* %13880 to i64*
  %13882 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13881, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6926, i64 0, i64 0), i32 1, i32 undef) #13
  %13883 = or i64 %13876, %13882
  %13884 = trunc i64 %13883 to i32
  %13885 = xor i32 %13757, %13884
  %13886 = tail call i32 @llvm.fshl.i32(i32 %13885, i32 %13885, i32 28)
  %13887 = bitcast i8* %12859 to i64*
  %13888 = load i64, i64* %13887, align 8, !tbaa !25
  %13889 = trunc i64 %13888 to i32
  %13890 = xor i32 %13886, %13889
  %13891 = and i32 %13890, 63
  %13892 = zext i32 %13891 to i64
  %13893 = getelementptr inbounds [64 x i32], [64 x i32]* @SP7, i64 0, i64 %13892
  %13894 = bitcast i32* %13893 to i64*
  %13895 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13894, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6919, i64 0, i64 0), i32 1, i32 undef) #13
  %13896 = lshr i32 %13890, 8
  %13897 = and i32 %13896, 63
  %13898 = zext i32 %13897 to i64
  %13899 = getelementptr inbounds [64 x i32], [64 x i32]* @SP5, i64 0, i64 %13898
  %13900 = bitcast i32* %13899 to i64*
  %13901 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13900, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6920, i64 0, i64 0), i32 1, i32 undef) #13
  %13902 = or i64 %13901, %13895
  %13903 = lshr i32 %13890, 16
  %13904 = and i32 %13903, 63
  %13905 = zext i32 %13904 to i64
  %13906 = getelementptr inbounds [64 x i32], [64 x i32]* @SP3, i64 0, i64 %13905
  %13907 = bitcast i32* %13906 to i64*
  %13908 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13907, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6921, i64 0, i64 0), i32 1, i32 undef) #13
  %13909 = or i64 %13902, %13908
  %13910 = lshr i32 %13890, 24
  %13911 = and i32 %13910, 63
  %13912 = zext i32 %13911 to i64
  %13913 = getelementptr inbounds [64 x i32], [64 x i32]* @SP1, i64 0, i64 %13912
  %13914 = bitcast i32* %13913 to i64*
  %13915 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13914, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6922, i64 0, i64 0), i32 1, i32 undef) #13
  %13916 = or i64 %13909, %13915
  %13917 = bitcast i8* %12863 to i64*
  %13918 = load i64, i64* %13917, align 4, !tbaa !25
  %13919 = trunc i64 %13918 to i32
  %13920 = xor i32 %13885, %13919
  %13921 = and i32 %13920, 63
  %13922 = zext i32 %13921 to i64
  %13923 = getelementptr inbounds [64 x i32], [64 x i32]* @SP8, i64 0, i64 %13922
  %13924 = bitcast i32* %13923 to i64*
  %13925 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13924, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6923, i64 0, i64 0), i32 1, i32 undef) #13
  %13926 = or i64 %13916, %13925
  %13927 = lshr i32 %13920, 8
  %13928 = and i32 %13927, 63
  %13929 = zext i32 %13928 to i64
  %13930 = getelementptr inbounds [64 x i32], [64 x i32]* @SP6, i64 0, i64 %13929
  %13931 = bitcast i32* %13930 to i64*
  %13932 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13931, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6924, i64 0, i64 0), i32 1, i32 undef) #13
  %13933 = or i64 %13926, %13932
  %13934 = lshr i32 %13920, 16
  %13935 = and i32 %13934, 63
  %13936 = zext i32 %13935 to i64
  %13937 = getelementptr inbounds [64 x i32], [64 x i32]* @SP4, i64 0, i64 %13936
  %13938 = bitcast i32* %13937 to i64*
  %13939 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13938, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6925, i64 0, i64 0), i32 1, i32 undef) #13
  %13940 = or i64 %13933, %13939
  %13941 = lshr i32 %13920, 24
  %13942 = and i32 %13941, 63
  %13943 = zext i32 %13942 to i64
  %13944 = getelementptr inbounds [64 x i32], [64 x i32]* @SP2, i64 0, i64 %13943
  %13945 = bitcast i32* %13944 to i64*
  %13946 = tail call i64 @uint64_t_secure_load_impl(i64* nonnull %13945, %struct.ds_base* nonnull getelementptr inbounds ([1 x %struct.ds_base], [1 x %struct.ds_base]* @constinit.6926, i64 0, i64 0), i32 1, i32 undef) #13
  %13947 = or i64 %13940, %13946
  %13948 = trunc i64 %13947 to i32
  %13949 = xor i32 %13821, %13948
  %13950 = tail call i32 @llvm.fshl.i32(i32 %13949, i32 %13949, i32 31)
  %13951 = xor i32 %13950, %13885
  %13952 = and i32 %13951, -1431655766
  %13953 = xor i32 %13952, %13885
  %13954 = xor i32 %13952, %13950
  %13955 = tail call i32 @llvm.fshl.i32(i32 %13885, i32 %13953, i32 31)
  %13956 = lshr i32 %13955, 8
  %13957 = xor i32 %13956, %13954
  %13958 = and i32 %13957, 16711935
  %13959 = xor i32 %13958, %13954
  %13960 = shl nuw i32 %13958, 8
  %13961 = xor i32 %13960, %13955
  %13962 = lshr i32 %13961, 2
  %13963 = xor i32 %13962, %13959
  %13964 = and i32 %13963, 858993459
  %13965 = xor i32 %13964, %13959
  %13966 = shl nuw i32 %13964, 2
  %13967 = xor i32 %13966, %13961
  %13968 = lshr i32 %13965, 16
  %13969 = and i32 %13967, 65535
  %13970 = xor i32 %13969, %13968
  %13971 = xor i32 %13970, %13967
  %13972 = shl nuw i32 %13970, 16
  %13973 = xor i32 %13972, %13965
  %13974 = lshr i32 %13973, 4
  %13975 = xor i32 %13974, %13971
  %13976 = and i32 %13975, 252645135
  %13977 = xor i32 %13976, %13971
  %13978 = shl nuw i32 %13976, 4
  %13979 = xor i32 %13978, %13973
  %13980 = lshr i32 %13979, 24
  %13981 = trunc i32 %13980 to i8
  store i8 %13981, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @out, i64 0, i64 0), align 1, !tbaa !14
  %13982 = lshr i32 %13979, 16
  %13983 = trunc i32 %13982 to i8
  store i8 %13983, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @out, i64 0, i64 1), align 1, !tbaa !14
  %13984 = lshr i32 %13979, 8
  %13985 = trunc i32 %13984 to i8
  store i8 %13985, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @out, i64 0, i64 2), align 1, !tbaa !14
  %13986 = trunc i32 %13979 to i8
  store i8 %13986, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @out, i64 0, i64 3), align 1, !tbaa !14
  %13987 = lshr i32 %13977, 24
  %13988 = trunc i32 %13987 to i8
  store i8 %13988, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @out, i64 0, i64 4), align 1, !tbaa !14
  %13989 = lshr i32 %13977, 16
  %13990 = trunc i32 %13989 to i8
  store i8 %13990, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @out, i64 0, i64 5), align 1, !tbaa !14
  %13991 = lshr i32 %13977, 8
  %13992 = trunc i32 %13991 to i8
  store i8 %13992, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @out, i64 0, i64 6), align 1, !tbaa !14
  %13993 = trunc i32 %13977 to i8
  store i8 %13993, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @out, i64 0, i64 7), align 1, !tbaa !14
  %13994 = tail call i64 @write(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @out, i64 0, i64 0), i64 8) #13
  call void @llvm.lifetime.end.p0i8(i64 132, i8* nonnull %10)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %9) #13
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %8) #13
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7)
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6)
  ret i32 0
}

; Function Attrs: nofree
declare dso_local noundef i64 @read(i32 noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree
declare dso_local noundef i64 @write(i32 noundef, i8* nocapture noundef readonly, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nosync nounwind readnone
declare <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8>, <32 x i8>, <32 x i8>) #11

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

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
attributes #11 = { nofree nosync nounwind readnone }
attributes #12 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }

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
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !16}
!25 = !{!26, !26, i64 0}
!26 = !{!"long", !6, i64 0}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
!35 = !{!8, !8, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"short", !6, i64 0}
