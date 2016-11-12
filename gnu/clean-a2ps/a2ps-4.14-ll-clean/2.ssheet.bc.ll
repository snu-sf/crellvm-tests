; ModuleID = './src/ssheet.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fface_s = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.hash_table_s = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct.a2ps_job = type { i8**, i64, %struct.a2ps_common_s, i8*, %struct.hash_table_s*, %struct.pair_htable*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pair_htable*, %struct.output*, i32, [10 x i8*], i8*, %struct.a2ps_printers_s*, i32, %struct.stream*, i8, i32, i32, i32, i32, i32, i32, i8, i8*, %struct.medium*, i8*, i32, i32, i32, float, %struct.encoding*, i8*, %struct.encoding*, %struct.encoding*, %struct.hash_table_s*, %struct.pair_htable*, %struct.hash_table_s*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [256 x i8], [256 x i8], [256 x i8], [256 x i8], %struct.pair_htable*, %struct.ps_status*, %struct.output*, [10 x i8*], %struct.page_range*, %struct.darray* }
%struct.a2ps_common_s = type { i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.a2ps_printers_s = type opaque
%struct.stream = type opaque
%struct.medium = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.encoding = type opaque
%struct.pair_htable = type opaque
%struct.ps_status = type { i32, i64, i32, float, i32, i8*, i8*, %struct.encoding*, i32, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.output*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.output = type opaque
%struct.page_range = type opaque
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct.pattern = type { i8*, i64 }
%struct.faced_string = type { i8*, i32, %struct.fface_s }
%struct.style_sheet = type { i8*, i8*, i8*, [4 x i32], [4 x i32], i8*, %struct.darray*, i32, [256 x i8], [256 x i8], %struct.words*, %struct.words*, %struct.darray* }
%struct.words = type { %struct.darray*, %struct.darray*, [256 x %struct.rule**], [256 x %struct.rule**] }
%struct.rule = type { i8*, %struct.re_pattern_buffer*, %struct.darray* }
%struct.re_pattern_buffer = type { i8*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.sequence = type { %struct.rule*, %struct.fface_s, %struct.words*, %struct.words* }
%struct.file_job = type opaque

@.str = private unnamed_addr constant [5 x i8] c"4.14\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Rhs\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\5Cb(%s)\5Cb\00", align 1
@Plain_fface = external global %struct.fface_s, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"ssheet.c\00", align 1
@String_fface = external global %struct.fface_s, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"C Close: strings\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"C Close: regex\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" ->\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Keywords: Strings\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Keywords: Regexps\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Operators: Strings\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Operators: Regexps\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Sequences\00", align 1
@msg_verbosity = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.13 = private unnamed_addr constant [34 x i8] c"Finalizing style sheet \22%s\22 (%s)\0A\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_\00", align 1
@.str.15 = private unnamed_addr constant [64 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_0123456789\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"---------- After Finalization of %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Checking coherence of \22%s\22 (%s)\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"\22%s\22 (%s) is sane.\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"\22%s\22 (%s) is corrupted.\0A\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"---------- End of Finalization of %s\0A\00", align 1
@style_sheets = external global %struct.hash_table_s*, align 8
@.str.21 = private unnamed_addr constant [32 x i8] c"Style sheet \22%s\22 (%s), version \00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Written by %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"It inherits from: \00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"Case %ssensitive\0A\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"First alphabet is \00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"Second alphabet is \00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Known Style Sheets\00", align 1
@job = external global %struct.a2ps_job*, align 8
@.str.33 = private unnamed_addr constant [5 x i8] c".ssh\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"sheets.html generation\00", align 1
@.str.35 = private unnamed_addr constant [314 x i8] c"<html>\0A#{html.begin.hook}\0A<head>\0A   <title>#{html.title:-GNU a2ps language support}</title>\0A</head>\0A\0A<h1 align=\5C\22CENTER\5C\22>\0A#{html.title.1:-GNU a2ps language support}\0A</h1>\0A#{html.hline:-<hline>}\0A<h2>Current <a href=\22sheets.mp\22>sheets.map</a></h2>\0A<p>It is the list of rules to decide what style sheet to use.</p>\0A\00", align 1
@.str.36 = private unnamed_addr constant [202 x i8] c"#{html.hline:-<hline>}\0A<h2>Sumary of current style sheets</h2>\0A<p>There is a <a href=\22sheets.tar.gz\22>package</a> which contains them all.  Its index (sum of the style sheets version number) is <strong>\00", align 1
@.str.37 = private unnamed_addr constant [56 x i8] c"</strong>, and the highest requirement is a2ps version \00", align 1
@.str.38 = private unnamed_addr constant [48 x i8] c".  Links point to their detailed exposure.</p>\0A\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"<table border=\220\22 cellpadding=\220\22><tr>\0A\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"<td valign=\22top\22><ul>\0A\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"<li><a href=\22#%s\22>%s <code>\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"</a></code></li>\0A\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"</ul></td>\0A\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"</tr></table>\0A\00", align 1
@.str.45 = private unnamed_addr constant [71 x i8] c"#{html.hline:-<hline>}\0A<h2>Detailed list of current style sheets</h2>\0A\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"Links point to their files.</p>\0A\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"<ul>\0A\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"</ul>\0A\00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"#{html.end.hook}\0A</body>\0A</html>\0A\00", align 1
@.str.50 = private unnamed_addr constant [67 x i8] c"The current index (sum of all the style sheets version number) is \00", align 1
@.str.51 = private unnamed_addr constant [46 x i8] c" and the highest requirement is a2ps version \00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c",;+\00", align 1
@re_syntax_table = external global i8*, align 8
@.str.54 = private unnamed_addr constant [7 x i8] c"\22%s\22: \00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"\5C%d: \00", align 1
@.str.56 = private unnamed_addr constant [43 x i8] c"cannot compile regular expression `%s': %s\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"/%s/ -> \00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"\22%s\22 -> \00", align 1
@No_fface = external global %struct.fface_s, align 4
@.str.59 = private unnamed_addr constant [28 x i8] c"C usual exceptions: strings\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"C usual exceptions: regexps\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"\5C'\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"\5C\5C\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"\5C\22\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"Ancestors\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"<undefined>\0A\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"%s (%s.ssh version \00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"%s (%s.ssh)\0A\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"Written by \00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.73 = private unnamed_addr constant [64 x i8] c"<li><p><strong><a href=\22%s.ssh\22 name=\22%s\22>%s</a></strong>.</p>\0A\00", align 1
@.str.74 = private unnamed_addr constant [67 x i8] c"<li><p><strong><a href=\22%s.ssh\22 name=\22%s\22>%s</a></strong> version \00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c".</p>\0A\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"<p>\00", align 1
@.str.77 = private unnamed_addr constant [26 x i8] c"It requires a2ps version \00", align 1
@.str.78 = private unnamed_addr constant [27 x i8] c"%s<a href=\22#%s\22>%s.ssh</a>\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"</p>\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"<p>%s</p>\0A\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"</li>\0A\0A\00", align 1
@.str.82 = private unnamed_addr constant [43 x i8] c"@deftp {Style Sheet} {%s} (@file{%s.ssh})\0A\00", align 1
@.str.83 = private unnamed_addr constant [33 x i8] c"It requires @code{a2ps} version \00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c".  \0A\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"%s@file{%s.ssh}\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"@end deftp\0A\0A\00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"%s.ssh:`%s' is defined twice\00", align 1
@.str.88 = private unnamed_addr constant [39 x i8] c"%s.ssh:`%s' uses upper case characters\00", align 1
@.str.89 = private unnamed_addr constant [35 x i8] c"Creating a mixed style sheet \22%s\22\0A\00", align 1
@.str.90 = private unnamed_addr constant [48 x i8] c"cannot find style sheet `%s': using plain style\00", align 1
@.str.91 = private unnamed_addr constant [22 x i8] c"cannot find file `%s'\00", align 1

; Function Attrs: nounwind uwtable
define %struct.pattern* @new_pattern(i8* %pattern, i64 %len) #0 {
entry:
  %pattern.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %res = alloca %struct.pattern*, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %call = call i8* @xmalloc(i64 16)
  %0 = bitcast i8* %call to %struct.pattern*
  store %struct.pattern* %0, %struct.pattern** %res, align 8
  %1 = load i8*, i8** %pattern.addr, align 8
  %2 = load %struct.pattern*, %struct.pattern** %res, align 8
  %pattern1 = getelementptr inbounds %struct.pattern, %struct.pattern* %2, i32 0, i32 0
  store i8* %1, i8** %pattern1, align 8
  %3 = load i64, i64* %len.addr, align 8
  %4 = load %struct.pattern*, %struct.pattern** %res, align 8
  %len2 = getelementptr inbounds %struct.pattern, %struct.pattern* %4, i32 0, i32 1
  store i64 %3, i64* %len2, align 8
  %5 = load %struct.pattern*, %struct.pattern** %res, align 8
  ret %struct.pattern* %5
}

declare i8* @xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define %struct.faced_string* @faced_string_new(i8* %string, i32 %reg_ref, i64 %face.coerce) #0 {
entry:
  %face = alloca %struct.fface_s, align 8
  %string.addr = alloca i8*, align 8
  %reg_ref.addr = alloca i32, align 4
  %res = alloca %struct.faced_string*, align 8
  %0 = bitcast %struct.fface_s* %face to i64*
  store i64 %face.coerce, i64* %0, align 8
  store i8* %string, i8** %string.addr, align 8
  store i32 %reg_ref, i32* %reg_ref.addr, align 4
  %call = call i8* @xmalloc(i64 24)
  %1 = bitcast i8* %call to %struct.faced_string*
  store %struct.faced_string* %1, %struct.faced_string** %res, align 8
  %2 = load i8*, i8** %string.addr, align 8
  %3 = load %struct.faced_string*, %struct.faced_string** %res, align 8
  %string1 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %3, i32 0, i32 0
  store i8* %2, i8** %string1, align 8
  %4 = load i32, i32* %reg_ref.addr, align 4
  %5 = load %struct.faced_string*, %struct.faced_string** %res, align 8
  %reg_ref2 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %5, i32 0, i32 1
  store i32 %4, i32* %reg_ref2, align 4
  %6 = load %struct.faced_string*, %struct.faced_string** %res, align 8
  %face3 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %6, i32 0, i32 2
  %7 = bitcast %struct.fface_s* %face3 to i8*
  %8 = bitcast %struct.fface_s* %face to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 4, i1 false)
  %9 = load %struct.faced_string*, %struct.faced_string** %res, align 8
  ret %struct.faced_string* %9
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @style_sheet_set_version(%struct.style_sheet* %sheet, i8* %version_string) #0 {
entry:
  %sheet.addr = alloca %struct.style_sheet*, align 8
  %version_string.addr = alloca i8*, align 8
  store %struct.style_sheet* %sheet, %struct.style_sheet** %sheet.addr, align 8
  store i8* %version_string, i8** %version_string.addr, align 8
  %0 = load i8*, i8** %version_string.addr, align 8
  %1 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %version = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %1, i32 0, i32 3
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %version, i32 0, i32 0
  call void @string_to_version(i8* %0, i32* %arraydecay)
  ret void
}

declare void @string_to_version(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @style_sheet_set_requirement(%struct.style_sheet* %sheet, i8* %version_string) #0 {
entry:
  %retval = alloca i32, align 4
  %sheet.addr = alloca %struct.style_sheet*, align 8
  %version_string.addr = alloca i8*, align 8
  %a2ps_version = alloca [4 x i32], align 16
  store %struct.style_sheet* %sheet, %struct.style_sheet** %sheet.addr, align 8
  store i8* %version_string, i8** %version_string.addr, align 8
  %0 = load i8*, i8** %version_string.addr, align 8
  %1 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %requirement = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %1, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %requirement, i32 0, i32 0
  call void @string_to_version(i8* %0, i32* %arraydecay)
  %arraydecay1 = getelementptr inbounds [4 x i32], [4 x i32]* %a2ps_version, i32 0, i32 0
  call void @string_to_version(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32* %arraydecay1)
  %2 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %requirement2 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %2, i32 0, i32 4
  %arraydecay3 = getelementptr inbounds [4 x i32], [4 x i32]* %requirement2, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [4 x i32], [4 x i32]* %a2ps_version, i32 0, i32 0
  %call = call i32 @version_cmp(i32* %arraydecay3, i32* %arraydecay4)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare i32 @version_cmp(i32*, i32*) #1

; Function Attrs: nounwind uwtable
define %struct.darray* @rhs_new() #0 {
entry:
  %res = alloca %struct.darray*, align 8
  %call = call %struct.darray* @da_new(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64 2, i32 2, i64 2, void (i8*, %struct._IO_FILE*)* bitcast (void (%struct.faced_string*, %struct._IO_FILE*)* @faced_string_self_print to void (i8*, %struct._IO_FILE*)*), i32 (i8*, i8*)* null)
  store %struct.darray* %call, %struct.darray** %res, align 8
  %0 = load %struct.darray*, %struct.darray** %res, align 8
  ret %struct.darray* %0
}

declare %struct.darray* @da_new(i8*, i64, i32, i64, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @faced_string_self_print(%struct.faced_string* %faced_string, %struct._IO_FILE* %stream) #0 {
entry:
  %faced_string.addr = alloca %struct.faced_string*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.faced_string* %faced_string, %struct.faced_string** %faced_string.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.faced_string*, %struct.faced_string** %faced_string.addr, align 8
  %string = getelementptr inbounds %struct.faced_string, %struct.faced_string* %0, i32 0, i32 0
  %1 = load i8*, i8** %string, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %3 = load %struct.faced_string*, %struct.faced_string** %faced_string.addr, align 8
  %string1 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %3, i32 0, i32 0
  %4 = load i8*, i8** %string1, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i8* %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %6 = load %struct.faced_string*, %struct.faced_string** %faced_string.addr, align 8
  %reg_ref = getelementptr inbounds %struct.faced_string, %struct.faced_string* %6, i32 0, i32 1
  %7 = load i32, i32* %reg_ref, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.faced_string*, %struct.faced_string** %faced_string.addr, align 8
  %face = getelementptr inbounds %struct.faced_string, %struct.faced_string* %8, i32 0, i32 2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %10 = bitcast %struct.fface_s* %face to i64*
  %11 = load i64, i64* %10, align 4
  call void @fface_self_print(i64 %11, %struct._IO_FILE* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.darray* @rhs_new_single(i8* %string, i32 %reg_ref, i64 %face.coerce) #0 {
entry:
  %face = alloca %struct.fface_s, align 8
  %string.addr = alloca i8*, align 8
  %reg_ref.addr = alloca i32, align 4
  %res = alloca %struct.darray*, align 8
  %0 = bitcast %struct.fface_s* %face to i64*
  store i64 %face.coerce, i64* %0, align 8
  store i8* %string, i8** %string.addr, align 8
  store i32 %reg_ref, i32* %reg_ref.addr, align 4
  %call = call %struct.darray* @da_new(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64 2, i32 2, i64 2, void (i8*, %struct._IO_FILE*)* bitcast (void (%struct.faced_string*, %struct._IO_FILE*)* @faced_string_self_print to void (i8*, %struct._IO_FILE*)*), i32 (i8*, i8*)* null)
  store %struct.darray* %call, %struct.darray** %res, align 8
  %1 = load %struct.darray*, %struct.darray** %res, align 8
  %2 = load i8*, i8** %string.addr, align 8
  %3 = load i32, i32* %reg_ref.addr, align 4
  %4 = bitcast %struct.fface_s* %face to i64*
  %5 = load i64, i64* %4, align 4
  %call1 = call %struct.faced_string* @faced_string_new(i8* %2, i32 %3, i64 %5)
  %6 = bitcast %struct.faced_string* %call1 to i8*
  call void @da_append(%struct.darray* %1, i8* %6)
  %7 = load %struct.darray*, %struct.darray** %res, align 8
  ret %struct.darray* %7
}

declare void @da_append(%struct.darray*, i8*) #1

; Function Attrs: nounwind uwtable
define void @rhs_add(%struct.darray* %dest, %struct.faced_string* %str) #0 {
entry:
  %dest.addr = alloca %struct.darray*, align 8
  %str.addr = alloca %struct.faced_string*, align 8
  store %struct.darray* %dest, %struct.darray** %dest.addr, align 8
  store %struct.faced_string* %str, %struct.faced_string** %str.addr, align 8
  %0 = load %struct.darray*, %struct.darray** %dest.addr, align 8
  %1 = load %struct.faced_string*, %struct.faced_string** %str.addr, align 8
  %2 = bitcast %struct.faced_string* %1 to i8*
  call void @da_append(%struct.darray* %0, i8* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @rhs_self_print(%struct.darray* %rhs, %struct._IO_FILE* %stream) #0 {
entry:
  %rhs.addr = alloca %struct.darray*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i64, align 8
  store %struct.darray* %rhs, %struct.darray** %rhs.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %0)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load %struct.darray*, %struct.darray** %rhs.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %2, i32 0, i32 5
  %3 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.darray*, %struct.darray** %rhs.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 6
  %6 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %4
  %7 = load i8*, i8** %arrayidx, align 8
  %8 = bitcast i8* %7 to %struct.faced_string*
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @faced_string_self_print(%struct.faced_string* %8, %struct._IO_FILE* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @_IO_putc(i32 41, %struct._IO_FILE* %11)
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define %struct.rule* @rule_new(i8* %word, %struct.pattern* %pattern, %struct.darray* %rhs, i8* %filename, i64 %line) #0 {
entry:
  %retval = alloca %struct.rule*, align 8
  %word.addr = alloca i8*, align 8
  %pattern.addr = alloca %struct.pattern*, align 8
  %rhs.addr = alloca %struct.darray*, align 8
  %filename.addr = alloca i8*, align 8
  %line.addr = alloca i64, align 8
  store i8* %word, i8** %word.addr, align 8
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store %struct.darray* %rhs, %struct.darray** %rhs.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i64 %line, i64* %line.addr, align 8
  %0 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %tobool = icmp ne %struct.pattern* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %2 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %pattern1 = getelementptr inbounds %struct.pattern, %struct.pattern* %2, i32 0, i32 0
  %3 = load i8*, i8** %pattern1, align 8
  %4 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %len = getelementptr inbounds %struct.pattern, %struct.pattern* %4, i32 0, i32 1
  %5 = load i64, i64* %len, align 8
  %conv = trunc i64 %5 to i32
  %6 = load %struct.darray*, %struct.darray** %rhs.addr, align 8
  %7 = load i8*, i8** %filename.addr, align 8
  %8 = load i64, i64* %line.addr, align 8
  %call = call %struct.rule* @rule_new_internal_regexp(%struct.pattern* %1, i8* %3, i32 %conv, %struct.darray* %6, i8* %7, i64 %8)
  store %struct.rule* %call, %struct.rule** %retval
  br label %return

if.else:                                          ; preds = %entry
  %9 = load i8*, i8** %word.addr, align 8
  %10 = load %struct.darray*, %struct.darray** %rhs.addr, align 8
  %call2 = call %struct.rule* @rule_new_internal_word(i8* %9, %struct.darray* %10)
  store %struct.rule* %call2, %struct.rule** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %11 = load %struct.rule*, %struct.rule** %retval
  ret %struct.rule* %11
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.rule* @rule_new_internal_regexp(%struct.pattern* %pattern, i8* %regexp, i32 %regexp_len, %struct.darray* %rhs, i8* %filename, i64 %line) #3 {
entry:
  %pattern.addr = alloca %struct.pattern*, align 8
  %regexp.addr = alloca i8*, align 8
  %regexp_len.addr = alloca i32, align 4
  %rhs.addr = alloca %struct.darray*, align 8
  %filename.addr = alloca i8*, align 8
  %line.addr = alloca i64, align 8
  %res = alloca %struct.rule*, align 8
  %error_msg = alloca i8*, align 8
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i8* %regexp, i8** %regexp.addr, align 8
  store i32 %regexp_len, i32* %regexp_len.addr, align 4
  store %struct.darray* %rhs, %struct.darray** %rhs.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i64 %line, i64* %line.addr, align 8
  %call = call i8* @xmalloc(i64 24)
  %0 = bitcast i8* %call to %struct.rule*
  store %struct.rule* %0, %struct.rule** %res, align 8
  %1 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %pattern1 = getelementptr inbounds %struct.pattern, %struct.pattern* %1, i32 0, i32 0
  %2 = load i8*, i8** %pattern1, align 8
  %3 = load %struct.rule*, %struct.rule** %res, align 8
  %word = getelementptr inbounds %struct.rule, %struct.rule* %3, i32 0, i32 0
  store i8* %2, i8** %word, align 8
  %call2 = call i8* @xmalloc(i64 64)
  %4 = bitcast i8* %call2 to %struct.re_pattern_buffer*
  %5 = load %struct.rule*, %struct.rule** %res, align 8
  %regex = getelementptr inbounds %struct.rule, %struct.rule* %5, i32 0, i32 1
  store %struct.re_pattern_buffer* %4, %struct.re_pattern_buffer** %regex, align 8
  %6 = load %struct.rule*, %struct.rule** %res, align 8
  %regex3 = getelementptr inbounds %struct.rule, %struct.rule* %6, i32 0, i32 1
  %7 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %regex3, align 8
  %translate = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %7, i32 0, i32 5
  store i8* null, i8** %translate, align 8
  %8 = load %struct.rule*, %struct.rule** %res, align 8
  %regex4 = getelementptr inbounds %struct.rule, %struct.rule* %8, i32 0, i32 1
  %9 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %regex4, align 8
  %fastmap = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %9, i32 0, i32 4
  store i8* null, i8** %fastmap, align 8
  %10 = load %struct.rule*, %struct.rule** %res, align 8
  %regex5 = getelementptr inbounds %struct.rule, %struct.rule* %10, i32 0, i32 1
  %11 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %regex5, align 8
  %buffer = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %11, i32 0, i32 0
  store i8* null, i8** %buffer, align 8
  %12 = load %struct.rule*, %struct.rule** %res, align 8
  %regex6 = getelementptr inbounds %struct.rule, %struct.rule* %12, i32 0, i32 1
  %13 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %regex6, align 8
  %allocated = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %13, i32 0, i32 1
  store i64 0, i64* %allocated, align 8
  %14 = load i8*, i8** %regexp.addr, align 8
  %15 = load i32, i32* %regexp_len.addr, align 4
  %conv = sext i32 %15 to i64
  %16 = load %struct.rule*, %struct.rule** %res, align 8
  %regex7 = getelementptr inbounds %struct.rule, %struct.rule* %16, i32 0, i32 1
  %17 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %regex7, align 8
  %call8 = call i8* @re_compile_pattern(i8* %14, i64 %conv, %struct.re_pattern_buffer* %17)
  store i8* %call8, i8** %error_msg, align 8
  %18 = load i8*, i8** %error_msg, align 8
  %tobool = icmp ne i8* %18, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load i8*, i8** %filename.addr, align 8
  %20 = load i64, i64* %line.addr, align 8
  %conv9 = trunc i64 %20 to i32
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.56, i32 0, i32 0)) #2
  %21 = load i8*, i8** %regexp.addr, align 8
  %22 = load i8*, i8** %error_msg, align 8
  call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 1, i32 0, i8* %19, i32 %conv9, i8* %call10, i8* %21, i8* %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %24 = bitcast %struct.pattern* %23 to i8*
  call void @free(i8* %24) #2
  %25 = load %struct.darray*, %struct.darray** %rhs.addr, align 8
  %26 = load %struct.rule*, %struct.rule** %res, align 8
  %rhs11 = getelementptr inbounds %struct.rule, %struct.rule* %26, i32 0, i32 2
  store %struct.darray* %25, %struct.darray** %rhs11, align 8
  %27 = load %struct.rule*, %struct.rule** %res, align 8
  ret %struct.rule* %27
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.rule* @rule_new_internal_word(i8* %word, %struct.darray* %rhs) #3 {
entry:
  %word.addr = alloca i8*, align 8
  %rhs.addr = alloca %struct.darray*, align 8
  %res = alloca %struct.rule*, align 8
  store i8* %word, i8** %word.addr, align 8
  store %struct.darray* %rhs, %struct.darray** %rhs.addr, align 8
  %call = call i8* @xmalloc(i64 24)
  %0 = bitcast i8* %call to %struct.rule*
  store %struct.rule* %0, %struct.rule** %res, align 8
  %1 = load i8*, i8** %word.addr, align 8
  %2 = load %struct.rule*, %struct.rule** %res, align 8
  %word1 = getelementptr inbounds %struct.rule, %struct.rule* %2, i32 0, i32 0
  store i8* %1, i8** %word1, align 8
  %3 = load %struct.rule*, %struct.rule** %res, align 8
  %regex = getelementptr inbounds %struct.rule, %struct.rule* %3, i32 0, i32 1
  store %struct.re_pattern_buffer* null, %struct.re_pattern_buffer** %regex, align 8
  %4 = load %struct.darray*, %struct.darray** %rhs.addr, align 8
  %5 = load %struct.rule*, %struct.rule** %res, align 8
  %rhs2 = getelementptr inbounds %struct.rule, %struct.rule* %5, i32 0, i32 2
  store %struct.darray* %4, %struct.darray** %rhs2, align 8
  %6 = load %struct.rule*, %struct.rule** %res, align 8
  ret %struct.rule* %6
}

; Function Attrs: nounwind uwtable
define %struct.rule* @keyword_rule_new(i8* %word, %struct.pattern* %pattern, %struct.darray* %rhs, i8* %filename, i64 %line) #0 {
entry:
  %retval = alloca %struct.rule*, align 8
  %word.addr = alloca i8*, align 8
  %pattern.addr = alloca %struct.pattern*, align 8
  %rhs.addr = alloca %struct.darray*, align 8
  %filename.addr = alloca i8*, align 8
  %line.addr = alloca i64, align 8
  %pattern_len = alloca i32, align 4
  %pattern_to_compile = alloca i8*, align 8
  store i8* %word, i8** %word.addr, align 8
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store %struct.darray* %rhs, %struct.darray** %rhs.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i64 %line, i64* %line.addr, align 8
  store i32 0, i32* %pattern_len, align 4
  store i8* null, i8** %pattern_to_compile, align 8
  %0 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %tobool = icmp ne %struct.pattern* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %len = getelementptr inbounds %struct.pattern, %struct.pattern* %1, i32 0, i32 1
  %2 = load i64, i64* %len, align 8
  %add = add i64 %2, 6
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %pattern_len, align 4
  %3 = load i32, i32* %pattern_len, align 4
  %add1 = add nsw i32 %3, 1
  %conv2 = sext i32 %add1 to i64
  %mul = mul i64 1, %conv2
  %4 = alloca i8, i64 %mul
  store i8* %4, i8** %pattern_to_compile, align 8
  %5 = load i8*, i8** %pattern_to_compile, align 8
  %6 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %pattern3 = getelementptr inbounds %struct.pattern, %struct.pattern* %6, i32 0, i32 0
  %7 = load i8*, i8** %pattern3, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* %7) #2
  %8 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %9 = load i8*, i8** %pattern_to_compile, align 8
  %10 = load i32, i32* %pattern_len, align 4
  %11 = load %struct.darray*, %struct.darray** %rhs.addr, align 8
  %12 = load i8*, i8** %filename.addr, align 8
  %13 = load i64, i64* %line.addr, align 8
  %call4 = call %struct.rule* @rule_new_internal_regexp(%struct.pattern* %8, i8* %9, i32 %10, %struct.darray* %11, i8* %12, i64 %13)
  store %struct.rule* %call4, %struct.rule** %retval
  br label %return

