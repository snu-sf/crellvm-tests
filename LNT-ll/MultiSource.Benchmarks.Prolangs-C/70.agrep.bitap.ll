; ModuleID = './MultiSource.Benchmarks.Prolangs-C/70.agrep.bitap.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@D_length = external global i32, align 4
@REGEX = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [75 x i8] c"%s: the maximum number of erorrs allowed for full regular expression is 4\0A\00", align 1
@Progname = external global [0 x i8], align 1
@JUMP = external global i32, align 4
@I = external global i32, align 4
@Init1 = external global i32, align 4
@Init = external global [0 x i32], align 4
@D_endpos = external global i32, align 4
@DELIMITER = external global i32, align 4
@Mask = external global [0 x i32], align 4
@AND = external global i32, align 4
@endposition = external global i32, align 4
@INVERSE = external global i32, align 4
@FILENAMEONLY = external global i32, align 4
@num_of_matched = external global i32, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@CurrentFileName = external global [0 x i8], align 1
@TRUNCATE = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @bitap(i8* %old_D_pat, i8* %Pattern, i32 %fd, i32 %M, i32 %D) #0 {
entry:
  %old_D_pat.addr = alloca i8*, align 8
  %Pattern.addr = alloca i8*, align 8
  %fd.addr = alloca i32, align 4
  %M.addr = alloca i32, align 4
  %D.addr = alloca i32, align 4
  %c = alloca i8, align 1
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %r3 = alloca i32, align 4
  %CMask = alloca i32, align 4
  %i = alloca i32, align 4
  %end = alloca i32, align 4
  %endpos = alloca i32, align 4
  %r_Init1 = alloca i32, align 4
  %D_Mask = alloca i32, align 4
  %ResidueSize = alloca i32, align 4
  %FIRSTROUND = alloca i32, align 4
  %lasti = alloca i32, align 4
  %print_end = alloca i32, align 4
  %j = alloca i32, align 4
  %num_read = alloca i32, align 4
  %k = alloca i32, align 4
  %buffer = alloca [147456 x i8], align 16
  store i8* %old_D_pat, i8** %old_D_pat.addr, align 8
  store i8* %Pattern, i8** %Pattern.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %M, i32* %M.addr, align 4
  store i32 %D, i32* %D.addr, align 4
  %0 = load i8*, i8** %old_D_pat.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* @D_length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @D_length, align 4
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load i8*, i8** %old_D_pat.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 94
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %6 to i64
  %7 = load i8*, i8** %old_D_pat.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 36
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom10 = zext i32 %9 to i64
  %10 = load i8*, i8** %old_D_pat.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %10, i64 %idxprom10
  store i8 10, i8* %arrayidx11, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* @REGEX, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.12, label %if.end.21

if.then.12:                                       ; preds = %for.end
  %13 = load i32, i32* %D.addr, align 4
  %cmp13 = icmp sgt i32 %13, 4
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.then.12
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i32 0, i32 0))
  call void @exit(i32 2) #6
  unreachable

if.end.17:                                        ; preds = %if.then.12
  %15 = load i32, i32* %M.addr, align 4
  %cmp18 = icmp sle i32 %15, 15
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.17
  %16 = load i32, i32* %fd.addr, align 4
  %17 = load i32, i32* %M.addr, align 4
  %18 = load i32, i32* %D.addr, align 4
  call void @re(i32 %16, i32 %17, i32 %18)
  br label %return

if.else:                                          ; preds = %if.end.17
  %19 = load i32, i32* %fd.addr, align 4
  %20 = load i32, i32* %M.addr, align 4
  %21 = load i32, i32* %D.addr, align 4
  call void @re1(i32 %19, i32 %20, i32 %21)
  br label %return

