; ModuleID = './lib/quotearg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quoting_options = type { i32, [8 x i32] }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@quoting_style_args = constant [7 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* null], align 16
@quoting_style_vals = constant [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5], align 16
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@quotearg_n_options.nslots = internal global i32 0, align 4
@quotearg_n_options.slotvec = internal global %struct.slotvec* null, align 8

; Function Attrs: nounwind uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %o) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %p = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  %call = call i8* @xmalloc(i64 36)
  %0 = bitcast i8* %call to %struct.quoting_options*
  store %struct.quoting_options* %0, %struct.quoting_options** %p, align 8
  %1 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %tobool = icmp ne %struct.quoting_options* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %3, %cond.true ], [ @default_quoting_options, %cond.false ]
  %4 = bitcast %struct.quoting_options* %1 to i8*
  %5 = bitcast %struct.quoting_options* %cond to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 36, i32 4, i1 false)
  %6 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  ret %struct.quoting_options* %6
}

declare i8* @xmalloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @get_quoting_style(%struct.quoting_options* %o) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  %0 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %tobool = icmp ne %struct.quoting_options* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %1, %cond.true ], [ @default_quoting_options, %cond.false ]
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %cond, i32 0, i32 0
  %2 = load i32, i32* %style, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define void @set_quoting_style(%struct.quoting_options* %o, i32 %s) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %s.addr = alloca i32, align 4
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  %0 = load i32, i32* %s.addr, align 4
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %tobool = icmp ne %struct.quoting_options* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %2, %cond.true ], [ @default_quoting_options, %cond.false ]
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %cond, i32 0, i32 0
  store i32 %0, i32* %style, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @set_char_quoting(%struct.quoting_options* %o, i8 signext %c, i32 %i) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %c.addr = alloca i8, align 1
  %i.addr = alloca i32, align 4
  %uc = alloca i8, align 1
  %p = alloca i32*, align 8
  %shift = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  store i32 %i, i32* %i.addr, align 4
  %0 = load i8, i8* %c.addr, align 1
  store i8 %0, i8* %uc, align 1
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %tobool = icmp ne %struct.quoting_options* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %2, %cond.true ], [ @default_quoting_options, %cond.false ]
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %cond, i32 0, i32 1
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i32 0, i32 0
  %3 = load i8, i8* %uc, align 1
  %conv = zext i8 %3 to i64
  %div = udiv i64 %conv, 32
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay, i64 %div
  store i32* %add.ptr, i32** %p, align 8
  %4 = load i8, i8* %uc, align 1
  %conv1 = zext i8 %4 to i64
  %rem = urem i64 %conv1, 32
  %conv2 = trunc i64 %rem to i32
  store i32 %conv2, i32* %shift, align 4
  %5 = load i32*, i32** %p, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %shift, align 4
  %shr = ashr i32 %6, %7
  %and = and i32 %shr, 1
  store i32 %and, i32* %r, align 4
  %8 = load i32, i32* %i.addr, align 4
  %and3 = and i32 %8, 1
  %9 = load i32, i32* %r, align 4
  %xor = xor i32 %and3, %9
  %10 = load i32, i32* %shift, align 4
  %shl = shl i32 %xor, %10
  %11 = load i32*, i32** %p, align 8
  %12 = load i32, i32* %11, align 4
  %xor4 = xor i32 %12, %shl
  store i32 %xor4, i32* %11, align 4
  %13 = load i32, i32* %r, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i64 @quotearg_buffer(i8* %buffer, i64 %buffersize, i8* %arg, i64 %argsize, %struct.quoting_options* %o) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %buffersize.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o.addr = alloca %struct.quoting_options*, align 8
  %p = alloca %struct.quoting_options*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %buffersize, i64* %buffersize.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  %0 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %tobool = icmp ne %struct.quoting_options* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %1, %cond.true ], [ @default_quoting_options, %cond.false ]
  store %struct.quoting_options* %cond, %struct.quoting_options** %p, align 8
  %2 = load i8*, i8** %buffer.addr, align 8
  %3 = load i64, i64* %buffersize.addr, align 8
  %4 = load i8*, i8** %arg.addr, align 8
  %5 = load i64, i64* %argsize.addr, align 8
  %6 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i32 0, i32 0
  %7 = load i32, i32* %style, align 4
  %8 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %call = call i64 @quotearg_buffer_restyled(i8* %2, i64 %3, i8* %4, i64 %5, i32 %7, %struct.quoting_options* %8)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @quotearg_buffer_restyled(i8* %buffer, i64 %buffersize, i8* %arg, i64 %argsize, i32 %quoting_style, %struct.quoting_options* %o) #0 {
entry:
  %retval = alloca i64, align 8
  %buffer.addr = alloca i8*, align 8
  %buffersize.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %quoting_style.addr = alloca i32, align 4
  %o.addr = alloca %struct.quoting_options*, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %quote_string = alloca i8*, align 8
  %quote_string_len = alloca i64, align 8
  %backslash_escapes = alloca i32, align 4
  %c = alloca i8, align 1
  %esc = alloca i8, align 1
  %m = alloca i64, align 8
  %printable = alloca i32, align 4
  %mbstate = alloca %struct.__mbstate_t, align 4
  %w = alloca i32, align 4
  %bytes = alloca i64, align 8
  %imax = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %buffersize, i64* %buffersize.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  store i32 %quoting_style, i32* %quoting_style.addr, align 4
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  store i64 0, i64* %len, align 8
  store i8* null, i8** %quote_string, align 8
  store i64 0, i64* %quote_string_len, align 8
  store i32 0, i32* %backslash_escapes, align 4
  %0 = load i32, i32* %quoting_style.addr, align 4
  switch i32 %0, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.1
    i32 5, label %sw.bb.2
    i32 2, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %1 = load i64, i64* %len, align 8
  %2 = load i64, i64* %buffersize.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load i64, i64* %len, align 8
  %4 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %3
  store i8 34, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %5 = load i64, i64* %len, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %len, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 1, i32* %backslash_escapes, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8** %quote_string, align 8
  store i64 1, i64* %quote_string_len, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* %backslash_escapes, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #2
  store i8* %call, i8** %quote_string, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.2
  %6 = load i8*, i8** %quote_string, align 8
  %7 = load i8, i8* %6, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.3

do.body.3:                                        ; preds = %for.body
  %8 = load i64, i64* %len, align 8
  %9 = load i64, i64* %buffersize.addr, align 8
  %cmp4 = icmp ult i64 %8, %9
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %do.body.3
  %10 = load i8*, i8** %quote_string, align 8
  %11 = load i8, i8* %10, align 1
  %12 = load i64, i64* %len, align 8
  %13 = load i8*, i8** %buffer.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %13, i64 %12
  store i8 %11, i8* %arrayidx6, align 1
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %do.body.3
  %14 = load i64, i64* %len, align 8
  %inc8 = add i64 %14, 1
  store i64 %inc8, i64* %len, align 8
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.7
  br label %for.inc

