; ModuleID = './src/select.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.pattern_rule = type { i8*, i8*, i32, i8 }

@style_request = external global i8*, align 8
@.str = private unnamed_addr constant [11 x i8] c"Sheets map\00", align 1
@sheets_map = external global %struct.darray*, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s/%s: %s/%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@job = external global %struct.a2ps_job*, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"sheets.map\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"cannot find file `%s'\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"automatic style selection cancelled\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"%s '%s'\00", align 1
@msg_verbosity = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.11 = private unnamed_addr constant [20 x i8] c"Reading pipe: `%s'\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"cannot open a pipe on `%s'\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"file(1): %s\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"File's verdict: %s\00", align 1

; Function Attrs: nounwind uwtable
define void @set_requested_style(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %my_s2 = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %arg.addr, align 8
  store i8* %0, i8** %my_s2, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %1 = load i8*, i8** @style_request, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.1
  %2 = load i8*, i8** @style_request, align 8
  call void @free(i8* %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.1
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load i8*, i8** %my_s2, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %cond.false, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %4 = load i8*, i8** %my_s2, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false
  %6 = load i8*, i8** %my_s2, align 8
  %call = call i8* @xstrdup(i8* %6)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false, %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** @style_request, align 8
  br label %do.end.4

do.end.4:                                         ; preds = %cond.end
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

declare i8* @xstrdup(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.pattern_rule* @pattern_rule_new(i8* %pattern, i32 %on_file_verdict, i1 zeroext %insensitive_p, i8* %command) #0 {
entry:
  %pattern.addr = alloca i8*, align 8
  %on_file_verdict.addr = alloca i32, align 4
  %insensitive_p.addr = alloca i8, align 1
  %command.addr = alloca i8*, align 8
  %res = alloca %struct.pattern_rule*, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store i32 %on_file_verdict, i32* %on_file_verdict.addr, align 4
  %frombool = zext i1 %insensitive_p to i8
  store i8 %frombool, i8* %insensitive_p.addr, align 1
  store i8* %command, i8** %command.addr, align 8
  %call = call i8* @xmalloc(i64 24)
  %0 = bitcast i8* %call to %struct.pattern_rule*
  store %struct.pattern_rule* %0, %struct.pattern_rule** %res, align 8
  %1 = load i8*, i8** %pattern.addr, align 8
  %2 = load %struct.pattern_rule*, %struct.pattern_rule** %res, align 8
  %pattern1 = getelementptr inbounds %struct.pattern_rule, %struct.pattern_rule* %2, i32 0, i32 0
  store i8* %1, i8** %pattern1, align 8
  %3 = load i32, i32* %on_file_verdict.addr, align 4
  %4 = load %struct.pattern_rule*, %struct.pattern_rule** %res, align 8
  %on_file_verdict2 = getelementptr inbounds %struct.pattern_rule, %struct.pattern_rule* %4, i32 0, i32 2
  store i32 %3, i32* %on_file_verdict2, align 4
  %5 = load i8*, i8** %command.addr, align 8
  %6 = load %struct.pattern_rule*, %struct.pattern_rule** %res, align 8
  %command3 = getelementptr inbounds %struct.pattern_rule, %struct.pattern_rule* %6, i32 0, i32 1
  store i8* %5, i8** %command3, align 8
  %7 = load i8, i8* %insensitive_p.addr, align 1
  %tobool = trunc i8 %7 to i1
  %8 = load %struct.pattern_rule*, %struct.pattern_rule** %res, align 8
  %insensitive_p4 = getelementptr inbounds %struct.pattern_rule, %struct.pattern_rule* %8, i32 0, i32 3
  %frombool5 = zext i1 %tobool to i8
  store i8 %frombool5, i8* %insensitive_p4, align 1
  %9 = load %struct.pattern_rule*, %struct.pattern_rule** %res, align 8
  ret %struct.pattern_rule* %9
}

declare i8* @xmalloc(i64) #2

; Function Attrs: nounwind uwtable
define %struct.darray* @sheets_map_new() #0 {
entry:
  %call = call %struct.darray* @da_new(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i64 200, i32 1, i64 20, void (i8*, %struct._IO_FILE*)* bitcast (void (%struct.pattern_rule*, %struct._IO_FILE*)* @pattern_rule_self_print to void (i8*, %struct._IO_FILE*)*), i32 (i8*, i8*)* null)
  ret %struct.darray* %call
}

declare %struct.darray* @da_new(i8*, i64, i32, i64, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal void @pattern_rule_self_print(%struct.pattern_rule* %item, %struct._IO_FILE* %stream) #0 {
entry:
  %item.addr = alloca %struct.pattern_rule*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.pattern_rule* %item, %struct.pattern_rule** %item.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %1 = load %struct.pattern_rule*, %struct.pattern_rule** %item.addr, align 8
  %on_file_verdict = getelementptr inbounds %struct.pattern_rule, %struct.pattern_rule* %1, i32 0, i32 2
  %2 = load i32, i32* %on_file_verdict, align 4
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)
  %3 = load %struct.pattern_rule*, %struct.pattern_rule** %item.addr, align 8
  %pattern = getelementptr inbounds %struct.pattern_rule, %struct.pattern_rule* %3, i32 0, i32 0
  %4 = load i8*, i8** %pattern, align 8
  %5 = load %struct.pattern_rule*, %struct.pattern_rule** %item.addr, align 8
  %command = getelementptr inbounds %struct.pattern_rule, %struct.pattern_rule* %5, i32 0, i32 1
  %6 = load i8*, i8** %command, align 8
  %7 = load %struct.pattern_rule*, %struct.pattern_rule** %item.addr, align 8
  %insensitive_p = getelementptr inbounds %struct.pattern_rule, %struct.pattern_rule* %7, i32 0, i32 3
  %8 = load i8, i8* %insensitive_p, align 1
  %tobool1 = trunc i8 %8 to i1
  %cond2 = select i1 %tobool1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0)
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* %cond, i8* %4, i8* %6, i8* %cond2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @sheets_map_add(i8* %pattern, i32 %on_file_verdict, i1 zeroext %insensitive_p, i8* %key) #0 {
entry:
  %pattern.addr = alloca i8*, align 8
  %on_file_verdict.addr = alloca i32, align 4
  %insensitive_p.addr = alloca i8, align 1
  %key.addr = alloca i8*, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store i32 %on_file_verdict, i32* %on_file_verdict.addr, align 4
  %frombool = zext i1 %insensitive_p to i8
  store i8 %frombool, i8* %insensitive_p.addr, align 1
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.darray*, %struct.darray** @sheets_map, align 8
  %1 = load i8*, i8** %pattern.addr, align 8
  %2 = load i32, i32* %on_file_verdict.addr, align 4
  %3 = load i8, i8* %insensitive_p.addr, align 1
  %tobool = trunc i8 %3 to i1
  %4 = load i8*, i8** %key.addr, align 8
  %call = call %struct.pattern_rule* @pattern_rule_new(i8* %1, i32 %2, i1 zeroext %tobool, i8* %4)
  %5 = bitcast %struct.pattern_rule* %call to i8*
  call void @da_append(%struct.darray* %0, i8* %5)
  ret void
}

