; ModuleID = 'mitigated.c'
source_filename = "mitigated.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.ds_base = type { i8*, i64*, i32, i8, i32, i32 }

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
  br i1 %5, label %17, label %7

7:                                                ; preds = %4
  %8 = and i32 %6, -8
  %9 = zext i32 %8 to i64
  %10 = insertelement <4 x i64> undef, i64 %9, i32 0
  %11 = shufflevector <4 x i64> %10, <4 x i64> undef, <4 x i32> zeroinitializer
  %12 = zext i32 %6 to i64
  %13 = and i32 %2, 1
  %14 = icmp eq i32 %2, 1
  %15 = sub i32 %2, %13
  %16 = icmp eq i32 %13, 0
  br label %34

17:                                               ; preds = %227, %4
  %18 = phi i8 [ 1, %4 ], [ %228, %227 ]
  %19 = phi <4 x i64> [ zeroinitializer, %4 ], [ %229, %227 ]
  %20 = shufflevector <4 x i64> %19, <4 x i64> undef, <2 x i32> <i32 0, i32 1>
  %21 = shufflevector <4 x i64> %19, <4 x i64> undef, <2 x i32> <i32 2, i32 3>
  %22 = add <2 x i64> %21, %20
  %23 = shufflevector <2 x i64> %22, <2 x i64> undef, <2 x i32> <i32 1, i32 1>
  %24 = add <2 x i64> %23, %22
  %25 = tail call i32 bitcast (i32 (...)* @_mm_cvtsi128_si64 to i32 (<2 x i64>)*)(<2 x i64> %24) #13
  %26 = sext i32 %25 to i64
  %27 = and i8 %18, 1
  %28 = icmp eq i8 %27, 0
  %29 = shl i32 %6, 3
  %30 = and i32 %29, 56
  %31 = zext i32 %30 to i64
  %32 = select i1 %28, i64 0, i64 %31
  %33 = lshr i64 %26, %32
  ret i64 %33

34:                                               ; preds = %227, %7
  %35 = phi <4 x i64> [ zeroinitializer, %7 ], [ %229, %227 ]
  %36 = phi i8 [ 1, %7 ], [ %228, %227 ]
  %37 = phi i32 [ 0, %7 ], [ %230, %227 ]
  %38 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %37
  %39 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %37, i32 3
  %40 = load i8, i8* %39, align 4, !tbaa !3, !range !10
  %41 = icmp eq i8 %40, 0
  %42 = bitcast %struct.ds_base* %38 to i32*
  %43 = load i32, i32* %42, align 4, !tbaa !11
  %44 = zext i32 %43 to i64
  br i1 %41, label %145, label %45

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %37, i32 4
  %47 = load i32, i32* %46, align 4, !tbaa !12
  %48 = zext i32 %47 to i64
  %49 = add nuw nsw i64 %48, %44
  %50 = and i64 %49, 8589934560
  %51 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %37, i32 5
  %52 = load i32, i32* %51, align 4, !tbaa !13
  %53 = zext i32 %52 to i64
  %54 = add nuw nsw i64 %53, %44
  %55 = sub nsw i64 %54, %50
  %56 = lshr i64 %55, 5
  %57 = trunc i64 %56 to i32
  %58 = add i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %227, label %60

60:                                               ; preds = %45
  %61 = insertelement <4 x i64> undef, i64 %50, i32 0
  %62 = or i64 %50, 8
  %63 = insertelement <4 x i64> %61, i64 %62, i32 1
  %64 = or i64 %50, 16
  %65 = insertelement <4 x i64> %63, i64 %64, i32 2
  %66 = or i64 %50, 24
  %67 = insertelement <4 x i64> %65, i64 %66, i32 3
  %68 = trunc i64 %50 to i32
  %69 = inttoptr i32 %68 to i8*
  %70 = and i32 %58, 7
  %71 = icmp ult i32 %57, 7
  br i1 %71, label %206, label %72

72:                                               ; preds = %60
  %73 = sub i32 %58, %70
  br label %74