for.inc:                                          ; preds = %do.end.9
  %15 = load i8*, i8** %quote_string, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %quote_string, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %backslash_escapes, align 4
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)) #2
  store i8* %call10, i8** %quote_string, align 8
  %16 = load i8*, i8** %quote_string, align 8
  %call11 = call i64 @strlen(i8* %16) #7
  store i64 %call11, i64* %quote_string_len, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  br label %do.body.13

do.body.13:                                       ; preds = %sw.bb.12
  %17 = load i64, i64* %len, align 8
  %18 = load i64, i64* %buffersize.addr, align 8
  %cmp14 = icmp ult i64 %17, %18
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %do.body.13
  %19 = load i64, i64* %len, align 8
  %20 = load i8*, i8** %buffer.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %20, i64 %19
  store i8 39, i8* %arrayidx16, align 1
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %do.body.13
  %21 = load i64, i64* %len, align 8
  %inc18 = add i64 %21, 1
  store i64 %inc18, i64* %len, align 8
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.17
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8** %quote_string, align 8
  store i64 1, i64* %quote_string_len, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end.19, %for.end, %sw.bb.1, %do.end
  store i64 0, i64* %i, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.303, %sw.epilog
  %22 = load i64, i64* %argsize.addr, align 8
  %cmp21 = icmp eq i64 %22, -1
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond.20
  %23 = load i64, i64* %i, align 8
  %24 = load i8*, i8** %arg.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %24, i64 %23
  %25 = load i8, i8* %arrayidx22, align 1
  %conv = sext i8 %25 to i32
  %cmp23 = icmp eq i32 %conv, 0
  %conv24 = zext i1 %cmp23 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.cond.20
  %26 = load i64, i64* %i, align 8
  %27 = load i64, i64* %argsize.addr, align 8
  %cmp25 = icmp eq i64 %26, %27
  %conv26 = zext i1 %cmp25 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv24, %cond.true ], [ %conv26, %cond.false ]
  %tobool27 = icmp ne i32 %cond, 0
  %lnot = xor i1 %tobool27, true
  br i1 %lnot, label %for.body.28, label %for.end.305

for.body.28:                                      ; preds = %cond.end
  %28 = load i32, i32* %backslash_escapes, align 4
  %tobool29 = icmp ne i32 %28, 0
  br i1 %tobool29, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %for.body.28
  %29 = load i64, i64* %quote_string_len, align 8
  %tobool30 = icmp ne i64 %29, 0
  br i1 %tobool30, label %land.lhs.true.31, label %if.end.47

land.lhs.true.31:                                 ; preds = %land.lhs.true
  %30 = load i64, i64* %i, align 8
  %31 = load i64, i64* %quote_string_len, align 8
  %add = add i64 %30, %31
  %32 = load i64, i64* %argsize.addr, align 8
  %cmp32 = icmp ule i64 %add, %32
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.47

land.lhs.true.34:                                 ; preds = %land.lhs.true.31
  %33 = load i8*, i8** %arg.addr, align 8
  %34 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %34
  %35 = load i8*, i8** %quote_string, align 8
  %36 = load i64, i64* %quote_string_len, align 8
  %call35 = call i32 @memcmp(i8* %add.ptr, i8* %35, i64 %36) #7
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.47

if.then.38:                                       ; preds = %land.lhs.true.34
  br label %do.body.39

do.body.39:                                       ; preds = %if.then.38
  %37 = load i64, i64* %len, align 8
  %38 = load i64, i64* %buffersize.addr, align 8
  %cmp40 = icmp ult i64 %37, %38
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %do.body.39
  %39 = load i64, i64* %len, align 8
  %40 = load i8*, i8** %buffer.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %40, i64 %39
  store i8 92, i8* %arrayidx43, align 1
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %do.body.39
  %41 = load i64, i64* %len, align 8
  %inc45 = add i64 %41, 1
  store i64 %inc45, i64* %len, align 8
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.44
  br label %if.end.47

if.end.47:                                        ; preds = %do.end.46, %land.lhs.true.34, %land.lhs.true.31, %land.lhs.true, %for.body.28
  %42 = load i64, i64* %i, align 8
  %43 = load i8*, i8** %arg.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %43, i64 %42
  %44 = load i8, i8* %arrayidx48, align 1
  store i8 %44, i8* %c, align 1
  %45 = load i8, i8* %c, align 1
  %conv49 = zext i8 %45 to i32
  switch i32 %conv49, label %sw.default.153 [
    i32 63, label %sw.bb.50
    i32 7, label %sw.bb.98
    i32 8, label %sw.bb.99
    i32 12, label %sw.bb.100
    i32 10, label %sw.bb.101
    i32 13, label %sw.bb.102
    i32 9, label %sw.bb.103
    i32 11, label %sw.bb.104
    i32 92, label %sw.bb.105
    i32 35, label %sw.bb.113
    i32 126, label %sw.bb.113
    i32 32, label %sw.bb.118
    i32 33, label %sw.bb.118
    i32 34, label %sw.bb.118
    i32 36, label %sw.bb.118
    i32 38, label %sw.bb.118
    i32 40, label %sw.bb.118
    i32 41, label %sw.bb.118
    i32 42, label %sw.bb.118
    i32 59, label %sw.bb.118
    i32 60, label %sw.bb.118
    i32 62, label %sw.bb.118
    i32 91, label %sw.bb.118
    i32 94, label %sw.bb.118
    i32 96, label %sw.bb.118
    i32 124, label %sw.bb.118
    i32 39, label %sw.bb.123
    i32 37, label %sw.bb.152
    i32 43, label %sw.bb.152
    i32 44, label %sw.bb.152
    i32 45, label %sw.bb.152
    i32 46, label %sw.bb.152
    i32 47, label %sw.bb.152
    i32 48, label %sw.bb.152
    i32 49, label %sw.bb.152
    i32 50, label %sw.bb.152
    i32 51, label %sw.bb.152
    i32 52, label %sw.bb.152
    i32 53, label %sw.bb.152
    i32 54, label %sw.bb.152
    i32 55, label %sw.bb.152
    i32 56, label %sw.bb.152
    i32 57, label %sw.bb.152
    i32 58, label %sw.bb.152
    i32 61, label %sw.bb.152
    i32 65, label %sw.bb.152
    i32 66, label %sw.bb.152
    i32 67, label %sw.bb.152
    i32 68, label %sw.bb.152
    i32 69, label %sw.bb.152
    i32 70, label %sw.bb.152
    i32 71, label %sw.bb.152
    i32 72, label %sw.bb.152
    i32 73, label %sw.bb.152
    i32 74, label %sw.bb.152
    i32 75, label %sw.bb.152
    i32 76, label %sw.bb.152
    i32 77, label %sw.bb.152
    i32 78, label %sw.bb.152
    i32 79, label %sw.bb.152
    i32 80, label %sw.bb.152
    i32 81, label %sw.bb.152
    i32 82, label %sw.bb.152
    i32 83, label %sw.bb.152
    i32 84, label %sw.bb.152
    i32 85, label %sw.bb.152
    i32 86, label %sw.bb.152
    i32 87, label %sw.bb.152
    i32 88, label %sw.bb.152
    i32 89, label %sw.bb.152
    i32 90, label %sw.bb.152
    i32 93, label %sw.bb.152
    i32 95, label %sw.bb.152
    i32 97, label %sw.bb.152
    i32 98, label %sw.bb.152
    i32 99, label %sw.bb.152
    i32 100, label %sw.bb.152
    i32 101, label %sw.bb.152
    i32 102, label %sw.bb.152
    i32 103, label %sw.bb.152
    i32 104, label %sw.bb.152
    i32 105, label %sw.bb.152
    i32 106, label %sw.bb.152
    i32 107, label %sw.bb.152
    i32 108, label %sw.bb.152
    i32 109, label %sw.bb.152
    i32 110, label %sw.bb.152
    i32 111, label %sw.bb.152
    i32 112, label %sw.bb.152
    i32 113, label %sw.bb.152
    i32 114, label %sw.bb.152
    i32 115, label %sw.bb.152
    i32 116, label %sw.bb.152
    i32 117, label %sw.bb.152
    i32 118, label %sw.bb.152
    i32 119, label %sw.bb.152
    i32 120, label %sw.bb.152
    i32 121, label %sw.bb.152
    i32 122, label %sw.bb.152
    i32 123, label %sw.bb.152
    i32 125, label %sw.bb.152
  ]

