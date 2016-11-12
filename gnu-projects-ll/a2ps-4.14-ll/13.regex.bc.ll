; ModuleID = './src/regex.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.re_pattern_buffer = type { i8*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.fail_stack_type = type { %union.fail_stack_elt*, i32, i32 }
%union.fail_stack_elt = type { i8* }
%struct.re_registers = type { i32, i32*, i32* }
%union.register_info_type = type { %union.fail_stack_elt }
%struct.anon = type { i8, [3 x i8] }
%struct.compile_stack_type = type { %struct.compile_stack_elt_t*, i32, i32 }
%struct.compile_stack_elt_t = type { i64, i64, i64, i64, i32 }
%struct.regmatch_t = type { i32, i32 }

@re_syntax_options = common global i64 0, align 8
@re_max_failures = global i32 20000, align 4
@re_syntax_table = external global i8*, align 8
@re_error_msgid = internal global [17 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0)], align 16
@reg_unset_dummy = internal global i8 0, align 1
@.str = private unnamed_addr constant [6 x i8] c"alnum\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"cntrl\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"digit\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"punct\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"xdigit\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"No match\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Invalid regular expression\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Invalid collation character\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Invalid character class name\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"Trailing backslash\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Invalid back reference\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Unmatched [ or [^\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Unmatched ( or \5C(\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"Unmatched \5C{\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"Invalid content of \5C{\5C}\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"Invalid range end\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"Memory exhausted\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"Invalid preceding regular expression\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"Premature end of regular expression\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Regular expression too big\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"Unmatched ) or \5C)\00", align 1

; Function Attrs: nounwind uwtable
define i64 @re_set_syntax(i64 %syntax) #0 {
entry:
  %syntax.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %syntax, i64* %syntax.addr, align 8
  %0 = load i64, i64* @re_syntax_options, align 8
  store i64 %0, i64* %ret, align 8
  %1 = load i64, i64* %syntax.addr, align 8
  store i64 %1, i64* @re_syntax_options, align 8
  %2 = load i64, i64* %ret, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define i32 @re_compile_fastmap(%struct.re_pattern_buffer* %bufp) #0 {
entry:
  %retval = alloca i32, align 4
  %bufp.addr = alloca %struct.re_pattern_buffer*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %fail_stack = alloca %struct.fail_stack_type, align 8
  %destination = alloca i8*, align 8
  %fastmap = alloca i8*, align 8
  %pattern = alloca i8*, align 8
  %p = alloca i8*, align 8
  %pend = alloca i8*, align 8
  %path_can_be_null = alloca i8, align 1
  %succeed_n_p = alloca i8, align 1
  %fastmap_newline = alloca i32, align 4
  store %struct.re_pattern_buffer* %bufp, %struct.re_pattern_buffer** %bufp.addr, align 8
  %0 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %fastmap1 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %0, i32 0, i32 4
  %1 = load i8*, i8** %fastmap1, align 8
  store i8* %1, i8** %fastmap, align 8
  %2 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2, i32 0, i32 0
  %3 = load i8*, i8** %buffer, align 8
  store i8* %3, i8** %pattern, align 8
  %4 = load i8*, i8** %pattern, align 8
  store i8* %4, i8** %p, align 8
  %5 = load i8*, i8** %pattern, align 8
  %6 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %used = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %6, i32 0, i32 2
  %7 = load i64, i64* %used, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %7
  store i8* %add.ptr, i8** %pend, align 8
  store i8 1, i8* %path_can_be_null, align 1
  store i8 0, i8* %succeed_n_p, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %8 = alloca i8, i64 40
  %9 = bitcast i8* %8 to %union.fail_stack_elt*
  %stack = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  store %union.fail_stack_elt* %9, %union.fail_stack_elt** %stack, align 8
  %stack2 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %10 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2, align 8
  %cmp = icmp eq %union.fail_stack_elt* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  %size = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  store i32 5, i32* %size, align 4
  %avail = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  store i32 0, i32* %avail, align 4
  br label %do.end

do.end:                                           ; preds = %if.end
  %11 = load i8*, i8** %fastmap, align 8
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 256, i32 1, i1 false)
  %12 = load i8*, i8** %fastmap, align 8
  %13 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %fastmap_accurate = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %13, i32 0, i32 7
  %bf.load = load i8, i8* %fastmap_accurate, align 8
  %bf.clear = and i8 %bf.load, -9
  %bf.set = or i8 %bf.clear, 8
  store i8 %bf.set, i8* %fastmap_accurate, align 8
  %14 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %can_be_null = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %14, i32 0, i32 7
  %bf.load3 = load i8, i8* %can_be_null, align 8
  %bf.clear4 = and i8 %bf.load3, -2
  store i8 %bf.clear4, i8* %can_be_null, align 8
  br label %while.body

while.body:                                       ; preds = %do.end, %if.then.12, %sw.bb.139, %if.then.154, %if.then.162, %if.end.193, %if.end.268, %if.end.286, %sw.bb.287, %sw.bb.289, %sw.epilog
  %15 = load i8*, i8** %p, align 8
  %16 = load i8*, i8** %pend, align 8
  %cmp5 = icmp eq i8* %15, %16
  br i1 %cmp5, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %17 = load i8*, i8** %p, align 8
  %18 = load i8, i8* %17, align 1
  %conv = zext i8 %18 to i32
  %cmp6 = icmp eq i32 %conv, 1
  br i1 %cmp6, label %if.then.8, label %if.end.22

if.then.8:                                        ; preds = %lor.lhs.false, %while.body
  %avail9 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %19 = load i32, i32* %avail9, align 4
  %cmp10 = icmp eq i32 %19, 0
  br i1 %cmp10, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %if.then.8
  %20 = load i8, i8* %path_can_be_null, align 1
  %conv13 = sext i8 %20 to i32
  %21 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %can_be_null14 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %21, i32 0, i32 7
  %bf.load15 = load i8, i8* %can_be_null14, align 8
  %bf.clear16 = and i8 %bf.load15, 1
  %bf.cast = zext i8 %bf.clear16 to i32
  %or = or i32 %bf.cast, %conv13
  %22 = trunc i32 %or to i8
  %bf.load17 = load i8, i8* %can_be_null14, align 8
  %bf.value = and i8 %22, 1
  %bf.clear18 = and i8 %bf.load17, -2
  %bf.set19 = or i8 %bf.clear18, %bf.value
  store i8 %bf.set19, i8* %can_be_null14, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  store i8 1, i8* %path_can_be_null, align 1
  %avail20 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %23 = load i32, i32* %avail20, align 4
  %dec = add i32 %23, -1
  store i32 %dec, i32* %avail20, align 4
  %idxprom = zext i32 %dec to i64
  %stack21 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %24 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack21, align 8
  %arrayidx = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %24, i64 %idxprom
  %pointer = bitcast %union.fail_stack_elt* %arrayidx to i8**
  %25 = load i8*, i8** %pointer, align 8
  store i8* %25, i8** %p, align 8
  br label %while.body

if.else:                                          ; preds = %if.then.8
  br label %while.end

if.end.22:                                        ; preds = %lor.lhs.false
  %26 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %27 = load i8, i8* %26, align 1
  %conv23 = zext i8 %27 to i32
  switch i32 %conv23, label %sw.default [
    i32 8, label %sw.bb
    i32 2, label %sw.bb.28
    i32 4, label %sw.bb.32
    i32 5, label %sw.bb.45
    i32 24, label %sw.bb.79
    i32 25, label %sw.bb.96
    i32 3, label %sw.bb.113
    i32 0, label %sw.bb.139
    i32 9, label %sw.bb.139
    i32 10, label %sw.bb.139
    i32 11, label %sw.bb.139
    i32 12, label %sw.bb.139
    i32 28, label %sw.bb.139
    i32 29, label %sw.bb.139
    i32 26, label %sw.bb.139
    i32 27, label %sw.bb.139
    i32 20, label %sw.bb.139
    i32 22, label %sw.bb.140
    i32 17, label %sw.bb.140
    i32 18, label %sw.bb.140
    i32 13, label %sw.bb.140
    i32 14, label %sw.bb.140
    i32 19, label %sw.bb.140
    i32 15, label %sw.bb.194
    i32 16, label %sw.bb.194
    i32 21, label %sw.bb.269
    i32 23, label %sw.bb.287
    i32 6, label %sw.bb.289
    i32 7, label %sw.bb.289
  ]

sw.bb:                                            ; preds = %if.end.22
  %28 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %can_be_null24 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %28, i32 0, i32 7
  %bf.load25 = load i8, i8* %can_be_null24, align 8
  %bf.clear26 = and i8 %bf.load25, -2
  %bf.set27 = or i8 %bf.clear26, 1
  store i8 %bf.set27, i8* %can_be_null24, align 8
  br label %done

sw.bb.28:                                         ; preds = %if.end.22
  %29 = load i8*, i8** %p, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i8, i8* %arrayidx29, align 1
  %idxprom30 = zext i8 %30 to i64
  %31 = load i8*, i8** %fastmap, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %31, i64 %idxprom30
  store i8 1, i8* %arrayidx31, align 1
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.end.22
  %32 = load i8*, i8** %p, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr33, i8** %p, align 8
  %33 = load i8, i8* %32, align 1
  %conv34 = zext i8 %33 to i32
  %mul = mul nsw i32 %conv34, 8
  %sub = sub nsw i32 %mul, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.32
  %34 = load i32, i32* %j, align 4
  %cmp35 = icmp sge i32 %34, 0
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %j, align 4
  %div = sdiv i32 %35, 8
  %idxprom37 = sext i32 %div to i64
  %36 = load i8*, i8** %p, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %36, i64 %idxprom37
  %37 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %37 to i32
  %38 = load i32, i32* %j, align 4
  %rem = srem i32 %38, 8
  %shl = shl i32 1, %rem
  %and = and i32 %conv39, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %for.body
  %39 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %39 to i64
  %40 = load i8*, i8** %fastmap, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %40, i64 %idxprom41
  store i8 1, i8* %arrayidx42, align 1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %41 = load i32, i32* %j, align 4
  %dec44 = add nsw i32 %41, -1
  store i32 %dec44, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.45:                                         ; preds = %if.end.22
  %42 = load i8*, i8** %p, align 8
  %43 = load i8, i8* %42, align 1
  %conv46 = zext i8 %43 to i32
  %mul47 = mul nsw i32 %conv46, 8
  store i32 %mul47, i32* %j, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.54, %sw.bb.45
  %44 = load i32, i32* %j, align 4
  %cmp49 = icmp slt i32 %44, 256
  br i1 %cmp49, label %for.body.51, label %for.end.55

for.body.51:                                      ; preds = %for.cond.48
  %45 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %45 to i64
  %46 = load i8*, i8** %fastmap, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %46, i64 %idxprom52
  store i8 1, i8* %arrayidx53, align 1
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.51
  %47 = load i32, i32* %j, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.48

for.end.55:                                       ; preds = %for.cond.48
  %48 = load i8*, i8** %p, align 8
  %incdec.ptr56 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr56, i8** %p, align 8
  %49 = load i8, i8* %48, align 1
  %conv57 = zext i8 %49 to i32
  %mul58 = mul nsw i32 %conv57, 8
  %sub59 = sub nsw i32 %mul58, 1
  store i32 %sub59, i32* %j, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.76, %for.end.55
  %50 = load i32, i32* %j, align 4
  %cmp61 = icmp sge i32 %50, 0
  br i1 %cmp61, label %for.body.63, label %for.end.78

for.body.63:                                      ; preds = %for.cond.60
  %51 = load i32, i32* %j, align 4
  %div64 = sdiv i32 %51, 8
  %idxprom65 = sext i32 %div64 to i64
  %52 = load i8*, i8** %p, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %52, i64 %idxprom65
  %53 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %53 to i32
  %54 = load i32, i32* %j, align 4
  %rem68 = srem i32 %54, 8
  %shl69 = shl i32 1, %rem68
  %and70 = and i32 %conv67, %shl69
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %if.end.75, label %if.then.72

if.then.72:                                       ; preds = %for.body.63
  %55 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %55 to i64
  %56 = load i8*, i8** %fastmap, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %56, i64 %idxprom73
  store i8 1, i8* %arrayidx74, align 1
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.72, %for.body.63
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75
  %57 = load i32, i32* %j, align 4
  %dec77 = add nsw i32 %57, -1
  store i32 %dec77, i32* %j, align 4
  br label %for.cond.60

for.end.78:                                       ; preds = %for.cond.60
  br label %sw.epilog

sw.bb.79:                                         ; preds = %if.end.22
  store i32 0, i32* %j, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.93, %sw.bb.79
  %58 = load i32, i32* %j, align 4
  %cmp81 = icmp slt i32 %58, 256
  br i1 %cmp81, label %for.body.83, label %for.end.95

for.body.83:                                      ; preds = %for.cond.80
  %59 = load i32, i32* %j, align 4
  %idxprom84 = sext i32 %59 to i64
  %60 = load i8*, i8** @re_syntax_table, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %60, i64 %idxprom84
  %61 = load i8, i8* %arrayidx85, align 1
  %conv86 = sext i8 %61 to i32
  %cmp87 = icmp eq i32 %conv86, 1
  br i1 %cmp87, label %if.then.89, label %if.end.92

if.then.89:                                       ; preds = %for.body.83
  %62 = load i32, i32* %j, align 4
  %idxprom90 = sext i32 %62 to i64
  %63 = load i8*, i8** %fastmap, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %63, i64 %idxprom90
  store i8 1, i8* %arrayidx91, align 1
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.89, %for.body.83
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.92
  %64 = load i32, i32* %j, align 4
  %inc94 = add nsw i32 %64, 1
  store i32 %inc94, i32* %j, align 4
  br label %for.cond.80

for.end.95:                                       ; preds = %for.cond.80
  br label %sw.epilog

sw.bb.96:                                         ; preds = %if.end.22
  store i32 0, i32* %j, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.110, %sw.bb.96
  %65 = load i32, i32* %j, align 4
  %cmp98 = icmp slt i32 %65, 256
  br i1 %cmp98, label %for.body.100, label %for.end.112

for.body.100:                                     ; preds = %for.cond.97
  %66 = load i32, i32* %j, align 4
  %idxprom101 = sext i32 %66 to i64
  %67 = load i8*, i8** @re_syntax_table, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %67, i64 %idxprom101
  %68 = load i8, i8* %arrayidx102, align 1
  %conv103 = sext i8 %68 to i32
  %cmp104 = icmp ne i32 %conv103, 1
  br i1 %cmp104, label %if.then.106, label %if.end.109

if.then.106:                                      ; preds = %for.body.100
  %69 = load i32, i32* %j, align 4
  %idxprom107 = sext i32 %69 to i64
  %70 = load i8*, i8** %fastmap, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %70, i64 %idxprom107
  store i8 1, i8* %arrayidx108, align 1
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.106, %for.body.100
  br label %for.inc.110

for.inc.110:                                      ; preds = %if.end.109
  %71 = load i32, i32* %j, align 4
  %inc111 = add nsw i32 %71, 1
  store i32 %inc111, i32* %j, align 4
  br label %for.cond.97

for.end.112:                                      ; preds = %for.cond.97
  br label %sw.epilog

sw.bb.113:                                        ; preds = %if.end.22
  %72 = load i8*, i8** %fastmap, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %72, i64 10
  %73 = load i8, i8* %arrayidx114, align 1
  %conv115 = sext i8 %73 to i32
  store i32 %conv115, i32* %fastmap_newline, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.122, %sw.bb.113
  %74 = load i32, i32* %j, align 4
  %cmp117 = icmp slt i32 %74, 256
  br i1 %cmp117, label %for.body.119, label %for.end.124

for.body.119:                                     ; preds = %for.cond.116
  %75 = load i32, i32* %j, align 4
  %idxprom120 = sext i32 %75 to i64
  %76 = load i8*, i8** %fastmap, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %76, i64 %idxprom120
  store i8 1, i8* %arrayidx121, align 1
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.body.119
  %77 = load i32, i32* %j, align 4
  %inc123 = add nsw i32 %77, 1
  store i32 %inc123, i32* %j, align 4
  br label %for.cond.116

for.end.124:                                      ; preds = %for.cond.116
  %78 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %syntax = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %78, i32 0, i32 3
  %79 = load i64, i64* %syntax, align 8
  %and125 = and i64 %79, 64
  %tobool126 = icmp ne i64 %and125, 0
  br i1 %tobool126, label %if.else.130, label %if.then.127

if.then.127:                                      ; preds = %for.end.124
  %80 = load i32, i32* %fastmap_newline, align 4
  %conv128 = trunc i32 %80 to i8
  %81 = load i8*, i8** %fastmap, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %81, i64 10
  store i8 %conv128, i8* %arrayidx129, align 1
  br label %if.end.138

if.else.130:                                      ; preds = %for.end.124
  %82 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %can_be_null131 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %82, i32 0, i32 7
  %bf.load132 = load i8, i8* %can_be_null131, align 8
  %bf.clear133 = and i8 %bf.load132, 1
  %bf.cast134 = zext i8 %bf.clear133 to i32
  %tobool135 = icmp ne i32 %bf.cast134, 0
  br i1 %tobool135, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.else.130
  br label %done

if.end.137:                                       ; preds = %if.else.130
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.then.127
  br label %sw.epilog

sw.bb.139:                                        ; preds = %if.end.22, %if.end.22, %if.end.22, %if.end.22, %if.end.22, %if.end.22, %if.end.22, %if.end.22, %if.end.22, %if.end.22
  br label %while.body

sw.bb.140:                                        ; preds = %if.end.22, %if.end.22, %if.end.22, %if.end.22, %if.end.22, %if.end.22
  br label %do.body.141

do.body.141:                                      ; preds = %sw.bb.140
  br label %do.body.142

do.body.142:                                      ; preds = %do.body.141
  %83 = load i8*, i8** %p, align 8
  %84 = load i8, i8* %83, align 1
  %conv143 = zext i8 %84 to i32
  %and144 = and i32 %conv143, 255
  store i32 %and144, i32* %j, align 4
  %85 = load i8*, i8** %p, align 8
  %add.ptr145 = getelementptr inbounds i8, i8* %85, i64 1
  %86 = load i8, i8* %add.ptr145, align 1
  %conv146 = sext i8 %86 to i32
  %shl147 = shl i32 %conv146, 8
  %87 = load i32, i32* %j, align 4
  %add = add nsw i32 %87, %shl147
  store i32 %add, i32* %j, align 4
  br label %do.end.148

do.end.148:                                       ; preds = %do.body.142
  %88 = load i8*, i8** %p, align 8
  %add.ptr149 = getelementptr inbounds i8, i8* %88, i64 2
  store i8* %add.ptr149, i8** %p, align 8
  br label %do.end.150

do.end.150:                                       ; preds = %do.end.148
  %89 = load i32, i32* %j, align 4
  %90 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %89 to i64
  %add.ptr151 = getelementptr inbounds i8, i8* %90, i64 %idx.ext
  store i8* %add.ptr151, i8** %p, align 8
  %91 = load i32, i32* %j, align 4
  %cmp152 = icmp sgt i32 %91, 0
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %do.end.150
  br label %while.body

if.end.155:                                       ; preds = %do.end.150
  %92 = load i8*, i8** %p, align 8
  %93 = load i8, i8* %92, align 1
  %conv156 = zext i8 %93 to i32
  %cmp157 = icmp ne i32 %conv156, 15
  br i1 %cmp157, label %land.lhs.true, label %if.end.163

land.lhs.true:                                    ; preds = %if.end.155
  %94 = load i8*, i8** %p, align 8
  %95 = load i8, i8* %94, align 1
  %conv159 = zext i8 %95 to i32
  %cmp160 = icmp ne i32 %conv159, 21
  br i1 %cmp160, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %land.lhs.true
  br label %while.body

if.end.163:                                       ; preds = %land.lhs.true, %if.end.155
  %96 = load i8*, i8** %p, align 8
  %incdec.ptr164 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr164, i8** %p, align 8
  br label %do.body.165

do.body.165:                                      ; preds = %if.end.163
  br label %do.body.166

do.body.166:                                      ; preds = %do.body.165
  %97 = load i8*, i8** %p, align 8
  %98 = load i8, i8* %97, align 1
  %conv167 = zext i8 %98 to i32
  %and168 = and i32 %conv167, 255
  store i32 %and168, i32* %j, align 4
  %99 = load i8*, i8** %p, align 8
  %add.ptr169 = getelementptr inbounds i8, i8* %99, i64 1
  %100 = load i8, i8* %add.ptr169, align 1
  %conv170 = sext i8 %100 to i32
  %shl171 = shl i32 %conv170, 8
  %101 = load i32, i32* %j, align 4
  %add172 = add nsw i32 %101, %shl171
  store i32 %add172, i32* %j, align 4
  br label %do.end.173

do.end.173:                                       ; preds = %do.body.166
  %102 = load i8*, i8** %p, align 8
  %add.ptr174 = getelementptr inbounds i8, i8* %102, i64 2
  store i8* %add.ptr174, i8** %p, align 8
  br label %do.end.175

do.end.175:                                       ; preds = %do.end.173
  %103 = load i32, i32* %j, align 4
  %104 = load i8*, i8** %p, align 8
  %idx.ext176 = sext i32 %103 to i64
  %add.ptr177 = getelementptr inbounds i8, i8* %104, i64 %idx.ext176
  store i8* %add.ptr177, i8** %p, align 8
  %avail178 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %105 = load i32, i32* %avail178, align 4
  %cmp179 = icmp eq i32 %105, 0
  br i1 %cmp179, label %if.end.193, label %land.lhs.true.181

land.lhs.true.181:                                ; preds = %do.end.175
  %avail182 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %106 = load i32, i32* %avail182, align 4
  %sub183 = sub i32 %106, 1
  %idxprom184 = zext i32 %sub183 to i64
  %stack185 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %107 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack185, align 8
  %arrayidx186 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %107, i64 %idxprom184
  %pointer187 = bitcast %union.fail_stack_elt* %arrayidx186 to i8**
  %108 = load i8*, i8** %pointer187, align 8
  %109 = load i8*, i8** %p, align 8
  %cmp188 = icmp eq i8* %108, %109
  br i1 %cmp188, label %if.then.190, label %if.end.193

if.then.190:                                      ; preds = %land.lhs.true.181
  %avail191 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %110 = load i32, i32* %avail191, align 4
  %dec192 = add i32 %110, -1
  store i32 %dec192, i32* %avail191, align 4
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.190, %land.lhs.true.181, %do.end.175
  br label %while.body

sw.bb.194:                                        ; preds = %if.end.22, %if.end.22
  br label %handle_on_failure_jump

handle_on_failure_jump:                           ; preds = %if.then.284, %sw.bb.194
  br label %do.body.195

do.body.195:                                      ; preds = %handle_on_failure_jump
  br label %do.body.196

do.body.196:                                      ; preds = %do.body.195
  %111 = load i8*, i8** %p, align 8
  %112 = load i8, i8* %111, align 1
  %conv197 = zext i8 %112 to i32
  %and198 = and i32 %conv197, 255
  store i32 %and198, i32* %j, align 4
  %113 = load i8*, i8** %p, align 8
  %add.ptr199 = getelementptr inbounds i8, i8* %113, i64 1
  %114 = load i8, i8* %add.ptr199, align 1
  %conv200 = sext i8 %114 to i32
  %shl201 = shl i32 %conv200, 8
  %115 = load i32, i32* %j, align 4
  %add202 = add nsw i32 %115, %shl201
  store i32 %add202, i32* %j, align 4
  br label %do.end.203

do.end.203:                                       ; preds = %do.body.196
  %116 = load i8*, i8** %p, align 8
  %add.ptr204 = getelementptr inbounds i8, i8* %116, i64 2
  store i8* %add.ptr204, i8** %p, align 8
  br label %do.end.205

do.end.205:                                       ; preds = %do.end.203
  %117 = load i8*, i8** %p, align 8
  %118 = load i32, i32* %j, align 4
  %idx.ext206 = sext i32 %118 to i64
  %add.ptr207 = getelementptr inbounds i8, i8* %117, i64 %idx.ext206
  %119 = load i8*, i8** %pend, align 8
  %cmp208 = icmp ult i8* %add.ptr207, %119
  br i1 %cmp208, label %if.then.210, label %if.else.249

if.then.210:                                      ; preds = %do.end.205
  %avail211 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %120 = load i32, i32* %avail211, align 4
  %size212 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %121 = load i32, i32* %size212, align 4
  %cmp213 = icmp eq i32 %120, %121
  br i1 %cmp213, label %land.lhs.true.215, label %cond.false.238

land.lhs.true.215:                                ; preds = %if.then.210
  %size216 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %122 = load i32, i32* %size216, align 4
  %123 = load i32, i32* @re_max_failures, align 4
  %mul217 = mul nsw i32 %123, 19
  %cmp218 = icmp ugt i32 %122, %mul217
  br i1 %cmp218, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.215
  br i1 false, label %cond.false.238, label %cond.true.237

cond.false:                                       ; preds = %land.lhs.true.215
  %size220 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %124 = load i32, i32* %size220, align 4
  %shl221 = shl i32 %124, 1
  %conv222 = zext i32 %shl221 to i64
  %mul223 = mul i64 %conv222, 8
  %125 = alloca i8, i64 %mul223
  store i8* %125, i8** %destination, align 8
  %126 = load i8*, i8** %destination, align 8
  %stack224 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %127 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack224, align 8
  %128 = bitcast %union.fail_stack_elt* %127 to i8*
  %size225 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %129 = load i32, i32* %size225, align 4
  %conv226 = zext i32 %129 to i64
  %mul227 = mul i64 %conv226, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* %128, i64 %mul227, i32 1, i1 false)
  %130 = bitcast i8* %126 to %union.fail_stack_elt*
  %stack228 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  store %union.fail_stack_elt* %130, %union.fail_stack_elt** %stack228, align 8
  %stack229 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %131 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack229, align 8
  %cmp230 = icmp eq %union.fail_stack_elt* %131, null
  br i1 %cmp230, label %cond.true.232, label %cond.false.233

cond.true.232:                                    ; preds = %cond.false
  br label %cond.end

cond.false.233:                                   ; preds = %cond.false
  %size234 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %132 = load i32, i32* %size234, align 4
  %shl235 = shl i32 %132, 1
  store i32 %shl235, i32* %size234, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.233, %cond.true.232
  %cond = phi i32 [ 0, %cond.true.232 ], [ 1, %cond.false.233 ]
  %tobool236 = icmp ne i32 %cond, 0
  br i1 %tobool236, label %cond.false.238, label %cond.true.237

cond.true.237:                                    ; preds = %cond.end, %cond.true
  br i1 false, label %if.end.248, label %if.then.247

cond.false.238:                                   ; preds = %cond.end, %cond.true, %if.then.210
  %133 = load i8*, i8** %p, align 8
  %134 = load i32, i32* %j, align 4
  %idx.ext239 = sext i32 %134 to i64
  %add.ptr240 = getelementptr inbounds i8, i8* %133, i64 %idx.ext239
  %avail241 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %135 = load i32, i32* %avail241, align 4
  %inc242 = add i32 %135, 1
  store i32 %inc242, i32* %avail241, align 4
  %idxprom243 = zext i32 %135 to i64
  %stack244 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %136 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack244, align 8
  %arrayidx245 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %136, i64 %idxprom243
  %pointer246 = bitcast %union.fail_stack_elt* %arrayidx245 to i8**
  store i8* %add.ptr240, i8** %pointer246, align 8
  br i1 true, label %if.end.248, label %if.then.247

if.then.247:                                      ; preds = %cond.false.238, %cond.true.237
  store i32 -2, i32* %retval
  br label %return

if.end.248:                                       ; preds = %cond.false.238, %cond.true.237
  br label %if.end.254

if.else.249:                                      ; preds = %do.end.205
  %137 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %can_be_null250 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %137, i32 0, i32 7
  %bf.load251 = load i8, i8* %can_be_null250, align 8
  %bf.clear252 = and i8 %bf.load251, -2
  %bf.set253 = or i8 %bf.clear252, 1
  store i8 %bf.set253, i8* %can_be_null250, align 8
  br label %if.end.254

if.end.254:                                       ; preds = %if.else.249, %if.end.248
  %138 = load i8, i8* %succeed_n_p, align 1
  %tobool255 = icmp ne i8 %138, 0
  br i1 %tobool255, label %if.then.256, label %if.end.268

if.then.256:                                      ; preds = %if.end.254
  br label %do.body.257

do.body.257:                                      ; preds = %if.then.256
  br label %do.body.258

do.body.258:                                      ; preds = %do.body.257
  %139 = load i8*, i8** %p, align 8
  %140 = load i8, i8* %139, align 1
  %conv259 = zext i8 %140 to i32
  %and260 = and i32 %conv259, 255
  store i32 %and260, i32* %k, align 4
  %141 = load i8*, i8** %p, align 8
  %add.ptr261 = getelementptr inbounds i8, i8* %141, i64 1
  %142 = load i8, i8* %add.ptr261, align 1
  %conv262 = sext i8 %142 to i32
  %shl263 = shl i32 %conv262, 8
  %143 = load i32, i32* %k, align 4
  %add264 = add nsw i32 %143, %shl263
  store i32 %add264, i32* %k, align 4
  br label %do.end.265

do.end.265:                                       ; preds = %do.body.258
  %144 = load i8*, i8** %p, align 8
  %add.ptr266 = getelementptr inbounds i8, i8* %144, i64 2
  store i8* %add.ptr266, i8** %p, align 8
  br label %do.end.267

do.end.267:                                       ; preds = %do.end.265
  store i8 0, i8* %succeed_n_p, align 1
  br label %if.end.268

if.end.268:                                       ; preds = %do.end.267, %if.end.254
  br label %while.body

sw.bb.269:                                        ; preds = %if.end.22
  %145 = load i8*, i8** %p, align 8
  %add.ptr270 = getelementptr inbounds i8, i8* %145, i64 2
  store i8* %add.ptr270, i8** %p, align 8
  br label %do.body.271

do.body.271:                                      ; preds = %sw.bb.269
  br label %do.body.272

do.body.272:                                      ; preds = %do.body.271
  %146 = load i8*, i8** %p, align 8
  %147 = load i8, i8* %146, align 1
  %conv273 = zext i8 %147 to i32
  %and274 = and i32 %conv273, 255
  store i32 %and274, i32* %k, align 4
  %148 = load i8*, i8** %p, align 8
  %add.ptr275 = getelementptr inbounds i8, i8* %148, i64 1
  %149 = load i8, i8* %add.ptr275, align 1
  %conv276 = sext i8 %149 to i32
  %shl277 = shl i32 %conv276, 8
  %150 = load i32, i32* %k, align 4
  %add278 = add nsw i32 %150, %shl277
  store i32 %add278, i32* %k, align 4
  br label %do.end.279

do.end.279:                                       ; preds = %do.body.272
  %151 = load i8*, i8** %p, align 8
  %add.ptr280 = getelementptr inbounds i8, i8* %151, i64 2
  store i8* %add.ptr280, i8** %p, align 8
  br label %do.end.281

do.end.281:                                       ; preds = %do.end.279
  %152 = load i32, i32* %k, align 4
  %cmp282 = icmp eq i32 %152, 0
  br i1 %cmp282, label %if.then.284, label %if.end.286

if.then.284:                                      ; preds = %do.end.281
  %153 = load i8*, i8** %p, align 8
  %add.ptr285 = getelementptr inbounds i8, i8* %153, i64 -4
  store i8* %add.ptr285, i8** %p, align 8
  store i8 1, i8* %succeed_n_p, align 1
  br label %handle_on_failure_jump

if.end.286:                                       ; preds = %do.end.281
  br label %while.body

sw.bb.287:                                        ; preds = %if.end.22
  %154 = load i8*, i8** %p, align 8
  %add.ptr288 = getelementptr inbounds i8, i8* %154, i64 4
  store i8* %add.ptr288, i8** %p, align 8
  br label %while.body

sw.bb.289:                                        ; preds = %if.end.22, %if.end.22
  %155 = load i8*, i8** %p, align 8
  %add.ptr290 = getelementptr inbounds i8, i8* %155, i64 2
  store i8* %add.ptr290, i8** %p, align 8
  br label %while.body

sw.default:                                       ; preds = %if.end.22
  call void @abort() #6
  unreachable

sw.epilog:                                        ; preds = %if.end.138, %for.end.112, %for.end.95, %for.end.78, %for.end, %sw.bb.28
  store i8 0, i8* %path_can_be_null, align 1
  %156 = load i8*, i8** %pend, align 8
  store i8* %156, i8** %p, align 8
  br label %while.body

while.end:                                        ; preds = %if.else
  %157 = load i8, i8* %path_can_be_null, align 1
  %conv291 = sext i8 %157 to i32
  %158 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %can_be_null292 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %158, i32 0, i32 7
  %bf.load293 = load i8, i8* %can_be_null292, align 8
  %bf.clear294 = and i8 %bf.load293, 1
  %bf.cast295 = zext i8 %bf.clear294 to i32
  %or296 = or i32 %bf.cast295, %conv291
  %159 = trunc i32 %or296 to i8
  %bf.load297 = load i8, i8* %can_be_null292, align 8
  %bf.value298 = and i8 %159, 1
  %bf.clear299 = and i8 %bf.load297, -2
  %bf.set300 = or i8 %bf.clear299, %bf.value298
  store i8 %bf.set300, i8* %can_be_null292, align 8
  %bf.result.cast301 = zext i8 %bf.value298 to i32
  br label %done

done:                                             ; preds = %while.end, %if.then.136, %sw.bb
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %done, %if.then.247, %if.then
  %160 = load i32, i32* %retval
  ret i32 %160
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: nounwind uwtable
define void @re_set_registers(%struct.re_pattern_buffer* %bufp, %struct.re_registers* %regs, i32 %num_regs, i32* %starts, i32* %ends) #0 {
entry:
  %bufp.addr = alloca %struct.re_pattern_buffer*, align 8
  %regs.addr = alloca %struct.re_registers*, align 8
  %num_regs.addr = alloca i32, align 4
  %starts.addr = alloca i32*, align 8
  %ends.addr = alloca i32*, align 8
  store %struct.re_pattern_buffer* %bufp, %struct.re_pattern_buffer** %bufp.addr, align 8
  store %struct.re_registers* %regs, %struct.re_registers** %regs.addr, align 8
  store i32 %num_regs, i32* %num_regs.addr, align 4
  store i32* %starts, i32** %starts.addr, align 8
  store i32* %ends, i32** %ends.addr, align 8
  %0 = load i32, i32* %num_regs.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %regs_allocated = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1, i32 0, i32 7
  %bf.load = load i8, i8* %regs_allocated, align 8
  %bf.clear = and i8 %bf.load, -7
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %regs_allocated, align 8
  %2 = load i32, i32* %num_regs.addr, align 4
  %3 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs1 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %3, i32 0, i32 0
  store i32 %2, i32* %num_regs1, align 4
  %4 = load i32*, i32** %starts.addr, align 8
  %5 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start = getelementptr inbounds %struct.re_registers, %struct.re_registers* %5, i32 0, i32 1
  store i32* %4, i32** %start, align 8
  %6 = load i32*, i32** %ends.addr, align 8
  %7 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end = getelementptr inbounds %struct.re_registers, %struct.re_registers* %7, i32 0, i32 2
  store i32* %6, i32** %end, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %regs_allocated2 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %8, i32 0, i32 7
  %bf.load3 = load i8, i8* %regs_allocated2, align 8
  %bf.clear4 = and i8 %bf.load3, -7
  store i8 %bf.clear4, i8* %regs_allocated2, align 8
  %9 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs5 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %9, i32 0, i32 0
  store i32 0, i32* %num_regs5, align 4
  %10 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end6 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %10, i32 0, i32 2
  store i32* null, i32** %end6, align 8
  %11 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start7 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %11, i32 0, i32 1
  store i32* null, i32** %start7, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @re_search(%struct.re_pattern_buffer* %bufp, i8* %string, i32 %size, i32 %startpos, i32 %range, %struct.re_registers* %regs) #0 {
entry:
  %bufp.addr = alloca %struct.re_pattern_buffer*, align 8
  %string.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %startpos.addr = alloca i32, align 4
  %range.addr = alloca i32, align 4
  %regs.addr = alloca %struct.re_registers*, align 8
  store %struct.re_pattern_buffer* %bufp, %struct.re_pattern_buffer** %bufp.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %startpos, i32* %startpos.addr, align 4
  store i32 %range, i32* %range.addr, align 4
  store %struct.re_registers* %regs, %struct.re_registers** %regs.addr, align 8
  %0 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %1 = load i8*, i8** %string.addr, align 8
  %2 = load i32, i32* %size.addr, align 4
  %3 = load i32, i32* %startpos.addr, align 4
  %4 = load i32, i32* %range.addr, align 4
  %5 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %6 = load i32, i32* %size.addr, align 4
  %call = call i32 @re_search_2(%struct.re_pattern_buffer* %0, i8* null, i32 0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.re_registers* %5, i32 %6)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @re_search_2(%struct.re_pattern_buffer* %bufp, i8* %string1, i32 %size1, i8* %string2, i32 %size2, i32 %startpos, i32 %range, %struct.re_registers* %regs, i32 %stop) #0 {
entry:
  %retval = alloca i32, align 4
  %bufp.addr = alloca %struct.re_pattern_buffer*, align 8
  %string1.addr = alloca i8*, align 8
  %size1.addr = alloca i32, align 4
  %string2.addr = alloca i8*, align 8
  %size2.addr = alloca i32, align 4
  %startpos.addr = alloca i32, align 4
  %range.addr = alloca i32, align 4
  %regs.addr = alloca %struct.re_registers*, align 8
  %stop.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %fastmap = alloca i8*, align 8
  %translate = alloca i8*, align 8
  %total_size = alloca i32, align 4
  %endpos = alloca i32, align 4
  %d = alloca i8*, align 8
  %lim = alloca i32, align 4
  %irange = alloca i32, align 4
  %c = alloca i8, align 1
  store %struct.re_pattern_buffer* %bufp, %struct.re_pattern_buffer** %bufp.addr, align 8
  store i8* %string1, i8** %string1.addr, align 8
  store i32 %size1, i32* %size1.addr, align 4
  store i8* %string2, i8** %string2.addr, align 8
  store i32 %size2, i32* %size2.addr, align 4
  store i32 %startpos, i32* %startpos.addr, align 4
  store i32 %range, i32* %range.addr, align 4
  store %struct.re_registers* %regs, %struct.re_registers** %regs.addr, align 8
  store i32 %stop, i32* %stop.addr, align 4
  %0 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %fastmap1 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %0, i32 0, i32 4
  %1 = load i8*, i8** %fastmap1, align 8
  store i8* %1, i8** %fastmap, align 8
  %2 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %translate2 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2, i32 0, i32 5
  %3 = load i8*, i8** %translate2, align 8
  store i8* %3, i8** %translate, align 8
  %4 = load i32, i32* %size1.addr, align 4
  %5 = load i32, i32* %size2.addr, align 4
  %add = add nsw i32 %4, %5
  store i32 %add, i32* %total_size, align 4
  %6 = load i32, i32* %startpos.addr, align 4
  %7 = load i32, i32* %range.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %endpos, align 4
  %8 = load i32, i32* %startpos.addr, align 4
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* %startpos.addr, align 4
  %10 = load i32, i32* %total_size, align 4
  %cmp4 = icmp sgt i32 %9, %10
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %11 = load i32, i32* %endpos, align 4
  %cmp5 = icmp slt i32 %11, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %12 = load i32, i32* %startpos.addr, align 4
  %sub = sub nsw i32 0, %12
  store i32 %sub, i32* %range.addr, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %13 = load i32, i32* %endpos, align 4
  %14 = load i32, i32* %total_size, align 4
  %cmp7 = icmp sgt i32 %13, %14
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.else
  %15 = load i32, i32* %total_size, align 4
  %16 = load i32, i32* %startpos.addr, align 4
  %sub9 = sub nsw i32 %15, %16
  store i32 %sub9, i32* %range.addr, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.6
  %17 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %used = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %17, i32 0, i32 2
  %18 = load i64, i64* %used, align 8
  %cmp12 = icmp ugt i64 %18, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %if.end.11
  %19 = load i32, i32* %range.addr, align 4
  %cmp13 = icmp sgt i32 %19, 0
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.30

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %20 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %20, i32 0, i32 0
  %21 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %22 to i32
  %cmp15 = icmp eq i32 %conv, 11
  br i1 %cmp15, label %if.then.24, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %land.lhs.true.14
  %23 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer18 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %23, i32 0, i32 0
  %24 = load i8*, i8** %buffer18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %25 to i32
  %cmp21 = icmp eq i32 %conv20, 9
  br i1 %cmp21, label %land.lhs.true.23, label %if.end.30

land.lhs.true.23:                                 ; preds = %lor.lhs.false.17
  %26 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %newline_anchor = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %26, i32 0, i32 7
  %bf.load = load i8, i8* %newline_anchor, align 8
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end.30, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true.23, %land.lhs.true.14
  %27 = load i32, i32* %startpos.addr, align 4
  %cmp25 = icmp sgt i32 %27, 0
  br i1 %cmp25, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.then.24
  store i32 -1, i32* %retval
  br label %return

if.else.28:                                       ; preds = %if.then.24
  store i32 1, i32* %range.addr, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %land.lhs.true.23, %lor.lhs.false.17, %land.lhs.true, %if.end.11
  %28 = load i8*, i8** %fastmap, align 8
  %tobool31 = icmp ne i8* %28, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.end.42

land.lhs.true.32:                                 ; preds = %if.end.30
  %29 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %fastmap_accurate = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %29, i32 0, i32 7
  %bf.load33 = load i8, i8* %fastmap_accurate, align 8
  %bf.lshr34 = lshr i8 %bf.load33, 3
  %bf.clear = and i8 %bf.lshr34, 1
  %bf.cast35 = zext i8 %bf.clear to i32
  %tobool36 = icmp ne i32 %bf.cast35, 0
  br i1 %tobool36, label %if.end.42, label %if.then.37

if.then.37:                                       ; preds = %land.lhs.true.32
  %30 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %call = call i32 @re_compile_fastmap(%struct.re_pattern_buffer* %30)
  %cmp38 = icmp eq i32 %call, -2
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.then.37
  store i32 -2, i32* %retval
  br label %return

if.end.41:                                        ; preds = %if.then.37
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %land.lhs.true.32, %if.end.30
  br label %for.cond

for.cond:                                         ; preds = %if.end.165, %if.end.42
  %31 = load i8*, i8** %fastmap, align 8
  %tobool43 = icmp ne i8* %31, null
  br i1 %tobool43, label %land.lhs.true.44, label %if.end.129

land.lhs.true.44:                                 ; preds = %for.cond
  %32 = load i32, i32* %startpos.addr, align 4
  %33 = load i32, i32* %total_size, align 4
  %cmp45 = icmp slt i32 %32, %33
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.129

land.lhs.true.47:                                 ; preds = %land.lhs.true.44
  %34 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %can_be_null = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %34, i32 0, i32 7
  %bf.load48 = load i8, i8* %can_be_null, align 8
  %bf.clear49 = and i8 %bf.load48, 1
  %bf.cast50 = zext i8 %bf.clear49 to i32
  %tobool51 = icmp ne i32 %bf.cast50, 0
  br i1 %tobool51, label %if.end.129, label %if.then.52

if.then.52:                                       ; preds = %land.lhs.true.47
  %35 = load i32, i32* %range.addr, align 4
  %cmp53 = icmp sgt i32 %35, 0
  br i1 %cmp53, label %if.then.55, label %if.else.95

if.then.55:                                       ; preds = %if.then.52
  store i32 0, i32* %lim, align 4
  %36 = load i32, i32* %range.addr, align 4
  store i32 %36, i32* %irange, align 4
  %37 = load i32, i32* %startpos.addr, align 4
  %38 = load i32, i32* %size1.addr, align 4
  %cmp56 = icmp slt i32 %37, %38
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.65

land.lhs.true.58:                                 ; preds = %if.then.55
  %39 = load i32, i32* %startpos.addr, align 4
  %40 = load i32, i32* %range.addr, align 4
  %add59 = add nsw i32 %39, %40
  %41 = load i32, i32* %size1.addr, align 4
  %cmp60 = icmp sge i32 %add59, %41
  br i1 %cmp60, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %land.lhs.true.58
  %42 = load i32, i32* %range.addr, align 4
  %43 = load i32, i32* %size1.addr, align 4
  %44 = load i32, i32* %startpos.addr, align 4
  %sub63 = sub nsw i32 %43, %44
  %sub64 = sub nsw i32 %42, %sub63
  store i32 %sub64, i32* %lim, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %land.lhs.true.58, %if.then.55
  %45 = load i32, i32* %startpos.addr, align 4
  %46 = load i32, i32* %size1.addr, align 4
  %cmp66 = icmp sge i32 %45, %46
  br i1 %cmp66, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.65
  %47 = load i8*, i8** %string2.addr, align 8
  %48 = load i32, i32* %size1.addr, align 4
  %idx.ext = sext i32 %48 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %47, i64 %idx.neg
  br label %cond.end

cond.false:                                       ; preds = %if.end.65
  %49 = load i8*, i8** %string1.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %49, %cond.false ]
  %50 = load i32, i32* %startpos.addr, align 4
  %idx.ext68 = sext i32 %50 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %cond, i64 %idx.ext68
  store i8* %add.ptr69, i8** %d, align 8
  %51 = load i8*, i8** %translate, align 8
  %tobool70 = icmp ne i8* %51, null
  br i1 %tobool70, label %if.then.71, label %if.else.78

if.then.71:                                       ; preds = %cond.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.71
  %52 = load i32, i32* %range.addr, align 4
  %53 = load i32, i32* %lim, align 4
  %cmp72 = icmp sgt i32 %52, %53
  br i1 %cmp72, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %54 = load i8*, i8** %d, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr, i8** %d, align 8
  %55 = load i8, i8* %54, align 1
  %idxprom = zext i8 %55 to i64
  %56 = load i8*, i8** %translate, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %56, i64 %idxprom
  %57 = load i8, i8* %arrayidx74, align 1
  %idxprom75 = zext i8 %57 to i64
  %58 = load i8*, i8** %fastmap, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %58, i64 %idxprom75
  %59 = load i8, i8* %arrayidx76, align 1
  %tobool77 = icmp ne i8 %59, 0
  %lnot = xor i1 %tobool77, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %60 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %60, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %61 = load i32, i32* %range.addr, align 4
  %dec = add nsw i32 %61, -1
  store i32 %dec, i32* %range.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.92

if.else.78:                                       ; preds = %cond.end
  br label %while.cond.79

while.cond.79:                                    ; preds = %while.body.89, %if.else.78
  %62 = load i32, i32* %range.addr, align 4
  %63 = load i32, i32* %lim, align 4
  %cmp80 = icmp sgt i32 %62, %63
  br i1 %cmp80, label %land.rhs.82, label %land.end.88

land.rhs.82:                                      ; preds = %while.cond.79
  %64 = load i8*, i8** %d, align 8
  %incdec.ptr83 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr83, i8** %d, align 8
  %65 = load i8, i8* %64, align 1
  %idxprom84 = zext i8 %65 to i64
  %66 = load i8*, i8** %fastmap, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %66, i64 %idxprom84
  %67 = load i8, i8* %arrayidx85, align 1
  %tobool86 = icmp ne i8 %67, 0
  %lnot87 = xor i1 %tobool86, true
  br label %land.end.88

land.end.88:                                      ; preds = %land.rhs.82, %while.cond.79
  %68 = phi i1 [ false, %while.cond.79 ], [ %lnot87, %land.rhs.82 ]
  br i1 %68, label %while.body.89, label %while.end.91

while.body.89:                                    ; preds = %land.end.88
  %69 = load i32, i32* %range.addr, align 4
  %dec90 = add nsw i32 %69, -1
  store i32 %dec90, i32* %range.addr, align 4
  br label %while.cond.79

while.end.91:                                     ; preds = %land.end.88
  br label %if.end.92

if.end.92:                                        ; preds = %while.end.91, %while.end
  %70 = load i32, i32* %irange, align 4
  %71 = load i32, i32* %range.addr, align 4
  %sub93 = sub nsw i32 %70, %71
  %72 = load i32, i32* %startpos.addr, align 4
  %add94 = add nsw i32 %72, %sub93
  store i32 %add94, i32* %startpos.addr, align 4
  br label %if.end.128

if.else.95:                                       ; preds = %if.then.52
  %73 = load i32, i32* %size1.addr, align 4
  %cmp96 = icmp eq i32 %73, 0
  br i1 %cmp96, label %cond.true.101, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %if.else.95
  %74 = load i32, i32* %startpos.addr, align 4
  %75 = load i32, i32* %size1.addr, align 4
  %cmp99 = icmp sge i32 %74, %75
  br i1 %cmp99, label %cond.true.101, label %cond.false.106

cond.true.101:                                    ; preds = %lor.lhs.false.98, %if.else.95
  %76 = load i32, i32* %startpos.addr, align 4
  %77 = load i32, i32* %size1.addr, align 4
  %sub102 = sub nsw i32 %76, %77
  %idxprom103 = sext i32 %sub102 to i64
  %78 = load i8*, i8** %string2.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %78, i64 %idxprom103
  %79 = load i8, i8* %arrayidx104, align 1
  %conv105 = sext i8 %79 to i32
  br label %cond.end.110

cond.false.106:                                   ; preds = %lor.lhs.false.98
  %80 = load i32, i32* %startpos.addr, align 4
  %idxprom107 = sext i32 %80 to i64
  %81 = load i8*, i8** %string1.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %81, i64 %idxprom107
  %82 = load i8, i8* %arrayidx108, align 1
  %conv109 = sext i8 %82 to i32
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.false.106, %cond.true.101
  %cond111 = phi i32 [ %conv105, %cond.true.101 ], [ %conv109, %cond.false.106 ]
  %conv112 = trunc i32 %cond111 to i8
  store i8 %conv112, i8* %c, align 1
  %83 = load i8*, i8** %translate, align 8
  %tobool113 = icmp ne i8* %83, null
  br i1 %tobool113, label %cond.true.114, label %cond.false.118

cond.true.114:                                    ; preds = %cond.end.110
  %84 = load i8, i8* %c, align 1
  %idxprom115 = zext i8 %84 to i64
  %85 = load i8*, i8** %translate, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %85, i64 %idxprom115
  %86 = load i8, i8* %arrayidx116, align 1
  %conv117 = sext i8 %86 to i32
  br label %cond.end.120

cond.false.118:                                   ; preds = %cond.end.110
  %87 = load i8, i8* %c, align 1
  %conv119 = sext i8 %87 to i32
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.118, %cond.true.114
  %cond121 = phi i32 [ %conv117, %cond.true.114 ], [ %conv119, %cond.false.118 ]
  %conv122 = trunc i32 %cond121 to i8
  %idxprom123 = zext i8 %conv122 to i64
  %88 = load i8*, i8** %fastmap, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %88, i64 %idxprom123
  %89 = load i8, i8* %arrayidx124, align 1
  %tobool125 = icmp ne i8 %89, 0
  br i1 %tobool125, label %if.end.127, label %if.then.126

if.then.126:                                      ; preds = %cond.end.120
  br label %advance

if.end.127:                                       ; preds = %cond.end.120
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.end.92
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %land.lhs.true.47, %land.lhs.true.44, %for.cond
  %90 = load i32, i32* %range.addr, align 4
  %cmp130 = icmp sge i32 %90, 0
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.144

land.lhs.true.132:                                ; preds = %if.end.129
  %91 = load i32, i32* %startpos.addr, align 4
  %92 = load i32, i32* %total_size, align 4
  %cmp133 = icmp eq i32 %91, %92
  br i1 %cmp133, label %land.lhs.true.135, label %if.end.144

land.lhs.true.135:                                ; preds = %land.lhs.true.132
  %93 = load i8*, i8** %fastmap, align 8
  %tobool136 = icmp ne i8* %93, null
  br i1 %tobool136, label %land.lhs.true.137, label %if.end.144

land.lhs.true.137:                                ; preds = %land.lhs.true.135
  %94 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %can_be_null138 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %94, i32 0, i32 7
  %bf.load139 = load i8, i8* %can_be_null138, align 8
  %bf.clear140 = and i8 %bf.load139, 1
  %bf.cast141 = zext i8 %bf.clear140 to i32
  %tobool142 = icmp ne i32 %bf.cast141, 0
  br i1 %tobool142, label %if.end.144, label %if.then.143

if.then.143:                                      ; preds = %land.lhs.true.137
  store i32 -1, i32* %retval
  br label %return

if.end.144:                                       ; preds = %land.lhs.true.137, %land.lhs.true.135, %land.lhs.true.132, %if.end.129
  %95 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %96 = load i8*, i8** %string1.addr, align 8
  %97 = load i32, i32* %size1.addr, align 4
  %98 = load i8*, i8** %string2.addr, align 8
  %99 = load i32, i32* %size2.addr, align 4
  %100 = load i32, i32* %startpos.addr, align 4
  %101 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %102 = load i32, i32* %stop.addr, align 4
  %call145 = call i32 @re_match_2_internal(%struct.re_pattern_buffer* %95, i8* %96, i32 %97, i8* %98, i32 %99, i32 %100, %struct.re_registers* %101, i32 %102)
  store i32 %call145, i32* %val, align 4
  %103 = load i32, i32* %val, align 4
  %cmp146 = icmp sge i32 %103, 0
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.end.144
  %104 = load i32, i32* %startpos.addr, align 4
  store i32 %104, i32* %retval
  br label %return

if.end.149:                                       ; preds = %if.end.144
  %105 = load i32, i32* %val, align 4
  %cmp150 = icmp eq i32 %105, -2
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %if.end.149
  store i32 -2, i32* %retval
  br label %return

if.end.153:                                       ; preds = %if.end.149
  br label %advance

advance:                                          ; preds = %if.end.153, %if.then.126
  %106 = load i32, i32* %range.addr, align 4
  %tobool154 = icmp ne i32 %106, 0
  br i1 %tobool154, label %if.else.156, label %if.then.155

if.then.155:                                      ; preds = %advance
  br label %for.end

if.else.156:                                      ; preds = %advance
  %107 = load i32, i32* %range.addr, align 4
  %cmp157 = icmp sgt i32 %107, 0
  br i1 %cmp157, label %if.then.159, label %if.else.161

if.then.159:                                      ; preds = %if.else.156
  %108 = load i32, i32* %range.addr, align 4
  %dec160 = add nsw i32 %108, -1
  store i32 %dec160, i32* %range.addr, align 4
  %109 = load i32, i32* %startpos.addr, align 4
  %inc = add nsw i32 %109, 1
  store i32 %inc, i32* %startpos.addr, align 4
  br label %if.end.164

if.else.161:                                      ; preds = %if.else.156
  %110 = load i32, i32* %range.addr, align 4
  %inc162 = add nsw i32 %110, 1
  store i32 %inc162, i32* %range.addr, align 4
  %111 = load i32, i32* %startpos.addr, align 4
  %dec163 = add nsw i32 %111, -1
  store i32 %dec163, i32* %startpos.addr, align 4
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.161, %if.then.159
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164
  br label %for.cond

for.end:                                          ; preds = %if.then.155
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.152, %if.then.148, %if.then.143, %if.then.40, %if.then.27, %if.then
  %112 = load i32, i32* %retval
  ret i32 %112
}

; Function Attrs: nounwind uwtable
define internal i32 @re_match_2_internal(%struct.re_pattern_buffer* %bufp, i8* %string1, i32 %size1, i8* %string2, i32 %size2, i32 %pos, %struct.re_registers* %regs, i32 %stop) #0 {
entry:
  %retval = alloca i32, align 4
  %bufp.addr = alloca %struct.re_pattern_buffer*, align 8
  %string1.addr = alloca i8*, align 8
  %size1.addr = alloca i32, align 4
  %string2.addr = alloca i8*, align 8
  %size2.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %regs.addr = alloca %struct.re_registers*, align 8
  %stop.addr = alloca i32, align 4
  %mcnt = alloca i32, align 4
  %p1 = alloca i8*, align 8
  %end1 = alloca i8*, align 8
  %end2 = alloca i8*, align 8
  %end_match_1 = alloca i8*, align 8
  %end_match_2 = alloca i8*, align 8
  %d = alloca i8*, align 8
  %dend = alloca i8*, align 8
  %p = alloca i8*, align 8
  %pend = alloca i8*, align 8
  %just_past_start_mem = alloca i8*, align 8
  %translate = alloca i8*, align 8
  %fail_stack = alloca %struct.fail_stack_type, align 8
  %num_regs = alloca i64, align 8
  %lowest_active_reg = alloca i64, align 8
  %highest_active_reg = alloca i64, align 8
  %regstart = alloca i8**, align 8
  %regend = alloca i8**, align 8
  %old_regstart = alloca i8**, align 8
  %old_regend = alloca i8**, align 8
  %reg_info = alloca %union.register_info_type*, align 8
  %best_regs_set = alloca i32, align 4
  %best_regstart = alloca i8**, align 8
  %best_regend = alloca i8**, align 8
  %match_end = alloca i8*, align 8
  %set_regs_matched_done = alloca i32, align 4
  %reg_dummy = alloca i8**, align 8
  %reg_info_dummy = alloca %union.register_info_type*, align 8
  %same_str_p = alloca i8, align 1
  %best_match_p = alloca i8, align 1
  %r = alloca i64, align 8
  %r690 = alloca i64, align 8
  %c = alloca i8, align 1
  %not = alloca i8, align 1
  %r767 = alloca i64, align 8
  %r890 = alloca i8, align 1
  %is_a_jump_n = alloca i8, align 1
  %r989 = alloca i32, align 4
  %destination = alloca i8*, align 8
  %this_reg = alloca i64, align 8
  %d2 = alloca i8*, align 8
  %dend2 = alloca i8*, align 8
  %regno = alloca i32, align 4
  %r1255 = alloca i64, align 8
  %destination1371 = alloca i8*, align 8
  %this_reg1372 = alloca i64, align 8
  %destination1518 = alloca i8*, align 8
  %this_reg1519 = alloca i64, align 8
  %p2 = alloca i8*, align 8
  %c1682 = alloca i8, align 1
  %not1716 = alloca i32, align 4
  %idx = alloca i32, align 4
  %idx1838 = alloca i32, align 4
  %dummy_low_reg = alloca i64, align 8
  %dummy_high_reg = alloca i64, align 8
  %pdummy = alloca i8*, align 8
  %sdummy = alloca i8*, align 8
  %this_reg1895 = alloca i64, align 8
  %string_temp = alloca i8*, align 8
  %destination1973 = alloca i8*, align 8
  %this_reg1974 = alloca i64, align 8
  %destination2073 = alloca i8*, align 8
  %this_reg2074 = alloca i64, align 8
  %prevchar = alloca i8, align 1
  %thischar = alloca i8, align 1
  %prevchar2346 = alloca i8, align 1
  %thischar2347 = alloca i8, align 1
  %r2579 = alloca i64, align 8
  %r2638 = alloca i64, align 8
  %this_reg2666 = alloca i64, align 8
  %string_temp2667 = alloca i8*, align 8
  %is_a_jump_n2732 = alloca i8, align 1
  store %struct.re_pattern_buffer* %bufp, %struct.re_pattern_buffer** %bufp.addr, align 8
  store i8* %string1, i8** %string1.addr, align 8
  store i32 %size1, i32* %size1.addr, align 4
  store i8* %string2, i8** %string2.addr, align 8
  store i32 %size2, i32* %size2.addr, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store %struct.re_registers* %regs, %struct.re_registers** %regs.addr, align 8
  store i32 %stop, i32* %stop.addr, align 4
  %0 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %0, i32 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %3 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %used = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i32 0, i32 2
  %4 = load i64, i64* %used, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %4
  store i8* %add.ptr, i8** %pend, align 8
  store i8* null, i8** %just_past_start_mem, align 8
  %5 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %translate1 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %5, i32 0, i32 5
  %6 = load i8*, i8** %translate1, align 8
  store i8* %6, i8** %translate, align 8
  %7 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %re_nsub = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %7, i32 0, i32 6
  %8 = load i64, i64* %re_nsub, align 8
  %add = add i64 %8, 1
  store i64 %add, i64* %num_regs, align 8
  store i64 257, i64* %lowest_active_reg, align 8
  store i64 256, i64* %highest_active_reg, align 8
  store i32 0, i32* %best_regs_set, align 4
  store i8* null, i8** %match_end, align 8
  store i32 0, i32* %set_regs_matched_done, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %9 = alloca i8, i64 40
  %10 = bitcast i8* %9 to %union.fail_stack_elt*
  %stack = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  store %union.fail_stack_elt* %10, %union.fail_stack_elt** %stack, align 8
  %stack2 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %11 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2, align 8
  %cmp = icmp eq %union.fail_stack_elt* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  %size = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  store i32 5, i32* %size, align 4
  %avail = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  store i32 0, i32* %avail, align 4
  br label %do.end

do.end:                                           ; preds = %if.end
  %12 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %re_nsub3 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %12, i32 0, i32 6
  %13 = load i64, i64* %re_nsub3, align 8
  %tobool = icmp ne i64 %13, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.end
  %14 = load i64, i64* %num_regs, align 8
  %mul = mul i64 %14, 8
  %15 = alloca i8, i64 %mul
  %16 = bitcast i8* %15 to i8**
  store i8** %16, i8*** %regstart, align 8
  %17 = load i64, i64* %num_regs, align 8
  %mul5 = mul i64 %17, 8
  %18 = alloca i8, i64 %mul5
  %19 = bitcast i8* %18 to i8**
  store i8** %19, i8*** %regend, align 8
  %20 = load i64, i64* %num_regs, align 8
  %mul6 = mul i64 %20, 8
  %21 = alloca i8, i64 %mul6
  %22 = bitcast i8* %21 to i8**
  store i8** %22, i8*** %old_regstart, align 8
  %23 = load i64, i64* %num_regs, align 8
  %mul7 = mul i64 %23, 8
  %24 = alloca i8, i64 %mul7
  %25 = bitcast i8* %24 to i8**
  store i8** %25, i8*** %old_regend, align 8
  %26 = load i64, i64* %num_regs, align 8
  %mul8 = mul i64 %26, 8
  %27 = alloca i8, i64 %mul8
  %28 = bitcast i8* %27 to i8**
  store i8** %28, i8*** %best_regstart, align 8
  %29 = load i64, i64* %num_regs, align 8
  %mul9 = mul i64 %29, 8
  %30 = alloca i8, i64 %mul9
  %31 = bitcast i8* %30 to i8**
  store i8** %31, i8*** %best_regend, align 8
  %32 = load i64, i64* %num_regs, align 8
  %mul10 = mul i64 %32, 8
  %33 = alloca i8, i64 %mul10
  %34 = bitcast i8* %33 to %union.register_info_type*
  store %union.register_info_type* %34, %union.register_info_type** %reg_info, align 8
  %35 = load i64, i64* %num_regs, align 8
  %mul11 = mul i64 %35, 8
  %36 = alloca i8, i64 %mul11
  %37 = bitcast i8* %36 to i8**
  store i8** %37, i8*** %reg_dummy, align 8
  %38 = load i64, i64* %num_regs, align 8
  %mul12 = mul i64 %38, 8
  %39 = alloca i8, i64 %mul12
  %40 = bitcast i8* %39 to %union.register_info_type*
  store %union.register_info_type* %40, %union.register_info_type** %reg_info_dummy, align 8
  %41 = load i8**, i8*** %regstart, align 8
  %tobool13 = icmp ne i8** %41, null
  br i1 %tobool13, label %land.lhs.true, label %if.then.29

land.lhs.true:                                    ; preds = %if.then.4
  %42 = load i8**, i8*** %regend, align 8
  %tobool14 = icmp ne i8** %42, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.then.29

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %43 = load i8**, i8*** %old_regstart, align 8
  %tobool16 = icmp ne i8** %43, null
  br i1 %tobool16, label %land.lhs.true.17, label %if.then.29

land.lhs.true.17:                                 ; preds = %land.lhs.true.15
  %44 = load i8**, i8*** %old_regend, align 8
  %tobool18 = icmp ne i8** %44, null
  br i1 %tobool18, label %land.lhs.true.19, label %if.then.29

land.lhs.true.19:                                 ; preds = %land.lhs.true.17
  %45 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %tobool20 = icmp ne %union.register_info_type* %45, null
  br i1 %tobool20, label %land.lhs.true.21, label %if.then.29

land.lhs.true.21:                                 ; preds = %land.lhs.true.19
  %46 = load i8**, i8*** %best_regstart, align 8
  %tobool22 = icmp ne i8** %46, null
  br i1 %tobool22, label %land.lhs.true.23, label %if.then.29

land.lhs.true.23:                                 ; preds = %land.lhs.true.21
  %47 = load i8**, i8*** %best_regend, align 8
  %tobool24 = icmp ne i8** %47, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.then.29

land.lhs.true.25:                                 ; preds = %land.lhs.true.23
  %48 = load i8**, i8*** %reg_dummy, align 8
  %tobool26 = icmp ne i8** %48, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.then.29

land.lhs.true.27:                                 ; preds = %land.lhs.true.25
  %49 = load %union.register_info_type*, %union.register_info_type** %reg_info_dummy, align 8
  %tobool28 = icmp ne %union.register_info_type* %49, null
  br i1 %tobool28, label %if.end.59, label %if.then.29

if.then.29:                                       ; preds = %land.lhs.true.27, %land.lhs.true.25, %land.lhs.true.23, %land.lhs.true.21, %land.lhs.true.19, %land.lhs.true.17, %land.lhs.true.15, %land.lhs.true, %if.then.4
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.29
  %50 = load i8**, i8*** %regstart, align 8
  %tobool31 = icmp ne i8** %50, null
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %do.body.30
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %do.body.30
  store i8** null, i8*** %regstart, align 8
  %51 = load i8**, i8*** %regend, align 8
  %tobool34 = icmp ne i8** %51, null
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.33
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.33
  store i8** null, i8*** %regend, align 8
  %52 = load i8**, i8*** %old_regstart, align 8
  %tobool37 = icmp ne i8** %52, null
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.36
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.36
  store i8** null, i8*** %old_regstart, align 8
  %53 = load i8**, i8*** %old_regend, align 8
  %tobool40 = icmp ne i8** %53, null
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.39
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.39
  store i8** null, i8*** %old_regend, align 8
  %54 = load i8**, i8*** %best_regstart, align 8
  %tobool43 = icmp ne i8** %54, null
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.42
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.end.42
  store i8** null, i8*** %best_regstart, align 8
  %55 = load i8**, i8*** %best_regend, align 8
  %tobool46 = icmp ne i8** %55, null
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.45
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.45
  store i8** null, i8*** %best_regend, align 8
  %56 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %tobool49 = icmp ne %union.register_info_type* %56, null
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.48
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.48
  store %union.register_info_type* null, %union.register_info_type** %reg_info, align 8
  %57 = load i8**, i8*** %reg_dummy, align 8
  %tobool52 = icmp ne i8** %57, null
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.51
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.51
  store i8** null, i8*** %reg_dummy, align 8
  %58 = load %union.register_info_type*, %union.register_info_type** %reg_info_dummy, align 8
  %tobool55 = icmp ne %union.register_info_type* %58, null
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.54
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.54
  store %union.register_info_type* null, %union.register_info_type** %reg_info_dummy, align 8
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  store i32 -2, i32* %retval
  br label %return

if.end.59:                                        ; preds = %land.lhs.true.27
  br label %if.end.60

if.else:                                          ; preds = %do.end
  store i8** null, i8*** %reg_dummy, align 8
  store i8** null, i8*** %best_regend, align 8
  store i8** null, i8*** %best_regstart, align 8
  store i8** null, i8*** %old_regend, align 8
  store i8** null, i8*** %old_regstart, align 8
  store i8** null, i8*** %regend, align 8
  store i8** null, i8*** %regstart, align 8
  store %union.register_info_type* null, %union.register_info_type** %reg_info_dummy, align 8
  store %union.register_info_type* null, %union.register_info_type** %reg_info, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.else, %if.end.59
  %59 = load i32, i32* %pos.addr, align 4
  %cmp61 = icmp slt i32 %59, 0
  br i1 %cmp61, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.60
  %60 = load i32, i32* %pos.addr, align 4
  %61 = load i32, i32* %size1.addr, align 4
  %62 = load i32, i32* %size2.addr, align 4
  %add62 = add nsw i32 %61, %62
  %cmp63 = icmp sgt i32 %60, %add62
  br i1 %cmp63, label %if.then.64, label %if.end.94

if.then.64:                                       ; preds = %lor.lhs.false, %if.end.60
  br label %do.body.65

do.body.65:                                       ; preds = %if.then.64
  %63 = load i8**, i8*** %regstart, align 8
  %tobool66 = icmp ne i8** %63, null
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %do.body.65
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %do.body.65
  store i8** null, i8*** %regstart, align 8
  %64 = load i8**, i8*** %regend, align 8
  %tobool69 = icmp ne i8** %64, null
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.68
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.68
  store i8** null, i8*** %regend, align 8
  %65 = load i8**, i8*** %old_regstart, align 8
  %tobool72 = icmp ne i8** %65, null
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.71
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.end.71
  store i8** null, i8*** %old_regstart, align 8
  %66 = load i8**, i8*** %old_regend, align 8
  %tobool75 = icmp ne i8** %66, null
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.74
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.end.74
  store i8** null, i8*** %old_regend, align 8
  %67 = load i8**, i8*** %best_regstart, align 8
  %tobool78 = icmp ne i8** %67, null
  br i1 %tobool78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.77
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %if.end.77
  store i8** null, i8*** %best_regstart, align 8
  %68 = load i8**, i8*** %best_regend, align 8
  %tobool81 = icmp ne i8** %68, null
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.80
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.end.80
  store i8** null, i8*** %best_regend, align 8
  %69 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %tobool84 = icmp ne %union.register_info_type* %69, null
  br i1 %tobool84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.83
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %if.end.83
  store %union.register_info_type* null, %union.register_info_type** %reg_info, align 8
  %70 = load i8**, i8*** %reg_dummy, align 8
  %tobool87 = icmp ne i8** %70, null
  br i1 %tobool87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.end.86
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %if.end.86
  store i8** null, i8*** %reg_dummy, align 8
  %71 = load %union.register_info_type*, %union.register_info_type** %reg_info_dummy, align 8
  %tobool90 = icmp ne %union.register_info_type* %71, null
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.89
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.end.89
  store %union.register_info_type* null, %union.register_info_type** %reg_info_dummy, align 8
  br label %do.end.93

do.end.93:                                        ; preds = %if.end.92
  store i32 -1, i32* %retval
  br label %return

if.end.94:                                        ; preds = %lor.lhs.false
  store i32 1, i32* %mcnt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.94
  %72 = load i32, i32* %mcnt, align 4
  %conv = zext i32 %72 to i64
  %73 = load i64, i64* %num_regs, align 8
  %cmp95 = icmp ult i64 %conv, %73
  br i1 %cmp95, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %74 = load i32, i32* %mcnt, align 4
  %idxprom = sext i32 %74 to i64
  %75 = load i8**, i8*** %old_regend, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %75, i64 %idxprom
  store i8* @reg_unset_dummy, i8** %arrayidx, align 8
  %76 = load i32, i32* %mcnt, align 4
  %idxprom97 = sext i32 %76 to i64
  %77 = load i8**, i8*** %old_regstart, align 8
  %arrayidx98 = getelementptr inbounds i8*, i8** %77, i64 %idxprom97
  store i8* @reg_unset_dummy, i8** %arrayidx98, align 8
  %78 = load i32, i32* %mcnt, align 4
  %idxprom99 = sext i32 %78 to i64
  %79 = load i8**, i8*** %regend, align 8
  %arrayidx100 = getelementptr inbounds i8*, i8** %79, i64 %idxprom99
  store i8* @reg_unset_dummy, i8** %arrayidx100, align 8
  %80 = load i32, i32* %mcnt, align 4
  %idxprom101 = sext i32 %80 to i64
  %81 = load i8**, i8*** %regstart, align 8
  %arrayidx102 = getelementptr inbounds i8*, i8** %81, i64 %idxprom101
  store i8* @reg_unset_dummy, i8** %arrayidx102, align 8
  %82 = load i32, i32* %mcnt, align 4
  %idxprom103 = sext i32 %82 to i64
  %83 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx104 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %83, i64 %idxprom103
  %bits = bitcast %union.register_info_type* %arrayidx104 to %struct.anon*
  %84 = bitcast %struct.anon* %bits to i8*
  %bf.load = load i8, i8* %84, align 4
  %bf.clear = and i8 %bf.load, -4
  %bf.set = or i8 %bf.clear, 3
  store i8 %bf.set, i8* %84, align 4
  %85 = load i32, i32* %mcnt, align 4
  %idxprom105 = sext i32 %85 to i64
  %86 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx106 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %86, i64 %idxprom105
  %bits107 = bitcast %union.register_info_type* %arrayidx106 to %struct.anon*
  %87 = bitcast %struct.anon* %bits107 to i8*
  %bf.load108 = load i8, i8* %87, align 4
  %bf.clear109 = and i8 %bf.load108, -5
  store i8 %bf.clear109, i8* %87, align 4
  %88 = load i32, i32* %mcnt, align 4
  %idxprom110 = sext i32 %88 to i64
  %89 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx111 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %89, i64 %idxprom110
  %bits112 = bitcast %union.register_info_type* %arrayidx111 to %struct.anon*
  %90 = bitcast %struct.anon* %bits112 to i8*
  %bf.load113 = load i8, i8* %90, align 4
  %bf.clear114 = and i8 %bf.load113, -9
  store i8 %bf.clear114, i8* %90, align 4
  %91 = load i32, i32* %mcnt, align 4
  %idxprom115 = sext i32 %91 to i64
  %92 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx116 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %92, i64 %idxprom115
  %bits117 = bitcast %union.register_info_type* %arrayidx116 to %struct.anon*
  %93 = bitcast %struct.anon* %bits117 to i8*
  %bf.load118 = load i8, i8* %93, align 4
  %bf.clear119 = and i8 %bf.load118, -17
  store i8 %bf.clear119, i8* %93, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %94 = load i32, i32* %mcnt, align 4
  %inc = add nsw i32 %94, 1
  store i32 %inc, i32* %mcnt, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %95 = load i32, i32* %size2.addr, align 4
  %cmp120 = icmp eq i32 %95, 0
  br i1 %cmp120, label %land.lhs.true.122, label %if.end.126

land.lhs.true.122:                                ; preds = %for.end
  %96 = load i8*, i8** %string1.addr, align 8
  %cmp123 = icmp ne i8* %96, null
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %land.lhs.true.122
  %97 = load i8*, i8** %string1.addr, align 8
  store i8* %97, i8** %string2.addr, align 8
  %98 = load i32, i32* %size1.addr, align 4
  store i32 %98, i32* %size2.addr, align 4
  store i8* null, i8** %string1.addr, align 8
  store i32 0, i32* %size1.addr, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %land.lhs.true.122, %for.end
  %99 = load i8*, i8** %string1.addr, align 8
  %100 = load i32, i32* %size1.addr, align 4
  %idx.ext = sext i32 %100 to i64
  %add.ptr127 = getelementptr inbounds i8, i8* %99, i64 %idx.ext
  store i8* %add.ptr127, i8** %end1, align 8
  %101 = load i8*, i8** %string2.addr, align 8
  %102 = load i32, i32* %size2.addr, align 4
  %idx.ext128 = sext i32 %102 to i64
  %add.ptr129 = getelementptr inbounds i8, i8* %101, i64 %idx.ext128
  store i8* %add.ptr129, i8** %end2, align 8
  %103 = load i32, i32* %stop.addr, align 4
  %104 = load i32, i32* %size1.addr, align 4
  %cmp130 = icmp sle i32 %103, %104
  br i1 %cmp130, label %if.then.132, label %if.else.135

if.then.132:                                      ; preds = %if.end.126
  %105 = load i8*, i8** %string1.addr, align 8
  %106 = load i32, i32* %stop.addr, align 4
  %idx.ext133 = sext i32 %106 to i64
  %add.ptr134 = getelementptr inbounds i8, i8* %105, i64 %idx.ext133
  store i8* %add.ptr134, i8** %end_match_1, align 8
  %107 = load i8*, i8** %string2.addr, align 8
  store i8* %107, i8** %end_match_2, align 8
  br label %if.end.140

if.else.135:                                      ; preds = %if.end.126
  %108 = load i8*, i8** %end1, align 8
  store i8* %108, i8** %end_match_1, align 8
  %109 = load i8*, i8** %string2.addr, align 8
  %110 = load i32, i32* %stop.addr, align 4
  %idx.ext136 = sext i32 %110 to i64
  %add.ptr137 = getelementptr inbounds i8, i8* %109, i64 %idx.ext136
  %111 = load i32, i32* %size1.addr, align 4
  %idx.ext138 = sext i32 %111 to i64
  %idx.neg = sub i64 0, %idx.ext138
  %add.ptr139 = getelementptr inbounds i8, i8* %add.ptr137, i64 %idx.neg
  store i8* %add.ptr139, i8** %end_match_2, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.135, %if.then.132
  %112 = load i32, i32* %size1.addr, align 4
  %cmp141 = icmp sgt i32 %112, 0
  br i1 %cmp141, label %land.lhs.true.143, label %if.else.149

land.lhs.true.143:                                ; preds = %if.end.140
  %113 = load i32, i32* %pos.addr, align 4
  %114 = load i32, i32* %size1.addr, align 4
  %cmp144 = icmp sle i32 %113, %114
  br i1 %cmp144, label %if.then.146, label %if.else.149

if.then.146:                                      ; preds = %land.lhs.true.143
  %115 = load i8*, i8** %string1.addr, align 8
  %116 = load i32, i32* %pos.addr, align 4
  %idx.ext147 = sext i32 %116 to i64
  %add.ptr148 = getelementptr inbounds i8, i8* %115, i64 %idx.ext147
  store i8* %add.ptr148, i8** %d, align 8
  %117 = load i8*, i8** %end_match_1, align 8
  store i8* %117, i8** %dend, align 8
  br label %if.end.155

if.else.149:                                      ; preds = %land.lhs.true.143, %if.end.140
  %118 = load i8*, i8** %string2.addr, align 8
  %119 = load i32, i32* %pos.addr, align 4
  %idx.ext150 = sext i32 %119 to i64
  %add.ptr151 = getelementptr inbounds i8, i8* %118, i64 %idx.ext150
  %120 = load i32, i32* %size1.addr, align 4
  %idx.ext152 = sext i32 %120 to i64
  %idx.neg153 = sub i64 0, %idx.ext152
  %add.ptr154 = getelementptr inbounds i8, i8* %add.ptr151, i64 %idx.neg153
  store i8* %add.ptr154, i8** %d, align 8
  %121 = load i8*, i8** %end_match_2, align 8
  store i8* %121, i8** %dend, align 8
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.149, %if.then.146
  br label %for.cond.156

for.cond.156:                                     ; preds = %if.end.2777, %sw.epilog.2661, %if.end.155
  %122 = load i8*, i8** %p, align 8
  %123 = load i8*, i8** %pend, align 8
  %cmp157 = icmp eq i8* %122, %123
  br i1 %cmp157, label %if.then.159, label %if.end.572

if.then.159:                                      ; preds = %for.cond.156
  %124 = load i8*, i8** %d, align 8
  %125 = load i8*, i8** %end_match_2, align 8
  %cmp160 = icmp ne i8* %124, %125
  br i1 %cmp160, label %if.then.162, label %if.end.240

if.then.162:                                      ; preds = %if.then.159
  %126 = load i32, i32* %size1.addr, align 4
  %tobool163 = icmp ne i32 %126, 0
  br i1 %tobool163, label %land.lhs.true.164, label %land.end

land.lhs.true.164:                                ; preds = %if.then.162
  %127 = load i8*, i8** %string1.addr, align 8
  %128 = load i8*, i8** %match_end, align 8
  %cmp165 = icmp ule i8* %127, %128
  br i1 %cmp165, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.164
  %129 = load i8*, i8** %match_end, align 8
  %130 = load i8*, i8** %string1.addr, align 8
  %131 = load i32, i32* %size1.addr, align 4
  %idx.ext167 = sext i32 %131 to i64
  %add.ptr168 = getelementptr inbounds i8, i8* %130, i64 %idx.ext167
  %cmp169 = icmp ule i8* %129, %add.ptr168
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.164, %if.then.162
  %132 = phi i1 [ false, %land.lhs.true.164 ], [ false, %if.then.162 ], [ %cmp169, %land.rhs ]
  %land.ext = zext i1 %132 to i32
  %133 = load i8*, i8** %dend, align 8
  %134 = load i8*, i8** %end_match_1, align 8
  %cmp171 = icmp eq i8* %133, %134
  %conv172 = zext i1 %cmp171 to i32
  %cmp173 = icmp eq i32 %land.ext, %conv172
  %conv174 = zext i1 %cmp173 to i32
  %conv175 = trunc i32 %conv174 to i8
  store i8 %conv175, i8* %same_str_p, align 1
  %135 = load i8, i8* %same_str_p, align 1
  %tobool176 = icmp ne i8 %135, 0
  br i1 %tobool176, label %if.then.177, label %if.else.181

if.then.177:                                      ; preds = %land.end
  %136 = load i8*, i8** %d, align 8
  %137 = load i8*, i8** %match_end, align 8
  %cmp178 = icmp ugt i8* %136, %137
  %conv179 = zext i1 %cmp178 to i32
  %conv180 = trunc i32 %conv179 to i8
  store i8 %conv180, i8* %best_match_p, align 1
  br label %if.end.185

if.else.181:                                      ; preds = %land.end
  %138 = load i8*, i8** %dend, align 8
  %139 = load i8*, i8** %end_match_1, align 8
  %cmp182 = icmp eq i8* %138, %139
  %lnot = xor i1 %cmp182, true
  %lnot.ext = zext i1 %lnot to i32
  %conv184 = trunc i32 %lnot.ext to i8
  store i8 %conv184, i8* %best_match_p, align 1
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.181, %if.then.177
  %avail186 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %140 = load i32, i32* %avail186, align 4
  %cmp187 = icmp eq i32 %140, 0
  br i1 %cmp187, label %if.else.212, label %if.then.189

if.then.189:                                      ; preds = %if.end.185
  %141 = load i32, i32* %best_regs_set, align 4
  %tobool190 = icmp ne i32 %141, 0
  br i1 %tobool190, label %lor.lhs.false.191, label %if.then.194

lor.lhs.false.191:                                ; preds = %if.then.189
  %142 = load i8, i8* %best_match_p, align 1
  %conv192 = sext i8 %142 to i32
  %tobool193 = icmp ne i32 %conv192, 0
  br i1 %tobool193, label %if.then.194, label %if.end.211

if.then.194:                                      ; preds = %lor.lhs.false.191, %if.then.189
  store i32 1, i32* %best_regs_set, align 4
  %143 = load i8*, i8** %d, align 8
  store i8* %143, i8** %match_end, align 8
  store i32 1, i32* %mcnt, align 4
  br label %for.cond.195

for.cond.195:                                     ; preds = %for.inc.208, %if.then.194
  %144 = load i32, i32* %mcnt, align 4
  %conv196 = zext i32 %144 to i64
  %145 = load i64, i64* %num_regs, align 8
  %cmp197 = icmp ult i64 %conv196, %145
  br i1 %cmp197, label %for.body.199, label %for.end.210

for.body.199:                                     ; preds = %for.cond.195
  %146 = load i32, i32* %mcnt, align 4
  %idxprom200 = sext i32 %146 to i64
  %147 = load i8**, i8*** %regstart, align 8
  %arrayidx201 = getelementptr inbounds i8*, i8** %147, i64 %idxprom200
  %148 = load i8*, i8** %arrayidx201, align 8
  %149 = load i32, i32* %mcnt, align 4
  %idxprom202 = sext i32 %149 to i64
  %150 = load i8**, i8*** %best_regstart, align 8
  %arrayidx203 = getelementptr inbounds i8*, i8** %150, i64 %idxprom202
  store i8* %148, i8** %arrayidx203, align 8
  %151 = load i32, i32* %mcnt, align 4
  %idxprom204 = sext i32 %151 to i64
  %152 = load i8**, i8*** %regend, align 8
  %arrayidx205 = getelementptr inbounds i8*, i8** %152, i64 %idxprom204
  %153 = load i8*, i8** %arrayidx205, align 8
  %154 = load i32, i32* %mcnt, align 4
  %idxprom206 = sext i32 %154 to i64
  %155 = load i8**, i8*** %best_regend, align 8
  %arrayidx207 = getelementptr inbounds i8*, i8** %155, i64 %idxprom206
  store i8* %153, i8** %arrayidx207, align 8
  br label %for.inc.208

for.inc.208:                                      ; preds = %for.body.199
  %156 = load i32, i32* %mcnt, align 4
  %inc209 = add nsw i32 %156, 1
  store i32 %inc209, i32* %mcnt, align 4
  br label %for.cond.195

for.end.210:                                      ; preds = %for.cond.195
  br label %if.end.211

if.end.211:                                       ; preds = %for.end.210, %lor.lhs.false.191
  br label %fail

if.else.212:                                      ; preds = %if.end.185
  %157 = load i32, i32* %best_regs_set, align 4
  %tobool213 = icmp ne i32 %157, 0
  br i1 %tobool213, label %land.lhs.true.214, label %if.end.238

land.lhs.true.214:                                ; preds = %if.else.212
  %158 = load i8, i8* %best_match_p, align 1
  %tobool215 = icmp ne i8 %158, 0
  br i1 %tobool215, label %if.end.238, label %if.then.216

if.then.216:                                      ; preds = %land.lhs.true.214
  br label %restore_best_regs

restore_best_regs:                                ; preds = %if.then.2780, %if.then.216
  %159 = load i8*, i8** %match_end, align 8
  store i8* %159, i8** %d, align 8
  %160 = load i8*, i8** %d, align 8
  %161 = load i8*, i8** %string1.addr, align 8
  %cmp217 = icmp uge i8* %160, %161
  br i1 %cmp217, label %land.lhs.true.219, label %cond.false

land.lhs.true.219:                                ; preds = %restore_best_regs
  %162 = load i8*, i8** %d, align 8
  %163 = load i8*, i8** %end1, align 8
  %cmp220 = icmp ule i8* %162, %163
  br i1 %cmp220, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.219
  %164 = load i8*, i8** %end_match_1, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.219, %restore_best_regs
  %165 = load i8*, i8** %end_match_2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %164, %cond.true ], [ %165, %cond.false ]
  store i8* %cond, i8** %dend, align 8
  store i32 1, i32* %mcnt, align 4
  br label %for.cond.222

for.cond.222:                                     ; preds = %for.inc.235, %cond.end
  %166 = load i32, i32* %mcnt, align 4
  %conv223 = zext i32 %166 to i64
  %167 = load i64, i64* %num_regs, align 8
  %cmp224 = icmp ult i64 %conv223, %167
  br i1 %cmp224, label %for.body.226, label %for.end.237

for.body.226:                                     ; preds = %for.cond.222
  %168 = load i32, i32* %mcnt, align 4
  %idxprom227 = sext i32 %168 to i64
  %169 = load i8**, i8*** %best_regstart, align 8
  %arrayidx228 = getelementptr inbounds i8*, i8** %169, i64 %idxprom227
  %170 = load i8*, i8** %arrayidx228, align 8
  %171 = load i32, i32* %mcnt, align 4
  %idxprom229 = sext i32 %171 to i64
  %172 = load i8**, i8*** %regstart, align 8
  %arrayidx230 = getelementptr inbounds i8*, i8** %172, i64 %idxprom229
  store i8* %170, i8** %arrayidx230, align 8
  %173 = load i32, i32* %mcnt, align 4
  %idxprom231 = sext i32 %173 to i64
  %174 = load i8**, i8*** %best_regend, align 8
  %arrayidx232 = getelementptr inbounds i8*, i8** %174, i64 %idxprom231
  %175 = load i8*, i8** %arrayidx232, align 8
  %176 = load i32, i32* %mcnt, align 4
  %idxprom233 = sext i32 %176 to i64
  %177 = load i8**, i8*** %regend, align 8
  %arrayidx234 = getelementptr inbounds i8*, i8** %177, i64 %idxprom233
  store i8* %175, i8** %arrayidx234, align 8
  br label %for.inc.235

for.inc.235:                                      ; preds = %for.body.226
  %178 = load i32, i32* %mcnt, align 4
  %inc236 = add nsw i32 %178, 1
  store i32 %inc236, i32* %mcnt, align 4
  br label %for.cond.222

for.end.237:                                      ; preds = %for.cond.222
  br label %if.end.238

if.end.238:                                       ; preds = %for.end.237, %land.lhs.true.214, %if.else.212
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %if.then.159
  br label %succeed_label

succeed_label:                                    ; preds = %sw.bb.574, %if.end.240
  %179 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %tobool241 = icmp ne %struct.re_registers* %179, null
  br i1 %tobool241, label %land.lhs.true.242, label %if.end.526

land.lhs.true.242:                                ; preds = %succeed_label
  %180 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %no_sub = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %180, i32 0, i32 7
  %bf.load243 = load i8, i8* %no_sub, align 8
  %bf.lshr = lshr i8 %bf.load243, 4
  %bf.clear244 = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear244 to i32
  %tobool245 = icmp ne i32 %bf.cast, 0
  br i1 %tobool245, label %if.end.526, label %if.then.246

if.then.246:                                      ; preds = %land.lhs.true.242
  %181 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %regs_allocated = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %181, i32 0, i32 7
  %bf.load247 = load i8, i8* %regs_allocated, align 8
  %bf.lshr248 = lshr i8 %bf.load247, 1
  %bf.clear249 = and i8 %bf.lshr248, 3
  %bf.cast250 = zext i8 %bf.clear249 to i32
  %cmp251 = icmp eq i32 %bf.cast250, 0
  br i1 %cmp251, label %if.then.253, label %if.else.313

if.then.253:                                      ; preds = %if.then.246
  %182 = load i64, i64* %num_regs, align 8
  %add254 = add i64 %182, 1
  %cmp255 = icmp ugt i64 30, %add254
  br i1 %cmp255, label %cond.true.257, label %cond.false.258

cond.true.257:                                    ; preds = %if.then.253
  br label %cond.end.260

cond.false.258:                                   ; preds = %if.then.253
  %183 = load i64, i64* %num_regs, align 8
  %add259 = add i64 %183, 1
  br label %cond.end.260

cond.end.260:                                     ; preds = %cond.false.258, %cond.true.257
  %cond261 = phi i64 [ 30, %cond.true.257 ], [ %add259, %cond.false.258 ]
  %conv262 = trunc i64 %cond261 to i32
  %184 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs263 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %184, i32 0, i32 0
  store i32 %conv262, i32* %num_regs263, align 4
  %185 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs264 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %185, i32 0, i32 0
  %186 = load i32, i32* %num_regs264, align 4
  %conv265 = zext i32 %186 to i64
  %mul266 = mul i64 %conv265, 4
  %call = call noalias i8* @malloc(i64 %mul266) #1
  %187 = bitcast i8* %call to i32*
  %188 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start = getelementptr inbounds %struct.re_registers, %struct.re_registers* %188, i32 0, i32 1
  store i32* %187, i32** %start, align 8
  %189 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs267 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %189, i32 0, i32 0
  %190 = load i32, i32* %num_regs267, align 4
  %conv268 = zext i32 %190 to i64
  %mul269 = mul i64 %conv268, 4
  %call270 = call noalias i8* @malloc(i64 %mul269) #1
  %191 = bitcast i8* %call270 to i32*
  %192 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end = getelementptr inbounds %struct.re_registers, %struct.re_registers* %192, i32 0, i32 2
  store i32* %191, i32** %end, align 8
  %193 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start271 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %193, i32 0, i32 1
  %194 = load i32*, i32** %start271, align 8
  %cmp272 = icmp eq i32* %194, null
  br i1 %cmp272, label %if.then.278, label %lor.lhs.false.274

lor.lhs.false.274:                                ; preds = %cond.end.260
  %195 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end275 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %195, i32 0, i32 2
  %196 = load i32*, i32** %end275, align 8
  %cmp276 = icmp eq i32* %196, null
  br i1 %cmp276, label %if.then.278, label %if.end.308

if.then.278:                                      ; preds = %lor.lhs.false.274, %cond.end.260
  br label %do.body.279

do.body.279:                                      ; preds = %if.then.278
  %197 = load i8**, i8*** %regstart, align 8
  %tobool280 = icmp ne i8** %197, null
  br i1 %tobool280, label %if.then.281, label %if.end.282

if.then.281:                                      ; preds = %do.body.279
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.281, %do.body.279
  store i8** null, i8*** %regstart, align 8
  %198 = load i8**, i8*** %regend, align 8
  %tobool283 = icmp ne i8** %198, null
  br i1 %tobool283, label %if.then.284, label %if.end.285

if.then.284:                                      ; preds = %if.end.282
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.284, %if.end.282
  store i8** null, i8*** %regend, align 8
  %199 = load i8**, i8*** %old_regstart, align 8
  %tobool286 = icmp ne i8** %199, null
  br i1 %tobool286, label %if.then.287, label %if.end.288

if.then.287:                                      ; preds = %if.end.285
  br label %if.end.288

if.end.288:                                       ; preds = %if.then.287, %if.end.285
  store i8** null, i8*** %old_regstart, align 8
  %200 = load i8**, i8*** %old_regend, align 8
  %tobool289 = icmp ne i8** %200, null
  br i1 %tobool289, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %if.end.288
  br label %if.end.291

if.end.291:                                       ; preds = %if.then.290, %if.end.288
  store i8** null, i8*** %old_regend, align 8
  %201 = load i8**, i8*** %best_regstart, align 8
  %tobool292 = icmp ne i8** %201, null
  br i1 %tobool292, label %if.then.293, label %if.end.294

if.then.293:                                      ; preds = %if.end.291
  br label %if.end.294

if.end.294:                                       ; preds = %if.then.293, %if.end.291
  store i8** null, i8*** %best_regstart, align 8
  %202 = load i8**, i8*** %best_regend, align 8
  %tobool295 = icmp ne i8** %202, null
  br i1 %tobool295, label %if.then.296, label %if.end.297

if.then.296:                                      ; preds = %if.end.294
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.296, %if.end.294
  store i8** null, i8*** %best_regend, align 8
  %203 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %tobool298 = icmp ne %union.register_info_type* %203, null
  br i1 %tobool298, label %if.then.299, label %if.end.300

if.then.299:                                      ; preds = %if.end.297
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.299, %if.end.297
  store %union.register_info_type* null, %union.register_info_type** %reg_info, align 8
  %204 = load i8**, i8*** %reg_dummy, align 8
  %tobool301 = icmp ne i8** %204, null
  br i1 %tobool301, label %if.then.302, label %if.end.303

if.then.302:                                      ; preds = %if.end.300
  br label %if.end.303

if.end.303:                                       ; preds = %if.then.302, %if.end.300
  store i8** null, i8*** %reg_dummy, align 8
  %205 = load %union.register_info_type*, %union.register_info_type** %reg_info_dummy, align 8
  %tobool304 = icmp ne %union.register_info_type* %205, null
  br i1 %tobool304, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %if.end.303
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.305, %if.end.303
  store %union.register_info_type* null, %union.register_info_type** %reg_info_dummy, align 8
  br label %do.end.307

do.end.307:                                       ; preds = %if.end.306
  store i32 -2, i32* %retval
  br label %return

if.end.308:                                       ; preds = %lor.lhs.false.274
  %206 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %regs_allocated309 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %206, i32 0, i32 7
  %bf.load310 = load i8, i8* %regs_allocated309, align 8
  %bf.clear311 = and i8 %bf.load310, -7
  %bf.set312 = or i8 %bf.clear311, 2
  store i8 %bf.set312, i8* %regs_allocated309, align 8
  br label %if.end.384

if.else.313:                                      ; preds = %if.then.246
  %207 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %regs_allocated314 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %207, i32 0, i32 7
  %bf.load315 = load i8, i8* %regs_allocated314, align 8
  %bf.lshr316 = lshr i8 %bf.load315, 1
  %bf.clear317 = and i8 %bf.lshr316, 3
  %bf.cast318 = zext i8 %bf.clear317 to i32
  %cmp319 = icmp eq i32 %bf.cast318, 1
  br i1 %cmp319, label %if.then.321, label %if.else.382

if.then.321:                                      ; preds = %if.else.313
  %208 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs322 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %208, i32 0, i32 0
  %209 = load i32, i32* %num_regs322, align 4
  %conv323 = zext i32 %209 to i64
  %210 = load i64, i64* %num_regs, align 8
  %add324 = add i64 %210, 1
  %cmp325 = icmp ult i64 %conv323, %add324
  br i1 %cmp325, label %if.then.327, label %if.end.381

if.then.327:                                      ; preds = %if.then.321
  %211 = load i64, i64* %num_regs, align 8
  %add328 = add i64 %211, 1
  %conv329 = trunc i64 %add328 to i32
  %212 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs330 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %212, i32 0, i32 0
  store i32 %conv329, i32* %num_regs330, align 4
  %213 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start331 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %213, i32 0, i32 1
  %214 = load i32*, i32** %start331, align 8
  %215 = bitcast i32* %214 to i8*
  %216 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs332 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %216, i32 0, i32 0
  %217 = load i32, i32* %num_regs332, align 4
  %conv333 = zext i32 %217 to i64
  %mul334 = mul i64 %conv333, 4
  %call335 = call i8* @realloc(i8* %215, i64 %mul334) #1
  %218 = bitcast i8* %call335 to i32*
  %219 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start336 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %219, i32 0, i32 1
  store i32* %218, i32** %start336, align 8
  %220 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end337 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %220, i32 0, i32 2
  %221 = load i32*, i32** %end337, align 8
  %222 = bitcast i32* %221 to i8*
  %223 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs338 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %223, i32 0, i32 0
  %224 = load i32, i32* %num_regs338, align 4
  %conv339 = zext i32 %224 to i64
  %mul340 = mul i64 %conv339, 4
  %call341 = call i8* @realloc(i8* %222, i64 %mul340) #1
  %225 = bitcast i8* %call341 to i32*
  %226 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end342 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %226, i32 0, i32 2
  store i32* %225, i32** %end342, align 8
  %227 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start343 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %227, i32 0, i32 1
  %228 = load i32*, i32** %start343, align 8
  %cmp344 = icmp eq i32* %228, null
  br i1 %cmp344, label %if.then.350, label %lor.lhs.false.346

lor.lhs.false.346:                                ; preds = %if.then.327
  %229 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end347 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %229, i32 0, i32 2
  %230 = load i32*, i32** %end347, align 8
  %cmp348 = icmp eq i32* %230, null
  br i1 %cmp348, label %if.then.350, label %if.end.380

if.then.350:                                      ; preds = %lor.lhs.false.346, %if.then.327
  br label %do.body.351

do.body.351:                                      ; preds = %if.then.350
  %231 = load i8**, i8*** %regstart, align 8
  %tobool352 = icmp ne i8** %231, null
  br i1 %tobool352, label %if.then.353, label %if.end.354

if.then.353:                                      ; preds = %do.body.351
  br label %if.end.354

if.end.354:                                       ; preds = %if.then.353, %do.body.351
  store i8** null, i8*** %regstart, align 8
  %232 = load i8**, i8*** %regend, align 8
  %tobool355 = icmp ne i8** %232, null
  br i1 %tobool355, label %if.then.356, label %if.end.357

if.then.356:                                      ; preds = %if.end.354
  br label %if.end.357

if.end.357:                                       ; preds = %if.then.356, %if.end.354
  store i8** null, i8*** %regend, align 8
  %233 = load i8**, i8*** %old_regstart, align 8
  %tobool358 = icmp ne i8** %233, null
  br i1 %tobool358, label %if.then.359, label %if.end.360

if.then.359:                                      ; preds = %if.end.357
  br label %if.end.360

if.end.360:                                       ; preds = %if.then.359, %if.end.357
  store i8** null, i8*** %old_regstart, align 8
  %234 = load i8**, i8*** %old_regend, align 8
  %tobool361 = icmp ne i8** %234, null
  br i1 %tobool361, label %if.then.362, label %if.end.363

if.then.362:                                      ; preds = %if.end.360
  br label %if.end.363

if.end.363:                                       ; preds = %if.then.362, %if.end.360
  store i8** null, i8*** %old_regend, align 8
  %235 = load i8**, i8*** %best_regstart, align 8
  %tobool364 = icmp ne i8** %235, null
  br i1 %tobool364, label %if.then.365, label %if.end.366

if.then.365:                                      ; preds = %if.end.363
  br label %if.end.366

if.end.366:                                       ; preds = %if.then.365, %if.end.363
  store i8** null, i8*** %best_regstart, align 8
  %236 = load i8**, i8*** %best_regend, align 8
  %tobool367 = icmp ne i8** %236, null
  br i1 %tobool367, label %if.then.368, label %if.end.369

if.then.368:                                      ; preds = %if.end.366
  br label %if.end.369

if.end.369:                                       ; preds = %if.then.368, %if.end.366
  store i8** null, i8*** %best_regend, align 8
  %237 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %tobool370 = icmp ne %union.register_info_type* %237, null
  br i1 %tobool370, label %if.then.371, label %if.end.372

if.then.371:                                      ; preds = %if.end.369
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.371, %if.end.369
  store %union.register_info_type* null, %union.register_info_type** %reg_info, align 8
  %238 = load i8**, i8*** %reg_dummy, align 8
  %tobool373 = icmp ne i8** %238, null
  br i1 %tobool373, label %if.then.374, label %if.end.375

if.then.374:                                      ; preds = %if.end.372
  br label %if.end.375

if.end.375:                                       ; preds = %if.then.374, %if.end.372
  store i8** null, i8*** %reg_dummy, align 8
  %239 = load %union.register_info_type*, %union.register_info_type** %reg_info_dummy, align 8
  %tobool376 = icmp ne %union.register_info_type* %239, null
  br i1 %tobool376, label %if.then.377, label %if.end.378

if.then.377:                                      ; preds = %if.end.375
  br label %if.end.378

if.end.378:                                       ; preds = %if.then.377, %if.end.375
  store %union.register_info_type* null, %union.register_info_type** %reg_info_dummy, align 8
  br label %do.end.379

do.end.379:                                       ; preds = %if.end.378
  store i32 -2, i32* %retval
  br label %return

if.end.380:                                       ; preds = %lor.lhs.false.346
  br label %if.end.381

if.end.381:                                       ; preds = %if.end.380, %if.then.321
  br label %if.end.383

if.else.382:                                      ; preds = %if.else.313
  br label %if.end.383

if.end.383:                                       ; preds = %if.else.382, %if.end.381
  br label %if.end.384

if.end.384:                                       ; preds = %if.end.383, %if.end.308
  %240 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs385 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %240, i32 0, i32 0
  %241 = load i32, i32* %num_regs385, align 4
  %cmp386 = icmp ugt i32 %241, 0
  br i1 %cmp386, label %if.then.388, label %if.end.406

if.then.388:                                      ; preds = %if.end.384
  %242 = load i32, i32* %pos.addr, align 4
  %243 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start389 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %243, i32 0, i32 1
  %244 = load i32*, i32** %start389, align 8
  %arrayidx390 = getelementptr inbounds i32, i32* %244, i64 0
  store i32 %242, i32* %arrayidx390, align 4
  %245 = load i8*, i8** %dend, align 8
  %246 = load i8*, i8** %end_match_1, align 8
  %cmp391 = icmp eq i8* %245, %246
  br i1 %cmp391, label %cond.true.393, label %cond.false.395

cond.true.393:                                    ; preds = %if.then.388
  %247 = load i8*, i8** %d, align 8
  %248 = load i8*, i8** %string1.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %247 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %248 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv394 = trunc i64 %sub.ptr.sub to i32
  br label %cond.end.402

cond.false.395:                                   ; preds = %if.then.388
  %249 = load i8*, i8** %d, align 8
  %250 = load i8*, i8** %string2.addr, align 8
  %sub.ptr.lhs.cast396 = ptrtoint i8* %249 to i64
  %sub.ptr.rhs.cast397 = ptrtoint i8* %250 to i64
  %sub.ptr.sub398 = sub i64 %sub.ptr.lhs.cast396, %sub.ptr.rhs.cast397
  %251 = load i32, i32* %size1.addr, align 4
  %conv399 = sext i32 %251 to i64
  %add400 = add nsw i64 %sub.ptr.sub398, %conv399
  %conv401 = trunc i64 %add400 to i32
  br label %cond.end.402

cond.end.402:                                     ; preds = %cond.false.395, %cond.true.393
  %cond403 = phi i32 [ %conv394, %cond.true.393 ], [ %conv401, %cond.false.395 ]
  %252 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end404 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %252, i32 0, i32 2
  %253 = load i32*, i32** %end404, align 8
  %arrayidx405 = getelementptr inbounds i32, i32* %253, i64 0
  store i32 %cond403, i32* %arrayidx405, align 4
  br label %if.end.406

if.end.406:                                       ; preds = %cond.end.402, %if.end.384
  store i32 1, i32* %mcnt, align 4
  br label %for.cond.407

for.cond.407:                                     ; preds = %for.inc.508, %if.end.406
  %254 = load i32, i32* %mcnt, align 4
  %conv408 = zext i32 %254 to i64
  %255 = load i64, i64* %num_regs, align 8
  %256 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs409 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %256, i32 0, i32 0
  %257 = load i32, i32* %num_regs409, align 4
  %conv410 = zext i32 %257 to i64
  %cmp411 = icmp ult i64 %255, %conv410
  br i1 %cmp411, label %cond.true.413, label %cond.false.414

cond.true.413:                                    ; preds = %for.cond.407
  %258 = load i64, i64* %num_regs, align 8
  br label %cond.end.417

cond.false.414:                                   ; preds = %for.cond.407
  %259 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs415 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %259, i32 0, i32 0
  %260 = load i32, i32* %num_regs415, align 4
  %conv416 = zext i32 %260 to i64
  br label %cond.end.417

cond.end.417:                                     ; preds = %cond.false.414, %cond.true.413
  %cond418 = phi i64 [ %258, %cond.true.413 ], [ %conv416, %cond.false.414 ]
  %cmp419 = icmp ult i64 %conv408, %cond418
  br i1 %cmp419, label %for.body.421, label %for.end.510

for.body.421:                                     ; preds = %cond.end.417
  %261 = load i32, i32* %mcnt, align 4
  %idxprom422 = sext i32 %261 to i64
  %262 = load i8**, i8*** %regstart, align 8
  %arrayidx423 = getelementptr inbounds i8*, i8** %262, i64 %idxprom422
  %263 = load i8*, i8** %arrayidx423, align 8
  %cmp424 = icmp eq i8* %263, @reg_unset_dummy
  br i1 %cmp424, label %if.then.431, label %lor.lhs.false.426

lor.lhs.false.426:                                ; preds = %for.body.421
  %264 = load i32, i32* %mcnt, align 4
  %idxprom427 = sext i32 %264 to i64
  %265 = load i8**, i8*** %regend, align 8
  %arrayidx428 = getelementptr inbounds i8*, i8** %265, i64 %idxprom427
  %266 = load i8*, i8** %arrayidx428, align 8
  %cmp429 = icmp eq i8* %266, @reg_unset_dummy
  br i1 %cmp429, label %if.then.431, label %if.else.438

if.then.431:                                      ; preds = %lor.lhs.false.426, %for.body.421
  %267 = load i32, i32* %mcnt, align 4
  %idxprom432 = sext i32 %267 to i64
  %268 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end433 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %268, i32 0, i32 2
  %269 = load i32*, i32** %end433, align 8
  %arrayidx434 = getelementptr inbounds i32, i32* %269, i64 %idxprom432
  store i32 -1, i32* %arrayidx434, align 4
  %270 = load i32, i32* %mcnt, align 4
  %idxprom435 = sext i32 %270 to i64
  %271 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start436 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %271, i32 0, i32 1
  %272 = load i32*, i32** %start436, align 8
  %arrayidx437 = getelementptr inbounds i32, i32* %272, i64 %idxprom435
  store i32 -1, i32* %arrayidx437, align 4
  br label %if.end.507

if.else.438:                                      ; preds = %lor.lhs.false.426
  %273 = load i32, i32* %size1.addr, align 4
  %tobool439 = icmp ne i32 %273, 0
  br i1 %tobool439, label %land.lhs.true.440, label %cond.false.459

land.lhs.true.440:                                ; preds = %if.else.438
  %274 = load i8*, i8** %string1.addr, align 8
  %275 = load i32, i32* %mcnt, align 4
  %idxprom441 = sext i32 %275 to i64
  %276 = load i8**, i8*** %regstart, align 8
  %arrayidx442 = getelementptr inbounds i8*, i8** %276, i64 %idxprom441
  %277 = load i8*, i8** %arrayidx442, align 8
  %cmp443 = icmp ule i8* %274, %277
  br i1 %cmp443, label %land.lhs.true.445, label %cond.false.459

land.lhs.true.445:                                ; preds = %land.lhs.true.440
  %278 = load i32, i32* %mcnt, align 4
  %idxprom446 = sext i32 %278 to i64
  %279 = load i8**, i8*** %regstart, align 8
  %arrayidx447 = getelementptr inbounds i8*, i8** %279, i64 %idxprom446
  %280 = load i8*, i8** %arrayidx447, align 8
  %281 = load i8*, i8** %string1.addr, align 8
  %282 = load i32, i32* %size1.addr, align 4
  %idx.ext448 = sext i32 %282 to i64
  %add.ptr449 = getelementptr inbounds i8, i8* %281, i64 %idx.ext448
  %cmp450 = icmp ule i8* %280, %add.ptr449
  br i1 %cmp450, label %cond.true.452, label %cond.false.459

cond.true.452:                                    ; preds = %land.lhs.true.445
  %283 = load i32, i32* %mcnt, align 4
  %idxprom453 = sext i32 %283 to i64
  %284 = load i8**, i8*** %regstart, align 8
  %arrayidx454 = getelementptr inbounds i8*, i8** %284, i64 %idxprom453
  %285 = load i8*, i8** %arrayidx454, align 8
  %286 = load i8*, i8** %string1.addr, align 8
  %sub.ptr.lhs.cast455 = ptrtoint i8* %285 to i64
  %sub.ptr.rhs.cast456 = ptrtoint i8* %286 to i64
  %sub.ptr.sub457 = sub i64 %sub.ptr.lhs.cast455, %sub.ptr.rhs.cast456
  %conv458 = trunc i64 %sub.ptr.sub457 to i32
  br label %cond.end.468

cond.false.459:                                   ; preds = %land.lhs.true.445, %land.lhs.true.440, %if.else.438
  %287 = load i32, i32* %mcnt, align 4
  %idxprom460 = sext i32 %287 to i64
  %288 = load i8**, i8*** %regstart, align 8
  %arrayidx461 = getelementptr inbounds i8*, i8** %288, i64 %idxprom460
  %289 = load i8*, i8** %arrayidx461, align 8
  %290 = load i8*, i8** %string2.addr, align 8
  %sub.ptr.lhs.cast462 = ptrtoint i8* %289 to i64
  %sub.ptr.rhs.cast463 = ptrtoint i8* %290 to i64
  %sub.ptr.sub464 = sub i64 %sub.ptr.lhs.cast462, %sub.ptr.rhs.cast463
  %291 = load i32, i32* %size1.addr, align 4
  %conv465 = sext i32 %291 to i64
  %add466 = add nsw i64 %sub.ptr.sub464, %conv465
  %conv467 = trunc i64 %add466 to i32
  br label %cond.end.468

cond.end.468:                                     ; preds = %cond.false.459, %cond.true.452
  %cond469 = phi i32 [ %conv458, %cond.true.452 ], [ %conv467, %cond.false.459 ]
  %292 = load i32, i32* %mcnt, align 4
  %idxprom470 = sext i32 %292 to i64
  %293 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start471 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %293, i32 0, i32 1
  %294 = load i32*, i32** %start471, align 8
  %arrayidx472 = getelementptr inbounds i32, i32* %294, i64 %idxprom470
  store i32 %cond469, i32* %arrayidx472, align 4
  %295 = load i32, i32* %size1.addr, align 4
  %tobool473 = icmp ne i32 %295, 0
  br i1 %tobool473, label %land.lhs.true.474, label %cond.false.493

land.lhs.true.474:                                ; preds = %cond.end.468
  %296 = load i8*, i8** %string1.addr, align 8
  %297 = load i32, i32* %mcnt, align 4
  %idxprom475 = sext i32 %297 to i64
  %298 = load i8**, i8*** %regend, align 8
  %arrayidx476 = getelementptr inbounds i8*, i8** %298, i64 %idxprom475
  %299 = load i8*, i8** %arrayidx476, align 8
  %cmp477 = icmp ule i8* %296, %299
  br i1 %cmp477, label %land.lhs.true.479, label %cond.false.493

land.lhs.true.479:                                ; preds = %land.lhs.true.474
  %300 = load i32, i32* %mcnt, align 4
  %idxprom480 = sext i32 %300 to i64
  %301 = load i8**, i8*** %regend, align 8
  %arrayidx481 = getelementptr inbounds i8*, i8** %301, i64 %idxprom480
  %302 = load i8*, i8** %arrayidx481, align 8
  %303 = load i8*, i8** %string1.addr, align 8
  %304 = load i32, i32* %size1.addr, align 4
  %idx.ext482 = sext i32 %304 to i64
  %add.ptr483 = getelementptr inbounds i8, i8* %303, i64 %idx.ext482
  %cmp484 = icmp ule i8* %302, %add.ptr483
  br i1 %cmp484, label %cond.true.486, label %cond.false.493

cond.true.486:                                    ; preds = %land.lhs.true.479
  %305 = load i32, i32* %mcnt, align 4
  %idxprom487 = sext i32 %305 to i64
  %306 = load i8**, i8*** %regend, align 8
  %arrayidx488 = getelementptr inbounds i8*, i8** %306, i64 %idxprom487
  %307 = load i8*, i8** %arrayidx488, align 8
  %308 = load i8*, i8** %string1.addr, align 8
  %sub.ptr.lhs.cast489 = ptrtoint i8* %307 to i64
  %sub.ptr.rhs.cast490 = ptrtoint i8* %308 to i64
  %sub.ptr.sub491 = sub i64 %sub.ptr.lhs.cast489, %sub.ptr.rhs.cast490
  %conv492 = trunc i64 %sub.ptr.sub491 to i32
  br label %cond.end.502

cond.false.493:                                   ; preds = %land.lhs.true.479, %land.lhs.true.474, %cond.end.468
  %309 = load i32, i32* %mcnt, align 4
  %idxprom494 = sext i32 %309 to i64
  %310 = load i8**, i8*** %regend, align 8
  %arrayidx495 = getelementptr inbounds i8*, i8** %310, i64 %idxprom494
  %311 = load i8*, i8** %arrayidx495, align 8
  %312 = load i8*, i8** %string2.addr, align 8
  %sub.ptr.lhs.cast496 = ptrtoint i8* %311 to i64
  %sub.ptr.rhs.cast497 = ptrtoint i8* %312 to i64
  %sub.ptr.sub498 = sub i64 %sub.ptr.lhs.cast496, %sub.ptr.rhs.cast497
  %313 = load i32, i32* %size1.addr, align 4
  %conv499 = sext i32 %313 to i64
  %add500 = add nsw i64 %sub.ptr.sub498, %conv499
  %conv501 = trunc i64 %add500 to i32
  br label %cond.end.502

cond.end.502:                                     ; preds = %cond.false.493, %cond.true.486
  %cond503 = phi i32 [ %conv492, %cond.true.486 ], [ %conv501, %cond.false.493 ]
  %314 = load i32, i32* %mcnt, align 4
  %idxprom504 = sext i32 %314 to i64
  %315 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end505 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %315, i32 0, i32 2
  %316 = load i32*, i32** %end505, align 8
  %arrayidx506 = getelementptr inbounds i32, i32* %316, i64 %idxprom504
  store i32 %cond503, i32* %arrayidx506, align 4
  br label %if.end.507

if.end.507:                                       ; preds = %cond.end.502, %if.then.431
  br label %for.inc.508

for.inc.508:                                      ; preds = %if.end.507
  %317 = load i32, i32* %mcnt, align 4
  %inc509 = add nsw i32 %317, 1
  store i32 %inc509, i32* %mcnt, align 4
  br label %for.cond.407

for.end.510:                                      ; preds = %cond.end.417
  %318 = load i64, i64* %num_regs, align 8
  %conv511 = trunc i64 %318 to i32
  store i32 %conv511, i32* %mcnt, align 4
  br label %for.cond.512

for.cond.512:                                     ; preds = %for.inc.523, %for.end.510
  %319 = load i32, i32* %mcnt, align 4
  %320 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %num_regs513 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %320, i32 0, i32 0
  %321 = load i32, i32* %num_regs513, align 4
  %cmp514 = icmp ult i32 %319, %321
  br i1 %cmp514, label %for.body.516, label %for.end.525

for.body.516:                                     ; preds = %for.cond.512
  %322 = load i32, i32* %mcnt, align 4
  %idxprom517 = sext i32 %322 to i64
  %323 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %end518 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %323, i32 0, i32 2
  %324 = load i32*, i32** %end518, align 8
  %arrayidx519 = getelementptr inbounds i32, i32* %324, i64 %idxprom517
  store i32 -1, i32* %arrayidx519, align 4
  %325 = load i32, i32* %mcnt, align 4
  %idxprom520 = sext i32 %325 to i64
  %326 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %start521 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %326, i32 0, i32 1
  %327 = load i32*, i32** %start521, align 8
  %arrayidx522 = getelementptr inbounds i32, i32* %327, i64 %idxprom520
  store i32 -1, i32* %arrayidx522, align 4
  br label %for.inc.523

for.inc.523:                                      ; preds = %for.body.516
  %328 = load i32, i32* %mcnt, align 4
  %inc524 = add nsw i32 %328, 1
  store i32 %inc524, i32* %mcnt, align 4
  br label %for.cond.512

for.end.525:                                      ; preds = %for.cond.512
  br label %if.end.526

if.end.526:                                       ; preds = %for.end.525, %land.lhs.true.242, %succeed_label
  %329 = load i8*, i8** %d, align 8
  %330 = load i32, i32* %pos.addr, align 4
  %idx.ext527 = sext i32 %330 to i64
  %idx.neg528 = sub i64 0, %idx.ext527
  %add.ptr529 = getelementptr inbounds i8, i8* %329, i64 %idx.neg528
  %331 = load i8*, i8** %dend, align 8
  %332 = load i8*, i8** %end_match_1, align 8
  %cmp530 = icmp eq i8* %331, %332
  br i1 %cmp530, label %cond.true.532, label %cond.false.533

cond.true.532:                                    ; preds = %if.end.526
  %333 = load i8*, i8** %string1.addr, align 8
  br label %cond.end.537

cond.false.533:                                   ; preds = %if.end.526
  %334 = load i8*, i8** %string2.addr, align 8
  %335 = load i32, i32* %size1.addr, align 4
  %idx.ext534 = sext i32 %335 to i64
  %idx.neg535 = sub i64 0, %idx.ext534
  %add.ptr536 = getelementptr inbounds i8, i8* %334, i64 %idx.neg535
  br label %cond.end.537

cond.end.537:                                     ; preds = %cond.false.533, %cond.true.532
  %cond538 = phi i8* [ %333, %cond.true.532 ], [ %add.ptr536, %cond.false.533 ]
  %sub.ptr.lhs.cast539 = ptrtoint i8* %add.ptr529 to i64
  %sub.ptr.rhs.cast540 = ptrtoint i8* %cond538 to i64
  %sub.ptr.sub541 = sub i64 %sub.ptr.lhs.cast539, %sub.ptr.rhs.cast540
  %conv542 = trunc i64 %sub.ptr.sub541 to i32
  store i32 %conv542, i32* %mcnt, align 4
  br label %do.body.543

do.body.543:                                      ; preds = %cond.end.537
  %336 = load i8**, i8*** %regstart, align 8
  %tobool544 = icmp ne i8** %336, null
  br i1 %tobool544, label %if.then.545, label %if.end.546

if.then.545:                                      ; preds = %do.body.543
  br label %if.end.546

if.end.546:                                       ; preds = %if.then.545, %do.body.543
  store i8** null, i8*** %regstart, align 8
  %337 = load i8**, i8*** %regend, align 8
  %tobool547 = icmp ne i8** %337, null
  br i1 %tobool547, label %if.then.548, label %if.end.549

if.then.548:                                      ; preds = %if.end.546
  br label %if.end.549

if.end.549:                                       ; preds = %if.then.548, %if.end.546
  store i8** null, i8*** %regend, align 8
  %338 = load i8**, i8*** %old_regstart, align 8
  %tobool550 = icmp ne i8** %338, null
  br i1 %tobool550, label %if.then.551, label %if.end.552

if.then.551:                                      ; preds = %if.end.549
  br label %if.end.552

if.end.552:                                       ; preds = %if.then.551, %if.end.549
  store i8** null, i8*** %old_regstart, align 8
  %339 = load i8**, i8*** %old_regend, align 8
  %tobool553 = icmp ne i8** %339, null
  br i1 %tobool553, label %if.then.554, label %if.end.555

if.then.554:                                      ; preds = %if.end.552
  br label %if.end.555

if.end.555:                                       ; preds = %if.then.554, %if.end.552
  store i8** null, i8*** %old_regend, align 8
  %340 = load i8**, i8*** %best_regstart, align 8
  %tobool556 = icmp ne i8** %340, null
  br i1 %tobool556, label %if.then.557, label %if.end.558

if.then.557:                                      ; preds = %if.end.555
  br label %if.end.558

if.end.558:                                       ; preds = %if.then.557, %if.end.555
  store i8** null, i8*** %best_regstart, align 8
  %341 = load i8**, i8*** %best_regend, align 8
  %tobool559 = icmp ne i8** %341, null
  br i1 %tobool559, label %if.then.560, label %if.end.561

if.then.560:                                      ; preds = %if.end.558
  br label %if.end.561

if.end.561:                                       ; preds = %if.then.560, %if.end.558
  store i8** null, i8*** %best_regend, align 8
  %342 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %tobool562 = icmp ne %union.register_info_type* %342, null
  br i1 %tobool562, label %if.then.563, label %if.end.564

if.then.563:                                      ; preds = %if.end.561
  br label %if.end.564

if.end.564:                                       ; preds = %if.then.563, %if.end.561
  store %union.register_info_type* null, %union.register_info_type** %reg_info, align 8
  %343 = load i8**, i8*** %reg_dummy, align 8
  %tobool565 = icmp ne i8** %343, null
  br i1 %tobool565, label %if.then.566, label %if.end.567

if.then.566:                                      ; preds = %if.end.564
  br label %if.end.567

if.end.567:                                       ; preds = %if.then.566, %if.end.564
  store i8** null, i8*** %reg_dummy, align 8
  %344 = load %union.register_info_type*, %union.register_info_type** %reg_info_dummy, align 8
  %tobool568 = icmp ne %union.register_info_type* %344, null
  br i1 %tobool568, label %if.then.569, label %if.end.570

if.then.569:                                      ; preds = %if.end.567
  br label %if.end.570

if.end.570:                                       ; preds = %if.then.569, %if.end.567
  store %union.register_info_type* null, %union.register_info_type** %reg_info_dummy, align 8
  br label %do.end.571

do.end.571:                                       ; preds = %if.end.570
  %345 = load i32, i32* %mcnt, align 4
  store i32 %345, i32* %retval
  br label %return

if.end.572:                                       ; preds = %for.cond.156
  %346 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %346, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %347 = load i8, i8* %346, align 1
  %conv573 = zext i8 %347 to i32
  switch i32 %conv573, label %sw.default.2660 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.574
    i32 2, label %sw.bb.575
    i32 3, label %sw.bb.646
    i32 4, label %sw.bb.712
    i32 5, label %sw.bb.712
    i32 6, label %sw.bb.789
    i32 7, label %sw.bb.853
    i32 8, label %sw.bb.1137
    i32 9, label %sw.bb.1277
    i32 10, label %sw.bb.1308
    i32 11, label %sw.bb.1339
    i32 12, label %sw.bb.1351
    i32 16, label %sw.bb.1356
    i32 15, label %sw.bb.1471
    i32 18, label %sw.bb.1618
    i32 17, label %sw.bb.1894
    i32 13, label %sw.bb.1954
    i32 14, label %sw.bb.1970
    i32 19, label %sw.bb.1971
    i32 20, label %sw.bb.2071
    i32 21, label %sw.bb.2171
    i32 22, label %sw.bb.2208
    i32 23, label %sw.bb.2237
    i32 28, label %sw.bb.2275
    i32 29, label %sw.bb.2345
    i32 26, label %sw.bb.2417
    i32 27, label %sw.bb.2478
    i32 24, label %sw.bb.2542
    i32 25, label %sw.bb.2601
  ]

sw.bb:                                            ; preds = %if.end.572
  br label %sw.epilog.2661

sw.bb.574:                                        ; preds = %if.end.572
  br label %succeed_label

sw.bb.575:                                        ; preds = %if.end.572
  %348 = load i8*, i8** %p, align 8
  %incdec.ptr576 = getelementptr inbounds i8, i8* %348, i32 1
  store i8* %incdec.ptr576, i8** %p, align 8
  %349 = load i8, i8* %348, align 1
  %conv577 = zext i8 %349 to i32
  store i32 %conv577, i32* %mcnt, align 4
  %350 = load i8*, i8** %translate, align 8
  %tobool578 = icmp ne i8* %350, null
  br i1 %tobool578, label %if.then.579, label %if.else.599

if.then.579:                                      ; preds = %sw.bb.575
  br label %do.body.580

do.body.580:                                      ; preds = %do.cond, %if.then.579
  br label %while.cond

while.cond:                                       ; preds = %if.end.586, %do.body.580
  %351 = load i8*, i8** %d, align 8
  %352 = load i8*, i8** %dend, align 8
  %cmp581 = icmp eq i8* %351, %352
  br i1 %cmp581, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %353 = load i8*, i8** %dend, align 8
  %354 = load i8*, i8** %end_match_2, align 8
  %cmp583 = icmp eq i8* %353, %354
  br i1 %cmp583, label %if.then.585, label %if.end.586

if.then.585:                                      ; preds = %while.body
  br label %fail

if.end.586:                                       ; preds = %while.body
  %355 = load i8*, i8** %string2.addr, align 8
  store i8* %355, i8** %d, align 8
  %356 = load i8*, i8** %end_match_2, align 8
  store i8* %356, i8** %dend, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %357 = load i8*, i8** %d, align 8
  %incdec.ptr587 = getelementptr inbounds i8, i8* %357, i32 1
  store i8* %incdec.ptr587, i8** %d, align 8
  %358 = load i8, i8* %357, align 1
  %idxprom588 = zext i8 %358 to i64
  %359 = load i8*, i8** %translate, align 8
  %arrayidx589 = getelementptr inbounds i8, i8* %359, i64 %idxprom588
  %360 = load i8, i8* %arrayidx589, align 1
  %conv590 = zext i8 %360 to i32
  %361 = load i8*, i8** %p, align 8
  %incdec.ptr591 = getelementptr inbounds i8, i8* %361, i32 1
  store i8* %incdec.ptr591, i8** %p, align 8
  %362 = load i8, i8* %361, align 1
  %conv592 = zext i8 %362 to i32
  %cmp593 = icmp ne i32 %conv590, %conv592
  br i1 %cmp593, label %if.then.595, label %if.end.596

if.then.595:                                      ; preds = %while.end
  br label %fail

if.end.596:                                       ; preds = %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.596
  %363 = load i32, i32* %mcnt, align 4
  %dec = add nsw i32 %363, -1
  store i32 %dec, i32* %mcnt, align 4
  %tobool597 = icmp ne i32 %dec, 0
  br i1 %tobool597, label %do.body.580, label %do.end.598

do.end.598:                                       ; preds = %do.cond
  br label %if.end.622

if.else.599:                                      ; preds = %sw.bb.575
  br label %do.body.600

do.body.600:                                      ; preds = %do.cond.618, %if.else.599
  br label %while.cond.601

while.cond.601:                                   ; preds = %if.end.608, %do.body.600
  %364 = load i8*, i8** %d, align 8
  %365 = load i8*, i8** %dend, align 8
  %cmp602 = icmp eq i8* %364, %365
  br i1 %cmp602, label %while.body.604, label %while.end.609

while.body.604:                                   ; preds = %while.cond.601
  %366 = load i8*, i8** %dend, align 8
  %367 = load i8*, i8** %end_match_2, align 8
  %cmp605 = icmp eq i8* %366, %367
  br i1 %cmp605, label %if.then.607, label %if.end.608

if.then.607:                                      ; preds = %while.body.604
  br label %fail

if.end.608:                                       ; preds = %while.body.604
  %368 = load i8*, i8** %string2.addr, align 8
  store i8* %368, i8** %d, align 8
  %369 = load i8*, i8** %end_match_2, align 8
  store i8* %369, i8** %dend, align 8
  br label %while.cond.601

while.end.609:                                    ; preds = %while.cond.601
  %370 = load i8*, i8** %d, align 8
  %incdec.ptr610 = getelementptr inbounds i8, i8* %370, i32 1
  store i8* %incdec.ptr610, i8** %d, align 8
  %371 = load i8, i8* %370, align 1
  %conv611 = sext i8 %371 to i32
  %372 = load i8*, i8** %p, align 8
  %incdec.ptr612 = getelementptr inbounds i8, i8* %372, i32 1
  store i8* %incdec.ptr612, i8** %p, align 8
  %373 = load i8, i8* %372, align 1
  %conv613 = sext i8 %373 to i32
  %cmp614 = icmp ne i32 %conv611, %conv613
  br i1 %cmp614, label %if.then.616, label %if.end.617

if.then.616:                                      ; preds = %while.end.609
  br label %fail

if.end.617:                                       ; preds = %while.end.609
  br label %do.cond.618

do.cond.618:                                      ; preds = %if.end.617
  %374 = load i32, i32* %mcnt, align 4
  %dec619 = add nsw i32 %374, -1
  store i32 %dec619, i32* %mcnt, align 4
  %tobool620 = icmp ne i32 %dec619, 0
  br i1 %tobool620, label %do.body.600, label %do.end.621

do.end.621:                                       ; preds = %do.cond.618
  br label %if.end.622

if.end.622:                                       ; preds = %do.end.621, %do.end.598
  br label %do.body.623

do.body.623:                                      ; preds = %if.end.622
  %375 = load i32, i32* %set_regs_matched_done, align 4
  %tobool624 = icmp ne i32 %375, 0
  br i1 %tobool624, label %if.end.643, label %if.then.625

if.then.625:                                      ; preds = %do.body.623
  store i32 1, i32* %set_regs_matched_done, align 4
  %376 = load i64, i64* %lowest_active_reg, align 8
  store i64 %376, i64* %r, align 8
  br label %for.cond.626

for.cond.626:                                     ; preds = %for.inc.640, %if.then.625
  %377 = load i64, i64* %r, align 8
  %378 = load i64, i64* %highest_active_reg, align 8
  %cmp627 = icmp ule i64 %377, %378
  br i1 %cmp627, label %for.body.629, label %for.end.642

for.body.629:                                     ; preds = %for.cond.626
  %379 = load i64, i64* %r, align 8
  %380 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx630 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %380, i64 %379
  %bits631 = bitcast %union.register_info_type* %arrayidx630 to %struct.anon*
  %381 = bitcast %struct.anon* %bits631 to i8*
  %bf.load632 = load i8, i8* %381, align 4
  %bf.clear633 = and i8 %bf.load632, -17
  %bf.set634 = or i8 %bf.clear633, 16
  store i8 %bf.set634, i8* %381, align 4
  %382 = load i64, i64* %r, align 8
  %383 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx635 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %383, i64 %382
  %bits636 = bitcast %union.register_info_type* %arrayidx635 to %struct.anon*
  %384 = bitcast %struct.anon* %bits636 to i8*
  %bf.load637 = load i8, i8* %384, align 4
  %bf.clear638 = and i8 %bf.load637, -9
  %bf.set639 = or i8 %bf.clear638, 8
  store i8 %bf.set639, i8* %384, align 4
  br label %for.inc.640

for.inc.640:                                      ; preds = %for.body.629
  %385 = load i64, i64* %r, align 8
  %inc641 = add i64 %385, 1
  store i64 %inc641, i64* %r, align 8
  br label %for.cond.626

for.end.642:                                      ; preds = %for.cond.626
  br label %if.end.643

if.end.643:                                       ; preds = %for.end.642, %do.body.623
  br label %do.end.645

do.end.645:                                       ; preds = %if.end.643
  br label %sw.epilog.2661

sw.bb.646:                                        ; preds = %if.end.572
  br label %while.cond.647

while.cond.647:                                   ; preds = %if.end.654, %sw.bb.646
  %386 = load i8*, i8** %d, align 8
  %387 = load i8*, i8** %dend, align 8
  %cmp648 = icmp eq i8* %386, %387
  br i1 %cmp648, label %while.body.650, label %while.end.655

while.body.650:                                   ; preds = %while.cond.647
  %388 = load i8*, i8** %dend, align 8
  %389 = load i8*, i8** %end_match_2, align 8
  %cmp651 = icmp eq i8* %388, %389
  br i1 %cmp651, label %if.then.653, label %if.end.654

if.then.653:                                      ; preds = %while.body.650
  br label %fail

if.end.654:                                       ; preds = %while.body.650
  %390 = load i8*, i8** %string2.addr, align 8
  store i8* %390, i8** %d, align 8
  %391 = load i8*, i8** %end_match_2, align 8
  store i8* %391, i8** %dend, align 8
  br label %while.cond.647

while.end.655:                                    ; preds = %while.cond.647
  %392 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %syntax = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %392, i32 0, i32 3
  %393 = load i64, i64* %syntax, align 8
  %and = and i64 %393, 64
  %tobool656 = icmp ne i64 %and, 0
  br i1 %tobool656, label %lor.lhs.false.669, label %land.lhs.true.657

land.lhs.true.657:                                ; preds = %while.end.655
  %394 = load i8*, i8** %translate, align 8
  %tobool658 = icmp ne i8* %394, null
  br i1 %tobool658, label %cond.true.659, label %cond.false.663

cond.true.659:                                    ; preds = %land.lhs.true.657
  %395 = load i8*, i8** %d, align 8
  %396 = load i8, i8* %395, align 1
  %idxprom660 = zext i8 %396 to i64
  %397 = load i8*, i8** %translate, align 8
  %arrayidx661 = getelementptr inbounds i8, i8* %397, i64 %idxprom660
  %398 = load i8, i8* %arrayidx661, align 1
  %conv662 = sext i8 %398 to i32
  br label %cond.end.665

cond.false.663:                                   ; preds = %land.lhs.true.657
  %399 = load i8*, i8** %d, align 8
  %400 = load i8, i8* %399, align 1
  %conv664 = sext i8 %400 to i32
  br label %cond.end.665

cond.end.665:                                     ; preds = %cond.false.663, %cond.true.659
  %cond666 = phi i32 [ %conv662, %cond.true.659 ], [ %conv664, %cond.false.663 ]
  %cmp667 = icmp eq i32 %cond666, 10
  br i1 %cmp667, label %if.then.685, label %lor.lhs.false.669

lor.lhs.false.669:                                ; preds = %cond.end.665, %while.end.655
  %401 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %syntax670 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %401, i32 0, i32 3
  %402 = load i64, i64* %syntax670, align 8
  %and671 = and i64 %402, 128
  %tobool672 = icmp ne i64 %and671, 0
  br i1 %tobool672, label %land.lhs.true.673, label %if.end.686

land.lhs.true.673:                                ; preds = %lor.lhs.false.669
  %403 = load i8*, i8** %translate, align 8
  %tobool674 = icmp ne i8* %403, null
  br i1 %tobool674, label %cond.true.675, label %cond.false.679

cond.true.675:                                    ; preds = %land.lhs.true.673
  %404 = load i8*, i8** %d, align 8
  %405 = load i8, i8* %404, align 1
  %idxprom676 = zext i8 %405 to i64
  %406 = load i8*, i8** %translate, align 8
  %arrayidx677 = getelementptr inbounds i8, i8* %406, i64 %idxprom676
  %407 = load i8, i8* %arrayidx677, align 1
  %conv678 = sext i8 %407 to i32
  br label %cond.end.681

cond.false.679:                                   ; preds = %land.lhs.true.673
  %408 = load i8*, i8** %d, align 8
  %409 = load i8, i8* %408, align 1
  %conv680 = sext i8 %409 to i32
  br label %cond.end.681

cond.end.681:                                     ; preds = %cond.false.679, %cond.true.675
  %cond682 = phi i32 [ %conv678, %cond.true.675 ], [ %conv680, %cond.false.679 ]
  %cmp683 = icmp eq i32 %cond682, 0
  br i1 %cmp683, label %if.then.685, label %if.end.686

if.then.685:                                      ; preds = %cond.end.681, %cond.end.665
  br label %fail

if.end.686:                                       ; preds = %cond.end.681, %lor.lhs.false.669
  br label %do.body.687

do.body.687:                                      ; preds = %if.end.686
  %410 = load i32, i32* %set_regs_matched_done, align 4
  %tobool688 = icmp ne i32 %410, 0
  br i1 %tobool688, label %if.end.708, label %if.then.689

if.then.689:                                      ; preds = %do.body.687
  store i32 1, i32* %set_regs_matched_done, align 4
  %411 = load i64, i64* %lowest_active_reg, align 8
  store i64 %411, i64* %r690, align 8
  br label %for.cond.691

for.cond.691:                                     ; preds = %for.inc.705, %if.then.689
  %412 = load i64, i64* %r690, align 8
  %413 = load i64, i64* %highest_active_reg, align 8
  %cmp692 = icmp ule i64 %412, %413
  br i1 %cmp692, label %for.body.694, label %for.end.707

for.body.694:                                     ; preds = %for.cond.691
  %414 = load i64, i64* %r690, align 8
  %415 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx695 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %415, i64 %414
  %bits696 = bitcast %union.register_info_type* %arrayidx695 to %struct.anon*
  %416 = bitcast %struct.anon* %bits696 to i8*
  %bf.load697 = load i8, i8* %416, align 4
  %bf.clear698 = and i8 %bf.load697, -17
  %bf.set699 = or i8 %bf.clear698, 16
  store i8 %bf.set699, i8* %416, align 4
  %417 = load i64, i64* %r690, align 8
  %418 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx700 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %418, i64 %417
  %bits701 = bitcast %union.register_info_type* %arrayidx700 to %struct.anon*
  %419 = bitcast %struct.anon* %bits701 to i8*
  %bf.load702 = load i8, i8* %419, align 4
  %bf.clear703 = and i8 %bf.load702, -9
  %bf.set704 = or i8 %bf.clear703, 8
  store i8 %bf.set704, i8* %419, align 4
  br label %for.inc.705

for.inc.705:                                      ; preds = %for.body.694
  %420 = load i64, i64* %r690, align 8
  %inc706 = add i64 %420, 1
  store i64 %inc706, i64* %r690, align 8
  br label %for.cond.691

for.end.707:                                      ; preds = %for.cond.691
  br label %if.end.708

if.end.708:                                       ; preds = %for.end.707, %do.body.687
  br label %do.end.710

do.end.710:                                       ; preds = %if.end.708
  %421 = load i8*, i8** %d, align 8
  %incdec.ptr711 = getelementptr inbounds i8, i8* %421, i32 1
  store i8* %incdec.ptr711, i8** %d, align 8
  br label %sw.epilog.2661

sw.bb.712:                                        ; preds = %if.end.572, %if.end.572
  %422 = load i8*, i8** %p, align 8
  %add.ptr713 = getelementptr inbounds i8, i8* %422, i64 -1
  %423 = load i8, i8* %add.ptr713, align 1
  %conv714 = zext i8 %423 to i32
  %cmp715 = icmp eq i32 %conv714, 5
  %conv716 = zext i1 %cmp715 to i32
  %conv717 = trunc i32 %conv716 to i8
  store i8 %conv717, i8* %not, align 1
  br label %while.cond.718

while.cond.718:                                   ; preds = %if.end.725, %sw.bb.712
  %424 = load i8*, i8** %d, align 8
  %425 = load i8*, i8** %dend, align 8
  %cmp719 = icmp eq i8* %424, %425
  br i1 %cmp719, label %while.body.721, label %while.end.726

while.body.721:                                   ; preds = %while.cond.718
  %426 = load i8*, i8** %dend, align 8
  %427 = load i8*, i8** %end_match_2, align 8
  %cmp722 = icmp eq i8* %426, %427
  br i1 %cmp722, label %if.then.724, label %if.end.725

if.then.724:                                      ; preds = %while.body.721
  br label %fail

if.end.725:                                       ; preds = %while.body.721
  %428 = load i8*, i8** %string2.addr, align 8
  store i8* %428, i8** %d, align 8
  %429 = load i8*, i8** %end_match_2, align 8
  store i8* %429, i8** %dend, align 8
  br label %while.cond.718

while.end.726:                                    ; preds = %while.cond.718
  %430 = load i8*, i8** %translate, align 8
  %tobool727 = icmp ne i8* %430, null
  br i1 %tobool727, label %cond.true.728, label %cond.false.732

cond.true.728:                                    ; preds = %while.end.726
  %431 = load i8*, i8** %d, align 8
  %432 = load i8, i8* %431, align 1
  %idxprom729 = zext i8 %432 to i64
  %433 = load i8*, i8** %translate, align 8
  %arrayidx730 = getelementptr inbounds i8, i8* %433, i64 %idxprom729
  %434 = load i8, i8* %arrayidx730, align 1
  %conv731 = sext i8 %434 to i32
  br label %cond.end.734

cond.false.732:                                   ; preds = %while.end.726
  %435 = load i8*, i8** %d, align 8
  %436 = load i8, i8* %435, align 1
  %conv733 = sext i8 %436 to i32
  br label %cond.end.734

cond.end.734:                                     ; preds = %cond.false.732, %cond.true.728
  %cond735 = phi i32 [ %conv731, %cond.true.728 ], [ %conv733, %cond.false.732 ]
  %conv736 = trunc i32 %cond735 to i8
  store i8 %conv736, i8* %c, align 1
  %437 = load i8, i8* %c, align 1
  %conv737 = zext i8 %437 to i32
  %438 = load i8*, i8** %p, align 8
  %439 = load i8, i8* %438, align 1
  %conv738 = zext i8 %439 to i32
  %mul739 = mul nsw i32 %conv738, 8
  %cmp740 = icmp ult i32 %conv737, %mul739
  br i1 %cmp740, label %land.lhs.true.742, label %if.end.756

land.lhs.true.742:                                ; preds = %cond.end.734
  %440 = load i8, i8* %c, align 1
  %conv743 = zext i8 %440 to i32
  %div = sdiv i32 %conv743, 8
  %add744 = add nsw i32 1, %div
  %idxprom745 = sext i32 %add744 to i64
  %441 = load i8*, i8** %p, align 8
  %arrayidx746 = getelementptr inbounds i8, i8* %441, i64 %idxprom745
  %442 = load i8, i8* %arrayidx746, align 1
  %conv747 = zext i8 %442 to i32
  %443 = load i8, i8* %c, align 1
  %conv748 = zext i8 %443 to i32
  %rem = srem i32 %conv748, 8
  %shl = shl i32 1, %rem
  %and749 = and i32 %conv747, %shl
  %tobool750 = icmp ne i32 %and749, 0
  br i1 %tobool750, label %if.then.751, label %if.end.756

if.then.751:                                      ; preds = %land.lhs.true.742
  %444 = load i8, i8* %not, align 1
  %tobool752 = icmp ne i8 %444, 0
  %lnot753 = xor i1 %tobool752, true
  %lnot.ext754 = zext i1 %lnot753 to i32
  %conv755 = trunc i32 %lnot.ext754 to i8
  store i8 %conv755, i8* %not, align 1
  br label %if.end.756

if.end.756:                                       ; preds = %if.then.751, %land.lhs.true.742, %cond.end.734
  %445 = load i8*, i8** %p, align 8
  %446 = load i8, i8* %445, align 1
  %conv757 = zext i8 %446 to i32
  %add758 = add nsw i32 1, %conv757
  %447 = load i8*, i8** %p, align 8
  %idx.ext759 = sext i32 %add758 to i64
  %add.ptr760 = getelementptr inbounds i8, i8* %447, i64 %idx.ext759
  store i8* %add.ptr760, i8** %p, align 8
  %448 = load i8, i8* %not, align 1
  %tobool761 = icmp ne i8 %448, 0
  br i1 %tobool761, label %if.end.763, label %if.then.762

if.then.762:                                      ; preds = %if.end.756
  br label %fail

if.end.763:                                       ; preds = %if.end.756
  br label %do.body.764

do.body.764:                                      ; preds = %if.end.763
  %449 = load i32, i32* %set_regs_matched_done, align 4
  %tobool765 = icmp ne i32 %449, 0
  br i1 %tobool765, label %if.end.785, label %if.then.766

if.then.766:                                      ; preds = %do.body.764
  store i32 1, i32* %set_regs_matched_done, align 4
  %450 = load i64, i64* %lowest_active_reg, align 8
  store i64 %450, i64* %r767, align 8
  br label %for.cond.768

for.cond.768:                                     ; preds = %for.inc.782, %if.then.766
  %451 = load i64, i64* %r767, align 8
  %452 = load i64, i64* %highest_active_reg, align 8
  %cmp769 = icmp ule i64 %451, %452
  br i1 %cmp769, label %for.body.771, label %for.end.784

for.body.771:                                     ; preds = %for.cond.768
  %453 = load i64, i64* %r767, align 8
  %454 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx772 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %454, i64 %453
  %bits773 = bitcast %union.register_info_type* %arrayidx772 to %struct.anon*
  %455 = bitcast %struct.anon* %bits773 to i8*
  %bf.load774 = load i8, i8* %455, align 4
  %bf.clear775 = and i8 %bf.load774, -17
  %bf.set776 = or i8 %bf.clear775, 16
  store i8 %bf.set776, i8* %455, align 4
  %456 = load i64, i64* %r767, align 8
  %457 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx777 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %457, i64 %456
  %bits778 = bitcast %union.register_info_type* %arrayidx777 to %struct.anon*
  %458 = bitcast %struct.anon* %bits778 to i8*
  %bf.load779 = load i8, i8* %458, align 4
  %bf.clear780 = and i8 %bf.load779, -9
  %bf.set781 = or i8 %bf.clear780, 8
  store i8 %bf.set781, i8* %458, align 4
  br label %for.inc.782

for.inc.782:                                      ; preds = %for.body.771
  %459 = load i64, i64* %r767, align 8
  %inc783 = add i64 %459, 1
  store i64 %inc783, i64* %r767, align 8
  br label %for.cond.768

for.end.784:                                      ; preds = %for.cond.768
  br label %if.end.785

if.end.785:                                       ; preds = %for.end.784, %do.body.764
  br label %do.end.787

do.end.787:                                       ; preds = %if.end.785
  %460 = load i8*, i8** %d, align 8
  %incdec.ptr788 = getelementptr inbounds i8, i8* %460, i32 1
  store i8* %incdec.ptr788, i8** %d, align 8
  br label %sw.epilog.2661

sw.bb.789:                                        ; preds = %if.end.572
  %461 = load i8*, i8** %p, align 8
  store i8* %461, i8** %p1, align 8
  %462 = load i8*, i8** %p, align 8
  %463 = load i8, i8* %462, align 1
  %idxprom790 = zext i8 %463 to i64
  %464 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx791 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %464, i64 %idxprom790
  %bits792 = bitcast %union.register_info_type* %arrayidx791 to %struct.anon*
  %465 = bitcast %struct.anon* %bits792 to i8*
  %bf.load793 = load i8, i8* %465, align 4
  %bf.clear794 = and i8 %bf.load793, 3
  %bf.cast795 = zext i8 %bf.clear794 to i32
  %cmp796 = icmp eq i32 %bf.cast795, 3
  br i1 %cmp796, label %if.then.798, label %if.end.807

if.then.798:                                      ; preds = %sw.bb.789
  %466 = load i8*, i8** %pend, align 8
  %467 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %call799 = call signext i8 @group_match_null_string_p(i8** %p1, i8* %466, %union.register_info_type* %467)
  %conv800 = sext i8 %call799 to i32
  %468 = load i8*, i8** %p, align 8
  %469 = load i8, i8* %468, align 1
  %idxprom801 = zext i8 %469 to i64
  %470 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx802 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %470, i64 %idxprom801
  %bits803 = bitcast %union.register_info_type* %arrayidx802 to %struct.anon*
  %471 = bitcast %struct.anon* %bits803 to i8*
  %472 = trunc i32 %conv800 to i8
  %bf.load804 = load i8, i8* %471, align 4
  %bf.value = and i8 %472, 3
  %bf.clear805 = and i8 %bf.load804, -4
  %bf.set806 = or i8 %bf.clear805, %bf.value
  store i8 %bf.set806, i8* %471, align 4
  %bf.result.cast = zext i8 %bf.value to i32
  br label %if.end.807

if.end.807:                                       ; preds = %if.then.798, %sw.bb.789
  %473 = load i8*, i8** %p, align 8
  %474 = load i8, i8* %473, align 1
  %idxprom808 = zext i8 %474 to i64
  %475 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx809 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %475, i64 %idxprom808
  %bits810 = bitcast %union.register_info_type* %arrayidx809 to %struct.anon*
  %476 = bitcast %struct.anon* %bits810 to i8*
  %bf.load811 = load i8, i8* %476, align 4
  %bf.clear812 = and i8 %bf.load811, 3
  %bf.cast813 = zext i8 %bf.clear812 to i32
  %tobool814 = icmp ne i32 %bf.cast813, 0
  br i1 %tobool814, label %cond.true.815, label %cond.false.826

cond.true.815:                                    ; preds = %if.end.807
  %477 = load i8*, i8** %p, align 8
  %478 = load i8, i8* %477, align 1
  %idxprom816 = zext i8 %478 to i64
  %479 = load i8**, i8*** %regstart, align 8
  %arrayidx817 = getelementptr inbounds i8*, i8** %479, i64 %idxprom816
  %480 = load i8*, i8** %arrayidx817, align 8
  %cmp818 = icmp eq i8* %480, @reg_unset_dummy
  br i1 %cmp818, label %cond.true.820, label %cond.false.821

cond.true.820:                                    ; preds = %cond.true.815
  %481 = load i8*, i8** %d, align 8
  br label %cond.end.824

cond.false.821:                                   ; preds = %cond.true.815
  %482 = load i8*, i8** %p, align 8
  %483 = load i8, i8* %482, align 1
  %idxprom822 = zext i8 %483 to i64
  %484 = load i8**, i8*** %regstart, align 8
  %arrayidx823 = getelementptr inbounds i8*, i8** %484, i64 %idxprom822
  %485 = load i8*, i8** %arrayidx823, align 8
  br label %cond.end.824

cond.end.824:                                     ; preds = %cond.false.821, %cond.true.820
  %cond825 = phi i8* [ %481, %cond.true.820 ], [ %485, %cond.false.821 ]
  br label %cond.end.829

cond.false.826:                                   ; preds = %if.end.807
  %486 = load i8*, i8** %p, align 8
  %487 = load i8, i8* %486, align 1
  %idxprom827 = zext i8 %487 to i64
  %488 = load i8**, i8*** %regstart, align 8
  %arrayidx828 = getelementptr inbounds i8*, i8** %488, i64 %idxprom827
  %489 = load i8*, i8** %arrayidx828, align 8
  br label %cond.end.829

cond.end.829:                                     ; preds = %cond.false.826, %cond.end.824
  %cond830 = phi i8* [ %cond825, %cond.end.824 ], [ %489, %cond.false.826 ]
  %490 = load i8*, i8** %p, align 8
  %491 = load i8, i8* %490, align 1
  %idxprom831 = zext i8 %491 to i64
  %492 = load i8**, i8*** %old_regstart, align 8
  %arrayidx832 = getelementptr inbounds i8*, i8** %492, i64 %idxprom831
  store i8* %cond830, i8** %arrayidx832, align 8
  %493 = load i8*, i8** %d, align 8
  %494 = load i8*, i8** %p, align 8
  %495 = load i8, i8* %494, align 1
  %idxprom833 = zext i8 %495 to i64
  %496 = load i8**, i8*** %regstart, align 8
  %arrayidx834 = getelementptr inbounds i8*, i8** %496, i64 %idxprom833
  store i8* %493, i8** %arrayidx834, align 8
  %497 = load i8*, i8** %p, align 8
  %498 = load i8, i8* %497, align 1
  %idxprom835 = zext i8 %498 to i64
  %499 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx836 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %499, i64 %idxprom835
  %bits837 = bitcast %union.register_info_type* %arrayidx836 to %struct.anon*
  %500 = bitcast %struct.anon* %bits837 to i8*
  %bf.load838 = load i8, i8* %500, align 4
  %bf.clear839 = and i8 %bf.load838, -5
  %bf.set840 = or i8 %bf.clear839, 4
  store i8 %bf.set840, i8* %500, align 4
  %501 = load i8*, i8** %p, align 8
  %502 = load i8, i8* %501, align 1
  %idxprom841 = zext i8 %502 to i64
  %503 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx842 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %503, i64 %idxprom841
  %bits843 = bitcast %union.register_info_type* %arrayidx842 to %struct.anon*
  %504 = bitcast %struct.anon* %bits843 to i8*
  %bf.load844 = load i8, i8* %504, align 4
  %bf.clear845 = and i8 %bf.load844, -9
  store i8 %bf.clear845, i8* %504, align 4
  store i32 0, i32* %set_regs_matched_done, align 4
  %505 = load i8*, i8** %p, align 8
  %506 = load i8, i8* %505, align 1
  %conv846 = zext i8 %506 to i64
  store i64 %conv846, i64* %highest_active_reg, align 8
  %507 = load i64, i64* %lowest_active_reg, align 8
  %cmp847 = icmp eq i64 %507, 257
  br i1 %cmp847, label %if.then.849, label %if.end.851

if.then.849:                                      ; preds = %cond.end.829
  %508 = load i8*, i8** %p, align 8
  %509 = load i8, i8* %508, align 1
  %conv850 = zext i8 %509 to i64
  store i64 %conv850, i64* %lowest_active_reg, align 8
  br label %if.end.851

if.end.851:                                       ; preds = %if.then.849, %cond.end.829
  %510 = load i8*, i8** %p, align 8
  %add.ptr852 = getelementptr inbounds i8, i8* %510, i64 2
  store i8* %add.ptr852, i8** %p, align 8
  %511 = load i8*, i8** %p, align 8
  store i8* %511, i8** %just_past_start_mem, align 8
  br label %sw.epilog.2661

sw.bb.853:                                        ; preds = %if.end.572
  %512 = load i8*, i8** %p, align 8
  %513 = load i8, i8* %512, align 1
  %idxprom854 = zext i8 %513 to i64
  %514 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx855 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %514, i64 %idxprom854
  %bits856 = bitcast %union.register_info_type* %arrayidx855 to %struct.anon*
  %515 = bitcast %struct.anon* %bits856 to i8*
  %bf.load857 = load i8, i8* %515, align 4
  %bf.clear858 = and i8 %bf.load857, 3
  %bf.cast859 = zext i8 %bf.clear858 to i32
  %tobool860 = icmp ne i32 %bf.cast859, 0
  br i1 %tobool860, label %cond.true.861, label %cond.false.872

cond.true.861:                                    ; preds = %sw.bb.853
  %516 = load i8*, i8** %p, align 8
  %517 = load i8, i8* %516, align 1
  %idxprom862 = zext i8 %517 to i64
  %518 = load i8**, i8*** %regend, align 8
  %arrayidx863 = getelementptr inbounds i8*, i8** %518, i64 %idxprom862
  %519 = load i8*, i8** %arrayidx863, align 8
  %cmp864 = icmp eq i8* %519, @reg_unset_dummy
  br i1 %cmp864, label %cond.true.866, label %cond.false.867

cond.true.866:                                    ; preds = %cond.true.861
  %520 = load i8*, i8** %d, align 8
  br label %cond.end.870

cond.false.867:                                   ; preds = %cond.true.861
  %521 = load i8*, i8** %p, align 8
  %522 = load i8, i8* %521, align 1
  %idxprom868 = zext i8 %522 to i64
  %523 = load i8**, i8*** %regend, align 8
  %arrayidx869 = getelementptr inbounds i8*, i8** %523, i64 %idxprom868
  %524 = load i8*, i8** %arrayidx869, align 8
  br label %cond.end.870

cond.end.870:                                     ; preds = %cond.false.867, %cond.true.866
  %cond871 = phi i8* [ %520, %cond.true.866 ], [ %524, %cond.false.867 ]
  br label %cond.end.875

cond.false.872:                                   ; preds = %sw.bb.853
  %525 = load i8*, i8** %p, align 8
  %526 = load i8, i8* %525, align 1
  %idxprom873 = zext i8 %526 to i64
  %527 = load i8**, i8*** %regend, align 8
  %arrayidx874 = getelementptr inbounds i8*, i8** %527, i64 %idxprom873
  %528 = load i8*, i8** %arrayidx874, align 8
  br label %cond.end.875

cond.end.875:                                     ; preds = %cond.false.872, %cond.end.870
  %cond876 = phi i8* [ %cond871, %cond.end.870 ], [ %528, %cond.false.872 ]
  %529 = load i8*, i8** %p, align 8
  %530 = load i8, i8* %529, align 1
  %idxprom877 = zext i8 %530 to i64
  %531 = load i8**, i8*** %old_regend, align 8
  %arrayidx878 = getelementptr inbounds i8*, i8** %531, i64 %idxprom877
  store i8* %cond876, i8** %arrayidx878, align 8
  %532 = load i8*, i8** %d, align 8
  %533 = load i8*, i8** %p, align 8
  %534 = load i8, i8* %533, align 1
  %idxprom879 = zext i8 %534 to i64
  %535 = load i8**, i8*** %regend, align 8
  %arrayidx880 = getelementptr inbounds i8*, i8** %535, i64 %idxprom879
  store i8* %532, i8** %arrayidx880, align 8
  %536 = load i8*, i8** %p, align 8
  %537 = load i8, i8* %536, align 1
  %idxprom881 = zext i8 %537 to i64
  %538 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx882 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %538, i64 %idxprom881
  %bits883 = bitcast %union.register_info_type* %arrayidx882 to %struct.anon*
  %539 = bitcast %struct.anon* %bits883 to i8*
  %bf.load884 = load i8, i8* %539, align 4
  %bf.clear885 = and i8 %bf.load884, -5
  store i8 %bf.clear885, i8* %539, align 4
  store i32 0, i32* %set_regs_matched_done, align 4
  %540 = load i64, i64* %lowest_active_reg, align 8
  %541 = load i64, i64* %highest_active_reg, align 8
  %cmp886 = icmp eq i64 %540, %541
  br i1 %cmp886, label %if.then.888, label %if.else.889

if.then.888:                                      ; preds = %cond.end.875
  store i64 257, i64* %lowest_active_reg, align 8
  store i64 256, i64* %highest_active_reg, align 8
  br label %if.end.920

if.else.889:                                      ; preds = %cond.end.875
  %542 = load i8*, i8** %p, align 8
  %543 = load i8, i8* %542, align 1
  %conv891 = zext i8 %543 to i32
  %sub = sub nsw i32 %conv891, 1
  %conv892 = trunc i32 %sub to i8
  store i8 %conv892, i8* %r890, align 1
  br label %while.cond.893

while.cond.893:                                   ; preds = %while.body.910, %if.else.889
  %544 = load i8, i8* %r890, align 1
  %conv894 = zext i8 %544 to i32
  %cmp895 = icmp sgt i32 %conv894, 0
  br i1 %cmp895, label %land.rhs.897, label %land.end.908

land.rhs.897:                                     ; preds = %while.cond.893
  %545 = load i8, i8* %r890, align 1
  %idxprom898 = zext i8 %545 to i64
  %546 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx899 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %546, i64 %idxprom898
  %bits900 = bitcast %union.register_info_type* %arrayidx899 to %struct.anon*
  %547 = bitcast %struct.anon* %bits900 to i8*
  %bf.load901 = load i8, i8* %547, align 4
  %bf.lshr902 = lshr i8 %bf.load901, 2
  %bf.clear903 = and i8 %bf.lshr902, 1
  %bf.cast904 = zext i8 %bf.clear903 to i32
  %tobool905 = icmp ne i32 %bf.cast904, 0
  %lnot906 = xor i1 %tobool905, true
  br label %land.end.908

land.end.908:                                     ; preds = %land.rhs.897, %while.cond.893
  %548 = phi i1 [ false, %while.cond.893 ], [ %lnot906, %land.rhs.897 ]
  br i1 %548, label %while.body.910, label %while.end.912

while.body.910:                                   ; preds = %land.end.908
  %549 = load i8, i8* %r890, align 1
  %dec911 = add i8 %549, -1
  store i8 %dec911, i8* %r890, align 1
  br label %while.cond.893

while.end.912:                                    ; preds = %land.end.908
  %550 = load i8, i8* %r890, align 1
  %conv913 = zext i8 %550 to i32
  %cmp914 = icmp eq i32 %conv913, 0
  br i1 %cmp914, label %if.then.916, label %if.else.917

if.then.916:                                      ; preds = %while.end.912
  store i64 257, i64* %lowest_active_reg, align 8
  store i64 256, i64* %highest_active_reg, align 8
  br label %if.end.919

if.else.917:                                      ; preds = %while.end.912
  %551 = load i8, i8* %r890, align 1
  %conv918 = zext i8 %551 to i64
  store i64 %conv918, i64* %highest_active_reg, align 8
  br label %if.end.919

if.end.919:                                       ; preds = %if.else.917, %if.then.916
  br label %if.end.920

if.end.920:                                       ; preds = %if.end.919, %if.then.888
  %552 = load i8*, i8** %p, align 8
  %553 = load i8, i8* %552, align 1
  %idxprom921 = zext i8 %553 to i64
  %554 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx922 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %554, i64 %idxprom921
  %bits923 = bitcast %union.register_info_type* %arrayidx922 to %struct.anon*
  %555 = bitcast %struct.anon* %bits923 to i8*
  %bf.load924 = load i8, i8* %555, align 4
  %bf.lshr925 = lshr i8 %bf.load924, 3
  %bf.clear926 = and i8 %bf.lshr925, 1
  %bf.cast927 = zext i8 %bf.clear926 to i32
  %tobool928 = icmp ne i32 %bf.cast927, 0
  br i1 %tobool928, label %lor.lhs.false.929, label %land.lhs.true.933

lor.lhs.false.929:                                ; preds = %if.end.920
  %556 = load i8*, i8** %just_past_start_mem, align 8
  %557 = load i8*, i8** %p, align 8
  %add.ptr930 = getelementptr inbounds i8, i8* %557, i64 -1
  %cmp931 = icmp eq i8* %556, %add.ptr930
  br i1 %cmp931, label %land.lhs.true.933, label %if.end.1135

land.lhs.true.933:                                ; preds = %lor.lhs.false.929, %if.end.920
  %558 = load i8*, i8** %p, align 8
  %add.ptr934 = getelementptr inbounds i8, i8* %558, i64 2
  %559 = load i8*, i8** %pend, align 8
  %cmp935 = icmp ult i8* %add.ptr934, %559
  br i1 %cmp935, label %if.then.937, label %if.end.1135

if.then.937:                                      ; preds = %land.lhs.true.933
  store i8 0, i8* %is_a_jump_n, align 1
  %560 = load i8*, i8** %p, align 8
  %add.ptr938 = getelementptr inbounds i8, i8* %560, i64 2
  store i8* %add.ptr938, i8** %p1, align 8
  store i32 0, i32* %mcnt, align 4
  %561 = load i8*, i8** %p1, align 8
  %incdec.ptr939 = getelementptr inbounds i8, i8* %561, i32 1
  store i8* %incdec.ptr939, i8** %p1, align 8
  %562 = load i8, i8* %561, align 1
  %conv940 = zext i8 %562 to i32
  switch i32 %conv940, label %sw.default [
    i32 22, label %sw.bb.941
    i32 17, label %sw.bb.942
    i32 18, label %sw.bb.942
    i32 13, label %sw.bb.942
    i32 19, label %sw.bb.942
  ]

sw.bb.941:                                        ; preds = %if.then.937
  store i8 1, i8* %is_a_jump_n, align 1
  br label %sw.bb.942

sw.bb.942:                                        ; preds = %if.then.937, %if.then.937, %if.then.937, %if.then.937, %sw.bb.941
  br label %do.body.943

do.body.943:                                      ; preds = %sw.bb.942
  br label %do.body.944

do.body.944:                                      ; preds = %do.body.943
  %563 = load i8*, i8** %p1, align 8
  %564 = load i8, i8* %563, align 1
  %conv945 = zext i8 %564 to i32
  %and946 = and i32 %conv945, 255
  store i32 %and946, i32* %mcnt, align 4
  %565 = load i8*, i8** %p1, align 8
  %add.ptr947 = getelementptr inbounds i8, i8* %565, i64 1
  %566 = load i8, i8* %add.ptr947, align 1
  %conv948 = sext i8 %566 to i32
  %shl949 = shl i32 %conv948, 8
  %567 = load i32, i32* %mcnt, align 4
  %add950 = add nsw i32 %567, %shl949
  store i32 %add950, i32* %mcnt, align 4
  br label %do.end.952

do.end.952:                                       ; preds = %do.body.944
  %568 = load i8*, i8** %p1, align 8
  %add.ptr953 = getelementptr inbounds i8, i8* %568, i64 2
  store i8* %add.ptr953, i8** %p1, align 8
  br label %do.end.955

do.end.955:                                       ; preds = %do.end.952
  %569 = load i8, i8* %is_a_jump_n, align 1
  %tobool956 = icmp ne i8 %569, 0
  br i1 %tobool956, label %if.then.957, label %if.end.959

if.then.957:                                      ; preds = %do.end.955
  %570 = load i8*, i8** %p1, align 8
  %add.ptr958 = getelementptr inbounds i8, i8* %570, i64 2
  store i8* %add.ptr958, i8** %p1, align 8
  br label %if.end.959

if.end.959:                                       ; preds = %if.then.957, %do.end.955
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.937
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.959
  %571 = load i32, i32* %mcnt, align 4
  %572 = load i8*, i8** %p1, align 8
  %idx.ext960 = sext i32 %571 to i64
  %add.ptr961 = getelementptr inbounds i8, i8* %572, i64 %idx.ext960
  store i8* %add.ptr961, i8** %p1, align 8
  %573 = load i32, i32* %mcnt, align 4
  %cmp962 = icmp slt i32 %573, 0
  br i1 %cmp962, label %land.lhs.true.964, label %if.end.1134

land.lhs.true.964:                                ; preds = %sw.epilog
  %574 = load i8*, i8** %p1, align 8
  %575 = load i8, i8* %574, align 1
  %conv965 = zext i8 %575 to i32
  %cmp966 = icmp eq i32 %conv965, 15
  br i1 %cmp966, label %land.lhs.true.968, label %if.end.1134

land.lhs.true.968:                                ; preds = %land.lhs.true.964
  %576 = load i8*, i8** %p1, align 8
  %arrayidx969 = getelementptr inbounds i8, i8* %576, i64 3
  %577 = load i8, i8* %arrayidx969, align 1
  %conv970 = zext i8 %577 to i32
  %cmp971 = icmp eq i32 %conv970, 6
  br i1 %cmp971, label %land.lhs.true.973, label %if.end.1134

land.lhs.true.973:                                ; preds = %land.lhs.true.968
  %578 = load i8*, i8** %p1, align 8
  %arrayidx974 = getelementptr inbounds i8, i8* %578, i64 4
  %579 = load i8, i8* %arrayidx974, align 1
  %conv975 = zext i8 %579 to i32
  %580 = load i8*, i8** %p, align 8
  %581 = load i8, i8* %580, align 1
  %conv976 = zext i8 %581 to i32
  %cmp977 = icmp eq i32 %conv975, %conv976
  br i1 %cmp977, label %if.then.979, label %if.end.1134

if.then.979:                                      ; preds = %land.lhs.true.973
  %582 = load i8*, i8** %p, align 8
  %583 = load i8, i8* %582, align 1
  %idxprom980 = zext i8 %583 to i64
  %584 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx981 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %584, i64 %idxprom980
  %bits982 = bitcast %union.register_info_type* %arrayidx981 to %struct.anon*
  %585 = bitcast %struct.anon* %bits982 to i8*
  %bf.load983 = load i8, i8* %585, align 4
  %bf.lshr984 = lshr i8 %bf.load983, 4
  %bf.clear985 = and i8 %bf.lshr984, 1
  %bf.cast986 = zext i8 %bf.clear985 to i32
  %tobool987 = icmp ne i32 %bf.cast986, 0
  br i1 %tobool987, label %if.then.988, label %if.end.1023

if.then.988:                                      ; preds = %if.then.979
  %586 = load i8*, i8** %p, align 8
  %587 = load i8, i8* %586, align 1
  %idxprom990 = zext i8 %587 to i64
  %588 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx991 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %588, i64 %idxprom990
  %bits992 = bitcast %union.register_info_type* %arrayidx991 to %struct.anon*
  %589 = bitcast %struct.anon* %bits992 to i8*
  %bf.load993 = load i8, i8* %589, align 4
  %bf.clear994 = and i8 %bf.load993, -17
  store i8 %bf.clear994, i8* %589, align 4
  %590 = load i8*, i8** %p, align 8
  %591 = load i8, i8* %590, align 1
  %conv995 = zext i8 %591 to i32
  store i32 %conv995, i32* %r989, align 4
  br label %for.cond.996

for.cond.996:                                     ; preds = %for.inc.1020, %if.then.988
  %592 = load i32, i32* %r989, align 4
  %593 = load i8*, i8** %p, align 8
  %594 = load i8, i8* %593, align 1
  %conv997 = zext i8 %594 to i32
  %595 = load i8*, i8** %p, align 8
  %add.ptr998 = getelementptr inbounds i8, i8* %595, i64 1
  %596 = load i8, i8* %add.ptr998, align 1
  %conv999 = zext i8 %596 to i32
  %add1000 = add i32 %conv997, %conv999
  %cmp1001 = icmp ult i32 %592, %add1000
  br i1 %cmp1001, label %for.body.1003, label %for.end.1022

for.body.1003:                                    ; preds = %for.cond.996
  %597 = load i32, i32* %r989, align 4
  %idxprom1004 = zext i32 %597 to i64
  %598 = load i8**, i8*** %old_regstart, align 8
  %arrayidx1005 = getelementptr inbounds i8*, i8** %598, i64 %idxprom1004
  %599 = load i8*, i8** %arrayidx1005, align 8
  %600 = load i32, i32* %r989, align 4
  %idxprom1006 = zext i32 %600 to i64
  %601 = load i8**, i8*** %regstart, align 8
  %arrayidx1007 = getelementptr inbounds i8*, i8** %601, i64 %idxprom1006
  store i8* %599, i8** %arrayidx1007, align 8
  %602 = load i32, i32* %r989, align 4
  %idxprom1008 = zext i32 %602 to i64
  %603 = load i8**, i8*** %old_regend, align 8
  %arrayidx1009 = getelementptr inbounds i8*, i8** %603, i64 %idxprom1008
  %604 = load i8*, i8** %arrayidx1009, align 8
  %605 = load i32, i32* %r989, align 4
  %idxprom1010 = zext i32 %605 to i64
  %606 = load i8**, i8*** %regstart, align 8
  %arrayidx1011 = getelementptr inbounds i8*, i8** %606, i64 %idxprom1010
  %607 = load i8*, i8** %arrayidx1011, align 8
  %cmp1012 = icmp uge i8* %604, %607
  br i1 %cmp1012, label %if.then.1014, label %if.end.1019

if.then.1014:                                     ; preds = %for.body.1003
  %608 = load i32, i32* %r989, align 4
  %idxprom1015 = zext i32 %608 to i64
  %609 = load i8**, i8*** %old_regend, align 8
  %arrayidx1016 = getelementptr inbounds i8*, i8** %609, i64 %idxprom1015
  %610 = load i8*, i8** %arrayidx1016, align 8
  %611 = load i32, i32* %r989, align 4
  %idxprom1017 = zext i32 %611 to i64
  %612 = load i8**, i8*** %regend, align 8
  %arrayidx1018 = getelementptr inbounds i8*, i8** %612, i64 %idxprom1017
  store i8* %610, i8** %arrayidx1018, align 8
  br label %if.end.1019

if.end.1019:                                      ; preds = %if.then.1014, %for.body.1003
  br label %for.inc.1020

for.inc.1020:                                     ; preds = %if.end.1019
  %613 = load i32, i32* %r989, align 4
  %inc1021 = add i32 %613, 1
  store i32 %inc1021, i32* %r989, align 4
  br label %for.cond.996

for.end.1022:                                     ; preds = %for.cond.996
  br label %if.end.1023

if.end.1023:                                      ; preds = %for.end.1022, %if.then.979
  %614 = load i8*, i8** %p1, align 8
  %incdec.ptr1024 = getelementptr inbounds i8, i8* %614, i32 1
  store i8* %incdec.ptr1024, i8** %p1, align 8
  br label %do.body.1025

do.body.1025:                                     ; preds = %if.end.1023
  br label %do.body.1026

do.body.1026:                                     ; preds = %do.body.1025
  %615 = load i8*, i8** %p1, align 8
  %616 = load i8, i8* %615, align 1
  %conv1027 = zext i8 %616 to i32
  %and1028 = and i32 %conv1027, 255
  store i32 %and1028, i32* %mcnt, align 4
  %617 = load i8*, i8** %p1, align 8
  %add.ptr1029 = getelementptr inbounds i8, i8* %617, i64 1
  %618 = load i8, i8* %add.ptr1029, align 1
  %conv1030 = sext i8 %618 to i32
  %shl1031 = shl i32 %conv1030, 8
  %619 = load i32, i32* %mcnt, align 4
  %add1032 = add nsw i32 %619, %shl1031
  store i32 %add1032, i32* %mcnt, align 4
  br label %do.end.1034

do.end.1034:                                      ; preds = %do.body.1026
  %620 = load i8*, i8** %p1, align 8
  %add.ptr1035 = getelementptr inbounds i8, i8* %620, i64 2
  store i8* %add.ptr1035, i8** %p1, align 8
  br label %do.end.1037

do.end.1037:                                      ; preds = %do.end.1034
  br label %do.body.1038

do.body.1038:                                     ; preds = %do.end.1037
  br label %while.cond.1039

while.cond.1039:                                  ; preds = %if.end.1077, %do.body.1038
  %size1040 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %621 = load i32, i32* %size1040, align 4
  %avail1041 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %622 = load i32, i32* %avail1041, align 4
  %sub1042 = sub i32 %621, %622
  %conv1043 = zext i32 %sub1042 to i64
  %623 = load i64, i64* %highest_active_reg, align 8
  %624 = load i64, i64* %lowest_active_reg, align 8
  %sub1044 = sub i64 %623, %624
  %add1045 = add i64 %sub1044, 1
  %mul1046 = mul i64 %add1045, 3
  %add1047 = add i64 %mul1046, 4
  %cmp1048 = icmp ult i64 %conv1043, %add1047
  br i1 %cmp1048, label %while.body.1050, label %while.end.1078

while.body.1050:                                  ; preds = %while.cond.1039
  %size1051 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %625 = load i32, i32* %size1051, align 4
  %626 = load i32, i32* @re_max_failures, align 4
  %mul1052 = mul nsw i32 %626, 19
  %cmp1053 = icmp ugt i32 %625, %mul1052
  br i1 %cmp1053, label %cond.true.1055, label %cond.false.1056

cond.true.1055:                                   ; preds = %while.body.1050
  br i1 false, label %if.end.1077, label %if.then.1076

cond.false.1056:                                  ; preds = %while.body.1050
  %size1057 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %627 = load i32, i32* %size1057, align 4
  %shl1058 = shl i32 %627, 1
  %conv1059 = zext i32 %shl1058 to i64
  %mul1060 = mul i64 %conv1059, 8
  %628 = alloca i8, i64 %mul1060
  store i8* %628, i8** %destination, align 8
  %629 = load i8*, i8** %destination, align 8
  %stack1061 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %630 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1061, align 8
  %631 = bitcast %union.fail_stack_elt* %630 to i8*
  %size1062 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %632 = load i32, i32* %size1062, align 4
  %conv1063 = zext i32 %632 to i64
  %mul1064 = mul i64 %conv1063, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %629, i8* %631, i64 %mul1064, i32 1, i1 false)
  %633 = bitcast i8* %629 to %union.fail_stack_elt*
  %stack1065 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  store %union.fail_stack_elt* %633, %union.fail_stack_elt** %stack1065, align 8
  %stack1066 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %634 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1066, align 8
  %cmp1067 = icmp eq %union.fail_stack_elt* %634, null
  br i1 %cmp1067, label %cond.true.1069, label %cond.false.1070

cond.true.1069:                                   ; preds = %cond.false.1056
  br label %cond.end.1073

cond.false.1070:                                  ; preds = %cond.false.1056
  %size1071 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %635 = load i32, i32* %size1071, align 4
  %shl1072 = shl i32 %635, 1
  store i32 %shl1072, i32* %size1071, align 4
  br label %cond.end.1073

cond.end.1073:                                    ; preds = %cond.false.1070, %cond.true.1069
  %cond1074 = phi i32 [ 0, %cond.true.1069 ], [ 1, %cond.false.1070 ]
  %tobool1075 = icmp ne i32 %cond1074, 0
  br i1 %tobool1075, label %if.end.1077, label %if.then.1076

if.then.1076:                                     ; preds = %cond.end.1073, %cond.true.1055
  store i32 -2, i32* %retval
  br label %return

if.end.1077:                                      ; preds = %cond.end.1073, %cond.true.1055
  br label %while.cond.1039

while.end.1078:                                   ; preds = %while.cond.1039
  %636 = load i64, i64* %lowest_active_reg, align 8
  store i64 %636, i64* %this_reg, align 8
  br label %for.cond.1079

for.cond.1079:                                    ; preds = %for.inc.1102, %while.end.1078
  %637 = load i64, i64* %this_reg, align 8
  %638 = load i64, i64* %highest_active_reg, align 8
  %cmp1080 = icmp ule i64 %637, %638
  br i1 %cmp1080, label %for.body.1082, label %for.end.1104

for.body.1082:                                    ; preds = %for.cond.1079
  %639 = load i64, i64* %this_reg, align 8
  %640 = load i8**, i8*** %regstart, align 8
  %arrayidx1083 = getelementptr inbounds i8*, i8** %640, i64 %639
  %641 = load i8*, i8** %arrayidx1083, align 8
  %avail1084 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %642 = load i32, i32* %avail1084, align 4
  %inc1085 = add i32 %642, 1
  store i32 %inc1085, i32* %avail1084, align 4
  %idxprom1086 = zext i32 %642 to i64
  %stack1087 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %643 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1087, align 8
  %arrayidx1088 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %643, i64 %idxprom1086
  %pointer = bitcast %union.fail_stack_elt* %arrayidx1088 to i8**
  store i8* %641, i8** %pointer, align 8
  %644 = load i64, i64* %this_reg, align 8
  %645 = load i8**, i8*** %regend, align 8
  %arrayidx1089 = getelementptr inbounds i8*, i8** %645, i64 %644
  %646 = load i8*, i8** %arrayidx1089, align 8
  %avail1090 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %647 = load i32, i32* %avail1090, align 4
  %inc1091 = add i32 %647, 1
  store i32 %inc1091, i32* %avail1090, align 4
  %idxprom1092 = zext i32 %647 to i64
  %stack1093 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %648 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1093, align 8
  %arrayidx1094 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %648, i64 %idxprom1092
  %pointer1095 = bitcast %union.fail_stack_elt* %arrayidx1094 to i8**
  store i8* %646, i8** %pointer1095, align 8
  %avail1096 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %649 = load i32, i32* %avail1096, align 4
  %inc1097 = add i32 %649, 1
  store i32 %inc1097, i32* %avail1096, align 4
  %idxprom1098 = zext i32 %649 to i64
  %stack1099 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %650 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1099, align 8
  %arrayidx1100 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %650, i64 %idxprom1098
  %651 = load i64, i64* %this_reg, align 8
  %652 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx1101 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %652, i64 %651
  %word = bitcast %union.register_info_type* %arrayidx1101 to %union.fail_stack_elt*
  %653 = bitcast %union.fail_stack_elt* %arrayidx1100 to i8*
  %654 = bitcast %union.fail_stack_elt* %word to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %653, i8* %654, i64 8, i32 8, i1 false)
  br label %for.inc.1102

for.inc.1102:                                     ; preds = %for.body.1082
  %655 = load i64, i64* %this_reg, align 8
  %inc1103 = add i64 %655, 1
  store i64 %inc1103, i64* %this_reg, align 8
  br label %for.cond.1079

for.end.1104:                                     ; preds = %for.cond.1079
  %656 = load i64, i64* %lowest_active_reg, align 8
  %conv1105 = trunc i64 %656 to i32
  %avail1106 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %657 = load i32, i32* %avail1106, align 4
  %inc1107 = add i32 %657, 1
  store i32 %inc1107, i32* %avail1106, align 4
  %idxprom1108 = zext i32 %657 to i64
  %stack1109 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %658 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1109, align 8
  %arrayidx1110 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %658, i64 %idxprom1108
  %integer = bitcast %union.fail_stack_elt* %arrayidx1110 to i32*
  store i32 %conv1105, i32* %integer, align 4
  %659 = load i64, i64* %highest_active_reg, align 8
  %conv1111 = trunc i64 %659 to i32
  %avail1112 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %660 = load i32, i32* %avail1112, align 4
  %inc1113 = add i32 %660, 1
  store i32 %inc1113, i32* %avail1112, align 4
  %idxprom1114 = zext i32 %660 to i64
  %stack1115 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %661 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1115, align 8
  %arrayidx1116 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %661, i64 %idxprom1114
  %integer1117 = bitcast %union.fail_stack_elt* %arrayidx1116 to i32*
  store i32 %conv1111, i32* %integer1117, align 4
  %662 = load i8*, i8** %p1, align 8
  %663 = load i32, i32* %mcnt, align 4
  %idx.ext1118 = sext i32 %663 to i64
  %add.ptr1119 = getelementptr inbounds i8, i8* %662, i64 %idx.ext1118
  %avail1120 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %664 = load i32, i32* %avail1120, align 4
  %inc1121 = add i32 %664, 1
  store i32 %inc1121, i32* %avail1120, align 4
  %idxprom1122 = zext i32 %664 to i64
  %stack1123 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %665 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1123, align 8
  %arrayidx1124 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %665, i64 %idxprom1122
  %pointer1125 = bitcast %union.fail_stack_elt* %arrayidx1124 to i8**
  store i8* %add.ptr1119, i8** %pointer1125, align 8
  %666 = load i8*, i8** %d, align 8
  %avail1126 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %667 = load i32, i32* %avail1126, align 4
  %inc1127 = add i32 %667, 1
  store i32 %inc1127, i32* %avail1126, align 4
  %idxprom1128 = zext i32 %667 to i64
  %stack1129 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %668 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1129, align 8
  %arrayidx1130 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %668, i64 %idxprom1128
  %pointer1131 = bitcast %union.fail_stack_elt* %arrayidx1130 to i8**
  store i8* %666, i8** %pointer1131, align 8
  br label %do.end.1133

do.end.1133:                                      ; preds = %for.end.1104
  br label %fail

if.end.1134:                                      ; preds = %land.lhs.true.973, %land.lhs.true.968, %land.lhs.true.964, %sw.epilog
  br label %if.end.1135

if.end.1135:                                      ; preds = %if.end.1134, %land.lhs.true.933, %lor.lhs.false.929
  %669 = load i8*, i8** %p, align 8
  %add.ptr1136 = getelementptr inbounds i8, i8* %669, i64 2
  store i8* %add.ptr1136, i8** %p, align 8
  br label %sw.epilog.2661

sw.bb.1137:                                       ; preds = %if.end.572
  %670 = load i8*, i8** %p, align 8
  %incdec.ptr1138 = getelementptr inbounds i8, i8* %670, i32 1
  store i8* %incdec.ptr1138, i8** %p, align 8
  %671 = load i8, i8* %670, align 1
  %conv1139 = zext i8 %671 to i32
  store i32 %conv1139, i32* %regno, align 4
  %672 = load i32, i32* %regno, align 4
  %idxprom1140 = sext i32 %672 to i64
  %673 = load i8**, i8*** %regstart, align 8
  %arrayidx1141 = getelementptr inbounds i8*, i8** %673, i64 %idxprom1140
  %674 = load i8*, i8** %arrayidx1141, align 8
  %cmp1142 = icmp eq i8* %674, @reg_unset_dummy
  br i1 %cmp1142, label %if.then.1149, label %lor.lhs.false.1144

lor.lhs.false.1144:                               ; preds = %sw.bb.1137
  %675 = load i32, i32* %regno, align 4
  %idxprom1145 = sext i32 %675 to i64
  %676 = load i8**, i8*** %regend, align 8
  %arrayidx1146 = getelementptr inbounds i8*, i8** %676, i64 %idxprom1145
  %677 = load i8*, i8** %arrayidx1146, align 8
  %cmp1147 = icmp eq i8* %677, @reg_unset_dummy
  br i1 %cmp1147, label %if.then.1149, label %if.end.1150

if.then.1149:                                     ; preds = %lor.lhs.false.1144, %sw.bb.1137
  br label %fail

if.end.1150:                                      ; preds = %lor.lhs.false.1144
  %678 = load i32, i32* %regno, align 4
  %idxprom1151 = sext i32 %678 to i64
  %679 = load i8**, i8*** %regstart, align 8
  %arrayidx1152 = getelementptr inbounds i8*, i8** %679, i64 %idxprom1151
  %680 = load i8*, i8** %arrayidx1152, align 8
  store i8* %680, i8** %d2, align 8
  %681 = load i32, i32* %size1.addr, align 4
  %tobool1153 = icmp ne i32 %681, 0
  br i1 %tobool1153, label %land.lhs.true.1154, label %land.end.1166

land.lhs.true.1154:                               ; preds = %if.end.1150
  %682 = load i8*, i8** %string1.addr, align 8
  %683 = load i32, i32* %regno, align 4
  %idxprom1155 = sext i32 %683 to i64
  %684 = load i8**, i8*** %regstart, align 8
  %arrayidx1156 = getelementptr inbounds i8*, i8** %684, i64 %idxprom1155
  %685 = load i8*, i8** %arrayidx1156, align 8
  %cmp1157 = icmp ule i8* %682, %685
  br i1 %cmp1157, label %land.rhs.1159, label %land.end.1166

land.rhs.1159:                                    ; preds = %land.lhs.true.1154
  %686 = load i32, i32* %regno, align 4
  %idxprom1160 = sext i32 %686 to i64
  %687 = load i8**, i8*** %regstart, align 8
  %arrayidx1161 = getelementptr inbounds i8*, i8** %687, i64 %idxprom1160
  %688 = load i8*, i8** %arrayidx1161, align 8
  %689 = load i8*, i8** %string1.addr, align 8
  %690 = load i32, i32* %size1.addr, align 4
  %idx.ext1162 = sext i32 %690 to i64
  %add.ptr1163 = getelementptr inbounds i8, i8* %689, i64 %idx.ext1162
  %cmp1164 = icmp ule i8* %688, %add.ptr1163
  br label %land.end.1166

land.end.1166:                                    ; preds = %land.rhs.1159, %land.lhs.true.1154, %if.end.1150
  %691 = phi i1 [ false, %land.lhs.true.1154 ], [ false, %if.end.1150 ], [ %cmp1164, %land.rhs.1159 ]
  %land.ext1167 = zext i1 %691 to i32
  %692 = load i32, i32* %size1.addr, align 4
  %tobool1168 = icmp ne i32 %692, 0
  br i1 %tobool1168, label %land.lhs.true.1169, label %land.end.1181

land.lhs.true.1169:                               ; preds = %land.end.1166
  %693 = load i8*, i8** %string1.addr, align 8
  %694 = load i32, i32* %regno, align 4
  %idxprom1170 = sext i32 %694 to i64
  %695 = load i8**, i8*** %regend, align 8
  %arrayidx1171 = getelementptr inbounds i8*, i8** %695, i64 %idxprom1170
  %696 = load i8*, i8** %arrayidx1171, align 8
  %cmp1172 = icmp ule i8* %693, %696
  br i1 %cmp1172, label %land.rhs.1174, label %land.end.1181

land.rhs.1174:                                    ; preds = %land.lhs.true.1169
  %697 = load i32, i32* %regno, align 4
  %idxprom1175 = sext i32 %697 to i64
  %698 = load i8**, i8*** %regend, align 8
  %arrayidx1176 = getelementptr inbounds i8*, i8** %698, i64 %idxprom1175
  %699 = load i8*, i8** %arrayidx1176, align 8
  %700 = load i8*, i8** %string1.addr, align 8
  %701 = load i32, i32* %size1.addr, align 4
  %idx.ext1177 = sext i32 %701 to i64
  %add.ptr1178 = getelementptr inbounds i8, i8* %700, i64 %idx.ext1177
  %cmp1179 = icmp ule i8* %699, %add.ptr1178
  br label %land.end.1181

land.end.1181:                                    ; preds = %land.rhs.1174, %land.lhs.true.1169, %land.end.1166
  %702 = phi i1 [ false, %land.lhs.true.1169 ], [ false, %land.end.1166 ], [ %cmp1179, %land.rhs.1174 ]
  %land.ext1182 = zext i1 %702 to i32
  %cmp1183 = icmp eq i32 %land.ext1167, %land.ext1182
  br i1 %cmp1183, label %cond.true.1185, label %cond.false.1188

cond.true.1185:                                   ; preds = %land.end.1181
  %703 = load i32, i32* %regno, align 4
  %idxprom1186 = sext i32 %703 to i64
  %704 = load i8**, i8*** %regend, align 8
  %arrayidx1187 = getelementptr inbounds i8*, i8** %704, i64 %idxprom1186
  %705 = load i8*, i8** %arrayidx1187, align 8
  br label %cond.end.1189

cond.false.1188:                                  ; preds = %land.end.1181
  %706 = load i8*, i8** %end_match_1, align 8
  br label %cond.end.1189

cond.end.1189:                                    ; preds = %cond.false.1188, %cond.true.1185
  %cond1190 = phi i8* [ %705, %cond.true.1185 ], [ %706, %cond.false.1188 ]
  store i8* %cond1190, i8** %dend2, align 8
  br label %for.cond.1191

for.cond.1191:                                    ; preds = %do.end.1275, %cond.end.1189
  br label %while.cond.1192

while.cond.1192:                                  ; preds = %if.end.1205, %for.cond.1191
  %707 = load i8*, i8** %d2, align 8
  %708 = load i8*, i8** %dend2, align 8
  %cmp1193 = icmp eq i8* %707, %708
  br i1 %cmp1193, label %while.body.1195, label %while.end.1208

while.body.1195:                                  ; preds = %while.cond.1192
  %709 = load i8*, i8** %dend2, align 8
  %710 = load i8*, i8** %end_match_2, align 8
  %cmp1196 = icmp eq i8* %709, %710
  br i1 %cmp1196, label %if.then.1198, label %if.end.1199

if.then.1198:                                     ; preds = %while.body.1195
  br label %while.end.1208

if.end.1199:                                      ; preds = %while.body.1195
  %711 = load i8*, i8** %dend2, align 8
  %712 = load i32, i32* %regno, align 4
  %idxprom1200 = sext i32 %712 to i64
  %713 = load i8**, i8*** %regend, align 8
  %arrayidx1201 = getelementptr inbounds i8*, i8** %713, i64 %idxprom1200
  %714 = load i8*, i8** %arrayidx1201, align 8
  %cmp1202 = icmp eq i8* %711, %714
  br i1 %cmp1202, label %if.then.1204, label %if.end.1205

if.then.1204:                                     ; preds = %if.end.1199
  br label %while.end.1208

if.end.1205:                                      ; preds = %if.end.1199
  %715 = load i8*, i8** %string2.addr, align 8
  store i8* %715, i8** %d2, align 8
  %716 = load i32, i32* %regno, align 4
  %idxprom1206 = sext i32 %716 to i64
  %717 = load i8**, i8*** %regend, align 8
  %arrayidx1207 = getelementptr inbounds i8*, i8** %717, i64 %idxprom1206
  %718 = load i8*, i8** %arrayidx1207, align 8
  store i8* %718, i8** %dend2, align 8
  br label %while.cond.1192

while.end.1208:                                   ; preds = %if.then.1204, %if.then.1198, %while.cond.1192
  %719 = load i8*, i8** %d2, align 8
  %720 = load i8*, i8** %dend2, align 8
  %cmp1209 = icmp eq i8* %719, %720
  br i1 %cmp1209, label %if.then.1211, label %if.end.1212

if.then.1211:                                     ; preds = %while.end.1208
  br label %for.end.1276

if.end.1212:                                      ; preds = %while.end.1208
  br label %while.cond.1213

while.cond.1213:                                  ; preds = %if.end.1220, %if.end.1212
  %721 = load i8*, i8** %d, align 8
  %722 = load i8*, i8** %dend, align 8
  %cmp1214 = icmp eq i8* %721, %722
  br i1 %cmp1214, label %while.body.1216, label %while.end.1221

while.body.1216:                                  ; preds = %while.cond.1213
  %723 = load i8*, i8** %dend, align 8
  %724 = load i8*, i8** %end_match_2, align 8
  %cmp1217 = icmp eq i8* %723, %724
  br i1 %cmp1217, label %if.then.1219, label %if.end.1220

if.then.1219:                                     ; preds = %while.body.1216
  br label %fail

if.end.1220:                                      ; preds = %while.body.1216
  %725 = load i8*, i8** %string2.addr, align 8
  store i8* %725, i8** %d, align 8
  %726 = load i8*, i8** %end_match_2, align 8
  store i8* %726, i8** %dend, align 8
  br label %while.cond.1213

while.end.1221:                                   ; preds = %while.cond.1213
  %727 = load i8*, i8** %dend, align 8
  %728 = load i8*, i8** %d, align 8
  %sub.ptr.lhs.cast1222 = ptrtoint i8* %727 to i64
  %sub.ptr.rhs.cast1223 = ptrtoint i8* %728 to i64
  %sub.ptr.sub1224 = sub i64 %sub.ptr.lhs.cast1222, %sub.ptr.rhs.cast1223
  %conv1225 = trunc i64 %sub.ptr.sub1224 to i32
  store i32 %conv1225, i32* %mcnt, align 4
  %729 = load i32, i32* %mcnt, align 4
  %conv1226 = sext i32 %729 to i64
  %730 = load i8*, i8** %dend2, align 8
  %731 = load i8*, i8** %d2, align 8
  %sub.ptr.lhs.cast1227 = ptrtoint i8* %730 to i64
  %sub.ptr.rhs.cast1228 = ptrtoint i8* %731 to i64
  %sub.ptr.sub1229 = sub i64 %sub.ptr.lhs.cast1227, %sub.ptr.rhs.cast1228
  %cmp1230 = icmp sgt i64 %conv1226, %sub.ptr.sub1229
  br i1 %cmp1230, label %if.then.1232, label %if.end.1237

if.then.1232:                                     ; preds = %while.end.1221
  %732 = load i8*, i8** %dend2, align 8
  %733 = load i8*, i8** %d2, align 8
  %sub.ptr.lhs.cast1233 = ptrtoint i8* %732 to i64
  %sub.ptr.rhs.cast1234 = ptrtoint i8* %733 to i64
  %sub.ptr.sub1235 = sub i64 %sub.ptr.lhs.cast1233, %sub.ptr.rhs.cast1234
  %conv1236 = trunc i64 %sub.ptr.sub1235 to i32
  store i32 %conv1236, i32* %mcnt, align 4
  br label %if.end.1237

if.end.1237:                                      ; preds = %if.then.1232, %while.end.1221
  %734 = load i8*, i8** %translate, align 8
  %tobool1238 = icmp ne i8* %734, null
  br i1 %tobool1238, label %cond.true.1239, label %cond.false.1242

cond.true.1239:                                   ; preds = %if.end.1237
  %735 = load i8*, i8** %d, align 8
  %736 = load i8*, i8** %d2, align 8
  %737 = load i32, i32* %mcnt, align 4
  %738 = load i8*, i8** %translate, align 8
  %call1240 = call i32 @bcmp_translate(i8* %735, i8* %736, i32 %737, i8* %738)
  %tobool1241 = icmp ne i32 %call1240, 0
  br i1 %tobool1241, label %if.then.1246, label %if.end.1247

cond.false.1242:                                  ; preds = %if.end.1237
  %739 = load i8*, i8** %d, align 8
  %740 = load i8*, i8** %d2, align 8
  %741 = load i32, i32* %mcnt, align 4
  %conv1243 = sext i32 %741 to i64
  %call1244 = call i32 @memcmp(i8* %739, i8* %740, i64 %conv1243) #7
  %tobool1245 = icmp ne i32 %call1244, 0
  br i1 %tobool1245, label %if.then.1246, label %if.end.1247

if.then.1246:                                     ; preds = %cond.false.1242, %cond.true.1239
  br label %fail

if.end.1247:                                      ; preds = %cond.false.1242, %cond.true.1239
  %742 = load i32, i32* %mcnt, align 4
  %743 = load i8*, i8** %d, align 8
  %idx.ext1248 = sext i32 %742 to i64
  %add.ptr1249 = getelementptr inbounds i8, i8* %743, i64 %idx.ext1248
  store i8* %add.ptr1249, i8** %d, align 8
  %744 = load i32, i32* %mcnt, align 4
  %745 = load i8*, i8** %d2, align 8
  %idx.ext1250 = sext i32 %744 to i64
  %add.ptr1251 = getelementptr inbounds i8, i8* %745, i64 %idx.ext1250
  store i8* %add.ptr1251, i8** %d2, align 8
  br label %do.body.1252

do.body.1252:                                     ; preds = %if.end.1247
  %746 = load i32, i32* %set_regs_matched_done, align 4
  %tobool1253 = icmp ne i32 %746, 0
  br i1 %tobool1253, label %if.end.1273, label %if.then.1254

if.then.1254:                                     ; preds = %do.body.1252
  store i32 1, i32* %set_regs_matched_done, align 4
  %747 = load i64, i64* %lowest_active_reg, align 8
  store i64 %747, i64* %r1255, align 8
  br label %for.cond.1256

for.cond.1256:                                    ; preds = %for.inc.1270, %if.then.1254
  %748 = load i64, i64* %r1255, align 8
  %749 = load i64, i64* %highest_active_reg, align 8
  %cmp1257 = icmp ule i64 %748, %749
  br i1 %cmp1257, label %for.body.1259, label %for.end.1272

for.body.1259:                                    ; preds = %for.cond.1256
  %750 = load i64, i64* %r1255, align 8
  %751 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx1260 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %751, i64 %750
  %bits1261 = bitcast %union.register_info_type* %arrayidx1260 to %struct.anon*
  %752 = bitcast %struct.anon* %bits1261 to i8*
  %bf.load1262 = load i8, i8* %752, align 4
  %bf.clear1263 = and i8 %bf.load1262, -17
  %bf.set1264 = or i8 %bf.clear1263, 16
  store i8 %bf.set1264, i8* %752, align 4
  %753 = load i64, i64* %r1255, align 8
  %754 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx1265 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %754, i64 %753
  %bits1266 = bitcast %union.register_info_type* %arrayidx1265 to %struct.anon*
  %755 = bitcast %struct.anon* %bits1266 to i8*
  %bf.load1267 = load i8, i8* %755, align 4
  %bf.clear1268 = and i8 %bf.load1267, -9
  %bf.set1269 = or i8 %bf.clear1268, 8
  store i8 %bf.set1269, i8* %755, align 4
  br label %for.inc.1270

for.inc.1270:                                     ; preds = %for.body.1259
  %756 = load i64, i64* %r1255, align 8
  %inc1271 = add i64 %756, 1
  store i64 %inc1271, i64* %r1255, align 8
  br label %for.cond.1256

for.end.1272:                                     ; preds = %for.cond.1256
  br label %if.end.1273

if.end.1273:                                      ; preds = %for.end.1272, %do.body.1252
  br label %do.end.1275

do.end.1275:                                      ; preds = %if.end.1273
  br label %for.cond.1191

for.end.1276:                                     ; preds = %if.then.1211
  br label %sw.epilog.2661

sw.bb.1277:                                       ; preds = %if.end.572
  %757 = load i8*, i8** %d, align 8
  %758 = load i32, i32* %size1.addr, align 4
  %tobool1278 = icmp ne i32 %758, 0
  br i1 %tobool1278, label %cond.true.1279, label %cond.false.1280

cond.true.1279:                                   ; preds = %sw.bb.1277
  %759 = load i8*, i8** %string1.addr, align 8
  br label %cond.end.1281

cond.false.1280:                                  ; preds = %sw.bb.1277
  %760 = load i8*, i8** %string2.addr, align 8
  br label %cond.end.1281

cond.end.1281:                                    ; preds = %cond.false.1280, %cond.true.1279
  %cond1282 = phi i8* [ %759, %cond.true.1279 ], [ %760, %cond.false.1280 ]
  %cmp1283 = icmp eq i8* %757, %cond1282
  br i1 %cmp1283, label %if.then.1287, label %lor.lhs.false.1285

lor.lhs.false.1285:                               ; preds = %cond.end.1281
  %761 = load i32, i32* %size2.addr, align 4
  %tobool1286 = icmp ne i32 %761, 0
  br i1 %tobool1286, label %if.else.1295, label %if.then.1287

if.then.1287:                                     ; preds = %lor.lhs.false.1285, %cond.end.1281
  %762 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %not_bol = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %762, i32 0, i32 7
  %bf.load1288 = load i8, i8* %not_bol, align 8
  %bf.lshr1289 = lshr i8 %bf.load1288, 5
  %bf.clear1290 = and i8 %bf.lshr1289, 1
  %bf.cast1291 = zext i8 %bf.clear1290 to i32
  %tobool1292 = icmp ne i32 %bf.cast1291, 0
  br i1 %tobool1292, label %if.end.1294, label %if.then.1293

if.then.1293:                                     ; preds = %if.then.1287
  br label %sw.epilog.2661

if.end.1294:                                      ; preds = %if.then.1287
  br label %if.end.1307

if.else.1295:                                     ; preds = %lor.lhs.false.1285
  %763 = load i8*, i8** %d, align 8
  %arrayidx1296 = getelementptr inbounds i8, i8* %763, i64 -1
  %764 = load i8, i8* %arrayidx1296, align 1
  %conv1297 = sext i8 %764 to i32
  %cmp1298 = icmp eq i32 %conv1297, 10
  br i1 %cmp1298, label %land.lhs.true.1300, label %if.end.1306

land.lhs.true.1300:                               ; preds = %if.else.1295
  %765 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %newline_anchor = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %765, i32 0, i32 7
  %bf.load1301 = load i8, i8* %newline_anchor, align 8
  %bf.lshr1302 = lshr i8 %bf.load1301, 7
  %bf.cast1303 = zext i8 %bf.lshr1302 to i32
  %tobool1304 = icmp ne i32 %bf.cast1303, 0
  br i1 %tobool1304, label %if.then.1305, label %if.end.1306

if.then.1305:                                     ; preds = %land.lhs.true.1300
  br label %sw.epilog.2661

if.end.1306:                                      ; preds = %land.lhs.true.1300, %if.else.1295
  br label %if.end.1307

if.end.1307:                                      ; preds = %if.end.1306, %if.end.1294
  br label %fail

sw.bb.1308:                                       ; preds = %if.end.572
  %766 = load i8*, i8** %d, align 8
  %767 = load i8*, i8** %end2, align 8
  %cmp1309 = icmp eq i8* %766, %767
  br i1 %cmp1309, label %if.then.1311, label %if.else.1319

if.then.1311:                                     ; preds = %sw.bb.1308
  %768 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %not_eol = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %768, i32 0, i32 7
  %bf.load1312 = load i8, i8* %not_eol, align 8
  %bf.lshr1313 = lshr i8 %bf.load1312, 6
  %bf.clear1314 = and i8 %bf.lshr1313, 1
  %bf.cast1315 = zext i8 %bf.clear1314 to i32
  %tobool1316 = icmp ne i32 %bf.cast1315, 0
  br i1 %tobool1316, label %if.end.1318, label %if.then.1317

if.then.1317:                                     ; preds = %if.then.1311
  br label %sw.epilog.2661

if.end.1318:                                      ; preds = %if.then.1311
  br label %if.end.1338

if.else.1319:                                     ; preds = %sw.bb.1308
  %769 = load i8*, i8** %d, align 8
  %770 = load i8*, i8** %end1, align 8
  %cmp1320 = icmp eq i8* %769, %770
  br i1 %cmp1320, label %cond.true.1322, label %cond.false.1324

cond.true.1322:                                   ; preds = %if.else.1319
  %771 = load i8*, i8** %string2.addr, align 8
  %772 = load i8, i8* %771, align 1
  %conv1323 = sext i8 %772 to i32
  br label %cond.end.1326

cond.false.1324:                                  ; preds = %if.else.1319
  %773 = load i8*, i8** %d, align 8
  %774 = load i8, i8* %773, align 1
  %conv1325 = sext i8 %774 to i32
  br label %cond.end.1326

cond.end.1326:                                    ; preds = %cond.false.1324, %cond.true.1322
  %cond1327 = phi i32 [ %conv1323, %cond.true.1322 ], [ %conv1325, %cond.false.1324 ]
  %cmp1328 = icmp eq i32 %cond1327, 10
  br i1 %cmp1328, label %land.lhs.true.1330, label %if.end.1337

land.lhs.true.1330:                               ; preds = %cond.end.1326
  %775 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %newline_anchor1331 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %775, i32 0, i32 7
  %bf.load1332 = load i8, i8* %newline_anchor1331, align 8
  %bf.lshr1333 = lshr i8 %bf.load1332, 7
  %bf.cast1334 = zext i8 %bf.lshr1333 to i32
  %tobool1335 = icmp ne i32 %bf.cast1334, 0
  br i1 %tobool1335, label %if.then.1336, label %if.end.1337

if.then.1336:                                     ; preds = %land.lhs.true.1330
  br label %sw.epilog.2661

if.end.1337:                                      ; preds = %land.lhs.true.1330, %cond.end.1326
  br label %if.end.1338

if.end.1338:                                      ; preds = %if.end.1337, %if.end.1318
  br label %fail

sw.bb.1339:                                       ; preds = %if.end.572
  %776 = load i8*, i8** %d, align 8
  %777 = load i32, i32* %size1.addr, align 4
  %tobool1340 = icmp ne i32 %777, 0
  br i1 %tobool1340, label %cond.true.1341, label %cond.false.1342

cond.true.1341:                                   ; preds = %sw.bb.1339
  %778 = load i8*, i8** %string1.addr, align 8
  br label %cond.end.1343

cond.false.1342:                                  ; preds = %sw.bb.1339
  %779 = load i8*, i8** %string2.addr, align 8
  br label %cond.end.1343

cond.end.1343:                                    ; preds = %cond.false.1342, %cond.true.1341
  %cond1344 = phi i8* [ %778, %cond.true.1341 ], [ %779, %cond.false.1342 ]
  %cmp1345 = icmp eq i8* %776, %cond1344
  br i1 %cmp1345, label %if.then.1349, label %lor.lhs.false.1347

lor.lhs.false.1347:                               ; preds = %cond.end.1343
  %780 = load i32, i32* %size2.addr, align 4
  %tobool1348 = icmp ne i32 %780, 0
  br i1 %tobool1348, label %if.end.1350, label %if.then.1349

if.then.1349:                                     ; preds = %lor.lhs.false.1347, %cond.end.1343
  br label %sw.epilog.2661

if.end.1350:                                      ; preds = %lor.lhs.false.1347
  br label %fail

sw.bb.1351:                                       ; preds = %if.end.572
  %781 = load i8*, i8** %d, align 8
  %782 = load i8*, i8** %end2, align 8
  %cmp1352 = icmp eq i8* %781, %782
  br i1 %cmp1352, label %if.then.1354, label %if.end.1355

if.then.1354:                                     ; preds = %sw.bb.1351
  br label %sw.epilog.2661

if.end.1355:                                      ; preds = %sw.bb.1351
  br label %fail

sw.bb.1356:                                       ; preds = %if.end.572
  br label %do.body.1357

do.body.1357:                                     ; preds = %sw.bb.1356
  br label %do.body.1358

do.body.1358:                                     ; preds = %do.body.1357
  %783 = load i8*, i8** %p, align 8
  %784 = load i8, i8* %783, align 1
  %conv1359 = zext i8 %784 to i32
  %and1360 = and i32 %conv1359, 255
  store i32 %and1360, i32* %mcnt, align 4
  %785 = load i8*, i8** %p, align 8
  %add.ptr1361 = getelementptr inbounds i8, i8* %785, i64 1
  %786 = load i8, i8* %add.ptr1361, align 1
  %conv1362 = sext i8 %786 to i32
  %shl1363 = shl i32 %conv1362, 8
  %787 = load i32, i32* %mcnt, align 4
  %add1364 = add nsw i32 %787, %shl1363
  store i32 %add1364, i32* %mcnt, align 4
  br label %do.end.1366

do.end.1366:                                      ; preds = %do.body.1358
  %788 = load i8*, i8** %p, align 8
  %add.ptr1367 = getelementptr inbounds i8, i8* %788, i64 2
  store i8* %add.ptr1367, i8** %p, align 8
  br label %do.end.1369

do.end.1369:                                      ; preds = %do.end.1366
  br label %do.body.1370

do.body.1370:                                     ; preds = %do.end.1369
  br label %while.cond.1373

while.cond.1373:                                  ; preds = %if.end.1411, %do.body.1370
  %size1374 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %789 = load i32, i32* %size1374, align 4
  %avail1375 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %790 = load i32, i32* %avail1375, align 4
  %sub1376 = sub i32 %789, %790
  %conv1377 = zext i32 %sub1376 to i64
  %791 = load i64, i64* %highest_active_reg, align 8
  %792 = load i64, i64* %lowest_active_reg, align 8
  %sub1378 = sub i64 %791, %792
  %add1379 = add i64 %sub1378, 1
  %mul1380 = mul i64 %add1379, 3
  %add1381 = add i64 %mul1380, 4
  %cmp1382 = icmp ult i64 %conv1377, %add1381
  br i1 %cmp1382, label %while.body.1384, label %while.end.1412

while.body.1384:                                  ; preds = %while.cond.1373
  %size1385 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %793 = load i32, i32* %size1385, align 4
  %794 = load i32, i32* @re_max_failures, align 4
  %mul1386 = mul nsw i32 %794, 19
  %cmp1387 = icmp ugt i32 %793, %mul1386
  br i1 %cmp1387, label %cond.true.1389, label %cond.false.1390

cond.true.1389:                                   ; preds = %while.body.1384
  br i1 false, label %if.end.1411, label %if.then.1410

cond.false.1390:                                  ; preds = %while.body.1384
  %size1391 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %795 = load i32, i32* %size1391, align 4
  %shl1392 = shl i32 %795, 1
  %conv1393 = zext i32 %shl1392 to i64
  %mul1394 = mul i64 %conv1393, 8
  %796 = alloca i8, i64 %mul1394
  store i8* %796, i8** %destination1371, align 8
  %797 = load i8*, i8** %destination1371, align 8
  %stack1395 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %798 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1395, align 8
  %799 = bitcast %union.fail_stack_elt* %798 to i8*
  %size1396 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %800 = load i32, i32* %size1396, align 4
  %conv1397 = zext i32 %800 to i64
  %mul1398 = mul i64 %conv1397, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %797, i8* %799, i64 %mul1398, i32 1, i1 false)
  %801 = bitcast i8* %797 to %union.fail_stack_elt*
  %stack1399 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  store %union.fail_stack_elt* %801, %union.fail_stack_elt** %stack1399, align 8
  %stack1400 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %802 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1400, align 8
  %cmp1401 = icmp eq %union.fail_stack_elt* %802, null
  br i1 %cmp1401, label %cond.true.1403, label %cond.false.1404

cond.true.1403:                                   ; preds = %cond.false.1390
  br label %cond.end.1407

cond.false.1404:                                  ; preds = %cond.false.1390
  %size1405 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %803 = load i32, i32* %size1405, align 4
  %shl1406 = shl i32 %803, 1
  store i32 %shl1406, i32* %size1405, align 4
  br label %cond.end.1407

cond.end.1407:                                    ; preds = %cond.false.1404, %cond.true.1403
  %cond1408 = phi i32 [ 0, %cond.true.1403 ], [ 1, %cond.false.1404 ]
  %tobool1409 = icmp ne i32 %cond1408, 0
  br i1 %tobool1409, label %if.end.1411, label %if.then.1410

if.then.1410:                                     ; preds = %cond.end.1407, %cond.true.1389
  store i32 -2, i32* %retval
  br label %return

if.end.1411:                                      ; preds = %cond.end.1407, %cond.true.1389
  br label %while.cond.1373

while.end.1412:                                   ; preds = %while.cond.1373
  %804 = load i64, i64* %lowest_active_reg, align 8
  store i64 %804, i64* %this_reg1372, align 8
  br label %for.cond.1413

for.cond.1413:                                    ; preds = %for.inc.1438, %while.end.1412
  %805 = load i64, i64* %this_reg1372, align 8
  %806 = load i64, i64* %highest_active_reg, align 8
  %cmp1414 = icmp ule i64 %805, %806
  br i1 %cmp1414, label %for.body.1416, label %for.end.1440

for.body.1416:                                    ; preds = %for.cond.1413
  %807 = load i64, i64* %this_reg1372, align 8
  %808 = load i8**, i8*** %regstart, align 8
  %arrayidx1417 = getelementptr inbounds i8*, i8** %808, i64 %807
  %809 = load i8*, i8** %arrayidx1417, align 8
  %avail1418 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %810 = load i32, i32* %avail1418, align 4
  %inc1419 = add i32 %810, 1
  store i32 %inc1419, i32* %avail1418, align 4
  %idxprom1420 = zext i32 %810 to i64
  %stack1421 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %811 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1421, align 8
  %arrayidx1422 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %811, i64 %idxprom1420
  %pointer1423 = bitcast %union.fail_stack_elt* %arrayidx1422 to i8**
  store i8* %809, i8** %pointer1423, align 8
  %812 = load i64, i64* %this_reg1372, align 8
  %813 = load i8**, i8*** %regend, align 8
  %arrayidx1424 = getelementptr inbounds i8*, i8** %813, i64 %812
  %814 = load i8*, i8** %arrayidx1424, align 8
  %avail1425 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %815 = load i32, i32* %avail1425, align 4
  %inc1426 = add i32 %815, 1
  store i32 %inc1426, i32* %avail1425, align 4
  %idxprom1427 = zext i32 %815 to i64
  %stack1428 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %816 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1428, align 8
  %arrayidx1429 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %816, i64 %idxprom1427
  %pointer1430 = bitcast %union.fail_stack_elt* %arrayidx1429 to i8**
  store i8* %814, i8** %pointer1430, align 8
  %avail1431 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %817 = load i32, i32* %avail1431, align 4
  %inc1432 = add i32 %817, 1
  store i32 %inc1432, i32* %avail1431, align 4
  %idxprom1433 = zext i32 %817 to i64
  %stack1434 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %818 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1434, align 8
  %arrayidx1435 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %818, i64 %idxprom1433
  %819 = load i64, i64* %this_reg1372, align 8
  %820 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx1436 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %820, i64 %819
  %word1437 = bitcast %union.register_info_type* %arrayidx1436 to %union.fail_stack_elt*
  %821 = bitcast %union.fail_stack_elt* %arrayidx1435 to i8*
  %822 = bitcast %union.fail_stack_elt* %word1437 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %821, i8* %822, i64 8, i32 8, i1 false)
  br label %for.inc.1438

for.inc.1438:                                     ; preds = %for.body.1416
  %823 = load i64, i64* %this_reg1372, align 8
  %inc1439 = add i64 %823, 1
  store i64 %inc1439, i64* %this_reg1372, align 8
  br label %for.cond.1413

for.end.1440:                                     ; preds = %for.cond.1413
  %824 = load i64, i64* %lowest_active_reg, align 8
  %conv1441 = trunc i64 %824 to i32
  %avail1442 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %825 = load i32, i32* %avail1442, align 4
  %inc1443 = add i32 %825, 1
  store i32 %inc1443, i32* %avail1442, align 4
  %idxprom1444 = zext i32 %825 to i64
  %stack1445 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %826 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1445, align 8
  %arrayidx1446 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %826, i64 %idxprom1444
  %integer1447 = bitcast %union.fail_stack_elt* %arrayidx1446 to i32*
  store i32 %conv1441, i32* %integer1447, align 4
  %827 = load i64, i64* %highest_active_reg, align 8
  %conv1448 = trunc i64 %827 to i32
  %avail1449 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %828 = load i32, i32* %avail1449, align 4
  %inc1450 = add i32 %828, 1
  store i32 %inc1450, i32* %avail1449, align 4
  %idxprom1451 = zext i32 %828 to i64
  %stack1452 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %829 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1452, align 8
  %arrayidx1453 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %829, i64 %idxprom1451
  %integer1454 = bitcast %union.fail_stack_elt* %arrayidx1453 to i32*
  store i32 %conv1448, i32* %integer1454, align 4
  %830 = load i8*, i8** %p, align 8
  %831 = load i32, i32* %mcnt, align 4
  %idx.ext1455 = sext i32 %831 to i64
  %add.ptr1456 = getelementptr inbounds i8, i8* %830, i64 %idx.ext1455
  %avail1457 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %832 = load i32, i32* %avail1457, align 4
  %inc1458 = add i32 %832, 1
  store i32 %inc1458, i32* %avail1457, align 4
  %idxprom1459 = zext i32 %832 to i64
  %stack1460 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %833 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1460, align 8
  %arrayidx1461 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %833, i64 %idxprom1459
  %pointer1462 = bitcast %union.fail_stack_elt* %arrayidx1461 to i8**
  store i8* %add.ptr1456, i8** %pointer1462, align 8
  %avail1463 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %834 = load i32, i32* %avail1463, align 4
  %inc1464 = add i32 %834, 1
  store i32 %inc1464, i32* %avail1463, align 4
  %idxprom1465 = zext i32 %834 to i64
  %stack1466 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %835 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1466, align 8
  %arrayidx1467 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %835, i64 %idxprom1465
  %pointer1468 = bitcast %union.fail_stack_elt* %arrayidx1467 to i8**
  store i8* null, i8** %pointer1468, align 8
  br label %do.end.1470

do.end.1470:                                      ; preds = %for.end.1440
  br label %sw.epilog.2661

sw.bb.1471:                                       ; preds = %if.end.572
  br label %on_failure

on_failure:                                       ; preds = %if.then.2203, %sw.bb.1471
  br label %do.body.1472

do.body.1472:                                     ; preds = %on_failure
  br label %do.body.1473

do.body.1473:                                     ; preds = %do.body.1472
  %836 = load i8*, i8** %p, align 8
  %837 = load i8, i8* %836, align 1
  %conv1474 = zext i8 %837 to i32
  %and1475 = and i32 %conv1474, 255
  store i32 %and1475, i32* %mcnt, align 4
  %838 = load i8*, i8** %p, align 8
  %add.ptr1476 = getelementptr inbounds i8, i8* %838, i64 1
  %839 = load i8, i8* %add.ptr1476, align 1
  %conv1477 = sext i8 %839 to i32
  %shl1478 = shl i32 %conv1477, 8
  %840 = load i32, i32* %mcnt, align 4
  %add1479 = add nsw i32 %840, %shl1478
  store i32 %add1479, i32* %mcnt, align 4
  br label %do.end.1481

do.end.1481:                                      ; preds = %do.body.1473
  %841 = load i8*, i8** %p, align 8
  %add.ptr1482 = getelementptr inbounds i8, i8* %841, i64 2
  store i8* %add.ptr1482, i8** %p, align 8
  br label %do.end.1484

do.end.1484:                                      ; preds = %do.end.1481
  %842 = load i8*, i8** %p, align 8
  store i8* %842, i8** %p1, align 8
  br label %while.cond.1485

while.cond.1485:                                  ; preds = %while.body.1494, %do.end.1484
  %843 = load i8*, i8** %p1, align 8
  %844 = load i8*, i8** %pend, align 8
  %cmp1486 = icmp ult i8* %843, %844
  br i1 %cmp1486, label %land.rhs.1488, label %land.end.1492

land.rhs.1488:                                    ; preds = %while.cond.1485
  %845 = load i8*, i8** %p1, align 8
  %846 = load i8, i8* %845, align 1
  %conv1489 = zext i8 %846 to i32
  %cmp1490 = icmp eq i32 %conv1489, 0
  br label %land.end.1492

land.end.1492:                                    ; preds = %land.rhs.1488, %while.cond.1485
  %847 = phi i1 [ false, %while.cond.1485 ], [ %cmp1490, %land.rhs.1488 ]
  br i1 %847, label %while.body.1494, label %while.end.1496

while.body.1494:                                  ; preds = %land.end.1492
  %848 = load i8*, i8** %p1, align 8
  %incdec.ptr1495 = getelementptr inbounds i8, i8* %848, i32 1
  store i8* %incdec.ptr1495, i8** %p1, align 8
  br label %while.cond.1485

while.end.1496:                                   ; preds = %land.end.1492
  %849 = load i8*, i8** %p1, align 8
  %850 = load i8*, i8** %pend, align 8
  %cmp1497 = icmp ult i8* %849, %850
  br i1 %cmp1497, label %land.lhs.true.1499, label %if.end.1516

land.lhs.true.1499:                               ; preds = %while.end.1496
  %851 = load i8*, i8** %p1, align 8
  %852 = load i8, i8* %851, align 1
  %conv1500 = zext i8 %852 to i32
  %cmp1501 = icmp eq i32 %conv1500, 6
  br i1 %cmp1501, label %if.then.1503, label %if.end.1516

if.then.1503:                                     ; preds = %land.lhs.true.1499
  %853 = load i8*, i8** %p1, align 8
  %add.ptr1504 = getelementptr inbounds i8, i8* %853, i64 1
  %854 = load i8, i8* %add.ptr1504, align 1
  %conv1505 = zext i8 %854 to i32
  %855 = load i8*, i8** %p1, align 8
  %add.ptr1506 = getelementptr inbounds i8, i8* %855, i64 2
  %856 = load i8, i8* %add.ptr1506, align 1
  %conv1507 = zext i8 %856 to i32
  %add1508 = add nsw i32 %conv1505, %conv1507
  %conv1509 = sext i32 %add1508 to i64
  store i64 %conv1509, i64* %highest_active_reg, align 8
  %857 = load i64, i64* %lowest_active_reg, align 8
  %cmp1510 = icmp eq i64 %857, 257
  br i1 %cmp1510, label %if.then.1512, label %if.end.1515

if.then.1512:                                     ; preds = %if.then.1503
  %858 = load i8*, i8** %p1, align 8
  %add.ptr1513 = getelementptr inbounds i8, i8* %858, i64 1
  %859 = load i8, i8* %add.ptr1513, align 1
  %conv1514 = zext i8 %859 to i64
  store i64 %conv1514, i64* %lowest_active_reg, align 8
  br label %if.end.1515

if.end.1515:                                      ; preds = %if.then.1512, %if.then.1503
  br label %if.end.1516

if.end.1516:                                      ; preds = %if.end.1515, %land.lhs.true.1499, %while.end.1496
  br label %do.body.1517

do.body.1517:                                     ; preds = %if.end.1516
  br label %while.cond.1520

while.cond.1520:                                  ; preds = %if.end.1558, %do.body.1517
  %size1521 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %860 = load i32, i32* %size1521, align 4
  %avail1522 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %861 = load i32, i32* %avail1522, align 4
  %sub1523 = sub i32 %860, %861
  %conv1524 = zext i32 %sub1523 to i64
  %862 = load i64, i64* %highest_active_reg, align 8
  %863 = load i64, i64* %lowest_active_reg, align 8
  %sub1525 = sub i64 %862, %863
  %add1526 = add i64 %sub1525, 1
  %mul1527 = mul i64 %add1526, 3
  %add1528 = add i64 %mul1527, 4
  %cmp1529 = icmp ult i64 %conv1524, %add1528
  br i1 %cmp1529, label %while.body.1531, label %while.end.1559

while.body.1531:                                  ; preds = %while.cond.1520
  %size1532 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %864 = load i32, i32* %size1532, align 4
  %865 = load i32, i32* @re_max_failures, align 4
  %mul1533 = mul nsw i32 %865, 19
  %cmp1534 = icmp ugt i32 %864, %mul1533
  br i1 %cmp1534, label %cond.true.1536, label %cond.false.1537

cond.true.1536:                                   ; preds = %while.body.1531
  br i1 false, label %if.end.1558, label %if.then.1557

cond.false.1537:                                  ; preds = %while.body.1531
  %size1538 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %866 = load i32, i32* %size1538, align 4
  %shl1539 = shl i32 %866, 1
  %conv1540 = zext i32 %shl1539 to i64
  %mul1541 = mul i64 %conv1540, 8
  %867 = alloca i8, i64 %mul1541
  store i8* %867, i8** %destination1518, align 8
  %868 = load i8*, i8** %destination1518, align 8
  %stack1542 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %869 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1542, align 8
  %870 = bitcast %union.fail_stack_elt* %869 to i8*
  %size1543 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %871 = load i32, i32* %size1543, align 4
  %conv1544 = zext i32 %871 to i64
  %mul1545 = mul i64 %conv1544, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %868, i8* %870, i64 %mul1545, i32 1, i1 false)
  %872 = bitcast i8* %868 to %union.fail_stack_elt*
  %stack1546 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  store %union.fail_stack_elt* %872, %union.fail_stack_elt** %stack1546, align 8
  %stack1547 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %873 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1547, align 8
  %cmp1548 = icmp eq %union.fail_stack_elt* %873, null
  br i1 %cmp1548, label %cond.true.1550, label %cond.false.1551

cond.true.1550:                                   ; preds = %cond.false.1537
  br label %cond.end.1554

cond.false.1551:                                  ; preds = %cond.false.1537
  %size1552 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %874 = load i32, i32* %size1552, align 4
  %shl1553 = shl i32 %874, 1
  store i32 %shl1553, i32* %size1552, align 4
  br label %cond.end.1554

cond.end.1554:                                    ; preds = %cond.false.1551, %cond.true.1550
  %cond1555 = phi i32 [ 0, %cond.true.1550 ], [ 1, %cond.false.1551 ]
  %tobool1556 = icmp ne i32 %cond1555, 0
  br i1 %tobool1556, label %if.end.1558, label %if.then.1557

if.then.1557:                                     ; preds = %cond.end.1554, %cond.true.1536
  store i32 -2, i32* %retval
  br label %return

if.end.1558:                                      ; preds = %cond.end.1554, %cond.true.1536
  br label %while.cond.1520

while.end.1559:                                   ; preds = %while.cond.1520
  %875 = load i64, i64* %lowest_active_reg, align 8
  store i64 %875, i64* %this_reg1519, align 8
  br label %for.cond.1560

for.cond.1560:                                    ; preds = %for.inc.1585, %while.end.1559
  %876 = load i64, i64* %this_reg1519, align 8
  %877 = load i64, i64* %highest_active_reg, align 8
  %cmp1561 = icmp ule i64 %876, %877
  br i1 %cmp1561, label %for.body.1563, label %for.end.1587

for.body.1563:                                    ; preds = %for.cond.1560
  %878 = load i64, i64* %this_reg1519, align 8
  %879 = load i8**, i8*** %regstart, align 8
  %arrayidx1564 = getelementptr inbounds i8*, i8** %879, i64 %878
  %880 = load i8*, i8** %arrayidx1564, align 8
  %avail1565 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %881 = load i32, i32* %avail1565, align 4
  %inc1566 = add i32 %881, 1
  store i32 %inc1566, i32* %avail1565, align 4
  %idxprom1567 = zext i32 %881 to i64
  %stack1568 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %882 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1568, align 8
  %arrayidx1569 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %882, i64 %idxprom1567
  %pointer1570 = bitcast %union.fail_stack_elt* %arrayidx1569 to i8**
  store i8* %880, i8** %pointer1570, align 8
  %883 = load i64, i64* %this_reg1519, align 8
  %884 = load i8**, i8*** %regend, align 8
  %arrayidx1571 = getelementptr inbounds i8*, i8** %884, i64 %883
  %885 = load i8*, i8** %arrayidx1571, align 8
  %avail1572 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %886 = load i32, i32* %avail1572, align 4
  %inc1573 = add i32 %886, 1
  store i32 %inc1573, i32* %avail1572, align 4
  %idxprom1574 = zext i32 %886 to i64
  %stack1575 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %887 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1575, align 8
  %arrayidx1576 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %887, i64 %idxprom1574
  %pointer1577 = bitcast %union.fail_stack_elt* %arrayidx1576 to i8**
  store i8* %885, i8** %pointer1577, align 8
  %avail1578 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %888 = load i32, i32* %avail1578, align 4
  %inc1579 = add i32 %888, 1
  store i32 %inc1579, i32* %avail1578, align 4
  %idxprom1580 = zext i32 %888 to i64
  %stack1581 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %889 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1581, align 8
  %arrayidx1582 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %889, i64 %idxprom1580
  %890 = load i64, i64* %this_reg1519, align 8
  %891 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx1583 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %891, i64 %890
  %word1584 = bitcast %union.register_info_type* %arrayidx1583 to %union.fail_stack_elt*
  %892 = bitcast %union.fail_stack_elt* %arrayidx1582 to i8*
  %893 = bitcast %union.fail_stack_elt* %word1584 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %892, i8* %893, i64 8, i32 8, i1 false)
  br label %for.inc.1585

for.inc.1585:                                     ; preds = %for.body.1563
  %894 = load i64, i64* %this_reg1519, align 8
  %inc1586 = add i64 %894, 1
  store i64 %inc1586, i64* %this_reg1519, align 8
  br label %for.cond.1560

for.end.1587:                                     ; preds = %for.cond.1560
  %895 = load i64, i64* %lowest_active_reg, align 8
  %conv1588 = trunc i64 %895 to i32
  %avail1589 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %896 = load i32, i32* %avail1589, align 4
  %inc1590 = add i32 %896, 1
  store i32 %inc1590, i32* %avail1589, align 4
  %idxprom1591 = zext i32 %896 to i64
  %stack1592 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %897 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1592, align 8
  %arrayidx1593 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %897, i64 %idxprom1591
  %integer1594 = bitcast %union.fail_stack_elt* %arrayidx1593 to i32*
  store i32 %conv1588, i32* %integer1594, align 4
  %898 = load i64, i64* %highest_active_reg, align 8
  %conv1595 = trunc i64 %898 to i32
  %avail1596 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %899 = load i32, i32* %avail1596, align 4
  %inc1597 = add i32 %899, 1
  store i32 %inc1597, i32* %avail1596, align 4
  %idxprom1598 = zext i32 %899 to i64
  %stack1599 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %900 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1599, align 8
  %arrayidx1600 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %900, i64 %idxprom1598
  %integer1601 = bitcast %union.fail_stack_elt* %arrayidx1600 to i32*
  store i32 %conv1595, i32* %integer1601, align 4
  %901 = load i8*, i8** %p, align 8
  %902 = load i32, i32* %mcnt, align 4
  %idx.ext1602 = sext i32 %902 to i64
  %add.ptr1603 = getelementptr inbounds i8, i8* %901, i64 %idx.ext1602
  %avail1604 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %903 = load i32, i32* %avail1604, align 4
  %inc1605 = add i32 %903, 1
  store i32 %inc1605, i32* %avail1604, align 4
  %idxprom1606 = zext i32 %903 to i64
  %stack1607 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %904 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1607, align 8
  %arrayidx1608 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %904, i64 %idxprom1606
  %pointer1609 = bitcast %union.fail_stack_elt* %arrayidx1608 to i8**
  store i8* %add.ptr1603, i8** %pointer1609, align 8
  %905 = load i8*, i8** %d, align 8
  %avail1610 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %906 = load i32, i32* %avail1610, align 4
  %inc1611 = add i32 %906, 1
  store i32 %inc1611, i32* %avail1610, align 4
  %idxprom1612 = zext i32 %906 to i64
  %stack1613 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %907 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1613, align 8
  %arrayidx1614 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %907, i64 %idxprom1612
  %pointer1615 = bitcast %union.fail_stack_elt* %arrayidx1614 to i8**
  store i8* %905, i8** %pointer1615, align 8
  br label %do.end.1617

do.end.1617:                                      ; preds = %for.end.1587
  br label %sw.epilog.2661

sw.bb.1618:                                       ; preds = %if.end.572
  br label %do.body.1619

do.body.1619:                                     ; preds = %sw.bb.1618
  br label %do.body.1620

do.body.1620:                                     ; preds = %do.body.1619
  %908 = load i8*, i8** %p, align 8
  %909 = load i8, i8* %908, align 1
  %conv1621 = zext i8 %909 to i32
  %and1622 = and i32 %conv1621, 255
  store i32 %and1622, i32* %mcnt, align 4
  %910 = load i8*, i8** %p, align 8
  %add.ptr1623 = getelementptr inbounds i8, i8* %910, i64 1
  %911 = load i8, i8* %add.ptr1623, align 1
  %conv1624 = sext i8 %911 to i32
  %shl1625 = shl i32 %conv1624, 8
  %912 = load i32, i32* %mcnt, align 4
  %add1626 = add nsw i32 %912, %shl1625
  store i32 %add1626, i32* %mcnt, align 4
  br label %do.end.1628

do.end.1628:                                      ; preds = %do.body.1620
  %913 = load i8*, i8** %p, align 8
  %add.ptr1629 = getelementptr inbounds i8, i8* %913, i64 2
  store i8* %add.ptr1629, i8** %p, align 8
  br label %do.end.1631

do.end.1631:                                      ; preds = %do.end.1628
  %914 = load i8*, i8** %p, align 8
  store i8* %914, i8** %p2, align 8
  br label %while.body.1633

while.body.1633:                                  ; preds = %do.end.1631, %if.end.1659
  %915 = load i8*, i8** %p2, align 8
  %add.ptr1634 = getelementptr inbounds i8, i8* %915, i64 2
  %916 = load i8*, i8** %pend, align 8
  %cmp1635 = icmp ult i8* %add.ptr1634, %916
  br i1 %cmp1635, label %land.lhs.true.1637, label %if.else.1647

land.lhs.true.1637:                               ; preds = %while.body.1633
  %917 = load i8*, i8** %p2, align 8
  %918 = load i8, i8* %917, align 1
  %conv1638 = zext i8 %918 to i32
  %cmp1639 = icmp eq i32 %conv1638, 7
  br i1 %cmp1639, label %if.then.1645, label %lor.lhs.false.1641

lor.lhs.false.1641:                               ; preds = %land.lhs.true.1637
  %919 = load i8*, i8** %p2, align 8
  %920 = load i8, i8* %919, align 1
  %conv1642 = zext i8 %920 to i32
  %cmp1643 = icmp eq i32 %conv1642, 6
  br i1 %cmp1643, label %if.then.1645, label %if.else.1647

if.then.1645:                                     ; preds = %lor.lhs.false.1641, %land.lhs.true.1637
  %921 = load i8*, i8** %p2, align 8
  %add.ptr1646 = getelementptr inbounds i8, i8* %921, i64 3
  store i8* %add.ptr1646, i8** %p2, align 8
  br label %if.end.1659

if.else.1647:                                     ; preds = %lor.lhs.false.1641, %while.body.1633
  %922 = load i8*, i8** %p2, align 8
  %add.ptr1648 = getelementptr inbounds i8, i8* %922, i64 6
  %923 = load i8*, i8** %pend, align 8
  %cmp1649 = icmp ult i8* %add.ptr1648, %923
  br i1 %cmp1649, label %land.lhs.true.1651, label %if.else.1657

land.lhs.true.1651:                               ; preds = %if.else.1647
  %924 = load i8*, i8** %p2, align 8
  %925 = load i8, i8* %924, align 1
  %conv1652 = zext i8 %925 to i32
  %cmp1653 = icmp eq i32 %conv1652, 19
  br i1 %cmp1653, label %if.then.1655, label %if.else.1657

if.then.1655:                                     ; preds = %land.lhs.true.1651
  %926 = load i8*, i8** %p2, align 8
  %add.ptr1656 = getelementptr inbounds i8, i8* %926, i64 6
  store i8* %add.ptr1656, i8** %p2, align 8
  br label %if.end.1658

if.else.1657:                                     ; preds = %land.lhs.true.1651, %if.else.1647
  br label %while.end.1660

if.end.1658:                                      ; preds = %if.then.1655
  br label %if.end.1659

if.end.1659:                                      ; preds = %if.end.1658, %if.then.1645
  br label %while.body.1633

while.end.1660:                                   ; preds = %if.else.1657
  %927 = load i8*, i8** %p, align 8
  %928 = load i32, i32* %mcnt, align 4
  %idx.ext1661 = sext i32 %928 to i64
  %add.ptr1662 = getelementptr inbounds i8, i8* %927, i64 %idx.ext1661
  store i8* %add.ptr1662, i8** %p1, align 8
  %929 = load i8*, i8** %p2, align 8
  %930 = load i8*, i8** %pend, align 8
  %cmp1663 = icmp eq i8* %929, %930
  br i1 %cmp1663, label %if.then.1665, label %if.else.1667

if.then.1665:                                     ; preds = %while.end.1660
  %931 = load i8*, i8** %p, align 8
  %arrayidx1666 = getelementptr inbounds i8, i8* %931, i64 -3
  store i8 17, i8* %arrayidx1666, align 1
  br label %if.end.1885

if.else.1667:                                     ; preds = %while.end.1660
  %932 = load i8*, i8** %p2, align 8
  %933 = load i8, i8* %932, align 1
  %conv1668 = zext i8 %933 to i32
  %cmp1669 = icmp eq i32 %conv1668, 2
  br i1 %cmp1669, label %if.then.1681, label %lor.lhs.false.1671

lor.lhs.false.1671:                               ; preds = %if.else.1667
  %934 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %newline_anchor1672 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %934, i32 0, i32 7
  %bf.load1673 = load i8, i8* %newline_anchor1672, align 8
  %bf.lshr1674 = lshr i8 %bf.load1673, 7
  %bf.cast1675 = zext i8 %bf.lshr1674 to i32
  %tobool1676 = icmp ne i32 %bf.cast1675, 0
  br i1 %tobool1676, label %land.lhs.true.1677, label %if.else.1752

land.lhs.true.1677:                               ; preds = %lor.lhs.false.1671
  %935 = load i8*, i8** %p2, align 8
  %936 = load i8, i8* %935, align 1
  %conv1678 = zext i8 %936 to i32
  %cmp1679 = icmp eq i32 %conv1678, 10
  br i1 %cmp1679, label %if.then.1681, label %if.else.1752

if.then.1681:                                     ; preds = %land.lhs.true.1677, %if.else.1667
  %937 = load i8*, i8** %p2, align 8
  %938 = load i8, i8* %937, align 1
  %conv1683 = zext i8 %938 to i32
  %cmp1684 = icmp eq i32 %conv1683, 10
  br i1 %cmp1684, label %cond.true.1686, label %cond.false.1687

cond.true.1686:                                   ; preds = %if.then.1681
  br label %cond.end.1690

cond.false.1687:                                  ; preds = %if.then.1681
  %939 = load i8*, i8** %p2, align 8
  %arrayidx1688 = getelementptr inbounds i8, i8* %939, i64 2
  %940 = load i8, i8* %arrayidx1688, align 1
  %conv1689 = zext i8 %940 to i32
  br label %cond.end.1690

cond.end.1690:                                    ; preds = %cond.false.1687, %cond.true.1686
  %cond1691 = phi i32 [ 10, %cond.true.1686 ], [ %conv1689, %cond.false.1687 ]
  %conv1692 = trunc i32 %cond1691 to i8
  store i8 %conv1692, i8* %c1682, align 1
  %941 = load i8*, i8** %p1, align 8
  %arrayidx1693 = getelementptr inbounds i8, i8* %941, i64 3
  %942 = load i8, i8* %arrayidx1693, align 1
  %conv1694 = zext i8 %942 to i32
  %cmp1695 = icmp eq i32 %conv1694, 2
  br i1 %cmp1695, label %land.lhs.true.1697, label %if.else.1705

land.lhs.true.1697:                               ; preds = %cond.end.1690
  %943 = load i8*, i8** %p1, align 8
  %arrayidx1698 = getelementptr inbounds i8, i8* %943, i64 5
  %944 = load i8, i8* %arrayidx1698, align 1
  %conv1699 = zext i8 %944 to i32
  %945 = load i8, i8* %c1682, align 1
  %conv1700 = zext i8 %945 to i32
  %cmp1701 = icmp ne i32 %conv1699, %conv1700
  br i1 %cmp1701, label %if.then.1703, label %if.else.1705

if.then.1703:                                     ; preds = %land.lhs.true.1697
  %946 = load i8*, i8** %p, align 8
  %arrayidx1704 = getelementptr inbounds i8, i8* %946, i64 -3
  store i8 17, i8* %arrayidx1704, align 1
  br label %if.end.1751

if.else.1705:                                     ; preds = %land.lhs.true.1697, %cond.end.1690
  %947 = load i8*, i8** %p1, align 8
  %arrayidx1706 = getelementptr inbounds i8, i8* %947, i64 3
  %948 = load i8, i8* %arrayidx1706, align 1
  %conv1707 = zext i8 %948 to i32
  %cmp1708 = icmp eq i32 %conv1707, 4
  br i1 %cmp1708, label %if.then.1715, label %lor.lhs.false.1710

lor.lhs.false.1710:                               ; preds = %if.else.1705
  %949 = load i8*, i8** %p1, align 8
  %arrayidx1711 = getelementptr inbounds i8, i8* %949, i64 3
  %950 = load i8, i8* %arrayidx1711, align 1
  %conv1712 = zext i8 %950 to i32
  %cmp1713 = icmp eq i32 %conv1712, 5
  br i1 %cmp1713, label %if.then.1715, label %if.end.1750

if.then.1715:                                     ; preds = %lor.lhs.false.1710, %if.else.1705
  %951 = load i8*, i8** %p1, align 8
  %arrayidx1717 = getelementptr inbounds i8, i8* %951, i64 3
  %952 = load i8, i8* %arrayidx1717, align 1
  %conv1718 = zext i8 %952 to i32
  %cmp1719 = icmp eq i32 %conv1718, 5
  %conv1720 = zext i1 %cmp1719 to i32
  store i32 %conv1720, i32* %not1716, align 4
  %953 = load i8, i8* %c1682, align 1
  %conv1721 = zext i8 %953 to i32
  %954 = load i8*, i8** %p1, align 8
  %arrayidx1722 = getelementptr inbounds i8, i8* %954, i64 4
  %955 = load i8, i8* %arrayidx1722, align 1
  %conv1723 = zext i8 %955 to i32
  %mul1724 = mul nsw i32 %conv1723, 8
  %conv1725 = trunc i32 %mul1724 to i8
  %conv1726 = zext i8 %conv1725 to i32
  %cmp1727 = icmp slt i32 %conv1721, %conv1726
  br i1 %cmp1727, label %land.lhs.true.1729, label %if.end.1745

land.lhs.true.1729:                               ; preds = %if.then.1715
  %956 = load i8, i8* %c1682, align 1
  %conv1730 = zext i8 %956 to i32
  %div1731 = sdiv i32 %conv1730, 8
  %add1732 = add nsw i32 5, %div1731
  %idxprom1733 = sext i32 %add1732 to i64
  %957 = load i8*, i8** %p1, align 8
  %arrayidx1734 = getelementptr inbounds i8, i8* %957, i64 %idxprom1733
  %958 = load i8, i8* %arrayidx1734, align 1
  %conv1735 = zext i8 %958 to i32
  %959 = load i8, i8* %c1682, align 1
  %conv1736 = zext i8 %959 to i32
  %rem1737 = srem i32 %conv1736, 8
  %shl1738 = shl i32 1, %rem1737
  %and1739 = and i32 %conv1735, %shl1738
  %tobool1740 = icmp ne i32 %and1739, 0
  br i1 %tobool1740, label %if.then.1741, label %if.end.1745

if.then.1741:                                     ; preds = %land.lhs.true.1729
  %960 = load i32, i32* %not1716, align 4
  %tobool1742 = icmp ne i32 %960, 0
  %lnot1743 = xor i1 %tobool1742, true
  %lnot.ext1744 = zext i1 %lnot1743 to i32
  store i32 %lnot.ext1744, i32* %not1716, align 4
  br label %if.end.1745

if.end.1745:                                      ; preds = %if.then.1741, %land.lhs.true.1729, %if.then.1715
  %961 = load i32, i32* %not1716, align 4
  %tobool1746 = icmp ne i32 %961, 0
  br i1 %tobool1746, label %if.end.1749, label %if.then.1747

if.then.1747:                                     ; preds = %if.end.1745
  %962 = load i8*, i8** %p, align 8
  %arrayidx1748 = getelementptr inbounds i8, i8* %962, i64 -3
  store i8 17, i8* %arrayidx1748, align 1
  br label %if.end.1749

if.end.1749:                                      ; preds = %if.then.1747, %if.end.1745
  br label %if.end.1750

if.end.1750:                                      ; preds = %if.end.1749, %lor.lhs.false.1710
  br label %if.end.1751

if.end.1751:                                      ; preds = %if.end.1750, %if.then.1703
  br label %if.end.1884

if.else.1752:                                     ; preds = %land.lhs.true.1677, %lor.lhs.false.1671
  %963 = load i8*, i8** %p2, align 8
  %964 = load i8, i8* %963, align 1
  %conv1753 = zext i8 %964 to i32
  %cmp1754 = icmp eq i32 %conv1753, 4
  br i1 %cmp1754, label %if.then.1756, label %if.end.1883

if.then.1756:                                     ; preds = %if.else.1752
  %965 = load i8*, i8** %p1, align 8
  %arrayidx1757 = getelementptr inbounds i8, i8* %965, i64 3
  %966 = load i8, i8* %arrayidx1757, align 1
  %conv1758 = zext i8 %966 to i32
  %cmp1759 = icmp eq i32 %conv1758, 2
  br i1 %cmp1759, label %land.lhs.true.1761, label %if.else.1785

land.lhs.true.1761:                               ; preds = %if.then.1756
  %967 = load i8*, i8** %p2, align 8
  %arrayidx1762 = getelementptr inbounds i8, i8* %967, i64 1
  %968 = load i8, i8* %arrayidx1762, align 1
  %conv1763 = zext i8 %968 to i32
  %mul1764 = mul nsw i32 %conv1763, 8
  %969 = load i8*, i8** %p1, align 8
  %arrayidx1765 = getelementptr inbounds i8, i8* %969, i64 4
  %970 = load i8, i8* %arrayidx1765, align 1
  %conv1766 = zext i8 %970 to i32
  %cmp1767 = icmp sgt i32 %mul1764, %conv1766
  br i1 %cmp1767, label %land.lhs.true.1769, label %if.then.1783

land.lhs.true.1769:                               ; preds = %land.lhs.true.1761
  %971 = load i8*, i8** %p1, align 8
  %arrayidx1770 = getelementptr inbounds i8, i8* %971, i64 4
  %972 = load i8, i8* %arrayidx1770, align 1
  %conv1771 = zext i8 %972 to i32
  %div1772 = sdiv i32 %conv1771, 8
  %add1773 = add nsw i32 2, %div1772
  %idxprom1774 = sext i32 %add1773 to i64
  %973 = load i8*, i8** %p2, align 8
  %arrayidx1775 = getelementptr inbounds i8, i8* %973, i64 %idxprom1774
  %974 = load i8, i8* %arrayidx1775, align 1
  %conv1776 = zext i8 %974 to i32
  %975 = load i8*, i8** %p1, align 8
  %arrayidx1777 = getelementptr inbounds i8, i8* %975, i64 4
  %976 = load i8, i8* %arrayidx1777, align 1
  %conv1778 = zext i8 %976 to i32
  %rem1779 = srem i32 %conv1778, 8
  %shl1780 = shl i32 1, %rem1779
  %and1781 = and i32 %conv1776, %shl1780
  %tobool1782 = icmp ne i32 %and1781, 0
  br i1 %tobool1782, label %if.else.1785, label %if.then.1783

if.then.1783:                                     ; preds = %land.lhs.true.1769, %land.lhs.true.1761
  %977 = load i8*, i8** %p, align 8
  %arrayidx1784 = getelementptr inbounds i8, i8* %977, i64 -3
  store i8 17, i8* %arrayidx1784, align 1
  br label %if.end.1882

if.else.1785:                                     ; preds = %land.lhs.true.1769, %if.then.1756
  %978 = load i8*, i8** %p1, align 8
  %arrayidx1786 = getelementptr inbounds i8, i8* %978, i64 3
  %979 = load i8, i8* %arrayidx1786, align 1
  %conv1787 = zext i8 %979 to i32
  %cmp1788 = icmp eq i32 %conv1787, 5
  br i1 %cmp1788, label %if.then.1790, label %if.else.1832

if.then.1790:                                     ; preds = %if.else.1785
  store i32 0, i32* %idx, align 4
  br label %for.cond.1791

for.cond.1791:                                    ; preds = %for.inc.1822, %if.then.1790
  %980 = load i32, i32* %idx, align 4
  %981 = load i8*, i8** %p2, align 8
  %arrayidx1792 = getelementptr inbounds i8, i8* %981, i64 1
  %982 = load i8, i8* %arrayidx1792, align 1
  %conv1793 = zext i8 %982 to i32
  %cmp1794 = icmp slt i32 %980, %conv1793
  br i1 %cmp1794, label %for.body.1796, label %for.end.1824

for.body.1796:                                    ; preds = %for.cond.1791
  %983 = load i32, i32* %idx, align 4
  %add1797 = add nsw i32 2, %983
  %idxprom1798 = sext i32 %add1797 to i64
  %984 = load i8*, i8** %p2, align 8
  %arrayidx1799 = getelementptr inbounds i8, i8* %984, i64 %idxprom1798
  %985 = load i8, i8* %arrayidx1799, align 1
  %conv1800 = zext i8 %985 to i32
  %cmp1801 = icmp eq i32 %conv1800, 0
  br i1 %cmp1801, label %if.end.1821, label %lor.lhs.false.1803

lor.lhs.false.1803:                               ; preds = %for.body.1796
  %986 = load i32, i32* %idx, align 4
  %987 = load i8*, i8** %p1, align 8
  %arrayidx1804 = getelementptr inbounds i8, i8* %987, i64 4
  %988 = load i8, i8* %arrayidx1804, align 1
  %conv1805 = zext i8 %988 to i32
  %cmp1806 = icmp slt i32 %986, %conv1805
  br i1 %cmp1806, label %land.lhs.true.1808, label %if.then.1820

land.lhs.true.1808:                               ; preds = %lor.lhs.false.1803
  %989 = load i32, i32* %idx, align 4
  %add1809 = add nsw i32 2, %989
  %idxprom1810 = sext i32 %add1809 to i64
  %990 = load i8*, i8** %p2, align 8
  %arrayidx1811 = getelementptr inbounds i8, i8* %990, i64 %idxprom1810
  %991 = load i8, i8* %arrayidx1811, align 1
  %conv1812 = zext i8 %991 to i32
  %992 = load i32, i32* %idx, align 4
  %add1813 = add nsw i32 5, %992
  %idxprom1814 = sext i32 %add1813 to i64
  %993 = load i8*, i8** %p1, align 8
  %arrayidx1815 = getelementptr inbounds i8, i8* %993, i64 %idxprom1814
  %994 = load i8, i8* %arrayidx1815, align 1
  %conv1816 = zext i8 %994 to i32
  %neg = xor i32 %conv1816, -1
  %and1817 = and i32 %conv1812, %neg
  %cmp1818 = icmp eq i32 %and1817, 0
  br i1 %cmp1818, label %if.end.1821, label %if.then.1820

if.then.1820:                                     ; preds = %land.lhs.true.1808, %lor.lhs.false.1803
  br label %for.end.1824

if.end.1821:                                      ; preds = %land.lhs.true.1808, %for.body.1796
  br label %for.inc.1822

for.inc.1822:                                     ; preds = %if.end.1821
  %995 = load i32, i32* %idx, align 4
  %inc1823 = add nsw i32 %995, 1
  store i32 %inc1823, i32* %idx, align 4
  br label %for.cond.1791

for.end.1824:                                     ; preds = %if.then.1820, %for.cond.1791
  %996 = load i32, i32* %idx, align 4
  %997 = load i8*, i8** %p2, align 8
  %arrayidx1825 = getelementptr inbounds i8, i8* %997, i64 1
  %998 = load i8, i8* %arrayidx1825, align 1
  %conv1826 = zext i8 %998 to i32
  %cmp1827 = icmp eq i32 %996, %conv1826
  br i1 %cmp1827, label %if.then.1829, label %if.end.1831

if.then.1829:                                     ; preds = %for.end.1824
  %999 = load i8*, i8** %p, align 8
  %arrayidx1830 = getelementptr inbounds i8, i8* %999, i64 -3
  store i8 17, i8* %arrayidx1830, align 1
  br label %if.end.1831

if.end.1831:                                      ; preds = %if.then.1829, %for.end.1824
  br label %if.end.1881

if.else.1832:                                     ; preds = %if.else.1785
  %1000 = load i8*, i8** %p1, align 8
  %arrayidx1833 = getelementptr inbounds i8, i8* %1000, i64 3
  %1001 = load i8, i8* %arrayidx1833, align 1
  %conv1834 = zext i8 %1001 to i32
  %cmp1835 = icmp eq i32 %conv1834, 4
  br i1 %cmp1835, label %if.then.1837, label %if.end.1880

if.then.1837:                                     ; preds = %if.else.1832
  store i32 0, i32* %idx1838, align 4
  br label %for.cond.1839

for.cond.1839:                                    ; preds = %for.inc.1865, %if.then.1837
  %1002 = load i32, i32* %idx1838, align 4
  %1003 = load i8*, i8** %p2, align 8
  %arrayidx1840 = getelementptr inbounds i8, i8* %1003, i64 1
  %1004 = load i8, i8* %arrayidx1840, align 1
  %conv1841 = zext i8 %1004 to i32
  %cmp1842 = icmp slt i32 %1002, %conv1841
  br i1 %cmp1842, label %land.rhs.1844, label %land.end.1849

land.rhs.1844:                                    ; preds = %for.cond.1839
  %1005 = load i32, i32* %idx1838, align 4
  %1006 = load i8*, i8** %p1, align 8
  %arrayidx1845 = getelementptr inbounds i8, i8* %1006, i64 4
  %1007 = load i8, i8* %arrayidx1845, align 1
  %conv1846 = zext i8 %1007 to i32
  %cmp1847 = icmp slt i32 %1005, %conv1846
  br label %land.end.1849

land.end.1849:                                    ; preds = %land.rhs.1844, %for.cond.1839
  %1008 = phi i1 [ false, %for.cond.1839 ], [ %cmp1847, %land.rhs.1844 ]
  br i1 %1008, label %for.body.1851, label %for.end.1867

for.body.1851:                                    ; preds = %land.end.1849
  %1009 = load i32, i32* %idx1838, align 4
  %add1852 = add nsw i32 2, %1009
  %idxprom1853 = sext i32 %add1852 to i64
  %1010 = load i8*, i8** %p2, align 8
  %arrayidx1854 = getelementptr inbounds i8, i8* %1010, i64 %idxprom1853
  %1011 = load i8, i8* %arrayidx1854, align 1
  %conv1855 = zext i8 %1011 to i32
  %1012 = load i32, i32* %idx1838, align 4
  %add1856 = add nsw i32 5, %1012
  %idxprom1857 = sext i32 %add1856 to i64
  %1013 = load i8*, i8** %p1, align 8
  %arrayidx1858 = getelementptr inbounds i8, i8* %1013, i64 %idxprom1857
  %1014 = load i8, i8* %arrayidx1858, align 1
  %conv1859 = zext i8 %1014 to i32
  %and1860 = and i32 %conv1855, %conv1859
  %cmp1861 = icmp ne i32 %and1860, 0
  br i1 %cmp1861, label %if.then.1863, label %if.end.1864

if.then.1863:                                     ; preds = %for.body.1851
  br label %for.end.1867

if.end.1864:                                      ; preds = %for.body.1851
  br label %for.inc.1865

for.inc.1865:                                     ; preds = %if.end.1864
  %1015 = load i32, i32* %idx1838, align 4
  %inc1866 = add nsw i32 %1015, 1
  store i32 %inc1866, i32* %idx1838, align 4
  br label %for.cond.1839

for.end.1867:                                     ; preds = %if.then.1863, %land.end.1849
  %1016 = load i32, i32* %idx1838, align 4
  %1017 = load i8*, i8** %p2, align 8
  %arrayidx1868 = getelementptr inbounds i8, i8* %1017, i64 1
  %1018 = load i8, i8* %arrayidx1868, align 1
  %conv1869 = zext i8 %1018 to i32
  %cmp1870 = icmp eq i32 %1016, %conv1869
  br i1 %cmp1870, label %if.then.1877, label %lor.lhs.false.1872

lor.lhs.false.1872:                               ; preds = %for.end.1867
  %1019 = load i32, i32* %idx1838, align 4
  %1020 = load i8*, i8** %p1, align 8
  %arrayidx1873 = getelementptr inbounds i8, i8* %1020, i64 4
  %1021 = load i8, i8* %arrayidx1873, align 1
  %conv1874 = zext i8 %1021 to i32
  %cmp1875 = icmp eq i32 %1019, %conv1874
  br i1 %cmp1875, label %if.then.1877, label %if.end.1879

if.then.1877:                                     ; preds = %lor.lhs.false.1872, %for.end.1867
  %1022 = load i8*, i8** %p, align 8
  %arrayidx1878 = getelementptr inbounds i8, i8* %1022, i64 -3
  store i8 17, i8* %arrayidx1878, align 1
  br label %if.end.1879

if.end.1879:                                      ; preds = %if.then.1877, %lor.lhs.false.1872
  br label %if.end.1880

if.end.1880:                                      ; preds = %if.end.1879, %if.else.1832
  br label %if.end.1881

if.end.1881:                                      ; preds = %if.end.1880, %if.end.1831
  br label %if.end.1882

if.end.1882:                                      ; preds = %if.end.1881, %if.then.1783
  br label %if.end.1883

if.end.1883:                                      ; preds = %if.end.1882, %if.else.1752
  br label %if.end.1884

if.end.1884:                                      ; preds = %if.end.1883, %if.end.1751
  br label %if.end.1885

if.end.1885:                                      ; preds = %if.end.1884, %if.then.1665
  %1023 = load i8*, i8** %p, align 8
  %add.ptr1886 = getelementptr inbounds i8, i8* %1023, i64 -2
  store i8* %add.ptr1886, i8** %p, align 8
  %1024 = load i8*, i8** %p, align 8
  %arrayidx1887 = getelementptr inbounds i8, i8* %1024, i64 -1
  %1025 = load i8, i8* %arrayidx1887, align 1
  %conv1888 = zext i8 %1025 to i32
  %cmp1889 = icmp ne i32 %conv1888, 17
  br i1 %cmp1889, label %if.then.1891, label %if.end.1893

if.then.1891:                                     ; preds = %if.end.1885
  %1026 = load i8*, i8** %p, align 8
  %arrayidx1892 = getelementptr inbounds i8, i8* %1026, i64 -1
  store i8 13, i8* %arrayidx1892, align 1
  br label %unconditional_jump

if.end.1893:                                      ; preds = %if.end.1885
  br label %sw.bb.1894

sw.bb.1894:                                       ; preds = %if.end.572, %if.end.1893
  %avail1896 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1027 = load i32, i32* %avail1896, align 4
  %dec1897 = add i32 %1027, -1
  store i32 %dec1897, i32* %avail1896, align 4
  %idxprom1898 = zext i32 %dec1897 to i64
  %stack1899 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1028 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1899, align 8
  %arrayidx1900 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1028, i64 %idxprom1898
  %pointer1901 = bitcast %union.fail_stack_elt* %arrayidx1900 to i8**
  %1029 = load i8*, i8** %pointer1901, align 8
  store i8* %1029, i8** %string_temp, align 8
  %1030 = load i8*, i8** %string_temp, align 8
  %cmp1902 = icmp ne i8* %1030, null
  br i1 %cmp1902, label %if.then.1904, label %if.end.1905

if.then.1904:                                     ; preds = %sw.bb.1894
  %1031 = load i8*, i8** %string_temp, align 8
  store i8* %1031, i8** %sdummy, align 8
  br label %if.end.1905

if.end.1905:                                      ; preds = %if.then.1904, %sw.bb.1894
  %avail1906 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1032 = load i32, i32* %avail1906, align 4
  %dec1907 = add i32 %1032, -1
  store i32 %dec1907, i32* %avail1906, align 4
  %idxprom1908 = zext i32 %dec1907 to i64
  %stack1909 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1033 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1909, align 8
  %arrayidx1910 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1033, i64 %idxprom1908
  %pointer1911 = bitcast %union.fail_stack_elt* %arrayidx1910 to i8**
  %1034 = load i8*, i8** %pointer1911, align 8
  store i8* %1034, i8** %pdummy, align 8
  %avail1912 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1035 = load i32, i32* %avail1912, align 4
  %dec1913 = add i32 %1035, -1
  store i32 %dec1913, i32* %avail1912, align 4
  %idxprom1914 = zext i32 %dec1913 to i64
  %stack1915 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1036 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1915, align 8
  %arrayidx1916 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1036, i64 %idxprom1914
  %integer1917 = bitcast %union.fail_stack_elt* %arrayidx1916 to i32*
  %1037 = load i32, i32* %integer1917, align 4
  %conv1918 = sext i32 %1037 to i64
  store i64 %conv1918, i64* %dummy_high_reg, align 8
  %avail1919 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1038 = load i32, i32* %avail1919, align 4
  %dec1920 = add i32 %1038, -1
  store i32 %dec1920, i32* %avail1919, align 4
  %idxprom1921 = zext i32 %dec1920 to i64
  %stack1922 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1039 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1922, align 8
  %arrayidx1923 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1039, i64 %idxprom1921
  %integer1924 = bitcast %union.fail_stack_elt* %arrayidx1923 to i32*
  %1040 = load i32, i32* %integer1924, align 4
  %conv1925 = sext i32 %1040 to i64
  store i64 %conv1925, i64* %dummy_low_reg, align 8
  %1041 = load i64, i64* %dummy_high_reg, align 8
  store i64 %1041, i64* %this_reg1895, align 8
  br label %for.cond.1926

for.cond.1926:                                    ; preds = %for.inc.1951, %if.end.1905
  %1042 = load i64, i64* %this_reg1895, align 8
  %1043 = load i64, i64* %dummy_low_reg, align 8
  %cmp1927 = icmp uge i64 %1042, %1043
  br i1 %cmp1927, label %for.body.1929, label %for.end.1953

for.body.1929:                                    ; preds = %for.cond.1926
  %1044 = load i64, i64* %this_reg1895, align 8
  %1045 = load %union.register_info_type*, %union.register_info_type** %reg_info_dummy, align 8
  %arrayidx1930 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %1045, i64 %1044
  %word1931 = bitcast %union.register_info_type* %arrayidx1930 to %union.fail_stack_elt*
  %avail1932 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1046 = load i32, i32* %avail1932, align 4
  %dec1933 = add i32 %1046, -1
  store i32 %dec1933, i32* %avail1932, align 4
  %idxprom1934 = zext i32 %dec1933 to i64
  %stack1935 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1047 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1935, align 8
  %arrayidx1936 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1047, i64 %idxprom1934
  %1048 = bitcast %union.fail_stack_elt* %word1931 to i8*
  %1049 = bitcast %union.fail_stack_elt* %arrayidx1936 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1048, i8* %1049, i64 8, i32 8, i1 false)
  %avail1937 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1050 = load i32, i32* %avail1937, align 4
  %dec1938 = add i32 %1050, -1
  store i32 %dec1938, i32* %avail1937, align 4
  %idxprom1939 = zext i32 %dec1938 to i64
  %stack1940 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1051 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1940, align 8
  %arrayidx1941 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1051, i64 %idxprom1939
  %pointer1942 = bitcast %union.fail_stack_elt* %arrayidx1941 to i8**
  %1052 = load i8*, i8** %pointer1942, align 8
  %1053 = load i64, i64* %this_reg1895, align 8
  %1054 = load i8**, i8*** %reg_dummy, align 8
  %arrayidx1943 = getelementptr inbounds i8*, i8** %1054, i64 %1053
  store i8* %1052, i8** %arrayidx1943, align 8
  %avail1944 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1055 = load i32, i32* %avail1944, align 4
  %dec1945 = add i32 %1055, -1
  store i32 %dec1945, i32* %avail1944, align 4
  %idxprom1946 = zext i32 %dec1945 to i64
  %stack1947 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1056 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1947, align 8
  %arrayidx1948 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1056, i64 %idxprom1946
  %pointer1949 = bitcast %union.fail_stack_elt* %arrayidx1948 to i8**
  %1057 = load i8*, i8** %pointer1949, align 8
  %1058 = load i64, i64* %this_reg1895, align 8
  %1059 = load i8**, i8*** %reg_dummy, align 8
  %arrayidx1950 = getelementptr inbounds i8*, i8** %1059, i64 %1058
  store i8* %1057, i8** %arrayidx1950, align 8
  br label %for.inc.1951

for.inc.1951:                                     ; preds = %for.body.1929
  %1060 = load i64, i64* %this_reg1895, align 8
  %dec1952 = add i64 %1060, -1
  store i64 %dec1952, i64* %this_reg1895, align 8
  br label %for.cond.1926

for.end.1953:                                     ; preds = %for.cond.1926
  store i32 0, i32* %set_regs_matched_done, align 4
  br label %unconditional_jump

unconditional_jump:                               ; preds = %do.end.2233, %do.end.2070, %sw.bb.1970, %for.end.1953, %if.then.1891
  br label %sw.bb.1954

sw.bb.1954:                                       ; preds = %if.end.572, %unconditional_jump
  br label %do.body.1955

do.body.1955:                                     ; preds = %sw.bb.1954
  br label %do.body.1956

do.body.1956:                                     ; preds = %do.body.1955
  %1061 = load i8*, i8** %p, align 8
  %1062 = load i8, i8* %1061, align 1
  %conv1957 = zext i8 %1062 to i32
  %and1958 = and i32 %conv1957, 255
  store i32 %and1958, i32* %mcnt, align 4
  %1063 = load i8*, i8** %p, align 8
  %add.ptr1959 = getelementptr inbounds i8, i8* %1063, i64 1
  %1064 = load i8, i8* %add.ptr1959, align 1
  %conv1960 = sext i8 %1064 to i32
  %shl1961 = shl i32 %conv1960, 8
  %1065 = load i32, i32* %mcnt, align 4
  %add1962 = add nsw i32 %1065, %shl1961
  store i32 %add1962, i32* %mcnt, align 4
  br label %do.end.1964

do.end.1964:                                      ; preds = %do.body.1956
  %1066 = load i8*, i8** %p, align 8
  %add.ptr1965 = getelementptr inbounds i8, i8* %1066, i64 2
  store i8* %add.ptr1965, i8** %p, align 8
  br label %do.end.1967

do.end.1967:                                      ; preds = %do.end.1964
  %1067 = load i32, i32* %mcnt, align 4
  %1068 = load i8*, i8** %p, align 8
  %idx.ext1968 = sext i32 %1067 to i64
  %add.ptr1969 = getelementptr inbounds i8, i8* %1068, i64 %idx.ext1968
  store i8* %add.ptr1969, i8** %p, align 8
  br label %sw.epilog.2661

sw.bb.1970:                                       ; preds = %if.end.572
  br label %unconditional_jump

sw.bb.1971:                                       ; preds = %if.end.572
  br label %do.body.1972

do.body.1972:                                     ; preds = %sw.bb.1971
  br label %while.cond.1975

while.cond.1975:                                  ; preds = %if.end.2013, %do.body.1972
  %size1976 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %1069 = load i32, i32* %size1976, align 4
  %avail1977 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1070 = load i32, i32* %avail1977, align 4
  %sub1978 = sub i32 %1069, %1070
  %conv1979 = zext i32 %sub1978 to i64
  %1071 = load i64, i64* %highest_active_reg, align 8
  %1072 = load i64, i64* %lowest_active_reg, align 8
  %sub1980 = sub i64 %1071, %1072
  %add1981 = add i64 %sub1980, 1
  %mul1982 = mul i64 %add1981, 3
  %add1983 = add i64 %mul1982, 4
  %cmp1984 = icmp ult i64 %conv1979, %add1983
  br i1 %cmp1984, label %while.body.1986, label %while.end.2014

while.body.1986:                                  ; preds = %while.cond.1975
  %size1987 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %1073 = load i32, i32* %size1987, align 4
  %1074 = load i32, i32* @re_max_failures, align 4
  %mul1988 = mul nsw i32 %1074, 19
  %cmp1989 = icmp ugt i32 %1073, %mul1988
  br i1 %cmp1989, label %cond.true.1991, label %cond.false.1992

cond.true.1991:                                   ; preds = %while.body.1986
  br i1 false, label %if.end.2013, label %if.then.2012

cond.false.1992:                                  ; preds = %while.body.1986
  %size1993 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %1075 = load i32, i32* %size1993, align 4
  %shl1994 = shl i32 %1075, 1
  %conv1995 = zext i32 %shl1994 to i64
  %mul1996 = mul i64 %conv1995, 8
  %1076 = alloca i8, i64 %mul1996
  store i8* %1076, i8** %destination1973, align 8
  %1077 = load i8*, i8** %destination1973, align 8
  %stack1997 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1078 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack1997, align 8
  %1079 = bitcast %union.fail_stack_elt* %1078 to i8*
  %size1998 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %1080 = load i32, i32* %size1998, align 4
  %conv1999 = zext i32 %1080 to i64
  %mul2000 = mul i64 %conv1999, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1077, i8* %1079, i64 %mul2000, i32 1, i1 false)
  %1081 = bitcast i8* %1077 to %union.fail_stack_elt*
  %stack2001 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  store %union.fail_stack_elt* %1081, %union.fail_stack_elt** %stack2001, align 8
  %stack2002 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1082 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2002, align 8
  %cmp2003 = icmp eq %union.fail_stack_elt* %1082, null
  br i1 %cmp2003, label %cond.true.2005, label %cond.false.2006

cond.true.2005:                                   ; preds = %cond.false.1992
  br label %cond.end.2009

cond.false.2006:                                  ; preds = %cond.false.1992
  %size2007 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %1083 = load i32, i32* %size2007, align 4
  %shl2008 = shl i32 %1083, 1
  store i32 %shl2008, i32* %size2007, align 4
  br label %cond.end.2009

cond.end.2009:                                    ; preds = %cond.false.2006, %cond.true.2005
  %cond2010 = phi i32 [ 0, %cond.true.2005 ], [ 1, %cond.false.2006 ]
  %tobool2011 = icmp ne i32 %cond2010, 0
  br i1 %tobool2011, label %if.end.2013, label %if.then.2012

if.then.2012:                                     ; preds = %cond.end.2009, %cond.true.1991
  store i32 -2, i32* %retval
  br label %return

if.end.2013:                                      ; preds = %cond.end.2009, %cond.true.1991
  br label %while.cond.1975

while.end.2014:                                   ; preds = %while.cond.1975
  %1084 = load i64, i64* %lowest_active_reg, align 8
  store i64 %1084, i64* %this_reg1974, align 8
  br label %for.cond.2015

for.cond.2015:                                    ; preds = %for.inc.2040, %while.end.2014
  %1085 = load i64, i64* %this_reg1974, align 8
  %1086 = load i64, i64* %highest_active_reg, align 8
  %cmp2016 = icmp ule i64 %1085, %1086
  br i1 %cmp2016, label %for.body.2018, label %for.end.2042

for.body.2018:                                    ; preds = %for.cond.2015
  %1087 = load i64, i64* %this_reg1974, align 8
  %1088 = load i8**, i8*** %regstart, align 8
  %arrayidx2019 = getelementptr inbounds i8*, i8** %1088, i64 %1087
  %1089 = load i8*, i8** %arrayidx2019, align 8
  %avail2020 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1090 = load i32, i32* %avail2020, align 4
  %inc2021 = add i32 %1090, 1
  store i32 %inc2021, i32* %avail2020, align 4
  %idxprom2022 = zext i32 %1090 to i64
  %stack2023 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1091 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2023, align 8
  %arrayidx2024 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1091, i64 %idxprom2022
  %pointer2025 = bitcast %union.fail_stack_elt* %arrayidx2024 to i8**
  store i8* %1089, i8** %pointer2025, align 8
  %1092 = load i64, i64* %this_reg1974, align 8
  %1093 = load i8**, i8*** %regend, align 8
  %arrayidx2026 = getelementptr inbounds i8*, i8** %1093, i64 %1092
  %1094 = load i8*, i8** %arrayidx2026, align 8
  %avail2027 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1095 = load i32, i32* %avail2027, align 4
  %inc2028 = add i32 %1095, 1
  store i32 %inc2028, i32* %avail2027, align 4
  %idxprom2029 = zext i32 %1095 to i64
  %stack2030 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1096 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2030, align 8
  %arrayidx2031 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1096, i64 %idxprom2029
  %pointer2032 = bitcast %union.fail_stack_elt* %arrayidx2031 to i8**
  store i8* %1094, i8** %pointer2032, align 8
  %avail2033 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1097 = load i32, i32* %avail2033, align 4
  %inc2034 = add i32 %1097, 1
  store i32 %inc2034, i32* %avail2033, align 4
  %idxprom2035 = zext i32 %1097 to i64
  %stack2036 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1098 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2036, align 8
  %arrayidx2037 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1098, i64 %idxprom2035
  %1099 = load i64, i64* %this_reg1974, align 8
  %1100 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx2038 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %1100, i64 %1099
  %word2039 = bitcast %union.register_info_type* %arrayidx2038 to %union.fail_stack_elt*
  %1101 = bitcast %union.fail_stack_elt* %arrayidx2037 to i8*
  %1102 = bitcast %union.fail_stack_elt* %word2039 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1101, i8* %1102, i64 8, i32 8, i1 false)
  br label %for.inc.2040

for.inc.2040:                                     ; preds = %for.body.2018
  %1103 = load i64, i64* %this_reg1974, align 8
  %inc2041 = add i64 %1103, 1
  store i64 %inc2041, i64* %this_reg1974, align 8
  br label %for.cond.2015

for.end.2042:                                     ; preds = %for.cond.2015
  %1104 = load i64, i64* %lowest_active_reg, align 8
  %conv2043 = trunc i64 %1104 to i32
  %avail2044 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1105 = load i32, i32* %avail2044, align 4
  %inc2045 = add i32 %1105, 1
  store i32 %inc2045, i32* %avail2044, align 4
  %idxprom2046 = zext i32 %1105 to i64
  %stack2047 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1106 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2047, align 8
  %arrayidx2048 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1106, i64 %idxprom2046
  %integer2049 = bitcast %union.fail_stack_elt* %arrayidx2048 to i32*
  store i32 %conv2043, i32* %integer2049, align 4
  %1107 = load i64, i64* %highest_active_reg, align 8
  %conv2050 = trunc i64 %1107 to i32
  %avail2051 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1108 = load i32, i32* %avail2051, align 4
  %inc2052 = add i32 %1108, 1
  store i32 %inc2052, i32* %avail2051, align 4
  %idxprom2053 = zext i32 %1108 to i64
  %stack2054 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1109 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2054, align 8
  %arrayidx2055 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1109, i64 %idxprom2053
  %integer2056 = bitcast %union.fail_stack_elt* %arrayidx2055 to i32*
  store i32 %conv2050, i32* %integer2056, align 4
  %avail2057 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1110 = load i32, i32* %avail2057, align 4
  %inc2058 = add i32 %1110, 1
  store i32 %inc2058, i32* %avail2057, align 4
  %idxprom2059 = zext i32 %1110 to i64
  %stack2060 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1111 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2060, align 8
  %arrayidx2061 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1111, i64 %idxprom2059
  %pointer2062 = bitcast %union.fail_stack_elt* %arrayidx2061 to i8**
  store i8* null, i8** %pointer2062, align 8
  %avail2063 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1112 = load i32, i32* %avail2063, align 4
  %inc2064 = add i32 %1112, 1
  store i32 %inc2064, i32* %avail2063, align 4
  %idxprom2065 = zext i32 %1112 to i64
  %stack2066 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1113 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2066, align 8
  %arrayidx2067 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1113, i64 %idxprom2065
  %pointer2068 = bitcast %union.fail_stack_elt* %arrayidx2067 to i8**
  store i8* null, i8** %pointer2068, align 8
  br label %do.end.2070

do.end.2070:                                      ; preds = %for.end.2042
  br label %unconditional_jump

sw.bb.2071:                                       ; preds = %if.end.572
  br label %do.body.2072

do.body.2072:                                     ; preds = %sw.bb.2071
  br label %while.cond.2075

while.cond.2075:                                  ; preds = %if.end.2113, %do.body.2072
  %size2076 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %1114 = load i32, i32* %size2076, align 4
  %avail2077 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1115 = load i32, i32* %avail2077, align 4
  %sub2078 = sub i32 %1114, %1115
  %conv2079 = zext i32 %sub2078 to i64
  %1116 = load i64, i64* %highest_active_reg, align 8
  %1117 = load i64, i64* %lowest_active_reg, align 8
  %sub2080 = sub i64 %1116, %1117
  %add2081 = add i64 %sub2080, 1
  %mul2082 = mul i64 %add2081, 3
  %add2083 = add i64 %mul2082, 4
  %cmp2084 = icmp ult i64 %conv2079, %add2083
  br i1 %cmp2084, label %while.body.2086, label %while.end.2114

while.body.2086:                                  ; preds = %while.cond.2075
  %size2087 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %1118 = load i32, i32* %size2087, align 4
  %1119 = load i32, i32* @re_max_failures, align 4
  %mul2088 = mul nsw i32 %1119, 19
  %cmp2089 = icmp ugt i32 %1118, %mul2088
  br i1 %cmp2089, label %cond.true.2091, label %cond.false.2092

cond.true.2091:                                   ; preds = %while.body.2086
  br i1 false, label %if.end.2113, label %if.then.2112

cond.false.2092:                                  ; preds = %while.body.2086
  %size2093 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %1120 = load i32, i32* %size2093, align 4
  %shl2094 = shl i32 %1120, 1
  %conv2095 = zext i32 %shl2094 to i64
  %mul2096 = mul i64 %conv2095, 8
  %1121 = alloca i8, i64 %mul2096
  store i8* %1121, i8** %destination2073, align 8
  %1122 = load i8*, i8** %destination2073, align 8
  %stack2097 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1123 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2097, align 8
  %1124 = bitcast %union.fail_stack_elt* %1123 to i8*
  %size2098 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %1125 = load i32, i32* %size2098, align 4
  %conv2099 = zext i32 %1125 to i64
  %mul2100 = mul i64 %conv2099, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1122, i8* %1124, i64 %mul2100, i32 1, i1 false)
  %1126 = bitcast i8* %1122 to %union.fail_stack_elt*
  %stack2101 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  store %union.fail_stack_elt* %1126, %union.fail_stack_elt** %stack2101, align 8
  %stack2102 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1127 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2102, align 8
  %cmp2103 = icmp eq %union.fail_stack_elt* %1127, null
  br i1 %cmp2103, label %cond.true.2105, label %cond.false.2106

cond.true.2105:                                   ; preds = %cond.false.2092
  br label %cond.end.2109

cond.false.2106:                                  ; preds = %cond.false.2092
  %size2107 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 1
  %1128 = load i32, i32* %size2107, align 4
  %shl2108 = shl i32 %1128, 1
  store i32 %shl2108, i32* %size2107, align 4
  br label %cond.end.2109

cond.end.2109:                                    ; preds = %cond.false.2106, %cond.true.2105
  %cond2110 = phi i32 [ 0, %cond.true.2105 ], [ 1, %cond.false.2106 ]
  %tobool2111 = icmp ne i32 %cond2110, 0
  br i1 %tobool2111, label %if.end.2113, label %if.then.2112

if.then.2112:                                     ; preds = %cond.end.2109, %cond.true.2091
  store i32 -2, i32* %retval
  br label %return

if.end.2113:                                      ; preds = %cond.end.2109, %cond.true.2091
  br label %while.cond.2075

while.end.2114:                                   ; preds = %while.cond.2075
  %1129 = load i64, i64* %lowest_active_reg, align 8
  store i64 %1129, i64* %this_reg2074, align 8
  br label %for.cond.2115

for.cond.2115:                                    ; preds = %for.inc.2140, %while.end.2114
  %1130 = load i64, i64* %this_reg2074, align 8
  %1131 = load i64, i64* %highest_active_reg, align 8
  %cmp2116 = icmp ule i64 %1130, %1131
  br i1 %cmp2116, label %for.body.2118, label %for.end.2142

for.body.2118:                                    ; preds = %for.cond.2115
  %1132 = load i64, i64* %this_reg2074, align 8
  %1133 = load i8**, i8*** %regstart, align 8
  %arrayidx2119 = getelementptr inbounds i8*, i8** %1133, i64 %1132
  %1134 = load i8*, i8** %arrayidx2119, align 8
  %avail2120 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1135 = load i32, i32* %avail2120, align 4
  %inc2121 = add i32 %1135, 1
  store i32 %inc2121, i32* %avail2120, align 4
  %idxprom2122 = zext i32 %1135 to i64
  %stack2123 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1136 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2123, align 8
  %arrayidx2124 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1136, i64 %idxprom2122
  %pointer2125 = bitcast %union.fail_stack_elt* %arrayidx2124 to i8**
  store i8* %1134, i8** %pointer2125, align 8
  %1137 = load i64, i64* %this_reg2074, align 8
  %1138 = load i8**, i8*** %regend, align 8
  %arrayidx2126 = getelementptr inbounds i8*, i8** %1138, i64 %1137
  %1139 = load i8*, i8** %arrayidx2126, align 8
  %avail2127 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1140 = load i32, i32* %avail2127, align 4
  %inc2128 = add i32 %1140, 1
  store i32 %inc2128, i32* %avail2127, align 4
  %idxprom2129 = zext i32 %1140 to i64
  %stack2130 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1141 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2130, align 8
  %arrayidx2131 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1141, i64 %idxprom2129
  %pointer2132 = bitcast %union.fail_stack_elt* %arrayidx2131 to i8**
  store i8* %1139, i8** %pointer2132, align 8
  %avail2133 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1142 = load i32, i32* %avail2133, align 4
  %inc2134 = add i32 %1142, 1
  store i32 %inc2134, i32* %avail2133, align 4
  %idxprom2135 = zext i32 %1142 to i64
  %stack2136 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1143 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2136, align 8
  %arrayidx2137 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1143, i64 %idxprom2135
  %1144 = load i64, i64* %this_reg2074, align 8
  %1145 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx2138 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %1145, i64 %1144
  %word2139 = bitcast %union.register_info_type* %arrayidx2138 to %union.fail_stack_elt*
  %1146 = bitcast %union.fail_stack_elt* %arrayidx2137 to i8*
  %1147 = bitcast %union.fail_stack_elt* %word2139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1146, i8* %1147, i64 8, i32 8, i1 false)
  br label %for.inc.2140

for.inc.2140:                                     ; preds = %for.body.2118
  %1148 = load i64, i64* %this_reg2074, align 8
  %inc2141 = add i64 %1148, 1
  store i64 %inc2141, i64* %this_reg2074, align 8
  br label %for.cond.2115

for.end.2142:                                     ; preds = %for.cond.2115
  %1149 = load i64, i64* %lowest_active_reg, align 8
  %conv2143 = trunc i64 %1149 to i32
  %avail2144 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1150 = load i32, i32* %avail2144, align 4
  %inc2145 = add i32 %1150, 1
  store i32 %inc2145, i32* %avail2144, align 4
  %idxprom2146 = zext i32 %1150 to i64
  %stack2147 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1151 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2147, align 8
  %arrayidx2148 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1151, i64 %idxprom2146
  %integer2149 = bitcast %union.fail_stack_elt* %arrayidx2148 to i32*
  store i32 %conv2143, i32* %integer2149, align 4
  %1152 = load i64, i64* %highest_active_reg, align 8
  %conv2150 = trunc i64 %1152 to i32
  %avail2151 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1153 = load i32, i32* %avail2151, align 4
  %inc2152 = add i32 %1153, 1
  store i32 %inc2152, i32* %avail2151, align 4
  %idxprom2153 = zext i32 %1153 to i64
  %stack2154 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1154 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2154, align 8
  %arrayidx2155 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1154, i64 %idxprom2153
  %integer2156 = bitcast %union.fail_stack_elt* %arrayidx2155 to i32*
  store i32 %conv2150, i32* %integer2156, align 4
  %avail2157 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1155 = load i32, i32* %avail2157, align 4
  %inc2158 = add i32 %1155, 1
  store i32 %inc2158, i32* %avail2157, align 4
  %idxprom2159 = zext i32 %1155 to i64
  %stack2160 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1156 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2160, align 8
  %arrayidx2161 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1156, i64 %idxprom2159
  %pointer2162 = bitcast %union.fail_stack_elt* %arrayidx2161 to i8**
  store i8* null, i8** %pointer2162, align 8
  %avail2163 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1157 = load i32, i32* %avail2163, align 4
  %inc2164 = add i32 %1157, 1
  store i32 %inc2164, i32* %avail2163, align 4
  %idxprom2165 = zext i32 %1157 to i64
  %stack2166 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1158 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2166, align 8
  %arrayidx2167 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1158, i64 %idxprom2165
  %pointer2168 = bitcast %union.fail_stack_elt* %arrayidx2167 to i8**
  store i8* null, i8** %pointer2168, align 8
  br label %do.end.2170

do.end.2170:                                      ; preds = %for.end.2142
  br label %sw.epilog.2661

sw.bb.2171:                                       ; preds = %if.end.572
  br label %do.body.2172

do.body.2172:                                     ; preds = %sw.bb.2171
  %1159 = load i8*, i8** %p, align 8
  %add.ptr2173 = getelementptr inbounds i8, i8* %1159, i64 2
  %1160 = load i8, i8* %add.ptr2173, align 1
  %conv2174 = zext i8 %1160 to i32
  %and2175 = and i32 %conv2174, 255
  store i32 %and2175, i32* %mcnt, align 4
  %1161 = load i8*, i8** %p, align 8
  %add.ptr2176 = getelementptr inbounds i8, i8* %1161, i64 2
  %add.ptr2177 = getelementptr inbounds i8, i8* %add.ptr2176, i64 1
  %1162 = load i8, i8* %add.ptr2177, align 1
  %conv2178 = sext i8 %1162 to i32
  %shl2179 = shl i32 %conv2178, 8
  %1163 = load i32, i32* %mcnt, align 4
  %add2180 = add nsw i32 %1163, %shl2179
  store i32 %add2180, i32* %mcnt, align 4
  br label %do.end.2182

do.end.2182:                                      ; preds = %do.body.2172
  %1164 = load i32, i32* %mcnt, align 4
  %cmp2183 = icmp sgt i32 %1164, 0
  br i1 %cmp2183, label %if.then.2185, label %if.else.2200

if.then.2185:                                     ; preds = %do.end.2182
  %1165 = load i32, i32* %mcnt, align 4
  %dec2186 = add nsw i32 %1165, -1
  store i32 %dec2186, i32* %mcnt, align 4
  %1166 = load i8*, i8** %p, align 8
  %add.ptr2187 = getelementptr inbounds i8, i8* %1166, i64 2
  store i8* %add.ptr2187, i8** %p, align 8
  br label %do.body.2188

do.body.2188:                                     ; preds = %if.then.2185
  br label %do.body.2189

do.body.2189:                                     ; preds = %do.body.2188
  %1167 = load i32, i32* %mcnt, align 4
  %and2190 = and i32 %1167, 255
  %conv2191 = trunc i32 %and2190 to i8
  %1168 = load i8*, i8** %p, align 8
  %arrayidx2192 = getelementptr inbounds i8, i8* %1168, i64 0
  store i8 %conv2191, i8* %arrayidx2192, align 1
  %1169 = load i32, i32* %mcnt, align 4
  %shr = ashr i32 %1169, 8
  %conv2193 = trunc i32 %shr to i8
  %1170 = load i8*, i8** %p, align 8
  %arrayidx2194 = getelementptr inbounds i8, i8* %1170, i64 1
  store i8 %conv2193, i8* %arrayidx2194, align 1
  br label %do.end.2196

do.end.2196:                                      ; preds = %do.body.2189
  %1171 = load i8*, i8** %p, align 8
  %add.ptr2197 = getelementptr inbounds i8, i8* %1171, i64 2
  store i8* %add.ptr2197, i8** %p, align 8
  br label %do.end.2199

do.end.2199:                                      ; preds = %do.end.2196
  br label %if.end.2207

if.else.2200:                                     ; preds = %do.end.2182
  %1172 = load i32, i32* %mcnt, align 4
  %cmp2201 = icmp eq i32 %1172, 0
  br i1 %cmp2201, label %if.then.2203, label %if.end.2206

if.then.2203:                                     ; preds = %if.else.2200
  %1173 = load i8*, i8** %p, align 8
  %arrayidx2204 = getelementptr inbounds i8, i8* %1173, i64 2
  store i8 0, i8* %arrayidx2204, align 1
  %1174 = load i8*, i8** %p, align 8
  %arrayidx2205 = getelementptr inbounds i8, i8* %1174, i64 3
  store i8 0, i8* %arrayidx2205, align 1
  br label %on_failure

if.end.2206:                                      ; preds = %if.else.2200
  br label %if.end.2207

if.end.2207:                                      ; preds = %if.end.2206, %do.end.2199
  br label %sw.epilog.2661

sw.bb.2208:                                       ; preds = %if.end.572
  br label %do.body.2209

do.body.2209:                                     ; preds = %sw.bb.2208
  %1175 = load i8*, i8** %p, align 8
  %add.ptr2210 = getelementptr inbounds i8, i8* %1175, i64 2
  %1176 = load i8, i8* %add.ptr2210, align 1
  %conv2211 = zext i8 %1176 to i32
  %and2212 = and i32 %conv2211, 255
  store i32 %and2212, i32* %mcnt, align 4
  %1177 = load i8*, i8** %p, align 8
  %add.ptr2213 = getelementptr inbounds i8, i8* %1177, i64 2
  %add.ptr2214 = getelementptr inbounds i8, i8* %add.ptr2213, i64 1
  %1178 = load i8, i8* %add.ptr2214, align 1
  %conv2215 = sext i8 %1178 to i32
  %shl2216 = shl i32 %conv2215, 8
  %1179 = load i32, i32* %mcnt, align 4
  %add2217 = add nsw i32 %1179, %shl2216
  store i32 %add2217, i32* %mcnt, align 4
  br label %do.end.2219

do.end.2219:                                      ; preds = %do.body.2209
  %1180 = load i32, i32* %mcnt, align 4
  %tobool2220 = icmp ne i32 %1180, 0
  br i1 %tobool2220, label %if.then.2221, label %if.else.2234

if.then.2221:                                     ; preds = %do.end.2219
  %1181 = load i32, i32* %mcnt, align 4
  %dec2222 = add nsw i32 %1181, -1
  store i32 %dec2222, i32* %mcnt, align 4
  br label %do.body.2223

do.body.2223:                                     ; preds = %if.then.2221
  %1182 = load i32, i32* %mcnt, align 4
  %and2224 = and i32 %1182, 255
  %conv2225 = trunc i32 %and2224 to i8
  %1183 = load i8*, i8** %p, align 8
  %add.ptr2226 = getelementptr inbounds i8, i8* %1183, i64 2
  %arrayidx2227 = getelementptr inbounds i8, i8* %add.ptr2226, i64 0
  store i8 %conv2225, i8* %arrayidx2227, align 1
  %1184 = load i32, i32* %mcnt, align 4
  %shr2228 = ashr i32 %1184, 8
  %conv2229 = trunc i32 %shr2228 to i8
  %1185 = load i8*, i8** %p, align 8
  %add.ptr2230 = getelementptr inbounds i8, i8* %1185, i64 2
  %arrayidx2231 = getelementptr inbounds i8, i8* %add.ptr2230, i64 1
  store i8 %conv2229, i8* %arrayidx2231, align 1
  br label %do.end.2233

do.end.2233:                                      ; preds = %do.body.2223
  br label %unconditional_jump

if.else.2234:                                     ; preds = %do.end.2219
  %1186 = load i8*, i8** %p, align 8
  %add.ptr2235 = getelementptr inbounds i8, i8* %1186, i64 4
  store i8* %add.ptr2235, i8** %p, align 8
  br label %if.end.2236

if.end.2236:                                      ; preds = %if.else.2234
  br label %sw.epilog.2661

sw.bb.2237:                                       ; preds = %if.end.572
  br label %do.body.2238

do.body.2238:                                     ; preds = %sw.bb.2237
  br label %do.body.2239

do.body.2239:                                     ; preds = %do.body.2238
  %1187 = load i8*, i8** %p, align 8
  %1188 = load i8, i8* %1187, align 1
  %conv2240 = zext i8 %1188 to i32
  %and2241 = and i32 %conv2240, 255
  store i32 %and2241, i32* %mcnt, align 4
  %1189 = load i8*, i8** %p, align 8
  %add.ptr2242 = getelementptr inbounds i8, i8* %1189, i64 1
  %1190 = load i8, i8* %add.ptr2242, align 1
  %conv2243 = sext i8 %1190 to i32
  %shl2244 = shl i32 %conv2243, 8
  %1191 = load i32, i32* %mcnt, align 4
  %add2245 = add nsw i32 %1191, %shl2244
  store i32 %add2245, i32* %mcnt, align 4
  br label %do.end.2247

do.end.2247:                                      ; preds = %do.body.2239
  %1192 = load i8*, i8** %p, align 8
  %add.ptr2248 = getelementptr inbounds i8, i8* %1192, i64 2
  store i8* %add.ptr2248, i8** %p, align 8
  br label %do.end.2250

do.end.2250:                                      ; preds = %do.end.2247
  %1193 = load i8*, i8** %p, align 8
  %1194 = load i32, i32* %mcnt, align 4
  %idx.ext2251 = sext i32 %1194 to i64
  %add.ptr2252 = getelementptr inbounds i8, i8* %1193, i64 %idx.ext2251
  store i8* %add.ptr2252, i8** %p1, align 8
  br label %do.body.2253

do.body.2253:                                     ; preds = %do.end.2250
  br label %do.body.2254

do.body.2254:                                     ; preds = %do.body.2253
  %1195 = load i8*, i8** %p, align 8
  %1196 = load i8, i8* %1195, align 1
  %conv2255 = zext i8 %1196 to i32
  %and2256 = and i32 %conv2255, 255
  store i32 %and2256, i32* %mcnt, align 4
  %1197 = load i8*, i8** %p, align 8
  %add.ptr2257 = getelementptr inbounds i8, i8* %1197, i64 1
  %1198 = load i8, i8* %add.ptr2257, align 1
  %conv2258 = sext i8 %1198 to i32
  %shl2259 = shl i32 %conv2258, 8
  %1199 = load i32, i32* %mcnt, align 4
  %add2260 = add nsw i32 %1199, %shl2259
  store i32 %add2260, i32* %mcnt, align 4
  br label %do.end.2262

do.end.2262:                                      ; preds = %do.body.2254
  %1200 = load i8*, i8** %p, align 8
  %add.ptr2263 = getelementptr inbounds i8, i8* %1200, i64 2
  store i8* %add.ptr2263, i8** %p, align 8
  br label %do.end.2265

do.end.2265:                                      ; preds = %do.end.2262
  br label %do.body.2266

do.body.2266:                                     ; preds = %do.end.2265
  %1201 = load i32, i32* %mcnt, align 4
  %and2267 = and i32 %1201, 255
  %conv2268 = trunc i32 %and2267 to i8
  %1202 = load i8*, i8** %p1, align 8
  %arrayidx2269 = getelementptr inbounds i8, i8* %1202, i64 0
  store i8 %conv2268, i8* %arrayidx2269, align 1
  %1203 = load i32, i32* %mcnt, align 4
  %shr2270 = ashr i32 %1203, 8
  %conv2271 = trunc i32 %shr2270 to i8
  %1204 = load i8*, i8** %p1, align 8
  %arrayidx2272 = getelementptr inbounds i8, i8* %1204, i64 1
  store i8 %conv2271, i8* %arrayidx2272, align 1
  br label %do.end.2274

do.end.2274:                                      ; preds = %do.body.2266
  br label %sw.epilog.2661

sw.bb.2275:                                       ; preds = %if.end.572
  %1205 = load i8*, i8** %d, align 8
  %1206 = load i32, i32* %size1.addr, align 4
  %tobool2276 = icmp ne i32 %1206, 0
  br i1 %tobool2276, label %cond.true.2277, label %cond.false.2278

cond.true.2277:                                   ; preds = %sw.bb.2275
  %1207 = load i8*, i8** %string1.addr, align 8
  br label %cond.end.2279

cond.false.2278:                                  ; preds = %sw.bb.2275
  %1208 = load i8*, i8** %string2.addr, align 8
  br label %cond.end.2279

cond.end.2279:                                    ; preds = %cond.false.2278, %cond.true.2277
  %cond2280 = phi i8* [ %1207, %cond.true.2277 ], [ %1208, %cond.false.2278 ]
  %cmp2281 = icmp eq i8* %1205, %cond2280
  br i1 %cmp2281, label %if.then.2288, label %lor.lhs.false.2283

lor.lhs.false.2283:                               ; preds = %cond.end.2279
  %1209 = load i32, i32* %size2.addr, align 4
  %tobool2284 = icmp ne i32 %1209, 0
  br i1 %tobool2284, label %lor.lhs.false.2285, label %if.then.2288

lor.lhs.false.2285:                               ; preds = %lor.lhs.false.2283
  %1210 = load i8*, i8** %d, align 8
  %1211 = load i8*, i8** %end2, align 8
  %cmp2286 = icmp eq i8* %1210, %1211
  br i1 %cmp2286, label %if.then.2288, label %if.end.2289

if.then.2288:                                     ; preds = %lor.lhs.false.2285, %lor.lhs.false.2283, %cond.end.2279
  br label %sw.epilog.2661

if.end.2289:                                      ; preds = %lor.lhs.false.2285
  %1212 = load i8*, i8** %d, align 8
  %add.ptr2290 = getelementptr inbounds i8, i8* %1212, i64 -1
  %1213 = load i8*, i8** %end1, align 8
  %cmp2291 = icmp eq i8* %add.ptr2290, %1213
  br i1 %cmp2291, label %cond.true.2293, label %cond.false.2295

cond.true.2293:                                   ; preds = %if.end.2289
  %1214 = load i8*, i8** %string2.addr, align 8
  %1215 = load i8, i8* %1214, align 1
  %conv2294 = sext i8 %1215 to i32
  br label %cond.end.2308

cond.false.2295:                                  ; preds = %if.end.2289
  %1216 = load i8*, i8** %d, align 8
  %add.ptr2296 = getelementptr inbounds i8, i8* %1216, i64 -1
  %1217 = load i8*, i8** %string2.addr, align 8
  %add.ptr2297 = getelementptr inbounds i8, i8* %1217, i64 -1
  %cmp2298 = icmp eq i8* %add.ptr2296, %add.ptr2297
  br i1 %cmp2298, label %cond.true.2300, label %cond.false.2303

cond.true.2300:                                   ; preds = %cond.false.2295
  %1218 = load i8*, i8** %end1, align 8
  %add.ptr2301 = getelementptr inbounds i8, i8* %1218, i64 -1
  %1219 = load i8, i8* %add.ptr2301, align 1
  %conv2302 = sext i8 %1219 to i32
  br label %cond.end.2306

cond.false.2303:                                  ; preds = %cond.false.2295
  %1220 = load i8*, i8** %d, align 8
  %add.ptr2304 = getelementptr inbounds i8, i8* %1220, i64 -1
  %1221 = load i8, i8* %add.ptr2304, align 1
  %conv2305 = sext i8 %1221 to i32
  br label %cond.end.2306

cond.end.2306:                                    ; preds = %cond.false.2303, %cond.true.2300
  %cond2307 = phi i32 [ %conv2302, %cond.true.2300 ], [ %conv2305, %cond.false.2303 ]
  br label %cond.end.2308

cond.end.2308:                                    ; preds = %cond.end.2306, %cond.true.2293
  %cond2309 = phi i32 [ %conv2294, %cond.true.2293 ], [ %cond2307, %cond.end.2306 ]
  %idxprom2310 = sext i32 %cond2309 to i64
  %1222 = load i8*, i8** @re_syntax_table, align 8
  %arrayidx2311 = getelementptr inbounds i8, i8* %1222, i64 %idxprom2310
  %1223 = load i8, i8* %arrayidx2311, align 1
  %conv2312 = sext i8 %1223 to i32
  %cmp2313 = icmp eq i32 %conv2312, 1
  %conv2314 = zext i1 %cmp2313 to i32
  %conv2315 = trunc i32 %conv2314 to i8
  store i8 %conv2315, i8* %prevchar, align 1
  %1224 = load i8*, i8** %d, align 8
  %1225 = load i8*, i8** %end1, align 8
  %cmp2316 = icmp eq i8* %1224, %1225
  br i1 %cmp2316, label %cond.true.2318, label %cond.false.2320

cond.true.2318:                                   ; preds = %cond.end.2308
  %1226 = load i8*, i8** %string2.addr, align 8
  %1227 = load i8, i8* %1226, align 1
  %conv2319 = sext i8 %1227 to i32
  br label %cond.end.2331

cond.false.2320:                                  ; preds = %cond.end.2308
  %1228 = load i8*, i8** %d, align 8
  %1229 = load i8*, i8** %string2.addr, align 8
  %add.ptr2321 = getelementptr inbounds i8, i8* %1229, i64 -1
  %cmp2322 = icmp eq i8* %1228, %add.ptr2321
  br i1 %cmp2322, label %cond.true.2324, label %cond.false.2327

cond.true.2324:                                   ; preds = %cond.false.2320
  %1230 = load i8*, i8** %end1, align 8
  %add.ptr2325 = getelementptr inbounds i8, i8* %1230, i64 -1
  %1231 = load i8, i8* %add.ptr2325, align 1
  %conv2326 = sext i8 %1231 to i32
  br label %cond.end.2329

cond.false.2327:                                  ; preds = %cond.false.2320
  %1232 = load i8*, i8** %d, align 8
  %1233 = load i8, i8* %1232, align 1
  %conv2328 = sext i8 %1233 to i32
  br label %cond.end.2329

cond.end.2329:                                    ; preds = %cond.false.2327, %cond.true.2324
  %cond2330 = phi i32 [ %conv2326, %cond.true.2324 ], [ %conv2328, %cond.false.2327 ]
  br label %cond.end.2331

cond.end.2331:                                    ; preds = %cond.end.2329, %cond.true.2318
  %cond2332 = phi i32 [ %conv2319, %cond.true.2318 ], [ %cond2330, %cond.end.2329 ]
  %idxprom2333 = sext i32 %cond2332 to i64
  %1234 = load i8*, i8** @re_syntax_table, align 8
  %arrayidx2334 = getelementptr inbounds i8, i8* %1234, i64 %idxprom2333
  %1235 = load i8, i8* %arrayidx2334, align 1
  %conv2335 = sext i8 %1235 to i32
  %cmp2336 = icmp eq i32 %conv2335, 1
  %conv2337 = zext i1 %cmp2336 to i32
  %conv2338 = trunc i32 %conv2337 to i8
  store i8 %conv2338, i8* %thischar, align 1
  %1236 = load i8, i8* %prevchar, align 1
  %conv2339 = sext i8 %1236 to i32
  %1237 = load i8, i8* %thischar, align 1
  %conv2340 = sext i8 %1237 to i32
  %cmp2341 = icmp ne i32 %conv2339, %conv2340
  br i1 %cmp2341, label %if.then.2343, label %if.end.2344

if.then.2343:                                     ; preds = %cond.end.2331
  br label %sw.epilog.2661

if.end.2344:                                      ; preds = %cond.end.2331
  br label %fail

sw.bb.2345:                                       ; preds = %if.end.572
  %1238 = load i8*, i8** %d, align 8
  %1239 = load i32, i32* %size1.addr, align 4
  %tobool2348 = icmp ne i32 %1239, 0
  br i1 %tobool2348, label %cond.true.2349, label %cond.false.2350

cond.true.2349:                                   ; preds = %sw.bb.2345
  %1240 = load i8*, i8** %string1.addr, align 8
  br label %cond.end.2351

cond.false.2350:                                  ; preds = %sw.bb.2345
  %1241 = load i8*, i8** %string2.addr, align 8
  br label %cond.end.2351

cond.end.2351:                                    ; preds = %cond.false.2350, %cond.true.2349
  %cond2352 = phi i8* [ %1240, %cond.true.2349 ], [ %1241, %cond.false.2350 ]
  %cmp2353 = icmp eq i8* %1238, %cond2352
  br i1 %cmp2353, label %if.then.2360, label %lor.lhs.false.2355

lor.lhs.false.2355:                               ; preds = %cond.end.2351
  %1242 = load i32, i32* %size2.addr, align 4
  %tobool2356 = icmp ne i32 %1242, 0
  br i1 %tobool2356, label %lor.lhs.false.2357, label %if.then.2360

lor.lhs.false.2357:                               ; preds = %lor.lhs.false.2355
  %1243 = load i8*, i8** %d, align 8
  %1244 = load i8*, i8** %end2, align 8
  %cmp2358 = icmp eq i8* %1243, %1244
  br i1 %cmp2358, label %if.then.2360, label %if.end.2361

if.then.2360:                                     ; preds = %lor.lhs.false.2357, %lor.lhs.false.2355, %cond.end.2351
  br label %fail

if.end.2361:                                      ; preds = %lor.lhs.false.2357
  %1245 = load i8*, i8** %d, align 8
  %add.ptr2362 = getelementptr inbounds i8, i8* %1245, i64 -1
  %1246 = load i8*, i8** %end1, align 8
  %cmp2363 = icmp eq i8* %add.ptr2362, %1246
  br i1 %cmp2363, label %cond.true.2365, label %cond.false.2367

cond.true.2365:                                   ; preds = %if.end.2361
  %1247 = load i8*, i8** %string2.addr, align 8
  %1248 = load i8, i8* %1247, align 1
  %conv2366 = sext i8 %1248 to i32
  br label %cond.end.2380

cond.false.2367:                                  ; preds = %if.end.2361
  %1249 = load i8*, i8** %d, align 8
  %add.ptr2368 = getelementptr inbounds i8, i8* %1249, i64 -1
  %1250 = load i8*, i8** %string2.addr, align 8
  %add.ptr2369 = getelementptr inbounds i8, i8* %1250, i64 -1
  %cmp2370 = icmp eq i8* %add.ptr2368, %add.ptr2369
  br i1 %cmp2370, label %cond.true.2372, label %cond.false.2375

cond.true.2372:                                   ; preds = %cond.false.2367
  %1251 = load i8*, i8** %end1, align 8
  %add.ptr2373 = getelementptr inbounds i8, i8* %1251, i64 -1
  %1252 = load i8, i8* %add.ptr2373, align 1
  %conv2374 = sext i8 %1252 to i32
  br label %cond.end.2378

cond.false.2375:                                  ; preds = %cond.false.2367
  %1253 = load i8*, i8** %d, align 8
  %add.ptr2376 = getelementptr inbounds i8, i8* %1253, i64 -1
  %1254 = load i8, i8* %add.ptr2376, align 1
  %conv2377 = sext i8 %1254 to i32
  br label %cond.end.2378

cond.end.2378:                                    ; preds = %cond.false.2375, %cond.true.2372
  %cond2379 = phi i32 [ %conv2374, %cond.true.2372 ], [ %conv2377, %cond.false.2375 ]
  br label %cond.end.2380

cond.end.2380:                                    ; preds = %cond.end.2378, %cond.true.2365
  %cond2381 = phi i32 [ %conv2366, %cond.true.2365 ], [ %cond2379, %cond.end.2378 ]
  %idxprom2382 = sext i32 %cond2381 to i64
  %1255 = load i8*, i8** @re_syntax_table, align 8
  %arrayidx2383 = getelementptr inbounds i8, i8* %1255, i64 %idxprom2382
  %1256 = load i8, i8* %arrayidx2383, align 1
  %conv2384 = sext i8 %1256 to i32
  %cmp2385 = icmp eq i32 %conv2384, 1
  %conv2386 = zext i1 %cmp2385 to i32
  %conv2387 = trunc i32 %conv2386 to i8
  store i8 %conv2387, i8* %prevchar2346, align 1
  %1257 = load i8*, i8** %d, align 8
  %1258 = load i8*, i8** %end1, align 8
  %cmp2388 = icmp eq i8* %1257, %1258
  br i1 %cmp2388, label %cond.true.2390, label %cond.false.2392

cond.true.2390:                                   ; preds = %cond.end.2380
  %1259 = load i8*, i8** %string2.addr, align 8
  %1260 = load i8, i8* %1259, align 1
  %conv2391 = sext i8 %1260 to i32
  br label %cond.end.2403

cond.false.2392:                                  ; preds = %cond.end.2380
  %1261 = load i8*, i8** %d, align 8
  %1262 = load i8*, i8** %string2.addr, align 8
  %add.ptr2393 = getelementptr inbounds i8, i8* %1262, i64 -1
  %cmp2394 = icmp eq i8* %1261, %add.ptr2393
  br i1 %cmp2394, label %cond.true.2396, label %cond.false.2399

cond.true.2396:                                   ; preds = %cond.false.2392
  %1263 = load i8*, i8** %end1, align 8
  %add.ptr2397 = getelementptr inbounds i8, i8* %1263, i64 -1
  %1264 = load i8, i8* %add.ptr2397, align 1
  %conv2398 = sext i8 %1264 to i32
  br label %cond.end.2401

cond.false.2399:                                  ; preds = %cond.false.2392
  %1265 = load i8*, i8** %d, align 8
  %1266 = load i8, i8* %1265, align 1
  %conv2400 = sext i8 %1266 to i32
  br label %cond.end.2401

cond.end.2401:                                    ; preds = %cond.false.2399, %cond.true.2396
  %cond2402 = phi i32 [ %conv2398, %cond.true.2396 ], [ %conv2400, %cond.false.2399 ]
  br label %cond.end.2403

cond.end.2403:                                    ; preds = %cond.end.2401, %cond.true.2390
  %cond2404 = phi i32 [ %conv2391, %cond.true.2390 ], [ %cond2402, %cond.end.2401 ]
  %idxprom2405 = sext i32 %cond2404 to i64
  %1267 = load i8*, i8** @re_syntax_table, align 8
  %arrayidx2406 = getelementptr inbounds i8, i8* %1267, i64 %idxprom2405
  %1268 = load i8, i8* %arrayidx2406, align 1
  %conv2407 = sext i8 %1268 to i32
  %cmp2408 = icmp eq i32 %conv2407, 1
  %conv2409 = zext i1 %cmp2408 to i32
  %conv2410 = trunc i32 %conv2409 to i8
  store i8 %conv2410, i8* %thischar2347, align 1
  %1269 = load i8, i8* %prevchar2346, align 1
  %conv2411 = sext i8 %1269 to i32
  %1270 = load i8, i8* %thischar2347, align 1
  %conv2412 = sext i8 %1270 to i32
  %cmp2413 = icmp ne i32 %conv2411, %conv2412
  br i1 %cmp2413, label %if.then.2415, label %if.end.2416

if.then.2415:                                     ; preds = %cond.end.2403
  br label %fail

if.end.2416:                                      ; preds = %cond.end.2403
  br label %sw.epilog.2661

sw.bb.2417:                                       ; preds = %if.end.572
  %1271 = load i8*, i8** %d, align 8
  %1272 = load i8*, i8** %end1, align 8
  %cmp2418 = icmp eq i8* %1271, %1272
  br i1 %cmp2418, label %cond.true.2420, label %cond.false.2422

cond.true.2420:                                   ; preds = %sw.bb.2417
  %1273 = load i8*, i8** %string2.addr, align 8
  %1274 = load i8, i8* %1273, align 1
  %conv2421 = sext i8 %1274 to i32
  br label %cond.end.2433

cond.false.2422:                                  ; preds = %sw.bb.2417
  %1275 = load i8*, i8** %d, align 8
  %1276 = load i8*, i8** %string2.addr, align 8
  %add.ptr2423 = getelementptr inbounds i8, i8* %1276, i64 -1
  %cmp2424 = icmp eq i8* %1275, %add.ptr2423
  br i1 %cmp2424, label %cond.true.2426, label %cond.false.2429

cond.true.2426:                                   ; preds = %cond.false.2422
  %1277 = load i8*, i8** %end1, align 8
  %add.ptr2427 = getelementptr inbounds i8, i8* %1277, i64 -1
  %1278 = load i8, i8* %add.ptr2427, align 1
  %conv2428 = sext i8 %1278 to i32
  br label %cond.end.2431

cond.false.2429:                                  ; preds = %cond.false.2422
  %1279 = load i8*, i8** %d, align 8
  %1280 = load i8, i8* %1279, align 1
  %conv2430 = sext i8 %1280 to i32
  br label %cond.end.2431

cond.end.2431:                                    ; preds = %cond.false.2429, %cond.true.2426
  %cond2432 = phi i32 [ %conv2428, %cond.true.2426 ], [ %conv2430, %cond.false.2429 ]
  br label %cond.end.2433

cond.end.2433:                                    ; preds = %cond.end.2431, %cond.true.2420
  %cond2434 = phi i32 [ %conv2421, %cond.true.2420 ], [ %cond2432, %cond.end.2431 ]
  %idxprom2435 = sext i32 %cond2434 to i64
  %1281 = load i8*, i8** @re_syntax_table, align 8
  %arrayidx2436 = getelementptr inbounds i8, i8* %1281, i64 %idxprom2435
  %1282 = load i8, i8* %arrayidx2436, align 1
  %conv2437 = sext i8 %1282 to i32
  %cmp2438 = icmp eq i32 %conv2437, 1
  br i1 %cmp2438, label %land.lhs.true.2440, label %if.end.2477

land.lhs.true.2440:                               ; preds = %cond.end.2433
  %1283 = load i8*, i8** %d, align 8
  %1284 = load i32, i32* %size1.addr, align 4
  %tobool2441 = icmp ne i32 %1284, 0
  br i1 %tobool2441, label %cond.true.2442, label %cond.false.2443

cond.true.2442:                                   ; preds = %land.lhs.true.2440
  %1285 = load i8*, i8** %string1.addr, align 8
  br label %cond.end.2444

cond.false.2443:                                  ; preds = %land.lhs.true.2440
  %1286 = load i8*, i8** %string2.addr, align 8
  br label %cond.end.2444

cond.end.2444:                                    ; preds = %cond.false.2443, %cond.true.2442
  %cond2445 = phi i8* [ %1285, %cond.true.2442 ], [ %1286, %cond.false.2443 ]
  %cmp2446 = icmp eq i8* %1283, %cond2445
  br i1 %cmp2446, label %if.then.2476, label %lor.lhs.false.2448

lor.lhs.false.2448:                               ; preds = %cond.end.2444
  %1287 = load i32, i32* %size2.addr, align 4
  %tobool2449 = icmp ne i32 %1287, 0
  br i1 %tobool2449, label %lor.lhs.false.2450, label %if.then.2476

lor.lhs.false.2450:                               ; preds = %lor.lhs.false.2448
  %1288 = load i8*, i8** %d, align 8
  %add.ptr2451 = getelementptr inbounds i8, i8* %1288, i64 -1
  %1289 = load i8*, i8** %end1, align 8
  %cmp2452 = icmp eq i8* %add.ptr2451, %1289
  br i1 %cmp2452, label %cond.true.2454, label %cond.false.2456

cond.true.2454:                                   ; preds = %lor.lhs.false.2450
  %1290 = load i8*, i8** %string2.addr, align 8
  %1291 = load i8, i8* %1290, align 1
  %conv2455 = sext i8 %1291 to i32
  br label %cond.end.2469

cond.false.2456:                                  ; preds = %lor.lhs.false.2450
  %1292 = load i8*, i8** %d, align 8
  %add.ptr2457 = getelementptr inbounds i8, i8* %1292, i64 -1
  %1293 = load i8*, i8** %string2.addr, align 8
  %add.ptr2458 = getelementptr inbounds i8, i8* %1293, i64 -1
  %cmp2459 = icmp eq i8* %add.ptr2457, %add.ptr2458
  br i1 %cmp2459, label %cond.true.2461, label %cond.false.2464

cond.true.2461:                                   ; preds = %cond.false.2456
  %1294 = load i8*, i8** %end1, align 8
  %add.ptr2462 = getelementptr inbounds i8, i8* %1294, i64 -1
  %1295 = load i8, i8* %add.ptr2462, align 1
  %conv2463 = sext i8 %1295 to i32
  br label %cond.end.2467

cond.false.2464:                                  ; preds = %cond.false.2456
  %1296 = load i8*, i8** %d, align 8
  %add.ptr2465 = getelementptr inbounds i8, i8* %1296, i64 -1
  %1297 = load i8, i8* %add.ptr2465, align 1
  %conv2466 = sext i8 %1297 to i32
  br label %cond.end.2467

cond.end.2467:                                    ; preds = %cond.false.2464, %cond.true.2461
  %cond2468 = phi i32 [ %conv2463, %cond.true.2461 ], [ %conv2466, %cond.false.2464 ]
  br label %cond.end.2469

cond.end.2469:                                    ; preds = %cond.end.2467, %cond.true.2454
  %cond2470 = phi i32 [ %conv2455, %cond.true.2454 ], [ %cond2468, %cond.end.2467 ]
  %idxprom2471 = sext i32 %cond2470 to i64
  %1298 = load i8*, i8** @re_syntax_table, align 8
  %arrayidx2472 = getelementptr inbounds i8, i8* %1298, i64 %idxprom2471
  %1299 = load i8, i8* %arrayidx2472, align 1
  %conv2473 = sext i8 %1299 to i32
  %cmp2474 = icmp eq i32 %conv2473, 1
  br i1 %cmp2474, label %if.end.2477, label %if.then.2476

if.then.2476:                                     ; preds = %cond.end.2469, %lor.lhs.false.2448, %cond.end.2444
  br label %sw.epilog.2661

if.end.2477:                                      ; preds = %cond.end.2469, %cond.end.2433
  br label %fail

sw.bb.2478:                                       ; preds = %if.end.572
  %1300 = load i8*, i8** %d, align 8
  %1301 = load i32, i32* %size1.addr, align 4
  %tobool2479 = icmp ne i32 %1301, 0
  br i1 %tobool2479, label %cond.true.2480, label %cond.false.2481

cond.true.2480:                                   ; preds = %sw.bb.2478
  %1302 = load i8*, i8** %string1.addr, align 8
  br label %cond.end.2482

cond.false.2481:                                  ; preds = %sw.bb.2478
  %1303 = load i8*, i8** %string2.addr, align 8
  br label %cond.end.2482

cond.end.2482:                                    ; preds = %cond.false.2481, %cond.true.2480
  %cond2483 = phi i8* [ %1302, %cond.true.2480 ], [ %1303, %cond.false.2481 ]
  %cmp2484 = icmp eq i8* %1300, %cond2483
  br i1 %cmp2484, label %if.end.2541, label %lor.lhs.false.2486

lor.lhs.false.2486:                               ; preds = %cond.end.2482
  %1304 = load i32, i32* %size2.addr, align 4
  %tobool2487 = icmp ne i32 %1304, 0
  br i1 %tobool2487, label %land.lhs.true.2488, label %if.end.2541

land.lhs.true.2488:                               ; preds = %lor.lhs.false.2486
  %1305 = load i8*, i8** %d, align 8
  %add.ptr2489 = getelementptr inbounds i8, i8* %1305, i64 -1
  %1306 = load i8*, i8** %end1, align 8
  %cmp2490 = icmp eq i8* %add.ptr2489, %1306
  br i1 %cmp2490, label %cond.true.2492, label %cond.false.2494

cond.true.2492:                                   ; preds = %land.lhs.true.2488
  %1307 = load i8*, i8** %string2.addr, align 8
  %1308 = load i8, i8* %1307, align 1
  %conv2493 = sext i8 %1308 to i32
  br label %cond.end.2507

cond.false.2494:                                  ; preds = %land.lhs.true.2488
  %1309 = load i8*, i8** %d, align 8
  %add.ptr2495 = getelementptr inbounds i8, i8* %1309, i64 -1
  %1310 = load i8*, i8** %string2.addr, align 8
  %add.ptr2496 = getelementptr inbounds i8, i8* %1310, i64 -1
  %cmp2497 = icmp eq i8* %add.ptr2495, %add.ptr2496
  br i1 %cmp2497, label %cond.true.2499, label %cond.false.2502

cond.true.2499:                                   ; preds = %cond.false.2494
  %1311 = load i8*, i8** %end1, align 8
  %add.ptr2500 = getelementptr inbounds i8, i8* %1311, i64 -1
  %1312 = load i8, i8* %add.ptr2500, align 1
  %conv2501 = sext i8 %1312 to i32
  br label %cond.end.2505

cond.false.2502:                                  ; preds = %cond.false.2494
  %1313 = load i8*, i8** %d, align 8
  %add.ptr2503 = getelementptr inbounds i8, i8* %1313, i64 -1
  %1314 = load i8, i8* %add.ptr2503, align 1
  %conv2504 = sext i8 %1314 to i32
  br label %cond.end.2505

cond.end.2505:                                    ; preds = %cond.false.2502, %cond.true.2499
  %cond2506 = phi i32 [ %conv2501, %cond.true.2499 ], [ %conv2504, %cond.false.2502 ]
  br label %cond.end.2507

cond.end.2507:                                    ; preds = %cond.end.2505, %cond.true.2492
  %cond2508 = phi i32 [ %conv2493, %cond.true.2492 ], [ %cond2506, %cond.end.2505 ]
  %idxprom2509 = sext i32 %cond2508 to i64
  %1315 = load i8*, i8** @re_syntax_table, align 8
  %arrayidx2510 = getelementptr inbounds i8, i8* %1315, i64 %idxprom2509
  %1316 = load i8, i8* %arrayidx2510, align 1
  %conv2511 = sext i8 %1316 to i32
  %cmp2512 = icmp eq i32 %conv2511, 1
  br i1 %cmp2512, label %land.lhs.true.2514, label %if.end.2541

land.lhs.true.2514:                               ; preds = %cond.end.2507
  %1317 = load i8*, i8** %d, align 8
  %1318 = load i8*, i8** %end1, align 8
  %cmp2515 = icmp eq i8* %1317, %1318
  br i1 %cmp2515, label %cond.true.2517, label %cond.false.2519

cond.true.2517:                                   ; preds = %land.lhs.true.2514
  %1319 = load i8*, i8** %string2.addr, align 8
  %1320 = load i8, i8* %1319, align 1
  %conv2518 = sext i8 %1320 to i32
  br label %cond.end.2530

cond.false.2519:                                  ; preds = %land.lhs.true.2514
  %1321 = load i8*, i8** %d, align 8
  %1322 = load i8*, i8** %string2.addr, align 8
  %add.ptr2520 = getelementptr inbounds i8, i8* %1322, i64 -1
  %cmp2521 = icmp eq i8* %1321, %add.ptr2520
  br i1 %cmp2521, label %cond.true.2523, label %cond.false.2526

cond.true.2523:                                   ; preds = %cond.false.2519
  %1323 = load i8*, i8** %end1, align 8
  %add.ptr2524 = getelementptr inbounds i8, i8* %1323, i64 -1
  %1324 = load i8, i8* %add.ptr2524, align 1
  %conv2525 = sext i8 %1324 to i32
  br label %cond.end.2528

cond.false.2526:                                  ; preds = %cond.false.2519
  %1325 = load i8*, i8** %d, align 8
  %1326 = load i8, i8* %1325, align 1
  %conv2527 = sext i8 %1326 to i32
  br label %cond.end.2528

cond.end.2528:                                    ; preds = %cond.false.2526, %cond.true.2523
  %cond2529 = phi i32 [ %conv2525, %cond.true.2523 ], [ %conv2527, %cond.false.2526 ]
  br label %cond.end.2530

cond.end.2530:                                    ; preds = %cond.end.2528, %cond.true.2517
  %cond2531 = phi i32 [ %conv2518, %cond.true.2517 ], [ %cond2529, %cond.end.2528 ]
  %idxprom2532 = sext i32 %cond2531 to i64
  %1327 = load i8*, i8** @re_syntax_table, align 8
  %arrayidx2533 = getelementptr inbounds i8, i8* %1327, i64 %idxprom2532
  %1328 = load i8, i8* %arrayidx2533, align 1
  %conv2534 = sext i8 %1328 to i32
  %cmp2535 = icmp eq i32 %conv2534, 1
  br i1 %cmp2535, label %lor.lhs.false.2537, label %if.then.2540

lor.lhs.false.2537:                               ; preds = %cond.end.2530
  %1329 = load i8*, i8** %d, align 8
  %1330 = load i8*, i8** %end2, align 8
  %cmp2538 = icmp eq i8* %1329, %1330
  br i1 %cmp2538, label %if.then.2540, label %if.end.2541

if.then.2540:                                     ; preds = %lor.lhs.false.2537, %cond.end.2530
  br label %sw.epilog.2661

if.end.2541:                                      ; preds = %lor.lhs.false.2537, %cond.end.2507, %lor.lhs.false.2486, %cond.end.2482
  br label %fail

sw.bb.2542:                                       ; preds = %if.end.572
  br label %while.cond.2543

while.cond.2543:                                  ; preds = %if.end.2550, %sw.bb.2542
  %1331 = load i8*, i8** %d, align 8
  %1332 = load i8*, i8** %dend, align 8
  %cmp2544 = icmp eq i8* %1331, %1332
  br i1 %cmp2544, label %while.body.2546, label %while.end.2551

while.body.2546:                                  ; preds = %while.cond.2543
  %1333 = load i8*, i8** %dend, align 8
  %1334 = load i8*, i8** %end_match_2, align 8
  %cmp2547 = icmp eq i8* %1333, %1334
  br i1 %cmp2547, label %if.then.2549, label %if.end.2550

if.then.2549:                                     ; preds = %while.body.2546
  br label %fail

if.end.2550:                                      ; preds = %while.body.2546
  %1335 = load i8*, i8** %string2.addr, align 8
  store i8* %1335, i8** %d, align 8
  %1336 = load i8*, i8** %end_match_2, align 8
  store i8* %1336, i8** %dend, align 8
  br label %while.cond.2543

while.end.2551:                                   ; preds = %while.cond.2543
  %1337 = load i8*, i8** %d, align 8
  %1338 = load i8*, i8** %end1, align 8
  %cmp2552 = icmp eq i8* %1337, %1338
  br i1 %cmp2552, label %cond.true.2554, label %cond.false.2556

cond.true.2554:                                   ; preds = %while.end.2551
  %1339 = load i8*, i8** %string2.addr, align 8
  %1340 = load i8, i8* %1339, align 1
  %conv2555 = sext i8 %1340 to i32
  br label %cond.end.2567

cond.false.2556:                                  ; preds = %while.end.2551
  %1341 = load i8*, i8** %d, align 8
  %1342 = load i8*, i8** %string2.addr, align 8
  %add.ptr2557 = getelementptr inbounds i8, i8* %1342, i64 -1
  %cmp2558 = icmp eq i8* %1341, %add.ptr2557
  br i1 %cmp2558, label %cond.true.2560, label %cond.false.2563

cond.true.2560:                                   ; preds = %cond.false.2556
  %1343 = load i8*, i8** %end1, align 8
  %add.ptr2561 = getelementptr inbounds i8, i8* %1343, i64 -1
  %1344 = load i8, i8* %add.ptr2561, align 1
  %conv2562 = sext i8 %1344 to i32
  br label %cond.end.2565

cond.false.2563:                                  ; preds = %cond.false.2556
  %1345 = load i8*, i8** %d, align 8
  %1346 = load i8, i8* %1345, align 1
  %conv2564 = sext i8 %1346 to i32
  br label %cond.end.2565

cond.end.2565:                                    ; preds = %cond.false.2563, %cond.true.2560
  %cond2566 = phi i32 [ %conv2562, %cond.true.2560 ], [ %conv2564, %cond.false.2563 ]
  br label %cond.end.2567

cond.end.2567:                                    ; preds = %cond.end.2565, %cond.true.2554
  %cond2568 = phi i32 [ %conv2555, %cond.true.2554 ], [ %cond2566, %cond.end.2565 ]
  %idxprom2569 = sext i32 %cond2568 to i64
  %1347 = load i8*, i8** @re_syntax_table, align 8
  %arrayidx2570 = getelementptr inbounds i8, i8* %1347, i64 %idxprom2569
  %1348 = load i8, i8* %arrayidx2570, align 1
  %conv2571 = sext i8 %1348 to i32
  %cmp2572 = icmp eq i32 %conv2571, 1
  br i1 %cmp2572, label %if.end.2575, label %if.then.2574

if.then.2574:                                     ; preds = %cond.end.2567
  br label %fail

if.end.2575:                                      ; preds = %cond.end.2567
  br label %do.body.2576

do.body.2576:                                     ; preds = %if.end.2575
  %1349 = load i32, i32* %set_regs_matched_done, align 4
  %tobool2577 = icmp ne i32 %1349, 0
  br i1 %tobool2577, label %if.end.2597, label %if.then.2578

if.then.2578:                                     ; preds = %do.body.2576
  store i32 1, i32* %set_regs_matched_done, align 4
  %1350 = load i64, i64* %lowest_active_reg, align 8
  store i64 %1350, i64* %r2579, align 8
  br label %for.cond.2580

for.cond.2580:                                    ; preds = %for.inc.2594, %if.then.2578
  %1351 = load i64, i64* %r2579, align 8
  %1352 = load i64, i64* %highest_active_reg, align 8
  %cmp2581 = icmp ule i64 %1351, %1352
  br i1 %cmp2581, label %for.body.2583, label %for.end.2596

for.body.2583:                                    ; preds = %for.cond.2580
  %1353 = load i64, i64* %r2579, align 8
  %1354 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx2584 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %1354, i64 %1353
  %bits2585 = bitcast %union.register_info_type* %arrayidx2584 to %struct.anon*
  %1355 = bitcast %struct.anon* %bits2585 to i8*
  %bf.load2586 = load i8, i8* %1355, align 4
  %bf.clear2587 = and i8 %bf.load2586, -17
  %bf.set2588 = or i8 %bf.clear2587, 16
  store i8 %bf.set2588, i8* %1355, align 4
  %1356 = load i64, i64* %r2579, align 8
  %1357 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx2589 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %1357, i64 %1356
  %bits2590 = bitcast %union.register_info_type* %arrayidx2589 to %struct.anon*
  %1358 = bitcast %struct.anon* %bits2590 to i8*
  %bf.load2591 = load i8, i8* %1358, align 4
  %bf.clear2592 = and i8 %bf.load2591, -9
  %bf.set2593 = or i8 %bf.clear2592, 8
  store i8 %bf.set2593, i8* %1358, align 4
  br label %for.inc.2594

for.inc.2594:                                     ; preds = %for.body.2583
  %1359 = load i64, i64* %r2579, align 8
  %inc2595 = add i64 %1359, 1
  store i64 %inc2595, i64* %r2579, align 8
  br label %for.cond.2580

for.end.2596:                                     ; preds = %for.cond.2580
  br label %if.end.2597

if.end.2597:                                      ; preds = %for.end.2596, %do.body.2576
  br label %do.end.2599

do.end.2599:                                      ; preds = %if.end.2597
  %1360 = load i8*, i8** %d, align 8
  %incdec.ptr2600 = getelementptr inbounds i8, i8* %1360, i32 1
  store i8* %incdec.ptr2600, i8** %d, align 8
  br label %sw.epilog.2661

sw.bb.2601:                                       ; preds = %if.end.572
  br label %while.cond.2602

while.cond.2602:                                  ; preds = %if.end.2609, %sw.bb.2601
  %1361 = load i8*, i8** %d, align 8
  %1362 = load i8*, i8** %dend, align 8
  %cmp2603 = icmp eq i8* %1361, %1362
  br i1 %cmp2603, label %while.body.2605, label %while.end.2610

while.body.2605:                                  ; preds = %while.cond.2602
  %1363 = load i8*, i8** %dend, align 8
  %1364 = load i8*, i8** %end_match_2, align 8
  %cmp2606 = icmp eq i8* %1363, %1364
  br i1 %cmp2606, label %if.then.2608, label %if.end.2609

if.then.2608:                                     ; preds = %while.body.2605
  br label %fail

if.end.2609:                                      ; preds = %while.body.2605
  %1365 = load i8*, i8** %string2.addr, align 8
  store i8* %1365, i8** %d, align 8
  %1366 = load i8*, i8** %end_match_2, align 8
  store i8* %1366, i8** %dend, align 8
  br label %while.cond.2602

while.end.2610:                                   ; preds = %while.cond.2602
  %1367 = load i8*, i8** %d, align 8
  %1368 = load i8*, i8** %end1, align 8
  %cmp2611 = icmp eq i8* %1367, %1368
  br i1 %cmp2611, label %cond.true.2613, label %cond.false.2615

cond.true.2613:                                   ; preds = %while.end.2610
  %1369 = load i8*, i8** %string2.addr, align 8
  %1370 = load i8, i8* %1369, align 1
  %conv2614 = sext i8 %1370 to i32
  br label %cond.end.2626

cond.false.2615:                                  ; preds = %while.end.2610
  %1371 = load i8*, i8** %d, align 8
  %1372 = load i8*, i8** %string2.addr, align 8
  %add.ptr2616 = getelementptr inbounds i8, i8* %1372, i64 -1
  %cmp2617 = icmp eq i8* %1371, %add.ptr2616
  br i1 %cmp2617, label %cond.true.2619, label %cond.false.2622

cond.true.2619:                                   ; preds = %cond.false.2615
  %1373 = load i8*, i8** %end1, align 8
  %add.ptr2620 = getelementptr inbounds i8, i8* %1373, i64 -1
  %1374 = load i8, i8* %add.ptr2620, align 1
  %conv2621 = sext i8 %1374 to i32
  br label %cond.end.2624

cond.false.2622:                                  ; preds = %cond.false.2615
  %1375 = load i8*, i8** %d, align 8
  %1376 = load i8, i8* %1375, align 1
  %conv2623 = sext i8 %1376 to i32
  br label %cond.end.2624

cond.end.2624:                                    ; preds = %cond.false.2622, %cond.true.2619
  %cond2625 = phi i32 [ %conv2621, %cond.true.2619 ], [ %conv2623, %cond.false.2622 ]
  br label %cond.end.2626

cond.end.2626:                                    ; preds = %cond.end.2624, %cond.true.2613
  %cond2627 = phi i32 [ %conv2614, %cond.true.2613 ], [ %cond2625, %cond.end.2624 ]
  %idxprom2628 = sext i32 %cond2627 to i64
  %1377 = load i8*, i8** @re_syntax_table, align 8
  %arrayidx2629 = getelementptr inbounds i8, i8* %1377, i64 %idxprom2628
  %1378 = load i8, i8* %arrayidx2629, align 1
  %conv2630 = sext i8 %1378 to i32
  %cmp2631 = icmp eq i32 %conv2630, 1
  br i1 %cmp2631, label %if.then.2633, label %if.end.2634

if.then.2633:                                     ; preds = %cond.end.2626
  br label %fail

if.end.2634:                                      ; preds = %cond.end.2626
  br label %do.body.2635

do.body.2635:                                     ; preds = %if.end.2634
  %1379 = load i32, i32* %set_regs_matched_done, align 4
  %tobool2636 = icmp ne i32 %1379, 0
  br i1 %tobool2636, label %if.end.2656, label %if.then.2637

if.then.2637:                                     ; preds = %do.body.2635
  store i32 1, i32* %set_regs_matched_done, align 4
  %1380 = load i64, i64* %lowest_active_reg, align 8
  store i64 %1380, i64* %r2638, align 8
  br label %for.cond.2639

for.cond.2639:                                    ; preds = %for.inc.2653, %if.then.2637
  %1381 = load i64, i64* %r2638, align 8
  %1382 = load i64, i64* %highest_active_reg, align 8
  %cmp2640 = icmp ule i64 %1381, %1382
  br i1 %cmp2640, label %for.body.2642, label %for.end.2655

for.body.2642:                                    ; preds = %for.cond.2639
  %1383 = load i64, i64* %r2638, align 8
  %1384 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx2643 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %1384, i64 %1383
  %bits2644 = bitcast %union.register_info_type* %arrayidx2643 to %struct.anon*
  %1385 = bitcast %struct.anon* %bits2644 to i8*
  %bf.load2645 = load i8, i8* %1385, align 4
  %bf.clear2646 = and i8 %bf.load2645, -17
  %bf.set2647 = or i8 %bf.clear2646, 16
  store i8 %bf.set2647, i8* %1385, align 4
  %1386 = load i64, i64* %r2638, align 8
  %1387 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx2648 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %1387, i64 %1386
  %bits2649 = bitcast %union.register_info_type* %arrayidx2648 to %struct.anon*
  %1388 = bitcast %struct.anon* %bits2649 to i8*
  %bf.load2650 = load i8, i8* %1388, align 4
  %bf.clear2651 = and i8 %bf.load2650, -9
  %bf.set2652 = or i8 %bf.clear2651, 8
  store i8 %bf.set2652, i8* %1388, align 4
  br label %for.inc.2653

for.inc.2653:                                     ; preds = %for.body.2642
  %1389 = load i64, i64* %r2638, align 8
  %inc2654 = add i64 %1389, 1
  store i64 %inc2654, i64* %r2638, align 8
  br label %for.cond.2639

for.end.2655:                                     ; preds = %for.cond.2639
  br label %if.end.2656

if.end.2656:                                      ; preds = %for.end.2655, %do.body.2635
  br label %do.end.2658

do.end.2658:                                      ; preds = %if.end.2656
  %1390 = load i8*, i8** %d, align 8
  %incdec.ptr2659 = getelementptr inbounds i8, i8* %1390, i32 1
  store i8* %incdec.ptr2659, i8** %d, align 8
  br label %sw.epilog.2661

sw.default.2660:                                  ; preds = %if.end.572
  call void @abort() #6
  unreachable

sw.epilog.2661:                                   ; preds = %do.end.2658, %do.end.2599, %if.then.2540, %if.then.2476, %if.end.2416, %if.then.2343, %if.then.2288, %do.end.2274, %if.end.2236, %if.end.2207, %do.end.2170, %do.end.1967, %do.end.1617, %do.end.1470, %if.then.1354, %if.then.1349, %if.then.1336, %if.then.1317, %if.then.1305, %if.then.1293, %for.end.1276, %if.end.1135, %if.end.851, %do.end.787, %do.end.710, %do.end.645, %sw.bb
  br label %for.cond.156

fail:                                             ; preds = %if.then.2764, %if.then.2727, %if.then.2633, %if.then.2608, %if.then.2574, %if.then.2549, %if.end.2541, %if.end.2477, %if.then.2415, %if.then.2360, %if.end.2344, %if.end.1355, %if.end.1350, %if.end.1338, %if.end.1307, %if.then.1246, %if.then.1219, %if.then.1149, %do.end.1133, %if.then.762, %if.then.724, %if.then.685, %if.then.653, %if.then.616, %if.then.607, %if.then.595, %if.then.585, %if.end.211
  %avail2662 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1391 = load i32, i32* %avail2662, align 4
  %cmp2663 = icmp eq i32 %1391, 0
  br i1 %cmp2663, label %if.else.2776, label %if.then.2665

if.then.2665:                                     ; preds = %fail
  %avail2668 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1392 = load i32, i32* %avail2668, align 4
  %dec2669 = add i32 %1392, -1
  store i32 %dec2669, i32* %avail2668, align 4
  %idxprom2670 = zext i32 %dec2669 to i64
  %stack2671 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1393 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2671, align 8
  %arrayidx2672 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1393, i64 %idxprom2670
  %pointer2673 = bitcast %union.fail_stack_elt* %arrayidx2672 to i8**
  %1394 = load i8*, i8** %pointer2673, align 8
  store i8* %1394, i8** %string_temp2667, align 8
  %1395 = load i8*, i8** %string_temp2667, align 8
  %cmp2674 = icmp ne i8* %1395, null
  br i1 %cmp2674, label %if.then.2676, label %if.end.2677

if.then.2676:                                     ; preds = %if.then.2665
  %1396 = load i8*, i8** %string_temp2667, align 8
  store i8* %1396, i8** %d, align 8
  br label %if.end.2677

if.end.2677:                                      ; preds = %if.then.2676, %if.then.2665
  %avail2678 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1397 = load i32, i32* %avail2678, align 4
  %dec2679 = add i32 %1397, -1
  store i32 %dec2679, i32* %avail2678, align 4
  %idxprom2680 = zext i32 %dec2679 to i64
  %stack2681 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1398 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2681, align 8
  %arrayidx2682 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1398, i64 %idxprom2680
  %pointer2683 = bitcast %union.fail_stack_elt* %arrayidx2682 to i8**
  %1399 = load i8*, i8** %pointer2683, align 8
  store i8* %1399, i8** %p, align 8
  %avail2684 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1400 = load i32, i32* %avail2684, align 4
  %dec2685 = add i32 %1400, -1
  store i32 %dec2685, i32* %avail2684, align 4
  %idxprom2686 = zext i32 %dec2685 to i64
  %stack2687 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1401 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2687, align 8
  %arrayidx2688 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1401, i64 %idxprom2686
  %integer2689 = bitcast %union.fail_stack_elt* %arrayidx2688 to i32*
  %1402 = load i32, i32* %integer2689, align 4
  %conv2690 = sext i32 %1402 to i64
  store i64 %conv2690, i64* %highest_active_reg, align 8
  %avail2691 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1403 = load i32, i32* %avail2691, align 4
  %dec2692 = add i32 %1403, -1
  store i32 %dec2692, i32* %avail2691, align 4
  %idxprom2693 = zext i32 %dec2692 to i64
  %stack2694 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1404 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2694, align 8
  %arrayidx2695 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1404, i64 %idxprom2693
  %integer2696 = bitcast %union.fail_stack_elt* %arrayidx2695 to i32*
  %1405 = load i32, i32* %integer2696, align 4
  %conv2697 = sext i32 %1405 to i64
  store i64 %conv2697, i64* %lowest_active_reg, align 8
  %1406 = load i64, i64* %highest_active_reg, align 8
  store i64 %1406, i64* %this_reg2666, align 8
  br label %for.cond.2698

for.cond.2698:                                    ; preds = %for.inc.2723, %if.end.2677
  %1407 = load i64, i64* %this_reg2666, align 8
  %1408 = load i64, i64* %lowest_active_reg, align 8
  %cmp2699 = icmp uge i64 %1407, %1408
  br i1 %cmp2699, label %for.body.2701, label %for.end.2725

for.body.2701:                                    ; preds = %for.cond.2698
  %1409 = load i64, i64* %this_reg2666, align 8
  %1410 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %arrayidx2702 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %1410, i64 %1409
  %word2703 = bitcast %union.register_info_type* %arrayidx2702 to %union.fail_stack_elt*
  %avail2704 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1411 = load i32, i32* %avail2704, align 4
  %dec2705 = add i32 %1411, -1
  store i32 %dec2705, i32* %avail2704, align 4
  %idxprom2706 = zext i32 %dec2705 to i64
  %stack2707 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1412 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2707, align 8
  %arrayidx2708 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1412, i64 %idxprom2706
  %1413 = bitcast %union.fail_stack_elt* %word2703 to i8*
  %1414 = bitcast %union.fail_stack_elt* %arrayidx2708 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1413, i8* %1414, i64 8, i32 8, i1 false)
  %avail2709 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1415 = load i32, i32* %avail2709, align 4
  %dec2710 = add i32 %1415, -1
  store i32 %dec2710, i32* %avail2709, align 4
  %idxprom2711 = zext i32 %dec2710 to i64
  %stack2712 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1416 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2712, align 8
  %arrayidx2713 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1416, i64 %idxprom2711
  %pointer2714 = bitcast %union.fail_stack_elt* %arrayidx2713 to i8**
  %1417 = load i8*, i8** %pointer2714, align 8
  %1418 = load i64, i64* %this_reg2666, align 8
  %1419 = load i8**, i8*** %regend, align 8
  %arrayidx2715 = getelementptr inbounds i8*, i8** %1419, i64 %1418
  store i8* %1417, i8** %arrayidx2715, align 8
  %avail2716 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 2
  %1420 = load i32, i32* %avail2716, align 4
  %dec2717 = add i32 %1420, -1
  store i32 %dec2717, i32* %avail2716, align 4
  %idxprom2718 = zext i32 %dec2717 to i64
  %stack2719 = getelementptr inbounds %struct.fail_stack_type, %struct.fail_stack_type* %fail_stack, i32 0, i32 0
  %1421 = load %union.fail_stack_elt*, %union.fail_stack_elt** %stack2719, align 8
  %arrayidx2720 = getelementptr inbounds %union.fail_stack_elt, %union.fail_stack_elt* %1421, i64 %idxprom2718
  %pointer2721 = bitcast %union.fail_stack_elt* %arrayidx2720 to i8**
  %1422 = load i8*, i8** %pointer2721, align 8
  %1423 = load i64, i64* %this_reg2666, align 8
  %1424 = load i8**, i8*** %regstart, align 8
  %arrayidx2722 = getelementptr inbounds i8*, i8** %1424, i64 %1423
  store i8* %1422, i8** %arrayidx2722, align 8
  br label %for.inc.2723

for.inc.2723:                                     ; preds = %for.body.2701
  %1425 = load i64, i64* %this_reg2666, align 8
  %dec2724 = add i64 %1425, -1
  store i64 %dec2724, i64* %this_reg2666, align 8
  br label %for.cond.2698

for.end.2725:                                     ; preds = %for.cond.2698
  store i32 0, i32* %set_regs_matched_done, align 4
  %1426 = load i8*, i8** %p, align 8
  %tobool2726 = icmp ne i8* %1426, null
  br i1 %tobool2726, label %if.end.2728, label %if.then.2727

if.then.2727:                                     ; preds = %for.end.2725
  br label %fail

if.end.2728:                                      ; preds = %for.end.2725
  %1427 = load i8*, i8** %p, align 8
  %1428 = load i8*, i8** %pend, align 8
  %cmp2729 = icmp ult i8* %1427, %1428
  br i1 %cmp2729, label %if.then.2731, label %if.end.2768

if.then.2731:                                     ; preds = %if.end.2728
  store i8 0, i8* %is_a_jump_n2732, align 1
  %1429 = load i8*, i8** %p, align 8
  %1430 = load i8, i8* %1429, align 1
  %conv2733 = zext i8 %1430 to i32
  switch i32 %conv2733, label %sw.default.2766 [
    i32 22, label %sw.bb.2734
    i32 18, label %sw.bb.2735
    i32 17, label %sw.bb.2735
    i32 13, label %sw.bb.2735
  ]

sw.bb.2734:                                       ; preds = %if.then.2731
  store i8 1, i8* %is_a_jump_n2732, align 1
  br label %sw.bb.2735

sw.bb.2735:                                       ; preds = %if.then.2731, %if.then.2731, %if.then.2731, %sw.bb.2734
  %1431 = load i8*, i8** %p, align 8
  %add.ptr2736 = getelementptr inbounds i8, i8* %1431, i64 1
  store i8* %add.ptr2736, i8** %p1, align 8
  br label %do.body.2737

do.body.2737:                                     ; preds = %sw.bb.2735
  br label %do.body.2738

do.body.2738:                                     ; preds = %do.body.2737
  %1432 = load i8*, i8** %p1, align 8
  %1433 = load i8, i8* %1432, align 1
  %conv2739 = zext i8 %1433 to i32
  %and2740 = and i32 %conv2739, 255
  store i32 %and2740, i32* %mcnt, align 4
  %1434 = load i8*, i8** %p1, align 8
  %add.ptr2741 = getelementptr inbounds i8, i8* %1434, i64 1
  %1435 = load i8, i8* %add.ptr2741, align 1
  %conv2742 = sext i8 %1435 to i32
  %shl2743 = shl i32 %conv2742, 8
  %1436 = load i32, i32* %mcnt, align 4
  %add2744 = add nsw i32 %1436, %shl2743
  store i32 %add2744, i32* %mcnt, align 4
  br label %do.end.2746

do.end.2746:                                      ; preds = %do.body.2738
  %1437 = load i8*, i8** %p1, align 8
  %add.ptr2747 = getelementptr inbounds i8, i8* %1437, i64 2
  store i8* %add.ptr2747, i8** %p1, align 8
  br label %do.end.2749

do.end.2749:                                      ; preds = %do.end.2746
  %1438 = load i32, i32* %mcnt, align 4
  %1439 = load i8*, i8** %p1, align 8
  %idx.ext2750 = sext i32 %1438 to i64
  %add.ptr2751 = getelementptr inbounds i8, i8* %1439, i64 %idx.ext2750
  store i8* %add.ptr2751, i8** %p1, align 8
  %1440 = load i8, i8* %is_a_jump_n2732, align 1
  %conv2752 = sext i8 %1440 to i32
  %tobool2753 = icmp ne i32 %conv2752, 0
  br i1 %tobool2753, label %land.lhs.true.2754, label %lor.lhs.false.2758

land.lhs.true.2754:                               ; preds = %do.end.2749
  %1441 = load i8*, i8** %p1, align 8
  %1442 = load i8, i8* %1441, align 1
  %conv2755 = zext i8 %1442 to i32
  %cmp2756 = icmp eq i32 %conv2755, 21
  br i1 %cmp2756, label %if.then.2764, label %lor.lhs.false.2758

lor.lhs.false.2758:                               ; preds = %land.lhs.true.2754, %do.end.2749
  %1443 = load i8, i8* %is_a_jump_n2732, align 1
  %tobool2759 = icmp ne i8 %1443, 0
  br i1 %tobool2759, label %if.end.2765, label %land.lhs.true.2760

land.lhs.true.2760:                               ; preds = %lor.lhs.false.2758
  %1444 = load i8*, i8** %p1, align 8
  %1445 = load i8, i8* %1444, align 1
  %conv2761 = zext i8 %1445 to i32
  %cmp2762 = icmp eq i32 %conv2761, 15
  br i1 %cmp2762, label %if.then.2764, label %if.end.2765

if.then.2764:                                     ; preds = %land.lhs.true.2760, %land.lhs.true.2754
  br label %fail

if.end.2765:                                      ; preds = %land.lhs.true.2760, %lor.lhs.false.2758
  br label %sw.epilog.2767

sw.default.2766:                                  ; preds = %if.then.2731
  br label %sw.epilog.2767

sw.epilog.2767:                                   ; preds = %sw.default.2766, %if.end.2765
  br label %if.end.2768

if.end.2768:                                      ; preds = %sw.epilog.2767, %if.end.2728
  %1446 = load i8*, i8** %d, align 8
  %1447 = load i8*, i8** %string1.addr, align 8
  %cmp2769 = icmp uge i8* %1446, %1447
  br i1 %cmp2769, label %land.lhs.true.2771, label %if.end.2775

land.lhs.true.2771:                               ; preds = %if.end.2768
  %1448 = load i8*, i8** %d, align 8
  %1449 = load i8*, i8** %end1, align 8
  %cmp2772 = icmp ule i8* %1448, %1449
  br i1 %cmp2772, label %if.then.2774, label %if.end.2775

if.then.2774:                                     ; preds = %land.lhs.true.2771
  %1450 = load i8*, i8** %end_match_1, align 8
  store i8* %1450, i8** %dend, align 8
  br label %if.end.2775

if.end.2775:                                      ; preds = %if.then.2774, %land.lhs.true.2771, %if.end.2768
  br label %if.end.2777

if.else.2776:                                     ; preds = %fail
  br label %for.end.2778

if.end.2777:                                      ; preds = %if.end.2775
  br label %for.cond.156

for.end.2778:                                     ; preds = %if.else.2776
  %1451 = load i32, i32* %best_regs_set, align 4
  %tobool2779 = icmp ne i32 %1451, 0
  br i1 %tobool2779, label %if.then.2780, label %if.end.2781

if.then.2780:                                     ; preds = %for.end.2778
  br label %restore_best_regs

if.end.2781:                                      ; preds = %for.end.2778
  br label %do.body.2782

do.body.2782:                                     ; preds = %if.end.2781
  %1452 = load i8**, i8*** %regstart, align 8
  %tobool2783 = icmp ne i8** %1452, null
  br i1 %tobool2783, label %if.then.2784, label %if.end.2785

if.then.2784:                                     ; preds = %do.body.2782
  br label %if.end.2785

if.end.2785:                                      ; preds = %if.then.2784, %do.body.2782
  store i8** null, i8*** %regstart, align 8
  %1453 = load i8**, i8*** %regend, align 8
  %tobool2786 = icmp ne i8** %1453, null
  br i1 %tobool2786, label %if.then.2787, label %if.end.2788

if.then.2787:                                     ; preds = %if.end.2785
  br label %if.end.2788

if.end.2788:                                      ; preds = %if.then.2787, %if.end.2785
  store i8** null, i8*** %regend, align 8
  %1454 = load i8**, i8*** %old_regstart, align 8
  %tobool2789 = icmp ne i8** %1454, null
  br i1 %tobool2789, label %if.then.2790, label %if.end.2791

if.then.2790:                                     ; preds = %if.end.2788
  br label %if.end.2791

if.end.2791:                                      ; preds = %if.then.2790, %if.end.2788
  store i8** null, i8*** %old_regstart, align 8
  %1455 = load i8**, i8*** %old_regend, align 8
  %tobool2792 = icmp ne i8** %1455, null
  br i1 %tobool2792, label %if.then.2793, label %if.end.2794

if.then.2793:                                     ; preds = %if.end.2791
  br label %if.end.2794

if.end.2794:                                      ; preds = %if.then.2793, %if.end.2791
  store i8** null, i8*** %old_regend, align 8
  %1456 = load i8**, i8*** %best_regstart, align 8
  %tobool2795 = icmp ne i8** %1456, null
  br i1 %tobool2795, label %if.then.2796, label %if.end.2797

if.then.2796:                                     ; preds = %if.end.2794
  br label %if.end.2797

if.end.2797:                                      ; preds = %if.then.2796, %if.end.2794
  store i8** null, i8*** %best_regstart, align 8
  %1457 = load i8**, i8*** %best_regend, align 8
  %tobool2798 = icmp ne i8** %1457, null
  br i1 %tobool2798, label %if.then.2799, label %if.end.2800

if.then.2799:                                     ; preds = %if.end.2797
  br label %if.end.2800

if.end.2800:                                      ; preds = %if.then.2799, %if.end.2797
  store i8** null, i8*** %best_regend, align 8
  %1458 = load %union.register_info_type*, %union.register_info_type** %reg_info, align 8
  %tobool2801 = icmp ne %union.register_info_type* %1458, null
  br i1 %tobool2801, label %if.then.2802, label %if.end.2803

if.then.2802:                                     ; preds = %if.end.2800
  br label %if.end.2803

if.end.2803:                                      ; preds = %if.then.2802, %if.end.2800
  store %union.register_info_type* null, %union.register_info_type** %reg_info, align 8
  %1459 = load i8**, i8*** %reg_dummy, align 8
  %tobool2804 = icmp ne i8** %1459, null
  br i1 %tobool2804, label %if.then.2805, label %if.end.2806

if.then.2805:                                     ; preds = %if.end.2803
  br label %if.end.2806

if.end.2806:                                      ; preds = %if.then.2805, %if.end.2803
  store i8** null, i8*** %reg_dummy, align 8
  %1460 = load %union.register_info_type*, %union.register_info_type** %reg_info_dummy, align 8
  %tobool2807 = icmp ne %union.register_info_type* %1460, null
  br i1 %tobool2807, label %if.then.2808, label %if.end.2809

if.then.2808:                                     ; preds = %if.end.2806
  br label %if.end.2809

if.end.2809:                                      ; preds = %if.then.2808, %if.end.2806
  store %union.register_info_type* null, %union.register_info_type** %reg_info_dummy, align 8
  br label %do.end.2811

do.end.2811:                                      ; preds = %if.end.2809
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.2811, %if.then.2112, %if.then.2012, %if.then.1557, %if.then.1410, %if.then.1076, %do.end.571, %do.end.379, %do.end.307, %do.end.93, %do.end.58, %if.then
  %1461 = load i32, i32* %retval
  ret i32 %1461
}

; Function Attrs: nounwind uwtable
define i32 @re_match(%struct.re_pattern_buffer* %bufp, i8* %string, i32 %size, i32 %pos, %struct.re_registers* %regs) #0 {
entry:
  %bufp.addr = alloca %struct.re_pattern_buffer*, align 8
  %string.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %regs.addr = alloca %struct.re_registers*, align 8
  %result = alloca i32, align 4
  store %struct.re_pattern_buffer* %bufp, %struct.re_pattern_buffer** %bufp.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store %struct.re_registers* %regs, %struct.re_registers** %regs.addr, align 8
  %0 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %1 = load i8*, i8** %string.addr, align 8
  %2 = load i32, i32* %size.addr, align 4
  %3 = load i32, i32* %pos.addr, align 4
  %4 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %5 = load i32, i32* %size.addr, align 4
  %call = call i32 @re_match_2_internal(%struct.re_pattern_buffer* %0, i8* null, i32 0, i8* %1, i32 %2, i32 %3, %struct.re_registers* %4, i32 %5)
  store i32 %call, i32* %result, align 4
  %6 = load i32, i32* %result, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @re_match_2(%struct.re_pattern_buffer* %bufp, i8* %string1, i32 %size1, i8* %string2, i32 %size2, i32 %pos, %struct.re_registers* %regs, i32 %stop) #0 {
entry:
  %bufp.addr = alloca %struct.re_pattern_buffer*, align 8
  %string1.addr = alloca i8*, align 8
  %size1.addr = alloca i32, align 4
  %string2.addr = alloca i8*, align 8
  %size2.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %regs.addr = alloca %struct.re_registers*, align 8
  %stop.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.re_pattern_buffer* %bufp, %struct.re_pattern_buffer** %bufp.addr, align 8
  store i8* %string1, i8** %string1.addr, align 8
  store i32 %size1, i32* %size1.addr, align 4
  store i8* %string2, i8** %string2.addr, align 8
  store i32 %size2, i32* %size2.addr, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store %struct.re_registers* %regs, %struct.re_registers** %regs.addr, align 8
  store i32 %stop, i32* %stop.addr, align 4
  %0 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %1 = load i8*, i8** %string1.addr, align 8
  %2 = load i32, i32* %size1.addr, align 4
  %3 = load i8*, i8** %string2.addr, align 8
  %4 = load i32, i32* %size2.addr, align 4
  %5 = load i32, i32* %pos.addr, align 4
  %6 = load %struct.re_registers*, %struct.re_registers** %regs.addr, align 8
  %7 = load i32, i32* %stop.addr, align 4
  %call = call i32 @re_match_2_internal(%struct.re_pattern_buffer* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, %struct.re_registers* %6, i32 %7)
  store i32 %call, i32* %result, align 4
  %8 = load i32, i32* %result, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i8* @re_compile_pattern(i8* %pattern, i64 %length, %struct.re_pattern_buffer* %bufp) #0 {
entry:
  %retval = alloca i8*, align 8
  %pattern.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %bufp.addr = alloca %struct.re_pattern_buffer*, align 8
  %ret = alloca i32, align 4
  store i8* %pattern, i8** %pattern.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store %struct.re_pattern_buffer* %bufp, %struct.re_pattern_buffer** %bufp.addr, align 8
  %0 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %regs_allocated = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %0, i32 0, i32 7
  %bf.load = load i8, i8* %regs_allocated, align 8
  %bf.clear = and i8 %bf.load, -7
  store i8 %bf.clear, i8* %regs_allocated, align 8
  %1 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %no_sub = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1, i32 0, i32 7
  %bf.load1 = load i8, i8* %no_sub, align 8
  %bf.clear2 = and i8 %bf.load1, -17
  store i8 %bf.clear2, i8* %no_sub, align 8
  %2 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %newline_anchor = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2, i32 0, i32 7
  %bf.load3 = load i8, i8* %newline_anchor, align 8
  %bf.clear4 = and i8 %bf.load3, 127
  %bf.set = or i8 %bf.clear4, -128
  store i8 %bf.set, i8* %newline_anchor, align 8
  %3 = load i8*, i8** %pattern.addr, align 8
  %4 = load i64, i64* %length.addr, align 8
  %5 = load i64, i64* @re_syntax_options, align 8
  %6 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %call = call i32 @regex_compile(i8* %3, i64 %4, i64 %5, %struct.re_pattern_buffer* %6)
  store i32 %call, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %ret, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [17 x i8*], [17 x i8*]* @re_error_msgid, i32 0, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  store i8* %9, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i8*, i8** %retval
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define internal i32 @regex_compile(i8* %pattern, i64 %size, i64 %syntax, %struct.re_pattern_buffer* %bufp) #0 {
entry:
  %retval = alloca i32, align 4
  %pattern.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %syntax.addr = alloca i64, align 8
  %bufp.addr = alloca %struct.re_pattern_buffer*, align 8
  %c = alloca i8, align 1
  %c1 = alloca i8, align 1
  %p1 = alloca i8*, align 8
  %b = alloca i8*, align 8
  %compile_stack = alloca %struct.compile_stack_type, align 8
  %p = alloca i8*, align 8
  %pend = alloca i8*, align 8
  %translate = alloca i8*, align 8
  %pending_exact = alloca i8*, align 8
  %laststart = alloca i8*, align 8
  %begalt = alloca i8*, align 8
  %beg_interval = alloca i8*, align 8
  %fixup_alt_jump = alloca i8*, align 8
  %regnum = alloca i32, align 4
  %old_buffer = alloca i8*, align 8
  %old_buffer139 = alloca i8*, align 8
  %keep_string_p = alloca i8, align 1
  %zero_times_ok = alloca i8, align 1
  %many_times_ok = alloca i8, align 1
  %old_buffer327 = alloca i8*, align 8
  %old_buffer462 = alloca i8*, align 8
  %old_buffer550 = alloca i8*, align 8
  %old_buffer636 = alloca i8*, align 8
  %had_char_class = alloca i8, align 1
  %old_buffer720 = alloca i8*, align 8
  %old_buffer797 = alloca i8*, align 8
  %old_buffer887 = alloca i8*, align 8
  %ret = alloca i32, align 4
  %ret1088 = alloca i32, align 4
  %str = alloca [7 x i8], align 1
  %ch = alloca i32, align 4
  %is_alnum = alloca i8, align 1
  %is_alpha = alloca i8, align 1
  %is_blank = alloca i8, align 1
  %is_cntrl = alloca i8, align 1
  %is_digit = alloca i8, align 1
  %is_graph = alloca i8, align 1
  %is_lower = alloca i8, align 1
  %is_print = alloca i8, align 1
  %is_punct = alloca i8, align 1
  %is_space = alloca i8, align 1
  %is_upper = alloca i8, align 1
  %is_xdigit = alloca i8, align 1
  %old_buffer1698 = alloca i8*, align 8
  %old_buffer1800 = alloca i8*, align 8
  %this_group_regnum = alloca i32, align 4
  %inner_group_loc = alloca i8*, align 8
  %old_buffer1947 = alloca i8*, align 8
  %old_buffer2043 = alloca i8*, align 8
  %old_buffer2134 = alloca i8*, align 8
  %lower_bound = alloca i32, align 4
  %upper_bound = alloca i32, align 4
  %old_buffer2413 = alloca i8*, align 8
  %nbytes = alloca i32, align 4
  %old_buffer2502 = alloca i8*, align 8
  %old_buffer2641 = alloca i8*, align 8
  %old_buffer2725 = alloca i8*, align 8
  %old_buffer2809 = alloca i8*, align 8
  %old_buffer2893 = alloca i8*, align 8
  %old_buffer2977 = alloca i8*, align 8
  %old_buffer3061 = alloca i8*, align 8
  %old_buffer3145 = alloca i8*, align 8
  %old_buffer3229 = alloca i8*, align 8
  %old_buffer3327 = alloca i8*, align 8
  %old_buffer3489 = alloca i8*, align 8
  %old_buffer3571 = alloca i8*, align 8
  %old_buffer3670 = alloca i8*, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i64 %syntax, i64* %syntax.addr, align 8
  store %struct.re_pattern_buffer* %bufp, %struct.re_pattern_buffer** %bufp.addr, align 8
  %0 = load i8*, i8** %pattern.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %pattern.addr, align 8
  %2 = load i64, i64* %size.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  store i8* %add.ptr, i8** %pend, align 8
  %3 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %translate1 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i32 0, i32 5
  %4 = load i8*, i8** %translate1, align 8
  store i8* %4, i8** %translate, align 8
  store i8* null, i8** %pending_exact, align 8
  store i8* null, i8** %laststart, align 8
  store i8* null, i8** %fixup_alt_jump, align 8
  store i32 0, i32* %regnum, align 4
  %call = call noalias i8* @malloc(i64 1280) #1
  %5 = bitcast i8* %call to %struct.compile_stack_elt_t*
  %stack = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  store %struct.compile_stack_elt_t* %5, %struct.compile_stack_elt_t** %stack, align 8
  %stack2 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %6 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2, align 8
  %cmp = icmp eq %struct.compile_stack_elt_t* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 12, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %size3 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 1
  store i32 32, i32* %size3, align 4
  %avail = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  store i32 0, i32* %avail, align 4
  %7 = load i64, i64* %syntax.addr, align 8
  %8 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %syntax4 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %8, i32 0, i32 3
  store i64 %7, i64* %syntax4, align 8
  %9 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %fastmap_accurate = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %9, i32 0, i32 7
  %bf.load = load i8, i8* %fastmap_accurate, align 8
  %bf.clear = and i8 %bf.load, -9
  store i8 %bf.clear, i8* %fastmap_accurate, align 8
  %10 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %not_eol = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %10, i32 0, i32 7
  %bf.load5 = load i8, i8* %not_eol, align 8
  %bf.clear6 = and i8 %bf.load5, -65
  store i8 %bf.clear6, i8* %not_eol, align 8
  %11 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %not_bol = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %11, i32 0, i32 7
  %bf.load7 = load i8, i8* %not_bol, align 8
  %bf.clear8 = and i8 %bf.load7, -33
  store i8 %bf.clear8, i8* %not_bol, align 8
  %12 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %used = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %12, i32 0, i32 2
  store i64 0, i64* %used, align 8
  %13 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %re_nsub = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %13, i32 0, i32 6
  store i64 0, i64* %re_nsub, align 8
  %14 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %14, i32 0, i32 1
  %15 = load i64, i64* %allocated, align 8
  %cmp9 = icmp eq i64 %15, 0
  br i1 %cmp9, label %if.then.10, label %if.end.24

if.then.10:                                       ; preds = %if.end
  %16 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %16, i32 0, i32 0
  %17 = load i8*, i8** %buffer, align 8
  %tobool = icmp ne i8* %17, null
  br i1 %tobool, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.10
  %18 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer12 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %18, i32 0, i32 0
  %19 = load i8*, i8** %buffer12, align 8
  %call13 = call i8* @realloc(i8* %19, i64 32) #1
  %20 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer14 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %20, i32 0, i32 0
  store i8* %call13, i8** %buffer14, align 8
  br label %if.end.17

if.else:                                          ; preds = %if.then.10
  %call15 = call noalias i8* @malloc(i64 32) #1
  %21 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer16 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %21, i32 0, i32 0
  store i8* %call15, i8** %buffer16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.11
  %22 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer18 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %22, i32 0, i32 0
  %23 = load i8*, i8** %buffer18, align 8
  %tobool19 = icmp ne i8* %23, null
  br i1 %tobool19, label %if.end.22, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  %stack21 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %24 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack21, align 8
  %25 = bitcast %struct.compile_stack_elt_t* %24 to i8*
  call void @free(i8* %25) #1
  store i32 12, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.17
  %26 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated23 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %26, i32 0, i32 1
  store i64 32, i64* %allocated23, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.22, %if.end
  %27 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer25 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %27, i32 0, i32 0
  %28 = load i8*, i8** %buffer25, align 8
  store i8* %28, i8** %b, align 8
  store i8* %28, i8** %begalt, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.3639, %if.end.24
  %29 = load i8*, i8** %p, align 8
  %30 = load i8*, i8** %pend, align 8
  %cmp26 = icmp ne i8* %29, %30
  br i1 %cmp26, label %while.body, label %while.end.3640

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %31 = load i8*, i8** %p, align 8
  %32 = load i8*, i8** %pend, align 8
  %cmp27 = icmp eq i8* %31, %32
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %do.body
  store i32 14, i32* %retval
  br label %return

if.end.29:                                        ; preds = %do.body
  %33 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %c, align 1
  %35 = load i8*, i8** %translate, align 8
  %tobool30 = icmp ne i8* %35, null
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  %36 = load i8, i8* %c, align 1
  %idxprom = zext i8 %36 to i64
  %37 = load i8*, i8** %translate, align 8
  %arrayidx = getelementptr inbounds i8, i8* %37, i64 %idxprom
  %38 = load i8, i8* %arrayidx, align 1
  store i8 %38, i8* %c, align 1
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.29
  br label %do.end

do.end:                                           ; preds = %if.end.32
  %39 = load i8, i8* %c, align 1
  %conv = zext i8 %39 to i32
  switch i32 %conv, label %sw.default.3410 [
    i32 94, label %sw.bb
    i32 36, label %sw.bb.116
    i32 43, label %sw.bb.208
    i32 63, label %sw.bb.208
    i32 42, label %sw.bb.216
    i32 46, label %sw.bb.623
    i32 91, label %sw.bb.703
    i32 40, label %sw.bb.1569
    i32 41, label %sw.bb.1574
    i32 10, label %sw.bb.1579
    i32 124, label %sw.bb.1584
    i32 123, label %sw.bb.1589
    i32 92, label %sw.bb.1597
  ]

sw.bb:                                            ; preds = %do.end
  %40 = load i8*, i8** %p, align 8
  %41 = load i8*, i8** %pattern.addr, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %41, i64 1
  %cmp34 = icmp eq i8* %40, %add.ptr33
  br i1 %cmp34, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %42 = load i64, i64* %syntax.addr, align 8
  %and = and i64 %42, 8
  %tobool36 = icmp ne i64 %and, 0
  br i1 %tobool36, label %if.then.41, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false
  %43 = load i8*, i8** %pattern.addr, align 8
  %44 = load i8*, i8** %p, align 8
  %45 = load i64, i64* %syntax.addr, align 8
  %call38 = call signext i8 @at_begline_loc_p(i8* %43, i8* %44, i64 %45)
  %conv39 = sext i8 %call38 to i32
  %tobool40 = icmp ne i32 %conv39, 0
  br i1 %tobool40, label %if.then.41, label %if.else.114

if.then.41:                                       ; preds = %lor.lhs.false.37, %lor.lhs.false, %sw.bb
  br label %do.body.42

do.body.42:                                       ; preds = %if.then.41
  br label %while.cond.43

while.cond.43:                                    ; preds = %do.end.111, %do.body.42
  %46 = load i8*, i8** %b, align 8
  %47 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer44 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %47, i32 0, i32 0
  %48 = load i8*, i8** %buffer44, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %46 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %49 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated45 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %49, i32 0, i32 1
  %50 = load i64, i64* %allocated45, align 8
  %cmp46 = icmp ugt i64 %add, %50
  br i1 %cmp46, label %while.body.48, label %while.end

while.body.48:                                    ; preds = %while.cond.43
  br label %do.body.49

do.body.49:                                       ; preds = %while.body.48
  %51 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer50 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %51, i32 0, i32 0
  %52 = load i8*, i8** %buffer50, align 8
  store i8* %52, i8** %old_buffer, align 8
  %53 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated51 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %53, i32 0, i32 1
  %54 = load i64, i64* %allocated51, align 8
  %cmp52 = icmp eq i64 %54, 65536
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %do.body.49
  store i32 15, i32* %retval
  br label %return

if.end.55:                                        ; preds = %do.body.49
  %55 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated56 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %55, i32 0, i32 1
  %56 = load i64, i64* %allocated56, align 8
  %shl = shl i64 %56, 1
  store i64 %shl, i64* %allocated56, align 8
  %57 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated57 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %57, i32 0, i32 1
  %58 = load i64, i64* %allocated57, align 8
  %cmp58 = icmp ugt i64 %58, 65536
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.end.55
  %59 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated61 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %59, i32 0, i32 1
  store i64 65536, i64* %allocated61, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.end.55
  %60 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer63 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %60, i32 0, i32 0
  %61 = load i8*, i8** %buffer63, align 8
  %62 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated64 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %62, i32 0, i32 1
  %63 = load i64, i64* %allocated64, align 8
  %call65 = call i8* @realloc(i8* %61, i64 %63) #1
  %64 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer66 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %64, i32 0, i32 0
  store i8* %call65, i8** %buffer66, align 8
  %65 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer67 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %65, i32 0, i32 0
  %66 = load i8*, i8** %buffer67, align 8
  %cmp68 = icmp eq i8* %66, null
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.62
  store i32 12, i32* %retval
  br label %return

if.end.71:                                        ; preds = %if.end.62
  %67 = load i8*, i8** %old_buffer, align 8
  %68 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer72 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %68, i32 0, i32 0
  %69 = load i8*, i8** %buffer72, align 8
  %cmp73 = icmp ne i8* %67, %69
  br i1 %cmp73, label %if.then.75, label %if.end.110

if.then.75:                                       ; preds = %if.end.71
  %70 = load i8*, i8** %b, align 8
  %71 = load i8*, i8** %old_buffer, align 8
  %sub.ptr.lhs.cast76 = ptrtoint i8* %70 to i64
  %sub.ptr.rhs.cast77 = ptrtoint i8* %71 to i64
  %sub.ptr.sub78 = sub i64 %sub.ptr.lhs.cast76, %sub.ptr.rhs.cast77
  %72 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer79 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %72, i32 0, i32 0
  %73 = load i8*, i8** %buffer79, align 8
  %add.ptr80 = getelementptr inbounds i8, i8* %73, i64 %sub.ptr.sub78
  store i8* %add.ptr80, i8** %b, align 8
  %74 = load i8*, i8** %begalt, align 8
  %75 = load i8*, i8** %old_buffer, align 8
  %sub.ptr.lhs.cast81 = ptrtoint i8* %74 to i64
  %sub.ptr.rhs.cast82 = ptrtoint i8* %75 to i64
  %sub.ptr.sub83 = sub i64 %sub.ptr.lhs.cast81, %sub.ptr.rhs.cast82
  %76 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer84 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %76, i32 0, i32 0
  %77 = load i8*, i8** %buffer84, align 8
  %add.ptr85 = getelementptr inbounds i8, i8* %77, i64 %sub.ptr.sub83
  store i8* %add.ptr85, i8** %begalt, align 8
  %78 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool86 = icmp ne i8* %78, null
  br i1 %tobool86, label %if.then.87, label %if.end.93

if.then.87:                                       ; preds = %if.then.75
  %79 = load i8*, i8** %fixup_alt_jump, align 8
  %80 = load i8*, i8** %old_buffer, align 8
  %sub.ptr.lhs.cast88 = ptrtoint i8* %79 to i64
  %sub.ptr.rhs.cast89 = ptrtoint i8* %80 to i64
  %sub.ptr.sub90 = sub i64 %sub.ptr.lhs.cast88, %sub.ptr.rhs.cast89
  %81 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer91 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %81, i32 0, i32 0
  %82 = load i8*, i8** %buffer91, align 8
  %add.ptr92 = getelementptr inbounds i8, i8* %82, i64 %sub.ptr.sub90
  store i8* %add.ptr92, i8** %fixup_alt_jump, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.87, %if.then.75
  %83 = load i8*, i8** %laststart, align 8
  %tobool94 = icmp ne i8* %83, null
  br i1 %tobool94, label %if.then.95, label %if.end.101

if.then.95:                                       ; preds = %if.end.93
  %84 = load i8*, i8** %laststart, align 8
  %85 = load i8*, i8** %old_buffer, align 8
  %sub.ptr.lhs.cast96 = ptrtoint i8* %84 to i64
  %sub.ptr.rhs.cast97 = ptrtoint i8* %85 to i64
  %sub.ptr.sub98 = sub i64 %sub.ptr.lhs.cast96, %sub.ptr.rhs.cast97
  %86 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer99 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %86, i32 0, i32 0
  %87 = load i8*, i8** %buffer99, align 8
  %add.ptr100 = getelementptr inbounds i8, i8* %87, i64 %sub.ptr.sub98
  store i8* %add.ptr100, i8** %laststart, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.95, %if.end.93
  %88 = load i8*, i8** %pending_exact, align 8
  %tobool102 = icmp ne i8* %88, null
  br i1 %tobool102, label %if.then.103, label %if.end.109

if.then.103:                                      ; preds = %if.end.101
  %89 = load i8*, i8** %pending_exact, align 8
  %90 = load i8*, i8** %old_buffer, align 8
  %sub.ptr.lhs.cast104 = ptrtoint i8* %89 to i64
  %sub.ptr.rhs.cast105 = ptrtoint i8* %90 to i64
  %sub.ptr.sub106 = sub i64 %sub.ptr.lhs.cast104, %sub.ptr.rhs.cast105
  %91 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer107 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %91, i32 0, i32 0
  %92 = load i8*, i8** %buffer107, align 8
  %add.ptr108 = getelementptr inbounds i8, i8* %92, i64 %sub.ptr.sub106
  store i8* %add.ptr108, i8** %pending_exact, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.103, %if.end.101
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.end.71
  br label %do.end.111

do.end.111:                                       ; preds = %if.end.110
  br label %while.cond.43

while.end:                                        ; preds = %while.cond.43
  %93 = load i8*, i8** %b, align 8
  %incdec.ptr112 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr112, i8** %b, align 8
  store i8 9, i8* %93, align 1
  br label %do.end.113

do.end.113:                                       ; preds = %while.end
  br label %if.end.115

if.else.114:                                      ; preds = %lor.lhs.false.37
  br label %normal_char

if.end.115:                                       ; preds = %do.end.113
  br label %sw.epilog.3639

sw.bb.116:                                        ; preds = %do.end
  %94 = load i8*, i8** %p, align 8
  %95 = load i8*, i8** %pend, align 8
  %cmp117 = icmp eq i8* %94, %95
  br i1 %cmp117, label %if.then.126, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %sw.bb.116
  %96 = load i64, i64* %syntax.addr, align 8
  %and120 = and i64 %96, 8
  %tobool121 = icmp ne i64 %and120, 0
  br i1 %tobool121, label %if.then.126, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %lor.lhs.false.119
  %97 = load i8*, i8** %p, align 8
  %98 = load i8*, i8** %pend, align 8
  %99 = load i64, i64* %syntax.addr, align 8
  %call123 = call signext i8 @at_endline_loc_p(i8* %97, i8* %98, i64 %99)
  %conv124 = sext i8 %call123 to i32
  %tobool125 = icmp ne i32 %conv124, 0
  br i1 %tobool125, label %if.then.126, label %if.else.206

if.then.126:                                      ; preds = %lor.lhs.false.122, %lor.lhs.false.119, %sw.bb.116
  br label %do.body.127

do.body.127:                                      ; preds = %if.then.126
  br label %while.cond.128

while.cond.128:                                   ; preds = %do.end.202, %do.body.127
  %100 = load i8*, i8** %b, align 8
  %101 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer129 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %101, i32 0, i32 0
  %102 = load i8*, i8** %buffer129, align 8
  %sub.ptr.lhs.cast130 = ptrtoint i8* %100 to i64
  %sub.ptr.rhs.cast131 = ptrtoint i8* %102 to i64
  %sub.ptr.sub132 = sub i64 %sub.ptr.lhs.cast130, %sub.ptr.rhs.cast131
  %add133 = add nsw i64 %sub.ptr.sub132, 1
  %103 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated134 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %103, i32 0, i32 1
  %104 = load i64, i64* %allocated134, align 8
  %cmp135 = icmp ugt i64 %add133, %104
  br i1 %cmp135, label %while.body.137, label %while.end.203

while.body.137:                                   ; preds = %while.cond.128
  br label %do.body.138

do.body.138:                                      ; preds = %while.body.137
  %105 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer140 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %105, i32 0, i32 0
  %106 = load i8*, i8** %buffer140, align 8
  store i8* %106, i8** %old_buffer139, align 8
  %107 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated141 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %107, i32 0, i32 1
  %108 = load i64, i64* %allocated141, align 8
  %cmp142 = icmp eq i64 %108, 65536
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %do.body.138
  store i32 15, i32* %retval
  br label %return

if.end.145:                                       ; preds = %do.body.138
  %109 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated146 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %109, i32 0, i32 1
  %110 = load i64, i64* %allocated146, align 8
  %shl147 = shl i64 %110, 1
  store i64 %shl147, i64* %allocated146, align 8
  %111 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated148 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %111, i32 0, i32 1
  %112 = load i64, i64* %allocated148, align 8
  %cmp149 = icmp ugt i64 %112, 65536
  br i1 %cmp149, label %if.then.151, label %if.end.153

if.then.151:                                      ; preds = %if.end.145
  %113 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated152 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %113, i32 0, i32 1
  store i64 65536, i64* %allocated152, align 8
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.151, %if.end.145
  %114 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer154 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %114, i32 0, i32 0
  %115 = load i8*, i8** %buffer154, align 8
  %116 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated155 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %116, i32 0, i32 1
  %117 = load i64, i64* %allocated155, align 8
  %call156 = call i8* @realloc(i8* %115, i64 %117) #1
  %118 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer157 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %118, i32 0, i32 0
  store i8* %call156, i8** %buffer157, align 8
  %119 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer158 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %119, i32 0, i32 0
  %120 = load i8*, i8** %buffer158, align 8
  %cmp159 = icmp eq i8* %120, null
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.end.153
  store i32 12, i32* %retval
  br label %return

if.end.162:                                       ; preds = %if.end.153
  %121 = load i8*, i8** %old_buffer139, align 8
  %122 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer163 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %122, i32 0, i32 0
  %123 = load i8*, i8** %buffer163, align 8
  %cmp164 = icmp ne i8* %121, %123
  br i1 %cmp164, label %if.then.166, label %if.end.201

if.then.166:                                      ; preds = %if.end.162
  %124 = load i8*, i8** %b, align 8
  %125 = load i8*, i8** %old_buffer139, align 8
  %sub.ptr.lhs.cast167 = ptrtoint i8* %124 to i64
  %sub.ptr.rhs.cast168 = ptrtoint i8* %125 to i64
  %sub.ptr.sub169 = sub i64 %sub.ptr.lhs.cast167, %sub.ptr.rhs.cast168
  %126 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer170 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %126, i32 0, i32 0
  %127 = load i8*, i8** %buffer170, align 8
  %add.ptr171 = getelementptr inbounds i8, i8* %127, i64 %sub.ptr.sub169
  store i8* %add.ptr171, i8** %b, align 8
  %128 = load i8*, i8** %begalt, align 8
  %129 = load i8*, i8** %old_buffer139, align 8
  %sub.ptr.lhs.cast172 = ptrtoint i8* %128 to i64
  %sub.ptr.rhs.cast173 = ptrtoint i8* %129 to i64
  %sub.ptr.sub174 = sub i64 %sub.ptr.lhs.cast172, %sub.ptr.rhs.cast173
  %130 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer175 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %130, i32 0, i32 0
  %131 = load i8*, i8** %buffer175, align 8
  %add.ptr176 = getelementptr inbounds i8, i8* %131, i64 %sub.ptr.sub174
  store i8* %add.ptr176, i8** %begalt, align 8
  %132 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool177 = icmp ne i8* %132, null
  br i1 %tobool177, label %if.then.178, label %if.end.184

if.then.178:                                      ; preds = %if.then.166
  %133 = load i8*, i8** %fixup_alt_jump, align 8
  %134 = load i8*, i8** %old_buffer139, align 8
  %sub.ptr.lhs.cast179 = ptrtoint i8* %133 to i64
  %sub.ptr.rhs.cast180 = ptrtoint i8* %134 to i64
  %sub.ptr.sub181 = sub i64 %sub.ptr.lhs.cast179, %sub.ptr.rhs.cast180
  %135 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer182 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %135, i32 0, i32 0
  %136 = load i8*, i8** %buffer182, align 8
  %add.ptr183 = getelementptr inbounds i8, i8* %136, i64 %sub.ptr.sub181
  store i8* %add.ptr183, i8** %fixup_alt_jump, align 8
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.178, %if.then.166
  %137 = load i8*, i8** %laststart, align 8
  %tobool185 = icmp ne i8* %137, null
  br i1 %tobool185, label %if.then.186, label %if.end.192

if.then.186:                                      ; preds = %if.end.184
  %138 = load i8*, i8** %laststart, align 8
  %139 = load i8*, i8** %old_buffer139, align 8
  %sub.ptr.lhs.cast187 = ptrtoint i8* %138 to i64
  %sub.ptr.rhs.cast188 = ptrtoint i8* %139 to i64
  %sub.ptr.sub189 = sub i64 %sub.ptr.lhs.cast187, %sub.ptr.rhs.cast188
  %140 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer190 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %140, i32 0, i32 0
  %141 = load i8*, i8** %buffer190, align 8
  %add.ptr191 = getelementptr inbounds i8, i8* %141, i64 %sub.ptr.sub189
  store i8* %add.ptr191, i8** %laststart, align 8
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.186, %if.end.184
  %142 = load i8*, i8** %pending_exact, align 8
  %tobool193 = icmp ne i8* %142, null
  br i1 %tobool193, label %if.then.194, label %if.end.200

if.then.194:                                      ; preds = %if.end.192
  %143 = load i8*, i8** %pending_exact, align 8
  %144 = load i8*, i8** %old_buffer139, align 8
  %sub.ptr.lhs.cast195 = ptrtoint i8* %143 to i64
  %sub.ptr.rhs.cast196 = ptrtoint i8* %144 to i64
  %sub.ptr.sub197 = sub i64 %sub.ptr.lhs.cast195, %sub.ptr.rhs.cast196
  %145 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer198 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %145, i32 0, i32 0
  %146 = load i8*, i8** %buffer198, align 8
  %add.ptr199 = getelementptr inbounds i8, i8* %146, i64 %sub.ptr.sub197
  store i8* %add.ptr199, i8** %pending_exact, align 8
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.194, %if.end.192
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.end.162
  br label %do.end.202

do.end.202:                                       ; preds = %if.end.201
  br label %while.cond.128

while.end.203:                                    ; preds = %while.cond.128
  %147 = load i8*, i8** %b, align 8
  %incdec.ptr204 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %incdec.ptr204, i8** %b, align 8
  store i8 10, i8* %147, align 1
  br label %do.end.205

do.end.205:                                       ; preds = %while.end.203
  br label %if.end.207

if.else.206:                                      ; preds = %lor.lhs.false.122
  br label %normal_char

if.end.207:                                       ; preds = %do.end.205
  br label %sw.epilog.3639

sw.bb.208:                                        ; preds = %do.end, %do.end
  %148 = load i64, i64* %syntax.addr, align 8
  %and209 = and i64 %148, 2
  %tobool210 = icmp ne i64 %and209, 0
  br i1 %tobool210, label %if.then.214, label %lor.lhs.false.211

lor.lhs.false.211:                                ; preds = %sw.bb.208
  %149 = load i64, i64* %syntax.addr, align 8
  %and212 = and i64 %149, 1024
  %tobool213 = icmp ne i64 %and212, 0
  br i1 %tobool213, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %lor.lhs.false.211, %sw.bb.208
  br label %normal_char

if.end.215:                                       ; preds = %lor.lhs.false.211
  br label %handle_plus

handle_plus:                                      ; preds = %if.then.3398, %if.end.215
  br label %sw.bb.216

sw.bb.216:                                        ; preds = %do.end, %handle_plus
  %150 = load i8*, i8** %laststart, align 8
  %tobool217 = icmp ne i8* %150, null
  br i1 %tobool217, label %if.end.229, label %if.then.218

if.then.218:                                      ; preds = %sw.bb.216
  %151 = load i64, i64* %syntax.addr, align 8
  %and219 = and i64 %151, 32
  %tobool220 = icmp ne i64 %and219, 0
  br i1 %tobool220, label %if.then.221, label %if.else.223

if.then.221:                                      ; preds = %if.then.218
  %stack222 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %152 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack222, align 8
  %153 = bitcast %struct.compile_stack_elt_t* %152 to i8*
  call void @free(i8* %153) #1
  store i32 13, i32* %retval
  br label %return

if.else.223:                                      ; preds = %if.then.218
  %154 = load i64, i64* %syntax.addr, align 8
  %and224 = and i64 %154, 16
  %tobool225 = icmp ne i64 %and224, 0
  br i1 %tobool225, label %if.end.227, label %if.then.226

if.then.226:                                      ; preds = %if.else.223
  br label %normal_char

if.end.227:                                       ; preds = %if.else.223
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %sw.bb.216
  store i8 0, i8* %keep_string_p, align 1
  store i8 0, i8* %zero_times_ok, align 1
  store i8 0, i8* %many_times_ok, align 1
  br label %for.cond

for.cond:                                         ; preds = %if.end.310, %if.end.229
  %155 = load i8, i8* %c, align 1
  %conv230 = zext i8 %155 to i32
  %cmp231 = icmp ne i32 %conv230, 43
  %conv232 = zext i1 %cmp231 to i32
  %156 = load i8, i8* %zero_times_ok, align 1
  %conv233 = sext i8 %156 to i32
  %or = or i32 %conv233, %conv232
  %conv234 = trunc i32 %or to i8
  store i8 %conv234, i8* %zero_times_ok, align 1
  %157 = load i8, i8* %c, align 1
  %conv235 = zext i8 %157 to i32
  %cmp236 = icmp ne i32 %conv235, 63
  %conv237 = zext i1 %cmp236 to i32
  %158 = load i8, i8* %many_times_ok, align 1
  %conv238 = sext i8 %158 to i32
  %or239 = or i32 %conv238, %conv237
  %conv240 = trunc i32 %or239 to i8
  store i8 %conv240, i8* %many_times_ok, align 1
  %159 = load i8*, i8** %p, align 8
  %160 = load i8*, i8** %pend, align 8
  %cmp241 = icmp eq i8* %159, %160
  br i1 %cmp241, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %for.cond
  br label %for.end

if.end.244:                                       ; preds = %for.cond
  br label %do.body.245

do.body.245:                                      ; preds = %if.end.244
  %161 = load i8*, i8** %p, align 8
  %162 = load i8*, i8** %pend, align 8
  %cmp246 = icmp eq i8* %161, %162
  br i1 %cmp246, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %do.body.245
  store i32 14, i32* %retval
  br label %return

if.end.249:                                       ; preds = %do.body.245
  %163 = load i8*, i8** %p, align 8
  %incdec.ptr250 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %incdec.ptr250, i8** %p, align 8
  %164 = load i8, i8* %163, align 1
  store i8 %164, i8* %c, align 1
  %165 = load i8*, i8** %translate, align 8
  %tobool251 = icmp ne i8* %165, null
  br i1 %tobool251, label %if.then.252, label %if.end.255

if.then.252:                                      ; preds = %if.end.249
  %166 = load i8, i8* %c, align 1
  %idxprom253 = zext i8 %166 to i64
  %167 = load i8*, i8** %translate, align 8
  %arrayidx254 = getelementptr inbounds i8, i8* %167, i64 %idxprom253
  %168 = load i8, i8* %arrayidx254, align 1
  store i8 %168, i8* %c, align 1
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.252, %if.end.249
  br label %do.end.256

do.end.256:                                       ; preds = %if.end.255
  %169 = load i8, i8* %c, align 1
  %conv257 = zext i8 %169 to i32
  %cmp258 = icmp eq i32 %conv257, 42
  br i1 %cmp258, label %if.then.270, label %lor.lhs.false.260

lor.lhs.false.260:                                ; preds = %do.end.256
  %170 = load i64, i64* %syntax.addr, align 8
  %and261 = and i64 %170, 2
  %tobool262 = icmp ne i64 %and261, 0
  br i1 %tobool262, label %if.else.271, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.260
  %171 = load i8, i8* %c, align 1
  %conv263 = zext i8 %171 to i32
  %cmp264 = icmp eq i32 %conv263, 43
  br i1 %cmp264, label %if.then.270, label %lor.lhs.false.266

lor.lhs.false.266:                                ; preds = %land.lhs.true
  %172 = load i8, i8* %c, align 1
  %conv267 = zext i8 %172 to i32
  %cmp268 = icmp eq i32 %conv267, 63
  br i1 %cmp268, label %if.then.270, label %if.else.271

if.then.270:                                      ; preds = %lor.lhs.false.266, %land.lhs.true, %do.end.256
  br label %if.end.310

if.else.271:                                      ; preds = %lor.lhs.false.266, %lor.lhs.false.260
  %173 = load i64, i64* %syntax.addr, align 8
  %and272 = and i64 %173, 2
  %tobool273 = icmp ne i64 %and272, 0
  br i1 %tobool273, label %land.lhs.true.274, label %if.else.307

land.lhs.true.274:                                ; preds = %if.else.271
  %174 = load i8, i8* %c, align 1
  %conv275 = zext i8 %174 to i32
  %cmp276 = icmp eq i32 %conv275, 92
  br i1 %cmp276, label %if.then.278, label %if.else.307

if.then.278:                                      ; preds = %land.lhs.true.274
  %175 = load i8*, i8** %p, align 8
  %176 = load i8*, i8** %pend, align 8
  %cmp279 = icmp eq i8* %175, %176
  br i1 %cmp279, label %if.then.281, label %if.end.283

if.then.281:                                      ; preds = %if.then.278
  %stack282 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %177 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack282, align 8
  %178 = bitcast %struct.compile_stack_elt_t* %177 to i8*
  call void @free(i8* %178) #1
  store i32 5, i32* %retval
  br label %return

if.end.283:                                       ; preds = %if.then.278
  br label %do.body.284

do.body.284:                                      ; preds = %if.end.283
  %179 = load i8*, i8** %p, align 8
  %180 = load i8*, i8** %pend, align 8
  %cmp285 = icmp eq i8* %179, %180
  br i1 %cmp285, label %if.then.287, label %if.end.288

if.then.287:                                      ; preds = %do.body.284
  store i32 14, i32* %retval
  br label %return

if.end.288:                                       ; preds = %do.body.284
  %181 = load i8*, i8** %p, align 8
  %incdec.ptr289 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %incdec.ptr289, i8** %p, align 8
  %182 = load i8, i8* %181, align 1
  store i8 %182, i8* %c1, align 1
  %183 = load i8*, i8** %translate, align 8
  %tobool290 = icmp ne i8* %183, null
  br i1 %tobool290, label %if.then.291, label %if.end.294

if.then.291:                                      ; preds = %if.end.288
  %184 = load i8, i8* %c1, align 1
  %idxprom292 = zext i8 %184 to i64
  %185 = load i8*, i8** %translate, align 8
  %arrayidx293 = getelementptr inbounds i8, i8* %185, i64 %idxprom292
  %186 = load i8, i8* %arrayidx293, align 1
  store i8 %186, i8* %c1, align 1
  br label %if.end.294

if.end.294:                                       ; preds = %if.then.291, %if.end.288
  br label %do.end.295

do.end.295:                                       ; preds = %if.end.294
  %187 = load i8, i8* %c1, align 1
  %conv296 = zext i8 %187 to i32
  %cmp297 = icmp eq i32 %conv296, 43
  br i1 %cmp297, label %if.end.306, label %lor.lhs.false.299

lor.lhs.false.299:                                ; preds = %do.end.295
  %188 = load i8, i8* %c1, align 1
  %conv300 = zext i8 %188 to i32
  %cmp301 = icmp eq i32 %conv300, 63
  br i1 %cmp301, label %if.end.306, label %if.then.303

if.then.303:                                      ; preds = %lor.lhs.false.299
  %189 = load i8*, i8** %p, align 8
  %incdec.ptr304 = getelementptr inbounds i8, i8* %189, i32 -1
  store i8* %incdec.ptr304, i8** %p, align 8
  %190 = load i8*, i8** %p, align 8
  %incdec.ptr305 = getelementptr inbounds i8, i8* %190, i32 -1
  store i8* %incdec.ptr305, i8** %p, align 8
  br label %for.end

if.end.306:                                       ; preds = %lor.lhs.false.299, %do.end.295
  %191 = load i8, i8* %c1, align 1
  store i8 %191, i8* %c, align 1
  br label %if.end.309

if.else.307:                                      ; preds = %land.lhs.true.274, %if.else.271
  %192 = load i8*, i8** %p, align 8
  %incdec.ptr308 = getelementptr inbounds i8, i8* %192, i32 -1
  store i8* %incdec.ptr308, i8** %p, align 8
  br label %for.end

if.end.309:                                       ; preds = %if.end.306
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %if.then.270
  br label %for.cond

for.end:                                          ; preds = %if.else.307, %if.then.303, %if.then.243
  %193 = load i8*, i8** %laststart, align 8
  %tobool311 = icmp ne i8* %193, null
  br i1 %tobool311, label %if.end.313, label %if.then.312

if.then.312:                                      ; preds = %for.end
  br label %sw.epilog.3639

if.end.313:                                       ; preds = %for.end
  %194 = load i8, i8* %many_times_ok, align 1
  %tobool314 = icmp ne i8 %194, 0
  br i1 %tobool314, label %if.then.315, label %if.end.450

if.then.315:                                      ; preds = %if.end.313
  br label %while.cond.316

while.cond.316:                                   ; preds = %do.end.390, %if.then.315
  %195 = load i8*, i8** %b, align 8
  %196 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer317 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %196, i32 0, i32 0
  %197 = load i8*, i8** %buffer317, align 8
  %sub.ptr.lhs.cast318 = ptrtoint i8* %195 to i64
  %sub.ptr.rhs.cast319 = ptrtoint i8* %197 to i64
  %sub.ptr.sub320 = sub i64 %sub.ptr.lhs.cast318, %sub.ptr.rhs.cast319
  %add321 = add nsw i64 %sub.ptr.sub320, 3
  %198 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated322 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %198, i32 0, i32 1
  %199 = load i64, i64* %allocated322, align 8
  %cmp323 = icmp ugt i64 %add321, %199
  br i1 %cmp323, label %while.body.325, label %while.end.391

while.body.325:                                   ; preds = %while.cond.316
  br label %do.body.326

do.body.326:                                      ; preds = %while.body.325
  %200 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer328 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %200, i32 0, i32 0
  %201 = load i8*, i8** %buffer328, align 8
  store i8* %201, i8** %old_buffer327, align 8
  %202 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated329 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %202, i32 0, i32 1
  %203 = load i64, i64* %allocated329, align 8
  %cmp330 = icmp eq i64 %203, 65536
  br i1 %cmp330, label %if.then.332, label %if.end.333

if.then.332:                                      ; preds = %do.body.326
  store i32 15, i32* %retval
  br label %return

if.end.333:                                       ; preds = %do.body.326
  %204 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated334 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %204, i32 0, i32 1
  %205 = load i64, i64* %allocated334, align 8
  %shl335 = shl i64 %205, 1
  store i64 %shl335, i64* %allocated334, align 8
  %206 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated336 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %206, i32 0, i32 1
  %207 = load i64, i64* %allocated336, align 8
  %cmp337 = icmp ugt i64 %207, 65536
  br i1 %cmp337, label %if.then.339, label %if.end.341

if.then.339:                                      ; preds = %if.end.333
  %208 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated340 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %208, i32 0, i32 1
  store i64 65536, i64* %allocated340, align 8
  br label %if.end.341

if.end.341:                                       ; preds = %if.then.339, %if.end.333
  %209 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer342 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %209, i32 0, i32 0
  %210 = load i8*, i8** %buffer342, align 8
  %211 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated343 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %211, i32 0, i32 1
  %212 = load i64, i64* %allocated343, align 8
  %call344 = call i8* @realloc(i8* %210, i64 %212) #1
  %213 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer345 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %213, i32 0, i32 0
  store i8* %call344, i8** %buffer345, align 8
  %214 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer346 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %214, i32 0, i32 0
  %215 = load i8*, i8** %buffer346, align 8
  %cmp347 = icmp eq i8* %215, null
  br i1 %cmp347, label %if.then.349, label %if.end.350

if.then.349:                                      ; preds = %if.end.341
  store i32 12, i32* %retval
  br label %return

if.end.350:                                       ; preds = %if.end.341
  %216 = load i8*, i8** %old_buffer327, align 8
  %217 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer351 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %217, i32 0, i32 0
  %218 = load i8*, i8** %buffer351, align 8
  %cmp352 = icmp ne i8* %216, %218
  br i1 %cmp352, label %if.then.354, label %if.end.389

if.then.354:                                      ; preds = %if.end.350
  %219 = load i8*, i8** %b, align 8
  %220 = load i8*, i8** %old_buffer327, align 8
  %sub.ptr.lhs.cast355 = ptrtoint i8* %219 to i64
  %sub.ptr.rhs.cast356 = ptrtoint i8* %220 to i64
  %sub.ptr.sub357 = sub i64 %sub.ptr.lhs.cast355, %sub.ptr.rhs.cast356
  %221 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer358 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %221, i32 0, i32 0
  %222 = load i8*, i8** %buffer358, align 8
  %add.ptr359 = getelementptr inbounds i8, i8* %222, i64 %sub.ptr.sub357
  store i8* %add.ptr359, i8** %b, align 8
  %223 = load i8*, i8** %begalt, align 8
  %224 = load i8*, i8** %old_buffer327, align 8
  %sub.ptr.lhs.cast360 = ptrtoint i8* %223 to i64
  %sub.ptr.rhs.cast361 = ptrtoint i8* %224 to i64
  %sub.ptr.sub362 = sub i64 %sub.ptr.lhs.cast360, %sub.ptr.rhs.cast361
  %225 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer363 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %225, i32 0, i32 0
  %226 = load i8*, i8** %buffer363, align 8
  %add.ptr364 = getelementptr inbounds i8, i8* %226, i64 %sub.ptr.sub362
  store i8* %add.ptr364, i8** %begalt, align 8
  %227 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool365 = icmp ne i8* %227, null
  br i1 %tobool365, label %if.then.366, label %if.end.372

if.then.366:                                      ; preds = %if.then.354
  %228 = load i8*, i8** %fixup_alt_jump, align 8
  %229 = load i8*, i8** %old_buffer327, align 8
  %sub.ptr.lhs.cast367 = ptrtoint i8* %228 to i64
  %sub.ptr.rhs.cast368 = ptrtoint i8* %229 to i64
  %sub.ptr.sub369 = sub i64 %sub.ptr.lhs.cast367, %sub.ptr.rhs.cast368
  %230 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer370 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %230, i32 0, i32 0
  %231 = load i8*, i8** %buffer370, align 8
  %add.ptr371 = getelementptr inbounds i8, i8* %231, i64 %sub.ptr.sub369
  store i8* %add.ptr371, i8** %fixup_alt_jump, align 8
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.366, %if.then.354
  %232 = load i8*, i8** %laststart, align 8
  %tobool373 = icmp ne i8* %232, null
  br i1 %tobool373, label %if.then.374, label %if.end.380

if.then.374:                                      ; preds = %if.end.372
  %233 = load i8*, i8** %laststart, align 8
  %234 = load i8*, i8** %old_buffer327, align 8
  %sub.ptr.lhs.cast375 = ptrtoint i8* %233 to i64
  %sub.ptr.rhs.cast376 = ptrtoint i8* %234 to i64
  %sub.ptr.sub377 = sub i64 %sub.ptr.lhs.cast375, %sub.ptr.rhs.cast376
  %235 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer378 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %235, i32 0, i32 0
  %236 = load i8*, i8** %buffer378, align 8
  %add.ptr379 = getelementptr inbounds i8, i8* %236, i64 %sub.ptr.sub377
  store i8* %add.ptr379, i8** %laststart, align 8
  br label %if.end.380

if.end.380:                                       ; preds = %if.then.374, %if.end.372
  %237 = load i8*, i8** %pending_exact, align 8
  %tobool381 = icmp ne i8* %237, null
  br i1 %tobool381, label %if.then.382, label %if.end.388

if.then.382:                                      ; preds = %if.end.380
  %238 = load i8*, i8** %pending_exact, align 8
  %239 = load i8*, i8** %old_buffer327, align 8
  %sub.ptr.lhs.cast383 = ptrtoint i8* %238 to i64
  %sub.ptr.rhs.cast384 = ptrtoint i8* %239 to i64
  %sub.ptr.sub385 = sub i64 %sub.ptr.lhs.cast383, %sub.ptr.rhs.cast384
  %240 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer386 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %240, i32 0, i32 0
  %241 = load i8*, i8** %buffer386, align 8
  %add.ptr387 = getelementptr inbounds i8, i8* %241, i64 %sub.ptr.sub385
  store i8* %add.ptr387, i8** %pending_exact, align 8
  br label %if.end.388

if.end.388:                                       ; preds = %if.then.382, %if.end.380
  br label %if.end.389

if.end.389:                                       ; preds = %if.end.388, %if.end.350
  br label %do.end.390

do.end.390:                                       ; preds = %if.end.389
  br label %while.cond.316

while.end.391:                                    ; preds = %while.cond.316
  %242 = load i8*, i8** %translate, align 8
  %tobool392 = icmp ne i8* %242, null
  br i1 %tobool392, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end.391
  %243 = load i8*, i8** %p, align 8
  %add.ptr393 = getelementptr inbounds i8, i8* %243, i64 -2
  %244 = load i8, i8* %add.ptr393, align 1
  %idxprom394 = zext i8 %244 to i64
  %245 = load i8*, i8** %translate, align 8
  %arrayidx395 = getelementptr inbounds i8, i8* %245, i64 %idxprom394
  %246 = load i8, i8* %arrayidx395, align 1
  %conv396 = sext i8 %246 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.end.391
  %247 = load i8*, i8** %p, align 8
  %add.ptr397 = getelementptr inbounds i8, i8* %247, i64 -2
  %248 = load i8, i8* %add.ptr397, align 1
  %conv398 = sext i8 %248 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv396, %cond.true ], [ %conv398, %cond.false ]
  %249 = load i8*, i8** %translate, align 8
  %tobool399 = icmp ne i8* %249, null
  br i1 %tobool399, label %cond.true.400, label %cond.false.403

cond.true.400:                                    ; preds = %cond.end
  %250 = load i8*, i8** %translate, align 8
  %arrayidx401 = getelementptr inbounds i8, i8* %250, i64 46
  %251 = load i8, i8* %arrayidx401, align 1
  %conv402 = sext i8 %251 to i32
  br label %cond.end.404

cond.false.403:                                   ; preds = %cond.end
  br label %cond.end.404

cond.end.404:                                     ; preds = %cond.false.403, %cond.true.400
  %cond405 = phi i32 [ %conv402, %cond.true.400 ], [ 46, %cond.false.403 ]
  %cmp406 = icmp eq i32 %cond, %cond405
  br i1 %cmp406, label %land.lhs.true.408, label %if.else.441

land.lhs.true.408:                                ; preds = %cond.end.404
  %252 = load i8, i8* %zero_times_ok, align 1
  %conv409 = sext i8 %252 to i32
  %tobool410 = icmp ne i32 %conv409, 0
  br i1 %tobool410, label %land.lhs.true.411, label %if.else.441

land.lhs.true.411:                                ; preds = %land.lhs.true.408
  %253 = load i8*, i8** %p, align 8
  %254 = load i8*, i8** %pend, align 8
  %cmp412 = icmp ult i8* %253, %254
  br i1 %cmp412, label %land.lhs.true.414, label %if.else.441

land.lhs.true.414:                                ; preds = %land.lhs.true.411
  %255 = load i8*, i8** %translate, align 8
  %tobool415 = icmp ne i8* %255, null
  br i1 %tobool415, label %cond.true.416, label %cond.false.420

cond.true.416:                                    ; preds = %land.lhs.true.414
  %256 = load i8*, i8** %p, align 8
  %257 = load i8, i8* %256, align 1
  %idxprom417 = zext i8 %257 to i64
  %258 = load i8*, i8** %translate, align 8
  %arrayidx418 = getelementptr inbounds i8, i8* %258, i64 %idxprom417
  %259 = load i8, i8* %arrayidx418, align 1
  %conv419 = sext i8 %259 to i32
  br label %cond.end.422

cond.false.420:                                   ; preds = %land.lhs.true.414
  %260 = load i8*, i8** %p, align 8
  %261 = load i8, i8* %260, align 1
  %conv421 = sext i8 %261 to i32
  br label %cond.end.422

cond.end.422:                                     ; preds = %cond.false.420, %cond.true.416
  %cond423 = phi i32 [ %conv419, %cond.true.416 ], [ %conv421, %cond.false.420 ]
  %262 = load i8*, i8** %translate, align 8
  %tobool424 = icmp ne i8* %262, null
  br i1 %tobool424, label %cond.true.425, label %cond.false.428

cond.true.425:                                    ; preds = %cond.end.422
  %263 = load i8*, i8** %translate, align 8
  %arrayidx426 = getelementptr inbounds i8, i8* %263, i64 10
  %264 = load i8, i8* %arrayidx426, align 1
  %conv427 = sext i8 %264 to i32
  br label %cond.end.429

cond.false.428:                                   ; preds = %cond.end.422
  br label %cond.end.429

cond.end.429:                                     ; preds = %cond.false.428, %cond.true.425
  %cond430 = phi i32 [ %conv427, %cond.true.425 ], [ 10, %cond.false.428 ]
  %cmp431 = icmp eq i32 %cond423, %cond430
  br i1 %cmp431, label %land.lhs.true.433, label %if.else.441

land.lhs.true.433:                                ; preds = %cond.end.429
  %265 = load i64, i64* %syntax.addr, align 8
  %and434 = and i64 %265, 64
  %tobool435 = icmp ne i64 %and434, 0
  br i1 %tobool435, label %if.else.441, label %if.then.436

if.then.436:                                      ; preds = %land.lhs.true.433
  %266 = load i8*, i8** %b, align 8
  %267 = load i8*, i8** %laststart, align 8
  %268 = load i8*, i8** %b, align 8
  %sub.ptr.lhs.cast437 = ptrtoint i8* %267 to i64
  %sub.ptr.rhs.cast438 = ptrtoint i8* %268 to i64
  %sub.ptr.sub439 = sub i64 %sub.ptr.lhs.cast437, %sub.ptr.rhs.cast438
  %sub = sub nsw i64 %sub.ptr.sub439, 3
  %conv440 = trunc i64 %sub to i32
  call void @store_op1(i32 13, i8* %266, i32 %conv440)
  store i8 1, i8* %keep_string_p, align 1
  br label %if.end.448

if.else.441:                                      ; preds = %land.lhs.true.433, %cond.end.429, %land.lhs.true.411, %land.lhs.true.408, %cond.end.404
  %269 = load i8*, i8** %b, align 8
  %270 = load i8*, i8** %laststart, align 8
  %add.ptr442 = getelementptr inbounds i8, i8* %270, i64 -3
  %271 = load i8*, i8** %b, align 8
  %sub.ptr.lhs.cast443 = ptrtoint i8* %add.ptr442 to i64
  %sub.ptr.rhs.cast444 = ptrtoint i8* %271 to i64
  %sub.ptr.sub445 = sub i64 %sub.ptr.lhs.cast443, %sub.ptr.rhs.cast444
  %sub446 = sub nsw i64 %sub.ptr.sub445, 3
  %conv447 = trunc i64 %sub446 to i32
  call void @store_op1(i32 18, i8* %269, i32 %conv447)
  br label %if.end.448

if.end.448:                                       ; preds = %if.else.441, %if.then.436
  %272 = load i8*, i8** %b, align 8
  %add.ptr449 = getelementptr inbounds i8, i8* %272, i64 3
  store i8* %add.ptr449, i8** %b, align 8
  br label %if.end.450

if.end.450:                                       ; preds = %if.end.448, %if.end.313
  br label %while.cond.451

while.cond.451:                                   ; preds = %do.end.525, %if.end.450
  %273 = load i8*, i8** %b, align 8
  %274 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer452 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %274, i32 0, i32 0
  %275 = load i8*, i8** %buffer452, align 8
  %sub.ptr.lhs.cast453 = ptrtoint i8* %273 to i64
  %sub.ptr.rhs.cast454 = ptrtoint i8* %275 to i64
  %sub.ptr.sub455 = sub i64 %sub.ptr.lhs.cast453, %sub.ptr.rhs.cast454
  %add456 = add nsw i64 %sub.ptr.sub455, 3
  %276 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated457 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %276, i32 0, i32 1
  %277 = load i64, i64* %allocated457, align 8
  %cmp458 = icmp ugt i64 %add456, %277
  br i1 %cmp458, label %while.body.460, label %while.end.526

while.body.460:                                   ; preds = %while.cond.451
  br label %do.body.461

do.body.461:                                      ; preds = %while.body.460
  %278 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer463 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %278, i32 0, i32 0
  %279 = load i8*, i8** %buffer463, align 8
  store i8* %279, i8** %old_buffer462, align 8
  %280 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated464 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %280, i32 0, i32 1
  %281 = load i64, i64* %allocated464, align 8
  %cmp465 = icmp eq i64 %281, 65536
  br i1 %cmp465, label %if.then.467, label %if.end.468

if.then.467:                                      ; preds = %do.body.461
  store i32 15, i32* %retval
  br label %return

if.end.468:                                       ; preds = %do.body.461
  %282 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated469 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %282, i32 0, i32 1
  %283 = load i64, i64* %allocated469, align 8
  %shl470 = shl i64 %283, 1
  store i64 %shl470, i64* %allocated469, align 8
  %284 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated471 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %284, i32 0, i32 1
  %285 = load i64, i64* %allocated471, align 8
  %cmp472 = icmp ugt i64 %285, 65536
  br i1 %cmp472, label %if.then.474, label %if.end.476

if.then.474:                                      ; preds = %if.end.468
  %286 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated475 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %286, i32 0, i32 1
  store i64 65536, i64* %allocated475, align 8
  br label %if.end.476

if.end.476:                                       ; preds = %if.then.474, %if.end.468
  %287 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer477 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %287, i32 0, i32 0
  %288 = load i8*, i8** %buffer477, align 8
  %289 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated478 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %289, i32 0, i32 1
  %290 = load i64, i64* %allocated478, align 8
  %call479 = call i8* @realloc(i8* %288, i64 %290) #1
  %291 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer480 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %291, i32 0, i32 0
  store i8* %call479, i8** %buffer480, align 8
  %292 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer481 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %292, i32 0, i32 0
  %293 = load i8*, i8** %buffer481, align 8
  %cmp482 = icmp eq i8* %293, null
  br i1 %cmp482, label %if.then.484, label %if.end.485

if.then.484:                                      ; preds = %if.end.476
  store i32 12, i32* %retval
  br label %return

if.end.485:                                       ; preds = %if.end.476
  %294 = load i8*, i8** %old_buffer462, align 8
  %295 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer486 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %295, i32 0, i32 0
  %296 = load i8*, i8** %buffer486, align 8
  %cmp487 = icmp ne i8* %294, %296
  br i1 %cmp487, label %if.then.489, label %if.end.524

if.then.489:                                      ; preds = %if.end.485
  %297 = load i8*, i8** %b, align 8
  %298 = load i8*, i8** %old_buffer462, align 8
  %sub.ptr.lhs.cast490 = ptrtoint i8* %297 to i64
  %sub.ptr.rhs.cast491 = ptrtoint i8* %298 to i64
  %sub.ptr.sub492 = sub i64 %sub.ptr.lhs.cast490, %sub.ptr.rhs.cast491
  %299 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer493 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %299, i32 0, i32 0
  %300 = load i8*, i8** %buffer493, align 8
  %add.ptr494 = getelementptr inbounds i8, i8* %300, i64 %sub.ptr.sub492
  store i8* %add.ptr494, i8** %b, align 8
  %301 = load i8*, i8** %begalt, align 8
  %302 = load i8*, i8** %old_buffer462, align 8
  %sub.ptr.lhs.cast495 = ptrtoint i8* %301 to i64
  %sub.ptr.rhs.cast496 = ptrtoint i8* %302 to i64
  %sub.ptr.sub497 = sub i64 %sub.ptr.lhs.cast495, %sub.ptr.rhs.cast496
  %303 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer498 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %303, i32 0, i32 0
  %304 = load i8*, i8** %buffer498, align 8
  %add.ptr499 = getelementptr inbounds i8, i8* %304, i64 %sub.ptr.sub497
  store i8* %add.ptr499, i8** %begalt, align 8
  %305 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool500 = icmp ne i8* %305, null
  br i1 %tobool500, label %if.then.501, label %if.end.507

if.then.501:                                      ; preds = %if.then.489
  %306 = load i8*, i8** %fixup_alt_jump, align 8
  %307 = load i8*, i8** %old_buffer462, align 8
  %sub.ptr.lhs.cast502 = ptrtoint i8* %306 to i64
  %sub.ptr.rhs.cast503 = ptrtoint i8* %307 to i64
  %sub.ptr.sub504 = sub i64 %sub.ptr.lhs.cast502, %sub.ptr.rhs.cast503
  %308 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer505 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %308, i32 0, i32 0
  %309 = load i8*, i8** %buffer505, align 8
  %add.ptr506 = getelementptr inbounds i8, i8* %309, i64 %sub.ptr.sub504
  store i8* %add.ptr506, i8** %fixup_alt_jump, align 8
  br label %if.end.507

if.end.507:                                       ; preds = %if.then.501, %if.then.489
  %310 = load i8*, i8** %laststart, align 8
  %tobool508 = icmp ne i8* %310, null
  br i1 %tobool508, label %if.then.509, label %if.end.515

if.then.509:                                      ; preds = %if.end.507
  %311 = load i8*, i8** %laststart, align 8
  %312 = load i8*, i8** %old_buffer462, align 8
  %sub.ptr.lhs.cast510 = ptrtoint i8* %311 to i64
  %sub.ptr.rhs.cast511 = ptrtoint i8* %312 to i64
  %sub.ptr.sub512 = sub i64 %sub.ptr.lhs.cast510, %sub.ptr.rhs.cast511
  %313 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer513 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %313, i32 0, i32 0
  %314 = load i8*, i8** %buffer513, align 8
  %add.ptr514 = getelementptr inbounds i8, i8* %314, i64 %sub.ptr.sub512
  store i8* %add.ptr514, i8** %laststart, align 8
  br label %if.end.515

if.end.515:                                       ; preds = %if.then.509, %if.end.507
  %315 = load i8*, i8** %pending_exact, align 8
  %tobool516 = icmp ne i8* %315, null
  br i1 %tobool516, label %if.then.517, label %if.end.523

if.then.517:                                      ; preds = %if.end.515
  %316 = load i8*, i8** %pending_exact, align 8
  %317 = load i8*, i8** %old_buffer462, align 8
  %sub.ptr.lhs.cast518 = ptrtoint i8* %316 to i64
  %sub.ptr.rhs.cast519 = ptrtoint i8* %317 to i64
  %sub.ptr.sub520 = sub i64 %sub.ptr.lhs.cast518, %sub.ptr.rhs.cast519
  %318 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer521 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %318, i32 0, i32 0
  %319 = load i8*, i8** %buffer521, align 8
  %add.ptr522 = getelementptr inbounds i8, i8* %319, i64 %sub.ptr.sub520
  store i8* %add.ptr522, i8** %pending_exact, align 8
  br label %if.end.523

if.end.523:                                       ; preds = %if.then.517, %if.end.515
  br label %if.end.524

if.end.524:                                       ; preds = %if.end.523, %if.end.485
  br label %do.end.525

do.end.525:                                       ; preds = %if.end.524
  br label %while.cond.451

while.end.526:                                    ; preds = %while.cond.451
  %320 = load i8, i8* %keep_string_p, align 1
  %conv527 = sext i8 %320 to i32
  %tobool528 = icmp ne i32 %conv527, 0
  %cond529 = select i1 %tobool528, i32 16, i32 15
  %321 = load i8*, i8** %laststart, align 8
  %322 = load i8*, i8** %b, align 8
  %add.ptr530 = getelementptr inbounds i8, i8* %322, i64 3
  %323 = load i8*, i8** %laststart, align 8
  %sub.ptr.lhs.cast531 = ptrtoint i8* %add.ptr530 to i64
  %sub.ptr.rhs.cast532 = ptrtoint i8* %323 to i64
  %sub.ptr.sub533 = sub i64 %sub.ptr.lhs.cast531, %sub.ptr.rhs.cast532
  %sub534 = sub nsw i64 %sub.ptr.sub533, 3
  %conv535 = trunc i64 %sub534 to i32
  %324 = load i8*, i8** %b, align 8
  call void @insert_op1(i32 %cond529, i8* %321, i32 %conv535, i8* %324)
  store i8* null, i8** %pending_exact, align 8
  %325 = load i8*, i8** %b, align 8
  %add.ptr536 = getelementptr inbounds i8, i8* %325, i64 3
  store i8* %add.ptr536, i8** %b, align 8
  %326 = load i8, i8* %zero_times_ok, align 1
  %tobool537 = icmp ne i8 %326, 0
  br i1 %tobool537, label %if.end.622, label %if.then.538

if.then.538:                                      ; preds = %while.end.526
  br label %while.cond.539

while.cond.539:                                   ; preds = %do.end.613, %if.then.538
  %327 = load i8*, i8** %b, align 8
  %328 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer540 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %328, i32 0, i32 0
  %329 = load i8*, i8** %buffer540, align 8
  %sub.ptr.lhs.cast541 = ptrtoint i8* %327 to i64
  %sub.ptr.rhs.cast542 = ptrtoint i8* %329 to i64
  %sub.ptr.sub543 = sub i64 %sub.ptr.lhs.cast541, %sub.ptr.rhs.cast542
  %add544 = add nsw i64 %sub.ptr.sub543, 3
  %330 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated545 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %330, i32 0, i32 1
  %331 = load i64, i64* %allocated545, align 8
  %cmp546 = icmp ugt i64 %add544, %331
  br i1 %cmp546, label %while.body.548, label %while.end.614

while.body.548:                                   ; preds = %while.cond.539
  br label %do.body.549

do.body.549:                                      ; preds = %while.body.548
  %332 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer551 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %332, i32 0, i32 0
  %333 = load i8*, i8** %buffer551, align 8
  store i8* %333, i8** %old_buffer550, align 8
  %334 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated552 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %334, i32 0, i32 1
  %335 = load i64, i64* %allocated552, align 8
  %cmp553 = icmp eq i64 %335, 65536
  br i1 %cmp553, label %if.then.555, label %if.end.556

if.then.555:                                      ; preds = %do.body.549
  store i32 15, i32* %retval
  br label %return

if.end.556:                                       ; preds = %do.body.549
  %336 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated557 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %336, i32 0, i32 1
  %337 = load i64, i64* %allocated557, align 8
  %shl558 = shl i64 %337, 1
  store i64 %shl558, i64* %allocated557, align 8
  %338 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated559 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %338, i32 0, i32 1
  %339 = load i64, i64* %allocated559, align 8
  %cmp560 = icmp ugt i64 %339, 65536
  br i1 %cmp560, label %if.then.562, label %if.end.564

if.then.562:                                      ; preds = %if.end.556
  %340 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated563 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %340, i32 0, i32 1
  store i64 65536, i64* %allocated563, align 8
  br label %if.end.564

if.end.564:                                       ; preds = %if.then.562, %if.end.556
  %341 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer565 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %341, i32 0, i32 0
  %342 = load i8*, i8** %buffer565, align 8
  %343 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated566 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %343, i32 0, i32 1
  %344 = load i64, i64* %allocated566, align 8
  %call567 = call i8* @realloc(i8* %342, i64 %344) #1
  %345 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer568 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %345, i32 0, i32 0
  store i8* %call567, i8** %buffer568, align 8
  %346 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer569 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %346, i32 0, i32 0
  %347 = load i8*, i8** %buffer569, align 8
  %cmp570 = icmp eq i8* %347, null
  br i1 %cmp570, label %if.then.572, label %if.end.573

if.then.572:                                      ; preds = %if.end.564
  store i32 12, i32* %retval
  br label %return

if.end.573:                                       ; preds = %if.end.564
  %348 = load i8*, i8** %old_buffer550, align 8
  %349 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer574 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %349, i32 0, i32 0
  %350 = load i8*, i8** %buffer574, align 8
  %cmp575 = icmp ne i8* %348, %350
  br i1 %cmp575, label %if.then.577, label %if.end.612

if.then.577:                                      ; preds = %if.end.573
  %351 = load i8*, i8** %b, align 8
  %352 = load i8*, i8** %old_buffer550, align 8
  %sub.ptr.lhs.cast578 = ptrtoint i8* %351 to i64
  %sub.ptr.rhs.cast579 = ptrtoint i8* %352 to i64
  %sub.ptr.sub580 = sub i64 %sub.ptr.lhs.cast578, %sub.ptr.rhs.cast579
  %353 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer581 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %353, i32 0, i32 0
  %354 = load i8*, i8** %buffer581, align 8
  %add.ptr582 = getelementptr inbounds i8, i8* %354, i64 %sub.ptr.sub580
  store i8* %add.ptr582, i8** %b, align 8
  %355 = load i8*, i8** %begalt, align 8
  %356 = load i8*, i8** %old_buffer550, align 8
  %sub.ptr.lhs.cast583 = ptrtoint i8* %355 to i64
  %sub.ptr.rhs.cast584 = ptrtoint i8* %356 to i64
  %sub.ptr.sub585 = sub i64 %sub.ptr.lhs.cast583, %sub.ptr.rhs.cast584
  %357 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer586 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %357, i32 0, i32 0
  %358 = load i8*, i8** %buffer586, align 8
  %add.ptr587 = getelementptr inbounds i8, i8* %358, i64 %sub.ptr.sub585
  store i8* %add.ptr587, i8** %begalt, align 8
  %359 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool588 = icmp ne i8* %359, null
  br i1 %tobool588, label %if.then.589, label %if.end.595

if.then.589:                                      ; preds = %if.then.577
  %360 = load i8*, i8** %fixup_alt_jump, align 8
  %361 = load i8*, i8** %old_buffer550, align 8
  %sub.ptr.lhs.cast590 = ptrtoint i8* %360 to i64
  %sub.ptr.rhs.cast591 = ptrtoint i8* %361 to i64
  %sub.ptr.sub592 = sub i64 %sub.ptr.lhs.cast590, %sub.ptr.rhs.cast591
  %362 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer593 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %362, i32 0, i32 0
  %363 = load i8*, i8** %buffer593, align 8
  %add.ptr594 = getelementptr inbounds i8, i8* %363, i64 %sub.ptr.sub592
  store i8* %add.ptr594, i8** %fixup_alt_jump, align 8
  br label %if.end.595

if.end.595:                                       ; preds = %if.then.589, %if.then.577
  %364 = load i8*, i8** %laststart, align 8
  %tobool596 = icmp ne i8* %364, null
  br i1 %tobool596, label %if.then.597, label %if.end.603

if.then.597:                                      ; preds = %if.end.595
  %365 = load i8*, i8** %laststart, align 8
  %366 = load i8*, i8** %old_buffer550, align 8
  %sub.ptr.lhs.cast598 = ptrtoint i8* %365 to i64
  %sub.ptr.rhs.cast599 = ptrtoint i8* %366 to i64
  %sub.ptr.sub600 = sub i64 %sub.ptr.lhs.cast598, %sub.ptr.rhs.cast599
  %367 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer601 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %367, i32 0, i32 0
  %368 = load i8*, i8** %buffer601, align 8
  %add.ptr602 = getelementptr inbounds i8, i8* %368, i64 %sub.ptr.sub600
  store i8* %add.ptr602, i8** %laststart, align 8
  br label %if.end.603

if.end.603:                                       ; preds = %if.then.597, %if.end.595
  %369 = load i8*, i8** %pending_exact, align 8
  %tobool604 = icmp ne i8* %369, null
  br i1 %tobool604, label %if.then.605, label %if.end.611

if.then.605:                                      ; preds = %if.end.603
  %370 = load i8*, i8** %pending_exact, align 8
  %371 = load i8*, i8** %old_buffer550, align 8
  %sub.ptr.lhs.cast606 = ptrtoint i8* %370 to i64
  %sub.ptr.rhs.cast607 = ptrtoint i8* %371 to i64
  %sub.ptr.sub608 = sub i64 %sub.ptr.lhs.cast606, %sub.ptr.rhs.cast607
  %372 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer609 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %372, i32 0, i32 0
  %373 = load i8*, i8** %buffer609, align 8
  %add.ptr610 = getelementptr inbounds i8, i8* %373, i64 %sub.ptr.sub608
  store i8* %add.ptr610, i8** %pending_exact, align 8
  br label %if.end.611

if.end.611:                                       ; preds = %if.then.605, %if.end.603
  br label %if.end.612

if.end.612:                                       ; preds = %if.end.611, %if.end.573
  br label %do.end.613

do.end.613:                                       ; preds = %if.end.612
  br label %while.cond.539

while.end.614:                                    ; preds = %while.cond.539
  %374 = load i8*, i8** %laststart, align 8
  %375 = load i8*, i8** %laststart, align 8
  %add.ptr615 = getelementptr inbounds i8, i8* %375, i64 6
  %376 = load i8*, i8** %laststart, align 8
  %sub.ptr.lhs.cast616 = ptrtoint i8* %add.ptr615 to i64
  %sub.ptr.rhs.cast617 = ptrtoint i8* %376 to i64
  %sub.ptr.sub618 = sub i64 %sub.ptr.lhs.cast616, %sub.ptr.rhs.cast617
  %sub619 = sub nsw i64 %sub.ptr.sub618, 3
  %conv620 = trunc i64 %sub619 to i32
  %377 = load i8*, i8** %b, align 8
  call void @insert_op1(i32 19, i8* %374, i32 %conv620, i8* %377)
  %378 = load i8*, i8** %b, align 8
  %add.ptr621 = getelementptr inbounds i8, i8* %378, i64 3
  store i8* %add.ptr621, i8** %b, align 8
  br label %if.end.622

if.end.622:                                       ; preds = %while.end.614, %while.end.526
  br label %sw.epilog.3639

sw.bb.623:                                        ; preds = %do.end
  %379 = load i8*, i8** %b, align 8
  store i8* %379, i8** %laststart, align 8
  br label %do.body.624

do.body.624:                                      ; preds = %sw.bb.623
  br label %while.cond.625

while.cond.625:                                   ; preds = %do.end.699, %do.body.624
  %380 = load i8*, i8** %b, align 8
  %381 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer626 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %381, i32 0, i32 0
  %382 = load i8*, i8** %buffer626, align 8
  %sub.ptr.lhs.cast627 = ptrtoint i8* %380 to i64
  %sub.ptr.rhs.cast628 = ptrtoint i8* %382 to i64
  %sub.ptr.sub629 = sub i64 %sub.ptr.lhs.cast627, %sub.ptr.rhs.cast628
  %add630 = add nsw i64 %sub.ptr.sub629, 1
  %383 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated631 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %383, i32 0, i32 1
  %384 = load i64, i64* %allocated631, align 8
  %cmp632 = icmp ugt i64 %add630, %384
  br i1 %cmp632, label %while.body.634, label %while.end.700

while.body.634:                                   ; preds = %while.cond.625
  br label %do.body.635

do.body.635:                                      ; preds = %while.body.634
  %385 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer637 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %385, i32 0, i32 0
  %386 = load i8*, i8** %buffer637, align 8
  store i8* %386, i8** %old_buffer636, align 8
  %387 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated638 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %387, i32 0, i32 1
  %388 = load i64, i64* %allocated638, align 8
  %cmp639 = icmp eq i64 %388, 65536
  br i1 %cmp639, label %if.then.641, label %if.end.642

if.then.641:                                      ; preds = %do.body.635
  store i32 15, i32* %retval
  br label %return

if.end.642:                                       ; preds = %do.body.635
  %389 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated643 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %389, i32 0, i32 1
  %390 = load i64, i64* %allocated643, align 8
  %shl644 = shl i64 %390, 1
  store i64 %shl644, i64* %allocated643, align 8
  %391 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated645 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %391, i32 0, i32 1
  %392 = load i64, i64* %allocated645, align 8
  %cmp646 = icmp ugt i64 %392, 65536
  br i1 %cmp646, label %if.then.648, label %if.end.650

if.then.648:                                      ; preds = %if.end.642
  %393 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated649 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %393, i32 0, i32 1
  store i64 65536, i64* %allocated649, align 8
  br label %if.end.650

if.end.650:                                       ; preds = %if.then.648, %if.end.642
  %394 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer651 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %394, i32 0, i32 0
  %395 = load i8*, i8** %buffer651, align 8
  %396 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated652 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %396, i32 0, i32 1
  %397 = load i64, i64* %allocated652, align 8
  %call653 = call i8* @realloc(i8* %395, i64 %397) #1
  %398 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer654 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %398, i32 0, i32 0
  store i8* %call653, i8** %buffer654, align 8
  %399 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer655 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %399, i32 0, i32 0
  %400 = load i8*, i8** %buffer655, align 8
  %cmp656 = icmp eq i8* %400, null
  br i1 %cmp656, label %if.then.658, label %if.end.659

if.then.658:                                      ; preds = %if.end.650
  store i32 12, i32* %retval
  br label %return

if.end.659:                                       ; preds = %if.end.650
  %401 = load i8*, i8** %old_buffer636, align 8
  %402 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer660 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %402, i32 0, i32 0
  %403 = load i8*, i8** %buffer660, align 8
  %cmp661 = icmp ne i8* %401, %403
  br i1 %cmp661, label %if.then.663, label %if.end.698

if.then.663:                                      ; preds = %if.end.659
  %404 = load i8*, i8** %b, align 8
  %405 = load i8*, i8** %old_buffer636, align 8
  %sub.ptr.lhs.cast664 = ptrtoint i8* %404 to i64
  %sub.ptr.rhs.cast665 = ptrtoint i8* %405 to i64
  %sub.ptr.sub666 = sub i64 %sub.ptr.lhs.cast664, %sub.ptr.rhs.cast665
  %406 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer667 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %406, i32 0, i32 0
  %407 = load i8*, i8** %buffer667, align 8
  %add.ptr668 = getelementptr inbounds i8, i8* %407, i64 %sub.ptr.sub666
  store i8* %add.ptr668, i8** %b, align 8
  %408 = load i8*, i8** %begalt, align 8
  %409 = load i8*, i8** %old_buffer636, align 8
  %sub.ptr.lhs.cast669 = ptrtoint i8* %408 to i64
  %sub.ptr.rhs.cast670 = ptrtoint i8* %409 to i64
  %sub.ptr.sub671 = sub i64 %sub.ptr.lhs.cast669, %sub.ptr.rhs.cast670
  %410 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer672 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %410, i32 0, i32 0
  %411 = load i8*, i8** %buffer672, align 8
  %add.ptr673 = getelementptr inbounds i8, i8* %411, i64 %sub.ptr.sub671
  store i8* %add.ptr673, i8** %begalt, align 8
  %412 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool674 = icmp ne i8* %412, null
  br i1 %tobool674, label %if.then.675, label %if.end.681

if.then.675:                                      ; preds = %if.then.663
  %413 = load i8*, i8** %fixup_alt_jump, align 8
  %414 = load i8*, i8** %old_buffer636, align 8
  %sub.ptr.lhs.cast676 = ptrtoint i8* %413 to i64
  %sub.ptr.rhs.cast677 = ptrtoint i8* %414 to i64
  %sub.ptr.sub678 = sub i64 %sub.ptr.lhs.cast676, %sub.ptr.rhs.cast677
  %415 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer679 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %415, i32 0, i32 0
  %416 = load i8*, i8** %buffer679, align 8
  %add.ptr680 = getelementptr inbounds i8, i8* %416, i64 %sub.ptr.sub678
  store i8* %add.ptr680, i8** %fixup_alt_jump, align 8
  br label %if.end.681

if.end.681:                                       ; preds = %if.then.675, %if.then.663
  %417 = load i8*, i8** %laststart, align 8
  %tobool682 = icmp ne i8* %417, null
  br i1 %tobool682, label %if.then.683, label %if.end.689

if.then.683:                                      ; preds = %if.end.681
  %418 = load i8*, i8** %laststart, align 8
  %419 = load i8*, i8** %old_buffer636, align 8
  %sub.ptr.lhs.cast684 = ptrtoint i8* %418 to i64
  %sub.ptr.rhs.cast685 = ptrtoint i8* %419 to i64
  %sub.ptr.sub686 = sub i64 %sub.ptr.lhs.cast684, %sub.ptr.rhs.cast685
  %420 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer687 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %420, i32 0, i32 0
  %421 = load i8*, i8** %buffer687, align 8
  %add.ptr688 = getelementptr inbounds i8, i8* %421, i64 %sub.ptr.sub686
  store i8* %add.ptr688, i8** %laststart, align 8
  br label %if.end.689

if.end.689:                                       ; preds = %if.then.683, %if.end.681
  %422 = load i8*, i8** %pending_exact, align 8
  %tobool690 = icmp ne i8* %422, null
  br i1 %tobool690, label %if.then.691, label %if.end.697

if.then.691:                                      ; preds = %if.end.689
  %423 = load i8*, i8** %pending_exact, align 8
  %424 = load i8*, i8** %old_buffer636, align 8
  %sub.ptr.lhs.cast692 = ptrtoint i8* %423 to i64
  %sub.ptr.rhs.cast693 = ptrtoint i8* %424 to i64
  %sub.ptr.sub694 = sub i64 %sub.ptr.lhs.cast692, %sub.ptr.rhs.cast693
  %425 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer695 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %425, i32 0, i32 0
  %426 = load i8*, i8** %buffer695, align 8
  %add.ptr696 = getelementptr inbounds i8, i8* %426, i64 %sub.ptr.sub694
  store i8* %add.ptr696, i8** %pending_exact, align 8
  br label %if.end.697

if.end.697:                                       ; preds = %if.then.691, %if.end.689
  br label %if.end.698

if.end.698:                                       ; preds = %if.end.697, %if.end.659
  br label %do.end.699

do.end.699:                                       ; preds = %if.end.698
  br label %while.cond.625

while.end.700:                                    ; preds = %while.cond.625
  %427 = load i8*, i8** %b, align 8
  %incdec.ptr701 = getelementptr inbounds i8, i8* %427, i32 1
  store i8* %incdec.ptr701, i8** %b, align 8
  store i8 3, i8* %427, align 1
  br label %do.end.702

do.end.702:                                       ; preds = %while.end.700
  br label %sw.epilog.3639

sw.bb.703:                                        ; preds = %do.end
  store i8 0, i8* %had_char_class, align 1
  %428 = load i8*, i8** %p, align 8
  %429 = load i8*, i8** %pend, align 8
  %cmp704 = icmp eq i8* %428, %429
  br i1 %cmp704, label %if.then.706, label %if.end.708

if.then.706:                                      ; preds = %sw.bb.703
  %stack707 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %430 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack707, align 8
  %431 = bitcast %struct.compile_stack_elt_t* %430 to i8*
  call void @free(i8* %431) #1
  store i32 7, i32* %retval
  br label %return

if.end.708:                                       ; preds = %sw.bb.703
  br label %while.cond.709

while.cond.709:                                   ; preds = %do.end.783, %if.end.708
  %432 = load i8*, i8** %b, align 8
  %433 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer710 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %433, i32 0, i32 0
  %434 = load i8*, i8** %buffer710, align 8
  %sub.ptr.lhs.cast711 = ptrtoint i8* %432 to i64
  %sub.ptr.rhs.cast712 = ptrtoint i8* %434 to i64
  %sub.ptr.sub713 = sub i64 %sub.ptr.lhs.cast711, %sub.ptr.rhs.cast712
  %add714 = add nsw i64 %sub.ptr.sub713, 34
  %435 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated715 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %435, i32 0, i32 1
  %436 = load i64, i64* %allocated715, align 8
  %cmp716 = icmp ugt i64 %add714, %436
  br i1 %cmp716, label %while.body.718, label %while.end.784

while.body.718:                                   ; preds = %while.cond.709
  br label %do.body.719

do.body.719:                                      ; preds = %while.body.718
  %437 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer721 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %437, i32 0, i32 0
  %438 = load i8*, i8** %buffer721, align 8
  store i8* %438, i8** %old_buffer720, align 8
  %439 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated722 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %439, i32 0, i32 1
  %440 = load i64, i64* %allocated722, align 8
  %cmp723 = icmp eq i64 %440, 65536
  br i1 %cmp723, label %if.then.725, label %if.end.726

if.then.725:                                      ; preds = %do.body.719
  store i32 15, i32* %retval
  br label %return

if.end.726:                                       ; preds = %do.body.719
  %441 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated727 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %441, i32 0, i32 1
  %442 = load i64, i64* %allocated727, align 8
  %shl728 = shl i64 %442, 1
  store i64 %shl728, i64* %allocated727, align 8
  %443 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated729 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %443, i32 0, i32 1
  %444 = load i64, i64* %allocated729, align 8
  %cmp730 = icmp ugt i64 %444, 65536
  br i1 %cmp730, label %if.then.732, label %if.end.734

if.then.732:                                      ; preds = %if.end.726
  %445 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated733 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %445, i32 0, i32 1
  store i64 65536, i64* %allocated733, align 8
  br label %if.end.734

if.end.734:                                       ; preds = %if.then.732, %if.end.726
  %446 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer735 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %446, i32 0, i32 0
  %447 = load i8*, i8** %buffer735, align 8
  %448 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated736 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %448, i32 0, i32 1
  %449 = load i64, i64* %allocated736, align 8
  %call737 = call i8* @realloc(i8* %447, i64 %449) #1
  %450 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer738 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %450, i32 0, i32 0
  store i8* %call737, i8** %buffer738, align 8
  %451 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer739 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %451, i32 0, i32 0
  %452 = load i8*, i8** %buffer739, align 8
  %cmp740 = icmp eq i8* %452, null
  br i1 %cmp740, label %if.then.742, label %if.end.743

if.then.742:                                      ; preds = %if.end.734
  store i32 12, i32* %retval
  br label %return

if.end.743:                                       ; preds = %if.end.734
  %453 = load i8*, i8** %old_buffer720, align 8
  %454 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer744 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %454, i32 0, i32 0
  %455 = load i8*, i8** %buffer744, align 8
  %cmp745 = icmp ne i8* %453, %455
  br i1 %cmp745, label %if.then.747, label %if.end.782

if.then.747:                                      ; preds = %if.end.743
  %456 = load i8*, i8** %b, align 8
  %457 = load i8*, i8** %old_buffer720, align 8
  %sub.ptr.lhs.cast748 = ptrtoint i8* %456 to i64
  %sub.ptr.rhs.cast749 = ptrtoint i8* %457 to i64
  %sub.ptr.sub750 = sub i64 %sub.ptr.lhs.cast748, %sub.ptr.rhs.cast749
  %458 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer751 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %458, i32 0, i32 0
  %459 = load i8*, i8** %buffer751, align 8
  %add.ptr752 = getelementptr inbounds i8, i8* %459, i64 %sub.ptr.sub750
  store i8* %add.ptr752, i8** %b, align 8
  %460 = load i8*, i8** %begalt, align 8
  %461 = load i8*, i8** %old_buffer720, align 8
  %sub.ptr.lhs.cast753 = ptrtoint i8* %460 to i64
  %sub.ptr.rhs.cast754 = ptrtoint i8* %461 to i64
  %sub.ptr.sub755 = sub i64 %sub.ptr.lhs.cast753, %sub.ptr.rhs.cast754
  %462 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer756 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %462, i32 0, i32 0
  %463 = load i8*, i8** %buffer756, align 8
  %add.ptr757 = getelementptr inbounds i8, i8* %463, i64 %sub.ptr.sub755
  store i8* %add.ptr757, i8** %begalt, align 8
  %464 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool758 = icmp ne i8* %464, null
  br i1 %tobool758, label %if.then.759, label %if.end.765

if.then.759:                                      ; preds = %if.then.747
  %465 = load i8*, i8** %fixup_alt_jump, align 8
  %466 = load i8*, i8** %old_buffer720, align 8
  %sub.ptr.lhs.cast760 = ptrtoint i8* %465 to i64
  %sub.ptr.rhs.cast761 = ptrtoint i8* %466 to i64
  %sub.ptr.sub762 = sub i64 %sub.ptr.lhs.cast760, %sub.ptr.rhs.cast761
  %467 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer763 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %467, i32 0, i32 0
  %468 = load i8*, i8** %buffer763, align 8
  %add.ptr764 = getelementptr inbounds i8, i8* %468, i64 %sub.ptr.sub762
  store i8* %add.ptr764, i8** %fixup_alt_jump, align 8
  br label %if.end.765

if.end.765:                                       ; preds = %if.then.759, %if.then.747
  %469 = load i8*, i8** %laststart, align 8
  %tobool766 = icmp ne i8* %469, null
  br i1 %tobool766, label %if.then.767, label %if.end.773

if.then.767:                                      ; preds = %if.end.765
  %470 = load i8*, i8** %laststart, align 8
  %471 = load i8*, i8** %old_buffer720, align 8
  %sub.ptr.lhs.cast768 = ptrtoint i8* %470 to i64
  %sub.ptr.rhs.cast769 = ptrtoint i8* %471 to i64
  %sub.ptr.sub770 = sub i64 %sub.ptr.lhs.cast768, %sub.ptr.rhs.cast769
  %472 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer771 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %472, i32 0, i32 0
  %473 = load i8*, i8** %buffer771, align 8
  %add.ptr772 = getelementptr inbounds i8, i8* %473, i64 %sub.ptr.sub770
  store i8* %add.ptr772, i8** %laststart, align 8
  br label %if.end.773

if.end.773:                                       ; preds = %if.then.767, %if.end.765
  %474 = load i8*, i8** %pending_exact, align 8
  %tobool774 = icmp ne i8* %474, null
  br i1 %tobool774, label %if.then.775, label %if.end.781

if.then.775:                                      ; preds = %if.end.773
  %475 = load i8*, i8** %pending_exact, align 8
  %476 = load i8*, i8** %old_buffer720, align 8
  %sub.ptr.lhs.cast776 = ptrtoint i8* %475 to i64
  %sub.ptr.rhs.cast777 = ptrtoint i8* %476 to i64
  %sub.ptr.sub778 = sub i64 %sub.ptr.lhs.cast776, %sub.ptr.rhs.cast777
  %477 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer779 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %477, i32 0, i32 0
  %478 = load i8*, i8** %buffer779, align 8
  %add.ptr780 = getelementptr inbounds i8, i8* %478, i64 %sub.ptr.sub778
  store i8* %add.ptr780, i8** %pending_exact, align 8
  br label %if.end.781

if.end.781:                                       ; preds = %if.then.775, %if.end.773
  br label %if.end.782

if.end.782:                                       ; preds = %if.end.781, %if.end.743
  br label %do.end.783

do.end.783:                                       ; preds = %if.end.782
  br label %while.cond.709

while.end.784:                                    ; preds = %while.cond.709
  %479 = load i8*, i8** %b, align 8
  store i8* %479, i8** %laststart, align 8
  br label %do.body.785

do.body.785:                                      ; preds = %while.end.784
  br label %while.cond.786

while.cond.786:                                   ; preds = %do.end.860, %do.body.785
  %480 = load i8*, i8** %b, align 8
  %481 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer787 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %481, i32 0, i32 0
  %482 = load i8*, i8** %buffer787, align 8
  %sub.ptr.lhs.cast788 = ptrtoint i8* %480 to i64
  %sub.ptr.rhs.cast789 = ptrtoint i8* %482 to i64
  %sub.ptr.sub790 = sub i64 %sub.ptr.lhs.cast788, %sub.ptr.rhs.cast789
  %add791 = add nsw i64 %sub.ptr.sub790, 1
  %483 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated792 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %483, i32 0, i32 1
  %484 = load i64, i64* %allocated792, align 8
  %cmp793 = icmp ugt i64 %add791, %484
  br i1 %cmp793, label %while.body.795, label %while.end.861

while.body.795:                                   ; preds = %while.cond.786
  br label %do.body.796

do.body.796:                                      ; preds = %while.body.795
  %485 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer798 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %485, i32 0, i32 0
  %486 = load i8*, i8** %buffer798, align 8
  store i8* %486, i8** %old_buffer797, align 8
  %487 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated799 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %487, i32 0, i32 1
  %488 = load i64, i64* %allocated799, align 8
  %cmp800 = icmp eq i64 %488, 65536
  br i1 %cmp800, label %if.then.802, label %if.end.803

if.then.802:                                      ; preds = %do.body.796
  store i32 15, i32* %retval
  br label %return

if.end.803:                                       ; preds = %do.body.796
  %489 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated804 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %489, i32 0, i32 1
  %490 = load i64, i64* %allocated804, align 8
  %shl805 = shl i64 %490, 1
  store i64 %shl805, i64* %allocated804, align 8
  %491 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated806 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %491, i32 0, i32 1
  %492 = load i64, i64* %allocated806, align 8
  %cmp807 = icmp ugt i64 %492, 65536
  br i1 %cmp807, label %if.then.809, label %if.end.811

if.then.809:                                      ; preds = %if.end.803
  %493 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated810 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %493, i32 0, i32 1
  store i64 65536, i64* %allocated810, align 8
  br label %if.end.811

if.end.811:                                       ; preds = %if.then.809, %if.end.803
  %494 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer812 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %494, i32 0, i32 0
  %495 = load i8*, i8** %buffer812, align 8
  %496 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated813 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %496, i32 0, i32 1
  %497 = load i64, i64* %allocated813, align 8
  %call814 = call i8* @realloc(i8* %495, i64 %497) #1
  %498 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer815 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %498, i32 0, i32 0
  store i8* %call814, i8** %buffer815, align 8
  %499 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer816 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %499, i32 0, i32 0
  %500 = load i8*, i8** %buffer816, align 8
  %cmp817 = icmp eq i8* %500, null
  br i1 %cmp817, label %if.then.819, label %if.end.820

if.then.819:                                      ; preds = %if.end.811
  store i32 12, i32* %retval
  br label %return

if.end.820:                                       ; preds = %if.end.811
  %501 = load i8*, i8** %old_buffer797, align 8
  %502 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer821 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %502, i32 0, i32 0
  %503 = load i8*, i8** %buffer821, align 8
  %cmp822 = icmp ne i8* %501, %503
  br i1 %cmp822, label %if.then.824, label %if.end.859

if.then.824:                                      ; preds = %if.end.820
  %504 = load i8*, i8** %b, align 8
  %505 = load i8*, i8** %old_buffer797, align 8
  %sub.ptr.lhs.cast825 = ptrtoint i8* %504 to i64
  %sub.ptr.rhs.cast826 = ptrtoint i8* %505 to i64
  %sub.ptr.sub827 = sub i64 %sub.ptr.lhs.cast825, %sub.ptr.rhs.cast826
  %506 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer828 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %506, i32 0, i32 0
  %507 = load i8*, i8** %buffer828, align 8
  %add.ptr829 = getelementptr inbounds i8, i8* %507, i64 %sub.ptr.sub827
  store i8* %add.ptr829, i8** %b, align 8
  %508 = load i8*, i8** %begalt, align 8
  %509 = load i8*, i8** %old_buffer797, align 8
  %sub.ptr.lhs.cast830 = ptrtoint i8* %508 to i64
  %sub.ptr.rhs.cast831 = ptrtoint i8* %509 to i64
  %sub.ptr.sub832 = sub i64 %sub.ptr.lhs.cast830, %sub.ptr.rhs.cast831
  %510 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer833 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %510, i32 0, i32 0
  %511 = load i8*, i8** %buffer833, align 8
  %add.ptr834 = getelementptr inbounds i8, i8* %511, i64 %sub.ptr.sub832
  store i8* %add.ptr834, i8** %begalt, align 8
  %512 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool835 = icmp ne i8* %512, null
  br i1 %tobool835, label %if.then.836, label %if.end.842

if.then.836:                                      ; preds = %if.then.824
  %513 = load i8*, i8** %fixup_alt_jump, align 8
  %514 = load i8*, i8** %old_buffer797, align 8
  %sub.ptr.lhs.cast837 = ptrtoint i8* %513 to i64
  %sub.ptr.rhs.cast838 = ptrtoint i8* %514 to i64
  %sub.ptr.sub839 = sub i64 %sub.ptr.lhs.cast837, %sub.ptr.rhs.cast838
  %515 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer840 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %515, i32 0, i32 0
  %516 = load i8*, i8** %buffer840, align 8
  %add.ptr841 = getelementptr inbounds i8, i8* %516, i64 %sub.ptr.sub839
  store i8* %add.ptr841, i8** %fixup_alt_jump, align 8
  br label %if.end.842

if.end.842:                                       ; preds = %if.then.836, %if.then.824
  %517 = load i8*, i8** %laststart, align 8
  %tobool843 = icmp ne i8* %517, null
  br i1 %tobool843, label %if.then.844, label %if.end.850

if.then.844:                                      ; preds = %if.end.842
  %518 = load i8*, i8** %laststart, align 8
  %519 = load i8*, i8** %old_buffer797, align 8
  %sub.ptr.lhs.cast845 = ptrtoint i8* %518 to i64
  %sub.ptr.rhs.cast846 = ptrtoint i8* %519 to i64
  %sub.ptr.sub847 = sub i64 %sub.ptr.lhs.cast845, %sub.ptr.rhs.cast846
  %520 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer848 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %520, i32 0, i32 0
  %521 = load i8*, i8** %buffer848, align 8
  %add.ptr849 = getelementptr inbounds i8, i8* %521, i64 %sub.ptr.sub847
  store i8* %add.ptr849, i8** %laststart, align 8
  br label %if.end.850

if.end.850:                                       ; preds = %if.then.844, %if.end.842
  %522 = load i8*, i8** %pending_exact, align 8
  %tobool851 = icmp ne i8* %522, null
  br i1 %tobool851, label %if.then.852, label %if.end.858

if.then.852:                                      ; preds = %if.end.850
  %523 = load i8*, i8** %pending_exact, align 8
  %524 = load i8*, i8** %old_buffer797, align 8
  %sub.ptr.lhs.cast853 = ptrtoint i8* %523 to i64
  %sub.ptr.rhs.cast854 = ptrtoint i8* %524 to i64
  %sub.ptr.sub855 = sub i64 %sub.ptr.lhs.cast853, %sub.ptr.rhs.cast854
  %525 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer856 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %525, i32 0, i32 0
  %526 = load i8*, i8** %buffer856, align 8
  %add.ptr857 = getelementptr inbounds i8, i8* %526, i64 %sub.ptr.sub855
  store i8* %add.ptr857, i8** %pending_exact, align 8
  br label %if.end.858

if.end.858:                                       ; preds = %if.then.852, %if.end.850
  br label %if.end.859

if.end.859:                                       ; preds = %if.end.858, %if.end.820
  br label %do.end.860

do.end.860:                                       ; preds = %if.end.859
  br label %while.cond.786

while.end.861:                                    ; preds = %while.cond.786
  %527 = load i8*, i8** %p, align 8
  %528 = load i8, i8* %527, align 1
  %conv862 = sext i8 %528 to i32
  %cmp863 = icmp eq i32 %conv862, 94
  %cond865 = select i1 %cmp863, i32 5, i32 4
  %conv866 = trunc i32 %cond865 to i8
  %529 = load i8*, i8** %b, align 8
  %incdec.ptr867 = getelementptr inbounds i8, i8* %529, i32 1
  store i8* %incdec.ptr867, i8** %b, align 8
  store i8 %conv866, i8* %529, align 1
  br label %do.end.868

do.end.868:                                       ; preds = %while.end.861
  %530 = load i8*, i8** %p, align 8
  %531 = load i8, i8* %530, align 1
  %conv869 = sext i8 %531 to i32
  %cmp870 = icmp eq i32 %conv869, 94
  br i1 %cmp870, label %if.then.872, label %if.end.874

if.then.872:                                      ; preds = %do.end.868
  %532 = load i8*, i8** %p, align 8
  %incdec.ptr873 = getelementptr inbounds i8, i8* %532, i32 1
  store i8* %incdec.ptr873, i8** %p, align 8
  br label %if.end.874

if.end.874:                                       ; preds = %if.then.872, %do.end.868
  %533 = load i8*, i8** %p, align 8
  store i8* %533, i8** %p1, align 8
  br label %do.body.875

do.body.875:                                      ; preds = %if.end.874
  br label %while.cond.876

while.cond.876:                                   ; preds = %do.end.950, %do.body.875
  %534 = load i8*, i8** %b, align 8
  %535 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer877 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %535, i32 0, i32 0
  %536 = load i8*, i8** %buffer877, align 8
  %sub.ptr.lhs.cast878 = ptrtoint i8* %534 to i64
  %sub.ptr.rhs.cast879 = ptrtoint i8* %536 to i64
  %sub.ptr.sub880 = sub i64 %sub.ptr.lhs.cast878, %sub.ptr.rhs.cast879
  %add881 = add nsw i64 %sub.ptr.sub880, 1
  %537 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated882 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %537, i32 0, i32 1
  %538 = load i64, i64* %allocated882, align 8
  %cmp883 = icmp ugt i64 %add881, %538
  br i1 %cmp883, label %while.body.885, label %while.end.951

while.body.885:                                   ; preds = %while.cond.876
  br label %do.body.886

do.body.886:                                      ; preds = %while.body.885
  %539 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer888 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %539, i32 0, i32 0
  %540 = load i8*, i8** %buffer888, align 8
  store i8* %540, i8** %old_buffer887, align 8
  %541 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated889 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %541, i32 0, i32 1
  %542 = load i64, i64* %allocated889, align 8
  %cmp890 = icmp eq i64 %542, 65536
  br i1 %cmp890, label %if.then.892, label %if.end.893

if.then.892:                                      ; preds = %do.body.886
  store i32 15, i32* %retval
  br label %return

if.end.893:                                       ; preds = %do.body.886
  %543 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated894 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %543, i32 0, i32 1
  %544 = load i64, i64* %allocated894, align 8
  %shl895 = shl i64 %544, 1
  store i64 %shl895, i64* %allocated894, align 8
  %545 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated896 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %545, i32 0, i32 1
  %546 = load i64, i64* %allocated896, align 8
  %cmp897 = icmp ugt i64 %546, 65536
  br i1 %cmp897, label %if.then.899, label %if.end.901

if.then.899:                                      ; preds = %if.end.893
  %547 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated900 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %547, i32 0, i32 1
  store i64 65536, i64* %allocated900, align 8
  br label %if.end.901

if.end.901:                                       ; preds = %if.then.899, %if.end.893
  %548 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer902 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %548, i32 0, i32 0
  %549 = load i8*, i8** %buffer902, align 8
  %550 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated903 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %550, i32 0, i32 1
  %551 = load i64, i64* %allocated903, align 8
  %call904 = call i8* @realloc(i8* %549, i64 %551) #1
  %552 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer905 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %552, i32 0, i32 0
  store i8* %call904, i8** %buffer905, align 8
  %553 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer906 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %553, i32 0, i32 0
  %554 = load i8*, i8** %buffer906, align 8
  %cmp907 = icmp eq i8* %554, null
  br i1 %cmp907, label %if.then.909, label %if.end.910

if.then.909:                                      ; preds = %if.end.901
  store i32 12, i32* %retval
  br label %return

if.end.910:                                       ; preds = %if.end.901
  %555 = load i8*, i8** %old_buffer887, align 8
  %556 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer911 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %556, i32 0, i32 0
  %557 = load i8*, i8** %buffer911, align 8
  %cmp912 = icmp ne i8* %555, %557
  br i1 %cmp912, label %if.then.914, label %if.end.949

if.then.914:                                      ; preds = %if.end.910
  %558 = load i8*, i8** %b, align 8
  %559 = load i8*, i8** %old_buffer887, align 8
  %sub.ptr.lhs.cast915 = ptrtoint i8* %558 to i64
  %sub.ptr.rhs.cast916 = ptrtoint i8* %559 to i64
  %sub.ptr.sub917 = sub i64 %sub.ptr.lhs.cast915, %sub.ptr.rhs.cast916
  %560 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer918 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %560, i32 0, i32 0
  %561 = load i8*, i8** %buffer918, align 8
  %add.ptr919 = getelementptr inbounds i8, i8* %561, i64 %sub.ptr.sub917
  store i8* %add.ptr919, i8** %b, align 8
  %562 = load i8*, i8** %begalt, align 8
  %563 = load i8*, i8** %old_buffer887, align 8
  %sub.ptr.lhs.cast920 = ptrtoint i8* %562 to i64
  %sub.ptr.rhs.cast921 = ptrtoint i8* %563 to i64
  %sub.ptr.sub922 = sub i64 %sub.ptr.lhs.cast920, %sub.ptr.rhs.cast921
  %564 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer923 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %564, i32 0, i32 0
  %565 = load i8*, i8** %buffer923, align 8
  %add.ptr924 = getelementptr inbounds i8, i8* %565, i64 %sub.ptr.sub922
  store i8* %add.ptr924, i8** %begalt, align 8
  %566 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool925 = icmp ne i8* %566, null
  br i1 %tobool925, label %if.then.926, label %if.end.932

if.then.926:                                      ; preds = %if.then.914
  %567 = load i8*, i8** %fixup_alt_jump, align 8
  %568 = load i8*, i8** %old_buffer887, align 8
  %sub.ptr.lhs.cast927 = ptrtoint i8* %567 to i64
  %sub.ptr.rhs.cast928 = ptrtoint i8* %568 to i64
  %sub.ptr.sub929 = sub i64 %sub.ptr.lhs.cast927, %sub.ptr.rhs.cast928
  %569 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer930 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %569, i32 0, i32 0
  %570 = load i8*, i8** %buffer930, align 8
  %add.ptr931 = getelementptr inbounds i8, i8* %570, i64 %sub.ptr.sub929
  store i8* %add.ptr931, i8** %fixup_alt_jump, align 8
  br label %if.end.932

if.end.932:                                       ; preds = %if.then.926, %if.then.914
  %571 = load i8*, i8** %laststart, align 8
  %tobool933 = icmp ne i8* %571, null
  br i1 %tobool933, label %if.then.934, label %if.end.940

if.then.934:                                      ; preds = %if.end.932
  %572 = load i8*, i8** %laststart, align 8
  %573 = load i8*, i8** %old_buffer887, align 8
  %sub.ptr.lhs.cast935 = ptrtoint i8* %572 to i64
  %sub.ptr.rhs.cast936 = ptrtoint i8* %573 to i64
  %sub.ptr.sub937 = sub i64 %sub.ptr.lhs.cast935, %sub.ptr.rhs.cast936
  %574 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer938 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %574, i32 0, i32 0
  %575 = load i8*, i8** %buffer938, align 8
  %add.ptr939 = getelementptr inbounds i8, i8* %575, i64 %sub.ptr.sub937
  store i8* %add.ptr939, i8** %laststart, align 8
  br label %if.end.940

if.end.940:                                       ; preds = %if.then.934, %if.end.932
  %576 = load i8*, i8** %pending_exact, align 8
  %tobool941 = icmp ne i8* %576, null
  br i1 %tobool941, label %if.then.942, label %if.end.948

if.then.942:                                      ; preds = %if.end.940
  %577 = load i8*, i8** %pending_exact, align 8
  %578 = load i8*, i8** %old_buffer887, align 8
  %sub.ptr.lhs.cast943 = ptrtoint i8* %577 to i64
  %sub.ptr.rhs.cast944 = ptrtoint i8* %578 to i64
  %sub.ptr.sub945 = sub i64 %sub.ptr.lhs.cast943, %sub.ptr.rhs.cast944
  %579 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer946 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %579, i32 0, i32 0
  %580 = load i8*, i8** %buffer946, align 8
  %add.ptr947 = getelementptr inbounds i8, i8* %580, i64 %sub.ptr.sub945
  store i8* %add.ptr947, i8** %pending_exact, align 8
  br label %if.end.948

if.end.948:                                       ; preds = %if.then.942, %if.end.940
  br label %if.end.949

if.end.949:                                       ; preds = %if.end.948, %if.end.910
  br label %do.end.950

do.end.950:                                       ; preds = %if.end.949
  br label %while.cond.876

while.end.951:                                    ; preds = %while.cond.876
  %581 = load i8*, i8** %b, align 8
  %incdec.ptr952 = getelementptr inbounds i8, i8* %581, i32 1
  store i8* %incdec.ptr952, i8** %b, align 8
  store i8 32, i8* %581, align 1
  br label %do.end.953

do.end.953:                                       ; preds = %while.end.951
  %582 = load i8*, i8** %b, align 8
  call void @llvm.memset.p0i8.i64(i8* %582, i8 0, i64 32, i32 1, i1 false)
  %583 = load i8*, i8** %b, align 8
  %584 = load i8*, i8** %b, align 8
  %arrayidx954 = getelementptr inbounds i8, i8* %584, i64 -2
  %585 = load i8, i8* %arrayidx954, align 1
  %conv955 = zext i8 %585 to i32
  %cmp956 = icmp eq i32 %conv955, 5
  br i1 %cmp956, label %land.lhs.true.958, label %if.end.966

land.lhs.true.958:                                ; preds = %do.end.953
  %586 = load i64, i64* %syntax.addr, align 8
  %and959 = and i64 %586, 256
  %tobool960 = icmp ne i64 %and959, 0
  br i1 %tobool960, label %if.then.961, label %if.end.966

if.then.961:                                      ; preds = %land.lhs.true.958
  %587 = load i8*, i8** %b, align 8
  %arrayidx962 = getelementptr inbounds i8, i8* %587, i64 1
  %588 = load i8, i8* %arrayidx962, align 1
  %conv963 = zext i8 %588 to i32
  %or964 = or i32 %conv963, 4
  %conv965 = trunc i32 %or964 to i8
  store i8 %conv965, i8* %arrayidx962, align 1
  br label %if.end.966

if.end.966:                                       ; preds = %if.then.961, %land.lhs.true.958, %do.end.953
  br label %for.cond.967

for.cond.967:                                     ; preds = %if.end.1547, %do.end.1008, %if.end.966
  %589 = load i8*, i8** %p, align 8
  %590 = load i8*, i8** %pend, align 8
  %cmp968 = icmp eq i8* %589, %590
  br i1 %cmp968, label %if.then.970, label %if.end.972

if.then.970:                                      ; preds = %for.cond.967
  %stack971 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %591 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack971, align 8
  %592 = bitcast %struct.compile_stack_elt_t* %591 to i8*
  call void @free(i8* %592) #1
  store i32 7, i32* %retval
  br label %return

if.end.972:                                       ; preds = %for.cond.967
  br label %do.body.973

do.body.973:                                      ; preds = %if.end.972
  %593 = load i8*, i8** %p, align 8
  %594 = load i8*, i8** %pend, align 8
  %cmp974 = icmp eq i8* %593, %594
  br i1 %cmp974, label %if.then.976, label %if.end.977

if.then.976:                                      ; preds = %do.body.973
  store i32 14, i32* %retval
  br label %return

if.end.977:                                       ; preds = %do.body.973
  %595 = load i8*, i8** %p, align 8
  %incdec.ptr978 = getelementptr inbounds i8, i8* %595, i32 1
  store i8* %incdec.ptr978, i8** %p, align 8
  %596 = load i8, i8* %595, align 1
  store i8 %596, i8* %c, align 1
  %597 = load i8*, i8** %translate, align 8
  %tobool979 = icmp ne i8* %597, null
  br i1 %tobool979, label %if.then.980, label %if.end.983

if.then.980:                                      ; preds = %if.end.977
  %598 = load i8, i8* %c, align 1
  %idxprom981 = zext i8 %598 to i64
  %599 = load i8*, i8** %translate, align 8
  %arrayidx982 = getelementptr inbounds i8, i8* %599, i64 %idxprom981
  %600 = load i8, i8* %arrayidx982, align 1
  store i8 %600, i8* %c, align 1
  br label %if.end.983

if.end.983:                                       ; preds = %if.then.980, %if.end.977
  br label %do.end.984

do.end.984:                                       ; preds = %if.end.983
  %601 = load i64, i64* %syntax.addr, align 8
  %and985 = and i64 %601, 1
  %tobool986 = icmp ne i64 %and985, 0
  br i1 %tobool986, label %land.lhs.true.987, label %if.end.1017

land.lhs.true.987:                                ; preds = %do.end.984
  %602 = load i8, i8* %c, align 1
  %conv988 = zext i8 %602 to i32
  %cmp989 = icmp eq i32 %conv988, 92
  br i1 %cmp989, label %if.then.991, label %if.end.1017

if.then.991:                                      ; preds = %land.lhs.true.987
  %603 = load i8*, i8** %p, align 8
  %604 = load i8*, i8** %pend, align 8
  %cmp992 = icmp eq i8* %603, %604
  br i1 %cmp992, label %if.then.994, label %if.end.996

if.then.994:                                      ; preds = %if.then.991
  %stack995 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %605 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack995, align 8
  %606 = bitcast %struct.compile_stack_elt_t* %605 to i8*
  call void @free(i8* %606) #1
  store i32 5, i32* %retval
  br label %return

if.end.996:                                       ; preds = %if.then.991
  br label %do.body.997

do.body.997:                                      ; preds = %if.end.996
  %607 = load i8*, i8** %p, align 8
  %608 = load i8*, i8** %pend, align 8
  %cmp998 = icmp eq i8* %607, %608
  br i1 %cmp998, label %if.then.1000, label %if.end.1001

if.then.1000:                                     ; preds = %do.body.997
  store i32 14, i32* %retval
  br label %return

if.end.1001:                                      ; preds = %do.body.997
  %609 = load i8*, i8** %p, align 8
  %incdec.ptr1002 = getelementptr inbounds i8, i8* %609, i32 1
  store i8* %incdec.ptr1002, i8** %p, align 8
  %610 = load i8, i8* %609, align 1
  store i8 %610, i8* %c1, align 1
  %611 = load i8*, i8** %translate, align 8
  %tobool1003 = icmp ne i8* %611, null
  br i1 %tobool1003, label %if.then.1004, label %if.end.1007

if.then.1004:                                     ; preds = %if.end.1001
  %612 = load i8, i8* %c1, align 1
  %idxprom1005 = zext i8 %612 to i64
  %613 = load i8*, i8** %translate, align 8
  %arrayidx1006 = getelementptr inbounds i8, i8* %613, i64 %idxprom1005
  %614 = load i8, i8* %arrayidx1006, align 1
  store i8 %614, i8* %c1, align 1
  br label %if.end.1007

if.end.1007:                                      ; preds = %if.then.1004, %if.end.1001
  br label %do.end.1008

do.end.1008:                                      ; preds = %if.end.1007
  %615 = load i8, i8* %c1, align 1
  %conv1009 = zext i8 %615 to i32
  %rem = srem i32 %conv1009, 8
  %shl1010 = shl i32 1, %rem
  %616 = load i8, i8* %c1, align 1
  %conv1011 = zext i8 %616 to i32
  %div = sdiv i32 %conv1011, 8
  %idxprom1012 = sext i32 %div to i64
  %617 = load i8*, i8** %b, align 8
  %arrayidx1013 = getelementptr inbounds i8, i8* %617, i64 %idxprom1012
  %618 = load i8, i8* %arrayidx1013, align 1
  %conv1014 = zext i8 %618 to i32
  %or1015 = or i32 %conv1014, %shl1010
  %conv1016 = trunc i32 %or1015 to i8
  store i8 %conv1016, i8* %arrayidx1013, align 1
  br label %for.cond.967

if.end.1017:                                      ; preds = %land.lhs.true.987, %do.end.984
  %619 = load i8, i8* %c, align 1
  %conv1018 = zext i8 %619 to i32
  %cmp1019 = icmp eq i32 %conv1018, 93
  br i1 %cmp1019, label %land.lhs.true.1021, label %if.end.1026

land.lhs.true.1021:                               ; preds = %if.end.1017
  %620 = load i8*, i8** %p, align 8
  %621 = load i8*, i8** %p1, align 8
  %add.ptr1022 = getelementptr inbounds i8, i8* %621, i64 1
  %cmp1023 = icmp ne i8* %620, %add.ptr1022
  br i1 %cmp1023, label %if.then.1025, label %if.end.1026

if.then.1025:                                     ; preds = %land.lhs.true.1021
  br label %for.end.1548

if.end.1026:                                      ; preds = %land.lhs.true.1021, %if.end.1017
  %622 = load i8, i8* %had_char_class, align 1
  %conv1027 = sext i8 %622 to i32
  %tobool1028 = icmp ne i32 %conv1027, 0
  br i1 %tobool1028, label %land.lhs.true.1029, label %if.end.1039

land.lhs.true.1029:                               ; preds = %if.end.1026
  %623 = load i8, i8* %c, align 1
  %conv1030 = zext i8 %623 to i32
  %cmp1031 = icmp eq i32 %conv1030, 45
  br i1 %cmp1031, label %land.lhs.true.1033, label %if.end.1039

land.lhs.true.1033:                               ; preds = %land.lhs.true.1029
  %624 = load i8*, i8** %p, align 8
  %625 = load i8, i8* %624, align 1
  %conv1034 = sext i8 %625 to i32
  %cmp1035 = icmp ne i32 %conv1034, 93
  br i1 %cmp1035, label %if.then.1037, label %if.end.1039

if.then.1037:                                     ; preds = %land.lhs.true.1033
  %stack1038 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %626 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1038, align 8
  %627 = bitcast %struct.compile_stack_elt_t* %626 to i8*
  call void @free(i8* %627) #1
  store i32 11, i32* %retval
  br label %return

if.end.1039:                                      ; preds = %land.lhs.true.1033, %land.lhs.true.1029, %if.end.1026
  %628 = load i8, i8* %c, align 1
  %conv1040 = zext i8 %628 to i32
  %cmp1041 = icmp eq i32 %conv1040, 45
  br i1 %cmp1041, label %land.lhs.true.1043, label %if.else.1077

land.lhs.true.1043:                               ; preds = %if.end.1039
  %629 = load i8*, i8** %p, align 8
  %add.ptr1044 = getelementptr inbounds i8, i8* %629, i64 -2
  %630 = load i8*, i8** %pattern.addr, align 8
  %cmp1045 = icmp uge i8* %add.ptr1044, %630
  br i1 %cmp1045, label %land.lhs.true.1047, label %land.lhs.true.1052

land.lhs.true.1047:                               ; preds = %land.lhs.true.1043
  %631 = load i8*, i8** %p, align 8
  %arrayidx1048 = getelementptr inbounds i8, i8* %631, i64 -2
  %632 = load i8, i8* %arrayidx1048, align 1
  %conv1049 = sext i8 %632 to i32
  %cmp1050 = icmp eq i32 %conv1049, 91
  br i1 %cmp1050, label %if.else.1077, label %land.lhs.true.1052

land.lhs.true.1052:                               ; preds = %land.lhs.true.1047, %land.lhs.true.1043
  %633 = load i8*, i8** %p, align 8
  %add.ptr1053 = getelementptr inbounds i8, i8* %633, i64 -3
  %634 = load i8*, i8** %pattern.addr, align 8
  %cmp1054 = icmp uge i8* %add.ptr1053, %634
  br i1 %cmp1054, label %land.lhs.true.1056, label %land.lhs.true.1066

land.lhs.true.1056:                               ; preds = %land.lhs.true.1052
  %635 = load i8*, i8** %p, align 8
  %arrayidx1057 = getelementptr inbounds i8, i8* %635, i64 -3
  %636 = load i8, i8* %arrayidx1057, align 1
  %conv1058 = sext i8 %636 to i32
  %cmp1059 = icmp eq i32 %conv1058, 91
  br i1 %cmp1059, label %land.lhs.true.1061, label %land.lhs.true.1066

land.lhs.true.1061:                               ; preds = %land.lhs.true.1056
  %637 = load i8*, i8** %p, align 8
  %arrayidx1062 = getelementptr inbounds i8, i8* %637, i64 -2
  %638 = load i8, i8* %arrayidx1062, align 1
  %conv1063 = sext i8 %638 to i32
  %cmp1064 = icmp eq i32 %conv1063, 94
  br i1 %cmp1064, label %if.else.1077, label %land.lhs.true.1066

land.lhs.true.1066:                               ; preds = %land.lhs.true.1061, %land.lhs.true.1056, %land.lhs.true.1052
  %639 = load i8*, i8** %p, align 8
  %640 = load i8, i8* %639, align 1
  %conv1067 = sext i8 %640 to i32
  %cmp1068 = icmp ne i32 %conv1067, 93
  br i1 %cmp1068, label %if.then.1070, label %if.else.1077

if.then.1070:                                     ; preds = %land.lhs.true.1066
  %641 = load i8*, i8** %pend, align 8
  %642 = load i8*, i8** %translate, align 8
  %643 = load i64, i64* %syntax.addr, align 8
  %644 = load i8*, i8** %b, align 8
  %call1071 = call i32 @compile_range(i8** %p, i8* %641, i8* %642, i64 %643, i8* %644)
  store i32 %call1071, i32* %ret, align 4
  %645 = load i32, i32* %ret, align 4
  %cmp1072 = icmp ne i32 %645, 0
  br i1 %cmp1072, label %if.then.1074, label %if.end.1076

if.then.1074:                                     ; preds = %if.then.1070
  %stack1075 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %646 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1075, align 8
  %647 = bitcast %struct.compile_stack_elt_t* %646 to i8*
  call void @free(i8* %647) #1
  %648 = load i32, i32* %ret, align 4
  store i32 %648, i32* %retval
  br label %return

if.end.1076:                                      ; preds = %if.then.1070
  br label %if.end.1547

if.else.1077:                                     ; preds = %land.lhs.true.1066, %land.lhs.true.1061, %land.lhs.true.1047, %if.end.1039
  %649 = load i8*, i8** %p, align 8
  %arrayidx1078 = getelementptr inbounds i8, i8* %649, i64 0
  %650 = load i8, i8* %arrayidx1078, align 1
  %conv1079 = sext i8 %650 to i32
  %cmp1080 = icmp eq i32 %conv1079, 45
  br i1 %cmp1080, label %land.lhs.true.1082, label %if.else.1107

land.lhs.true.1082:                               ; preds = %if.else.1077
  %651 = load i8*, i8** %p, align 8
  %arrayidx1083 = getelementptr inbounds i8, i8* %651, i64 1
  %652 = load i8, i8* %arrayidx1083, align 1
  %conv1084 = sext i8 %652 to i32
  %cmp1085 = icmp ne i32 %conv1084, 93
  br i1 %cmp1085, label %if.then.1087, label %if.else.1107

if.then.1087:                                     ; preds = %land.lhs.true.1082
  br label %do.body.1089

do.body.1089:                                     ; preds = %if.then.1087
  %653 = load i8*, i8** %p, align 8
  %654 = load i8*, i8** %pend, align 8
  %cmp1090 = icmp eq i8* %653, %654
  br i1 %cmp1090, label %if.then.1092, label %if.end.1093

if.then.1092:                                     ; preds = %do.body.1089
  store i32 14, i32* %retval
  br label %return

if.end.1093:                                      ; preds = %do.body.1089
  %655 = load i8*, i8** %p, align 8
  %incdec.ptr1094 = getelementptr inbounds i8, i8* %655, i32 1
  store i8* %incdec.ptr1094, i8** %p, align 8
  %656 = load i8, i8* %655, align 1
  store i8 %656, i8* %c1, align 1
  %657 = load i8*, i8** %translate, align 8
  %tobool1095 = icmp ne i8* %657, null
  br i1 %tobool1095, label %if.then.1096, label %if.end.1099

if.then.1096:                                     ; preds = %if.end.1093
  %658 = load i8, i8* %c1, align 1
  %idxprom1097 = zext i8 %658 to i64
  %659 = load i8*, i8** %translate, align 8
  %arrayidx1098 = getelementptr inbounds i8, i8* %659, i64 %idxprom1097
  %660 = load i8, i8* %arrayidx1098, align 1
  store i8 %660, i8* %c1, align 1
  br label %if.end.1099

if.end.1099:                                      ; preds = %if.then.1096, %if.end.1093
  br label %do.end.1100

do.end.1100:                                      ; preds = %if.end.1099
  %661 = load i8*, i8** %pend, align 8
  %662 = load i8*, i8** %translate, align 8
  %663 = load i64, i64* %syntax.addr, align 8
  %664 = load i8*, i8** %b, align 8
  %call1101 = call i32 @compile_range(i8** %p, i8* %661, i8* %662, i64 %663, i8* %664)
  store i32 %call1101, i32* %ret1088, align 4
  %665 = load i32, i32* %ret1088, align 4
  %cmp1102 = icmp ne i32 %665, 0
  br i1 %cmp1102, label %if.then.1104, label %if.end.1106

if.then.1104:                                     ; preds = %do.end.1100
  %stack1105 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %666 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1105, align 8
  %667 = bitcast %struct.compile_stack_elt_t* %666 to i8*
  call void @free(i8* %667) #1
  %668 = load i32, i32* %ret1088, align 4
  store i32 %668, i32* %retval
  br label %return

if.end.1106:                                      ; preds = %do.end.1100
  br label %if.end.1546

if.else.1107:                                     ; preds = %land.lhs.true.1082, %if.else.1077
  %669 = load i64, i64* %syntax.addr, align 8
  %and1108 = and i64 %669, 4
  %tobool1109 = icmp ne i64 %and1108, 0
  br i1 %tobool1109, label %land.lhs.true.1110, label %if.else.1534

land.lhs.true.1110:                               ; preds = %if.else.1107
  %670 = load i8, i8* %c, align 1
  %conv1111 = zext i8 %670 to i32
  %cmp1112 = icmp eq i32 %conv1111, 91
  br i1 %cmp1112, label %land.lhs.true.1114, label %if.else.1534

land.lhs.true.1114:                               ; preds = %land.lhs.true.1110
  %671 = load i8*, i8** %p, align 8
  %672 = load i8, i8* %671, align 1
  %conv1115 = sext i8 %672 to i32
  %cmp1116 = icmp eq i32 %conv1115, 58
  br i1 %cmp1116, label %if.then.1118, label %if.else.1534

if.then.1118:                                     ; preds = %land.lhs.true.1114
  br label %do.body.1119

do.body.1119:                                     ; preds = %if.then.1118
  %673 = load i8*, i8** %p, align 8
  %674 = load i8*, i8** %pend, align 8
  %cmp1120 = icmp eq i8* %673, %674
  br i1 %cmp1120, label %if.then.1122, label %if.end.1123

if.then.1122:                                     ; preds = %do.body.1119
  store i32 14, i32* %retval
  br label %return

if.end.1123:                                      ; preds = %do.body.1119
  %675 = load i8*, i8** %p, align 8
  %incdec.ptr1124 = getelementptr inbounds i8, i8* %675, i32 1
  store i8* %incdec.ptr1124, i8** %p, align 8
  %676 = load i8, i8* %675, align 1
  store i8 %676, i8* %c, align 1
  %677 = load i8*, i8** %translate, align 8
  %tobool1125 = icmp ne i8* %677, null
  br i1 %tobool1125, label %if.then.1126, label %if.end.1129

if.then.1126:                                     ; preds = %if.end.1123
  %678 = load i8, i8* %c, align 1
  %idxprom1127 = zext i8 %678 to i64
  %679 = load i8*, i8** %translate, align 8
  %arrayidx1128 = getelementptr inbounds i8, i8* %679, i64 %idxprom1127
  %680 = load i8, i8* %arrayidx1128, align 1
  store i8 %680, i8* %c, align 1
  br label %if.end.1129

if.end.1129:                                      ; preds = %if.then.1126, %if.end.1123
  br label %do.end.1130

do.end.1130:                                      ; preds = %if.end.1129
  store i8 0, i8* %c1, align 1
  %681 = load i8*, i8** %p, align 8
  %682 = load i8*, i8** %pend, align 8
  %cmp1131 = icmp eq i8* %681, %682
  br i1 %cmp1131, label %if.then.1133, label %if.end.1135

if.then.1133:                                     ; preds = %do.end.1130
  %stack1134 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %683 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1134, align 8
  %684 = bitcast %struct.compile_stack_elt_t* %683 to i8*
  call void @free(i8* %684) #1
  store i32 7, i32* %retval
  br label %return

if.end.1135:                                      ; preds = %do.end.1130
  br label %for.cond.1136

for.cond.1136:                                    ; preds = %if.end.1169, %if.end.1135
  br label %do.body.1137

do.body.1137:                                     ; preds = %for.cond.1136
  %685 = load i8*, i8** %p, align 8
  %686 = load i8*, i8** %pend, align 8
  %cmp1138 = icmp eq i8* %685, %686
  br i1 %cmp1138, label %if.then.1140, label %if.end.1141

if.then.1140:                                     ; preds = %do.body.1137
  store i32 14, i32* %retval
  br label %return

if.end.1141:                                      ; preds = %do.body.1137
  %687 = load i8*, i8** %p, align 8
  %incdec.ptr1142 = getelementptr inbounds i8, i8* %687, i32 1
  store i8* %incdec.ptr1142, i8** %p, align 8
  %688 = load i8, i8* %687, align 1
  store i8 %688, i8* %c, align 1
  %689 = load i8*, i8** %translate, align 8
  %tobool1143 = icmp ne i8* %689, null
  br i1 %tobool1143, label %if.then.1144, label %if.end.1147

if.then.1144:                                     ; preds = %if.end.1141
  %690 = load i8, i8* %c, align 1
  %idxprom1145 = zext i8 %690 to i64
  %691 = load i8*, i8** %translate, align 8
  %arrayidx1146 = getelementptr inbounds i8, i8* %691, i64 %idxprom1145
  %692 = load i8, i8* %arrayidx1146, align 1
  store i8 %692, i8* %c, align 1
  br label %if.end.1147

if.end.1147:                                      ; preds = %if.then.1144, %if.end.1141
  br label %do.end.1148

do.end.1148:                                      ; preds = %if.end.1147
  %693 = load i8, i8* %c, align 1
  %conv1149 = zext i8 %693 to i32
  %cmp1150 = icmp eq i32 %conv1149, 58
  br i1 %cmp1150, label %land.lhs.true.1152, label %lor.lhs.false.1156

land.lhs.true.1152:                               ; preds = %do.end.1148
  %694 = load i8*, i8** %p, align 8
  %695 = load i8, i8* %694, align 1
  %conv1153 = sext i8 %695 to i32
  %cmp1154 = icmp eq i32 %conv1153, 93
  br i1 %cmp1154, label %if.then.1159, label %lor.lhs.false.1156

lor.lhs.false.1156:                               ; preds = %land.lhs.true.1152, %do.end.1148
  %696 = load i8*, i8** %p, align 8
  %697 = load i8*, i8** %pend, align 8
  %cmp1157 = icmp eq i8* %696, %697
  br i1 %cmp1157, label %if.then.1159, label %if.end.1160

if.then.1159:                                     ; preds = %lor.lhs.false.1156, %land.lhs.true.1152
  br label %for.end.1170

if.end.1160:                                      ; preds = %lor.lhs.false.1156
  %698 = load i8, i8* %c1, align 1
  %conv1161 = zext i8 %698 to i32
  %cmp1162 = icmp slt i32 %conv1161, 6
  br i1 %cmp1162, label %if.then.1164, label %if.else.1167

if.then.1164:                                     ; preds = %if.end.1160
  %699 = load i8, i8* %c, align 1
  %700 = load i8, i8* %c1, align 1
  %inc = add i8 %700, 1
  store i8 %inc, i8* %c1, align 1
  %idxprom1165 = zext i8 %700 to i64
  %arrayidx1166 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i64 %idxprom1165
  store i8 %699, i8* %arrayidx1166, align 1
  br label %if.end.1169

if.else.1167:                                     ; preds = %if.end.1160
  %arrayidx1168 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i64 0
  store i8 0, i8* %arrayidx1168, align 1
  br label %if.end.1169

if.end.1169:                                      ; preds = %if.else.1167, %if.then.1164
  br label %for.cond.1136

for.end.1170:                                     ; preds = %if.then.1159
  %701 = load i8, i8* %c1, align 1
  %idxprom1171 = zext i8 %701 to i64
  %arrayidx1172 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i64 %idxprom1171
  store i8 0, i8* %arrayidx1172, align 1
  %702 = load i8, i8* %c, align 1
  %conv1173 = zext i8 %702 to i32
  %cmp1174 = icmp eq i32 %conv1173, 58
  br i1 %cmp1174, label %land.lhs.true.1176, label %if.else.1518

land.lhs.true.1176:                               ; preds = %for.end.1170
  %703 = load i8*, i8** %p, align 8
  %704 = load i8, i8* %703, align 1
  %conv1177 = sext i8 %704 to i32
  %cmp1178 = icmp eq i32 %conv1177, 93
  br i1 %cmp1178, label %if.then.1180, label %if.else.1518

if.then.1180:                                     ; preds = %land.lhs.true.1176
  %arraydecay = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1181 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #7
  %cmp1182 = icmp eq i32 %call1181, 0
  %conv1183 = zext i1 %cmp1182 to i32
  %conv1184 = trunc i32 %conv1183 to i8
  store i8 %conv1184, i8* %is_alnum, align 1
  %arraydecay1185 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1186 = call i32 @strcmp(i8* %arraydecay1185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #7
  %cmp1187 = icmp eq i32 %call1186, 0
  %conv1188 = zext i1 %cmp1187 to i32
  %conv1189 = trunc i32 %conv1188 to i8
  store i8 %conv1189, i8* %is_alpha, align 1
  %arraydecay1190 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1191 = call i32 @strcmp(i8* %arraydecay1190, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #7
  %cmp1192 = icmp eq i32 %call1191, 0
  %conv1193 = zext i1 %cmp1192 to i32
  %conv1194 = trunc i32 %conv1193 to i8
  store i8 %conv1194, i8* %is_blank, align 1
  %arraydecay1195 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1196 = call i32 @strcmp(i8* %arraydecay1195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #7
  %cmp1197 = icmp eq i32 %call1196, 0
  %conv1198 = zext i1 %cmp1197 to i32
  %conv1199 = trunc i32 %conv1198 to i8
  store i8 %conv1199, i8* %is_cntrl, align 1
  %arraydecay1200 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1201 = call i32 @strcmp(i8* %arraydecay1200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #7
  %cmp1202 = icmp eq i32 %call1201, 0
  %conv1203 = zext i1 %cmp1202 to i32
  %conv1204 = trunc i32 %conv1203 to i8
  store i8 %conv1204, i8* %is_digit, align 1
  %arraydecay1205 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1206 = call i32 @strcmp(i8* %arraydecay1205, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #7
  %cmp1207 = icmp eq i32 %call1206, 0
  %conv1208 = zext i1 %cmp1207 to i32
  %conv1209 = trunc i32 %conv1208 to i8
  store i8 %conv1209, i8* %is_graph, align 1
  %arraydecay1210 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1211 = call i32 @strcmp(i8* %arraydecay1210, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)) #7
  %cmp1212 = icmp eq i32 %call1211, 0
  %conv1213 = zext i1 %cmp1212 to i32
  %conv1214 = trunc i32 %conv1213 to i8
  store i8 %conv1214, i8* %is_lower, align 1
  %arraydecay1215 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1216 = call i32 @strcmp(i8* %arraydecay1215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)) #7
  %cmp1217 = icmp eq i32 %call1216, 0
  %conv1218 = zext i1 %cmp1217 to i32
  %conv1219 = trunc i32 %conv1218 to i8
  store i8 %conv1219, i8* %is_print, align 1
  %arraydecay1220 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1221 = call i32 @strcmp(i8* %arraydecay1220, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #7
  %cmp1222 = icmp eq i32 %call1221, 0
  %conv1223 = zext i1 %cmp1222 to i32
  %conv1224 = trunc i32 %conv1223 to i8
  store i8 %conv1224, i8* %is_punct, align 1
  %arraydecay1225 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1226 = call i32 @strcmp(i8* %arraydecay1225, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)) #7
  %cmp1227 = icmp eq i32 %call1226, 0
  %conv1228 = zext i1 %cmp1227 to i32
  %conv1229 = trunc i32 %conv1228 to i8
  store i8 %conv1229, i8* %is_space, align 1
  %arraydecay1230 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1231 = call i32 @strcmp(i8* %arraydecay1230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)) #7
  %cmp1232 = icmp eq i32 %call1231, 0
  %conv1233 = zext i1 %cmp1232 to i32
  %conv1234 = trunc i32 %conv1233 to i8
  store i8 %conv1234, i8* %is_upper, align 1
  %arraydecay1235 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1236 = call i32 @strcmp(i8* %arraydecay1235, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)) #7
  %cmp1237 = icmp eq i32 %call1236, 0
  %conv1238 = zext i1 %cmp1237 to i32
  %conv1239 = trunc i32 %conv1238 to i8
  store i8 %conv1239, i8* %is_xdigit, align 1
  %arraydecay1240 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1241 = call i32 @strcmp(i8* %arraydecay1240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #7
  %cmp1242 = icmp eq i32 %call1241, 0
  br i1 %cmp1242, label %if.end.1301, label %lor.lhs.false.1244

lor.lhs.false.1244:                               ; preds = %if.then.1180
  %arraydecay1245 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1246 = call i32 @strcmp(i8* %arraydecay1245, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)) #7
  %cmp1247 = icmp eq i32 %call1246, 0
  br i1 %cmp1247, label %if.end.1301, label %lor.lhs.false.1249

lor.lhs.false.1249:                               ; preds = %lor.lhs.false.1244
  %arraydecay1250 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1251 = call i32 @strcmp(i8* %arraydecay1250, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)) #7
  %cmp1252 = icmp eq i32 %call1251, 0
  br i1 %cmp1252, label %if.end.1301, label %lor.lhs.false.1254

lor.lhs.false.1254:                               ; preds = %lor.lhs.false.1249
  %arraydecay1255 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1256 = call i32 @strcmp(i8* %arraydecay1255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #7
  %cmp1257 = icmp eq i32 %call1256, 0
  br i1 %cmp1257, label %if.end.1301, label %lor.lhs.false.1259

lor.lhs.false.1259:                               ; preds = %lor.lhs.false.1254
  %arraydecay1260 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1261 = call i32 @strcmp(i8* %arraydecay1260, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #7
  %cmp1262 = icmp eq i32 %call1261, 0
  br i1 %cmp1262, label %if.end.1301, label %lor.lhs.false.1264

lor.lhs.false.1264:                               ; preds = %lor.lhs.false.1259
  %arraydecay1265 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1266 = call i32 @strcmp(i8* %arraydecay1265, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)) #7
  %cmp1267 = icmp eq i32 %call1266, 0
  br i1 %cmp1267, label %if.end.1301, label %lor.lhs.false.1269

lor.lhs.false.1269:                               ; preds = %lor.lhs.false.1264
  %arraydecay1270 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1271 = call i32 @strcmp(i8* %arraydecay1270, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)) #7
  %cmp1272 = icmp eq i32 %call1271, 0
  br i1 %cmp1272, label %if.end.1301, label %lor.lhs.false.1274

lor.lhs.false.1274:                               ; preds = %lor.lhs.false.1269
  %arraydecay1275 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1276 = call i32 @strcmp(i8* %arraydecay1275, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)) #7
  %cmp1277 = icmp eq i32 %call1276, 0
  br i1 %cmp1277, label %if.end.1301, label %lor.lhs.false.1279

lor.lhs.false.1279:                               ; preds = %lor.lhs.false.1274
  %arraydecay1280 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1281 = call i32 @strcmp(i8* %arraydecay1280, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #7
  %cmp1282 = icmp eq i32 %call1281, 0
  br i1 %cmp1282, label %if.end.1301, label %lor.lhs.false.1284

lor.lhs.false.1284:                               ; preds = %lor.lhs.false.1279
  %arraydecay1285 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1286 = call i32 @strcmp(i8* %arraydecay1285, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #7
  %cmp1287 = icmp eq i32 %call1286, 0
  br i1 %cmp1287, label %if.end.1301, label %lor.lhs.false.1289

lor.lhs.false.1289:                               ; preds = %lor.lhs.false.1284
  %arraydecay1290 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1291 = call i32 @strcmp(i8* %arraydecay1290, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #7
  %cmp1292 = icmp eq i32 %call1291, 0
  br i1 %cmp1292, label %if.end.1301, label %lor.lhs.false.1294

lor.lhs.false.1294:                               ; preds = %lor.lhs.false.1289
  %arraydecay1295 = getelementptr inbounds [7 x i8], [7 x i8]* %str, i32 0, i32 0
  %call1296 = call i32 @strcmp(i8* %arraydecay1295, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #7
  %cmp1297 = icmp eq i32 %call1296, 0
  br i1 %cmp1297, label %if.end.1301, label %if.then.1299

if.then.1299:                                     ; preds = %lor.lhs.false.1294
  %stack1300 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %705 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1300, align 8
  %706 = bitcast %struct.compile_stack_elt_t* %705 to i8*
  call void @free(i8* %706) #1
  store i32 4, i32* %retval
  br label %return

if.end.1301:                                      ; preds = %lor.lhs.false.1294, %lor.lhs.false.1289, %lor.lhs.false.1284, %lor.lhs.false.1279, %lor.lhs.false.1274, %lor.lhs.false.1269, %lor.lhs.false.1264, %lor.lhs.false.1259, %lor.lhs.false.1254, %lor.lhs.false.1249, %lor.lhs.false.1244, %if.then.1180
  br label %do.body.1302

do.body.1302:                                     ; preds = %if.end.1301
  %707 = load i8*, i8** %p, align 8
  %708 = load i8*, i8** %pend, align 8
  %cmp1303 = icmp eq i8* %707, %708
  br i1 %cmp1303, label %if.then.1305, label %if.end.1306

if.then.1305:                                     ; preds = %do.body.1302
  store i32 14, i32* %retval
  br label %return

if.end.1306:                                      ; preds = %do.body.1302
  %709 = load i8*, i8** %p, align 8
  %incdec.ptr1307 = getelementptr inbounds i8, i8* %709, i32 1
  store i8* %incdec.ptr1307, i8** %p, align 8
  %710 = load i8, i8* %709, align 1
  store i8 %710, i8* %c, align 1
  %711 = load i8*, i8** %translate, align 8
  %tobool1308 = icmp ne i8* %711, null
  br i1 %tobool1308, label %if.then.1309, label %if.end.1312

if.then.1309:                                     ; preds = %if.end.1306
  %712 = load i8, i8* %c, align 1
  %idxprom1310 = zext i8 %712 to i64
  %713 = load i8*, i8** %translate, align 8
  %arrayidx1311 = getelementptr inbounds i8, i8* %713, i64 %idxprom1310
  %714 = load i8, i8* %arrayidx1311, align 1
  store i8 %714, i8* %c, align 1
  br label %if.end.1312

if.end.1312:                                      ; preds = %if.then.1309, %if.end.1306
  br label %do.end.1313

do.end.1313:                                      ; preds = %if.end.1312
  %715 = load i8*, i8** %p, align 8
  %716 = load i8*, i8** %pend, align 8
  %cmp1314 = icmp eq i8* %715, %716
  br i1 %cmp1314, label %if.then.1316, label %if.end.1318

if.then.1316:                                     ; preds = %do.end.1313
  %stack1317 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %717 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1317, align 8
  %718 = bitcast %struct.compile_stack_elt_t* %717 to i8*
  call void @free(i8* %718) #1
  store i32 7, i32* %retval
  br label %return

if.end.1318:                                      ; preds = %do.end.1313
  store i32 0, i32* %ch, align 4
  br label %for.cond.1319

for.cond.1319:                                    ; preds = %for.inc, %if.end.1318
  %719 = load i32, i32* %ch, align 4
  %cmp1320 = icmp slt i32 %719, 256
  br i1 %cmp1320, label %for.body, label %for.end.1517

for.body:                                         ; preds = %for.cond.1319
  %720 = load i8, i8* %is_alnum, align 1
  %conv1322 = sext i8 %720 to i32
  %tobool1323 = icmp ne i32 %conv1322, 0
  br i1 %tobool1323, label %land.lhs.true.1324, label %lor.lhs.false.1331

land.lhs.true.1324:                               ; preds = %for.body
  %721 = load i32, i32* %ch, align 4
  %idxprom1325 = sext i32 %721 to i64
  %call1326 = call i16** @__ctype_b_loc() #8
  %722 = load i16*, i16** %call1326, align 8
  %arrayidx1327 = getelementptr inbounds i16, i16* %722, i64 %idxprom1325
  %723 = load i16, i16* %arrayidx1327, align 2
  %conv1328 = zext i16 %723 to i32
  %and1329 = and i32 %conv1328, 8
  %tobool1330 = icmp ne i32 %and1329, 0
  br i1 %tobool1330, label %if.then.1361, label %lor.lhs.false.1331

lor.lhs.false.1331:                               ; preds = %land.lhs.true.1324, %for.body
  %724 = load i8, i8* %is_alpha, align 1
  %conv1332 = sext i8 %724 to i32
  %tobool1333 = icmp ne i32 %conv1332, 0
  br i1 %tobool1333, label %land.lhs.true.1334, label %lor.lhs.false.1341

land.lhs.true.1334:                               ; preds = %lor.lhs.false.1331
  %725 = load i32, i32* %ch, align 4
  %idxprom1335 = sext i32 %725 to i64
  %call1336 = call i16** @__ctype_b_loc() #8
  %726 = load i16*, i16** %call1336, align 8
  %arrayidx1337 = getelementptr inbounds i16, i16* %726, i64 %idxprom1335
  %727 = load i16, i16* %arrayidx1337, align 2
  %conv1338 = zext i16 %727 to i32
  %and1339 = and i32 %conv1338, 1024
  %tobool1340 = icmp ne i32 %and1339, 0
  br i1 %tobool1340, label %if.then.1361, label %lor.lhs.false.1341

lor.lhs.false.1341:                               ; preds = %land.lhs.true.1334, %lor.lhs.false.1331
  %728 = load i8, i8* %is_blank, align 1
  %conv1342 = sext i8 %728 to i32
  %tobool1343 = icmp ne i32 %conv1342, 0
  br i1 %tobool1343, label %land.lhs.true.1344, label %lor.lhs.false.1351

land.lhs.true.1344:                               ; preds = %lor.lhs.false.1341
  %729 = load i32, i32* %ch, align 4
  %idxprom1345 = sext i32 %729 to i64
  %call1346 = call i16** @__ctype_b_loc() #8
  %730 = load i16*, i16** %call1346, align 8
  %arrayidx1347 = getelementptr inbounds i16, i16* %730, i64 %idxprom1345
  %731 = load i16, i16* %arrayidx1347, align 2
  %conv1348 = zext i16 %731 to i32
  %and1349 = and i32 %conv1348, 1
  %tobool1350 = icmp ne i32 %and1349, 0
  br i1 %tobool1350, label %if.then.1361, label %lor.lhs.false.1351

lor.lhs.false.1351:                               ; preds = %land.lhs.true.1344, %lor.lhs.false.1341
  %732 = load i8, i8* %is_cntrl, align 1
  %conv1352 = sext i8 %732 to i32
  %tobool1353 = icmp ne i32 %conv1352, 0
  br i1 %tobool1353, label %land.lhs.true.1354, label %if.end.1374

land.lhs.true.1354:                               ; preds = %lor.lhs.false.1351
  %733 = load i32, i32* %ch, align 4
  %idxprom1355 = sext i32 %733 to i64
  %call1356 = call i16** @__ctype_b_loc() #8
  %734 = load i16*, i16** %call1356, align 8
  %arrayidx1357 = getelementptr inbounds i16, i16* %734, i64 %idxprom1355
  %735 = load i16, i16* %arrayidx1357, align 2
  %conv1358 = zext i16 %735 to i32
  %and1359 = and i32 %conv1358, 2
  %tobool1360 = icmp ne i32 %and1359, 0
  br i1 %tobool1360, label %if.then.1361, label %if.end.1374

if.then.1361:                                     ; preds = %land.lhs.true.1354, %land.lhs.true.1344, %land.lhs.true.1334, %land.lhs.true.1324
  %736 = load i32, i32* %ch, align 4
  %conv1362 = trunc i32 %736 to i8
  %conv1363 = zext i8 %conv1362 to i32
  %rem1364 = srem i32 %conv1363, 8
  %shl1365 = shl i32 1, %rem1364
  %737 = load i32, i32* %ch, align 4
  %conv1366 = trunc i32 %737 to i8
  %conv1367 = zext i8 %conv1366 to i32
  %div1368 = sdiv i32 %conv1367, 8
  %idxprom1369 = sext i32 %div1368 to i64
  %738 = load i8*, i8** %b, align 8
  %arrayidx1370 = getelementptr inbounds i8, i8* %738, i64 %idxprom1369
  %739 = load i8, i8* %arrayidx1370, align 1
  %conv1371 = zext i8 %739 to i32
  %or1372 = or i32 %conv1371, %shl1365
  %conv1373 = trunc i32 %or1372 to i8
  store i8 %conv1373, i8* %arrayidx1370, align 1
  br label %if.end.1374

if.end.1374:                                      ; preds = %if.then.1361, %land.lhs.true.1354, %lor.lhs.false.1351
  %740 = load i8, i8* %is_digit, align 1
  %conv1375 = sext i8 %740 to i32
  %tobool1376 = icmp ne i32 %conv1375, 0
  br i1 %tobool1376, label %land.lhs.true.1377, label %lor.lhs.false.1384

land.lhs.true.1377:                               ; preds = %if.end.1374
  %741 = load i32, i32* %ch, align 4
  %idxprom1378 = sext i32 %741 to i64
  %call1379 = call i16** @__ctype_b_loc() #8
  %742 = load i16*, i16** %call1379, align 8
  %arrayidx1380 = getelementptr inbounds i16, i16* %742, i64 %idxprom1378
  %743 = load i16, i16* %arrayidx1380, align 2
  %conv1381 = zext i16 %743 to i32
  %and1382 = and i32 %conv1381, 2048
  %tobool1383 = icmp ne i32 %and1382, 0
  br i1 %tobool1383, label %if.then.1414, label %lor.lhs.false.1384

lor.lhs.false.1384:                               ; preds = %land.lhs.true.1377, %if.end.1374
  %744 = load i8, i8* %is_graph, align 1
  %conv1385 = sext i8 %744 to i32
  %tobool1386 = icmp ne i32 %conv1385, 0
  br i1 %tobool1386, label %land.lhs.true.1387, label %lor.lhs.false.1394

land.lhs.true.1387:                               ; preds = %lor.lhs.false.1384
  %745 = load i32, i32* %ch, align 4
  %idxprom1388 = sext i32 %745 to i64
  %call1389 = call i16** @__ctype_b_loc() #8
  %746 = load i16*, i16** %call1389, align 8
  %arrayidx1390 = getelementptr inbounds i16, i16* %746, i64 %idxprom1388
  %747 = load i16, i16* %arrayidx1390, align 2
  %conv1391 = zext i16 %747 to i32
  %and1392 = and i32 %conv1391, 32768
  %tobool1393 = icmp ne i32 %and1392, 0
  br i1 %tobool1393, label %if.then.1414, label %lor.lhs.false.1394

lor.lhs.false.1394:                               ; preds = %land.lhs.true.1387, %lor.lhs.false.1384
  %748 = load i8, i8* %is_lower, align 1
  %conv1395 = sext i8 %748 to i32
  %tobool1396 = icmp ne i32 %conv1395, 0
  br i1 %tobool1396, label %land.lhs.true.1397, label %lor.lhs.false.1404

land.lhs.true.1397:                               ; preds = %lor.lhs.false.1394
  %749 = load i32, i32* %ch, align 4
  %idxprom1398 = sext i32 %749 to i64
  %call1399 = call i16** @__ctype_b_loc() #8
  %750 = load i16*, i16** %call1399, align 8
  %arrayidx1400 = getelementptr inbounds i16, i16* %750, i64 %idxprom1398
  %751 = load i16, i16* %arrayidx1400, align 2
  %conv1401 = zext i16 %751 to i32
  %and1402 = and i32 %conv1401, 512
  %tobool1403 = icmp ne i32 %and1402, 0
  br i1 %tobool1403, label %if.then.1414, label %lor.lhs.false.1404

lor.lhs.false.1404:                               ; preds = %land.lhs.true.1397, %lor.lhs.false.1394
  %752 = load i8, i8* %is_print, align 1
  %conv1405 = sext i8 %752 to i32
  %tobool1406 = icmp ne i32 %conv1405, 0
  br i1 %tobool1406, label %land.lhs.true.1407, label %if.end.1427

land.lhs.true.1407:                               ; preds = %lor.lhs.false.1404
  %753 = load i32, i32* %ch, align 4
  %idxprom1408 = sext i32 %753 to i64
  %call1409 = call i16** @__ctype_b_loc() #8
  %754 = load i16*, i16** %call1409, align 8
  %arrayidx1410 = getelementptr inbounds i16, i16* %754, i64 %idxprom1408
  %755 = load i16, i16* %arrayidx1410, align 2
  %conv1411 = zext i16 %755 to i32
  %and1412 = and i32 %conv1411, 16384
  %tobool1413 = icmp ne i32 %and1412, 0
  br i1 %tobool1413, label %if.then.1414, label %if.end.1427

if.then.1414:                                     ; preds = %land.lhs.true.1407, %land.lhs.true.1397, %land.lhs.true.1387, %land.lhs.true.1377
  %756 = load i32, i32* %ch, align 4
  %conv1415 = trunc i32 %756 to i8
  %conv1416 = zext i8 %conv1415 to i32
  %rem1417 = srem i32 %conv1416, 8
  %shl1418 = shl i32 1, %rem1417
  %757 = load i32, i32* %ch, align 4
  %conv1419 = trunc i32 %757 to i8
  %conv1420 = zext i8 %conv1419 to i32
  %div1421 = sdiv i32 %conv1420, 8
  %idxprom1422 = sext i32 %div1421 to i64
  %758 = load i8*, i8** %b, align 8
  %arrayidx1423 = getelementptr inbounds i8, i8* %758, i64 %idxprom1422
  %759 = load i8, i8* %arrayidx1423, align 1
  %conv1424 = zext i8 %759 to i32
  %or1425 = or i32 %conv1424, %shl1418
  %conv1426 = trunc i32 %or1425 to i8
  store i8 %conv1426, i8* %arrayidx1423, align 1
  br label %if.end.1427

if.end.1427:                                      ; preds = %if.then.1414, %land.lhs.true.1407, %lor.lhs.false.1404
  %760 = load i8, i8* %is_punct, align 1
  %conv1428 = sext i8 %760 to i32
  %tobool1429 = icmp ne i32 %conv1428, 0
  br i1 %tobool1429, label %land.lhs.true.1430, label %lor.lhs.false.1437

land.lhs.true.1430:                               ; preds = %if.end.1427
  %761 = load i32, i32* %ch, align 4
  %idxprom1431 = sext i32 %761 to i64
  %call1432 = call i16** @__ctype_b_loc() #8
  %762 = load i16*, i16** %call1432, align 8
  %arrayidx1433 = getelementptr inbounds i16, i16* %762, i64 %idxprom1431
  %763 = load i16, i16* %arrayidx1433, align 2
  %conv1434 = zext i16 %763 to i32
  %and1435 = and i32 %conv1434, 4
  %tobool1436 = icmp ne i32 %and1435, 0
  br i1 %tobool1436, label %if.then.1467, label %lor.lhs.false.1437

lor.lhs.false.1437:                               ; preds = %land.lhs.true.1430, %if.end.1427
  %764 = load i8, i8* %is_space, align 1
  %conv1438 = sext i8 %764 to i32
  %tobool1439 = icmp ne i32 %conv1438, 0
  br i1 %tobool1439, label %land.lhs.true.1440, label %lor.lhs.false.1447

land.lhs.true.1440:                               ; preds = %lor.lhs.false.1437
  %765 = load i32, i32* %ch, align 4
  %idxprom1441 = sext i32 %765 to i64
  %call1442 = call i16** @__ctype_b_loc() #8
  %766 = load i16*, i16** %call1442, align 8
  %arrayidx1443 = getelementptr inbounds i16, i16* %766, i64 %idxprom1441
  %767 = load i16, i16* %arrayidx1443, align 2
  %conv1444 = zext i16 %767 to i32
  %and1445 = and i32 %conv1444, 8192
  %tobool1446 = icmp ne i32 %and1445, 0
  br i1 %tobool1446, label %if.then.1467, label %lor.lhs.false.1447

lor.lhs.false.1447:                               ; preds = %land.lhs.true.1440, %lor.lhs.false.1437
  %768 = load i8, i8* %is_upper, align 1
  %conv1448 = sext i8 %768 to i32
  %tobool1449 = icmp ne i32 %conv1448, 0
  br i1 %tobool1449, label %land.lhs.true.1450, label %lor.lhs.false.1457

land.lhs.true.1450:                               ; preds = %lor.lhs.false.1447
  %769 = load i32, i32* %ch, align 4
  %idxprom1451 = sext i32 %769 to i64
  %call1452 = call i16** @__ctype_b_loc() #8
  %770 = load i16*, i16** %call1452, align 8
  %arrayidx1453 = getelementptr inbounds i16, i16* %770, i64 %idxprom1451
  %771 = load i16, i16* %arrayidx1453, align 2
  %conv1454 = zext i16 %771 to i32
  %and1455 = and i32 %conv1454, 256
  %tobool1456 = icmp ne i32 %and1455, 0
  br i1 %tobool1456, label %if.then.1467, label %lor.lhs.false.1457

lor.lhs.false.1457:                               ; preds = %land.lhs.true.1450, %lor.lhs.false.1447
  %772 = load i8, i8* %is_xdigit, align 1
  %conv1458 = sext i8 %772 to i32
  %tobool1459 = icmp ne i32 %conv1458, 0
  br i1 %tobool1459, label %land.lhs.true.1460, label %if.end.1480

land.lhs.true.1460:                               ; preds = %lor.lhs.false.1457
  %773 = load i32, i32* %ch, align 4
  %idxprom1461 = sext i32 %773 to i64
  %call1462 = call i16** @__ctype_b_loc() #8
  %774 = load i16*, i16** %call1462, align 8
  %arrayidx1463 = getelementptr inbounds i16, i16* %774, i64 %idxprom1461
  %775 = load i16, i16* %arrayidx1463, align 2
  %conv1464 = zext i16 %775 to i32
  %and1465 = and i32 %conv1464, 4096
  %tobool1466 = icmp ne i32 %and1465, 0
  br i1 %tobool1466, label %if.then.1467, label %if.end.1480

if.then.1467:                                     ; preds = %land.lhs.true.1460, %land.lhs.true.1450, %land.lhs.true.1440, %land.lhs.true.1430
  %776 = load i32, i32* %ch, align 4
  %conv1468 = trunc i32 %776 to i8
  %conv1469 = zext i8 %conv1468 to i32
  %rem1470 = srem i32 %conv1469, 8
  %shl1471 = shl i32 1, %rem1470
  %777 = load i32, i32* %ch, align 4
  %conv1472 = trunc i32 %777 to i8
  %conv1473 = zext i8 %conv1472 to i32
  %div1474 = sdiv i32 %conv1473, 8
  %idxprom1475 = sext i32 %div1474 to i64
  %778 = load i8*, i8** %b, align 8
  %arrayidx1476 = getelementptr inbounds i8, i8* %778, i64 %idxprom1475
  %779 = load i8, i8* %arrayidx1476, align 1
  %conv1477 = zext i8 %779 to i32
  %or1478 = or i32 %conv1477, %shl1471
  %conv1479 = trunc i32 %or1478 to i8
  store i8 %conv1479, i8* %arrayidx1476, align 1
  br label %if.end.1480

if.end.1480:                                      ; preds = %if.then.1467, %land.lhs.true.1460, %lor.lhs.false.1457
  %780 = load i8*, i8** %translate, align 8
  %tobool1481 = icmp ne i8* %780, null
  br i1 %tobool1481, label %land.lhs.true.1482, label %if.end.1515

land.lhs.true.1482:                               ; preds = %if.end.1480
  %781 = load i8, i8* %is_upper, align 1
  %conv1483 = sext i8 %781 to i32
  %tobool1484 = icmp ne i32 %conv1483, 0
  br i1 %tobool1484, label %land.lhs.true.1488, label %lor.lhs.false.1485

lor.lhs.false.1485:                               ; preds = %land.lhs.true.1482
  %782 = load i8, i8* %is_lower, align 1
  %conv1486 = sext i8 %782 to i32
  %tobool1487 = icmp ne i32 %conv1486, 0
  br i1 %tobool1487, label %land.lhs.true.1488, label %if.end.1515

land.lhs.true.1488:                               ; preds = %lor.lhs.false.1485, %land.lhs.true.1482
  %783 = load i32, i32* %ch, align 4
  %idxprom1489 = sext i32 %783 to i64
  %call1490 = call i16** @__ctype_b_loc() #8
  %784 = load i16*, i16** %call1490, align 8
  %arrayidx1491 = getelementptr inbounds i16, i16* %784, i64 %idxprom1489
  %785 = load i16, i16* %arrayidx1491, align 2
  %conv1492 = zext i16 %785 to i32
  %and1493 = and i32 %conv1492, 256
  %tobool1494 = icmp ne i32 %and1493, 0
  br i1 %tobool1494, label %if.then.1502, label %lor.lhs.false.1495

lor.lhs.false.1495:                               ; preds = %land.lhs.true.1488
  %786 = load i32, i32* %ch, align 4
  %idxprom1496 = sext i32 %786 to i64
  %call1497 = call i16** @__ctype_b_loc() #8
  %787 = load i16*, i16** %call1497, align 8
  %arrayidx1498 = getelementptr inbounds i16, i16* %787, i64 %idxprom1496
  %788 = load i16, i16* %arrayidx1498, align 2
  %conv1499 = zext i16 %788 to i32
  %and1500 = and i32 %conv1499, 512
  %tobool1501 = icmp ne i32 %and1500, 0
  br i1 %tobool1501, label %if.then.1502, label %if.end.1515

if.then.1502:                                     ; preds = %lor.lhs.false.1495, %land.lhs.true.1488
  %789 = load i32, i32* %ch, align 4
  %conv1503 = trunc i32 %789 to i8
  %conv1504 = zext i8 %conv1503 to i32
  %rem1505 = srem i32 %conv1504, 8
  %shl1506 = shl i32 1, %rem1505
  %790 = load i32, i32* %ch, align 4
  %conv1507 = trunc i32 %790 to i8
  %conv1508 = zext i8 %conv1507 to i32
  %div1509 = sdiv i32 %conv1508, 8
  %idxprom1510 = sext i32 %div1509 to i64
  %791 = load i8*, i8** %b, align 8
  %arrayidx1511 = getelementptr inbounds i8, i8* %791, i64 %idxprom1510
  %792 = load i8, i8* %arrayidx1511, align 1
  %conv1512 = zext i8 %792 to i32
  %or1513 = or i32 %conv1512, %shl1506
  %conv1514 = trunc i32 %or1513 to i8
  store i8 %conv1514, i8* %arrayidx1511, align 1
  br label %if.end.1515

if.end.1515:                                      ; preds = %if.then.1502, %lor.lhs.false.1495, %lor.lhs.false.1485, %if.end.1480
  br label %for.inc

for.inc:                                          ; preds = %if.end.1515
  %793 = load i32, i32* %ch, align 4
  %inc1516 = add nsw i32 %793, 1
  store i32 %inc1516, i32* %ch, align 4
  br label %for.cond.1319

for.end.1517:                                     ; preds = %for.cond.1319
  store i8 1, i8* %had_char_class, align 1
  br label %if.end.1533

if.else.1518:                                     ; preds = %land.lhs.true.1176, %for.end.1170
  %794 = load i8, i8* %c1, align 1
  %inc1519 = add i8 %794, 1
  store i8 %inc1519, i8* %c1, align 1
  br label %while.cond.1520

while.cond.1520:                                  ; preds = %while.body.1522, %if.else.1518
  %795 = load i8, i8* %c1, align 1
  %dec = add i8 %795, -1
  store i8 %dec, i8* %c1, align 1
  %tobool1521 = icmp ne i8 %795, 0
  br i1 %tobool1521, label %while.body.1522, label %while.end.1524

while.body.1522:                                  ; preds = %while.cond.1520
  %796 = load i8*, i8** %p, align 8
  %incdec.ptr1523 = getelementptr inbounds i8, i8* %796, i32 -1
  store i8* %incdec.ptr1523, i8** %p, align 8
  br label %while.cond.1520

while.end.1524:                                   ; preds = %while.cond.1520
  %797 = load i8*, i8** %b, align 8
  %arrayidx1525 = getelementptr inbounds i8, i8* %797, i64 11
  %798 = load i8, i8* %arrayidx1525, align 1
  %conv1526 = zext i8 %798 to i32
  %or1527 = or i32 %conv1526, 8
  %conv1528 = trunc i32 %or1527 to i8
  store i8 %conv1528, i8* %arrayidx1525, align 1
  %799 = load i8*, i8** %b, align 8
  %arrayidx1529 = getelementptr inbounds i8, i8* %799, i64 7
  %800 = load i8, i8* %arrayidx1529, align 1
  %conv1530 = zext i8 %800 to i32
  %or1531 = or i32 %conv1530, 4
  %conv1532 = trunc i32 %or1531 to i8
  store i8 %conv1532, i8* %arrayidx1529, align 1
  store i8 0, i8* %had_char_class, align 1
  br label %if.end.1533

if.end.1533:                                      ; preds = %while.end.1524, %for.end.1517
  br label %if.end.1545

if.else.1534:                                     ; preds = %land.lhs.true.1114, %land.lhs.true.1110, %if.else.1107
  store i8 0, i8* %had_char_class, align 1
  %801 = load i8, i8* %c, align 1
  %conv1535 = zext i8 %801 to i32
  %rem1536 = srem i32 %conv1535, 8
  %shl1537 = shl i32 1, %rem1536
  %802 = load i8, i8* %c, align 1
  %conv1538 = zext i8 %802 to i32
  %div1539 = sdiv i32 %conv1538, 8
  %idxprom1540 = sext i32 %div1539 to i64
  %803 = load i8*, i8** %b, align 8
  %arrayidx1541 = getelementptr inbounds i8, i8* %803, i64 %idxprom1540
  %804 = load i8, i8* %arrayidx1541, align 1
  %conv1542 = zext i8 %804 to i32
  %or1543 = or i32 %conv1542, %shl1537
  %conv1544 = trunc i32 %or1543 to i8
  store i8 %conv1544, i8* %arrayidx1541, align 1
  br label %if.end.1545

if.end.1545:                                      ; preds = %if.else.1534, %if.end.1533
  br label %if.end.1546

if.end.1546:                                      ; preds = %if.end.1545, %if.end.1106
  br label %if.end.1547

if.end.1547:                                      ; preds = %if.end.1546, %if.end.1076
  br label %for.cond.967

for.end.1548:                                     ; preds = %if.then.1025
  br label %while.cond.1549

while.cond.1549:                                  ; preds = %while.body.1562, %for.end.1548
  %805 = load i8*, i8** %b, align 8
  %arrayidx1550 = getelementptr inbounds i8, i8* %805, i64 -1
  %806 = load i8, i8* %arrayidx1550, align 1
  %conv1551 = zext i8 %806 to i32
  %cmp1552 = icmp sgt i32 %conv1551, 0
  br i1 %cmp1552, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.1549
  %807 = load i8*, i8** %b, align 8
  %arrayidx1554 = getelementptr inbounds i8, i8* %807, i64 -1
  %808 = load i8, i8* %arrayidx1554, align 1
  %conv1555 = zext i8 %808 to i32
  %sub1556 = sub nsw i32 %conv1555, 1
  %idxprom1557 = sext i32 %sub1556 to i64
  %809 = load i8*, i8** %b, align 8
  %arrayidx1558 = getelementptr inbounds i8, i8* %809, i64 %idxprom1557
  %810 = load i8, i8* %arrayidx1558, align 1
  %conv1559 = zext i8 %810 to i32
  %cmp1560 = icmp eq i32 %conv1559, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.1549
  %811 = phi i1 [ false, %while.cond.1549 ], [ %cmp1560, %land.rhs ]
  br i1 %811, label %while.body.1562, label %while.end.1565

while.body.1562:                                  ; preds = %land.end
  %812 = load i8*, i8** %b, align 8
  %arrayidx1563 = getelementptr inbounds i8, i8* %812, i64 -1
  %813 = load i8, i8* %arrayidx1563, align 1
  %dec1564 = add i8 %813, -1
  store i8 %dec1564, i8* %arrayidx1563, align 1
  br label %while.cond.1549

while.end.1565:                                   ; preds = %land.end
  %814 = load i8*, i8** %b, align 8
  %arrayidx1566 = getelementptr inbounds i8, i8* %814, i64 -1
  %815 = load i8, i8* %arrayidx1566, align 1
  %conv1567 = zext i8 %815 to i32
  %816 = load i8*, i8** %b, align 8
  %idx.ext = sext i32 %conv1567 to i64
  %add.ptr1568 = getelementptr inbounds i8, i8* %816, i64 %idx.ext
  store i8* %add.ptr1568, i8** %b, align 8
  br label %sw.epilog.3639

sw.bb.1569:                                       ; preds = %do.end
  %817 = load i64, i64* %syntax.addr, align 8
  %and1570 = and i64 %817, 8192
  %tobool1571 = icmp ne i64 %and1570, 0
  br i1 %tobool1571, label %if.then.1572, label %if.else.1573

if.then.1572:                                     ; preds = %sw.bb.1569
  br label %handle_open

if.else.1573:                                     ; preds = %sw.bb.1569
  br label %normal_char

sw.bb.1574:                                       ; preds = %do.end
  %818 = load i64, i64* %syntax.addr, align 8
  %and1575 = and i64 %818, 8192
  %tobool1576 = icmp ne i64 %and1575, 0
  br i1 %tobool1576, label %if.then.1577, label %if.else.1578

if.then.1577:                                     ; preds = %sw.bb.1574
  br label %handle_close

if.else.1578:                                     ; preds = %sw.bb.1574
  br label %normal_char

sw.bb.1579:                                       ; preds = %do.end
  %819 = load i64, i64* %syntax.addr, align 8
  %and1580 = and i64 %819, 2048
  %tobool1581 = icmp ne i64 %and1580, 0
  br i1 %tobool1581, label %if.then.1582, label %if.else.1583

if.then.1582:                                     ; preds = %sw.bb.1579
  br label %handle_alt

if.else.1583:                                     ; preds = %sw.bb.1579
  br label %normal_char

sw.bb.1584:                                       ; preds = %do.end
  %820 = load i64, i64* %syntax.addr, align 8
  %and1585 = and i64 %820, 32768
  %tobool1586 = icmp ne i64 %and1585, 0
  br i1 %tobool1586, label %if.then.1587, label %if.else.1588

if.then.1587:                                     ; preds = %sw.bb.1584
  br label %handle_alt

if.else.1588:                                     ; preds = %sw.bb.1584
  br label %normal_char

sw.bb.1589:                                       ; preds = %do.end
  %821 = load i64, i64* %syntax.addr, align 8
  %and1590 = and i64 %821, 512
  %tobool1591 = icmp ne i64 %and1590, 0
  br i1 %tobool1591, label %land.lhs.true.1592, label %if.else.1596

land.lhs.true.1592:                               ; preds = %sw.bb.1589
  %822 = load i64, i64* %syntax.addr, align 8
  %and1593 = and i64 %822, 4096
  %tobool1594 = icmp ne i64 %and1593, 0
  br i1 %tobool1594, label %if.then.1595, label %if.else.1596

if.then.1595:                                     ; preds = %land.lhs.true.1592
  br label %handle_interval

if.else.1596:                                     ; preds = %land.lhs.true.1592, %sw.bb.1589
  br label %normal_char

sw.bb.1597:                                       ; preds = %do.end
  %823 = load i8*, i8** %p, align 8
  %824 = load i8*, i8** %pend, align 8
  %cmp1598 = icmp eq i8* %823, %824
  br i1 %cmp1598, label %if.then.1600, label %if.end.1602

if.then.1600:                                     ; preds = %sw.bb.1597
  %stack1601 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %825 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1601, align 8
  %826 = bitcast %struct.compile_stack_elt_t* %825 to i8*
  call void @free(i8* %826) #1
  store i32 5, i32* %retval
  br label %return

if.end.1602:                                      ; preds = %sw.bb.1597
  br label %do.body.1603

do.body.1603:                                     ; preds = %if.end.1602
  %827 = load i8*, i8** %p, align 8
  %828 = load i8*, i8** %pend, align 8
  %cmp1604 = icmp eq i8* %827, %828
  br i1 %cmp1604, label %if.then.1606, label %if.end.1607

if.then.1606:                                     ; preds = %do.body.1603
  store i32 14, i32* %retval
  br label %return

if.end.1607:                                      ; preds = %do.body.1603
  %829 = load i8*, i8** %p, align 8
  %incdec.ptr1608 = getelementptr inbounds i8, i8* %829, i32 1
  store i8* %incdec.ptr1608, i8** %p, align 8
  %830 = load i8, i8* %829, align 1
  store i8 %830, i8* %c, align 1
  br label %do.end.1609

do.end.1609:                                      ; preds = %if.end.1607
  %831 = load i8, i8* %c, align 1
  %conv1610 = zext i8 %831 to i32
  switch i32 %conv1610, label %sw.default [
    i32 40, label %sw.bb.1611
    i32 41, label %sw.bb.1771
    i32 124, label %sw.bb.2020
    i32 123, label %sw.bb.2200
    i32 119, label %sw.bb.2624
    i32 87, label %sw.bb.2708
    i32 60, label %sw.bb.2792
    i32 62, label %sw.bb.2876
    i32 98, label %sw.bb.2960
    i32 66, label %sw.bb.3044
    i32 96, label %sw.bb.3128
    i32 39, label %sw.bb.3212
    i32 49, label %sw.bb.3296
    i32 50, label %sw.bb.3296
    i32 51, label %sw.bb.3296
    i32 52, label %sw.bb.3296
    i32 53, label %sw.bb.3296
    i32 54, label %sw.bb.3296
    i32 55, label %sw.bb.3296
    i32 56, label %sw.bb.3296
    i32 57, label %sw.bb.3296
    i32 43, label %sw.bb.3395
    i32 63, label %sw.bb.3395
  ]

sw.bb.1611:                                       ; preds = %do.end.1609
  %832 = load i64, i64* %syntax.addr, align 8
  %and1612 = and i64 %832, 8192
  %tobool1613 = icmp ne i64 %and1612, 0
  br i1 %tobool1613, label %if.then.1614, label %if.end.1615

if.then.1614:                                     ; preds = %sw.bb.1611
  br label %normal_backslash

if.end.1615:                                      ; preds = %sw.bb.1611
  br label %handle_open

handle_open:                                      ; preds = %if.end.1615, %if.then.1572
  %833 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %re_nsub1616 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %833, i32 0, i32 6
  %834 = load i64, i64* %re_nsub1616, align 8
  %inc1617 = add i64 %834, 1
  store i64 %inc1617, i64* %re_nsub1616, align 8
  %835 = load i32, i32* %regnum, align 4
  %inc1618 = add i32 %835, 1
  store i32 %inc1618, i32* %regnum, align 4
  %avail1619 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %836 = load i32, i32* %avail1619, align 4
  %size1620 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 1
  %837 = load i32, i32* %size1620, align 4
  %cmp1621 = icmp eq i32 %836, %837
  br i1 %cmp1621, label %if.then.1623, label %if.end.1637

if.then.1623:                                     ; preds = %handle_open
  %stack1624 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %838 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1624, align 8
  %839 = bitcast %struct.compile_stack_elt_t* %838 to i8*
  %size1625 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 1
  %840 = load i32, i32* %size1625, align 4
  %shl1626 = shl i32 %840, 1
  %conv1627 = zext i32 %shl1626 to i64
  %mul = mul i64 %conv1627, 40
  %call1628 = call i8* @realloc(i8* %839, i64 %mul) #1
  %841 = bitcast i8* %call1628 to %struct.compile_stack_elt_t*
  %stack1629 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  store %struct.compile_stack_elt_t* %841, %struct.compile_stack_elt_t** %stack1629, align 8
  %stack1630 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %842 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1630, align 8
  %cmp1631 = icmp eq %struct.compile_stack_elt_t* %842, null
  br i1 %cmp1631, label %if.then.1633, label %if.end.1634

if.then.1633:                                     ; preds = %if.then.1623
  store i32 12, i32* %retval
  br label %return

if.end.1634:                                      ; preds = %if.then.1623
  %size1635 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 1
  %843 = load i32, i32* %size1635, align 4
  %shl1636 = shl i32 %843, 1
  store i32 %shl1636, i32* %size1635, align 4
  br label %if.end.1637

if.end.1637:                                      ; preds = %if.end.1634, %handle_open
  %844 = load i8*, i8** %begalt, align 8
  %845 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1638 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %845, i32 0, i32 0
  %846 = load i8*, i8** %buffer1638, align 8
  %sub.ptr.lhs.cast1639 = ptrtoint i8* %844 to i64
  %sub.ptr.rhs.cast1640 = ptrtoint i8* %846 to i64
  %sub.ptr.sub1641 = sub i64 %sub.ptr.lhs.cast1639, %sub.ptr.rhs.cast1640
  %avail1642 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %847 = load i32, i32* %avail1642, align 4
  %idxprom1643 = zext i32 %847 to i64
  %stack1644 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %848 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1644, align 8
  %arrayidx1645 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %848, i64 %idxprom1643
  %begalt_offset = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %arrayidx1645, i32 0, i32 0
  store i64 %sub.ptr.sub1641, i64* %begalt_offset, align 8
  %849 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool1646 = icmp ne i8* %849, null
  br i1 %tobool1646, label %cond.true.1647, label %cond.false.1653

cond.true.1647:                                   ; preds = %if.end.1637
  %850 = load i8*, i8** %fixup_alt_jump, align 8
  %851 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1648 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %851, i32 0, i32 0
  %852 = load i8*, i8** %buffer1648, align 8
  %sub.ptr.lhs.cast1649 = ptrtoint i8* %850 to i64
  %sub.ptr.rhs.cast1650 = ptrtoint i8* %852 to i64
  %sub.ptr.sub1651 = sub i64 %sub.ptr.lhs.cast1649, %sub.ptr.rhs.cast1650
  %add1652 = add nsw i64 %sub.ptr.sub1651, 1
  br label %cond.end.1654

cond.false.1653:                                  ; preds = %if.end.1637
  br label %cond.end.1654

cond.end.1654:                                    ; preds = %cond.false.1653, %cond.true.1647
  %cond1655 = phi i64 [ %add1652, %cond.true.1647 ], [ 0, %cond.false.1653 ]
  %avail1656 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %853 = load i32, i32* %avail1656, align 4
  %idxprom1657 = zext i32 %853 to i64
  %stack1658 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %854 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1658, align 8
  %arrayidx1659 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %854, i64 %idxprom1657
  %fixup_alt_jump1660 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %arrayidx1659, i32 0, i32 1
  store i64 %cond1655, i64* %fixup_alt_jump1660, align 8
  %855 = load i8*, i8** %b, align 8
  %856 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1661 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %856, i32 0, i32 0
  %857 = load i8*, i8** %buffer1661, align 8
  %sub.ptr.lhs.cast1662 = ptrtoint i8* %855 to i64
  %sub.ptr.rhs.cast1663 = ptrtoint i8* %857 to i64
  %sub.ptr.sub1664 = sub i64 %sub.ptr.lhs.cast1662, %sub.ptr.rhs.cast1663
  %avail1665 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %858 = load i32, i32* %avail1665, align 4
  %idxprom1666 = zext i32 %858 to i64
  %stack1667 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %859 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1667, align 8
  %arrayidx1668 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %859, i64 %idxprom1666
  %laststart_offset = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %arrayidx1668, i32 0, i32 3
  store i64 %sub.ptr.sub1664, i64* %laststart_offset, align 8
  %860 = load i32, i32* %regnum, align 4
  %avail1669 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %861 = load i32, i32* %avail1669, align 4
  %idxprom1670 = zext i32 %861 to i64
  %stack1671 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %862 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1671, align 8
  %arrayidx1672 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %862, i64 %idxprom1670
  %regnum1673 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %arrayidx1672, i32 0, i32 4
  store i32 %860, i32* %regnum1673, align 4
  %863 = load i32, i32* %regnum, align 4
  %cmp1674 = icmp ule i32 %863, 255
  br i1 %cmp1674, label %if.then.1676, label %if.end.1768

if.then.1676:                                     ; preds = %cond.end.1654
  %864 = load i8*, i8** %b, align 8
  %865 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1677 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %865, i32 0, i32 0
  %866 = load i8*, i8** %buffer1677, align 8
  %sub.ptr.lhs.cast1678 = ptrtoint i8* %864 to i64
  %sub.ptr.rhs.cast1679 = ptrtoint i8* %866 to i64
  %sub.ptr.sub1680 = sub i64 %sub.ptr.lhs.cast1678, %sub.ptr.rhs.cast1679
  %add1681 = add nsw i64 %sub.ptr.sub1680, 2
  %avail1682 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %867 = load i32, i32* %avail1682, align 4
  %idxprom1683 = zext i32 %867 to i64
  %stack1684 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %868 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1684, align 8
  %arrayidx1685 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %868, i64 %idxprom1683
  %inner_group_offset = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %arrayidx1685, i32 0, i32 2
  store i64 %add1681, i64* %inner_group_offset, align 8
  br label %do.body.1686

do.body.1686:                                     ; preds = %if.then.1676
  br label %while.cond.1687

while.cond.1687:                                  ; preds = %do.end.1761, %do.body.1686
  %869 = load i8*, i8** %b, align 8
  %870 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1688 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %870, i32 0, i32 0
  %871 = load i8*, i8** %buffer1688, align 8
  %sub.ptr.lhs.cast1689 = ptrtoint i8* %869 to i64
  %sub.ptr.rhs.cast1690 = ptrtoint i8* %871 to i64
  %sub.ptr.sub1691 = sub i64 %sub.ptr.lhs.cast1689, %sub.ptr.rhs.cast1690
  %add1692 = add nsw i64 %sub.ptr.sub1691, 3
  %872 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1693 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %872, i32 0, i32 1
  %873 = load i64, i64* %allocated1693, align 8
  %cmp1694 = icmp ugt i64 %add1692, %873
  br i1 %cmp1694, label %while.body.1696, label %while.end.1762

while.body.1696:                                  ; preds = %while.cond.1687
  br label %do.body.1697

do.body.1697:                                     ; preds = %while.body.1696
  %874 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1699 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %874, i32 0, i32 0
  %875 = load i8*, i8** %buffer1699, align 8
  store i8* %875, i8** %old_buffer1698, align 8
  %876 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1700 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %876, i32 0, i32 1
  %877 = load i64, i64* %allocated1700, align 8
  %cmp1701 = icmp eq i64 %877, 65536
  br i1 %cmp1701, label %if.then.1703, label %if.end.1704

if.then.1703:                                     ; preds = %do.body.1697
  store i32 15, i32* %retval
  br label %return

if.end.1704:                                      ; preds = %do.body.1697
  %878 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1705 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %878, i32 0, i32 1
  %879 = load i64, i64* %allocated1705, align 8
  %shl1706 = shl i64 %879, 1
  store i64 %shl1706, i64* %allocated1705, align 8
  %880 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1707 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %880, i32 0, i32 1
  %881 = load i64, i64* %allocated1707, align 8
  %cmp1708 = icmp ugt i64 %881, 65536
  br i1 %cmp1708, label %if.then.1710, label %if.end.1712

if.then.1710:                                     ; preds = %if.end.1704
  %882 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1711 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %882, i32 0, i32 1
  store i64 65536, i64* %allocated1711, align 8
  br label %if.end.1712

if.end.1712:                                      ; preds = %if.then.1710, %if.end.1704
  %883 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1713 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %883, i32 0, i32 0
  %884 = load i8*, i8** %buffer1713, align 8
  %885 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1714 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %885, i32 0, i32 1
  %886 = load i64, i64* %allocated1714, align 8
  %call1715 = call i8* @realloc(i8* %884, i64 %886) #1
  %887 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1716 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %887, i32 0, i32 0
  store i8* %call1715, i8** %buffer1716, align 8
  %888 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1717 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %888, i32 0, i32 0
  %889 = load i8*, i8** %buffer1717, align 8
  %cmp1718 = icmp eq i8* %889, null
  br i1 %cmp1718, label %if.then.1720, label %if.end.1721

if.then.1720:                                     ; preds = %if.end.1712
  store i32 12, i32* %retval
  br label %return

if.end.1721:                                      ; preds = %if.end.1712
  %890 = load i8*, i8** %old_buffer1698, align 8
  %891 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1722 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %891, i32 0, i32 0
  %892 = load i8*, i8** %buffer1722, align 8
  %cmp1723 = icmp ne i8* %890, %892
  br i1 %cmp1723, label %if.then.1725, label %if.end.1760

if.then.1725:                                     ; preds = %if.end.1721
  %893 = load i8*, i8** %b, align 8
  %894 = load i8*, i8** %old_buffer1698, align 8
  %sub.ptr.lhs.cast1726 = ptrtoint i8* %893 to i64
  %sub.ptr.rhs.cast1727 = ptrtoint i8* %894 to i64
  %sub.ptr.sub1728 = sub i64 %sub.ptr.lhs.cast1726, %sub.ptr.rhs.cast1727
  %895 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1729 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %895, i32 0, i32 0
  %896 = load i8*, i8** %buffer1729, align 8
  %add.ptr1730 = getelementptr inbounds i8, i8* %896, i64 %sub.ptr.sub1728
  store i8* %add.ptr1730, i8** %b, align 8
  %897 = load i8*, i8** %begalt, align 8
  %898 = load i8*, i8** %old_buffer1698, align 8
  %sub.ptr.lhs.cast1731 = ptrtoint i8* %897 to i64
  %sub.ptr.rhs.cast1732 = ptrtoint i8* %898 to i64
  %sub.ptr.sub1733 = sub i64 %sub.ptr.lhs.cast1731, %sub.ptr.rhs.cast1732
  %899 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1734 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %899, i32 0, i32 0
  %900 = load i8*, i8** %buffer1734, align 8
  %add.ptr1735 = getelementptr inbounds i8, i8* %900, i64 %sub.ptr.sub1733
  store i8* %add.ptr1735, i8** %begalt, align 8
  %901 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool1736 = icmp ne i8* %901, null
  br i1 %tobool1736, label %if.then.1737, label %if.end.1743

if.then.1737:                                     ; preds = %if.then.1725
  %902 = load i8*, i8** %fixup_alt_jump, align 8
  %903 = load i8*, i8** %old_buffer1698, align 8
  %sub.ptr.lhs.cast1738 = ptrtoint i8* %902 to i64
  %sub.ptr.rhs.cast1739 = ptrtoint i8* %903 to i64
  %sub.ptr.sub1740 = sub i64 %sub.ptr.lhs.cast1738, %sub.ptr.rhs.cast1739
  %904 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1741 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %904, i32 0, i32 0
  %905 = load i8*, i8** %buffer1741, align 8
  %add.ptr1742 = getelementptr inbounds i8, i8* %905, i64 %sub.ptr.sub1740
  store i8* %add.ptr1742, i8** %fixup_alt_jump, align 8
  br label %if.end.1743

if.end.1743:                                      ; preds = %if.then.1737, %if.then.1725
  %906 = load i8*, i8** %laststart, align 8
  %tobool1744 = icmp ne i8* %906, null
  br i1 %tobool1744, label %if.then.1745, label %if.end.1751

if.then.1745:                                     ; preds = %if.end.1743
  %907 = load i8*, i8** %laststart, align 8
  %908 = load i8*, i8** %old_buffer1698, align 8
  %sub.ptr.lhs.cast1746 = ptrtoint i8* %907 to i64
  %sub.ptr.rhs.cast1747 = ptrtoint i8* %908 to i64
  %sub.ptr.sub1748 = sub i64 %sub.ptr.lhs.cast1746, %sub.ptr.rhs.cast1747
  %909 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1749 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %909, i32 0, i32 0
  %910 = load i8*, i8** %buffer1749, align 8
  %add.ptr1750 = getelementptr inbounds i8, i8* %910, i64 %sub.ptr.sub1748
  store i8* %add.ptr1750, i8** %laststart, align 8
  br label %if.end.1751

if.end.1751:                                      ; preds = %if.then.1745, %if.end.1743
  %911 = load i8*, i8** %pending_exact, align 8
  %tobool1752 = icmp ne i8* %911, null
  br i1 %tobool1752, label %if.then.1753, label %if.end.1759

if.then.1753:                                     ; preds = %if.end.1751
  %912 = load i8*, i8** %pending_exact, align 8
  %913 = load i8*, i8** %old_buffer1698, align 8
  %sub.ptr.lhs.cast1754 = ptrtoint i8* %912 to i64
  %sub.ptr.rhs.cast1755 = ptrtoint i8* %913 to i64
  %sub.ptr.sub1756 = sub i64 %sub.ptr.lhs.cast1754, %sub.ptr.rhs.cast1755
  %914 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1757 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %914, i32 0, i32 0
  %915 = load i8*, i8** %buffer1757, align 8
  %add.ptr1758 = getelementptr inbounds i8, i8* %915, i64 %sub.ptr.sub1756
  store i8* %add.ptr1758, i8** %pending_exact, align 8
  br label %if.end.1759

if.end.1759:                                      ; preds = %if.then.1753, %if.end.1751
  br label %if.end.1760

if.end.1760:                                      ; preds = %if.end.1759, %if.end.1721
  br label %do.end.1761

do.end.1761:                                      ; preds = %if.end.1760
  br label %while.cond.1687

while.end.1762:                                   ; preds = %while.cond.1687
  %916 = load i8*, i8** %b, align 8
  %incdec.ptr1763 = getelementptr inbounds i8, i8* %916, i32 1
  store i8* %incdec.ptr1763, i8** %b, align 8
  store i8 6, i8* %916, align 1
  %917 = load i32, i32* %regnum, align 4
  %conv1764 = trunc i32 %917 to i8
  %918 = load i8*, i8** %b, align 8
  %incdec.ptr1765 = getelementptr inbounds i8, i8* %918, i32 1
  store i8* %incdec.ptr1765, i8** %b, align 8
  store i8 %conv1764, i8* %918, align 1
  %919 = load i8*, i8** %b, align 8
  %incdec.ptr1766 = getelementptr inbounds i8, i8* %919, i32 1
  store i8* %incdec.ptr1766, i8** %b, align 8
  store i8 0, i8* %919, align 1
  br label %do.end.1767

do.end.1767:                                      ; preds = %while.end.1762
  br label %if.end.1768

if.end.1768:                                      ; preds = %do.end.1767, %cond.end.1654
  %avail1769 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %920 = load i32, i32* %avail1769, align 4
  %inc1770 = add i32 %920, 1
  store i32 %inc1770, i32* %avail1769, align 4
  store i8* null, i8** %fixup_alt_jump, align 8
  store i8* null, i8** %laststart, align 8
  %921 = load i8*, i8** %b, align 8
  store i8* %921, i8** %begalt, align 8
  store i8* null, i8** %pending_exact, align 8
  br label %sw.epilog

sw.bb.1771:                                       ; preds = %do.end.1609
  %922 = load i64, i64* %syntax.addr, align 8
  %and1772 = and i64 %922, 8192
  %tobool1773 = icmp ne i64 %and1772, 0
  br i1 %tobool1773, label %if.then.1774, label %if.end.1775

if.then.1774:                                     ; preds = %sw.bb.1771
  br label %normal_backslash

if.end.1775:                                      ; preds = %sw.bb.1771
  %avail1776 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %923 = load i32, i32* %avail1776, align 4
  %cmp1777 = icmp eq i32 %923, 0
  br i1 %cmp1777, label %if.then.1779, label %if.end.1785

if.then.1779:                                     ; preds = %if.end.1775
  %924 = load i64, i64* %syntax.addr, align 8
  %and1780 = and i64 %924, 131072
  %tobool1781 = icmp ne i64 %and1780, 0
  br i1 %tobool1781, label %if.then.1782, label %if.else.1783

if.then.1782:                                     ; preds = %if.then.1779
  br label %normal_backslash

if.else.1783:                                     ; preds = %if.then.1779
  %stack1784 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %925 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1784, align 8
  %926 = bitcast %struct.compile_stack_elt_t* %925 to i8*
  call void @free(i8* %926) #1
  store i32 16, i32* %retval
  br label %return

if.end.1785:                                      ; preds = %if.end.1775
  br label %handle_close

handle_close:                                     ; preds = %if.end.1785, %if.then.1577
  %927 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool1786 = icmp ne i8* %927, null
  br i1 %tobool1786, label %if.then.1787, label %if.end.1873

if.then.1787:                                     ; preds = %handle_close
  br label %do.body.1788

do.body.1788:                                     ; preds = %if.then.1787
  br label %while.cond.1789

while.cond.1789:                                  ; preds = %do.end.1863, %do.body.1788
  %928 = load i8*, i8** %b, align 8
  %929 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1790 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %929, i32 0, i32 0
  %930 = load i8*, i8** %buffer1790, align 8
  %sub.ptr.lhs.cast1791 = ptrtoint i8* %928 to i64
  %sub.ptr.rhs.cast1792 = ptrtoint i8* %930 to i64
  %sub.ptr.sub1793 = sub i64 %sub.ptr.lhs.cast1791, %sub.ptr.rhs.cast1792
  %add1794 = add nsw i64 %sub.ptr.sub1793, 1
  %931 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1795 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %931, i32 0, i32 1
  %932 = load i64, i64* %allocated1795, align 8
  %cmp1796 = icmp ugt i64 %add1794, %932
  br i1 %cmp1796, label %while.body.1798, label %while.end.1864

while.body.1798:                                  ; preds = %while.cond.1789
  br label %do.body.1799

do.body.1799:                                     ; preds = %while.body.1798
  %933 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1801 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %933, i32 0, i32 0
  %934 = load i8*, i8** %buffer1801, align 8
  store i8* %934, i8** %old_buffer1800, align 8
  %935 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1802 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %935, i32 0, i32 1
  %936 = load i64, i64* %allocated1802, align 8
  %cmp1803 = icmp eq i64 %936, 65536
  br i1 %cmp1803, label %if.then.1805, label %if.end.1806

if.then.1805:                                     ; preds = %do.body.1799
  store i32 15, i32* %retval
  br label %return

if.end.1806:                                      ; preds = %do.body.1799
  %937 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1807 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %937, i32 0, i32 1
  %938 = load i64, i64* %allocated1807, align 8
  %shl1808 = shl i64 %938, 1
  store i64 %shl1808, i64* %allocated1807, align 8
  %939 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1809 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %939, i32 0, i32 1
  %940 = load i64, i64* %allocated1809, align 8
  %cmp1810 = icmp ugt i64 %940, 65536
  br i1 %cmp1810, label %if.then.1812, label %if.end.1814

if.then.1812:                                     ; preds = %if.end.1806
  %941 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1813 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %941, i32 0, i32 1
  store i64 65536, i64* %allocated1813, align 8
  br label %if.end.1814

if.end.1814:                                      ; preds = %if.then.1812, %if.end.1806
  %942 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1815 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %942, i32 0, i32 0
  %943 = load i8*, i8** %buffer1815, align 8
  %944 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1816 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %944, i32 0, i32 1
  %945 = load i64, i64* %allocated1816, align 8
  %call1817 = call i8* @realloc(i8* %943, i64 %945) #1
  %946 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1818 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %946, i32 0, i32 0
  store i8* %call1817, i8** %buffer1818, align 8
  %947 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1819 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %947, i32 0, i32 0
  %948 = load i8*, i8** %buffer1819, align 8
  %cmp1820 = icmp eq i8* %948, null
  br i1 %cmp1820, label %if.then.1822, label %if.end.1823

if.then.1822:                                     ; preds = %if.end.1814
  store i32 12, i32* %retval
  br label %return

if.end.1823:                                      ; preds = %if.end.1814
  %949 = load i8*, i8** %old_buffer1800, align 8
  %950 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1824 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %950, i32 0, i32 0
  %951 = load i8*, i8** %buffer1824, align 8
  %cmp1825 = icmp ne i8* %949, %951
  br i1 %cmp1825, label %if.then.1827, label %if.end.1862

if.then.1827:                                     ; preds = %if.end.1823
  %952 = load i8*, i8** %b, align 8
  %953 = load i8*, i8** %old_buffer1800, align 8
  %sub.ptr.lhs.cast1828 = ptrtoint i8* %952 to i64
  %sub.ptr.rhs.cast1829 = ptrtoint i8* %953 to i64
  %sub.ptr.sub1830 = sub i64 %sub.ptr.lhs.cast1828, %sub.ptr.rhs.cast1829
  %954 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1831 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %954, i32 0, i32 0
  %955 = load i8*, i8** %buffer1831, align 8
  %add.ptr1832 = getelementptr inbounds i8, i8* %955, i64 %sub.ptr.sub1830
  store i8* %add.ptr1832, i8** %b, align 8
  %956 = load i8*, i8** %begalt, align 8
  %957 = load i8*, i8** %old_buffer1800, align 8
  %sub.ptr.lhs.cast1833 = ptrtoint i8* %956 to i64
  %sub.ptr.rhs.cast1834 = ptrtoint i8* %957 to i64
  %sub.ptr.sub1835 = sub i64 %sub.ptr.lhs.cast1833, %sub.ptr.rhs.cast1834
  %958 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1836 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %958, i32 0, i32 0
  %959 = load i8*, i8** %buffer1836, align 8
  %add.ptr1837 = getelementptr inbounds i8, i8* %959, i64 %sub.ptr.sub1835
  store i8* %add.ptr1837, i8** %begalt, align 8
  %960 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool1838 = icmp ne i8* %960, null
  br i1 %tobool1838, label %if.then.1839, label %if.end.1845

if.then.1839:                                     ; preds = %if.then.1827
  %961 = load i8*, i8** %fixup_alt_jump, align 8
  %962 = load i8*, i8** %old_buffer1800, align 8
  %sub.ptr.lhs.cast1840 = ptrtoint i8* %961 to i64
  %sub.ptr.rhs.cast1841 = ptrtoint i8* %962 to i64
  %sub.ptr.sub1842 = sub i64 %sub.ptr.lhs.cast1840, %sub.ptr.rhs.cast1841
  %963 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1843 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %963, i32 0, i32 0
  %964 = load i8*, i8** %buffer1843, align 8
  %add.ptr1844 = getelementptr inbounds i8, i8* %964, i64 %sub.ptr.sub1842
  store i8* %add.ptr1844, i8** %fixup_alt_jump, align 8
  br label %if.end.1845

if.end.1845:                                      ; preds = %if.then.1839, %if.then.1827
  %965 = load i8*, i8** %laststart, align 8
  %tobool1846 = icmp ne i8* %965, null
  br i1 %tobool1846, label %if.then.1847, label %if.end.1853

if.then.1847:                                     ; preds = %if.end.1845
  %966 = load i8*, i8** %laststart, align 8
  %967 = load i8*, i8** %old_buffer1800, align 8
  %sub.ptr.lhs.cast1848 = ptrtoint i8* %966 to i64
  %sub.ptr.rhs.cast1849 = ptrtoint i8* %967 to i64
  %sub.ptr.sub1850 = sub i64 %sub.ptr.lhs.cast1848, %sub.ptr.rhs.cast1849
  %968 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1851 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %968, i32 0, i32 0
  %969 = load i8*, i8** %buffer1851, align 8
  %add.ptr1852 = getelementptr inbounds i8, i8* %969, i64 %sub.ptr.sub1850
  store i8* %add.ptr1852, i8** %laststart, align 8
  br label %if.end.1853

if.end.1853:                                      ; preds = %if.then.1847, %if.end.1845
  %970 = load i8*, i8** %pending_exact, align 8
  %tobool1854 = icmp ne i8* %970, null
  br i1 %tobool1854, label %if.then.1855, label %if.end.1861

if.then.1855:                                     ; preds = %if.end.1853
  %971 = load i8*, i8** %pending_exact, align 8
  %972 = load i8*, i8** %old_buffer1800, align 8
  %sub.ptr.lhs.cast1856 = ptrtoint i8* %971 to i64
  %sub.ptr.rhs.cast1857 = ptrtoint i8* %972 to i64
  %sub.ptr.sub1858 = sub i64 %sub.ptr.lhs.cast1856, %sub.ptr.rhs.cast1857
  %973 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1859 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %973, i32 0, i32 0
  %974 = load i8*, i8** %buffer1859, align 8
  %add.ptr1860 = getelementptr inbounds i8, i8* %974, i64 %sub.ptr.sub1858
  store i8* %add.ptr1860, i8** %pending_exact, align 8
  br label %if.end.1861

if.end.1861:                                      ; preds = %if.then.1855, %if.end.1853
  br label %if.end.1862

if.end.1862:                                      ; preds = %if.end.1861, %if.end.1823
  br label %do.end.1863

do.end.1863:                                      ; preds = %if.end.1862
  br label %while.cond.1789

while.end.1864:                                   ; preds = %while.cond.1789
  %975 = load i8*, i8** %b, align 8
  %incdec.ptr1865 = getelementptr inbounds i8, i8* %975, i32 1
  store i8* %incdec.ptr1865, i8** %b, align 8
  store i8 20, i8* %975, align 1
  br label %do.end.1866

do.end.1866:                                      ; preds = %while.end.1864
  %976 = load i8*, i8** %fixup_alt_jump, align 8
  %977 = load i8*, i8** %b, align 8
  %add.ptr1867 = getelementptr inbounds i8, i8* %977, i64 -1
  %978 = load i8*, i8** %fixup_alt_jump, align 8
  %sub.ptr.lhs.cast1868 = ptrtoint i8* %add.ptr1867 to i64
  %sub.ptr.rhs.cast1869 = ptrtoint i8* %978 to i64
  %sub.ptr.sub1870 = sub i64 %sub.ptr.lhs.cast1868, %sub.ptr.rhs.cast1869
  %sub1871 = sub nsw i64 %sub.ptr.sub1870, 3
  %conv1872 = trunc i64 %sub1871 to i32
  call void @store_op1(i32 14, i8* %976, i32 %conv1872)
  br label %if.end.1873

if.end.1873:                                      ; preds = %do.end.1866, %handle_close
  %avail1874 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %979 = load i32, i32* %avail1874, align 4
  %cmp1875 = icmp eq i32 %979, 0
  br i1 %cmp1875, label %if.then.1877, label %if.end.1883

if.then.1877:                                     ; preds = %if.end.1873
  %980 = load i64, i64* %syntax.addr, align 8
  %and1878 = and i64 %980, 131072
  %tobool1879 = icmp ne i64 %and1878, 0
  br i1 %tobool1879, label %if.then.1880, label %if.else.1881

if.then.1880:                                     ; preds = %if.then.1877
  br label %normal_char

if.else.1881:                                     ; preds = %if.then.1877
  %stack1882 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %981 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1882, align 8
  %982 = bitcast %struct.compile_stack_elt_t* %981 to i8*
  call void @free(i8* %982) #1
  store i32 16, i32* %retval
  br label %return

if.end.1883:                                      ; preds = %if.end.1873
  %avail1884 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %983 = load i32, i32* %avail1884, align 4
  %dec1885 = add i32 %983, -1
  store i32 %dec1885, i32* %avail1884, align 4
  %984 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1886 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %984, i32 0, i32 0
  %985 = load i8*, i8** %buffer1886, align 8
  %avail1887 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %986 = load i32, i32* %avail1887, align 4
  %idxprom1888 = zext i32 %986 to i64
  %stack1889 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %987 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1889, align 8
  %arrayidx1890 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %987, i64 %idxprom1888
  %begalt_offset1891 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %arrayidx1890, i32 0, i32 0
  %988 = load i64, i64* %begalt_offset1891, align 8
  %add.ptr1892 = getelementptr inbounds i8, i8* %985, i64 %988
  store i8* %add.ptr1892, i8** %begalt, align 8
  %avail1893 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %989 = load i32, i32* %avail1893, align 4
  %idxprom1894 = zext i32 %989 to i64
  %stack1895 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %990 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1895, align 8
  %arrayidx1896 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %990, i64 %idxprom1894
  %fixup_alt_jump1897 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %arrayidx1896, i32 0, i32 1
  %991 = load i64, i64* %fixup_alt_jump1897, align 8
  %tobool1898 = icmp ne i64 %991, 0
  br i1 %tobool1898, label %cond.true.1899, label %cond.false.1908

cond.true.1899:                                   ; preds = %if.end.1883
  %992 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1900 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %992, i32 0, i32 0
  %993 = load i8*, i8** %buffer1900, align 8
  %avail1901 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %994 = load i32, i32* %avail1901, align 4
  %idxprom1902 = zext i32 %994 to i64
  %stack1903 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %995 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1903, align 8
  %arrayidx1904 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %995, i64 %idxprom1902
  %fixup_alt_jump1905 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %arrayidx1904, i32 0, i32 1
  %996 = load i64, i64* %fixup_alt_jump1905, align 8
  %add.ptr1906 = getelementptr inbounds i8, i8* %993, i64 %996
  %add.ptr1907 = getelementptr inbounds i8, i8* %add.ptr1906, i64 -1
  br label %cond.end.1909

cond.false.1908:                                  ; preds = %if.end.1883
  br label %cond.end.1909

cond.end.1909:                                    ; preds = %cond.false.1908, %cond.true.1899
  %cond1910 = phi i8* [ %add.ptr1907, %cond.true.1899 ], [ null, %cond.false.1908 ]
  store i8* %cond1910, i8** %fixup_alt_jump, align 8
  %997 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1911 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %997, i32 0, i32 0
  %998 = load i8*, i8** %buffer1911, align 8
  %avail1912 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %999 = load i32, i32* %avail1912, align 4
  %idxprom1913 = zext i32 %999 to i64
  %stack1914 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1000 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1914, align 8
  %arrayidx1915 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %1000, i64 %idxprom1913
  %laststart_offset1916 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %arrayidx1915, i32 0, i32 3
  %1001 = load i64, i64* %laststart_offset1916, align 8
  %add.ptr1917 = getelementptr inbounds i8, i8* %998, i64 %1001
  store i8* %add.ptr1917, i8** %laststart, align 8
  %avail1918 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %1002 = load i32, i32* %avail1918, align 4
  %idxprom1919 = zext i32 %1002 to i64
  %stack1920 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1003 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1920, align 8
  %arrayidx1921 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %1003, i64 %idxprom1919
  %regnum1922 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %arrayidx1921, i32 0, i32 4
  %1004 = load i32, i32* %regnum1922, align 4
  store i32 %1004, i32* %this_group_regnum, align 4
  store i8* null, i8** %pending_exact, align 8
  %1005 = load i32, i32* %this_group_regnum, align 4
  %cmp1923 = icmp ule i32 %1005, 255
  br i1 %cmp1923, label %if.then.1925, label %if.end.2019

if.then.1925:                                     ; preds = %cond.end.1909
  %1006 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1926 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1006, i32 0, i32 0
  %1007 = load i8*, i8** %buffer1926, align 8
  %avail1927 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %1008 = load i32, i32* %avail1927, align 4
  %idxprom1928 = zext i32 %1008 to i64
  %stack1929 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1009 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack1929, align 8
  %arrayidx1930 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %1009, i64 %idxprom1928
  %inner_group_offset1931 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %arrayidx1930, i32 0, i32 2
  %1010 = load i64, i64* %inner_group_offset1931, align 8
  %add.ptr1932 = getelementptr inbounds i8, i8* %1007, i64 %1010
  store i8* %add.ptr1932, i8** %inner_group_loc, align 8
  %1011 = load i32, i32* %regnum, align 4
  %1012 = load i32, i32* %this_group_regnum, align 4
  %sub1933 = sub i32 %1011, %1012
  %conv1934 = trunc i32 %sub1933 to i8
  %1013 = load i8*, i8** %inner_group_loc, align 8
  store i8 %conv1934, i8* %1013, align 1
  br label %do.body.1935

do.body.1935:                                     ; preds = %if.then.1925
  br label %while.cond.1936

while.cond.1936:                                  ; preds = %do.end.2010, %do.body.1935
  %1014 = load i8*, i8** %b, align 8
  %1015 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1937 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1015, i32 0, i32 0
  %1016 = load i8*, i8** %buffer1937, align 8
  %sub.ptr.lhs.cast1938 = ptrtoint i8* %1014 to i64
  %sub.ptr.rhs.cast1939 = ptrtoint i8* %1016 to i64
  %sub.ptr.sub1940 = sub i64 %sub.ptr.lhs.cast1938, %sub.ptr.rhs.cast1939
  %add1941 = add nsw i64 %sub.ptr.sub1940, 3
  %1017 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1942 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1017, i32 0, i32 1
  %1018 = load i64, i64* %allocated1942, align 8
  %cmp1943 = icmp ugt i64 %add1941, %1018
  br i1 %cmp1943, label %while.body.1945, label %while.end.2011

while.body.1945:                                  ; preds = %while.cond.1936
  br label %do.body.1946

do.body.1946:                                     ; preds = %while.body.1945
  %1019 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1948 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1019, i32 0, i32 0
  %1020 = load i8*, i8** %buffer1948, align 8
  store i8* %1020, i8** %old_buffer1947, align 8
  %1021 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1949 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1021, i32 0, i32 1
  %1022 = load i64, i64* %allocated1949, align 8
  %cmp1950 = icmp eq i64 %1022, 65536
  br i1 %cmp1950, label %if.then.1952, label %if.end.1953

if.then.1952:                                     ; preds = %do.body.1946
  store i32 15, i32* %retval
  br label %return

if.end.1953:                                      ; preds = %do.body.1946
  %1023 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1954 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1023, i32 0, i32 1
  %1024 = load i64, i64* %allocated1954, align 8
  %shl1955 = shl i64 %1024, 1
  store i64 %shl1955, i64* %allocated1954, align 8
  %1025 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1956 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1025, i32 0, i32 1
  %1026 = load i64, i64* %allocated1956, align 8
  %cmp1957 = icmp ugt i64 %1026, 65536
  br i1 %cmp1957, label %if.then.1959, label %if.end.1961

if.then.1959:                                     ; preds = %if.end.1953
  %1027 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1960 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1027, i32 0, i32 1
  store i64 65536, i64* %allocated1960, align 8
  br label %if.end.1961

if.end.1961:                                      ; preds = %if.then.1959, %if.end.1953
  %1028 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1962 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1028, i32 0, i32 0
  %1029 = load i8*, i8** %buffer1962, align 8
  %1030 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated1963 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1030, i32 0, i32 1
  %1031 = load i64, i64* %allocated1963, align 8
  %call1964 = call i8* @realloc(i8* %1029, i64 %1031) #1
  %1032 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1965 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1032, i32 0, i32 0
  store i8* %call1964, i8** %buffer1965, align 8
  %1033 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1966 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1033, i32 0, i32 0
  %1034 = load i8*, i8** %buffer1966, align 8
  %cmp1967 = icmp eq i8* %1034, null
  br i1 %cmp1967, label %if.then.1969, label %if.end.1970

if.then.1969:                                     ; preds = %if.end.1961
  store i32 12, i32* %retval
  br label %return

if.end.1970:                                      ; preds = %if.end.1961
  %1035 = load i8*, i8** %old_buffer1947, align 8
  %1036 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1971 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1036, i32 0, i32 0
  %1037 = load i8*, i8** %buffer1971, align 8
  %cmp1972 = icmp ne i8* %1035, %1037
  br i1 %cmp1972, label %if.then.1974, label %if.end.2009

if.then.1974:                                     ; preds = %if.end.1970
  %1038 = load i8*, i8** %b, align 8
  %1039 = load i8*, i8** %old_buffer1947, align 8
  %sub.ptr.lhs.cast1975 = ptrtoint i8* %1038 to i64
  %sub.ptr.rhs.cast1976 = ptrtoint i8* %1039 to i64
  %sub.ptr.sub1977 = sub i64 %sub.ptr.lhs.cast1975, %sub.ptr.rhs.cast1976
  %1040 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1978 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1040, i32 0, i32 0
  %1041 = load i8*, i8** %buffer1978, align 8
  %add.ptr1979 = getelementptr inbounds i8, i8* %1041, i64 %sub.ptr.sub1977
  store i8* %add.ptr1979, i8** %b, align 8
  %1042 = load i8*, i8** %begalt, align 8
  %1043 = load i8*, i8** %old_buffer1947, align 8
  %sub.ptr.lhs.cast1980 = ptrtoint i8* %1042 to i64
  %sub.ptr.rhs.cast1981 = ptrtoint i8* %1043 to i64
  %sub.ptr.sub1982 = sub i64 %sub.ptr.lhs.cast1980, %sub.ptr.rhs.cast1981
  %1044 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1983 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1044, i32 0, i32 0
  %1045 = load i8*, i8** %buffer1983, align 8
  %add.ptr1984 = getelementptr inbounds i8, i8* %1045, i64 %sub.ptr.sub1982
  store i8* %add.ptr1984, i8** %begalt, align 8
  %1046 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool1985 = icmp ne i8* %1046, null
  br i1 %tobool1985, label %if.then.1986, label %if.end.1992

if.then.1986:                                     ; preds = %if.then.1974
  %1047 = load i8*, i8** %fixup_alt_jump, align 8
  %1048 = load i8*, i8** %old_buffer1947, align 8
  %sub.ptr.lhs.cast1987 = ptrtoint i8* %1047 to i64
  %sub.ptr.rhs.cast1988 = ptrtoint i8* %1048 to i64
  %sub.ptr.sub1989 = sub i64 %sub.ptr.lhs.cast1987, %sub.ptr.rhs.cast1988
  %1049 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1990 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1049, i32 0, i32 0
  %1050 = load i8*, i8** %buffer1990, align 8
  %add.ptr1991 = getelementptr inbounds i8, i8* %1050, i64 %sub.ptr.sub1989
  store i8* %add.ptr1991, i8** %fixup_alt_jump, align 8
  br label %if.end.1992

if.end.1992:                                      ; preds = %if.then.1986, %if.then.1974
  %1051 = load i8*, i8** %laststart, align 8
  %tobool1993 = icmp ne i8* %1051, null
  br i1 %tobool1993, label %if.then.1994, label %if.end.2000

if.then.1994:                                     ; preds = %if.end.1992
  %1052 = load i8*, i8** %laststart, align 8
  %1053 = load i8*, i8** %old_buffer1947, align 8
  %sub.ptr.lhs.cast1995 = ptrtoint i8* %1052 to i64
  %sub.ptr.rhs.cast1996 = ptrtoint i8* %1053 to i64
  %sub.ptr.sub1997 = sub i64 %sub.ptr.lhs.cast1995, %sub.ptr.rhs.cast1996
  %1054 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer1998 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1054, i32 0, i32 0
  %1055 = load i8*, i8** %buffer1998, align 8
  %add.ptr1999 = getelementptr inbounds i8, i8* %1055, i64 %sub.ptr.sub1997
  store i8* %add.ptr1999, i8** %laststart, align 8
  br label %if.end.2000

if.end.2000:                                      ; preds = %if.then.1994, %if.end.1992
  %1056 = load i8*, i8** %pending_exact, align 8
  %tobool2001 = icmp ne i8* %1056, null
  br i1 %tobool2001, label %if.then.2002, label %if.end.2008

if.then.2002:                                     ; preds = %if.end.2000
  %1057 = load i8*, i8** %pending_exact, align 8
  %1058 = load i8*, i8** %old_buffer1947, align 8
  %sub.ptr.lhs.cast2003 = ptrtoint i8* %1057 to i64
  %sub.ptr.rhs.cast2004 = ptrtoint i8* %1058 to i64
  %sub.ptr.sub2005 = sub i64 %sub.ptr.lhs.cast2003, %sub.ptr.rhs.cast2004
  %1059 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2006 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1059, i32 0, i32 0
  %1060 = load i8*, i8** %buffer2006, align 8
  %add.ptr2007 = getelementptr inbounds i8, i8* %1060, i64 %sub.ptr.sub2005
  store i8* %add.ptr2007, i8** %pending_exact, align 8
  br label %if.end.2008

if.end.2008:                                      ; preds = %if.then.2002, %if.end.2000
  br label %if.end.2009

if.end.2009:                                      ; preds = %if.end.2008, %if.end.1970
  br label %do.end.2010

do.end.2010:                                      ; preds = %if.end.2009
  br label %while.cond.1936

while.end.2011:                                   ; preds = %while.cond.1936
  %1061 = load i8*, i8** %b, align 8
  %incdec.ptr2012 = getelementptr inbounds i8, i8* %1061, i32 1
  store i8* %incdec.ptr2012, i8** %b, align 8
  store i8 7, i8* %1061, align 1
  %1062 = load i32, i32* %this_group_regnum, align 4
  %conv2013 = trunc i32 %1062 to i8
  %1063 = load i8*, i8** %b, align 8
  %incdec.ptr2014 = getelementptr inbounds i8, i8* %1063, i32 1
  store i8* %incdec.ptr2014, i8** %b, align 8
  store i8 %conv2013, i8* %1063, align 1
  %1064 = load i32, i32* %regnum, align 4
  %1065 = load i32, i32* %this_group_regnum, align 4
  %sub2015 = sub i32 %1064, %1065
  %conv2016 = trunc i32 %sub2015 to i8
  %1066 = load i8*, i8** %b, align 8
  %incdec.ptr2017 = getelementptr inbounds i8, i8* %1066, i32 1
  store i8* %incdec.ptr2017, i8** %b, align 8
  store i8 %conv2016, i8* %1066, align 1
  br label %do.end.2018

do.end.2018:                                      ; preds = %while.end.2011
  br label %if.end.2019

if.end.2019:                                      ; preds = %do.end.2018, %cond.end.1909
  br label %sw.epilog

sw.bb.2020:                                       ; preds = %do.end.1609
  %1067 = load i64, i64* %syntax.addr, align 8
  %and2021 = and i64 %1067, 1024
  %tobool2022 = icmp ne i64 %and2021, 0
  br i1 %tobool2022, label %if.then.2026, label %lor.lhs.false.2023

lor.lhs.false.2023:                               ; preds = %sw.bb.2020
  %1068 = load i64, i64* %syntax.addr, align 8
  %and2024 = and i64 %1068, 32768
  %tobool2025 = icmp ne i64 %and2024, 0
  br i1 %tobool2025, label %if.then.2026, label %if.end.2027

if.then.2026:                                     ; preds = %lor.lhs.false.2023, %sw.bb.2020
  br label %normal_backslash

if.end.2027:                                      ; preds = %lor.lhs.false.2023
  br label %handle_alt

handle_alt:                                       ; preds = %if.end.2027, %if.then.1587, %if.then.1582
  %1069 = load i64, i64* %syntax.addr, align 8
  %and2028 = and i64 %1069, 1024
  %tobool2029 = icmp ne i64 %and2028, 0
  br i1 %tobool2029, label %if.then.2030, label %if.end.2031

if.then.2030:                                     ; preds = %handle_alt
  br label %normal_char

if.end.2031:                                      ; preds = %handle_alt
  br label %while.cond.2032

while.cond.2032:                                  ; preds = %do.end.2106, %if.end.2031
  %1070 = load i8*, i8** %b, align 8
  %1071 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2033 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1071, i32 0, i32 0
  %1072 = load i8*, i8** %buffer2033, align 8
  %sub.ptr.lhs.cast2034 = ptrtoint i8* %1070 to i64
  %sub.ptr.rhs.cast2035 = ptrtoint i8* %1072 to i64
  %sub.ptr.sub2036 = sub i64 %sub.ptr.lhs.cast2034, %sub.ptr.rhs.cast2035
  %add2037 = add nsw i64 %sub.ptr.sub2036, 3
  %1073 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2038 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1073, i32 0, i32 1
  %1074 = load i64, i64* %allocated2038, align 8
  %cmp2039 = icmp ugt i64 %add2037, %1074
  br i1 %cmp2039, label %while.body.2041, label %while.end.2107

while.body.2041:                                  ; preds = %while.cond.2032
  br label %do.body.2042

do.body.2042:                                     ; preds = %while.body.2041
  %1075 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2044 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1075, i32 0, i32 0
  %1076 = load i8*, i8** %buffer2044, align 8
  store i8* %1076, i8** %old_buffer2043, align 8
  %1077 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2045 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1077, i32 0, i32 1
  %1078 = load i64, i64* %allocated2045, align 8
  %cmp2046 = icmp eq i64 %1078, 65536
  br i1 %cmp2046, label %if.then.2048, label %if.end.2049

if.then.2048:                                     ; preds = %do.body.2042
  store i32 15, i32* %retval
  br label %return

if.end.2049:                                      ; preds = %do.body.2042
  %1079 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2050 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1079, i32 0, i32 1
  %1080 = load i64, i64* %allocated2050, align 8
  %shl2051 = shl i64 %1080, 1
  store i64 %shl2051, i64* %allocated2050, align 8
  %1081 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2052 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1081, i32 0, i32 1
  %1082 = load i64, i64* %allocated2052, align 8
  %cmp2053 = icmp ugt i64 %1082, 65536
  br i1 %cmp2053, label %if.then.2055, label %if.end.2057

if.then.2055:                                     ; preds = %if.end.2049
  %1083 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2056 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1083, i32 0, i32 1
  store i64 65536, i64* %allocated2056, align 8
  br label %if.end.2057

if.end.2057:                                      ; preds = %if.then.2055, %if.end.2049
  %1084 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2058 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1084, i32 0, i32 0
  %1085 = load i8*, i8** %buffer2058, align 8
  %1086 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2059 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1086, i32 0, i32 1
  %1087 = load i64, i64* %allocated2059, align 8
  %call2060 = call i8* @realloc(i8* %1085, i64 %1087) #1
  %1088 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2061 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1088, i32 0, i32 0
  store i8* %call2060, i8** %buffer2061, align 8
  %1089 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2062 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1089, i32 0, i32 0
  %1090 = load i8*, i8** %buffer2062, align 8
  %cmp2063 = icmp eq i8* %1090, null
  br i1 %cmp2063, label %if.then.2065, label %if.end.2066

if.then.2065:                                     ; preds = %if.end.2057
  store i32 12, i32* %retval
  br label %return

if.end.2066:                                      ; preds = %if.end.2057
  %1091 = load i8*, i8** %old_buffer2043, align 8
  %1092 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2067 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1092, i32 0, i32 0
  %1093 = load i8*, i8** %buffer2067, align 8
  %cmp2068 = icmp ne i8* %1091, %1093
  br i1 %cmp2068, label %if.then.2070, label %if.end.2105

if.then.2070:                                     ; preds = %if.end.2066
  %1094 = load i8*, i8** %b, align 8
  %1095 = load i8*, i8** %old_buffer2043, align 8
  %sub.ptr.lhs.cast2071 = ptrtoint i8* %1094 to i64
  %sub.ptr.rhs.cast2072 = ptrtoint i8* %1095 to i64
  %sub.ptr.sub2073 = sub i64 %sub.ptr.lhs.cast2071, %sub.ptr.rhs.cast2072
  %1096 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2074 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1096, i32 0, i32 0
  %1097 = load i8*, i8** %buffer2074, align 8
  %add.ptr2075 = getelementptr inbounds i8, i8* %1097, i64 %sub.ptr.sub2073
  store i8* %add.ptr2075, i8** %b, align 8
  %1098 = load i8*, i8** %begalt, align 8
  %1099 = load i8*, i8** %old_buffer2043, align 8
  %sub.ptr.lhs.cast2076 = ptrtoint i8* %1098 to i64
  %sub.ptr.rhs.cast2077 = ptrtoint i8* %1099 to i64
  %sub.ptr.sub2078 = sub i64 %sub.ptr.lhs.cast2076, %sub.ptr.rhs.cast2077
  %1100 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2079 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1100, i32 0, i32 0
  %1101 = load i8*, i8** %buffer2079, align 8
  %add.ptr2080 = getelementptr inbounds i8, i8* %1101, i64 %sub.ptr.sub2078
  store i8* %add.ptr2080, i8** %begalt, align 8
  %1102 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool2081 = icmp ne i8* %1102, null
  br i1 %tobool2081, label %if.then.2082, label %if.end.2088

if.then.2082:                                     ; preds = %if.then.2070
  %1103 = load i8*, i8** %fixup_alt_jump, align 8
  %1104 = load i8*, i8** %old_buffer2043, align 8
  %sub.ptr.lhs.cast2083 = ptrtoint i8* %1103 to i64
  %sub.ptr.rhs.cast2084 = ptrtoint i8* %1104 to i64
  %sub.ptr.sub2085 = sub i64 %sub.ptr.lhs.cast2083, %sub.ptr.rhs.cast2084
  %1105 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2086 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1105, i32 0, i32 0
  %1106 = load i8*, i8** %buffer2086, align 8
  %add.ptr2087 = getelementptr inbounds i8, i8* %1106, i64 %sub.ptr.sub2085
  store i8* %add.ptr2087, i8** %fixup_alt_jump, align 8
  br label %if.end.2088

if.end.2088:                                      ; preds = %if.then.2082, %if.then.2070
  %1107 = load i8*, i8** %laststart, align 8
  %tobool2089 = icmp ne i8* %1107, null
  br i1 %tobool2089, label %if.then.2090, label %if.end.2096

if.then.2090:                                     ; preds = %if.end.2088
  %1108 = load i8*, i8** %laststart, align 8
  %1109 = load i8*, i8** %old_buffer2043, align 8
  %sub.ptr.lhs.cast2091 = ptrtoint i8* %1108 to i64
  %sub.ptr.rhs.cast2092 = ptrtoint i8* %1109 to i64
  %sub.ptr.sub2093 = sub i64 %sub.ptr.lhs.cast2091, %sub.ptr.rhs.cast2092
  %1110 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2094 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1110, i32 0, i32 0
  %1111 = load i8*, i8** %buffer2094, align 8
  %add.ptr2095 = getelementptr inbounds i8, i8* %1111, i64 %sub.ptr.sub2093
  store i8* %add.ptr2095, i8** %laststart, align 8
  br label %if.end.2096

if.end.2096:                                      ; preds = %if.then.2090, %if.end.2088
  %1112 = load i8*, i8** %pending_exact, align 8
  %tobool2097 = icmp ne i8* %1112, null
  br i1 %tobool2097, label %if.then.2098, label %if.end.2104

if.then.2098:                                     ; preds = %if.end.2096
  %1113 = load i8*, i8** %pending_exact, align 8
  %1114 = load i8*, i8** %old_buffer2043, align 8
  %sub.ptr.lhs.cast2099 = ptrtoint i8* %1113 to i64
  %sub.ptr.rhs.cast2100 = ptrtoint i8* %1114 to i64
  %sub.ptr.sub2101 = sub i64 %sub.ptr.lhs.cast2099, %sub.ptr.rhs.cast2100
  %1115 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2102 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1115, i32 0, i32 0
  %1116 = load i8*, i8** %buffer2102, align 8
  %add.ptr2103 = getelementptr inbounds i8, i8* %1116, i64 %sub.ptr.sub2101
  store i8* %add.ptr2103, i8** %pending_exact, align 8
  br label %if.end.2104

if.end.2104:                                      ; preds = %if.then.2098, %if.end.2096
  br label %if.end.2105

if.end.2105:                                      ; preds = %if.end.2104, %if.end.2066
  br label %do.end.2106

do.end.2106:                                      ; preds = %if.end.2105
  br label %while.cond.2032

while.end.2107:                                   ; preds = %while.cond.2032
  %1117 = load i8*, i8** %begalt, align 8
  %1118 = load i8*, i8** %b, align 8
  %add.ptr2108 = getelementptr inbounds i8, i8* %1118, i64 6
  %1119 = load i8*, i8** %begalt, align 8
  %sub.ptr.lhs.cast2109 = ptrtoint i8* %add.ptr2108 to i64
  %sub.ptr.rhs.cast2110 = ptrtoint i8* %1119 to i64
  %sub.ptr.sub2111 = sub i64 %sub.ptr.lhs.cast2109, %sub.ptr.rhs.cast2110
  %sub2112 = sub nsw i64 %sub.ptr.sub2111, 3
  %conv2113 = trunc i64 %sub2112 to i32
  %1120 = load i8*, i8** %b, align 8
  call void @insert_op1(i32 15, i8* %1117, i32 %conv2113, i8* %1120)
  store i8* null, i8** %pending_exact, align 8
  %1121 = load i8*, i8** %b, align 8
  %add.ptr2114 = getelementptr inbounds i8, i8* %1121, i64 3
  store i8* %add.ptr2114, i8** %b, align 8
  %1122 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool2115 = icmp ne i8* %1122, null
  br i1 %tobool2115, label %if.then.2116, label %if.end.2122

if.then.2116:                                     ; preds = %while.end.2107
  %1123 = load i8*, i8** %fixup_alt_jump, align 8
  %1124 = load i8*, i8** %b, align 8
  %1125 = load i8*, i8** %fixup_alt_jump, align 8
  %sub.ptr.lhs.cast2117 = ptrtoint i8* %1124 to i64
  %sub.ptr.rhs.cast2118 = ptrtoint i8* %1125 to i64
  %sub.ptr.sub2119 = sub i64 %sub.ptr.lhs.cast2117, %sub.ptr.rhs.cast2118
  %sub2120 = sub nsw i64 %sub.ptr.sub2119, 3
  %conv2121 = trunc i64 %sub2120 to i32
  call void @store_op1(i32 14, i8* %1123, i32 %conv2121)
  br label %if.end.2122

if.end.2122:                                      ; preds = %if.then.2116, %while.end.2107
  %1126 = load i8*, i8** %b, align 8
  store i8* %1126, i8** %fixup_alt_jump, align 8
  br label %while.cond.2123

while.cond.2123:                                  ; preds = %do.end.2197, %if.end.2122
  %1127 = load i8*, i8** %b, align 8
  %1128 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2124 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1128, i32 0, i32 0
  %1129 = load i8*, i8** %buffer2124, align 8
  %sub.ptr.lhs.cast2125 = ptrtoint i8* %1127 to i64
  %sub.ptr.rhs.cast2126 = ptrtoint i8* %1129 to i64
  %sub.ptr.sub2127 = sub i64 %sub.ptr.lhs.cast2125, %sub.ptr.rhs.cast2126
  %add2128 = add nsw i64 %sub.ptr.sub2127, 3
  %1130 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2129 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1130, i32 0, i32 1
  %1131 = load i64, i64* %allocated2129, align 8
  %cmp2130 = icmp ugt i64 %add2128, %1131
  br i1 %cmp2130, label %while.body.2132, label %while.end.2198

while.body.2132:                                  ; preds = %while.cond.2123
  br label %do.body.2133

do.body.2133:                                     ; preds = %while.body.2132
  %1132 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2135 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1132, i32 0, i32 0
  %1133 = load i8*, i8** %buffer2135, align 8
  store i8* %1133, i8** %old_buffer2134, align 8
  %1134 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2136 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1134, i32 0, i32 1
  %1135 = load i64, i64* %allocated2136, align 8
  %cmp2137 = icmp eq i64 %1135, 65536
  br i1 %cmp2137, label %if.then.2139, label %if.end.2140

if.then.2139:                                     ; preds = %do.body.2133
  store i32 15, i32* %retval
  br label %return

if.end.2140:                                      ; preds = %do.body.2133
  %1136 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2141 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1136, i32 0, i32 1
  %1137 = load i64, i64* %allocated2141, align 8
  %shl2142 = shl i64 %1137, 1
  store i64 %shl2142, i64* %allocated2141, align 8
  %1138 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2143 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1138, i32 0, i32 1
  %1139 = load i64, i64* %allocated2143, align 8
  %cmp2144 = icmp ugt i64 %1139, 65536
  br i1 %cmp2144, label %if.then.2146, label %if.end.2148

if.then.2146:                                     ; preds = %if.end.2140
  %1140 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2147 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1140, i32 0, i32 1
  store i64 65536, i64* %allocated2147, align 8
  br label %if.end.2148

if.end.2148:                                      ; preds = %if.then.2146, %if.end.2140
  %1141 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2149 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1141, i32 0, i32 0
  %1142 = load i8*, i8** %buffer2149, align 8
  %1143 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2150 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1143, i32 0, i32 1
  %1144 = load i64, i64* %allocated2150, align 8
  %call2151 = call i8* @realloc(i8* %1142, i64 %1144) #1
  %1145 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2152 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1145, i32 0, i32 0
  store i8* %call2151, i8** %buffer2152, align 8
  %1146 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2153 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1146, i32 0, i32 0
  %1147 = load i8*, i8** %buffer2153, align 8
  %cmp2154 = icmp eq i8* %1147, null
  br i1 %cmp2154, label %if.then.2156, label %if.end.2157

if.then.2156:                                     ; preds = %if.end.2148
  store i32 12, i32* %retval
  br label %return

if.end.2157:                                      ; preds = %if.end.2148
  %1148 = load i8*, i8** %old_buffer2134, align 8
  %1149 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2158 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1149, i32 0, i32 0
  %1150 = load i8*, i8** %buffer2158, align 8
  %cmp2159 = icmp ne i8* %1148, %1150
  br i1 %cmp2159, label %if.then.2161, label %if.end.2196

if.then.2161:                                     ; preds = %if.end.2157
  %1151 = load i8*, i8** %b, align 8
  %1152 = load i8*, i8** %old_buffer2134, align 8
  %sub.ptr.lhs.cast2162 = ptrtoint i8* %1151 to i64
  %sub.ptr.rhs.cast2163 = ptrtoint i8* %1152 to i64
  %sub.ptr.sub2164 = sub i64 %sub.ptr.lhs.cast2162, %sub.ptr.rhs.cast2163
  %1153 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2165 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1153, i32 0, i32 0
  %1154 = load i8*, i8** %buffer2165, align 8
  %add.ptr2166 = getelementptr inbounds i8, i8* %1154, i64 %sub.ptr.sub2164
  store i8* %add.ptr2166, i8** %b, align 8
  %1155 = load i8*, i8** %begalt, align 8
  %1156 = load i8*, i8** %old_buffer2134, align 8
  %sub.ptr.lhs.cast2167 = ptrtoint i8* %1155 to i64
  %sub.ptr.rhs.cast2168 = ptrtoint i8* %1156 to i64
  %sub.ptr.sub2169 = sub i64 %sub.ptr.lhs.cast2167, %sub.ptr.rhs.cast2168
  %1157 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2170 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1157, i32 0, i32 0
  %1158 = load i8*, i8** %buffer2170, align 8
  %add.ptr2171 = getelementptr inbounds i8, i8* %1158, i64 %sub.ptr.sub2169
  store i8* %add.ptr2171, i8** %begalt, align 8
  %1159 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool2172 = icmp ne i8* %1159, null
  br i1 %tobool2172, label %if.then.2173, label %if.end.2179

if.then.2173:                                     ; preds = %if.then.2161
  %1160 = load i8*, i8** %fixup_alt_jump, align 8
  %1161 = load i8*, i8** %old_buffer2134, align 8
  %sub.ptr.lhs.cast2174 = ptrtoint i8* %1160 to i64
  %sub.ptr.rhs.cast2175 = ptrtoint i8* %1161 to i64
  %sub.ptr.sub2176 = sub i64 %sub.ptr.lhs.cast2174, %sub.ptr.rhs.cast2175
  %1162 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2177 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1162, i32 0, i32 0
  %1163 = load i8*, i8** %buffer2177, align 8
  %add.ptr2178 = getelementptr inbounds i8, i8* %1163, i64 %sub.ptr.sub2176
  store i8* %add.ptr2178, i8** %fixup_alt_jump, align 8
  br label %if.end.2179

if.end.2179:                                      ; preds = %if.then.2173, %if.then.2161
  %1164 = load i8*, i8** %laststart, align 8
  %tobool2180 = icmp ne i8* %1164, null
  br i1 %tobool2180, label %if.then.2181, label %if.end.2187

if.then.2181:                                     ; preds = %if.end.2179
  %1165 = load i8*, i8** %laststart, align 8
  %1166 = load i8*, i8** %old_buffer2134, align 8
  %sub.ptr.lhs.cast2182 = ptrtoint i8* %1165 to i64
  %sub.ptr.rhs.cast2183 = ptrtoint i8* %1166 to i64
  %sub.ptr.sub2184 = sub i64 %sub.ptr.lhs.cast2182, %sub.ptr.rhs.cast2183
  %1167 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2185 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1167, i32 0, i32 0
  %1168 = load i8*, i8** %buffer2185, align 8
  %add.ptr2186 = getelementptr inbounds i8, i8* %1168, i64 %sub.ptr.sub2184
  store i8* %add.ptr2186, i8** %laststart, align 8
  br label %if.end.2187

if.end.2187:                                      ; preds = %if.then.2181, %if.end.2179
  %1169 = load i8*, i8** %pending_exact, align 8
  %tobool2188 = icmp ne i8* %1169, null
  br i1 %tobool2188, label %if.then.2189, label %if.end.2195

if.then.2189:                                     ; preds = %if.end.2187
  %1170 = load i8*, i8** %pending_exact, align 8
  %1171 = load i8*, i8** %old_buffer2134, align 8
  %sub.ptr.lhs.cast2190 = ptrtoint i8* %1170 to i64
  %sub.ptr.rhs.cast2191 = ptrtoint i8* %1171 to i64
  %sub.ptr.sub2192 = sub i64 %sub.ptr.lhs.cast2190, %sub.ptr.rhs.cast2191
  %1172 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2193 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1172, i32 0, i32 0
  %1173 = load i8*, i8** %buffer2193, align 8
  %add.ptr2194 = getelementptr inbounds i8, i8* %1173, i64 %sub.ptr.sub2192
  store i8* %add.ptr2194, i8** %pending_exact, align 8
  br label %if.end.2195

if.end.2195:                                      ; preds = %if.then.2189, %if.end.2187
  br label %if.end.2196

if.end.2196:                                      ; preds = %if.end.2195, %if.end.2157
  br label %do.end.2197

do.end.2197:                                      ; preds = %if.end.2196
  br label %while.cond.2123

while.end.2198:                                   ; preds = %while.cond.2123
  %1174 = load i8*, i8** %b, align 8
  %add.ptr2199 = getelementptr inbounds i8, i8* %1174, i64 3
  store i8* %add.ptr2199, i8** %b, align 8
  store i8* null, i8** %laststart, align 8
  %1175 = load i8*, i8** %b, align 8
  store i8* %1175, i8** %begalt, align 8
  br label %sw.epilog

sw.bb.2200:                                       ; preds = %do.end.1609
  %1176 = load i64, i64* %syntax.addr, align 8
  %and2201 = and i64 %1176, 512
  %tobool2202 = icmp ne i64 %and2201, 0
  br i1 %tobool2202, label %lor.lhs.false.2203, label %if.then.2216

lor.lhs.false.2203:                               ; preds = %sw.bb.2200
  %1177 = load i64, i64* %syntax.addr, align 8
  %and2204 = and i64 %1177, 512
  %tobool2205 = icmp ne i64 %and2204, 0
  br i1 %tobool2205, label %land.lhs.true.2206, label %lor.lhs.false.2209

land.lhs.true.2206:                               ; preds = %lor.lhs.false.2203
  %1178 = load i64, i64* %syntax.addr, align 8
  %and2207 = and i64 %1178, 4096
  %tobool2208 = icmp ne i64 %and2207, 0
  br i1 %tobool2208, label %if.then.2216, label %lor.lhs.false.2209

lor.lhs.false.2209:                               ; preds = %land.lhs.true.2206, %lor.lhs.false.2203
  %1179 = load i8*, i8** %p, align 8
  %add.ptr2210 = getelementptr inbounds i8, i8* %1179, i64 -2
  %1180 = load i8*, i8** %pattern.addr, align 8
  %cmp2211 = icmp eq i8* %add.ptr2210, %1180
  br i1 %cmp2211, label %land.lhs.true.2213, label %if.end.2217

land.lhs.true.2213:                               ; preds = %lor.lhs.false.2209
  %1181 = load i8*, i8** %p, align 8
  %1182 = load i8*, i8** %pend, align 8
  %cmp2214 = icmp eq i8* %1181, %1182
  br i1 %cmp2214, label %if.then.2216, label %if.end.2217

if.then.2216:                                     ; preds = %land.lhs.true.2213, %land.lhs.true.2206, %sw.bb.2200
  br label %normal_backslash

if.end.2217:                                      ; preds = %land.lhs.true.2213, %lor.lhs.false.2209
  br label %handle_interval

handle_interval:                                  ; preds = %if.end.2217, %if.then.1595
  store i32 -1, i32* %lower_bound, align 4
  store i32 -1, i32* %upper_bound, align 4
  %1183 = load i8*, i8** %p, align 8
  %add.ptr2218 = getelementptr inbounds i8, i8* %1183, i64 -1
  store i8* %add.ptr2218, i8** %beg_interval, align 8
  %1184 = load i8*, i8** %p, align 8
  %1185 = load i8*, i8** %pend, align 8
  %cmp2219 = icmp eq i8* %1184, %1185
  br i1 %cmp2219, label %if.then.2221, label %if.end.2227

if.then.2221:                                     ; preds = %handle_interval
  %1186 = load i64, i64* %syntax.addr, align 8
  %and2222 = and i64 %1186, 4096
  %tobool2223 = icmp ne i64 %and2222, 0
  br i1 %tobool2223, label %if.then.2224, label %if.else.2225

if.then.2224:                                     ; preds = %if.then.2221
  br label %unfetch_interval

if.else.2225:                                     ; preds = %if.then.2221
  %stack2226 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1187 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2226, align 8
  %1188 = bitcast %struct.compile_stack_elt_t* %1187 to i8*
  call void @free(i8* %1188) #1
  store i32 9, i32* %retval
  br label %return

if.end.2227:                                      ; preds = %handle_interval
  %1189 = load i8*, i8** %p, align 8
  %1190 = load i8*, i8** %pend, align 8
  %cmp2228 = icmp ne i8* %1189, %1190
  br i1 %cmp2228, label %if.then.2230, label %if.end.2277

if.then.2230:                                     ; preds = %if.end.2227
  br label %do.body.2231

do.body.2231:                                     ; preds = %if.then.2230
  %1191 = load i8*, i8** %p, align 8
  %1192 = load i8*, i8** %pend, align 8
  %cmp2232 = icmp eq i8* %1191, %1192
  br i1 %cmp2232, label %if.then.2234, label %if.end.2235

if.then.2234:                                     ; preds = %do.body.2231
  store i32 14, i32* %retval
  br label %return

if.end.2235:                                      ; preds = %do.body.2231
  %1193 = load i8*, i8** %p, align 8
  %incdec.ptr2236 = getelementptr inbounds i8, i8* %1193, i32 1
  store i8* %incdec.ptr2236, i8** %p, align 8
  %1194 = load i8, i8* %1193, align 1
  store i8 %1194, i8* %c, align 1
  %1195 = load i8*, i8** %translate, align 8
  %tobool2237 = icmp ne i8* %1195, null
  br i1 %tobool2237, label %if.then.2238, label %if.end.2241

if.then.2238:                                     ; preds = %if.end.2235
  %1196 = load i8, i8* %c, align 1
  %idxprom2239 = zext i8 %1196 to i64
  %1197 = load i8*, i8** %translate, align 8
  %arrayidx2240 = getelementptr inbounds i8, i8* %1197, i64 %idxprom2239
  %1198 = load i8, i8* %arrayidx2240, align 1
  store i8 %1198, i8* %c, align 1
  br label %if.end.2241

if.end.2241:                                      ; preds = %if.then.2238, %if.end.2235
  br label %do.end.2242

do.end.2242:                                      ; preds = %if.end.2241
  br label %while.cond.2243

while.cond.2243:                                  ; preds = %do.end.2275, %do.end.2242
  %1199 = load i8, i8* %c, align 1
  %conv2244 = zext i8 %1199 to i32
  %idxprom2245 = sext i32 %conv2244 to i64
  %call2246 = call i16** @__ctype_b_loc() #8
  %1200 = load i16*, i16** %call2246, align 8
  %arrayidx2247 = getelementptr inbounds i16, i16* %1200, i64 %idxprom2245
  %1201 = load i16, i16* %arrayidx2247, align 2
  %conv2248 = zext i16 %1201 to i32
  %and2249 = and i32 %conv2248, 2048
  %tobool2250 = icmp ne i32 %and2249, 0
  br i1 %tobool2250, label %while.body.2251, label %while.end.2276

while.body.2251:                                  ; preds = %while.cond.2243
  %1202 = load i32, i32* %lower_bound, align 4
  %cmp2252 = icmp slt i32 %1202, 0
  br i1 %cmp2252, label %if.then.2254, label %if.end.2255

if.then.2254:                                     ; preds = %while.body.2251
  store i32 0, i32* %lower_bound, align 4
  br label %if.end.2255

if.end.2255:                                      ; preds = %if.then.2254, %while.body.2251
  %1203 = load i32, i32* %lower_bound, align 4
  %mul2256 = mul nsw i32 %1203, 10
  %1204 = load i8, i8* %c, align 1
  %conv2257 = zext i8 %1204 to i32
  %add2258 = add nsw i32 %mul2256, %conv2257
  %sub2259 = sub nsw i32 %add2258, 48
  store i32 %sub2259, i32* %lower_bound, align 4
  %1205 = load i8*, i8** %p, align 8
  %1206 = load i8*, i8** %pend, align 8
  %cmp2260 = icmp eq i8* %1205, %1206
  br i1 %cmp2260, label %if.then.2262, label %if.end.2263

if.then.2262:                                     ; preds = %if.end.2255
  br label %while.end.2276

if.end.2263:                                      ; preds = %if.end.2255
  br label %do.body.2264

do.body.2264:                                     ; preds = %if.end.2263
  %1207 = load i8*, i8** %p, align 8
  %1208 = load i8*, i8** %pend, align 8
  %cmp2265 = icmp eq i8* %1207, %1208
  br i1 %cmp2265, label %if.then.2267, label %if.end.2268

if.then.2267:                                     ; preds = %do.body.2264
  store i32 14, i32* %retval
  br label %return

if.end.2268:                                      ; preds = %do.body.2264
  %1209 = load i8*, i8** %p, align 8
  %incdec.ptr2269 = getelementptr inbounds i8, i8* %1209, i32 1
  store i8* %incdec.ptr2269, i8** %p, align 8
  %1210 = load i8, i8* %1209, align 1
  store i8 %1210, i8* %c, align 1
  %1211 = load i8*, i8** %translate, align 8
  %tobool2270 = icmp ne i8* %1211, null
  br i1 %tobool2270, label %if.then.2271, label %if.end.2274

if.then.2271:                                     ; preds = %if.end.2268
  %1212 = load i8, i8* %c, align 1
  %idxprom2272 = zext i8 %1212 to i64
  %1213 = load i8*, i8** %translate, align 8
  %arrayidx2273 = getelementptr inbounds i8, i8* %1213, i64 %idxprom2272
  %1214 = load i8, i8* %arrayidx2273, align 1
  store i8 %1214, i8* %c, align 1
  br label %if.end.2274

if.end.2274:                                      ; preds = %if.then.2271, %if.end.2268
  br label %do.end.2275

do.end.2275:                                      ; preds = %if.end.2274
  br label %while.cond.2243

while.end.2276:                                   ; preds = %if.then.2262, %while.cond.2243
  br label %if.end.2277

if.end.2277:                                      ; preds = %while.end.2276, %if.end.2227
  %1215 = load i8, i8* %c, align 1
  %conv2278 = zext i8 %1215 to i32
  %cmp2279 = icmp eq i32 %conv2278, 44
  br i1 %cmp2279, label %if.then.2281, label %if.else.2336

if.then.2281:                                     ; preds = %if.end.2277
  %1216 = load i8*, i8** %p, align 8
  %1217 = load i8*, i8** %pend, align 8
  %cmp2282 = icmp ne i8* %1216, %1217
  br i1 %cmp2282, label %if.then.2284, label %if.end.2331

if.then.2284:                                     ; preds = %if.then.2281
  br label %do.body.2285

do.body.2285:                                     ; preds = %if.then.2284
  %1218 = load i8*, i8** %p, align 8
  %1219 = load i8*, i8** %pend, align 8
  %cmp2286 = icmp eq i8* %1218, %1219
  br i1 %cmp2286, label %if.then.2288, label %if.end.2289

if.then.2288:                                     ; preds = %do.body.2285
  store i32 14, i32* %retval
  br label %return

if.end.2289:                                      ; preds = %do.body.2285
  %1220 = load i8*, i8** %p, align 8
  %incdec.ptr2290 = getelementptr inbounds i8, i8* %1220, i32 1
  store i8* %incdec.ptr2290, i8** %p, align 8
  %1221 = load i8, i8* %1220, align 1
  store i8 %1221, i8* %c, align 1
  %1222 = load i8*, i8** %translate, align 8
  %tobool2291 = icmp ne i8* %1222, null
  br i1 %tobool2291, label %if.then.2292, label %if.end.2295

if.then.2292:                                     ; preds = %if.end.2289
  %1223 = load i8, i8* %c, align 1
  %idxprom2293 = zext i8 %1223 to i64
  %1224 = load i8*, i8** %translate, align 8
  %arrayidx2294 = getelementptr inbounds i8, i8* %1224, i64 %idxprom2293
  %1225 = load i8, i8* %arrayidx2294, align 1
  store i8 %1225, i8* %c, align 1
  br label %if.end.2295

if.end.2295:                                      ; preds = %if.then.2292, %if.end.2289
  br label %do.end.2296

do.end.2296:                                      ; preds = %if.end.2295
  br label %while.cond.2297

while.cond.2297:                                  ; preds = %do.end.2329, %do.end.2296
  %1226 = load i8, i8* %c, align 1
  %conv2298 = zext i8 %1226 to i32
  %idxprom2299 = sext i32 %conv2298 to i64
  %call2300 = call i16** @__ctype_b_loc() #8
  %1227 = load i16*, i16** %call2300, align 8
  %arrayidx2301 = getelementptr inbounds i16, i16* %1227, i64 %idxprom2299
  %1228 = load i16, i16* %arrayidx2301, align 2
  %conv2302 = zext i16 %1228 to i32
  %and2303 = and i32 %conv2302, 2048
  %tobool2304 = icmp ne i32 %and2303, 0
  br i1 %tobool2304, label %while.body.2305, label %while.end.2330

while.body.2305:                                  ; preds = %while.cond.2297
  %1229 = load i32, i32* %upper_bound, align 4
  %cmp2306 = icmp slt i32 %1229, 0
  br i1 %cmp2306, label %if.then.2308, label %if.end.2309

if.then.2308:                                     ; preds = %while.body.2305
  store i32 0, i32* %upper_bound, align 4
  br label %if.end.2309

if.end.2309:                                      ; preds = %if.then.2308, %while.body.2305
  %1230 = load i32, i32* %upper_bound, align 4
  %mul2310 = mul nsw i32 %1230, 10
  %1231 = load i8, i8* %c, align 1
  %conv2311 = zext i8 %1231 to i32
  %add2312 = add nsw i32 %mul2310, %conv2311
  %sub2313 = sub nsw i32 %add2312, 48
  store i32 %sub2313, i32* %upper_bound, align 4
  %1232 = load i8*, i8** %p, align 8
  %1233 = load i8*, i8** %pend, align 8
  %cmp2314 = icmp eq i8* %1232, %1233
  br i1 %cmp2314, label %if.then.2316, label %if.end.2317

if.then.2316:                                     ; preds = %if.end.2309
  br label %while.end.2330

if.end.2317:                                      ; preds = %if.end.2309
  br label %do.body.2318

do.body.2318:                                     ; preds = %if.end.2317
  %1234 = load i8*, i8** %p, align 8
  %1235 = load i8*, i8** %pend, align 8
  %cmp2319 = icmp eq i8* %1234, %1235
  br i1 %cmp2319, label %if.then.2321, label %if.end.2322

if.then.2321:                                     ; preds = %do.body.2318
  store i32 14, i32* %retval
  br label %return

if.end.2322:                                      ; preds = %do.body.2318
  %1236 = load i8*, i8** %p, align 8
  %incdec.ptr2323 = getelementptr inbounds i8, i8* %1236, i32 1
  store i8* %incdec.ptr2323, i8** %p, align 8
  %1237 = load i8, i8* %1236, align 1
  store i8 %1237, i8* %c, align 1
  %1238 = load i8*, i8** %translate, align 8
  %tobool2324 = icmp ne i8* %1238, null
  br i1 %tobool2324, label %if.then.2325, label %if.end.2328

if.then.2325:                                     ; preds = %if.end.2322
  %1239 = load i8, i8* %c, align 1
  %idxprom2326 = zext i8 %1239 to i64
  %1240 = load i8*, i8** %translate, align 8
  %arrayidx2327 = getelementptr inbounds i8, i8* %1240, i64 %idxprom2326
  %1241 = load i8, i8* %arrayidx2327, align 1
  store i8 %1241, i8* %c, align 1
  br label %if.end.2328

if.end.2328:                                      ; preds = %if.then.2325, %if.end.2322
  br label %do.end.2329

do.end.2329:                                      ; preds = %if.end.2328
  br label %while.cond.2297

while.end.2330:                                   ; preds = %if.then.2316, %while.cond.2297
  br label %if.end.2331

if.end.2331:                                      ; preds = %while.end.2330, %if.then.2281
  %1242 = load i32, i32* %upper_bound, align 4
  %cmp2332 = icmp slt i32 %1242, 0
  br i1 %cmp2332, label %if.then.2334, label %if.end.2335

if.then.2334:                                     ; preds = %if.end.2331
  store i32 32767, i32* %upper_bound, align 4
  br label %if.end.2335

if.end.2335:                                      ; preds = %if.then.2334, %if.end.2331
  br label %if.end.2337

if.else.2336:                                     ; preds = %if.end.2277
  %1243 = load i32, i32* %lower_bound, align 4
  store i32 %1243, i32* %upper_bound, align 4
  br label %if.end.2337

if.end.2337:                                      ; preds = %if.else.2336, %if.end.2335
  %1244 = load i32, i32* %lower_bound, align 4
  %cmp2338 = icmp slt i32 %1244, 0
  br i1 %cmp2338, label %if.then.2346, label %lor.lhs.false.2340

lor.lhs.false.2340:                               ; preds = %if.end.2337
  %1245 = load i32, i32* %upper_bound, align 4
  %cmp2341 = icmp sgt i32 %1245, 32767
  br i1 %cmp2341, label %if.then.2346, label %lor.lhs.false.2343

lor.lhs.false.2343:                               ; preds = %lor.lhs.false.2340
  %1246 = load i32, i32* %lower_bound, align 4
  %1247 = load i32, i32* %upper_bound, align 4
  %cmp2344 = icmp sgt i32 %1246, %1247
  br i1 %cmp2344, label %if.then.2346, label %if.end.2352

if.then.2346:                                     ; preds = %lor.lhs.false.2343, %lor.lhs.false.2340, %if.end.2337
  %1248 = load i64, i64* %syntax.addr, align 8
  %and2347 = and i64 %1248, 4096
  %tobool2348 = icmp ne i64 %and2347, 0
  br i1 %tobool2348, label %if.then.2349, label %if.else.2350

if.then.2349:                                     ; preds = %if.then.2346
  br label %unfetch_interval

if.else.2350:                                     ; preds = %if.then.2346
  %stack2351 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1249 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2351, align 8
  %1250 = bitcast %struct.compile_stack_elt_t* %1249 to i8*
  call void @free(i8* %1250) #1
  store i32 10, i32* %retval
  br label %return

if.end.2352:                                      ; preds = %lor.lhs.false.2343
  %1251 = load i64, i64* %syntax.addr, align 8
  %and2353 = and i64 %1251, 4096
  %tobool2354 = icmp ne i64 %and2353, 0
  br i1 %tobool2354, label %if.end.2374, label %if.then.2355

if.then.2355:                                     ; preds = %if.end.2352
  %1252 = load i8, i8* %c, align 1
  %conv2356 = zext i8 %1252 to i32
  %cmp2357 = icmp ne i32 %conv2356, 92
  br i1 %cmp2357, label %if.then.2359, label %if.end.2361

if.then.2359:                                     ; preds = %if.then.2355
  %stack2360 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1253 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2360, align 8
  %1254 = bitcast %struct.compile_stack_elt_t* %1253 to i8*
  call void @free(i8* %1254) #1
  store i32 9, i32* %retval
  br label %return

if.end.2361:                                      ; preds = %if.then.2355
  br label %do.body.2362

do.body.2362:                                     ; preds = %if.end.2361
  %1255 = load i8*, i8** %p, align 8
  %1256 = load i8*, i8** %pend, align 8
  %cmp2363 = icmp eq i8* %1255, %1256
  br i1 %cmp2363, label %if.then.2365, label %if.end.2366

if.then.2365:                                     ; preds = %do.body.2362
  store i32 14, i32* %retval
  br label %return

if.end.2366:                                      ; preds = %do.body.2362
  %1257 = load i8*, i8** %p, align 8
  %incdec.ptr2367 = getelementptr inbounds i8, i8* %1257, i32 1
  store i8* %incdec.ptr2367, i8** %p, align 8
  %1258 = load i8, i8* %1257, align 1
  store i8 %1258, i8* %c, align 1
  %1259 = load i8*, i8** %translate, align 8
  %tobool2368 = icmp ne i8* %1259, null
  br i1 %tobool2368, label %if.then.2369, label %if.end.2372

if.then.2369:                                     ; preds = %if.end.2366
  %1260 = load i8, i8* %c, align 1
  %idxprom2370 = zext i8 %1260 to i64
  %1261 = load i8*, i8** %translate, align 8
  %arrayidx2371 = getelementptr inbounds i8, i8* %1261, i64 %idxprom2370
  %1262 = load i8, i8* %arrayidx2371, align 1
  store i8 %1262, i8* %c, align 1
  br label %if.end.2372

if.end.2372:                                      ; preds = %if.then.2369, %if.end.2366
  br label %do.end.2373

do.end.2373:                                      ; preds = %if.end.2372
  br label %if.end.2374

if.end.2374:                                      ; preds = %do.end.2373, %if.end.2352
  %1263 = load i8, i8* %c, align 1
  %conv2375 = zext i8 %1263 to i32
  %cmp2376 = icmp ne i32 %conv2375, 125
  br i1 %cmp2376, label %if.then.2378, label %if.end.2384

if.then.2378:                                     ; preds = %if.end.2374
  %1264 = load i64, i64* %syntax.addr, align 8
  %and2379 = and i64 %1264, 4096
  %tobool2380 = icmp ne i64 %and2379, 0
  br i1 %tobool2380, label %if.then.2381, label %if.else.2382

if.then.2381:                                     ; preds = %if.then.2378
  br label %unfetch_interval

if.else.2382:                                     ; preds = %if.then.2378
  %stack2383 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1265 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2383, align 8
  %1266 = bitcast %struct.compile_stack_elt_t* %1265 to i8*
  call void @free(i8* %1266) #1
  store i32 10, i32* %retval
  br label %return

if.end.2384:                                      ; preds = %if.end.2374
  %1267 = load i8*, i8** %laststart, align 8
  %tobool2385 = icmp ne i8* %1267, null
  br i1 %tobool2385, label %if.end.2398, label %if.then.2386

if.then.2386:                                     ; preds = %if.end.2384
  %1268 = load i64, i64* %syntax.addr, align 8
  %and2387 = and i64 %1268, 32
  %tobool2388 = icmp ne i64 %and2387, 0
  br i1 %tobool2388, label %if.then.2389, label %if.else.2391

if.then.2389:                                     ; preds = %if.then.2386
  %stack2390 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1269 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack2390, align 8
  %1270 = bitcast %struct.compile_stack_elt_t* %1269 to i8*
  call void @free(i8* %1270) #1
  store i32 13, i32* %retval
  br label %return

if.else.2391:                                     ; preds = %if.then.2386
  %1271 = load i64, i64* %syntax.addr, align 8
  %and2392 = and i64 %1271, 16
  %tobool2393 = icmp ne i64 %and2392, 0
  br i1 %tobool2393, label %if.then.2394, label %if.else.2395

if.then.2394:                                     ; preds = %if.else.2391
  %1272 = load i8*, i8** %b, align 8
  store i8* %1272, i8** %laststart, align 8
  br label %if.end.2396

if.else.2395:                                     ; preds = %if.else.2391
  br label %unfetch_interval

if.end.2396:                                      ; preds = %if.then.2394
  br label %if.end.2397

if.end.2397:                                      ; preds = %if.end.2396
  br label %if.end.2398

if.end.2398:                                      ; preds = %if.end.2397, %if.end.2384
  %1273 = load i32, i32* %upper_bound, align 4
  %cmp2399 = icmp eq i32 %1273, 0
  br i1 %cmp2399, label %if.then.2401, label %if.else.2485

if.then.2401:                                     ; preds = %if.end.2398
  br label %while.cond.2402

while.cond.2402:                                  ; preds = %do.end.2476, %if.then.2401
  %1274 = load i8*, i8** %b, align 8
  %1275 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2403 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1275, i32 0, i32 0
  %1276 = load i8*, i8** %buffer2403, align 8
  %sub.ptr.lhs.cast2404 = ptrtoint i8* %1274 to i64
  %sub.ptr.rhs.cast2405 = ptrtoint i8* %1276 to i64
  %sub.ptr.sub2406 = sub i64 %sub.ptr.lhs.cast2404, %sub.ptr.rhs.cast2405
  %add2407 = add nsw i64 %sub.ptr.sub2406, 3
  %1277 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2408 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1277, i32 0, i32 1
  %1278 = load i64, i64* %allocated2408, align 8
  %cmp2409 = icmp ugt i64 %add2407, %1278
  br i1 %cmp2409, label %while.body.2411, label %while.end.2477

while.body.2411:                                  ; preds = %while.cond.2402
  br label %do.body.2412

do.body.2412:                                     ; preds = %while.body.2411
  %1279 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2414 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1279, i32 0, i32 0
  %1280 = load i8*, i8** %buffer2414, align 8
  store i8* %1280, i8** %old_buffer2413, align 8
  %1281 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2415 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1281, i32 0, i32 1
  %1282 = load i64, i64* %allocated2415, align 8
  %cmp2416 = icmp eq i64 %1282, 65536
  br i1 %cmp2416, label %if.then.2418, label %if.end.2419

if.then.2418:                                     ; preds = %do.body.2412
  store i32 15, i32* %retval
  br label %return

if.end.2419:                                      ; preds = %do.body.2412
  %1283 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2420 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1283, i32 0, i32 1
  %1284 = load i64, i64* %allocated2420, align 8
  %shl2421 = shl i64 %1284, 1
  store i64 %shl2421, i64* %allocated2420, align 8
  %1285 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2422 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1285, i32 0, i32 1
  %1286 = load i64, i64* %allocated2422, align 8
  %cmp2423 = icmp ugt i64 %1286, 65536
  br i1 %cmp2423, label %if.then.2425, label %if.end.2427

if.then.2425:                                     ; preds = %if.end.2419
  %1287 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2426 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1287, i32 0, i32 1
  store i64 65536, i64* %allocated2426, align 8
  br label %if.end.2427

if.end.2427:                                      ; preds = %if.then.2425, %if.end.2419
  %1288 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2428 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1288, i32 0, i32 0
  %1289 = load i8*, i8** %buffer2428, align 8
  %1290 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2429 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1290, i32 0, i32 1
  %1291 = load i64, i64* %allocated2429, align 8
  %call2430 = call i8* @realloc(i8* %1289, i64 %1291) #1
  %1292 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2431 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1292, i32 0, i32 0
  store i8* %call2430, i8** %buffer2431, align 8
  %1293 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2432 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1293, i32 0, i32 0
  %1294 = load i8*, i8** %buffer2432, align 8
  %cmp2433 = icmp eq i8* %1294, null
  br i1 %cmp2433, label %if.then.2435, label %if.end.2436

if.then.2435:                                     ; preds = %if.end.2427
  store i32 12, i32* %retval
  br label %return

if.end.2436:                                      ; preds = %if.end.2427
  %1295 = load i8*, i8** %old_buffer2413, align 8
  %1296 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2437 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1296, i32 0, i32 0
  %1297 = load i8*, i8** %buffer2437, align 8
  %cmp2438 = icmp ne i8* %1295, %1297
  br i1 %cmp2438, label %if.then.2440, label %if.end.2475

if.then.2440:                                     ; preds = %if.end.2436
  %1298 = load i8*, i8** %b, align 8
  %1299 = load i8*, i8** %old_buffer2413, align 8
  %sub.ptr.lhs.cast2441 = ptrtoint i8* %1298 to i64
  %sub.ptr.rhs.cast2442 = ptrtoint i8* %1299 to i64
  %sub.ptr.sub2443 = sub i64 %sub.ptr.lhs.cast2441, %sub.ptr.rhs.cast2442
  %1300 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2444 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1300, i32 0, i32 0
  %1301 = load i8*, i8** %buffer2444, align 8
  %add.ptr2445 = getelementptr inbounds i8, i8* %1301, i64 %sub.ptr.sub2443
  store i8* %add.ptr2445, i8** %b, align 8
  %1302 = load i8*, i8** %begalt, align 8
  %1303 = load i8*, i8** %old_buffer2413, align 8
  %sub.ptr.lhs.cast2446 = ptrtoint i8* %1302 to i64
  %sub.ptr.rhs.cast2447 = ptrtoint i8* %1303 to i64
  %sub.ptr.sub2448 = sub i64 %sub.ptr.lhs.cast2446, %sub.ptr.rhs.cast2447
  %1304 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2449 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1304, i32 0, i32 0
  %1305 = load i8*, i8** %buffer2449, align 8
  %add.ptr2450 = getelementptr inbounds i8, i8* %1305, i64 %sub.ptr.sub2448
  store i8* %add.ptr2450, i8** %begalt, align 8
  %1306 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool2451 = icmp ne i8* %1306, null
  br i1 %tobool2451, label %if.then.2452, label %if.end.2458

if.then.2452:                                     ; preds = %if.then.2440
  %1307 = load i8*, i8** %fixup_alt_jump, align 8
  %1308 = load i8*, i8** %old_buffer2413, align 8
  %sub.ptr.lhs.cast2453 = ptrtoint i8* %1307 to i64
  %sub.ptr.rhs.cast2454 = ptrtoint i8* %1308 to i64
  %sub.ptr.sub2455 = sub i64 %sub.ptr.lhs.cast2453, %sub.ptr.rhs.cast2454
  %1309 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2456 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1309, i32 0, i32 0
  %1310 = load i8*, i8** %buffer2456, align 8
  %add.ptr2457 = getelementptr inbounds i8, i8* %1310, i64 %sub.ptr.sub2455
  store i8* %add.ptr2457, i8** %fixup_alt_jump, align 8
  br label %if.end.2458

if.end.2458:                                      ; preds = %if.then.2452, %if.then.2440
  %1311 = load i8*, i8** %laststart, align 8
  %tobool2459 = icmp ne i8* %1311, null
  br i1 %tobool2459, label %if.then.2460, label %if.end.2466

if.then.2460:                                     ; preds = %if.end.2458
  %1312 = load i8*, i8** %laststart, align 8
  %1313 = load i8*, i8** %old_buffer2413, align 8
  %sub.ptr.lhs.cast2461 = ptrtoint i8* %1312 to i64
  %sub.ptr.rhs.cast2462 = ptrtoint i8* %1313 to i64
  %sub.ptr.sub2463 = sub i64 %sub.ptr.lhs.cast2461, %sub.ptr.rhs.cast2462
  %1314 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2464 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1314, i32 0, i32 0
  %1315 = load i8*, i8** %buffer2464, align 8
  %add.ptr2465 = getelementptr inbounds i8, i8* %1315, i64 %sub.ptr.sub2463
  store i8* %add.ptr2465, i8** %laststart, align 8
  br label %if.end.2466

if.end.2466:                                      ; preds = %if.then.2460, %if.end.2458
  %1316 = load i8*, i8** %pending_exact, align 8
  %tobool2467 = icmp ne i8* %1316, null
  br i1 %tobool2467, label %if.then.2468, label %if.end.2474

if.then.2468:                                     ; preds = %if.end.2466
  %1317 = load i8*, i8** %pending_exact, align 8
  %1318 = load i8*, i8** %old_buffer2413, align 8
  %sub.ptr.lhs.cast2469 = ptrtoint i8* %1317 to i64
  %sub.ptr.rhs.cast2470 = ptrtoint i8* %1318 to i64
  %sub.ptr.sub2471 = sub i64 %sub.ptr.lhs.cast2469, %sub.ptr.rhs.cast2470
  %1319 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2472 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1319, i32 0, i32 0
  %1320 = load i8*, i8** %buffer2472, align 8
  %add.ptr2473 = getelementptr inbounds i8, i8* %1320, i64 %sub.ptr.sub2471
  store i8* %add.ptr2473, i8** %pending_exact, align 8
  br label %if.end.2474

if.end.2474:                                      ; preds = %if.then.2468, %if.end.2466
  br label %if.end.2475

if.end.2475:                                      ; preds = %if.end.2474, %if.end.2436
  br label %do.end.2476

do.end.2476:                                      ; preds = %if.end.2475
  br label %while.cond.2402

while.end.2477:                                   ; preds = %while.cond.2402
  %1321 = load i8*, i8** %laststart, align 8
  %1322 = load i8*, i8** %b, align 8
  %add.ptr2478 = getelementptr inbounds i8, i8* %1322, i64 3
  %1323 = load i8*, i8** %laststart, align 8
  %sub.ptr.lhs.cast2479 = ptrtoint i8* %add.ptr2478 to i64
  %sub.ptr.rhs.cast2480 = ptrtoint i8* %1323 to i64
  %sub.ptr.sub2481 = sub i64 %sub.ptr.lhs.cast2479, %sub.ptr.rhs.cast2480
  %sub2482 = sub nsw i64 %sub.ptr.sub2481, 3
  %conv2483 = trunc i64 %sub2482 to i32
  %1324 = load i8*, i8** %b, align 8
  call void @insert_op1(i32 13, i8* %1321, i32 %conv2483, i8* %1324)
  %1325 = load i8*, i8** %b, align 8
  %add.ptr2484 = getelementptr inbounds i8, i8* %1325, i64 3
  store i8* %add.ptr2484, i8** %b, align 8
  br label %if.end.2598

if.else.2485:                                     ; preds = %if.end.2398
  %1326 = load i32, i32* %upper_bound, align 4
  %cmp2486 = icmp sgt i32 %1326, 1
  %conv2487 = zext i1 %cmp2486 to i32
  %mul2488 = mul nsw i32 %conv2487, 10
  %add2489 = add nsw i32 10, %mul2488
  store i32 %add2489, i32* %nbytes, align 4
  br label %while.cond.2490

while.cond.2490:                                  ; preds = %do.end.2565, %if.else.2485
  %1327 = load i8*, i8** %b, align 8
  %1328 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2491 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1328, i32 0, i32 0
  %1329 = load i8*, i8** %buffer2491, align 8
  %sub.ptr.lhs.cast2492 = ptrtoint i8* %1327 to i64
  %sub.ptr.rhs.cast2493 = ptrtoint i8* %1329 to i64
  %sub.ptr.sub2494 = sub i64 %sub.ptr.lhs.cast2492, %sub.ptr.rhs.cast2493
  %1330 = load i32, i32* %nbytes, align 4
  %conv2495 = zext i32 %1330 to i64
  %add2496 = add nsw i64 %sub.ptr.sub2494, %conv2495
  %1331 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2497 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1331, i32 0, i32 1
  %1332 = load i64, i64* %allocated2497, align 8
  %cmp2498 = icmp ugt i64 %add2496, %1332
  br i1 %cmp2498, label %while.body.2500, label %while.end.2566

while.body.2500:                                  ; preds = %while.cond.2490
  br label %do.body.2501

do.body.2501:                                     ; preds = %while.body.2500
  %1333 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2503 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1333, i32 0, i32 0
  %1334 = load i8*, i8** %buffer2503, align 8
  store i8* %1334, i8** %old_buffer2502, align 8
  %1335 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2504 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1335, i32 0, i32 1
  %1336 = load i64, i64* %allocated2504, align 8
  %cmp2505 = icmp eq i64 %1336, 65536
  br i1 %cmp2505, label %if.then.2507, label %if.end.2508

if.then.2507:                                     ; preds = %do.body.2501
  store i32 15, i32* %retval
  br label %return

if.end.2508:                                      ; preds = %do.body.2501
  %1337 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2509 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1337, i32 0, i32 1
  %1338 = load i64, i64* %allocated2509, align 8
  %shl2510 = shl i64 %1338, 1
  store i64 %shl2510, i64* %allocated2509, align 8
  %1339 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2511 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1339, i32 0, i32 1
  %1340 = load i64, i64* %allocated2511, align 8
  %cmp2512 = icmp ugt i64 %1340, 65536
  br i1 %cmp2512, label %if.then.2514, label %if.end.2516

if.then.2514:                                     ; preds = %if.end.2508
  %1341 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2515 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1341, i32 0, i32 1
  store i64 65536, i64* %allocated2515, align 8
  br label %if.end.2516

if.end.2516:                                      ; preds = %if.then.2514, %if.end.2508
  %1342 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2517 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1342, i32 0, i32 0
  %1343 = load i8*, i8** %buffer2517, align 8
  %1344 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2518 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1344, i32 0, i32 1
  %1345 = load i64, i64* %allocated2518, align 8
  %call2519 = call i8* @realloc(i8* %1343, i64 %1345) #1
  %1346 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2520 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1346, i32 0, i32 0
  store i8* %call2519, i8** %buffer2520, align 8
  %1347 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2521 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1347, i32 0, i32 0
  %1348 = load i8*, i8** %buffer2521, align 8
  %cmp2522 = icmp eq i8* %1348, null
  br i1 %cmp2522, label %if.then.2524, label %if.end.2525

if.then.2524:                                     ; preds = %if.end.2516
  store i32 12, i32* %retval
  br label %return

if.end.2525:                                      ; preds = %if.end.2516
  %1349 = load i8*, i8** %old_buffer2502, align 8
  %1350 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2526 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1350, i32 0, i32 0
  %1351 = load i8*, i8** %buffer2526, align 8
  %cmp2527 = icmp ne i8* %1349, %1351
  br i1 %cmp2527, label %if.then.2529, label %if.end.2564

if.then.2529:                                     ; preds = %if.end.2525
  %1352 = load i8*, i8** %b, align 8
  %1353 = load i8*, i8** %old_buffer2502, align 8
  %sub.ptr.lhs.cast2530 = ptrtoint i8* %1352 to i64
  %sub.ptr.rhs.cast2531 = ptrtoint i8* %1353 to i64
  %sub.ptr.sub2532 = sub i64 %sub.ptr.lhs.cast2530, %sub.ptr.rhs.cast2531
  %1354 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2533 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1354, i32 0, i32 0
  %1355 = load i8*, i8** %buffer2533, align 8
  %add.ptr2534 = getelementptr inbounds i8, i8* %1355, i64 %sub.ptr.sub2532
  store i8* %add.ptr2534, i8** %b, align 8
  %1356 = load i8*, i8** %begalt, align 8
  %1357 = load i8*, i8** %old_buffer2502, align 8
  %sub.ptr.lhs.cast2535 = ptrtoint i8* %1356 to i64
  %sub.ptr.rhs.cast2536 = ptrtoint i8* %1357 to i64
  %sub.ptr.sub2537 = sub i64 %sub.ptr.lhs.cast2535, %sub.ptr.rhs.cast2536
  %1358 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2538 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1358, i32 0, i32 0
  %1359 = load i8*, i8** %buffer2538, align 8
  %add.ptr2539 = getelementptr inbounds i8, i8* %1359, i64 %sub.ptr.sub2537
  store i8* %add.ptr2539, i8** %begalt, align 8
  %1360 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool2540 = icmp ne i8* %1360, null
  br i1 %tobool2540, label %if.then.2541, label %if.end.2547

if.then.2541:                                     ; preds = %if.then.2529
  %1361 = load i8*, i8** %fixup_alt_jump, align 8
  %1362 = load i8*, i8** %old_buffer2502, align 8
  %sub.ptr.lhs.cast2542 = ptrtoint i8* %1361 to i64
  %sub.ptr.rhs.cast2543 = ptrtoint i8* %1362 to i64
  %sub.ptr.sub2544 = sub i64 %sub.ptr.lhs.cast2542, %sub.ptr.rhs.cast2543
  %1363 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2545 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1363, i32 0, i32 0
  %1364 = load i8*, i8** %buffer2545, align 8
  %add.ptr2546 = getelementptr inbounds i8, i8* %1364, i64 %sub.ptr.sub2544
  store i8* %add.ptr2546, i8** %fixup_alt_jump, align 8
  br label %if.end.2547

if.end.2547:                                      ; preds = %if.then.2541, %if.then.2529
  %1365 = load i8*, i8** %laststart, align 8
  %tobool2548 = icmp ne i8* %1365, null
  br i1 %tobool2548, label %if.then.2549, label %if.end.2555

if.then.2549:                                     ; preds = %if.end.2547
  %1366 = load i8*, i8** %laststart, align 8
  %1367 = load i8*, i8** %old_buffer2502, align 8
  %sub.ptr.lhs.cast2550 = ptrtoint i8* %1366 to i64
  %sub.ptr.rhs.cast2551 = ptrtoint i8* %1367 to i64
  %sub.ptr.sub2552 = sub i64 %sub.ptr.lhs.cast2550, %sub.ptr.rhs.cast2551
  %1368 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2553 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1368, i32 0, i32 0
  %1369 = load i8*, i8** %buffer2553, align 8
  %add.ptr2554 = getelementptr inbounds i8, i8* %1369, i64 %sub.ptr.sub2552
  store i8* %add.ptr2554, i8** %laststart, align 8
  br label %if.end.2555

if.end.2555:                                      ; preds = %if.then.2549, %if.end.2547
  %1370 = load i8*, i8** %pending_exact, align 8
  %tobool2556 = icmp ne i8* %1370, null
  br i1 %tobool2556, label %if.then.2557, label %if.end.2563

if.then.2557:                                     ; preds = %if.end.2555
  %1371 = load i8*, i8** %pending_exact, align 8
  %1372 = load i8*, i8** %old_buffer2502, align 8
  %sub.ptr.lhs.cast2558 = ptrtoint i8* %1371 to i64
  %sub.ptr.rhs.cast2559 = ptrtoint i8* %1372 to i64
  %sub.ptr.sub2560 = sub i64 %sub.ptr.lhs.cast2558, %sub.ptr.rhs.cast2559
  %1373 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2561 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1373, i32 0, i32 0
  %1374 = load i8*, i8** %buffer2561, align 8
  %add.ptr2562 = getelementptr inbounds i8, i8* %1374, i64 %sub.ptr.sub2560
  store i8* %add.ptr2562, i8** %pending_exact, align 8
  br label %if.end.2563

if.end.2563:                                      ; preds = %if.then.2557, %if.end.2555
  br label %if.end.2564

if.end.2564:                                      ; preds = %if.end.2563, %if.end.2525
  br label %do.end.2565

do.end.2565:                                      ; preds = %if.end.2564
  br label %while.cond.2490

while.end.2566:                                   ; preds = %while.cond.2490
  %1375 = load i8*, i8** %laststart, align 8
  %1376 = load i8*, i8** %b, align 8
  %add.ptr2567 = getelementptr inbounds i8, i8* %1376, i64 5
  %1377 = load i32, i32* %upper_bound, align 4
  %cmp2568 = icmp sgt i32 %1377, 1
  %conv2569 = zext i1 %cmp2568 to i32
  %mul2570 = mul nsw i32 %conv2569, 5
  %idx.ext2571 = sext i32 %mul2570 to i64
  %add.ptr2572 = getelementptr inbounds i8, i8* %add.ptr2567, i64 %idx.ext2571
  %1378 = load i8*, i8** %laststart, align 8
  %sub.ptr.lhs.cast2573 = ptrtoint i8* %add.ptr2572 to i64
  %sub.ptr.rhs.cast2574 = ptrtoint i8* %1378 to i64
  %sub.ptr.sub2575 = sub i64 %sub.ptr.lhs.cast2573, %sub.ptr.rhs.cast2574
  %sub2576 = sub nsw i64 %sub.ptr.sub2575, 3
  %conv2577 = trunc i64 %sub2576 to i32
  %1379 = load i32, i32* %lower_bound, align 4
  %1380 = load i8*, i8** %b, align 8
  call void @insert_op2(i32 21, i8* %1375, i32 %conv2577, i32 %1379, i8* %1380)
  %1381 = load i8*, i8** %b, align 8
  %add.ptr2578 = getelementptr inbounds i8, i8* %1381, i64 5
  store i8* %add.ptr2578, i8** %b, align 8
  %1382 = load i8*, i8** %laststart, align 8
  %1383 = load i32, i32* %lower_bound, align 4
  %1384 = load i8*, i8** %b, align 8
  call void @insert_op2(i32 23, i8* %1382, i32 5, i32 %1383, i8* %1384)
  %1385 = load i8*, i8** %b, align 8
  %add.ptr2579 = getelementptr inbounds i8, i8* %1385, i64 5
  store i8* %add.ptr2579, i8** %b, align 8
  %1386 = load i32, i32* %upper_bound, align 4
  %cmp2580 = icmp sgt i32 %1386, 1
  br i1 %cmp2580, label %if.then.2582, label %if.end.2597

if.then.2582:                                     ; preds = %while.end.2566
  %1387 = load i8*, i8** %b, align 8
  %1388 = load i8*, i8** %laststart, align 8
  %add.ptr2583 = getelementptr inbounds i8, i8* %1388, i64 5
  %1389 = load i8*, i8** %b, align 8
  %sub.ptr.lhs.cast2584 = ptrtoint i8* %add.ptr2583 to i64
  %sub.ptr.rhs.cast2585 = ptrtoint i8* %1389 to i64
  %sub.ptr.sub2586 = sub i64 %sub.ptr.lhs.cast2584, %sub.ptr.rhs.cast2585
  %sub2587 = sub nsw i64 %sub.ptr.sub2586, 3
  %conv2588 = trunc i64 %sub2587 to i32
  %1390 = load i32, i32* %upper_bound, align 4
  %sub2589 = sub nsw i32 %1390, 1
  call void @store_op2(i32 22, i8* %1387, i32 %conv2588, i32 %sub2589)
  %1391 = load i8*, i8** %b, align 8
  %add.ptr2590 = getelementptr inbounds i8, i8* %1391, i64 5
  store i8* %add.ptr2590, i8** %b, align 8
  %1392 = load i8*, i8** %laststart, align 8
  %1393 = load i8*, i8** %b, align 8
  %1394 = load i8*, i8** %laststart, align 8
  %sub.ptr.lhs.cast2591 = ptrtoint i8* %1393 to i64
  %sub.ptr.rhs.cast2592 = ptrtoint i8* %1394 to i64
  %sub.ptr.sub2593 = sub i64 %sub.ptr.lhs.cast2591, %sub.ptr.rhs.cast2592
  %conv2594 = trunc i64 %sub.ptr.sub2593 to i32
  %1395 = load i32, i32* %upper_bound, align 4
  %sub2595 = sub nsw i32 %1395, 1
  %1396 = load i8*, i8** %b, align 8
  call void @insert_op2(i32 23, i8* %1392, i32 %conv2594, i32 %sub2595, i8* %1396)
  %1397 = load i8*, i8** %b, align 8
  %add.ptr2596 = getelementptr inbounds i8, i8* %1397, i64 5
  store i8* %add.ptr2596, i8** %b, align 8
  br label %if.end.2597

if.end.2597:                                      ; preds = %if.then.2582, %while.end.2566
  br label %if.end.2598

if.end.2598:                                      ; preds = %if.end.2597, %while.end.2477
  store i8* null, i8** %pending_exact, align 8
  store i8* null, i8** %beg_interval, align 8
  br label %sw.epilog

unfetch_interval:                                 ; preds = %if.else.2395, %if.then.2381, %if.then.2349, %if.then.2224
  %1398 = load i8*, i8** %beg_interval, align 8
  store i8* %1398, i8** %p, align 8
  store i8* null, i8** %beg_interval, align 8
  br label %do.body.2599

do.body.2599:                                     ; preds = %unfetch_interval
  %1399 = load i8*, i8** %p, align 8
  %1400 = load i8*, i8** %pend, align 8
  %cmp2600 = icmp eq i8* %1399, %1400
  br i1 %cmp2600, label %if.then.2602, label %if.end.2603

if.then.2602:                                     ; preds = %do.body.2599
  store i32 14, i32* %retval
  br label %return

if.end.2603:                                      ; preds = %do.body.2599
  %1401 = load i8*, i8** %p, align 8
  %incdec.ptr2604 = getelementptr inbounds i8, i8* %1401, i32 1
  store i8* %incdec.ptr2604, i8** %p, align 8
  %1402 = load i8, i8* %1401, align 1
  store i8 %1402, i8* %c, align 1
  %1403 = load i8*, i8** %translate, align 8
  %tobool2605 = icmp ne i8* %1403, null
  br i1 %tobool2605, label %if.then.2606, label %if.end.2609

if.then.2606:                                     ; preds = %if.end.2603
  %1404 = load i8, i8* %c, align 1
  %idxprom2607 = zext i8 %1404 to i64
  %1405 = load i8*, i8** %translate, align 8
  %arrayidx2608 = getelementptr inbounds i8, i8* %1405, i64 %idxprom2607
  %1406 = load i8, i8* %arrayidx2608, align 1
  store i8 %1406, i8* %c, align 1
  br label %if.end.2609

if.end.2609:                                      ; preds = %if.then.2606, %if.end.2603
  br label %do.end.2610

do.end.2610:                                      ; preds = %if.end.2609
  %1407 = load i64, i64* %syntax.addr, align 8
  %and2611 = and i64 %1407, 4096
  %tobool2612 = icmp ne i64 %and2611, 0
  br i1 %tobool2612, label %if.end.2623, label %if.then.2613

if.then.2613:                                     ; preds = %do.end.2610
  %1408 = load i8*, i8** %p, align 8
  %1409 = load i8*, i8** %pattern.addr, align 8
  %cmp2614 = icmp ugt i8* %1408, %1409
  br i1 %cmp2614, label %land.lhs.true.2616, label %if.end.2622

land.lhs.true.2616:                               ; preds = %if.then.2613
  %1410 = load i8*, i8** %p, align 8
  %arrayidx2617 = getelementptr inbounds i8, i8* %1410, i64 -1
  %1411 = load i8, i8* %arrayidx2617, align 1
  %conv2618 = sext i8 %1411 to i32
  %cmp2619 = icmp eq i32 %conv2618, 92
  br i1 %cmp2619, label %if.then.2621, label %if.end.2622

if.then.2621:                                     ; preds = %land.lhs.true.2616
  br label %normal_backslash

if.end.2622:                                      ; preds = %land.lhs.true.2616, %if.then.2613
  br label %if.end.2623

if.end.2623:                                      ; preds = %if.end.2622, %do.end.2610
  br label %normal_char

sw.bb.2624:                                       ; preds = %do.end.1609
  %1412 = load i64, i64* %syntax.addr, align 8
  %and2625 = and i64 %1412, 524288
  %tobool2626 = icmp ne i64 %and2625, 0
  br i1 %tobool2626, label %if.then.2627, label %if.end.2628

if.then.2627:                                     ; preds = %sw.bb.2624
  br label %normal_char

if.end.2628:                                      ; preds = %sw.bb.2624
  %1413 = load i8*, i8** %b, align 8
  store i8* %1413, i8** %laststart, align 8
  br label %do.body.2629

do.body.2629:                                     ; preds = %if.end.2628
  br label %while.cond.2630

while.cond.2630:                                  ; preds = %do.end.2704, %do.body.2629
  %1414 = load i8*, i8** %b, align 8
  %1415 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2631 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1415, i32 0, i32 0
  %1416 = load i8*, i8** %buffer2631, align 8
  %sub.ptr.lhs.cast2632 = ptrtoint i8* %1414 to i64
  %sub.ptr.rhs.cast2633 = ptrtoint i8* %1416 to i64
  %sub.ptr.sub2634 = sub i64 %sub.ptr.lhs.cast2632, %sub.ptr.rhs.cast2633
  %add2635 = add nsw i64 %sub.ptr.sub2634, 1
  %1417 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2636 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1417, i32 0, i32 1
  %1418 = load i64, i64* %allocated2636, align 8
  %cmp2637 = icmp ugt i64 %add2635, %1418
  br i1 %cmp2637, label %while.body.2639, label %while.end.2705

while.body.2639:                                  ; preds = %while.cond.2630
  br label %do.body.2640

do.body.2640:                                     ; preds = %while.body.2639
  %1419 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2642 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1419, i32 0, i32 0
  %1420 = load i8*, i8** %buffer2642, align 8
  store i8* %1420, i8** %old_buffer2641, align 8
  %1421 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2643 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1421, i32 0, i32 1
  %1422 = load i64, i64* %allocated2643, align 8
  %cmp2644 = icmp eq i64 %1422, 65536
  br i1 %cmp2644, label %if.then.2646, label %if.end.2647

if.then.2646:                                     ; preds = %do.body.2640
  store i32 15, i32* %retval
  br label %return

if.end.2647:                                      ; preds = %do.body.2640
  %1423 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2648 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1423, i32 0, i32 1
  %1424 = load i64, i64* %allocated2648, align 8
  %shl2649 = shl i64 %1424, 1
  store i64 %shl2649, i64* %allocated2648, align 8
  %1425 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2650 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1425, i32 0, i32 1
  %1426 = load i64, i64* %allocated2650, align 8
  %cmp2651 = icmp ugt i64 %1426, 65536
  br i1 %cmp2651, label %if.then.2653, label %if.end.2655

if.then.2653:                                     ; preds = %if.end.2647
  %1427 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2654 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1427, i32 0, i32 1
  store i64 65536, i64* %allocated2654, align 8
  br label %if.end.2655

if.end.2655:                                      ; preds = %if.then.2653, %if.end.2647
  %1428 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2656 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1428, i32 0, i32 0
  %1429 = load i8*, i8** %buffer2656, align 8
  %1430 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2657 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1430, i32 0, i32 1
  %1431 = load i64, i64* %allocated2657, align 8
  %call2658 = call i8* @realloc(i8* %1429, i64 %1431) #1
  %1432 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2659 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1432, i32 0, i32 0
  store i8* %call2658, i8** %buffer2659, align 8
  %1433 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2660 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1433, i32 0, i32 0
  %1434 = load i8*, i8** %buffer2660, align 8
  %cmp2661 = icmp eq i8* %1434, null
  br i1 %cmp2661, label %if.then.2663, label %if.end.2664

if.then.2663:                                     ; preds = %if.end.2655
  store i32 12, i32* %retval
  br label %return

if.end.2664:                                      ; preds = %if.end.2655
  %1435 = load i8*, i8** %old_buffer2641, align 8
  %1436 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2665 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1436, i32 0, i32 0
  %1437 = load i8*, i8** %buffer2665, align 8
  %cmp2666 = icmp ne i8* %1435, %1437
  br i1 %cmp2666, label %if.then.2668, label %if.end.2703

if.then.2668:                                     ; preds = %if.end.2664
  %1438 = load i8*, i8** %b, align 8
  %1439 = load i8*, i8** %old_buffer2641, align 8
  %sub.ptr.lhs.cast2669 = ptrtoint i8* %1438 to i64
  %sub.ptr.rhs.cast2670 = ptrtoint i8* %1439 to i64
  %sub.ptr.sub2671 = sub i64 %sub.ptr.lhs.cast2669, %sub.ptr.rhs.cast2670
  %1440 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2672 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1440, i32 0, i32 0
  %1441 = load i8*, i8** %buffer2672, align 8
  %add.ptr2673 = getelementptr inbounds i8, i8* %1441, i64 %sub.ptr.sub2671
  store i8* %add.ptr2673, i8** %b, align 8
  %1442 = load i8*, i8** %begalt, align 8
  %1443 = load i8*, i8** %old_buffer2641, align 8
  %sub.ptr.lhs.cast2674 = ptrtoint i8* %1442 to i64
  %sub.ptr.rhs.cast2675 = ptrtoint i8* %1443 to i64
  %sub.ptr.sub2676 = sub i64 %sub.ptr.lhs.cast2674, %sub.ptr.rhs.cast2675
  %1444 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2677 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1444, i32 0, i32 0
  %1445 = load i8*, i8** %buffer2677, align 8
  %add.ptr2678 = getelementptr inbounds i8, i8* %1445, i64 %sub.ptr.sub2676
  store i8* %add.ptr2678, i8** %begalt, align 8
  %1446 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool2679 = icmp ne i8* %1446, null
  br i1 %tobool2679, label %if.then.2680, label %if.end.2686

if.then.2680:                                     ; preds = %if.then.2668
  %1447 = load i8*, i8** %fixup_alt_jump, align 8
  %1448 = load i8*, i8** %old_buffer2641, align 8
  %sub.ptr.lhs.cast2681 = ptrtoint i8* %1447 to i64
  %sub.ptr.rhs.cast2682 = ptrtoint i8* %1448 to i64
  %sub.ptr.sub2683 = sub i64 %sub.ptr.lhs.cast2681, %sub.ptr.rhs.cast2682
  %1449 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2684 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1449, i32 0, i32 0
  %1450 = load i8*, i8** %buffer2684, align 8
  %add.ptr2685 = getelementptr inbounds i8, i8* %1450, i64 %sub.ptr.sub2683
  store i8* %add.ptr2685, i8** %fixup_alt_jump, align 8
  br label %if.end.2686

if.end.2686:                                      ; preds = %if.then.2680, %if.then.2668
  %1451 = load i8*, i8** %laststart, align 8
  %tobool2687 = icmp ne i8* %1451, null
  br i1 %tobool2687, label %if.then.2688, label %if.end.2694

if.then.2688:                                     ; preds = %if.end.2686
  %1452 = load i8*, i8** %laststart, align 8
  %1453 = load i8*, i8** %old_buffer2641, align 8
  %sub.ptr.lhs.cast2689 = ptrtoint i8* %1452 to i64
  %sub.ptr.rhs.cast2690 = ptrtoint i8* %1453 to i64
  %sub.ptr.sub2691 = sub i64 %sub.ptr.lhs.cast2689, %sub.ptr.rhs.cast2690
  %1454 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2692 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1454, i32 0, i32 0
  %1455 = load i8*, i8** %buffer2692, align 8
  %add.ptr2693 = getelementptr inbounds i8, i8* %1455, i64 %sub.ptr.sub2691
  store i8* %add.ptr2693, i8** %laststart, align 8
  br label %if.end.2694

if.end.2694:                                      ; preds = %if.then.2688, %if.end.2686
  %1456 = load i8*, i8** %pending_exact, align 8
  %tobool2695 = icmp ne i8* %1456, null
  br i1 %tobool2695, label %if.then.2696, label %if.end.2702

if.then.2696:                                     ; preds = %if.end.2694
  %1457 = load i8*, i8** %pending_exact, align 8
  %1458 = load i8*, i8** %old_buffer2641, align 8
  %sub.ptr.lhs.cast2697 = ptrtoint i8* %1457 to i64
  %sub.ptr.rhs.cast2698 = ptrtoint i8* %1458 to i64
  %sub.ptr.sub2699 = sub i64 %sub.ptr.lhs.cast2697, %sub.ptr.rhs.cast2698
  %1459 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2700 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1459, i32 0, i32 0
  %1460 = load i8*, i8** %buffer2700, align 8
  %add.ptr2701 = getelementptr inbounds i8, i8* %1460, i64 %sub.ptr.sub2699
  store i8* %add.ptr2701, i8** %pending_exact, align 8
  br label %if.end.2702

if.end.2702:                                      ; preds = %if.then.2696, %if.end.2694
  br label %if.end.2703

if.end.2703:                                      ; preds = %if.end.2702, %if.end.2664
  br label %do.end.2704

do.end.2704:                                      ; preds = %if.end.2703
  br label %while.cond.2630

while.end.2705:                                   ; preds = %while.cond.2630
  %1461 = load i8*, i8** %b, align 8
  %incdec.ptr2706 = getelementptr inbounds i8, i8* %1461, i32 1
  store i8* %incdec.ptr2706, i8** %b, align 8
  store i8 24, i8* %1461, align 1
  br label %do.end.2707

do.end.2707:                                      ; preds = %while.end.2705
  br label %sw.epilog

sw.bb.2708:                                       ; preds = %do.end.1609
  %1462 = load i64, i64* %syntax.addr, align 8
  %and2709 = and i64 %1462, 524288
  %tobool2710 = icmp ne i64 %and2709, 0
  br i1 %tobool2710, label %if.then.2711, label %if.end.2712

if.then.2711:                                     ; preds = %sw.bb.2708
  br label %normal_char

if.end.2712:                                      ; preds = %sw.bb.2708
  %1463 = load i8*, i8** %b, align 8
  store i8* %1463, i8** %laststart, align 8
  br label %do.body.2713

do.body.2713:                                     ; preds = %if.end.2712
  br label %while.cond.2714

while.cond.2714:                                  ; preds = %do.end.2788, %do.body.2713
  %1464 = load i8*, i8** %b, align 8
  %1465 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2715 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1465, i32 0, i32 0
  %1466 = load i8*, i8** %buffer2715, align 8
  %sub.ptr.lhs.cast2716 = ptrtoint i8* %1464 to i64
  %sub.ptr.rhs.cast2717 = ptrtoint i8* %1466 to i64
  %sub.ptr.sub2718 = sub i64 %sub.ptr.lhs.cast2716, %sub.ptr.rhs.cast2717
  %add2719 = add nsw i64 %sub.ptr.sub2718, 1
  %1467 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2720 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1467, i32 0, i32 1
  %1468 = load i64, i64* %allocated2720, align 8
  %cmp2721 = icmp ugt i64 %add2719, %1468
  br i1 %cmp2721, label %while.body.2723, label %while.end.2789

while.body.2723:                                  ; preds = %while.cond.2714
  br label %do.body.2724

do.body.2724:                                     ; preds = %while.body.2723
  %1469 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2726 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1469, i32 0, i32 0
  %1470 = load i8*, i8** %buffer2726, align 8
  store i8* %1470, i8** %old_buffer2725, align 8
  %1471 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2727 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1471, i32 0, i32 1
  %1472 = load i64, i64* %allocated2727, align 8
  %cmp2728 = icmp eq i64 %1472, 65536
  br i1 %cmp2728, label %if.then.2730, label %if.end.2731

if.then.2730:                                     ; preds = %do.body.2724
  store i32 15, i32* %retval
  br label %return

if.end.2731:                                      ; preds = %do.body.2724
  %1473 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2732 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1473, i32 0, i32 1
  %1474 = load i64, i64* %allocated2732, align 8
  %shl2733 = shl i64 %1474, 1
  store i64 %shl2733, i64* %allocated2732, align 8
  %1475 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2734 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1475, i32 0, i32 1
  %1476 = load i64, i64* %allocated2734, align 8
  %cmp2735 = icmp ugt i64 %1476, 65536
  br i1 %cmp2735, label %if.then.2737, label %if.end.2739

if.then.2737:                                     ; preds = %if.end.2731
  %1477 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2738 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1477, i32 0, i32 1
  store i64 65536, i64* %allocated2738, align 8
  br label %if.end.2739

if.end.2739:                                      ; preds = %if.then.2737, %if.end.2731
  %1478 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2740 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1478, i32 0, i32 0
  %1479 = load i8*, i8** %buffer2740, align 8
  %1480 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2741 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1480, i32 0, i32 1
  %1481 = load i64, i64* %allocated2741, align 8
  %call2742 = call i8* @realloc(i8* %1479, i64 %1481) #1
  %1482 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2743 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1482, i32 0, i32 0
  store i8* %call2742, i8** %buffer2743, align 8
  %1483 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2744 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1483, i32 0, i32 0
  %1484 = load i8*, i8** %buffer2744, align 8
  %cmp2745 = icmp eq i8* %1484, null
  br i1 %cmp2745, label %if.then.2747, label %if.end.2748

if.then.2747:                                     ; preds = %if.end.2739
  store i32 12, i32* %retval
  br label %return

if.end.2748:                                      ; preds = %if.end.2739
  %1485 = load i8*, i8** %old_buffer2725, align 8
  %1486 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2749 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1486, i32 0, i32 0
  %1487 = load i8*, i8** %buffer2749, align 8
  %cmp2750 = icmp ne i8* %1485, %1487
  br i1 %cmp2750, label %if.then.2752, label %if.end.2787

if.then.2752:                                     ; preds = %if.end.2748
  %1488 = load i8*, i8** %b, align 8
  %1489 = load i8*, i8** %old_buffer2725, align 8
  %sub.ptr.lhs.cast2753 = ptrtoint i8* %1488 to i64
  %sub.ptr.rhs.cast2754 = ptrtoint i8* %1489 to i64
  %sub.ptr.sub2755 = sub i64 %sub.ptr.lhs.cast2753, %sub.ptr.rhs.cast2754
  %1490 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2756 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1490, i32 0, i32 0
  %1491 = load i8*, i8** %buffer2756, align 8
  %add.ptr2757 = getelementptr inbounds i8, i8* %1491, i64 %sub.ptr.sub2755
  store i8* %add.ptr2757, i8** %b, align 8
  %1492 = load i8*, i8** %begalt, align 8
  %1493 = load i8*, i8** %old_buffer2725, align 8
  %sub.ptr.lhs.cast2758 = ptrtoint i8* %1492 to i64
  %sub.ptr.rhs.cast2759 = ptrtoint i8* %1493 to i64
  %sub.ptr.sub2760 = sub i64 %sub.ptr.lhs.cast2758, %sub.ptr.rhs.cast2759
  %1494 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2761 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1494, i32 0, i32 0
  %1495 = load i8*, i8** %buffer2761, align 8
  %add.ptr2762 = getelementptr inbounds i8, i8* %1495, i64 %sub.ptr.sub2760
  store i8* %add.ptr2762, i8** %begalt, align 8
  %1496 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool2763 = icmp ne i8* %1496, null
  br i1 %tobool2763, label %if.then.2764, label %if.end.2770

if.then.2764:                                     ; preds = %if.then.2752
  %1497 = load i8*, i8** %fixup_alt_jump, align 8
  %1498 = load i8*, i8** %old_buffer2725, align 8
  %sub.ptr.lhs.cast2765 = ptrtoint i8* %1497 to i64
  %sub.ptr.rhs.cast2766 = ptrtoint i8* %1498 to i64
  %sub.ptr.sub2767 = sub i64 %sub.ptr.lhs.cast2765, %sub.ptr.rhs.cast2766
  %1499 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2768 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1499, i32 0, i32 0
  %1500 = load i8*, i8** %buffer2768, align 8
  %add.ptr2769 = getelementptr inbounds i8, i8* %1500, i64 %sub.ptr.sub2767
  store i8* %add.ptr2769, i8** %fixup_alt_jump, align 8
  br label %if.end.2770

if.end.2770:                                      ; preds = %if.then.2764, %if.then.2752
  %1501 = load i8*, i8** %laststart, align 8
  %tobool2771 = icmp ne i8* %1501, null
  br i1 %tobool2771, label %if.then.2772, label %if.end.2778

if.then.2772:                                     ; preds = %if.end.2770
  %1502 = load i8*, i8** %laststart, align 8
  %1503 = load i8*, i8** %old_buffer2725, align 8
  %sub.ptr.lhs.cast2773 = ptrtoint i8* %1502 to i64
  %sub.ptr.rhs.cast2774 = ptrtoint i8* %1503 to i64
  %sub.ptr.sub2775 = sub i64 %sub.ptr.lhs.cast2773, %sub.ptr.rhs.cast2774
  %1504 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2776 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1504, i32 0, i32 0
  %1505 = load i8*, i8** %buffer2776, align 8
  %add.ptr2777 = getelementptr inbounds i8, i8* %1505, i64 %sub.ptr.sub2775
  store i8* %add.ptr2777, i8** %laststart, align 8
  br label %if.end.2778

if.end.2778:                                      ; preds = %if.then.2772, %if.end.2770
  %1506 = load i8*, i8** %pending_exact, align 8
  %tobool2779 = icmp ne i8* %1506, null
  br i1 %tobool2779, label %if.then.2780, label %if.end.2786

if.then.2780:                                     ; preds = %if.end.2778
  %1507 = load i8*, i8** %pending_exact, align 8
  %1508 = load i8*, i8** %old_buffer2725, align 8
  %sub.ptr.lhs.cast2781 = ptrtoint i8* %1507 to i64
  %sub.ptr.rhs.cast2782 = ptrtoint i8* %1508 to i64
  %sub.ptr.sub2783 = sub i64 %sub.ptr.lhs.cast2781, %sub.ptr.rhs.cast2782
  %1509 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2784 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1509, i32 0, i32 0
  %1510 = load i8*, i8** %buffer2784, align 8
  %add.ptr2785 = getelementptr inbounds i8, i8* %1510, i64 %sub.ptr.sub2783
  store i8* %add.ptr2785, i8** %pending_exact, align 8
  br label %if.end.2786

if.end.2786:                                      ; preds = %if.then.2780, %if.end.2778
  br label %if.end.2787

if.end.2787:                                      ; preds = %if.end.2786, %if.end.2748
  br label %do.end.2788

do.end.2788:                                      ; preds = %if.end.2787
  br label %while.cond.2714

while.end.2789:                                   ; preds = %while.cond.2714
  %1511 = load i8*, i8** %b, align 8
  %incdec.ptr2790 = getelementptr inbounds i8, i8* %1511, i32 1
  store i8* %incdec.ptr2790, i8** %b, align 8
  store i8 25, i8* %1511, align 1
  br label %do.end.2791

do.end.2791:                                      ; preds = %while.end.2789
  br label %sw.epilog

sw.bb.2792:                                       ; preds = %do.end.1609
  %1512 = load i64, i64* %syntax.addr, align 8
  %and2793 = and i64 %1512, 524288
  %tobool2794 = icmp ne i64 %and2793, 0
  br i1 %tobool2794, label %if.then.2795, label %if.end.2796

if.then.2795:                                     ; preds = %sw.bb.2792
  br label %normal_char

if.end.2796:                                      ; preds = %sw.bb.2792
  br label %do.body.2797

do.body.2797:                                     ; preds = %if.end.2796
  br label %while.cond.2798

while.cond.2798:                                  ; preds = %do.end.2872, %do.body.2797
  %1513 = load i8*, i8** %b, align 8
  %1514 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2799 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1514, i32 0, i32 0
  %1515 = load i8*, i8** %buffer2799, align 8
  %sub.ptr.lhs.cast2800 = ptrtoint i8* %1513 to i64
  %sub.ptr.rhs.cast2801 = ptrtoint i8* %1515 to i64
  %sub.ptr.sub2802 = sub i64 %sub.ptr.lhs.cast2800, %sub.ptr.rhs.cast2801
  %add2803 = add nsw i64 %sub.ptr.sub2802, 1
  %1516 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2804 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1516, i32 0, i32 1
  %1517 = load i64, i64* %allocated2804, align 8
  %cmp2805 = icmp ugt i64 %add2803, %1517
  br i1 %cmp2805, label %while.body.2807, label %while.end.2873

while.body.2807:                                  ; preds = %while.cond.2798
  br label %do.body.2808

do.body.2808:                                     ; preds = %while.body.2807
  %1518 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2810 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1518, i32 0, i32 0
  %1519 = load i8*, i8** %buffer2810, align 8
  store i8* %1519, i8** %old_buffer2809, align 8
  %1520 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2811 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1520, i32 0, i32 1
  %1521 = load i64, i64* %allocated2811, align 8
  %cmp2812 = icmp eq i64 %1521, 65536
  br i1 %cmp2812, label %if.then.2814, label %if.end.2815

if.then.2814:                                     ; preds = %do.body.2808
  store i32 15, i32* %retval
  br label %return

if.end.2815:                                      ; preds = %do.body.2808
  %1522 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2816 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1522, i32 0, i32 1
  %1523 = load i64, i64* %allocated2816, align 8
  %shl2817 = shl i64 %1523, 1
  store i64 %shl2817, i64* %allocated2816, align 8
  %1524 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2818 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1524, i32 0, i32 1
  %1525 = load i64, i64* %allocated2818, align 8
  %cmp2819 = icmp ugt i64 %1525, 65536
  br i1 %cmp2819, label %if.then.2821, label %if.end.2823

if.then.2821:                                     ; preds = %if.end.2815
  %1526 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2822 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1526, i32 0, i32 1
  store i64 65536, i64* %allocated2822, align 8
  br label %if.end.2823

if.end.2823:                                      ; preds = %if.then.2821, %if.end.2815
  %1527 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2824 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1527, i32 0, i32 0
  %1528 = load i8*, i8** %buffer2824, align 8
  %1529 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2825 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1529, i32 0, i32 1
  %1530 = load i64, i64* %allocated2825, align 8
  %call2826 = call i8* @realloc(i8* %1528, i64 %1530) #1
  %1531 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2827 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1531, i32 0, i32 0
  store i8* %call2826, i8** %buffer2827, align 8
  %1532 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2828 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1532, i32 0, i32 0
  %1533 = load i8*, i8** %buffer2828, align 8
  %cmp2829 = icmp eq i8* %1533, null
  br i1 %cmp2829, label %if.then.2831, label %if.end.2832

if.then.2831:                                     ; preds = %if.end.2823
  store i32 12, i32* %retval
  br label %return

if.end.2832:                                      ; preds = %if.end.2823
  %1534 = load i8*, i8** %old_buffer2809, align 8
  %1535 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2833 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1535, i32 0, i32 0
  %1536 = load i8*, i8** %buffer2833, align 8
  %cmp2834 = icmp ne i8* %1534, %1536
  br i1 %cmp2834, label %if.then.2836, label %if.end.2871

if.then.2836:                                     ; preds = %if.end.2832
  %1537 = load i8*, i8** %b, align 8
  %1538 = load i8*, i8** %old_buffer2809, align 8
  %sub.ptr.lhs.cast2837 = ptrtoint i8* %1537 to i64
  %sub.ptr.rhs.cast2838 = ptrtoint i8* %1538 to i64
  %sub.ptr.sub2839 = sub i64 %sub.ptr.lhs.cast2837, %sub.ptr.rhs.cast2838
  %1539 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2840 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1539, i32 0, i32 0
  %1540 = load i8*, i8** %buffer2840, align 8
  %add.ptr2841 = getelementptr inbounds i8, i8* %1540, i64 %sub.ptr.sub2839
  store i8* %add.ptr2841, i8** %b, align 8
  %1541 = load i8*, i8** %begalt, align 8
  %1542 = load i8*, i8** %old_buffer2809, align 8
  %sub.ptr.lhs.cast2842 = ptrtoint i8* %1541 to i64
  %sub.ptr.rhs.cast2843 = ptrtoint i8* %1542 to i64
  %sub.ptr.sub2844 = sub i64 %sub.ptr.lhs.cast2842, %sub.ptr.rhs.cast2843
  %1543 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2845 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1543, i32 0, i32 0
  %1544 = load i8*, i8** %buffer2845, align 8
  %add.ptr2846 = getelementptr inbounds i8, i8* %1544, i64 %sub.ptr.sub2844
  store i8* %add.ptr2846, i8** %begalt, align 8
  %1545 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool2847 = icmp ne i8* %1545, null
  br i1 %tobool2847, label %if.then.2848, label %if.end.2854

if.then.2848:                                     ; preds = %if.then.2836
  %1546 = load i8*, i8** %fixup_alt_jump, align 8
  %1547 = load i8*, i8** %old_buffer2809, align 8
  %sub.ptr.lhs.cast2849 = ptrtoint i8* %1546 to i64
  %sub.ptr.rhs.cast2850 = ptrtoint i8* %1547 to i64
  %sub.ptr.sub2851 = sub i64 %sub.ptr.lhs.cast2849, %sub.ptr.rhs.cast2850
  %1548 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2852 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1548, i32 0, i32 0
  %1549 = load i8*, i8** %buffer2852, align 8
  %add.ptr2853 = getelementptr inbounds i8, i8* %1549, i64 %sub.ptr.sub2851
  store i8* %add.ptr2853, i8** %fixup_alt_jump, align 8
  br label %if.end.2854

if.end.2854:                                      ; preds = %if.then.2848, %if.then.2836
  %1550 = load i8*, i8** %laststart, align 8
  %tobool2855 = icmp ne i8* %1550, null
  br i1 %tobool2855, label %if.then.2856, label %if.end.2862

if.then.2856:                                     ; preds = %if.end.2854
  %1551 = load i8*, i8** %laststart, align 8
  %1552 = load i8*, i8** %old_buffer2809, align 8
  %sub.ptr.lhs.cast2857 = ptrtoint i8* %1551 to i64
  %sub.ptr.rhs.cast2858 = ptrtoint i8* %1552 to i64
  %sub.ptr.sub2859 = sub i64 %sub.ptr.lhs.cast2857, %sub.ptr.rhs.cast2858
  %1553 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2860 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1553, i32 0, i32 0
  %1554 = load i8*, i8** %buffer2860, align 8
  %add.ptr2861 = getelementptr inbounds i8, i8* %1554, i64 %sub.ptr.sub2859
  store i8* %add.ptr2861, i8** %laststart, align 8
  br label %if.end.2862

if.end.2862:                                      ; preds = %if.then.2856, %if.end.2854
  %1555 = load i8*, i8** %pending_exact, align 8
  %tobool2863 = icmp ne i8* %1555, null
  br i1 %tobool2863, label %if.then.2864, label %if.end.2870

if.then.2864:                                     ; preds = %if.end.2862
  %1556 = load i8*, i8** %pending_exact, align 8
  %1557 = load i8*, i8** %old_buffer2809, align 8
  %sub.ptr.lhs.cast2865 = ptrtoint i8* %1556 to i64
  %sub.ptr.rhs.cast2866 = ptrtoint i8* %1557 to i64
  %sub.ptr.sub2867 = sub i64 %sub.ptr.lhs.cast2865, %sub.ptr.rhs.cast2866
  %1558 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2868 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1558, i32 0, i32 0
  %1559 = load i8*, i8** %buffer2868, align 8
  %add.ptr2869 = getelementptr inbounds i8, i8* %1559, i64 %sub.ptr.sub2867
  store i8* %add.ptr2869, i8** %pending_exact, align 8
  br label %if.end.2870

if.end.2870:                                      ; preds = %if.then.2864, %if.end.2862
  br label %if.end.2871

if.end.2871:                                      ; preds = %if.end.2870, %if.end.2832
  br label %do.end.2872

do.end.2872:                                      ; preds = %if.end.2871
  br label %while.cond.2798

while.end.2873:                                   ; preds = %while.cond.2798
  %1560 = load i8*, i8** %b, align 8
  %incdec.ptr2874 = getelementptr inbounds i8, i8* %1560, i32 1
  store i8* %incdec.ptr2874, i8** %b, align 8
  store i8 26, i8* %1560, align 1
  br label %do.end.2875

do.end.2875:                                      ; preds = %while.end.2873
  br label %sw.epilog

sw.bb.2876:                                       ; preds = %do.end.1609
  %1561 = load i64, i64* %syntax.addr, align 8
  %and2877 = and i64 %1561, 524288
  %tobool2878 = icmp ne i64 %and2877, 0
  br i1 %tobool2878, label %if.then.2879, label %if.end.2880

if.then.2879:                                     ; preds = %sw.bb.2876
  br label %normal_char

if.end.2880:                                      ; preds = %sw.bb.2876
  br label %do.body.2881

do.body.2881:                                     ; preds = %if.end.2880
  br label %while.cond.2882

while.cond.2882:                                  ; preds = %do.end.2956, %do.body.2881
  %1562 = load i8*, i8** %b, align 8
  %1563 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2883 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1563, i32 0, i32 0
  %1564 = load i8*, i8** %buffer2883, align 8
  %sub.ptr.lhs.cast2884 = ptrtoint i8* %1562 to i64
  %sub.ptr.rhs.cast2885 = ptrtoint i8* %1564 to i64
  %sub.ptr.sub2886 = sub i64 %sub.ptr.lhs.cast2884, %sub.ptr.rhs.cast2885
  %add2887 = add nsw i64 %sub.ptr.sub2886, 1
  %1565 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2888 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1565, i32 0, i32 1
  %1566 = load i64, i64* %allocated2888, align 8
  %cmp2889 = icmp ugt i64 %add2887, %1566
  br i1 %cmp2889, label %while.body.2891, label %while.end.2957

while.body.2891:                                  ; preds = %while.cond.2882
  br label %do.body.2892

do.body.2892:                                     ; preds = %while.body.2891
  %1567 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2894 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1567, i32 0, i32 0
  %1568 = load i8*, i8** %buffer2894, align 8
  store i8* %1568, i8** %old_buffer2893, align 8
  %1569 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2895 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1569, i32 0, i32 1
  %1570 = load i64, i64* %allocated2895, align 8
  %cmp2896 = icmp eq i64 %1570, 65536
  br i1 %cmp2896, label %if.then.2898, label %if.end.2899

if.then.2898:                                     ; preds = %do.body.2892
  store i32 15, i32* %retval
  br label %return

if.end.2899:                                      ; preds = %do.body.2892
  %1571 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2900 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1571, i32 0, i32 1
  %1572 = load i64, i64* %allocated2900, align 8
  %shl2901 = shl i64 %1572, 1
  store i64 %shl2901, i64* %allocated2900, align 8
  %1573 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2902 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1573, i32 0, i32 1
  %1574 = load i64, i64* %allocated2902, align 8
  %cmp2903 = icmp ugt i64 %1574, 65536
  br i1 %cmp2903, label %if.then.2905, label %if.end.2907

if.then.2905:                                     ; preds = %if.end.2899
  %1575 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2906 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1575, i32 0, i32 1
  store i64 65536, i64* %allocated2906, align 8
  br label %if.end.2907

if.end.2907:                                      ; preds = %if.then.2905, %if.end.2899
  %1576 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2908 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1576, i32 0, i32 0
  %1577 = load i8*, i8** %buffer2908, align 8
  %1578 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2909 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1578, i32 0, i32 1
  %1579 = load i64, i64* %allocated2909, align 8
  %call2910 = call i8* @realloc(i8* %1577, i64 %1579) #1
  %1580 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2911 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1580, i32 0, i32 0
  store i8* %call2910, i8** %buffer2911, align 8
  %1581 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2912 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1581, i32 0, i32 0
  %1582 = load i8*, i8** %buffer2912, align 8
  %cmp2913 = icmp eq i8* %1582, null
  br i1 %cmp2913, label %if.then.2915, label %if.end.2916

if.then.2915:                                     ; preds = %if.end.2907
  store i32 12, i32* %retval
  br label %return

if.end.2916:                                      ; preds = %if.end.2907
  %1583 = load i8*, i8** %old_buffer2893, align 8
  %1584 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2917 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1584, i32 0, i32 0
  %1585 = load i8*, i8** %buffer2917, align 8
  %cmp2918 = icmp ne i8* %1583, %1585
  br i1 %cmp2918, label %if.then.2920, label %if.end.2955

if.then.2920:                                     ; preds = %if.end.2916
  %1586 = load i8*, i8** %b, align 8
  %1587 = load i8*, i8** %old_buffer2893, align 8
  %sub.ptr.lhs.cast2921 = ptrtoint i8* %1586 to i64
  %sub.ptr.rhs.cast2922 = ptrtoint i8* %1587 to i64
  %sub.ptr.sub2923 = sub i64 %sub.ptr.lhs.cast2921, %sub.ptr.rhs.cast2922
  %1588 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2924 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1588, i32 0, i32 0
  %1589 = load i8*, i8** %buffer2924, align 8
  %add.ptr2925 = getelementptr inbounds i8, i8* %1589, i64 %sub.ptr.sub2923
  store i8* %add.ptr2925, i8** %b, align 8
  %1590 = load i8*, i8** %begalt, align 8
  %1591 = load i8*, i8** %old_buffer2893, align 8
  %sub.ptr.lhs.cast2926 = ptrtoint i8* %1590 to i64
  %sub.ptr.rhs.cast2927 = ptrtoint i8* %1591 to i64
  %sub.ptr.sub2928 = sub i64 %sub.ptr.lhs.cast2926, %sub.ptr.rhs.cast2927
  %1592 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2929 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1592, i32 0, i32 0
  %1593 = load i8*, i8** %buffer2929, align 8
  %add.ptr2930 = getelementptr inbounds i8, i8* %1593, i64 %sub.ptr.sub2928
  store i8* %add.ptr2930, i8** %begalt, align 8
  %1594 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool2931 = icmp ne i8* %1594, null
  br i1 %tobool2931, label %if.then.2932, label %if.end.2938

if.then.2932:                                     ; preds = %if.then.2920
  %1595 = load i8*, i8** %fixup_alt_jump, align 8
  %1596 = load i8*, i8** %old_buffer2893, align 8
  %sub.ptr.lhs.cast2933 = ptrtoint i8* %1595 to i64
  %sub.ptr.rhs.cast2934 = ptrtoint i8* %1596 to i64
  %sub.ptr.sub2935 = sub i64 %sub.ptr.lhs.cast2933, %sub.ptr.rhs.cast2934
  %1597 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2936 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1597, i32 0, i32 0
  %1598 = load i8*, i8** %buffer2936, align 8
  %add.ptr2937 = getelementptr inbounds i8, i8* %1598, i64 %sub.ptr.sub2935
  store i8* %add.ptr2937, i8** %fixup_alt_jump, align 8
  br label %if.end.2938

if.end.2938:                                      ; preds = %if.then.2932, %if.then.2920
  %1599 = load i8*, i8** %laststart, align 8
  %tobool2939 = icmp ne i8* %1599, null
  br i1 %tobool2939, label %if.then.2940, label %if.end.2946

if.then.2940:                                     ; preds = %if.end.2938
  %1600 = load i8*, i8** %laststart, align 8
  %1601 = load i8*, i8** %old_buffer2893, align 8
  %sub.ptr.lhs.cast2941 = ptrtoint i8* %1600 to i64
  %sub.ptr.rhs.cast2942 = ptrtoint i8* %1601 to i64
  %sub.ptr.sub2943 = sub i64 %sub.ptr.lhs.cast2941, %sub.ptr.rhs.cast2942
  %1602 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2944 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1602, i32 0, i32 0
  %1603 = load i8*, i8** %buffer2944, align 8
  %add.ptr2945 = getelementptr inbounds i8, i8* %1603, i64 %sub.ptr.sub2943
  store i8* %add.ptr2945, i8** %laststart, align 8
  br label %if.end.2946

if.end.2946:                                      ; preds = %if.then.2940, %if.end.2938
  %1604 = load i8*, i8** %pending_exact, align 8
  %tobool2947 = icmp ne i8* %1604, null
  br i1 %tobool2947, label %if.then.2948, label %if.end.2954

if.then.2948:                                     ; preds = %if.end.2946
  %1605 = load i8*, i8** %pending_exact, align 8
  %1606 = load i8*, i8** %old_buffer2893, align 8
  %sub.ptr.lhs.cast2949 = ptrtoint i8* %1605 to i64
  %sub.ptr.rhs.cast2950 = ptrtoint i8* %1606 to i64
  %sub.ptr.sub2951 = sub i64 %sub.ptr.lhs.cast2949, %sub.ptr.rhs.cast2950
  %1607 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2952 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1607, i32 0, i32 0
  %1608 = load i8*, i8** %buffer2952, align 8
  %add.ptr2953 = getelementptr inbounds i8, i8* %1608, i64 %sub.ptr.sub2951
  store i8* %add.ptr2953, i8** %pending_exact, align 8
  br label %if.end.2954

if.end.2954:                                      ; preds = %if.then.2948, %if.end.2946
  br label %if.end.2955

if.end.2955:                                      ; preds = %if.end.2954, %if.end.2916
  br label %do.end.2956

do.end.2956:                                      ; preds = %if.end.2955
  br label %while.cond.2882

while.end.2957:                                   ; preds = %while.cond.2882
  %1609 = load i8*, i8** %b, align 8
  %incdec.ptr2958 = getelementptr inbounds i8, i8* %1609, i32 1
  store i8* %incdec.ptr2958, i8** %b, align 8
  store i8 27, i8* %1609, align 1
  br label %do.end.2959

do.end.2959:                                      ; preds = %while.end.2957
  br label %sw.epilog

sw.bb.2960:                                       ; preds = %do.end.1609
  %1610 = load i64, i64* %syntax.addr, align 8
  %and2961 = and i64 %1610, 524288
  %tobool2962 = icmp ne i64 %and2961, 0
  br i1 %tobool2962, label %if.then.2963, label %if.end.2964

if.then.2963:                                     ; preds = %sw.bb.2960
  br label %normal_char

if.end.2964:                                      ; preds = %sw.bb.2960
  br label %do.body.2965

do.body.2965:                                     ; preds = %if.end.2964
  br label %while.cond.2966

while.cond.2966:                                  ; preds = %do.end.3040, %do.body.2965
  %1611 = load i8*, i8** %b, align 8
  %1612 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2967 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1612, i32 0, i32 0
  %1613 = load i8*, i8** %buffer2967, align 8
  %sub.ptr.lhs.cast2968 = ptrtoint i8* %1611 to i64
  %sub.ptr.rhs.cast2969 = ptrtoint i8* %1613 to i64
  %sub.ptr.sub2970 = sub i64 %sub.ptr.lhs.cast2968, %sub.ptr.rhs.cast2969
  %add2971 = add nsw i64 %sub.ptr.sub2970, 1
  %1614 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2972 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1614, i32 0, i32 1
  %1615 = load i64, i64* %allocated2972, align 8
  %cmp2973 = icmp ugt i64 %add2971, %1615
  br i1 %cmp2973, label %while.body.2975, label %while.end.3041

while.body.2975:                                  ; preds = %while.cond.2966
  br label %do.body.2976

do.body.2976:                                     ; preds = %while.body.2975
  %1616 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2978 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1616, i32 0, i32 0
  %1617 = load i8*, i8** %buffer2978, align 8
  store i8* %1617, i8** %old_buffer2977, align 8
  %1618 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2979 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1618, i32 0, i32 1
  %1619 = load i64, i64* %allocated2979, align 8
  %cmp2980 = icmp eq i64 %1619, 65536
  br i1 %cmp2980, label %if.then.2982, label %if.end.2983

if.then.2982:                                     ; preds = %do.body.2976
  store i32 15, i32* %retval
  br label %return

if.end.2983:                                      ; preds = %do.body.2976
  %1620 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2984 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1620, i32 0, i32 1
  %1621 = load i64, i64* %allocated2984, align 8
  %shl2985 = shl i64 %1621, 1
  store i64 %shl2985, i64* %allocated2984, align 8
  %1622 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2986 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1622, i32 0, i32 1
  %1623 = load i64, i64* %allocated2986, align 8
  %cmp2987 = icmp ugt i64 %1623, 65536
  br i1 %cmp2987, label %if.then.2989, label %if.end.2991

if.then.2989:                                     ; preds = %if.end.2983
  %1624 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2990 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1624, i32 0, i32 1
  store i64 65536, i64* %allocated2990, align 8
  br label %if.end.2991

if.end.2991:                                      ; preds = %if.then.2989, %if.end.2983
  %1625 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2992 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1625, i32 0, i32 0
  %1626 = load i8*, i8** %buffer2992, align 8
  %1627 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated2993 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1627, i32 0, i32 1
  %1628 = load i64, i64* %allocated2993, align 8
  %call2994 = call i8* @realloc(i8* %1626, i64 %1628) #1
  %1629 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2995 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1629, i32 0, i32 0
  store i8* %call2994, i8** %buffer2995, align 8
  %1630 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer2996 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1630, i32 0, i32 0
  %1631 = load i8*, i8** %buffer2996, align 8
  %cmp2997 = icmp eq i8* %1631, null
  br i1 %cmp2997, label %if.then.2999, label %if.end.3000

if.then.2999:                                     ; preds = %if.end.2991
  store i32 12, i32* %retval
  br label %return

if.end.3000:                                      ; preds = %if.end.2991
  %1632 = load i8*, i8** %old_buffer2977, align 8
  %1633 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3001 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1633, i32 0, i32 0
  %1634 = load i8*, i8** %buffer3001, align 8
  %cmp3002 = icmp ne i8* %1632, %1634
  br i1 %cmp3002, label %if.then.3004, label %if.end.3039

if.then.3004:                                     ; preds = %if.end.3000
  %1635 = load i8*, i8** %b, align 8
  %1636 = load i8*, i8** %old_buffer2977, align 8
  %sub.ptr.lhs.cast3005 = ptrtoint i8* %1635 to i64
  %sub.ptr.rhs.cast3006 = ptrtoint i8* %1636 to i64
  %sub.ptr.sub3007 = sub i64 %sub.ptr.lhs.cast3005, %sub.ptr.rhs.cast3006
  %1637 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3008 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1637, i32 0, i32 0
  %1638 = load i8*, i8** %buffer3008, align 8
  %add.ptr3009 = getelementptr inbounds i8, i8* %1638, i64 %sub.ptr.sub3007
  store i8* %add.ptr3009, i8** %b, align 8
  %1639 = load i8*, i8** %begalt, align 8
  %1640 = load i8*, i8** %old_buffer2977, align 8
  %sub.ptr.lhs.cast3010 = ptrtoint i8* %1639 to i64
  %sub.ptr.rhs.cast3011 = ptrtoint i8* %1640 to i64
  %sub.ptr.sub3012 = sub i64 %sub.ptr.lhs.cast3010, %sub.ptr.rhs.cast3011
  %1641 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3013 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1641, i32 0, i32 0
  %1642 = load i8*, i8** %buffer3013, align 8
  %add.ptr3014 = getelementptr inbounds i8, i8* %1642, i64 %sub.ptr.sub3012
  store i8* %add.ptr3014, i8** %begalt, align 8
  %1643 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool3015 = icmp ne i8* %1643, null
  br i1 %tobool3015, label %if.then.3016, label %if.end.3022

if.then.3016:                                     ; preds = %if.then.3004
  %1644 = load i8*, i8** %fixup_alt_jump, align 8
  %1645 = load i8*, i8** %old_buffer2977, align 8
  %sub.ptr.lhs.cast3017 = ptrtoint i8* %1644 to i64
  %sub.ptr.rhs.cast3018 = ptrtoint i8* %1645 to i64
  %sub.ptr.sub3019 = sub i64 %sub.ptr.lhs.cast3017, %sub.ptr.rhs.cast3018
  %1646 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3020 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1646, i32 0, i32 0
  %1647 = load i8*, i8** %buffer3020, align 8
  %add.ptr3021 = getelementptr inbounds i8, i8* %1647, i64 %sub.ptr.sub3019
  store i8* %add.ptr3021, i8** %fixup_alt_jump, align 8
  br label %if.end.3022

if.end.3022:                                      ; preds = %if.then.3016, %if.then.3004
  %1648 = load i8*, i8** %laststart, align 8
  %tobool3023 = icmp ne i8* %1648, null
  br i1 %tobool3023, label %if.then.3024, label %if.end.3030

if.then.3024:                                     ; preds = %if.end.3022
  %1649 = load i8*, i8** %laststart, align 8
  %1650 = load i8*, i8** %old_buffer2977, align 8
  %sub.ptr.lhs.cast3025 = ptrtoint i8* %1649 to i64
  %sub.ptr.rhs.cast3026 = ptrtoint i8* %1650 to i64
  %sub.ptr.sub3027 = sub i64 %sub.ptr.lhs.cast3025, %sub.ptr.rhs.cast3026
  %1651 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3028 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1651, i32 0, i32 0
  %1652 = load i8*, i8** %buffer3028, align 8
  %add.ptr3029 = getelementptr inbounds i8, i8* %1652, i64 %sub.ptr.sub3027
  store i8* %add.ptr3029, i8** %laststart, align 8
  br label %if.end.3030

if.end.3030:                                      ; preds = %if.then.3024, %if.end.3022
  %1653 = load i8*, i8** %pending_exact, align 8
  %tobool3031 = icmp ne i8* %1653, null
  br i1 %tobool3031, label %if.then.3032, label %if.end.3038

if.then.3032:                                     ; preds = %if.end.3030
  %1654 = load i8*, i8** %pending_exact, align 8
  %1655 = load i8*, i8** %old_buffer2977, align 8
  %sub.ptr.lhs.cast3033 = ptrtoint i8* %1654 to i64
  %sub.ptr.rhs.cast3034 = ptrtoint i8* %1655 to i64
  %sub.ptr.sub3035 = sub i64 %sub.ptr.lhs.cast3033, %sub.ptr.rhs.cast3034
  %1656 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3036 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1656, i32 0, i32 0
  %1657 = load i8*, i8** %buffer3036, align 8
  %add.ptr3037 = getelementptr inbounds i8, i8* %1657, i64 %sub.ptr.sub3035
  store i8* %add.ptr3037, i8** %pending_exact, align 8
  br label %if.end.3038

if.end.3038:                                      ; preds = %if.then.3032, %if.end.3030
  br label %if.end.3039

if.end.3039:                                      ; preds = %if.end.3038, %if.end.3000
  br label %do.end.3040

do.end.3040:                                      ; preds = %if.end.3039
  br label %while.cond.2966

while.end.3041:                                   ; preds = %while.cond.2966
  %1658 = load i8*, i8** %b, align 8
  %incdec.ptr3042 = getelementptr inbounds i8, i8* %1658, i32 1
  store i8* %incdec.ptr3042, i8** %b, align 8
  store i8 28, i8* %1658, align 1
  br label %do.end.3043

do.end.3043:                                      ; preds = %while.end.3041
  br label %sw.epilog

sw.bb.3044:                                       ; preds = %do.end.1609
  %1659 = load i64, i64* %syntax.addr, align 8
  %and3045 = and i64 %1659, 524288
  %tobool3046 = icmp ne i64 %and3045, 0
  br i1 %tobool3046, label %if.then.3047, label %if.end.3048

if.then.3047:                                     ; preds = %sw.bb.3044
  br label %normal_char

if.end.3048:                                      ; preds = %sw.bb.3044
  br label %do.body.3049

do.body.3049:                                     ; preds = %if.end.3048
  br label %while.cond.3050

while.cond.3050:                                  ; preds = %do.end.3124, %do.body.3049
  %1660 = load i8*, i8** %b, align 8
  %1661 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3051 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1661, i32 0, i32 0
  %1662 = load i8*, i8** %buffer3051, align 8
  %sub.ptr.lhs.cast3052 = ptrtoint i8* %1660 to i64
  %sub.ptr.rhs.cast3053 = ptrtoint i8* %1662 to i64
  %sub.ptr.sub3054 = sub i64 %sub.ptr.lhs.cast3052, %sub.ptr.rhs.cast3053
  %add3055 = add nsw i64 %sub.ptr.sub3054, 1
  %1663 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3056 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1663, i32 0, i32 1
  %1664 = load i64, i64* %allocated3056, align 8
  %cmp3057 = icmp ugt i64 %add3055, %1664
  br i1 %cmp3057, label %while.body.3059, label %while.end.3125

while.body.3059:                                  ; preds = %while.cond.3050
  br label %do.body.3060

do.body.3060:                                     ; preds = %while.body.3059
  %1665 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3062 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1665, i32 0, i32 0
  %1666 = load i8*, i8** %buffer3062, align 8
  store i8* %1666, i8** %old_buffer3061, align 8
  %1667 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3063 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1667, i32 0, i32 1
  %1668 = load i64, i64* %allocated3063, align 8
  %cmp3064 = icmp eq i64 %1668, 65536
  br i1 %cmp3064, label %if.then.3066, label %if.end.3067

if.then.3066:                                     ; preds = %do.body.3060
  store i32 15, i32* %retval
  br label %return

if.end.3067:                                      ; preds = %do.body.3060
  %1669 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3068 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1669, i32 0, i32 1
  %1670 = load i64, i64* %allocated3068, align 8
  %shl3069 = shl i64 %1670, 1
  store i64 %shl3069, i64* %allocated3068, align 8
  %1671 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3070 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1671, i32 0, i32 1
  %1672 = load i64, i64* %allocated3070, align 8
  %cmp3071 = icmp ugt i64 %1672, 65536
  br i1 %cmp3071, label %if.then.3073, label %if.end.3075

if.then.3073:                                     ; preds = %if.end.3067
  %1673 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3074 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1673, i32 0, i32 1
  store i64 65536, i64* %allocated3074, align 8
  br label %if.end.3075

if.end.3075:                                      ; preds = %if.then.3073, %if.end.3067
  %1674 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3076 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1674, i32 0, i32 0
  %1675 = load i8*, i8** %buffer3076, align 8
  %1676 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3077 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1676, i32 0, i32 1
  %1677 = load i64, i64* %allocated3077, align 8
  %call3078 = call i8* @realloc(i8* %1675, i64 %1677) #1
  %1678 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3079 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1678, i32 0, i32 0
  store i8* %call3078, i8** %buffer3079, align 8
  %1679 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3080 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1679, i32 0, i32 0
  %1680 = load i8*, i8** %buffer3080, align 8
  %cmp3081 = icmp eq i8* %1680, null
  br i1 %cmp3081, label %if.then.3083, label %if.end.3084

if.then.3083:                                     ; preds = %if.end.3075
  store i32 12, i32* %retval
  br label %return

if.end.3084:                                      ; preds = %if.end.3075
  %1681 = load i8*, i8** %old_buffer3061, align 8
  %1682 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3085 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1682, i32 0, i32 0
  %1683 = load i8*, i8** %buffer3085, align 8
  %cmp3086 = icmp ne i8* %1681, %1683
  br i1 %cmp3086, label %if.then.3088, label %if.end.3123

if.then.3088:                                     ; preds = %if.end.3084
  %1684 = load i8*, i8** %b, align 8
  %1685 = load i8*, i8** %old_buffer3061, align 8
  %sub.ptr.lhs.cast3089 = ptrtoint i8* %1684 to i64
  %sub.ptr.rhs.cast3090 = ptrtoint i8* %1685 to i64
  %sub.ptr.sub3091 = sub i64 %sub.ptr.lhs.cast3089, %sub.ptr.rhs.cast3090
  %1686 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3092 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1686, i32 0, i32 0
  %1687 = load i8*, i8** %buffer3092, align 8
  %add.ptr3093 = getelementptr inbounds i8, i8* %1687, i64 %sub.ptr.sub3091
  store i8* %add.ptr3093, i8** %b, align 8
  %1688 = load i8*, i8** %begalt, align 8
  %1689 = load i8*, i8** %old_buffer3061, align 8
  %sub.ptr.lhs.cast3094 = ptrtoint i8* %1688 to i64
  %sub.ptr.rhs.cast3095 = ptrtoint i8* %1689 to i64
  %sub.ptr.sub3096 = sub i64 %sub.ptr.lhs.cast3094, %sub.ptr.rhs.cast3095
  %1690 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3097 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1690, i32 0, i32 0
  %1691 = load i8*, i8** %buffer3097, align 8
  %add.ptr3098 = getelementptr inbounds i8, i8* %1691, i64 %sub.ptr.sub3096
  store i8* %add.ptr3098, i8** %begalt, align 8
  %1692 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool3099 = icmp ne i8* %1692, null
  br i1 %tobool3099, label %if.then.3100, label %if.end.3106

if.then.3100:                                     ; preds = %if.then.3088
  %1693 = load i8*, i8** %fixup_alt_jump, align 8
  %1694 = load i8*, i8** %old_buffer3061, align 8
  %sub.ptr.lhs.cast3101 = ptrtoint i8* %1693 to i64
  %sub.ptr.rhs.cast3102 = ptrtoint i8* %1694 to i64
  %sub.ptr.sub3103 = sub i64 %sub.ptr.lhs.cast3101, %sub.ptr.rhs.cast3102
  %1695 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3104 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1695, i32 0, i32 0
  %1696 = load i8*, i8** %buffer3104, align 8
  %add.ptr3105 = getelementptr inbounds i8, i8* %1696, i64 %sub.ptr.sub3103
  store i8* %add.ptr3105, i8** %fixup_alt_jump, align 8
  br label %if.end.3106

if.end.3106:                                      ; preds = %if.then.3100, %if.then.3088
  %1697 = load i8*, i8** %laststart, align 8
  %tobool3107 = icmp ne i8* %1697, null
  br i1 %tobool3107, label %if.then.3108, label %if.end.3114

if.then.3108:                                     ; preds = %if.end.3106
  %1698 = load i8*, i8** %laststart, align 8
  %1699 = load i8*, i8** %old_buffer3061, align 8
  %sub.ptr.lhs.cast3109 = ptrtoint i8* %1698 to i64
  %sub.ptr.rhs.cast3110 = ptrtoint i8* %1699 to i64
  %sub.ptr.sub3111 = sub i64 %sub.ptr.lhs.cast3109, %sub.ptr.rhs.cast3110
  %1700 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3112 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1700, i32 0, i32 0
  %1701 = load i8*, i8** %buffer3112, align 8
  %add.ptr3113 = getelementptr inbounds i8, i8* %1701, i64 %sub.ptr.sub3111
  store i8* %add.ptr3113, i8** %laststart, align 8
  br label %if.end.3114

if.end.3114:                                      ; preds = %if.then.3108, %if.end.3106
  %1702 = load i8*, i8** %pending_exact, align 8
  %tobool3115 = icmp ne i8* %1702, null
  br i1 %tobool3115, label %if.then.3116, label %if.end.3122

if.then.3116:                                     ; preds = %if.end.3114
  %1703 = load i8*, i8** %pending_exact, align 8
  %1704 = load i8*, i8** %old_buffer3061, align 8
  %sub.ptr.lhs.cast3117 = ptrtoint i8* %1703 to i64
  %sub.ptr.rhs.cast3118 = ptrtoint i8* %1704 to i64
  %sub.ptr.sub3119 = sub i64 %sub.ptr.lhs.cast3117, %sub.ptr.rhs.cast3118
  %1705 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3120 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1705, i32 0, i32 0
  %1706 = load i8*, i8** %buffer3120, align 8
  %add.ptr3121 = getelementptr inbounds i8, i8* %1706, i64 %sub.ptr.sub3119
  store i8* %add.ptr3121, i8** %pending_exact, align 8
  br label %if.end.3122

if.end.3122:                                      ; preds = %if.then.3116, %if.end.3114
  br label %if.end.3123

if.end.3123:                                      ; preds = %if.end.3122, %if.end.3084
  br label %do.end.3124

do.end.3124:                                      ; preds = %if.end.3123
  br label %while.cond.3050

while.end.3125:                                   ; preds = %while.cond.3050
  %1707 = load i8*, i8** %b, align 8
  %incdec.ptr3126 = getelementptr inbounds i8, i8* %1707, i32 1
  store i8* %incdec.ptr3126, i8** %b, align 8
  store i8 29, i8* %1707, align 1
  br label %do.end.3127

do.end.3127:                                      ; preds = %while.end.3125
  br label %sw.epilog

sw.bb.3128:                                       ; preds = %do.end.1609
  %1708 = load i64, i64* %syntax.addr, align 8
  %and3129 = and i64 %1708, 524288
  %tobool3130 = icmp ne i64 %and3129, 0
  br i1 %tobool3130, label %if.then.3131, label %if.end.3132

if.then.3131:                                     ; preds = %sw.bb.3128
  br label %normal_char

if.end.3132:                                      ; preds = %sw.bb.3128
  br label %do.body.3133

do.body.3133:                                     ; preds = %if.end.3132
  br label %while.cond.3134

while.cond.3134:                                  ; preds = %do.end.3208, %do.body.3133
  %1709 = load i8*, i8** %b, align 8
  %1710 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3135 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1710, i32 0, i32 0
  %1711 = load i8*, i8** %buffer3135, align 8
  %sub.ptr.lhs.cast3136 = ptrtoint i8* %1709 to i64
  %sub.ptr.rhs.cast3137 = ptrtoint i8* %1711 to i64
  %sub.ptr.sub3138 = sub i64 %sub.ptr.lhs.cast3136, %sub.ptr.rhs.cast3137
  %add3139 = add nsw i64 %sub.ptr.sub3138, 1
  %1712 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3140 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1712, i32 0, i32 1
  %1713 = load i64, i64* %allocated3140, align 8
  %cmp3141 = icmp ugt i64 %add3139, %1713
  br i1 %cmp3141, label %while.body.3143, label %while.end.3209

while.body.3143:                                  ; preds = %while.cond.3134
  br label %do.body.3144

do.body.3144:                                     ; preds = %while.body.3143
  %1714 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3146 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1714, i32 0, i32 0
  %1715 = load i8*, i8** %buffer3146, align 8
  store i8* %1715, i8** %old_buffer3145, align 8
  %1716 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3147 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1716, i32 0, i32 1
  %1717 = load i64, i64* %allocated3147, align 8
  %cmp3148 = icmp eq i64 %1717, 65536
  br i1 %cmp3148, label %if.then.3150, label %if.end.3151

if.then.3150:                                     ; preds = %do.body.3144
  store i32 15, i32* %retval
  br label %return

if.end.3151:                                      ; preds = %do.body.3144
  %1718 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3152 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1718, i32 0, i32 1
  %1719 = load i64, i64* %allocated3152, align 8
  %shl3153 = shl i64 %1719, 1
  store i64 %shl3153, i64* %allocated3152, align 8
  %1720 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3154 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1720, i32 0, i32 1
  %1721 = load i64, i64* %allocated3154, align 8
  %cmp3155 = icmp ugt i64 %1721, 65536
  br i1 %cmp3155, label %if.then.3157, label %if.end.3159

if.then.3157:                                     ; preds = %if.end.3151
  %1722 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3158 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1722, i32 0, i32 1
  store i64 65536, i64* %allocated3158, align 8
  br label %if.end.3159

if.end.3159:                                      ; preds = %if.then.3157, %if.end.3151
  %1723 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3160 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1723, i32 0, i32 0
  %1724 = load i8*, i8** %buffer3160, align 8
  %1725 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3161 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1725, i32 0, i32 1
  %1726 = load i64, i64* %allocated3161, align 8
  %call3162 = call i8* @realloc(i8* %1724, i64 %1726) #1
  %1727 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3163 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1727, i32 0, i32 0
  store i8* %call3162, i8** %buffer3163, align 8
  %1728 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3164 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1728, i32 0, i32 0
  %1729 = load i8*, i8** %buffer3164, align 8
  %cmp3165 = icmp eq i8* %1729, null
  br i1 %cmp3165, label %if.then.3167, label %if.end.3168

if.then.3167:                                     ; preds = %if.end.3159
  store i32 12, i32* %retval
  br label %return

if.end.3168:                                      ; preds = %if.end.3159
  %1730 = load i8*, i8** %old_buffer3145, align 8
  %1731 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3169 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1731, i32 0, i32 0
  %1732 = load i8*, i8** %buffer3169, align 8
  %cmp3170 = icmp ne i8* %1730, %1732
  br i1 %cmp3170, label %if.then.3172, label %if.end.3207

if.then.3172:                                     ; preds = %if.end.3168
  %1733 = load i8*, i8** %b, align 8
  %1734 = load i8*, i8** %old_buffer3145, align 8
  %sub.ptr.lhs.cast3173 = ptrtoint i8* %1733 to i64
  %sub.ptr.rhs.cast3174 = ptrtoint i8* %1734 to i64
  %sub.ptr.sub3175 = sub i64 %sub.ptr.lhs.cast3173, %sub.ptr.rhs.cast3174
  %1735 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3176 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1735, i32 0, i32 0
  %1736 = load i8*, i8** %buffer3176, align 8
  %add.ptr3177 = getelementptr inbounds i8, i8* %1736, i64 %sub.ptr.sub3175
  store i8* %add.ptr3177, i8** %b, align 8
  %1737 = load i8*, i8** %begalt, align 8
  %1738 = load i8*, i8** %old_buffer3145, align 8
  %sub.ptr.lhs.cast3178 = ptrtoint i8* %1737 to i64
  %sub.ptr.rhs.cast3179 = ptrtoint i8* %1738 to i64
  %sub.ptr.sub3180 = sub i64 %sub.ptr.lhs.cast3178, %sub.ptr.rhs.cast3179
  %1739 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3181 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1739, i32 0, i32 0
  %1740 = load i8*, i8** %buffer3181, align 8
  %add.ptr3182 = getelementptr inbounds i8, i8* %1740, i64 %sub.ptr.sub3180
  store i8* %add.ptr3182, i8** %begalt, align 8
  %1741 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool3183 = icmp ne i8* %1741, null
  br i1 %tobool3183, label %if.then.3184, label %if.end.3190

if.then.3184:                                     ; preds = %if.then.3172
  %1742 = load i8*, i8** %fixup_alt_jump, align 8
  %1743 = load i8*, i8** %old_buffer3145, align 8
  %sub.ptr.lhs.cast3185 = ptrtoint i8* %1742 to i64
  %sub.ptr.rhs.cast3186 = ptrtoint i8* %1743 to i64
  %sub.ptr.sub3187 = sub i64 %sub.ptr.lhs.cast3185, %sub.ptr.rhs.cast3186
  %1744 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3188 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1744, i32 0, i32 0
  %1745 = load i8*, i8** %buffer3188, align 8
  %add.ptr3189 = getelementptr inbounds i8, i8* %1745, i64 %sub.ptr.sub3187
  store i8* %add.ptr3189, i8** %fixup_alt_jump, align 8
  br label %if.end.3190

if.end.3190:                                      ; preds = %if.then.3184, %if.then.3172
  %1746 = load i8*, i8** %laststart, align 8
  %tobool3191 = icmp ne i8* %1746, null
  br i1 %tobool3191, label %if.then.3192, label %if.end.3198

if.then.3192:                                     ; preds = %if.end.3190
  %1747 = load i8*, i8** %laststart, align 8
  %1748 = load i8*, i8** %old_buffer3145, align 8
  %sub.ptr.lhs.cast3193 = ptrtoint i8* %1747 to i64
  %sub.ptr.rhs.cast3194 = ptrtoint i8* %1748 to i64
  %sub.ptr.sub3195 = sub i64 %sub.ptr.lhs.cast3193, %sub.ptr.rhs.cast3194
  %1749 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3196 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1749, i32 0, i32 0
  %1750 = load i8*, i8** %buffer3196, align 8
  %add.ptr3197 = getelementptr inbounds i8, i8* %1750, i64 %sub.ptr.sub3195
  store i8* %add.ptr3197, i8** %laststart, align 8
  br label %if.end.3198

if.end.3198:                                      ; preds = %if.then.3192, %if.end.3190
  %1751 = load i8*, i8** %pending_exact, align 8
  %tobool3199 = icmp ne i8* %1751, null
  br i1 %tobool3199, label %if.then.3200, label %if.end.3206

if.then.3200:                                     ; preds = %if.end.3198
  %1752 = load i8*, i8** %pending_exact, align 8
  %1753 = load i8*, i8** %old_buffer3145, align 8
  %sub.ptr.lhs.cast3201 = ptrtoint i8* %1752 to i64
  %sub.ptr.rhs.cast3202 = ptrtoint i8* %1753 to i64
  %sub.ptr.sub3203 = sub i64 %sub.ptr.lhs.cast3201, %sub.ptr.rhs.cast3202
  %1754 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3204 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1754, i32 0, i32 0
  %1755 = load i8*, i8** %buffer3204, align 8
  %add.ptr3205 = getelementptr inbounds i8, i8* %1755, i64 %sub.ptr.sub3203
  store i8* %add.ptr3205, i8** %pending_exact, align 8
  br label %if.end.3206

if.end.3206:                                      ; preds = %if.then.3200, %if.end.3198
  br label %if.end.3207

if.end.3207:                                      ; preds = %if.end.3206, %if.end.3168
  br label %do.end.3208

do.end.3208:                                      ; preds = %if.end.3207
  br label %while.cond.3134

while.end.3209:                                   ; preds = %while.cond.3134
  %1756 = load i8*, i8** %b, align 8
  %incdec.ptr3210 = getelementptr inbounds i8, i8* %1756, i32 1
  store i8* %incdec.ptr3210, i8** %b, align 8
  store i8 11, i8* %1756, align 1
  br label %do.end.3211

do.end.3211:                                      ; preds = %while.end.3209
  br label %sw.epilog

sw.bb.3212:                                       ; preds = %do.end.1609
  %1757 = load i64, i64* %syntax.addr, align 8
  %and3213 = and i64 %1757, 524288
  %tobool3214 = icmp ne i64 %and3213, 0
  br i1 %tobool3214, label %if.then.3215, label %if.end.3216

if.then.3215:                                     ; preds = %sw.bb.3212
  br label %normal_char

if.end.3216:                                      ; preds = %sw.bb.3212
  br label %do.body.3217

do.body.3217:                                     ; preds = %if.end.3216
  br label %while.cond.3218

while.cond.3218:                                  ; preds = %do.end.3292, %do.body.3217
  %1758 = load i8*, i8** %b, align 8
  %1759 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3219 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1759, i32 0, i32 0
  %1760 = load i8*, i8** %buffer3219, align 8
  %sub.ptr.lhs.cast3220 = ptrtoint i8* %1758 to i64
  %sub.ptr.rhs.cast3221 = ptrtoint i8* %1760 to i64
  %sub.ptr.sub3222 = sub i64 %sub.ptr.lhs.cast3220, %sub.ptr.rhs.cast3221
  %add3223 = add nsw i64 %sub.ptr.sub3222, 1
  %1761 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3224 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1761, i32 0, i32 1
  %1762 = load i64, i64* %allocated3224, align 8
  %cmp3225 = icmp ugt i64 %add3223, %1762
  br i1 %cmp3225, label %while.body.3227, label %while.end.3293

while.body.3227:                                  ; preds = %while.cond.3218
  br label %do.body.3228

do.body.3228:                                     ; preds = %while.body.3227
  %1763 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3230 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1763, i32 0, i32 0
  %1764 = load i8*, i8** %buffer3230, align 8
  store i8* %1764, i8** %old_buffer3229, align 8
  %1765 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3231 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1765, i32 0, i32 1
  %1766 = load i64, i64* %allocated3231, align 8
  %cmp3232 = icmp eq i64 %1766, 65536
  br i1 %cmp3232, label %if.then.3234, label %if.end.3235

if.then.3234:                                     ; preds = %do.body.3228
  store i32 15, i32* %retval
  br label %return

if.end.3235:                                      ; preds = %do.body.3228
  %1767 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3236 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1767, i32 0, i32 1
  %1768 = load i64, i64* %allocated3236, align 8
  %shl3237 = shl i64 %1768, 1
  store i64 %shl3237, i64* %allocated3236, align 8
  %1769 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3238 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1769, i32 0, i32 1
  %1770 = load i64, i64* %allocated3238, align 8
  %cmp3239 = icmp ugt i64 %1770, 65536
  br i1 %cmp3239, label %if.then.3241, label %if.end.3243

if.then.3241:                                     ; preds = %if.end.3235
  %1771 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3242 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1771, i32 0, i32 1
  store i64 65536, i64* %allocated3242, align 8
  br label %if.end.3243

if.end.3243:                                      ; preds = %if.then.3241, %if.end.3235
  %1772 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3244 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1772, i32 0, i32 0
  %1773 = load i8*, i8** %buffer3244, align 8
  %1774 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3245 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1774, i32 0, i32 1
  %1775 = load i64, i64* %allocated3245, align 8
  %call3246 = call i8* @realloc(i8* %1773, i64 %1775) #1
  %1776 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3247 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1776, i32 0, i32 0
  store i8* %call3246, i8** %buffer3247, align 8
  %1777 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3248 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1777, i32 0, i32 0
  %1778 = load i8*, i8** %buffer3248, align 8
  %cmp3249 = icmp eq i8* %1778, null
  br i1 %cmp3249, label %if.then.3251, label %if.end.3252

if.then.3251:                                     ; preds = %if.end.3243
  store i32 12, i32* %retval
  br label %return

if.end.3252:                                      ; preds = %if.end.3243
  %1779 = load i8*, i8** %old_buffer3229, align 8
  %1780 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3253 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1780, i32 0, i32 0
  %1781 = load i8*, i8** %buffer3253, align 8
  %cmp3254 = icmp ne i8* %1779, %1781
  br i1 %cmp3254, label %if.then.3256, label %if.end.3291

if.then.3256:                                     ; preds = %if.end.3252
  %1782 = load i8*, i8** %b, align 8
  %1783 = load i8*, i8** %old_buffer3229, align 8
  %sub.ptr.lhs.cast3257 = ptrtoint i8* %1782 to i64
  %sub.ptr.rhs.cast3258 = ptrtoint i8* %1783 to i64
  %sub.ptr.sub3259 = sub i64 %sub.ptr.lhs.cast3257, %sub.ptr.rhs.cast3258
  %1784 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3260 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1784, i32 0, i32 0
  %1785 = load i8*, i8** %buffer3260, align 8
  %add.ptr3261 = getelementptr inbounds i8, i8* %1785, i64 %sub.ptr.sub3259
  store i8* %add.ptr3261, i8** %b, align 8
  %1786 = load i8*, i8** %begalt, align 8
  %1787 = load i8*, i8** %old_buffer3229, align 8
  %sub.ptr.lhs.cast3262 = ptrtoint i8* %1786 to i64
  %sub.ptr.rhs.cast3263 = ptrtoint i8* %1787 to i64
  %sub.ptr.sub3264 = sub i64 %sub.ptr.lhs.cast3262, %sub.ptr.rhs.cast3263
  %1788 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3265 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1788, i32 0, i32 0
  %1789 = load i8*, i8** %buffer3265, align 8
  %add.ptr3266 = getelementptr inbounds i8, i8* %1789, i64 %sub.ptr.sub3264
  store i8* %add.ptr3266, i8** %begalt, align 8
  %1790 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool3267 = icmp ne i8* %1790, null
  br i1 %tobool3267, label %if.then.3268, label %if.end.3274

if.then.3268:                                     ; preds = %if.then.3256
  %1791 = load i8*, i8** %fixup_alt_jump, align 8
  %1792 = load i8*, i8** %old_buffer3229, align 8
  %sub.ptr.lhs.cast3269 = ptrtoint i8* %1791 to i64
  %sub.ptr.rhs.cast3270 = ptrtoint i8* %1792 to i64
  %sub.ptr.sub3271 = sub i64 %sub.ptr.lhs.cast3269, %sub.ptr.rhs.cast3270
  %1793 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3272 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1793, i32 0, i32 0
  %1794 = load i8*, i8** %buffer3272, align 8
  %add.ptr3273 = getelementptr inbounds i8, i8* %1794, i64 %sub.ptr.sub3271
  store i8* %add.ptr3273, i8** %fixup_alt_jump, align 8
  br label %if.end.3274

if.end.3274:                                      ; preds = %if.then.3268, %if.then.3256
  %1795 = load i8*, i8** %laststart, align 8
  %tobool3275 = icmp ne i8* %1795, null
  br i1 %tobool3275, label %if.then.3276, label %if.end.3282

if.then.3276:                                     ; preds = %if.end.3274
  %1796 = load i8*, i8** %laststart, align 8
  %1797 = load i8*, i8** %old_buffer3229, align 8
  %sub.ptr.lhs.cast3277 = ptrtoint i8* %1796 to i64
  %sub.ptr.rhs.cast3278 = ptrtoint i8* %1797 to i64
  %sub.ptr.sub3279 = sub i64 %sub.ptr.lhs.cast3277, %sub.ptr.rhs.cast3278
  %1798 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3280 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1798, i32 0, i32 0
  %1799 = load i8*, i8** %buffer3280, align 8
  %add.ptr3281 = getelementptr inbounds i8, i8* %1799, i64 %sub.ptr.sub3279
  store i8* %add.ptr3281, i8** %laststart, align 8
  br label %if.end.3282

if.end.3282:                                      ; preds = %if.then.3276, %if.end.3274
  %1800 = load i8*, i8** %pending_exact, align 8
  %tobool3283 = icmp ne i8* %1800, null
  br i1 %tobool3283, label %if.then.3284, label %if.end.3290

if.then.3284:                                     ; preds = %if.end.3282
  %1801 = load i8*, i8** %pending_exact, align 8
  %1802 = load i8*, i8** %old_buffer3229, align 8
  %sub.ptr.lhs.cast3285 = ptrtoint i8* %1801 to i64
  %sub.ptr.rhs.cast3286 = ptrtoint i8* %1802 to i64
  %sub.ptr.sub3287 = sub i64 %sub.ptr.lhs.cast3285, %sub.ptr.rhs.cast3286
  %1803 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3288 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1803, i32 0, i32 0
  %1804 = load i8*, i8** %buffer3288, align 8
  %add.ptr3289 = getelementptr inbounds i8, i8* %1804, i64 %sub.ptr.sub3287
  store i8* %add.ptr3289, i8** %pending_exact, align 8
  br label %if.end.3290

if.end.3290:                                      ; preds = %if.then.3284, %if.end.3282
  br label %if.end.3291

if.end.3291:                                      ; preds = %if.end.3290, %if.end.3252
  br label %do.end.3292

do.end.3292:                                      ; preds = %if.end.3291
  br label %while.cond.3218

while.end.3293:                                   ; preds = %while.cond.3218
  %1805 = load i8*, i8** %b, align 8
  %incdec.ptr3294 = getelementptr inbounds i8, i8* %1805, i32 1
  store i8* %incdec.ptr3294, i8** %b, align 8
  store i8 12, i8* %1805, align 1
  br label %do.end.3295

do.end.3295:                                      ; preds = %while.end.3293
  br label %sw.epilog

sw.bb.3296:                                       ; preds = %do.end.1609, %do.end.1609, %do.end.1609, %do.end.1609, %do.end.1609, %do.end.1609, %do.end.1609, %do.end.1609, %do.end.1609
  %1806 = load i64, i64* %syntax.addr, align 8
  %and3297 = and i64 %1806, 16384
  %tobool3298 = icmp ne i64 %and3297, 0
  br i1 %tobool3298, label %if.then.3299, label %if.end.3300

if.then.3299:                                     ; preds = %sw.bb.3296
  br label %normal_char

if.end.3300:                                      ; preds = %sw.bb.3296
  %1807 = load i8, i8* %c, align 1
  %conv3301 = zext i8 %1807 to i32
  %sub3302 = sub nsw i32 %conv3301, 48
  %conv3303 = trunc i32 %sub3302 to i8
  store i8 %conv3303, i8* %c1, align 1
  %1808 = load i8, i8* %c1, align 1
  %conv3304 = zext i8 %1808 to i32
  %1809 = load i32, i32* %regnum, align 4
  %cmp3305 = icmp ugt i32 %conv3304, %1809
  br i1 %cmp3305, label %if.then.3307, label %if.end.3309

if.then.3307:                                     ; preds = %if.end.3300
  %stack3308 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %1810 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack3308, align 8
  %1811 = bitcast %struct.compile_stack_elt_t* %1810 to i8*
  call void @free(i8* %1811) #1
  store i32 6, i32* %retval
  br label %return

if.end.3309:                                      ; preds = %if.end.3300
  %1812 = load i8, i8* %c1, align 1
  %conv3310 = zext i8 %1812 to i32
  %1813 = bitcast %struct.compile_stack_type* %compile_stack to { %struct.compile_stack_elt_t*, i64 }*
  %1814 = getelementptr { %struct.compile_stack_elt_t*, i64 }, { %struct.compile_stack_elt_t*, i64 }* %1813, i32 0, i32 0
  %1815 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %1814, align 1
  %1816 = getelementptr { %struct.compile_stack_elt_t*, i64 }, { %struct.compile_stack_elt_t*, i64 }* %1813, i32 0, i32 1
  %1817 = load i64, i64* %1816, align 1
  %call3311 = call signext i8 @group_in_compile_stack(%struct.compile_stack_elt_t* %1815, i64 %1817, i32 %conv3310)
  %tobool3312 = icmp ne i8 %call3311, 0
  br i1 %tobool3312, label %if.then.3313, label %if.end.3314

if.then.3313:                                     ; preds = %if.end.3309
  br label %normal_char

if.end.3314:                                      ; preds = %if.end.3309
  %1818 = load i8*, i8** %b, align 8
  store i8* %1818, i8** %laststart, align 8
  br label %do.body.3315

do.body.3315:                                     ; preds = %if.end.3314
  br label %while.cond.3316

while.cond.3316:                                  ; preds = %do.end.3390, %do.body.3315
  %1819 = load i8*, i8** %b, align 8
  %1820 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3317 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1820, i32 0, i32 0
  %1821 = load i8*, i8** %buffer3317, align 8
  %sub.ptr.lhs.cast3318 = ptrtoint i8* %1819 to i64
  %sub.ptr.rhs.cast3319 = ptrtoint i8* %1821 to i64
  %sub.ptr.sub3320 = sub i64 %sub.ptr.lhs.cast3318, %sub.ptr.rhs.cast3319
  %add3321 = add nsw i64 %sub.ptr.sub3320, 2
  %1822 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3322 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1822, i32 0, i32 1
  %1823 = load i64, i64* %allocated3322, align 8
  %cmp3323 = icmp ugt i64 %add3321, %1823
  br i1 %cmp3323, label %while.body.3325, label %while.end.3391

while.body.3325:                                  ; preds = %while.cond.3316
  br label %do.body.3326

do.body.3326:                                     ; preds = %while.body.3325
  %1824 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3328 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1824, i32 0, i32 0
  %1825 = load i8*, i8** %buffer3328, align 8
  store i8* %1825, i8** %old_buffer3327, align 8
  %1826 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3329 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1826, i32 0, i32 1
  %1827 = load i64, i64* %allocated3329, align 8
  %cmp3330 = icmp eq i64 %1827, 65536
  br i1 %cmp3330, label %if.then.3332, label %if.end.3333

if.then.3332:                                     ; preds = %do.body.3326
  store i32 15, i32* %retval
  br label %return

if.end.3333:                                      ; preds = %do.body.3326
  %1828 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3334 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1828, i32 0, i32 1
  %1829 = load i64, i64* %allocated3334, align 8
  %shl3335 = shl i64 %1829, 1
  store i64 %shl3335, i64* %allocated3334, align 8
  %1830 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3336 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1830, i32 0, i32 1
  %1831 = load i64, i64* %allocated3336, align 8
  %cmp3337 = icmp ugt i64 %1831, 65536
  br i1 %cmp3337, label %if.then.3339, label %if.end.3341

if.then.3339:                                     ; preds = %if.end.3333
  %1832 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3340 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1832, i32 0, i32 1
  store i64 65536, i64* %allocated3340, align 8
  br label %if.end.3341

if.end.3341:                                      ; preds = %if.then.3339, %if.end.3333
  %1833 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3342 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1833, i32 0, i32 0
  %1834 = load i8*, i8** %buffer3342, align 8
  %1835 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3343 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1835, i32 0, i32 1
  %1836 = load i64, i64* %allocated3343, align 8
  %call3344 = call i8* @realloc(i8* %1834, i64 %1836) #1
  %1837 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3345 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1837, i32 0, i32 0
  store i8* %call3344, i8** %buffer3345, align 8
  %1838 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3346 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1838, i32 0, i32 0
  %1839 = load i8*, i8** %buffer3346, align 8
  %cmp3347 = icmp eq i8* %1839, null
  br i1 %cmp3347, label %if.then.3349, label %if.end.3350

if.then.3349:                                     ; preds = %if.end.3341
  store i32 12, i32* %retval
  br label %return

if.end.3350:                                      ; preds = %if.end.3341
  %1840 = load i8*, i8** %old_buffer3327, align 8
  %1841 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3351 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1841, i32 0, i32 0
  %1842 = load i8*, i8** %buffer3351, align 8
  %cmp3352 = icmp ne i8* %1840, %1842
  br i1 %cmp3352, label %if.then.3354, label %if.end.3389

if.then.3354:                                     ; preds = %if.end.3350
  %1843 = load i8*, i8** %b, align 8
  %1844 = load i8*, i8** %old_buffer3327, align 8
  %sub.ptr.lhs.cast3355 = ptrtoint i8* %1843 to i64
  %sub.ptr.rhs.cast3356 = ptrtoint i8* %1844 to i64
  %sub.ptr.sub3357 = sub i64 %sub.ptr.lhs.cast3355, %sub.ptr.rhs.cast3356
  %1845 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3358 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1845, i32 0, i32 0
  %1846 = load i8*, i8** %buffer3358, align 8
  %add.ptr3359 = getelementptr inbounds i8, i8* %1846, i64 %sub.ptr.sub3357
  store i8* %add.ptr3359, i8** %b, align 8
  %1847 = load i8*, i8** %begalt, align 8
  %1848 = load i8*, i8** %old_buffer3327, align 8
  %sub.ptr.lhs.cast3360 = ptrtoint i8* %1847 to i64
  %sub.ptr.rhs.cast3361 = ptrtoint i8* %1848 to i64
  %sub.ptr.sub3362 = sub i64 %sub.ptr.lhs.cast3360, %sub.ptr.rhs.cast3361
  %1849 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3363 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1849, i32 0, i32 0
  %1850 = load i8*, i8** %buffer3363, align 8
  %add.ptr3364 = getelementptr inbounds i8, i8* %1850, i64 %sub.ptr.sub3362
  store i8* %add.ptr3364, i8** %begalt, align 8
  %1851 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool3365 = icmp ne i8* %1851, null
  br i1 %tobool3365, label %if.then.3366, label %if.end.3372

if.then.3366:                                     ; preds = %if.then.3354
  %1852 = load i8*, i8** %fixup_alt_jump, align 8
  %1853 = load i8*, i8** %old_buffer3327, align 8
  %sub.ptr.lhs.cast3367 = ptrtoint i8* %1852 to i64
  %sub.ptr.rhs.cast3368 = ptrtoint i8* %1853 to i64
  %sub.ptr.sub3369 = sub i64 %sub.ptr.lhs.cast3367, %sub.ptr.rhs.cast3368
  %1854 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3370 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1854, i32 0, i32 0
  %1855 = load i8*, i8** %buffer3370, align 8
  %add.ptr3371 = getelementptr inbounds i8, i8* %1855, i64 %sub.ptr.sub3369
  store i8* %add.ptr3371, i8** %fixup_alt_jump, align 8
  br label %if.end.3372

if.end.3372:                                      ; preds = %if.then.3366, %if.then.3354
  %1856 = load i8*, i8** %laststart, align 8
  %tobool3373 = icmp ne i8* %1856, null
  br i1 %tobool3373, label %if.then.3374, label %if.end.3380

if.then.3374:                                     ; preds = %if.end.3372
  %1857 = load i8*, i8** %laststart, align 8
  %1858 = load i8*, i8** %old_buffer3327, align 8
  %sub.ptr.lhs.cast3375 = ptrtoint i8* %1857 to i64
  %sub.ptr.rhs.cast3376 = ptrtoint i8* %1858 to i64
  %sub.ptr.sub3377 = sub i64 %sub.ptr.lhs.cast3375, %sub.ptr.rhs.cast3376
  %1859 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3378 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1859, i32 0, i32 0
  %1860 = load i8*, i8** %buffer3378, align 8
  %add.ptr3379 = getelementptr inbounds i8, i8* %1860, i64 %sub.ptr.sub3377
  store i8* %add.ptr3379, i8** %laststart, align 8
  br label %if.end.3380

if.end.3380:                                      ; preds = %if.then.3374, %if.end.3372
  %1861 = load i8*, i8** %pending_exact, align 8
  %tobool3381 = icmp ne i8* %1861, null
  br i1 %tobool3381, label %if.then.3382, label %if.end.3388

if.then.3382:                                     ; preds = %if.end.3380
  %1862 = load i8*, i8** %pending_exact, align 8
  %1863 = load i8*, i8** %old_buffer3327, align 8
  %sub.ptr.lhs.cast3383 = ptrtoint i8* %1862 to i64
  %sub.ptr.rhs.cast3384 = ptrtoint i8* %1863 to i64
  %sub.ptr.sub3385 = sub i64 %sub.ptr.lhs.cast3383, %sub.ptr.rhs.cast3384
  %1864 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3386 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1864, i32 0, i32 0
  %1865 = load i8*, i8** %buffer3386, align 8
  %add.ptr3387 = getelementptr inbounds i8, i8* %1865, i64 %sub.ptr.sub3385
  store i8* %add.ptr3387, i8** %pending_exact, align 8
  br label %if.end.3388

if.end.3388:                                      ; preds = %if.then.3382, %if.end.3380
  br label %if.end.3389

if.end.3389:                                      ; preds = %if.end.3388, %if.end.3350
  br label %do.end.3390

do.end.3390:                                      ; preds = %if.end.3389
  br label %while.cond.3316

while.end.3391:                                   ; preds = %while.cond.3316
  %1866 = load i8*, i8** %b, align 8
  %incdec.ptr3392 = getelementptr inbounds i8, i8* %1866, i32 1
  store i8* %incdec.ptr3392, i8** %b, align 8
  store i8 8, i8* %1866, align 1
  %1867 = load i8, i8* %c1, align 1
  %1868 = load i8*, i8** %b, align 8
  %incdec.ptr3393 = getelementptr inbounds i8, i8* %1868, i32 1
  store i8* %incdec.ptr3393, i8** %b, align 8
  store i8 %1867, i8* %1868, align 1
  br label %do.end.3394

do.end.3394:                                      ; preds = %while.end.3391
  br label %sw.epilog

sw.bb.3395:                                       ; preds = %do.end.1609, %do.end.1609
  %1869 = load i64, i64* %syntax.addr, align 8
  %and3396 = and i64 %1869, 2
  %tobool3397 = icmp ne i64 %and3396, 0
  br i1 %tobool3397, label %if.then.3398, label %if.else.3399

if.then.3398:                                     ; preds = %sw.bb.3395
  br label %handle_plus

if.else.3399:                                     ; preds = %sw.bb.3395
  br label %normal_backslash

sw.default:                                       ; preds = %do.end.1609
  br label %normal_backslash

normal_backslash:                                 ; preds = %sw.default, %if.else.3399, %if.then.2621, %if.then.2216, %if.then.2026, %if.then.1782, %if.then.1774, %if.then.1614
  %1870 = load i8*, i8** %translate, align 8
  %tobool3400 = icmp ne i8* %1870, null
  br i1 %tobool3400, label %cond.true.3401, label %cond.false.3405

cond.true.3401:                                   ; preds = %normal_backslash
  %1871 = load i8, i8* %c, align 1
  %idxprom3402 = zext i8 %1871 to i64
  %1872 = load i8*, i8** %translate, align 8
  %arrayidx3403 = getelementptr inbounds i8, i8* %1872, i64 %idxprom3402
  %1873 = load i8, i8* %arrayidx3403, align 1
  %conv3404 = sext i8 %1873 to i32
  br label %cond.end.3407

cond.false.3405:                                  ; preds = %normal_backslash
  %1874 = load i8, i8* %c, align 1
  %conv3406 = zext i8 %1874 to i32
  br label %cond.end.3407

cond.end.3407:                                    ; preds = %cond.false.3405, %cond.true.3401
  %cond3408 = phi i32 [ %conv3404, %cond.true.3401 ], [ %conv3406, %cond.false.3405 ]
  %conv3409 = trunc i32 %cond3408 to i8
  store i8 %conv3409, i8* %c, align 1
  br label %normal_char

sw.epilog:                                        ; preds = %do.end.3394, %do.end.3295, %do.end.3211, %do.end.3127, %do.end.3043, %do.end.2959, %do.end.2875, %do.end.2791, %do.end.2707, %if.end.2598, %while.end.2198, %if.end.2019, %if.end.1768
  br label %sw.epilog.3639

sw.default.3410:                                  ; preds = %do.end
  br label %normal_char

normal_char:                                      ; preds = %sw.default.3410, %cond.end.3407, %if.then.3313, %if.then.3299, %if.then.3215, %if.then.3131, %if.then.3047, %if.then.2963, %if.then.2879, %if.then.2795, %if.then.2711, %if.then.2627, %if.end.2623, %if.then.2030, %if.then.1880, %if.else.1596, %if.else.1588, %if.else.1583, %if.else.1578, %if.else.1573, %if.then.226, %if.then.214, %if.else.206, %if.else.114
  %1875 = load i8*, i8** %pending_exact, align 8
  %tobool3411 = icmp ne i8* %1875, null
  br i1 %tobool3411, label %lor.lhs.false.3412, label %if.then.3476

lor.lhs.false.3412:                               ; preds = %normal_char
  %1876 = load i8*, i8** %pending_exact, align 8
  %1877 = load i8*, i8** %pending_exact, align 8
  %1878 = load i8, i8* %1877, align 1
  %conv3413 = zext i8 %1878 to i32
  %idx.ext3414 = sext i32 %conv3413 to i64
  %add.ptr3415 = getelementptr inbounds i8, i8* %1876, i64 %idx.ext3414
  %add.ptr3416 = getelementptr inbounds i8, i8* %add.ptr3415, i64 1
  %1879 = load i8*, i8** %b, align 8
  %cmp3417 = icmp ne i8* %add.ptr3416, %1879
  br i1 %cmp3417, label %if.then.3476, label %lor.lhs.false.3419

lor.lhs.false.3419:                               ; preds = %lor.lhs.false.3412
  %1880 = load i8*, i8** %pending_exact, align 8
  %1881 = load i8, i8* %1880, align 1
  %conv3420 = zext i8 %1881 to i32
  %cmp3421 = icmp eq i32 %conv3420, 255
  br i1 %cmp3421, label %if.then.3476, label %lor.lhs.false.3423

lor.lhs.false.3423:                               ; preds = %lor.lhs.false.3419
  %1882 = load i8*, i8** %p, align 8
  %1883 = load i8, i8* %1882, align 1
  %conv3424 = sext i8 %1883 to i32
  %cmp3425 = icmp eq i32 %conv3424, 42
  br i1 %cmp3425, label %if.then.3476, label %lor.lhs.false.3427

lor.lhs.false.3427:                               ; preds = %lor.lhs.false.3423
  %1884 = load i8*, i8** %p, align 8
  %1885 = load i8, i8* %1884, align 1
  %conv3428 = sext i8 %1885 to i32
  %cmp3429 = icmp eq i32 %conv3428, 94
  br i1 %cmp3429, label %if.then.3476, label %lor.lhs.false.3431

lor.lhs.false.3431:                               ; preds = %lor.lhs.false.3427
  %1886 = load i64, i64* %syntax.addr, align 8
  %and3432 = and i64 %1886, 2
  %tobool3433 = icmp ne i64 %and3432, 0
  br i1 %tobool3433, label %cond.true.3434, label %cond.false.3448

cond.true.3434:                                   ; preds = %lor.lhs.false.3431
  %1887 = load i8*, i8** %p, align 8
  %1888 = load i8, i8* %1887, align 1
  %conv3435 = sext i8 %1888 to i32
  %cmp3436 = icmp eq i32 %conv3435, 92
  br i1 %cmp3436, label %land.lhs.true.3438, label %lor.lhs.false.3456

land.lhs.true.3438:                               ; preds = %cond.true.3434
  %1889 = load i8*, i8** %p, align 8
  %arrayidx3439 = getelementptr inbounds i8, i8* %1889, i64 1
  %1890 = load i8, i8* %arrayidx3439, align 1
  %conv3440 = sext i8 %1890 to i32
  %cmp3441 = icmp eq i32 %conv3440, 43
  br i1 %cmp3441, label %if.then.3476, label %lor.lhs.false.3443

lor.lhs.false.3443:                               ; preds = %land.lhs.true.3438
  %1891 = load i8*, i8** %p, align 8
  %arrayidx3444 = getelementptr inbounds i8, i8* %1891, i64 1
  %1892 = load i8, i8* %arrayidx3444, align 1
  %conv3445 = sext i8 %1892 to i32
  %cmp3446 = icmp eq i32 %conv3445, 63
  br i1 %cmp3446, label %if.then.3476, label %lor.lhs.false.3456

cond.false.3448:                                  ; preds = %lor.lhs.false.3431
  %1893 = load i8*, i8** %p, align 8
  %1894 = load i8, i8* %1893, align 1
  %conv3449 = sext i8 %1894 to i32
  %cmp3450 = icmp eq i32 %conv3449, 43
  br i1 %cmp3450, label %if.then.3476, label %lor.lhs.false.3452

lor.lhs.false.3452:                               ; preds = %cond.false.3448
  %1895 = load i8*, i8** %p, align 8
  %1896 = load i8, i8* %1895, align 1
  %conv3453 = sext i8 %1896 to i32
  %cmp3454 = icmp eq i32 %conv3453, 63
  br i1 %cmp3454, label %if.then.3476, label %lor.lhs.false.3456

lor.lhs.false.3456:                               ; preds = %lor.lhs.false.3452, %lor.lhs.false.3443, %cond.true.3434
  %1897 = load i64, i64* %syntax.addr, align 8
  %and3457 = and i64 %1897, 512
  %tobool3458 = icmp ne i64 %and3457, 0
  br i1 %tobool3458, label %land.lhs.true.3459, label %if.end.3558

land.lhs.true.3459:                               ; preds = %lor.lhs.false.3456
  %1898 = load i64, i64* %syntax.addr, align 8
  %and3460 = and i64 %1898, 4096
  %tobool3461 = icmp ne i64 %and3460, 0
  br i1 %tobool3461, label %cond.true.3462, label %cond.false.3466

cond.true.3462:                                   ; preds = %land.lhs.true.3459
  %1899 = load i8*, i8** %p, align 8
  %1900 = load i8, i8* %1899, align 1
  %conv3463 = sext i8 %1900 to i32
  %cmp3464 = icmp eq i32 %conv3463, 123
  br i1 %cmp3464, label %if.then.3476, label %if.end.3558

cond.false.3466:                                  ; preds = %land.lhs.true.3459
  %1901 = load i8*, i8** %p, align 8
  %arrayidx3467 = getelementptr inbounds i8, i8* %1901, i64 0
  %1902 = load i8, i8* %arrayidx3467, align 1
  %conv3468 = sext i8 %1902 to i32
  %cmp3469 = icmp eq i32 %conv3468, 92
  br i1 %cmp3469, label %land.lhs.true.3471, label %if.end.3558

land.lhs.true.3471:                               ; preds = %cond.false.3466
  %1903 = load i8*, i8** %p, align 8
  %arrayidx3472 = getelementptr inbounds i8, i8* %1903, i64 1
  %1904 = load i8, i8* %arrayidx3472, align 1
  %conv3473 = sext i8 %1904 to i32
  %cmp3474 = icmp eq i32 %conv3473, 123
  br i1 %cmp3474, label %if.then.3476, label %if.end.3558

if.then.3476:                                     ; preds = %land.lhs.true.3471, %cond.true.3462, %lor.lhs.false.3452, %cond.false.3448, %lor.lhs.false.3443, %land.lhs.true.3438, %lor.lhs.false.3427, %lor.lhs.false.3423, %lor.lhs.false.3419, %lor.lhs.false.3412, %normal_char
  %1905 = load i8*, i8** %b, align 8
  store i8* %1905, i8** %laststart, align 8
  br label %do.body.3477

do.body.3477:                                     ; preds = %if.then.3476
  br label %while.cond.3478

while.cond.3478:                                  ; preds = %do.end.3552, %do.body.3477
  %1906 = load i8*, i8** %b, align 8
  %1907 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3479 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1907, i32 0, i32 0
  %1908 = load i8*, i8** %buffer3479, align 8
  %sub.ptr.lhs.cast3480 = ptrtoint i8* %1906 to i64
  %sub.ptr.rhs.cast3481 = ptrtoint i8* %1908 to i64
  %sub.ptr.sub3482 = sub i64 %sub.ptr.lhs.cast3480, %sub.ptr.rhs.cast3481
  %add3483 = add nsw i64 %sub.ptr.sub3482, 2
  %1909 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3484 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1909, i32 0, i32 1
  %1910 = load i64, i64* %allocated3484, align 8
  %cmp3485 = icmp ugt i64 %add3483, %1910
  br i1 %cmp3485, label %while.body.3487, label %while.end.3553

while.body.3487:                                  ; preds = %while.cond.3478
  br label %do.body.3488

do.body.3488:                                     ; preds = %while.body.3487
  %1911 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3490 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1911, i32 0, i32 0
  %1912 = load i8*, i8** %buffer3490, align 8
  store i8* %1912, i8** %old_buffer3489, align 8
  %1913 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3491 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1913, i32 0, i32 1
  %1914 = load i64, i64* %allocated3491, align 8
  %cmp3492 = icmp eq i64 %1914, 65536
  br i1 %cmp3492, label %if.then.3494, label %if.end.3495

if.then.3494:                                     ; preds = %do.body.3488
  store i32 15, i32* %retval
  br label %return

if.end.3495:                                      ; preds = %do.body.3488
  %1915 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3496 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1915, i32 0, i32 1
  %1916 = load i64, i64* %allocated3496, align 8
  %shl3497 = shl i64 %1916, 1
  store i64 %shl3497, i64* %allocated3496, align 8
  %1917 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3498 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1917, i32 0, i32 1
  %1918 = load i64, i64* %allocated3498, align 8
  %cmp3499 = icmp ugt i64 %1918, 65536
  br i1 %cmp3499, label %if.then.3501, label %if.end.3503

if.then.3501:                                     ; preds = %if.end.3495
  %1919 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3502 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1919, i32 0, i32 1
  store i64 65536, i64* %allocated3502, align 8
  br label %if.end.3503

if.end.3503:                                      ; preds = %if.then.3501, %if.end.3495
  %1920 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3504 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1920, i32 0, i32 0
  %1921 = load i8*, i8** %buffer3504, align 8
  %1922 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3505 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1922, i32 0, i32 1
  %1923 = load i64, i64* %allocated3505, align 8
  %call3506 = call i8* @realloc(i8* %1921, i64 %1923) #1
  %1924 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3507 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1924, i32 0, i32 0
  store i8* %call3506, i8** %buffer3507, align 8
  %1925 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3508 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1925, i32 0, i32 0
  %1926 = load i8*, i8** %buffer3508, align 8
  %cmp3509 = icmp eq i8* %1926, null
  br i1 %cmp3509, label %if.then.3511, label %if.end.3512

if.then.3511:                                     ; preds = %if.end.3503
  store i32 12, i32* %retval
  br label %return

if.end.3512:                                      ; preds = %if.end.3503
  %1927 = load i8*, i8** %old_buffer3489, align 8
  %1928 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3513 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1928, i32 0, i32 0
  %1929 = load i8*, i8** %buffer3513, align 8
  %cmp3514 = icmp ne i8* %1927, %1929
  br i1 %cmp3514, label %if.then.3516, label %if.end.3551

if.then.3516:                                     ; preds = %if.end.3512
  %1930 = load i8*, i8** %b, align 8
  %1931 = load i8*, i8** %old_buffer3489, align 8
  %sub.ptr.lhs.cast3517 = ptrtoint i8* %1930 to i64
  %sub.ptr.rhs.cast3518 = ptrtoint i8* %1931 to i64
  %sub.ptr.sub3519 = sub i64 %sub.ptr.lhs.cast3517, %sub.ptr.rhs.cast3518
  %1932 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3520 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1932, i32 0, i32 0
  %1933 = load i8*, i8** %buffer3520, align 8
  %add.ptr3521 = getelementptr inbounds i8, i8* %1933, i64 %sub.ptr.sub3519
  store i8* %add.ptr3521, i8** %b, align 8
  %1934 = load i8*, i8** %begalt, align 8
  %1935 = load i8*, i8** %old_buffer3489, align 8
  %sub.ptr.lhs.cast3522 = ptrtoint i8* %1934 to i64
  %sub.ptr.rhs.cast3523 = ptrtoint i8* %1935 to i64
  %sub.ptr.sub3524 = sub i64 %sub.ptr.lhs.cast3522, %sub.ptr.rhs.cast3523
  %1936 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3525 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1936, i32 0, i32 0
  %1937 = load i8*, i8** %buffer3525, align 8
  %add.ptr3526 = getelementptr inbounds i8, i8* %1937, i64 %sub.ptr.sub3524
  store i8* %add.ptr3526, i8** %begalt, align 8
  %1938 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool3527 = icmp ne i8* %1938, null
  br i1 %tobool3527, label %if.then.3528, label %if.end.3534

if.then.3528:                                     ; preds = %if.then.3516
  %1939 = load i8*, i8** %fixup_alt_jump, align 8
  %1940 = load i8*, i8** %old_buffer3489, align 8
  %sub.ptr.lhs.cast3529 = ptrtoint i8* %1939 to i64
  %sub.ptr.rhs.cast3530 = ptrtoint i8* %1940 to i64
  %sub.ptr.sub3531 = sub i64 %sub.ptr.lhs.cast3529, %sub.ptr.rhs.cast3530
  %1941 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3532 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1941, i32 0, i32 0
  %1942 = load i8*, i8** %buffer3532, align 8
  %add.ptr3533 = getelementptr inbounds i8, i8* %1942, i64 %sub.ptr.sub3531
  store i8* %add.ptr3533, i8** %fixup_alt_jump, align 8
  br label %if.end.3534

if.end.3534:                                      ; preds = %if.then.3528, %if.then.3516
  %1943 = load i8*, i8** %laststart, align 8
  %tobool3535 = icmp ne i8* %1943, null
  br i1 %tobool3535, label %if.then.3536, label %if.end.3542

if.then.3536:                                     ; preds = %if.end.3534
  %1944 = load i8*, i8** %laststart, align 8
  %1945 = load i8*, i8** %old_buffer3489, align 8
  %sub.ptr.lhs.cast3537 = ptrtoint i8* %1944 to i64
  %sub.ptr.rhs.cast3538 = ptrtoint i8* %1945 to i64
  %sub.ptr.sub3539 = sub i64 %sub.ptr.lhs.cast3537, %sub.ptr.rhs.cast3538
  %1946 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3540 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1946, i32 0, i32 0
  %1947 = load i8*, i8** %buffer3540, align 8
  %add.ptr3541 = getelementptr inbounds i8, i8* %1947, i64 %sub.ptr.sub3539
  store i8* %add.ptr3541, i8** %laststart, align 8
  br label %if.end.3542

if.end.3542:                                      ; preds = %if.then.3536, %if.end.3534
  %1948 = load i8*, i8** %pending_exact, align 8
  %tobool3543 = icmp ne i8* %1948, null
  br i1 %tobool3543, label %if.then.3544, label %if.end.3550

if.then.3544:                                     ; preds = %if.end.3542
  %1949 = load i8*, i8** %pending_exact, align 8
  %1950 = load i8*, i8** %old_buffer3489, align 8
  %sub.ptr.lhs.cast3545 = ptrtoint i8* %1949 to i64
  %sub.ptr.rhs.cast3546 = ptrtoint i8* %1950 to i64
  %sub.ptr.sub3547 = sub i64 %sub.ptr.lhs.cast3545, %sub.ptr.rhs.cast3546
  %1951 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3548 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1951, i32 0, i32 0
  %1952 = load i8*, i8** %buffer3548, align 8
  %add.ptr3549 = getelementptr inbounds i8, i8* %1952, i64 %sub.ptr.sub3547
  store i8* %add.ptr3549, i8** %pending_exact, align 8
  br label %if.end.3550

if.end.3550:                                      ; preds = %if.then.3544, %if.end.3542
  br label %if.end.3551

if.end.3551:                                      ; preds = %if.end.3550, %if.end.3512
  br label %do.end.3552

do.end.3552:                                      ; preds = %if.end.3551
  br label %while.cond.3478

while.end.3553:                                   ; preds = %while.cond.3478
  %1953 = load i8*, i8** %b, align 8
  %incdec.ptr3554 = getelementptr inbounds i8, i8* %1953, i32 1
  store i8* %incdec.ptr3554, i8** %b, align 8
  store i8 2, i8* %1953, align 1
  %1954 = load i8*, i8** %b, align 8
  %incdec.ptr3555 = getelementptr inbounds i8, i8* %1954, i32 1
  store i8* %incdec.ptr3555, i8** %b, align 8
  store i8 0, i8* %1954, align 1
  br label %do.end.3556

do.end.3556:                                      ; preds = %while.end.3553
  %1955 = load i8*, i8** %b, align 8
  %add.ptr3557 = getelementptr inbounds i8, i8* %1955, i64 -1
  store i8* %add.ptr3557, i8** %pending_exact, align 8
  br label %if.end.3558

if.end.3558:                                      ; preds = %do.end.3556, %land.lhs.true.3471, %cond.false.3466, %cond.true.3462, %lor.lhs.false.3456
  br label %do.body.3559

do.body.3559:                                     ; preds = %if.end.3558
  br label %while.cond.3560

while.cond.3560:                                  ; preds = %do.end.3634, %do.body.3559
  %1956 = load i8*, i8** %b, align 8
  %1957 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3561 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1957, i32 0, i32 0
  %1958 = load i8*, i8** %buffer3561, align 8
  %sub.ptr.lhs.cast3562 = ptrtoint i8* %1956 to i64
  %sub.ptr.rhs.cast3563 = ptrtoint i8* %1958 to i64
  %sub.ptr.sub3564 = sub i64 %sub.ptr.lhs.cast3562, %sub.ptr.rhs.cast3563
  %add3565 = add nsw i64 %sub.ptr.sub3564, 1
  %1959 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3566 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1959, i32 0, i32 1
  %1960 = load i64, i64* %allocated3566, align 8
  %cmp3567 = icmp ugt i64 %add3565, %1960
  br i1 %cmp3567, label %while.body.3569, label %while.end.3635

while.body.3569:                                  ; preds = %while.cond.3560
  br label %do.body.3570

do.body.3570:                                     ; preds = %while.body.3569
  %1961 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3572 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1961, i32 0, i32 0
  %1962 = load i8*, i8** %buffer3572, align 8
  store i8* %1962, i8** %old_buffer3571, align 8
  %1963 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3573 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1963, i32 0, i32 1
  %1964 = load i64, i64* %allocated3573, align 8
  %cmp3574 = icmp eq i64 %1964, 65536
  br i1 %cmp3574, label %if.then.3576, label %if.end.3577

if.then.3576:                                     ; preds = %do.body.3570
  store i32 15, i32* %retval
  br label %return

if.end.3577:                                      ; preds = %do.body.3570
  %1965 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3578 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1965, i32 0, i32 1
  %1966 = load i64, i64* %allocated3578, align 8
  %shl3579 = shl i64 %1966, 1
  store i64 %shl3579, i64* %allocated3578, align 8
  %1967 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3580 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1967, i32 0, i32 1
  %1968 = load i64, i64* %allocated3580, align 8
  %cmp3581 = icmp ugt i64 %1968, 65536
  br i1 %cmp3581, label %if.then.3583, label %if.end.3585

if.then.3583:                                     ; preds = %if.end.3577
  %1969 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3584 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1969, i32 0, i32 1
  store i64 65536, i64* %allocated3584, align 8
  br label %if.end.3585

if.end.3585:                                      ; preds = %if.then.3583, %if.end.3577
  %1970 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3586 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1970, i32 0, i32 0
  %1971 = load i8*, i8** %buffer3586, align 8
  %1972 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3587 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1972, i32 0, i32 1
  %1973 = load i64, i64* %allocated3587, align 8
  %call3588 = call i8* @realloc(i8* %1971, i64 %1973) #1
  %1974 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3589 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1974, i32 0, i32 0
  store i8* %call3588, i8** %buffer3589, align 8
  %1975 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3590 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1975, i32 0, i32 0
  %1976 = load i8*, i8** %buffer3590, align 8
  %cmp3591 = icmp eq i8* %1976, null
  br i1 %cmp3591, label %if.then.3593, label %if.end.3594

if.then.3593:                                     ; preds = %if.end.3585
  store i32 12, i32* %retval
  br label %return

if.end.3594:                                      ; preds = %if.end.3585
  %1977 = load i8*, i8** %old_buffer3571, align 8
  %1978 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3595 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1978, i32 0, i32 0
  %1979 = load i8*, i8** %buffer3595, align 8
  %cmp3596 = icmp ne i8* %1977, %1979
  br i1 %cmp3596, label %if.then.3598, label %if.end.3633

if.then.3598:                                     ; preds = %if.end.3594
  %1980 = load i8*, i8** %b, align 8
  %1981 = load i8*, i8** %old_buffer3571, align 8
  %sub.ptr.lhs.cast3599 = ptrtoint i8* %1980 to i64
  %sub.ptr.rhs.cast3600 = ptrtoint i8* %1981 to i64
  %sub.ptr.sub3601 = sub i64 %sub.ptr.lhs.cast3599, %sub.ptr.rhs.cast3600
  %1982 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3602 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1982, i32 0, i32 0
  %1983 = load i8*, i8** %buffer3602, align 8
  %add.ptr3603 = getelementptr inbounds i8, i8* %1983, i64 %sub.ptr.sub3601
  store i8* %add.ptr3603, i8** %b, align 8
  %1984 = load i8*, i8** %begalt, align 8
  %1985 = load i8*, i8** %old_buffer3571, align 8
  %sub.ptr.lhs.cast3604 = ptrtoint i8* %1984 to i64
  %sub.ptr.rhs.cast3605 = ptrtoint i8* %1985 to i64
  %sub.ptr.sub3606 = sub i64 %sub.ptr.lhs.cast3604, %sub.ptr.rhs.cast3605
  %1986 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3607 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1986, i32 0, i32 0
  %1987 = load i8*, i8** %buffer3607, align 8
  %add.ptr3608 = getelementptr inbounds i8, i8* %1987, i64 %sub.ptr.sub3606
  store i8* %add.ptr3608, i8** %begalt, align 8
  %1988 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool3609 = icmp ne i8* %1988, null
  br i1 %tobool3609, label %if.then.3610, label %if.end.3616

if.then.3610:                                     ; preds = %if.then.3598
  %1989 = load i8*, i8** %fixup_alt_jump, align 8
  %1990 = load i8*, i8** %old_buffer3571, align 8
  %sub.ptr.lhs.cast3611 = ptrtoint i8* %1989 to i64
  %sub.ptr.rhs.cast3612 = ptrtoint i8* %1990 to i64
  %sub.ptr.sub3613 = sub i64 %sub.ptr.lhs.cast3611, %sub.ptr.rhs.cast3612
  %1991 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3614 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1991, i32 0, i32 0
  %1992 = load i8*, i8** %buffer3614, align 8
  %add.ptr3615 = getelementptr inbounds i8, i8* %1992, i64 %sub.ptr.sub3613
  store i8* %add.ptr3615, i8** %fixup_alt_jump, align 8
  br label %if.end.3616

if.end.3616:                                      ; preds = %if.then.3610, %if.then.3598
  %1993 = load i8*, i8** %laststart, align 8
  %tobool3617 = icmp ne i8* %1993, null
  br i1 %tobool3617, label %if.then.3618, label %if.end.3624

if.then.3618:                                     ; preds = %if.end.3616
  %1994 = load i8*, i8** %laststart, align 8
  %1995 = load i8*, i8** %old_buffer3571, align 8
  %sub.ptr.lhs.cast3619 = ptrtoint i8* %1994 to i64
  %sub.ptr.rhs.cast3620 = ptrtoint i8* %1995 to i64
  %sub.ptr.sub3621 = sub i64 %sub.ptr.lhs.cast3619, %sub.ptr.rhs.cast3620
  %1996 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3622 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1996, i32 0, i32 0
  %1997 = load i8*, i8** %buffer3622, align 8
  %add.ptr3623 = getelementptr inbounds i8, i8* %1997, i64 %sub.ptr.sub3621
  store i8* %add.ptr3623, i8** %laststart, align 8
  br label %if.end.3624

if.end.3624:                                      ; preds = %if.then.3618, %if.end.3616
  %1998 = load i8*, i8** %pending_exact, align 8
  %tobool3625 = icmp ne i8* %1998, null
  br i1 %tobool3625, label %if.then.3626, label %if.end.3632

if.then.3626:                                     ; preds = %if.end.3624
  %1999 = load i8*, i8** %pending_exact, align 8
  %2000 = load i8*, i8** %old_buffer3571, align 8
  %sub.ptr.lhs.cast3627 = ptrtoint i8* %1999 to i64
  %sub.ptr.rhs.cast3628 = ptrtoint i8* %2000 to i64
  %sub.ptr.sub3629 = sub i64 %sub.ptr.lhs.cast3627, %sub.ptr.rhs.cast3628
  %2001 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3630 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2001, i32 0, i32 0
  %2002 = load i8*, i8** %buffer3630, align 8
  %add.ptr3631 = getelementptr inbounds i8, i8* %2002, i64 %sub.ptr.sub3629
  store i8* %add.ptr3631, i8** %pending_exact, align 8
  br label %if.end.3632

if.end.3632:                                      ; preds = %if.then.3626, %if.end.3624
  br label %if.end.3633

if.end.3633:                                      ; preds = %if.end.3632, %if.end.3594
  br label %do.end.3634

do.end.3634:                                      ; preds = %if.end.3633
  br label %while.cond.3560

while.end.3635:                                   ; preds = %while.cond.3560
  %2003 = load i8, i8* %c, align 1
  %2004 = load i8*, i8** %b, align 8
  %incdec.ptr3636 = getelementptr inbounds i8, i8* %2004, i32 1
  store i8* %incdec.ptr3636, i8** %b, align 8
  store i8 %2003, i8* %2004, align 1
  br label %do.end.3637

do.end.3637:                                      ; preds = %while.end.3635
  %2005 = load i8*, i8** %pending_exact, align 8
  %2006 = load i8, i8* %2005, align 1
  %inc3638 = add i8 %2006, 1
  store i8 %inc3638, i8* %2005, align 1
  br label %sw.epilog.3639

sw.epilog.3639:                                   ; preds = %do.end.3637, %sw.epilog, %while.end.1565, %do.end.702, %if.end.622, %if.then.312, %if.end.207, %if.end.115
  br label %while.cond

while.end.3640:                                   ; preds = %while.cond
  %2007 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool3641 = icmp ne i8* %2007, null
  br i1 %tobool3641, label %if.then.3642, label %if.end.3648

if.then.3642:                                     ; preds = %while.end.3640
  %2008 = load i8*, i8** %fixup_alt_jump, align 8
  %2009 = load i8*, i8** %b, align 8
  %2010 = load i8*, i8** %fixup_alt_jump, align 8
  %sub.ptr.lhs.cast3643 = ptrtoint i8* %2009 to i64
  %sub.ptr.rhs.cast3644 = ptrtoint i8* %2010 to i64
  %sub.ptr.sub3645 = sub i64 %sub.ptr.lhs.cast3643, %sub.ptr.rhs.cast3644
  %sub3646 = sub nsw i64 %sub.ptr.sub3645, 3
  %conv3647 = trunc i64 %sub3646 to i32
  call void @store_op1(i32 14, i8* %2008, i32 %conv3647)
  br label %if.end.3648

if.end.3648:                                      ; preds = %if.then.3642, %while.end.3640
  %avail3649 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %2011 = load i32, i32* %avail3649, align 4
  %cmp3650 = icmp eq i32 %2011, 0
  br i1 %cmp3650, label %if.end.3654, label %if.then.3652

if.then.3652:                                     ; preds = %if.end.3648
  %stack3653 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %2012 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack3653, align 8
  %2013 = bitcast %struct.compile_stack_elt_t* %2012 to i8*
  call void @free(i8* %2013) #1
  store i32 8, i32* %retval
  br label %return

if.end.3654:                                      ; preds = %if.end.3648
  %2014 = load i64, i64* %syntax.addr, align 8
  %and3655 = and i64 %2014, 262144
  %tobool3656 = icmp ne i64 %and3655, 0
  br i1 %tobool3656, label %if.then.3657, label %if.end.3737

if.then.3657:                                     ; preds = %if.end.3654
  br label %do.body.3658

do.body.3658:                                     ; preds = %if.then.3657
  br label %while.cond.3659

while.cond.3659:                                  ; preds = %do.end.3733, %do.body.3658
  %2015 = load i8*, i8** %b, align 8
  %2016 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3660 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2016, i32 0, i32 0
  %2017 = load i8*, i8** %buffer3660, align 8
  %sub.ptr.lhs.cast3661 = ptrtoint i8* %2015 to i64
  %sub.ptr.rhs.cast3662 = ptrtoint i8* %2017 to i64
  %sub.ptr.sub3663 = sub i64 %sub.ptr.lhs.cast3661, %sub.ptr.rhs.cast3662
  %add3664 = add nsw i64 %sub.ptr.sub3663, 1
  %2018 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3665 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2018, i32 0, i32 1
  %2019 = load i64, i64* %allocated3665, align 8
  %cmp3666 = icmp ugt i64 %add3664, %2019
  br i1 %cmp3666, label %while.body.3668, label %while.end.3734

while.body.3668:                                  ; preds = %while.cond.3659
  br label %do.body.3669

do.body.3669:                                     ; preds = %while.body.3668
  %2020 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3671 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2020, i32 0, i32 0
  %2021 = load i8*, i8** %buffer3671, align 8
  store i8* %2021, i8** %old_buffer3670, align 8
  %2022 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3672 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2022, i32 0, i32 1
  %2023 = load i64, i64* %allocated3672, align 8
  %cmp3673 = icmp eq i64 %2023, 65536
  br i1 %cmp3673, label %if.then.3675, label %if.end.3676

if.then.3675:                                     ; preds = %do.body.3669
  store i32 15, i32* %retval
  br label %return

if.end.3676:                                      ; preds = %do.body.3669
  %2024 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3677 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2024, i32 0, i32 1
  %2025 = load i64, i64* %allocated3677, align 8
  %shl3678 = shl i64 %2025, 1
  store i64 %shl3678, i64* %allocated3677, align 8
  %2026 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3679 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2026, i32 0, i32 1
  %2027 = load i64, i64* %allocated3679, align 8
  %cmp3680 = icmp ugt i64 %2027, 65536
  br i1 %cmp3680, label %if.then.3682, label %if.end.3684

if.then.3682:                                     ; preds = %if.end.3676
  %2028 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3683 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2028, i32 0, i32 1
  store i64 65536, i64* %allocated3683, align 8
  br label %if.end.3684

if.end.3684:                                      ; preds = %if.then.3682, %if.end.3676
  %2029 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3685 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2029, i32 0, i32 0
  %2030 = load i8*, i8** %buffer3685, align 8
  %2031 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %allocated3686 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2031, i32 0, i32 1
  %2032 = load i64, i64* %allocated3686, align 8
  %call3687 = call i8* @realloc(i8* %2030, i64 %2032) #1
  %2033 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3688 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2033, i32 0, i32 0
  store i8* %call3687, i8** %buffer3688, align 8
  %2034 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3689 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2034, i32 0, i32 0
  %2035 = load i8*, i8** %buffer3689, align 8
  %cmp3690 = icmp eq i8* %2035, null
  br i1 %cmp3690, label %if.then.3692, label %if.end.3693

if.then.3692:                                     ; preds = %if.end.3684
  store i32 12, i32* %retval
  br label %return

if.end.3693:                                      ; preds = %if.end.3684
  %2036 = load i8*, i8** %old_buffer3670, align 8
  %2037 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3694 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2037, i32 0, i32 0
  %2038 = load i8*, i8** %buffer3694, align 8
  %cmp3695 = icmp ne i8* %2036, %2038
  br i1 %cmp3695, label %if.then.3697, label %if.end.3732

if.then.3697:                                     ; preds = %if.end.3693
  %2039 = load i8*, i8** %b, align 8
  %2040 = load i8*, i8** %old_buffer3670, align 8
  %sub.ptr.lhs.cast3698 = ptrtoint i8* %2039 to i64
  %sub.ptr.rhs.cast3699 = ptrtoint i8* %2040 to i64
  %sub.ptr.sub3700 = sub i64 %sub.ptr.lhs.cast3698, %sub.ptr.rhs.cast3699
  %2041 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3701 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2041, i32 0, i32 0
  %2042 = load i8*, i8** %buffer3701, align 8
  %add.ptr3702 = getelementptr inbounds i8, i8* %2042, i64 %sub.ptr.sub3700
  store i8* %add.ptr3702, i8** %b, align 8
  %2043 = load i8*, i8** %begalt, align 8
  %2044 = load i8*, i8** %old_buffer3670, align 8
  %sub.ptr.lhs.cast3703 = ptrtoint i8* %2043 to i64
  %sub.ptr.rhs.cast3704 = ptrtoint i8* %2044 to i64
  %sub.ptr.sub3705 = sub i64 %sub.ptr.lhs.cast3703, %sub.ptr.rhs.cast3704
  %2045 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3706 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2045, i32 0, i32 0
  %2046 = load i8*, i8** %buffer3706, align 8
  %add.ptr3707 = getelementptr inbounds i8, i8* %2046, i64 %sub.ptr.sub3705
  store i8* %add.ptr3707, i8** %begalt, align 8
  %2047 = load i8*, i8** %fixup_alt_jump, align 8
  %tobool3708 = icmp ne i8* %2047, null
  br i1 %tobool3708, label %if.then.3709, label %if.end.3715

if.then.3709:                                     ; preds = %if.then.3697
  %2048 = load i8*, i8** %fixup_alt_jump, align 8
  %2049 = load i8*, i8** %old_buffer3670, align 8
  %sub.ptr.lhs.cast3710 = ptrtoint i8* %2048 to i64
  %sub.ptr.rhs.cast3711 = ptrtoint i8* %2049 to i64
  %sub.ptr.sub3712 = sub i64 %sub.ptr.lhs.cast3710, %sub.ptr.rhs.cast3711
  %2050 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3713 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2050, i32 0, i32 0
  %2051 = load i8*, i8** %buffer3713, align 8
  %add.ptr3714 = getelementptr inbounds i8, i8* %2051, i64 %sub.ptr.sub3712
  store i8* %add.ptr3714, i8** %fixup_alt_jump, align 8
  br label %if.end.3715

if.end.3715:                                      ; preds = %if.then.3709, %if.then.3697
  %2052 = load i8*, i8** %laststart, align 8
  %tobool3716 = icmp ne i8* %2052, null
  br i1 %tobool3716, label %if.then.3717, label %if.end.3723

if.then.3717:                                     ; preds = %if.end.3715
  %2053 = load i8*, i8** %laststart, align 8
  %2054 = load i8*, i8** %old_buffer3670, align 8
  %sub.ptr.lhs.cast3718 = ptrtoint i8* %2053 to i64
  %sub.ptr.rhs.cast3719 = ptrtoint i8* %2054 to i64
  %sub.ptr.sub3720 = sub i64 %sub.ptr.lhs.cast3718, %sub.ptr.rhs.cast3719
  %2055 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3721 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2055, i32 0, i32 0
  %2056 = load i8*, i8** %buffer3721, align 8
  %add.ptr3722 = getelementptr inbounds i8, i8* %2056, i64 %sub.ptr.sub3720
  store i8* %add.ptr3722, i8** %laststart, align 8
  br label %if.end.3723

if.end.3723:                                      ; preds = %if.then.3717, %if.end.3715
  %2057 = load i8*, i8** %pending_exact, align 8
  %tobool3724 = icmp ne i8* %2057, null
  br i1 %tobool3724, label %if.then.3725, label %if.end.3731

if.then.3725:                                     ; preds = %if.end.3723
  %2058 = load i8*, i8** %pending_exact, align 8
  %2059 = load i8*, i8** %old_buffer3670, align 8
  %sub.ptr.lhs.cast3726 = ptrtoint i8* %2058 to i64
  %sub.ptr.rhs.cast3727 = ptrtoint i8* %2059 to i64
  %sub.ptr.sub3728 = sub i64 %sub.ptr.lhs.cast3726, %sub.ptr.rhs.cast3727
  %2060 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3729 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2060, i32 0, i32 0
  %2061 = load i8*, i8** %buffer3729, align 8
  %add.ptr3730 = getelementptr inbounds i8, i8* %2061, i64 %sub.ptr.sub3728
  store i8* %add.ptr3730, i8** %pending_exact, align 8
  br label %if.end.3731

if.end.3731:                                      ; preds = %if.then.3725, %if.end.3723
  br label %if.end.3732

if.end.3732:                                      ; preds = %if.end.3731, %if.end.3693
  br label %do.end.3733

do.end.3733:                                      ; preds = %if.end.3732
  br label %while.cond.3659

while.end.3734:                                   ; preds = %while.cond.3659
  %2062 = load i8*, i8** %b, align 8
  %incdec.ptr3735 = getelementptr inbounds i8, i8* %2062, i32 1
  store i8* %incdec.ptr3735, i8** %b, align 8
  store i8 1, i8* %2062, align 1
  br label %do.end.3736

do.end.3736:                                      ; preds = %while.end.3734
  br label %if.end.3737

if.end.3737:                                      ; preds = %do.end.3736, %if.end.3654
  %stack3738 = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %2063 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack3738, align 8
  %2064 = bitcast %struct.compile_stack_elt_t* %2063 to i8*
  call void @free(i8* %2064) #1
  %2065 = load i8*, i8** %b, align 8
  %2066 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %buffer3739 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2066, i32 0, i32 0
  %2067 = load i8*, i8** %buffer3739, align 8
  %sub.ptr.lhs.cast3740 = ptrtoint i8* %2065 to i64
  %sub.ptr.rhs.cast3741 = ptrtoint i8* %2067 to i64
  %sub.ptr.sub3742 = sub i64 %sub.ptr.lhs.cast3740, %sub.ptr.rhs.cast3741
  %2068 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp.addr, align 8
  %used3743 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2068, i32 0, i32 2
  store i64 %sub.ptr.sub3742, i64* %used3743, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3737, %if.then.3692, %if.then.3675, %if.then.3652, %if.then.3593, %if.then.3576, %if.then.3511, %if.then.3494, %if.then.3349, %if.then.3332, %if.then.3307, %if.then.3251, %if.then.3234, %if.then.3167, %if.then.3150, %if.then.3083, %if.then.3066, %if.then.2999, %if.then.2982, %if.then.2915, %if.then.2898, %if.then.2831, %if.then.2814, %if.then.2747, %if.then.2730, %if.then.2663, %if.then.2646, %if.then.2602, %if.then.2524, %if.then.2507, %if.then.2435, %if.then.2418, %if.then.2389, %if.else.2382, %if.then.2365, %if.then.2359, %if.else.2350, %if.then.2321, %if.then.2288, %if.then.2267, %if.then.2234, %if.else.2225, %if.then.2156, %if.then.2139, %if.then.2065, %if.then.2048, %if.then.1969, %if.then.1952, %if.else.1881, %if.then.1822, %if.then.1805, %if.else.1783, %if.then.1720, %if.then.1703, %if.then.1633, %if.then.1606, %if.then.1600, %if.then.1316, %if.then.1305, %if.then.1299, %if.then.1140, %if.then.1133, %if.then.1122, %if.then.1104, %if.then.1092, %if.then.1074, %if.then.1037, %if.then.1000, %if.then.994, %if.then.976, %if.then.970, %if.then.909, %if.then.892, %if.then.819, %if.then.802, %if.then.742, %if.then.725, %if.then.706, %if.then.658, %if.then.641, %if.then.572, %if.then.555, %if.then.484, %if.then.467, %if.then.349, %if.then.332, %if.then.287, %if.then.281, %if.then.248, %if.then.221, %if.then.161, %if.then.144, %if.then.70, %if.then.54, %if.then.28, %if.then.20, %if.then
  %2069 = load i32, i32* %retval
  ret i32 %2069
}

; Function Attrs: nounwind uwtable
define i32 @regcomp(%struct.re_pattern_buffer* %preg, i8* %pattern, i32 %cflags) #0 {
entry:
  %retval = alloca i32, align 4
  %preg.addr = alloca %struct.re_pattern_buffer*, align 8
  %pattern.addr = alloca i8*, align 8
  %cflags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %syntax = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.re_pattern_buffer* %preg, %struct.re_pattern_buffer** %preg.addr, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store i32 %cflags, i32* %cflags.addr, align 4
  %0 = load i32, i32* %cflags.addr, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i64 242396, i64 66246
  store i64 %cond, i64* %syntax, align 8
  %1 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %buffer = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1, i32 0, i32 0
  store i8* null, i8** %buffer, align 8
  %2 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %allocated = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2, i32 0, i32 1
  store i64 0, i64* %allocated, align 8
  %3 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %used = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i32 0, i32 2
  store i64 0, i64* %used, align 8
  %call = call noalias i8* @malloc(i64 256) #1
  %4 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %fastmap = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %4, i32 0, i32 4
  store i8* %call, i8** %fastmap, align 8
  %5 = load i32, i32* %cflags.addr, align 4
  %and1 = and i32 %5, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call noalias i8* @malloc(i64 256) #1
  %6 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %translate = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %6, i32 0, i32 5
  store i8* %call3, i8** %translate, align 8
  %7 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %translate4 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %7, i32 0, i32 5
  %8 = load i8*, i8** %translate4, align 8
  %cmp = icmp eq i8* %8, null
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 12, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4
  %cmp6 = icmp ult i32 %9, 256
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %call7 = call i16** @__ctype_b_loc() #8
  %11 = load i16*, i16** %call7, align 8
  %arrayidx = getelementptr inbounds i16, i16* %11, i64 %idxprom
  %12 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %12 to i32
  %and8 = and i32 %conv, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %call11 = call i32** @__ctype_tolower_loc() #8
  %14 = load i32*, i32** %call11, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %14, i64 %idxprom10
  %15 = load i32, i32* %arrayidx12, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond13 = phi i32 [ %15, %cond.true ], [ %16, %cond.false ]
  %conv14 = trunc i32 %cond13 to i8
  %17 = load i32, i32* %i, align 4
  %idxprom15 = zext i32 %17 to i64
  %18 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %translate16 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %18, i32 0, i32 5
  %19 = load i8*, i8** %translate16, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %19, i64 %idxprom15
  store i8 %conv14, i8* %arrayidx17, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %20 = load i32, i32* %i, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.19

if.else:                                          ; preds = %entry
  %21 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %translate18 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %21, i32 0, i32 5
  store i8* null, i8** %translate18, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %for.end
  %22 = load i32, i32* %cflags.addr, align 4
  %and20 = and i32 %22, 4
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.end.19
  %23 = load i64, i64* %syntax, align 8
  %and23 = and i64 %23, -65
  store i64 %and23, i64* %syntax, align 8
  %24 = load i64, i64* %syntax, align 8
  %or = or i64 %24, 256
  store i64 %or, i64* %syntax, align 8
  %25 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %newline_anchor = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %25, i32 0, i32 7
  %bf.load = load i8, i8* %newline_anchor, align 8
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, -128
  store i8 %bf.set, i8* %newline_anchor, align 8
  br label %if.end.28

if.else.24:                                       ; preds = %if.end.19
  %26 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %newline_anchor25 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %26, i32 0, i32 7
  %bf.load26 = load i8, i8* %newline_anchor25, align 8
  %bf.clear27 = and i8 %bf.load26, 127
  store i8 %bf.clear27, i8* %newline_anchor25, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.24, %if.then.22
  %27 = load i32, i32* %cflags.addr, align 4
  %and29 = and i32 %27, 8
  %tobool30 = icmp ne i32 %and29, 0
  %lnot = xor i1 %tobool30, true
  %lnot31 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot31 to i32
  %28 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %no_sub = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %28, i32 0, i32 7
  %29 = trunc i32 %lnot.ext to i8
  %bf.load32 = load i8, i8* %no_sub, align 8
  %bf.value = and i8 %29, 1
  %bf.shl = shl i8 %bf.value, 4
  %bf.clear33 = and i8 %bf.load32, -17
  %bf.set34 = or i8 %bf.clear33, %bf.shl
  store i8 %bf.set34, i8* %no_sub, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %30 = load i8*, i8** %pattern.addr, align 8
  %31 = load i8*, i8** %pattern.addr, align 8
  %call35 = call i64 @strlen(i8* %31) #7
  %32 = load i64, i64* %syntax, align 8
  %33 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %call36 = call i32 @regex_compile(i8* %30, i64 %call35, i64 %32, %struct.re_pattern_buffer* %33)
  store i32 %call36, i32* %ret, align 4
  %34 = load i32, i32* %ret, align 4
  %cmp37 = icmp eq i32 %34, 16
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.28
  store i32 8, i32* %ret, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.28
  %35 = load i32, i32* %ret, align 4
  %cmp41 = icmp eq i32 %35, 0
  br i1 %cmp41, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %if.end.40
  %36 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %fastmap43 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %36, i32 0, i32 4
  %37 = load i8*, i8** %fastmap43, align 8
  %tobool44 = icmp ne i8* %37, null
  br i1 %tobool44, label %if.then.45, label %if.end.53

if.then.45:                                       ; preds = %land.lhs.true
  %38 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %call46 = call i32 @re_compile_fastmap(%struct.re_pattern_buffer* %38)
  %cmp47 = icmp eq i32 %call46, -2
  br i1 %cmp47, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %if.then.45
  %39 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %fastmap50 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %39, i32 0, i32 4
  %40 = load i8*, i8** %fastmap50, align 8
  call void @free(i8* %40) #1
  %41 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %fastmap51 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %41, i32 0, i32 4
  store i8* null, i8** %fastmap51, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %if.then.45
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %land.lhs.true, %if.end.40
  %42 = load i32, i32* %ret, align 4
  store i32 %42, i32* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.5
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @regexec(%struct.re_pattern_buffer* %preg, i8* %string, i64 %nmatch, %struct.regmatch_t* %pmatch, i32 %eflags) #0 {
entry:
  %retval = alloca i32, align 4
  %preg.addr = alloca %struct.re_pattern_buffer*, align 8
  %string.addr = alloca i8*, align 8
  %nmatch.addr = alloca i64, align 8
  %pmatch.addr = alloca %struct.regmatch_t*, align 8
  %eflags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %regs = alloca %struct.re_registers, align 8
  %private_preg = alloca %struct.re_pattern_buffer, align 8
  %len = alloca i32, align 4
  %want_reg_info = alloca i8, align 1
  %r = alloca i32, align 4
  store %struct.re_pattern_buffer* %preg, %struct.re_pattern_buffer** %preg.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %nmatch, i64* %nmatch.addr, align 8
  store %struct.regmatch_t* %pmatch, %struct.regmatch_t** %pmatch.addr, align 8
  store i32 %eflags, i32* %eflags.addr, align 4
  %0 = load i8*, i8** %string.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %1 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %no_sub = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1, i32 0, i32 7
  %bf.load = load i8, i8* %no_sub, align 8
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %2 = load i64, i64* %nmatch.addr, align 8
  %cmp = icmp ugt i64 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  %conv2 = trunc i32 %land.ext to i8
  store i8 %conv2, i8* %want_reg_info, align 1
  %4 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %5 = bitcast %struct.re_pattern_buffer* %private_preg to i8*
  %6 = bitcast %struct.re_pattern_buffer* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 64, i32 8, i1 false)
  %7 = load i32, i32* %eflags.addr, align 4
  %and = and i32 %7, 1
  %tobool3 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool3, true
  %lnot4 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot4 to i32
  %not_bol = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %private_preg, i32 0, i32 7
  %8 = trunc i32 %lnot.ext to i8
  %bf.load5 = load i8, i8* %not_bol, align 8
  %bf.value = and i8 %8, 1
  %bf.shl = shl i8 %bf.value, 5
  %bf.clear6 = and i8 %bf.load5, -33
  %bf.set = or i8 %bf.clear6, %bf.shl
  store i8 %bf.set, i8* %not_bol, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %9 = load i32, i32* %eflags.addr, align 4
  %and7 = and i32 %9, 2
  %tobool8 = icmp ne i32 %and7, 0
  %lnot9 = xor i1 %tobool8, true
  %lnot11 = xor i1 %lnot9, true
  %lnot.ext12 = zext i1 %lnot11 to i32
  %not_eol = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %private_preg, i32 0, i32 7
  %10 = trunc i32 %lnot.ext12 to i8
  %bf.load13 = load i8, i8* %not_eol, align 8
  %bf.value14 = and i8 %10, 1
  %bf.shl15 = shl i8 %bf.value14, 6
  %bf.clear16 = and i8 %bf.load13, -65
  %bf.set17 = or i8 %bf.clear16, %bf.shl15
  store i8 %bf.set17, i8* %not_eol, align 8
  %bf.result.cast18 = zext i8 %bf.value14 to i32
  %regs_allocated = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %private_preg, i32 0, i32 7
  %bf.load19 = load i8, i8* %regs_allocated, align 8
  %bf.clear20 = and i8 %bf.load19, -7
  %bf.set21 = or i8 %bf.clear20, 4
  store i8 %bf.set21, i8* %regs_allocated, align 8
  %11 = load i8, i8* %want_reg_info, align 1
  %tobool22 = icmp ne i8 %11, 0
  br i1 %tobool22, label %if.then, label %if.end.31

if.then:                                          ; preds = %land.end
  %12 = load i64, i64* %nmatch.addr, align 8
  %conv23 = trunc i64 %12 to i32
  %num_regs = getelementptr inbounds %struct.re_registers, %struct.re_registers* %regs, i32 0, i32 0
  store i32 %conv23, i32* %num_regs, align 4
  %13 = load i64, i64* %nmatch.addr, align 8
  %mul = mul i64 %13, 2
  %mul24 = mul i64 %mul, 4
  %call25 = call noalias i8* @malloc(i64 %mul24) #1
  %14 = bitcast i8* %call25 to i32*
  %start = getelementptr inbounds %struct.re_registers, %struct.re_registers* %regs, i32 0, i32 1
  store i32* %14, i32** %start, align 8
  %start26 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %regs, i32 0, i32 1
  %15 = load i32*, i32** %start26, align 8
  %cmp27 = icmp eq i32* %15, null
  br i1 %cmp27, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %start30 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %regs, i32 0, i32 1
  %16 = load i32*, i32** %start30, align 8
  %17 = load i64, i64* %nmatch.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %16, i64 %17
  %end = getelementptr inbounds %struct.re_registers, %struct.re_registers* %regs, i32 0, i32 2
  store i32* %add.ptr, i32** %end, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %land.end
  %18 = load i8*, i8** %string.addr, align 8
  %19 = load i32, i32* %len, align 4
  %20 = load i32, i32* %len, align 4
  %21 = load i8, i8* %want_reg_info, align 1
  %conv32 = sext i8 %21 to i32
  %tobool33 = icmp ne i32 %conv32, 0
  br i1 %tobool33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.31
  br label %cond.end

cond.false:                                       ; preds = %if.end.31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.re_registers* [ %regs, %cond.true ], [ null, %cond.false ]
  %call34 = call i32 @re_search(%struct.re_pattern_buffer* %private_preg, i8* %18, i32 %19, i32 0, i32 %20, %struct.re_registers* %cond)
  store i32 %call34, i32* %ret, align 4
  %22 = load i8, i8* %want_reg_info, align 1
  %tobool35 = icmp ne i8 %22, 0
  br i1 %tobool35, label %if.then.36, label %if.end.53

if.then.36:                                       ; preds = %cond.end
  %23 = load i32, i32* %ret, align 4
  %cmp37 = icmp sge i32 %23, 0
  br i1 %cmp37, label %if.then.39, label %if.end.51

if.then.39:                                       ; preds = %if.then.36
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.39
  %24 = load i32, i32* %r, align 4
  %conv40 = zext i32 %24 to i64
  %25 = load i64, i64* %nmatch.addr, align 8
  %cmp41 = icmp ult i64 %conv40, %25
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %r, align 4
  %idxprom = zext i32 %26 to i64
  %start43 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %regs, i32 0, i32 1
  %27 = load i32*, i32** %start43, align 8
  %arrayidx = getelementptr inbounds i32, i32* %27, i64 %idxprom
  %28 = load i32, i32* %arrayidx, align 4
  %29 = load i32, i32* %r, align 4
  %idxprom44 = zext i32 %29 to i64
  %30 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %30, i64 %idxprom44
  %rm_so = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx45, i32 0, i32 0
  store i32 %28, i32* %rm_so, align 4
  %31 = load i32, i32* %r, align 4
  %idxprom46 = zext i32 %31 to i64
  %end47 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %regs, i32 0, i32 2
  %32 = load i32*, i32** %end47, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %32, i64 %idxprom46
  %33 = load i32, i32* %arrayidx48, align 4
  %34 = load i32, i32* %r, align 4
  %idxprom49 = zext i32 %34 to i64
  %35 = load %struct.regmatch_t*, %struct.regmatch_t** %pmatch.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %35, i64 %idxprom49
  %rm_eo = getelementptr inbounds %struct.regmatch_t, %struct.regmatch_t* %arrayidx50, i32 0, i32 1
  store i32 %33, i32* %rm_eo, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %r, align 4
  %inc = add i32 %36, 1
  store i32 %inc, i32* %r, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.51

if.end.51:                                        ; preds = %for.end, %if.then.36
  %start52 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %regs, i32 0, i32 1
  %37 = load i32*, i32** %start52, align 8
  %38 = bitcast i32* %37 to i8*
  call void @free(i8* %38) #1
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.51, %cond.end
  %39 = load i32, i32* %ret, align 4
  %cmp54 = icmp sge i32 %39, 0
  %cond56 = select i1 %cmp54, i32 0, i32 1
  store i32 %cond56, i32* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.29
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define i64 @regerror(i32 %errcode, %struct.re_pattern_buffer* %preg, i8* %errbuf, i64 %errbuf_size) #0 {
entry:
  %errcode.addr = alloca i32, align 4
  %preg.addr = alloca %struct.re_pattern_buffer*, align 8
  %errbuf.addr = alloca i8*, align 8
  %errbuf_size.addr = alloca i64, align 8
  %msg = alloca i8*, align 8
  %msg_size = alloca i64, align 8
  store i32 %errcode, i32* %errcode.addr, align 4
  store %struct.re_pattern_buffer* %preg, %struct.re_pattern_buffer** %preg.addr, align 8
  store i8* %errbuf, i8** %errbuf.addr, align 8
  store i64 %errbuf_size, i64* %errbuf_size.addr, align 8
  %0 = load i32, i32* %errcode.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %errcode.addr, align 4
  %cmp1 = icmp sge i32 %1, 17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %errcode.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [17 x i8*], [17 x i8*]* @re_error_msgid, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  store i8* %3, i8** %msg, align 8
  %4 = load i8*, i8** %msg, align 8
  %call = call i64 @strlen(i8* %4) #7
  %add = add i64 %call, 1
  store i64 %add, i64* %msg_size, align 8
  %5 = load i64, i64* %errbuf_size.addr, align 8
  %cmp2 = icmp ne i64 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end.9

if.then.3:                                        ; preds = %if.end
  %6 = load i64, i64* %msg_size, align 8
  %7 = load i64, i64* %errbuf_size.addr, align 8
  %cmp4 = icmp ugt i64 %6, %7
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.3
  %8 = load i8*, i8** %errbuf.addr, align 8
  %9 = load i8*, i8** %msg, align 8
  %10 = load i64, i64* %errbuf_size.addr, align 8
  %sub = sub i64 %10, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 %sub, i32 1, i1 false)
  %11 = load i64, i64* %errbuf_size.addr, align 8
  %sub6 = sub i64 %11, 1
  %12 = load i8*, i8** %errbuf.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 %sub6
  store i8 0, i8* %arrayidx7, align 1
  br label %if.end.8

if.else:                                          ; preds = %if.then.3
  %13 = load i8*, i8** %errbuf.addr, align 8
  %14 = load i8*, i8** %msg, align 8
  %15 = load i64, i64* %msg_size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 %15, i32 1, i1 false)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %16 = load i64, i64* %msg_size, align 8
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define void @regfree(%struct.re_pattern_buffer* %preg) #0 {
entry:
  %preg.addr = alloca %struct.re_pattern_buffer*, align 8
  store %struct.re_pattern_buffer* %preg, %struct.re_pattern_buffer** %preg.addr, align 8
  %0 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %buffer = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %0, i32 0, i32 0
  %1 = load i8*, i8** %buffer, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %buffer1 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %2, i32 0, i32 0
  %3 = load i8*, i8** %buffer1, align 8
  call void @free(i8* %3) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %buffer2 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %4, i32 0, i32 0
  store i8* null, i8** %buffer2, align 8
  %5 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %allocated = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %5, i32 0, i32 1
  store i64 0, i64* %allocated, align 8
  %6 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %used = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %6, i32 0, i32 2
  store i64 0, i64* %used, align 8
  %7 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %fastmap = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %7, i32 0, i32 4
  %8 = load i8*, i8** %fastmap, align 8
  %cmp3 = icmp ne i8* %8, null
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %9 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %fastmap5 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %9, i32 0, i32 4
  %10 = load i8*, i8** %fastmap5, align 8
  call void @free(i8* %10) #1
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %11 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %fastmap7 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %11, i32 0, i32 4
  store i8* null, i8** %fastmap7, align 8
  %12 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %fastmap_accurate = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %12, i32 0, i32 7
  %bf.load = load i8, i8* %fastmap_accurate, align 8
  %bf.clear = and i8 %bf.load, -9
  store i8 %bf.clear, i8* %fastmap_accurate, align 8
  %13 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %translate = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %13, i32 0, i32 5
  %14 = load i8*, i8** %translate, align 8
  %cmp8 = icmp ne i8* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.6
  %15 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %translate10 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %15, i32 0, i32 5
  %16 = load i8*, i8** %translate10, align 8
  call void @free(i8* %16) #1
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.6
  %17 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %preg.addr, align 8
  %translate12 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %17, i32 0, i32 5
  store i8* null, i8** %translate12, align 8
  ret void
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @group_match_null_string_p(i8** %p, i8* %end, %union.register_info_type* %reg_info) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %reg_info.addr = alloca %union.register_info_type*, align 8
  %mcnt = alloca i32, align 4
  %p1 = alloca i8*, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %union.register_info_type* %reg_info, %union.register_info_type** %reg_info.addr, align 8
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 2
  store i8* %add.ptr, i8** %p1, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load i8*, i8** %p1, align 8
  %3 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ult i8* %2, %3
  br i1 %cmp, label %while.body, label %while.end.70

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %p1, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 15, label %sw.bb
    i32 7, label %sw.bb.64
  ]

sw.bb:                                            ; preds = %while.body
  %6 = load i8*, i8** %p1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %p1, align 8
  br label %do.body

do.body:                                          ; preds = %sw.bb
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %7 = load i8*, i8** %p1, align 8
  %8 = load i8, i8* %7, align 1
  %conv2 = zext i8 %8 to i32
  %and = and i32 %conv2, 255
  store i32 %and, i32* %mcnt, align 4
  %9 = load i8*, i8** %p1, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %add.ptr3, align 1
  %conv4 = sext i8 %10 to i32
  %shl = shl i32 %conv4, 8
  %11 = load i32, i32* %mcnt, align 4
  %add = add nsw i32 %11, %shl
  store i32 %add, i32* %mcnt, align 4
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %12 = load i8*, i8** %p1, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %12, i64 2
  store i8* %add.ptr5, i8** %p1, align 8
  br label %do.end.6

do.end.6:                                         ; preds = %do.end
  %13 = load i32, i32* %mcnt, align 4
  %cmp7 = icmp sge i32 %13, 0
  br i1 %cmp7, label %if.then, label %if.end.63

if.then:                                          ; preds = %do.end.6
  br label %while.cond.9

while.cond.9:                                     ; preds = %if.end.44, %if.then
  %14 = load i32, i32* %mcnt, align 4
  %sub = sub nsw i32 %14, 3
  %idxprom = sext i32 %sub to i64
  %15 = load i8*, i8** %p1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1
  %conv10 = zext i8 %16 to i32
  %cmp11 = icmp eq i32 %conv10, 14
  br i1 %cmp11, label %while.body.13, label %while.end

while.body.13:                                    ; preds = %while.cond.9
  %17 = load i8*, i8** %p1, align 8
  %18 = load i8*, i8** %p1, align 8
  %19 = load i32, i32* %mcnt, align 4
  %idx.ext = sext i32 %19 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  %add.ptr15 = getelementptr inbounds i8, i8* %add.ptr14, i64 -3
  %20 = load %union.register_info_type*, %union.register_info_type** %reg_info.addr, align 8
  %call = call signext i8 @alt_match_null_string_p(i8* %17, i8* %add.ptr15, %union.register_info_type* %20)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %if.end, label %if.then.16

if.then.16:                                       ; preds = %while.body.13
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %while.body.13
  %21 = load i32, i32* %mcnt, align 4
  %22 = load i8*, i8** %p1, align 8
  %idx.ext17 = sext i32 %21 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %22, i64 %idx.ext17
  store i8* %add.ptr18, i8** %p1, align 8
  %23 = load i8*, i8** %p1, align 8
  %24 = load i8, i8* %23, align 1
  %conv19 = zext i8 %24 to i32
  %cmp20 = icmp ne i32 %conv19, 15
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end
  br label %while.end

if.end.23:                                        ; preds = %if.end
  %25 = load i8*, i8** %p1, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr24, i8** %p1, align 8
  br label %do.body.25

do.body.25:                                       ; preds = %if.end.23
  br label %do.body.26

do.body.26:                                       ; preds = %do.body.25
  %26 = load i8*, i8** %p1, align 8
  %27 = load i8, i8* %26, align 1
  %conv27 = zext i8 %27 to i32
  %and28 = and i32 %conv27, 255
  store i32 %and28, i32* %mcnt, align 4
  %28 = load i8*, i8** %p1, align 8
  %add.ptr29 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %add.ptr29, align 1
  %conv30 = sext i8 %29 to i32
  %shl31 = shl i32 %conv30, 8
  %30 = load i32, i32* %mcnt, align 4
  %add32 = add nsw i32 %30, %shl31
  store i32 %add32, i32* %mcnt, align 4
  br label %do.end.33

do.end.33:                                        ; preds = %do.body.26
  %31 = load i8*, i8** %p1, align 8
  %add.ptr34 = getelementptr inbounds i8, i8* %31, i64 2
  store i8* %add.ptr34, i8** %p1, align 8
  br label %do.end.35

do.end.35:                                        ; preds = %do.end.33
  %32 = load i32, i32* %mcnt, align 4
  %sub36 = sub nsw i32 %32, 3
  %idxprom37 = sext i32 %sub36 to i64
  %33 = load i8*, i8** %p1, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %33, i64 %idxprom37
  %34 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %34 to i32
  %cmp40 = icmp ne i32 %conv39, 14
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %do.end.35
  %35 = load i8*, i8** %p1, align 8
  %add.ptr43 = getelementptr inbounds i8, i8* %35, i64 -3
  store i8* %add.ptr43, i8** %p1, align 8
  br label %while.end

if.end.44:                                        ; preds = %do.end.35
  br label %while.cond.9

while.end:                                        ; preds = %if.then.42, %if.then.22, %while.cond.9
  br label %do.body.45

do.body.45:                                       ; preds = %while.end
  %36 = load i8*, i8** %p1, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %36, i64 -2
  %37 = load i8, i8* %add.ptr46, align 1
  %conv47 = zext i8 %37 to i32
  %and48 = and i32 %conv47, 255
  store i32 %and48, i32* %mcnt, align 4
  %38 = load i8*, i8** %p1, align 8
  %add.ptr49 = getelementptr inbounds i8, i8* %38, i64 -2
  %add.ptr50 = getelementptr inbounds i8, i8* %add.ptr49, i64 1
  %39 = load i8, i8* %add.ptr50, align 1
  %conv51 = sext i8 %39 to i32
  %shl52 = shl i32 %conv51, 8
  %40 = load i32, i32* %mcnt, align 4
  %add53 = add nsw i32 %40, %shl52
  store i32 %add53, i32* %mcnt, align 4
  br label %do.end.54

do.end.54:                                        ; preds = %do.body.45
  %41 = load i8*, i8** %p1, align 8
  %42 = load i8*, i8** %p1, align 8
  %43 = load i32, i32* %mcnt, align 4
  %idx.ext55 = sext i32 %43 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %42, i64 %idx.ext55
  %44 = load %union.register_info_type*, %union.register_info_type** %reg_info.addr, align 8
  %call57 = call signext i8 @alt_match_null_string_p(i8* %41, i8* %add.ptr56, %union.register_info_type* %44)
  %tobool58 = icmp ne i8 %call57, 0
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %do.end.54
  store i8 0, i8* %retval
  br label %return

if.end.60:                                        ; preds = %do.end.54
  %45 = load i32, i32* %mcnt, align 4
  %46 = load i8*, i8** %p1, align 8
  %idx.ext61 = sext i32 %45 to i64
  %add.ptr62 = getelementptr inbounds i8, i8* %46, i64 %idx.ext61
  store i8* %add.ptr62, i8** %p1, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.60, %do.end.6
  br label %sw.epilog

sw.bb.64:                                         ; preds = %while.body
  %47 = load i8*, i8** %p1, align 8
  %add.ptr65 = getelementptr inbounds i8, i8* %47, i64 2
  %48 = load i8**, i8*** %p.addr, align 8
  store i8* %add.ptr65, i8** %48, align 8
  store i8 1, i8* %retval
  br label %return

sw.default:                                       ; preds = %while.body
  %49 = load i8*, i8** %end.addr, align 8
  %50 = load %union.register_info_type*, %union.register_info_type** %reg_info.addr, align 8
  %call66 = call signext i8 @common_op_match_null_string_p(i8** %p1, i8* %49, %union.register_info_type* %50)
  %tobool67 = icmp ne i8 %call66, 0
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %sw.default
  store i8 0, i8* %retval
  br label %return

if.end.69:                                        ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.69, %if.end.63
  br label %while.cond

while.end.70:                                     ; preds = %while.cond
  store i8 0, i8* %retval
  br label %return

return:                                           ; preds = %while.end.70, %if.then.68, %sw.bb.64, %if.then.59, %if.then.16
  %51 = load i8, i8* %retval
  ret i8 %51
}

; Function Attrs: nounwind uwtable
define internal i32 @bcmp_translate(i8* %s1, i8* %s2, i32 %len, i8* %translate) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %translate.addr = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* %translate, i8** %translate.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  store i8* %0, i8** %p1, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  store i8* %1, i8** %p2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, i32* %len.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %p1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %p1, align 8
  %4 = load i8, i8* %3, align 1
  %idxprom = zext i8 %4 to i64
  %5 = load i8*, i8** %translate.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %7 = load i8*, i8** %p2, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr1, i8** %p2, align 8
  %8 = load i8, i8* %7, align 1
  %idxprom2 = zext i8 %8 to i64
  %9 = load i8*, i8** %translate.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %9, i64 %idxprom2
  %10 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %10 to i32
  %cmp = icmp ne i32 %conv, %conv4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %11 = load i32, i32* %len.addr, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %len.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define internal signext i8 @alt_match_null_string_p(i8* %p, i8* %end, %union.register_info_type* %reg_info) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %reg_info.addr = alloca %union.register_info_type*, align 8
  %mcnt = alloca i32, align 4
  %p1 = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %union.register_info_type* %reg_info, %union.register_info_type** %reg_info.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  store i8* %0, i8** %p1, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %1 = load i8*, i8** %p1, align 8
  %2 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ult i8* %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %p1, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i32
  switch i32 %conv, label %sw.default [
    i32 15, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body
  %5 = load i8*, i8** %p1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %p1, align 8
  br label %do.body

do.body:                                          ; preds = %sw.bb
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %6 = load i8*, i8** %p1, align 8
  %7 = load i8, i8* %6, align 1
  %conv2 = zext i8 %7 to i32
  %and = and i32 %conv2, 255
  store i32 %and, i32* %mcnt, align 4
  %8 = load i8*, i8** %p1, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %add.ptr, align 1
  %conv3 = sext i8 %9 to i32
  %shl = shl i32 %conv3, 8
  %10 = load i32, i32* %mcnt, align 4
  %add = add nsw i32 %10, %shl
  store i32 %add, i32* %mcnt, align 4
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %11 = load i8*, i8** %p1, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %11, i64 2
  store i8* %add.ptr4, i8** %p1, align 8
  br label %do.end.5

do.end.5:                                         ; preds = %do.end
  %12 = load i32, i32* %mcnt, align 4
  %13 = load i8*, i8** %p1, align 8
  %idx.ext = sext i32 %12 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr6, i8** %p1, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %14 = load i8*, i8** %end.addr, align 8
  %15 = load %union.register_info_type*, %union.register_info_type** %reg_info.addr, align 8
  %call = call signext i8 @common_op_match_null_string_p(i8** %p1, i8* %14, %union.register_info_type* %15)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.default
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %do.end.5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8 1, i8* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %16 = load i8, i8* %retval
  ret i8 %16
}

; Function Attrs: nounwind uwtable
define internal signext i8 @common_op_match_null_string_p(i8** %p, i8* %end, %union.register_info_type* %reg_info) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %reg_info.addr = alloca %union.register_info_type*, align 8
  %mcnt = alloca i32, align 4
  %ret = alloca i8, align 1
  %reg_no = alloca i32, align 4
  %p1 = alloca i8*, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %union.register_info_type* %reg_info, %union.register_info_type** %reg_info.addr, align 8
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %p1, align 8
  %2 = load i8*, i8** %p1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %p1, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 26, label %sw.bb
    i32 27, label %sw.bb
    i32 28, label %sw.bb
    i32 29, label %sw.bb
    i32 6, label %sw.bb.1
    i32 13, label %sw.bb.12
    i32 21, label %sw.bb.23
    i32 8, label %sw.bb.55
    i32 23, label %sw.bb.65
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load i8*, i8** %p1, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = zext i8 %5 to i32
  store i32 %conv2, i32* %reg_no, align 4
  %6 = load i8*, i8** %end.addr, align 8
  %7 = load %union.register_info_type*, %union.register_info_type** %reg_info.addr, align 8
  %call = call signext i8 @group_match_null_string_p(i8** %p1, i8* %6, %union.register_info_type* %7)
  store i8 %call, i8* %ret, align 1
  %8 = load i32, i32* %reg_no, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %union.register_info_type*, %union.register_info_type** %reg_info.addr, align 8
  %arrayidx = getelementptr inbounds %union.register_info_type, %union.register_info_type* %9, i64 %idxprom
  %bits = bitcast %union.register_info_type* %arrayidx to %struct.anon*
  %10 = bitcast %struct.anon* %bits to i8*
  %bf.load = load i8, i8* %10, align 4
  %bf.clear = and i8 %bf.load, 3
  %bf.cast = zext i8 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.1
  %11 = load i8, i8* %ret, align 1
  %conv4 = sext i8 %11 to i32
  %12 = load i32, i32* %reg_no, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %union.register_info_type*, %union.register_info_type** %reg_info.addr, align 8
  %arrayidx6 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %13, i64 %idxprom5
  %bits7 = bitcast %union.register_info_type* %arrayidx6 to %struct.anon*
  %14 = bitcast %struct.anon* %bits7 to i8*
  %15 = trunc i32 %conv4 to i8
  %bf.load8 = load i8, i8* %14, align 4
  %bf.value = and i8 %15, 3
  %bf.clear9 = and i8 %bf.load8, -4
  %bf.set = or i8 %bf.clear9, %bf.value
  store i8 %bf.set, i8* %14, align 4
  %bf.result.cast = zext i8 %bf.value to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.1
  %16 = load i8, i8* %ret, align 1
  %tobool = icmp ne i8 %16, 0
  br i1 %tobool, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end
  store i8 0, i8* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb.12
  br label %do.body.13

do.body.13:                                       ; preds = %do.body
  %17 = load i8*, i8** %p1, align 8
  %18 = load i8, i8* %17, align 1
  %conv14 = zext i8 %18 to i32
  %and = and i32 %conv14, 255
  store i32 %and, i32* %mcnt, align 4
  %19 = load i8*, i8** %p1, align 8
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %add.ptr, align 1
  %conv15 = sext i8 %20 to i32
  %shl = shl i32 %conv15, 8
  %21 = load i32, i32* %mcnt, align 4
  %add = add nsw i32 %21, %shl
  store i32 %add, i32* %mcnt, align 4
  br label %do.end

do.end:                                           ; preds = %do.body.13
  %22 = load i8*, i8** %p1, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %22, i64 2
  store i8* %add.ptr16, i8** %p1, align 8
  br label %do.end.17

do.end.17:                                        ; preds = %do.end
  %23 = load i32, i32* %mcnt, align 4
  %cmp18 = icmp sge i32 %23, 0
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.end.17
  %24 = load i32, i32* %mcnt, align 4
  %25 = load i8*, i8** %p1, align 8
  %idx.ext = sext i32 %24 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  store i8* %add.ptr21, i8** %p1, align 8
  br label %if.end.22

if.else:                                          ; preds = %do.end.17
  store i8 0, i8* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %26 = load i8*, i8** %p1, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %26, i64 2
  store i8* %add.ptr24, i8** %p1, align 8
  br label %do.body.25

do.body.25:                                       ; preds = %sw.bb.23
  br label %do.body.26

do.body.26:                                       ; preds = %do.body.25
  %27 = load i8*, i8** %p1, align 8
  %28 = load i8, i8* %27, align 1
  %conv27 = zext i8 %28 to i32
  %and28 = and i32 %conv27, 255
  store i32 %and28, i32* %mcnt, align 4
  %29 = load i8*, i8** %p1, align 8
  %add.ptr29 = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i8, i8* %add.ptr29, align 1
  %conv30 = sext i8 %30 to i32
  %shl31 = shl i32 %conv30, 8
  %31 = load i32, i32* %mcnt, align 4
  %add32 = add nsw i32 %31, %shl31
  store i32 %add32, i32* %mcnt, align 4
  br label %do.end.33

do.end.33:                                        ; preds = %do.body.26
  %32 = load i8*, i8** %p1, align 8
  %add.ptr34 = getelementptr inbounds i8, i8* %32, i64 2
  store i8* %add.ptr34, i8** %p1, align 8
  br label %do.end.35

do.end.35:                                        ; preds = %do.end.33
  %33 = load i32, i32* %mcnt, align 4
  %cmp36 = icmp eq i32 %33, 0
  br i1 %cmp36, label %if.then.38, label %if.else.53

if.then.38:                                       ; preds = %do.end.35
  %34 = load i8*, i8** %p1, align 8
  %add.ptr39 = getelementptr inbounds i8, i8* %34, i64 -4
  store i8* %add.ptr39, i8** %p1, align 8
  br label %do.body.40

do.body.40:                                       ; preds = %if.then.38
  br label %do.body.41

do.body.41:                                       ; preds = %do.body.40
  %35 = load i8*, i8** %p1, align 8
  %36 = load i8, i8* %35, align 1
  %conv42 = zext i8 %36 to i32
  %and43 = and i32 %conv42, 255
  store i32 %and43, i32* %mcnt, align 4
  %37 = load i8*, i8** %p1, align 8
  %add.ptr44 = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %add.ptr44, align 1
  %conv45 = sext i8 %38 to i32
  %shl46 = shl i32 %conv45, 8
  %39 = load i32, i32* %mcnt, align 4
  %add47 = add nsw i32 %39, %shl46
  store i32 %add47, i32* %mcnt, align 4
  br label %do.end.48

do.end.48:                                        ; preds = %do.body.41
  %40 = load i8*, i8** %p1, align 8
  %add.ptr49 = getelementptr inbounds i8, i8* %40, i64 2
  store i8* %add.ptr49, i8** %p1, align 8
  br label %do.end.50

do.end.50:                                        ; preds = %do.end.48
  %41 = load i32, i32* %mcnt, align 4
  %42 = load i8*, i8** %p1, align 8
  %idx.ext51 = sext i32 %41 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %42, i64 %idx.ext51
  store i8* %add.ptr52, i8** %p1, align 8
  br label %if.end.54

if.else.53:                                       ; preds = %do.end.35
  store i8 0, i8* %retval
  br label %return

if.end.54:                                        ; preds = %do.end.50
  br label %sw.epilog

sw.bb.55:                                         ; preds = %entry
  %43 = load i8*, i8** %p1, align 8
  %44 = load i8, i8* %43, align 1
  %idxprom56 = zext i8 %44 to i64
  %45 = load %union.register_info_type*, %union.register_info_type** %reg_info.addr, align 8
  %arrayidx57 = getelementptr inbounds %union.register_info_type, %union.register_info_type* %45, i64 %idxprom56
  %bits58 = bitcast %union.register_info_type* %arrayidx57 to %struct.anon*
  %46 = bitcast %struct.anon* %bits58 to i8*
  %bf.load59 = load i8, i8* %46, align 4
  %bf.clear60 = and i8 %bf.load59, 3
  %bf.cast61 = zext i8 %bf.clear60 to i32
  %tobool62 = icmp ne i32 %bf.cast61, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %sw.bb.55
  store i8 0, i8* %retval
  br label %return

if.end.64:                                        ; preds = %sw.bb.55
  br label %sw.epilog

sw.bb.65:                                         ; preds = %entry
  %47 = load i8*, i8** %p1, align 8
  %add.ptr66 = getelementptr inbounds i8, i8* %47, i64 4
  store i8* %add.ptr66, i8** %p1, align 8
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.65
  store i8 0, i8* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.64, %if.end.54, %if.end.22, %if.end.11, %sw.bb
  %48 = load i8*, i8** %p1, align 8
  %49 = load i8**, i8*** %p.addr, align 8
  store i8* %48, i8** %49, align 8
  store i8 1, i8* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then.63, %if.else.53, %if.else, %if.then.10
  %50 = load i8, i8* %retval
  ret i8 %50
}

; Function Attrs: nounwind uwtable
define internal signext i8 @at_begline_loc_p(i8* %pattern, i8* %p, i64 %syntax) #0 {
entry:
  %pattern.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %syntax.addr = alloca i64, align 8
  %prev = alloca i8*, align 8
  %prev_prev_backslash = alloca i8, align 1
  store i8* %pattern, i8** %pattern.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64 %syntax, i64* %syntax.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 -2
  store i8* %add.ptr, i8** %prev, align 8
  %1 = load i8*, i8** %prev, align 8
  %2 = load i8*, i8** %pattern.addr, align 8
  %cmp = icmp ugt i8* %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i8*, i8** %prev, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 -1
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 92
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  %conv3 = trunc i32 %land.ext to i8
  store i8 %conv3, i8* %prev_prev_backslash, align 1
  %6 = load i8*, i8** %prev, align 8
  %7 = load i8, i8* %6, align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 40
  br i1 %cmp5, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %land.end
  %8 = load i64, i64* %syntax.addr, align 8
  %and = and i64 %8, 8192
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %lor.end.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = load i8, i8* %prev_prev_backslash, align 1
  %conv7 = sext i8 %9 to i32
  %tobool8 = icmp ne i32 %conv7, 0
  br i1 %tobool8, label %lor.end.20, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false, %land.end
  %10 = load i8*, i8** %prev, align 8
  %11 = load i8, i8* %10, align 1
  %conv9 = sext i8 %11 to i32
  %cmp10 = icmp eq i32 %conv9, 124
  br i1 %cmp10, label %land.rhs.12, label %land.end.18

land.rhs.12:                                      ; preds = %lor.rhs
  %12 = load i64, i64* %syntax.addr, align 8
  %and13 = and i64 %12, 32768
  %tobool14 = icmp ne i64 %and13, 0
  br i1 %tobool14, label %lor.end, label %lor.rhs.15

lor.rhs.15:                                       ; preds = %land.rhs.12
  %13 = load i8, i8* %prev_prev_backslash, align 1
  %conv16 = sext i8 %13 to i32
  %tobool17 = icmp ne i32 %conv16, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs.15, %land.rhs.12
  %14 = phi i1 [ true, %land.rhs.12 ], [ %tobool17, %lor.rhs.15 ]
  br label %land.end.18

land.end.18:                                      ; preds = %lor.end, %lor.rhs
  %15 = phi i1 [ false, %lor.rhs ], [ %14, %lor.end ]
  br label %lor.end.20

lor.end.20:                                       ; preds = %land.end.18, %lor.lhs.false, %land.lhs.true
  %16 = phi i1 [ true, %lor.lhs.false ], [ true, %land.lhs.true ], [ %15, %land.end.18 ]
  %lor.ext = zext i1 %16 to i32
  %conv21 = trunc i32 %lor.ext to i8
  ret i8 %conv21
}

; Function Attrs: nounwind uwtable
define internal signext i8 @at_endline_loc_p(i8* %p, i8* %pend, i64 %syntax) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %pend.addr = alloca i8*, align 8
  %syntax.addr = alloca i64, align 8
  %next = alloca i8*, align 8
  %next_backslash = alloca i8, align 1
  %next_next = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %pend, i8** %pend.addr, align 8
  store i64 %syntax, i64* %syntax.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  store i8* %0, i8** %next, align 8
  %1 = load i8*, i8** %next, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 92
  %conv1 = zext i1 %cmp to i32
  %conv2 = trunc i32 %conv1 to i8
  store i8 %conv2, i8* %next_backslash, align 1
  %3 = load i8*, i8** %p.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8*, i8** %pend.addr, align 8
  %cmp3 = icmp ult i8* %add.ptr, %4
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i8*, i8** %p.addr, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %5, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr5, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %next_next, align 8
  %6 = load i64, i64* %syntax.addr, align 8
  %and = and i64 %6, 8192
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %cond.true.6, label %cond.false.10

cond.true.6:                                      ; preds = %cond.end
  %7 = load i8*, i8** %next, align 8
  %8 = load i8, i8* %7, align 1
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 41
  br i1 %cmp8, label %lor.end, label %lor.rhs

cond.false.10:                                    ; preds = %cond.end
  %9 = load i8, i8* %next_backslash, align 1
  %conv11 = sext i8 %9 to i32
  %tobool12 = icmp ne i32 %conv11, 0
  br i1 %tobool12, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %cond.false.10
  %10 = load i8*, i8** %next_next, align 8
  %tobool13 = icmp ne i8* %10, null
  br i1 %tobool13, label %land.lhs.true.14, label %lor.rhs

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %11 = load i8*, i8** %next_next, align 8
  %12 = load i8, i8* %11, align 1
  %conv15 = sext i8 %12 to i32
  %cmp16 = icmp eq i32 %conv15, 41
  br i1 %cmp16, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.14, %land.lhs.true, %cond.false.10, %cond.true.6
  %13 = load i64, i64* %syntax.addr, align 8
  %and18 = and i64 %13, 32768
  %tobool19 = icmp ne i64 %and18, 0
  br i1 %tobool19, label %cond.true.20, label %cond.false.24

cond.true.20:                                     ; preds = %lor.rhs
  %14 = load i8*, i8** %next, align 8
  %15 = load i8, i8* %14, align 1
  %conv21 = sext i8 %15 to i32
  %cmp22 = icmp eq i32 %conv21, 124
  %conv23 = zext i1 %cmp22 to i32
  br label %cond.end.32

cond.false.24:                                    ; preds = %lor.rhs
  %16 = load i8, i8* %next_backslash, align 1
  %conv25 = sext i8 %16 to i32
  %tobool26 = icmp ne i32 %conv25, 0
  br i1 %tobool26, label %land.lhs.true.27, label %land.end

land.lhs.true.27:                                 ; preds = %cond.false.24
  %17 = load i8*, i8** %next_next, align 8
  %tobool28 = icmp ne i8* %17, null
  br i1 %tobool28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.27
  %18 = load i8*, i8** %next_next, align 8
  %19 = load i8, i8* %18, align 1
  %conv29 = sext i8 %19 to i32
  %cmp30 = icmp eq i32 %conv29, 124
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.27, %cond.false.24
  %20 = phi i1 [ false, %land.lhs.true.27 ], [ false, %cond.false.24 ], [ %cmp30, %land.rhs ]
  %land.ext = zext i1 %20 to i32
  br label %cond.end.32

cond.end.32:                                      ; preds = %land.end, %cond.true.20
  %cond33 = phi i32 [ %conv23, %cond.true.20 ], [ %land.ext, %land.end ]
  %tobool34 = icmp ne i32 %cond33, 0
  br label %lor.end

lor.end:                                          ; preds = %cond.end.32, %land.lhs.true.14, %cond.true.6
  %21 = phi i1 [ true, %land.lhs.true.14 ], [ true, %cond.true.6 ], [ %tobool34, %cond.end.32 ]
  %lor.ext = zext i1 %21 to i32
  %conv35 = trunc i32 %lor.ext to i8
  ret i8 %conv35
}

; Function Attrs: nounwind uwtable
define internal void @store_op1(i32 %op, i8* %loc, i32 %arg) #0 {
entry:
  %op.addr = alloca i32, align 4
  %loc.addr = alloca i8*, align 8
  %arg.addr = alloca i32, align 4
  store i32 %op, i32* %op.addr, align 4
  store i8* %loc, i8** %loc.addr, align 8
  store i32 %arg, i32* %arg.addr, align 4
  %0 = load i32, i32* %op.addr, align 4
  %conv = trunc i32 %0 to i8
  %1 = load i8*, i8** %loc.addr, align 8
  store i8 %conv, i8* %1, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %arg.addr, align 4
  %and = and i32 %2, 255
  %conv1 = trunc i32 %and to i8
  %3 = load i8*, i8** %loc.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr, i64 0
  store i8 %conv1, i8* %arrayidx, align 1
  %4 = load i32, i32* %arg.addr, align 4
  %shr = ashr i32 %4, 8
  %conv2 = trunc i32 %shr to i8
  %5 = load i8*, i8** %loc.addr, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 1
  %arrayidx4 = getelementptr inbounds i8, i8* %add.ptr3, i64 1
  store i8 %conv2, i8* %arrayidx4, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @insert_op1(i32 %op, i8* %loc, i32 %arg, i8* %end) #0 {
entry:
  %op.addr = alloca i32, align 4
  %loc.addr = alloca i8*, align 8
  %arg.addr = alloca i32, align 4
  %end.addr = alloca i8*, align 8
  %pfrom = alloca i8*, align 8
  %pto = alloca i8*, align 8
  store i32 %op, i32* %op.addr, align 4
  store i8* %loc, i8** %loc.addr, align 8
  store i32 %arg, i32* %arg.addr, align 4
  store i8* %end, i8** %end.addr, align 8
  %0 = load i8*, i8** %end.addr, align 8
  store i8* %0, i8** %pfrom, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 3
  store i8* %add.ptr, i8** %pto, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %pfrom, align 8
  %3 = load i8*, i8** %loc.addr, align 8
  %cmp = icmp ne i8* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %pfrom, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 -1
  store i8* %incdec.ptr, i8** %pfrom, align 8
  %5 = load i8, i8* %incdec.ptr, align 1
  %6 = load i8*, i8** %pto, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %6, i32 -1
  store i8* %incdec.ptr1, i8** %pto, align 8
  store i8 %5, i8* %incdec.ptr1, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %op.addr, align 4
  %8 = load i8*, i8** %loc.addr, align 8
  %9 = load i32, i32* %arg.addr, align 4
  call void @store_op1(i32 %7, i8* %8, i32 %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @compile_range(i8** %p_ptr, i8* %pend, i8* %translate, i64 %syntax, i8* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %p_ptr.addr = alloca i8**, align 8
  %pend.addr = alloca i8*, align 8
  %translate.addr = alloca i8*, align 8
  %syntax.addr = alloca i64, align 8
  %b.addr = alloca i8*, align 8
  %this_char = alloca i32, align 4
  %p = alloca i8*, align 8
  %range_start = alloca i32, align 4
  %range_end = alloca i32, align 4
  store i8** %p_ptr, i8*** %p_ptr.addr, align 8
  store i8* %pend, i8** %pend.addr, align 8
  store i8* %translate, i8** %translate.addr, align 8
  store i64 %syntax, i64* %syntax.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8**, i8*** %p_ptr.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %3 = load i8*, i8** %pend.addr, align 8
  %cmp = icmp eq i8* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 11, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 -2
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  store i32 %conv, i32* %range_start, align 4
  %6 = load i8*, i8** %p, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %7 to i32
  store i32 %conv2, i32* %range_end, align 4
  %8 = load i8**, i8*** %p_ptr.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %8, align 8
  %10 = load i32, i32* %range_start, align 4
  %11 = load i32, i32* %range_end, align 4
  %cmp3 = icmp ugt i32 %10, %11
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %12 = load i64, i64* %syntax.addr, align 8
  %and = and i64 %12, 65536
  %tobool = icmp ne i64 %and, 0
  %cond = select i1 %tobool, i32 11, i32 0
  store i32 %cond, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %13 = load i32, i32* %range_start, align 4
  store i32 %13, i32* %this_char, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %14 = load i32, i32* %this_char, align 4
  %15 = load i32, i32* %range_end, align 4
  %cmp7 = icmp ule i32 %14, %15
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i8*, i8** %translate.addr, align 8
  %tobool9 = icmp ne i8* %16, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %17 = load i32, i32* %this_char, align 4
  %conv10 = trunc i32 %17 to i8
  %idxprom = zext i8 %conv10 to i64
  %18 = load i8*, i8** %translate.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %19 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %20 = load i32, i32* %this_char, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond13 = phi i32 [ %conv12, %cond.true ], [ %20, %cond.false ]
  %conv14 = trunc i32 %cond13 to i8
  %conv15 = zext i8 %conv14 to i32
  %rem = srem i32 %conv15, 8
  %shl = shl i32 1, %rem
  %21 = load i8*, i8** %translate.addr, align 8
  %tobool16 = icmp ne i8* %21, null
  br i1 %tobool16, label %cond.true.17, label %cond.false.22

cond.true.17:                                     ; preds = %cond.end
  %22 = load i32, i32* %this_char, align 4
  %conv18 = trunc i32 %22 to i8
  %idxprom19 = zext i8 %conv18 to i64
  %23 = load i8*, i8** %translate.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %23, i64 %idxprom19
  %24 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %24 to i32
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.end
  %25 = load i32, i32* %this_char, align 4
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.17
  %cond24 = phi i32 [ %conv21, %cond.true.17 ], [ %25, %cond.false.22 ]
  %conv25 = trunc i32 %cond24 to i8
  %conv26 = zext i8 %conv25 to i32
  %div = sdiv i32 %conv26, 8
  %idxprom27 = sext i32 %div to i64
  %26 = load i8*, i8** %b.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %26, i64 %idxprom27
  %27 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %27 to i32
  %or = or i32 %conv29, %shl
  %conv30 = trunc i32 %or to i8
  store i8 %conv30, i8* %arrayidx28, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.23
  %28 = load i32, i32* %this_char, align 4
  %inc = add i32 %28, 1
  store i32 %inc, i32* %this_char, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal void @insert_op2(i32 %op, i8* %loc, i32 %arg1, i32 %arg2, i8* %end) #0 {
entry:
  %op.addr = alloca i32, align 4
  %loc.addr = alloca i8*, align 8
  %arg1.addr = alloca i32, align 4
  %arg2.addr = alloca i32, align 4
  %end.addr = alloca i8*, align 8
  %pfrom = alloca i8*, align 8
  %pto = alloca i8*, align 8
  store i32 %op, i32* %op.addr, align 4
  store i8* %loc, i8** %loc.addr, align 8
  store i32 %arg1, i32* %arg1.addr, align 4
  store i32 %arg2, i32* %arg2.addr, align 4
  store i8* %end, i8** %end.addr, align 8
  %0 = load i8*, i8** %end.addr, align 8
  store i8* %0, i8** %pfrom, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 5
  store i8* %add.ptr, i8** %pto, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %pfrom, align 8
  %3 = load i8*, i8** %loc.addr, align 8
  %cmp = icmp ne i8* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %pfrom, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 -1
  store i8* %incdec.ptr, i8** %pfrom, align 8
  %5 = load i8, i8* %incdec.ptr, align 1
  %6 = load i8*, i8** %pto, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %6, i32 -1
  store i8* %incdec.ptr1, i8** %pto, align 8
  store i8 %5, i8* %incdec.ptr1, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %op.addr, align 4
  %8 = load i8*, i8** %loc.addr, align 8
  %9 = load i32, i32* %arg1.addr, align 4
  %10 = load i32, i32* %arg2.addr, align 4
  call void @store_op2(i32 %7, i8* %8, i32 %9, i32 %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @store_op2(i32 %op, i8* %loc, i32 %arg1, i32 %arg2) #0 {
entry:
  %op.addr = alloca i32, align 4
  %loc.addr = alloca i8*, align 8
  %arg1.addr = alloca i32, align 4
  %arg2.addr = alloca i32, align 4
  store i32 %op, i32* %op.addr, align 4
  store i8* %loc, i8** %loc.addr, align 8
  store i32 %arg1, i32* %arg1.addr, align 4
  store i32 %arg2, i32* %arg2.addr, align 4
  %0 = load i32, i32* %op.addr, align 4
  %conv = trunc i32 %0 to i8
  %1 = load i8*, i8** %loc.addr, align 8
  store i8 %conv, i8* %1, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %arg1.addr, align 4
  %and = and i32 %2, 255
  %conv1 = trunc i32 %and to i8
  %3 = load i8*, i8** %loc.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr, i64 0
  store i8 %conv1, i8* %arrayidx, align 1
  %4 = load i32, i32* %arg1.addr, align 4
  %shr = ashr i32 %4, 8
  %conv2 = trunc i32 %shr to i8
  %5 = load i8*, i8** %loc.addr, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 1
  %arrayidx4 = getelementptr inbounds i8, i8* %add.ptr3, i64 1
  store i8 %conv2, i8* %arrayidx4, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %6 = load i32, i32* %arg2.addr, align 4
  %and6 = and i32 %6, 255
  %conv7 = trunc i32 %and6 to i8
  %7 = load i8*, i8** %loc.addr, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %7, i64 3
  %arrayidx9 = getelementptr inbounds i8, i8* %add.ptr8, i64 0
  store i8 %conv7, i8* %arrayidx9, align 1
  %8 = load i32, i32* %arg2.addr, align 4
  %shr10 = ashr i32 %8, 8
  %conv11 = trunc i32 %shr10 to i8
  %9 = load i8*, i8** %loc.addr, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %9, i64 3
  %arrayidx13 = getelementptr inbounds i8, i8* %add.ptr12, i64 1
  store i8 %conv11, i8* %arrayidx13, align 1
  br label %do.end.14

do.end.14:                                        ; preds = %do.body.5
  ret void
}

; Function Attrs: nounwind uwtable
define internal signext i8 @group_in_compile_stack(%struct.compile_stack_elt_t* %compile_stack.coerce0, i64 %compile_stack.coerce1, i32 %regnum) #0 {
entry:
  %retval = alloca i8, align 1
  %compile_stack = alloca %struct.compile_stack_type, align 8
  %regnum.addr = alloca i32, align 4
  %this_element = alloca i32, align 4
  %0 = bitcast %struct.compile_stack_type* %compile_stack to { %struct.compile_stack_elt_t*, i64 }*
  %1 = getelementptr { %struct.compile_stack_elt_t*, i64 }, { %struct.compile_stack_elt_t*, i64 }* %0, i32 0, i32 0
  store %struct.compile_stack_elt_t* %compile_stack.coerce0, %struct.compile_stack_elt_t** %1
  %2 = getelementptr { %struct.compile_stack_elt_t*, i64 }, { %struct.compile_stack_elt_t*, i64 }* %0, i32 0, i32 1
  store i64 %compile_stack.coerce1, i64* %2
  store i32 %regnum, i32* %regnum.addr, align 4
  %avail = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 2
  %3 = load i32, i32* %avail, align 4
  %sub = sub i32 %3, 1
  store i32 %sub, i32* %this_element, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %this_element, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %this_element, align 4
  %idxprom = sext i32 %5 to i64
  %stack = getelementptr inbounds %struct.compile_stack_type, %struct.compile_stack_type* %compile_stack, i32 0, i32 0
  %6 = load %struct.compile_stack_elt_t*, %struct.compile_stack_elt_t** %stack, align 8
  %arrayidx = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %6, i64 %idxprom
  %regnum1 = getelementptr inbounds %struct.compile_stack_elt_t, %struct.compile_stack_elt_t* %arrayidx, i32 0, i32 4
  %7 = load i32, i32* %regnum1, align 4
  %8 = load i32, i32* %regnum.addr, align 4
  %cmp2 = icmp eq i32 %7, %8
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i8 1, i8* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %this_element, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %this_element, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8 0, i8* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load i8, i8* %retval
  ret i8 %10
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