74:                                               ; preds = %74, %72
  %75 = phi <4 x i64> [ %35, %72 ], [ %140, %74 ]
  %76 = phi <4 x i64> [ %67, %72 ], [ %141, %74 ]
  %77 = phi i32 [ 0, %72 ], [ %142, %74 ]
  %78 = phi i32 [ %73, %72 ], [ %143, %74 ]
  %79 = shl i32 %77, 5
  %80 = getelementptr inbounds i8, i8* %69, i32 %79
  %81 = icmp eq <4 x i64> %76, %11
  %82 = bitcast i8* %80 to <4 x i64>*
  %83 = load <4 x i64>, <4 x i64>* %82, align 32, !tbaa !14
  %84 = select <4 x i1> %81, <4 x i64> %83, <4 x i64> %75
  %85 = add <4 x i64> %76, <i64 32, i64 32, i64 32, i64 32>
  %86 = shl i32 %77, 5
  %87 = or i32 %86, 32
  %88 = getelementptr inbounds i8, i8* %69, i32 %87
  %89 = icmp eq <4 x i64> %85, %11
  %90 = bitcast i8* %88 to <4 x i64>*
  %91 = load <4 x i64>, <4 x i64>* %90, align 32, !tbaa !14
  %92 = select <4 x i1> %89, <4 x i64> %91, <4 x i64> %84
  %93 = add <4 x i64> %76, <i64 64, i64 64, i64 64, i64 64>
  %94 = shl i32 %77, 5
  %95 = or i32 %94, 64
  %96 = getelementptr inbounds i8, i8* %69, i32 %95
  %97 = icmp eq <4 x i64> %93, %11
  %98 = bitcast i8* %96 to <4 x i64>*
  %99 = load <4 x i64>, <4 x i64>* %98, align 32, !tbaa !14
  %100 = select <4 x i1> %97, <4 x i64> %99, <4 x i64> %92
  %101 = add <4 x i64> %76, <i64 96, i64 96, i64 96, i64 96>
  %102 = shl i32 %77, 5
  %103 = or i32 %102, 96
  %104 = getelementptr inbounds i8, i8* %69, i32 %103
  %105 = icmp eq <4 x i64> %101, %11
  %106 = bitcast i8* %104 to <4 x i64>*
  %107 = load <4 x i64>, <4 x i64>* %106, align 32, !tbaa !14
  %108 = select <4 x i1> %105, <4 x i64> %107, <4 x i64> %100
  %109 = add <4 x i64> %76, <i64 128, i64 128, i64 128, i64 128>
  %110 = shl i32 %77, 5
  %111 = or i32 %110, 128
  %112 = getelementptr inbounds i8, i8* %69, i32 %111
  %113 = icmp eq <4 x i64> %109, %11
  %114 = bitcast i8* %112 to <4 x i64>*
  %115 = load <4 x i64>, <4 x i64>* %114, align 32, !tbaa !14
  %116 = select <4 x i1> %113, <4 x i64> %115, <4 x i64> %108
  %117 = add <4 x i64> %76, <i64 160, i64 160, i64 160, i64 160>
  %118 = shl i32 %77, 5
  %119 = or i32 %118, 160
  %120 = getelementptr inbounds i8, i8* %69, i32 %119
  %121 = icmp eq <4 x i64> %117, %11
  %122 = bitcast i8* %120 to <4 x i64>*
  %123 = load <4 x i64>, <4 x i64>* %122, align 32, !tbaa !14
  %124 = select <4 x i1> %121, <4 x i64> %123, <4 x i64> %116
  %125 = add <4 x i64> %76, <i64 192, i64 192, i64 192, i64 192>
  %126 = shl i32 %77, 5
  %127 = or i32 %126, 192
  %128 = getelementptr inbounds i8, i8* %69, i32 %127
  %129 = icmp eq <4 x i64> %125, %11
  %130 = bitcast i8* %128 to <4 x i64>*
  %131 = load <4 x i64>, <4 x i64>* %130, align 32, !tbaa !14
  %132 = select <4 x i1> %129, <4 x i64> %131, <4 x i64> %124
  %133 = add <4 x i64> %76, <i64 224, i64 224, i64 224, i64 224>
  %134 = shl i32 %77, 5
  %135 = or i32 %134, 224
  %136 = getelementptr inbounds i8, i8* %69, i32 %135
  %137 = icmp eq <4 x i64> %133, %11
  %138 = bitcast i8* %136 to <4 x i64>*
  %139 = load <4 x i64>, <4 x i64>* %138, align 32, !tbaa !14
  %140 = select <4 x i1> %137, <4 x i64> %139, <4 x i64> %132
  %141 = add <4 x i64> %76, <i64 256, i64 256, i64 256, i64 256>
  %142 = add nuw i32 %77, 8
  %143 = add i32 %78, -8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %206, label %74

145:                                              ; preds = %34
  %146 = sub nsw i64 %12, %44
  %147 = insertelement <4 x i64> undef, i64 %146, i32 0
  %148 = shufflevector <4 x i64> %147, <4 x i64> undef, <4 x i32> zeroinitializer
  br i1 %14, label %180, label %149

149:                                              ; preds = %145, %250
  %150 = phi <4 x i64> [ %251, %250 ], [ %35, %145 ]
  %151 = phi i32 [ %252, %250 ], [ 0, %145 ]
  %152 = phi i32 [ %253, %250 ], [ %15, %145 ]
  %153 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %151, i32 2
  %154 = load i32, i32* %153, align 4, !tbaa !15
  %155 = icmp ugt i32 %154, 3
  br i1 %155, label %156, label %162

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %151, i32 1
  %158 = load i64*, i64** %157, align 4, !tbaa !16
  %159 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %151, i32 0
  %160 = load i8*, i8** %159, align 4, !tbaa !11
  %161 = lshr i32 %154, 2
  br label %168

162:                                              ; preds = %168, %149
  %163 = phi <4 x i64> [ %150, %149 ], [ %177, %168 ]
  %164 = or i32 %151, 1
  %165 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %164, i32 2
  %166 = load i32, i32* %165, align 4, !tbaa !15
  %167 = icmp ugt i32 %166, 3
  br i1 %167, label %232, label %250

168:                                              ; preds = %156, %168
  %169 = phi <4 x i64> [ %150, %156 ], [ %177, %168 ]
  %170 = phi i32 [ 0, %156 ], [ %178, %168 ]
  %171 = shl i32 %170, 2
  %172 = getelementptr inbounds i64, i64* %158, i32 %171
  %173 = bitcast i64* %172 to <4 x i64>*
  %174 = load <4 x i64>, <4 x i64>* %173, align 1, !tbaa !14
  %175 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %160, <4 x i64> %174, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %176 = icmp eq <4 x i64> %174, %148
  %177 = select <4 x i1> %176, <4 x i64> %175, <4 x i64> %169
  %178 = add nuw nsw i32 %170, 1
  %179 = icmp ult i32 %178, %161
  br i1 %179, label %168, label %162

180:                                              ; preds = %250, %145
  %181 = phi <4 x i64> [ undef, %145 ], [ %251, %250 ]
  %182 = phi <4 x i64> [ %35, %145 ], [ %251, %250 ]
  %183 = phi i32 [ 0, %145 ], [ %252, %250 ]
  br i1 %16, label %227, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %183, i32 2
  %186 = load i32, i32* %185, align 4, !tbaa !15
  %187 = icmp ugt i32 %186, 3
  br i1 %187, label %188, label %227

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %183, i32 1
  %190 = load i64*, i64** %189, align 4, !tbaa !16
  %191 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %183, i32 0
  %192 = load i8*, i8** %191, align 4, !tbaa !11
  %193 = lshr i32 %186, 2
  br label %194