sw.bb.50:                                         ; preds = %if.end.47
  %46 = load i32, i32* %quoting_style.addr, align 4
  switch i32 %46, label %sw.default.96 [
    i32 1, label %sw.bb.51
    i32 3, label %sw.bb.52
  ]

sw.bb.51:                                         ; preds = %sw.bb.50
  br label %use_shell_always_quoting_style

sw.bb.52:                                         ; preds = %sw.bb.50
  %47 = load i64, i64* %i, align 8
  %add53 = add i64 %47, 2
  %48 = load i64, i64* %argsize.addr, align 8
  %cmp54 = icmp ult i64 %add53, %48
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.95

land.lhs.true.56:                                 ; preds = %sw.bb.52
  %49 = load i64, i64* %i, align 8
  %add57 = add i64 %49, 1
  %50 = load i8*, i8** %arg.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %50, i64 %add57
  %51 = load i8, i8* %arrayidx58, align 1
  %conv59 = sext i8 %51 to i32
  %cmp60 = icmp eq i32 %conv59, 63
  br i1 %cmp60, label %if.then.62, label %if.end.95

if.then.62:                                       ; preds = %land.lhs.true.56
  %52 = load i64, i64* %i, align 8
  %add63 = add i64 %52, 2
  %53 = load i8*, i8** %arg.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %53, i64 %add63
  %54 = load i8, i8* %arrayidx64, align 1
  %conv65 = sext i8 %54 to i32
  switch i32 %conv65, label %sw.epilog.94 [
    i32 33, label %sw.bb.66
    i32 39, label %sw.bb.66
    i32 40, label %sw.bb.66
    i32 41, label %sw.bb.66
    i32 45, label %sw.bb.66
    i32 47, label %sw.bb.66
    i32 60, label %sw.bb.66
    i32 61, label %sw.bb.66
    i32 62, label %sw.bb.66
  ]

sw.bb.66:                                         ; preds = %if.then.62, %if.then.62, %if.then.62, %if.then.62, %if.then.62, %if.then.62, %if.then.62, %if.then.62, %if.then.62
  %55 = load i64, i64* %i, align 8
  %add67 = add i64 %55, 2
  store i64 %add67, i64* %i, align 8
  %56 = load i64, i64* %i, align 8
  %add68 = add i64 %56, 2
  %57 = load i8*, i8** %arg.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %57, i64 %add68
  %58 = load i8, i8* %arrayidx69, align 1
  store i8 %58, i8* %c, align 1
  br label %do.body.70

do.body.70:                                       ; preds = %sw.bb.66
  %59 = load i64, i64* %len, align 8
  %60 = load i64, i64* %buffersize.addr, align 8
  %cmp71 = icmp ult i64 %59, %60
  br i1 %cmp71, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %do.body.70
  %61 = load i64, i64* %len, align 8
  %62 = load i8*, i8** %buffer.addr, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %62, i64 %61
  store i8 63, i8* %arrayidx74, align 1
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %do.body.70
  %63 = load i64, i64* %len, align 8
  %inc76 = add i64 %63, 1
  store i64 %inc76, i64* %len, align 8
  br label %do.end.77

do.end.77:                                        ; preds = %if.end.75
  br label %do.body.78

do.body.78:                                       ; preds = %do.end.77
  %64 = load i64, i64* %len, align 8
  %65 = load i64, i64* %buffersize.addr, align 8
  %cmp79 = icmp ult i64 %64, %65
  br i1 %cmp79, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %do.body.78
  %66 = load i64, i64* %len, align 8
  %67 = load i8*, i8** %buffer.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %67, i64 %66
  store i8 92, i8* %arrayidx82, align 1
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %do.body.78
  %68 = load i64, i64* %len, align 8
  %inc84 = add i64 %68, 1
  store i64 %inc84, i64* %len, align 8
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.83
  br label %do.body.86

do.body.86:                                       ; preds = %do.end.85
  %69 = load i64, i64* %len, align 8
  %70 = load i64, i64* %buffersize.addr, align 8
  %cmp87 = icmp ult i64 %69, %70
  br i1 %cmp87, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %do.body.86
  %71 = load i64, i64* %len, align 8
  %72 = load i8*, i8** %buffer.addr, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %72, i64 %71
  store i8 63, i8* %arrayidx90, align 1
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %do.body.86
  %73 = load i64, i64* %len, align 8
  %inc92 = add i64 %73, 1
  store i64 %inc92, i64* %len, align 8
  br label %do.end.93

