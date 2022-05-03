; ModuleID = 'mitigated.ll'
source_filename = "mitigated.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.anonymous = type { [3 x i32], [3 x i32], [12 x i32], [12 x i32] }
%struct.ds_base = type { i8*, i64*, i32, i8, i32, i32 }

@in_key = internal global [3 x i32] zeroinitializer, align 8
@in_pub = internal global [3 x i32] zeroinitializer, align 8
@gc = common dso_local local_unnamed_addr global %struct.anonymous zeroinitializer, align 4

; Function Attrs: norecurse nounwind readnone
define dso_local i32 @hsum_epi32_avx(<2 x i64> %0) local_unnamed_addr #0 {
  %2 = shufflevector <2 x i64> %0, <2 x i64> undef, <2 x i32> <i32 1, i32 1>
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %4 = bitcast <2 x i64> %0 to <4 x i32>
  %5 = add <4 x i32> %3, %4
  %6 = shufflevector <4 x i32> %5, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %7 = add <4 x i32> %6, %5
  %8 = extractelement <4 x i32> %7, i32 0
  ret i32 %8
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind readnone
define dso_local i32 @mm256_hadd_to_32(<4 x i64> %0) local_unnamed_addr #2 {
  %2 = shufflevector <4 x i64> %0, <4 x i64> undef, <2 x i32> <i32 0, i32 1>
  %3 = shufflevector <4 x i64> %0, <4 x i64> undef, <2 x i32> <i32 2, i32 3>
  %4 = bitcast <2 x i64> %2 to <4 x i32>
  %5 = bitcast <2 x i64> %3 to <4 x i32>
  %6 = add <4 x i32> %5, %4
  %7 = bitcast <4 x i32> %6 to <2 x i64>
  %8 = shufflevector <2 x i64> %7, <2 x i64> undef, <2 x i32> <i32 1, i32 1>
  %9 = bitcast <2 x i64> %8 to <4 x i32>
  %10 = add <4 x i32> %6, %9
  %11 = shufflevector <4 x i32> %10, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %12 = add <4 x i32> %11, %10
  %13 = extractelement <4 x i32> %12, i32 0
  ret i32 %13
}

; Function Attrs: nounwind
define dso_local i64 @mm256_hadd_to_64(<4 x i64> %0) local_unnamed_addr #3 {
  %2 = shufflevector <4 x i64> %0, <4 x i64> undef, <2 x i32> <i32 0, i32 1>
  %3 = shufflevector <4 x i64> %0, <4 x i64> undef, <2 x i32> <i32 2, i32 3>
  %4 = add <2 x i64> %3, %2
  %5 = shufflevector <2 x i64> %4, <2 x i64> undef, <2 x i32> <i32 1, i32 1>
  %6 = add <2 x i64> %5, %4
  %7 = tail call i32 bitcast (i32 (...)* @_mm_cvtsi128_si64 to i32 (<2 x i64>)*)(<2 x i64> %6) #13
  %8 = sext i32 %7 to i64
  ret i64 %8
}

declare dso_local i32 @_mm_cvtsi128_si64(...) local_unnamed_addr #4

; Function Attrs: noinline nounwind
define dso_local i64 @uint64_t_secure_load_impl(i64* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #5 {
  %5 = icmp eq i32 %2, 0
  %6 = ptrtoint i64* %0 to i32
  br i1 %5, label %.loopexit14, label %7

7:                                                ; preds = %4
  %8 = and i32 %6, -8
  %9 = zext i32 %8 to i64
  %10 = insertelement <4 x i64> undef, i64 %9, i32 0
  %11 = shufflevector <4 x i64> %10, <4 x i64> undef, <4 x i32> zeroinitializer
  %12 = zext i32 %6 to i64
  %13 = and i32 %2, 1
  %14 = icmp eq i32 %2, 1
  %15 = sub nuw i32 %2, %13
  %16 = icmp eq i32 %13, 0
  br label %17

17:                                               ; preds = %.loopexit9, %7
  %18 = phi <4 x i64> [ zeroinitializer, %7 ], [ %156, %.loopexit9 ]
  %19 = phi i8 [ 1, %7 ], [ %155, %.loopexit9 ]
  %20 = phi i32 [ 0, %7 ], [ %157, %.loopexit9 ]
  %21 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %20
  %22 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %20, i32 3
  %23 = load i8, i8* %22, align 4, !tbaa !3, !range !10
  %24 = icmp eq i8 %23, 0
  %25 = bitcast %struct.ds_base* %21 to i32*
  %26 = load i32, i32* %25, align 4, !tbaa !11
  %27 = zext i32 %26 to i64
  br i1 %24, label %107, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %20, i32 4
  %30 = load i32, i32* %29, align 4, !tbaa !12
  %31 = zext i32 %30 to i64
  %32 = add nuw nsw i64 %31, %27
  %33 = and i64 %32, 8589934560
  %34 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %20, i32 5
  %35 = load i32, i32* %34, align 4, !tbaa !13
  %36 = zext i32 %35 to i64
  %37 = add nuw nsw i64 %36, %27
  %38 = sub nsw i64 %37, %33
  %39 = lshr i64 %38, 5
  %40 = trunc i64 %39 to i32
  %41 = add i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %.loopexit9, label %182

43:                                               ; preds = %194, %43
  %44 = phi <4 x i64> [ %18, %194 ], [ %102, %43 ]
  %45 = phi <4 x i64> [ %189, %194 ], [ %103, %43 ]
  %46 = phi i32 [ 0, %194 ], [ %104, %43 ]
  %47 = phi i32 [ %195, %194 ], [ %105, %43 ]
  %48 = shl i32 %46, 5
  %49 = getelementptr inbounds i8, i8* %191, i32 %48
  %50 = icmp eq <4 x i64> %45, %11
  %51 = bitcast i8* %49 to <4 x i64>*
  %52 = load <4 x i64>, <4 x i64>* %51, align 32, !tbaa !14
  %53 = select <4 x i1> %50, <4 x i64> %52, <4 x i64> %44
  %54 = add <4 x i64> %45, <i64 32, i64 32, i64 32, i64 32>
  %55 = or i32 %48, 32
  %56 = getelementptr inbounds i8, i8* %191, i32 %55
  %57 = icmp eq <4 x i64> %54, %11
  %58 = bitcast i8* %56 to <4 x i64>*
  %59 = load <4 x i64>, <4 x i64>* %58, align 32, !tbaa !14
  %60 = select <4 x i1> %57, <4 x i64> %59, <4 x i64> %53
  %61 = add <4 x i64> %45, <i64 64, i64 64, i64 64, i64 64>
  %62 = or i32 %48, 64
  %63 = getelementptr inbounds i8, i8* %191, i32 %62
  %64 = icmp eq <4 x i64> %61, %11
  %65 = bitcast i8* %63 to <4 x i64>*
  %66 = load <4 x i64>, <4 x i64>* %65, align 32, !tbaa !14
  %67 = select <4 x i1> %64, <4 x i64> %66, <4 x i64> %60
  %68 = add <4 x i64> %45, <i64 96, i64 96, i64 96, i64 96>
  %69 = or i32 %48, 96
  %70 = getelementptr inbounds i8, i8* %191, i32 %69
  %71 = icmp eq <4 x i64> %68, %11
  %72 = bitcast i8* %70 to <4 x i64>*
  %73 = load <4 x i64>, <4 x i64>* %72, align 32, !tbaa !14
  %74 = select <4 x i1> %71, <4 x i64> %73, <4 x i64> %67
  %75 = add <4 x i64> %45, <i64 128, i64 128, i64 128, i64 128>
  %76 = or i32 %48, 128
  %77 = getelementptr inbounds i8, i8* %191, i32 %76
  %78 = icmp eq <4 x i64> %75, %11
  %79 = bitcast i8* %77 to <4 x i64>*
  %80 = load <4 x i64>, <4 x i64>* %79, align 32, !tbaa !14
  %81 = select <4 x i1> %78, <4 x i64> %80, <4 x i64> %74
  %82 = add <4 x i64> %45, <i64 160, i64 160, i64 160, i64 160>
  %83 = or i32 %48, 160
  %84 = getelementptr inbounds i8, i8* %191, i32 %83
  %85 = icmp eq <4 x i64> %82, %11
  %86 = bitcast i8* %84 to <4 x i64>*
  %87 = load <4 x i64>, <4 x i64>* %86, align 32, !tbaa !14
  %88 = select <4 x i1> %85, <4 x i64> %87, <4 x i64> %81
  %89 = add <4 x i64> %45, <i64 192, i64 192, i64 192, i64 192>
  %90 = or i32 %48, 192
  %91 = getelementptr inbounds i8, i8* %191, i32 %90
  %92 = icmp eq <4 x i64> %89, %11
  %93 = bitcast i8* %91 to <4 x i64>*
  %94 = load <4 x i64>, <4 x i64>* %93, align 32, !tbaa !14
  %95 = select <4 x i1> %92, <4 x i64> %94, <4 x i64> %88
  %96 = add <4 x i64> %45, <i64 224, i64 224, i64 224, i64 224>
  %97 = or i32 %48, 224
  %98 = getelementptr inbounds i8, i8* %191, i32 %97
  %99 = icmp eq <4 x i64> %96, %11
  %100 = bitcast i8* %98 to <4 x i64>*
  %101 = load <4 x i64>, <4 x i64>* %100, align 32, !tbaa !14
  %102 = select <4 x i1> %99, <4 x i64> %101, <4 x i64> %95
  %103 = add <4 x i64> %45, <i64 256, i64 256, i64 256, i64 256>
  %104 = add nuw i32 %46, 8
  %105 = add i32 %47, -8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %.loopexit13, label %43

107:                                              ; preds = %17
  %108 = sub nsw i64 %12, %27
  %109 = insertelement <4 x i64> undef, i64 %108, i32 0
  %110 = shufflevector <4 x i64> %109, <4 x i64> undef, <4 x i32> zeroinitializer
  br i1 %14, label %.loopexit10, label %.preheader

.loopexit10:                                      ; preds = %.loopexit, %107
  %111 = phi <4 x i64> [ undef, %107 ], [ %236, %.loopexit ]
  %112 = phi <4 x i64> [ %18, %107 ], [ %236, %.loopexit ]
  %113 = phi i32 [ 0, %107 ], [ %237, %.loopexit ]
  br i1 %16, label %.loopexit9, label %114

114:                                              ; preds = %.loopexit10
  %115 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %113, i32 2
  %116 = load i32, i32* %115, align 4, !tbaa !15
  %117 = icmp ugt i32 %116, 3
  br i1 %117, label %118, label %.loopexit9

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %113, i32 1
  %120 = load i64*, i64** %119, align 4, !tbaa !16
  %121 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %113, i32 0
  %122 = load i8*, i8** %121, align 4, !tbaa !11
  %123 = lshr i32 %116, 2
  br label %124

124:                                              ; preds = %124, %118
  %125 = phi <4 x i64> [ %112, %118 ], [ %133, %124 ]
  %126 = phi i32 [ 0, %118 ], [ %134, %124 ]
  %127 = shl i32 %126, 2
  %128 = getelementptr inbounds i64, i64* %120, i32 %127
  %129 = bitcast i64* %128 to <4 x i64>*
  %130 = load <4 x i64>, <4 x i64>* %129, align 1, !tbaa !14
  %131 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %122, <4 x i64> %130, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %132 = icmp eq <4 x i64> %130, %110
  %133 = select <4 x i1> %132, <4 x i64> %131, <4 x i64> %125
  %134 = add nuw nsw i32 %126, 1
  %135 = icmp ult i32 %134, %123
  br i1 %135, label %124, label %.loopexit9

.loopexit13:                                      ; preds = %43, %182
  %136 = phi <4 x i64> [ undef, %182 ], [ %102, %43 ]
  %137 = phi <4 x i64> [ %18, %182 ], [ %102, %43 ]
  %138 = phi <4 x i64> [ %189, %182 ], [ %103, %43 ]
  %139 = phi i32 [ 0, %182 ], [ %104, %43 ]
  %140 = icmp eq i32 %192, 0
  br i1 %140, label %.loopexit9, label %.preheader11

.preheader11:                                     ; preds = %.loopexit13, %.preheader11
  %141 = phi <4 x i64> [ %150, %.preheader11 ], [ %137, %.loopexit13 ]
  %142 = phi <4 x i64> [ %151, %.preheader11 ], [ %138, %.loopexit13 ]
  %143 = phi i32 [ %152, %.preheader11 ], [ %139, %.loopexit13 ]
  %144 = phi i32 [ %153, %.preheader11 ], [ %192, %.loopexit13 ]
  %145 = shl i32 %143, 5
  %146 = getelementptr inbounds i8, i8* %191, i32 %145
  %147 = icmp eq <4 x i64> %142, %11
  %148 = bitcast i8* %146 to <4 x i64>*
  %149 = load <4 x i64>, <4 x i64>* %148, align 32, !tbaa !14
  %150 = select <4 x i1> %147, <4 x i64> %149, <4 x i64> %141
  %151 = add <4 x i64> %142, <i64 32, i64 32, i64 32, i64 32>
  %152 = add nuw i32 %143, 1
  %153 = add nsw i32 %144, -1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %.loopexit9, label %.preheader11, !llvm.loop !17

.loopexit9:                                       ; preds = %.preheader11, %124, %.loopexit13, %114, %.loopexit10, %28
  %155 = phi i8 [ %19, %28 ], [ 0, %114 ], [ 0, %.loopexit10 ], [ %19, %.loopexit13 ], [ 0, %124 ], [ %19, %.preheader11 ]
  %156 = phi <4 x i64> [ %18, %28 ], [ %112, %114 ], [ %111, %.loopexit10 ], [ %136, %.loopexit13 ], [ %133, %124 ], [ %150, %.preheader11 ]
  %157 = add nuw i32 %20, 1
  %158 = icmp eq i32 %157, %2
  br i1 %158, label %.loopexit14, label %17

.loopexit8:                                       ; preds = %164, %.preheader
  %159 = phi <4 x i64> [ %176, %.preheader ], [ %173, %164 ]
  %160 = or i32 %177, 1
  %161 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %160, i32 2
  %162 = load i32, i32* %161, align 4, !tbaa !15
  %163 = icmp ugt i32 %162, 3
  br i1 %163, label %218, label %.loopexit

164:                                              ; preds = %196, %164
  %165 = phi <4 x i64> [ %176, %196 ], [ %173, %164 ]
  %166 = phi i32 [ 0, %196 ], [ %174, %164 ]
  %167 = shl i32 %166, 2
  %168 = getelementptr inbounds i64, i64* %198, i32 %167
  %169 = bitcast i64* %168 to <4 x i64>*
  %170 = load <4 x i64>, <4 x i64>* %169, align 1, !tbaa !14
  %171 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %200, <4 x i64> %170, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %172 = icmp eq <4 x i64> %170, %110
  %173 = select <4 x i1> %172, <4 x i64> %171, <4 x i64> %165
  %174 = add nuw nsw i32 %166, 1
  %175 = icmp ult i32 %174, %201
  br i1 %175, label %164, label %.loopexit8

.preheader:                                       ; preds = %107, %.loopexit
  %176 = phi <4 x i64> [ %236, %.loopexit ], [ %18, %107 ]
  %177 = phi i32 [ %237, %.loopexit ], [ 0, %107 ]
  %178 = phi i32 [ %238, %.loopexit ], [ %15, %107 ]
  %179 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %177, i32 2
  %180 = load i32, i32* %179, align 4, !tbaa !15
  %181 = icmp ugt i32 %180, 3
  br i1 %181, label %196, label %.loopexit8

182:                                              ; preds = %28
  %183 = insertelement <4 x i64> undef, i64 %33, i32 0
  %184 = or i64 %33, 8
  %185 = insertelement <4 x i64> %183, i64 %184, i32 1
  %186 = or i64 %33, 16
  %187 = insertelement <4 x i64> %185, i64 %186, i32 2
  %188 = or i64 %33, 24
  %189 = insertelement <4 x i64> %187, i64 %188, i32 3
  %190 = trunc i64 %33 to i32
  %191 = inttoptr i32 %190 to i8*
  %192 = and i32 %41, 7
  %193 = icmp ult i32 %40, 7
  br i1 %193, label %.loopexit13, label %194

194:                                              ; preds = %182
  %195 = sub i32 %41, %192
  br label %43

196:                                              ; preds = %.preheader
  %197 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %177, i32 1
  %198 = load i64*, i64** %197, align 4, !tbaa !16
  %199 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %177, i32 0
  %200 = load i8*, i8** %199, align 4, !tbaa !11
  %201 = lshr i32 %180, 2
  br label %164

.loopexit14:                                      ; preds = %.loopexit9, %4
  %202 = phi i8 [ 1, %4 ], [ %155, %.loopexit9 ]
  %203 = phi <4 x i64> [ zeroinitializer, %4 ], [ %156, %.loopexit9 ]
  %204 = shufflevector <4 x i64> %203, <4 x i64> undef, <2 x i32> <i32 0, i32 1>
  %205 = shufflevector <4 x i64> %203, <4 x i64> undef, <2 x i32> <i32 2, i32 3>
  %206 = add <2 x i64> %205, %204
  %207 = shufflevector <2 x i64> %206, <2 x i64> undef, <2 x i32> <i32 1, i32 1>
  %208 = add <2 x i64> %207, %206
  %209 = tail call i32 bitcast (i32 (...)* @_mm_cvtsi128_si64 to i32 (<2 x i64>)*)(<2 x i64> %208) #13
  %210 = sext i32 %209 to i64
  %211 = and i8 %202, 1
  %212 = icmp eq i8 %211, 0
  %213 = shl i32 %6, 3
  %214 = and i32 %213, 56
  %215 = zext i32 %214 to i64
  %216 = select i1 %212, i64 0, i64 %215
  %217 = lshr i64 %210, %216
  ret i64 %217

218:                                              ; preds = %.loopexit8
  %219 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %160, i32 1
  %220 = load i64*, i64** %219, align 4, !tbaa !16
  %221 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %160, i32 0
  %222 = load i8*, i8** %221, align 4, !tbaa !11
  %223 = lshr i32 %162, 2
  br label %224

224:                                              ; preds = %224, %218
  %225 = phi <4 x i64> [ %159, %218 ], [ %233, %224 ]
  %226 = phi i32 [ 0, %218 ], [ %234, %224 ]
  %227 = shl i32 %226, 2
  %228 = getelementptr inbounds i64, i64* %220, i32 %227
  %229 = bitcast i64* %228 to <4 x i64>*
  %230 = load <4 x i64>, <4 x i64>* %229, align 1, !tbaa !14
  %231 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %222, <4 x i64> %230, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %232 = icmp eq <4 x i64> %230, %110
  %233 = select <4 x i1> %232, <4 x i64> %231, <4 x i64> %225
  %234 = add nuw nsw i32 %226, 1
  %235 = icmp ult i32 %234, %223
  br i1 %235, label %224, label %.loopexit

.loopexit:                                        ; preds = %224, %.loopexit8
  %236 = phi <4 x i64> [ %159, %.loopexit8 ], [ %233, %224 ]
  %237 = add nuw i32 %177, 2
  %238 = add i32 %178, -2
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %.loopexit10, label %.preheader
}

; Function Attrs: nounwind readonly
declare <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64>, i8*, <4 x i64>, <4 x i64>, i8 immarg) #6

; Function Attrs: nounwind
define dso_local i64 @uint64_t_secure_load(i64* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #7 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = load i64, i64* %0, align 4, !tbaa !19
  br label %10

8:                                                ; preds = %4
  %9 = tail call i64 @uint64_t_secure_load_impl(i64* %0, %struct.ds_base* %1, i32 %2, i32 undef)
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i64 [ %7, %6 ], [ %9, %8 ]
  ret i64 %11
}

; Function Attrs: nounwind
define dso_local i64 @uint64_t_secure_load_sensitive(i64* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #7 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 0, i32 0
  %8 = load i8*, i8** %7, align 4, !tbaa !11
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 0, i32 4
  %10 = load i32, i32* %9, align 4, !tbaa !12
  %11 = getelementptr inbounds i8, i8* %8, i32 %10
  %12 = bitcast i8* %11 to i64*
  %13 = load volatile i64, i64* %12, align 4, !tbaa !19
  br label %16

14:                                               ; preds = %4
  %15 = tail call i64 @uint64_t_secure_load_impl(i64* %0, %struct.ds_base* %1, i32 %2, i32 undef)
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi i64 [ %13, %6 ], [ %15, %14 ]
  ret i64 %17
}

; Function Attrs: nounwind
define dso_local i32 @uint32_t_secure_load(i32* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #7 {
  %5 = bitcast i32* %0 to i64*
  %6 = icmp eq i32 %3, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = load i64, i64* %5, align 4, !tbaa !19
  %extract.t1 = trunc i64 %8 to i32
  br label %11

9:                                                ; preds = %4
  %10 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef) #13
  %extract.t = trunc i64 %10 to i32
  br label %11

11:                                               ; preds = %9, %7
  %.sink.off0 = phi i32 [ %extract.t, %9 ], [ %extract.t1, %7 ]
  ret i32 %.sink.off0
}

; Function Attrs: nounwind
define dso_local zeroext i16 @uint16_t_secure_load(i16* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #7 {
  %5 = bitcast i16* %0 to i64*
  %6 = icmp eq i32 %3, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = load i64, i64* %5, align 4, !tbaa !19
  %extract.t1 = trunc i64 %8 to i16
  br label %11

9:                                                ; preds = %4
  %10 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef) #13
  %extract.t = trunc i64 %10 to i16
  br label %11

11:                                               ; preds = %9, %7
  %.sink.off0 = phi i16 [ %extract.t, %9 ], [ %extract.t1, %7 ]
  ret i16 %.sink.off0
}

; Function Attrs: nounwind
define dso_local zeroext i8 @uint8_t_secure_load(i8* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #7 {
  %5 = bitcast i8* %0 to i64*
  %6 = icmp eq i32 %3, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = load i64, i64* %5, align 4, !tbaa !19
  %extract.t1 = trunc i64 %8 to i8
  br label %11

9:                                                ; preds = %4
  %10 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef) #13
  %extract.t = trunc i64 %10 to i8
  br label %11

11:                                               ; preds = %9, %7
  %.sink.off0 = phi i8 [ %extract.t, %9 ], [ %extract.t1, %7 ]
  ret i8 %.sink.off0
}

; Function Attrs: nounwind
define dso_local i32 @uint32_t_secure_load_sensitive(i32* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #7 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 0, i32 0
  %8 = load i8*, i8** %7, align 4, !tbaa !11
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 0, i32 4
  %10 = load i32, i32* %9, align 4, !tbaa !12
  %11 = getelementptr inbounds i8, i8* %8, i32 %10
  %12 = bitcast i8* %11 to i64*
  %13 = load volatile i64, i64* %12, align 4, !tbaa !19
  %extract.t1 = trunc i64 %13 to i32
  br label %17

14:                                               ; preds = %4
  %15 = bitcast i32* %0 to i64*
  %16 = tail call i64 @uint64_t_secure_load_impl(i64* %15, %struct.ds_base* %1, i32 %2, i32 undef) #13
  %extract.t = trunc i64 %16 to i32
  br label %17

17:                                               ; preds = %14, %6
  %.sink.off0 = phi i32 [ %extract.t, %14 ], [ %extract.t1, %6 ]
  ret i32 %.sink.off0
}

; Function Attrs: nounwind
define dso_local zeroext i16 @uint16_t_secure_load_sensitive(i16* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #7 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 0, i32 0
  %8 = load i8*, i8** %7, align 4, !tbaa !11
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 0, i32 4
  %10 = load i32, i32* %9, align 4, !tbaa !12
  %11 = getelementptr inbounds i8, i8* %8, i32 %10
  %12 = bitcast i8* %11 to i64*
  %13 = load volatile i64, i64* %12, align 4, !tbaa !19
  %extract.t1 = trunc i64 %13 to i16
  br label %17

14:                                               ; preds = %4
  %15 = bitcast i16* %0 to i64*
  %16 = tail call i64 @uint64_t_secure_load_impl(i64* %15, %struct.ds_base* %1, i32 %2, i32 undef) #13
  %extract.t = trunc i64 %16 to i16
  br label %17

17:                                               ; preds = %14, %6
  %.sink.off0 = phi i16 [ %extract.t, %14 ], [ %extract.t1, %6 ]
  ret i16 %.sink.off0
}

; Function Attrs: nounwind
define dso_local zeroext i8 @uint8_t_secure_load_sensitive(i8* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #7 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 0, i32 0
  %8 = load i8*, i8** %7, align 4, !tbaa !11
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 0, i32 4
  %10 = load i32, i32* %9, align 4, !tbaa !12
  %11 = getelementptr inbounds i8, i8* %8, i32 %10
  %12 = bitcast i8* %11 to i64*
  %13 = load volatile i64, i64* %12, align 4, !tbaa !19
  %extract.t1 = trunc i64 %13 to i8
  br label %17

14:                                               ; preds = %4
  %15 = bitcast i8* %0 to i64*
  %16 = tail call i64 @uint64_t_secure_load_impl(i64* %15, %struct.ds_base* %1, i32 %2, i32 undef) #13
  %extract.t = trunc i64 %16 to i8
  br label %17

17:                                               ; preds = %14, %6
  %.sink.off0 = phi i8 [ %extract.t, %14 ], [ %extract.t1, %6 ]
  ret i8 %.sink.off0
}