194:                                              ; preds = %194, %188
  %195 = phi <4 x i64> [ %182, %188 ], [ %203, %194 ]
  %196 = phi i32 [ 0, %188 ], [ %204, %194 ]
  %197 = shl i32 %196, 2
  %198 = getelementptr inbounds i64, i64* %190, i32 %197
  %199 = bitcast i64* %198 to <4 x i64>*
  %200 = load <4 x i64>, <4 x i64>* %199, align 1, !tbaa !14
  %201 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %192, <4 x i64> %200, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %202 = icmp eq <4 x i64> %200, %148
  %203 = select <4 x i1> %202, <4 x i64> %201, <4 x i64> %195
  %204 = add nuw nsw i32 %196, 1
  %205 = icmp ult i32 %204, %193
  br i1 %205, label %194, label %227

206:                                              ; preds = %74, %60
  %207 = phi <4 x i64> [ undef, %60 ], [ %140, %74 ]
  %208 = phi <4 x i64> [ %35, %60 ], [ %140, %74 ]
  %209 = phi <4 x i64> [ %67, %60 ], [ %141, %74 ]
  %210 = phi i32 [ 0, %60 ], [ %142, %74 ]
  %211 = icmp eq i32 %70, 0
  br i1 %211, label %227, label %212

212:                                              ; preds = %206, %212
  %213 = phi <4 x i64> [ %222, %212 ], [ %208, %206 ]
  %214 = phi <4 x i64> [ %223, %212 ], [ %209, %206 ]
  %215 = phi i32 [ %224, %212 ], [ %210, %206 ]
  %216 = phi i32 [ %225, %212 ], [ %70, %206 ]
  %217 = shl i32 %215, 5
  %218 = getelementptr inbounds i8, i8* %69, i32 %217
  %219 = icmp eq <4 x i64> %214, %11
  %220 = bitcast i8* %218 to <4 x i64>*
  %221 = load <4 x i64>, <4 x i64>* %220, align 32, !tbaa !14
  %222 = select <4 x i1> %219, <4 x i64> %221, <4 x i64> %213
  %223 = add <4 x i64> %214, <i64 32, i64 32, i64 32, i64 32>
  %224 = add nuw i32 %215, 1
  %225 = add i32 %216, -1
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %212, !llvm.loop !17

227:                                              ; preds = %206, %212, %180, %184, %194, %45
  %228 = phi i8 [ %36, %45 ], [ 0, %194 ], [ 0, %184 ], [ 0, %180 ], [ %36, %212 ], [ %36, %206 ]
  %229 = phi <4 x i64> [ %35, %45 ], [ %181, %180 ], [ %182, %184 ], [ %203, %194 ], [ %207, %206 ], [ %222, %212 ]
  %230 = add nuw i32 %37, 1
  %231 = icmp eq i32 %230, %2
  br i1 %231, label %17, label %34

232:                                              ; preds = %162
  %233 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %164, i32 1
  %234 = load i64*, i64** %233, align 4, !tbaa !16
  %235 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 %164, i32 0
  %236 = load i8*, i8** %235, align 4, !tbaa !11
  %237 = lshr i32 %166, 2
  br label %238

238:                                              ; preds = %238, %232
  %239 = phi <4 x i64> [ %163, %232 ], [ %247, %238 ]
  %240 = phi i32 [ 0, %232 ], [ %248, %238 ]
  %241 = shl i32 %240, 2
  %242 = getelementptr inbounds i64, i64* %234, i32 %241
  %243 = bitcast i64* %242 to <4 x i64>*
  %244 = load <4 x i64>, <4 x i64>* %243, align 1, !tbaa !14
  %245 = tail call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, i8* %236, <4 x i64> %244, <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>, i8 1)
  %246 = icmp eq <4 x i64> %244, %148
  %247 = select <4 x i1> %246, <4 x i64> %245, <4 x i64> %239
  %248 = add nuw nsw i32 %240, 1
  %249 = icmp ult i32 %248, %237
  br i1 %249, label %238, label %250

250:                                              ; preds = %238, %162
  %251 = phi <4 x i64> [ %163, %162 ], [ %247, %238 ]
  %252 = add nuw i32 %151, 2
  %253 = add i32 %152, -2
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %180, label %149
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
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i64, i64* %5, align 4, !tbaa !19
  %9 = trunc i64 %8 to i32
  br label %13

10:                                               ; preds = %4
  %11 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef) #13
  %12 = trunc i64 %11 to i32
  br label %13

13:                                               ; preds = %7, %10
  %14 = phi i32 [ %9, %7 ], [ %12, %10 ]
  ret i32 %14
}

; Function Attrs: nounwind
define dso_local zeroext i16 @uint16_t_secure_load(i16* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #7 {
  %5 = bitcast i16* %0 to i64*
  %6 = icmp eq i32 %3, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i64, i64* %5, align 4, !tbaa !19
  %9 = trunc i64 %8 to i16
  br label %13

10:                                               ; preds = %4
  %11 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef) #13
  %12 = trunc i64 %11 to i16
  br label %13

13:                                               ; preds = %7, %10
  %14 = phi i16 [ %9, %7 ], [ %12, %10 ]
  ret i16 %14
}

; Function Attrs: nounwind
define dso_local zeroext i8 @uint8_t_secure_load(i8* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #7 {
  %5 = bitcast i8* %0 to i64*
  %6 = icmp eq i32 %3, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i64, i64* %5, align 4, !tbaa !19
  %9 = trunc i64 %8 to i8
  br label %13

10:                                               ; preds = %4
  %11 = tail call i64 @uint64_t_secure_load_impl(i64* %5, %struct.ds_base* %1, i32 %2, i32 undef) #13
  %12 = trunc i64 %11 to i8
  br label %13

13:                                               ; preds = %7, %10
  %14 = phi i8 [ %9, %7 ], [ %12, %10 ]
  ret i8 %14
}

