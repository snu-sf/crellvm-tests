; ModuleID = './ffi64.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffi_cif = type { i32, i32, %struct._ffi_type**, %struct._ffi_type*, i32, i32 }
%struct._ffi_type = type { i64, i16, i16, %struct._ffi_type** }
%struct.register_args = type { [6 x i64], [8 x %union.big_int_union] }
%union.big_int_union = type { i128 }
%struct.ffi_closure = type { [24 x i8], %struct.ffi_cif*, void (%struct.ffi_cif*, i8*, i8**, i8*)*, i8* }

; Function Attrs: uwtable
define i32 @ffi_prep_cif_machdep(%struct.ffi_cif* %cif) #0 {
entry:
  %cif.addr = alloca %struct.ffi_cif*, align 8
  %gprcount = alloca i32, align 4
  %ssecount = alloca i32, align 4
  %i = alloca i32, align 4
  %avn = alloca i32, align 4
  %n = alloca i32, align 4
  %ngpr = alloca i32, align 4
  %nsse = alloca i32, align 4
  %flags = alloca i32, align 4
  %classes = alloca [4 x i32], align 16
  %bytes = alloca i64, align 8
  %sse0 = alloca i8, align 1
  %sse1 = alloca i8, align 1
  %align = alloca i64, align 8
  store %struct.ffi_cif* %cif, %struct.ffi_cif** %cif.addr, align 8
  store i32 0, i32* %ssecount, align 4
  store i32 0, i32* %gprcount, align 4
  %0 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %rtype = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %0, i32 0, i32 3
  %1 = load %struct._ffi_type*, %struct._ffi_type** %rtype, align 8
  %type = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %1, i32 0, i32 2
  %2 = load i16, i16* %type, align 2
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %flags, align 4
  %3 = load i32, i32* %flags, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end.53

if.then:                                          ; preds = %entry
  %4 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %rtype2 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %4, i32 0, i32 3
  %5 = load %struct._ffi_type*, %struct._ffi_type** %rtype2, align 8
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %classes, i32 0, i32 0
  %call = call i32 @examine_argument(%struct._ffi_type* %5, i32* %arraydecay, i1 zeroext true, i32* %ngpr, i32* %nsse)
  store i32 %call, i32* %n, align 4
  %6 = load i32, i32* %n, align 4
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %7 = load i32, i32* %gprcount, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %gprcount, align 4
  store i32 0, i32* %flags, align 4
  br label %if.end.52

if.else:                                          ; preds = %if.then
  %8 = load i32, i32* %flags, align 4
  %cmp6 = icmp eq i32 %8, 13
  br i1 %cmp6, label %if.then.8, label %if.end.51

if.then.8:                                        ; preds = %if.else
  %arrayidx = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 0
  %9 = load i32, i32* %arrayidx, align 4
  %cmp9 = icmp uge i32 %9, 3
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.8
  %arrayidx11 = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 0
  %10 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp ule i32 %10, 6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.8
  %11 = phi i1 [ false, %if.then.8 ], [ %cmp12, %land.rhs ]
  %frombool = zext i1 %11 to i8
  store i8 %frombool, i8* %sse0, align 1
  %12 = load i32, i32* %n, align 4
  %cmp14 = icmp eq i32 %12, 2
  br i1 %cmp14, label %land.rhs.16, label %land.end.25

land.rhs.16:                                      ; preds = %land.end
  %arrayidx17 = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 1
  %13 = load i32, i32* %arrayidx17, align 4
  %cmp18 = icmp uge i32 %13, 3
  br i1 %cmp18, label %land.rhs.20, label %land.end.24

land.rhs.20:                                      ; preds = %land.rhs.16
  %arrayidx21 = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 1
  %14 = load i32, i32* %arrayidx21, align 4
  %cmp22 = icmp ule i32 %14, 6
  br label %land.end.24

land.end.24:                                      ; preds = %land.rhs.20, %land.rhs.16
  %15 = phi i1 [ false, %land.rhs.16 ], [ %cmp22, %land.rhs.20 ]
  br label %land.end.25

land.end.25:                                      ; preds = %land.end.24, %land.end
  %16 = phi i1 [ false, %land.end ], [ %15, %land.end.24 ]
  %frombool26 = zext i1 %16 to i8
  store i8 %frombool26, i8* %sse1, align 1
  %17 = load i8, i8* %sse0, align 1
  %tobool = trunc i8 %17 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else.30

land.lhs.true:                                    ; preds = %land.end.25
  %18 = load i8, i8* %sse1, align 1
  %tobool28 = trunc i8 %18 to i1
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %land.lhs.true
  %19 = load i32, i32* %flags, align 4
  %or = or i32 %19, 256
  store i32 %or, i32* %flags, align 4
  br label %if.end.46

if.else.30:                                       ; preds = %land.lhs.true, %land.end.25
  %20 = load i8, i8* %sse0, align 1
  %tobool31 = trunc i8 %20 to i1
  br i1 %tobool31, label %if.else.37, label %land.lhs.true.32

land.lhs.true.32:                                 ; preds = %if.else.30
  %21 = load i8, i8* %sse1, align 1
  %tobool33 = trunc i8 %21 to i1
  br i1 %tobool33, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %land.lhs.true.32
  %22 = load i32, i32* %flags, align 4
  %or36 = or i32 %22, 512
  store i32 %or36, i32* %flags, align 4
  br label %if.end.45

if.else.37:                                       ; preds = %land.lhs.true.32, %if.else.30
  %23 = load i8, i8* %sse0, align 1
  %tobool38 = trunc i8 %23 to i1
  br i1 %tobool38, label %land.lhs.true.40, label %if.end

land.lhs.true.40:                                 ; preds = %if.else.37
  %24 = load i8, i8* %sse1, align 1
  %tobool41 = trunc i8 %24 to i1
  br i1 %tobool41, label %if.then.43, label %if.end

if.then.43:                                       ; preds = %land.lhs.true.40
  %25 = load i32, i32* %flags, align 4
  %or44 = or i32 %25, 1024
  store i32 %or44, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.43, %land.lhs.true.40, %if.else.37
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %if.then.35
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.29
  %26 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %rtype47 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %26, i32 0, i32 3
  %27 = load %struct._ffi_type*, %struct._ffi_type** %rtype47, align 8
  %size = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %27, i32 0, i32 0
  %28 = load i64, i64* %size, align 8
  %shl = shl i64 %28, 12
  %29 = load i32, i32* %flags, align 4
  %conv48 = sext i32 %29 to i64
  %or49 = or i64 %conv48, %shl
  %conv50 = trunc i64 %or49 to i32
  store i32 %conv50, i32* %flags, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.46, %if.else
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.5
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %entry
  store i64 0, i64* %bytes, align 8
  store i32 0, i32* %i, align 4
  %30 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %nargs = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %30, i32 0, i32 1
  %31 = load i32, i32* %nargs, align 4
  store i32 %31, i32* %avn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.53
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %avn, align 4
  %cmp54 = icmp slt i32 %32, %33
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %i, align 4
  %idxprom = sext i32 %34 to i64
  %35 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %arg_types = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %35, i32 0, i32 2
  %36 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8
  %arrayidx56 = getelementptr %struct._ffi_type*, %struct._ffi_type** %36, i64 %idxprom
  %37 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx56, align 8
  %arraydecay57 = getelementptr inbounds [4 x i32], [4 x i32]* %classes, i32 0, i32 0
  %call58 = call i32 @examine_argument(%struct._ffi_type* %37, i32* %arraydecay57, i1 zeroext false, i32* %ngpr, i32* %nsse)
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %if.then.67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %38 = load i32, i32* %gprcount, align 4
  %39 = load i32, i32* %ngpr, align 4
  %add = add i32 %38, %39
  %cmp61 = icmp sgt i32 %add, 6
  br i1 %cmp61, label %if.then.67, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false
  %40 = load i32, i32* %ssecount, align 4
  %41 = load i32, i32* %nsse, align 4
  %add64 = add i32 %40, %41
  %cmp65 = icmp sgt i32 %add64, 8
  br i1 %cmp65, label %if.then.67, label %if.else.84

if.then.67:                                       ; preds = %lor.lhs.false.63, %lor.lhs.false, %for.body
  %42 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %42 to i64
  %43 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %arg_types69 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %43, i32 0, i32 2
  %44 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types69, align 8
  %arrayidx70 = getelementptr %struct._ffi_type*, %struct._ffi_type** %44, i64 %idxprom68
  %45 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx70, align 8
  %alignment = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %45, i32 0, i32 1
  %46 = load i16, i16* %alignment, align 2
  %conv71 = zext i16 %46 to i64
  store i64 %conv71, i64* %align, align 8
  %47 = load i64, i64* %align, align 8
  %cmp72 = icmp slt i64 %47, 8
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.then.67
  store i64 8, i64* %align, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %if.then.67
  %48 = load i64, i64* %bytes, align 8
  %sub = sub i64 %48, 1
  %49 = load i64, i64* %align, align 8
  %sub76 = sub i64 %49, 1
  %or77 = or i64 %sub, %sub76
  %add78 = add i64 %or77, 1
  store i64 %add78, i64* %bytes, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %50 to i64
  %51 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %arg_types80 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %51, i32 0, i32 2
  %52 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types80, align 8
  %arrayidx81 = getelementptr %struct._ffi_type*, %struct._ffi_type** %52, i64 %idxprom79
  %53 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx81, align 8
  %size82 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %53, i32 0, i32 0
  %54 = load i64, i64* %size82, align 8
  %55 = load i64, i64* %bytes, align 8
  %add83 = add i64 %55, %54
  store i64 %add83, i64* %bytes, align 8
  br label %if.end.87