; Function Attrs: nofree noinline nounwind
define dso_local void @uint64_t_secure_store_impl(i64 %0, i64* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #8 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %.loopexit7, label %7

7:                                                ; preds = %5
  %8 = ptrtoint i64* %1 to i32
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = and i64 %10, 56
  %12 = shl i64 %0, %11
  %13 = insertelement <4 x i64> undef, i64 %12, i32 0
  %14 = shufflevector <4 x i64> %13, <4 x i64> undef, <4 x i32> zeroinitializer
  %15 = and i64 %9, 4294967288
  %16 = insertelement <4 x i64> undef, i64 %15, i32 0
  %17 = shufflevector <4 x i64> %16, <4 x i64> undef, <4 x i32> zeroinitializer
  %18 = shl i32 %8, 3
  %19 = and i32 %18, 56
  %20 = zext i32 %19 to i64
  %21 = shl nsw i64 -1, %20
  %22 = insertelement <4 x i64> undef, i64 %21, i32 0
  %23 = shufflevector <4 x i64> %22, <4 x i64> undef, <4 x i32> zeroinitializer
  %24 = bitcast <4 x i64> %14 to <32 x i8>
  %25 = bitcast i64* %1 to i8*
  %26 = trunc i64 %0 to i32
  br label %27

.loopexit7:                                       ; preds = %.loopexit, %5
  ret void

27:                                               ; preds = %.loopexit, %7
  %28 = phi i32 [ 0, %7 ], [ %99, %.loopexit ]
  %29 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %28
  %30 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %28, i32 3
  %31 = load i8, i8* %30, align 4, !tbaa !3, !range !10
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %28, i32 2
  %35 = load i32, i32* %34, align 4, !tbaa !15
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %.loopexit, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %29, i32 0, i32 0
  %39 = load i8*, i8** %38, align 4, !tbaa !11
  %40 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %28, i32 1
  %41 = load i64*, i64** %40, align 4, !tbaa !16
  br label %82

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %29, i32 0, i32 0
  %44 = bitcast %struct.ds_base* %29 to i32*
  %45 = load i32, i32* %44, align 4, !tbaa !11
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %28, i32 4
  %48 = load i32, i32* %47, align 4, !tbaa !12
  %49 = zext i32 %48 to i64
  %50 = add nuw nsw i64 %49, %46
  %51 = and i64 %50, 8589934560
  %52 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %28, i32 5
  %53 = trunc i64 %51 to i32
  %54 = inttoptr i32 %53 to i8*
  %55 = inttoptr i32 %45 to i8*
  %56 = load i32, i32* %52, align 4, !tbaa !13
  %57 = getelementptr inbounds i8, i8* %55, i32 %56
  %58 = icmp ult i8* %57, %54
  br i1 %58, label %.loopexit, label %59

59:                                               ; preds = %42
  %60 = insertelement <4 x i64> undef, i64 %51, i32 0
  %61 = or i64 %51, 8
  %62 = insertelement <4 x i64> %60, i64 %61, i32 1
  %63 = or i64 %51, 16
  %64 = insertelement <4 x i64> %62, i64 %63, i32 2
  %65 = or i64 %51, 24
  %66 = insertelement <4 x i64> %64, i64 %65, i32 3
  br label %67

67:                                               ; preds = %67, %59
  %68 = phi i8* [ %77, %67 ], [ %54, %59 ]
  %69 = phi <4 x i64> [ %76, %67 ], [ %66, %59 ]
  %70 = icmp eq <4 x i64> %69, %17
  %71 = select <4 x i1> %70, <4 x i64> %23, <4 x i64> zeroinitializer
  %72 = bitcast i8* %68 to <32 x i8>*
  %73 = load <32 x i8>, <32 x i8>* %72, align 1, !tbaa !14
  %74 = bitcast <4 x i64> %71 to <32 x i8>
  %75 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %73, <32 x i8> %24, <32 x i8> %74) #13
  store <32 x i8> %75, <32 x i8>* %72, align 1, !tbaa !14
  %76 = add <4 x i64> %69, <i64 32, i64 32, i64 32, i64 32>
  %77 = getelementptr inbounds i8, i8* %68, i32 32
  %78 = load i8*, i8** %43, align 4, !tbaa !11
  %79 = load i32, i32* %52, align 4, !tbaa !13
  %80 = getelementptr inbounds i8, i8* %78, i32 %79
  %81 = icmp ugt i8* %77, %80
  br i1 %81, label %.loopexit, label %67

82:                                               ; preds = %95, %37
  %83 = phi i32 [ %35, %37 ], [ %96, %95 ]
  %84 = phi i32 [ 0, %37 ], [ %97, %95 ]
  %85 = getelementptr inbounds i64, i64* %41, i32 %84
  %86 = load i64, i64* %85, align 4, !tbaa !19
  %87 = trunc i64 %86 to i32
  %88 = getelementptr inbounds i8, i8* %39, i32 %87
  %89 = icmp eq i8* %88, %25
  %90 = bitcast i8* %88 to i32*
  br i1 %89, label %91, label %93

91:                                               ; preds = %82
  store volatile i32 %26, i32* %90, align 4, !tbaa !21
  %92 = load i32, i32* %34, align 4, !tbaa !15
  br label %95

93:                                               ; preds = %82
  %94 = load volatile i32, i32* %90, align 4, !tbaa !21
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %83, %93 ]
  %97 = add nuw i32 %84, 1
  %98 = icmp ult i32 %97, %96
  br i1 %98, label %82, label %.loopexit

.loopexit:                                        ; preds = %67, %95, %42, %33
  %99 = add nuw i32 %28, 1
  %100 = icmp eq i32 %99, %3
  br i1 %100, label %.loopexit7, label %27
}

; Function Attrs: nofree noinline nounwind
define dso_local void @uint32_t_secure_store_impl(i32 %0, i32* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #8 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %.loopexit7, label %7

7:                                                ; preds = %5
  %8 = zext i32 %0 to i64
  %9 = ptrtoint i32* %1 to i32
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = and i64 %11, 56
  %13 = shl i64 %8, %12
  %14 = insertelement <4 x i64> undef, i64 %13, i32 0
  %15 = shufflevector <4 x i64> %14, <4 x i64> undef, <4 x i32> zeroinitializer
  %16 = and i64 %10, 4294967288
  %17 = insertelement <4 x i64> undef, i64 %16, i32 0
  %18 = shufflevector <4 x i64> %17, <4 x i64> undef, <4 x i32> zeroinitializer
  %19 = shl i32 %9, 3
  %20 = and i32 %19, 56
  %21 = zext i32 %20 to i64
  %22 = shl i64 4294967295, %21
  %23 = insertelement <4 x i64> undef, i64 %22, i32 0
  %24 = shufflevector <4 x i64> %23, <4 x i64> undef, <4 x i32> zeroinitializer
  %25 = bitcast <4 x i64> %15 to <32 x i8>
  %26 = bitcast i32* %1 to i8*
  br label %27

.loopexit7:                                       ; preds = %.loopexit, %5
  ret void

27:                                               ; preds = %.loopexit, %7
  %28 = phi i32 [ 0, %7 ], [ %99, %.loopexit ]
  %29 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %28
  %30 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %28, i32 3
  %31 = load i8, i8* %30, align 4, !tbaa !3, !range !10
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %28, i32 2
  %35 = load i32, i32* %34, align 4, !tbaa !15
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %.loopexit, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %29, i32 0, i32 0
  %39 = load i8*, i8** %38, align 4, !tbaa !11
  %40 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %28, i32 1
  %41 = load i64*, i64** %40, align 4, !tbaa !16
  br label %82

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %29, i32 0, i32 0
  %44 = bitcast %struct.ds_base* %29 to i32*
  %45 = load i32, i32* %44, align 4, !tbaa !11
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %28, i32 4
  %48 = load i32, i32* %47, align 4, !tbaa !12
  %49 = zext i32 %48 to i64
  %50 = add nuw nsw i64 %49, %46
  %51 = and i64 %50, 8589934560
  %52 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %28, i32 5
  %53 = trunc i64 %51 to i32
  %54 = inttoptr i32 %53 to i8*
  %55 = inttoptr i32 %45 to i8*
  %56 = load i32, i32* %52, align 4, !tbaa !13
  %57 = getelementptr inbounds i8, i8* %55, i32 %56
  %58 = icmp ult i8* %57, %54
  br i1 %58, label %.loopexit, label %59

59:                                               ; preds = %42
  %60 = insertelement <4 x i64> undef, i64 %51, i32 0
  %61 = or i64 %51, 8
  %62 = insertelement <4 x i64> %60, i64 %61, i32 1
  %63 = or i64 %51, 16
  %64 = insertelement <4 x i64> %62, i64 %63, i32 2
  %65 = or i64 %51, 24
  %66 = insertelement <4 x i64> %64, i64 %65, i32 3
  br label %67

67:                                               ; preds = %67, %59
  %68 = phi i8* [ %77, %67 ], [ %54, %59 ]
  %69 = phi <4 x i64> [ %76, %67 ], [ %66, %59 ]
  %70 = icmp eq <4 x i64> %69, %18
  %71 = select <4 x i1> %70, <4 x i64> %24, <4 x i64> zeroinitializer
  %72 = bitcast i8* %68 to <32 x i8>*
  %73 = load <32 x i8>, <32 x i8>* %72, align 1, !tbaa !14
  %74 = bitcast <4 x i64> %71 to <32 x i8>
  %75 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %73, <32 x i8> %25, <32 x i8> %74) #13
  store <32 x i8> %75, <32 x i8>* %72, align 1, !tbaa !14
  %76 = add <4 x i64> %69, <i64 32, i64 32, i64 32, i64 32>
  %77 = getelementptr inbounds i8, i8* %68, i32 32
  %78 = load i8*, i8** %43, align 4, !tbaa !11
  %79 = load i32, i32* %52, align 4, !tbaa !13
  %80 = getelementptr inbounds i8, i8* %78, i32 %79
  %81 = icmp ugt i8* %77, %80
  br i1 %81, label %.loopexit, label %67

82:                                               ; preds = %95, %37
  %83 = phi i32 [ %35, %37 ], [ %96, %95 ]
  %84 = phi i32 [ 0, %37 ], [ %97, %95 ]
  %85 = getelementptr inbounds i64, i64* %41, i32 %84
  %86 = load i64, i64* %85, align 4, !tbaa !19
  %87 = trunc i64 %86 to i32
  %88 = getelementptr inbounds i8, i8* %39, i32 %87
  %89 = icmp eq i8* %88, %26
  %90 = bitcast i8* %88 to i32*
  br i1 %89, label %91, label %93

91:                                               ; preds = %82
  store volatile i32 %0, i32* %90, align 4, !tbaa !21
  %92 = load i32, i32* %34, align 4, !tbaa !15
  br label %95

93:                                               ; preds = %82
  %94 = load volatile i32, i32* %90, align 4, !tbaa !21
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %83, %93 ]
  %97 = add nuw i32 %84, 1
  %98 = icmp ult i32 %97, %96
  br i1 %98, label %82, label %.loopexit

.loopexit:                                        ; preds = %67, %95, %42, %33
  %99 = add nuw i32 %28, 1
  %100 = icmp eq i32 %99, %3
  br i1 %100, label %.loopexit7, label %27
}

; Function Attrs: nofree noinline nounwind
define dso_local void @uint16_t_secure_store_impl(i16 zeroext %0, i16* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #8 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %.loopexit7, label %7

7:                                                ; preds = %5
  %8 = zext i16 %0 to i64
  %9 = ptrtoint i16* %1 to i32
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = and i64 %11, 56
  %13 = shl i64 %8, %12
  %14 = insertelement <4 x i64> undef, i64 %13, i32 0
  %15 = shufflevector <4 x i64> %14, <4 x i64> undef, <4 x i32> zeroinitializer
  %16 = and i64 %10, 4294967288
  %17 = insertelement <4 x i64> undef, i64 %16, i32 0
  %18 = shufflevector <4 x i64> %17, <4 x i64> undef, <4 x i32> zeroinitializer
  %19 = shl i32 %9, 3
  %20 = and i32 %19, 56
  %21 = zext i32 %20 to i64
  %22 = shl i64 65535, %21
  %23 = insertelement <4 x i64> undef, i64 %22, i32 0
  %24 = shufflevector <4 x i64> %23, <4 x i64> undef, <4 x i32> zeroinitializer
  %25 = bitcast <4 x i64> %15 to <32 x i8>
  %26 = bitcast i16* %1 to i8*
  %27 = zext i16 %0 to i32
  br label %28

.loopexit7:                                       ; preds = %.loopexit, %5
  ret void

28:                                               ; preds = %.loopexit, %7
  %29 = phi i32 [ 0, %7 ], [ %100, %.loopexit ]
  %30 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %29
  %31 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %29, i32 3
  %32 = load i8, i8* %31, align 4, !tbaa !3, !range !10
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %29, i32 2
  %36 = load i32, i32* %35, align 4, !tbaa !15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %.loopexit, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %30, i32 0, i32 0
  %40 = load i8*, i8** %39, align 4, !tbaa !11
  %41 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %29, i32 1
  %42 = load i64*, i64** %41, align 4, !tbaa !16
  br label %83

43:                                               ; preds = %28
  %44 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %30, i32 0, i32 0
  %45 = bitcast %struct.ds_base* %30 to i32*
  %46 = load i32, i32* %45, align 4, !tbaa !11
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %29, i32 4
  %49 = load i32, i32* %48, align 4, !tbaa !12
  %50 = zext i32 %49 to i64
  %51 = add nuw nsw i64 %50, %47
  %52 = and i64 %51, 8589934560
  %53 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %29, i32 5
  %54 = trunc i64 %52 to i32
  %55 = inttoptr i32 %54 to i8*
  %56 = inttoptr i32 %46 to i8*
  %57 = load i32, i32* %53, align 4, !tbaa !13
  %58 = getelementptr inbounds i8, i8* %56, i32 %57
  %59 = icmp ult i8* %58, %55
  br i1 %59, label %.loopexit, label %60

60:                                               ; preds = %43
  %61 = insertelement <4 x i64> undef, i64 %52, i32 0
  %62 = or i64 %52, 8
  %63 = insertelement <4 x i64> %61, i64 %62, i32 1
  %64 = or i64 %52, 16
  %65 = insertelement <4 x i64> %63, i64 %64, i32 2
  %66 = or i64 %52, 24
  %67 = insertelement <4 x i64> %65, i64 %66, i32 3
  br label %68

68:                                               ; preds = %68, %60
  %69 = phi i8* [ %78, %68 ], [ %55, %60 ]
  %70 = phi <4 x i64> [ %77, %68 ], [ %67, %60 ]
  %71 = icmp eq <4 x i64> %70, %18
  %72 = select <4 x i1> %71, <4 x i64> %24, <4 x i64> zeroinitializer
  %73 = bitcast i8* %69 to <32 x i8>*
  %74 = load <32 x i8>, <32 x i8>* %73, align 1, !tbaa !14
  %75 = bitcast <4 x i64> %72 to <32 x i8>
  %76 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %74, <32 x i8> %25, <32 x i8> %75) #13
  store <32 x i8> %76, <32 x i8>* %73, align 1, !tbaa !14
  %77 = add <4 x i64> %70, <i64 32, i64 32, i64 32, i64 32>
  %78 = getelementptr inbounds i8, i8* %69, i32 32
  %79 = load i8*, i8** %44, align 4, !tbaa !11
  %80 = load i32, i32* %53, align 4, !tbaa !13
  %81 = getelementptr inbounds i8, i8* %79, i32 %80
  %82 = icmp ugt i8* %78, %81
  br i1 %82, label %.loopexit, label %68

83:                                               ; preds = %96, %38
  %84 = phi i32 [ %36, %38 ], [ %97, %96 ]
  %85 = phi i32 [ 0, %38 ], [ %98, %96 ]
  %86 = getelementptr inbounds i64, i64* %42, i32 %85
  %87 = load i64, i64* %86, align 4, !tbaa !19
  %88 = trunc i64 %87 to i32
  %89 = getelementptr inbounds i8, i8* %40, i32 %88
  %90 = icmp eq i8* %89, %26
  %91 = bitcast i8* %89 to i32*
  br i1 %90, label %92, label %94

92:                                               ; preds = %83
  store volatile i32 %27, i32* %91, align 4, !tbaa !21
  %93 = load i32, i32* %35, align 4, !tbaa !15
  br label %96

94:                                               ; preds = %83
  %95 = load volatile i32, i32* %91, align 4, !tbaa !21
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %84, %94 ]
  %98 = add nuw i32 %85, 1
  %99 = icmp ult i32 %98, %97
  br i1 %99, label %83, label %.loopexit

.loopexit:                                        ; preds = %68, %96, %43, %34
  %100 = add nuw i32 %29, 1
  %101 = icmp eq i32 %100, %3
  br i1 %101, label %.loopexit7, label %28
}

; Function Attrs: nofree noinline nounwind
define dso_local void @uint8_t_secure_store_impl(i8 zeroext %0, i8* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #8 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %.loopexit7, label %7

7:                                                ; preds = %5
  %8 = zext i8 %0 to i64
  %9 = ptrtoint i8* %1 to i32
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = and i64 %11, 56
  %13 = shl nuw i64 %8, %12
  %14 = insertelement <4 x i64> undef, i64 %13, i32 0
  %15 = shufflevector <4 x i64> %14, <4 x i64> undef, <4 x i32> zeroinitializer
  %16 = and i64 %10, 4294967288
  %17 = insertelement <4 x i64> undef, i64 %16, i32 0
  %18 = shufflevector <4 x i64> %17, <4 x i64> undef, <4 x i32> zeroinitializer
  %19 = shl i32 %9, 3
  %20 = and i32 %19, 56
  %21 = zext i32 %20 to i64
  %22 = shl nuw i64 255, %21
  %23 = insertelement <4 x i64> undef, i64 %22, i32 0
  %24 = shufflevector <4 x i64> %23, <4 x i64> undef, <4 x i32> zeroinitializer
  %25 = bitcast <4 x i64> %15 to <32 x i8>
  %26 = zext i8 %0 to i32
  br label %27

.loopexit7:                                       ; preds = %.loopexit, %5
  ret void

27:                                               ; preds = %.loopexit, %7
  %28 = phi i32 [ 0, %7 ], [ %99, %.loopexit ]
  %29 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %28
  %30 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %28, i32 3
  %31 = load i8, i8* %30, align 4, !tbaa !3, !range !10
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %28, i32 2
  %35 = load i32, i32* %34, align 4, !tbaa !15
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %.loopexit, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %29, i32 0, i32 0
  %39 = load i8*, i8** %38, align 4, !tbaa !11
  %40 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %28, i32 1
  %41 = load i64*, i64** %40, align 4, !tbaa !16
  br label %82

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %29, i32 0, i32 0
  %44 = bitcast %struct.ds_base* %29 to i32*
  %45 = load i32, i32* %44, align 4, !tbaa !11
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %28, i32 4
  %48 = load i32, i32* %47, align 4, !tbaa !12
  %49 = zext i32 %48 to i64
  %50 = add nuw nsw i64 %49, %46
  %51 = and i64 %50, 8589934560
  %52 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %28, i32 5
  %53 = trunc i64 %51 to i32
  %54 = inttoptr i32 %53 to i8*
  %55 = inttoptr i32 %45 to i8*
  %56 = load i32, i32* %52, align 4, !tbaa !13
  %57 = getelementptr inbounds i8, i8* %55, i32 %56
  %58 = icmp ult i8* %57, %54
  br i1 %58, label %.loopexit, label %59

59:                                               ; preds = %42
  %60 = insertelement <4 x i64> undef, i64 %51, i32 0
  %61 = or i64 %51, 8
  %62 = insertelement <4 x i64> %60, i64 %61, i32 1
  %63 = or i64 %51, 16
  %64 = insertelement <4 x i64> %62, i64 %63, i32 2
  %65 = or i64 %51, 24
  %66 = insertelement <4 x i64> %64, i64 %65, i32 3
  br label %67

67:                                               ; preds = %67, %59
  %68 = phi i8* [ %77, %67 ], [ %54, %59 ]
  %69 = phi <4 x i64> [ %76, %67 ], [ %66, %59 ]
  %70 = icmp eq <4 x i64> %69, %18
  %71 = select <4 x i1> %70, <4 x i64> %24, <4 x i64> zeroinitializer
  %72 = bitcast i8* %68 to <32 x i8>*
  %73 = load <32 x i8>, <32 x i8>* %72, align 1, !tbaa !14
  %74 = bitcast <4 x i64> %71 to <32 x i8>
  %75 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %73, <32 x i8> %25, <32 x i8> %74) #13
  store <32 x i8> %75, <32 x i8>* %72, align 1, !tbaa !14
  %76 = add <4 x i64> %69, <i64 32, i64 32, i64 32, i64 32>
  %77 = getelementptr inbounds i8, i8* %68, i32 32
  %78 = load i8*, i8** %43, align 4, !tbaa !11
  %79 = load i32, i32* %52, align 4, !tbaa !13
  %80 = getelementptr inbounds i8, i8* %78, i32 %79
  %81 = icmp ugt i8* %77, %80
  br i1 %81, label %.loopexit, label %67

82:                                               ; preds = %95, %37
  %83 = phi i32 [ %35, %37 ], [ %96, %95 ]
  %84 = phi i32 [ 0, %37 ], [ %97, %95 ]
  %85 = getelementptr inbounds i64, i64* %41, i32 %84
  %86 = load i64, i64* %85, align 4, !tbaa !19
  %87 = trunc i64 %86 to i32
  %88 = getelementptr inbounds i8, i8* %39, i32 %87
  %89 = icmp eq i8* %88, %1
  %90 = bitcast i8* %88 to i32*
  br i1 %89, label %91, label %93

91:                                               ; preds = %82
  store volatile i32 %26, i32* %90, align 4, !tbaa !21
  %92 = load i32, i32* %34, align 4, !tbaa !15
  br label %95

93:                                               ; preds = %82
  %94 = load volatile i32, i32* %90, align 4, !tbaa !21
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %83, %93 ]
  %97 = add nuw i32 %84, 1
  %98 = icmp ult i32 %97, %96
  br i1 %98, label %82, label %.loopexit

.loopexit:                                        ; preds = %67, %95, %42, %33
  %99 = add nuw i32 %28, 1
  %100 = icmp eq i32 %99, %3
  br i1 %100, label %.loopexit7, label %27
}