if.end.21:                                        ; preds = %for.end
  %22 = load i32, i32* %D.addr, align 4
  %cmp22 = icmp sgt i32 %22, 0
  br i1 %cmp22, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end.21
  %23 = load i32, i32* @JUMP, align 4
  %cmp24 = icmp eq i32 %23, 1
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true
  %24 = load i8*, i8** %old_D_pat.addr, align 8
  %25 = load i32, i32* %fd.addr, align 4
  %26 = load i32, i32* %D.addr, align 4
  call void @asearch1(i8* %24, i32 %25, i32 %26)
  br label %return

if.end.27:                                        ; preds = %land.lhs.true, %if.end.21
  %27 = load i32, i32* %D.addr, align 4
  %cmp28 = icmp sgt i32 %27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  %28 = load i8*, i8** %old_D_pat.addr, align 8
  %29 = load i32, i32* %fd.addr, align 4
  %30 = load i32, i32* %D.addr, align 4
  call void @asearch(i8* %28, i32 %29, i32 %30)
  br label %return

if.end.31:                                        ; preds = %if.end.27
  %31 = load i32, i32* @I, align 4
  %cmp32 = icmp eq i32 %31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.31
  store i32 -1, i32* @Init1, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.31
  store i32 0, i32* %j, align 4
  store i32 49152, i32* %lasti, align 4
  %arrayidx36 = getelementptr inbounds [147456 x i8], [147456 x i8]* %buffer, i32 0, i64 49151
  store i8 10, i8* %arrayidx36, align 1
  %32 = load i32, i32* @Init1, align 4
  store i32 %32, i32* %r_Init1, align 4
  %33 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i32 0, i64 0), align 4
  store i32 %33, i32* %r3, align 4
  store i32 %33, i32* %r2, align 4
  store i32 %33, i32* %r1, align 4
  %34 = load i32, i32* @D_endpos, align 4
  store i32 %34, i32* %endpos, align 4
  %arrayidx37 = getelementptr inbounds [147456 x i8], [147456 x i8]* %buffer, i32 0, i64 49151
  store i8 10, i8* %arrayidx37, align 1
  %35 = load i32, i32* @D_endpos, align 4
  store i32 %35, i32* %D_Mask, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.42, %if.end.35
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* @D_length, align 4
  %cmp39 = icmp ult i32 %36, %37
  br i1 %cmp39, label %for.body.41, label %for.end.44

for.body.41:                                      ; preds = %for.cond.38
  %38 = load i32, i32* %D_Mask, align 4
  %shl = shl i32 %38, 1
  %39 = load i32, i32* %D_Mask, align 4
  %or = or i32 %shl, %39
  store i32 %or, i32* %D_Mask, align 4
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.41
  %40 = load i32, i32* %i, align 4
  %inc43 = add i32 %40, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond.38

for.end.44:                                       ; preds = %for.cond.38
  %41 = load i32, i32* %D_Mask, align 4
  %neg = xor i32 %41, -1
  store i32 %neg, i32* %D_Mask, align 4
  store i32 1, i32* %FIRSTROUND, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.208, %for.end.44
  %42 = load i32, i32* %fd.addr, align 4
  %arraydecay = getelementptr inbounds [147456 x i8], [147456 x i8]* %buffer, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 49152
  %call45 = call i32 @fill_buf(i32 %42, i8* %add.ptr, i32 49152)
  store i32 %call45, i32* %num_read, align 4
  %cmp46 = icmp sgt i32 %call45, 0
  br i1 %cmp46, label %while.body, label %while.end.209

while.body:                                       ; preds = %while.cond
  store i32 49152, i32* %i, align 4
  %43 = load i32, i32* %num_read, align 4
  %add = add nsw i32 49152, %43
  store i32 %add, i32* %end, align 4
  %44 = load i32, i32* %FIRSTROUND, align 4
  %tobool48 = icmp ne i32 %44, 0
  br i1 %tobool48, label %if.then.49, label %if.end.75