if.else.84:                                       ; preds = %lor.lhs.false.63
  %56 = load i32, i32* %ngpr, align 4
  %57 = load i32, i32* %gprcount, align 4
  %add85 = add i32 %57, %56
  store i32 %add85, i32* %gprcount, align 4
  %58 = load i32, i32* %nsse, align 4
  %59 = load i32, i32* %ssecount, align 4
  %add86 = add i32 %59, %58
  store i32 %add86, i32* %ssecount, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.84, %if.end.75
  br label %for.inc

for.inc:                                          ; preds = %if.end.87
  %60 = load i32, i32* %i, align 4
  %inc88 = add i32 %60, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %61 = load i32, i32* %ssecount, align 4
  %tobool89 = icmp ne i32 %61, 0
  br i1 %tobool89, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %for.end
  %62 = load i32, i32* %flags, align 4
  %or91 = or i32 %62, 2048
  store i32 %or91, i32* %flags, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %for.end
  %63 = load i32, i32* %flags, align 4
  %64 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %flags93 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %64, i32 0, i32 5
  store i32 %63, i32* %flags93, align 4
  %65 = load i64, i64* %bytes, align 8
  %sub94 = sub i64 %65, 1
  %or95 = or i64 %sub94, 7
  %add96 = add i64 %or95, 1
  %conv97 = trunc i64 %add96 to i32
  %66 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %bytes98 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %66, i32 0, i32 4
  store i32 %conv97, i32* %bytes98, align 4
  ret i32 0
}

; Function Attrs: uwtable
define internal i32 @examine_argument(%struct._ffi_type* %type, i32* %classes, i1 zeroext %in_return, i32* %pngpr, i32* %pnsse) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca %struct._ffi_type*, align 8
  %classes.addr = alloca i32*, align 8
  %in_return.addr = alloca i8, align 1
  %pngpr.addr = alloca i32*, align 8
  %pnsse.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %ngpr = alloca i32, align 4
  %nsse = alloca i32, align 4
  store %struct._ffi_type* %type, %struct._ffi_type** %type.addr, align 8
  store i32* %classes, i32** %classes.addr, align 8
  %frombool = zext i1 %in_return to i8
  store i8 %frombool, i8* %in_return.addr, align 1
  store i32* %pngpr, i32** %pngpr.addr, align 8
  store i32* %pnsse, i32** %pnsse.addr, align 8
  %0 = load %struct._ffi_type*, %struct._ffi_type** %type.addr, align 8
  %1 = load i32*, i32** %classes.addr, align 8
  %call = call i32 @classify_argument(%struct._ffi_type* %0, i32* %1, i64 0)
  store i32 %call, i32* %n, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %nsse, align 4
  store i32 0, i32* %ngpr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %classes.addr, align 8
  %arrayidx = getelementptr i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 5, label %sw.bb.2
    i32 0, label %sw.bb.4
    i32 6, label %sw.bb.4
    i32 7, label %sw.bb.5
    i32 8, label %sw.bb.5
    i32 9, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  %8 = load i32, i32* %ngpr, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %ngpr, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %for.body, %for.body, %for.body
  %9 = load i32, i32* %nsse, align 4
  %inc3 = add i32 %9, 1
  store i32 %inc3, i32* %nsse, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %for.body, %for.body
  br label %sw.epilog

sw.bb.5:                                          ; preds = %for.body, %for.body, %for.body
  %10 = load i8, i8* %in_return.addr, align 1
  %tobool = trunc i8 %10 to i1
  %conv = zext i1 %tobool to i32
  %cmp6 = icmp ne i32 %conv, 0
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, i32* %retval
  br label %return

sw.default:                                       ; preds = %for.body
  call void @abort() #5
  unreachable

sw.epilog:                                        ; preds = %sw.bb.4, %sw.bb.2, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %11 = load i32, i32* %i, align 4
  %inc8 = add i32 %11, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %ngpr, align 4
  %13 = load i32*, i32** %pngpr.addr, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %nsse, align 4
  %15 = load i32*, i32** %pnsse.addr, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %n, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %sw.bb.5, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: uwtable
define void @ffi_call(%struct.ffi_cif* %cif, void ()* %fn, i8* %rvalue, i8** %avalue) #0 {
entry:
  %cif.addr = alloca %struct.ffi_cif*, align 8
  %fn.addr = alloca void ()*, align 8
  %rvalue.addr = alloca i8*, align 8
  %avalue.addr = alloca i8**, align 8
  %classes = alloca [4 x i32], align 16
  %stack = alloca i8*, align 8
  %argp = alloca i8*, align 8
  %arg_types = alloca %struct._ffi_type**, align 8
  %gprcount = alloca i32, align 4
  %ssecount = alloca i32, align 4
  %ngpr = alloca i32, align 4
  %nsse = alloca i32, align 4
  %i = alloca i32, align 4
  %avn = alloca i32, align 4
  %ret_in_memory = alloca i8, align 1
  %reg_args = alloca %struct.register_args*, align 8
  %size16 = alloca i64, align 8
  %n = alloca i32, align 4
  %align = alloca i64, align 8
  %a = alloca i8*, align 8
  %j = alloca i32, align 4
  store %struct.ffi_cif* %cif, %struct.ffi_cif** %cif.addr, align 8
  store void ()* %fn, void ()** %fn.addr, align 8
  store i8* %rvalue, i8** %rvalue.addr, align 8
  store i8** %avalue, i8*** %avalue.addr, align 8
  %0 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %rtype = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %0, i32 0, i32 3
  %1 = load %struct._ffi_type*, %struct._ffi_type** %rtype, align 8
  %type = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %1, i32 0, i32 2
  %2 = load i16, i16* %type, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 13
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %flags = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %3, i32 0, i32 5
  %4 = load i32, i32* %flags, align 4
  %and = and i32 %4, 255
  %cmp2 = icmp eq i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %frombool = zext i1 %5 to i8
  store i8 %frombool, i8* %ret_in_memory, align 1
  %6 = load i8*, i8** %rvalue.addr, align 8
  %cmp4 = icmp eq i8* %6, null
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %land.end
  %7 = load i8, i8* %ret_in_memory, align 1
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %rtype7 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %8, i32 0, i32 3
  %9 = load %struct._ffi_type*, %struct._ffi_type** %rtype7, align 8
  %size = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %9, i32 0, i32 0
  %10 = load i64, i64* %size, align 8
  %11 = alloca i8, i64 %10
  store i8* %11, i8** %rvalue.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %land.end
  %12 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %bytes = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %12, i32 0, i32 4
  %13 = load i32, i32* %bytes, align 4
  %conv8 = zext i32 %13 to i64
  %add = add i64 176, %conv8
  %add9 = add i64 %add, 32
  %14 = alloca i8, i64 %add9
  store i8* %14, i8** %stack, align 8
  %15 = load i8*, i8** %stack, align 8
  %16 = bitcast i8* %15 to %struct.register_args*
  store %struct.register_args* %16, %struct.register_args** %reg_args, align 8
  %17 = load i8*, i8** %stack, align 8
  %add.ptr = getelementptr i8, i8* %17, i64 176
  store i8* %add.ptr, i8** %argp, align 8
  store i32 0, i32* %ssecount, align 4
  store i32 0, i32* %gprcount, align 4
  %18 = load i8, i8* %ret_in_memory, align 1
  %tobool10 = trunc i8 %18 to i1
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  %19 = load i8*, i8** %rvalue.addr, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = load i32, i32* %gprcount, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %gprcount, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.register_args*, %struct.register_args** %reg_args, align 8
  %gpr = getelementptr inbounds %struct.register_args, %struct.register_args* %22, i32 0, i32 0
  %arrayidx = getelementptr [6 x i64], [6 x i64]* %gpr, i32 0, i64 %idxprom
  store i64 %20, i64* %arrayidx, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  %23 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %nargs = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %23, i32 0, i32 1
  %24 = load i32, i32* %nargs, align 4
  store i32 %24, i32* %avn, align 4
  %25 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %arg_types13 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %25, i32 0, i32 2
  %26 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types13, align 8
  store %struct._ffi_type** %26, %struct._ffi_type*** %arg_types, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.95, %if.end.12
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %avn, align 4
  %cmp14 = icmp slt i32 %27, %28
  br i1 %cmp14, label %for.body, label %for.end.97

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %29 to i64
  %30 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8
  %arrayidx18 = getelementptr %struct._ffi_type*, %struct._ffi_type** %30, i64 %idxprom17
  %31 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx18, align 8
  %size19 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %31, i32 0, i32 0
  %32 = load i64, i64* %size19, align 8
  store i64 %32, i64* %size16, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %33 to i64
  %34 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8
  %arrayidx21 = getelementptr %struct._ffi_type*, %struct._ffi_type** %34, i64 %idxprom20
  %35 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx21, align 8
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %classes, i32 0, i32 0
  %call = call i32 @examine_argument(%struct._ffi_type* %35, i32* %arraydecay, i1 zeroext false, i32* %ngpr, i32* %nsse)
  store i32 %call, i32* %n, align 4
  %36 = load i32, i32* %n, align 4
  %cmp22 = icmp eq i32 %36, 0
  br i1 %cmp22, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %37 = load i32, i32* %gprcount, align 4
  %38 = load i32, i32* %ngpr, align 4
  %add24 = add i32 %37, %38
  %cmp25 = icmp sgt i32 %add24, 6
  br i1 %cmp25, label %if.then.31, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false
  %39 = load i32, i32* %ssecount, align 4
  %40 = load i32, i32* %nsse, align 4
  %add28 = add i32 %39, %40
  %cmp29 = icmp sgt i32 %add28, 8
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %lor.lhs.false.27, %lor.lhs.false, %for.body
  %41 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %41 to i64
  %42 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8
  %arrayidx33 = getelementptr %struct._ffi_type*, %struct._ffi_type** %42, i64 %idxprom32
  %43 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx33, align 8
  %alignment = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %43, i32 0, i32 1
  %44 = load i16, i16* %alignment, align 2
  %conv34 = zext i16 %44 to i64
  store i64 %conv34, i64* %align, align 8
  %45 = load i64, i64* %align, align 8
  %cmp35 = icmp slt i64 %45, 8
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.31
  store i64 8, i64* %align, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.then.31
  %46 = load i8*, i8** %argp, align 8
  %47 = ptrtoint i8* %46 to i64
  %sub = sub i64 %47, 1
  %48 = load i64, i64* %align, align 8
  %sub39 = sub i64 %48, 1
  %or = or i64 %sub, %sub39
  %add40 = add i64 %or, 1
  %49 = inttoptr i64 %add40 to i8*
  store i8* %49, i8** %argp, align 8
  %50 = load i8*, i8** %argp, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %51 to i64
  %52 = load i8**, i8*** %avalue.addr, align 8
  %arrayidx42 = getelementptr i8*, i8** %52, i64 %idxprom41
  %53 = load i8*, i8** %arrayidx42, align 8
  %54 = load i64, i64* %size16, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %53, i64 %54, i32 1, i1 false)
  %55 = load i64, i64* %size16, align 8
  %56 = load i8*, i8** %argp, align 8
  %add.ptr43 = getelementptr i8, i8* %56, i64 %55
  store i8* %add.ptr43, i8** %argp, align 8
  br label %if.end.94

