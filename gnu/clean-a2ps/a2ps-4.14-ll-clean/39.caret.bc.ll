; ModuleID = './lib/caret.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a2ps_job = type { i8**, i64, %struct.a2ps_common_s, i8*, %struct.hash_table_s*, %struct.pair_htable*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pair_htable*, %struct.output*, i32, [10 x i8*], i8*, %struct.a2ps_printers_s*, i32, %struct.stream*, i8, i32, i32, i32, i32, i32, i32, i8, i8*, %struct.medium*, i8*, i32, i32, i32, float, %struct.encoding*, i8*, %struct.encoding*, %struct.encoding*, %struct.hash_table_s*, %struct.pair_htable*, %struct.hash_table_s*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [256 x i8], [256 x i8], [256 x i8], [256 x i8], %struct.pair_htable*, %struct.ps_status*, %struct.output*, [10 x i8*], %struct.page_range*, %struct.darray* }
%struct.a2ps_common_s = type { i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.a2ps_printers_s = type opaque
%struct.stream = type opaque
%struct.medium = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.encoding = type opaque
%struct.hash_table_s = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct.pair_htable = type opaque
%struct.ps_status = type { i32, i64, i32, float, i32, i8*, i8*, %struct.encoding*, i32, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.output*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.output = type opaque
%struct.page_range = type opaque
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"space (i.e., ` ')\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"octal (i.e., `\5C001' etc.)\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"hexadecimal (i.e., `\5Cx0a' etc.)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"caret (i.e., `^C', `M-^C' etc.)\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"emacs (i.e., `C-c', `M-C-c' etc.)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"question-mark (i.e., `?')\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"switch of unprintable_format_to_string\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"\5C\5C%03o\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"\5C\5Cx%02x\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"M-\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"^?\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"C-\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"C-?\00", align 1

; Function Attrs: nounwind uwtable
define i8* @unprintable_format_to_string(i32 %format) #0 {
entry:
  %retval = alloca i8*, align 8
  %format.addr = alloca i32, align 4
  store i32 %format, i32* %format.addr, align 4
  %0 = load i32, i32* %format.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.3
    i32 0, label %sw.bb.5
    i32 5, label %sw.bb.7
    i32 2, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)) #4
  store i8* %call, i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #4
  store i8* %call2, i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0)) #4
  store i8* %call4, i8** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0)) #4
  store i8* %call6, i8** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0)) #4
  store i8* %call8, i8** %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0)) #4
  store i8* %call10, i8** %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %retval
  ret i8* %1
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #1

declare void @error(i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @escape_unprintable(%struct.a2ps_job* %job, i32 %c, i8* %res) #0 {
entry:
  %retval = alloca i32, align 4
  %job.addr = alloca %struct.a2ps_job*, align 8
  %c.addr = alloca i32, align 4
  %res.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %__len = alloca i32, align 4
  %__len10 = alloca i32, align 4
  %__len26 = alloca i32, align 4
  %__len36 = alloca i32, align 4
  %__len54 = alloca i32, align 4
  %__len79 = alloca i32, align 4
  %__len98 = alloca i32, align 4
  store %struct.a2ps_job* %job, %struct.a2ps_job** %job.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i8* %res, i8** %res.addr, align 8
  store i32 0, i32* %len, align 4
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** %job.addr, align 8
  %unprintable_format = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 30
  %1 = load i32, i32* %unprintable_format, align 4
  switch i32 %1, label %sw.epilog [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.1
    i32 2, label %sw.bb.3
    i32 1, label %sw.bb.8
    i32 0, label %sw.bb.19
    i32 5, label %sw.bb.66
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i8*, i8** %res.addr, align 8
  %3 = load i32, i32* %c.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 %3) #4
  store i32 4, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %4 = load i8*, i8** %res.addr, align 8
  %5 = load i32, i32* %c.addr, align 4
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 %5) #4
  store i32 4, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb.3
  %6 = load i8*, i8** %res.addr, align 8
  %call4 = call i64 @strlen(i8* %6) #5
  %conv = trunc i64 %call4 to i32
  store i32 %conv, i32* %__len, align 4
  %7 = load i8*, i8** %res.addr, align 8
  %8 = load i32, i32* %__len, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8 63, i8* %add.ptr, align 1
  %9 = load i8*, i8** %res.addr, align 8
  %10 = load i32, i32* %__len, align 4
  %idx.ext5 = sext i32 %10 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %9, i64 %idx.ext5
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr6, i64 1
  store i8 0, i8* %add.ptr7, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 1, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  br label %do.body.9