if.else:                                          ; preds = %entry
  %14 = load i8*, i8** %word.addr, align 8
  %15 = load %struct.darray*, %struct.darray** %rhs.addr, align 8
  %call5 = call %struct.rule* @rule_new_internal_word(i8* %14, %struct.darray* %15)
  store %struct.rule* %call5, %struct.rule** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %16 = load %struct.rule*, %struct.rule** %retval
  ret %struct.rule* %16
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define %struct.words* @words_new(i8* %name_strings, i8* %name_regexps, i64 %size, i64 %increment) #0 {
entry:
  %name_strings.addr = alloca i8*, align 8
  %name_regexps.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %increment.addr = alloca i64, align 8
  %c = alloca i32, align 4
  %res = alloca %struct.words*, align 8
  store i8* %name_strings, i8** %name_strings.addr, align 8
  store i8* %name_regexps, i8** %name_regexps.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i64 %increment, i64* %increment.addr, align 8
  %call = call i8* @xmalloc(i64 4112)
  %0 = bitcast i8* %call to %struct.words*
  store %struct.words* %0, %struct.words** %res, align 8
  %1 = load i8*, i8** %name_strings.addr, align 8
  %2 = load i64, i64* %size.addr, align 8
  %3 = load i64, i64* %increment.addr, align 8
  %call1 = call %struct.darray* @da_new(i8* %1, i64 %2, i32 1, i64 %3, void (i8*, %struct._IO_FILE*)* bitcast (void (%struct.rule*, %struct._IO_FILE*)* @rule_self_print to void (i8*, %struct._IO_FILE*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.rule*, %struct.rule*)* @rule_cmp to i32 (i8*, i8*)*))
  %4 = load %struct.words*, %struct.words** %res, align 8
  %strings = getelementptr inbounds %struct.words, %struct.words* %4, i32 0, i32 0
  store %struct.darray* %call1, %struct.darray** %strings, align 8
  %5 = load i8*, i8** %name_regexps.addr, align 8
  %6 = load i64, i64* %size.addr, align 8
  %7 = load i64, i64* %increment.addr, align 8
  %call2 = call %struct.darray* @da_new(i8* %5, i64 %6, i32 1, i64 %7, void (i8*, %struct._IO_FILE*)* bitcast (void (%struct.rule*, %struct._IO_FILE*)* @rule_self_print to void (i8*, %struct._IO_FILE*)*), i32 (i8*, i8*)* null)
  %8 = load %struct.words*, %struct.words** %res, align 8
  %regexps = getelementptr inbounds %struct.words, %struct.words* %8, i32 0, i32 1
  store %struct.darray* %call2, %struct.darray** %regexps, align 8
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %9, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %c, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.words*, %struct.words** %res, align 8
  %max = getelementptr inbounds %struct.words, %struct.words* %11, i32 0, i32 3
  %arrayidx = getelementptr inbounds [256 x %struct.rule**], [256 x %struct.rule**]* %max, i32 0, i64 %idxprom
  store %struct.rule** null, %struct.rule*** %arrayidx, align 8
  %12 = load i32, i32* %c, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load %struct.words*, %struct.words** %res, align 8
  %min = getelementptr inbounds %struct.words, %struct.words* %13, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [256 x %struct.rule**], [256 x %struct.rule**]* %min, i32 0, i64 %idxprom3
  store %struct.rule** null, %struct.rule*** %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %c, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.words*, %struct.words** %res, align 8
  ret %struct.words* %15
}

; Function Attrs: nounwind uwtable
define internal void @rule_self_print(%struct.rule* %rule, %struct._IO_FILE* %stream) #0 {
entry:
  %rule.addr = alloca %struct.rule*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.rule* %rule, %struct.rule** %rule.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.rule*, %struct.rule** %rule.addr, align 8
  %regex = getelementptr inbounds %struct.rule, %struct.rule* %0, i32 0, i32 1
  %1 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %regex, align 8
  %tobool = icmp ne %struct.re_pattern_buffer* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %3 = load %struct.rule*, %struct.rule** %rule.addr, align 8
  %word = getelementptr inbounds %struct.rule, %struct.rule* %3, i32 0, i32 0
  %4 = load i8*, i8** %word, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i8* %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %6 = load %struct.rule*, %struct.rule** %rule.addr, align 8
  %word1 = getelementptr inbounds %struct.rule, %struct.rule* %6, i32 0, i32 0
  %7 = load i8*, i8** %word1, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.rule*, %struct.rule** %rule.addr, align 8
  %rhs = getelementptr inbounds %struct.rule, %struct.rule* %8, i32 0, i32 2
  %9 = load %struct.darray*, %struct.darray** %rhs, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @rhs_self_print(%struct.darray* %9, %struct._IO_FILE* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @rule_cmp(%struct.rule* %k1, %struct.rule* %k2) #0 {
entry:
  %k1.addr = alloca %struct.rule*, align 8
  %k2.addr = alloca %struct.rule*, align 8
  store %struct.rule* %k1, %struct.rule** %k1.addr, align 8
  store %struct.rule* %k2, %struct.rule** %k2.addr, align 8
  %0 = load %struct.rule*, %struct.rule** %k1.addr, align 8
  %word = getelementptr inbounds %struct.rule, %struct.rule* %0, i32 0, i32 0
  %1 = load i8*, i8** %word, align 8
  %2 = load %struct.rule*, %struct.rule** %k2.addr, align 8
  %word1 = getelementptr inbounds %struct.rule, %struct.rule* %2, i32 0, i32 0
  %3 = load i8*, i8** %word1, align 8
  %call = call i32 @strcmp(i8* %1, i8* %3) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @words_free(%struct.words* %words) #0 {
entry:
  %words.addr = alloca %struct.words*, align 8
  store %struct.words* %words, %struct.words** %words.addr, align 8
  %0 = load %struct.words*, %struct.words** %words.addr, align 8
  %strings = getelementptr inbounds %struct.words, %struct.words* %0, i32 0, i32 0
  %1 = load %struct.darray*, %struct.darray** %strings, align 8
  call void @da_free(%struct.darray* %1, void (i8*)* bitcast (void (%struct.rule*)* @free_rule to void (i8*)*))
  %2 = load %struct.words*, %struct.words** %words.addr, align 8
  %regexps = getelementptr inbounds %struct.words, %struct.words* %2, i32 0, i32 1
  %3 = load %struct.darray*, %struct.darray** %regexps, align 8
  call void @da_free(%struct.darray* %3, void (i8*)* bitcast (void (%struct.rule*)* @free_rule to void (i8*)*))
  %4 = load %struct.words*, %struct.words** %words.addr, align 8
  %5 = bitcast %struct.words* %4 to i8*
  call void @free(i8* %5) #2
  ret void
}