if.else:                                          ; preds = %lor.lhs.false.27
  %57 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %57 to i64
  %58 = load i8**, i8*** %avalue.addr, align 8
  %arrayidx45 = getelementptr i8*, i8** %58, i64 %idxprom44
  %59 = load i8*, i8** %arrayidx45, align 8
  store i8* %59, i8** %a, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc, %if.else
  %60 = load i32, i32* %j, align 4
  %61 = load i32, i32* %n, align 4
  %cmp47 = icmp slt i32 %60, %61
  br i1 %cmp47, label %for.body.49, label %for.end

for.body.49:                                      ; preds = %for.cond.46
  %62 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %62 to i64
  %arrayidx51 = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 %idxprom50
  %63 = load i32, i32* %arrayidx51, align 4
  switch i32 %63, label %sw.default.89 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb.80
    i32 5, label %sw.bb.80
    i32 4, label %sw.bb.84
  ]

sw.bb:                                            ; preds = %for.body.49, %for.body.49
  %64 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %64 to i64
  %65 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8
  %arrayidx53 = getelementptr %struct._ffi_type*, %struct._ffi_type** %65, i64 %idxprom52
  %66 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx53, align 8
  %type54 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %66, i32 0, i32 2
  %67 = load i16, i16* %type54, align 2
  %conv55 = zext i16 %67 to i32
  switch i32 %conv55, label %sw.default [
    i32 6, label %sw.bb.56
    i32 8, label %sw.bb.61
    i32 10, label %sw.bb.66
  ]

sw.bb.56:                                         ; preds = %sw.bb
  %68 = load i8*, i8** %a, align 8
  %69 = load i8, i8* %68, align 1
  %conv57 = sext i8 %69 to i64
  %70 = load i32, i32* %gprcount, align 4
  %idxprom58 = sext i32 %70 to i64
  %71 = load %struct.register_args*, %struct.register_args** %reg_args, align 8
  %gpr59 = getelementptr inbounds %struct.register_args, %struct.register_args* %71, i32 0, i32 0
  %arrayidx60 = getelementptr [6 x i64], [6 x i64]* %gpr59, i32 0, i64 %idxprom58
  store i64 %conv57, i64* %arrayidx60, align 8
  br label %sw.epilog

sw.bb.61:                                         ; preds = %sw.bb
  %72 = load i8*, i8** %a, align 8
  %73 = bitcast i8* %72 to i16*
  %74 = load i16, i16* %73, align 2
  %conv62 = sext i16 %74 to i64
  %75 = load i32, i32* %gprcount, align 4
  %idxprom63 = sext i32 %75 to i64
  %76 = load %struct.register_args*, %struct.register_args** %reg_args, align 8
  %gpr64 = getelementptr inbounds %struct.register_args, %struct.register_args* %76, i32 0, i32 0
  %arrayidx65 = getelementptr [6 x i64], [6 x i64]* %gpr64, i32 0, i64 %idxprom63
  store i64 %conv62, i64* %arrayidx65, align 8
  br label %sw.epilog

sw.bb.66:                                         ; preds = %sw.bb
  %77 = load i8*, i8** %a, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = load i32, i32* %78, align 4
  %conv67 = sext i32 %79 to i64
  %80 = load i32, i32* %gprcount, align 4
  %idxprom68 = sext i32 %80 to i64
  %81 = load %struct.register_args*, %struct.register_args** %reg_args, align 8
  %gpr69 = getelementptr inbounds %struct.register_args, %struct.register_args* %81, i32 0, i32 0
  %arrayidx70 = getelementptr [6 x i64], [6 x i64]* %gpr69, i32 0, i64 %idxprom68
  store i64 %conv67, i64* %arrayidx70, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  %82 = load i32, i32* %gprcount, align 4
  %idxprom71 = sext i32 %82 to i64
  %83 = load %struct.register_args*, %struct.register_args** %reg_args, align 8
  %gpr72 = getelementptr inbounds %struct.register_args, %struct.register_args* %83, i32 0, i32 0
  %arrayidx73 = getelementptr [6 x i64], [6 x i64]* %gpr72, i32 0, i64 %idxprom71
  store i64 0, i64* %arrayidx73, align 8
  %84 = load i32, i32* %gprcount, align 4
  %idxprom74 = sext i32 %84 to i64
  %85 = load %struct.register_args*, %struct.register_args** %reg_args, align 8
  %gpr75 = getelementptr inbounds %struct.register_args, %struct.register_args* %85, i32 0, i32 0
  %arrayidx76 = getelementptr [6 x i64], [6 x i64]* %gpr75, i32 0, i64 %idxprom74
  %86 = bitcast i64* %arrayidx76 to i8*
  %87 = load i8*, i8** %a, align 8
  %88 = load i64, i64* %size16, align 8
  %cmp77 = icmp ult i64 %88, 8
  br i1 %cmp77, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.default
  %89 = load i64, i64* %size16, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.default
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %89, %cond.true ], [ 8, %cond.false ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 %cond, i32 1, i1 false)
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end, %sw.bb.66, %sw.bb.61, %sw.bb.56
  %90 = load i32, i32* %gprcount, align 4
  %inc79 = add i32 %90, 1
  store i32 %inc79, i32* %gprcount, align 4
  br label %sw.epilog.90

sw.bb.80:                                         ; preds = %for.body.49, %for.body.49
  %91 = load i8*, i8** %a, align 8
  %92 = bitcast i8* %91 to i64*
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %ssecount, align 4
  %inc81 = add i32 %94, 1
  store i32 %inc81, i32* %ssecount, align 4
  %idxprom82 = sext i32 %94 to i64
  %95 = load %struct.register_args*, %struct.register_args** %reg_args, align 8
  %sse = getelementptr inbounds %struct.register_args, %struct.register_args* %95, i32 0, i32 1
  %arrayidx83 = getelementptr [8 x %union.big_int_union], [8 x %union.big_int_union]* %sse, i32 0, i64 %idxprom82
  %i64 = bitcast %union.big_int_union* %arrayidx83 to i64*
  store i64 %93, i64* %i64, align 8
  br label %sw.epilog.90

sw.bb.84:                                         ; preds = %for.body.49
  %96 = load i8*, i8** %a, align 8
  %97 = bitcast i8* %96 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %ssecount, align 4
  %inc85 = add i32 %99, 1
  store i32 %inc85, i32* %ssecount, align 4
  %idxprom86 = sext i32 %99 to i64
  %100 = load %struct.register_args*, %struct.register_args** %reg_args, align 8
  %sse87 = getelementptr inbounds %struct.register_args, %struct.register_args* %100, i32 0, i32 1
  %arrayidx88 = getelementptr [8 x %union.big_int_union], [8 x %union.big_int_union]* %sse87, i32 0, i64 %idxprom86
  %i32 = bitcast %union.big_int_union* %arrayidx88 to i32*
  store i32 %98, i32* %i32, align 4
  br label %sw.epilog.90

sw.default.89:                                    ; preds = %for.body.49
  call void @abort() #5
  unreachable

sw.epilog.90:                                     ; preds = %sw.bb.84, %sw.bb.80, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.90
  %101 = load i32, i32* %j, align 4
  %inc91 = add i32 %101, 1
  store i32 %inc91, i32* %j, align 4
  %102 = load i8*, i8** %a, align 8
  %add.ptr92 = getelementptr i8, i8* %102, i64 8
  store i8* %add.ptr92, i8** %a, align 8
  %103 = load i64, i64* %size16, align 8
  %sub93 = sub i64 %103, 8
  store i64 %sub93, i64* %size16, align 8
  br label %for.cond.46