declare void @da_append(%struct.darray*, i8*) #2

; Function Attrs: nounwind uwtable
define i8* @shell_escape(i8* %fn) #0 {
entry:
  %retval = alloca i8*, align 8
  %fn.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  %inp = alloca i8*, align 8
  %retval1 = alloca i8*, align 8
  %outp = alloca i8*, align 8
  store i8* %fn, i8** %fn.addr, align 8
  store i64 0, i64* %len, align 8
  %0 = load i8*, i8** %fn.addr, align 8
  store i8* %0, i8** %inp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %inp, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %inp, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  switch i32 %conv, label %sw.default [
    i32 39, label %sw.bb
  ]

sw.bb:                                            ; preds = %for.body
  %5 = load i64, i64* %len, align 8
  %add = add i64 %5, 4
  store i64 %add, i64* %len, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %6 = load i64, i64* %len, align 8
  %add2 = add i64 %6, 1
  store i64 %add2, i64* %len, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %7 = load i8*, i8** %inp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %inp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i64, i64* %len, align 8
  %add3 = add i64 %8, 1
  %call = call noalias i8* @malloc(i64 %add3) #5
  store i8* %call, i8** %retval1, align 8
  store i8* %call, i8** %outp, align 8
  %9 = load i8*, i8** %outp, align 8
  %tobool4 = icmp ne i8* %9, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %for.end
  %10 = load i8*, i8** %fn.addr, align 8
  store i8* %10, i8** %inp, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.17, %if.end
  %11 = load i8*, i8** %inp, align 8
  %12 = load i8, i8* %11, align 1
  %tobool6 = icmp ne i8 %12, 0
  br i1 %tobool6, label %for.body.7, label %for.end.19