do.end.93:                                        ; preds = %if.end.91
  br label %sw.epilog.94

sw.epilog.94:                                     ; preds = %if.then.62, %do.end.93
  br label %if.end.95

if.end.95:                                        ; preds = %sw.epilog.94, %land.lhs.true.56, %sw.bb.52
  br label %sw.epilog.97

sw.default.96:                                    ; preds = %sw.bb.50
  br label %sw.epilog.97

sw.epilog.97:                                     ; preds = %sw.default.96, %if.end.95
  br label %sw.epilog.275

sw.bb.98:                                         ; preds = %if.end.47
  store i8 97, i8* %esc, align 1
  br label %c_escape

sw.bb.99:                                         ; preds = %if.end.47
  store i8 98, i8* %esc, align 1
  br label %c_escape

sw.bb.100:                                        ; preds = %if.end.47
  store i8 102, i8* %esc, align 1
  br label %c_escape

sw.bb.101:                                        ; preds = %if.end.47
  store i8 110, i8* %esc, align 1
  br label %c_escape

sw.bb.102:                                        ; preds = %if.end.47
  store i8 114, i8* %esc, align 1
  br label %c_escape

sw.bb.103:                                        ; preds = %if.end.47
  store i8 116, i8* %esc, align 1
  br label %c_escape

sw.bb.104:                                        ; preds = %if.end.47
  store i8 118, i8* %esc, align 1
  br label %c_escape

sw.bb.105:                                        ; preds = %if.end.47
  %74 = load i8, i8* %c, align 1
  store i8 %74, i8* %esc, align 1
  br label %c_escape

c_escape:                                         ; preds = %sw.bb.105, %sw.bb.104, %sw.bb.103, %sw.bb.102, %sw.bb.101, %sw.bb.100, %sw.bb.99, %sw.bb.98
  %75 = load i32, i32* %backslash_escapes, align 4
  %tobool106 = icmp ne i32 %75, 0
  br i1 %tobool106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %c_escape
  %76 = load i8, i8* %esc, align 1
  store i8 %76, i8* %c, align 1
  br label %store_escape

if.end.108:                                       ; preds = %c_escape
  %77 = load i32, i32* %quoting_style.addr, align 4
  %cmp109 = icmp eq i32 %77, 1
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.108
  br label %use_shell_always_quoting_style

if.end.112:                                       ; preds = %if.end.108
  br label %sw.epilog.275

sw.bb.113:                                        ; preds = %if.end.47, %if.end.47
  %78 = load i64, i64* %i, align 8
  %cmp114 = icmp ne i64 %78, 0
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %sw.bb.113
  br label %sw.epilog.275

if.end.117:                                       ; preds = %sw.bb.113
  br label %sw.bb.118

sw.bb.118:                                        ; preds = %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.117
  %79 = load i32, i32* %quoting_style.addr, align 4
  %cmp119 = icmp eq i32 %79, 1
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %sw.bb.118
  br label %use_shell_always_quoting_style

if.end.122:                                       ; preds = %sw.bb.118
  br label %sw.epilog.275

sw.bb.123:                                        ; preds = %if.end.47
  %80 = load i32, i32* %quoting_style.addr, align 4
  switch i32 %80, label %sw.default.150 [
    i32 1, label %sw.bb.124
    i32 2, label %sw.bb.125
  ]

sw.bb.124:                                        ; preds = %sw.bb.123
  br label %use_shell_always_quoting_style

sw.bb.125:                                        ; preds = %sw.bb.123
  br label %do.body.126

do.body.126:                                      ; preds = %sw.bb.125
  %81 = load i64, i64* %len, align 8
  %82 = load i64, i64* %buffersize.addr, align 8
  %cmp127 = icmp ult i64 %81, %82
  br i1 %cmp127, label %if.then.129, label %if.end.131

if.then.129:                                      ; preds = %do.body.126
  %83 = load i64, i64* %len, align 8
  %84 = load i8*, i8** %buffer.addr, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %84, i64 %83
  store i8 39, i8* %arrayidx130, align 1
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.129, %do.body.126
  %85 = load i64, i64* %len, align 8
  %inc132 = add i64 %85, 1
  store i64 %inc132, i64* %len, align 8
  br label %do.end.133

do.end.133:                                       ; preds = %if.end.131
  br label %do.body.134

do.body.134:                                      ; preds = %do.end.133
  %86 = load i64, i64* %len, align 8
  %87 = load i64, i64* %buffersize.addr, align 8
  %cmp135 = icmp ult i64 %86, %87
  br i1 %cmp135, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %do.body.134
  %88 = load i64, i64* %len, align 8
  %89 = load i8*, i8** %buffer.addr, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %89, i64 %88
  store i8 92, i8* %arrayidx138, align 1
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.137, %do.body.134
  %90 = load i64, i64* %len, align 8
  %inc140 = add i64 %90, 1
  store i64 %inc140, i64* %len, align 8
  br label %do.end.141

do.end.141:                                       ; preds = %if.end.139
  br label %do.body.142

do.body.142:                                      ; preds = %do.end.141
  %91 = load i64, i64* %len, align 8
  %92 = load i64, i64* %buffersize.addr, align 8
  %cmp143 = icmp ult i64 %91, %92
  br i1 %cmp143, label %if.then.145, label %if.end.147

if.then.145:                                      ; preds = %do.body.142
  %93 = load i64, i64* %len, align 8
  %94 = load i8*, i8** %buffer.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %94, i64 %93
  store i8 39, i8* %arrayidx146, align 1
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.145, %do.body.142
  %95 = load i64, i64* %len, align 8
  %inc148 = add i64 %95, 1
  store i64 %inc148, i64* %len, align 8
  br label %do.end.149

do.end.149:                                       ; preds = %if.end.147
  br label %sw.epilog.151

sw.default.150:                                   ; preds = %sw.bb.123
  br label %sw.epilog.151

sw.epilog.151:                                    ; preds = %sw.default.150, %do.end.149
  br label %sw.epilog.275

sw.bb.152:                                        ; preds = %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47
  br label %sw.epilog.275

sw.default.153:                                   ; preds = %if.end.47
  store i64 0, i64* %m, align 8
  store i32 1, i32* %printable, align 4
  %96 = bitcast %struct.__mbstate_t* %mbstate to i8*
  call void @llvm.memset.p0i8.i64(i8* %96, i8 0, i64 8, i32 4, i1 false)
  %97 = load i64, i64* %argsize.addr, align 8
  %cmp154 = icmp eq i64 %97, -1
  br i1 %cmp154, label %if.then.156, label %if.end.158

