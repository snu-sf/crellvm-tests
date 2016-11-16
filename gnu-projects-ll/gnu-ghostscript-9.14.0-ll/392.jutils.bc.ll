; ModuleID = './jutils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jpeg_natural_order = constant [80 x i32] [i32 0, i32 1, i32 8, i32 16, i32 9, i32 2, i32 3, i32 10, i32 17, i32 24, i32 32, i32 25, i32 18, i32 11, i32 4, i32 5, i32 12, i32 19, i32 26, i32 33, i32 40, i32 48, i32 41, i32 34, i32 27, i32 20, i32 13, i32 6, i32 7, i32 14, i32 21, i32 28, i32 35, i32 42, i32 49, i32 56, i32 57, i32 50, i32 43, i32 36, i32 29, i32 22, i32 15, i32 23, i32 30, i32 37, i32 44, i32 51, i32 58, i32 59, i32 52, i32 45, i32 38, i32 31, i32 39, i32 46, i32 53, i32 60, i32 61, i32 54, i32 47, i32 55, i32 62, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63], align 16
@jpeg_natural_order7 = constant [65 x i32] [i32 0, i32 1, i32 8, i32 16, i32 9, i32 2, i32 3, i32 10, i32 17, i32 24, i32 32, i32 25, i32 18, i32 11, i32 4, i32 5, i32 12, i32 19, i32 26, i32 33, i32 40, i32 48, i32 41, i32 34, i32 27, i32 20, i32 13, i32 6, i32 14, i32 21, i32 28, i32 35, i32 42, i32 49, i32 50, i32 43, i32 36, i32 29, i32 22, i32 30, i32 37, i32 44, i32 51, i32 52, i32 45, i32 38, i32 46, i32 53, i32 54, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63], align 16
@jpeg_natural_order6 = constant [52 x i32] [i32 0, i32 1, i32 8, i32 16, i32 9, i32 2, i32 3, i32 10, i32 17, i32 24, i32 32, i32 25, i32 18, i32 11, i32 4, i32 5, i32 12, i32 19, i32 26, i32 33, i32 40, i32 41, i32 34, i32 27, i32 20, i32 13, i32 21, i32 28, i32 35, i32 42, i32 43, i32 36, i32 29, i32 37, i32 44, i32 45, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63], align 16
@jpeg_natural_order5 = constant [41 x i32] [i32 0, i32 1, i32 8, i32 16, i32 9, i32 2, i32 3, i32 10, i32 17, i32 24, i32 32, i32 25, i32 18, i32 11, i32 4, i32 12, i32 19, i32 26, i32 33, i32 34, i32 27, i32 20, i32 28, i32 35, i32 36, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63], align 16
@jpeg_natural_order4 = constant [32 x i32] [i32 0, i32 1, i32 8, i32 16, i32 9, i32 2, i32 3, i32 10, i32 17, i32 24, i32 25, i32 18, i32 11, i32 19, i32 26, i32 27, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63], align 16
@jpeg_natural_order3 = constant [25 x i32] [i32 0, i32 1, i32 8, i32 16, i32 9, i32 2, i32 10, i32 17, i32 18, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63], align 16
@jpeg_natural_order2 = constant [20 x i32] [i32 0, i32 1, i32 8, i32 9, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63], align 16

; Function Attrs: nounwind uwtable
define i64 @jdiv_round_up(i64 %a, i64 %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8, !tbaa !1
  store i64 %b, i64* %b.addr, align 8, !tbaa !1
  %0 = load i64, i64* %a.addr, align 8, !tbaa !1
  %1 = load i64, i64* %b.addr, align 8, !tbaa !1
  %add = add nsw i64 %0, %1
  %sub = sub nsw i64 %add, 1
  %2 = load i64, i64* %b.addr, align 8, !tbaa !1
  %div = sdiv i64 %sub, %2
  ret i64 %div
}

; Function Attrs: nounwind uwtable
define i64 @jround_up(i64 %a, i64 %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8, !tbaa !1
  store i64 %b, i64* %b.addr, align 8, !tbaa !1
  %0 = load i64, i64* %b.addr, align 8, !tbaa !1
  %sub = sub nsw i64 %0, 1
  %1 = load i64, i64* %a.addr, align 8, !tbaa !1
  %add = add nsw i64 %1, %sub
  store i64 %add, i64* %a.addr, align 8, !tbaa !1
  %2 = load i64, i64* %a.addr, align 8, !tbaa !1
  %3 = load i64, i64* %a.addr, align 8, !tbaa !1
  %4 = load i64, i64* %b.addr, align 8, !tbaa !1
  %rem = srem i64 %3, %4
  %sub1 = sub nsw i64 %2, %rem
  ret i64 %sub1
}