; Function Attrs: nounwind
define dso_local i32 @uint32_t_secure_load_sensitive(i32* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #7 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 0, i32 0
  %8 = load i8*, i8** %7, align 4, !tbaa !11
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 0, i32 4
  %10 = load i32, i32* %9, align 4, !tbaa !12
  %11 = getelementptr inbounds i8, i8* %8, i32 %10
  %12 = bitcast i8* %11 to i64*
  %13 = load volatile i64, i64* %12, align 4, !tbaa !19
  %14 = trunc i64 %13 to i32
  br label %19

15:                                               ; preds = %4
  %16 = bitcast i32* %0 to i64*
  %17 = tail call i64 @uint64_t_secure_load_impl(i64* %16, %struct.ds_base* %1, i32 %2, i32 undef) #13
  %18 = trunc i64 %17 to i32
  br label %19

19:                                               ; preds = %6, %15
  %20 = phi i32 [ %14, %6 ], [ %18, %15 ]
  ret i32 %20
}

; Function Attrs: nounwind
define dso_local zeroext i16 @uint16_t_secure_load_sensitive(i16* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #7 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 0, i32 0
  %8 = load i8*, i8** %7, align 4, !tbaa !11
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 0, i32 4
  %10 = load i32, i32* %9, align 4, !tbaa !12
  %11 = getelementptr inbounds i8, i8* %8, i32 %10
  %12 = bitcast i8* %11 to i64*
  %13 = load volatile i64, i64* %12, align 4, !tbaa !19
  %14 = trunc i64 %13 to i16
  br label %19

15:                                               ; preds = %4
  %16 = bitcast i16* %0 to i64*
  %17 = tail call i64 @uint64_t_secure_load_impl(i64* %16, %struct.ds_base* %1, i32 %2, i32 undef) #13
  %18 = trunc i64 %17 to i16
  br label %19

19:                                               ; preds = %6, %15
  %20 = phi i16 [ %14, %6 ], [ %18, %15 ]
  ret i16 %20
}

; Function Attrs: nounwind
define dso_local zeroext i8 @uint8_t_secure_load_sensitive(i8* %0, %struct.ds_base* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #7 {
  %5 = icmp eq i32 %3, 1
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 0, i32 0
  %8 = load i8*, i8** %7, align 4, !tbaa !11
  %9 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %1, i32 0, i32 4
  %10 = load i32, i32* %9, align 4, !tbaa !12
  %11 = getelementptr inbounds i8, i8* %8, i32 %10
  %12 = bitcast i8* %11 to i64*
  %13 = load volatile i64, i64* %12, align 4, !tbaa !19
  %14 = trunc i64 %13 to i8
  br label %19

15:                                               ; preds = %4
  %16 = bitcast i8* %0 to i64*
  %17 = tail call i64 @uint64_t_secure_load_impl(i64* %16, %struct.ds_base* %1, i32 %2, i32 undef) #13
  %18 = trunc i64 %17 to i8
  br label %19

19:                                               ; preds = %6, %15
  %20 = phi i8 [ %14, %6 ], [ %18, %15 ]
  ret i8 %20
}

; Function Attrs: nofree noinline nounwind
define dso_local void @uint64_t_secure_store_impl(i64 %0, i64* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #8 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %27, label %7

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
  br label %28

27:                                               ; preds = %100, %5
  ret void

28:                                               ; preds = %100, %7
  %29 = phi i32 [ 0, %7 ], [ %101, %100 ]
  %30 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %29
  %31 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %29, i32 3
  %32 = load i8, i8* %31, align 4, !tbaa !3, !range !10
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %29, i32 2
  %36 = load i32, i32* %35, align 4, !tbaa !15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %100, label %38

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
  br i1 %59, label %100, label %60

60:                                               ; preds = %43
  %61 = insertelement <4 x i64> undef, i64 %52, i32 0
  %62 = or i64 %52, 8
  %63 = insertelement <4 x i64> %61, i64 %62, i32 1
  %64 = or i64 %52, 16
  %65 = insertelement <4 x i64> %63, i64 %64, i32 2
  %66 = or i64 %52, 24
  %67 = insertelement <4 x i64> %65, i64 %66, i32 3
  br label %68

68:                                               ; preds = %60, %68
  %69 = phi i8* [ %78, %68 ], [ %55, %60 ]
  %70 = phi <4 x i64> [ %77, %68 ], [ %67, %60 ]
  %71 = icmp eq <4 x i64> %70, %17
  %72 = select <4 x i1> %71, <4 x i64> %23, <4 x i64> zeroinitializer
  %73 = bitcast i8* %69 to <32 x i8>*
  %74 = load <32 x i8>, <32 x i8>* %73, align 1, !tbaa !14
  %75 = bitcast <4 x i64> %72 to <32 x i8>
  %76 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %74, <32 x i8> %24, <32 x i8> %75) #13
  store <32 x i8> %76, <32 x i8>* %73, align 1, !tbaa !14
  %77 = add <4 x i64> %70, <i64 32, i64 32, i64 32, i64 32>
  %78 = getelementptr inbounds i8, i8* %69, i32 32
  %79 = load i8*, i8** %44, align 4, !tbaa !11
  %80 = load i32, i32* %53, align 4, !tbaa !13
  %81 = getelementptr inbounds i8, i8* %79, i32 %80
  %82 = icmp ugt i8* %78, %81
  br i1 %82, label %100, label %68

83:                                               ; preds = %38, %96
  %84 = phi i32 [ %36, %38 ], [ %97, %96 ]
  %85 = phi i32 [ 0, %38 ], [ %98, %96 ]
  %86 = getelementptr inbounds i64, i64* %42, i32 %85
  %87 = load i64, i64* %86, align 4, !tbaa !19
  %88 = trunc i64 %87 to i32
  %89 = getelementptr inbounds i8, i8* %40, i32 %88
  %90 = icmp eq i8* %89, %25
  %91 = bitcast i8* %89 to i32*
  br i1 %90, label %92, label %94

92:                                               ; preds = %83
  store volatile i32 %26, i32* %91, align 4, !tbaa !21
  %93 = load i32, i32* %35, align 4, !tbaa !15
  br label %96

94:                                               ; preds = %83
  %95 = load volatile i32, i32* %91, align 4, !tbaa !21
  br label %96