if.then.49:                                       ; preds = %while.body
  store i32 49151, i32* %i, align 4
  %45 = load i32, i32* @DELIMITER, align 4
  %tobool50 = icmp ne i32 %45, 0
  br i1 %tobool50, label %if.then.51, label %if.end.74

if.then.51:                                       ; preds = %if.then.49
  store i32 0, i32* %k, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.67, %if.then.51
  %46 = load i32, i32* %k, align 4
  %47 = load i32, i32* @D_length, align 4
  %cmp53 = icmp slt i32 %46, %47
  br i1 %cmp53, label %for.body.55, label %for.end.69

for.body.55:                                      ; preds = %for.cond.52
  %48 = load i32, i32* %k, align 4
  %idxprom56 = sext i32 %48 to i64
  %49 = load i8*, i8** %old_D_pat.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %49, i64 %idxprom56
  %50 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %50 to i32
  %51 = load i32, i32* %k, align 4
  %add59 = add nsw i32 49152, %51
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds [147456 x i8], [147456 x i8]* %buffer, i32 0, i64 %idxprom60
  %52 = load i8, i8* %arrayidx61, align 1
  %conv62 = sext i8 %52 to i32
  %cmp63 = icmp ne i32 %conv58, %conv62
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %for.body.55
  br label %for.end.69

if.end.66:                                        ; preds = %for.body.55
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %53 = load i32, i32* %k, align 4
  %inc68 = add nsw i32 %53, 1
  store i32 %inc68, i32* %k, align 4
  br label %for.cond.52

for.end.69:                                       ; preds = %if.then.65, %for.cond.52
  %54 = load i32, i32* %k, align 4
  %55 = load i32, i32* @D_length, align 4
  %cmp70 = icmp sge i32 %54, %55
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %for.end.69
  %56 = load i32, i32* %j, align 4
  %dec = add nsw i32 %56, -1
  store i32 %dec, i32* %j, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %for.end.69
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.49
  store i32 0, i32* %FIRSTROUND, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %while.body
  %57 = load i32, i32* %num_read, align 4
  %cmp76 = icmp slt i32 %57, 49152
  br i1 %cmp76, label %if.then.78, label %if.end.87

if.then.78:                                       ; preds = %if.end.75
  %arraydecay79 = getelementptr inbounds [147456 x i8], [147456 x i8]* %buffer, i32 0, i32 0
  %add.ptr80 = getelementptr inbounds i8, i8* %arraydecay79, i64 49152
  %58 = load i32, i32* %num_read, align 4
  %idx.ext = sext i32 %58 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %add.ptr80, i64 %idx.ext
  %59 = load i8*, i8** %old_D_pat.addr, align 8
  %60 = load i32, i32* @D_length, align 4
  %conv82 = sext i32 %60 to i64
  %call83 = call i8* @strncpy(i8* %add.ptr81, i8* %59, i64 %conv82) #7
  %61 = load i32, i32* %end, align 4
  %62 = load i32, i32* @D_length, align 4
  %add84 = add i32 %61, %62
  store i32 %add84, i32* %end, align 4
  %63 = load i32, i32* %end, align 4
  %idxprom85 = zext i32 %63 to i64
  %arrayidx86 = getelementptr inbounds [147456 x i8], [147456 x i8]* %buffer, i32 0, i64 %idxprom85
  store i8 0, i8* %arrayidx86, align 1
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.78, %if.end.75
  br label %while.cond.88

while.cond.88:                                    ; preds = %if.end.188, %if.end.87
  %64 = load i32, i32* %i, align 4
  %65 = load i32, i32* %end, align 4
  %cmp89 = icmp ult i32 %64, %65
  br i1 %cmp89, label %while.body.91, label %while.end