if.then.156:                                      ; preds = %sw.default.153
  %98 = load i8*, i8** %arg.addr, align 8
  %call157 = call i64 @strlen(i8* %98) #7
  store i64 %call157, i64* %argsize.addr, align 8
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.156, %sw.default.153
  br label %do.body.159

do.body.159:                                      ; preds = %do.cond, %if.end.158
  %99 = load i64, i64* %i, align 8
  %100 = load i64, i64* %m, align 8
  %add160 = add i64 %99, %100
  %101 = load i8*, i8** %arg.addr, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %101, i64 %add160
  %102 = load i64, i64* %argsize.addr, align 8
  %103 = load i64, i64* %i, align 8
  %104 = load i64, i64* %m, align 8
  %add162 = add i64 %103, %104
  %sub = sub i64 %102, %add162
  %call163 = call i64 @mbrtowc(i32* %w, i8* %arrayidx161, i64 %sub, %struct.__mbstate_t* %mbstate) #2
  store i64 %call163, i64* %bytes, align 8
  %105 = load i64, i64* %bytes, align 8
  %cmp164 = icmp eq i64 %105, 0
  br i1 %cmp164, label %if.then.166, label %if.else

if.then.166:                                      ; preds = %do.body.159
  br label %do.end.194

if.else:                                          ; preds = %do.body.159
  %106 = load i64, i64* %bytes, align 8
  %cmp167 = icmp eq i64 %106, -1
  br i1 %cmp167, label %if.then.169, label %if.else.170

if.then.169:                                      ; preds = %if.else
  store i32 0, i32* %printable, align 4
  br label %do.end.194

if.else.170:                                      ; preds = %if.else
  %107 = load i64, i64* %bytes, align 8
  %cmp171 = icmp eq i64 %107, -2
  br i1 %cmp171, label %if.then.173, label %if.else.182

if.then.173:                                      ; preds = %if.else.170
  store i32 0, i32* %printable, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.173
  %108 = load i64, i64* %i, align 8
  %109 = load i64, i64* %m, align 8
  %add174 = add i64 %108, %109
  %110 = load i64, i64* %argsize.addr, align 8
  %cmp175 = icmp ult i64 %add174, %110
  br i1 %cmp175, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %111 = load i64, i64* %i, align 8
  %112 = load i64, i64* %m, align 8
  %add177 = add i64 %111, %112
  %113 = load i8*, i8** %arg.addr, align 8
  %arrayidx178 = getelementptr inbounds i8, i8* %113, i64 %add177
  %114 = load i8, i8* %arrayidx178, align 1
  %conv179 = sext i8 %114 to i32
  %tobool180 = icmp ne i32 %conv179, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %115 = phi i1 [ false, %while.cond ], [ %tobool180, %land.rhs ]
  br i1 %115, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %116 = load i64, i64* %m, align 8
  %inc181 = add i64 %116, 1
  store i64 %inc181, i64* %m, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %do.end.194

if.else.182:                                      ; preds = %if.else.170
  %117 = load i32, i32* %w, align 4
  %call183 = call i32 (i32, ...) bitcast (i32 (...)* @iswprint to i32 (i32, ...)*)(i32 %117)
  %tobool184 = icmp ne i32 %call183, 0
  br i1 %tobool184, label %if.end.186, label %if.then.185

if.then.185:                                      ; preds = %if.else.182
  store i32 0, i32* %printable, align 4
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.185, %if.else.182
  %118 = load i64, i64* %bytes, align 8
  %119 = load i64, i64* %m, align 8
  %add187 = add i64 %119, %118
  store i64 %add187, i64* %m, align 8
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.186
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189
  br label %do.cond

do.cond:                                          ; preds = %if.end.190
  %call191 = call i32 @mbsinit(%struct.__mbstate_t* %mbstate) #7
  %tobool192 = icmp ne i32 %call191, 0
  %lnot193 = xor i1 %tobool192, true
  br i1 %lnot193, label %do.body.159, label %do.end.194

do.end.194:                                       ; preds = %do.cond, %while.end, %if.then.169, %if.then.166
  %120 = load i64, i64* %m, align 8
  %cmp195 = icmp ule i64 %120, 1
  br i1 %cmp195, label %if.then.197, label %if.end.208

if.then.197:                                      ; preds = %do.end.194
  %121 = load i32, i32* %backslash_escapes, align 4
  %tobool198 = icmp ne i32 %121, 0
  br i1 %tobool198, label %land.rhs.199, label %land.end.206

land.rhs.199:                                     ; preds = %if.then.197
  %122 = load i8, i8* %c, align 1
  %conv200 = zext i8 %122 to i32
  %idxprom = sext i32 %conv200 to i64
  %call201 = call i16** @__ctype_b_loc() #8
  %123 = load i16*, i16** %call201, align 8
  %arrayidx202 = getelementptr inbounds i16, i16* %123, i64 %idxprom
  %124 = load i16, i16* %arrayidx202, align 2
  %conv203 = zext i16 %124 to i32
  %and = and i32 %conv203, 16384
  %tobool204 = icmp ne i32 %and, 0
  %lnot205 = xor i1 %tobool204, true
  br label %land.end.206

land.end.206:                                     ; preds = %land.rhs.199, %if.then.197
  %125 = phi i1 [ false, %if.then.197 ], [ %lnot205, %land.rhs.199 ]
  %land.ext = zext i1 %125 to i32
  %conv207 = sext i32 %land.ext to i64
  store i64 %conv207, i64* %m, align 8
  store i32 0, i32* %printable, align 4
  br label %if.end.208

if.end.208:                                       ; preds = %land.end.206, %do.end.194
  %126 = load i64, i64* %m, align 8
  %tobool209 = icmp ne i64 %126, 0
  br i1 %tobool209, label %if.then.210, label %if.end.274

if.then.210:                                      ; preds = %if.end.208
  %127 = load i64, i64* %i, align 8
  %128 = load i64, i64* %m, align 8
  %add211 = add i64 %127, %128
  %sub212 = sub i64 %add211, 1
  store i64 %sub212, i64* %imax, align 8
  br label %for.cond.213

for.cond.213:                                     ; preds = %do.end.270, %if.then.210
  %129 = load i32, i32* %backslash_escapes, align 4
  %tobool214 = icmp ne i32 %129, 0
  br i1 %tobool214, label %land.lhs.true.215, label %if.end.257

land.lhs.true.215:                                ; preds = %for.cond.213
  %130 = load i32, i32* %printable, align 4
  %tobool216 = icmp ne i32 %130, 0
  br i1 %tobool216, label %if.end.257, label %if.then.217

if.then.217:                                      ; preds = %land.lhs.true.215
  br label %do.body.218

