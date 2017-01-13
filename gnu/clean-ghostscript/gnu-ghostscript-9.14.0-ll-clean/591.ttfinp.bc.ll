; ModuleID = './ttfinp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttfReader_s = type { i32 (%struct.ttfReader_s*)*, void (%struct.ttfReader_s*, i8*, i32)*, void (%struct.ttfReader_s*, i32)*, i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*, i32, i8**, i32*)*, void (%struct.ttfReader_s*, i32)*, i32 (%struct.ttfReader_s*, i32, i32, i16*, i16*)* }

; Function Attrs: nounwind uwtable
define zeroext i8 @ttfReader__Byte(%struct.ttfReader_s* %r) #0 {
entry:
  %r.addr = alloca %struct.ttfReader_s*, align 8
  %b = alloca i8, align 1
  store %struct.ttfReader_s* %r, %struct.ttfReader_s** %r.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %b) #1
  %0 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !1
  %Read = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %0, i32 0, i32 1
  %1 = load void (%struct.ttfReader_s*, i8*, i32)*, void (%struct.ttfReader_s*, i8*, i32)** %Read, align 8, !tbaa !5
  %2 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !1
  call void %1(%struct.ttfReader_s* %2, i8* %b, i32 1) #2
  %3 = load i8, i8* %b, align 1, !tbaa !7
  call void @llvm.lifetime.end(i64 1, i8* %b) #1
  ret i8 %3
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define signext i8 @ttfReader__SignedByte(%struct.ttfReader_s* %r) #0 {
entry:
  %r.addr = alloca %struct.ttfReader_s*, align 8
  %b = alloca i8, align 1
  store %struct.ttfReader_s* %r, %struct.ttfReader_s** %r.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %b) #1
  %0 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !1
  %Read = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %0, i32 0, i32 1
  %1 = load void (%struct.ttfReader_s*, i8*, i32)*, void (%struct.ttfReader_s*, i8*, i32)** %Read, align 8, !tbaa !5
  %2 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !1
  call void %1(%struct.ttfReader_s* %2, i8* %b, i32 1) #2
  %3 = load i8, i8* %b, align 1, !tbaa !7
  call void @llvm.lifetime.end(i64 1, i8* %b) #1
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define signext i16 @ttfReader__Short(%struct.ttfReader_s* %r) #0 {
entry:
  %r.addr = alloca %struct.ttfReader_s*, align 8
  %buf = alloca [2 x i8], align 1
  store %struct.ttfReader_s* %r, %struct.ttfReader_s** %r.addr, align 8, !tbaa !1
  %0 = bitcast [2 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !1
  %Read = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %1, i32 0, i32 1
  %2 = load void (%struct.ttfReader_s*, i8*, i32)*, void (%struct.ttfReader_s*, i8*, i32)** %Read, align 8, !tbaa !5
  %3 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i32 0
  call void %2(%struct.ttfReader_s* %3, i8* %arraydecay, i32 2) #2
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 0
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %4 to i16
  %conv1 = sext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %arrayidx2 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 1
  %5 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %5 to i16
  %conv4 = sext i16 %conv3 to i32
  %or = or i32 %shl, %conv4
  %conv5 = trunc i32 %or to i16
  %6 = bitcast [2 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2, i8* %6) #1
  ret i16 %conv5
}

; Function Attrs: nounwind uwtable
define zeroext i16 @ttfReader__UShort(%struct.ttfReader_s* %r) #0 {
entry:
  %r.addr = alloca %struct.ttfReader_s*, align 8
  %buf = alloca [2 x i8], align 1
  store %struct.ttfReader_s* %r, %struct.ttfReader_s** %r.addr, align 8, !tbaa !1
  %0 = bitcast [2 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !1
  %Read = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %1, i32 0, i32 1
  %2 = load void (%struct.ttfReader_s*, i8*, i32)*, void (%struct.ttfReader_s*, i8*, i32)** %Read, align 8, !tbaa !5
  %3 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i32 0
  call void %2(%struct.ttfReader_s* %3, i8* %arraydecay, i32 2) #2
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 0
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %4 to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %arrayidx2 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 1
  %5 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %conv3 = zext i8 %5 to i16
  %conv4 = zext i16 %conv3 to i32
  %or = or i32 %shl, %conv4
  %conv5 = trunc i32 %or to i16
  %6 = bitcast [2 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2, i8* %6) #1
  ret i16 %conv5
}

; Function Attrs: nounwind uwtable
define i32 @ttfReader__UInt(%struct.ttfReader_s* %r) #0 {
entry:
  %r.addr = alloca %struct.ttfReader_s*, align 8
  %buf = alloca [4 x i8], align 1
  store %struct.ttfReader_s* %r, %struct.ttfReader_s** %r.addr, align 8, !tbaa !1
  %0 = bitcast [4 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !1
  %Read = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %1, i32 0, i32 1
  %2 = load void (%struct.ttfReader_s*, i8*, i32)*, void (%struct.ttfReader_s*, i8*, i32)** %Read, align 8, !tbaa !5
  %3 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  call void %2(%struct.ttfReader_s* %3, i8* %arraydecay, i32 4) #2
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 0
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %4 to i32
  %shl = shl i32 %conv, 24
  %arrayidx1 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 1
  %5 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv2 = zext i8 %5 to i32
  %shl3 = shl i32 %conv2, 16
  %or = or i32 %shl, %shl3
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 2
  %6 = load i8, i8* %arrayidx4, align 1, !tbaa !7
  %conv5 = zext i8 %6 to i32
  %shl6 = shl i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 3
  %7 = load i8, i8* %arrayidx8, align 1, !tbaa !7
  %conv9 = zext i8 %7 to i32
  %or10 = or i32 %or7, %conv9
  %8 = bitcast [4 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret i32 %or10
}

; Function Attrs: nounwind uwtable
define i32 @ttfReader__Int(%struct.ttfReader_s* %r) #0 {
entry:
  %r.addr = alloca %struct.ttfReader_s*, align 8
  store %struct.ttfReader_s* %r, %struct.ttfReader_s** %r.addr, align 8, !tbaa !1
  %0 = load %struct.ttfReader_s*, %struct.ttfReader_s** %r.addr, align 8, !tbaa !1
  %call = call i32 @ttfReader__UInt(%struct.ttfReader_s* %0) #2
  ret i32 %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 8}
!6 = !{!"ttfReader_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!7 = !{!3, !3, i64 0}