for.end:                                          ; preds = %for.cond.46
  br label %if.end.94

if.end.94:                                        ; preds = %for.end, %if.end.38
  br label %for.inc.95

for.inc.95:                                       ; preds = %if.end.94
  %104 = load i32, i32* %i, align 4
  %inc96 = add i32 %104, 1
  store i32 %inc96, i32* %i, align 4
  br label %for.cond

for.end.97:                                       ; preds = %for.cond
  %105 = load i8*, i8** %stack, align 8
  %106 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %bytes98 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %106, i32 0, i32 4
  %107 = load i32, i32* %bytes98, align 4
  %conv99 = zext i32 %107 to i64
  %add100 = add i64 %conv99, 176
  %108 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %flags101 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %108, i32 0, i32 5
  %109 = load i32, i32* %flags101, align 4
  %110 = load i8*, i8** %rvalue.addr, align 8
  %111 = load void ()*, void ()** %fn.addr, align 8
  %112 = load i32, i32* %ssecount, align 4
  call void @ffi_call_unix64(i8* %105, i64 %add100, i32 %109, i8* %110, void ()* %111, i32 %112)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

declare void @ffi_call_unix64(i8*, i64, i32, i8*, void ()*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @ffi_prep_closure_loc(%struct.ffi_closure* %closure, %struct.ffi_cif* %cif, void (%struct.ffi_cif*, i8*, i8**, i8*)* %fun, i8* %user_data, i8* %codeloc) #4 {
entry:
  %retval = alloca i32, align 4
  %closure.addr = alloca %struct.ffi_closure*, align 8
  %cif.addr = alloca %struct.ffi_cif*, align 8
  %fun.addr = alloca void (%struct.ffi_cif*, i8*, i8**, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  %codeloc.addr = alloca i8*, align 8
  %tramp = alloca i16*, align 8
  %abi = alloca i32, align 4
  store %struct.ffi_closure* %closure, %struct.ffi_closure** %closure.addr, align 8
  store %struct.ffi_cif* %cif, %struct.ffi_cif** %cif.addr, align 8
  store void (%struct.ffi_cif*, i8*, i8**, i8*)* %fun, void (%struct.ffi_cif*, i8*, i8**, i8*)** %fun.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store i8* %codeloc, i8** %codeloc.addr, align 8
  %0 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %abi1 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %0, i32 0, i32 0
  %1 = load i32, i32* %abi1, align 4
  store i32 %1, i32* %abi, align 4
  %2 = load i32, i32* %abi, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i32, i32* %abi, align 4
  %cmp2 = icmp slt i32 %3, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %lnot = xor i1 %4, true
  %lnot.ext = zext i1 %lnot to i32
  %cmp3 = icmp ne i32 %lnot.ext, 0
  %conv = zext i1 %cmp3 to i32
  %conv4 = sext i32 %conv to i64
  %tobool = icmp ne i64 %conv4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %land.end
  %5 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8
  %tramp5 = getelementptr inbounds %struct.ffi_closure, %struct.ffi_closure* %5, i32 0, i32 0
  %arrayidx = getelementptr [24 x i8], [24 x i8]* %tramp5, i32 0, i64 0
  %6 = bitcast i8* %arrayidx to i16*
  store i16* %6, i16** %tramp, align 8
  %7 = load i16*, i16** %tramp, align 8
  %arrayidx6 = getelementptr i16, i16* %7, i64 0
  store volatile i16 -17591, i16* %arrayidx6, align 2
  %8 = load i16*, i16** %tramp, align 8
  %arrayidx7 = getelementptr i16, i16* %8, i64 1
  %9 = bitcast i16* %arrayidx7 to i64*
  store i64 ptrtoint (void ()* @ffi_closure_unix64 to i64), i64* %9, align 8
  %10 = load i16*, i16** %tramp, align 8
  %arrayidx8 = getelementptr i16, i16* %10, i64 5
  store volatile i16 -17847, i16* %arrayidx8, align 2
  %11 = load i8*, i8** %codeloc.addr, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = load i16*, i16** %tramp, align 8
  %arrayidx9 = getelementptr i16, i16* %13, i64 6
  %14 = bitcast i16* %arrayidx9 to i64*
  store i64 %12, i64* %14, align 8
  %15 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %flags = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %15, i32 0, i32 5
  %16 = load i32, i32* %flags, align 4
  %and = and i32 %16, 2048
  %tobool10 = icmp ne i32 %and, 0
  %cond = select i1 %tobool10, i32 18937, i32 18936
  %conv11 = trunc i32 %cond to i16
  %17 = load i16*, i16** %tramp, align 8
  %arrayidx12 = getelementptr i16, i16* %17, i64 10
  store volatile i16 %conv11, i16* %arrayidx12, align 2
  %18 = load i16*, i16** %tramp, align 8
  %arrayidx13 = getelementptr i16, i16* %18, i64 11
  store volatile i16 -7169, i16* %arrayidx13, align 2
  %19 = load %struct.ffi_cif*, %struct.ffi_cif** %cif.addr, align 8
  %20 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8
  %cif14 = getelementptr inbounds %struct.ffi_closure, %struct.ffi_closure* %20, i32 0, i32 1
  store %struct.ffi_cif* %19, %struct.ffi_cif** %cif14, align 8
  %21 = load void (%struct.ffi_cif*, i8*, i8**, i8*)*, void (%struct.ffi_cif*, i8*, i8**, i8*)** %fun.addr, align 8
  %22 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8
  %fun15 = getelementptr inbounds %struct.ffi_closure, %struct.ffi_closure* %22, i32 0, i32 2
  store void (%struct.ffi_cif*, i8*, i8**, i8*)* %21, void (%struct.ffi_cif*, i8*, i8**, i8*)** %fun15, align 8
  %23 = load i8*, i8** %user_data.addr, align 8
  %24 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8
  %user_data16 = getelementptr inbounds %struct.ffi_closure, %struct.ffi_closure* %24, i32 0, i32 3
  store i8* %23, i8** %user_data16, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare void @ffi_closure_unix64() #3

; Function Attrs: uwtable
define i32 @ffi_closure_unix64_inner(%struct.ffi_closure* %closure, i8* %rvalue, %struct.register_args* %reg_args, i8* %argp) #0 {
entry:
  %closure.addr = alloca %struct.ffi_closure*, align 8
  %rvalue.addr = alloca i8*, align 8
  %reg_args.addr = alloca %struct.register_args*, align 8
  %argp.addr = alloca i8*, align 8
  %cif = alloca %struct.ffi_cif*, align 8
  %avalue = alloca i8**, align 8
  %arg_types = alloca %struct._ffi_type**, align 8
  %i = alloca i64, align 8
  %avn = alloca i64, align 8
  %gprcount = alloca i32, align 4
  %ssecount = alloca i32, align 4
  %ngpr = alloca i32, align 4
  %nsse = alloca i32, align 4
  %ret = alloca i32, align 4
  %classes = alloca [4 x i32], align 16
  %n = alloca i32, align 4
  %sse0 = alloca i8, align 1
  %sse1 = alloca i8, align 1
  %classes48 = alloca [4 x i32], align 16
  %n49 = alloca i32, align 4
  %align = alloca i64, align 8
  %a = alloca i8*, align 8
  %j = alloca i32, align 4
  store %struct.ffi_closure* %closure, %struct.ffi_closure** %closure.addr, align 8
  store i8* %rvalue, i8** %rvalue.addr, align 8
  store %struct.register_args* %reg_args, %struct.register_args** %reg_args.addr, align 8
  store i8* %argp, i8** %argp.addr, align 8
  %0 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8
  %cif1 = getelementptr inbounds %struct.ffi_closure, %struct.ffi_closure* %0, i32 0, i32 1
  %1 = load %struct.ffi_cif*, %struct.ffi_cif** %cif1, align 8
  store %struct.ffi_cif* %1, %struct.ffi_cif** %cif, align 8
  %2 = load %struct.ffi_cif*, %struct.ffi_cif** %cif, align 8
  %nargs = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %2, i32 0, i32 1
  %3 = load i32, i32* %nargs, align 4
  %conv = zext i32 %3 to i64
  %mul = mul i64 %conv, 8
  %4 = alloca i8, i64 %mul
  %5 = bitcast i8* %4 to i8**
  store i8** %5, i8*** %avalue, align 8
  store i32 0, i32* %ssecount, align 4
  store i32 0, i32* %gprcount, align 4
  %6 = load %struct.ffi_cif*, %struct.ffi_cif** %cif, align 8
  %rtype = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %6, i32 0, i32 3
  %7 = load %struct._ffi_type*, %struct._ffi_type** %rtype, align 8
  %type = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %7, i32 0, i32 2
  %8 = load i16, i16* %type, align 2
  %conv2 = zext i16 %8 to i32
  store i32 %conv2, i32* %ret, align 4
  %9 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end.42

if.then:                                          ; preds = %entry
  %10 = load %struct.ffi_cif*, %struct.ffi_cif** %cif, align 8
  %rtype4 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %10, i32 0, i32 3
  %11 = load %struct._ffi_type*, %struct._ffi_type** %rtype4, align 8
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %classes, i32 0, i32 0
  %call = call i32 @examine_argument(%struct._ffi_type* %11, i32* %arraydecay, i1 zeroext true, i32* %ngpr, i32* %nsse)
  store i32 %call, i32* %n, align 4
  %12 = load i32, i32* %n, align 4
  %cmp5 = icmp eq i32 %12, 0
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %13 = load i32, i32* %gprcount, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %gprcount, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.register_args*, %struct.register_args** %reg_args.addr, align 8
  %gpr = getelementptr inbounds %struct.register_args, %struct.register_args* %14, i32 0, i32 0
  %arrayidx = getelementptr [6 x i64], [6 x i64]* %gpr, i32 0, i64 %idxprom
  %15 = load i64, i64* %arrayidx, align 8
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %rvalue.addr, align 8
  store i32 0, i32* %ret, align 4
  br label %if.end.41

if.else:                                          ; preds = %if.then
  %17 = load i32, i32* %ret, align 4
  %cmp8 = icmp eq i32 %17, 13
  br i1 %cmp8, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %if.else
  %18 = load i32, i32* %n, align 4
  %cmp10 = icmp eq i32 %18, 2
  br i1 %cmp10, label %if.then.12, label %if.end.40

if.then.12:                                       ; preds = %land.lhs.true
  %arrayidx13 = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 0
  %19 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp uge i32 %19, 3
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.12
  %arrayidx16 = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 0
  %20 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp ule i32 %20, 6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.12
  %21 = phi i1 [ false, %if.then.12 ], [ %cmp17, %land.rhs ]
  %frombool = zext i1 %21 to i8
  store i8 %frombool, i8* %sse0, align 1
  %arrayidx19 = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 1
  %22 = load i32, i32* %arrayidx19, align 4
  %cmp20 = icmp uge i32 %22, 3
  br i1 %cmp20, label %land.rhs.22, label %land.end.26

land.rhs.22:                                      ; preds = %land.end
  %arrayidx23 = getelementptr [4 x i32], [4 x i32]* %classes, i32 0, i64 1
  %23 = load i32, i32* %arrayidx23, align 4
  %cmp24 = icmp ule i32 %23, 6
  br label %land.end.26

land.end.26:                                      ; preds = %land.rhs.22, %land.end
  %24 = phi i1 [ false, %land.end ], [ %cmp24, %land.rhs.22 ]
  %frombool27 = zext i1 %24 to i8
  store i8 %frombool27, i8* %sse1, align 1
  %25 = load i8, i8* %sse0, align 1
  %tobool = trunc i8 %25 to i1
  br i1 %tobool, label %if.else.32, label %land.lhs.true.28

land.lhs.true.28:                                 ; preds = %land.end.26
  %26 = load i8, i8* %sse1, align 1
  %tobool29 = trunc i8 %26 to i1
  br i1 %tobool29, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.28
  %27 = load i32, i32* %ret, align 4
  %or = or i32 %27, 256
  store i32 %or, i32* %ret, align 4
  br label %if.end.39

if.else.32:                                       ; preds = %land.lhs.true.28, %land.end.26
  %28 = load i8, i8* %sse0, align 1
  %tobool33 = trunc i8 %28 to i1
  br i1 %tobool33, label %land.lhs.true.35, label %if.end

land.lhs.true.35:                                 ; preds = %if.else.32
  %29 = load i8, i8* %sse1, align 1
  %tobool36 = trunc i8 %29 to i1
  br i1 %tobool36, label %if.end, label %if.then.37

if.then.37:                                       ; preds = %land.lhs.true.35
  %30 = load i32, i32* %ret, align 4
  %or38 = or i32 %30, 512
  store i32 %or38, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.37, %land.lhs.true.35, %if.else.32
  br label %if.end.39

if.end.39:                                        ; preds = %if.end, %if.then.31
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true, %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.7
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %entry
  %31 = load %struct.ffi_cif*, %struct.ffi_cif** %cif, align 8
  %nargs43 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %31, i32 0, i32 1
  %32 = load i32, i32* %nargs43, align 4
  %conv44 = zext i32 %32 to i64
  store i64 %conv44, i64* %avn, align 8
  %33 = load %struct.ffi_cif*, %struct.ffi_cif** %cif, align 8
  %arg_types45 = getelementptr inbounds %struct.ffi_cif, %struct.ffi_cif* %33, i32 0, i32 2
  %34 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types45, align 8
  store %struct._ffi_type** %34, %struct._ffi_type*** %arg_types, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.145, %if.end.42
  %35 = load i64, i64* %i, align 8
  %36 = load i64, i64* %avn, align 8
  %cmp46 = icmp slt i64 %35, %36
  br i1 %cmp46, label %for.body, label %for.end.147

for.body:                                         ; preds = %for.cond
  %37 = load i64, i64* %i, align 8
  %38 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8
  %arrayidx50 = getelementptr %struct._ffi_type*, %struct._ffi_type** %38, i64 %37
  %39 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx50, align 8
  %arraydecay51 = getelementptr inbounds [4 x i32], [4 x i32]* %classes48, i32 0, i32 0
  %call52 = call i32 @examine_argument(%struct._ffi_type* %39, i32* %arraydecay51, i1 zeroext false, i32* %ngpr, i32* %nsse)
  store i32 %call52, i32* %n49, align 4
  %40 = load i32, i32* %n49, align 4
  %cmp53 = icmp eq i32 %40, 0
  br i1 %cmp53, label %if.then.61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %41 = load i32, i32* %gprcount, align 4
  %42 = load i32, i32* %ngpr, align 4
  %add = add i32 %41, %42
  %cmp55 = icmp sgt i32 %add, 6
  br i1 %cmp55, label %if.then.61, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %lor.lhs.false
  %43 = load i32, i32* %ssecount, align 4
  %44 = load i32, i32* %nsse, align 4
  %add58 = add i32 %43, %44
  %cmp59 = icmp sgt i32 %add58, 8
  br i1 %cmp59, label %if.then.61, label %if.else.73

if.then.61:                                       ; preds = %lor.lhs.false.57, %lor.lhs.false, %for.body
  %45 = load i64, i64* %i, align 8
  %46 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8
  %arrayidx62 = getelementptr %struct._ffi_type*, %struct._ffi_type** %46, i64 %45
  %47 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx62, align 8
  %alignment = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %47, i32 0, i32 1
  %48 = load i16, i16* %alignment, align 2
  %conv63 = zext i16 %48 to i64
  store i64 %conv63, i64* %align, align 8
  %49 = load i64, i64* %align, align 8
  %cmp64 = icmp slt i64 %49, 8
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.then.61
  store i64 8, i64* %align, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.then.61
  %50 = load i8*, i8** %argp.addr, align 8
  %51 = ptrtoint i8* %50 to i64
  %sub = sub i64 %51, 1
  %52 = load i64, i64* %align, align 8
  %sub68 = sub i64 %52, 1
  %or69 = or i64 %sub, %sub68
  %add70 = add i64 %or69, 1
  %53 = inttoptr i64 %add70 to i8*
  store i8* %53, i8** %argp.addr, align 8
  %54 = load i8*, i8** %argp.addr, align 8
  %55 = load i64, i64* %i, align 8
  %56 = load i8**, i8*** %avalue, align 8
  %arrayidx71 = getelementptr i8*, i8** %56, i64 %55
  store i8* %54, i8** %arrayidx71, align 8
  %57 = load i64, i64* %i, align 8
  %58 = load %struct._ffi_type**, %struct._ffi_type*** %arg_types, align 8
  %arrayidx72 = getelementptr %struct._ffi_type*, %struct._ffi_type** %58, i64 %57
  %59 = load %struct._ffi_type*, %struct._ffi_type** %arrayidx72, align 8
  %size = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %59, i32 0, i32 0
  %60 = load i64, i64* %size, align 8
  %61 = load i8*, i8** %argp.addr, align 8
  %add.ptr = getelementptr i8, i8* %61, i64 %60
  store i8* %add.ptr, i8** %argp.addr, align 8
  br label %if.end.144

if.else.73:                                       ; preds = %lor.lhs.false.57
  %62 = load i32, i32* %n49, align 4
  %cmp74 = icmp eq i32 %62, 1
  br i1 %cmp74, label %if.then.95, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %if.else.73
  %63 = load i32, i32* %n49, align 4
  %cmp77 = icmp eq i32 %63, 2
  br i1 %cmp77, label %land.lhs.true.79, label %if.else.115

land.lhs.true.79:                                 ; preds = %lor.lhs.false.76
  %arrayidx80 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 0
  %64 = load i32, i32* %arrayidx80, align 4
  %cmp81 = icmp uge i32 %64, 3
  br i1 %cmp81, label %land.lhs.true.83, label %lor.lhs.false.87

land.lhs.true.83:                                 ; preds = %land.lhs.true.79
  %arrayidx84 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 0
  %65 = load i32, i32* %arrayidx84, align 4
  %cmp85 = icmp ule i32 %65, 6
  br i1 %cmp85, label %if.else.115, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %land.lhs.true.83, %land.lhs.true.79
  %arrayidx88 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 1
  %66 = load i32, i32* %arrayidx88, align 4
  %cmp89 = icmp uge i32 %66, 3
  br i1 %cmp89, label %land.lhs.true.91, label %if.then.95

land.lhs.true.91:                                 ; preds = %lor.lhs.false.87
  %arrayidx92 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 1
  %67 = load i32, i32* %arrayidx92, align 4
  %cmp93 = icmp ule i32 %67, 6
  br i1 %cmp93, label %if.else.115, label %if.then.95

if.then.95:                                       ; preds = %land.lhs.true.91, %lor.lhs.false.87, %if.else.73
  %arrayidx96 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 0
  %68 = load i32, i32* %arrayidx96, align 4
  %cmp97 = icmp uge i32 %68, 3
  br i1 %cmp97, label %land.lhs.true.99, label %if.else.108

land.lhs.true.99:                                 ; preds = %if.then.95
  %arrayidx100 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 0
  %69 = load i32, i32* %arrayidx100, align 4
  %cmp101 = icmp ule i32 %69, 6
  br i1 %cmp101, label %if.then.103, label %if.else.108

if.then.103:                                      ; preds = %land.lhs.true.99
  %70 = load i32, i32* %ssecount, align 4
  %idxprom104 = sext i32 %70 to i64
  %71 = load %struct.register_args*, %struct.register_args** %reg_args.addr, align 8
  %sse = getelementptr inbounds %struct.register_args, %struct.register_args* %71, i32 0, i32 1
  %arrayidx105 = getelementptr [8 x %union.big_int_union], [8 x %union.big_int_union]* %sse, i32 0, i64 %idxprom104
  %72 = bitcast %union.big_int_union* %arrayidx105 to i8*
  %73 = load i64, i64* %i, align 8
  %74 = load i8**, i8*** %avalue, align 8
  %arrayidx106 = getelementptr i8*, i8** %74, i64 %73
  store i8* %72, i8** %arrayidx106, align 8
  %75 = load i32, i32* %n49, align 4
  %76 = load i32, i32* %ssecount, align 4
  %add107 = add i32 %76, %75
  store i32 %add107, i32* %ssecount, align 4
  br label %if.end.114

if.else.108:                                      ; preds = %land.lhs.true.99, %if.then.95
  %77 = load i32, i32* %gprcount, align 4
  %idxprom109 = sext i32 %77 to i64
  %78 = load %struct.register_args*, %struct.register_args** %reg_args.addr, align 8
  %gpr110 = getelementptr inbounds %struct.register_args, %struct.register_args* %78, i32 0, i32 0
  %arrayidx111 = getelementptr [6 x i64], [6 x i64]* %gpr110, i32 0, i64 %idxprom109
  %79 = bitcast i64* %arrayidx111 to i8*
  %80 = load i64, i64* %i, align 8
  %81 = load i8**, i8*** %avalue, align 8
  %arrayidx112 = getelementptr i8*, i8** %81, i64 %80
  store i8* %79, i8** %arrayidx112, align 8
  %82 = load i32, i32* %n49, align 4
  %83 = load i32, i32* %gprcount, align 4
  %add113 = add i32 %83, %82
  store i32 %add113, i32* %gprcount, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.108, %if.then.103
  br label %if.end.143

if.else.115:                                      ; preds = %land.lhs.true.91, %land.lhs.true.83, %lor.lhs.false.76
  %84 = alloca i8, i64 16
  store i8* %84, i8** %a, align 8
  %85 = load i8*, i8** %a, align 8
  %86 = load i64, i64* %i, align 8
  %87 = load i8**, i8*** %avalue, align 8
  %arrayidx116 = getelementptr i8*, i8** %87, i64 %86
  store i8* %85, i8** %arrayidx116, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc, %if.else.115
  %88 = load i32, i32* %j, align 4
  %89 = load i32, i32* %n49, align 4
  %cmp118 = icmp slt i32 %88, %89
  br i1 %cmp118, label %for.body.120, label %for.end

for.body.120:                                     ; preds = %for.cond.117
  %90 = load i32, i32* %j, align 4
  %idxprom121 = sext i32 %90 to i64
  %arrayidx122 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 %idxprom121
  %91 = load i32, i32* %arrayidx122, align 4
  %cmp123 = icmp uge i32 %91, 3
  br i1 %cmp123, label %land.lhs.true.125, label %if.else.135

land.lhs.true.125:                                ; preds = %for.body.120
  %92 = load i32, i32* %j, align 4
  %idxprom126 = sext i32 %92 to i64
  %arrayidx127 = getelementptr [4 x i32], [4 x i32]* %classes48, i32 0, i64 %idxprom126
  %93 = load i32, i32* %arrayidx127, align 4
  %cmp128 = icmp ule i32 %93, 6
  br i1 %cmp128, label %if.then.130, label %if.else.135

if.then.130:                                      ; preds = %land.lhs.true.125
  %94 = load i8*, i8** %a, align 8
  %95 = load i32, i32* %ssecount, align 4
  %inc131 = add i32 %95, 1
  store i32 %inc131, i32* %ssecount, align 4
  %idxprom132 = sext i32 %95 to i64
  %96 = load %struct.register_args*, %struct.register_args** %reg_args.addr, align 8
  %sse133 = getelementptr inbounds %struct.register_args, %struct.register_args* %96, i32 0, i32 1
  %arrayidx134 = getelementptr [8 x %union.big_int_union], [8 x %union.big_int_union]* %sse133, i32 0, i64 %idxprom132
  %97 = bitcast %union.big_int_union* %arrayidx134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %97, i64 8, i32 1, i1 false)
  br label %if.end.140

if.else.135:                                      ; preds = %land.lhs.true.125, %for.body.120
  %98 = load i8*, i8** %a, align 8
  %99 = load i32, i32* %gprcount, align 4
  %inc136 = add i32 %99, 1
  store i32 %inc136, i32* %gprcount, align 4
  %idxprom137 = sext i32 %99 to i64
  %100 = load %struct.register_args*, %struct.register_args** %reg_args.addr, align 8
  %gpr138 = getelementptr inbounds %struct.register_args, %struct.register_args* %100, i32 0, i32 0
  %arrayidx139 = getelementptr [6 x i64], [6 x i64]* %gpr138, i32 0, i64 %idxprom137
  %101 = bitcast i64* %arrayidx139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* %101, i64 8, i32 1, i1 false)
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.135, %if.then.130
  br label %for.inc

