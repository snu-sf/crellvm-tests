; ModuleID = './wrfont.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WRF_output_ = type { i8*, i64, i64, i32, i16 }

@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1

; Function Attrs: nounwind uwtable
define void @WRF_init(%struct.WRF_output_* %a_output, i8* %a_buffer, i64 %a_buffer_size) #0 {
entry:
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %a_buffer.addr = alloca i8*, align 8
  %a_buffer_size.addr = alloca i64, align 8
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  store i8* %a_buffer, i8** %a_buffer.addr, align 8, !tbaa !1
  store i64 %a_buffer_size, i64* %a_buffer_size.addr, align 8, !tbaa !5
  %0 = load i8*, i8** %a_buffer.addr, align 8, !tbaa !1
  %1 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %1, i32 0, i32 0
  store i8* %0, i8** %m_pos, align 8, !tbaa !7
  %2 = load i64, i64* %a_buffer_size.addr, align 8, !tbaa !5
  %3 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_limit = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %3, i32 0, i32 1
  store i64 %2, i64* %m_limit, align 8, !tbaa !11
  %4 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_count = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %4, i32 0, i32 2
  store i64 0, i64* %m_count, align 8, !tbaa !12
  %5 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_encrypt = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %5, i32 0, i32 3
  store i32 0, i32* %m_encrypt, align 4, !tbaa !13
  %6 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_key = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %6, i32 0, i32 4
  store i16 -9871, i16* %m_key, align 2, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define void @WRF_wbyte(%struct.WRF_output_* %a_output, i8 zeroext %a_byte) #0 {
entry:
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %a_byte.addr = alloca i8, align 1
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  store i8 %a_byte, i8* %a_byte.addr, align 1, !tbaa !15
  %0 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_count = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %0, i32 0, i32 2
  %1 = load i64, i64* %m_count, align 8, !tbaa !12
  %2 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_limit = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %2, i32 0, i32 1
  %3 = load i64, i64* %m_limit, align 8, !tbaa !11
  %cmp = icmp slt i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %4 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_encrypt = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %4, i32 0, i32 3
  %5 = load i32, i32* %m_encrypt, align 4, !tbaa !13
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %6 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_key = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %6, i32 0, i32 4
  %7 = load i16, i16* %m_key, align 2, !tbaa !14
  %conv = zext i16 %7 to i32
  %shr = ashr i32 %conv, 8
  %8 = load i8, i8* %a_byte.addr, align 1, !tbaa !15
  %conv2 = zext i8 %8 to i32
  %xor = xor i32 %conv2, %shr
  %conv3 = trunc i32 %xor to i8
  store i8 %conv3, i8* %a_byte.addr, align 1, !tbaa !15
  %9 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_key4 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %9, i32 0, i32 4
  %10 = load i16, i16* %m_key4, align 2, !tbaa !14
  %conv5 = zext i16 %10 to i32
  %11 = load i8, i8* %a_byte.addr, align 1, !tbaa !15
  %conv6 = zext i8 %11 to i32
  %add = add nsw i32 %conv5, %conv6
  %mul = mul nsw i32 %add, 52845
  %add7 = add nsw i32 %mul, 22719
  %conv8 = trunc i32 %add7 to i16
  %12 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_key9 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %12, i32 0, i32 4
  store i16 %conv8, i16* %m_key9, align 2, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %13 = load i8, i8* %a_byte.addr, align 1, !tbaa !15
  %14 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_pos = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %14, i32 0, i32 0
  %15 = load i8*, i8** %m_pos, align 8, !tbaa !7
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %m_pos, align 8, !tbaa !7
  store i8 %13, i8* %15, align 1, !tbaa !15
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %16 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %m_count11 = getelementptr inbounds %struct.WRF_output_, %struct.WRF_output_* %16, i32 0, i32 2
  %17 = load i64, i64* %m_count11, align 8, !tbaa !12
  %inc = add nsw i64 %17, 1
  store i64 %inc, i64* %m_count11, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define void @WRF_wtext(%struct.WRF_output_* %a_output, i8* %a_string, i64 %a_length) #0 {
entry:
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %a_string.addr = alloca i8*, align 8
  %a_length.addr = alloca i64, align 8
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  store i8* %a_string, i8** %a_string.addr, align 8, !tbaa !1
  store i64 %a_length, i64* %a_length.addr, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %a_length.addr, align 8, !tbaa !5
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %a_string.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %a_string.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !15
  call void @WRF_wbyte(%struct.WRF_output_* %1, i8 zeroext %3) #3
  %4 = load i64, i64* %a_length.addr, align 8, !tbaa !5
  %dec = add nsw i64 %4, -1
  store i64 %dec, i64* %a_length.addr, align 8, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @WRF_wstring(%struct.WRF_output_* %a_output, i8* %a_string) #0 {
entry:
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %a_string.addr = alloca i8*, align 8
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  store i8* %a_string, i8** %a_string.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %a_string.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !15
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %a_string.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %a_string.addr, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !15
  call void @WRF_wbyte(%struct.WRF_output_* %2, i8 zeroext %4) #3
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @WRF_wfloat(%struct.WRF_output_* %a_output, double %a_float) #0 {
entry:
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %a_float.addr = alloca double, align 8
  %buffer = alloca [32 x i8], align 16
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  store double %a_float, double* %a_float.addr, align 8, !tbaa !16
  %0 = bitcast [32 x i8]* %buffer to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buffer, i32 0, i32 0
  %1 = load double, double* %a_float.addr, align 8, !tbaa !16
  %call = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), double %1) #3
  %2 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %arraydecay1 = getelementptr inbounds [32 x i8], [32 x i8]* %buffer, i32 0, i32 0
  call void @WRF_wstring(%struct.WRF_output_* %2, i8* %arraydecay1) #3
  %3 = bitcast [32 x i8]* %buffer to i8*
  call void @llvm.lifetime.end(i64 32, i8* %3) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gs_sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @WRF_wint(%struct.WRF_output_* %a_output, i64 %a_int) #0 {
entry:
  %a_output.addr = alloca %struct.WRF_output_*, align 8
  %a_int.addr = alloca i64, align 8
  %buffer = alloca [32 x i8], align 16
  store %struct.WRF_output_* %a_output, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  store i64 %a_int, i64* %a_int.addr, align 8, !tbaa !5
  %0 = bitcast [32 x i8]* %buffer to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buffer, i32 0, i32 0
  %1 = load i64, i64* %a_int.addr, align 8, !tbaa !5
  %call = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64 %1) #3
  %2 = load %struct.WRF_output_*, %struct.WRF_output_** %a_output.addr, align 8, !tbaa !1
  %arraydecay1 = getelementptr inbounds [32 x i8], [32 x i8]* %buffer, i32 0, i32 0
  call void @WRF_wstring(%struct.WRF_output_* %2, i8* %arraydecay1) #3
  %3 = bitcast [32 x i8]* %buffer to i8*
  call void @llvm.lifetime.end(i64 32, i8* %3) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"WRF_output_", !2, i64 0, !6, i64 8, !6, i64 16, !9, i64 24, !10, i64 28}
!9 = !{!"int", !3, i64 0}
!10 = !{!"short", !3, i64 0}
!11 = !{!8, !6, i64 8}
!12 = !{!8, !6, i64 16}
!13 = !{!8, !9, i64 24}
!14 = !{!8, !10, i64 28}
!15 = !{!3, !3, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !3, i64 0}