; Function Attrs: nofree nounwind
define dso_local void @uint64_t_secure_store(i64 %0, i64* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #9 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = icmp eq i64* %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  store i64 %0, i64* %1, align 4, !tbaa !19
  br label %11

10:                                               ; preds = %5
  tail call void @uint64_t_secure_store_impl(i64 %0, i64* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %11

11:                                               ; preds = %10, %9, %7
  ret void
}

; Function Attrs: nofree nounwind
define dso_local void @uint32_t_secure_store(i32 %0, i32* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #9 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = icmp eq i32* %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  store i32 %0, i32* %1, align 4, !tbaa !21
  br label %11

10:                                               ; preds = %5
  tail call void @uint32_t_secure_store_impl(i32 %0, i32* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %11

11:                                               ; preds = %10, %9, %7
  ret void
}

; Function Attrs: nofree nounwind
define dso_local void @uint16_t_secure_store(i16 zeroext %0, i16* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #9 {
  %6 = icmp eq i32 %4, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = icmp eq i16* %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  store i16 %0, i16* %1, align 2, !tbaa !22
  br label %11

10:                                               ; preds = %5
  tail call void @uint16_t_secure_store_impl(i16 zeroext %0, i16* %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %11

11:                                               ; preds = %10, %9, %7
  ret void
}

; Function Attrs: nofree nounwind
define dso_local void @uint8_t_secure_store(i8 zeroext %0, i8* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #9 {
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

11:                                               ; preds = %10, %9, %7
  ret void
}

; Function Attrs: nounwind
define dso_local void @uint64_t_secure_store_sensitive(i64 %0, i64* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #7 {
  %6 = icmp eq i32 %4, 1
  %7 = icmp ne i64* %1, null
  br i1 %6, label %8, label %18

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 0, i32 0
  %10 = load i8*, i8** %9, align 4, !tbaa !11
  %11 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 0, i32 4
  %12 = load i32, i32* %11, align 4, !tbaa !12
  %13 = getelementptr inbounds i8, i8* %10, i32 %12
  %14 = bitcast i8* %13 to i64*
  br i1 %7, label %15, label %16

15:                                               ; preds = %8
  store volatile i64 %0, i64* %14, align 4, !tbaa !19
  br label %22

16:                                               ; preds = %8
  %17 = load volatile i64, i64* %14, align 4, !tbaa !19
  br label %22

18:                                               ; preds = %5
  br i1 %7, label %19, label %20

19:                                               ; preds = %18
  tail call void @uint64_t_secure_store_impl(i64 %0, i64* nonnull %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %22

20:                                               ; preds = %18
  %21 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %22

22:                                               ; preds = %20, %19, %16, %15
  ret void
}

; Function Attrs: nounwind
define dso_local void @uint32_t_secure_store_sensitive(i32 %0, i32* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #7 {
  %6 = icmp eq i32 %4, 1
  %7 = icmp ne i32* %1, null
  br i1 %6, label %8, label %18

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 0, i32 0
  %10 = load i8*, i8** %9, align 4, !tbaa !11
  %11 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 0, i32 4
  %12 = load i32, i32* %11, align 4, !tbaa !12
  %13 = getelementptr inbounds i8, i8* %10, i32 %12
  %14 = bitcast i8* %13 to i32*
  br i1 %7, label %15, label %16

15:                                               ; preds = %8
  store volatile i32 %0, i32* %14, align 4, !tbaa !21
  br label %22

16:                                               ; preds = %8
  %17 = load volatile i32, i32* %14, align 4, !tbaa !21
  br label %22

18:                                               ; preds = %5
  br i1 %7, label %19, label %20

19:                                               ; preds = %18
  tail call void @uint32_t_secure_store_impl(i32 %0, i32* nonnull %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %22

20:                                               ; preds = %18
  %21 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %22

22:                                               ; preds = %20, %19, %16, %15
  ret void
}

; Function Attrs: nounwind
define dso_local void @uint16_t_secure_store_sensitive(i16 zeroext %0, i16* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #7 {
  %6 = icmp eq i32 %4, 1
  %7 = icmp ne i16* %1, null
  br i1 %6, label %8, label %18

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 0, i32 0
  %10 = load i8*, i8** %9, align 4, !tbaa !11
  %11 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 0, i32 4
  %12 = load i32, i32* %11, align 4, !tbaa !12
  %13 = getelementptr inbounds i8, i8* %10, i32 %12
  %14 = bitcast i8* %13 to i16*
  br i1 %7, label %15, label %16

15:                                               ; preds = %8
  store volatile i16 %0, i16* %14, align 2, !tbaa !22
  br label %22

16:                                               ; preds = %8
  %17 = load volatile i16, i16* %14, align 2, !tbaa !22
  br label %22

18:                                               ; preds = %5
  br i1 %7, label %19, label %20

19:                                               ; preds = %18
  tail call void @uint16_t_secure_store_impl(i16 zeroext %0, i16* nonnull %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %22

20:                                               ; preds = %18
  %21 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %22

22:                                               ; preds = %20, %19, %16, %15
  ret void
}

; Function Attrs: nounwind
define dso_local void @uint8_t_secure_store_sensitive(i8 zeroext %0, i8* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #7 {
  %6 = icmp eq i32 %4, 1
  %7 = icmp ne i8* %1, null
  br i1 %6, label %8, label %17

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 0, i32 0
  %10 = load i8*, i8** %9, align 4, !tbaa !11
  %11 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 0, i32 4
  %12 = load i32, i32* %11, align 4, !tbaa !12
  %13 = getelementptr inbounds i8, i8* %10, i32 %12
  br i1 %7, label %14, label %15

14:                                               ; preds = %8
  store volatile i8 %0, i8* %13, align 1, !tbaa !14
  br label %21

15:                                               ; preds = %8
  %16 = load volatile i8, i8* %13, align 1, !tbaa !14
  br label %21

17:                                               ; preds = %5
  br i1 %7, label %18, label %19

18:                                               ; preds = %17
  tail call void @uint8_t_secure_store_impl(i8 zeroext %0, i8* nonnull %1, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %21

19:                                               ; preds = %17
  %20 = tail call i64 @uint64_t_secure_load_impl(i64* null, %struct.ds_base* %2, i32 %3, i32 undef)
  br label %21

21:                                               ; preds = %19, %18, %15, %14
  ret void
}

; Function Attrs: norecurse nounwind readnone
define dso_local void @branch_id(i8* nocapture %0) local_unnamed_addr #10 {
  ret void
}

; Function Attrs: nounwind
define dso_local i32 @main() #7 {
  %1 = alloca [3 x i32], align 8
  %2 = alloca [3 x i32], align 8
  %3 = alloca [3 x i32], align 8
  %.0.sroa_cast2325 = bitcast [3 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %.0.sroa_cast2325)
  %.0.sroa_cast1720 = bitcast [3 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %.0.sroa_cast1720)
  %.0.sroa_cast1449 = bitcast [3 x i32]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %.0.sroa_cast1449)
  %4 = tail call i32 @read(i32 0, i8* bitcast ([3 x i32]* @in_key to i8*), i32 12) #13
  %5 = tail call i32 @read(i32 0, i8* bitcast ([3 x i32]* @in_pub to i8*), i32 12) #13
  %6 = load i64, i64* bitcast ([3 x i32]* @in_key to i64*), align 8, !tbaa !19
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  store i32 %7, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 0, i32 0), align 4, !tbaa !21
  %8 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_key, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  store i32 %9, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 0, i32 1), align 4, !tbaa !21
  %10 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_key, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  store i32 %11, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 0, i32 2), align 4, !tbaa !21
  %12 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %13 = trunc i64 %12 to i32
  %14 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %15 = trunc i64 %14 to i32
  %16 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %17 = trunc i64 %16 to i32
  %18 = ashr i32 %13, 16
  %19 = xor i32 %18, %13
  %20 = shl i32 %15, 16
  %21 = ashr i32 %15, 16
  %22 = shl i32 %17, 16
  %23 = ashr i32 %15, 24
  %24 = shl i32 %17, 8
  %25 = ashr i32 %17, 8
  %26 = shl i32 %13, 24
  %27 = ashr i32 %17, 16
  %28 = shl i32 %13, 16
  %29 = ashr i32 %17, 24
  %30 = shl i32 %13, 8
  %31 = xor i32 %19, %26
  %32 = xor i32 %31, %28
  %33 = xor i32 %32, %30
  %34 = xor i32 %33, %20
  %35 = xor i32 %34, %21
  %36 = xor i32 %35, %23
  %37 = xor i32 %36, %22
  %38 = xor i32 %37, %24
  %39 = xor i32 %38, %25
  %40 = xor i32 %39, %27
  %41 = xor i32 %40, %29
  %.0.sroa_idx1439 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i32 0, i32 0
  store i32 %41, i32* %.0.sroa_idx1439, align 8, !tbaa !21
  %42 = ashr i32 %13, 8
  %43 = shl i32 %15, 24
  %44 = ashr i32 %13, 24
  %45 = shl i32 %15, 8
  %46 = xor i32 %28, %15
  %47 = xor i32 %46, %30
  %48 = xor i32 %47, %42
  %49 = xor i32 %48, %18
  %50 = xor i32 %49, %44
  %51 = xor i32 %50, %21
  %52 = xor i32 %51, %43
  %53 = xor i32 %52, %20
  %54 = xor i32 %53, %45
  %55 = xor i32 %54, %22
  %56 = xor i32 %55, %27
  %57 = xor i32 %56, %29
  %.4.sroa_idx1476 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i32 0, i32 1
  store i32 %57, i32* %.4.sroa_idx1476, align 4, !tbaa !21
  %58 = ashr i32 %15, 8
  %59 = shl i32 %17, 24
  %60 = xor i32 %18, %28
  %61 = xor i32 %60, %44
  %62 = xor i32 %61, %17
  %63 = xor i32 %62, %20
  %64 = xor i32 %63, %45
  %65 = xor i32 %64, %58
  %66 = xor i32 %65, %21
  %67 = xor i32 %66, %23
  %68 = xor i32 %67, %27
  %69 = xor i32 %68, %59
  %70 = xor i32 %69, %22
  %71 = xor i32 %70, %24
  %.8.sroa_idx1510 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i32 0, i32 2
  store i32 %71, i32* %.8.sroa_idx1510, align 8, !tbaa !21
  %.0.sroa_cast1425 = bitcast [3 x i32]* %3 to i64*
  %.0..0.24 = load i64, i64* %.0.sroa_cast1425, align 8, !tbaa !19
  %72 = trunc i64 %.0..0.24 to i32
  store i32 %72, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %.4.sroa_cast1452 = bitcast i32* %.4.sroa_idx1476 to i64*
  %.4..4.71 = load i64, i64* %.4.sroa_cast1452, align 4, !tbaa !19
  %73 = trunc i64 %.4..4.71 to i32
  store i32 %73, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %.8.sroa_cast1509 = bitcast i32* %.8.sroa_idx1510 to i64*
  %.8..8.134 = load i64, i64* %.8.sroa_cast1509, align 8, !tbaa !19
  %74 = trunc i64 %.8..8.134 to i32
  store i32 %74, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0.sroa_idx1637 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i32 0, i32 0
  store i32 0, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4.sroa_idx1931 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i32 0, i32 1
  store i32 0, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8.sroa_idx2151 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i32 0, i32 2
  store i32 0, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %.0.sroa_cast1567 = bitcast [3 x i32]* %2 to i64*
  %.0..0.202 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %75 = trunc i64 %.0..0.202 to i32
  %76 = shl i32 %75, 1
  store i32 %76, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4.sroa_cast1802 = bitcast i32* %.4.sroa_idx1931 to i64*
  %.4..4.593 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %77 = trunc i64 %.4..4.593 to i32
  %78 = shl i32 %77, 1
  store i32 %78, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8.sroa_cast2150 = bitcast i32* %.8.sroa_idx2151 to i64*
  %.8..8.1048 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %79 = trunc i64 %.8..8.1048 to i32
  %80 = shl i32 %79, 1
  store i32 %80, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %81 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %82 = trunc i64 %81 to i32
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %0
  %86 = load volatile i8, i8* blockaddress(@main, %87), align 1, !tbaa !14
  %.8..8.1137 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.1292 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %91

87:                                               ; preds = %0
  %88 = load volatile i8, i8* blockaddress(@main, %85), align 1, !tbaa !14
  %.8..8.1134 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %89 = trunc i64 %.8..8.1134 to i32
  %90 = or i32 %89, 1
  store volatile i32 %90, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %91

91:                                               ; preds = %87, %85
  %92 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %93 = trunc i64 %92 to i32
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load volatile i8, i8* blockaddress(@main, %98), align 1, !tbaa !14
  %.4..4.653 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.833 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %102

98:                                               ; preds = %91
  %99 = load volatile i8, i8* blockaddress(@main, %96), align 1, !tbaa !14
  %.4..4.656 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %100 = trunc i64 %.4..4.656 to i32
  %101 = or i32 %100, 1
  store volatile i32 %101, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %102

102:                                              ; preds = %98, %96
  %103 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %104 = trunc i64 %103 to i32
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load volatile i8, i8* blockaddress(@main, %109), align 1, !tbaa !14
  %.0..0.174 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.381 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %113

109:                                              ; preds = %102
  %110 = load volatile i8, i8* blockaddress(@main, %107), align 1, !tbaa !14
  %.0..0.184 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %111 = trunc i64 %.0..0.184 to i32
  %112 = or i32 %111, 1
  store volatile i32 %112, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %113

113:                                              ; preds = %109, %107
  %114 = ashr i32 %82, 1
  store i32 %114, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %115 = ashr i32 %93, 1
  store i32 %115, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %116 = ashr i32 %104, 1
  store i32 %116, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.190 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %117 = trunc i64 %.0..0.190 to i32
  %118 = shl i32 %117, 1
  store i32 %118, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.596 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %119 = trunc i64 %.4..4.596 to i32
  %120 = shl i32 %119, 1
  store i32 %120, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.1052 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %121 = trunc i64 %.8..8.1052 to i32
  %122 = shl i32 %121, 1
  store i32 %122, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %123 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %124 = trunc i64 %123 to i32
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %113
  %128 = load volatile i8, i8* blockaddress(@main, %129), align 1, !tbaa !14
  %.8..8.1131 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.1295 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %133

129:                                              ; preds = %113
  %130 = load volatile i8, i8* blockaddress(@main, %127), align 1, !tbaa !14
  %.8..8.1128 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %131 = trunc i64 %.8..8.1128 to i32
  %132 = or i32 %131, 1
  store volatile i32 %132, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %133

133:                                              ; preds = %129, %127
  %134 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %135 = trunc i64 %134 to i32
  %136 = and i32 %135, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load volatile i8, i8* blockaddress(@main, %140), align 1, !tbaa !14
  %.4..4.659 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.830 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %144

140:                                              ; preds = %133
  %141 = load volatile i8, i8* blockaddress(@main, %138), align 1, !tbaa !14
  %.4..4.662 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %142 = trunc i64 %.4..4.662 to i32
  %143 = or i32 %142, 1
  store volatile i32 %143, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %144

144:                                              ; preds = %140, %138
  %145 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %146 = trunc i64 %145 to i32
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = load volatile i8, i8* blockaddress(@main, %151), align 1, !tbaa !14
  %.0..0.172 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.365 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %155

151:                                              ; preds = %144
  %152 = load volatile i8, i8* blockaddress(@main, %149), align 1, !tbaa !14
  %.0..0.264 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %153 = trunc i64 %.0..0.264 to i32
  %154 = or i32 %153, 1
  store volatile i32 %154, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %155

155:                                              ; preds = %151, %149
  %156 = ashr i32 %124, 1
  store i32 %156, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %157 = ashr i32 %135, 1
  store i32 %157, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %158 = ashr i32 %146, 1
  store i32 %158, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.198 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %159 = trunc i64 %.0..0.198 to i32
  %160 = shl i32 %159, 1
  store i32 %160, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.599 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %161 = trunc i64 %.4..4.599 to i32
  %162 = shl i32 %161, 1
  store i32 %162, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.887 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %163 = trunc i64 %.8..8.887 to i32
  %164 = shl i32 %163, 1
  store i32 %164, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %165 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %166 = trunc i64 %165 to i32
  %167 = and i32 %166, 1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %155
  %170 = load volatile i8, i8* blockaddress(@main, %171), align 1, !tbaa !14
  %.8..8.1125 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.1298 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %175

171:                                              ; preds = %155
  %172 = load volatile i8, i8* blockaddress(@main, %169), align 1, !tbaa !14
  %.8..8.1122 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %173 = trunc i64 %.8..8.1122 to i32
  %174 = or i32 %173, 1
  store volatile i32 %174, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %175

175:                                              ; preds = %171, %169
  %176 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %177 = trunc i64 %176 to i32
  %178 = and i32 %177, 1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %175
  %181 = load volatile i8, i8* blockaddress(@main, %182), align 1, !tbaa !14
  %.4..4.665 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.827 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %186

182:                                              ; preds = %175
  %183 = load volatile i8, i8* blockaddress(@main, %180), align 1, !tbaa !14
  %.4..4.668 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %184 = trunc i64 %.4..4.668 to i32
  %185 = or i32 %184, 1
  store volatile i32 %185, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %186

186:                                              ; preds = %182, %180
  %187 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %188 = trunc i64 %187 to i32
  %189 = and i32 %188, 1
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = load volatile i8, i8* blockaddress(@main, %193), align 1, !tbaa !14
  %.0..0.256 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.376 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %197

193:                                              ; preds = %186
  %194 = load volatile i8, i8* blockaddress(@main, %191), align 1, !tbaa !14
  %.0..0.250 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %195 = trunc i64 %.0..0.250 to i32
  %196 = or i32 %195, 1
  store volatile i32 %196, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %197

197:                                              ; preds = %193, %191
  %198 = ashr i32 %166, 1
  store i32 %198, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %199 = ashr i32 %177, 1
  store i32 %199, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %200 = ashr i32 %188, 1
  store i32 %200, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.192 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %201 = trunc i64 %.0..0.192 to i32
  %202 = shl i32 %201, 1
  store i32 %202, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.536 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %203 = trunc i64 %.4..4.536 to i32
  %204 = shl i32 %203, 1
  store i32 %204, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.894 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %205 = trunc i64 %.8..8.894 to i32
  %206 = shl i32 %205, 1
  store i32 %206, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %207 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %208 = trunc i64 %207 to i32
  %209 = and i32 %208, 1
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %197
  %212 = load volatile i8, i8* blockaddress(@main, %213), align 1, !tbaa !14
  %.8..8.1119 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.1301 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %217

213:                                              ; preds = %197
  %214 = load volatile i8, i8* blockaddress(@main, %211), align 1, !tbaa !14
  %.8..8.1090 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %215 = trunc i64 %.8..8.1090 to i32
  %216 = or i32 %215, 1
  store volatile i32 %216, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %217

217:                                              ; preds = %213, %211
  %218 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %219 = trunc i64 %218 to i32
  %220 = and i32 %219, 1
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %217
  %223 = load volatile i8, i8* blockaddress(@main, %224), align 1, !tbaa !14
  %.4..4.671 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.839 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %228

224:                                              ; preds = %217
  %225 = load volatile i8, i8* blockaddress(@main, %222), align 1, !tbaa !14
  %.4..4.674 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %226 = trunc i64 %.4..4.674 to i32
  %227 = or i32 %226, 1
  store volatile i32 %227, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %228

228:                                              ; preds = %224, %222
  %229 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %230 = trunc i64 %229 to i32
  %231 = and i32 %230, 1
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = load volatile i8, i8* blockaddress(@main, %235), align 1, !tbaa !14
  %.0..0.240 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.373 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %239

235:                                              ; preds = %228
  %236 = load volatile i8, i8* blockaddress(@main, %233), align 1, !tbaa !14
  %.0..0.330 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %237 = trunc i64 %.0..0.330 to i32
  %238 = or i32 %237, 1
  store volatile i32 %238, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %239

239:                                              ; preds = %235, %233
  %240 = ashr i32 %208, 1
  store i32 %240, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %241 = ashr i32 %219, 1
  store i32 %241, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %242 = ashr i32 %230, 1
  store i32 %242, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.204 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %243 = trunc i64 %.0..0.204 to i32
  %244 = shl i32 %243, 1
  store i32 %244, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.500 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %245 = trunc i64 %.4..4.500 to i32
  %246 = shl i32 %245, 1
  store i32 %246, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.919 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %247 = trunc i64 %.8..8.919 to i32
  %248 = shl i32 %247, 1
  store i32 %248, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %249 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %250 = trunc i64 %249 to i32
  %251 = and i32 %250, 1
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %239
  %254 = load volatile i8, i8* blockaddress(@main, %255), align 1, !tbaa !14
  %.8..8.1113 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.1192 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %259

255:                                              ; preds = %239
  %256 = load volatile i8, i8* blockaddress(@main, %253), align 1, !tbaa !14
  %.8..8.1110 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %257 = trunc i64 %.8..8.1110 to i32
  %258 = or i32 %257, 1
  store volatile i32 %258, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %259

259:                                              ; preds = %255, %253
  %260 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %261 = trunc i64 %260 to i32
  %262 = and i32 %261, 1
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %259
  %265 = load volatile i8, i8* blockaddress(@main, %266), align 1, !tbaa !14
  %.4..4.680 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.793 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %270

266:                                              ; preds = %259
  %267 = load volatile i8, i8* blockaddress(@main, %264), align 1, !tbaa !14
  %.4..4.677 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %268 = trunc i64 %.4..4.677 to i32
  %269 = or i32 %268, 1
  store volatile i32 %269, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %270

270:                                              ; preds = %266, %264
  %271 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %272 = trunc i64 %271 to i32
  %273 = and i32 %272, 1
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %270
  %276 = load volatile i8, i8* blockaddress(@main, %277), align 1, !tbaa !14
  %.0..0.320 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.370 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %281

277:                                              ; preds = %270
  %278 = load volatile i8, i8* blockaddress(@main, %275), align 1, !tbaa !14
  %.0..0.244 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %279 = trunc i64 %.0..0.244 to i32
  %280 = or i32 %279, 1
  store volatile i32 %280, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %281

281:                                              ; preds = %277, %275
  %282 = ashr i32 %250, 1
  store i32 %282, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %283 = ashr i32 %261, 1
  store i32 %283, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %284 = ashr i32 %272, 1
  store i32 %284, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.194 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %285 = trunc i64 %.0..0.194 to i32
  %286 = shl i32 %285, 1
  store i32 %286, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.572 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %287 = trunc i64 %.4..4.572 to i32
  %288 = shl i32 %287, 1
  store i32 %288, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.891 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %289 = trunc i64 %.8..8.891 to i32
  %290 = shl i32 %289, 1
  store i32 %290, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %291 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %292 = trunc i64 %291 to i32
  %293 = and i32 %292, 1
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %281
  %296 = load volatile i8, i8* blockaddress(@main, %297), align 1, !tbaa !14
  %.8..8.1107 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.1290 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %301

297:                                              ; preds = %281
  %298 = load volatile i8, i8* blockaddress(@main, %295), align 1, !tbaa !14
  %.8..8.1077 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %299 = trunc i64 %.8..8.1077 to i32
  %300 = or i32 %299, 1
  store volatile i32 %300, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %301

301:                                              ; preds = %297, %295
  %302 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %303 = trunc i64 %302 to i32
  %304 = and i32 %303, 1
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %301
  %307 = load volatile i8, i8* blockaddress(@main, %308), align 1, !tbaa !14
  %.4..4.650 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.796 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %312

308:                                              ; preds = %301
  %309 = load volatile i8, i8* blockaddress(@main, %306), align 1, !tbaa !14
  %.4..4.722 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %310 = trunc i64 %.4..4.722 to i32
  %311 = or i32 %310, 1
  store volatile i32 %311, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %312

312:                                              ; preds = %308, %306
  %313 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %314 = trunc i64 %313 to i32
  %315 = and i32 %314, 1
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %312
  %318 = load volatile i8, i8* blockaddress(@main, %319), align 1, !tbaa !14
  %.0..0.294 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.367 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %323

319:                                              ; preds = %312
  %320 = load volatile i8, i8* blockaddress(@main, %317), align 1, !tbaa !14
  %.0..0.300 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %321 = trunc i64 %.0..0.300 to i32
  %322 = or i32 %321, 1
  store volatile i32 %322, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %323

323:                                              ; preds = %319, %317
  %324 = ashr i32 %292, 1
  store i32 %324, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %325 = ashr i32 %303, 1
  store i32 %325, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %326 = ashr i32 %314, 1
  store i32 %326, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.206 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %327 = trunc i64 %.0..0.206 to i32
  %328 = shl i32 %327, 1
  store i32 %328, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.467 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %329 = trunc i64 %.4..4.467 to i32
  %330 = shl i32 %329, 1
  store i32 %330, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.1004 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %331 = trunc i64 %.8..8.1004 to i32
  %332 = shl i32 %331, 1
  store i32 %332, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %333 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %334 = trunc i64 %333 to i32
  %335 = and i32 %334, 1
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %323
  %338 = load volatile i8, i8* blockaddress(@main, %339), align 1, !tbaa !14
  %.8..8.1102 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.1198 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %343

339:                                              ; preds = %323
  %340 = load volatile i8, i8* blockaddress(@main, %337), align 1, !tbaa !14
  %.8..8.1099 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %341 = trunc i64 %.8..8.1099 to i32
  %342 = or i32 %341, 1
  store volatile i32 %342, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %343

343:                                              ; preds = %339, %337
  %344 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %345 = trunc i64 %344 to i32
  %346 = and i32 %345, 1
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %343
  %349 = load volatile i8, i8* blockaddress(@main, %350), align 1, !tbaa !14
  %.4..4.683 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.799 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %354

350:                                              ; preds = %343
  %351 = load volatile i8, i8* blockaddress(@main, %348), align 1, !tbaa !14
  %.4..4.719 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %352 = trunc i64 %.4..4.719 to i32
  %353 = or i32 %352, 1
  store volatile i32 %353, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %354

354:                                              ; preds = %350, %348
  %355 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %356 = trunc i64 %355 to i32
  %357 = and i32 %356, 1
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %354
  %360 = load volatile i8, i8* blockaddress(@main, %361), align 1, !tbaa !14
  %.0..0.286 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.392 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %365

361:                                              ; preds = %354
  %362 = load volatile i8, i8* blockaddress(@main, %359), align 1, !tbaa !14
  %.0..0.314 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %363 = trunc i64 %.0..0.314 to i32
  %364 = or i32 %363, 1
  store volatile i32 %364, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %365

365:                                              ; preds = %361, %359
  %366 = ashr i32 %334, 1
  store i32 %366, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %367 = ashr i32 %345, 1
  store i32 %367, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %368 = ashr i32 %356, 1
  store i32 %368, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.196 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %369 = trunc i64 %.0..0.196 to i32
  %370 = shl i32 %369, 1
  store i32 %370, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.470 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %371 = trunc i64 %.4..4.470 to i32
  %372 = shl i32 %371, 1
  store i32 %372, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.985 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %373 = trunc i64 %.8..8.985 to i32
  %374 = shl i32 %373, 1
  store i32 %374, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %375 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %376 = trunc i64 %375 to i32
  %377 = and i32 %376, 1
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %365
  %380 = load volatile i8, i8* blockaddress(@main, %381), align 1, !tbaa !14
  %.8..8.1096 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.1201 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %385

381:                                              ; preds = %365
  %382 = load volatile i8, i8* blockaddress(@main, %379), align 1, !tbaa !14
  %.8..8.1093 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %383 = trunc i64 %.8..8.1093 to i32
  %384 = or i32 %383, 1
  store volatile i32 %384, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %385

385:                                              ; preds = %381, %379
  %386 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %387 = trunc i64 %386 to i32
  %388 = and i32 %387, 1
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %392

390:                                              ; preds = %385
  %391 = load volatile i8, i8* blockaddress(@main, %392), align 1, !tbaa !14
  %.4..4.716 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.802 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %396

392:                                              ; preds = %385
  %393 = load volatile i8, i8* blockaddress(@main, %390), align 1, !tbaa !14
  %.4..4.713 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %394 = trunc i64 %.4..4.713 to i32
  %395 = or i32 %394, 1
  store volatile i32 %395, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %396

396:                                              ; preds = %392, %390
  %397 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %398 = trunc i64 %397 to i32
  %399 = and i32 %398, 1
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %403

401:                                              ; preds = %396
  %402 = load volatile i8, i8* blockaddress(@main, %403), align 1, !tbaa !14
  %.0..0.276 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.395 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %407

403:                                              ; preds = %396
  %404 = load volatile i8, i8* blockaddress(@main, %401), align 1, !tbaa !14
  %.0..0.270 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %405 = trunc i64 %.0..0.270 to i32
  %406 = or i32 %405, 1
  store volatile i32 %406, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %407

407:                                              ; preds = %403, %401
  %408 = ashr i32 %376, 1
  store i32 %408, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %409 = ashr i32 %387, 1
  store i32 %409, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %410 = ashr i32 %398, 1
  store i32 %410, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.232 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %411 = trunc i64 %.0..0.232 to i32
  %412 = shl i32 %411, 1
  store i32 %412, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.476 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %413 = trunc i64 %.4..4.476 to i32
  %414 = shl i32 %413, 1
  store i32 %414, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.1014 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %415 = trunc i64 %.8..8.1014 to i32
  %416 = shl i32 %415, 1
  store i32 %416, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %417 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %418 = trunc i64 %417 to i32
  %419 = and i32 %418, 1
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %423

421:                                              ; preds = %407
  %422 = load volatile i8, i8* blockaddress(@main, %423), align 1, !tbaa !14
  %.8..8.1116 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.1204 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %427

423:                                              ; preds = %407
  %424 = load volatile i8, i8* blockaddress(@main, %421), align 1, !tbaa !14
  %.8..8.1246 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %425 = trunc i64 %.8..8.1246 to i32
  %426 = or i32 %425, 1
  store volatile i32 %426, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %427

427:                                              ; preds = %423, %421
  %428 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %429 = trunc i64 %428 to i32
  %430 = and i32 %429, 1
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %434

432:                                              ; preds = %427
  %433 = load volatile i8, i8* blockaddress(@main, %434), align 1, !tbaa !14
  %.4..4.710 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.822 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %438

434:                                              ; preds = %427
  %435 = load volatile i8, i8* blockaddress(@main, %432), align 1, !tbaa !14
  %.4..4.707 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %436 = trunc i64 %.4..4.707 to i32
  %437 = or i32 %436, 1
  store volatile i32 %437, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %438

438:                                              ; preds = %434, %432
  %439 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %440 = trunc i64 %439 to i32
  %441 = and i32 %440, 1
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %443, label %445

443:                                              ; preds = %438
  %444 = load volatile i8, i8* blockaddress(@main, %445), align 1, !tbaa !14
  %.0..0.272 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.389 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %449

445:                                              ; preds = %438
  %446 = load volatile i8, i8* blockaddress(@main, %443), align 1, !tbaa !14
  %.0..0.274 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %447 = trunc i64 %.0..0.274 to i32
  %448 = or i32 %447, 1
  store volatile i32 %448, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %449

449:                                              ; preds = %445, %443
  %450 = ashr i32 %418, 1
  store i32 %450, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %451 = ashr i32 %429, 1
  store i32 %451, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %452 = ashr i32 %440, 1
  store i32 %452, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.156 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %453 = trunc i64 %.0..0.156 to i32
  %454 = shl i32 %453, 1
  store i32 %454, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.479 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %455 = trunc i64 %.4..4.479 to i32
  %456 = shl i32 %455, 1
  store i32 %456, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.1019 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %457 = trunc i64 %.8..8.1019 to i32
  %458 = shl i32 %457, 1
  store i32 %458, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %459 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %460 = trunc i64 %459 to i32
  %461 = and i32 %460, 1
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %463, label %465

463:                                              ; preds = %449
  %464 = load volatile i8, i8* blockaddress(@main, %465), align 1, !tbaa !14
  %.8..8.1249 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.1207 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %469

465:                                              ; preds = %449
  %466 = load volatile i8, i8* blockaddress(@main, %463), align 1, !tbaa !14
  %.8..8.1252 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %467 = trunc i64 %.8..8.1252 to i32
  %468 = or i32 %467, 1
  store volatile i32 %468, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %469

469:                                              ; preds = %465, %463
  %470 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %471 = trunc i64 %470 to i32
  %472 = and i32 %471, 1
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %476

474:                                              ; preds = %469
  %475 = load volatile i8, i8* blockaddress(@main, %476), align 1, !tbaa !14
  %.4..4.704 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.807 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %480

476:                                              ; preds = %469
  %477 = load volatile i8, i8* blockaddress(@main, %474), align 1, !tbaa !14
  %.4..4.701 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %478 = trunc i64 %.4..4.701 to i32
  %479 = or i32 %478, 1
  store volatile i32 %479, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %480

480:                                              ; preds = %476, %474
  %481 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %482 = trunc i64 %481 to i32
  %483 = and i32 %482, 1
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %485, label %487

485:                                              ; preds = %480
  %486 = load volatile i8, i8* blockaddress(@main, %487), align 1, !tbaa !14
  %.0..0.278 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.408 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %491

487:                                              ; preds = %480
  %488 = load volatile i8, i8* blockaddress(@main, %485), align 1, !tbaa !14
  %.0..0.280 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %489 = trunc i64 %.0..0.280 to i32
  %490 = or i32 %489, 1
  store volatile i32 %490, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %491

491:                                              ; preds = %487, %485
  %492 = ashr i32 %460, 1
  store i32 %492, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %493 = ashr i32 %471, 1
  store i32 %493, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %494 = ashr i32 %482, 1
  store i32 %494, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.154 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %495 = trunc i64 %.0..0.154 to i32
  %496 = shl i32 %495, 1
  store i32 %496, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.482 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %497 = trunc i64 %.4..4.482 to i32
  %498 = shl i32 %497, 1
  store i32 %498, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.1024 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %499 = trunc i64 %.8..8.1024 to i32
  %500 = shl i32 %499, 1
  store i32 %500, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %501 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %502 = trunc i64 %501 to i32
  %503 = and i32 %502, 1
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %507

505:                                              ; preds = %491
  %506 = load volatile i8, i8* blockaddress(@main, %507), align 1, !tbaa !14
  %.8..8.1255 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.1190 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %511

507:                                              ; preds = %491
  %508 = load volatile i8, i8* blockaddress(@main, %505), align 1, !tbaa !14
  %.8..8.1258 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %509 = trunc i64 %.8..8.1258 to i32
  %510 = or i32 %509, 1
  store volatile i32 %510, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %511

511:                                              ; preds = %507, %505
  %512 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %513 = trunc i64 %512 to i32
  %514 = and i32 %513, 1
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %516, label %518

516:                                              ; preds = %511
  %517 = load volatile i8, i8* blockaddress(@main, %518), align 1, !tbaa !14
  %.4..4.725 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.810 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %522

518:                                              ; preds = %511
  %519 = load volatile i8, i8* blockaddress(@main, %516), align 1, !tbaa !14
  %.4..4.614 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %520 = trunc i64 %.4..4.614 to i32
  %521 = or i32 %520, 1
  store volatile i32 %521, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %522

522:                                              ; preds = %518, %516
  %523 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %524 = trunc i64 %523 to i32
  %525 = and i32 %524, 1
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %527, label %529

527:                                              ; preds = %522
  %528 = load volatile i8, i8* blockaddress(@main, %529), align 1, !tbaa !14
  %.0..0.282 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.401 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %533

529:                                              ; preds = %522
  %530 = load volatile i8, i8* blockaddress(@main, %527), align 1, !tbaa !14
  %.0..0.284 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %531 = trunc i64 %.0..0.284 to i32
  %532 = or i32 %531, 1
  store volatile i32 %532, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %533

533:                                              ; preds = %529, %527
  %534 = ashr i32 %502, 1
  store i32 %534, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %535 = ashr i32 %513, 1
  store i32 %535, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %536 = ashr i32 %524, 1
  store i32 %536, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.152 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %537 = trunc i64 %.0..0.152 to i32
  %538 = shl i32 %537, 1
  store i32 %538, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.485 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %539 = trunc i64 %.4..4.485 to i32
  %540 = shl i32 %539, 1
  store i32 %540, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.934 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %541 = trunc i64 %.8..8.934 to i32
  %542 = shl i32 %541, 1
  store i32 %542, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %543 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %544 = trunc i64 %543 to i32
  %545 = and i32 %544, 1
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %549

547:                                              ; preds = %533
  %548 = load volatile i8, i8* blockaddress(@main, %549), align 1, !tbaa !14
  %.8..8.1261 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.905 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %553

549:                                              ; preds = %533
  %550 = load volatile i8, i8* blockaddress(@main, %547), align 1, !tbaa !14
  %.8..8.1264 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %551 = trunc i64 %.8..8.1264 to i32
  %552 = or i32 %551, 1
  store volatile i32 %552, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %553

553:                                              ; preds = %549, %547
  %554 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %555 = trunc i64 %554 to i32
  %556 = and i32 %555, 1
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %558, label %560

558:                                              ; preds = %553
  %559 = load volatile i8, i8* blockaddress(@main, %560), align 1, !tbaa !14
  %.4..4.611 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.789 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %564

560:                                              ; preds = %553
  %561 = load volatile i8, i8* blockaddress(@main, %558), align 1, !tbaa !14
  %.4..4.647 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %562 = trunc i64 %.4..4.647 to i32
  %563 = or i32 %562, 1
  store volatile i32 %563, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %564

564:                                              ; preds = %560, %558
  %565 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %566 = trunc i64 %565 to i32
  %567 = and i32 %566, 1
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %569, label %571

569:                                              ; preds = %564
  %570 = load volatile i8, i8* blockaddress(@main, %571), align 1, !tbaa !14
  %.0..0.312 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.405 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %575

571:                                              ; preds = %564
  %572 = load volatile i8, i8* blockaddress(@main, %569), align 1, !tbaa !14
  %.0..0.310 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %573 = trunc i64 %.0..0.310 to i32
  %574 = or i32 %573, 1
  store volatile i32 %574, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %575

575:                                              ; preds = %571, %569
  %576 = ashr i32 %544, 1
  store i32 %576, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %577 = ashr i32 %555, 1
  store i32 %577, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %578 = ashr i32 %566, 1
  store i32 %578, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.150 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %579 = trunc i64 %.0..0.150 to i32
  %580 = shl i32 %579, 1
  store i32 %580, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.605 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %581 = trunc i64 %.4..4.605 to i32
  %582 = shl i32 %581, 1
  store i32 %582, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.1057 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %583 = trunc i64 %.8..8.1057 to i32
  %584 = shl i32 %583, 1
  store i32 %584, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %585 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %586 = trunc i64 %585 to i32
  %587 = and i32 %586, 1
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %589, label %591

589:                                              ; preds = %575
  %590 = load volatile i8, i8* blockaddress(@main, %591), align 1, !tbaa !14
  %.8..8.1267 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.903 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %595

591:                                              ; preds = %575
  %592 = load volatile i8, i8* blockaddress(@main, %589), align 1, !tbaa !14
  %.8..8.1270 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %593 = trunc i64 %.8..8.1270 to i32
  %594 = or i32 %593, 1
  store volatile i32 %594, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %595

595:                                              ; preds = %591, %589
  %596 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %597 = trunc i64 %596 to i32
  %598 = and i32 %597, 1
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %600, label %602

600:                                              ; preds = %595
  %601 = load volatile i8, i8* blockaddress(@main, %602), align 1, !tbaa !14
  %.4..4.752 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.816 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %606

602:                                              ; preds = %595
  %603 = load volatile i8, i8* blockaddress(@main, %600), align 1, !tbaa !14
  %.4..4.749 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %604 = trunc i64 %.4..4.749 to i32
  %605 = or i32 %604, 1
  store volatile i32 %605, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %606

606:                                              ; preds = %602, %600
  %607 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %608 = trunc i64 %607 to i32
  %609 = and i32 %608, 1
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %613

611:                                              ; preds = %606
  %612 = load volatile i8, i8* blockaddress(@main, %613), align 1, !tbaa !14
  %.0..0.268 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.431 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %617

613:                                              ; preds = %606
  %614 = load volatile i8, i8* blockaddress(@main, %611), align 1, !tbaa !14
  %.0..0.306 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %615 = trunc i64 %.0..0.306 to i32
  %616 = or i32 %615, 1
  store volatile i32 %616, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %617

617:                                              ; preds = %613, %611
  %618 = ashr i32 %586, 1
  store i32 %618, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %619 = ashr i32 %597, 1
  store i32 %619, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %620 = ashr i32 %608, 1
  store i32 %620, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.148 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %621 = trunc i64 %.0..0.148 to i32
  %622 = shl i32 %621, 1
  store i32 %622, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.557 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %623 = trunc i64 %.4..4.557 to i32
  %624 = shl i32 %623, 1
  store i32 %624, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.1062 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %625 = trunc i64 %.8..8.1062 to i32
  %626 = shl i32 %625, 1
  store i32 %626, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %627 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %628 = trunc i64 %627 to i32
  %629 = and i32 %628, 1
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %631, label %633

631:                                              ; preds = %617
  %632 = load volatile i8, i8* blockaddress(@main, %633), align 1, !tbaa !14
  %.8..8.1273 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.977 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %637

633:                                              ; preds = %617
  %634 = load volatile i8, i8* blockaddress(@main, %631), align 1, !tbaa !14
  %.8..8.1276 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %635 = trunc i64 %.8..8.1276 to i32
  %636 = or i32 %635, 1
  store volatile i32 %636, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %637

637:                                              ; preds = %633, %631
  %638 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %639 = trunc i64 %638 to i32
  %640 = and i32 %639, 1
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %642, label %644

642:                                              ; preds = %637
  %643 = load volatile i8, i8* blockaddress(@main, %644), align 1, !tbaa !14
  %.4..4.746 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.819 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %648

644:                                              ; preds = %637
  %645 = load volatile i8, i8* blockaddress(@main, %642), align 1, !tbaa !14
  %.4..4.743 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %646 = trunc i64 %.4..4.743 to i32
  %647 = or i32 %646, 1
  store volatile i32 %647, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %648

648:                                              ; preds = %644, %642
  %649 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %650 = trunc i64 %649 to i32
  %651 = and i32 %650, 1
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %653, label %655

653:                                              ; preds = %648
  %654 = load volatile i8, i8* blockaddress(@main, %655), align 1, !tbaa !14
  %.0..0.304 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.417 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %659

655:                                              ; preds = %648
  %656 = load volatile i8, i8* blockaddress(@main, %653), align 1, !tbaa !14
  %.0..0.302 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %657 = trunc i64 %.0..0.302 to i32
  %658 = or i32 %657, 1
  store volatile i32 %658, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %659

659:                                              ; preds = %655, %653
  %660 = ashr i32 %628, 1
  store i32 %660, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %661 = ashr i32 %639, 1
  store i32 %661, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %662 = ashr i32 %650, 1
  store i32 %662, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.146 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %663 = trunc i64 %.0..0.146 to i32
  %664 = shl i32 %663, 1
  store i32 %664, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.548 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %665 = trunc i64 %.4..4.548 to i32
  %666 = shl i32 %665, 1
  store i32 %666, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.1069 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %667 = trunc i64 %.8..8.1069 to i32
  %668 = shl i32 %667, 1
  store i32 %668, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %669 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %670 = trunc i64 %669 to i32
  %671 = and i32 %670, 1
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %673, label %675

673:                                              ; preds = %659
  %674 = load volatile i8, i8* blockaddress(@main, %675), align 1, !tbaa !14
  %.8..8.1243 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.969 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %679

675:                                              ; preds = %659
  %676 = load volatile i8, i8* blockaddress(@main, %673), align 1, !tbaa !14
  %.8..8.1282 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %677 = trunc i64 %.8..8.1282 to i32
  %678 = or i32 %677, 1
  store volatile i32 %678, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %679

679:                                              ; preds = %675, %673
  %680 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %681 = trunc i64 %680 to i32
  %682 = and i32 %681, 1
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %684, label %686

684:                                              ; preds = %679
  %685 = load volatile i8, i8* blockaddress(@main, %686), align 1, !tbaa !14
  %.4..4.740 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.791 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %690

686:                                              ; preds = %679
  %687 = load volatile i8, i8* blockaddress(@main, %684), align 1, !tbaa !14
  %.4..4.737 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %688 = trunc i64 %.4..4.737 to i32
  %689 = or i32 %688, 1
  store volatile i32 %689, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %690

690:                                              ; preds = %686, %684
  %691 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %692 = trunc i64 %691 to i32
  %693 = and i32 %692, 1
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %695, label %697

695:                                              ; preds = %690
  %696 = load volatile i8, i8* blockaddress(@main, %697), align 1, !tbaa !14
  %.0..0.298 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.383 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %701

697:                                              ; preds = %690
  %698 = load volatile i8, i8* blockaddress(@main, %695), align 1, !tbaa !14
  %.0..0.296 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %699 = trunc i64 %.0..0.296 to i32
  %700 = or i32 %699, 1
  store volatile i32 %700, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %701

701:                                              ; preds = %697, %695
  %702 = ashr i32 %670, 1
  store i32 %702, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %703 = ashr i32 %681, 1
  store i32 %703, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %704 = ashr i32 %692, 1
  store i32 %704, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.144 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %705 = trunc i64 %.0..0.144 to i32
  %706 = shl i32 %705, 1
  store i32 %706, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.539 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %707 = trunc i64 %.4..4.539 to i32
  %708 = shl i32 %707, 1
  store i32 %708, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.1074 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %709 = trunc i64 %.8..8.1074 to i32
  %710 = shl i32 %709, 1
  store i32 %710, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %711 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %712 = trunc i64 %711 to i32
  %713 = and i32 %712, 1
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %715, label %717

715:                                              ; preds = %701
  %716 = load volatile i8, i8* blockaddress(@main, %717), align 1, !tbaa !14
  %.8..8.1285 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.971 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %721

717:                                              ; preds = %701
  %718 = load volatile i8, i8* blockaddress(@main, %715), align 1, !tbaa !14
  %.8..8.1288 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %719 = trunc i64 %.8..8.1288 to i32
  %720 = or i32 %719, 1
  store volatile i32 %720, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %721

721:                                              ; preds = %717, %715
  %722 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %723 = trunc i64 %722 to i32
  %724 = and i32 %723, 1
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %726, label %728

726:                                              ; preds = %721
  %727 = load volatile i8, i8* blockaddress(@main, %728), align 1, !tbaa !14
  %.4..4.734 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.845 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %732

728:                                              ; preds = %721
  %729 = load volatile i8, i8* blockaddress(@main, %726), align 1, !tbaa !14
  %.4..4.731 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %730 = trunc i64 %.4..4.731 to i32
  %731 = or i32 %730, 1
  store volatile i32 %731, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %732

732:                                              ; preds = %728, %726
  %733 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %734 = trunc i64 %733 to i32
  %735 = and i32 %734, 1
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %737, label %739

737:                                              ; preds = %732
  %738 = load volatile i8, i8* blockaddress(@main, %739), align 1, !tbaa !14
  %.0..0.292 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.413 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %743

739:                                              ; preds = %732
  %740 = load volatile i8, i8* blockaddress(@main, %737), align 1, !tbaa !14
  %.0..0.290 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %741 = trunc i64 %.0..0.290 to i32
  %742 = or i32 %741, 1
  store volatile i32 %742, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %743

743:                                              ; preds = %739, %737
  %744 = ashr i32 %712, 1
  store i32 %744, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %745 = ashr i32 %723, 1
  store i32 %745, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %746 = ashr i32 %734, 1
  store i32 %746, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.142 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %747 = trunc i64 %.0..0.142 to i32
  %748 = shl i32 %747, 1
  store i32 %748, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.545 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %749 = trunc i64 %.4..4.545 to i32
  %750 = shl i32 %749, 1
  store i32 %750, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.989 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %751 = trunc i64 %.8..8.989 to i32
  %752 = shl i32 %751, 1
  store i32 %752, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %753 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %754 = trunc i64 %753 to i32
  %755 = and i32 %754, 1
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %757, label %759

757:                                              ; preds = %743
  %758 = load volatile i8, i8* blockaddress(@main, %759), align 1, !tbaa !14
  %.8..8.1171 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.899 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %763

759:                                              ; preds = %743
  %760 = load volatile i8, i8* blockaddress(@main, %757), align 1, !tbaa !14
  %.8..8.1164 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %761 = trunc i64 %.8..8.1164 to i32
  %762 = or i32 %761, 1
  store volatile i32 %762, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %763

763:                                              ; preds = %759, %757
  %764 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %765 = trunc i64 %764 to i32
  %766 = and i32 %765, 1
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %768, label %770

768:                                              ; preds = %763
  %769 = load volatile i8, i8* blockaddress(@main, %770), align 1, !tbaa !14
  %.4..4.617 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.864 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %774

770:                                              ; preds = %763
  %771 = load volatile i8, i8* blockaddress(@main, %768), align 1, !tbaa !14
  %.4..4.620 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %772 = trunc i64 %.4..4.620 to i32
  %773 = or i32 %772, 1
  store volatile i32 %773, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %774

774:                                              ; preds = %770, %768
  %775 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %776 = trunc i64 %775 to i32
  %777 = and i32 %776, 1
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %779, label %781

779:                                              ; preds = %774
  %780 = load volatile i8, i8* blockaddress(@main, %781), align 1, !tbaa !14
  %.0..0.288 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.441 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %785

781:                                              ; preds = %774
  %782 = load volatile i8, i8* blockaddress(@main, %779), align 1, !tbaa !14
  %.0..0.316 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %783 = trunc i64 %.0..0.316 to i32
  %784 = or i32 %783, 1
  store volatile i32 %784, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %785

785:                                              ; preds = %781, %779
  %786 = ashr i32 %754, 1
  store i32 %786, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %787 = ashr i32 %765, 1
  store i32 %787, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %788 = ashr i32 %776, 1
  store i32 %788, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.140 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %789 = trunc i64 %.0..0.140 to i32
  %790 = shl i32 %789, 1
  store i32 %790, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.560 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %791 = trunc i64 %.4..4.560 to i32
  %792 = shl i32 %791, 1
  store i32 %792, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.994 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %793 = trunc i64 %.8..8.994 to i32
  %794 = shl i32 %793, 1
  store i32 %794, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %795 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %796 = trunc i64 %795 to i32
  %797 = and i32 %796, 1
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %799, label %801

799:                                              ; preds = %785
  %800 = load volatile i8, i8* blockaddress(@main, %801), align 1, !tbaa !14
  %.8..8.1158 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.980 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %805

801:                                              ; preds = %785
  %802 = load volatile i8, i8* blockaddress(@main, %799), align 1, !tbaa !14
  %.8..8.1152 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %803 = trunc i64 %.8..8.1152 to i32
  %804 = or i32 %803, 1
  store volatile i32 %804, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %805

805:                                              ; preds = %801, %799
  %806 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %807 = trunc i64 %806 to i32
  %808 = and i32 %807, 1
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %810, label %812

810:                                              ; preds = %805
  %811 = load volatile i8, i8* blockaddress(@main, %812), align 1, !tbaa !14
  %.4..4.623 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.871 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %816

812:                                              ; preds = %805
  %813 = load volatile i8, i8* blockaddress(@main, %810), align 1, !tbaa !14
  %.4..4.626 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %814 = trunc i64 %.4..4.626 to i32
  %815 = or i32 %814, 1
  store volatile i32 %815, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %816

816:                                              ; preds = %812, %810
  %817 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %818 = trunc i64 %817 to i32
  %819 = and i32 %818, 1
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %821, label %823

821:                                              ; preds = %816
  %822 = load volatile i8, i8* blockaddress(@main, %823), align 1, !tbaa !14
  %.0..0.212 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.444 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %827

823:                                              ; preds = %816
  %824 = load volatile i8, i8* blockaddress(@main, %821), align 1, !tbaa !14
  %.0..0.318 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %825 = trunc i64 %.0..0.318 to i32
  %826 = or i32 %825, 1
  store volatile i32 %826, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %827

827:                                              ; preds = %823, %821
  %828 = ashr i32 %796, 1
  store i32 %828, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %829 = ashr i32 %807, 1
  store i32 %829, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %830 = ashr i32 %818, 1
  store i32 %830, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.164 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %831 = trunc i64 %.0..0.164 to i32
  %832 = shl i32 %831, 1
  store i32 %832, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.551 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %833 = trunc i64 %.4..4.551 to i32
  %834 = shl i32 %833, 1
  store i32 %834, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.997 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %835 = trunc i64 %.8..8.997 to i32
  %836 = shl i32 %835, 1
  store i32 %836, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %837 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %838 = trunc i64 %837 to i32
  %839 = and i32 %838, 1
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %841, label %843

841:                                              ; preds = %827
  %842 = load volatile i8, i8* blockaddress(@main, %843), align 1, !tbaa !14
  %.8..8.1146 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.974 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %847

843:                                              ; preds = %827
  %844 = load volatile i8, i8* blockaddress(@main, %841), align 1, !tbaa !14
  %.8..8.1141 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %845 = trunc i64 %.8..8.1141 to i32
  %846 = or i32 %845, 1
  store volatile i32 %846, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %847

847:                                              ; preds = %843, %841
  %848 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %849 = trunc i64 %848 to i32
  %850 = and i32 %849, 1
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %852, label %854

852:                                              ; preds = %847
  %853 = load volatile i8, i8* blockaddress(@main, %854), align 1, !tbaa !14
  %.4..4.629 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.876 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %858

854:                                              ; preds = %847
  %855 = load volatile i8, i8* blockaddress(@main, %852), align 1, !tbaa !14
  %.4..4.632 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %856 = trunc i64 %.4..4.632 to i32
  %857 = or i32 %856, 1
  store volatile i32 %857, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %858

858:                                              ; preds = %854, %852
  %859 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %860 = trunc i64 %859 to i32
  %861 = and i32 %860, 1
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %863, label %865

863:                                              ; preds = %858
  %864 = load volatile i8, i8* blockaddress(@main, %865), align 1, !tbaa !14
  %.0..0.322 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.448 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %869

865:                                              ; preds = %858
  %866 = load volatile i8, i8* blockaddress(@main, %863), align 1, !tbaa !14
  %.0..0.324 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %867 = trunc i64 %.0..0.324 to i32
  %868 = or i32 %867, 1
  store volatile i32 %868, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %869

869:                                              ; preds = %865, %863
  %870 = ashr i32 %838, 1
  store i32 %870, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %871 = ashr i32 %849, 1
  store i32 %871, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %872 = ashr i32 %860, 1
  store i32 %872, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.234 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %873 = trunc i64 %.0..0.234 to i32
  %874 = shl i32 %873, 1
  store i32 %874, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.542 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %875 = trunc i64 %.4..4.542 to i32
  %876 = shl i32 %875, 1
  store i32 %876, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.1009 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %877 = trunc i64 %.8..8.1009 to i32
  %878 = shl i32 %877, 1
  store i32 %878, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %879 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %880 = trunc i64 %879 to i32
  %881 = and i32 %880, 1
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %883, label %885

883:                                              ; preds = %869
  %884 = load volatile i8, i8* blockaddress(@main, %885), align 1, !tbaa !14
  %.8..8.1149 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.982 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %889

885:                                              ; preds = %869
  %886 = load volatile i8, i8* blockaddress(@main, %883), align 1, !tbaa !14
  %.8..8.1155 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %887 = trunc i64 %.8..8.1155 to i32
  %888 = or i32 %887, 1
  store volatile i32 %888, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %889

889:                                              ; preds = %885, %883
  %890 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %891 = trunc i64 %890 to i32
  %892 = and i32 %891, 1
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %894, label %896

894:                                              ; preds = %889
  %895 = load volatile i8, i8* blockaddress(@main, %896), align 1, !tbaa !14
  %.4..4.635 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.857 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %900

896:                                              ; preds = %889
  %897 = load volatile i8, i8* blockaddress(@main, %894), align 1, !tbaa !14
  %.4..4.638 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %898 = trunc i64 %.4..4.638 to i32
  %899 = or i32 %898, 1
  store volatile i32 %899, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %900

900:                                              ; preds = %896, %894
  %901 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %902 = trunc i64 %901 to i32
  %903 = and i32 %902, 1
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %905, label %907

905:                                              ; preds = %900
  %906 = load volatile i8, i8* blockaddress(@main, %907), align 1, !tbaa !14
  %.0..0.326 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.453 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %911

907:                                              ; preds = %900
  %908 = load volatile i8, i8* blockaddress(@main, %905), align 1, !tbaa !14
  %.0..0.328 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %909 = trunc i64 %.0..0.328 to i32
  %910 = or i32 %909, 1
  store volatile i32 %910, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %911

911:                                              ; preds = %907, %905
  %912 = ashr i32 %880, 1
  store i32 %912, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %913 = ashr i32 %891, 1
  store i32 %913, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %914 = ashr i32 %902, 1
  store i32 %914, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.208 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %915 = trunc i64 %.0..0.208 to i32
  %916 = shl i32 %915, 1
  store i32 %916, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.488 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %917 = trunc i64 %.4..4.488 to i32
  %918 = shl i32 %917, 1
  store i32 %918, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.1065 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %919 = trunc i64 %.8..8.1065 to i32
  %920 = shl i32 %919, 1
  store i32 %920, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %921 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %922 = trunc i64 %921 to i32
  %923 = and i32 %922, 1
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %925, label %927

925:                                              ; preds = %911
  %926 = load volatile i8, i8* blockaddress(@main, %927), align 1, !tbaa !14
  %.8..8.1161 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.897 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %931

927:                                              ; preds = %911
  %928 = load volatile i8, i8* blockaddress(@main, %925), align 1, !tbaa !14
  %.8..8.1167 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %929 = trunc i64 %.8..8.1167 to i32
  %930 = or i32 %929, 1
  store volatile i32 %930, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %931

931:                                              ; preds = %927, %925
  %932 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %933 = trunc i64 %932 to i32
  %934 = and i32 %933, 1
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %936, label %938

936:                                              ; preds = %931
  %937 = load volatile i8, i8* blockaddress(@main, %938), align 1, !tbaa !14
  %.4..4.641 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.860 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %942

938:                                              ; preds = %931
  %939 = load volatile i8, i8* blockaddress(@main, %936), align 1, !tbaa !14
  %.4..4.608 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %940 = trunc i64 %.4..4.608 to i32
  %941 = or i32 %940, 1
  store volatile i32 %941, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %942

942:                                              ; preds = %938, %936
  %943 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %944 = trunc i64 %943 to i32
  %945 = and i32 %944, 1
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %947, label %949

947:                                              ; preds = %942
  %948 = load volatile i8, i8* blockaddress(@main, %949), align 1, !tbaa !14
  %.0..0.262 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.456 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %953

949:                                              ; preds = %942
  %950 = load volatile i8, i8* blockaddress(@main, %947), align 1, !tbaa !14
  %.0..0.238 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %951 = trunc i64 %.0..0.238 to i32
  %952 = or i32 %951, 1
  store volatile i32 %952, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %953

953:                                              ; preds = %949, %947
  %954 = ashr i32 %922, 1
  store i32 %954, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %955 = ashr i32 %933, 1
  store i32 %955, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %956 = ashr i32 %944, 1
  store i32 %956, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.230 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %957 = trunc i64 %.0..0.230 to i32
  %958 = shl i32 %957, 1
  store i32 %958, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.569 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %959 = trunc i64 %.4..4.569 to i32
  %960 = shl i32 %959, 1
  store i32 %960, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.884 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %961 = trunc i64 %.8..8.884 to i32
  %962 = shl i32 %961, 1
  store i32 %962, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %963 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %964 = trunc i64 %963 to i32
  %965 = and i32 %964, 1
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %967, label %969

967:                                              ; preds = %953
  %968 = load volatile i8, i8* blockaddress(@main, %969), align 1, !tbaa !14
  %.8..8.1216 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.1143 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %973

969:                                              ; preds = %953
  %970 = load volatile i8, i8* blockaddress(@main, %967), align 1, !tbaa !14
  %.8..8.1219 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %971 = trunc i64 %.8..8.1219 to i32
  %972 = or i32 %971, 1
  store volatile i32 %972, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %973

973:                                              ; preds = %969, %967
  %974 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %975 = trunc i64 %974 to i32
  %976 = and i32 %975, 1
  %977 = icmp eq i32 %976, 0
  br i1 %977, label %978, label %980

978:                                              ; preds = %973
  %979 = load volatile i8, i8* blockaddress(@main, %980), align 1, !tbaa !14
  %.4..4.644 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.879 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %984

980:                                              ; preds = %973
  %981 = load volatile i8, i8* blockaddress(@main, %978), align 1, !tbaa !14
  %.4..4.512 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %982 = trunc i64 %.4..4.512 to i32
  %983 = or i32 %982, 1
  store volatile i32 %983, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %984

984:                                              ; preds = %980, %978
  %985 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %986 = trunc i64 %985 to i32
  %987 = and i32 %986, 1
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %989, label %991

989:                                              ; preds = %984
  %990 = load volatile i8, i8* blockaddress(@main, %991), align 1, !tbaa !14
  %.0..0.242 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.459 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %995

991:                                              ; preds = %984
  %992 = load volatile i8, i8* blockaddress(@main, %989), align 1, !tbaa !14
  %.0..0.158 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %993 = trunc i64 %.0..0.158 to i32
  %994 = or i32 %993, 1
  store volatile i32 %994, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %995

995:                                              ; preds = %991, %989
  %996 = ashr i32 %964, 1
  store i32 %996, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %997 = ashr i32 %975, 1
  store i32 %997, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %998 = ashr i32 %986, 1
  store i32 %998, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.228 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %999 = trunc i64 %.0..0.228 to i32
  %1000 = shl i32 %999, 1
  store i32 %1000, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.566 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %1001 = trunc i64 %.4..4.566 to i32
  %1002 = shl i32 %1001, 1
  store i32 %1002, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.924 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %1003 = trunc i64 %.8..8.924 to i32
  %1004 = shl i32 %1003, 1
  store i32 %1004, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %1005 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %1006 = trunc i64 %1005 to i32
  %1007 = and i32 %1006, 1
  %1008 = icmp eq i32 %1007, 0
  br i1 %1008, label %1009, label %1011

1009:                                             ; preds = %995
  %1010 = load volatile i8, i8* blockaddress(@main, %1011), align 1, !tbaa !14
  %.8..8.1222 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.1176 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %1015

1011:                                             ; preds = %995
  %1012 = load volatile i8, i8* blockaddress(@main, %1009), align 1, !tbaa !14
  %.8..8.1225 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %1013 = trunc i64 %.8..8.1225 to i32
  %1014 = or i32 %1013, 1
  store volatile i32 %1014, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %1015

1015:                                             ; preds = %1011, %1009
  %1016 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %1017 = trunc i64 %1016 to i32
  %1018 = and i32 %1017, 1
  %1019 = icmp eq i32 %1018, 0
  br i1 %1019, label %1020, label %1022

1020:                                             ; preds = %1015
  %1021 = load volatile i8, i8* blockaddress(@main, %1022), align 1, !tbaa !14
  %.4..4.494 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.837 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %1026

1022:                                             ; preds = %1015
  %1023 = load volatile i8, i8* blockaddress(@main, %1020), align 1, !tbaa !14
  %.4..4.518 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %1024 = trunc i64 %.4..4.518 to i32
  %1025 = or i32 %1024, 1
  store volatile i32 %1025, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %1026

1026:                                             ; preds = %1022, %1020
  %1027 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %1028 = trunc i64 %1027 to i32
  %1029 = and i32 %1028, 1
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1031, label %1033

1031:                                             ; preds = %1026
  %1032 = load volatile i8, i8* blockaddress(@main, %1033), align 1, !tbaa !14
  %.0..0.246 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.387 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %1037

1033:                                             ; preds = %1026
  %1034 = load volatile i8, i8* blockaddress(@main, %1031), align 1, !tbaa !14
  %.0..0.248 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %1035 = trunc i64 %.0..0.248 to i32
  %1036 = or i32 %1035, 1
  store volatile i32 %1036, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %1037

1037:                                             ; preds = %1033, %1031
  %1038 = ashr i32 %1006, 1
  store i32 %1038, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %1039 = ashr i32 %1017, 1
  store i32 %1039, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %1040 = ashr i32 %1028, 1
  store i32 %1040, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.226 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %1041 = trunc i64 %.0..0.226 to i32
  %1042 = shl i32 %1041, 1
  store i32 %1042, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.563 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %1043 = trunc i64 %.4..4.563 to i32
  %1044 = shl i32 %1043, 1
  store i32 %1044, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.929 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %1045 = trunc i64 %.8..8.929 to i32
  %1046 = shl i32 %1045, 1
  store i32 %1046, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %1047 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %1048 = trunc i64 %1047 to i32
  %1049 = and i32 %1048, 1
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1051, label %1053

1051:                                             ; preds = %1037
  %1052 = load volatile i8, i8* blockaddress(@main, %1053), align 1, !tbaa !14
  %.8..8.1228 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.1179 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %1057

1053:                                             ; preds = %1037
  %1054 = load volatile i8, i8* blockaddress(@main, %1051), align 1, !tbaa !14
  %.8..8.1231 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %1055 = trunc i64 %.8..8.1231 to i32
  %1056 = or i32 %1055, 1
  store volatile i32 %1056, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %1057

1057:                                             ; preds = %1053, %1051
  %1058 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %1059 = trunc i64 %1058 to i32
  %1060 = and i32 %1059, 1
  %1061 = icmp eq i32 %1060, 0
  br i1 %1061, label %1062, label %1064

1062:                                             ; preds = %1057
  %1063 = load volatile i8, i8* blockaddress(@main, %1064), align 1, !tbaa !14
  %.4..4.533 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.881 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %1068

1064:                                             ; preds = %1057
  %1065 = load volatile i8, i8* blockaddress(@main, %1062), align 1, !tbaa !14
  %.4..4.689 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %1066 = trunc i64 %.4..4.689 to i32
  %1067 = or i32 %1066, 1
  store volatile i32 %1067, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %1068

1068:                                             ; preds = %1064, %1062
  %1069 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %1070 = trunc i64 %1069 to i32
  %1071 = and i32 %1070, 1
  %1072 = icmp eq i32 %1071, 0
  br i1 %1072, label %1073, label %1075

1073:                                             ; preds = %1068
  %1074 = load volatile i8, i8* blockaddress(@main, %1075), align 1, !tbaa !14
  %.0..0.252 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.421 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %1079

1075:                                             ; preds = %1068
  %1076 = load volatile i8, i8* blockaddress(@main, %1073), align 1, !tbaa !14
  %.0..0.254 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %1077 = trunc i64 %.0..0.254 to i32
  %1078 = or i32 %1077, 1
  store volatile i32 %1078, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %1079

1079:                                             ; preds = %1075, %1073
  %1080 = ashr i32 %1048, 1
  store i32 %1080, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %1081 = ashr i32 %1059, 1
  store i32 %1081, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %1082 = ashr i32 %1070, 1
  store i32 %1082, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.224 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %1083 = trunc i64 %.0..0.224 to i32
  %1084 = shl i32 %1083, 1
  store i32 %1084, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.473 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %1085 = trunc i64 %.4..4.473 to i32
  %1086 = shl i32 %1085, 1
  store i32 %1086, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.1030 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %1087 = trunc i64 %.8..8.1030 to i32
  %1088 = shl i32 %1087, 1
  store i32 %1088, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %1089 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %1090 = trunc i64 %1089 to i32
  %1091 = and i32 %1090, 1
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %1093, label %1095

1093:                                             ; preds = %1079
  %1094 = load volatile i8, i8* blockaddress(@main, %1095), align 1, !tbaa !14
  %.8..8.1234 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.1182 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %1099

1095:                                             ; preds = %1079
  %1096 = load volatile i8, i8* blockaddress(@main, %1093), align 1, !tbaa !14
  %.8..8.1237 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %1097 = trunc i64 %.8..8.1237 to i32
  %1098 = or i32 %1097, 1
  store volatile i32 %1098, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %1099

1099:                                             ; preds = %1095, %1093
  %1100 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %1101 = trunc i64 %1100 to i32
  %1102 = and i32 %1101, 1
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1104, label %1106

1104:                                             ; preds = %1099
  %1105 = load volatile i8, i8* blockaddress(@main, %1106), align 1, !tbaa !14
  %.4..4.692 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.868 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %1110

1106:                                             ; preds = %1099
  %1107 = load volatile i8, i8* blockaddress(@main, %1104), align 1, !tbaa !14
  %.4..4.695 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %1108 = trunc i64 %.4..4.695 to i32
  %1109 = or i32 %1108, 1
  store volatile i32 %1109, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %1110

1110:                                             ; preds = %1106, %1104
  %1111 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %1112 = trunc i64 %1111 to i32
  %1113 = and i32 %1112, 1
  %1114 = icmp eq i32 %1113, 0
  br i1 %1114, label %1115, label %1117

1115:                                             ; preds = %1110
  %1116 = load volatile i8, i8* blockaddress(@main, %1117), align 1, !tbaa !14
  %.0..0.308 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.419 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %1121

1117:                                             ; preds = %1110
  %1118 = load volatile i8, i8* blockaddress(@main, %1115), align 1, !tbaa !14
  %.0..0.258 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %1119 = trunc i64 %.0..0.258 to i32
  %1120 = or i32 %1119, 1
  store volatile i32 %1120, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %1121

1121:                                             ; preds = %1117, %1115
  %1122 = ashr i32 %1090, 1
  store i32 %1122, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %1123 = ashr i32 %1101, 1
  store i32 %1123, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %1124 = ashr i32 %1112, 1
  store i32 %1124, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.222 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %1125 = trunc i64 %.0..0.222 to i32
  %1126 = shl i32 %1125, 1
  store i32 %1126, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.602 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %1127 = trunc i64 %.4..4.602 to i32
  %1128 = shl i32 %1127, 1
  store i32 %1128, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.1034 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %1129 = trunc i64 %.8..8.1034 to i32
  %1130 = shl i32 %1129, 1
  store i32 %1130, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %1131 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %1132 = trunc i64 %1131 to i32
  %1133 = and i32 %1132, 1
  %1134 = icmp eq i32 %1133, 0
  br i1 %1134, label %1135, label %1137

1135:                                             ; preds = %1121
  %1136 = load volatile i8, i8* blockaddress(@main, %1137), align 1, !tbaa !14
  %.8..8.1240 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.1185 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %1141

1137:                                             ; preds = %1121
  %1138 = load volatile i8, i8* blockaddress(@main, %1135), align 1, !tbaa !14
  %.8..8.1279 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %1139 = trunc i64 %.8..8.1279 to i32
  %1140 = or i32 %1139, 1
  store volatile i32 %1140, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %1141

1141:                                             ; preds = %1137, %1135
  %1142 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %1143 = trunc i64 %1142 to i32
  %1144 = and i32 %1143, 1
  %1145 = icmp eq i32 %1144, 0
  br i1 %1145, label %1146, label %1148

1146:                                             ; preds = %1141
  %1147 = load volatile i8, i8* blockaddress(@main, %1148), align 1, !tbaa !14
  %.4..4.686 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.754 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %1152

1148:                                             ; preds = %1141
  %1149 = load volatile i8, i8* blockaddress(@main, %1146), align 1, !tbaa !14
  %.4..4.527 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %1150 = trunc i64 %.4..4.527 to i32
  %1151 = or i32 %1150, 1
  store volatile i32 %1151, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %1152

1152:                                             ; preds = %1148, %1146
  %1153 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %1154 = trunc i64 %1153 to i32
  %1155 = and i32 %1154, 1
  %1156 = icmp eq i32 %1155, 0
  br i1 %1156, label %1157, label %1159

1157:                                             ; preds = %1152
  %1158 = load volatile i8, i8* blockaddress(@main, %1159), align 1, !tbaa !14
  %.0..0.260 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.424 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %1163

1159:                                             ; preds = %1152
  %1160 = load volatile i8, i8* blockaddress(@main, %1157), align 1, !tbaa !14
  %.0..0.236 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %1161 = trunc i64 %.0..0.236 to i32
  %1162 = or i32 %1161, 1
  store volatile i32 %1162, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %1163

1163:                                             ; preds = %1159, %1157
  %1164 = ashr i32 %1132, 1
  store i32 %1164, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %1165 = ashr i32 %1143, 1
  store i32 %1165, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %1166 = ashr i32 %1154, 1
  store i32 %1166, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.220 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %1167 = trunc i64 %.0..0.220 to i32
  %1168 = shl i32 %1167, 1
  store i32 %1168, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.581 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %1169 = trunc i64 %.4..4.581 to i32
  %1170 = shl i32 %1169, 1
  store i32 %1170, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.1040 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %1171 = trunc i64 %.8..8.1040 to i32
  %1172 = shl i32 %1171, 1
  store i32 %1172, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %1173 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %1174 = trunc i64 %1173 to i32
  %1175 = and i32 %1174, 1
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1177, label %1179

1177:                                             ; preds = %1163
  %1178 = load volatile i8, i8* blockaddress(@main, %1179), align 1, !tbaa !14
  %.8..8.1213 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.1173 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %1183

1179:                                             ; preds = %1163
  %1180 = load volatile i8, i8* blockaddress(@main, %1177), align 1, !tbaa !14
  %.8..8.937 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %1181 = trunc i64 %.8..8.937 to i32
  %1182 = or i32 %1181, 1
  store volatile i32 %1182, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %1183

1183:                                             ; preds = %1179, %1177
  %1184 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %1185 = trunc i64 %1184 to i32
  %1186 = and i32 %1185, 1
  %1187 = icmp eq i32 %1186, 0
  br i1 %1187, label %1188, label %1190

1188:                                             ; preds = %1183
  %1189 = load volatile i8, i8* blockaddress(@main, %1190), align 1, !tbaa !14
  %.4..4.497 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.813 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %1194

1190:                                             ; preds = %1183
  %1191 = load volatile i8, i8* blockaddress(@main, %1188), align 1, !tbaa !14
  %.4..4.506 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %1192 = trunc i64 %.4..4.506 to i32
  %1193 = or i32 %1192, 1
  store volatile i32 %1193, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %1194

1194:                                             ; preds = %1190, %1188
  %1195 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %1196 = trunc i64 %1195 to i32
  %1197 = and i32 %1196, 1
  %1198 = icmp eq i32 %1197, 0
  br i1 %1198, label %1199, label %1201

1199:                                             ; preds = %1194
  %1200 = load volatile i8, i8* blockaddress(@main, %1201), align 1, !tbaa !14
  %.0..0.266 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.428 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %1205

1201:                                             ; preds = %1194
  %1202 = load volatile i8, i8* blockaddress(@main, %1199), align 1, !tbaa !14
  %.0..0.138 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %1203 = trunc i64 %.0..0.138 to i32
  %1204 = or i32 %1203, 1
  store volatile i32 %1204, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %1205

1205:                                             ; preds = %1201, %1199
  %1206 = ashr i32 %1174, 1
  store i32 %1206, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %1207 = ashr i32 %1185, 1
  store i32 %1207, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %1208 = ashr i32 %1196, 1
  store i32 %1208, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.218 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %1209 = trunc i64 %.0..0.218 to i32
  %1210 = shl i32 %1209, 1
  store i32 %1210, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.554 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %1211 = trunc i64 %.4..4.554 to i32
  %1212 = shl i32 %1211, 1
  store i32 %1212, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.1044 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %1213 = trunc i64 %.8..8.1044 to i32
  %1214 = shl i32 %1213, 1
  store i32 %1214, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %1215 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %1216 = trunc i64 %1215 to i32
  %1217 = and i32 %1216, 1
  %1218 = icmp eq i32 %1217, 0
  br i1 %1218, label %1219, label %1221

1219:                                             ; preds = %1205
  %1220 = load volatile i8, i8* blockaddress(@main, %1221), align 1, !tbaa !14
  %.8..8.940 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.1104 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %1225

1221:                                             ; preds = %1205
  %1222 = load volatile i8, i8* blockaddress(@main, %1219), align 1, !tbaa !14
  %.8..8.943 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %1223 = trunc i64 %.8..8.943 to i32
  %1224 = or i32 %1223, 1
  store volatile i32 %1224, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %1225

1225:                                             ; preds = %1221, %1219
  %1226 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %1227 = trunc i64 %1226 to i32
  %1228 = and i32 %1227, 1
  %1229 = icmp eq i32 %1228, 0
  br i1 %1229, label %1230, label %1232

1230:                                             ; preds = %1225
  %1231 = load volatile i8, i8* blockaddress(@main, %1232), align 1, !tbaa !14
  %.4..4.509 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.842 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %1236

1232:                                             ; preds = %1225
  %1233 = load volatile i8, i8* blockaddress(@main, %1230), align 1, !tbaa !14
  %.4..4.503 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %1234 = trunc i64 %.4..4.503 to i32
  %1235 = or i32 %1234, 1
  store volatile i32 %1235, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %1236

1236:                                             ; preds = %1232, %1230
  %1237 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %1238 = trunc i64 %1237 to i32
  %1239 = and i32 %1238, 1
  %1240 = icmp eq i32 %1239, 0
  br i1 %1240, label %1241, label %1243

1241:                                             ; preds = %1236
  %1242 = load volatile i8, i8* blockaddress(@main, %1243), align 1, !tbaa !14
  %.0..0.182 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.433 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %1247

1243:                                             ; preds = %1236
  %1244 = load volatile i8, i8* blockaddress(@main, %1241), align 1, !tbaa !14
  %.0..0.160 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %1245 = trunc i64 %.0..0.160 to i32
  %1246 = or i32 %1245, 1
  store volatile i32 %1246, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %1247

1247:                                             ; preds = %1243, %1241
  %1248 = ashr i32 %1216, 1
  store i32 %1248, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %1249 = ashr i32 %1227, 1
  store i32 %1249, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %1250 = ashr i32 %1238, 1
  store i32 %1250, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.216 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %1251 = trunc i64 %.0..0.216 to i32
  %1252 = shl i32 %1251, 1
  store i32 %1252, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.575 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %1253 = trunc i64 %.4..4.575 to i32
  %1254 = shl i32 %1253, 1
  store i32 %1254, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.1037 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %1255 = trunc i64 %.8..8.1037 to i32
  %1256 = shl i32 %1255, 1
  store i32 %1256, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %1257 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %1258 = trunc i64 %1257 to i32
  %1259 = and i32 %1258, 1
  %1260 = icmp eq i32 %1259, 0
  br i1 %1260, label %1261, label %1263

1261:                                             ; preds = %1247
  %1262 = load volatile i8, i8* blockaddress(@main, %1263), align 1, !tbaa !14
  %.8..8.946 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.1080 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %1267

1263:                                             ; preds = %1247
  %1264 = load volatile i8, i8* blockaddress(@main, %1261), align 1, !tbaa !14
  %.8..8.949 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %1265 = trunc i64 %.8..8.949 to i32
  %1266 = or i32 %1265, 1
  store volatile i32 %1266, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %1267

1267:                                             ; preds = %1263, %1261
  %1268 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %1269 = trunc i64 %1268 to i32
  %1270 = and i32 %1269, 1
  %1271 = icmp eq i32 %1270, 0
  br i1 %1271, label %1272, label %1274

1272:                                             ; preds = %1267
  %1273 = load volatile i8, i8* blockaddress(@main, %1274), align 1, !tbaa !14
  %.4..4.464 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.847 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %1278

1274:                                             ; preds = %1267
  %1275 = load volatile i8, i8* blockaddress(@main, %1272), align 1, !tbaa !14
  %.4..4.515 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %1276 = trunc i64 %.4..4.515 to i32
  %1277 = or i32 %1276, 1
  store volatile i32 %1277, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %1278

1278:                                             ; preds = %1274, %1272
  %1279 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %1280 = trunc i64 %1279 to i32
  %1281 = and i32 %1280, 1
  %1282 = icmp eq i32 %1281, 0
  br i1 %1282, label %1283, label %1285

1283:                                             ; preds = %1278
  %1284 = load volatile i8, i8* blockaddress(@main, %1285), align 1, !tbaa !14
  %.0..0.170 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.436 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %1289

1285:                                             ; preds = %1278
  %1286 = load volatile i8, i8* blockaddress(@main, %1283), align 1, !tbaa !14
  %.0..0.178 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %1287 = trunc i64 %.0..0.178 to i32
  %1288 = or i32 %1287, 1
  store volatile i32 %1288, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %1289

1289:                                             ; preds = %1285, %1283
  %1290 = ashr i32 %1258, 1
  store i32 %1290, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %1291 = ashr i32 %1269, 1
  store i32 %1291, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %1292 = ashr i32 %1280, 1
  store i32 %1292, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.214 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %1293 = trunc i64 %.0..0.214 to i32
  %1294 = shl i32 %1293, 1
  store i32 %1294, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.578 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %1295 = trunc i64 %.4..4.578 to i32
  %1296 = shl i32 %1295, 1
  store i32 %1296, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.908 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %1297 = trunc i64 %.8..8.908 to i32
  %1298 = shl i32 %1297, 1
  store i32 %1298, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %1299 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %1300 = trunc i64 %1299 to i32
  %1301 = and i32 %1300, 1
  %1302 = icmp eq i32 %1301, 0
  br i1 %1302, label %1303, label %1305

1303:                                             ; preds = %1289
  %1304 = load volatile i8, i8* blockaddress(@main, %1305), align 1, !tbaa !14
  %.8..8.952 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.1083 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %1309

1305:                                             ; preds = %1289
  %1306 = load volatile i8, i8* blockaddress(@main, %1303), align 1, !tbaa !14
  %.8..8.955 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %1307 = trunc i64 %.8..8.955 to i32
  %1308 = or i32 %1307, 1
  store volatile i32 %1308, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %1309

1309:                                             ; preds = %1305, %1303
  %1310 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %1311 = trunc i64 %1310 to i32
  %1312 = and i32 %1311, 1
  %1313 = icmp eq i32 %1312, 0
  br i1 %1313, label %1314, label %1316

1314:                                             ; preds = %1309
  %1315 = load volatile i8, i8* blockaddress(@main, %1316), align 1, !tbaa !14
  %.4..4.491 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.851 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %1320

1316:                                             ; preds = %1309
  %1317 = load volatile i8, i8* blockaddress(@main, %1314), align 1, !tbaa !14
  %.4..4.521 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %1318 = trunc i64 %.4..4.521 to i32
  %1319 = or i32 %1318, 1
  store volatile i32 %1319, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %1320

1320:                                             ; preds = %1316, %1314
  %1321 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %1322 = trunc i64 %1321 to i32
  %1323 = and i32 %1322, 1
  %1324 = icmp eq i32 %1323, 0
  br i1 %1324, label %1325, label %1327

1325:                                             ; preds = %1320
  %1326 = load volatile i8, i8* blockaddress(@main, %1327), align 1, !tbaa !14
  %.0..0.180 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.451 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %1331

1327:                                             ; preds = %1320
  %1328 = load volatile i8, i8* blockaddress(@main, %1325), align 1, !tbaa !14
  %.0..0.176 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %1329 = trunc i64 %.0..0.176 to i32
  %1330 = or i32 %1329, 1
  store volatile i32 %1330, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %1331

1331:                                             ; preds = %1327, %1325
  %1332 = ashr i32 %1300, 1
  store i32 %1332, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %1333 = ashr i32 %1311, 1
  store i32 %1333, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %1334 = ashr i32 %1322, 1
  store i32 %1334, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.188 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %1335 = trunc i64 %.0..0.188 to i32
  %1336 = shl i32 %1335, 1
  store i32 %1336, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.584 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %1337 = trunc i64 %.4..4.584 to i32
  %1338 = shl i32 %1337, 1
  store i32 %1338, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.912 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %1339 = trunc i64 %.8..8.912 to i32
  %1340 = shl i32 %1339, 1
  store i32 %1340, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %1341 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %1342 = trunc i64 %1341 to i32
  %1343 = and i32 %1342, 1
  %1344 = icmp eq i32 %1343, 0
  br i1 %1344, label %1345, label %1347

1345:                                             ; preds = %1331
  %1346 = load volatile i8, i8* blockaddress(@main, %1347), align 1, !tbaa !14
  %.8..8.958 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.1086 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %1351

1347:                                             ; preds = %1331
  %1348 = load volatile i8, i8* blockaddress(@main, %1345), align 1, !tbaa !14
  %.8..8.961 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %1349 = trunc i64 %.8..8.961 to i32
  %1350 = or i32 %1349, 1
  store volatile i32 %1350, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %1351

1351:                                             ; preds = %1347, %1345
  %1352 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %1353 = trunc i64 %1352 to i32
  %1354 = and i32 %1353, 1
  %1355 = icmp eq i32 %1354, 0
  br i1 %1355, label %1356, label %1358

1356:                                             ; preds = %1351
  %1357 = load volatile i8, i8* blockaddress(@main, %1358), align 1, !tbaa !14
  %.4..4.698 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.854 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %1362

1358:                                             ; preds = %1351
  %1359 = load volatile i8, i8* blockaddress(@main, %1356), align 1, !tbaa !14
  %.4..4.524 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %1360 = trunc i64 %.4..4.524 to i32
  %1361 = or i32 %1360, 1
  store volatile i32 %1361, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %1362

1362:                                             ; preds = %1358, %1356
  %1363 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %1364 = trunc i64 %1363 to i32
  %1365 = and i32 %1364, 1
  %1366 = icmp eq i32 %1365, 0
  br i1 %1366, label %1367, label %1369

1367:                                             ; preds = %1362
  %1368 = load volatile i8, i8* blockaddress(@main, %1369), align 1, !tbaa !14
  %.0..0.186 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.411 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %1373

1369:                                             ; preds = %1362
  %1370 = load volatile i8, i8* blockaddress(@main, %1367), align 1, !tbaa !14
  %.0..0.168 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %1371 = trunc i64 %.0..0.168 to i32
  %1372 = or i32 %1371, 1
  store volatile i32 %1372, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %1373

1373:                                             ; preds = %1369, %1367
  %1374 = ashr i32 %1342, 1
  store i32 %1374, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %1375 = ashr i32 %1353, 1
  store i32 %1375, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %1376 = ashr i32 %1364, 1
  store i32 %1376, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  %.0..0.210 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %1377 = trunc i64 %.0..0.210 to i32
  %1378 = shl i32 %1377, 1
  store i32 %1378, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  %.4..4.587 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %1379 = trunc i64 %.4..4.587 to i32
  %1380 = shl i32 %1379, 1
  store i32 %1380, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  %.8..8.915 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %1381 = trunc i64 %.8..8.915 to i32
  %1382 = shl i32 %1381, 1
  store i32 %1382, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  %1383 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0) to i64*), align 4, !tbaa !19
  %1384 = and i64 %1383, 1
  %1385 = icmp eq i64 %1384, 0
  br i1 %1385, label %1386, label %1388