do.body.9:                                        ; preds = %sw.bb.8
  %11 = load i8*, i8** %res.addr, align 8
  %call11 = call i64 @strlen(i8* %11) #5
  %conv12 = trunc i64 %call11 to i32
  store i32 %conv12, i32* %__len10, align 4
  %12 = load i8*, i8** %res.addr, align 8
  %13 = load i32, i32* %__len10, align 4
  %idx.ext13 = sext i32 %13 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %12, i64 %idx.ext13
  store i8 32, i8* %add.ptr14, align 1
  %14 = load i8*, i8** %res.addr, align 8
  %15 = load i32, i32* %__len10, align 4
  %idx.ext15 = sext i32 %15 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %14, i64 %idx.ext15
  %add.ptr17 = getelementptr inbounds i8, i8* %add.ptr16, i64 1
  store i8 0, i8* %add.ptr17, align 1
  br label %do.end.18

do.end.18:                                        ; preds = %do.body.9
  store i32 1, i32* %retval
  br label %return

sw.bb.19:                                         ; preds = %entry
  %16 = load i32, i32* %c.addr, align 4
  %cmp = icmp slt i32 127, %16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.19
  %17 = load i8*, i8** %res.addr, align 8
  %call21 = call i8* @strcat(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)) #4
  %18 = load i32, i32* %len, align 4
  %add = add nsw i32 %18, 2
  store i32 %add, i32* %len, align 4
  %19 = load i32, i32* %c.addr, align 4
  %and = and i32 %19, 127
  store i32 %and, i32* %c.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.19
  %20 = load i32, i32* %c.addr, align 4
  %cmp22 = icmp slt i32 %20, 32
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.end
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.24
  %21 = load i8*, i8** %res.addr, align 8
  %call27 = call i64 @strlen(i8* %21) #5
  %conv28 = trunc i64 %call27 to i32
  store i32 %conv28, i32* %__len26, align 4
  %22 = load i8*, i8** %res.addr, align 8
  %23 = load i32, i32* %__len26, align 4
  %idx.ext29 = sext i32 %23 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %22, i64 %idx.ext29
  store i8 94, i8* %add.ptr30, align 1
  %24 = load i8*, i8** %res.addr, align 8
  %25 = load i32, i32* %__len26, align 4
  %idx.ext31 = sext i32 %25 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %24, i64 %idx.ext31
  %add.ptr33 = getelementptr inbounds i8, i8* %add.ptr32, i64 1
  store i8 0, i8* %add.ptr33, align 1
  br label %do.end.34

do.end.34:                                        ; preds = %do.body.25
  br label %do.body.35

do.body.35:                                       ; preds = %do.end.34
  %26 = load i8*, i8** %res.addr, align 8
  %call37 = call i64 @strlen(i8* %26) #5
  %conv38 = trunc i64 %call37 to i32
  store i32 %conv38, i32* %__len36, align 4
  %27 = load i32, i32* %c.addr, align 4
  %conv39 = trunc i32 %27 to i8
  %28 = load i8*, i8** %res.addr, align 8
  %29 = load i32, i32* %__len36, align 4
  %idx.ext40 = sext i32 %29 to i64
  %add.ptr41 = getelementptr inbounds i8, i8* %28, i64 %idx.ext40
  store i8 %conv39, i8* %add.ptr41, align 1
  %30 = load i8*, i8** %res.addr, align 8
  %31 = load i32, i32* %__len36, align 4
  %idx.ext42 = sext i32 %31 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %30, i64 %idx.ext42
  %add.ptr44 = getelementptr inbounds i8, i8* %add.ptr43, i64 1
  store i8 0, i8* %add.ptr44, align 1
  br label %do.end.45

do.end.45:                                        ; preds = %do.body.35
  %32 = load i32, i32* %len, align 4
  %add46 = add nsw i32 %32, 2
  store i32 %add46, i32* %len, align 4
  br label %if.end.65

if.else:                                          ; preds = %if.end
  %33 = load i32, i32* %c.addr, align 4
  %cmp47 = icmp eq i32 %33, 127
  br i1 %cmp47, label %if.then.49, label %if.else.52

if.then.49:                                       ; preds = %if.else
  %34 = load i8*, i8** %res.addr, align 8
  %call50 = call i8* @strcat(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)) #4
  %35 = load i32, i32* %len, align 4
  %add51 = add nsw i32 %35, 2
  store i32 %add51, i32* %len, align 4
  br label %if.end.64

if.else.52:                                       ; preds = %if.else
  br label %do.body.53

do.body.53:                                       ; preds = %if.else.52
  %36 = load i8*, i8** %res.addr, align 8
  %call55 = call i64 @strlen(i8* %36) #5
  %conv56 = trunc i64 %call55 to i32
  store i32 %conv56, i32* %__len54, align 4
  %37 = load i32, i32* %c.addr, align 4
  %conv57 = trunc i32 %37 to i8
  %38 = load i8*, i8** %res.addr, align 8
  %39 = load i32, i32* %__len54, align 4
  %idx.ext58 = sext i32 %39 to i64
  %add.ptr59 = getelementptr inbounds i8, i8* %38, i64 %idx.ext58
  store i8 %conv57, i8* %add.ptr59, align 1
  %40 = load i8*, i8** %res.addr, align 8
  %41 = load i32, i32* %__len54, align 4
  %idx.ext60 = sext i32 %41 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %40, i64 %idx.ext60
  %add.ptr62 = getelementptr inbounds i8, i8* %add.ptr61, i64 1
  store i8 0, i8* %add.ptr62, align 1
  br label %do.end.63