for.body.7:                                       ; preds = %for.cond.5
  %13 = load i8*, i8** %inp, align 8
  %14 = load i8, i8* %13, align 1
  %conv8 = sext i8 %14 to i32
  switch i32 %conv8, label %sw.default.14 [
    i32 39, label %sw.bb.9
  ]

sw.bb.9:                                          ; preds = %for.body.7
  %15 = load i8*, i8** %outp, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr10, i8** %outp, align 8
  store i8 39, i8* %15, align 1
  %16 = load i8*, i8** %outp, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr11, i8** %outp, align 8
  store i8 92, i8* %16, align 1
  %17 = load i8*, i8** %outp, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr12, i8** %outp, align 8
  store i8 39, i8* %17, align 1
  %18 = load i8*, i8** %outp, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr13, i8** %outp, align 8
  store i8 39, i8* %18, align 1
  br label %sw.epilog.16

sw.default.14:                                    ; preds = %for.body.7
  %19 = load i8*, i8** %inp, align 8
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %outp, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr15, i8** %outp, align 8
  store i8 %20, i8* %21, align 1
  br label %sw.epilog.16

sw.epilog.16:                                     ; preds = %sw.default.14, %sw.bb.9
  br label %for.inc.17

for.inc.17:                                       ; preds = %sw.epilog.16
  %22 = load i8*, i8** %inp, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr18, i8** %inp, align 8
  br label %for.cond.5

for.end.19:                                       ; preds = %for.cond.5
  %23 = load i8*, i8** %outp, align 8
  store i8 0, i8* %23, align 1
  %24 = load i8*, i8** %retval1, align 8
  store i8* %24, i8** %retval
  br label %return

return:                                           ; preds = %for.end.19, %if.then
  %25 = load i8*, i8** %retval
  ret i8* %25
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define i8* @get_command(i8* %name_to_match, i8* %name_to_file) #0 {
entry:
  %retval = alloca i8*, align 8
  %name_to_match.addr = alloca i8*, align 8
  %name_to_file.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %file_verdict = alloca i8*, align 8
  %name_to_match_lc = alloca i8*, align 8
  store i8* %name_to_match, i8** %name_to_match.addr, align 8
  store i8* %name_to_file, i8** %name_to_file.addr, align 8
  %0 = load %struct.darray*, %struct.darray** @sheets_map, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %0, i32 0, i32 5
  %1 = load i64, i64* %len, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @sheets_map_load_main()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %name_to_file.addr, align 8
  %call1 = call i8* @file_verdict_on(i8* %2)
  store i8* %call1, i8** %file_verdict, align 8
  %3 = load i8*, i8** %name_to_match.addr, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %4 = load i8*, i8** %name_to_match.addr, align 8
  %call3 = call i64 @strlen(i8* %4) #6
  %add = add i64 %call3, 1
  %mul = mul i64 1, %add
  %5 = alloca i8, i64 %mul
  store i8* %5, i8** %name_to_match_lc, align 8
  %6 = load i8*, i8** %name_to_match_lc, align 8
  %7 = load i8*, i8** %name_to_match.addr, align 8
  %call4 = call i8* @strcpylc(i8* %6, i8* %7)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %8 = load %struct.darray*, %struct.darray** @sheets_map, align 8
  %len6 = getelementptr inbounds %struct.darray, %struct.darray* %8, i32 0, i32 5
  %9 = load i64, i64* %len6, align 8
  %sub = sub i64 %9, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %10 = load i32, i32* %i, align 4
  %cmp7 = icmp sge i32 %10, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.darray*, %struct.darray** @sheets_map, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %12, i32 0, i32 6
  %13 = load i8**, i8*** %content, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %13, i64 %idxprom
  %14 = load i8*, i8** %arrayidx, align 8
  %15 = bitcast i8* %14 to %struct.pattern_rule*
  %on_file_verdict = getelementptr inbounds %struct.pattern_rule, %struct.pattern_rule* %15, i32 0, i32 2
  %16 = load i32, i32* %on_file_verdict, align 4
  %tobool9 = icmp ne i32 %16, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %for.body
  %17 = load i8*, i8** %file_verdict, align 8
  %tobool11 = icmp ne i8* %17, null
  br i1 %tobool11, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.then.10
  %18 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %18 to i64
  %19 = load %struct.darray*, %struct.darray** @sheets_map, align 8
  %content13 = getelementptr inbounds %struct.darray, %struct.darray* %19, i32 0, i32 6
  %20 = load i8**, i8*** %content13, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %20, i64 %idxprom12
  %21 = load i8*, i8** %arrayidx14, align 8
  %22 = bitcast i8* %21 to %struct.pattern_rule*
  %pattern = getelementptr inbounds %struct.pattern_rule, %struct.pattern_rule* %22, i32 0, i32 0
  %23 = load i8*, i8** %pattern, align 8
  %24 = load i8*, i8** %file_verdict, align 8
  %call15 = call i32 @fnmatch(i8* %23, i8* %24, i32 0)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.21, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true
  %25 = load i8*, i8** %file_verdict, align 8
  call void @free(i8* %25) #5
  %26 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %26 to i64
  %27 = load %struct.darray*, %struct.darray** @sheets_map, align 8
  %content19 = getelementptr inbounds %struct.darray, %struct.darray* %27, i32 0, i32 6
  %28 = load i8**, i8*** %content19, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %28, i64 %idxprom18
  %29 = load i8*, i8** %arrayidx20, align 8
  %30 = bitcast i8* %29 to %struct.pattern_rule*
  %command = getelementptr inbounds %struct.pattern_rule, %struct.pattern_rule* %30, i32 0, i32 1
  %31 = load i8*, i8** %command, align 8
  store i8* %31, i8** %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true, %if.then.10
  br label %if.end.44

