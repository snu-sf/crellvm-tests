; ModuleID = './src/version-etc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [50 x i8] c"Copyright (C) 1999 Free Software Foundation, Inc.\00", align 1
@version_etc_copyright = global i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [152 x i8] c"This is free software; see the source for copying conditions.  There is NO\0Awarranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @version_etc(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, i8* %authors) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors.addr = alloca i8*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %command_name, i8** %command_name.addr, align 8
  store i8* %package, i8** %package.addr, align 8
  store i8* %version, i8** %version.addr, align 8
  store i8* %authors, i8** %authors.addr, align 8
  %0 = load i8*, i8** %command_name.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %2 = load i8*, i8** %command_name.addr, align 8
  %3 = load i8*, i8** %package.addr, align 8
  %4 = load i8*, i8** %version.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* %2, i8* %3, i8* %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %6 = load i8*, i8** %package.addr, align 8
  %7 = load i8*, i8** %version.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* %6, i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)) #3
  %9 = load i8*, i8** %authors.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* %call2, i8* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call4 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %10)
  %11 = load i8*, i8** @version_etc_copyright, align 8
  %call5 = call i8* @gettext(i8* %11) #3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call6 = call i32 @fputs(i8* %call5, %struct._IO_FILE* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call7 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %13)
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.4, i32 0, i32 0)) #3
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call9 = call i32 @fputs(i8* %call8, %struct._IO_FILE* %14)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
