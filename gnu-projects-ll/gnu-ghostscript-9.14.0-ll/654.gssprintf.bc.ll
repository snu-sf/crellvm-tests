; ModuleID = './gssprintf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: nounwind uwtable
define i32 @gs_vsnprintf(i8* %buf, i32 %n, i8* %format, %struct.__va_list_tag* %ap) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %ap.addr = alloca %struct.__va_list_tag*, align 8
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %ap.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %1 = load i32, i32* %n.addr, align 4, !tbaa !5
  %conv = sext i32 %1 to i64
  %2 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %3 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8, !tbaa !1
  %call = call i32 @trio_vsnprintf(i8* %0, i64 %conv, i8* %2, %struct.__va_list_tag* %3) #3
  ret i32 %call
}

declare i32 @trio_vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_snprintf(i8* %buf, i32 %n, i8* %format, ...) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %2 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %3 = load i32, i32* %n.addr, align 4, !tbaa !5
  %conv = sext i32 %3 to i64
  %4 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call i32 @trio_vsnprintf(i8* %2, i64 %conv, i8* %4, %struct.__va_list_tag* %arraydecay2) #3
  store i32 %call, i32* %len, align 4, !tbaa !5
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %5 = load i32, i32* %len, align 4, !tbaa !5
  %6 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.end(i64 24, i8* %6) #2
  %7 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #2
  ret i32 %5
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @gs_vsprintf(i8* %buf, i8* %format, %struct.__va_list_tag* %ap) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %ap.addr = alloca %struct.__va_list_tag*, align 8
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %ap.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %2 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8, !tbaa !1
  %call = call i32 @trio_vsprintf(i8* %0, i8* %1, %struct.__va_list_tag* %2) #3
  ret i32 %call
}

declare i32 @trio_vsprintf(i8*, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_sprintf(i8* %buf, i8* %format, ...) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %2 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call i32 @trio_vsprintf(i8* %2, i8* %3, %struct.__va_list_tag* %arraydecay2) #3
  store i32 %call, i32* %len, align 4, !tbaa !5
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %4 = load i32, i32* %len, align 4, !tbaa !5
  %5 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.end(i64 24, i8* %5) #2
  %6 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #2
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @gs_sscanf(i8* %buf, i8* %format, ...) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i8* %format, i8** %format.addr, align 8, !tbaa !1
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %2 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %format.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call i32 @trio_vsscanf(i8* %2, i8* %3, %struct.__va_list_tag* %arraydecay2) #3
  store i32 %call, i32* %len, align 4, !tbaa !5
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %4 = load i32, i32* %len, align 4, !tbaa !5
  %5 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.end(i64 24, i8* %5) #2
  %6 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #2
  ret i32 %4
}

declare i32 @trio_vsscanf(i8*, i8*, %struct.__va_list_tag*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