for.inc:                                          ; preds = %if.end.140
  %102 = load i32, i32* %j, align 4
  %inc141 = add i32 %102, 1
  store i32 %inc141, i32* %j, align 4
  %103 = load i8*, i8** %a, align 8
  %add.ptr142 = getelementptr i8, i8* %103, i64 8
  store i8* %add.ptr142, i8** %a, align 8
  br label %for.cond.117

for.end:                                          ; preds = %for.cond.117
  br label %if.end.143

if.end.143:                                       ; preds = %for.end, %if.end.114
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.end.67
  br label %for.inc.145

for.inc.145:                                      ; preds = %if.end.144
  %104 = load i64, i64* %i, align 8
  %inc146 = add i64 %104, 1
  store i64 %inc146, i64* %i, align 8
  br label %for.cond

for.end.147:                                      ; preds = %for.cond
  %105 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8
  %fun = getelementptr inbounds %struct.ffi_closure, %struct.ffi_closure* %105, i32 0, i32 2
  %106 = load void (%struct.ffi_cif*, i8*, i8**, i8*)*, void (%struct.ffi_cif*, i8*, i8**, i8*)** %fun, align 8
  %107 = load %struct.ffi_cif*, %struct.ffi_cif** %cif, align 8
  %108 = load i8*, i8** %rvalue.addr, align 8
  %109 = load i8**, i8*** %avalue, align 8
  %110 = load %struct.ffi_closure*, %struct.ffi_closure** %closure.addr, align 8
  %user_data = getelementptr inbounds %struct.ffi_closure, %struct.ffi_closure* %110, i32 0, i32 3
  %111 = load i8*, i8** %user_data, align 8
  call void %106(%struct.ffi_cif* %107, i8* %108, i8** %109, i8* %111)
  %112 = load i32, i32* %ret, align 4
  ret i32 %112
}