declare void @da_free(%struct.darray*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @free_rule(%struct.rule* %rule) #0 {
entry:
  %rule.addr = alloca %struct.rule*, align 8
  store %struct.rule* %rule, %struct.rule** %rule.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.rule*, %struct.rule** %rule.addr, align 8
  %word = getelementptr inbounds %struct.rule, %struct.rule* %0, i32 0, i32 0
  %1 = load i8*, i8** %word, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct.rule*, %struct.rule** %rule.addr, align 8
  %word1 = getelementptr inbounds %struct.rule, %struct.rule* %2, i32 0, i32 0
  %3 = load i8*, i8** %word1, align 8
  call void @free(i8* %3) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct.rule*, %struct.rule** %rule.addr, align 8
  %regex = getelementptr inbounds %struct.rule, %struct.rule* %4, i32 0, i32 1
  %5 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %regex, align 8
  %tobool2 = icmp ne %struct.re_pattern_buffer* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %do.end
  %6 = load %struct.rule*, %struct.rule** %rule.addr, align 8
  %regex4 = getelementptr inbounds %struct.rule, %struct.rule* %6, i32 0, i32 1
  %7 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %regex4, align 8
  call void @regfree(%struct.re_pattern_buffer* %7)
  %8 = load %struct.rule*, %struct.rule** %rule.addr, align 8
  %regex5 = getelementptr inbounds %struct.rule, %struct.rule* %8, i32 0, i32 1
  %9 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %regex5, align 8
  %10 = bitcast %struct.re_pattern_buffer* %9 to i8*
  call void @free(i8* %10) #2
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %do.end
  %11 = load %struct.rule*, %struct.rule** %rule.addr, align 8
  %rhs = getelementptr inbounds %struct.rule, %struct.rule* %11, i32 0, i32 2
  %12 = load %struct.darray*, %struct.darray** %rhs, align 8
  call void @da_free(%struct.darray* %12, void (i8*)* bitcast (void (%struct.faced_string*)* @faced_string_free to void (i8*)*))
  %13 = load %struct.rule*, %struct.rule** %rule.addr, align 8
  %14 = bitcast %struct.rule* %13 to i8*
  call void @free(i8* %14) #2
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define void @words_add_string(%struct.words* %words, %struct.rule* %rule) #0 {
entry:
  %words.addr = alloca %struct.words*, align 8
  %rule.addr = alloca %struct.rule*, align 8
  store %struct.words* %words, %struct.words** %words.addr, align 8
  store %struct.rule* %rule, %struct.rule** %rule.addr, align 8
  %0 = load %struct.words*, %struct.words** %words.addr, align 8
  %strings = getelementptr inbounds %struct.words, %struct.words* %0, i32 0, i32 0
  %1 = load %struct.darray*, %struct.darray** %strings, align 8
  %2 = load %struct.rule*, %struct.rule** %rule.addr, align 8
  %3 = bitcast %struct.rule* %2 to i8*
  call void @da_append(%struct.darray* %1, i8* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @words_add_regex(%struct.words* %words, %struct.rule* %rule) #0 {
entry:
  %words.addr = alloca %struct.words*, align 8
  %rule.addr = alloca %struct.rule*, align 8
  store %struct.words* %words, %struct.words** %words.addr, align 8
  store %struct.rule* %rule, %struct.rule** %rule.addr, align 8
  %0 = load %struct.words*, %struct.words** %words.addr, align 8
  %regexps = getelementptr inbounds %struct.words, %struct.words* %0, i32 0, i32 1
  %1 = load %struct.darray*, %struct.darray** %regexps, align 8
  %2 = load %struct.rule*, %struct.rule** %rule.addr, align 8
  %3 = bitcast %struct.rule* %2 to i8*
  call void @da_append(%struct.darray* %1, i8* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @words_set_no_face(%struct.words* %words, i64 %face.coerce) #0 {
entry:
  %face = alloca %struct.fface_s, align 8
  %words.addr = alloca %struct.words*, align 8
  %0 = bitcast %struct.fface_s* %face to i64*
  store i64 %face.coerce, i64* %0, align 8
  store %struct.words* %words, %struct.words** %words.addr, align 8
  %1 = load %struct.words*, %struct.words** %words.addr, align 8
  %strings = getelementptr inbounds %struct.words, %struct.words* %1, i32 0, i32 0
  %2 = load %struct.darray*, %struct.darray** %strings, align 8
  %3 = bitcast %struct.fface_s* %face to i64*
  %4 = load i64, i64* %3, align 4
  call void @rules_set_no_faces(%struct.darray* %2, i64 %4)
  %5 = load %struct.words*, %struct.words** %words.addr, align 8
  %regexps = getelementptr inbounds %struct.words, %struct.words* %5, i32 0, i32 1
  %6 = load %struct.darray*, %struct.darray** %regexps, align 8
  %7 = bitcast %struct.fface_s* %face to i64*
  %8 = load i64, i64* %7, align 4
  call void @rules_set_no_faces(%struct.darray* %6, i64 %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rules_set_no_faces(%struct.darray* %arr, i64 %face.coerce) #0 {
entry:
  %face = alloca %struct.fface_s, align 8
  %arr.addr = alloca %struct.darray*, align 8
  %i = alloca i64, align 8
  %0 = bitcast %struct.fface_s* %face to i64*
  store i64 %face.coerce, i64* %0, align 8
  store %struct.darray* %arr, %struct.darray** %arr.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %2, i32 0, i32 5
  %3 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.darray*, %struct.darray** %arr.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 6
  %6 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %4
  %7 = load i8*, i8** %arrayidx, align 8
  %8 = bitcast i8* %7 to %struct.rule*
  %9 = bitcast %struct.fface_s* %face to i64*
  %10 = load i64, i64* %9, align 4
  call void @rule_set_no_face(%struct.rule* %8, i64 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %i, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @words_merge_rules_unique(%struct.words* %words, %struct.words* %new) #0 {
entry:
  %words.addr = alloca %struct.words*, align 8
  %new.addr = alloca %struct.words*, align 8
  store %struct.words* %words, %struct.words** %words.addr, align 8
  store %struct.words* %new, %struct.words** %new.addr, align 8
  %0 = load %struct.words*, %struct.words** %words.addr, align 8
  %regexps = getelementptr inbounds %struct.words, %struct.words* %0, i32 0, i32 1
  %1 = load %struct.darray*, %struct.darray** %regexps, align 8
  %2 = load %struct.words*, %struct.words** %new.addr, align 8
  %regexps1 = getelementptr inbounds %struct.words, %struct.words* %2, i32 0, i32 1
  %3 = load %struct.darray*, %struct.darray** %regexps1, align 8
  call void @da_concat(%struct.darray* %1, %struct.darray* %3)
  %4 = load %struct.words*, %struct.words** %new.addr, align 8
  %strings = getelementptr inbounds %struct.words, %struct.words* %4, i32 0, i32 0
  %5 = load %struct.darray*, %struct.darray** %strings, align 8
  call void @da_qsort(%struct.darray* %5)
  %6 = load %struct.words*, %struct.words** %words.addr, align 8
  %strings2 = getelementptr inbounds %struct.words, %struct.words* %6, i32 0, i32 0
  %7 = load %struct.darray*, %struct.darray** %strings2, align 8
  %8 = load %struct.words*, %struct.words** %new.addr, align 8
  %strings3 = getelementptr inbounds %struct.words, %struct.words* %8, i32 0, i32 0
  %9 = load %struct.darray*, %struct.darray** %strings3, align 8
  call void @da_merge(%struct.darray* %7, %struct.darray* %9, void (i8*)* bitcast (void (%struct.rule*)* @free_rule to void (i8*)*), i32 1)
  %10 = load %struct.words*, %struct.words** %new.addr, align 8
  call void @words_erase(%struct.words* %10)
  ret void
}

declare void @da_concat(%struct.darray*, %struct.darray*) #1

declare void @da_qsort(%struct.darray*) #1

declare void @da_merge(%struct.darray*, %struct.darray*, void (i8*)*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @words_erase(%struct.words* %words) #3 {
entry:
  %words.addr = alloca %struct.words*, align 8
  store %struct.words* %words, %struct.words** %words.addr, align 8
  %0 = load %struct.words*, %struct.words** %words.addr, align 8
  %strings = getelementptr inbounds %struct.words, %struct.words* %0, i32 0, i32 0
  %1 = load %struct.darray*, %struct.darray** %strings, align 8
  call void @da_erase(%struct.darray* %1)
  %2 = load %struct.words*, %struct.words** %words.addr, align 8
  %regexps = getelementptr inbounds %struct.words, %struct.words* %2, i32 0, i32 1
  %3 = load %struct.darray*, %struct.darray** %regexps, align 8
  call void @da_erase(%struct.darray* %3)
  %4 = load %struct.words*, %struct.words** %words.addr, align 8
  %5 = bitcast %struct.words* %4 to i8*
  call void @free(i8* %5) #2
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.sequence* @sequence_new(%struct.rule* %Open, i64 %in_face.coerce, %struct.words* %Close, %struct.words* %exceptions) #0 {
entry:
  %in_face = alloca %struct.fface_s, align 8
  %Open.addr = alloca %struct.rule*, align 8
  %Close.addr = alloca %struct.words*, align 8
  %exceptions.addr = alloca %struct.words*, align 8
  %res = alloca %struct.sequence*, align 8
  %0 = bitcast %struct.fface_s* %in_face to i64*
  store i64 %in_face.coerce, i64* %0, align 8
  store %struct.rule* %Open, %struct.rule** %Open.addr, align 8
  store %struct.words* %Close, %struct.words** %Close.addr, align 8
  store %struct.words* %exceptions, %struct.words** %exceptions.addr, align 8
  %call = call i8* @xmalloc(i64 32)
  %1 = bitcast i8* %call to %struct.sequence*
  store %struct.sequence* %1, %struct.sequence** %res, align 8
  %2 = load %struct.rule*, %struct.rule** %Open.addr, align 8
  %3 = bitcast %struct.fface_s* %in_face to i64*
  %4 = load i64, i64* %3, align 4
  call void @rule_set_no_face(%struct.rule* %2, i64 %4)
  %5 = load %struct.rule*, %struct.rule** %Open.addr, align 8
  %6 = load %struct.sequence*, %struct.sequence** %res, align 8
  %open = getelementptr inbounds %struct.sequence, %struct.sequence* %6, i32 0, i32 0
  store %struct.rule* %5, %struct.rule** %open, align 8
  %7 = load %struct.sequence*, %struct.sequence** %res, align 8
  %face = getelementptr inbounds %struct.sequence, %struct.sequence* %7, i32 0, i32 1
  %8 = bitcast %struct.fface_s* %face to i8*
  %9 = bitcast %struct.fface_s* %in_face to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 4, i1 false)
  %10 = load %struct.words*, %struct.words** %exceptions.addr, align 8
  %11 = bitcast %struct.fface_s* %in_face to i64*
  %12 = load i64, i64* %11, align 4
  call void @words_set_no_face(%struct.words* %10, i64 %12)
  %13 = load %struct.words*, %struct.words** %exceptions.addr, align 8
  call void @words_finalize(%struct.words* %13)
  %14 = load %struct.words*, %struct.words** %exceptions.addr, align 8
  %15 = load %struct.sequence*, %struct.sequence** %res, align 8
  %exceptions1 = getelementptr inbounds %struct.sequence, %struct.sequence* %15, i32 0, i32 2
  store %struct.words* %14, %struct.words** %exceptions1, align 8
  %16 = load %struct.words*, %struct.words** %Close.addr, align 8
  %17 = bitcast %struct.fface_s* %in_face to i64*
  %18 = load i64, i64* %17, align 4
  call void @words_set_no_face(%struct.words* %16, i64 %18)
  %19 = load %struct.words*, %struct.words** %Close.addr, align 8
  call void @words_finalize(%struct.words* %19)
  %20 = load %struct.words*, %struct.words** %Close.addr, align 8
  %21 = load %struct.sequence*, %struct.sequence** %res, align 8
  %close = getelementptr inbounds %struct.sequence, %struct.sequence* %21, i32 0, i32 3
  store %struct.words* %20, %struct.words** %close, align 8
  %22 = load %struct.sequence*, %struct.sequence** %res, align 8
  ret %struct.sequence* %22
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @rule_set_no_face(%struct.rule* %rule, i64 %face.coerce) #3 {
entry:
  %face = alloca %struct.fface_s, align 8
  %rule.addr = alloca %struct.rule*, align 8
  %0 = bitcast %struct.fface_s* %face to i64*
  store i64 %face.coerce, i64* %0, align 8
  store %struct.rule* %rule, %struct.rule** %rule.addr, align 8
  %1 = load %struct.rule*, %struct.rule** %rule.addr, align 8
  %rhs = getelementptr inbounds %struct.rule, %struct.rule* %1, i32 0, i32 2
  %2 = load %struct.darray*, %struct.darray** %rhs, align 8
  %3 = bitcast %struct.fface_s* %face to i64*
  %4 = load i64, i64* %3, align 4
  call void @rhs_set_no_face(%struct.darray* %2, i64 %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @words_finalize(%struct.words* %list) #0 {
entry:
  %list.addr = alloca %struct.words*, align 8
  %i = alloca i64, align 8
  %content = alloca %struct.rule**, align 8
  store %struct.words* %list, %struct.words** %list.addr, align 8
  %0 = load %struct.words*, %struct.words** %list.addr, align 8
  %strings = getelementptr inbounds %struct.words, %struct.words* %0, i32 0, i32 0
  %1 = load %struct.darray*, %struct.darray** %strings, align 8
  call void @da_qsort(%struct.darray* %1)
  %2 = load %struct.words*, %struct.words** %list.addr, align 8
  %strings1 = getelementptr inbounds %struct.words, %struct.words* %2, i32 0, i32 0
  %3 = load %struct.darray*, %struct.darray** %strings1, align 8
  %content2 = getelementptr inbounds %struct.darray, %struct.darray* %3, i32 0, i32 6
  %4 = load i8**, i8*** %content2, align 8
  %5 = bitcast i8** %4 to %struct.rule**
  store %struct.rule** %5, %struct.rule*** %content, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i64, i64* %i, align 8
  %7 = load %struct.words*, %struct.words** %list.addr, align 8
  %strings3 = getelementptr inbounds %struct.words, %struct.words* %7, i32 0, i32 0
  %8 = load %struct.darray*, %struct.darray** %strings3, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %8, i32 0, i32 5
  %9 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %6, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i64, i64* %i, align 8
  %11 = load %struct.rule**, %struct.rule*** %content, align 8
  %arrayidx = getelementptr inbounds %struct.rule*, %struct.rule** %11, i64 %10
  %12 = load %struct.rule*, %struct.rule** %arrayidx, align 8
  %word = getelementptr inbounds %struct.rule, %struct.rule* %12, i32 0, i32 0
  %13 = load i8*, i8** %word, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx4, align 1
  %idxprom = zext i8 %14 to i64
  %15 = load %struct.words*, %struct.words** %list.addr, align 8
  %min = getelementptr inbounds %struct.words, %struct.words* %15, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [256 x %struct.rule**], [256 x %struct.rule**]* %min, i32 0, i64 %idxprom
  %16 = load %struct.rule**, %struct.rule*** %arrayidx5, align 8
  %cmp6 = icmp eq %struct.rule** %16, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %17 = load %struct.rule**, %struct.rule*** %content, align 8
  %18 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds %struct.rule*, %struct.rule** %17, i64 %18
  %19 = load i64, i64* %i, align 8
  %20 = load %struct.rule**, %struct.rule*** %content, align 8
  %arrayidx7 = getelementptr inbounds %struct.rule*, %struct.rule** %20, i64 %19
  %21 = load %struct.rule*, %struct.rule** %arrayidx7, align 8
  %word8 = getelementptr inbounds %struct.rule, %struct.rule* %21, i32 0, i32 0
  %22 = load i8*, i8** %word8, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx9, align 1
  %idxprom10 = zext i8 %23 to i64
  %24 = load %struct.words*, %struct.words** %list.addr, align 8
  %min11 = getelementptr inbounds %struct.words, %struct.words* %24, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [256 x %struct.rule**], [256 x %struct.rule**]* %min11, i32 0, i64 %idxprom10
  store %struct.rule** %add.ptr, %struct.rule*** %arrayidx12, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %25 = load %struct.rule**, %struct.rule*** %content, align 8
  %26 = load i64, i64* %i, align 8
  %add.ptr13 = getelementptr inbounds %struct.rule*, %struct.rule** %25, i64 %26
  %27 = load i64, i64* %i, align 8
  %28 = load %struct.rule**, %struct.rule*** %content, align 8
  %arrayidx14 = getelementptr inbounds %struct.rule*, %struct.rule** %28, i64 %27
  %29 = load %struct.rule*, %struct.rule** %arrayidx14, align 8
  %word15 = getelementptr inbounds %struct.rule, %struct.rule* %29, i32 0, i32 0
  %30 = load i8*, i8** %word15, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx16, align 1
  %idxprom17 = zext i8 %31 to i64
  %32 = load %struct.words*, %struct.words** %list.addr, align 8
  %max = getelementptr inbounds %struct.words, %struct.words* %32, i32 0, i32 3
  %arrayidx18 = getelementptr inbounds [256 x %struct.rule**], [256 x %struct.rule**]* %max, i32 0, i64 %idxprom17
  store %struct.rule** %add.ptr13, %struct.rule*** %arrayidx18, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %33 = load i64, i64* %i, align 8
  %inc = add i64 %33, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_sequence(%struct.sequence* %sequence) #0 {
entry:
  %sequence.addr = alloca %struct.sequence*, align 8
  store %struct.sequence* %sequence, %struct.sequence** %sequence.addr, align 8
  %0 = load %struct.sequence*, %struct.sequence** %sequence.addr, align 8
  %open = getelementptr inbounds %struct.sequence, %struct.sequence* %0, i32 0, i32 0
  %1 = load %struct.rule*, %struct.rule** %open, align 8
  call void @free_rule(%struct.rule* %1)
  %2 = load %struct.sequence*, %struct.sequence** %sequence.addr, align 8
  %close = getelementptr inbounds %struct.sequence, %struct.sequence* %2, i32 0, i32 3
  %3 = load %struct.words*, %struct.words** %close, align 8
  call void @words_free(%struct.words* %3)
  %4 = load %struct.sequence*, %struct.sequence** %sequence.addr, align 8
  %exceptions = getelementptr inbounds %struct.sequence, %struct.sequence* %4, i32 0, i32 2
  %5 = load %struct.words*, %struct.words** %exceptions, align 8
  call void @words_free(%struct.words* %5)
  %6 = load %struct.sequence*, %struct.sequence** %sequence.addr, align 8
  %7 = bitcast %struct.sequence* %6 to i8*
  call void @free(i8* %7) #2
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.sequence* @new_C_string_sequence(i8* %delimitor) #0 {
entry:
  %delimitor.addr = alloca i8*, align 8
  %res = alloca %struct.sequence*, align 8
  store i8* %delimitor, i8** %delimitor.addr, align 8
  %call = call i8* @xmalloc(i64 32)
  %0 = bitcast i8* %call to %struct.sequence*
  store %struct.sequence* %0, %struct.sequence** %res, align 8
  %1 = load i8*, i8** %delimitor.addr, align 8
  %call1 = call i8* @xstrdup(i8* %1)
  %2 = load i64, i64* bitcast (%struct.fface_s* @Plain_fface to i64*), align 4
  %call2 = call %struct.darray* @rhs_new_single(i8* null, i32 0, i64 %2)
  %call3 = call %struct.rule* @rule_new(i8* %call1, %struct.pattern* null, %struct.darray* %call2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i64 686)
  %3 = load %struct.sequence*, %struct.sequence** %res, align 8
  %open = getelementptr inbounds %struct.sequence, %struct.sequence* %3, i32 0, i32 0
  store %struct.rule* %call3, %struct.rule** %open, align 8
  %4 = load %struct.sequence*, %struct.sequence** %res, align 8
  %face = getelementptr inbounds %struct.sequence, %struct.sequence* %4, i32 0, i32 1
  %5 = bitcast %struct.fface_s* %face to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast (%struct.fface_s* @String_fface to i8*), i64 8, i32 4, i1 false)
  %call4 = call %struct.words* @new_C_exceptions()
  %6 = load %struct.sequence*, %struct.sequence** %res, align 8
  %exceptions = getelementptr inbounds %struct.sequence, %struct.sequence* %6, i32 0, i32 2
  store %struct.words* %call4, %struct.words** %exceptions, align 8
  %call5 = call %struct.words* @words_new(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i64 5, i64 5)
  %7 = load %struct.sequence*, %struct.sequence** %res, align 8
  %close = getelementptr inbounds %struct.sequence, %struct.sequence* %7, i32 0, i32 3
  store %struct.words* %call5, %struct.words** %close, align 8
  %8 = load %struct.sequence*, %struct.sequence** %res, align 8
  %close6 = getelementptr inbounds %struct.sequence, %struct.sequence* %8, i32 0, i32 3
  %9 = load %struct.words*, %struct.words** %close6, align 8
  %10 = load i8*, i8** %delimitor.addr, align 8
  %call7 = call i8* @xstrdup(i8* %10)
  %11 = load i64, i64* bitcast (%struct.fface_s* @Plain_fface to i64*), align 4
  %call8 = call %struct.darray* @rhs_new_single(i8* null, i32 0, i64 %11)
  %call9 = call %struct.rule* @rule_new(i8* %call7, %struct.pattern* null, %struct.darray* %call8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i64 693)
  call void @words_add_string(%struct.words* %9, %struct.rule* %call9)
  %12 = load %struct.sequence*, %struct.sequence** %res, align 8
  %close10 = getelementptr inbounds %struct.sequence, %struct.sequence* %12, i32 0, i32 3
  %13 = load %struct.words*, %struct.words** %close10, align 8
  call void @words_finalize(%struct.words* %13)
  %14 = load %struct.sequence*, %struct.sequence** %res, align 8
  ret %struct.sequence* %14
}

declare i8* @xstrdup(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.words* @new_C_exceptions() #0 {
entry:
  %res = alloca %struct.words*, align 8
  %call = call %struct.words* @words_new(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.60, i32 0, i32 0), i64 3, i64 3)
  store %struct.words* %call, %struct.words** %res, align 8
  %0 = load %struct.words*, %struct.words** %res, align 8
  %call1 = call i8* @xstrdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0))
  %call2 = call i8* @xstrdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0))
  %1 = load i64, i64* bitcast (%struct.fface_s* @String_fface to i64*), align 4
  %call3 = call %struct.darray* @rhs_new_single(i8* %call2, i32 0, i64 %1)
  %call4 = call %struct.rule* @rule_new(i8* %call1, %struct.pattern* null, %struct.darray* %call3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i64 672)
  call void @words_add_string(%struct.words* %0, %struct.rule* %call4)
  %2 = load %struct.words*, %struct.words** %res, align 8
  %call5 = call i8* @xstrdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0))
  %call6 = call i8* @xstrdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0))
  %3 = load i64, i64* bitcast (%struct.fface_s* @String_fface to i64*), align 4
  %call7 = call %struct.darray* @rhs_new_single(i8* %call6, i32 0, i64 %3)
  %call8 = call %struct.rule* @rule_new(i8* %call5, %struct.pattern* null, %struct.darray* %call7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i64 673)
  call void @words_add_string(%struct.words* %2, %struct.rule* %call8)
  %4 = load %struct.words*, %struct.words** %res, align 8
  %call9 = call i8* @xstrdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0))
  %call10 = call i8* @xstrdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0))
  %5 = load i64, i64* bitcast (%struct.fface_s* @String_fface to i64*), align 4
  %call11 = call %struct.darray* @rhs_new_single(i8* %call10, i32 0, i64 %5)
  %call12 = call %struct.rule* @rule_new(i8* %call9, %struct.pattern* null, %struct.darray* %call11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i64 674)
  call void @words_add_string(%struct.words* %4, %struct.rule* %call12)
  %6 = load %struct.words*, %struct.words** %res, align 8
  call void @words_finalize(%struct.words* %6)
  %7 = load %struct.words*, %struct.words** %res, align 8
  ret %struct.words* %7
}