if.else:                                          ; preds = %for.body
  %32 = load i8*, i8** %name_to_match.addr, align 8
  %tobool22 = icmp ne i8* %32, null
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.43

land.lhs.true.23:                                 ; preds = %if.else
  %33 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %33 to i64
  %34 = load %struct.darray*, %struct.darray** @sheets_map, align 8
  %content25 = getelementptr inbounds %struct.darray, %struct.darray* %34, i32 0, i32 6
  %35 = load i8**, i8*** %content25, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %35, i64 %idxprom24
  %36 = load i8*, i8** %arrayidx26, align 8
  %37 = bitcast i8* %36 to %struct.pattern_rule*
  %pattern27 = getelementptr inbounds %struct.pattern_rule, %struct.pattern_rule* %37, i32 0, i32 0
  %38 = load i8*, i8** %pattern27, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %39 to i64
  %40 = load %struct.darray*, %struct.darray** @sheets_map, align 8
  %content29 = getelementptr inbounds %struct.darray, %struct.darray* %40, i32 0, i32 6
  %41 = load i8**, i8*** %content29, align 8
  %arrayidx30 = getelementptr inbounds i8*, i8** %41, i64 %idxprom28
  %42 = load i8*, i8** %arrayidx30, align 8
  %43 = bitcast i8* %42 to %struct.pattern_rule*
  %insensitive_p = getelementptr inbounds %struct.pattern_rule, %struct.pattern_rule* %43, i32 0, i32 3
  %44 = load i8, i8* %insensitive_p, align 1
  %tobool31 = trunc i8 %44 to i1
  br i1 %tobool31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.23
  %45 = load i8*, i8** %name_to_match_lc, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.23
  %46 = load i8*, i8** %name_to_match.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %45, %cond.true ], [ %46, %cond.false ]
  %call33 = call i32 @fnmatch(i8* %38, i8* %cond, i32 0)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.43, label %if.then.35

if.then.35:                                       ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %if.then.35
  %47 = load i8*, i8** %file_verdict, align 8
  %tobool36 = icmp ne i8* %47, null
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %do.body
  %48 = load i8*, i8** %file_verdict, align 8
  call void @free(i8* %48) #5
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.38
  %49 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %49 to i64
  %50 = load %struct.darray*, %struct.darray** @sheets_map, align 8
  %content40 = getelementptr inbounds %struct.darray, %struct.darray* %50, i32 0, i32 6
  %51 = load i8**, i8*** %content40, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %51, i64 %idxprom39
  %52 = load i8*, i8** %arrayidx41, align 8
  %53 = bitcast i8* %52 to %struct.pattern_rule*
  %command42 = getelementptr inbounds %struct.pattern_rule, %struct.pattern_rule* %53, i32 0, i32 1
  %54 = load i8*, i8** %command42, align 8
  store i8* %54, i8** %retval
  br label %return