; Function Attrs: uwtable
define internal i32 @classify_argument(%struct._ffi_type* %type, i32* %classes, i64 %byte_offset) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca %struct._ffi_type*, align 8
  %classes.addr = alloca i32*, align 8
  %byte_offset.addr = alloca i64, align 8
  %size = alloca i32, align 4
  %UNITS_PER_WORD = alloca i32, align 4
  %words = alloca i32, align 4
  %ptr = alloca %struct._ffi_type**, align 8
  %i = alloca i32, align 4
  %subclasses = alloca [4 x i32], align 16
  %num = alloca i32, align 4
  %pos = alloca i32, align 4
  store %struct._ffi_type* %type, %struct._ffi_type** %type.addr, align 8
  store i32* %classes, i32** %classes.addr, align 8
  store i64 %byte_offset, i64* %byte_offset.addr, align 8
  %0 = load %struct._ffi_type*, %struct._ffi_type** %type.addr, align 8
  %type1 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %0, i32 0, i32 2
  %1 = load i16, i16* %type1, align 2
  %conv = zext i16 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 14, label %sw.bb
    i32 2, label %sw.bb.25
    i32 3, label %sw.bb.31
    i32 4, label %sw.bb.33
    i32 13, label %sw.bb.36
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %2 = load i64, i64* %byte_offset.addr, align 8
  %3 = load %struct._ffi_type*, %struct._ffi_type** %type.addr, align 8
  %size2 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %3, i32 0, i32 0
  %4 = load i64, i64* %size2, align 8
  %add = add i64 %2, %4
  %conv3 = trunc i64 %add to i32
  store i32 %conv3, i32* %size, align 4
  %5 = load i32, i32* %size, align 4
  %cmp = icmp sle i32 %5, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %6 = load i32*, i32** %classes.addr, align 8
  %arrayidx = getelementptr i32, i32* %6, i64 0
  store i32 2, i32* %arrayidx, align 4
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.bb
  %7 = load i32, i32* %size, align 4
  %cmp5 = icmp sle i32 %7, 8
  br i1 %cmp5, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.else
  %8 = load i32*, i32** %classes.addr, align 8
  %arrayidx8 = getelementptr i32, i32* %8, i64 0
  store i32 1, i32* %arrayidx8, align 4
  store i32 1, i32* %retval
  br label %return