while.body.91:                                    ; preds = %while.cond.88
  %66 = load i32, i32* %i, align 4
  %inc92 = add i32 %66, 1
  store i32 %inc92, i32* %i, align 4
  %idxprom93 = zext i32 %66 to i64
  %arrayidx94 = getelementptr inbounds [147456 x i8], [147456 x i8]* %buffer, i32 0, i64 %idxprom93
  %67 = load i8, i8* %arrayidx94, align 1
  store i8 %67, i8* %c, align 1
  %68 = load i8, i8* %c, align 1
  %idxprom95 = sext i8 %68 to i64
  %arrayidx96 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i32 0, i64 %idxprom95
  %69 = load i32, i32* %arrayidx96, align 4
  store i32 %69, i32* %CMask, align 4
  %70 = load i32, i32* %r_Init1, align 4
  %71 = load i32, i32* %r3, align 4
  %and = and i32 %70, %71
  store i32 %and, i32* %r1, align 4
  %72 = load i32, i32* %r3, align 4
  %shr = lshr i32 %72, 1
  %73 = load i32, i32* %CMask, align 4
  %and97 = and i32 %shr, %73
  %74 = load i32, i32* %r1, align 4
  %or98 = or i32 %and97, %74
  store i32 %or98, i32* %r2, align 4
  %75 = load i32, i32* %r2, align 4
  %76 = load i32, i32* %endpos, align 4
  %and99 = and i32 %75, %76
  %tobool100 = icmp ne i32 %and99, 0
  br i1 %tobool100, label %if.then.101, label %if.end.136

if.then.101:                                      ; preds = %while.body.91
  %77 = load i32, i32* %j, align 4
  %inc102 = add nsw i32 %77, 1
  store i32 %inc102, i32* %j, align 4
  %78 = load i32, i32* @AND, align 4
  %cmp103 = icmp eq i32 %78, 1
  br i1 %cmp103, label %land.lhs.true.105, label %lor.lhs.false.109

land.lhs.true.105:                                ; preds = %if.then.101
  %79 = load i32, i32* %r2, align 4
  %80 = load i32, i32* @endposition, align 4
  %and106 = and i32 %79, %80
  %81 = load i32, i32* @endposition, align 4
  %cmp107 = icmp eq i32 %and106, %81
  br i1 %cmp107, label %if.then.115, label %lor.lhs.false.109

lor.lhs.false.109:                                ; preds = %land.lhs.true.105, %if.then.101
  %82 = load i32, i32* @AND, align 4
  %cmp110 = icmp eq i32 %82, 0
  br i1 %cmp110, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false.109
  %83 = load i32, i32* %r2, align 4
  %84 = load i32, i32* @endposition, align 4
  %and112 = and i32 %83, %84
  %tobool113 = icmp ne i32 %and112, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false.109
  %85 = phi i1 [ false, %lor.lhs.false.109 ], [ %tobool113, %land.rhs ]
  %land.ext = zext i1 %85 to i32
  %86 = load i32, i32* @INVERSE, align 4
  %xor = xor i32 %land.ext, %86
  %tobool114 = icmp ne i32 %xor, 0
  br i1 %tobool114, label %if.then.115, label %if.end.129

if.then.115:                                      ; preds = %land.end, %land.lhs.true.105
  %87 = load i32, i32* @FILENAMEONLY, align 4
  %tobool116 = icmp ne i32 %87, 0
  br i1 %tobool116, label %if.then.117, label %if.end.120

if.then.117:                                      ; preds = %if.then.115
  %88 = load i32, i32* @num_of_matched, align 4
  %inc118 = add nsw i32 %88, 1
  store i32 %inc118, i32* @num_of_matched, align 4
  %call119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %return

if.end.120:                                       ; preds = %if.then.115
  %89 = load i32, i32* %i, align 4
  %90 = load i32, i32* @D_length, align 4
  %sub = sub i32 %89, %90
  %sub121 = sub i32 %sub, 1
  store i32 %sub121, i32* %print_end, align 4
  %91 = load i32, i32* %lasti, align 4
  %92 = load i32, i32* %num_read, align 4
  %add122 = add nsw i32 49152, %92
  %sub123 = sub nsw i32 %add122, 1
  %cmp124 = icmp sge i32 %91, %sub123
  br i1 %cmp124, label %if.end.128, label %if.then.126