; Function Attrs: nounwind uwtable
define void @sequence_self_print(%struct.sequence* %tmp, %struct._IO_FILE* %stream) #0 {
entry:
  %tmp.addr = alloca %struct.sequence*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.sequence* %tmp, %struct.sequence** %tmp.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.sequence*, %struct.sequence** %tmp.addr, align 8
  %open = getelementptr inbounds %struct.sequence, %struct.sequence* %0, i32 0, i32 0
  %1 = load %struct.rule*, %struct.rule** %open, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @rule_self_print(%struct.rule* %1, %struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %3)
  %4 = load %struct.sequence*, %struct.sequence** %tmp.addr, align 8
  %face = getelementptr inbounds %struct.sequence, %struct.sequence* %4, i32 0, i32 1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %6 = bitcast %struct.fface_s* %face to i64*
  %7 = load i64, i64* %6, align 4
  call void @fface_self_print(i64 %7, %struct._IO_FILE* %5)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %8)
  %9 = load %struct.sequence*, %struct.sequence** %tmp.addr, align 8
  %exceptions = getelementptr inbounds %struct.sequence, %struct.sequence* %9, i32 0, i32 2
  %10 = load %struct.words*, %struct.words** %exceptions, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @words_self_print(%struct.words* %10, %struct._IO_FILE* %11)
  %12 = load %struct.sequence*, %struct.sequence** %tmp.addr, align 8
  %close = getelementptr inbounds %struct.sequence, %struct.sequence* %12, i32 0, i32 3
  %13 = load %struct.words*, %struct.words** %close, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @words_self_print(%struct.words* %13, %struct._IO_FILE* %14)
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare void @fface_self_print(i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @words_self_print(%struct.words* %words, %struct._IO_FILE* %stream) #0 {
entry:
  %words.addr = alloca %struct.words*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.words* %words, %struct.words** %words.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.words*, %struct.words** %words.addr, align 8
  %regexps = getelementptr inbounds %struct.words, %struct.words* %0, i32 0, i32 1
  %1 = load %struct.darray*, %struct.darray** %regexps, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %1, i32 0, i32 5
  %2 = load i64, i64* %len, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.words*, %struct.words** %words.addr, align 8
  %regexps1 = getelementptr inbounds %struct.words, %struct.words* %3, i32 0, i32 1
  %4 = load %struct.darray*, %struct.darray** %regexps1, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @da_self_print(%struct.darray* %4, %struct._IO_FILE* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.words*, %struct.words** %words.addr, align 8
  %strings = getelementptr inbounds %struct.words, %struct.words* %6, i32 0, i32 0
  %7 = load %struct.darray*, %struct.darray** %strings, align 8
  %len2 = getelementptr inbounds %struct.darray, %struct.darray* %7, i32 0, i32 5
  %8 = load i64, i64* %len2, align 8
  %tobool3 = icmp ne i64 %8, 0
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %9 = load %struct.words*, %struct.words** %words.addr, align 8
  %strings5 = getelementptr inbounds %struct.words, %struct.words* %9, i32 0, i32 0
  %10 = load %struct.darray*, %struct.darray** %strings5, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @da_self_print(%struct.darray* %10, %struct._IO_FILE* %11)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.style_sheet* @new_style_sheet(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %res = alloca %struct.style_sheet*, align 8
  store i8* %name, i8** %name.addr, align 8
  %call = call i8* @xmalloc(i64 616)
  %0 = bitcast i8* %call to %struct.style_sheet*
  store %struct.style_sheet* %0, %struct.style_sheet** %res, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load %struct.style_sheet*, %struct.style_sheet** %res, align 8
  %name1 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %2, i32 0, i32 1
  store i8* %1, i8** %name1, align 8
  %3 = load %struct.style_sheet*, %struct.style_sheet** %res, align 8
  %author = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %3, i32 0, i32 2
  store i8* null, i8** %author, align 8
  %4 = load %struct.style_sheet*, %struct.style_sheet** %res, align 8
  %version = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %4, i32 0, i32 3
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %version, i32 0, i32 0
  call void @version_set_to_null(i32* %arraydecay)
  %5 = load %struct.style_sheet*, %struct.style_sheet** %res, align 8
  %documentation = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %5, i32 0, i32 5
  store i8* null, i8** %documentation, align 8
  %6 = load %struct.style_sheet*, %struct.style_sheet** %res, align 8
  %requirement = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %6, i32 0, i32 4
  %arraydecay2 = getelementptr inbounds [4 x i32], [4 x i32]* %requirement, i32 0, i32 0
  call void @version_set_to_null(i32* %arraydecay2)
  %call3 = call %struct.darray* @ancestors_new()
  %7 = load %struct.style_sheet*, %struct.style_sheet** %res, align 8
  %ancestors = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %7, i32 0, i32 6
  store %struct.darray* %call3, %struct.darray** %ancestors, align 8
  %8 = load %struct.style_sheet*, %struct.style_sheet** %res, align 8
  %sensitiveness = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %8, i32 0, i32 7
  store i32 2, i32* %sensitiveness, align 4
  %9 = load %struct.style_sheet*, %struct.style_sheet** %res, align 8
  %alpha1 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %9, i32 0, i32 8
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %alpha1, i32 0, i64 0
  store i8 127, i8* %arrayidx, align 1
  %10 = load %struct.style_sheet*, %struct.style_sheet** %res, align 8
  %alpha2 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %10, i32 0, i32 9
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* %alpha2, i32 0, i64 0
  store i8 127, i8* %arrayidx4, align 1
  %call5 = call %struct.words* @words_new(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i64 100, i64 100)
  %11 = load %struct.style_sheet*, %struct.style_sheet** %res, align 8
  %keywords = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %11, i32 0, i32 10
  store %struct.words* %call5, %struct.words** %keywords, align 8
  %call6 = call %struct.words* @words_new(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i64 100, i64 100)
  %12 = load %struct.style_sheet*, %struct.style_sheet** %res, align 8
  %operators = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %12, i32 0, i32 11
  store %struct.words* %call6, %struct.words** %operators, align 8
  %call7 = call %struct.darray* @da_new(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i64 100, i32 1, i64 100, void (i8*, %struct._IO_FILE*)* bitcast (void (%struct.sequence*, %struct._IO_FILE*)* @sequence_self_print to void (i8*, %struct._IO_FILE*)*), i32 (i8*, i8*)* null)
  %13 = load %struct.style_sheet*, %struct.style_sheet** %res, align 8
  %sequences = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %13, i32 0, i32 12
  store %struct.darray* %call7, %struct.darray** %sequences, align 8
  %14 = load %struct.style_sheet*, %struct.style_sheet** %res, align 8
  ret %struct.style_sheet* %14
}

declare void @version_set_to_null(i32*) #1

; Function Attrs: nounwind uwtable
define internal %struct.darray* @ancestors_new() #0 {
entry:
  %call = call %struct.darray* @da_new(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i64 2, i32 1, i64 2, void (i8*, %struct._IO_FILE*)* @da_str_print, i32 (i8*, i8*)* null)
  ret %struct.darray* %call
}

; Function Attrs: nounwind uwtable
define void @style_sheet_finalize(%struct.style_sheet* %sheet) #0 {
entry:
  %sheet.addr = alloca %struct.style_sheet*, align 8
  store %struct.style_sheet* %sheet, %struct.style_sheet** %sheet.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 4, %0
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %name = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %2, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  %4 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %key = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %4, i32 0, i32 0
  %5 = load i8*, i8** %key, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), i8* %3, i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  call void @ancestors_finalize(%struct.style_sheet* %6)
  %7 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %alpha1 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %7, i32 0, i32 8
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %alpha1, i32 0, i64 0
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 127
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %do.end
  %9 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %alpha13 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %9, i32 0, i32 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %alpha13, i32 0, i32 0
  call void @string_to_array(i8* %arraydecay, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %do.end
  %10 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %alpha2 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %10, i32 0, i32 9
  %arrayidx5 = getelementptr inbounds [256 x i8], [256 x i8]* %alpha2, i32 0, i64 0
  %11 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %11 to i32
  %cmp7 = icmp eq i32 %conv6, 127
  br i1 %cmp7, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.4
  %12 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %alpha210 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %12, i32 0, i32 9
  %arraydecay11 = getelementptr inbounds [256 x i8], [256 x i8]* %alpha210, i32 0, i32 0
  call void @string_to_array(i8* %arraydecay11, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end.4
  %13 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %sensitiveness = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %13, i32 0, i32 7
  %14 = load i32, i32* %sensitiveness, align 4
  %cmp13 = icmp eq i32 %14, 2
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.12
  %15 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %sensitiveness16 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %15, i32 0, i32 7
  store i32 1, i32* %sensitiveness16, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.12
  %16 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %keywords = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %16, i32 0, i32 10
  %17 = load %struct.words*, %struct.words** %keywords, align 8
  call void @words_finalize(%struct.words* %17)
  %18 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %operators = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %18, i32 0, i32 11
  %19 = load %struct.words*, %struct.words** %operators, align 8
  call void @words_finalize(%struct.words* %19)
  %20 = load i32, i32* @msg_verbosity, align 4
  %and18 = and i32 4, %20
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.55

if.then.20:                                       ; preds = %if.end.17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %key21 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %22, i32 0, i32 0
  %23 = load i8*, i8** %key21, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0), i8* %23)
  %24 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @style_sheet_self_print(%struct.style_sheet* %24, %struct._IO_FILE* %25)
  br label %do.body.23

do.body.23:                                       ; preds = %if.then.20
  %26 = load i32, i32* @msg_verbosity, align 4
  %and24 = and i32 4, %26
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %do.body.23
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %name27 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %28, i32 0, i32 1
  %29 = load i8*, i8** %name27, align 8
  %30 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %key28 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %30, i32 0, i32 0
  %31 = load i8*, i8** %key28, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i32 0, i32 0), i8* %29, i8* %31)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %do.body.23
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %32 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %call32 = call zeroext i1 @style_sheet_check(%struct.style_sheet* %32)
  br i1 %call32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %do.end.31
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  %33 = load i32, i32* @msg_verbosity, align 4
  %and35 = and i32 4, %33
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %do.body.34
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %name38 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %35, i32 0, i32 1
  %36 = load i8*, i8** %name38, align 8
  %37 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %key39 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %37, i32 0, i32 0
  %38 = load i8*, i8** %key39, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* %36, i8* %38)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.37, %do.body.34
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %if.end.52

if.else:                                          ; preds = %do.end.31
  br label %do.body.43

do.body.43:                                       ; preds = %if.else
  %39 = load i32, i32* @msg_verbosity, align 4
  %and44 = and i32 4, %39
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %do.body.43
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %name47 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %41, i32 0, i32 1
  %42 = load i8*, i8** %name47, align 8
  %43 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %key48 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %43, i32 0, i32 0
  %44 = load i8*, i8** %key48, align 8
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i8* %42, i8* %44)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.46, %do.body.43
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  br label %if.end.52

if.end.52:                                        ; preds = %do.end.51, %do.end.42
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %key53 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %46, i32 0, i32 0
  %47 = load i8*, i8** %key53, align 8
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i32 0, i32 0), i8* %47)
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.52, %if.end.17
  %48 = load %struct.hash_table_s*, %struct.hash_table_s** @style_sheets, align 8
  %49 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %50 = bitcast %struct.style_sheet* %49 to i8*
  %call56 = call i8* @hash_insert(%struct.hash_table_s* %48, i8* %50)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @ancestors_finalize(%struct.style_sheet* %sheet) #0 {
entry:
  %sheet.addr = alloca %struct.style_sheet*, align 8
  %i = alloca i32, align 4
  %ancestor = alloca %struct.style_sheet*, align 8
  store %struct.style_sheet* %sheet, %struct.style_sheet** %sheet.addr, align 8
  store %struct.style_sheet* null, %struct.style_sheet** %ancestor, align 8
  %0 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %ancestors = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %0, i32 0, i32 6
  %1 = load %struct.darray*, %struct.darray** %ancestors, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %1, i32 0, i32 5
  %2 = load i64, i64* %len, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.59

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %ancestors1 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %4, i32 0, i32 6
  %5 = load %struct.darray*, %struct.darray** %ancestors1, align 8
  %len2 = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 5
  %6 = load i64, i64* %len2, align 8
  %conv = trunc i64 %6 to i32
  %cmp3 = icmp slt i32 %3, %conv
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %ancestors5 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %8, i32 0, i32 6
  %9 = load %struct.darray*, %struct.darray** %ancestors5, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %9, i32 0, i32 6
  %10 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx, align 8
  %call = call %struct.style_sheet* @get_style_sheet(i8* %11)
  store %struct.style_sheet* %call, %struct.style_sheet** %ancestor, align 8
  %12 = load %struct.style_sheet*, %struct.style_sheet** %ancestor, align 8
  %tobool = icmp ne %struct.style_sheet* %12, null
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %for.body
  br label %for.inc

if.end.7:                                         ; preds = %for.body
  %13 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %keywords = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %13, i32 0, i32 10
  %14 = load %struct.words*, %struct.words** %keywords, align 8
  %strings = getelementptr inbounds %struct.words, %struct.words* %14, i32 0, i32 0
  %15 = load %struct.darray*, %struct.darray** %strings, align 8
  %16 = load %struct.style_sheet*, %struct.style_sheet** %ancestor, align 8
  %keywords8 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %16, i32 0, i32 10
  %17 = load %struct.words*, %struct.words** %keywords8, align 8
  %strings9 = getelementptr inbounds %struct.words, %struct.words* %17, i32 0, i32 0
  %18 = load %struct.darray*, %struct.darray** %strings9, align 8
  call void @da_merge(%struct.darray* %15, %struct.darray* %18, void (i8*)* null, i32 0)
  %19 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %operators = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %19, i32 0, i32 11
  %20 = load %struct.words*, %struct.words** %operators, align 8
  %strings10 = getelementptr inbounds %struct.words, %struct.words* %20, i32 0, i32 0
  %21 = load %struct.darray*, %struct.darray** %strings10, align 8
  %22 = load %struct.style_sheet*, %struct.style_sheet** %ancestor, align 8
  %operators11 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %22, i32 0, i32 11
  %23 = load %struct.words*, %struct.words** %operators11, align 8
  %strings12 = getelementptr inbounds %struct.words, %struct.words* %23, i32 0, i32 0
  %24 = load %struct.darray*, %struct.darray** %strings12, align 8
  call void @da_merge(%struct.darray* %21, %struct.darray* %24, void (i8*)* null, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end.7, %if.then.6
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %ancestors13 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %26, i32 0, i32 6
  %27 = load %struct.darray*, %struct.darray** %ancestors13, align 8
  %len14 = getelementptr inbounds %struct.darray, %struct.darray* %27, i32 0, i32 5
  %28 = load i64, i64* %len14, align 8
  %conv15 = trunc i64 %28 to i32
  %sub = sub nsw i32 %conv15, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.58, %for.end
  %29 = load i32, i32* %i, align 4
  %cmp17 = icmp sge i32 %29, 0
  br i1 %cmp17, label %for.body.19, label %for.end.59

for.body.19:                                      ; preds = %for.cond.16
  %30 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %30 to i64
  %31 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %ancestors21 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %31, i32 0, i32 6
  %32 = load %struct.darray*, %struct.darray** %ancestors21, align 8
  %content22 = getelementptr inbounds %struct.darray, %struct.darray* %32, i32 0, i32 6
  %33 = load i8**, i8*** %content22, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %33, i64 %idxprom20
  %34 = load i8*, i8** %arrayidx23, align 8
  %call24 = call %struct.style_sheet* @get_style_sheet(i8* %34)
  store %struct.style_sheet* %call24, %struct.style_sheet** %ancestor, align 8
  %35 = load %struct.style_sheet*, %struct.style_sheet** %ancestor, align 8
  %tobool25 = icmp ne %struct.style_sheet* %35, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %for.body.19
  br label %for.inc.58

if.end.27:                                        ; preds = %for.body.19
  %36 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %alpha1 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %36, i32 0, i32 8
  %arrayidx28 = getelementptr inbounds [256 x i8], [256 x i8]* %alpha1, i32 0, i64 0
  %37 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %37 to i32
  %cmp30 = icmp eq i32 %conv29, 127
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.27
  %38 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %alpha133 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %38, i32 0, i32 8
  %39 = bitcast [256 x i8]* %alpha133 to i8*
  %40 = load %struct.style_sheet*, %struct.style_sheet** %ancestor, align 8
  %alpha134 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %40, i32 0, i32 8
  %41 = bitcast [256 x i8]* %alpha134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %41, i64 256, i32 4, i1 false)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.end.27
  %42 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %alpha2 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %42, i32 0, i32 9
  %arrayidx36 = getelementptr inbounds [256 x i8], [256 x i8]* %alpha2, i32 0, i64 0
  %43 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %43 to i32
  %cmp38 = icmp eq i32 %conv37, 127
  br i1 %cmp38, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.35
  %44 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %alpha241 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %44, i32 0, i32 9
  %45 = bitcast [256 x i8]* %alpha241 to i8*
  %46 = load %struct.style_sheet*, %struct.style_sheet** %ancestor, align 8
  %alpha242 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %46, i32 0, i32 9
  %47 = bitcast [256 x i8]* %alpha242 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %47, i64 256, i32 4, i1 false)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.35
  %48 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %sensitiveness = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %48, i32 0, i32 7
  %49 = load i32, i32* %sensitiveness, align 4
  %cmp44 = icmp eq i32 %49, 2
  br i1 %cmp44, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %if.end.43
  %50 = load %struct.style_sheet*, %struct.style_sheet** %ancestor, align 8
  %sensitiveness47 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %50, i32 0, i32 7
  %51 = load i32, i32* %sensitiveness47, align 4
  %52 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %sensitiveness48 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %52, i32 0, i32 7
  store i32 %51, i32* %sensitiveness48, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %if.end.43
  %53 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %keywords50 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %53, i32 0, i32 10
  %54 = load %struct.words*, %struct.words** %keywords50, align 8
  %regexps = getelementptr inbounds %struct.words, %struct.words* %54, i32 0, i32 1
  %55 = load %struct.darray*, %struct.darray** %regexps, align 8
  %56 = load %struct.style_sheet*, %struct.style_sheet** %ancestor, align 8
  %keywords51 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %56, i32 0, i32 10
  %57 = load %struct.words*, %struct.words** %keywords51, align 8
  %regexps52 = getelementptr inbounds %struct.words, %struct.words* %57, i32 0, i32 1
  %58 = load %struct.darray*, %struct.darray** %regexps52, align 8
  call void @da_prefix(%struct.darray* %55, %struct.darray* %58)
  %59 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %operators53 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %59, i32 0, i32 11
  %60 = load %struct.words*, %struct.words** %operators53, align 8
  %regexps54 = getelementptr inbounds %struct.words, %struct.words* %60, i32 0, i32 1
  %61 = load %struct.darray*, %struct.darray** %regexps54, align 8
  %62 = load %struct.style_sheet*, %struct.style_sheet** %ancestor, align 8
  %operators55 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %62, i32 0, i32 11
  %63 = load %struct.words*, %struct.words** %operators55, align 8
  %regexps56 = getelementptr inbounds %struct.words, %struct.words* %63, i32 0, i32 1
  %64 = load %struct.darray*, %struct.darray** %regexps56, align 8
  call void @da_prefix(%struct.darray* %61, %struct.darray* %64)
  %65 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %sequences = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %65, i32 0, i32 12
  %66 = load %struct.darray*, %struct.darray** %sequences, align 8
  %67 = load %struct.style_sheet*, %struct.style_sheet** %ancestor, align 8
  %sequences57 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %67, i32 0, i32 12
  %68 = load %struct.darray*, %struct.darray** %sequences57, align 8
  call void @da_prefix(%struct.darray* %66, %struct.darray* %68)
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.49, %if.then.26
  %69 = load i32, i32* %i, align 4
  %dec = add nsw i32 %69, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.16

