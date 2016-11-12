; ModuleID = './rinkj-byte-stream.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._RinkjByteStream = type { {}* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._RinkjByteStreamFile = type { %struct._RinkjByteStream, %struct._IO_FILE* }

; Function Attrs: nounwind uwtable
define i32 @rinkj_byte_stream_write(%struct._RinkjByteStream* %bs, i8* %buf, i32 %size) #0 {
entry:
  %bs.addr = alloca %struct._RinkjByteStream*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store %struct._RinkjByteStream* %bs, %struct._RinkjByteStream** %bs.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %bs.addr, align 8, !tbaa !1
  %write = getelementptr inbounds %struct._RinkjByteStream, %struct._RinkjByteStream* %0, i32 0, i32 0
  %write1 = bitcast {}** %write to i32 (%struct._RinkjByteStream*, i8*, i32)**
  %1 = load i32 (%struct._RinkjByteStream*, i8*, i32)*, i32 (%struct._RinkjByteStream*, i8*, i32)** %write1, align 8, !tbaa !7
  %2 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %bs.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call = call i32 %1(%struct._RinkjByteStream* %2, i8* %3, i32 %4) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @rinkj_byte_stream_puts(%struct._RinkjByteStream* %bs, i8* %str) #0 {
entry:
  %bs.addr = alloca %struct._RinkjByteStream*, align 8
  %str.addr = alloca i8*, align 8
  store %struct._RinkjByteStream* %bs, %struct._RinkjByteStream** %bs.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %bs.addr, align 8, !tbaa !1
  %write = getelementptr inbounds %struct._RinkjByteStream, %struct._RinkjByteStream* %0, i32 0, i32 0
  %write1 = bitcast {}** %write to i32 (%struct._RinkjByteStream*, i8*, i32)**
  %1 = load i32 (%struct._RinkjByteStream*, i8*, i32)*, i32 (%struct._RinkjByteStream*, i8*, i32)** %write1, align 8, !tbaa !7
  %2 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %bs.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %4) #6
  %conv = trunc i64 %call to i32
  %call2 = call i32 %1(%struct._RinkjByteStream* %2, i8* %3, i32 %conv) #5
  ret i32 %call2
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @rinkj_byte_stream_printf(%struct._RinkjByteStream* %bs, i8* %fmt, ...) #0 {
entry:
  %bs.addr = alloca %struct._RinkjByteStream*, align 8
  %fmt.addr = alloca i8*, align 8
  %str = alloca [8192 x i8], align 16
  %len = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._RinkjByteStream* %bs, %struct._RinkjByteStream** %bs.addr, align 8, !tbaa !1
  store i8* %fmt, i8** %fmt.addr, align 8, !tbaa !1
  %0 = bitcast [8192 x i8]* %str to i8*
  call void @llvm.lifetime.start(i64 8192, i8* %0) #2
  %1 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #2
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [8192 x i8], [8192 x i8]* %str, i32 0, i32 0
  %3 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call i32 @vsnprintf(i8* %arraydecay2, i64 8192, i8* %3, %struct.__va_list_tag* %arraydecay3) #7
  store i32 %call, i32* %len, align 4, !tbaa !5
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %4 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %bs.addr, align 8, !tbaa !1
  %arraydecay6 = getelementptr inbounds [8192 x i8], [8192 x i8]* %str, i32 0, i32 0
  %5 = load i32, i32* %len, align 4, !tbaa !5
  %call7 = call i32 @rinkj_byte_stream_write(%struct._RinkjByteStream* %4, i8* %arraydecay6, i32 %5) #5
  %6 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.end(i64 24, i8* %6) #2
  %7 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #2
  %8 = bitcast [8192 x i8]* %str to i8*
  call void @llvm.lifetime.end(i64 8192, i8* %8) #2
  ret i32 %call7
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @rinkj_byte_stream_close(%struct._RinkjByteStream* %bs) #0 {
entry:
  %bs.addr = alloca %struct._RinkjByteStream*, align 8
  store %struct._RinkjByteStream* %bs, %struct._RinkjByteStream** %bs.addr, align 8, !tbaa !1
  %0 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %bs.addr, align 8, !tbaa !1
  %write = getelementptr inbounds %struct._RinkjByteStream, %struct._RinkjByteStream* %0, i32 0, i32 0
  %write1 = bitcast {}** %write to i32 (%struct._RinkjByteStream*, i8*, i32)**
  %1 = load i32 (%struct._RinkjByteStream*, i8*, i32)*, i32 (%struct._RinkjByteStream*, i8*, i32)** %write1, align 8, !tbaa !7
  %2 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %bs.addr, align 8, !tbaa !1
  %call = call i32 %1(%struct._RinkjByteStream* %2, i8* null, i32 0) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define %struct._RinkjByteStream* @rinkj_byte_stream_file_new(%struct._IO_FILE* %f) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %result = alloca %struct._RinkjByteStreamFile*, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %0 = bitcast %struct._RinkjByteStreamFile** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %call = call noalias i8* @malloc(i64 16) #7
  %1 = bitcast i8* %call to %struct._RinkjByteStreamFile*
  store %struct._RinkjByteStreamFile* %1, %struct._RinkjByteStreamFile** %result, align 8, !tbaa !1
  %2 = load %struct._RinkjByteStreamFile*, %struct._RinkjByteStreamFile** %result, align 8, !tbaa !1
  %super = getelementptr inbounds %struct._RinkjByteStreamFile, %struct._RinkjByteStreamFile* %2, i32 0, i32 0
  %write = getelementptr inbounds %struct._RinkjByteStream, %struct._RinkjByteStream* %super, i32 0, i32 0
  %write1 = bitcast {}** %write to i32 (%struct._RinkjByteStream*, i8*, i32)**
  store i32 (%struct._RinkjByteStream*, i8*, i32)* @rinkj_byte_stream_file_write, i32 (%struct._RinkjByteStream*, i8*, i32)** %write1, align 8, !tbaa !9
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %4 = load %struct._RinkjByteStreamFile*, %struct._RinkjByteStreamFile** %result, align 8, !tbaa !1
  %f2 = getelementptr inbounds %struct._RinkjByteStreamFile, %struct._RinkjByteStreamFile* %4, i32 0, i32 1
  store %struct._IO_FILE* %3, %struct._IO_FILE** %f2, align 8, !tbaa !11
  %5 = load %struct._RinkjByteStreamFile*, %struct._RinkjByteStreamFile** %result, align 8, !tbaa !1
  %super3 = getelementptr inbounds %struct._RinkjByteStreamFile, %struct._RinkjByteStreamFile* %5, i32 0, i32 0
  %6 = bitcast %struct._RinkjByteStreamFile** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #2
  ret %struct._RinkjByteStream* %super3
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_byte_stream_file_write(%struct._RinkjByteStream* %self, i8* %buf, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._RinkjByteStream*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %z = alloca %struct._RinkjByteStreamFile*, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._RinkjByteStream* %self, %struct._RinkjByteStream** %self.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast %struct._RinkjByteStreamFile** %z to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct._RinkjByteStream* %1 to %struct._RinkjByteStreamFile*
  store %struct._RinkjByteStreamFile* %2, %struct._RinkjByteStreamFile** %z, align 8, !tbaa !1
  %3 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %status, align 4, !tbaa !5
  %5 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %self.addr, align 8, !tbaa !1
  %6 = bitcast %struct._RinkjByteStream* %5 to i8*
  call void @free(i8* %6) #7
  %7 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %8 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %9 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv = sext i32 %9 to i64
  %10 = load %struct._RinkjByteStreamFile*, %struct._RinkjByteStreamFile** %z, align 8, !tbaa !1
  %f = getelementptr inbounds %struct._RinkjByteStreamFile, %struct._RinkjByteStreamFile* %10, i32 0, i32 1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !11
  %call = call i64 @fwrite(i8* %8, i64 1, i64 %conv, %struct._IO_FILE* %11) #5
  %conv1 = trunc i64 %call to i32
  store i32 %conv1, i32* %status, align 4, !tbaa !5
  %12 = load i32, i32* %status, align 4, !tbaa !5
  %13 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %12, %13
  br i1 %cmp2, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.5:                                        ; preds = %if.else
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.5, %if.then.4, %if.then
  %14 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = bitcast %struct._RinkjByteStreamFile** %z to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"_RinkjByteStream", !2, i64 0}
!9 = !{!10, !2, i64 0}
!10 = !{!"_RinkjByteStreamFile", !8, i64 0, !2, i64 8}
!11 = !{!10, !2, i64 8}