if.else.9:                                        ; preds = %if.else
  %9 = load i32, i32* %size, align 4
  %cmp10 = icmp sle i32 %9, 12
  br i1 %cmp10, label %if.then.12, label %if.else.15

if.then.12:                                       ; preds = %if.else.9
  %10 = load i32*, i32** %classes.addr, align 8
  %arrayidx13 = getelementptr i32, i32* %10, i64 0
  store i32 1, i32* %arrayidx13, align 4
  %11 = load i32*, i32** %classes.addr, align 8
  %arrayidx14 = getelementptr i32, i32* %11, i64 1
  store i32 2, i32* %arrayidx14, align 4
  store i32 2, i32* %retval
  br label %return

if.else.15:                                       ; preds = %if.else.9
  %12 = load i32, i32* %size, align 4
  %cmp16 = icmp sle i32 %12, 16
  br i1 %cmp16, label %if.then.18, label %if.else.21

if.then.18:                                       ; preds = %if.else.15
  %13 = load i32*, i32** %classes.addr, align 8
  %arrayidx19 = getelementptr i32, i32* %13, i64 1
  store i32 2, i32* %arrayidx19, align 4
  %14 = load i32*, i32** %classes.addr, align 8
  %arrayidx20 = getelementptr i32, i32* %14, i64 0
  store i32 2, i32* %arrayidx20, align 4
  store i32 2, i32* %retval
  br label %return

if.else.21:                                       ; preds = %if.else.15
  br label %if.end

if.end:                                           ; preds = %if.else.21
  br label %if.end.22

if.end.22:                                        ; preds = %if.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23
  br label %sw.bb.25

sw.bb.25:                                         ; preds = %entry, %if.end.24
  %15 = load i64, i64* %byte_offset.addr, align 8
  %rem = urem i64 %15, 8
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %if.else.28, label %if.then.26

if.then.26:                                       ; preds = %sw.bb.25
  %16 = load i32*, i32** %classes.addr, align 8
  %arrayidx27 = getelementptr i32, i32* %16, i64 0
  store i32 4, i32* %arrayidx27, align 4
  br label %if.end.30

if.else.28:                                       ; preds = %sw.bb.25
  %17 = load i32*, i32** %classes.addr, align 8
  %arrayidx29 = getelementptr i32, i32* %17, i64 0
  store i32 3, i32* %arrayidx29, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.26
  store i32 1, i32* %retval
  br label %return

sw.bb.31:                                         ; preds = %entry
  %18 = load i32*, i32** %classes.addr, align 8
  %arrayidx32 = getelementptr i32, i32* %18, i64 0
  store i32 5, i32* %arrayidx32, align 4
  store i32 1, i32* %retval
  br label %return

sw.bb.33:                                         ; preds = %entry
  %19 = load i32*, i32** %classes.addr, align 8
  %arrayidx34 = getelementptr i32, i32* %19, i64 0
  store i32 7, i32* %arrayidx34, align 4
  %20 = load i32*, i32** %classes.addr, align 8
  %arrayidx35 = getelementptr i32, i32* %20, i64 1
  store i32 8, i32* %arrayidx35, align 4
  store i32 2, i32* %retval
  br label %return

sw.bb.36:                                         ; preds = %entry
  store i32 8, i32* %UNITS_PER_WORD, align 4
  %21 = load %struct._ffi_type*, %struct._ffi_type** %type.addr, align 8
  %size37 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %21, i32 0, i32 0
  %22 = load i64, i64* %size37, align 8
  %add38 = add i64 %22, 8
  %sub = sub i64 %add38, 1
  %div = udiv i64 %sub, 8
  %conv39 = trunc i64 %div to i32
  store i32 %conv39, i32* %words, align 4
  %23 = load %struct._ffi_type*, %struct._ffi_type** %type.addr, align 8
  %size40 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %23, i32 0, i32 0
  %24 = load i64, i64* %size40, align 8
  %cmp41 = icmp ugt i64 %24, 32
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %sw.bb.36
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %sw.bb.36
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.44
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %words, align 4
  %cmp45 = icmp slt i32 %25, %26
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load i32*, i32** %classes.addr, align 8
  %arrayidx47 = getelementptr i32, i32* %28, i64 %idxprom
  store i32 0, i32* %arrayidx47, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4
  %inc = add i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %words, align 4
  %tobool48 = icmp ne i32 %30, 0
  br i1 %tobool48, label %if.end.51, label %if.then.49

if.then.49:                                       ; preds = %for.end
  %31 = load i32*, i32** %classes.addr, align 8
  %arrayidx50 = getelementptr i32, i32* %31, i64 0
  store i32 0, i32* %arrayidx50, align 4
  store i32 1, i32* %retval
  br label %return

if.end.51:                                        ; preds = %for.end
  %32 = load %struct._ffi_type*, %struct._ffi_type** %type.addr, align 8
  %elements = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %32, i32 0, i32 3
  %33 = load %struct._ffi_type**, %struct._ffi_type*** %elements, align 8
  store %struct._ffi_type** %33, %struct._ffi_type*** %ptr, align 8
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.86, %if.end.51
  %34 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8
  %35 = load %struct._ffi_type*, %struct._ffi_type** %34, align 8
  %cmp53 = icmp ne %struct._ffi_type* %35, null
  br i1 %cmp53, label %for.body.55, label %for.end.87

for.body.55:                                      ; preds = %for.cond.52
  %36 = load i64, i64* %byte_offset.addr, align 8
  %sub56 = sub i64 %36, 1
  %37 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8
  %38 = load %struct._ffi_type*, %struct._ffi_type** %37, align 8
  %alignment = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %38, i32 0, i32 1
  %39 = load i16, i16* %alignment, align 2
  %conv57 = zext i16 %39 to i32
  %sub58 = sub i32 %conv57, 1
  %conv59 = sext i32 %sub58 to i64
  %or = or i64 %sub56, %conv59
  %add60 = add i64 %or, 1
  store i64 %add60, i64* %byte_offset.addr, align 8
  %40 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8
  %41 = load %struct._ffi_type*, %struct._ffi_type** %40, align 8
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %subclasses, i32 0, i32 0
  %42 = load i64, i64* %byte_offset.addr, align 8
  %rem61 = urem i64 %42, 8
  %call = call i32 @classify_argument(%struct._ffi_type* %41, i32* %arraydecay, i64 %rem61)
  store i32 %call, i32* %num, align 4
  %43 = load i32, i32* %num, align 4
  %cmp62 = icmp eq i32 %43, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %for.body.55
  store i32 0, i32* %retval
  br label %return

if.end.65:                                        ; preds = %for.body.55
  store i32 0, i32* %i, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.81, %if.end.65
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %num, align 4
  %cmp67 = icmp slt i32 %44, %45
  br i1 %cmp67, label %for.body.69, label %for.end.83

for.body.69:                                      ; preds = %for.cond.66
  %46 = load i64, i64* %byte_offset.addr, align 8
  %div70 = udiv i64 %46, 8
  %conv71 = trunc i64 %div70 to i32
  store i32 %conv71, i32* %pos, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %47 to i64
  %arrayidx73 = getelementptr [4 x i32], [4 x i32]* %subclasses, i32 0, i64 %idxprom72
  %48 = load i32, i32* %arrayidx73, align 4
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %pos, align 4
  %add74 = add i32 %49, %50
  %idxprom75 = sext i32 %add74 to i64
  %51 = load i32*, i32** %classes.addr, align 8
  %arrayidx76 = getelementptr i32, i32* %51, i64 %idxprom75
  %52 = load i32, i32* %arrayidx76, align 4
  %call77 = call i32 @merge_classes(i32 %48, i32 %52)
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %pos, align 4
  %add78 = add i32 %53, %54
  %idxprom79 = sext i32 %add78 to i64
  %55 = load i32*, i32** %classes.addr, align 8
  %arrayidx80 = getelementptr i32, i32* %55, i64 %idxprom79
  store i32 %call77, i32* %arrayidx80, align 4
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.69
  %56 = load i32, i32* %i, align 4
  %inc82 = add i32 %56, 1
  store i32 %inc82, i32* %i, align 4
  br label %for.cond.66

for.end.83:                                       ; preds = %for.cond.66
  %57 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8
  %58 = load %struct._ffi_type*, %struct._ffi_type** %57, align 8
  %size84 = getelementptr inbounds %struct._ffi_type, %struct._ffi_type* %58, i32 0, i32 0
  %59 = load i64, i64* %size84, align 8
  %60 = load i64, i64* %byte_offset.addr, align 8
  %add85 = add i64 %60, %59
  store i64 %add85, i64* %byte_offset.addr, align 8
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.end.83
  %61 = load %struct._ffi_type**, %struct._ffi_type*** %ptr, align 8
  %incdec.ptr = getelementptr %struct._ffi_type*, %struct._ffi_type** %61, i32 1
  store %struct._ffi_type** %incdec.ptr, %struct._ffi_type*** %ptr, align 8
  br label %for.cond.52

for.end.87:                                       ; preds = %for.cond.52
  %62 = load i32, i32* %words, align 4
  %cmp88 = icmp sgt i32 %62, 2
  br i1 %cmp88, label %if.then.90, label %if.end.109

if.then.90:                                       ; preds = %for.end.87
  %63 = load i32*, i32** %classes.addr, align 8
  %arrayidx91 = getelementptr i32, i32* %63, i64 0
  %64 = load i32, i32* %arrayidx91, align 4
  %cmp92 = icmp ne i32 %64, 3
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.then.90
  store i32 0, i32* %retval
  br label %return