; Function Attrs: nounwind uwtable
define void @jcopy_sample_rows(i8** %input_array, i32 %source_row, i8** %output_array, i32 %dest_row, i32 %num_rows, i32 %num_cols) #0 {
entry:
  %input_array.addr = alloca i8**, align 8
  %source_row.addr = alloca i32, align 4
  %output_array.addr = alloca i8**, align 8
  %dest_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %num_cols.addr = alloca i32, align 4
  %inptr = alloca i8*, align 8
  %outptr = alloca i8*, align 8
  %count = alloca i64, align 8
  %row = alloca i32, align 4
  store i8** %input_array, i8*** %input_array.addr, align 8, !tbaa !5
  store i32 %source_row, i32* %source_row.addr, align 4, !tbaa !7
  store i8** %output_array, i8*** %output_array.addr, align 8, !tbaa !5
  store i32 %dest_row, i32* %dest_row.addr, align 4, !tbaa !7
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !7
  store i32 %num_cols, i32* %num_cols.addr, align 4, !tbaa !7
  %0 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %count to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32, i32* %num_cols.addr, align 4, !tbaa !7
  %conv = zext i32 %3 to i64
  %mul = mul i64 %conv, 1
  store i64 %mul, i64* %count, align 8, !tbaa !1
  %4 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %source_row.addr, align 4, !tbaa !7
  %6 = load i8**, i8*** %input_array.addr, align 8, !tbaa !5
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %6, i64 %idx.ext
  store i8** %add.ptr, i8*** %input_array.addr, align 8, !tbaa !5
  %7 = load i32, i32* %dest_row.addr, align 4, !tbaa !7
  %8 = load i8**, i8*** %output_array.addr, align 8, !tbaa !5
  %idx.ext1 = sext i32 %7 to i64
  %add.ptr2 = getelementptr inbounds i8*, i8** %8, i64 %idx.ext1
  store i8** %add.ptr2, i8*** %output_array.addr, align 8, !tbaa !5
  %9 = load i32, i32* %num_rows.addr, align 4, !tbaa !7
  store i32 %9, i32* %row, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %row, align 4, !tbaa !7
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8**, i8*** %input_array.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8*, i8** %11, i32 1
  store i8** %incdec.ptr, i8*** %input_array.addr, align 8, !tbaa !5
  %12 = load i8*, i8** %11, align 8, !tbaa !5
  store i8* %12, i8** %inptr, align 8, !tbaa !5
  %13 = load i8**, i8*** %output_array.addr, align 8, !tbaa !5
  %incdec.ptr4 = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %incdec.ptr4, i8*** %output_array.addr, align 8, !tbaa !5
  %14 = load i8*, i8** %13, align 8, !tbaa !5
  store i8* %14, i8** %outptr, align 8, !tbaa !5
  %15 = load i8*, i8** %outptr, align 8, !tbaa !5
  %16 = load i8*, i8** %inptr, align 8, !tbaa !5
  %17 = load i64, i64* %count, align 8, !tbaa !1
  %call = call i8* @memcpy(i8* %15, i8* %16, i64 %17) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %row, align 4, !tbaa !7
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %row, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i64* %count to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast i8** %outptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast i8** %inptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @jcopy_block_row([64 x i16]* %input_row, [64 x i16]* %output_row, i32 %num_blocks) #0 {
entry:
  %input_row.addr = alloca [64 x i16]*, align 8
  %output_row.addr = alloca [64 x i16]*, align 8
  %num_blocks.addr = alloca i32, align 4
  store [64 x i16]* %input_row, [64 x i16]** %input_row.addr, align 8, !tbaa !5
  store [64 x i16]* %output_row, [64 x i16]** %output_row.addr, align 8, !tbaa !5
  store i32 %num_blocks, i32* %num_blocks.addr, align 4, !tbaa !7
  %0 = load [64 x i16]*, [64 x i16]** %output_row.addr, align 8, !tbaa !5
  %1 = bitcast [64 x i16]* %0 to i8*
  %2 = load [64 x i16]*, [64 x i16]** %input_row.addr, align 8, !tbaa !5
  %3 = bitcast [64 x i16]* %2 to i8*
  %4 = load i32, i32* %num_blocks.addr, align 4, !tbaa !7
  %conv = zext i32 %4 to i64
  %mul = mul i64 %conv, 128
  %call = call i8* @memcpy(i8* %1, i8* %3, i64 %mul) #3
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"long", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !3, i64 0}