if.then.126:                                      ; preds = %if.end.120
  %arraydecay127 = getelementptr inbounds [147456 x i8], [147456 x i8]* %buffer, i32 0, i32 0
  %93 = load i32, i32* %lasti, align 4
  %94 = load i32, i32* %print_end, align 4
  %95 = load i32, i32* %j, align 4
  call void @output(i8* %arraydecay127, i32 %93, i32 %94, i32 %95)
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.126, %if.end.120
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %land.end
  %96 = load i32, i32* %i, align 4
  %97 = load i32, i32* @D_length, align 4
  %sub130 = sub i32 %96, %97
  store i32 %sub130, i32* %lasti, align 4
  store i32 0, i32* @TRUNCATE, align 4
  %98 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i32 0, i64 0), align 4
  store i32 %98, i32* %r1, align 4
  store i32 %98, i32* %r3, align 4
  store i32 %98, i32* %r2, align 4
  %99 = load i32, i32* %r_Init1, align 4
  %100 = load i32, i32* %r3, align 4
  %and131 = and i32 %99, %100
  store i32 %and131, i32* %r1, align 4
  %101 = load i32, i32* %r2, align 4
  %shr132 = lshr i32 %101, 1
  %102 = load i32, i32* %CMask, align 4
  %and133 = and i32 %shr132, %102
  %103 = load i32, i32* %r1, align 4
  %or134 = or i32 %and133, %103
  %104 = load i32, i32* %D_Mask, align 4
  %and135 = and i32 %or134, %104
  store i32 %and135, i32* %r2, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.129, %while.body.91
  %105 = load i32, i32* %i, align 4
  %inc137 = add i32 %105, 1
  store i32 %inc137, i32* %i, align 4
  %idxprom138 = zext i32 %105 to i64
  %arrayidx139 = getelementptr inbounds [147456 x i8], [147456 x i8]* %buffer, i32 0, i64 %idxprom138
  %106 = load i8, i8* %arrayidx139, align 1
  store i8 %106, i8* %c, align 1
  %107 = load i8, i8* %c, align 1
  %idxprom140 = sext i8 %107 to i64
  %arrayidx141 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i32 0, i64 %idxprom140
  %108 = load i32, i32* %arrayidx141, align 4
  store i32 %108, i32* %CMask, align 4
  %109 = load i32, i32* %r_Init1, align 4
  %110 = load i32, i32* %r2, align 4
  %and142 = and i32 %109, %110
  store i32 %and142, i32* %r1, align 4
  %111 = load i32, i32* %r2, align 4
  %shr143 = lshr i32 %111, 1
  %112 = load i32, i32* %CMask, align 4
  %and144 = and i32 %shr143, %112
  %113 = load i32, i32* %r1, align 4
  %or145 = or i32 %and144, %113
  store i32 %or145, i32* %r3, align 4
  %114 = load i32, i32* %r3, align 4
  %115 = load i32, i32* %endpos, align 4
  %and146 = and i32 %114, %115
  %tobool147 = icmp ne i32 %and146, 0
  br i1 %tobool147, label %if.then.148, label %if.end.188

if.then.148:                                      ; preds = %if.end.136
  %116 = load i32, i32* %j, align 4
  %inc149 = add nsw i32 %116, 1
  store i32 %inc149, i32* %j, align 4
  %117 = load i32, i32* @AND, align 4
  %cmp150 = icmp eq i32 %117, 1
  br i1 %cmp150, label %land.lhs.true.152, label %lor.lhs.false.156