if.end.43:                                        ; preds = %cond.end, %if.else
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.21
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %55 = load i32, i32* %i, align 4
  %dec = add nsw i32 %55, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.45

do.body.45:                                       ; preds = %for.end
  %56 = load i8*, i8** %file_verdict, align 8
  %tobool46 = icmp ne i8* %56, null
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %do.body.45
  %57 = load i8*, i8** %file_verdict, align 8
  call void @free(i8* %57) #5
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %do.body.45
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %do.end.49, %do.end, %if.then.17
  %58 = load i8*, i8** %retval
  ret i8* %58
}

; Function Attrs: nounwind uwtable
define internal i32 @sheets_map_load_main() #0 {
entry:
  %retval = alloca i32, align 4
  %file = alloca i8*, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 2
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %1 = load i8**, i8*** %path, align 8
  %call = call i8* @pw_find_file(i8** %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* null)
  store i8* %call, i8** %file, align 8
  %2 = load i8*, i8** %file, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #7
  %3 = load i32, i32* %call1, align 4
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #5
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %3, i8* %call2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0))
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0)) #5
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %call3)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %file, align 8
  call void @sheets_map_load(i8* %4)
  %5 = load i8*, i8** %file, align 8
  call void @free(i8* %5) #5
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i8* @file_verdict_on(i8* %filename) #0 {
entry:
  %retval = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %command = alloca i8*, align 8
  %buf = alloca [1024 x i8], align 16
  %file_out = alloca %struct._IO_FILE*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* null, i8** %cp, align 8
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %file_command = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 3
  %1 = load i8*, i8** %file_command, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %file_command1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 3
  %3 = load i8*, i8** %file_command1, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @shell_escape(i8* %5)
  store i8* %call, i8** %filename.addr, align 8
  %6 = load i8*, i8** %filename.addr, align 8
  %cmp4 = icmp eq i8* %6, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %7 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %file_command8 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %7, i32 0, i32 3
  %8 = load i8*, i8** %file_command8, align 8
  %call9 = call i64 @strlen(i8* %8) #6
  %add = add i64 4, %call9
  %9 = load i8*, i8** %filename.addr, align 8
  %call10 = call i64 @strlen(i8* %9) #6
  %add11 = add i64 %add, %call10
  %mul = mul i64 1, %add11
  %10 = alloca i8, i64 %mul
  store i8* %10, i8** %command, align 8
  %11 = load i8*, i8** %command, align 8
  %12 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %file_command12 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %12, i32 0, i32 3
  %13 = load i8*, i8** %file_command12, align 8
  %14 = load i8*, i8** %filename.addr, align 8
  %call13 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* %13, i8* %14) #5
  %15 = load i8*, i8** %filename.addr, align 8
  call void @free(i8* %15) #5
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %16 = load i32, i32* @msg_verbosity, align 4
  %and = and i32 128, %16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %do.body
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load i8*, i8** %command, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i8* %18)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %19 = load i8*, i8** %command, align 8
  %call17 = call %struct._IO_FILE* @popen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store %struct._IO_FILE* %call17, %struct._IO_FILE** %file_out, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %file_out, align 8
  %tobool18 = icmp ne %struct._IO_FILE* %20, null
  br i1 %tobool18, label %if.end.27, label %if.then.19

if.then.19:                                       ; preds = %do.end
  %21 = load i32, i32* @msg_verbosity, align 4
  %and20 = and i32 128, %21
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %if.then.19
  %call23 = call i32* @__errno_location() #7
  %22 = load i32, i32* %call23, align 4
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0)) #5
  %23 = load i8*, i8** %command, align 8
  %call25 = call i8* @quotearg(i8* %23)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %22, i8* %call24, i8* %call25)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.then.19
  store i8* null, i8** %retval
  br label %return