do.end.63:                                        ; preds = %do.body.53
  %42 = load i32, i32* %len, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %len, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %do.end.63, %if.then.49
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %do.end.45
  %43 = load i32, i32* %len, align 4
  store i32 %43, i32* %retval
  br label %return

sw.bb.66:                                         ; preds = %entry
  %44 = load i32, i32* %c.addr, align 4
  %cmp67 = icmp slt i32 127, %44
  br i1 %cmp67, label %if.then.69, label %if.end.73

if.then.69:                                       ; preds = %sw.bb.66
  %45 = load i8*, i8** %res.addr, align 8
  %call70 = call i8* @strcat(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)) #4
  %46 = load i32, i32* %len, align 4
  %add71 = add nsw i32 %46, 2
  store i32 %add71, i32* %len, align 4
  %47 = load i32, i32* %c.addr, align 4
  %and72 = and i32 %47, 127
  store i32 %and72, i32* %c.addr, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.69, %sw.bb.66
  %48 = load i32, i32* %c.addr, align 4
  %cmp74 = icmp slt i32 %48, 32
  br i1 %cmp74, label %if.then.76, label %if.else.90

if.then.76:                                       ; preds = %if.end.73
  %49 = load i8*, i8** %res.addr, align 8
  %call77 = call i8* @strcat(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)) #4
  br label %do.body.78

do.body.78:                                       ; preds = %if.then.76
  %50 = load i8*, i8** %res.addr, align 8
  %call80 = call i64 @strlen(i8* %50) #5
  %conv81 = trunc i64 %call80 to i32
  store i32 %conv81, i32* %__len79, align 4
  %51 = load i32, i32* %c.addr, align 4
  %conv82 = trunc i32 %51 to i8
  %52 = load i8*, i8** %res.addr, align 8
  %53 = load i32, i32* %__len79, align 4
  %idx.ext83 = sext i32 %53 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %52, i64 %idx.ext83
  store i8 %conv82, i8* %add.ptr84, align 1
  %54 = load i8*, i8** %res.addr, align 8
  %55 = load i32, i32* %__len79, align 4
  %idx.ext85 = sext i32 %55 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %54, i64 %idx.ext85
  %add.ptr87 = getelementptr inbounds i8, i8* %add.ptr86, i64 1
  store i8 0, i8* %add.ptr87, align 1
  br label %do.end.88

do.end.88:                                        ; preds = %do.body.78
  %56 = load i32, i32* %len, align 4
  %add89 = add nsw i32 %56, 3
  store i32 %add89, i32* %len, align 4
  br label %if.end.110

if.else.90:                                       ; preds = %if.end.73
  %57 = load i32, i32* %c.addr, align 4
  %cmp91 = icmp eq i32 %57, 127
  br i1 %cmp91, label %if.then.93, label %if.else.96

if.then.93:                                       ; preds = %if.else.90
  %58 = load i8*, i8** %res.addr, align 8
  %call94 = call i8* @strcat(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #4
  %59 = load i32, i32* %len, align 4
  %add95 = add nsw i32 %59, 3
  store i32 %add95, i32* %len, align 4
  br label %if.end.109

if.else.96:                                       ; preds = %if.else.90
  br label %do.body.97

do.body.97:                                       ; preds = %if.else.96
  %60 = load i8*, i8** %res.addr, align 8
  %call99 = call i64 @strlen(i8* %60) #5
  %conv100 = trunc i64 %call99 to i32
  store i32 %conv100, i32* %__len98, align 4
  %61 = load i32, i32* %c.addr, align 4
  %conv101 = trunc i32 %61 to i8
  %62 = load i8*, i8** %res.addr, align 8
  %63 = load i32, i32* %__len98, align 4
  %idx.ext102 = sext i32 %63 to i64
  %add.ptr103 = getelementptr inbounds i8, i8* %62, i64 %idx.ext102
  store i8 %conv101, i8* %add.ptr103, align 1
  %64 = load i8*, i8** %res.addr, align 8
  %65 = load i32, i32* %__len98, align 4
  %idx.ext104 = sext i32 %65 to i64
  %add.ptr105 = getelementptr inbounds i8, i8* %64, i64 %idx.ext104
  %add.ptr106 = getelementptr inbounds i8, i8* %add.ptr105, i64 1
  store i8 0, i8* %add.ptr106, align 1
  br label %do.end.107

do.end.107:                                       ; preds = %do.body.97
  %66 = load i32, i32* %len, align 4
  %inc108 = add nsw i32 %66, 1
  store i32 %inc108, i32* %len, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %do.end.107, %if.then.93
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %do.end.88
  %67 = load i32, i32* %len, align 4
  store i32 %67, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.110, %if.end.65, %do.end.18, %do.end, %sw.bb.1, %sw.bb
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