do.body.218:                                      ; preds = %if.then.217
  %131 = load i64, i64* %len, align 8
  %132 = load i64, i64* %buffersize.addr, align 8
  %cmp219 = icmp ult i64 %131, %132
  br i1 %cmp219, label %if.then.221, label %if.end.223

if.then.221:                                      ; preds = %do.body.218
  %133 = load i64, i64* %len, align 8
  %134 = load i8*, i8** %buffer.addr, align 8
  %arrayidx222 = getelementptr inbounds i8, i8* %134, i64 %133
  store i8 92, i8* %arrayidx222, align 1
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.221, %do.body.218
  %135 = load i64, i64* %len, align 8
  %inc224 = add i64 %135, 1
  store i64 %inc224, i64* %len, align 8
  br label %do.end.226

do.end.226:                                       ; preds = %if.end.223
  br label %do.body.227

do.body.227:                                      ; preds = %do.end.226
  %136 = load i64, i64* %len, align 8
  %137 = load i64, i64* %buffersize.addr, align 8
  %cmp228 = icmp ult i64 %136, %137
  br i1 %cmp228, label %if.then.230, label %if.end.235

if.then.230:                                      ; preds = %do.body.227
  %138 = load i8, i8* %c, align 1
  %conv231 = zext i8 %138 to i32
  %shr = ashr i32 %conv231, 6
  %add232 = add nsw i32 48, %shr
  %conv233 = trunc i32 %add232 to i8
  %139 = load i64, i64* %len, align 8
  %140 = load i8*, i8** %buffer.addr, align 8
  %arrayidx234 = getelementptr inbounds i8, i8* %140, i64 %139
  store i8 %conv233, i8* %arrayidx234, align 1
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.230, %do.body.227
  %141 = load i64, i64* %len, align 8
  %inc236 = add i64 %141, 1
  store i64 %inc236, i64* %len, align 8
  br label %do.end.238

do.end.238:                                       ; preds = %if.end.235
  br label %do.body.239

do.body.239:                                      ; preds = %do.end.238
  %142 = load i64, i64* %len, align 8
  %143 = load i64, i64* %buffersize.addr, align 8
  %cmp240 = icmp ult i64 %142, %143
  br i1 %cmp240, label %if.then.242, label %if.end.249

if.then.242:                                      ; preds = %do.body.239
  %144 = load i8, i8* %c, align 1
  %conv243 = zext i8 %144 to i32
  %shr244 = ashr i32 %conv243, 3
  %and245 = and i32 %shr244, 7
  %add246 = add nsw i32 48, %and245
  %conv247 = trunc i32 %add246 to i8
  %145 = load i64, i64* %len, align 8
  %146 = load i8*, i8** %buffer.addr, align 8
  %arrayidx248 = getelementptr inbounds i8, i8* %146, i64 %145
  store i8 %conv247, i8* %arrayidx248, align 1
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.242, %do.body.239
  %147 = load i64, i64* %len, align 8
  %inc250 = add i64 %147, 1
  store i64 %inc250, i64* %len, align 8
  br label %do.end.252

do.end.252:                                       ; preds = %if.end.249
  %148 = load i8, i8* %c, align 1
  %conv253 = zext i8 %148 to i32
  %and254 = and i32 %conv253, 7
  %add255 = add nsw i32 48, %and254
  %conv256 = trunc i32 %add255 to i8
  store i8 %conv256, i8* %c, align 1
  br label %if.end.257

if.end.257:                                       ; preds = %do.end.252, %land.lhs.true.215, %for.cond.213
  %149 = load i64, i64* %i, align 8
  %150 = load i64, i64* %imax, align 8
  %cmp258 = icmp eq i64 %149, %150
  br i1 %cmp258, label %if.then.260, label %if.end.261

if.then.260:                                      ; preds = %if.end.257
  br label %for.end.273

if.end.261:                                       ; preds = %if.end.257
  br label %do.body.262

do.body.262:                                      ; preds = %if.end.261
  %151 = load i64, i64* %len, align 8
  %152 = load i64, i64* %buffersize.addr, align 8
  %cmp263 = icmp ult i64 %151, %152
  br i1 %cmp263, label %if.then.265, label %if.end.267

if.then.265:                                      ; preds = %do.body.262
  %153 = load i8, i8* %c, align 1
  %154 = load i64, i64* %len, align 8
  %155 = load i8*, i8** %buffer.addr, align 8
  %arrayidx266 = getelementptr inbounds i8, i8* %155, i64 %154
  store i8 %153, i8* %arrayidx266, align 1
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.265, %do.body.262
  %156 = load i64, i64* %len, align 8
  %inc268 = add i64 %156, 1
  store i64 %inc268, i64* %len, align 8
  br label %do.end.270

do.end.270:                                       ; preds = %if.end.267
  %157 = load i64, i64* %i, align 8
  %inc271 = add i64 %157, 1
  store i64 %inc271, i64* %i, align 8
  %158 = load i8*, i8** %arg.addr, align 8
  %arrayidx272 = getelementptr inbounds i8, i8* %158, i64 %inc271
  %159 = load i8, i8* %arrayidx272, align 1
  store i8 %159, i8* %c, align 1
  br label %for.cond.213

for.end.273:                                      ; preds = %if.then.260
  br label %store_c

if.end.274:                                       ; preds = %if.end.208
  br label %sw.epilog.275

sw.epilog.275:                                    ; preds = %if.end.274, %sw.bb.152, %sw.epilog.151, %if.end.122, %if.then.116, %if.end.112, %sw.epilog.97
  %160 = load i32, i32* %backslash_escapes, align 4
  %tobool276 = icmp ne i32 %160, 0
  br i1 %tobool276, label %land.lhs.true.277, label %if.then.283

land.lhs.true.277:                                ; preds = %sw.epilog.275
  %161 = load i8, i8* %c, align 1
  %conv278 = zext i8 %161 to i64
  %div = udiv i64 %conv278, 32
  %162 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %162, i32 0, i32 1
  %arrayidx279 = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i32 0, i64 %div
  %163 = load i32, i32* %arrayidx279, align 4
  %164 = load i8, i8* %c, align 1
  %conv280 = zext i8 %164 to i64
  %rem = urem i64 %conv280, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %and281 = and i32 %163, %shl
  %tobool282 = icmp ne i32 %and281, 0
  br i1 %tobool282, label %if.end.284, label %if.then.283

if.then.283:                                      ; preds = %land.lhs.true.277, %sw.epilog.275
  br label %store_c

if.end.284:                                       ; preds = %land.lhs.true.277
  br label %store_escape