96:                                               ; preds = %92, %94
  %97 = phi i32 [ %93, %92 ], [ %84, %94 ]
  %98 = add nuw i32 %85, 1
  %99 = icmp ult i32 %98, %97
  br i1 %99, label %83, label %100

100:                                              ; preds = %68, %96, %34, %43
  %101 = add nuw i32 %29, 1
  %102 = icmp eq i32 %101, %3
  br i1 %102, label %27, label %28
}

; Function Attrs: nofree noinline nounwind
define dso_local void @uint32_t_secure_store_impl(i32 %0, i32* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #8 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %27, label %7

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
  br label %28

27:                                               ; preds = %100, %5
  ret void

28:                                               ; preds = %100, %7
  %29 = phi i32 [ 0, %7 ], [ %101, %100 ]
  %30 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %29
  %31 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %29, i32 3
  %32 = load i8, i8* %31, align 4, !tbaa !3, !range !10
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %29, i32 2
  %36 = load i32, i32* %35, align 4, !tbaa !15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %100, label %38

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
  br i1 %59, label %100, label %60

60:                                               ; preds = %43
  %61 = insertelement <4 x i64> undef, i64 %52, i32 0
  %62 = or i64 %52, 8
  %63 = insertelement <4 x i64> %61, i64 %62, i32 1
  %64 = or i64 %52, 16
  %65 = insertelement <4 x i64> %63, i64 %64, i32 2
  %66 = or i64 %52, 24
  %67 = insertelement <4 x i64> %65, i64 %66, i32 3
  br label %68

68:                                               ; preds = %60, %68
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
  br i1 %82, label %100, label %68

83:                                               ; preds = %38, %96
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
  store volatile i32 %0, i32* %91, align 4, !tbaa !21
  %93 = load i32, i32* %35, align 4, !tbaa !15
  br label %96

94:                                               ; preds = %83
  %95 = load volatile i32, i32* %91, align 4, !tbaa !21
  br label %96

96:                                               ; preds = %92, %94
  %97 = phi i32 [ %93, %92 ], [ %84, %94 ]
  %98 = add nuw i32 %85, 1
  %99 = icmp ult i32 %98, %97
  br i1 %99, label %83, label %100

100:                                              ; preds = %68, %96, %34, %43
  %101 = add nuw i32 %29, 1
  %102 = icmp eq i32 %101, %3
  br i1 %102, label %27, label %28
}

; Function Attrs: nofree noinline nounwind
define dso_local void @uint16_t_secure_store_impl(i16 zeroext %0, i16* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #8 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %28, label %7

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
  br label %29

28:                                               ; preds = %101, %5
  ret void

29:                                               ; preds = %101, %7
  %30 = phi i32 [ 0, %7 ], [ %102, %101 ]
  %31 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %30
  %32 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %30, i32 3
  %33 = load i8, i8* %32, align 4, !tbaa !3, !range !10
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %30, i32 2
  %37 = load i32, i32* %36, align 4, !tbaa !15
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %101, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %31, i32 0, i32 0
  %41 = load i8*, i8** %40, align 4, !tbaa !11
  %42 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %30, i32 1
  %43 = load i64*, i64** %42, align 4, !tbaa !16
  br label %84

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %31, i32 0, i32 0
  %46 = bitcast %struct.ds_base* %31 to i32*
  %47 = load i32, i32* %46, align 4, !tbaa !11
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %30, i32 4
  %50 = load i32, i32* %49, align 4, !tbaa !12
  %51 = zext i32 %50 to i64
  %52 = add nuw nsw i64 %51, %48
  %53 = and i64 %52, 8589934560
  %54 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %30, i32 5
  %55 = trunc i64 %53 to i32
  %56 = inttoptr i32 %55 to i8*
  %57 = inttoptr i32 %47 to i8*
  %58 = load i32, i32* %54, align 4, !tbaa !13
  %59 = getelementptr inbounds i8, i8* %57, i32 %58
  %60 = icmp ult i8* %59, %56
  br i1 %60, label %101, label %61

61:                                               ; preds = %44
  %62 = insertelement <4 x i64> undef, i64 %53, i32 0
  %63 = or i64 %53, 8
  %64 = insertelement <4 x i64> %62, i64 %63, i32 1
  %65 = or i64 %53, 16
  %66 = insertelement <4 x i64> %64, i64 %65, i32 2
  %67 = or i64 %53, 24
  %68 = insertelement <4 x i64> %66, i64 %67, i32 3
  br label %69

69:                                               ; preds = %61, %69
  %70 = phi i8* [ %79, %69 ], [ %56, %61 ]
  %71 = phi <4 x i64> [ %78, %69 ], [ %68, %61 ]
  %72 = icmp eq <4 x i64> %71, %18
  %73 = select <4 x i1> %72, <4 x i64> %24, <4 x i64> zeroinitializer
  %74 = bitcast i8* %70 to <32 x i8>*
  %75 = load <32 x i8>, <32 x i8>* %74, align 1, !tbaa !14
  %76 = bitcast <4 x i64> %73 to <32 x i8>
  %77 = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %75, <32 x i8> %25, <32 x i8> %76) #13
  store <32 x i8> %77, <32 x i8>* %74, align 1, !tbaa !14
  %78 = add <4 x i64> %71, <i64 32, i64 32, i64 32, i64 32>
  %79 = getelementptr inbounds i8, i8* %70, i32 32
  %80 = load i8*, i8** %45, align 4, !tbaa !11
  %81 = load i32, i32* %54, align 4, !tbaa !13
  %82 = getelementptr inbounds i8, i8* %80, i32 %81
  %83 = icmp ugt i8* %79, %82
  br i1 %83, label %101, label %69