land.lhs.true.152:                                ; preds = %if.then.148
  %118 = load i32, i32* %r3, align 4
  %119 = load i32, i32* @endposition, align 4
  %and153 = and i32 %118, %119
  %120 = load i32, i32* @endposition, align 4
  %cmp154 = icmp eq i32 %and153, %120
  br i1 %cmp154, label %if.then.166, label %lor.lhs.false.156

lor.lhs.false.156:                                ; preds = %land.lhs.true.152, %if.then.148
  %121 = load i32, i32* @AND, align 4
  %cmp157 = icmp eq i32 %121, 0
  br i1 %cmp157, label %land.rhs.159, label %land.end.162

land.rhs.159:                                     ; preds = %lor.lhs.false.156
  %122 = load i32, i32* %r3, align 4
  %123 = load i32, i32* @endposition, align 4
  %and160 = and i32 %122, %123
  %tobool161 = icmp ne i32 %and160, 0
  br label %land.end.162

land.end.162:                                     ; preds = %land.rhs.159, %lor.lhs.false.156
  %124 = phi i1 [ false, %lor.lhs.false.156 ], [ %tobool161, %land.rhs.159 ]
  %land.ext163 = zext i1 %124 to i32
  %125 = load i32, i32* @INVERSE, align 4
  %xor164 = xor i32 %land.ext163, %125
  %tobool165 = icmp ne i32 %xor164, 0
  br i1 %tobool165, label %if.then.166, label %if.end.181

if.then.166:                                      ; preds = %land.end.162, %land.lhs.true.152
  %126 = load i32, i32* @FILENAMEONLY, align 4
  %tobool167 = icmp ne i32 %126, 0
  br i1 %tobool167, label %if.then.168, label %if.end.171

if.then.168:                                      ; preds = %if.then.166
  %127 = load i32, i32* @num_of_matched, align 4
  %inc169 = add nsw i32 %127, 1
  store i32 %inc169, i32* @num_of_matched, align 4
  %call170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i32 0, i32 0))
  br label %return

if.end.171:                                       ; preds = %if.then.166
  %128 = load i32, i32* %i, align 4
  %129 = load i32, i32* @D_length, align 4
  %sub172 = sub i32 %128, %129
  %sub173 = sub i32 %sub172, 1
  store i32 %sub173, i32* %print_end, align 4
  %130 = load i32, i32* %lasti, align 4
  %131 = load i32, i32* %num_read, align 4
  %add174 = add nsw i32 49152, %131
  %sub175 = sub nsw i32 %add174, 1
  %cmp176 = icmp sge i32 %130, %sub175
  br i1 %cmp176, label %if.end.180, label %if.then.178

if.then.178:                                      ; preds = %if.end.171
  %arraydecay179 = getelementptr inbounds [147456 x i8], [147456 x i8]* %buffer, i32 0, i32 0
  %132 = load i32, i32* %lasti, align 4
  %133 = load i32, i32* %print_end, align 4
  %134 = load i32, i32* %j, align 4
  call void @output(i8* %arraydecay179, i32 %132, i32 %133, i32 %134)
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.178, %if.end.171
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %land.end.162
  %135 = load i32, i32* %i, align 4
  %136 = load i32, i32* @D_length, align 4
  %sub182 = sub i32 %135, %136
  store i32 %sub182, i32* %lasti, align 4
  store i32 0, i32* @TRUNCATE, align 4
  %137 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i32 0, i64 0), align 4
  store i32 %137, i32* %r1, align 4
  store i32 %137, i32* %r3, align 4
  store i32 %137, i32* %r2, align 4
  %138 = load i32, i32* %r_Init1, align 4
  %139 = load i32, i32* %r2, align 4
  %and183 = and i32 %138, %139
  store i32 %and183, i32* %r1, align 4
  %140 = load i32, i32* %r2, align 4
  %shr184 = lshr i32 %140, 1
  %141 = load i32, i32* %CMask, align 4
  %and185 = and i32 %shr184, %141
  %142 = load i32, i32* %r1, align 4
  %or186 = or i32 %and185, %142
  %143 = load i32, i32* %D_Mask, align 4
  %and187 = and i32 %or186, %143
  store i32 %and187, i32* %r3, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.181, %if.end.136
  br label %while.cond.88