for.end.59:                                       ; preds = %if.then, %for.cond.16
  ret void
}

declare void @string_to_array(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @style_sheet_self_print(%struct.style_sheet* %sheet, %struct._IO_FILE* %stream) #0 {
entry:
  %sheet.addr = alloca %struct.style_sheet*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i64, align 8
  store %struct.style_sheet* %sheet, %struct.style_sheet** %sheet.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %1 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %name = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %1, i32 0, i32 1
  %2 = load i8*, i8** %name, align 8
  %3 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %key = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %3, i32 0, i32 0
  %4 = load i8*, i8** %key, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i32 0, i32 0), i8* %2, i8* %4)
  %5 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %version = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %5, i32 0, i32 3
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %version, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @version_self_print(i32* %arraydecay, %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %7)
  %8 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %author = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %8, i32 0, i32 2
  %9 = load i8*, i8** %author, align 8
  %cmp = icmp eq i8* %9, null
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %author2 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %10, i32 0, i32 2
  %11 = load i8*, i8** %author2, align 8
  %12 = load i8, i8* %11, align 1
  %conv = zext i8 %12 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %14 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %author5 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %14, i32 0, i32 2
  %15 = load i8*, i8** %author5, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %16 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %ancestors = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %16, i32 0, i32 6
  %17 = load %struct.darray*, %struct.darray** %ancestors, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %17, i32 0, i32 5
  %18 = load i64, i64* %len, align 8
  %cmp7 = icmp ugt i64 %18, 0
  br i1 %cmp7, label %if.then.9, label %if.end.18

if.then.9:                                        ; preds = %if.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0))
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.9
  %20 = load i64, i64* %i, align 8
  %21 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %ancestors11 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %21, i32 0, i32 6
  %22 = load %struct.darray*, %struct.darray** %ancestors11, align 8
  %len12 = getelementptr inbounds %struct.darray, %struct.darray* %22, i32 0, i32 5
  %23 = load i64, i64* %len12, align 8
  %cmp13 = icmp ult i64 %20, %23
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %25 = load i64, i64* %i, align 8
  %tobool = icmp ne i64 %25, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0)
  %26 = load i64, i64* %i, align 8
  %27 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %ancestors15 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %27, i32 0, i32 6
  %28 = load %struct.darray*, %struct.darray** %ancestors15, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %28, i32 0, i32 6
  %29 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %29, i64 %26
  %30 = load i8*, i8** %arrayidx, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* %cond, i8* %30)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i64, i64* %i, align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call17 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), %struct._IO_FILE* %32)
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %if.end
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %34 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %sensitiveness = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %34, i32 0, i32 7
  %35 = load i32, i32* %sensitiveness, align 4
  %cmp19 = icmp eq i32 %35, 1
  %cond21 = select i1 %cmp19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0)
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8* %cond21)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call23 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), %struct._IO_FILE* %36)
  %37 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %alpha1 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %37, i32 0, i32 8
  %arraydecay24 = getelementptr inbounds [256 x i8], [256 x i8]* %alpha1, i32 0, i32 0
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @alphabet_self_print(i8* %arraydecay24, %struct._IO_FILE* %38)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call25 = call i32 @fputs(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), %struct._IO_FILE* %39)
  %40 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %alpha2 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %40, i32 0, i32 9
  %arraydecay26 = getelementptr inbounds [256 x i8], [256 x i8]* %alpha2, i32 0, i32 0
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @alphabet_self_print(i8* %arraydecay26, %struct._IO_FILE* %41)
  %42 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %keywords = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %42, i32 0, i32 10
  %43 = load %struct.words*, %struct.words** %keywords, align 8
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @words_self_print(%struct.words* %43, %struct._IO_FILE* %44)
  %45 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %operators = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %45, i32 0, i32 11
  %46 = load %struct.words*, %struct.words** %operators, align 8
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @words_self_print(%struct.words* %46, %struct._IO_FILE* %47)
  %48 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %sequences = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %48, i32 0, i32 12
  %49 = load %struct.darray*, %struct.darray** %sequences, align 8
  %len27 = getelementptr inbounds %struct.darray, %struct.darray* %49, i32 0, i32 5
  %50 = load i64, i64* %len27, align 8
  %cmp28 = icmp eq i64 %50, 0
  br i1 %cmp28, label %if.end.32, label %if.then.30

if.then.30:                                       ; preds = %if.end.18
  %51 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %sequences31 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %51, i32 0, i32 12
  %52 = load %struct.darray*, %struct.darray** %sequences31, align 8
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @da_self_print(%struct.darray* %52, %struct._IO_FILE* %53)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.18
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @style_sheet_check(%struct.style_sheet* %sheet) #0 {
entry:
  %sheet.addr = alloca %struct.style_sheet*, align 8
  store %struct.style_sheet* %sheet, %struct.style_sheet** %sheet.addr, align 8
  %0 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %call = call zeroext i1 @check_doubles(%struct.style_sheet* %0)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %call1 = call zeroext i1 @check_sensitivity(%struct.style_sheet* %1)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %call1, %land.rhs ]
  ret i1 %2
}

declare i8* @hash_insert(%struct.hash_table_s*, i8*) #1

declare void @version_self_print(i32*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @alphabet_self_print(i8* %a, %struct._IO_FILE* %s) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %s.addr = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  store i8* %a, i8** %a.addr, align 8
  store %struct._IO_FILE* %s, %struct._IO_FILE** %s.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 127
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %s.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0), %struct._IO_FILE* %2)
  br label %if.end.9

if.else:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %s.addr, align 8
  %call2 = call i32 @fputc(i32 34, %struct._IO_FILE* %3)
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %4 = load i32, i32* %c, align 4
  %cmp3 = icmp slt i32 %4, 256
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %c, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %a.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx5, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  %8 = load i32, i32* %c, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %s.addr, align 8
  %call7 = call i32 @fputc(i32 %8, %struct._IO_FILE* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %c, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %s.addr, align 8
  %call8 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0), %struct._IO_FILE* %11)
  br label %if.end.9

if.end.9:                                         ; preds = %for.end, %if.then
  ret void
}

declare void @da_self_print(%struct.darray*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @list_style_sheets_short(%struct._IO_FILE* %stream) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0)) #2
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @fputs(i8* %call, %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %3 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %3, i32 0, i32 2
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %4 = load i8**, i8*** %path, align 8
  call void @pw_lister_on_suffix(%struct._IO_FILE* %2, i8** %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @pw_lister_on_suffix(%struct._IO_FILE*, i8**, i8*) #1

; Function Attrs: nounwind uwtable
define void @list_style_sheets_long(%struct._IO_FILE* %stream) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %sheet = alloca %struct.style_sheet*, align 8
  %entries = alloca %struct.darray*, align 8
  %i = alloca i64, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 2
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %1 = load i8**, i8*** %path, align 8
  %call = call %struct.darray* @pw_glob_on_suffix(i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0))
  store %struct.darray* %call, %struct.darray** %entries, align 8
  %2 = load %struct.darray*, %struct.darray** %entries, align 8
  %cmp = getelementptr inbounds %struct.darray, %struct.darray* %2, i32 0, i32 8
  store i32 (i8*, i8*)* @sheet_name_cmp, i32 (i8*, i8*)** %cmp, align 8
  %3 = load %struct.darray*, %struct.darray** %entries, align 8
  call void @da_qsort(%struct.darray* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0)) #2
  call void (%struct._IO_FILE*, i8, i32, i8*, ...) @title(%struct._IO_FILE* %4, i8 signext 61, i32 1, i8* %call1)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %5)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i64, i64* %i, align 8
  %7 = load %struct.darray*, %struct.darray** %entries, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %7, i32 0, i32 5
  %8 = load i64, i64* %len, align 8
  %cmp3 = icmp ult i64 %6, %8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %i, align 8
  %10 = load %struct.darray*, %struct.darray** %entries, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %10, i32 0, i32 6
  %11 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 %9
  %12 = load i8*, i8** %arrayidx, align 8
  %call4 = call %struct.style_sheet* @get_style_sheet(i8* %12)
  store %struct.style_sheet* %call4, %struct.style_sheet** %sheet, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %14 = load %struct.style_sheet*, %struct.style_sheet** %sheet, align 8
  call void @style_sheet_print_signature(%struct._IO_FILE* %13, %struct.style_sheet* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i64, i64* %i, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.darray*, %struct.darray** %entries, align 8
  call void @da_free(%struct.darray* %16, void (i8*)* @free)
  ret void
}

declare %struct.darray* @pw_glob_on_suffix(i8**, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @sheet_name_cmp(i8* %key1, i8* %key2) #0 {
entry:
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  %0 = load i8*, i8** %key1.addr, align 8
  %call = call %struct.style_sheet* @get_style_sheet(i8* %0)
  %name = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %call, i32 0, i32 1
  %1 = load i8*, i8** %name, align 8
  %2 = load i8*, i8** %key2.addr, align 8
  %call1 = call %struct.style_sheet* @get_style_sheet(i8* %2)
  %name2 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %call1, i32 0, i32 1
  %3 = load i8*, i8** %name2, align 8
  %call3 = call i32 @strcasecmp(i8* %1, i8* %3) #6
  ret i32 %call3
}

declare void @title(%struct._IO_FILE*, i8 signext, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.style_sheet* @get_style_sheet(i8* %key) #0 {
entry:
  %retval = alloca %struct.style_sheet*, align 8
  %key.addr = alloca i8*, align 8
  %item = alloca %struct.style_sheet*, align 8
  %token = alloca %struct.style_sheet, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0)) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.style_sheet* null, %struct.style_sheet** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %key.addr, align 8
  %call1 = call i8* @strpbrk(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0)) #6
  %tobool = icmp ne i8* %call1, null
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %2 = load i8*, i8** %key.addr, align 8
  %call3 = call i8* @style_sheet_mixed_new(i8* %2)
  store i8* %call3, i8** %key.addr, align 8
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %3 = load i8*, i8** %key.addr, align 8
  call void @require_style_sheet(i8* %3)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.2
  %4 = load i8*, i8** %key.addr, align 8
  %key5 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %token, i32 0, i32 0
  store i8* %4, i8** %key5, align 8
  %5 = load %struct.hash_table_s*, %struct.hash_table_s** @style_sheets, align 8
  %6 = bitcast %struct.style_sheet* %token to i8*
  %call6 = call i8* @hash_find_item(%struct.hash_table_s* %5, i8* %6)
  %7 = bitcast i8* %call6 to %struct.style_sheet*
  store %struct.style_sheet* %7, %struct.style_sheet** %item, align 8
  %8 = load %struct.style_sheet*, %struct.style_sheet** %item, align 8
  %tobool7 = icmp ne %struct.style_sheet* %8, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.4
  store %struct.style_sheet* null, %struct.style_sheet** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %9 = load %struct.style_sheet*, %struct.style_sheet** %item, align 8
  %alpha1 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %9, i32 0, i32 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %alpha1, i32 0, i32 0
  store i8* %arraydecay, i8** @re_syntax_table, align 8
  %10 = load %struct.style_sheet*, %struct.style_sheet** %item, align 8
  store %struct.style_sheet* %10, %struct.style_sheet** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then
  %11 = load %struct.style_sheet*, %struct.style_sheet** %retval
  ret %struct.style_sheet* %11
}

; Function Attrs: nounwind uwtable
define internal void @style_sheet_print_signature(%struct._IO_FILE* %stream, %struct.style_sheet* %sheet) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %sheet.addr = alloca %struct.style_sheet*, align 8
  %i = alloca i32, align 4
  %title_bar_len = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.style_sheet* %sheet, %struct.style_sheet** %sheet.addr, align 8
  %0 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %version = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %version, i32 0, i32 0
  %call = call zeroext i1 @version_null_p(i32* %arraydecay)
  br i1 %call, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %name = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %1, i32 0, i32 1
  %2 = load i8*, i8** %name, align 8
  %call1 = call i64 @strlen(i8* %2) #6
  %add = add i64 16, %call1
  %3 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %key = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %3, i32 0, i32 0
  %4 = load i8*, i8** %key, align 8
  %call2 = call i64 @strlen(i8* %4) #6
  %add3 = add i64 %add, %call2
  %5 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %version4 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %5, i32 0, i32 3
  %arraydecay5 = getelementptr inbounds [4 x i32], [4 x i32]* %version4, i32 0, i32 0
  %call6 = call i32 @version_length(i32* %arraydecay5)
  %conv = sext i32 %call6 to i64
  %add7 = add i64 %add3, %conv
  %conv8 = trunc i64 %add7 to i32
  store i32 %conv8, i32* %title_bar_len, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %7 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %name9 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %7, i32 0, i32 1
  %8 = load i8*, i8** %name9, align 8
  %9 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %key10 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %9, i32 0, i32 0
  %10 = load i8*, i8** %key10, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i32 0, i32 0), i8* %8, i8* %10)
  %11 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %version12 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %11, i32 0, i32 3
  %arraydecay13 = getelementptr inbounds [4 x i32], [4 x i32]* %version12, i32 0, i32 0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @version_self_print(i32* %arraydecay13, %struct._IO_FILE* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call14 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0), %struct._IO_FILE* %13)
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %name15 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %14, i32 0, i32 1
  %15 = load i8*, i8** %name15, align 8
  %call16 = call i64 @strlen(i8* %15) #6
  %add17 = add i64 7, %call16
  %16 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %key18 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %16, i32 0, i32 0
  %17 = load i8*, i8** %key18, align 8
  %call19 = call i64 @strlen(i8* %17) #6
  %add20 = add i64 %add17, %call19
  %conv21 = trunc i64 %add20 to i32
  store i32 %conv21, i32* %title_bar_len, align 4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %19 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %name22 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %19, i32 0, i32 1
  %20 = load i8*, i8** %name22, align 8
  %21 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %key23 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %21, i32 0, i32 0
  %22 = load i8*, i8** %key23, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), i8* %20, i8* %22)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %title_bar_len, align 4
  %cmp = icmp slt i32 %23, %24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call26 = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %25)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call27 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %27)
  %28 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %author = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %28, i32 0, i32 2
  %29 = load i8*, i8** %author, align 8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @authors_print_plain(i8* %29, %struct._IO_FILE* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0))
  %31 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %documentation = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %31, i32 0, i32 5
  %32 = load i8*, i8** %documentation, align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @documentation_print_plain(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), %struct._IO_FILE* %33)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call28 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i32 0, i32 0), %struct._IO_FILE* %34)
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_style_sheets_html(%struct._IO_FILE* %stream) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %sheet = alloca %struct.style_sheet*, align 8
  %entries = alloca %struct.darray*, align 8
  %i = alloca i64, align 8
  %version_index = alloca [3 x i32], align 4
  %requirement = alloca [3 x i32], align 4
  %rows = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 2
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %1 = load i8**, i8*** %path, align 8
  %call = call %struct.darray* @pw_glob_on_suffix(i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0))
  store %struct.darray* %call, %struct.darray** %entries, align 8
  %2 = load %struct.darray*, %struct.darray** %entries, align 8
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %version_index, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [3 x i32], [3 x i32]* %requirement, i32 0, i32 0
  call void @style_sheets_versions(%struct.darray* %2, i32* %arraydecay, i32* %arraydecay1)
  %3 = load %struct.darray*, %struct.darray** %entries, align 8
  %cmp = getelementptr inbounds %struct.darray, %struct.darray* %3, i32 0, i32 8
  store i32 (i8*, i8*)* @sheet_name_cmp, i32 (i8*, i8*)** %cmp, align 8
  %4 = load %struct.darray*, %struct.darray** %entries, align 8
  call void @da_qsort(%struct.darray* %4)
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %6, i32 0, i32 68
  %7 = load %struct.darray*, %struct.darray** %jobs, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %7, i32 0, i32 5
  %8 = load i64, i64* %len, align 8
  %sub = sub i64 %8, 1
  %9 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs2 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %9, i32 0, i32 68
  %10 = load %struct.darray*, %struct.darray** %jobs2, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %10, i32 0, i32 6
  %11 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 %sub
  %12 = load i8*, i8** %arrayidx, align 8
  %13 = bitcast i8* %12 to %struct.file_job*
  %call3 = call i8* @expand_user_string(%struct.a2ps_job* %5, %struct.file_job* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([314 x i8], [314 x i8]* @.str.35, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call4 = call i32 @fputs(i8* %call3, %struct._IO_FILE* %14)
  %15 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %16 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs5 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %16, i32 0, i32 68
  %17 = load %struct.darray*, %struct.darray** %jobs5, align 8
  %len6 = getelementptr inbounds %struct.darray, %struct.darray* %17, i32 0, i32 5
  %18 = load i64, i64* %len6, align 8
  %sub7 = sub i64 %18, 1
  %19 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs8 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %19, i32 0, i32 68
  %20 = load %struct.darray*, %struct.darray** %jobs8, align 8
  %content9 = getelementptr inbounds %struct.darray, %struct.darray* %20, i32 0, i32 6
  %21 = load i8**, i8*** %content9, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %21, i64 %sub7
  %22 = load i8*, i8** %arrayidx10, align 8
  %23 = bitcast i8* %22 to %struct.file_job*
  %call11 = call i8* @expand_user_string(%struct.a2ps_job* %15, %struct.file_job* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([202 x i8], [202 x i8]* @.str.36, i32 0, i32 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call12 = call i32 @fputs(i8* %call11, %struct._IO_FILE* %24)
  %arraydecay13 = getelementptr inbounds [3 x i32], [3 x i32]* %version_index, i32 0, i32 0
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @version_self_print(i32* %arraydecay13, %struct._IO_FILE* %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call14 = call i32 @fputs(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.37, i32 0, i32 0), %struct._IO_FILE* %26)
  %arraydecay15 = getelementptr inbounds [3 x i32], [3 x i32]* %requirement, i32 0, i32 0
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @version_self_print(i32* %arraydecay15, %struct._IO_FILE* %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call16 = call i32 @fputs(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.38, i32 0, i32 0), %struct._IO_FILE* %28)
  %29 = load %struct.darray*, %struct.darray** %entries, align 8
  %len17 = getelementptr inbounds %struct.darray, %struct.darray* %29, i32 0, i32 5
  %30 = load i64, i64* %len17, align 8
  %div = udiv i64 %30, 3
  %add = add i64 %div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %rows, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call18 = call i32 @fputs(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i32 0, i32 0), %struct._IO_FILE* %31)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %do.end, %entry
  %32 = load i64, i64* %i, align 8
  %33 = load %struct.darray*, %struct.darray** %entries, align 8
  %len19 = getelementptr inbounds %struct.darray, %struct.darray* %33, i32 0, i32 5
  %34 = load i64, i64* %len19, align 8
  %cmp20 = icmp ult i64 %32, %34
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call22 = call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %35)
  br label %do.body

do.body:                                          ; preds = %land.end, %for.body
  %36 = load i64, i64* %i, align 8
  %37 = load %struct.darray*, %struct.darray** %entries, align 8
  %content23 = getelementptr inbounds %struct.darray, %struct.darray* %37, i32 0, i32 6
  %38 = load i8**, i8*** %content23, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %38, i64 %36
  %39 = load i8*, i8** %arrayidx24, align 8
  %call25 = call %struct.style_sheet* @get_style_sheet(i8* %39)
  store %struct.style_sheet* %call25, %struct.style_sheet** %sheet, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %41 = load %struct.style_sheet*, %struct.style_sheet** %sheet, align 8
  %key = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %41, i32 0, i32 0
  %42 = load i8*, i8** %key, align 8
  %43 = load %struct.style_sheet*, %struct.style_sheet** %sheet, align 8
  %name = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %43, i32 0, i32 1
  %44 = load i8*, i8** %name, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.41, i32 0, i32 0), i8* %42, i8* %44)
  %45 = load %struct.style_sheet*, %struct.style_sheet** %sheet, align 8
  %version = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %45, i32 0, i32 3
  %arraydecay27 = getelementptr inbounds [4 x i32], [4 x i32]* %version, i32 0, i32 0
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @version_self_print(i32* %arraydecay27, %struct._IO_FILE* %46)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call28 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0), %struct._IO_FILE* %47)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %48 = load i64, i64* %i, align 8
  %inc = add i64 %48, 1
  store i64 %inc, i64* %i, align 8
  %49 = load i32, i32* %rows, align 4
  %conv29 = sext i32 %49 to i64
  %rem = urem i64 %inc, %conv29
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %50 = load i64, i64* %i, align 8
  %51 = load %struct.darray*, %struct.darray** %entries, align 8
  %len30 = getelementptr inbounds %struct.darray, %struct.darray* %51, i32 0, i32 5
  %52 = load i64, i64* %len30, align 8
  %cmp31 = icmp ult i64 %50, %52
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %53 = phi i1 [ false, %do.cond ], [ %cmp31, %land.rhs ]
  br i1 %53, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call33 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), %struct._IO_FILE* %54)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call34 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), %struct._IO_FILE* %55)
  %56 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %57 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs35 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %57, i32 0, i32 68
  %58 = load %struct.darray*, %struct.darray** %jobs35, align 8
  %len36 = getelementptr inbounds %struct.darray, %struct.darray* %58, i32 0, i32 5
  %59 = load i64, i64* %len36, align 8
  %sub37 = sub i64 %59, 1
  %60 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs38 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %60, i32 0, i32 68
  %61 = load %struct.darray*, %struct.darray** %jobs38, align 8
  %content39 = getelementptr inbounds %struct.darray, %struct.darray* %61, i32 0, i32 6
  %62 = load i8**, i8*** %content39, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %62, i64 %sub37
  %63 = load i8*, i8** %arrayidx40, align 8
  %64 = bitcast i8* %63 to %struct.file_job*
  %call41 = call i8* @expand_user_string(%struct.a2ps_job* %56, %struct.file_job* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.45, i32 0, i32 0))
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call42 = call i32 @fputs(i8* %call41, %struct._IO_FILE* %65)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call43 = call i32 @fputs(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i32 0, i32 0), %struct._IO_FILE* %66)
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call44 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), %struct._IO_FILE* %67)
  store i64 0, i64* %i, align 8
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc, %for.end
  %68 = load i64, i64* %i, align 8
  %69 = load %struct.darray*, %struct.darray** %entries, align 8
  %len46 = getelementptr inbounds %struct.darray, %struct.darray* %69, i32 0, i32 5
  %70 = load i64, i64* %len46, align 8
  %cmp47 = icmp ult i64 %68, %70
  br i1 %cmp47, label %for.body.49, label %for.end.54