store_escape:                                     ; preds = %if.end.284, %if.then.107
  br label %do.body.285

do.body.285:                                      ; preds = %store_escape
  %165 = load i64, i64* %len, align 8
  %166 = load i64, i64* %buffersize.addr, align 8
  %cmp286 = icmp ult i64 %165, %166
  br i1 %cmp286, label %if.then.288, label %if.end.290

if.then.288:                                      ; preds = %do.body.285
  %167 = load i64, i64* %len, align 8
  %168 = load i8*, i8** %buffer.addr, align 8
  %arrayidx289 = getelementptr inbounds i8, i8* %168, i64 %167
  store i8 92, i8* %arrayidx289, align 1
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.288, %do.body.285
  %169 = load i64, i64* %len, align 8
  %inc291 = add i64 %169, 1
  store i64 %inc291, i64* %len, align 8
  br label %do.end.293

do.end.293:                                       ; preds = %if.end.290
  br label %store_c

store_c:                                          ; preds = %do.end.293, %if.then.283, %for.end.273
  br label %do.body.294

do.body.294:                                      ; preds = %store_c
  %170 = load i64, i64* %len, align 8
  %171 = load i64, i64* %buffersize.addr, align 8
  %cmp295 = icmp ult i64 %170, %171
  br i1 %cmp295, label %if.then.297, label %if.end.299

if.then.297:                                      ; preds = %do.body.294
  %172 = load i8, i8* %c, align 1
  %173 = load i64, i64* %len, align 8
  %174 = load i8*, i8** %buffer.addr, align 8
  %arrayidx298 = getelementptr inbounds i8, i8* %174, i64 %173
  store i8 %172, i8* %arrayidx298, align 1
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.297, %do.body.294
  %175 = load i64, i64* %len, align 8
  %inc300 = add i64 %175, 1
  store i64 %inc300, i64* %len, align 8
  br label %do.end.302

do.end.302:                                       ; preds = %if.end.299
  br label %for.inc.303

for.inc.303:                                      ; preds = %do.end.302
  %176 = load i64, i64* %i, align 8
  %inc304 = add i64 %176, 1
  store i64 %inc304, i64* %i, align 8
  br label %for.cond.20

for.end.305:                                      ; preds = %cond.end
  %177 = load i8*, i8** %quote_string, align 8
  %tobool306 = icmp ne i8* %177, null
  br i1 %tobool306, label %if.then.307, label %if.end.323

if.then.307:                                      ; preds = %for.end.305
  br label %for.cond.308

for.cond.308:                                     ; preds = %for.inc.320, %if.then.307
  %178 = load i8*, i8** %quote_string, align 8
  %179 = load i8, i8* %178, align 1
  %tobool309 = icmp ne i8 %179, 0
  br i1 %tobool309, label %for.body.310, label %for.end.322

for.body.310:                                     ; preds = %for.cond.308
  br label %do.body.311

do.body.311:                                      ; preds = %for.body.310
  %180 = load i64, i64* %len, align 8
  %181 = load i64, i64* %buffersize.addr, align 8
  %cmp312 = icmp ult i64 %180, %181
  br i1 %cmp312, label %if.then.314, label %if.end.316

if.then.314:                                      ; preds = %do.body.311
  %182 = load i8*, i8** %quote_string, align 8
  %183 = load i8, i8* %182, align 1
  %184 = load i64, i64* %len, align 8
  %185 = load i8*, i8** %buffer.addr, align 8
  %arrayidx315 = getelementptr inbounds i8, i8* %185, i64 %184
  store i8 %183, i8* %arrayidx315, align 1
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.314, %do.body.311
  %186 = load i64, i64* %len, align 8
  %inc317 = add i64 %186, 1
  store i64 %inc317, i64* %len, align 8
  br label %do.end.319

do.end.319:                                       ; preds = %if.end.316
  br label %for.inc.320

for.inc.320:                                      ; preds = %do.end.319
  %187 = load i8*, i8** %quote_string, align 8
  %incdec.ptr321 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %incdec.ptr321, i8** %quote_string, align 8
  br label %for.cond.308

for.end.322:                                      ; preds = %for.cond.308
  br label %if.end.323

if.end.323:                                       ; preds = %for.end.322, %for.end.305
  %188 = load i64, i64* %len, align 8
  %189 = load i64, i64* %buffersize.addr, align 8
  %cmp324 = icmp ult i64 %188, %189
  br i1 %cmp324, label %if.then.326, label %if.end.328

if.then.326:                                      ; preds = %if.end.323
  %190 = load i64, i64* %len, align 8
  %191 = load i8*, i8** %buffer.addr, align 8
  %arrayidx327 = getelementptr inbounds i8, i8* %191, i64 %190
  store i8 0, i8* %arrayidx327, align 1
  br label %if.end.328

if.end.328:                                       ; preds = %if.then.326, %if.end.323
  %192 = load i64, i64* %len, align 8
  store i64 %192, i64* %retval
  br label %return

use_shell_always_quoting_style:                   ; preds = %sw.bb.124, %if.then.121, %if.then.111, %sw.bb.51
  %193 = load i8*, i8** %buffer.addr, align 8
  %194 = load i64, i64* %buffersize.addr, align 8
  %195 = load i8*, i8** %arg.addr, align 8
  %196 = load i64, i64* %argsize.addr, align 8
  %197 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %call329 = call i64 @quotearg_buffer_restyled(i8* %193, i64 %194, i8* %195, i64 %196, i32 2, %struct.quoting_options* %197)
  store i64 %call329, i64* %retval
  br label %return

return:                                           ; preds = %use_shell_always_quoting_style, %if.end.328
  %198 = load i64, i64* %retval
  ret i64 %198
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_n(i32 %n, i8* %arg) #0 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i8*, i8** %arg.addr, align 8
  %call = call i8* @quotearg_n_options(i32 %0, i8* %1, %struct.quoting_options* @default_quoting_options)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_n_options(i32 %n, i8* %arg, %struct.quoting_options* %options) #0 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %options.addr = alloca %struct.quoting_options*, align 8
  %n1 = alloca i32, align 4
  %s = alloca i64, align 8
  %size = alloca i64, align 8
  %val = alloca i8*, align 8
  %qsize = alloca i64, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store %struct.quoting_options* %options, %struct.quoting_options** %options.addr, align 8
  %0 = load i32, i32* @quotearg_n_options.nslots, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp ule i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %n1, align 4
  %3 = load i32, i32* %n1, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 %conv, 16
  store i64 %mul, i64* %s, align 8
  %4 = load i32, i32* %n1, align 4
  %cmp1 = icmp slt i32 0, %4
  br i1 %cmp1, label %land.lhs.true, label %if.then.6