if.end.27:                                        ; preds = %do.end
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %file_out, align 8
  %call28 = call i8* @fgets(i8* %arraydecay, i32 1024, %struct._IO_FILE* %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %file_out, align 8
  %call29 = call i32 @pclose(%struct._IO_FILE* %25)
  br label %do.body.30

do.body.30:                                       ; preds = %if.end.27
  %26 = load i32, i32* @msg_verbosity, align 4
  %and31 = and i32 128, %26
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %do.body.30
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* %arraydecay34)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %do.body.30
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %arraydecay38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay38, i8** %cp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end.37
  %28 = load i8*, i8** %cp, align 8
  %29 = load i8, i8* %28, align 1
  %conv39 = sext i8 %29 to i32
  %tobool40 = icmp ne i32 %conv39, 0
  br i1 %tobool40, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %30 = load i8*, i8** %cp, align 8
  %31 = load i8, i8* %30, align 1
  %conv41 = sext i8 %31 to i32
  %cmp42 = icmp ne i32 %conv41, 58
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %32 = phi i1 [ false, %while.cond ], [ %cmp42, %land.rhs ]
  br i1 %32, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %33 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %34 = load i8*, i8** %cp, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr44, i8** %cp, align 8
  br label %while.cond.45

while.cond.45:                                    ; preds = %while.body.56, %while.end
  %35 = load i8*, i8** %cp, align 8
  %36 = load i8, i8* %35, align 1
  %conv46 = sext i8 %36 to i32
  %tobool47 = icmp ne i32 %conv46, 0
  br i1 %tobool47, label %land.rhs.48, label %land.end.55

land.rhs.48:                                      ; preds = %while.cond.45
  %37 = load i8*, i8** %cp, align 8
  %38 = load i8, i8* %37, align 1
  %conv49 = sext i8 %38 to i32
  %cmp50 = icmp eq i32 %conv49, 32
  br i1 %cmp50, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.48
  %39 = load i8*, i8** %cp, align 8
  %40 = load i8, i8* %39, align 1
  %conv52 = sext i8 %40 to i32
  %cmp53 = icmp eq i32 %conv52, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.48
  %41 = phi i1 [ true, %land.rhs.48 ], [ %cmp53, %lor.rhs ]
  br label %land.end.55

land.end.55:                                      ; preds = %lor.end, %while.cond.45
  %42 = phi i1 [ false, %while.cond.45 ], [ %41, %lor.end ]
  br i1 %42, label %while.body.56, label %while.end.58

while.body.56:                                    ; preds = %land.end.55
  %43 = load i8*, i8** %cp, align 8
  %incdec.ptr57 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr57, i8** %cp, align 8
  br label %while.cond.45

while.end.58:                                     ; preds = %land.end.55
  %44 = load i8*, i8** %cp, align 8
  %45 = load i8, i8* %44, align 1
  %tobool59 = icmp ne i8 %45, 0
  br i1 %tobool59, label %if.then.60, label %if.end.73

if.then.60:                                       ; preds = %while.end.58
  %46 = load i8*, i8** %cp, align 8
  %tobool61 = icmp ne i8* %46, null
  br i1 %tobool61, label %if.then.62, label %if.end.70

if.then.62:                                       ; preds = %if.then.60
  br label %do.body.63

do.body.63:                                       ; preds = %if.then.62
  %47 = load i32, i32* @msg_verbosity, align 4
  %and64 = and i32 128, %47
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %do.body.63
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = load i8*, i8** %cp, align 8
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i8* %49)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %do.body.63
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  br label %if.end.70

if.end.70:                                        ; preds = %do.end.69, %if.then.60
  %50 = load i8*, i8** %cp, align 8
  %51 = load i8*, i8** %cp, align 8
  %call71 = call i64 @strlen(i8* %51) #6
  %sub = sub i64 %call71, 1
  %call72 = call i8* @xstrndup(i8* %50, i64 %sub)
  store i8* %call72, i8** %retval
  br label %return

if.end.73:                                        ; preds = %while.end.58
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.73, %if.end.70, %if.end.26, %if.then.6, %if.then
  %52 = load i8*, i8** %retval
  ret i8* %52
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @strcpylc(i8*, i8*) #2

declare i32 @fnmatch(i8*, i8*, i32) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i8* @pw_find_file(i8**, i8*, i8*) #2

declare void @error(i32, i32, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind
declare i8* @gettext(i8*) #1

declare void @sheets_map_load(i8*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare %struct._IO_FILE* @popen(i8*, i8*) #2

declare i8* @quotearg(i8*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare i32 @pclose(%struct._IO_FILE*) #2

declare i8* @xstrndup(i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
