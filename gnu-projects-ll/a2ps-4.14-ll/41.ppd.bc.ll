; ModuleID = './lib/ppd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppd = type { i8*, i8*, i8*, %struct.string_htable* }
%struct.string_htable = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct.lister = type opaque

@.str = private unnamed_addr constant [5 x i8] c".ppd\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Known PostScript Printer Descriptions\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Known Fonts\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"\0A  None.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @ppd_font_add(%struct.ppd* %ppd, i8* %fontname) #0 {
entry:
  %ppd.addr = alloca %struct.ppd*, align 8
  %fontname.addr = alloca i8*, align 8
  store %struct.ppd* %ppd, %struct.ppd** %ppd.addr, align 8
  store i8* %fontname, i8** %fontname.addr, align 8
  %0 = load %struct.ppd*, %struct.ppd** %ppd.addr, align 8
  %fonts = getelementptr inbounds %struct.ppd, %struct.ppd* %0, i32 0, i32 3
  %1 = load %struct.string_htable*, %struct.string_htable** %fonts, align 8
  %2 = load i8*, i8** %fontname.addr, align 8
  call void @string_htable_add(%struct.string_htable* %1, i8* %2)
  ret void
}

declare void @string_htable_add(%struct.string_htable*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @ppd_font_known_p(%struct.ppd* %ppd, i8* %fontname) #0 {
entry:
  %ppd.addr = alloca %struct.ppd*, align 8
  %fontname.addr = alloca i8*, align 8
  store %struct.ppd* %ppd, %struct.ppd** %ppd.addr, align 8
  store i8* %fontname, i8** %fontname.addr, align 8
  %0 = load %struct.ppd*, %struct.ppd** %ppd.addr, align 8
  %fonts = getelementptr inbounds %struct.ppd, %struct.ppd* %0, i32 0, i32 3
  %1 = load %struct.string_htable*, %struct.string_htable** %fonts, align 8
  %2 = load i8*, i8** %fontname.addr, align 8
  %call = call i8* @string_htable_get(%struct.string_htable* %1, i8* %2)
  %cmp = icmp ne i8* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i8* @string_htable_get(%struct.string_htable*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.ppd* @ppd_new() #0 {
entry:
  %res = alloca %struct.ppd*, align 8
  %call = call i8* @xmalloc(i64 32)
  %0 = bitcast i8* %call to %struct.ppd*
  store %struct.ppd* %0, %struct.ppd** %res, align 8
  %call1 = call %struct.string_htable* @string_htable_new()
  %1 = load %struct.ppd*, %struct.ppd** %res, align 8
  %fonts = getelementptr inbounds %struct.ppd, %struct.ppd* %1, i32 0, i32 3
  store %struct.string_htable* %call1, %struct.string_htable** %fonts, align 8
  %2 = load %struct.ppd*, %struct.ppd** %res, align 8
  %key = getelementptr inbounds %struct.ppd, %struct.ppd* %2, i32 0, i32 0
  store i8* null, i8** %key, align 8
  %3 = load %struct.ppd*, %struct.ppd** %res, align 8
  %modelname = getelementptr inbounds %struct.ppd, %struct.ppd* %3, i32 0, i32 1
  store i8* null, i8** %modelname, align 8
  %4 = load %struct.ppd*, %struct.ppd** %res, align 8
  %nickname = getelementptr inbounds %struct.ppd, %struct.ppd* %4, i32 0, i32 2
  store i8* null, i8** %nickname, align 8
  %5 = load %struct.ppd*, %struct.ppd** %res, align 8
  ret %struct.ppd* %5
}

declare i8* @xmalloc(i64) #1

declare %struct.string_htable* @string_htable_new() #1

; Function Attrs: nounwind uwtable
define void @ppd_free(%struct.ppd* %ppd) #0 {
entry:
  %ppd.addr = alloca %struct.ppd*, align 8
  store %struct.ppd* %ppd, %struct.ppd** %ppd.addr, align 8
  %0 = load %struct.ppd*, %struct.ppd** %ppd.addr, align 8
  %tobool = icmp ne %struct.ppd* %0, null
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %1 = load %struct.ppd*, %struct.ppd** %ppd.addr, align 8
  %fonts = getelementptr inbounds %struct.ppd, %struct.ppd* %1, i32 0, i32 3
  %2 = load %struct.string_htable*, %struct.string_htable** %fonts, align 8
  call void @string_htable_free(%struct.string_htable* %2)
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct.ppd*, %struct.ppd** %ppd.addr, align 8
  %key = getelementptr inbounds %struct.ppd, %struct.ppd* %3, i32 0, i32 0
  %4 = load i8*, i8** %key, align 8
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %do.body
  %5 = load %struct.ppd*, %struct.ppd** %ppd.addr, align 8
  %key3 = getelementptr inbounds %struct.ppd, %struct.ppd* %5, i32 0, i32 0
  %6 = load i8*, i8** %key3, align 8
  call void @free(i8* %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.4

do.body.4:                                        ; preds = %do.end
  %7 = load %struct.ppd*, %struct.ppd** %ppd.addr, align 8
  %modelname = getelementptr inbounds %struct.ppd, %struct.ppd* %7, i32 0, i32 1
  %8 = load i8*, i8** %modelname, align 8
  %tobool5 = icmp ne i8* %8, null
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %do.body.4
  %9 = load %struct.ppd*, %struct.ppd** %ppd.addr, align 8
  %modelname7 = getelementptr inbounds %struct.ppd, %struct.ppd* %9, i32 0, i32 1
  %10 = load i8*, i8** %modelname7, align 8
  call void @free(i8* %10) #4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %do.body.4
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  br label %do.body.10

do.body.10:                                       ; preds = %do.end.9
  %11 = load %struct.ppd*, %struct.ppd** %ppd.addr, align 8
  %nickname = getelementptr inbounds %struct.ppd, %struct.ppd* %11, i32 0, i32 2
  %12 = load i8*, i8** %nickname, align 8
  %tobool11 = icmp ne i8* %12, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.body.10
  %13 = load %struct.ppd*, %struct.ppd** %ppd.addr, align 8
  %nickname13 = getelementptr inbounds %struct.ppd, %struct.ppd* %13, i32 0, i32 2
  %14 = load i8*, i8** %nickname13, align 8
  call void @free(i8* %14) #4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.body.10
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  %15 = load %struct.ppd*, %struct.ppd** %ppd.addr, align 8
  %16 = bitcast %struct.ppd* %15 to i8*
  call void @free(i8* %16) #4
  br label %if.end.16

if.end.16:                                        ; preds = %do.end.15, %entry
  ret void
}

declare void @string_htable_free(%struct.string_htable*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.ppd* @_a2ps_ppd_get(i8** %path, i8* %key) #0 {
entry:
  %path.addr = alloca i8**, align 8
  %key.addr = alloca i8*, align 8
  %res = alloca %struct.ppd*, align 8
  %ppd_filepath = alloca i8*, align 8
  store i8** %path, i8*** %path.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8**, i8*** %path.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call = call i8* @xpw_find_file(i8** %0, i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0))
  store i8* %call, i8** %ppd_filepath, align 8
  %2 = load i8*, i8** %ppd_filepath, align 8
  %3 = load i8**, i8*** %path.addr, align 8
  %call1 = call %struct.ppd* @a2ps_ppd_parse(i8* %2, i8** %3)
  store %struct.ppd* %call1, %struct.ppd** %res, align 8
  %4 = load i8*, i8** %key.addr, align 8
  %call2 = call i8* @xstrdup(i8* %4)
  %5 = load %struct.ppd*, %struct.ppd** %res, align 8
  %key3 = getelementptr inbounds %struct.ppd, %struct.ppd* %5, i32 0, i32 0
  store i8* %call2, i8** %key3, align 8
  %6 = load i8*, i8** %ppd_filepath, align 8
  call void @free(i8* %6) #4
  %7 = load %struct.ppd*, %struct.ppd** %res, align 8
  ret %struct.ppd* %7
}

