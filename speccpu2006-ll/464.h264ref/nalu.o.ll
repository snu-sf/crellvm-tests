; ModuleID = 'nalu.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }

@WriteNALU = common global i32 (%struct.NALU_t*)* null, align 8

; Function Attrs: nounwind uwtable
define i32 @RBSPtoNALU(i8* %rbsp, %struct.NALU_t* %nalu, i32 %rbsp_size, i32 %nal_unit_type, i32 %nal_reference_idc, i32 %min_num_bytes, i32 %UseAnnexbLongStartcode) #0 {
entry:
  %rbsp.addr = alloca i8*, align 8
  %nalu.addr = alloca %struct.NALU_t*, align 8
  %rbsp_size.addr = alloca i32, align 4
  %nal_unit_type.addr = alloca i32, align 4
  %nal_reference_idc.addr = alloca i32, align 4
  %min_num_bytes.addr = alloca i32, align 4
  %UseAnnexbLongStartcode.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %rbsp, i8** %rbsp.addr, align 8
  store %struct.NALU_t* %nalu, %struct.NALU_t** %nalu.addr, align 8
  store i32 %rbsp_size, i32* %rbsp_size.addr, align 4
  store i32 %nal_unit_type, i32* %nal_unit_type.addr, align 4
  store i32 %nal_reference_idc, i32* %nal_reference_idc.addr, align 4
  store i32 %min_num_bytes, i32* %min_num_bytes.addr, align 4
  store i32 %UseAnnexbLongStartcode, i32* %UseAnnexbLongStartcode.addr, align 4
  %0 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %forbidden_bit = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %0, i32 0, i32 5
  store i32 0, i32* %forbidden_bit, align 4
  %1 = load i32, i32* %nal_reference_idc.addr, align 4
  %2 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_reference_idc1 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %2, i32 0, i32 4
  store i32 %1, i32* %nal_reference_idc1, align 4
  %3 = load i32, i32* %nal_unit_type.addr, align 4
  %4 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_unit_type2 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %4, i32 0, i32 3
  store i32 %3, i32* %nal_unit_type2, align 4
  %5 = load i32, i32* %UseAnnexbLongStartcode.addr, align 4
  %tobool = icmp ne i32 %5, 0
  %cond = select i1 %tobool, i32 4, i32 3
  %6 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %startcodeprefix_len = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %6, i32 0, i32 0
  store i32 %cond, i32* %startcodeprefix_len, align 4
  %7 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %forbidden_bit3 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %7, i32 0, i32 5
  %8 = load i32, i32* %forbidden_bit3, align 4
  %shl = shl i32 %8, 7
  %9 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_reference_idc4 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %9, i32 0, i32 4
  %10 = load i32, i32* %nal_reference_idc4, align 4
  %shl5 = shl i32 %10, 5
  %or = or i32 %shl, %shl5
  %11 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %nal_unit_type6 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %11, i32 0, i32 3
  %12 = load i32, i32* %nal_unit_type6, align 4
  %or7 = or i32 %or, %12
  %conv = trunc i32 %or7 to i8
  %13 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %buf = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %13, i32 0, i32 6
  %14 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %15 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %buf8 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %15, i32 0, i32 6
  %16 = load i8*, i8** %buf8, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8*, i8** %rbsp.addr, align 8
  %18 = load i32, i32* %rbsp_size.addr, align 4
  %conv10 = sext i32 %18 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx9, i8* %17, i64 %conv10, i32 1, i1 false)
  %19 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %buf11 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %19, i32 0, i32 6
  %20 = load i8*, i8** %buf11, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i32, i32* %rbsp_size.addr, align 4
  %22 = load i32, i32* %min_num_bytes.addr, align 4
  %call = call i32 @RBSPtoEBSP(i8* %arrayidx12, i32 0, i32 %21, i32 %22)
  %add = add nsw i32 1, %call
  store i32 %add, i32* %len, align 4
  %23 = load i32, i32* %len, align 4
  %24 = load %struct.NALU_t*, %struct.NALU_t** %nalu.addr, align 8
  %len13 = getelementptr inbounds %struct.NALU_t, %struct.NALU_t* %24, i32 0, i32 1
  store i32 %23, i32* %len13, align 4
  %25 = load i32, i32* %len, align 4
  ret i32 %25
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @RBSPtoEBSP(i8*, i32, i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
