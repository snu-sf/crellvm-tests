; ModuleID = './app/xcf/xcf-seek.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._XcfInfo = type { %struct._Gimp*, %struct._GimpProgress*, %struct._IO_FILE*, i32, i8*, i32, %struct._GimpLayer*, %struct._GimpChannel*, %struct._GimpDrawable*, %struct._GimpLayer*, i32, i32, i32*, i32, i32 }
%struct._Gimp = type opaque
%struct._GimpProgress = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GimpChannel = type opaque
%struct._GimpDrawable = type opaque
%struct._GimpLayer = type opaque
%struct._GError = type { i32, i32, i8* }

@.str = private unnamed_addr constant [31 x i8] c"Could not seek in XCF file: %s\00", align 1

; Function Attrs: nounwind uwtable
define i32 @xcf_seek_pos(%struct._XcfInfo* %info, i32 %pos, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._XcfInfo*, align 8
  %pos.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  store %struct._XcfInfo* %info, %struct._XcfInfo** %info.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %0, i32 0, i32 3
  %1 = load i32, i32* %cp, align 4
  %2 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %pos.addr, align 4
  %4 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp1 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %4, i32 0, i32 3
  store i32 %3, i32* %cp1, align 4
  %5 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %fp = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %5, i32 0, i32 2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %7 = load %struct._XcfInfo*, %struct._XcfInfo** %info.addr, align 8
  %cp2 = getelementptr inbounds %struct._XcfInfo, %struct._XcfInfo* %7, i32 0, i32 3
  %8 = load i32, i32* %cp2, align 4
  %conv = zext i32 %8 to i64
  %call = call i32 @fseek(%struct._IO_FILE* %6, i64 %conv, i32 0)
  %cmp3 = icmp eq i32 %call, -1
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 @g_file_error_quark()
  %call7 = call i32* @__errno_location() #4
  %10 = load i32, i32* %call7, align 4
  %call8 = call i32 @g_file_error_from_errno(i32 %10)
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #5
  %call10 = call i32* @__errno_location() #4
  %11 = load i32, i32* %call10, align 4
  %call11 = call i8* @g_strerror(i32 %11) #4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %9, i32 %call6, i32 %call8, i8* %call9, i8* %call11)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.5
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