for.body.49:                                      ; preds = %for.cond.45
  %71 = load i64, i64* %i, align 8
  %72 = load %struct.darray*, %struct.darray** %entries, align 8
  %content50 = getelementptr inbounds %struct.darray, %struct.darray* %72, i32 0, i32 6
  %73 = load i8**, i8*** %content50, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %73, i64 %71
  %74 = load i8*, i8** %arrayidx51, align 8
  %call52 = call %struct.style_sheet* @get_style_sheet(i8* %74)
  store %struct.style_sheet* %call52, %struct.style_sheet** %sheet, align 8
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %76 = load %struct.style_sheet*, %struct.style_sheet** %sheet, align 8
  call void @style_sheet_html_print_signature(%struct._IO_FILE* %75, %struct.style_sheet* %76)
  br label %for.inc

for.inc:                                          ; preds = %for.body.49
  %77 = load i64, i64* %i, align 8
  %inc53 = add i64 %77, 1
  store i64 %inc53, i64* %i, align 8
  br label %for.cond.45

for.end.54:                                       ; preds = %for.cond.45
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call55 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), %struct._IO_FILE* %78)
  %79 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %80 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs56 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %80, i32 0, i32 68
  %81 = load %struct.darray*, %struct.darray** %jobs56, align 8
  %len57 = getelementptr inbounds %struct.darray, %struct.darray* %81, i32 0, i32 5
  %82 = load i64, i64* %len57, align 8
  %sub58 = sub i64 %82, 1
  %83 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs59 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %83, i32 0, i32 68
  %84 = load %struct.darray*, %struct.darray** %jobs59, align 8
  %content60 = getelementptr inbounds %struct.darray, %struct.darray* %84, i32 0, i32 6
  %85 = load i8**, i8*** %content60, align 8
  %arrayidx61 = getelementptr inbounds i8*, i8** %85, i64 %sub58
  %86 = load i8*, i8** %arrayidx61, align 8
  %87 = bitcast i8* %86 to %struct.file_job*
  %call62 = call i8* @expand_user_string(%struct.a2ps_job* %79, %struct.file_job* %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.49, i32 0, i32 0))
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call63 = call i32 @fputs(i8* %call62, %struct._IO_FILE* %88)
  %89 = load %struct.darray*, %struct.darray** %entries, align 8
  call void @da_free(%struct.darray* %89, void (i8*)* @free)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @style_sheets_versions(%struct.darray* %keys, i32* %sum, i32* %requirement) #3 {
entry:
  %keys.addr = alloca %struct.darray*, align 8
  %sum.addr = alloca i32*, align 8
  %requirement.addr = alloca i32*, align 8
  %i = alloca i64, align 8
  %sheet = alloca %struct.style_sheet*, align 8
  store %struct.darray* %keys, %struct.darray** %keys.addr, align 8
  store i32* %sum, i32** %sum.addr, align 8
  store i32* %requirement, i32** %requirement.addr, align 8
  %0 = load i32*, i32** %sum.addr, align 8
  call void @version_set_to_null(i32* %0)
  %1 = load i32*, i32** %requirement.addr, align 8
  call void @version_set_to_null(i32* %1)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load %struct.darray*, %struct.darray** %keys.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %3, i32 0, i32 5
  %4 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %i, align 8
  %6 = load %struct.darray*, %struct.darray** %keys.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %6, i32 0, i32 6
  %7 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %5
  %8 = load i8*, i8** %arrayidx, align 8
  %call = call %struct.style_sheet* @get_style_sheet(i8* %8)
  store %struct.style_sheet* %call, %struct.style_sheet** %sheet, align 8
  %9 = load i32*, i32** %sum.addr, align 8
  %10 = load %struct.style_sheet*, %struct.style_sheet** %sheet, align 8
  %version = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %10, i32 0, i32 3
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %version, i32 0, i32 0
  call void @version_add(i32* %9, i32* %arraydecay)
  %11 = load %struct.style_sheet*, %struct.style_sheet** %sheet, align 8
  %requirement1 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %11, i32 0, i32 4
  %arraydecay2 = getelementptr inbounds [4 x i32], [4 x i32]* %requirement1, i32 0, i32 0
  %12 = load i32*, i32** %requirement.addr, align 8
  %call3 = call i32 @version_cmp(i32* %arraydecay2, i32* %12)
  %cmp4 = icmp sgt i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load i32*, i32** %requirement.addr, align 8
  %14 = load %struct.style_sheet*, %struct.style_sheet** %sheet, align 8
  %requirement5 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %14, i32 0, i32 4
  %arraydecay6 = getelementptr inbounds [4 x i32], [4 x i32]* %requirement5, i32 0, i32 0
  call void @version_cpy(i32* %13, i32* %arraydecay6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i64, i64* %i, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i8* @expand_user_string(%struct.a2ps_job*, %struct.file_job*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @style_sheet_html_print_signature(%struct._IO_FILE* %stream, %struct.style_sheet* %sheet) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %sheet.addr = alloca %struct.style_sheet*, align 8
  %i = alloca i64, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.style_sheet* %sheet, %struct.style_sheet** %sheet.addr, align 8
  %0 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %version = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %version, i32 0, i32 0
  %call = call zeroext i1 @version_null_p(i32* %arraydecay)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %2 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %key = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %2, i32 0, i32 0
  %3 = load i8*, i8** %key, align 8
  %4 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %key1 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %4, i32 0, i32 0
  %5 = load i8*, i8** %key1, align 8
  %6 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %name = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %6, i32 0, i32 1
  %7 = load i8*, i8** %name, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.73, i32 0, i32 0), i8* %3, i8* %5, i8* %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %9 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %key3 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %9, i32 0, i32 0
  %10 = load i8*, i8** %key3, align 8
  %11 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %key4 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %11, i32 0, i32 0
  %12 = load i8*, i8** %key4, align 8
  %13 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %name5 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %13, i32 0, i32 1
  %14 = load i8*, i8** %name5, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.74, i32 0, i32 0), i8* %10, i8* %12, i8* %14)
  %15 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %version7 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %15, i32 0, i32 3
  %arraydecay8 = getelementptr inbounds [4 x i32], [4 x i32]* %version7, i32 0, i32 0
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @version_self_print(i32* %arraydecay8, %struct._IO_FILE* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call9 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), %struct._IO_FILE* %17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %author = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %18, i32 0, i32 2
  %19 = load i8*, i8** %author, align 8
  %cmp = icmp eq i8* %19, null
  br i1 %cmp, label %lor.lhs.false.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %20 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %author10 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %20, i32 0, i32 2
  %21 = load i8*, i8** %author10, align 8
  %22 = load i8, i8* %21, align 1
  %conv = zext i8 %22 to i32
  %cmp11 = icmp eq i32 %conv, 0
  br i1 %cmp11, label %lor.lhs.false.13, label %if.then.19

lor.lhs.false.13:                                 ; preds = %lor.lhs.false, %if.end
  %23 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %requirement = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %23, i32 0, i32 4
  %arraydecay14 = getelementptr inbounds [4 x i32], [4 x i32]* %requirement, i32 0, i32 0
  %call15 = call zeroext i1 @version_null_p(i32* %arraydecay14)
  br i1 %call15, label %lor.lhs.false.16, label %if.then.19

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.13
  %24 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %ancestors = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %24, i32 0, i32 6
  %25 = load %struct.darray*, %struct.darray** %ancestors, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %25, i32 0, i32 5
  %26 = load i64, i64* %len, align 8
  %cmp17 = icmp ugt i64 %26, 0
  br i1 %cmp17, label %if.then.19, label %if.end.49

if.then.19:                                       ; preds = %lor.lhs.false.16, %lor.lhs.false.13, %lor.lhs.false
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call20 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), %struct._IO_FILE* %27)
  %28 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %author21 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %28, i32 0, i32 2
  %29 = load i8*, i8** %author21, align 8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @authors_print_html(i8* %29, %struct._IO_FILE* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0))
  %31 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %requirement22 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %31, i32 0, i32 4
  %arraydecay23 = getelementptr inbounds [4 x i32], [4 x i32]* %requirement22, i32 0, i32 0
  %call24 = call zeroext i1 @version_null_p(i32* %arraydecay23)
  br i1 %call24, label %if.end.30, label %if.then.25

if.then.25:                                       ; preds = %if.then.19
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call26 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.77, i32 0, i32 0), %struct._IO_FILE* %32)
  %33 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %requirement27 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %33, i32 0, i32 4
  %arraydecay28 = getelementptr inbounds [4 x i32], [4 x i32]* %requirement27, i32 0, i32 0
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @version_self_print(i32* %arraydecay28, %struct._IO_FILE* %34)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call29 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), %struct._IO_FILE* %35)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %if.then.19
  %36 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %ancestors31 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %36, i32 0, i32 6
  %37 = load %struct.darray*, %struct.darray** %ancestors31, align 8
  %len32 = getelementptr inbounds %struct.darray, %struct.darray* %37, i32 0, i32 5
  %38 = load i64, i64* %len32, align 8
  %cmp33 = icmp ugt i64 %38, 0
  br i1 %cmp33, label %if.then.35, label %if.end.47

if.then.35:                                       ; preds = %if.end.30
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call36 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), %struct._IO_FILE* %39)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.35
  %40 = load i64, i64* %i, align 8
  %41 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %ancestors37 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %41, i32 0, i32 6
  %42 = load %struct.darray*, %struct.darray** %ancestors37, align 8
  %len38 = getelementptr inbounds %struct.darray, %struct.darray* %42, i32 0, i32 5
  %43 = load i64, i64* %len38, align 8
  %cmp39 = icmp ult i64 %40, %43
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %45 = load i64, i64* %i, align 8
  %tobool = icmp ne i64 %45, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0)
  %46 = load i64, i64* %i, align 8
  %47 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %ancestors41 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %47, i32 0, i32 6
  %48 = load %struct.darray*, %struct.darray** %ancestors41, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %48, i32 0, i32 6
  %49 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %49, i64 %46
  %50 = load i8*, i8** %arrayidx, align 8
  %51 = load i64, i64* %i, align 8
  %52 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %ancestors42 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %52, i32 0, i32 6
  %53 = load %struct.darray*, %struct.darray** %ancestors42, align 8
  %content43 = getelementptr inbounds %struct.darray, %struct.darray* %53, i32 0, i32 6
  %54 = load i8**, i8*** %content43, align 8
  %arrayidx44 = getelementptr inbounds i8*, i8** %54, i64 %51
  %55 = load i8*, i8** %arrayidx44, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.78, i32 0, i32 0), i8* %cond, i8* %50, i8* %55)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %56 = load i64, i64* %i, align 8
  %inc = add i64 %56, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call46 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), %struct._IO_FILE* %57)
  br label %if.end.47

if.end.47:                                        ; preds = %for.end, %if.end.30
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call48 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), %struct._IO_FILE* %58)
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.47, %lor.lhs.false.16
  %59 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %documentation = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %59, i32 0, i32 5
  %60 = load i8*, i8** %documentation, align 8
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @documentation_print_html(i8* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), %struct._IO_FILE* %61)
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call50 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0), %struct._IO_FILE* %62)
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_style_sheets_texinfo(%struct._IO_FILE* %stream) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %sheet = alloca %struct.style_sheet*, align 8
  %entries = alloca %struct.darray*, align 8
  %i = alloca i64, align 8
  %version_index = alloca [3 x i32], align 4
  %requirement = alloca [3 x i32], align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 2
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %1 = load i8**, i8*** %path, align 8
  %call = call %struct.darray* @pw_glob_on_suffix(i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0))
  store %struct.darray* %call, %struct.darray** %entries, align 8
  %2 = load %struct.darray*, %struct.darray** %entries, align 8
  %cmp = getelementptr inbounds %struct.darray, %struct.darray* %2, i32 0, i32 8
  store i32 (i8*, i8*)* @sheet_name_cmp, i32 (i8*, i8*)** %cmp, align 8
  %3 = load %struct.darray*, %struct.darray** %entries, align 8
  call void @da_qsort(%struct.darray* %3)
  %4 = load %struct.darray*, %struct.darray** %entries, align 8
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %version_index, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [3 x i32], [3 x i32]* %requirement, i32 0, i32 0
  call void @style_sheets_versions(%struct.darray* %4, i32* %arraydecay, i32* %arraydecay1)
  %5 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 4, %5
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.50, i32 0, i32 0), %struct._IO_FILE* %6)
  %arraydecay3 = getelementptr inbounds [3 x i32], [3 x i32]* %version_index, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @version_self_print(i32* %arraydecay3, %struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.51, i32 0, i32 0), %struct._IO_FILE* %8)
  %arraydecay5 = getelementptr inbounds [3 x i32], [3 x i32]* %requirement, i32 0, i32 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @version_self_print(i32* %arraydecay5, %struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call6 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), %struct._IO_FILE* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i64, i64* %i, align 8
  %12 = load %struct.darray*, %struct.darray** %entries, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %12, i32 0, i32 5
  %13 = load i64, i64* %len, align 8
  %cmp7 = icmp ult i64 %11, %13
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i64, i64* %i, align 8
  %15 = load %struct.darray*, %struct.darray** %entries, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %15, i32 0, i32 6
  %16 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %16, i64 %14
  %17 = load i8*, i8** %arrayidx, align 8
  %call8 = call %struct.style_sheet* @get_style_sheet(i8* %17)
  store %struct.style_sheet* %call8, %struct.style_sheet** %sheet, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %19 = load %struct.style_sheet*, %struct.style_sheet** %sheet, align 8
  call void @style_sheet_texinfo_print_signature(%struct._IO_FILE* %18, %struct.style_sheet* %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i64, i64* %i, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.darray*, %struct.darray** %entries, align 8
  call void @da_free(%struct.darray* %21, void (i8*)* @free)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @style_sheet_texinfo_print_signature(%struct._IO_FILE* %stream, %struct.style_sheet* %sheet) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %sheet.addr = alloca %struct.style_sheet*, align 8
  %i = alloca i64, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.style_sheet* %sheet, %struct.style_sheet** %sheet.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %1 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %name = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %1, i32 0, i32 1
  %2 = load i8*, i8** %name, align 8
  %3 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %key = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %3, i32 0, i32 0
  %4 = load i8*, i8** %key, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.82, i32 0, i32 0), i8* %2, i8* %4)
  %5 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %author = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %5, i32 0, i32 2
  %6 = load i8*, i8** %author, align 8
  %cmp = icmp eq i8* %6, null
  br i1 %cmp, label %lor.lhs.false.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %author1 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %7, i32 0, i32 2
  %8 = load i8*, i8** %author1, align 8
  %9 = load i8, i8* %8, align 1
  %conv = zext i8 %9 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %lor.lhs.false.4, label %if.then

lor.lhs.false.4:                                  ; preds = %lor.lhs.false, %entry
  %10 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 4, %10
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %lor.lhs.false.4
  %11 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %requirement = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %11, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %requirement, i32 0, i32 0
  %call5 = call zeroext i1 @version_null_p(i32* %arraydecay)
  br i1 %call5, label %lor.lhs.false.6, label %if.then