84:                                               ; preds = %39, %97
  %85 = phi i32 [ %37, %39 ], [ %98, %97 ]
  %86 = phi i32 [ 0, %39 ], [ %99, %97 ]
  %87 = getelementptr inbounds i64, i64* %43, i32 %86
  %88 = load i64, i64* %87, align 4, !tbaa !19
  %89 = trunc i64 %88 to i32
  %90 = getelementptr inbounds i8, i8* %41, i32 %89
  %91 = icmp eq i8* %90, %26
  %92 = bitcast i8* %90 to i32*
  br i1 %91, label %93, label %95

93:                                               ; preds = %84
  store volatile i32 %27, i32* %92, align 4, !tbaa !21
  %94 = load i32, i32* %36, align 4, !tbaa !15
  br label %97

95:                                               ; preds = %84
  %96 = load volatile i32, i32* %92, align 4, !tbaa !21
  br label %97

97:                                               ; preds = %93, %95
  %98 = phi i32 [ %94, %93 ], [ %85, %95 ]
  %99 = add nuw i32 %86, 1
  %100 = icmp ult i32 %99, %98
  br i1 %100, label %84, label %101

101:                                              ; preds = %69, %97, %35, %44
  %102 = add nuw i32 %30, 1
  %103 = icmp eq i32 %102, %3
  br i1 %103, label %28, label %29
}

; Function Attrs: nofree noinline nounwind
define dso_local void @uint8_t_secure_store_impl(i8 zeroext %0, i8* %1, %struct.ds_base* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #8 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %27, label %7

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
  br label %28

27:                                               ; preds = %100, %5
  ret void

28:                                               ; preds = %100, %7
  %29 = phi i32 [ 0, %7 ], [ %101, %100 ]
  %30 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %29
  %31 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %29, i32 3
  %32 = load i8, i8* %31, align 4, !tbaa !3, !range !10
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.ds_base, %struct.ds_base* %2, i32 %29, i32 2
  %36 = load i32, i32* %35, align 4, !tbaa !15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %100, label %38

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
  br i1 %59, label %100, label %60

60:                                               ; preds = %43
  %61 = insertelement <4 x i64> undef, i64 %52, i32 0
  %62 = or i64 %52, 8
  %63 = insertelement <4 x i64> %61, i64 %62, i32 1
  %64 = or i64 %52, 16
  %65 = insertelement <4 x i64> %63, i64 %64, i32 2
  %66 = or i64 %52, 24
  %67 = insertelement <4 x i64> %65, i64 %66, i32 3
  br label %68

68:                                               ; preds = %60, %68
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
  br i1 %82, label %100, label %68

83:                                               ; preds = %38, %96
  %84 = phi i32 [ %36, %38 ], [ %97, %96 ]
  %85 = phi i32 [ 0, %38 ], [ %98, %96 ]
  %86 = getelementptr inbounds i64, i64* %42, i32 %85
  %87 = load i64, i64* %86, align 4, !tbaa !19
  %88 = trunc i64 %87 to i32
  %89 = getelementptr inbounds i8, i8* %40, i32 %88
  %90 = icmp eq i8* %89, %1
  %91 = bitcast i8* %89 to i32*
  br i1 %90, label %92, label %94

92:                                               ; preds = %83
  store volatile i32 %26, i32* %91, align 4, !tbaa !21
  %93 = load i32, i32* %35, align 4, !tbaa !15
  br label %96

94:                                               ; preds = %83
  %95 = load volatile i32, i32* %91, align 4, !tbaa !21
  br label %96

96:                                               ; preds = %92, %94
  %97 = phi i32 [ %93, %92 ], [ %84, %94 ]
  %98 = add nuw i32 %85, 1
  %99 = icmp ult i32 %98, %97
  br i1 %99, label %83, label %100

100:                                              ; preds = %68, %96, %34, %43
  %101 = add nuw i32 %29, 1
  %102 = icmp eq i32 %101, %3
  br i1 %102, label %27, label %28
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

11:                                               ; preds = %7, %9, %10
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

11:                                               ; preds = %7, %9, %10
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

11:                                               ; preds = %7, %9, %10
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

11:                                               ; preds = %7, %9, %10
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

22:                                               ; preds = %19, %20, %15, %16
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

22:                                               ; preds = %19, %20, %15, %16
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

22:                                               ; preds = %19, %20, %15, %16
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

21:                                               ; preds = %18, %19, %14, %15
  ret void
}

; Function Attrs: norecurse nounwind readnone
define dso_local void @branch_id(i8* nocapture %0) local_unnamed_addr #10 {
  ret void
}

; Function Attrs: nounwind
define dso_local i32 @main() #7 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 4
  %3 = alloca [4 x i32], align 8
  %4 = alloca [1 x %struct.ds_base], align 4
  %5 = alloca [1 x %struct.ds_base], align 4
  %6 = alloca [1 x %struct.ds_base], align 4
  %7 = alloca [1 x %struct.ds_base], align 4
  %8 = alloca [1 x %struct.ds_base], align 4
  %9 = alloca [1 x %struct.ds_base], align 4
  %10 = alloca [1 x %struct.ds_base], align 4
  %11 = alloca [1 x %struct.ds_base], align 4
  %12 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #13
  %13 = bitcast [4 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #13
  %14 = bitcast [4 x i32]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #13
  call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(16) %14, i8 0, i32 16, i1 false)
  %15 = bitcast [4 x i32]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %16 = call i32 @read(i32 0, i8* nonnull %14, i32 16) #13
  %17 = call i32 @read(i32 0, i8* nonnull %12, i32 4) #13
  %18 = bitcast [4 x i32]* %3 to i64*
  %19 = load i64, i64* %18, align 8, !tbaa !19
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* %1, align 4, !tbaa !21
  %22 = icmp sgt i32 %21, %20
  br i1 %22, label %23, label %35