1386:                                             ; preds = %1373
  %1387 = load volatile i8, i8* blockaddress(@main, %1388), align 1, !tbaa !14
  %.8..8.964 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %.8..8.1187 = load volatile i32, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %1392

1388:                                             ; preds = %1373
  %1389 = load volatile i8, i8* blockaddress(@main, %1386), align 1, !tbaa !14
  %.8..8.1196 = load volatile i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %1390 = trunc i64 %.8..8.1196 to i32
  %1391 = or i32 %1390, 1
  store volatile i32 %1391, i32* %.8.sroa_idx2151, align 8, !tbaa !21
  br label %1392

1392:                                             ; preds = %1388, %1386
  %1393 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1) to i64*), align 4, !tbaa !19
  %1394 = and i64 %1393, 1
  %1395 = icmp eq i64 %1394, 0
  br i1 %1395, label %1396, label %1398

1396:                                             ; preds = %1392
  %1397 = load volatile i8, i8* blockaddress(@main, %1398), align 1, !tbaa !14
  %.4..4.530 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %.4..4.824 = load volatile i32, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %1402

1398:                                             ; preds = %1392
  %1399 = load volatile i8, i8* blockaddress(@main, %1396), align 1, !tbaa !14
  %.4..4.728 = load volatile i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %1400 = trunc i64 %.4..4.728 to i32
  %1401 = or i32 %1400, 1
  store volatile i32 %1401, i32* %.4.sroa_idx1931, align 4, !tbaa !21
  br label %1402