land.lhs.true:                                    ; preds = %if.then
  %5 = load i32, i32* %n1, align 4
  %conv3 = sext i32 %5 to i64
  %6 = load i64, i64* %s, align 8
  %div = udiv i64 %6, 16
  %cmp4 = icmp eq i64 %conv3, %div
  br i1 %cmp4, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true, %if.then
  call void @abort() #9
  unreachable

if.end:                                           ; preds = %land.lhs.true
  %7 = load %struct.slotvec*, %struct.slotvec** @quotearg_n_options.slotvec, align 8
  %8 = bitcast %struct.slotvec* %7 to i8*
  %9 = load i64, i64* %s, align 8
  %call = call i8* @xrealloc(i8* %8, i64 %9)
  %10 = bitcast i8* %call to %struct.slotvec*
  store %struct.slotvec* %10, %struct.slotvec** @quotearg_n_options.slotvec, align 8
  %11 = load %struct.slotvec*, %struct.slotvec** @quotearg_n_options.slotvec, align 8
  %12 = load i32, i32* @quotearg_n_options.nslots, align 4
  %idx.ext = zext i32 %12 to i64
  %add.ptr = getelementptr inbounds %struct.slotvec, %struct.slotvec* %11, i64 %idx.ext
  %13 = bitcast %struct.slotvec* %add.ptr to i8*
  %14 = load i32, i32* %n1, align 4
  %15 = load i32, i32* @quotearg_n_options.nslots, align 4
  %sub = sub i32 %14, %15
  %conv7 = zext i32 %sub to i64
  %mul8 = mul i64 %conv7, 16
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 %mul8, i32 8, i1 false)
  %16 = load i32, i32* %n.addr, align 4
  store i32 %16, i32* @quotearg_n_options.nslots, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %17 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.slotvec*, %struct.slotvec** @quotearg_n_options.slotvec, align 8
  %arrayidx = getelementptr inbounds %struct.slotvec, %struct.slotvec* %18, i64 %idxprom
  %size10 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx, i32 0, i32 0
  %19 = load i64, i64* %size10, align 8
  store i64 %19, i64* %size, align 8
  %20 = load i32, i32* %n.addr, align 4
  %idxprom11 = sext i32 %20 to i64
  %21 = load %struct.slotvec*, %struct.slotvec** @quotearg_n_options.slotvec, align 8
  %arrayidx12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %21, i64 %idxprom11
  %val13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx12, i32 0, i32 1
  %22 = load i8*, i8** %val13, align 8
  store i8* %22, i8** %val, align 8
  %23 = load i8*, i8** %val, align 8
  %24 = load i64, i64* %size, align 8
  %25 = load i8*, i8** %arg.addr, align 8
  %26 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %call14 = call i64 @quotearg_buffer(i8* %23, i64 %24, i8* %25, i64 -1, %struct.quoting_options* %26)
  store i64 %call14, i64* %qsize, align 8
  %27 = load i64, i64* %size, align 8
  %28 = load i64, i64* %qsize, align 8
  %cmp15 = icmp ule i64 %27, %28
  br i1 %cmp15, label %if.then.17, label %if.end.27

if.then.17:                                       ; preds = %if.end.9
  %29 = load i64, i64* %qsize, align 8
  %add18 = add i64 %29, 1
  store i64 %add18, i64* %size, align 8
  %30 = load i32, i32* %n.addr, align 4
  %idxprom19 = sext i32 %30 to i64
  %31 = load %struct.slotvec*, %struct.slotvec** @quotearg_n_options.slotvec, align 8
  %arrayidx20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %31, i64 %idxprom19
  %size21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx20, i32 0, i32 0
  store i64 %add18, i64* %size21, align 8
  %32 = load i8*, i8** %val, align 8
  %33 = load i64, i64* %size, align 8
  %call22 = call i8* @xrealloc(i8* %32, i64 %33)
  store i8* %call22, i8** %val, align 8
  %34 = load i32, i32* %n.addr, align 4
  %idxprom23 = sext i32 %34 to i64
  %35 = load %struct.slotvec*, %struct.slotvec** @quotearg_n_options.slotvec, align 8
  %arrayidx24 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %idxprom23
  %val25 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx24, i32 0, i32 1
  store i8* %call22, i8** %val25, align 8
  %36 = load i8*, i8** %val, align 8
  %37 = load i64, i64* %size, align 8
  %38 = load i8*, i8** %arg.addr, align 8
  %39 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %call26 = call i64 @quotearg_buffer(i8* %36, i64 %37, i8* %38, i64 -1, %struct.quoting_options* %39)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.17, %if.end.9
  %40 = load i8*, i8** %val, align 8
  ret i8* %40
}

; Function Attrs: nounwind uwtable
define i8* @quotearg(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %call = call i8* @quotearg_n(i32 0, i8* %0)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_n_style(i32 %n, i32 %s, i8* %arg) #0 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %o = alloca %struct.quoting_options, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %s, i32* %s.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i32, i32* %s.addr, align 4
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %o, i32 0, i32 0
  store i32 %0, i32* %style, align 4
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %o, i32 0, i32 1
  %1 = bitcast [8 x i32]* %quote_these_too to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 32, i32 4, i1 false)
  %2 = load i32, i32* %n.addr, align 4
  %3 = load i8*, i8** %arg.addr, align 8
  %call = call i8* @quotearg_n_options(i32 %2, i8* %3, %struct.quoting_options* %o)
  ret i8* %call
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i8* @quotearg_style(i32 %s, i8* %arg) #0 {
entry:
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i32 %s, i32* %s.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i32, i32* %s.addr, align 4
  %1 = load i8*, i8** %arg.addr, align 8
  %call = call i8* @quotearg_n_style(i32 0, i32 %0, i8* %1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_char(i8* %arg, i8 signext %ch) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %ch.addr = alloca i8, align 1
  %options = alloca %struct.quoting_options, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i8 %ch, i8* %ch.addr, align 1
  %0 = bitcast %struct.quoting_options* %options to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 36, i32 4, i1 false)
  %1 = load i8, i8* %ch.addr, align 1
  %call = call i32 @set_char_quoting(%struct.quoting_options* %options, i8 signext %1, i32 1)
  %2 = load i8*, i8** %arg.addr, align 8
  %call1 = call i8* @quotearg_n_options(i32 0, i8* %2, %struct.quoting_options* %options)
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_colon(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %call = call i8* @quotearg_char(i8* %0, i8 signext 58)
  ret i8* %call
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) #3

declare i32 @iswprint(...) #1

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: noreturn nounwind
declare void @abort() #6

declare i8* @xrealloc(i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