23:                                               ; preds = %0
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i32 0, i32 0
  %25 = load volatile i32, i32* bitcast (i8* blockaddress(@main, %35) to i32*), align 4, !tbaa !21
  %26 = load volatile i64, i64* %18, align 8, !tbaa !19
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %4, i32 0, i32 0
  %29 = bitcast [1 x %struct.ds_base]* %4 to [4 x i32]**
  store [4 x i32]* %2, [4 x i32]** %29, align 4, !tbaa !11
  %30 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %4, i32 0, i32 0, i32 1
  store i64* null, i64** %30, align 4, !tbaa !16
  %31 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %4, i32 0, i32 0, i32 2
  store i32 2, i32* %31, align 4, !tbaa !15
  %32 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %4, i32 0, i32 0, i32 3
  store i8 1, i8* %32, align 4, !tbaa !3
  %33 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %4, i32 0, i32 0, i32 4
  store i32 0, i32* %33, align 4, !tbaa !12
  %34 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %4, i32 0, i32 0, i32 5
  store i32 12, i32* %34, align 4, !tbaa !13
  call void @uint32_t_secure_store_impl(i32 %27, i32* nonnull %24, %struct.ds_base* nonnull %28, i32 1, i32 undef) #13
  br label %47

35:                                               ; preds = %0
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i32 0, i32 3
  %37 = load volatile i32, i32* bitcast (i8* blockaddress(@main, %23) to i32*), align 4, !tbaa !21
  %38 = load volatile i64, i64* %18, align 8, !tbaa !19
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %5, i32 0, i32 0
  %41 = bitcast [1 x %struct.ds_base]* %5 to [4 x i32]**
  store [4 x i32]* %2, [4 x i32]** %41, align 4, !tbaa !11
  %42 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %5, i32 0, i32 0, i32 1
  store i64* null, i64** %42, align 4, !tbaa !16
  %43 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %5, i32 0, i32 0, i32 2
  store i32 2, i32* %43, align 4, !tbaa !15
  %44 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %5, i32 0, i32 0, i32 3
  store i8 1, i8* %44, align 4, !tbaa !3
  %45 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %5, i32 0, i32 0, i32 4
  store i32 0, i32* %45, align 4, !tbaa !12
  %46 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %5, i32 0, i32 0, i32 5
  store i32 12, i32* %46, align 4, !tbaa !13
  call void @uint32_t_secure_store_impl(i32 %39, i32* nonnull %36, %struct.ds_base* nonnull %40, i32 1, i32 undef) #13
  br label %47

47:                                               ; preds = %35, %23
  %48 = phi i32 [ 0, %35 ], [ 1, %23 ]
  %49 = phi i32 [ 2, %35 ], [ 3, %23 ]
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i32 0, i32 1
  %51 = bitcast i32* %50 to i64*
  %52 = load i64, i64* %51, align 4, !tbaa !19
  %53 = trunc i64 %52 to i32
  %54 = icmp sgt i32 %21, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %47
  %56 = load volatile i32, i32* bitcast (i8* blockaddress(@main, %68) to i32*), align 4, !tbaa !21
  %57 = add nuw nsw i32 %48, 1
  %58 = load volatile i64, i64* %51, align 4, !tbaa !19
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i32 0, i32 %48
  %61 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %6, i32 0, i32 0
  %62 = bitcast [1 x %struct.ds_base]* %6 to [4 x i32]**
  store [4 x i32]* %2, [4 x i32]** %62, align 4, !tbaa !11
  %63 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %6, i32 0, i32 0, i32 1
  store i64* null, i64** %63, align 4, !tbaa !16
  %64 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %6, i32 0, i32 0, i32 2
  store i32 4, i32* %64, align 4, !tbaa !15
  %65 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %6, i32 0, i32 0, i32 3
  store i8 1, i8* %65, align 4, !tbaa !3
  %66 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %6, i32 0, i32 0, i32 4
  store i32 0, i32* %66, align 4, !tbaa !12
  %67 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %6, i32 0, i32 0, i32 5
  store i32 12, i32* %67, align 4, !tbaa !13
  call void @uint32_t_secure_store_impl(i32 %59, i32* nonnull %60, %struct.ds_base* nonnull %61, i32 1, i32 undef) #13
  br label %81

68:                                               ; preds = %47
  %69 = load volatile i32, i32* bitcast (i8* blockaddress(@main, %55) to i32*), align 4, !tbaa !21
  %70 = add nsw i32 %49, -1
  %71 = load volatile i64, i64* %51, align 4, !tbaa !19
  %72 = trunc i64 %71 to i32
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i32 0, i32 %49
  %74 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %7, i32 0, i32 0
  %75 = bitcast [1 x %struct.ds_base]* %7 to [4 x i32]**
  store [4 x i32]* %2, [4 x i32]** %75, align 4, !tbaa !11
  %76 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %7, i32 0, i32 0, i32 1
  store i64* null, i64** %76, align 4, !tbaa !16
  %77 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %7, i32 0, i32 0, i32 2
  store i32 4, i32* %77, align 4, !tbaa !15
  %78 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %7, i32 0, i32 0, i32 3
  store i8 1, i8* %78, align 4, !tbaa !3
  %79 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %7, i32 0, i32 0, i32 4
  store i32 0, i32* %79, align 4, !tbaa !12
  %80 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %7, i32 0, i32 0, i32 5
  store i32 12, i32* %80, align 4, !tbaa !13
  call void @uint32_t_secure_store_impl(i32 %72, i32* nonnull %73, %struct.ds_base* nonnull %74, i32 1, i32 undef) #13
  br label %81