while.end:                                        ; preds = %while.cond.88
  %144 = load i32, i32* %num_read, align 4
  %add189 = add nsw i32 %144, 49152
  %145 = load i32, i32* %lasti, align 4
  %sub190 = sub nsw i32 %add189, %145
  store i32 %sub190, i32* %ResidueSize, align 4
  %146 = load i32, i32* %ResidueSize, align 4
  %cmp191 = icmp sgt i32 %146, 49152
  br i1 %cmp191, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %while.end
  store i32 49152, i32* %ResidueSize, align 4
  store i32 1, i32* @TRUNCATE, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.193, %while.end
  %arraydecay195 = getelementptr inbounds [147456 x i8], [147456 x i8]* %buffer, i32 0, i32 0
  %add.ptr196 = getelementptr inbounds i8, i8* %arraydecay195, i64 49152
  %147 = load i32, i32* %ResidueSize, align 4
  %idx.ext197 = sext i32 %147 to i64
  %idx.neg = sub i64 0, %idx.ext197
  %add.ptr198 = getelementptr inbounds i8, i8* %add.ptr196, i64 %idx.neg
  %arraydecay199 = getelementptr inbounds [147456 x i8], [147456 x i8]* %buffer, i32 0, i32 0
  %148 = load i32, i32* %lasti, align 4
  %idx.ext200 = sext i32 %148 to i64
  %add.ptr201 = getelementptr inbounds i8, i8* %arraydecay199, i64 %idx.ext200
  %149 = load i32, i32* %ResidueSize, align 4
  %conv202 = sext i32 %149 to i64
  %call203 = call i8* @strncpy(i8* %add.ptr198, i8* %add.ptr201, i64 %conv202) #7
  %150 = load i32, i32* %ResidueSize, align 4
  %sub204 = sub nsw i32 49152, %150
  store i32 %sub204, i32* %lasti, align 4
  %151 = load i32, i32* %lasti, align 4
  %cmp205 = icmp slt i32 %151, 0
  br i1 %cmp205, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %if.end.194
  store i32 1, i32* %lasti, align 4
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.207, %if.end.194
  br label %while.cond

while.end.209:                                    ; preds = %while.cond
  br label %return

return:                                           ; preds = %while.end.209, %if.then.168, %if.then.117, %if.then.30, %if.then.26, %if.else, %if.then.20
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare void @re(i32, i32, i32) #2

declare void @re1(i32, i32, i32) #2

declare void @asearch1(i8*, i32, i32) #2

declare void @asearch(i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @fill_buf(i32 %fd, i8* %buf, i32 %record_size) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %record_size.addr = alloca i32, align 4
  %num_read = alloca i32, align 4
  %total_read = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %record_size, i32* %record_size.addr, align 4
  store i32 1, i32* %num_read, align 4
  store i32 0, i32* %total_read, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %total_read, align 4
  %1 = load i32, i32* %record_size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %num_read, align 4
  %cmp1 = icmp sgt i32 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i32, i32* %fd.addr, align 4
  %5 = load i8*, i8** %buf.addr, align 8
  %6 = load i32, i32* %total_read, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %call = call i64 @read(i32 %4, i8* %add.ptr, i64 4096)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %num_read, align 4
  %7 = load i32, i32* %total_read, align 4
  %8 = load i32, i32* %num_read, align 4
  %add = add nsw i32 %7, %8
  store i32 %add, i32* %total_read, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i32, i32* %total_read, align 4
  ret i32 %9
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

declare i32 @printf(i8*, ...) #2

declare void @output(i8*, i32, i32, i32) #2

declare i64 @read(i32, i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