if.end.95:                                        ; preds = %if.then.90
  store i32 1, i32* %i, align 4
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.106, %if.end.95
  %65 = load i32, i32* %i, align 4
  %66 = load i32, i32* %words, align 4
  %cmp97 = icmp slt i32 %65, %66
  br i1 %cmp97, label %for.body.99, label %for.end.108

for.body.99:                                      ; preds = %for.cond.96
  %67 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %67 to i64
  %68 = load i32*, i32** %classes.addr, align 8
  %arrayidx101 = getelementptr i32, i32* %68, i64 %idxprom100
  %69 = load i32, i32* %arrayidx101, align 4
  %cmp102 = icmp ne i32 %69, 6
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %for.body.99
  store i32 0, i32* %retval
  br label %return

if.end.105:                                       ; preds = %for.body.99
  br label %for.inc.106

for.inc.106:                                      ; preds = %if.end.105
  %70 = load i32, i32* %i, align 4
  %inc107 = add i32 %70, 1
  store i32 %inc107, i32* %i, align 4
  br label %for.cond.96

for.end.108:                                      ; preds = %for.cond.96
  br label %if.end.109

if.end.109:                                       ; preds = %for.end.108, %for.end.87
  store i32 0, i32* %i, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.151, %if.end.109
  %71 = load i32, i32* %i, align 4
  %72 = load i32, i32* %words, align 4
  %cmp111 = icmp slt i32 %71, %72
  br i1 %cmp111, label %for.body.113, label %for.end.153

for.body.113:                                     ; preds = %for.cond.110
  %73 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %73 to i64
  %74 = load i32*, i32** %classes.addr, align 8
  %arrayidx115 = getelementptr i32, i32* %74, i64 %idxprom114
  %75 = load i32, i32* %arrayidx115, align 4
  %cmp116 = icmp eq i32 %75, 10
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %for.body.113
  store i32 0, i32* %retval
  br label %return

if.end.119:                                       ; preds = %for.body.113
  %76 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %76 to i64
  %77 = load i32*, i32** %classes.addr, align 8
  %arrayidx121 = getelementptr i32, i32* %77, i64 %idxprom120
  %78 = load i32, i32* %arrayidx121, align 4
  %cmp122 = icmp eq i32 %78, 6
  br i1 %cmp122, label %land.lhs.true, label %if.end.138

land.lhs.true:                                    ; preds = %if.end.119
  %79 = load i32, i32* %i, align 4
  %sub124 = sub i32 %79, 1
  %idxprom125 = sext i32 %sub124 to i64
  %80 = load i32*, i32** %classes.addr, align 8
  %arrayidx126 = getelementptr i32, i32* %80, i64 %idxprom125
  %81 = load i32, i32* %arrayidx126, align 4
  %cmp127 = icmp ne i32 %81, 3
  br i1 %cmp127, label %land.lhs.true.129, label %if.end.138

land.lhs.true.129:                                ; preds = %land.lhs.true
  %82 = load i32, i32* %i, align 4
  %sub130 = sub i32 %82, 1
  %idxprom131 = sext i32 %sub130 to i64
  %83 = load i32*, i32** %classes.addr, align 8
  %arrayidx132 = getelementptr i32, i32* %83, i64 %idxprom131
  %84 = load i32, i32* %arrayidx132, align 4
  %cmp133 = icmp ne i32 %84, 6
  br i1 %cmp133, label %if.then.135, label %if.end.138

if.then.135:                                      ; preds = %land.lhs.true.129
  %85 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %85 to i64
  %86 = load i32*, i32** %classes.addr, align 8
  %arrayidx137 = getelementptr i32, i32* %86, i64 %idxprom136
  store i32 3, i32* %arrayidx137, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.135, %land.lhs.true.129, %land.lhs.true, %if.end.119
  %87 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %87 to i64
  %88 = load i32*, i32** %classes.addr, align 8
  %arrayidx140 = getelementptr i32, i32* %88, i64 %idxprom139
  %89 = load i32, i32* %arrayidx140, align 4
  %cmp141 = icmp eq i32 %89, 8
  br i1 %cmp141, label %land.lhs.true.143, label %if.end.150

land.lhs.true.143:                                ; preds = %if.end.138
  %90 = load i32, i32* %i, align 4
  %sub144 = sub i32 %90, 1
  %idxprom145 = sext i32 %sub144 to i64
  %91 = load i32*, i32** %classes.addr, align 8
  %arrayidx146 = getelementptr i32, i32* %91, i64 %idxprom145
  %92 = load i32, i32* %arrayidx146, align 4
  %cmp147 = icmp ne i32 %92, 7
  br i1 %cmp147, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %land.lhs.true.143
  store i32 0, i32* %retval
  br label %return

if.end.150:                                       ; preds = %land.lhs.true.143, %if.end.138
  br label %for.inc.151

for.inc.151:                                      ; preds = %if.end.150
  %93 = load i32, i32* %i, align 4
  %inc152 = add i32 %93, 1
  store i32 %inc152, i32* %i, align 4
  br label %for.cond.110

for.end.153:                                      ; preds = %for.cond.110
  %94 = load i32, i32* %words, align 4
  store i32 %94, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %for.end.153, %if.then.149, %if.then.118, %if.then.104, %if.then.94, %if.then.64, %if.then.49, %if.then.43, %sw.bb.33, %sw.bb.31, %if.end.30, %if.then.18, %if.then.12, %if.then.7, %if.then
  %95 = load i32, i32* %retval
  ret i32 %95
}

; Function Attrs: nounwind uwtable
define internal i32 @merge_classes(i32 %class1, i32 %class2) #4 {
entry:
  %retval = alloca i32, align 4
  %class1.addr = alloca i32, align 4
  %class2.addr = alloca i32, align 4
  store i32 %class1, i32* %class1.addr, align 4
  store i32 %class2, i32* %class2.addr, align 4
  %0 = load i32, i32* %class1.addr, align 4
  %1 = load i32, i32* %class2.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %class1.addr, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %class1.addr, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* %class2.addr, align 4
  store i32 %4, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load i32, i32* %class2.addr, align 4
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %6 = load i32, i32* %class1.addr, align 4
  store i32 %6, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %7 = load i32, i32* %class1.addr, align 4
  %cmp7 = icmp eq i32 %7, 10
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %8 = load i32, i32* %class2.addr, align 4
  %cmp8 = icmp eq i32 %8, 10
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.end.6
  store i32 10, i32* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false
  %9 = load i32, i32* %class1.addr, align 4
  %cmp11 = icmp eq i32 %9, 2
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false.13

land.lhs.true:                                    ; preds = %if.end.10
  %10 = load i32, i32* %class2.addr, align 4
  %cmp12 = icmp eq i32 %10, 4
  br i1 %cmp12, label %if.then.17, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %land.lhs.true, %if.end.10
  %11 = load i32, i32* %class2.addr, align 4
  %cmp14 = icmp eq i32 %11, 2
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.18

land.lhs.true.15:                                 ; preds = %lor.lhs.false.13
  %12 = load i32, i32* %class1.addr, align 4
  %cmp16 = icmp eq i32 %12, 4
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true.15, %land.lhs.true
  store i32 2, i32* %retval
  br label %return

if.end.18:                                        ; preds = %land.lhs.true.15, %lor.lhs.false.13
  %13 = load i32, i32* %class1.addr, align 4
  %cmp19 = icmp eq i32 %13, 1
  br i1 %cmp19, label %if.then.26, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %if.end.18
  %14 = load i32, i32* %class1.addr, align 4
  %cmp21 = icmp eq i32 %14, 2
  br i1 %cmp21, label %if.then.26, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.20
  %15 = load i32, i32* %class2.addr, align 4
  %cmp23 = icmp eq i32 %15, 1
  br i1 %cmp23, label %if.then.26, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.22
  %16 = load i32, i32* %class2.addr, align 4
  %cmp25 = icmp eq i32 %16, 2
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false.24, %lor.lhs.false.22, %lor.lhs.false.20, %if.end.18
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %lor.lhs.false.24
  %17 = load i32, i32* %class1.addr, align 4
  %cmp28 = icmp eq i32 %17, 7
  br i1 %cmp28, label %if.then.39, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %if.end.27
  %18 = load i32, i32* %class1.addr, align 4
  %cmp30 = icmp eq i32 %18, 8
  br i1 %cmp30, label %if.then.39, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.29
  %19 = load i32, i32* %class1.addr, align 4
  %cmp32 = icmp eq i32 %19, 9
  br i1 %cmp32, label %if.then.39, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.31
  %20 = load i32, i32* %class2.addr, align 4
  %cmp34 = icmp eq i32 %20, 7
  br i1 %cmp34, label %if.then.39, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %lor.lhs.false.33
  %21 = load i32, i32* %class2.addr, align 4
  %cmp36 = icmp eq i32 %21, 8
  br i1 %cmp36, label %if.then.39, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.35
  %22 = load i32, i32* %class2.addr, align 4
  %cmp38 = icmp eq i32 %22, 9
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %lor.lhs.false.37, %lor.lhs.false.35, %lor.lhs.false.33, %lor.lhs.false.31, %lor.lhs.false.29, %if.end.27
  store i32 10, i32* %retval
  br label %return

if.end.40:                                        ; preds = %lor.lhs.false.37
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.39, %if.then.26, %if.then.17, %if.then.9, %if.then.5, %if.then.2, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