lor.lhs.false.6:                                  ; preds = %land.lhs.true
  %12 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %ancestors = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %12, i32 0, i32 6
  %13 = load %struct.darray*, %struct.darray** %ancestors, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %13, i32 0, i32 5
  %14 = load i64, i64* %len, align 8
  %cmp7 = icmp ugt i64 %14, 0
  br i1 %cmp7, label %if.then, label %if.end.37

if.then:                                          ; preds = %lor.lhs.false.6, %land.lhs.true, %lor.lhs.false
  %15 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %author9 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %15, i32 0, i32 2
  %16 = load i8*, i8** %author9, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @authors_print_texinfo(i8* %16, %struct._IO_FILE* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0))
  %18 = load i32, i32* @msg_verbosity, align 4
  %and10 = and i32 4, %18
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.36

if.then.12:                                       ; preds = %if.then
  %19 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %requirement13 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %19, i32 0, i32 4
  %arraydecay14 = getelementptr inbounds [4 x i32], [4 x i32]* %requirement13, i32 0, i32 0
  %call15 = call zeroext i1 @version_null_p(i32* %arraydecay14)
  br i1 %call15, label %if.end, label %if.then.16

if.then.16:                                       ; preds = %if.then.12
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call17 = call i32 @fputs(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.83, i32 0, i32 0), %struct._IO_FILE* %20)
  %21 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %requirement18 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %21, i32 0, i32 4
  %arraydecay19 = getelementptr inbounds [4 x i32], [4 x i32]* %requirement18, i32 0, i32 0
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @version_self_print(i32* %arraydecay19, %struct._IO_FILE* %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call20 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), %struct._IO_FILE* %23)
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.then.12
  %24 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %ancestors21 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %24, i32 0, i32 6
  %25 = load %struct.darray*, %struct.darray** %ancestors21, align 8
  %len22 = getelementptr inbounds %struct.darray, %struct.darray* %25, i32 0, i32 5
  %26 = load i64, i64* %len22, align 8
  %cmp23 = icmp ugt i64 %26, 0
  br i1 %cmp23, label %if.then.25, label %if.end.35

if.then.25:                                       ; preds = %if.end
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call26 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), %struct._IO_FILE* %27)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.25
  %28 = load i64, i64* %i, align 8
  %29 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %ancestors27 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %29, i32 0, i32 6
  %30 = load %struct.darray*, %struct.darray** %ancestors27, align 8
  %len28 = getelementptr inbounds %struct.darray, %struct.darray* %30, i32 0, i32 5
  %31 = load i64, i64* %len28, align 8
  %cmp29 = icmp ult i64 %28, %31
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %33 = load i64, i64* %i, align 8
  %tobool31 = icmp ne i64 %33, 0
  %cond = select i1 %tobool31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0)
  %34 = load i64, i64* %i, align 8
  %35 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %ancestors32 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %35, i32 0, i32 6
  %36 = load %struct.darray*, %struct.darray** %ancestors32, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %36, i32 0, i32 6
  %37 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %37, i64 %34
  %38 = load i8*, i8** %arrayidx, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.85, i32 0, i32 0), i8* %cond, i8* %38)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i64, i64* %i, align 8
  %inc = add i64 %39, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call34 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), %struct._IO_FILE* %40)
  br label %if.end.35

if.end.35:                                        ; preds = %for.end, %if.end
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %lor.lhs.false.6, %lor.lhs.false.4
  %41 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %documentation = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %41, i32 0, i32 5
  %42 = load i8*, i8** %documentation, align 8
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @documentation_print_texinfo(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), %struct._IO_FILE* %43)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call38 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i32 0, i32 0), %struct._IO_FILE* %44)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.hash_table_s* @new_style_sheets() #0 {
entry:
  %res = alloca %struct.hash_table_s*, align 8
  %call = call i8* @xmalloc(i64 80)
  %0 = bitcast i8* %call to %struct.hash_table_s*
  store %struct.hash_table_s* %0, %struct.hash_table_s** %res, align 8
  %1 = load %struct.hash_table_s*, %struct.hash_table_s** %res, align 8
  call void @hash_init(%struct.hash_table_s* %1, i64 8, i64 (i8*)* @sheet_hash_1, i64 (i8*)* @sheet_hash_2, i32 (i8*, i8*)* @sheet_hash_cmp)
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** %res, align 8
  ret %struct.hash_table_s* %2
}

declare void @hash_init(%struct.hash_table_s*, i64, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i64 @sheet_hash_1(i8* %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %result = alloca i64, align 8
  %kk = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %result, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load i8*, i8** %key.addr, align 8
  %1 = bitcast i8* %0 to %struct.style_sheet*
  %key2 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %1, i32 0, i32 0
  %2 = load i8*, i8** %key2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 -1
  store i8* %add.ptr, i8** %kk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %3 = load i8*, i8** %kk, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %kk, align 8
  %4 = load i8, i8* %incdec.ptr, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %kk, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %7 = load i8*, i8** %kk, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %8 to i32
  %and = and i32 %conv3, 15
  %shl = shl i32 %conv, %and
  %conv4 = sext i32 %shl to i64
  %9 = load i64, i64* %result, align 8
  %add = add i64 %9, %conv4
  store i64 %add, i64* %result, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  %10 = load i64, i64* %result, align 8
  br label %do.end.5

do.end.5:                                         ; preds = %do.end
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define internal i64 @sheet_hash_2(i8* %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %result = alloca i64, align 8
  %kk = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %result, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load i8*, i8** %key.addr, align 8
  %1 = bitcast i8* %0 to %struct.style_sheet*
  %key2 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %1, i32 0, i32 0
  %2 = load i8*, i8** %key2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 -1
  store i8* %add.ptr, i8** %kk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %3 = load i8*, i8** %kk, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %kk, align 8
  %4 = load i8, i8* %incdec.ptr, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %kk, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %7 = load i8*, i8** %kk, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %8 to i32
  %and = and i32 %conv3, 7
  %shl = shl i32 %conv, %and
  %conv4 = sext i32 %shl to i64
  %9 = load i64, i64* %result, align 8
  %add = add i64 %9, %conv4
  store i64 %add, i64* %result, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  %10 = load i64, i64* %result, align 8
  br label %do.end.5

do.end.5:                                         ; preds = %do.end
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @sheet_hash_cmp(i8* %x, i8* %y) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  %result = alloca i32, align 4
  %xx = alloca i8*, align 8
  %yy = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load i8*, i8** %x.addr, align 8
  %1 = bitcast i8* %0 to %struct.style_sheet*
  %key = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %1, i32 0, i32 0
  %2 = load i8*, i8** %key, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 -1
  store i8* %add.ptr, i8** %xx, align 8
  %3 = load i8*, i8** %y.addr, align 8
  %4 = bitcast i8* %3 to %struct.style_sheet*
  %key2 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %4, i32 0, i32 0
  %5 = load i8*, i8** %key2, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 -1
  store i8* %add.ptr3, i8** %yy, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %do.cond, %do.body.1
  %6 = load i8*, i8** %xx, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %xx, align 8
  %7 = load i8, i8* %incdec.ptr, align 1
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.4
  %8 = load i8*, i8** %yy, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr6, i8** %yy, align 8
  br label %do.end

if.end:                                           ; preds = %do.body.4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %9 = load i8*, i8** %xx, align 8
  %10 = load i8, i8* %9, align 1
  %conv7 = zext i8 %10 to i32
  %11 = load i8*, i8** %yy, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr8, i8** %yy, align 8
  %12 = load i8, i8* %incdec.ptr8, align 1
  %conv9 = zext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv7, %conv9
  br i1 %cmp10, label %do.body.4, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %13 = load i8*, i8** %xx, align 8
  %14 = load i8, i8* %13, align 1
  %conv12 = zext i8 %14 to i32
  %15 = load i8*, i8** %yy, align 8
  %16 = load i8, i8* %15, align 1
  %conv13 = zext i8 %16 to i32
  %sub = sub nsw i32 %conv12, %conv13
  store i32 %sub, i32* %result, align 4
  br label %do.end.15

do.end.15:                                        ; preds = %do.end
  %17 = load i32, i32* %result, align 4
  br label %do.end.17

do.end.17:                                        ; preds = %do.end.15
  ret i32 %17
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal i8* @style_sheet_mixed_new(i8* %ancestors) #0 {
entry:
  %ancestors.addr = alloca i8*, align 8
  %sheet = alloca %struct.style_sheet*, align 8
  %ancestor = alloca %struct.style_sheet*, align 8
  %ancestor_key = alloca i8*, align 8
  %key = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %ancestors_keys = alloca i8*, align 8
  %ancestors_array = alloca %struct.darray*, align 8
  %_tmp_ = alloca i8*, align 8
  store i8* %ancestors, i8** %ancestors.addr, align 8
  %0 = load i8*, i8** %ancestors.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %add = add i64 %call, 1
  %mul = mul i64 1, %add
  %1 = alloca i8, i64 %mul
  store i8* %1, i8** %key, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i8*, i8** %ancestors.addr, align 8
  store i8* %2, i8** %_tmp_, align 8
  %3 = load i8*, i8** %_tmp_, align 8
  %call1 = call i64 @strlen(i8* %3) #6
  %add2 = add i64 %call1, 1
  %mul3 = mul i64 1, %add2
  %4 = alloca i8, i64 %mul3
  store i8* %4, i8** %ancestors_keys, align 8
  %5 = load i8*, i8** %ancestors_keys, align 8
  %6 = load i8*, i8** %_tmp_, align 8
  %call4 = call i8* @strcpy(i8* %5, i8* %6) #2
  br label %do.end

do.end:                                           ; preds = %do.body
  %call5 = call %struct.darray* @ancestors_new()
  store %struct.darray* %call5, %struct.darray** %ancestors_array, align 8
  %7 = load i8*, i8** %ancestors_keys, align 8
  %call6 = call i8* @strtok(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0)) #2
  store i8* %call6, i8** %ancestor_key, align 8
  %8 = load %struct.darray*, %struct.darray** %ancestors_array, align 8
  %9 = load i8*, i8** %ancestor_key, align 8
  call void @da_append(%struct.darray* %8, i8* %9)
  %10 = load i8*, i8** %ancestor_key, align 8
  %call7 = call %struct.style_sheet* @get_style_sheet(i8* %10)
  store %struct.style_sheet* %call7, %struct.style_sheet** %ancestor, align 8
  %11 = load i8*, i8** %key, align 8
  %12 = load %struct.style_sheet*, %struct.style_sheet** %ancestor, align 8
  %key8 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %12, i32 0, i32 0
  %13 = load i8*, i8** %key8, align 8
  %call9 = call i8* @stpcpy(i8* %11, i8* %13) #2
  store i8* %call9, i8** %cp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %call10 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0)) #2
  store i8* %call10, i8** %ancestor_key, align 8
  %tobool = icmp ne i8* %call10, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load %struct.darray*, %struct.darray** %ancestors_array, align 8
  %15 = load i8*, i8** %ancestor_key, align 8
  call void @da_append(%struct.darray* %14, i8* %15)
  %16 = load i8*, i8** %ancestor_key, align 8
  %call11 = call %struct.style_sheet* @get_style_sheet(i8* %16)
  store %struct.style_sheet* %call11, %struct.style_sheet** %ancestor, align 8
  %17 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  store i8 44, i8* %17, align 1
  %18 = load i8*, i8** %cp, align 8
  %19 = load %struct.style_sheet*, %struct.style_sheet** %ancestor, align 8
  %key12 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %19, i32 0, i32 0
  %20 = load i8*, i8** %key12, align 8
  %call13 = call i8* @stpcpy(i8* %18, i8* %20) #2
  store i8* %call13, i8** %cp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load i8*, i8** %cp, align 8
  store i8 0, i8* %21, align 1
  %22 = load i8*, i8** %key, align 8
  %call14 = call i8* @xstrdup(i8* %22)
  store i8* %call14, i8** %key, align 8
  br label %do.body.15

do.body.15:                                       ; preds = %while.end
  %23 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 4, %23
  %tobool16 = icmp ne i32 %and, 0
  br i1 %tobool16, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.15
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = load i8*, i8** %key, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.89, i32 0, i32 0), i8* %25)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end
  %26 = load i8*, i8** %key, align 8
  %call19 = call %struct.style_sheet* @new_style_sheet(i8* %26)
  store %struct.style_sheet* %call19, %struct.style_sheet** %sheet, align 8
  %27 = load i8*, i8** %key, align 8
  %call20 = call noalias i8* @strdup(i8* %27) #2
  %28 = load %struct.style_sheet*, %struct.style_sheet** %sheet, align 8
  %key21 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %28, i32 0, i32 0
  store i8* %call20, i8** %key21, align 8
  %29 = load %struct.style_sheet*, %struct.style_sheet** %sheet, align 8
  %ancestors22 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %29, i32 0, i32 6
  %30 = load %struct.darray*, %struct.darray** %ancestors22, align 8
  %31 = load %struct.darray*, %struct.darray** %ancestors_array, align 8
  call void @da_concat(%struct.darray* %30, %struct.darray* %31)
  %32 = load %struct.darray*, %struct.darray** %ancestors_array, align 8
  call void @da_erase(%struct.darray* %32)
  %33 = load %struct.style_sheet*, %struct.style_sheet** %sheet, align 8
  call void @style_sheet_finalize(%struct.style_sheet* %33)
  %34 = load i8*, i8** %key, align 8
  ret i8* %34
}

; Function Attrs: nounwind uwtable
define internal void @require_style_sheet(i8* %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %item = alloca %struct.style_sheet*, align 8
  %token = alloca %struct.style_sheet, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0)) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %key.addr, align 8
  %key1 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %token, i32 0, i32 0
  store i8* %1, i8** %key1, align 8
  %2 = load %struct.hash_table_s*, %struct.hash_table_s** @style_sheets, align 8
  %3 = bitcast %struct.style_sheet* %token to i8*
  %call2 = call i8* @hash_find_item(%struct.hash_table_s* %2, i8* %3)
  %4 = bitcast i8* %call2 to %struct.style_sheet*
  store %struct.style_sheet* %4, %struct.style_sheet** %item, align 8
  %5 = load %struct.style_sheet*, %struct.style_sheet** %item, align 8
  %cmp3 = icmp eq %struct.style_sheet* %5, null
  br i1 %cmp3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.end
  %6 = load i8*, i8** %key.addr, align 8
  %call5 = call %struct.style_sheet* @load_style_sheet(i8* %6)
  store %struct.style_sheet* %call5, %struct.style_sheet** %item, align 8
  %7 = load %struct.style_sheet*, %struct.style_sheet** %item, align 8
  %cmp6 = icmp eq %struct.style_sheet* %7, null
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.then.4
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.90, i32 0, i32 0)) #2
  %8 = load i8*, i8** %key.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %call8, i8* %8)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.then.4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  br label %return

return:                                           ; preds = %if.end.10, %if.then
  ret void
}

declare i8* @hash_find_item(%struct.hash_table_s*, i8*) #1

declare i8* @re_compile_pattern(i8*, i64, %struct.re_pattern_buffer*) #1

declare void @error_at_line(i32, i32, i8*, i32, i8*, ...) #1

declare void @regfree(%struct.re_pattern_buffer*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @faced_string_free(%struct.faced_string* %faced_string) #3 {
entry:
  %faced_string.addr = alloca %struct.faced_string*, align 8
  store %struct.faced_string* %faced_string, %struct.faced_string** %faced_string.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.faced_string*, %struct.faced_string** %faced_string.addr, align 8
  %string = getelementptr inbounds %struct.faced_string, %struct.faced_string* %0, i32 0, i32 0
  %1 = load i8*, i8** %string, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load %struct.faced_string*, %struct.faced_string** %faced_string.addr, align 8
  %string1 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %2, i32 0, i32 0
  %3 = load i8*, i8** %string1, align 8
  call void @free(i8* %3) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct.faced_string*, %struct.faced_string** %faced_string.addr, align 8
  %5 = bitcast %struct.faced_string* %4 to i8*
  call void @free(i8* %5) #2
  ret void
}

declare void @da_erase(%struct.darray*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @rhs_set_no_face(%struct.darray* %dest, i64 %face.coerce) #3 {
entry:
  %face = alloca %struct.fface_s, align 8
  %dest.addr = alloca %struct.darray*, align 8
  %i = alloca i64, align 8
  %0 = bitcast %struct.fface_s* %face to i64*
  store i64 %face.coerce, i64* %0, align 8
  store %struct.darray* %dest, %struct.darray** %dest.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load %struct.darray*, %struct.darray** %dest.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %2, i32 0, i32 5
  %3 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.darray*, %struct.darray** %dest.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 6
  %6 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %4
  %7 = load i8*, i8** %arrayidx, align 8
  %8 = bitcast i8* %7 to %struct.faced_string*
  %face1 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %8, i32 0, i32 2
  %face2 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %face1, i32 0, i32 0
  %9 = load i32, i32* %face2, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.fface_s, %struct.fface_s* @No_fface, i32 0, i32 0), align 4
  %cmp3 = icmp eq i32 %9, %10
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %11 = load i64, i64* %i, align 8
  %12 = load %struct.darray*, %struct.darray** %dest.addr, align 8
  %content4 = getelementptr inbounds %struct.darray, %struct.darray* %12, i32 0, i32 6
  %13 = load i8**, i8*** %content4, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %13, i64 %11
  %14 = load i8*, i8** %arrayidx5, align 8
  %15 = bitcast i8* %14 to %struct.faced_string*
  %face6 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %15, i32 0, i32 2
  %flags = getelementptr inbounds %struct.fface_s, %struct.fface_s* %face6, i32 0, i32 1
  %16 = load i32, i32* %flags, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.fface_s, %struct.fface_s* @No_fface, i32 0, i32 1), align 4
  %cmp7 = icmp eq i32 %16, %17
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %18 = load i64, i64* %i, align 8
  %19 = load %struct.darray*, %struct.darray** %dest.addr, align 8
  %content8 = getelementptr inbounds %struct.darray, %struct.darray* %19, i32 0, i32 6
  %20 = load i8**, i8*** %content8, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %20, i64 %18
  %21 = load i8*, i8** %arrayidx9, align 8
  %22 = bitcast i8* %21 to %struct.faced_string*
  %face10 = getelementptr inbounds %struct.faced_string, %struct.faced_string* %22, i32 0, i32 2
  %23 = bitcast %struct.fface_s* %face10 to i8*
  %24 = bitcast %struct.fface_s* %face to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 8, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i64, i64* %i, align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @da_str_print(i8*, %struct._IO_FILE*) #1

declare void @da_prefix(%struct.darray*, %struct.darray*) #1

declare i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #5

