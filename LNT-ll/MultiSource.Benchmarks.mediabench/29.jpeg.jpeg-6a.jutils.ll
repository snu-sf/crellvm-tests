; ModuleID = './MultiSource.Benchmarks.mediabench/29.jpeg.jpeg-6a.jutils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jpeg_natural_order = constant [80 x i32] [i32 0, i32 1, i32 8, i32 16, i32 9, i32 2, i32 3, i32 10, i32 17, i32 24, i32 32, i32 25, i32 18, i32 11, i32 4, i32 5, i32 12, i32 19, i32 26, i32 33, i32 40, i32 48, i32 41, i32 34, i32 27, i32 20, i32 13, i32 6, i32 7, i32 14, i32 21, i32 28, i32 35, i32 42, i32 49, i32 56, i32 57, i32 50, i32 43, i32 36, i32 29, i32 22, i32 15, i32 23, i32 30, i32 37, i32 44, i32 51, i32 58, i32 59, i32 52, i32 45, i32 38, i32 31, i32 39, i32 46, i32 53, i32 60, i32 61, i32 54, i32 47, i32 55, i32 62, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63], align 16

; Function Attrs: nounwind uwtable
define i64 @jdiv_round_up(i64 %a, i64 %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  %add = add nsw i64 %0, %1
  %sub = sub nsw i64 %add, 1
  %2 = load i64, i64* %b.addr, align 8
  %div = sdiv i64 %sub, %2
  ret i64 %div
}

; Function Attrs: nounwind uwtable
define i64 @jround_up(i64 %a, i64 %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %b.addr, align 8
  %sub = sub nsw i64 %0, 1
  %1 = load i64, i64* %a.addr, align 8
  %add = add nsw i64 %1, %sub
  store i64 %add, i64* %a.addr, align 8
  %2 = load i64, i64* %a.addr, align 8
  %3 = load i64, i64* %a.addr, align 8
  %4 = load i64, i64* %b.addr, align 8
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
  store i8** %input_array, i8*** %input_array.addr, align 8
  store i32 %source_row, i32* %source_row.addr, align 4
  store i8** %output_array, i8*** %output_array.addr, align 8
  store i32 %dest_row, i32* %dest_row.addr, align 4
  store i32 %num_rows, i32* %num_rows.addr, align 4
  store i32 %num_cols, i32* %num_cols.addr, align 4
  %0 = load i32, i32* %num_cols.addr, align 4
  %conv = zext i32 %0 to i64
  %mul = mul i64 %conv, 1
  store i64 %mul, i64* %count, align 8
  %1 = load i32, i32* %source_row.addr, align 4
  %2 = load i8**, i8*** %input_array.addr, align 8
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %2, i64 %idx.ext
  store i8** %add.ptr, i8*** %input_array.addr, align 8
  %3 = load i32, i32* %dest_row.addr, align 4
  %4 = load i8**, i8*** %output_array.addr, align 8
  %idx.ext1 = sext i32 %3 to i64
  %add.ptr2 = getelementptr inbounds i8*, i8** %4, i64 %idx.ext1
  store i8** %add.ptr2, i8*** %output_array.addr, align 8
  %5 = load i32, i32* %num_rows.addr, align 4
  store i32 %5, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %row, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8**, i8*** %input_array.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %7, i32 1
  store i8** %incdec.ptr, i8*** %input_array.addr, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %inptr, align 8
  %9 = load i8**, i8*** %output_array.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8*, i8** %9, i32 1
  store i8** %incdec.ptr4, i8*** %output_array.addr, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %outptr, align 8
  %11 = load i8*, i8** %outptr, align 8
  %12 = load i8*, i8** %inptr, align 8
  %13 = load i64, i64* %count, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 %13, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %row, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %row, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @jcopy_block_row([64 x i16]* %input_row, [64 x i16]* %output_row, i32 %num_blocks) #0 {
entry:
  %input_row.addr = alloca [64 x i16]*, align 8
  %output_row.addr = alloca [64 x i16]*, align 8
  %num_blocks.addr = alloca i32, align 4
  store [64 x i16]* %input_row, [64 x i16]** %input_row.addr, align 8
  store [64 x i16]* %output_row, [64 x i16]** %output_row.addr, align 8
  store i32 %num_blocks, i32* %num_blocks.addr, align 4
  %0 = load [64 x i16]*, [64 x i16]** %output_row.addr, align 8
  %1 = bitcast [64 x i16]* %0 to i8*
  %2 = load [64 x i16]*, [64 x i16]** %input_row.addr, align 8
  %3 = bitcast [64 x i16]* %2 to i8*
  %4 = load i32, i32* %num_blocks.addr, align 4
  %conv = zext i32 %4 to i64
  %mul = mul i64 %conv, 128
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %3, i64 %mul, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @jzero_far(i8* %target, i64 %bytestozero) #0 {
entry:
  %target.addr = alloca i8*, align 8
  %bytestozero.addr = alloca i64, align 8
  store i8* %target, i8** %target.addr, align 8
  store i64 %bytestozero, i64* %bytestozero.addr, align 8
  %0 = load i8*, i8** %target.addr, align 8
  %1 = load i64, i64* %bytestozero.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 %1, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