1402:                                             ; preds = %1398, %1396
  %1403 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2) to i64*), align 4, !tbaa !19
  %1404 = and i64 %1403, 1
  %1405 = icmp eq i64 %1404, 0
  br i1 %1405, label %1406, label %1408

1406:                                             ; preds = %1402
  %1407 = load volatile i8, i8* blockaddress(@main, %1408), align 1, !tbaa !14
  %.0..0.162 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %.0..0.403 = load volatile i32, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %1412

1408:                                             ; preds = %1402
  %1409 = load volatile i8, i8* blockaddress(@main, %1406), align 1, !tbaa !14
  %.0..0.166 = load volatile i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %1410 = trunc i64 %.0..0.166 to i32
  %1411 = or i32 %1410, 1
  store volatile i32 %1411, i32* %.0.sroa_idx1637, align 8, !tbaa !21
  br label %1412

1412:                                             ; preds = %1408, %1406
  %.0..0.200 = load i64, i64* %.0.sroa_cast1567, align 8, !tbaa !19
  %1413 = trunc i64 %.0..0.200 to i32
  store i32 %1413, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 0), align 4, !tbaa !21
  %.4..4.590 = load i64, i64* %.4.sroa_cast1802, align 4, !tbaa !19
  %1414 = trunc i64 %.4..4.590 to i32
  store i32 %1414, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 1), align 4, !tbaa !21
  %.8..8.1001 = load i64, i64* %.8.sroa_cast2150, align 8, !tbaa !19
  %1415 = trunc i64 %.8..8.1001 to i32
  store i32 %1415, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 1, i32 2), align 4, !tbaa !21
  store i32 2827, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 0), align 4, !tbaa !21
  %1416 = load volatile i8, i8* inttoptr (i32 1 to i8*), align 1, !tbaa !14
  store i32 5654, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 1), align 4, !tbaa !21
  %1417 = load volatile i8, i8* inttoptr (i32 1 to i8*), align 1, !tbaa !14
  store i32 11308, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 2), align 4, !tbaa !21
  %1418 = load volatile i8, i8* inttoptr (i32 1 to i8*), align 1, !tbaa !14
  store i32 22616, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 3), align 4, !tbaa !21
  %1419 = load volatile i8, i8* inttoptr (i32 1 to i8*), align 1, !tbaa !14
  store i32 45232, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 4), align 4, !tbaa !21
  %1420 = load volatile i8, i8* inttoptr (i32 1 to i8*), align 1, !tbaa !14
  store i32 29041, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 5), align 4, !tbaa !21
  %1421 = load volatile i8, i8* inttoptr (i32 1 to i8*), align 1, !tbaa !14
  store i32 58082, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 6), align 4, !tbaa !21
  %1422 = load volatile i8, i8* inttoptr (i32 1 to i8*), align 1, !tbaa !14
  store i32 54741, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 7), align 4, !tbaa !21
  %1423 = load volatile i8, i8* inttoptr (i32 1 to i8*), align 1, !tbaa !14
  store i32 48059, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 8), align 4, !tbaa !21
  %1424 = load volatile i8, i8* inttoptr (i32 1 to i8*), align 1, !tbaa !14
  store i32 26471, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 9), align 4, !tbaa !21
  %1425 = load volatile i8, i8* inttoptr (i32 1 to i8*), align 1, !tbaa !14
  store i32 52942, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 10), align 4, !tbaa !21
  %1426 = load volatile i8, i8* inttoptr (i32 1 to i8*), align 1, !tbaa !14
  store i32 45489, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 3, i32 0), align 4, !tbaa !21
  %1427 = load volatile i8, i8* inttoptr (i32 1 to i8*), align 1, !tbaa !14
  store i32 29555, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 3, i32 1), align 4, !tbaa !21
  %1428 = load volatile i8, i8* inttoptr (i32 1 to i8*), align 1, !tbaa !14
  store i32 59110, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 3, i32 2), align 4, !tbaa !21
  %1429 = load volatile i8, i8* inttoptr (i32 1 to i8*), align 1, !tbaa !14
  store i32 56797, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 3, i32 3), align 4, !tbaa !21
  %1430 = load volatile i8, i8* inttoptr (i32 1 to i8*), align 1, !tbaa !14
  store i32 43947, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 3, i32 4), align 4, !tbaa !21
  %1431 = load volatile i8, i8* inttoptr (i32 1 to i8*), align 1, !tbaa !14
  store i32 18247, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 3, i32 5), align 4, !tbaa !21
  %1432 = load volatile i8, i8* inttoptr (i32 1 to i8*), align 1, !tbaa !14
  store i32 36494, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 3, i32 6), align 4, !tbaa !21
  %1433 = load volatile i8, i8* inttoptr (i32 1 to i8*), align 1, !tbaa !14
  store i32 3341, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 3, i32 7), align 4, !tbaa !21
  %1434 = load volatile i8, i8* inttoptr (i32 1 to i8*), align 1, !tbaa !14
  store i32 6682, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 3, i32 8), align 4, !tbaa !21
  %1435 = load volatile i8, i8* inttoptr (i32 1 to i8*), align 1, !tbaa !14
  store i32 13364, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 3, i32 9), align 4, !tbaa !21
  %1436 = load volatile i8, i8* inttoptr (i32 1 to i8*), align 1, !tbaa !14
  store i32 26728, i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 3, i32 10), align 4, !tbaa !21
  %1437 = load volatile i8, i8* inttoptr (i32 1 to i8*), align 1, !tbaa !14
  %1438 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1439 = load i64, i64* bitcast (%struct.anonymous* @gc to i64*), align 4, !tbaa !19
  %1440 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 0) to i64*), align 4, !tbaa !19
  %1441 = trunc i64 %1440 to i32
  %1442 = xor i64 %1439, %1438
  %1443 = trunc i64 %1442 to i32
  %1444 = shl i32 %1441, 16
  %1445 = xor i32 %1444, %1443
  store i32 %1445, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %1446 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %1447 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %1448 = xor i64 %1447, %1446
  %1449 = trunc i64 %1448 to i32
  store i32 %1449, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %1450 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1451 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 0, i32 2) to i64*), align 4, !tbaa !19
  %1452 = xor i64 %1450, %1440
  %1453 = xor i64 %1452, %1451
  %1454 = trunc i64 %1453 to i32
  store i32 %1454, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1455 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1456 = trunc i64 %1455 to i32
  %1457 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %1458 = trunc i64 %1457 to i32
  %1459 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1460 = trunc i64 %1459 to i32
  %1461 = ashr i32 %1456, 16
  %1462 = xor i32 %1461, %1456
  %1463 = shl i32 %1458, 16
  %1464 = ashr i32 %1458, 16
  %1465 = shl i32 %1460, 16
  %1466 = ashr i32 %1458, 24
  %1467 = shl i32 %1460, 8
  %1468 = ashr i32 %1460, 8
  %1469 = shl i32 %1456, 24
  %1470 = ashr i32 %1460, 16
  %1471 = shl i32 %1456, 16
  %1472 = ashr i32 %1460, 24
  %1473 = shl i32 %1456, 8
  %1474 = xor i32 %1462, %1469
  %1475 = xor i32 %1474, %1471
  %1476 = xor i32 %1475, %1473
  %1477 = xor i32 %1476, %1463
  %1478 = xor i32 %1477, %1464
  %1479 = xor i32 %1478, %1466
  %1480 = xor i32 %1479, %1465
  %1481 = xor i32 %1480, %1467
  %1482 = xor i32 %1481, %1468
  %1483 = xor i32 %1482, %1470
  %1484 = xor i32 %1483, %1472
  store i32 %1484, i32* %.0.sroa_idx1439, align 8, !tbaa !21
  %1485 = ashr i32 %1456, 8
  %1486 = shl i32 %1458, 24
  %1487 = ashr i32 %1456, 24
  %1488 = shl i32 %1458, 8
  %1489 = xor i32 %1471, %1458
  %1490 = xor i32 %1489, %1473
  %1491 = xor i32 %1490, %1485
  %1492 = xor i32 %1491, %1461
  %1493 = xor i32 %1492, %1487
  %1494 = xor i32 %1493, %1464
  %1495 = xor i32 %1494, %1486
  %1496 = xor i32 %1495, %1463
  %1497 = xor i32 %1496, %1488
  %1498 = xor i32 %1497, %1465
  %1499 = xor i32 %1498, %1470
  %1500 = xor i32 %1499, %1472
  store i32 %1500, i32* %.4.sroa_idx1476, align 4, !tbaa !21
  %1501 = ashr i32 %1458, 8
  %1502 = shl i32 %1460, 24
  %1503 = xor i32 %1461, %1471
  %1504 = xor i32 %1503, %1487
  %1505 = xor i32 %1504, %1460
  %1506 = xor i32 %1505, %1463
  %1507 = xor i32 %1506, %1488
  %1508 = xor i32 %1507, %1501
  %1509 = xor i32 %1508, %1464
  %1510 = xor i32 %1509, %1466
  %1511 = xor i32 %1510, %1470
  %1512 = xor i32 %1511, %1502
  %1513 = xor i32 %1512, %1465
  %1514 = xor i32 %1513, %1467
  store i32 %1514, i32* %.8.sroa_idx1510, align 8, !tbaa !21
  %.0..0.22 = load i64, i64* %.0.sroa_cast1425, align 8, !tbaa !19
  %1515 = trunc i64 %.0..0.22 to i32
  store i32 %1515, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4..4.68 = load i64, i64* %.4.sroa_cast1452, align 4, !tbaa !19
  %1516 = trunc i64 %.4..4.68 to i32
  store i32 %1516, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8..8.99 = load i64, i64* %.8.sroa_cast1509, align 8, !tbaa !19
  %1517 = trunc i64 %.8..8.99 to i32
  store i32 %1517, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1518 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1519 = trunc i64 %1518 to i32
  %1520 = ashr i32 %1519, 10
  %1521 = shl i32 %1519, 22
  %1522 = xor i32 %1520, %1521
  store i32 %1522, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %1523 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1524 = trunc i64 %1523 to i32
  %1525 = shl i32 %1524, 1
  %1526 = ashr i32 %1524, 31
  %1527 = xor i32 %1525, %1526
  store i32 %1527, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1528 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1529 = trunc i64 %1528 to i32
  %1530 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %1531 = trunc i64 %1530 to i32
  %1532 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1533 = trunc i64 %1532 to i32
  %1534 = xor i32 %1533, -1
  %1535 = or i32 %1534, %1531
  %1536 = xor i32 %1535, %1529
  %.0.sroa_idx2315 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i32 0, i32 0
  store i32 %1536, i32* %.0.sroa_idx2315, align 8, !tbaa !21
  %1537 = xor i32 %1529, -1
  %1538 = or i32 %1533, %1537
  %1539 = xor i32 %1538, %1531
  %.4.sroa_idx2350 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i32 0, i32 1
  store i32 %1539, i32* %.4.sroa_idx2350, align 4, !tbaa !21
  %1540 = xor i32 %1531, -1
  %1541 = or i32 %1540, %1529
  %1542 = xor i32 %1541, %1533
  %.8.sroa_idx2380 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i32 0, i32 2
  store i32 %1542, i32* %.8.sroa_idx2380, align 8, !tbaa !21
  %.0.sroa_cast2304 = bitcast [3 x i32]* %1 to i64*
  %.0..0.1323 = load i64, i64* %.0.sroa_cast2304, align 8, !tbaa !19
  %1543 = trunc i64 %.0..0.1323 to i32
  store i32 %1543, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4.sroa_cast2330 = bitcast i32* %.4.sroa_idx2350 to i64*
  %.4..4.1366 = load i64, i64* %.4.sroa_cast2330, align 4, !tbaa !19
  %1544 = trunc i64 %.4..4.1366 to i32
  store i32 %1544, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8.sroa_cast2379 = bitcast i32* %.8.sroa_idx2380 to i64*
  %.8..8.1422 = load i64, i64* %.8.sroa_cast2379, align 8, !tbaa !19
  %1545 = trunc i64 %.8..8.1422 to i32
  store i32 %1545, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1546 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1547 = trunc i64 %1546 to i32
  %1548 = shl i32 %1547, 1
  %1549 = ashr i32 %1547, 31
  %1550 = xor i32 %1548, %1549
  store i32 %1550, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %1551 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1552 = trunc i64 %1551 to i32
  %1553 = ashr i32 %1552, 10
  %1554 = shl i32 %1552, 22
  %1555 = xor i32 %1553, %1554
  store i32 %1555, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1556 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1557 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 1) to i64*), align 4, !tbaa !19
  %1558 = trunc i64 %1557 to i32
  %1559 = xor i64 %1556, %1439
  %1560 = trunc i64 %1559 to i32
  %1561 = shl i32 %1558, 16
  %1562 = xor i32 %1561, %1560
  store i32 %1562, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %1563 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %1564 = xor i64 %1563, %1447
  %1565 = trunc i64 %1564 to i32
  store i32 %1565, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %1566 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1567 = xor i64 %1557, %1451
  %1568 = xor i64 %1567, %1566
  %1569 = trunc i64 %1568 to i32
  store i32 %1569, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1570 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1571 = trunc i64 %1570 to i32
  %1572 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %1573 = trunc i64 %1572 to i32
  %1574 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1575 = trunc i64 %1574 to i32
  %1576 = ashr i32 %1571, 16
  %1577 = xor i32 %1576, %1571
  %1578 = shl i32 %1573, 16
  %1579 = ashr i32 %1573, 16
  %1580 = shl i32 %1575, 16
  %1581 = ashr i32 %1573, 24
  %1582 = shl i32 %1575, 8
  %1583 = ashr i32 %1575, 8
  %1584 = shl i32 %1571, 24
  %1585 = ashr i32 %1575, 16
  %1586 = shl i32 %1571, 16
  %1587 = ashr i32 %1575, 24
  %1588 = shl i32 %1571, 8
  %1589 = xor i32 %1577, %1584
  %1590 = xor i32 %1589, %1586
  %1591 = xor i32 %1590, %1588
  %1592 = xor i32 %1591, %1578
  %1593 = xor i32 %1592, %1579
  %1594 = xor i32 %1593, %1581
  %1595 = xor i32 %1594, %1580
  %1596 = xor i32 %1595, %1582
  %1597 = xor i32 %1596, %1583
  %1598 = xor i32 %1597, %1585
  %1599 = xor i32 %1598, %1587
  store i32 %1599, i32* %.0.sroa_idx1439, align 8, !tbaa !21
  %1600 = ashr i32 %1571, 8
  %1601 = shl i32 %1573, 24
  %1602 = ashr i32 %1571, 24
  %1603 = shl i32 %1573, 8
  %1604 = xor i32 %1586, %1573
  %1605 = xor i32 %1604, %1588
  %1606 = xor i32 %1605, %1600
  %1607 = xor i32 %1606, %1576
  %1608 = xor i32 %1607, %1602
  %1609 = xor i32 %1608, %1579
  %1610 = xor i32 %1609, %1601
  %1611 = xor i32 %1610, %1578
  %1612 = xor i32 %1611, %1603
  %1613 = xor i32 %1612, %1580
  %1614 = xor i32 %1613, %1585
  %1615 = xor i32 %1614, %1587
  store i32 %1615, i32* %.4.sroa_idx1476, align 4, !tbaa !21
  %1616 = ashr i32 %1573, 8
  %1617 = shl i32 %1575, 24
  %1618 = xor i32 %1576, %1586
  %1619 = xor i32 %1618, %1602
  %1620 = xor i32 %1619, %1575
  %1621 = xor i32 %1620, %1578
  %1622 = xor i32 %1621, %1603
  %1623 = xor i32 %1622, %1616
  %1624 = xor i32 %1623, %1579
  %1625 = xor i32 %1624, %1581
  %1626 = xor i32 %1625, %1585
  %1627 = xor i32 %1626, %1617
  %1628 = xor i32 %1627, %1580
  %1629 = xor i32 %1628, %1582
  store i32 %1629, i32* %.8.sroa_idx1510, align 8, !tbaa !21
  %.0..0.20 = load i64, i64* %.0.sroa_cast1425, align 8, !tbaa !19
  %1630 = trunc i64 %.0..0.20 to i32
  store i32 %1630, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4..4.65 = load i64, i64* %.4.sroa_cast1452, align 4, !tbaa !19
  %1631 = trunc i64 %.4..4.65 to i32
  store i32 %1631, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8..8.123 = load i64, i64* %.8.sroa_cast1509, align 8, !tbaa !19
  %1632 = trunc i64 %.8..8.123 to i32
  store i32 %1632, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1633 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1634 = trunc i64 %1633 to i32
  %1635 = ashr i32 %1634, 10
  %1636 = shl i32 %1634, 22
  %1637 = xor i32 %1635, %1636
  store i32 %1637, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %1638 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1639 = trunc i64 %1638 to i32
  %1640 = shl i32 %1639, 1
  %1641 = ashr i32 %1639, 31
  %1642 = xor i32 %1640, %1641
  store i32 %1642, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1643 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1644 = trunc i64 %1643 to i32
  %1645 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %1646 = trunc i64 %1645 to i32
  %1647 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1648 = trunc i64 %1647 to i32
  %1649 = xor i32 %1648, -1
  %1650 = or i32 %1649, %1646
  %1651 = xor i32 %1650, %1644
  store i32 %1651, i32* %.0.sroa_idx2315, align 8, !tbaa !21
  %1652 = xor i32 %1644, -1
  %1653 = or i32 %1648, %1652
  %1654 = xor i32 %1653, %1646
  store i32 %1654, i32* %.4.sroa_idx2350, align 4, !tbaa !21
  %1655 = xor i32 %1646, -1
  %1656 = or i32 %1655, %1644
  %1657 = xor i32 %1656, %1648
  store i32 %1657, i32* %.8.sroa_idx2380, align 8, !tbaa !21
  %.0..0.1321 = load i64, i64* %.0.sroa_cast2304, align 8, !tbaa !19
  %1658 = trunc i64 %.0..0.1321 to i32
  store i32 %1658, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4..4.1363 = load i64, i64* %.4.sroa_cast2330, align 4, !tbaa !19
  %1659 = trunc i64 %.4..4.1363 to i32
  store i32 %1659, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8..8.1415 = load i64, i64* %.8.sroa_cast2379, align 8, !tbaa !19
  %1660 = trunc i64 %.8..8.1415 to i32
  store i32 %1660, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1661 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1662 = trunc i64 %1661 to i32
  %1663 = shl i32 %1662, 1
  %1664 = ashr i32 %1662, 31
  %1665 = xor i32 %1663, %1664
  store i32 %1665, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %1666 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1667 = trunc i64 %1666 to i32
  %1668 = ashr i32 %1667, 10
  %1669 = shl i32 %1667, 22
  %1670 = xor i32 %1668, %1669
  store i32 %1670, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1671 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1672 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 2) to i64*), align 4, !tbaa !19
  %1673 = trunc i64 %1672 to i32
  %1674 = xor i64 %1671, %1439
  %1675 = trunc i64 %1674 to i32
  %1676 = shl i32 %1673, 16
  %1677 = xor i32 %1676, %1675
  store i32 %1677, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %1678 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %1679 = xor i64 %1678, %1447
  %1680 = trunc i64 %1679 to i32
  store i32 %1680, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %1681 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1682 = xor i64 %1672, %1451
  %1683 = xor i64 %1682, %1681
  %1684 = trunc i64 %1683 to i32
  store i32 %1684, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1685 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1686 = trunc i64 %1685 to i32
  %1687 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %1688 = trunc i64 %1687 to i32
  %1689 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1690 = trunc i64 %1689 to i32
  %1691 = ashr i32 %1686, 16
  %1692 = xor i32 %1691, %1686
  %1693 = shl i32 %1688, 16
  %1694 = ashr i32 %1688, 16
  %1695 = shl i32 %1690, 16
  %1696 = ashr i32 %1688, 24
  %1697 = shl i32 %1690, 8
  %1698 = ashr i32 %1690, 8
  %1699 = shl i32 %1686, 24
  %1700 = ashr i32 %1690, 16
  %1701 = shl i32 %1686, 16
  %1702 = ashr i32 %1690, 24
  %1703 = shl i32 %1686, 8
  %1704 = xor i32 %1692, %1699
  %1705 = xor i32 %1704, %1701
  %1706 = xor i32 %1705, %1703
  %1707 = xor i32 %1706, %1693
  %1708 = xor i32 %1707, %1694
  %1709 = xor i32 %1708, %1696
  %1710 = xor i32 %1709, %1695
  %1711 = xor i32 %1710, %1697
  %1712 = xor i32 %1711, %1698
  %1713 = xor i32 %1712, %1700
  %1714 = xor i32 %1713, %1702
  store i32 %1714, i32* %.0.sroa_idx1439, align 8, !tbaa !21
  %1715 = ashr i32 %1686, 8
  %1716 = shl i32 %1688, 24
  %1717 = ashr i32 %1686, 24
  %1718 = shl i32 %1688, 8
  %1719 = xor i32 %1701, %1688
  %1720 = xor i32 %1719, %1703
  %1721 = xor i32 %1720, %1715
  %1722 = xor i32 %1721, %1691
  %1723 = xor i32 %1722, %1717
  %1724 = xor i32 %1723, %1694
  %1725 = xor i32 %1724, %1716
  %1726 = xor i32 %1725, %1693
  %1727 = xor i32 %1726, %1718
  %1728 = xor i32 %1727, %1695
  %1729 = xor i32 %1728, %1700
  %1730 = xor i32 %1729, %1702
  store i32 %1730, i32* %.4.sroa_idx1476, align 4, !tbaa !21
  %1731 = ashr i32 %1688, 8
  %1732 = shl i32 %1690, 24
  %1733 = xor i32 %1691, %1701
  %1734 = xor i32 %1733, %1717
  %1735 = xor i32 %1734, %1690
  %1736 = xor i32 %1735, %1693
  %1737 = xor i32 %1736, %1718
  %1738 = xor i32 %1737, %1731
  %1739 = xor i32 %1738, %1694
  %1740 = xor i32 %1739, %1696
  %1741 = xor i32 %1740, %1700
  %1742 = xor i32 %1741, %1732
  %1743 = xor i32 %1742, %1695
  %1744 = xor i32 %1743, %1697
  store i32 %1744, i32* %.8.sroa_idx1510, align 8, !tbaa !21
  %.0..0.18 = load i64, i64* %.0.sroa_cast1425, align 8, !tbaa !19
  %1745 = trunc i64 %.0..0.18 to i32
  store i32 %1745, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4..4.62 = load i64, i64* %.4.sroa_cast1452, align 4, !tbaa !19
  %1746 = trunc i64 %.4..4.62 to i32
  store i32 %1746, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8..8.120 = load i64, i64* %.8.sroa_cast1509, align 8, !tbaa !19
  %1747 = trunc i64 %.8..8.120 to i32
  store i32 %1747, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1748 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1749 = trunc i64 %1748 to i32
  %1750 = ashr i32 %1749, 10
  %1751 = shl i32 %1749, 22
  %1752 = xor i32 %1750, %1751
  store i32 %1752, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %1753 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1754 = trunc i64 %1753 to i32
  %1755 = shl i32 %1754, 1
  %1756 = ashr i32 %1754, 31
  %1757 = xor i32 %1755, %1756
  store i32 %1757, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1758 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1759 = trunc i64 %1758 to i32
  %1760 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %1761 = trunc i64 %1760 to i32
  %1762 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1763 = trunc i64 %1762 to i32
  %1764 = xor i32 %1763, -1
  %1765 = or i32 %1764, %1761
  %1766 = xor i32 %1765, %1759
  store i32 %1766, i32* %.0.sroa_idx2315, align 8, !tbaa !21
  %1767 = xor i32 %1759, -1
  %1768 = or i32 %1763, %1767
  %1769 = xor i32 %1768, %1761
  store i32 %1769, i32* %.4.sroa_idx2350, align 4, !tbaa !21
  %1770 = xor i32 %1761, -1
  %1771 = or i32 %1770, %1759
  %1772 = xor i32 %1771, %1763
  store i32 %1772, i32* %.8.sroa_idx2380, align 8, !tbaa !21
  %.0..0.1319 = load i64, i64* %.0.sroa_cast2304, align 8, !tbaa !19
  %1773 = trunc i64 %.0..0.1319 to i32
  store i32 %1773, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4..4.1360 = load i64, i64* %.4.sroa_cast2330, align 4, !tbaa !19
  %1774 = trunc i64 %.4..4.1360 to i32
  store i32 %1774, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8..8.1409 = load i64, i64* %.8.sroa_cast2379, align 8, !tbaa !19
  %1775 = trunc i64 %.8..8.1409 to i32
  store i32 %1775, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1776 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1777 = trunc i64 %1776 to i32
  %1778 = shl i32 %1777, 1
  %1779 = ashr i32 %1777, 31
  %1780 = xor i32 %1778, %1779
  store i32 %1780, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %1781 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1782 = trunc i64 %1781 to i32
  %1783 = ashr i32 %1782, 10
  %1784 = shl i32 %1782, 22
  %1785 = xor i32 %1783, %1784
  store i32 %1785, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1786 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1787 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 3) to i64*), align 4, !tbaa !19
  %1788 = trunc i64 %1787 to i32
  %1789 = xor i64 %1786, %1439
  %1790 = trunc i64 %1789 to i32
  %1791 = shl i32 %1788, 16
  %1792 = xor i32 %1791, %1790
  store i32 %1792, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %1793 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %1794 = xor i64 %1793, %1447
  %1795 = trunc i64 %1794 to i32
  store i32 %1795, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %1796 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1797 = xor i64 %1787, %1451
  %1798 = xor i64 %1797, %1796
  %1799 = trunc i64 %1798 to i32
  store i32 %1799, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1800 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1801 = trunc i64 %1800 to i32
  %1802 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %1803 = trunc i64 %1802 to i32
  %1804 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1805 = trunc i64 %1804 to i32
  %1806 = ashr i32 %1801, 16
  %1807 = xor i32 %1806, %1801
  %1808 = shl i32 %1803, 16
  %1809 = ashr i32 %1803, 16
  %1810 = shl i32 %1805, 16
  %1811 = ashr i32 %1803, 24
  %1812 = shl i32 %1805, 8
  %1813 = ashr i32 %1805, 8
  %1814 = shl i32 %1801, 24
  %1815 = ashr i32 %1805, 16
  %1816 = shl i32 %1801, 16
  %1817 = ashr i32 %1805, 24
  %1818 = shl i32 %1801, 8
  %1819 = xor i32 %1807, %1814
  %1820 = xor i32 %1819, %1816
  %1821 = xor i32 %1820, %1818
  %1822 = xor i32 %1821, %1808
  %1823 = xor i32 %1822, %1809
  %1824 = xor i32 %1823, %1811
  %1825 = xor i32 %1824, %1810
  %1826 = xor i32 %1825, %1812
  %1827 = xor i32 %1826, %1813
  %1828 = xor i32 %1827, %1815
  %1829 = xor i32 %1828, %1817
  store i32 %1829, i32* %.0.sroa_idx1439, align 8, !tbaa !21
  %1830 = ashr i32 %1801, 8
  %1831 = shl i32 %1803, 24
  %1832 = ashr i32 %1801, 24
  %1833 = shl i32 %1803, 8
  %1834 = xor i32 %1816, %1803
  %1835 = xor i32 %1834, %1818
  %1836 = xor i32 %1835, %1830
  %1837 = xor i32 %1836, %1806
  %1838 = xor i32 %1837, %1832
  %1839 = xor i32 %1838, %1809
  %1840 = xor i32 %1839, %1831
  %1841 = xor i32 %1840, %1808
  %1842 = xor i32 %1841, %1833
  %1843 = xor i32 %1842, %1810
  %1844 = xor i32 %1843, %1815
  %1845 = xor i32 %1844, %1817
  store i32 %1845, i32* %.4.sroa_idx1476, align 4, !tbaa !21
  %1846 = ashr i32 %1803, 8
  %1847 = shl i32 %1805, 24
  %1848 = xor i32 %1806, %1816
  %1849 = xor i32 %1848, %1832
  %1850 = xor i32 %1849, %1805
  %1851 = xor i32 %1850, %1808
  %1852 = xor i32 %1851, %1833
  %1853 = xor i32 %1852, %1846
  %1854 = xor i32 %1853, %1809
  %1855 = xor i32 %1854, %1811
  %1856 = xor i32 %1855, %1815
  %1857 = xor i32 %1856, %1847
  %1858 = xor i32 %1857, %1810
  %1859 = xor i32 %1858, %1812
  store i32 %1859, i32* %.8.sroa_idx1510, align 8, !tbaa !21
  %.0..0.16 = load i64, i64* %.0.sroa_cast1425, align 8, !tbaa !19
  %1860 = trunc i64 %.0..0.16 to i32
  store i32 %1860, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4..4.59 = load i64, i64* %.4.sroa_cast1452, align 4, !tbaa !19
  %1861 = trunc i64 %.4..4.59 to i32
  store i32 %1861, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8..8.117 = load i64, i64* %.8.sroa_cast1509, align 8, !tbaa !19
  %1862 = trunc i64 %.8..8.117 to i32
  store i32 %1862, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1863 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1864 = trunc i64 %1863 to i32
  %1865 = ashr i32 %1864, 10
  %1866 = shl i32 %1864, 22
  %1867 = xor i32 %1865, %1866
  store i32 %1867, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %1868 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1869 = trunc i64 %1868 to i32
  %1870 = shl i32 %1869, 1
  %1871 = ashr i32 %1869, 31
  %1872 = xor i32 %1870, %1871
  store i32 %1872, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1873 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1874 = trunc i64 %1873 to i32
  %1875 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %1876 = trunc i64 %1875 to i32
  %1877 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1878 = trunc i64 %1877 to i32
  %1879 = xor i32 %1878, -1
  %1880 = or i32 %1879, %1876
  %1881 = xor i32 %1880, %1874
  store i32 %1881, i32* %.0.sroa_idx2315, align 8, !tbaa !21
  %1882 = xor i32 %1874, -1
  %1883 = or i32 %1878, %1882
  %1884 = xor i32 %1883, %1876
  store i32 %1884, i32* %.4.sroa_idx2350, align 4, !tbaa !21
  %1885 = xor i32 %1876, -1
  %1886 = or i32 %1885, %1874
  %1887 = xor i32 %1886, %1878
  store i32 %1887, i32* %.8.sroa_idx2380, align 8, !tbaa !21
  %.0..0.1317 = load i64, i64* %.0.sroa_cast2304, align 8, !tbaa !19
  %1888 = trunc i64 %.0..0.1317 to i32
  store i32 %1888, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4..4.1357 = load i64, i64* %.4.sroa_cast2330, align 4, !tbaa !19
  %1889 = trunc i64 %.4..4.1357 to i32
  store i32 %1889, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8..8.1406 = load i64, i64* %.8.sroa_cast2379, align 8, !tbaa !19
  %1890 = trunc i64 %.8..8.1406 to i32
  store i32 %1890, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1891 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1892 = trunc i64 %1891 to i32
  %1893 = shl i32 %1892, 1
  %1894 = ashr i32 %1892, 31
  %1895 = xor i32 %1893, %1894
  store i32 %1895, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %1896 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1897 = trunc i64 %1896 to i32
  %1898 = ashr i32 %1897, 10
  %1899 = shl i32 %1897, 22
  %1900 = xor i32 %1898, %1899
  store i32 %1900, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1901 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1902 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 4) to i64*), align 4, !tbaa !19
  %1903 = trunc i64 %1902 to i32
  %1904 = xor i64 %1901, %1439
  %1905 = trunc i64 %1904 to i32
  %1906 = shl i32 %1903, 16
  %1907 = xor i32 %1906, %1905
  store i32 %1907, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %1908 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %1909 = xor i64 %1908, %1447
  %1910 = trunc i64 %1909 to i32
  store i32 %1910, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %1911 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1912 = xor i64 %1902, %1451
  %1913 = xor i64 %1912, %1911
  %1914 = trunc i64 %1913 to i32
  store i32 %1914, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1915 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1916 = trunc i64 %1915 to i32
  %1917 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %1918 = trunc i64 %1917 to i32
  %1919 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1920 = trunc i64 %1919 to i32
  %1921 = ashr i32 %1916, 16
  %1922 = xor i32 %1921, %1916
  %1923 = shl i32 %1918, 16
  %1924 = ashr i32 %1918, 16
  %1925 = shl i32 %1920, 16
  %1926 = ashr i32 %1918, 24
  %1927 = shl i32 %1920, 8
  %1928 = ashr i32 %1920, 8
  %1929 = shl i32 %1916, 24
  %1930 = ashr i32 %1920, 16
  %1931 = shl i32 %1916, 16
  %1932 = ashr i32 %1920, 24
  %1933 = shl i32 %1916, 8
  %1934 = xor i32 %1922, %1929
  %1935 = xor i32 %1934, %1931
  %1936 = xor i32 %1935, %1933
  %1937 = xor i32 %1936, %1923
  %1938 = xor i32 %1937, %1924
  %1939 = xor i32 %1938, %1926
  %1940 = xor i32 %1939, %1925
  %1941 = xor i32 %1940, %1927
  %1942 = xor i32 %1941, %1928
  %1943 = xor i32 %1942, %1930
  %1944 = xor i32 %1943, %1932
  store i32 %1944, i32* %.0.sroa_idx1439, align 8, !tbaa !21
  %1945 = ashr i32 %1916, 8
  %1946 = shl i32 %1918, 24
  %1947 = ashr i32 %1916, 24
  %1948 = shl i32 %1918, 8
  %1949 = xor i32 %1931, %1918
  %1950 = xor i32 %1949, %1933
  %1951 = xor i32 %1950, %1945
  %1952 = xor i32 %1951, %1921
  %1953 = xor i32 %1952, %1947
  %1954 = xor i32 %1953, %1924
  %1955 = xor i32 %1954, %1946
  %1956 = xor i32 %1955, %1923
  %1957 = xor i32 %1956, %1948
  %1958 = xor i32 %1957, %1925
  %1959 = xor i32 %1958, %1930
  %1960 = xor i32 %1959, %1932
  store i32 %1960, i32* %.4.sroa_idx1476, align 4, !tbaa !21
  %1961 = ashr i32 %1918, 8
  %1962 = shl i32 %1920, 24
  %1963 = xor i32 %1921, %1931
  %1964 = xor i32 %1963, %1947
  %1965 = xor i32 %1964, %1920
  %1966 = xor i32 %1965, %1923
  %1967 = xor i32 %1966, %1948
  %1968 = xor i32 %1967, %1961
  %1969 = xor i32 %1968, %1924
  %1970 = xor i32 %1969, %1926
  %1971 = xor i32 %1970, %1930
  %1972 = xor i32 %1971, %1962
  %1973 = xor i32 %1972, %1925
  %1974 = xor i32 %1973, %1927
  store i32 %1974, i32* %.8.sroa_idx1510, align 8, !tbaa !21
  %.0..0.14 = load i64, i64* %.0.sroa_cast1425, align 8, !tbaa !19
  %1975 = trunc i64 %.0..0.14 to i32
  store i32 %1975, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4..4.56 = load i64, i64* %.4.sroa_cast1452, align 4, !tbaa !19
  %1976 = trunc i64 %.4..4.56 to i32
  store i32 %1976, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8..8.114 = load i64, i64* %.8.sroa_cast1509, align 8, !tbaa !19
  %1977 = trunc i64 %.8..8.114 to i32
  store i32 %1977, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1978 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1979 = trunc i64 %1978 to i32
  %1980 = ashr i32 %1979, 10
  %1981 = shl i32 %1979, 22
  %1982 = xor i32 %1980, %1981
  store i32 %1982, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %1983 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1984 = trunc i64 %1983 to i32
  %1985 = shl i32 %1984, 1
  %1986 = ashr i32 %1984, 31
  %1987 = xor i32 %1985, %1986
  store i32 %1987, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %1988 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %1989 = trunc i64 %1988 to i32
  %1990 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %1991 = trunc i64 %1990 to i32
  %1992 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %1993 = trunc i64 %1992 to i32
  %1994 = xor i32 %1993, -1
  %1995 = or i32 %1994, %1991
  %1996 = xor i32 %1995, %1989
  store i32 %1996, i32* %.0.sroa_idx2315, align 8, !tbaa !21
  %1997 = xor i32 %1989, -1
  %1998 = or i32 %1993, %1997
  %1999 = xor i32 %1998, %1991
  store i32 %1999, i32* %.4.sroa_idx2350, align 4, !tbaa !21
  %2000 = xor i32 %1991, -1
  %2001 = or i32 %2000, %1989
  %2002 = xor i32 %2001, %1993
  store i32 %2002, i32* %.8.sroa_idx2380, align 8, !tbaa !21
  %.0..0.1315 = load i64, i64* %.0.sroa_cast2304, align 8, !tbaa !19
  %2003 = trunc i64 %.0..0.1315 to i32
  store i32 %2003, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4..4.1354 = load i64, i64* %.4.sroa_cast2330, align 4, !tbaa !19
  %2004 = trunc i64 %.4..4.1354 to i32
  store i32 %2004, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8..8.1403 = load i64, i64* %.8.sroa_cast2379, align 8, !tbaa !19
  %2005 = trunc i64 %.8..8.1403 to i32
  store i32 %2005, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2006 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2007 = trunc i64 %2006 to i32
  %2008 = shl i32 %2007, 1
  %2009 = ashr i32 %2007, 31
  %2010 = xor i32 %2008, %2009
  store i32 %2010, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %2011 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2012 = trunc i64 %2011 to i32
  %2013 = ashr i32 %2012, 10
  %2014 = shl i32 %2012, 22
  %2015 = xor i32 %2013, %2014
  store i32 %2015, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2016 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2017 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 5) to i64*), align 4, !tbaa !19
  %2018 = trunc i64 %2017 to i32
  %2019 = xor i64 %2016, %1439
  %2020 = trunc i64 %2019 to i32
  %2021 = shl i32 %2018, 16
  %2022 = xor i32 %2021, %2020
  store i32 %2022, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %2023 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %2024 = xor i64 %2023, %1447
  %2025 = trunc i64 %2024 to i32
  store i32 %2025, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %2026 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2027 = xor i64 %2017, %1451
  %2028 = xor i64 %2027, %2026
  %2029 = trunc i64 %2028 to i32
  store i32 %2029, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2030 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2031 = trunc i64 %2030 to i32
  %2032 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %2033 = trunc i64 %2032 to i32
  %2034 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2035 = trunc i64 %2034 to i32
  %2036 = ashr i32 %2031, 16
  %2037 = xor i32 %2036, %2031
  %2038 = shl i32 %2033, 16
  %2039 = ashr i32 %2033, 16
  %2040 = shl i32 %2035, 16
  %2041 = ashr i32 %2033, 24
  %2042 = shl i32 %2035, 8
  %2043 = ashr i32 %2035, 8
  %2044 = shl i32 %2031, 24
  %2045 = ashr i32 %2035, 16
  %2046 = shl i32 %2031, 16
  %2047 = ashr i32 %2035, 24
  %2048 = shl i32 %2031, 8
  %2049 = xor i32 %2037, %2044
  %2050 = xor i32 %2049, %2046
  %2051 = xor i32 %2050, %2048
  %2052 = xor i32 %2051, %2038
  %2053 = xor i32 %2052, %2039
  %2054 = xor i32 %2053, %2041
  %2055 = xor i32 %2054, %2040
  %2056 = xor i32 %2055, %2042
  %2057 = xor i32 %2056, %2043
  %2058 = xor i32 %2057, %2045
  %2059 = xor i32 %2058, %2047
  store i32 %2059, i32* %.0.sroa_idx1439, align 8, !tbaa !21
  %2060 = ashr i32 %2031, 8
  %2061 = shl i32 %2033, 24
  %2062 = ashr i32 %2031, 24
  %2063 = shl i32 %2033, 8
  %2064 = xor i32 %2046, %2033
  %2065 = xor i32 %2064, %2048
  %2066 = xor i32 %2065, %2060
  %2067 = xor i32 %2066, %2036
  %2068 = xor i32 %2067, %2062
  %2069 = xor i32 %2068, %2039
  %2070 = xor i32 %2069, %2061
  %2071 = xor i32 %2070, %2038
  %2072 = xor i32 %2071, %2063
  %2073 = xor i32 %2072, %2040
  %2074 = xor i32 %2073, %2045
  %2075 = xor i32 %2074, %2047
  store i32 %2075, i32* %.4.sroa_idx1476, align 4, !tbaa !21
  %2076 = ashr i32 %2033, 8
  %2077 = shl i32 %2035, 24
  %2078 = xor i32 %2036, %2046
  %2079 = xor i32 %2078, %2062
  %2080 = xor i32 %2079, %2035
  %2081 = xor i32 %2080, %2038
  %2082 = xor i32 %2081, %2063
  %2083 = xor i32 %2082, %2076
  %2084 = xor i32 %2083, %2039
  %2085 = xor i32 %2084, %2041
  %2086 = xor i32 %2085, %2045
  %2087 = xor i32 %2086, %2077
  %2088 = xor i32 %2087, %2040
  %2089 = xor i32 %2088, %2042
  store i32 %2089, i32* %.8.sroa_idx1510, align 8, !tbaa !21
  %.0..0.12 = load i64, i64* %.0.sroa_cast1425, align 8, !tbaa !19
  %2090 = trunc i64 %.0..0.12 to i32
  store i32 %2090, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4..4.74 = load i64, i64* %.4.sroa_cast1452, align 4, !tbaa !19
  %2091 = trunc i64 %.4..4.74 to i32
  store i32 %2091, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8..8. = load i64, i64* %.8.sroa_cast1509, align 8, !tbaa !19
  %2092 = trunc i64 %.8..8. to i32
  store i32 %2092, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2093 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2094 = trunc i64 %2093 to i32
  %2095 = ashr i32 %2094, 10
  %2096 = shl i32 %2094, 22
  %2097 = xor i32 %2095, %2096
  store i32 %2097, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %2098 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2099 = trunc i64 %2098 to i32
  %2100 = shl i32 %2099, 1
  %2101 = ashr i32 %2099, 31
  %2102 = xor i32 %2100, %2101
  store i32 %2102, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2103 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2104 = trunc i64 %2103 to i32
  %2105 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %2106 = trunc i64 %2105 to i32
  %2107 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2108 = trunc i64 %2107 to i32
  %2109 = xor i32 %2108, -1
  %2110 = or i32 %2109, %2106
  %2111 = xor i32 %2110, %2104
  store i32 %2111, i32* %.0.sroa_idx2315, align 8, !tbaa !21
  %2112 = xor i32 %2104, -1
  %2113 = or i32 %2108, %2112
  %2114 = xor i32 %2113, %2106
  store i32 %2114, i32* %.4.sroa_idx2350, align 4, !tbaa !21
  %2115 = xor i32 %2106, -1
  %2116 = or i32 %2115, %2104
  %2117 = xor i32 %2116, %2108
  store i32 %2117, i32* %.8.sroa_idx2380, align 8, !tbaa !21
  %.0..0.1313 = load i64, i64* %.0.sroa_cast2304, align 8, !tbaa !19
  %2118 = trunc i64 %.0..0.1313 to i32
  store i32 %2118, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4..4.1369 = load i64, i64* %.4.sroa_cast2330, align 4, !tbaa !19
  %2119 = trunc i64 %.4..4.1369 to i32
  store i32 %2119, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8..8.1400 = load i64, i64* %.8.sroa_cast2379, align 8, !tbaa !19
  %2120 = trunc i64 %.8..8.1400 to i32
  store i32 %2120, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2121 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2122 = trunc i64 %2121 to i32
  %2123 = shl i32 %2122, 1
  %2124 = ashr i32 %2122, 31
  %2125 = xor i32 %2123, %2124
  store i32 %2125, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %2126 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2127 = trunc i64 %2126 to i32
  %2128 = ashr i32 %2127, 10
  %2129 = shl i32 %2127, 22
  %2130 = xor i32 %2128, %2129
  store i32 %2130, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2131 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2132 = load i64, i64* bitcast (%struct.anonymous* @gc to i64*), align 4, !tbaa !19
  %2133 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 6) to i64*), align 4, !tbaa !19
  %2134 = trunc i64 %2133 to i32
  %2135 = xor i64 %2132, %2131
  %2136 = trunc i64 %2135 to i32
  %2137 = shl i32 %2134, 16
  %2138 = xor i32 %2137, %2136
  store i32 %2138, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %2139 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %2140 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %2141 = xor i64 %2140, %2139
  %2142 = trunc i64 %2141 to i32
  store i32 %2142, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %2143 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2144 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 0, i32 2) to i64*), align 4, !tbaa !19
  %2145 = xor i64 %2143, %2133
  %2146 = xor i64 %2145, %2144
  %2147 = trunc i64 %2146 to i32
  store i32 %2147, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2148 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2149 = trunc i64 %2148 to i32
  %2150 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %2151 = trunc i64 %2150 to i32
  %2152 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2153 = trunc i64 %2152 to i32
  %2154 = ashr i32 %2149, 16
  %2155 = xor i32 %2154, %2149
  %2156 = shl i32 %2151, 16
  %2157 = ashr i32 %2151, 16
  %2158 = shl i32 %2153, 16
  %2159 = ashr i32 %2151, 24
  %2160 = shl i32 %2153, 8
  %2161 = ashr i32 %2153, 8
  %2162 = shl i32 %2149, 24
  %2163 = ashr i32 %2153, 16
  %2164 = shl i32 %2149, 16
  %2165 = ashr i32 %2153, 24
  %2166 = shl i32 %2149, 8
  %2167 = xor i32 %2155, %2162
  %2168 = xor i32 %2167, %2164
  %2169 = xor i32 %2168, %2166
  %2170 = xor i32 %2169, %2156
  %2171 = xor i32 %2170, %2157
  %2172 = xor i32 %2171, %2159
  %2173 = xor i32 %2172, %2158
  %2174 = xor i32 %2173, %2160
  %2175 = xor i32 %2174, %2161
  %2176 = xor i32 %2175, %2163
  %2177 = xor i32 %2176, %2165
  store i32 %2177, i32* %.0.sroa_idx1439, align 8, !tbaa !21
  %2178 = ashr i32 %2149, 8
  %2179 = shl i32 %2151, 24
  %2180 = ashr i32 %2149, 24
  %2181 = shl i32 %2151, 8
  %2182 = xor i32 %2164, %2151
  %2183 = xor i32 %2182, %2166
  %2184 = xor i32 %2183, %2178
  %2185 = xor i32 %2184, %2154
  %2186 = xor i32 %2185, %2180
  %2187 = xor i32 %2186, %2157
  %2188 = xor i32 %2187, %2179
  %2189 = xor i32 %2188, %2156
  %2190 = xor i32 %2189, %2181
  %2191 = xor i32 %2190, %2158
  %2192 = xor i32 %2191, %2163
  %2193 = xor i32 %2192, %2165
  store i32 %2193, i32* %.4.sroa_idx1476, align 4, !tbaa !21
  %2194 = ashr i32 %2151, 8
  %2195 = shl i32 %2153, 24
  %2196 = xor i32 %2154, %2164
  %2197 = xor i32 %2196, %2180
  %2198 = xor i32 %2197, %2153
  %2199 = xor i32 %2198, %2156
  %2200 = xor i32 %2199, %2181
  %2201 = xor i32 %2200, %2194
  %2202 = xor i32 %2201, %2157
  %2203 = xor i32 %2202, %2159
  %2204 = xor i32 %2203, %2163
  %2205 = xor i32 %2204, %2195
  %2206 = xor i32 %2205, %2158
  %2207 = xor i32 %2206, %2160
  store i32 %2207, i32* %.8.sroa_idx1510, align 8, !tbaa !21
  %.0..0.10 = load i64, i64* %.0.sroa_cast1425, align 8, !tbaa !19
  %2208 = trunc i64 %.0..0.10 to i32
  store i32 %2208, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4..4.53 = load i64, i64* %.4.sroa_cast1452, align 4, !tbaa !19
  %2209 = trunc i64 %.4..4.53 to i32
  store i32 %2209, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8..8.90 = load i64, i64* %.8.sroa_cast1509, align 8, !tbaa !19
  %2210 = trunc i64 %.8..8.90 to i32
  store i32 %2210, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2211 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2212 = trunc i64 %2211 to i32
  %2213 = ashr i32 %2212, 10
  %2214 = shl i32 %2212, 22
  %2215 = xor i32 %2213, %2214
  store i32 %2215, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %2216 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2217 = trunc i64 %2216 to i32
  %2218 = shl i32 %2217, 1
  %2219 = ashr i32 %2217, 31
  %2220 = xor i32 %2218, %2219
  store i32 %2220, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2221 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2222 = trunc i64 %2221 to i32
  %2223 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %2224 = trunc i64 %2223 to i32
  %2225 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2226 = trunc i64 %2225 to i32
  %2227 = xor i32 %2226, -1
  %2228 = or i32 %2227, %2224
  %2229 = xor i32 %2228, %2222
  store i32 %2229, i32* %.0.sroa_idx2315, align 8, !tbaa !21
  %2230 = xor i32 %2222, -1
  %2231 = or i32 %2226, %2230
  %2232 = xor i32 %2231, %2224
  store i32 %2232, i32* %.4.sroa_idx2350, align 4, !tbaa !21
  %2233 = xor i32 %2224, -1
  %2234 = or i32 %2233, %2222
  %2235 = xor i32 %2234, %2226
  store i32 %2235, i32* %.8.sroa_idx2380, align 8, !tbaa !21
  %.0..0.1311 = load i64, i64* %.0.sroa_cast2304, align 8, !tbaa !19
  %2236 = trunc i64 %.0..0.1311 to i32
  store i32 %2236, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4..4.1351 = load i64, i64* %.4.sroa_cast2330, align 4, !tbaa !19
  %2237 = trunc i64 %.4..4.1351 to i32
  store i32 %2237, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8..8.1397 = load i64, i64* %.8.sroa_cast2379, align 8, !tbaa !19
  %2238 = trunc i64 %.8..8.1397 to i32
  store i32 %2238, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2239 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2240 = trunc i64 %2239 to i32
  %2241 = shl i32 %2240, 1
  %2242 = ashr i32 %2240, 31
  %2243 = xor i32 %2241, %2242
  store i32 %2243, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %2244 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2245 = trunc i64 %2244 to i32
  %2246 = ashr i32 %2245, 10
  %2247 = shl i32 %2245, 22
  %2248 = xor i32 %2246, %2247
  store i32 %2248, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2249 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2250 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 7) to i64*), align 4, !tbaa !19
  %2251 = trunc i64 %2250 to i32
  %2252 = xor i64 %2249, %2132
  %2253 = trunc i64 %2252 to i32
  %2254 = shl i32 %2251, 16
  %2255 = xor i32 %2254, %2253
  store i32 %2255, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %2256 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %2257 = xor i64 %2256, %2140
  %2258 = trunc i64 %2257 to i32
  store i32 %2258, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %2259 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2260 = xor i64 %2250, %2144
  %2261 = xor i64 %2260, %2259
  %2262 = trunc i64 %2261 to i32
  store i32 %2262, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2263 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2264 = trunc i64 %2263 to i32
  %2265 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %2266 = trunc i64 %2265 to i32
  %2267 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2268 = trunc i64 %2267 to i32
  %2269 = ashr i32 %2264, 16
  %2270 = xor i32 %2269, %2264
  %2271 = shl i32 %2266, 16
  %2272 = ashr i32 %2266, 16
  %2273 = shl i32 %2268, 16
  %2274 = ashr i32 %2266, 24
  %2275 = shl i32 %2268, 8
  %2276 = ashr i32 %2268, 8
  %2277 = shl i32 %2264, 24
  %2278 = ashr i32 %2268, 16
  %2279 = shl i32 %2264, 16
  %2280 = ashr i32 %2268, 24
  %2281 = shl i32 %2264, 8
  %2282 = xor i32 %2270, %2277
  %2283 = xor i32 %2282, %2279
  %2284 = xor i32 %2283, %2281
  %2285 = xor i32 %2284, %2271
  %2286 = xor i32 %2285, %2272
  %2287 = xor i32 %2286, %2274
  %2288 = xor i32 %2287, %2273
  %2289 = xor i32 %2288, %2275
  %2290 = xor i32 %2289, %2276
  %2291 = xor i32 %2290, %2278
  %2292 = xor i32 %2291, %2280
  store i32 %2292, i32* %.0.sroa_idx1439, align 8, !tbaa !21
  %2293 = ashr i32 %2264, 8
  %2294 = shl i32 %2266, 24
  %2295 = ashr i32 %2264, 24
  %2296 = shl i32 %2266, 8
  %2297 = xor i32 %2279, %2266
  %2298 = xor i32 %2297, %2281
  %2299 = xor i32 %2298, %2293
  %2300 = xor i32 %2299, %2269
  %2301 = xor i32 %2300, %2295
  %2302 = xor i32 %2301, %2272
  %2303 = xor i32 %2302, %2294
  %2304 = xor i32 %2303, %2271
  %2305 = xor i32 %2304, %2296
  %2306 = xor i32 %2305, %2273
  %2307 = xor i32 %2306, %2278
  %2308 = xor i32 %2307, %2280
  store i32 %2308, i32* %.4.sroa_idx1476, align 4, !tbaa !21
  %2309 = ashr i32 %2266, 8
  %2310 = shl i32 %2268, 24
  %2311 = xor i32 %2269, %2279
  %2312 = xor i32 %2311, %2295
  %2313 = xor i32 %2312, %2268
  %2314 = xor i32 %2313, %2271
  %2315 = xor i32 %2314, %2296
  %2316 = xor i32 %2315, %2309
  %2317 = xor i32 %2316, %2272
  %2318 = xor i32 %2317, %2274
  %2319 = xor i32 %2318, %2278
  %2320 = xor i32 %2319, %2310
  %2321 = xor i32 %2320, %2273
  %2322 = xor i32 %2321, %2275
  store i32 %2322, i32* %.8.sroa_idx1510, align 8, !tbaa !21
  %.0..0.8 = load i64, i64* %.0.sroa_cast1425, align 8, !tbaa !19
  %2323 = trunc i64 %.0..0.8 to i32
  store i32 %2323, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4..4.50 = load i64, i64* %.4.sroa_cast1452, align 4, !tbaa !19
  %2324 = trunc i64 %.4..4.50 to i32
  store i32 %2324, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8..8.93 = load i64, i64* %.8.sroa_cast1509, align 8, !tbaa !19
  %2325 = trunc i64 %.8..8.93 to i32
  store i32 %2325, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2326 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2327 = trunc i64 %2326 to i32
  %2328 = ashr i32 %2327, 10
  %2329 = shl i32 %2327, 22
  %2330 = xor i32 %2328, %2329
  store i32 %2330, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %2331 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2332 = trunc i64 %2331 to i32
  %2333 = shl i32 %2332, 1
  %2334 = ashr i32 %2332, 31
  %2335 = xor i32 %2333, %2334
  store i32 %2335, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2336 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2337 = trunc i64 %2336 to i32
  %2338 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %2339 = trunc i64 %2338 to i32
  %2340 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2341 = trunc i64 %2340 to i32
  %2342 = xor i32 %2341, -1
  %2343 = or i32 %2342, %2339
  %2344 = xor i32 %2343, %2337
  store i32 %2344, i32* %.0.sroa_idx2315, align 8, !tbaa !21
  %2345 = xor i32 %2337, -1
  %2346 = or i32 %2341, %2345
  %2347 = xor i32 %2346, %2339
  store i32 %2347, i32* %.4.sroa_idx2350, align 4, !tbaa !21
  %2348 = xor i32 %2339, -1
  %2349 = or i32 %2348, %2337
  %2350 = xor i32 %2349, %2341
  store i32 %2350, i32* %.8.sroa_idx2380, align 8, !tbaa !21
  %.0..0.1309 = load i64, i64* %.0.sroa_cast2304, align 8, !tbaa !19
  %2351 = trunc i64 %.0..0.1309 to i32
  store i32 %2351, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4..4.1348 = load i64, i64* %.4.sroa_cast2330, align 4, !tbaa !19
  %2352 = trunc i64 %.4..4.1348 to i32
  store i32 %2352, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8..8.1394 = load i64, i64* %.8.sroa_cast2379, align 8, !tbaa !19
  %2353 = trunc i64 %.8..8.1394 to i32
  store i32 %2353, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2354 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2355 = trunc i64 %2354 to i32
  %2356 = shl i32 %2355, 1
  %2357 = ashr i32 %2355, 31
  %2358 = xor i32 %2356, %2357
  store i32 %2358, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %2359 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2360 = trunc i64 %2359 to i32
  %2361 = ashr i32 %2360, 10
  %2362 = shl i32 %2360, 22
  %2363 = xor i32 %2361, %2362
  store i32 %2363, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2364 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2365 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 8) to i64*), align 4, !tbaa !19
  %2366 = trunc i64 %2365 to i32
  %2367 = xor i64 %2364, %2132
  %2368 = trunc i64 %2367 to i32
  %2369 = shl i32 %2366, 16
  %2370 = xor i32 %2369, %2368
  store i32 %2370, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %2371 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %2372 = xor i64 %2371, %2140
  %2373 = trunc i64 %2372 to i32
  store i32 %2373, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %2374 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2375 = xor i64 %2365, %2144
  %2376 = xor i64 %2375, %2374
  %2377 = trunc i64 %2376 to i32
  store i32 %2377, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2378 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2379 = trunc i64 %2378 to i32
  %2380 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %2381 = trunc i64 %2380 to i32
  %2382 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2383 = trunc i64 %2382 to i32
  %2384 = ashr i32 %2379, 16
  %2385 = xor i32 %2384, %2379
  %2386 = shl i32 %2381, 16
  %2387 = ashr i32 %2381, 16
  %2388 = shl i32 %2383, 16
  %2389 = ashr i32 %2381, 24
  %2390 = shl i32 %2383, 8
  %2391 = ashr i32 %2383, 8
  %2392 = shl i32 %2379, 24
  %2393 = ashr i32 %2383, 16
  %2394 = shl i32 %2379, 16
  %2395 = ashr i32 %2383, 24
  %2396 = shl i32 %2379, 8
  %2397 = xor i32 %2385, %2392
  %2398 = xor i32 %2397, %2394
  %2399 = xor i32 %2398, %2396
  %2400 = xor i32 %2399, %2386
  %2401 = xor i32 %2400, %2387
  %2402 = xor i32 %2401, %2389
  %2403 = xor i32 %2402, %2388
  %2404 = xor i32 %2403, %2390
  %2405 = xor i32 %2404, %2391
  %2406 = xor i32 %2405, %2393
  %2407 = xor i32 %2406, %2395
  store i32 %2407, i32* %.0.sroa_idx1439, align 8, !tbaa !21
  %2408 = ashr i32 %2379, 8
  %2409 = shl i32 %2381, 24
  %2410 = ashr i32 %2379, 24
  %2411 = shl i32 %2381, 8
  %2412 = xor i32 %2394, %2381
  %2413 = xor i32 %2412, %2396
  %2414 = xor i32 %2413, %2408
  %2415 = xor i32 %2414, %2384
  %2416 = xor i32 %2415, %2410
  %2417 = xor i32 %2416, %2387
  %2418 = xor i32 %2417, %2409
  %2419 = xor i32 %2418, %2386
  %2420 = xor i32 %2419, %2411
  %2421 = xor i32 %2420, %2388
  %2422 = xor i32 %2421, %2393
  %2423 = xor i32 %2422, %2395
  store i32 %2423, i32* %.4.sroa_idx1476, align 4, !tbaa !21
  %2424 = ashr i32 %2381, 8
  %2425 = shl i32 %2383, 24
  %2426 = xor i32 %2384, %2394
  %2427 = xor i32 %2426, %2410
  %2428 = xor i32 %2427, %2383
  %2429 = xor i32 %2428, %2386
  %2430 = xor i32 %2429, %2411
  %2431 = xor i32 %2430, %2424
  %2432 = xor i32 %2431, %2387
  %2433 = xor i32 %2432, %2389
  %2434 = xor i32 %2433, %2393
  %2435 = xor i32 %2434, %2425
  %2436 = xor i32 %2435, %2388
  %2437 = xor i32 %2436, %2390
  store i32 %2437, i32* %.8.sroa_idx1510, align 8, !tbaa !21
  %.0..0.6 = load i64, i64* %.0.sroa_cast1425, align 8, !tbaa !19
  %2438 = trunc i64 %.0..0.6 to i32
  store i32 %2438, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4..4.47 = load i64, i64* %.4.sroa_cast1452, align 4, !tbaa !19
  %2439 = trunc i64 %.4..4.47 to i32
  store i32 %2439, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8..8.96 = load i64, i64* %.8.sroa_cast1509, align 8, !tbaa !19
  %2440 = trunc i64 %.8..8.96 to i32
  store i32 %2440, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2441 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2442 = trunc i64 %2441 to i32
  %2443 = ashr i32 %2442, 10
  %2444 = shl i32 %2442, 22
  %2445 = xor i32 %2443, %2444
  store i32 %2445, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %2446 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2447 = trunc i64 %2446 to i32
  %2448 = shl i32 %2447, 1
  %2449 = ashr i32 %2447, 31
  %2450 = xor i32 %2448, %2449
  store i32 %2450, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2451 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2452 = trunc i64 %2451 to i32
  %2453 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %2454 = trunc i64 %2453 to i32
  %2455 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2456 = trunc i64 %2455 to i32
  %2457 = xor i32 %2456, -1
  %2458 = or i32 %2457, %2454
  %2459 = xor i32 %2458, %2452
  store i32 %2459, i32* %.0.sroa_idx2315, align 8, !tbaa !21
  %2460 = xor i32 %2452, -1
  %2461 = or i32 %2456, %2460
  %2462 = xor i32 %2461, %2454
  store i32 %2462, i32* %.4.sroa_idx2350, align 4, !tbaa !21
  %2463 = xor i32 %2454, -1
  %2464 = or i32 %2463, %2452
  %2465 = xor i32 %2464, %2456
  store i32 %2465, i32* %.8.sroa_idx2380, align 8, !tbaa !21
  %.0..0.1307 = load i64, i64* %.0.sroa_cast2304, align 8, !tbaa !19
  %2466 = trunc i64 %.0..0.1307 to i32
  store i32 %2466, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4..4.1345 = load i64, i64* %.4.sroa_cast2330, align 4, !tbaa !19
  %2467 = trunc i64 %.4..4.1345 to i32
  store i32 %2467, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8..8.1391 = load i64, i64* %.8.sroa_cast2379, align 8, !tbaa !19
  %2468 = trunc i64 %.8..8.1391 to i32
  store i32 %2468, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2469 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2470 = trunc i64 %2469 to i32
  %2471 = shl i32 %2470, 1
  %2472 = ashr i32 %2470, 31
  %2473 = xor i32 %2471, %2472
  store i32 %2473, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %2474 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2475 = trunc i64 %2474 to i32
  %2476 = ashr i32 %2475, 10
  %2477 = shl i32 %2475, 22
  %2478 = xor i32 %2476, %2477
  store i32 %2478, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2479 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2480 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 9) to i64*), align 4, !tbaa !19
  %2481 = trunc i64 %2480 to i32
  %2482 = xor i64 %2479, %2132
  %2483 = trunc i64 %2482 to i32
  %2484 = shl i32 %2481, 16
  %2485 = xor i32 %2484, %2483
  store i32 %2485, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %2486 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %2487 = xor i64 %2486, %2140
  %2488 = trunc i64 %2487 to i32
  store i32 %2488, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %2489 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2490 = xor i64 %2480, %2144
  %2491 = xor i64 %2490, %2489
  %2492 = trunc i64 %2491 to i32
  store i32 %2492, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2493 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2494 = trunc i64 %2493 to i32
  %2495 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %2496 = trunc i64 %2495 to i32
  %2497 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2498 = trunc i64 %2497 to i32
  %2499 = ashr i32 %2494, 16
  %2500 = xor i32 %2499, %2494
  %2501 = shl i32 %2496, 16
  %2502 = ashr i32 %2496, 16
  %2503 = shl i32 %2498, 16
  %2504 = ashr i32 %2496, 24
  %2505 = shl i32 %2498, 8
  %2506 = ashr i32 %2498, 8
  %2507 = shl i32 %2494, 24
  %2508 = ashr i32 %2498, 16
  %2509 = shl i32 %2494, 16
  %2510 = ashr i32 %2498, 24
  %2511 = shl i32 %2494, 8
  %2512 = xor i32 %2500, %2507
  %2513 = xor i32 %2512, %2509
  %2514 = xor i32 %2513, %2511
  %2515 = xor i32 %2514, %2501
  %2516 = xor i32 %2515, %2502
  %2517 = xor i32 %2516, %2504
  %2518 = xor i32 %2517, %2503
  %2519 = xor i32 %2518, %2505
  %2520 = xor i32 %2519, %2506
  %2521 = xor i32 %2520, %2508
  %2522 = xor i32 %2521, %2510
  store i32 %2522, i32* %.0.sroa_idx1439, align 8, !tbaa !21
  %2523 = ashr i32 %2494, 8
  %2524 = shl i32 %2496, 24
  %2525 = ashr i32 %2494, 24
  %2526 = shl i32 %2496, 8
  %2527 = xor i32 %2509, %2496
  %2528 = xor i32 %2527, %2511
  %2529 = xor i32 %2528, %2523
  %2530 = xor i32 %2529, %2499
  %2531 = xor i32 %2530, %2525
  %2532 = xor i32 %2531, %2502
  %2533 = xor i32 %2532, %2524
  %2534 = xor i32 %2533, %2501
  %2535 = xor i32 %2534, %2526
  %2536 = xor i32 %2535, %2503
  %2537 = xor i32 %2536, %2508
  %2538 = xor i32 %2537, %2510
  store i32 %2538, i32* %.4.sroa_idx1476, align 4, !tbaa !21
  %2539 = ashr i32 %2496, 8
  %2540 = shl i32 %2498, 24
  %2541 = xor i32 %2499, %2509
  %2542 = xor i32 %2541, %2525
  %2543 = xor i32 %2542, %2498
  %2544 = xor i32 %2543, %2501
  %2545 = xor i32 %2544, %2526
  %2546 = xor i32 %2545, %2539
  %2547 = xor i32 %2546, %2502
  %2548 = xor i32 %2547, %2504
  %2549 = xor i32 %2548, %2508
  %2550 = xor i32 %2549, %2540
  %2551 = xor i32 %2550, %2503
  %2552 = xor i32 %2551, %2505
  store i32 %2552, i32* %.8.sroa_idx1510, align 8, !tbaa !21
  %.0..0.4 = load i64, i64* %.0.sroa_cast1425, align 8, !tbaa !19
  %2553 = trunc i64 %.0..0.4 to i32
  store i32 %2553, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4..4.44 = load i64, i64* %.4.sroa_cast1452, align 4, !tbaa !19
  %2554 = trunc i64 %.4..4.44 to i32
  store i32 %2554, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8..8.126 = load i64, i64* %.8.sroa_cast1509, align 8, !tbaa !19
  %2555 = trunc i64 %.8..8.126 to i32
  store i32 %2555, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2556 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2557 = trunc i64 %2556 to i32
  %2558 = ashr i32 %2557, 10
  %2559 = shl i32 %2557, 22
  %2560 = xor i32 %2558, %2559
  store i32 %2560, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %2561 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2562 = trunc i64 %2561 to i32
  %2563 = shl i32 %2562, 1
  %2564 = ashr i32 %2562, 31
  %2565 = xor i32 %2563, %2564
  store i32 %2565, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2566 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2567 = trunc i64 %2566 to i32
  %2568 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %2569 = trunc i64 %2568 to i32
  %2570 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2571 = trunc i64 %2570 to i32
  %2572 = xor i32 %2571, -1
  %2573 = or i32 %2572, %2569
  %2574 = xor i32 %2573, %2567
  store i32 %2574, i32* %.0.sroa_idx2315, align 8, !tbaa !21
  %2575 = xor i32 %2567, -1
  %2576 = or i32 %2571, %2575
  %2577 = xor i32 %2576, %2569
  store i32 %2577, i32* %.4.sroa_idx2350, align 4, !tbaa !21
  %2578 = xor i32 %2569, -1
  %2579 = or i32 %2578, %2567
  %2580 = xor i32 %2579, %2571
  store i32 %2580, i32* %.8.sroa_idx2380, align 8, !tbaa !21
  %.0..0.1305 = load i64, i64* %.0.sroa_cast2304, align 8, !tbaa !19
  %2581 = trunc i64 %.0..0.1305 to i32
  store i32 %2581, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4..4.1342 = load i64, i64* %.4.sroa_cast2330, align 4, !tbaa !19
  %2582 = trunc i64 %.4..4.1342 to i32
  store i32 %2582, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8..8.1388 = load i64, i64* %.8.sroa_cast2379, align 8, !tbaa !19
  %2583 = trunc i64 %.8..8.1388 to i32
  store i32 %2583, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2584 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2585 = trunc i64 %2584 to i32
  %2586 = shl i32 %2585, 1
  %2587 = ashr i32 %2585, 31
  %2588 = xor i32 %2586, %2587
  store i32 %2588, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %2589 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2590 = trunc i64 %2589 to i32
  %2591 = ashr i32 %2590, 10
  %2592 = shl i32 %2590, 22
  %2593 = xor i32 %2591, %2592
  store i32 %2593, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2594 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2595 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 10) to i64*), align 4, !tbaa !19
  %2596 = trunc i64 %2595 to i32
  %2597 = xor i64 %2594, %2132
  %2598 = trunc i64 %2597 to i32
  %2599 = shl i32 %2596, 16
  %2600 = xor i32 %2599, %2598
  store i32 %2600, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %2601 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %2602 = xor i64 %2601, %2140
  %2603 = trunc i64 %2602 to i32
  store i32 %2603, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %2604 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2605 = xor i64 %2595, %2144
  %2606 = xor i64 %2605, %2604
  %2607 = trunc i64 %2606 to i32
  store i32 %2607, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2608 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2609 = trunc i64 %2608 to i32
  %2610 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %2611 = trunc i64 %2610 to i32
  %2612 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2613 = trunc i64 %2612 to i32
  %2614 = ashr i32 %2609, 16
  %2615 = xor i32 %2614, %2609
  %2616 = shl i32 %2611, 16
  %2617 = ashr i32 %2611, 16
  %2618 = shl i32 %2613, 16
  %2619 = ashr i32 %2611, 24
  %2620 = shl i32 %2613, 8
  %2621 = ashr i32 %2613, 8
  %2622 = shl i32 %2609, 24
  %2623 = ashr i32 %2613, 16
  %2624 = shl i32 %2609, 16
  %2625 = ashr i32 %2613, 24
  %2626 = shl i32 %2609, 8
  %2627 = xor i32 %2615, %2622
  %2628 = xor i32 %2627, %2624
  %2629 = xor i32 %2628, %2626
  %2630 = xor i32 %2629, %2616
  %2631 = xor i32 %2630, %2617
  %2632 = xor i32 %2631, %2619
  %2633 = xor i32 %2632, %2618
  %2634 = xor i32 %2633, %2620
  %2635 = xor i32 %2634, %2621
  %2636 = xor i32 %2635, %2623
  %2637 = xor i32 %2636, %2625
  store i32 %2637, i32* %.0.sroa_idx1439, align 8, !tbaa !21
  %2638 = ashr i32 %2609, 8
  %2639 = shl i32 %2611, 24
  %2640 = ashr i32 %2609, 24
  %2641 = shl i32 %2611, 8
  %2642 = xor i32 %2624, %2611
  %2643 = xor i32 %2642, %2626
  %2644 = xor i32 %2643, %2638
  %2645 = xor i32 %2644, %2614
  %2646 = xor i32 %2645, %2640
  %2647 = xor i32 %2646, %2617
  %2648 = xor i32 %2647, %2639
  %2649 = xor i32 %2648, %2616
  %2650 = xor i32 %2649, %2641
  %2651 = xor i32 %2650, %2618
  %2652 = xor i32 %2651, %2623
  %2653 = xor i32 %2652, %2625
  store i32 %2653, i32* %.4.sroa_idx1476, align 4, !tbaa !21
  %2654 = ashr i32 %2611, 8
  %2655 = shl i32 %2613, 24
  %2656 = xor i32 %2614, %2624
  %2657 = xor i32 %2656, %2640
  %2658 = xor i32 %2657, %2613
  %2659 = xor i32 %2658, %2616
  %2660 = xor i32 %2659, %2641
  %2661 = xor i32 %2660, %2654
  %2662 = xor i32 %2661, %2617
  %2663 = xor i32 %2662, %2619
  %2664 = xor i32 %2663, %2623
  %2665 = xor i32 %2664, %2655
  %2666 = xor i32 %2665, %2618
  %2667 = xor i32 %2666, %2620
  store i32 %2667, i32* %.8.sroa_idx1510, align 8, !tbaa !21
  %.0..0.2 = load i64, i64* %.0.sroa_cast1425, align 8, !tbaa !19
  %2668 = trunc i64 %.0..0.2 to i32
  store i32 %2668, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4..4.41 = load i64, i64* %.4.sroa_cast1452, align 4, !tbaa !19
  %2669 = trunc i64 %.4..4.41 to i32
  store i32 %2669, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8..8.102 = load i64, i64* %.8.sroa_cast1509, align 8, !tbaa !19
  %2670 = trunc i64 %.8..8.102 to i32
  store i32 %2670, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2671 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2672 = trunc i64 %2671 to i32
  %2673 = ashr i32 %2672, 10
  %2674 = shl i32 %2672, 22
  %2675 = xor i32 %2673, %2674
  store i32 %2675, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %2676 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2677 = trunc i64 %2676 to i32
  %2678 = shl i32 %2677, 1
  %2679 = ashr i32 %2677, 31
  %2680 = xor i32 %2678, %2679
  store i32 %2680, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2681 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2682 = trunc i64 %2681 to i32
  %2683 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %2684 = trunc i64 %2683 to i32
  %2685 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2686 = trunc i64 %2685 to i32
  %2687 = xor i32 %2686, -1
  %2688 = or i32 %2687, %2684
  %2689 = xor i32 %2688, %2682
  store i32 %2689, i32* %.0.sroa_idx2315, align 8, !tbaa !21
  %2690 = xor i32 %2682, -1
  %2691 = or i32 %2686, %2690
  %2692 = xor i32 %2691, %2684
  store i32 %2692, i32* %.4.sroa_idx2350, align 4, !tbaa !21
  %2693 = xor i32 %2684, -1
  %2694 = or i32 %2693, %2682
  %2695 = xor i32 %2694, %2686
  store i32 %2695, i32* %.8.sroa_idx2380, align 8, !tbaa !21
  %.0..0.1303 = load i64, i64* %.0.sroa_cast2304, align 8, !tbaa !19
  %2696 = trunc i64 %.0..0.1303 to i32
  store i32 %2696, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4..4.1339 = load i64, i64* %.4.sroa_cast2330, align 4, !tbaa !19
  %2697 = trunc i64 %.4..4.1339 to i32
  store i32 %2697, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8..8.1385 = load i64, i64* %.8.sroa_cast2379, align 8, !tbaa !19
  %2698 = trunc i64 %.8..8.1385 to i32
  store i32 %2698, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2699 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2700 = trunc i64 %2699 to i32
  %2701 = shl i32 %2700, 1
  %2702 = ashr i32 %2700, 31
  %2703 = xor i32 %2701, %2702
  store i32 %2703, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %2704 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2705 = trunc i64 %2704 to i32
  %2706 = ashr i32 %2705, 10
  %2707 = shl i32 %2705, 22
  %2708 = xor i32 %2706, %2707
  store i32 %2708, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2709 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2710 = load i64, i64* bitcast (i32* getelementptr inbounds (%struct.anonymous, %struct.anonymous* @gc, i32 0, i32 2, i32 11) to i64*), align 4, !tbaa !19
  %2711 = trunc i64 %2710 to i32
  %2712 = xor i64 %2709, %2132
  %2713 = trunc i64 %2712 to i32
  %2714 = shl i32 %2711, 16
  %2715 = xor i32 %2714, %2713
  store i32 %2715, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %2716 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %2717 = xor i64 %2716, %2140
  %2718 = trunc i64 %2717 to i32
  store i32 %2718, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %2719 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2720 = xor i64 %2710, %2144
  %2721 = xor i64 %2720, %2719
  %2722 = trunc i64 %2721 to i32
  store i32 %2722, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2723 = load i64, i64* bitcast ([3 x i32]* @in_pub to i64*), align 8, !tbaa !19
  %2724 = trunc i64 %2723 to i32
  %2725 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1) to i64*), align 4, !tbaa !19
  %2726 = trunc i64 %2725 to i32
  %2727 = load i64, i64* bitcast (i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2) to i64*), align 8, !tbaa !19
  %2728 = trunc i64 %2727 to i32
  %2729 = ashr i32 %2724, 16
  %2730 = xor i32 %2729, %2724
  %2731 = shl i32 %2726, 16
  %2732 = ashr i32 %2726, 16
  %2733 = shl i32 %2728, 16
  %2734 = ashr i32 %2726, 24
  %2735 = shl i32 %2728, 8
  %2736 = ashr i32 %2728, 8
  %2737 = shl i32 %2724, 24
  %2738 = ashr i32 %2728, 16
  %2739 = shl i32 %2724, 16
  %2740 = ashr i32 %2728, 24
  %2741 = shl i32 %2724, 8
  %2742 = xor i32 %2730, %2737
  %2743 = xor i32 %2742, %2739
  %2744 = xor i32 %2743, %2741
  %2745 = xor i32 %2744, %2731
  %2746 = xor i32 %2745, %2732
  %2747 = xor i32 %2746, %2734
  %2748 = xor i32 %2747, %2733
  %2749 = xor i32 %2748, %2735
  %2750 = xor i32 %2749, %2736
  %2751 = xor i32 %2750, %2738
  %2752 = xor i32 %2751, %2740
  store i32 %2752, i32* %.0.sroa_idx1439, align 8, !tbaa !21
  %2753 = ashr i32 %2724, 8
  %2754 = shl i32 %2726, 24
  %2755 = ashr i32 %2724, 24
  %2756 = shl i32 %2726, 8
  %2757 = xor i32 %2739, %2726
  %2758 = xor i32 %2757, %2741
  %2759 = xor i32 %2758, %2753
  %2760 = xor i32 %2759, %2729
  %2761 = xor i32 %2760, %2755
  %2762 = xor i32 %2761, %2732
  %2763 = xor i32 %2762, %2754
  %2764 = xor i32 %2763, %2731
  %2765 = xor i32 %2764, %2756
  %2766 = xor i32 %2765, %2733
  %2767 = xor i32 %2766, %2738
  %2768 = xor i32 %2767, %2740
  store i32 %2768, i32* %.4.sroa_idx1476, align 4, !tbaa !21
  %2769 = ashr i32 %2726, 8
  %2770 = shl i32 %2728, 24
  %2771 = xor i32 %2729, %2739
  %2772 = xor i32 %2771, %2755
  %2773 = xor i32 %2772, %2728
  %2774 = xor i32 %2773, %2731
  %2775 = xor i32 %2774, %2756
  %2776 = xor i32 %2775, %2769
  %2777 = xor i32 %2776, %2732
  %2778 = xor i32 %2777, %2734
  %2779 = xor i32 %2778, %2738
  %2780 = xor i32 %2779, %2770
  %2781 = xor i32 %2780, %2733
  %2782 = xor i32 %2781, %2735
  store i32 %2782, i32* %.8.sroa_idx1510, align 8, !tbaa !21
  %.0..0. = load i64, i64* %.0.sroa_cast1425, align 8, !tbaa !19
  %2783 = trunc i64 %.0..0. to i32
  store i32 %2783, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 0), align 8, !tbaa !21
  %.4..4. = load i64, i64* %.4.sroa_cast1452, align 4, !tbaa !19
  %2784 = trunc i64 %.4..4. to i32
  store i32 %2784, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 1), align 4, !tbaa !21
  %.8..8.105 = load i64, i64* %.8.sroa_cast1509, align 8, !tbaa !19
  %2785 = trunc i64 %.8..8.105 to i32
  store i32 %2785, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @in_pub, i32 0, i32 2), align 8, !tbaa !21
  %2786 = tail call i32 @write(i32 1, i8* bitcast ([3 x i32]* @in_pub to i8*), i32 12) #13
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %.0.sroa_cast1449)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %.0.sroa_cast1720)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %.0.sroa_cast2325)
  ret i32 0
}

; Function Attrs: nofree
declare dso_local i32 @read(i32, i8* nocapture, i32) local_unnamed_addr #11

; Function Attrs: nofree
declare dso_local i32 @write(i32, i8* nocapture readonly, i32) local_unnamed_addr #11

; Function Attrs: nounwind readnone
declare <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8>, <32 x i8>, <32 x i8>) #12

attributes #0 = { norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="256" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="256" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="256" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nofree noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="256" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"clang version 10.0.0-4ubuntu1 "}
!3 = !{!4, !9, i64 12}
!4 = !{!"ds_base", !5, i64 0, !5, i64 4, !8, i64 8, !9, i64 12, !8, i64 16, !8, i64 20}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!"_Bool", !6, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{!4, !5, i64 0}
!12 = !{!4, !8, i64 16}
!13 = !{!4, !8, i64 20}
!14 = !{!6, !6, i64 0}
!15 = !{!4, !8, i64 8}
!16 = !{!4, !5, i64 4}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!20, !20, i64 0}
!20 = !{!"long long", !6, i64 0}
!21 = !{!8, !8, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"short", !6, i64 0}