declare i8* @xpw_find_file(i8**, i8*, i8*) #1

declare %struct.ppd* @a2ps_ppd_parse(i8*, i8**) #1

declare i8* @xstrdup(i8*) #1

; Function Attrs: nounwind uwtable
define void @_a2ps_ppd_list_short(i8** %path, %struct._IO_FILE* %stream) #0 {
entry:
  %path.addr = alloca i8**, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store i8** %path, i8*** %path.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0)) #4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @fputs(i8* %call, %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %3 = load i8**, i8*** %path.addr, align 8
  call void @pw_lister_on_suffix(%struct._IO_FILE* %2, i8** %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0))
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare void @pw_lister_on_suffix(%struct._IO_FILE*, i8**, i8*) #1

; Function Attrs: nounwind uwtable
define void @_a2ps_ppd_list_long(i8** %path, %struct._IO_FILE* %stream) #0 {
entry:
  %path.addr = alloca i8**, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %entries = alloca %struct.darray*, align 8
  %i = alloca i64, align 8
  store i8** %path, i8*** %path.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load i8**, i8*** %path.addr, align 8
  %call = call %struct.darray* @pw_glob_on_suffix(i8** %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0))
  store %struct.darray* %call, %struct.darray** %entries, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0)) #4
  call void (%struct._IO_FILE*, i8, i32, i8*, ...) @title(%struct._IO_FILE* %1, i8 signext 61, i32 1, i8* %call1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %2)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.darray*, %struct.darray** %entries, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %4, i32 0, i32 5
  %5 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8**, i8*** %path.addr, align 8
  %7 = load i64, i64* %i, align 8
  %8 = load %struct.darray*, %struct.darray** %entries, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %8, i32 0, i32 6
  %9 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %7
  %10 = load i8*, i8** %arrayidx, align 8
  %call3 = call %struct.ppd* @_a2ps_ppd_get(i8** %6, i8* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @ppd_self_print(%struct.ppd* %call3, %struct._IO_FILE* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call4 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, i64* %i, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.darray*, %struct.darray** %entries, align 8
  call void @da_free(%struct.darray* %14, void (i8*)* @free)
  ret void
}

declare %struct.darray* @pw_glob_on_suffix(i8**, i8*) #1

declare void @title(%struct._IO_FILE*, i8 signext, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @ppd_self_print(%struct.ppd* %ppd, %struct._IO_FILE* %stream) #0 {
entry:
  %ppd.addr = alloca %struct.ppd*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %cp = alloca i8*, align 8
  %fonts = alloca i8**, align 8
  store %struct.ppd* %ppd, %struct.ppd** %ppd.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.ppd*, %struct.ppd** %ppd.addr, align 8
  %nickname = getelementptr inbounds %struct.ppd, %struct.ppd* %0, i32 0, i32 2
  %1 = load i8*, i8** %nickname, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.ppd*, %struct.ppd** %ppd.addr, align 8
  %nickname1 = getelementptr inbounds %struct.ppd, %struct.ppd* %2, i32 0, i32 2
  %3 = load i8*, i8** %nickname1, align 8
  store i8* %3, i8** %cp, align 8
  br label %if.end.6

if.else:                                          ; preds = %entry
  %4 = load %struct.ppd*, %struct.ppd** %ppd.addr, align 8
  %modelname = getelementptr inbounds %struct.ppd, %struct.ppd* %4, i32 0, i32 1
  %5 = load i8*, i8** %modelname, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %6 = load %struct.ppd*, %struct.ppd** %ppd.addr, align 8
  %modelname4 = getelementptr inbounds %struct.ppd, %struct.ppd* %6, i32 0, i32 1
  %7 = load i8*, i8** %modelname4, align 8
  store i8* %7, i8** %cp, align 8
  br label %if.end

if.else.5:                                        ; preds = %if.else
  %8 = load %struct.ppd*, %struct.ppd** %ppd.addr, align 8
  %key = getelementptr inbounds %struct.ppd, %struct.ppd* %8, i32 0, i32 0
  %9 = load i8*, i8** %key, align 8
  store i8* %9, i8** %cp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %11 = load i8*, i8** %cp, align 8
  %12 = load %struct.ppd*, %struct.ppd** %ppd.addr, align 8
  %key7 = getelementptr inbounds %struct.ppd, %struct.ppd* %12, i32 0, i32 0
  %13 = load i8*, i8** %key7, align 8
  call void (%struct._IO_FILE*, i8, i32, i8*, ...) @title(%struct._IO_FILE* %10, i8 signext 45, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* %11, i8* %13)
  %14 = load %struct.ppd*, %struct.ppd** %ppd.addr, align 8
  %fonts8 = getelementptr inbounds %struct.ppd, %struct.ppd* %14, i32 0, i32 3
  %15 = load %struct.string_htable*, %struct.string_htable** %fonts8, align 8
  %call = call i8** @string_htable_dump_sorted(%struct.string_htable* %15)
  store i8** %call, i8*** %fonts, align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0)) #4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call10 = call i32 @fputs(i8* %call9, %struct._IO_FILE* %16)
  %17 = load i8**, i8*** %fonts, align 8
  %18 = load i8*, i8** %17, align 8
  %tobool11 = icmp ne i8* %18, null
  br i1 %tobool11, label %if.else.15, label %if.then.12

if.then.12:                                       ; preds = %if.end.6
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0)) #4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call14 = call i32 @fputs(i8* %call13, %struct._IO_FILE* %19)
  br label %if.end.17

if.else.15:                                       ; preds = %if.end.6
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call16 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %22 = load i8**, i8*** %fonts, align 8
  call void @lister_fprint_separated(%struct.lister* null, %struct._IO_FILE* %21, i8** %22, i64 -1, i64 (i8*)* @strlen, void (i8*, %struct._IO_FILE*)* bitcast (i32 (i8*, %struct._IO_FILE*)* @fputs to void (i8*, %struct._IO_FILE*)*))
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.12
  %23 = load i8**, i8*** %fonts, align 8
  %24 = bitcast i8** %23 to i8*
  call void @free(i8* %24) #4
  ret void
}

declare void @da_free(%struct.darray*, void (i8*)*) #1

declare i8** @string_htable_dump_sorted(%struct.string_htable*) #1

declare void @lister_fprint_separated(%struct.lister*, %struct._IO_FILE*, i8**, i64, i64 (i8*)*, void (i8*, %struct._IO_FILE*)*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