declare zeroext i1 @version_null_p(i32*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @version_length(i32*) #1

declare void @authors_print_plain(i8*, %struct._IO_FILE*, i8*) #1

declare void @documentation_print_plain(i8*, i8*, %struct._IO_FILE*) #1

declare void @authors_print_html(i8*, %struct._IO_FILE*, i8*) #1

declare void @documentation_print_html(i8*, i8*, %struct._IO_FILE*) #1

declare void @authors_print_texinfo(i8*, %struct._IO_FILE*, i8*) #1

declare void @documentation_print_texinfo(i8*, i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @check_doubles(%struct.style_sheet* %sheet) #0 {
entry:
  %sheet.addr = alloca %struct.style_sheet*, align 8
  %res = alloca i8, align 1
  store %struct.style_sheet* %sheet, %struct.style_sheet** %sheet.addr, align 8
  store i8 1, i8* %res, align 1
  %0 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %key = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %0, i32 0, i32 0
  %1 = load i8*, i8** %key, align 8
  %2 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %keywords = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %2, i32 0, i32 10
  %3 = load %struct.words*, %struct.words** %keywords, align 8
  %call = call zeroext i1 @check_words_doubles(i8* %1, %struct.words* %3)
  %conv = zext i1 %call to i32
  %4 = load i8, i8* %res, align 1
  %tobool = trunc i8 %4 to i1
  %conv1 = zext i1 %tobool to i32
  %and = and i32 %conv1, %conv
  %tobool2 = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool2 to i8
  store i8 %frombool, i8* %res, align 1
  %5 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %key3 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %5, i32 0, i32 0
  %6 = load i8*, i8** %key3, align 8
  %7 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %operators = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %7, i32 0, i32 11
  %8 = load %struct.words*, %struct.words** %operators, align 8
  %call4 = call zeroext i1 @check_words_doubles(i8* %6, %struct.words* %8)
  %conv5 = zext i1 %call4 to i32
  %9 = load i8, i8* %res, align 1
  %tobool6 = trunc i8 %9 to i1
  %conv7 = zext i1 %tobool6 to i32
  %and8 = and i32 %conv7, %conv5
  %tobool9 = icmp ne i32 %and8, 0
  %frombool10 = zext i1 %tobool9 to i8
  store i8 %frombool10, i8* %res, align 1
  %10 = load i8, i8* %res, align 1
  %tobool11 = trunc i8 %10 to i1
  ret i1 %tobool11
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @check_sensitivity(%struct.style_sheet* %sheet) #0 {
entry:
  %retval = alloca i1, align 1
  %sheet.addr = alloca %struct.style_sheet*, align 8
  %res = alloca i8, align 1
  store %struct.style_sheet* %sheet, %struct.style_sheet** %sheet.addr, align 8
  store i8 1, i8* %res, align 1
  %0 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %sensitiveness = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %0, i32 0, i32 7
  %1 = load i32, i32* %sensitiveness, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %key = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %2, i32 0, i32 0
  %3 = load i8*, i8** %key, align 8
  %4 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %keywords = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %4, i32 0, i32 10
  %5 = load %struct.words*, %struct.words** %keywords, align 8
  %call = call zeroext i1 @check_words_lower_case(i8* %3, %struct.words* %5)
  %conv = zext i1 %call to i32
  %6 = load i8, i8* %res, align 1
  %tobool = trunc i8 %6 to i1
  %conv1 = zext i1 %tobool to i32
  %and = and i32 %conv1, %conv
  %tobool2 = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool2 to i8
  store i8 %frombool, i8* %res, align 1
  %7 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %key3 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %7, i32 0, i32 0
  %8 = load i8*, i8** %key3, align 8
  %9 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %operators = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %9, i32 0, i32 11
  %10 = load %struct.words*, %struct.words** %operators, align 8
  %call4 = call zeroext i1 @check_words_lower_case(i8* %8, %struct.words* %10)
  %conv5 = zext i1 %call4 to i32
  %11 = load i8, i8* %res, align 1
  %tobool6 = trunc i8 %11 to i1
  %conv7 = zext i1 %tobool6 to i32
  %and8 = and i32 %conv7, %conv5
  %tobool9 = icmp ne i32 %and8, 0
  %frombool10 = zext i1 %tobool9 to i8
  store i8 %frombool10, i8* %res, align 1
  %12 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %key11 = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %12, i32 0, i32 0
  %13 = load i8*, i8** %key11, align 8
  %14 = load %struct.style_sheet*, %struct.style_sheet** %sheet.addr, align 8
  %sequences = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %14, i32 0, i32 12
  %15 = load %struct.darray*, %struct.darray** %sequences, align 8
  %call12 = call zeroext i1 @check_sequences_lower_case(i8* %13, %struct.darray* %15)
  %conv13 = zext i1 %call12 to i32
  %16 = load i8, i8* %res, align 1
  %tobool14 = trunc i8 %16 to i1
  %conv15 = zext i1 %tobool14 to i32
  %and16 = and i32 %conv15, %conv13
  %tobool17 = icmp ne i32 %and16, 0
  %frombool18 = zext i1 %tobool17 to i8
  store i8 %frombool18, i8* %res, align 1
  %17 = load i8, i8* %res, align 1
  %tobool19 = trunc i8 %17 to i1
  store i1 %tobool19, i1* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load i1, i1* %retval
  ret i1 %18
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @check_words_doubles(i8* %name, %struct.words* %words) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %words.addr = alloca %struct.words*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.words* %words, %struct.words** %words.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load %struct.words*, %struct.words** %words.addr, align 8
  %strings = getelementptr inbounds %struct.words, %struct.words* %1, i32 0, i32 0
  %2 = load %struct.darray*, %struct.darray** %strings, align 8
  %call = call zeroext i1 @check_rules_doubles(i8* %0, %struct.darray* %2)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load %struct.words*, %struct.words** %words.addr, align 8
  %regexps = getelementptr inbounds %struct.words, %struct.words* %4, i32 0, i32 1
  %5 = load %struct.darray*, %struct.darray** %regexps, align 8
  %call1 = call zeroext i1 @check_rules_doubles(i8* %3, %struct.darray* %5)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %call1, %land.rhs ]
  ret i1 %6
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @check_rules_doubles(i8* %name, %struct.darray* %rules) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %rules.addr = alloca %struct.darray*, align 8
  %i = alloca i64, align 8
  %res = alloca i8, align 1
  store i8* %name, i8** %name.addr, align 8
  store %struct.darray* %rules, %struct.darray** %rules.addr, align 8
  store i8 1, i8* %res, align 1
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.darray*, %struct.darray** %rules.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %1, i32 0, i32 5
  %2 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %sub = sub i64 %3, 1
  %4 = load %struct.darray*, %struct.darray** %rules.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %4, i32 0, i32 6
  %5 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %sub
  %6 = load i8*, i8** %arrayidx, align 8
  %7 = bitcast i8* %6 to %struct.rule*
  %word = getelementptr inbounds %struct.rule, %struct.rule* %7, i32 0, i32 0
  %8 = load i8*, i8** %word, align 8
  %9 = load i64, i64* %i, align 8
  %10 = load %struct.darray*, %struct.darray** %rules.addr, align 8
  %content1 = getelementptr inbounds %struct.darray, %struct.darray* %10, i32 0, i32 6
  %11 = load i8**, i8*** %content1, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %11, i64 %9
  %12 = load i8*, i8** %arrayidx2, align 8
  %13 = bitcast i8* %12 to %struct.rule*
  %word3 = getelementptr inbounds %struct.rule, %struct.rule* %13, i32 0, i32 0
  %14 = load i8*, i8** %word3, align 8
  %call = call i32 @strcmp(i8* %8, i8* %14) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i8 0, i8* %res, align 1
  %15 = load i8*, i8** %name.addr, align 8
  %16 = load i64, i64* %i, align 8
  %17 = load %struct.darray*, %struct.darray** %rules.addr, align 8
  %content4 = getelementptr inbounds %struct.darray, %struct.darray* %17, i32 0, i32 6
  %18 = load i8**, i8*** %content4, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %18, i64 %16
  %19 = load i8*, i8** %arrayidx5, align 8
  %20 = bitcast i8* %19 to %struct.rule*
  %word6 = getelementptr inbounds %struct.rule, %struct.rule* %20, i32 0, i32 0
  %21 = load i8*, i8** %word6, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.87, i32 0, i32 0), i8* %15, i8* %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i64, i64* %i, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i8, i8* %res, align 1
  %tobool7 = trunc i8 %23 to i1
  ret i1 %tobool7
}

declare void @error(i32, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @check_words_lower_case(i8* %name, %struct.words* %words) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %words.addr = alloca %struct.words*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.words* %words, %struct.words** %words.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load %struct.words*, %struct.words** %words.addr, align 8
  %strings = getelementptr inbounds %struct.words, %struct.words* %1, i32 0, i32 0
  %2 = load %struct.darray*, %struct.darray** %strings, align 8
  %call = call zeroext i1 @check_rules_lower_case(i8* %0, %struct.darray* %2)
  br i1 %call, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load %struct.words*, %struct.words** %words.addr, align 8
  %regexps = getelementptr inbounds %struct.words, %struct.words* %4, i32 0, i32 1
  %5 = load %struct.darray*, %struct.darray** %regexps, align 8
  %call1 = call zeroext i1 @check_rules_lower_case(i8* %3, %struct.darray* %5)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %call1, %land.rhs ]
  ret i1 %6
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @check_sequences_lower_case(i8* %name, %struct.darray* %sequences) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %sequences.addr = alloca %struct.darray*, align 8
  %i = alloca i64, align 8
  %res = alloca i8, align 1
  store i8* %name, i8** %name.addr, align 8
  store %struct.darray* %sequences, %struct.darray** %sequences.addr, align 8
  store i8 1, i8* %res, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.darray*, %struct.darray** %sequences.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %1, i32 0, i32 5
  %2 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load i64, i64* %i, align 8
  %5 = load %struct.darray*, %struct.darray** %sequences.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 6
  %6 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %4
  %7 = load i8*, i8** %arrayidx, align 8
  %8 = bitcast i8* %7 to %struct.sequence*
  %call = call zeroext i1 @check_sequence_lower_case(i8* %3, %struct.sequence* %8)
  %conv = zext i1 %call to i32
  %9 = load i8, i8* %res, align 1
  %tobool = trunc i8 %9 to i1
  %conv1 = zext i1 %tobool to i32
  %and = and i32 %conv1, %conv
  %tobool2 = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool2 to i8
  store i8 %frombool, i8* %res, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i8, i8* %res, align 1
  %tobool3 = trunc i8 %11 to i1
  ret i1 %tobool3
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @check_rules_lower_case(i8* %name, %struct.darray* %rules) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %rules.addr = alloca %struct.darray*, align 8
  %i = alloca i64, align 8
  %res = alloca i8, align 1
  store i8* %name, i8** %name.addr, align 8
  store %struct.darray* %rules, %struct.darray** %rules.addr, align 8
  store i8 1, i8* %res, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.darray*, %struct.darray** %rules.addr, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %1, i32 0, i32 5
  %2 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.darray*, %struct.darray** %rules.addr, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %4, i32 0, i32 6
  %5 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %3
  %6 = load i8*, i8** %arrayidx, align 8
  %7 = bitcast i8* %6 to %struct.rule*
  %word = getelementptr inbounds %struct.rule, %struct.rule* %7, i32 0, i32 0
  %8 = load i8*, i8** %word, align 8
  %call = call i32 @is_strlower(i8* %8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %9 = load i8*, i8** %name.addr, align 8
  %10 = load i64, i64* %i, align 8
  %11 = load %struct.darray*, %struct.darray** %rules.addr, align 8
  %content1 = getelementptr inbounds %struct.darray, %struct.darray* %11, i32 0, i32 6
  %12 = load i8**, i8*** %content1, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %12, i64 %10
  %13 = load i8*, i8** %arrayidx2, align 8
  %14 = bitcast i8* %13 to %struct.rule*
  %word3 = getelementptr inbounds %struct.rule, %struct.rule* %14, i32 0, i32 0
  %15 = load i8*, i8** %word3, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.88, i32 0, i32 0), i8* %9, i8* %15)
  store i8 0, i8* %res, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i64, i64* %i, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i8, i8* %res, align 1
  %tobool4 = trunc i8 %17 to i1
  ret i1 %tobool4
}

declare i32 @is_strlower(i8*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @check_sequence_lower_case(i8* %name, %struct.sequence* %sequence) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %sequence.addr = alloca %struct.sequence*, align 8
  %res = alloca i8, align 1
  store i8* %name, i8** %name.addr, align 8
  store %struct.sequence* %sequence, %struct.sequence** %sequence.addr, align 8
  store i8 1, i8* %res, align 1
  %0 = load %struct.sequence*, %struct.sequence** %sequence.addr, align 8
  %open = getelementptr inbounds %struct.sequence, %struct.sequence* %0, i32 0, i32 0
  %1 = load %struct.rule*, %struct.rule** %open, align 8
  %word = getelementptr inbounds %struct.rule, %struct.rule* %1, i32 0, i32 0
  %2 = load i8*, i8** %word, align 8
  %call = call i32 @is_strlower(i8* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load %struct.sequence*, %struct.sequence** %sequence.addr, align 8
  %open1 = getelementptr inbounds %struct.sequence, %struct.sequence* %4, i32 0, i32 0
  %5 = load %struct.rule*, %struct.rule** %open1, align 8
  %word2 = getelementptr inbounds %struct.rule, %struct.rule* %5, i32 0, i32 0
  %6 = load i8*, i8** %word2, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.88, i32 0, i32 0), i8* %3, i8* %6)
  store i8 0, i8* %res, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %name.addr, align 8
  %8 = load %struct.sequence*, %struct.sequence** %sequence.addr, align 8
  %exceptions = getelementptr inbounds %struct.sequence, %struct.sequence* %8, i32 0, i32 2
  %9 = load %struct.words*, %struct.words** %exceptions, align 8
  %call3 = call zeroext i1 @check_words_lower_case(i8* %7, %struct.words* %9)
  %conv = zext i1 %call3 to i32
  %10 = load i8, i8* %res, align 1
  %tobool4 = trunc i8 %10 to i1
  %conv5 = zext i1 %tobool4 to i32
  %and = and i32 %conv5, %conv
  %tobool6 = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool6 to i8
  store i8 %frombool, i8* %res, align 1
  %11 = load i8*, i8** %name.addr, align 8
  %12 = load %struct.sequence*, %struct.sequence** %sequence.addr, align 8
  %close = getelementptr inbounds %struct.sequence, %struct.sequence* %12, i32 0, i32 3
  %13 = load %struct.words*, %struct.words** %close, align 8
  %call7 = call zeroext i1 @check_words_lower_case(i8* %11, %struct.words* %13)
  %conv8 = zext i1 %call7 to i32
  %14 = load i8, i8* %res, align 1
  %tobool9 = trunc i8 %14 to i1
  %conv10 = zext i1 %tobool9 to i32
  %and11 = and i32 %conv10, %conv8
  %tobool12 = icmp ne i32 %and11, 0
  %frombool13 = zext i1 %tobool12 to i8
  store i8 %frombool13, i8* %res, align 1
  %15 = load i8, i8* %res, align 1
  %tobool14 = trunc i8 %15 to i1
  ret i1 %tobool14
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @stpcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #4

; Function Attrs: nounwind uwtable
define internal %struct.style_sheet* @load_style_sheet(i8* %pseudo_key) #0 {
entry:
  %retval = alloca %struct.style_sheet*, align 8
  %pseudo_key.addr = alloca i8*, align 8
  %res = alloca %struct.style_sheet*, align 8
  %path = alloca i8*, align 8
  %file = alloca i8*, align 8
  %_tmp1_ = alloca i8*, align 8
  %_tmp2_ = alloca i8*, align 8
  store i8* %pseudo_key, i8** %pseudo_key.addr, align 8
  %0 = load i8*, i8** %pseudo_key.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %cmp = icmp ult i64 %call, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br i1 false, label %if.then, label %if.else

cond.false:                                       ; preds = %entry
  %1 = load i8*, i8** %pseudo_key.addr, align 8
  %2 = load i8*, i8** %pseudo_key.addr, align 8
  %call1 = call i64 @strlen(i8* %2) #6
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %call1
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 -4
  %call3 = call i32 @strcmp(i8* %add.ptr2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0)) #6
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %cond.false, %cond.true
  %3 = load i8*, i8** %pseudo_key.addr, align 8
  %call4 = call %struct.style_sheet* @parse_style_sheet(i8* %3)
  store %struct.style_sheet* %call4, %struct.style_sheet** %res, align 8
  br label %if.end.19

if.else:                                          ; preds = %cond.false, %cond.true
  %4 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4, i32 0, i32 2
  %path5 = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %5 = load i8**, i8*** %path5, align 8
  %6 = load i8*, i8** %pseudo_key.addr, align 8
  %call6 = call i8* @pw_find_file(i8** %5, i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0))
  store i8* %call6, i8** %path, align 8
  %7 = load i8*, i8** %path, align 8
  %tobool7 = icmp ne i8* %7, null
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %8 = load i8*, i8** %pseudo_key.addr, align 8
  store i8* %8, i8** %_tmp1_, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8** %_tmp2_, align 8
  %9 = load i8*, i8** %_tmp1_, align 8
  %call9 = call i64 @strlen(i8* %9) #6
  %10 = load i8*, i8** %_tmp2_, align 8
  %call10 = call i64 @strlen(i8* %10) #6
  %add = add i64 %call9, %call10
  %add11 = add i64 %add, 1
  %mul = mul i64 1, %add11
  %11 = alloca i8, i64 %mul
  store i8* %11, i8** %file, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.body
  %12 = load i8*, i8** %file, align 8
  %13 = load i8*, i8** %pseudo_key.addr, align 8
  %call13 = call i8* @stpcpy(i8* %12, i8* %13) #2
  %call14 = call i8* @stpcpy(i8* %call13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0)) #2
  br label %do.end

do.end:                                           ; preds = %do.body.12
  br label %do.end.15

do.end.15:                                        ; preds = %do.end
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.91, i32 0, i32 0)) #2
  %14 = load i8*, i8** %file, align 8
  %call17 = call i8* @quotearg(i8* %14)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %call16, i8* %call17)
  store %struct.style_sheet* null, %struct.style_sheet** %retval
  br label %return

if.end:                                           ; preds = %if.else
  %15 = load i8*, i8** %path, align 8
  %call18 = call %struct.style_sheet* @parse_style_sheet(i8* %15)
  store %struct.style_sheet* %call18, %struct.style_sheet** %res, align 8
  %16 = load i8*, i8** %path, align 8
  call void @free(i8* %16) #2
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  %17 = load i8*, i8** %pseudo_key.addr, align 8
  %call20 = call noalias i8* @strdup(i8* %17) #2
  %18 = load %struct.style_sheet*, %struct.style_sheet** %res, align 8
  %key = getelementptr inbounds %struct.style_sheet, %struct.style_sheet* %18, i32 0, i32 0
  store i8* %call20, i8** %key, align 8
  %19 = load %struct.style_sheet*, %struct.style_sheet** %res, align 8
  call void @style_sheet_finalize(%struct.style_sheet* %19)
  %20 = load %struct.style_sheet*, %struct.style_sheet** %res, align 8
  store %struct.style_sheet* %20, %struct.style_sheet** %retval
  br label %return

return:                                           ; preds = %if.end.19, %do.end.15
  %21 = load %struct.style_sheet*, %struct.style_sheet** %retval
  ret %struct.style_sheet* %21
}

declare %struct.style_sheet* @parse_style_sheet(i8*) #1

declare i8* @pw_find_file(i8**, i8*, i8*) #1

declare i8* @quotearg(i8*) #1

declare void @version_add(i32*, i32*) #1

declare void @version_cpy(i32*, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