81:                                               ; preds = %68, %55
  %82 = phi i32 [ %48, %68 ], [ %57, %55 ]
  %83 = phi i32 [ %70, %68 ], [ %49, %55 ]
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i32 0, i32 2
  %85 = bitcast i32* %84 to i64*
  %86 = load i64, i64* %85, align 8, !tbaa !19
  %87 = trunc i64 %86 to i32
  %88 = icmp sgt i32 %21, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %81
  %90 = load volatile i32, i32* bitcast (i8* blockaddress(@main, %102) to i32*), align 4, !tbaa !21
  %91 = add nuw nsw i32 %82, 1
  %92 = load volatile i64, i64* %85, align 8, !tbaa !19
  %93 = trunc i64 %92 to i32
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i32 0, i32 %82
  %95 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %8, i32 0, i32 0
  %96 = bitcast [1 x %struct.ds_base]* %8 to [4 x i32]**
  store [4 x i32]* %2, [4 x i32]** %96, align 4, !tbaa !11
  %97 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %8, i32 0, i32 0, i32 1
  store i64* null, i64** %97, align 4, !tbaa !16
  %98 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %8, i32 0, i32 0, i32 2
  store i32 4, i32* %98, align 4, !tbaa !15
  %99 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %8, i32 0, i32 0, i32 3
  store i8 1, i8* %99, align 4, !tbaa !3
  %100 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %8, i32 0, i32 0, i32 4
  store i32 0, i32* %100, align 4, !tbaa !12
  %101 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %8, i32 0, i32 0, i32 5
  store i32 12, i32* %101, align 4, !tbaa !13
  call void @uint32_t_secure_store_impl(i32 %93, i32* nonnull %94, %struct.ds_base* nonnull %95, i32 1, i32 undef) #13
  br label %115

102:                                              ; preds = %81
  %103 = load volatile i32, i32* bitcast (i8* blockaddress(@main, %89) to i32*), align 4, !tbaa !21
  %104 = add nsw i32 %83, -1
  %105 = load volatile i64, i64* %85, align 8, !tbaa !19
  %106 = trunc i64 %105 to i32
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i32 0, i32 %83
  %108 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %9, i32 0, i32 0
  %109 = bitcast [1 x %struct.ds_base]* %9 to [4 x i32]**
  store [4 x i32]* %2, [4 x i32]** %109, align 4, !tbaa !11
  %110 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %9, i32 0, i32 0, i32 1
  store i64* null, i64** %110, align 4, !tbaa !16
  %111 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %9, i32 0, i32 0, i32 2
  store i32 4, i32* %111, align 4, !tbaa !15
  %112 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %9, i32 0, i32 0, i32 3
  store i8 1, i8* %112, align 4, !tbaa !3
  %113 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %9, i32 0, i32 0, i32 4
  store i32 0, i32* %113, align 4, !tbaa !12
  %114 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %9, i32 0, i32 0, i32 5
  store i32 12, i32* %114, align 4, !tbaa !13
  call void @uint32_t_secure_store_impl(i32 %106, i32* nonnull %107, %struct.ds_base* nonnull %108, i32 1, i32 undef) #13
  br label %115

115:                                              ; preds = %102, %89
  %116 = phi i32 [ %82, %102 ], [ %91, %89 ]
  %117 = phi i32 [ %104, %102 ], [ %83, %89 ]
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i32 0, i32 3
  %119 = bitcast i32* %118 to i64*
  %120 = load i64, i64* %119, align 4, !tbaa !19
  %121 = trunc i64 %120 to i32
  %122 = icmp sgt i32 %21, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %115
  %124 = load volatile i32, i32* bitcast (i8* blockaddress(@main, %135) to i32*), align 4, !tbaa !21
  %125 = load volatile i64, i64* %119, align 4, !tbaa !19
  %126 = trunc i64 %125 to i32
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i32 0, i32 %116
  %128 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %10, i32 0, i32 0
  %129 = bitcast [1 x %struct.ds_base]* %10 to [4 x i32]**
  store [4 x i32]* %2, [4 x i32]** %129, align 4, !tbaa !11
  %130 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %10, i32 0, i32 0, i32 1
  store i64* null, i64** %130, align 4, !tbaa !16
  %131 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %10, i32 0, i32 0, i32 2
  store i32 4, i32* %131, align 4, !tbaa !15
  %132 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %10, i32 0, i32 0, i32 3
  store i8 1, i8* %132, align 4, !tbaa !3
  %133 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %10, i32 0, i32 0, i32 4
  store i32 0, i32* %133, align 4, !tbaa !12
  %134 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %10, i32 0, i32 0, i32 5
  store i32 12, i32* %134, align 4, !tbaa !13
  call void @uint32_t_secure_store_impl(i32 %126, i32* nonnull %127, %struct.ds_base* nonnull %128, i32 1, i32 undef) #13
  br label %147

135:                                              ; preds = %115
  %136 = load volatile i32, i32* bitcast (i8* blockaddress(@main, %123) to i32*), align 4, !tbaa !21
  %137 = load volatile i64, i64* %119, align 4, !tbaa !19
  %138 = trunc i64 %137 to i32
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i32 0, i32 %117
  %140 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %11, i32 0, i32 0
  %141 = bitcast [1 x %struct.ds_base]* %11 to [4 x i32]**
  store [4 x i32]* %2, [4 x i32]** %141, align 4, !tbaa !11
  %142 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %11, i32 0, i32 0, i32 1
  store i64* null, i64** %142, align 4, !tbaa !16
  %143 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %11, i32 0, i32 0, i32 2
  store i32 4, i32* %143, align 4, !tbaa !15
  %144 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %11, i32 0, i32 0, i32 3
  store i8 1, i8* %144, align 4, !tbaa !3
  %145 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %11, i32 0, i32 0, i32 4
  store i32 0, i32* %145, align 4, !tbaa !12
  %146 = getelementptr inbounds [1 x %struct.ds_base], [1 x %struct.ds_base]* %11, i32 0, i32 0, i32 5
  store i32 12, i32* %146, align 4, !tbaa !13
  call void @uint32_t_secure_store_impl(i32 %138, i32* nonnull %139, %struct.ds_base* nonnull %140, i32 1, i32 undef) #13
  br label %147

147:                                              ; preds = %135, %123
  %148 = call i32 @write(i32 1, i8* nonnull %13, i32 16) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #13
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: nofree
declare dso_local i32 @read(i32, i8* nocapture, i32) local_unnamed_addr #11

; Function Attrs: nofree
declare dso_local i32 @write(i32, i8* nocapture readonly, i32) local_unnamed_addr #11

; Function Attrs: nounwind readnone
declare <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8>, <32 x i8>, <32 x i8>) #12

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

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
