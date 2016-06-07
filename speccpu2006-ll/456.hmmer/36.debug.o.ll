; ModuleID = 'debug.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.p7prior_s = type { i32, i32, [200 x float], [200 x [7 x float]], i32, [200 x float], [200 x [20 x float]], i32, [200 x float], [200 x [20 x float]] }

@.str = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"BOGUS\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"protein\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"nucleic acid\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c" [ trace is NULL ]\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"st  node   rpos  - traceback len %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"--  ---- ------\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"%1s  %4d %6d\0A\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"oi, you can't print scores from that hmm, it's not ready.\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"st  node   rpos  transit emission - traceback len %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"--  ---- ------  ------- --------\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"%1s  %4d %6d  %7d\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c" %8d %c\00", align 1
@Alphabet = external global [25 x i8], align 16
@.str.23 = private unnamed_addr constant [8 x i8] c" %8s %c\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"                 ------- --------\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"           total: %6d\0A\0A\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"Dirichlet\0A\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"PAM\0A\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"No such strategy.\00", align 1
@Alphabet_type = external global i32, align 4
@.str.31 = private unnamed_addr constant [7 x i8] c"Amino\0A\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"Nucleic\0A\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"\0A%d\0A\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"%.4f\0A\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"%.4f \00", align 1
@Alphabet_size = external global i32, align 4

; Function Attrs: nounwind uwtable
define i8* @Statetype(i8 signext %st) #0 {
entry:
  %retval = alloca i8*, align 8
  %st.addr = alloca i8, align 1
  store i8 %st, i8* %st.addr, align 1
  %0 = load i8, i8* %st.addr, align 1
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb.1
    i32 6, label %sw.bb.2
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.5
    i32 7, label %sw.bb.6
    i32 10, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 9, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %retval
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define i8* @AlphabetType2String(i32 %type) #0 {
entry:
  %retval = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb.1
    i32 0, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %retval
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define void @P7PrintTrace(%struct._IO_FILE* %fp, %struct.p7trace_s* %tr, %struct.plan7_s* %hmm, i8* %dsq) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %tr.addr = alloca %struct.p7trace_s*, align 8
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %dsq.addr = alloca i8*, align 8
  %tpos = alloca i32, align 4
  %sym = alloca i32, align 4
  %sc = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.p7trace_s* %tr, %struct.p7trace_s** %tr.addr, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i8* %dsq, i8** %dsq.addr, align 8
  %0 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %cmp = icmp eq %struct.p7trace_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.204

if.end:                                           ; preds = %entry
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %cmp1 = icmp eq %struct.plan7_s* %2, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %4 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %4, i32 0, i32 0
  %5 = load i32, i32* %tlen, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0), i32 %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %tpos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %7 = load i32, i32* %tpos, align 4
  %8 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen5 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %8, i32 0, i32 0
  %9 = load i32, i32* %tlen5, align 4
  %cmp6 = icmp slt i32 %7, %9
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %11 = load i32, i32* %tpos, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %12, i32 0, i32 1
  %13 = load i8*, i8** %statetype, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  %call7 = call i8* @Statetype(i8 signext %14)
  %15 = load i32, i32* %tpos, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %16, i32 0, i32 2
  %17 = load i32*, i32** %nodeidx, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %17, i64 %idxprom8
  %18 = load i32, i32* %arrayidx9, align 4
  %19 = load i32, i32* %tpos, align 4
  %idxprom10 = sext i32 %19 to i64
  %20 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %20, i32 0, i32 3
  %21 = load i32*, i32** %pos, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %21, i64 %idxprom10
  %22 = load i32, i32* %arrayidx11, align 4
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* %call7, i32 %18, i32 %22)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %tpos, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %tpos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.204

if.else:                                          ; preds = %if.end
  %24 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %24, i32 0, i32 47
  %25 = load i32, i32* %flags, align 4
  %and = and i32 %25, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.else
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.else
  store i32 0, i32* %sc, align 4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %27 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen15 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %27, i32 0, i32 0
  %28 = load i32, i32* %tlen15, align 4
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i32 0, i32 0), i32 %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %tpos, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.199, %if.end.14
  %30 = load i32, i32* %tpos, align 4
  %31 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen19 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %31, i32 0, i32 0
  %32 = load i32, i32* %tlen19, align 4
  %cmp20 = icmp slt i32 %30, %32
  br i1 %cmp20, label %for.body.21, label %for.end.201

for.body.21:                                      ; preds = %for.cond.18
  %33 = load i8*, i8** %dsq.addr, align 8
  %cmp22 = icmp ne i8* %33, null
  br i1 %cmp22, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %for.body.21
  %34 = load i32, i32* %tpos, align 4
  %idxprom24 = sext i32 %34 to i64
  %35 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos25 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %35, i32 0, i32 3
  %36 = load i32*, i32** %pos25, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %36, i64 %idxprom24
  %37 = load i32, i32* %arrayidx26, align 4
  %idxprom27 = sext i32 %37 to i64
  %38 = load i8*, i8** %dsq.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %38, i64 %idxprom27
  %39 = load i8, i8* %arrayidx28, align 1
  %conv = sext i8 %39 to i32
  store i32 %conv, i32* %sym, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.23, %for.body.21
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %41 = load i32, i32* %tpos, align 4
  %idxprom30 = sext i32 %41 to i64
  %42 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype31 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %42, i32 0, i32 1
  %43 = load i8*, i8** %statetype31, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %43, i64 %idxprom30
  %44 = load i8, i8* %arrayidx32, align 1
  %call33 = call i8* @Statetype(i8 signext %44)
  %45 = load i32, i32* %tpos, align 4
  %idxprom34 = sext i32 %45 to i64
  %46 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx35 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %46, i32 0, i32 2
  %47 = load i32*, i32** %nodeidx35, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %47, i64 %idxprom34
  %48 = load i32, i32* %arrayidx36, align 4
  %49 = load i32, i32* %tpos, align 4
  %idxprom37 = sext i32 %49 to i64
  %50 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos38 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %50, i32 0, i32 3
  %51 = load i32*, i32** %pos38, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %51, i64 %idxprom37
  %52 = load i32, i32* %arrayidx39, align 4
  %53 = load i32, i32* %tpos, align 4
  %54 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen40 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %54, i32 0, i32 0
  %55 = load i32, i32* %tlen40, align 4
  %sub = sub nsw i32 %55, 1
  %cmp41 = icmp slt i32 %53, %sub
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.29
  %56 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %57 = load i32, i32* %tpos, align 4
  %idxprom43 = sext i32 %57 to i64
  %58 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype44 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %58, i32 0, i32 1
  %59 = load i8*, i8** %statetype44, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %59, i64 %idxprom43
  %60 = load i8, i8* %arrayidx45, align 1
  %61 = load i32, i32* %tpos, align 4
  %idxprom46 = sext i32 %61 to i64
  %62 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx47 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %62, i32 0, i32 2
  %63 = load i32*, i32** %nodeidx47, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %63, i64 %idxprom46
  %64 = load i32, i32* %arrayidx48, align 4
  %65 = load i32, i32* %tpos, align 4
  %add = add nsw i32 %65, 1
  %idxprom49 = sext i32 %add to i64
  %66 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype50 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %66, i32 0, i32 1
  %67 = load i8*, i8** %statetype50, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %67, i64 %idxprom49
  %68 = load i8, i8* %arrayidx51, align 1
  %69 = load i32, i32* %tpos, align 4
  %add52 = add nsw i32 %69, 1
  %idxprom53 = sext i32 %add52 to i64
  %70 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx54 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %70, i32 0, i32 2
  %71 = load i32*, i32** %nodeidx54, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %71, i64 %idxprom53
  %72 = load i32, i32* %arrayidx55, align 4
  %call56 = call i32 @TransitionScoreLookup(%struct.plan7_s* %56, i8 signext %60, i32 %64, i8 signext %68, i32 %72)
  br label %cond.end

cond.false:                                       ; preds = %if.end.29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call56, %cond.true ], [ 0, %cond.false ]
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i8* %call33, i32 %48, i32 %52, i32 %cond)
  %73 = load i32, i32* %tpos, align 4
  %74 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen58 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %74, i32 0, i32 0
  %75 = load i32, i32* %tlen58, align 4
  %sub59 = sub nsw i32 %75, 1
  %cmp60 = icmp slt i32 %73, %sub59
  br i1 %cmp60, label %if.then.62, label %if.end.79

if.then.62:                                       ; preds = %cond.end
  %76 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %77 = load i32, i32* %tpos, align 4
  %idxprom63 = sext i32 %77 to i64
  %78 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype64 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %78, i32 0, i32 1
  %79 = load i8*, i8** %statetype64, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %79, i64 %idxprom63
  %80 = load i8, i8* %arrayidx65, align 1
  %81 = load i32, i32* %tpos, align 4
  %idxprom66 = sext i32 %81 to i64
  %82 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx67 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %82, i32 0, i32 2
  %83 = load i32*, i32** %nodeidx67, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %83, i64 %idxprom66
  %84 = load i32, i32* %arrayidx68, align 4
  %85 = load i32, i32* %tpos, align 4
  %add69 = add nsw i32 %85, 1
  %idxprom70 = sext i32 %add69 to i64
  %86 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype71 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %86, i32 0, i32 1
  %87 = load i8*, i8** %statetype71, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %87, i64 %idxprom70
  %88 = load i8, i8* %arrayidx72, align 1
  %89 = load i32, i32* %tpos, align 4
  %add73 = add nsw i32 %89, 1
  %idxprom74 = sext i32 %add73 to i64
  %90 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx75 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %90, i32 0, i32 2
  %91 = load i32*, i32** %nodeidx75, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %91, i64 %idxprom74
  %92 = load i32, i32* %arrayidx76, align 4
  %call77 = call i32 @TransitionScoreLookup(%struct.plan7_s* %76, i8 signext %80, i32 %84, i8 signext %88, i32 %92)
  %93 = load i32, i32* %sc, align 4
  %add78 = add nsw i32 %93, %call77
  store i32 %add78, i32* %sc, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.62, %cond.end
  %94 = load i8*, i8** %dsq.addr, align 8
  %cmp80 = icmp ne i8* %94, null
  br i1 %cmp80, label %if.then.82, label %if.else.195

if.then.82:                                       ; preds = %if.end.79
  %95 = load i32, i32* %tpos, align 4
  %idxprom83 = sext i32 %95 to i64
  %96 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype84 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %96, i32 0, i32 1
  %97 = load i8*, i8** %statetype84, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %97, i64 %idxprom83
  %98 = load i8, i8* %arrayidx85, align 1
  %conv86 = sext i8 %98 to i32
  %cmp87 = icmp eq i32 %conv86, 1
  br i1 %cmp87, label %if.then.89, label %if.else.110

if.then.89:                                       ; preds = %if.then.82
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %100 = load i32, i32* %tpos, align 4
  %idxprom90 = sext i32 %100 to i64
  %101 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx91 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %101, i32 0, i32 2
  %102 = load i32*, i32** %nodeidx91, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %102, i64 %idxprom90
  %103 = load i32, i32* %arrayidx92, align 4
  %idxprom93 = sext i32 %103 to i64
  %104 = load i32, i32* %sym, align 4
  %idxprom94 = sext i32 %104 to i64
  %105 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %105, i32 0, i32 31
  %106 = load i32**, i32*** %msc, align 8
  %arrayidx95 = getelementptr inbounds i32*, i32** %106, i64 %idxprom94
  %107 = load i32*, i32** %arrayidx95, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %107, i64 %idxprom93
  %108 = load i32, i32* %arrayidx96, align 4
  %109 = load i32, i32* %sym, align 4
  %idxprom97 = sext i32 %109 to i64
  %arrayidx98 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i32 0, i64 %idxprom97
  %110 = load i8, i8* %arrayidx98, align 1
  %conv99 = sext i8 %110 to i32
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i32 %108, i32 %conv99)
  %111 = load i32, i32* %tpos, align 4
  %idxprom101 = sext i32 %111 to i64
  %112 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx102 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %112, i32 0, i32 2
  %113 = load i32*, i32** %nodeidx102, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %113, i64 %idxprom101
  %114 = load i32, i32* %arrayidx103, align 4
  %idxprom104 = sext i32 %114 to i64
  %115 = load i32, i32* %sym, align 4
  %idxprom105 = sext i32 %115 to i64
  %116 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc106 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %116, i32 0, i32 31
  %117 = load i32**, i32*** %msc106, align 8
  %arrayidx107 = getelementptr inbounds i32*, i32** %117, i64 %idxprom105
  %118 = load i32*, i32** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %118, i64 %idxprom104
  %119 = load i32, i32* %arrayidx108, align 4
  %120 = load i32, i32* %sc, align 4
  %add109 = add nsw i32 %120, %119
  store i32 %add109, i32* %sc, align 4
  br label %if.end.194

if.else.110:                                      ; preds = %if.then.82
  %121 = load i32, i32* %tpos, align 4
  %idxprom111 = sext i32 %121 to i64
  %122 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype112 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %122, i32 0, i32 1
  %123 = load i8*, i8** %statetype112, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %123, i64 %idxprom111
  %124 = load i8, i8* %arrayidx113, align 1
  %conv114 = sext i8 %124 to i32
  %cmp115 = icmp eq i32 %conv114, 3
  br i1 %cmp115, label %if.then.117, label %if.else.141

if.then.117:                                      ; preds = %if.else.110
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %126 = load i32, i32* %tpos, align 4
  %idxprom118 = sext i32 %126 to i64
  %127 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx119 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %127, i32 0, i32 2
  %128 = load i32*, i32** %nodeidx119, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %128, i64 %idxprom118
  %129 = load i32, i32* %arrayidx120, align 4
  %idxprom121 = sext i32 %129 to i64
  %130 = load i32, i32* %sym, align 4
  %idxprom122 = sext i32 %130 to i64
  %131 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %131, i32 0, i32 32
  %132 = load i32**, i32*** %isc, align 8
  %arrayidx123 = getelementptr inbounds i32*, i32** %132, i64 %idxprom122
  %133 = load i32*, i32** %arrayidx123, align 8
  %arrayidx124 = getelementptr inbounds i32, i32* %133, i64 %idxprom121
  %134 = load i32, i32* %arrayidx124, align 4
  %135 = load i32, i32* %sym, align 4
  %idxprom125 = sext i32 %135 to i64
  %arrayidx126 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i32 0, i64 %idxprom125
  %136 = load i8, i8* %arrayidx126, align 1
  %conv127 = sext i8 %136 to i32
  %call128 = call i32 @tolower(i32 %conv127) #3
  %conv129 = trunc i32 %call128 to i8
  %conv130 = sext i8 %conv129 to i32
  %call131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i32 %134, i32 %conv130)
  %137 = load i32, i32* %tpos, align 4
  %idxprom132 = sext i32 %137 to i64
  %138 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx133 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %138, i32 0, i32 2
  %139 = load i32*, i32** %nodeidx133, align 8
  %arrayidx134 = getelementptr inbounds i32, i32* %139, i64 %idxprom132
  %140 = load i32, i32* %arrayidx134, align 4
  %idxprom135 = sext i32 %140 to i64
  %141 = load i32, i32* %sym, align 4
  %idxprom136 = sext i32 %141 to i64
  %142 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc137 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %142, i32 0, i32 32
  %143 = load i32**, i32*** %isc137, align 8
  %arrayidx138 = getelementptr inbounds i32*, i32** %143, i64 %idxprom136
  %144 = load i32*, i32** %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds i32, i32* %144, i64 %idxprom135
  %145 = load i32, i32* %arrayidx139, align 4
  %146 = load i32, i32* %sc, align 4
  %add140 = add nsw i32 %146, %145
  store i32 %add140, i32* %sc, align 4
  br label %if.end.193

if.else.141:                                      ; preds = %if.else.110
  %147 = load i32, i32* %tpos, align 4
  %idxprom142 = sext i32 %147 to i64
  %148 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype143 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %148, i32 0, i32 1
  %149 = load i8*, i8** %statetype143, align 8
  %arrayidx144 = getelementptr inbounds i8, i8* %149, i64 %idxprom142
  %150 = load i8, i8* %arrayidx144, align 1
  %conv145 = sext i8 %150 to i32
  %cmp146 = icmp eq i32 %conv145, 5
  br i1 %cmp146, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.else.141
  %151 = load i32, i32* %tpos, align 4
  %sub148 = sub nsw i32 %151, 1
  %idxprom149 = sext i32 %sub148 to i64
  %152 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype150 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %152, i32 0, i32 1
  %153 = load i8*, i8** %statetype150, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %153, i64 %idxprom149
  %154 = load i8, i8* %arrayidx151, align 1
  %conv152 = sext i8 %154 to i32
  %cmp153 = icmp eq i32 %conv152, 5
  br i1 %cmp153, label %if.then.184, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.else.141
  %155 = load i32, i32* %tpos, align 4
  %idxprom155 = sext i32 %155 to i64
  %156 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype156 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %156, i32 0, i32 1
  %157 = load i8*, i8** %statetype156, align 8
  %arrayidx157 = getelementptr inbounds i8, i8* %157, i64 %idxprom155
  %158 = load i8, i8* %arrayidx157, align 1
  %conv158 = sext i8 %158 to i32
  %cmp159 = icmp eq i32 %conv158, 8
  br i1 %cmp159, label %land.lhs.true.161, label %lor.lhs.false.169

land.lhs.true.161:                                ; preds = %lor.lhs.false
  %159 = load i32, i32* %tpos, align 4
  %sub162 = sub nsw i32 %159, 1
  %idxprom163 = sext i32 %sub162 to i64
  %160 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype164 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %160, i32 0, i32 1
  %161 = load i8*, i8** %statetype164, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %161, i64 %idxprom163
  %162 = load i8, i8* %arrayidx165, align 1
  %conv166 = sext i8 %162 to i32
  %cmp167 = icmp eq i32 %conv166, 8
  br i1 %cmp167, label %if.then.184, label %lor.lhs.false.169

lor.lhs.false.169:                                ; preds = %land.lhs.true.161, %lor.lhs.false
  %163 = load i32, i32* %tpos, align 4
  %idxprom170 = sext i32 %163 to i64
  %164 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype171 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %164, i32 0, i32 1
  %165 = load i8*, i8** %statetype171, align 8
  %arrayidx172 = getelementptr inbounds i8, i8* %165, i64 %idxprom170
  %166 = load i8, i8* %arrayidx172, align 1
  %conv173 = sext i8 %166 to i32
  %cmp174 = icmp eq i32 %conv173, 10
  br i1 %cmp174, label %land.lhs.true.176, label %if.end.192

land.lhs.true.176:                                ; preds = %lor.lhs.false.169
  %167 = load i32, i32* %tpos, align 4
  %sub177 = sub nsw i32 %167, 1
  %idxprom178 = sext i32 %sub177 to i64
  %168 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype179 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %168, i32 0, i32 1
  %169 = load i8*, i8** %statetype179, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %169, i64 %idxprom178
  %170 = load i8, i8* %arrayidx180, align 1
  %conv181 = sext i8 %170 to i32
  %cmp182 = icmp eq i32 %conv181, 10
  br i1 %cmp182, label %if.then.184, label %if.end.192

if.then.184:                                      ; preds = %land.lhs.true.176, %land.lhs.true.161, %land.lhs.true
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %172 = load i32, i32* %sym, align 4
  %idxprom185 = sext i32 %172 to i64
  %arrayidx186 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i32 0, i64 %idxprom185
  %173 = load i8, i8* %arrayidx186, align 1
  %conv187 = sext i8 %173 to i32
  %call188 = call i32 @tolower(i32 %conv187) #3
  %conv189 = trunc i32 %call188 to i8
  %conv190 = sext i8 %conv189 to i32
  %call191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %171, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 %conv190)
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.184, %land.lhs.true.176, %lor.lhs.false.169
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.then.117
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.then.89
  br label %if.end.197

if.else.195:                                      ; preds = %if.end.79
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call196 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %174, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i32 45)
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.195, %if.end.194
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call198 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %175)
  br label %for.inc.199

for.inc.199:                                      ; preds = %if.end.197
  %176 = load i32, i32* %tpos, align 4
  %inc200 = add nsw i32 %176, 1
  store i32 %inc200, i32* %tpos, align 4
  br label %for.cond.18

for.end.201:                                      ; preds = %for.cond.18
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call202 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %177, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i32 0, i32 0))
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %179 = load i32, i32* %sc, align 4
  %call203 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %178, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i32 %179)
  br label %if.end.204

if.end.204:                                       ; preds = %if.then, %for.end.201, %for.end
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @Die(i8*, ...) #1

declare i32 @TransitionScoreLookup(%struct.plan7_s*, i8 signext, i32, i8 signext, i32) #1

; Function Attrs: nounwind
declare i32 @tolower(i32) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @P7PrintPrior(%struct._IO_FILE* %fp, %struct.p7prior_s* %pri) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %pri.addr = alloca %struct.p7prior_s*, align 8
  %q = alloca i32, align 4
  %x = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.p7prior_s* %pri, %struct.p7prior_s** %pri.addr, align 8
  %0 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %strategy = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %0, i32 0, i32 0
  %1 = load i32, i32* %strategy, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %struct._IO_FILE* %2)
  br label %if.end.6

if.else:                                          ; preds = %entry
  %3 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %strategy1 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %3, i32 0, i32 0
  %4 = load i32, i32* %strategy1, align 4
  %cmp2 = icmp eq i32 %4, 1
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), %struct._IO_FILE* %5)
  br label %if.end

if.else.5:                                        ; preds = %if.else
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %6 = load i32, i32* @Alphabet_type, align 4
  %cmp7 = icmp eq i32 %6, 3
  br i1 %cmp7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.end.6
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), %struct._IO_FILE* %7)
  br label %if.end.15

if.else.10:                                       ; preds = %if.end.6
  %8 = load i32, i32* @Alphabet_type, align 4
  %cmp11 = icmp eq i32 %8, 2
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.else.10
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call13 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), %struct._IO_FILE* %9)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.else.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %11 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %tnum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %11, i32 0, i32 1
  %12 = load i32, i32* %tnum, align 4
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 %12)
  store i32 0, i32* %q, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.31, %if.end.15
  %13 = load i32, i32* %q, align 4
  %14 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %tnum17 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %14, i32 0, i32 1
  %15 = load i32, i32* %tnum17, align 4
  %cmp18 = icmp slt i32 %13, %15
  br i1 %cmp18, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %17 = load i32, i32* %q, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %tq = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %18, i32 0, i32 2
  %arrayidx = getelementptr inbounds [200 x float], [200 x float]* %tq, i32 0, i64 %idxprom
  %19 = load float, float* %arrayidx, align 4
  %conv = fpext float %19 to double
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), double %conv)
  store i32 0, i32* %x, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %for.body
  %20 = load i32, i32* %x, align 4
  %cmp21 = icmp slt i32 %20, 7
  br i1 %cmp21, label %for.body.23, label %for.end

for.body.23:                                      ; preds = %for.cond.20
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %22 = load i32, i32* %x, align 4
  %idxprom24 = sext i32 %22 to i64
  %23 = load i32, i32* %q, align 4
  %idxprom25 = sext i32 %23 to i64
  %24 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %t = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %24, i32 0, i32 3
  %arrayidx26 = getelementptr inbounds [200 x [7 x float]], [200 x [7 x float]]* %t, i32 0, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [7 x float], [7 x float]* %arrayidx26, i32 0, i64 %idxprom24
  %25 = load float, float* %arrayidx27, align 4
  %conv28 = fpext float %25 to double
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), double %conv28)
  br label %for.inc

for.inc:                                          ; preds = %for.body.23
  %26 = load i32, i32* %x, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.20

for.end:                                          ; preds = %for.cond.20
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call30 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %27)
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end
  %28 = load i32, i32* %q, align 4
  %inc32 = add nsw i32 %28, 1
  store i32 %inc32, i32* %q, align 4
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %30 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %mnum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %30, i32 0, i32 4
  %31 = load i32, i32* %mnum, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 %31)
  store i32 0, i32* %q, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.58, %for.end.33
  %32 = load i32, i32* %q, align 4
  %33 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %mnum36 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %33, i32 0, i32 4
  %34 = load i32, i32* %mnum36, align 4
  %cmp37 = icmp slt i32 %32, %34
  br i1 %cmp37, label %for.body.39, label %for.end.60

for.body.39:                                      ; preds = %for.cond.35
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %36 = load i32, i32* %q, align 4
  %idxprom40 = sext i32 %36 to i64
  %37 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %mq = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %37, i32 0, i32 5
  %arrayidx41 = getelementptr inbounds [200 x float], [200 x float]* %mq, i32 0, i64 %idxprom40
  %38 = load float, float* %arrayidx41, align 4
  %conv42 = fpext float %38 to double
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), double %conv42)
  store i32 0, i32* %x, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.54, %for.body.39
  %39 = load i32, i32* %x, align 4
  %40 = load i32, i32* @Alphabet_size, align 4
  %cmp45 = icmp slt i32 %39, %40
  br i1 %cmp45, label %for.body.47, label %for.end.56

for.body.47:                                      ; preds = %for.cond.44
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %42 = load i32, i32* %x, align 4
  %idxprom48 = sext i32 %42 to i64
  %43 = load i32, i32* %q, align 4
  %idxprom49 = sext i32 %43 to i64
  %44 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %m = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %44, i32 0, i32 6
  %arrayidx50 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %m, i32 0, i64 %idxprom49
  %arrayidx51 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx50, i32 0, i64 %idxprom48
  %45 = load float, float* %arrayidx51, align 4
  %conv52 = fpext float %45 to double
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), double %conv52)
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.47
  %46 = load i32, i32* %x, align 4
  %inc55 = add nsw i32 %46, 1
  store i32 %inc55, i32* %x, align 4
  br label %for.cond.44

for.end.56:                                       ; preds = %for.cond.44
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call57 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %47)
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.end.56
  %48 = load i32, i32* %q, align 4
  %inc59 = add nsw i32 %48, 1
  store i32 %inc59, i32* %q, align 4
  br label %for.cond.35

for.end.60:                                       ; preds = %for.cond.35
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %50 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %inum = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %50, i32 0, i32 7
  %51 = load i32, i32* %inum, align 4
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 %51)
  store i32 0, i32* %q, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.85, %for.end.60
  %52 = load i32, i32* %q, align 4
  %53 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %inum63 = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %53, i32 0, i32 7
  %54 = load i32, i32* %inum63, align 4
  %cmp64 = icmp slt i32 %52, %54
  br i1 %cmp64, label %for.body.66, label %for.end.87

for.body.66:                                      ; preds = %for.cond.62
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %56 = load i32, i32* %q, align 4
  %idxprom67 = sext i32 %56 to i64
  %57 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %iq = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %57, i32 0, i32 8
  %arrayidx68 = getelementptr inbounds [200 x float], [200 x float]* %iq, i32 0, i64 %idxprom67
  %58 = load float, float* %arrayidx68, align 4
  %conv69 = fpext float %58 to double
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), double %conv69)
  store i32 0, i32* %x, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.81, %for.body.66
  %59 = load i32, i32* %x, align 4
  %60 = load i32, i32* @Alphabet_size, align 4
  %cmp72 = icmp slt i32 %59, %60
  br i1 %cmp72, label %for.body.74, label %for.end.83

for.body.74:                                      ; preds = %for.cond.71
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %62 = load i32, i32* %x, align 4
  %idxprom75 = sext i32 %62 to i64
  %63 = load i32, i32* %q, align 4
  %idxprom76 = sext i32 %63 to i64
  %64 = load %struct.p7prior_s*, %struct.p7prior_s** %pri.addr, align 8
  %i = getelementptr inbounds %struct.p7prior_s, %struct.p7prior_s* %64, i32 0, i32 9
  %arrayidx77 = getelementptr inbounds [200 x [20 x float]], [200 x [20 x float]]* %i, i32 0, i64 %idxprom76
  %arrayidx78 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx77, i32 0, i64 %idxprom75
  %65 = load float, float* %arrayidx78, align 4
  %conv79 = fpext float %65 to double
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), double %conv79)
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.74
  %66 = load i32, i32* %x, align 4
  %inc82 = add nsw i32 %66, 1
  store i32 %inc82, i32* %x, align 4
  br label %for.cond.71

for.end.83:                                       ; preds = %for.cond.71
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call84 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %67)
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.end.83
  %68 = load i32, i32* %q, align 4
  %inc86 = add nsw i32 %68, 1
  store i32 %inc86, i32* %q, align 4
  br label %for.cond.62

for.end.87:                                       ; preds = %for.cond.62
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @TraceVerify(%struct.p7trace_s* %tr, i32 %M, i32 %N) #0 {
entry:
  %retval = alloca i32, align 4
  %tr.addr = alloca %struct.p7trace_s*, align 8
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %tpos = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %nn = alloca i32, align 4
  %nc = alloca i32, align 4
  %nj = alloca i32, align 4
  %nm = alloca i32, align 4
  store %struct.p7trace_s* %tr, %struct.p7trace_s** %tr.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  %0 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %0, i32 0, i32 1
  %1 = load i8*, i8** %statetype, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype2 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %3, i32 0, i32 1
  %4 = load i8*, i8** %statetype2, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp ne i32 %conv4, 5
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %6 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %6, i32 0, i32 0
  %7 = load i32, i32* %tlen, align 4
  %sub = sub nsw i32 %7, 2
  %idxprom = sext i32 %sub to i64
  %8 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype9 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %8, i32 0, i32 1
  %9 = load i8*, i8** %statetype9, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %10 to i32
  %cmp12 = icmp ne i32 %conv11, 8
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.8
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.8
  %11 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen16 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %11, i32 0, i32 0
  %12 = load i32, i32* %tlen16, align 4
  %sub17 = sub nsw i32 %12, 1
  %idxprom18 = sext i32 %sub17 to i64
  %13 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype19 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %13, i32 0, i32 1
  %14 = load i8*, i8** %statetype19, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %14, i64 %idxprom18
  %15 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %15 to i32
  %cmp22 = icmp ne i32 %conv21, 9
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.15
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.15
  %16 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %16, i32 0, i32 3
  %17 = load i32*, i32** %pos, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %17, i64 1
  %18 = load i32, i32* %arrayidx26, align 4
  %cmp27 = icmp ne i32 %18, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.25
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.25
  store i32 0, i32* %nm, align 4
  store i32 0, i32* %nj, align 4
  store i32 0, i32* %nc, align 4
  store i32 0, i32* %nn, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %k, align 4
  store i32 0, i32* %tpos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.30
  %19 = load i32, i32* %tpos, align 4
  %20 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen31 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %20, i32 0, i32 0
  %21 = load i32, i32* %tlen31, align 4
  %cmp32 = icmp slt i32 %19, %21
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %tpos, align 4
  %idxprom34 = sext i32 %22 to i64
  %23 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype35 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %23, i32 0, i32 1
  %24 = load i8*, i8** %statetype35, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %24, i64 %idxprom34
  %25 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %25 to i32
  switch i32 %conv37, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb.63
    i32 6, label %sw.bb.98
    i32 1, label %sw.bb.113
    i32 3, label %sw.bb.153
    i32 2, label %sw.bb.188
    i32 7, label %sw.bb.218
    i32 10, label %sw.bb.233
    i32 8, label %sw.bb.263
    i32 9, label %sw.bb.293
    i32 0, label %sw.bb.318
  ]

sw.bb:                                            ; preds = %for.body
  %26 = load i32, i32* %tpos, align 4
  %idxprom38 = sext i32 %26 to i64
  %27 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %27, i32 0, i32 2
  %28 = load i32*, i32** %nodeidx, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %28, i64 %idxprom38
  %29 = load i32, i32* %arrayidx39, align 4
  %cmp40 = icmp ne i32 %29, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %sw.bb
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %sw.bb
  %30 = load i32, i32* %tpos, align 4
  %idxprom44 = sext i32 %30 to i64
  %31 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos45 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %31, i32 0, i32 3
  %32 = load i32*, i32** %pos45, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %32, i64 %idxprom44
  %33 = load i32, i32* %arrayidx46, align 4
  %cmp47 = icmp ne i32 %33, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.43
  store i32 0, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.end.43
  %34 = load i32, i32* %k, align 4
  %cmp51 = icmp ne i32 %34, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.50
  store i32 0, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.end.50
  %35 = load i32, i32* %i, align 4
  %cmp55 = icmp ne i32 %35, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.54
  store i32 0, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.end.54
  %36 = load i32, i32* %tpos, align 4
  %cmp59 = icmp ne i32 %36, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.58
  store i32 0, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.end.58
  br label %sw.epilog

sw.bb.63:                                         ; preds = %for.body
  %37 = load i32, i32* %tpos, align 4
  %idxprom64 = sext i32 %37 to i64
  %38 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx65 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %38, i32 0, i32 2
  %39 = load i32*, i32** %nodeidx65, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %39, i64 %idxprom64
  %40 = load i32, i32* %arrayidx66, align 4
  %cmp67 = icmp ne i32 %40, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %sw.bb.63
  store i32 0, i32* %retval
  br label %return

if.end.70:                                        ; preds = %sw.bb.63
  %41 = load i32, i32* %k, align 4
  %cmp71 = icmp ne i32 %41, 0
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.70
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.end.70
  %42 = load i32, i32* %nn, align 4
  %cmp75 = icmp sgt i32 %42, 0
  br i1 %cmp75, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %if.end.74
  %43 = load i32, i32* %tpos, align 4
  %idxprom78 = sext i32 %43 to i64
  %44 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos79 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %44, i32 0, i32 3
  %45 = load i32*, i32** %pos79, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %45, i64 %idxprom78
  %46 = load i32, i32* %arrayidx80, align 4
  %47 = load i32, i32* %i, align 4
  %add = add nsw i32 %47, 1
  %cmp81 = icmp ne i32 %46, %add
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.then.77
  store i32 0, i32* %retval
  br label %return

if.end.84:                                        ; preds = %if.then.77
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end.96

if.else:                                          ; preds = %if.end.74
  %49 = load i32, i32* %tpos, align 4
  %idxprom85 = sext i32 %49 to i64
  %50 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos86 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %50, i32 0, i32 3
  %51 = load i32*, i32** %pos86, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %51, i64 %idxprom85
  %52 = load i32, i32* %arrayidx87, align 4
  %cmp88 = icmp ne i32 %52, 0
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.91:                                        ; preds = %if.else
  %53 = load i32, i32* %i, align 4
  %cmp92 = icmp ne i32 %53, 0
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.91
  store i32 0, i32* %retval
  br label %return

if.end.95:                                        ; preds = %if.end.91
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.84
  %54 = load i32, i32* %nn, align 4
  %inc97 = add nsw i32 %54, 1
  store i32 %inc97, i32* %nn, align 4
  br label %sw.epilog

sw.bb.98:                                         ; preds = %for.body
  %55 = load i32, i32* %tpos, align 4
  %idxprom99 = sext i32 %55 to i64
  %56 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx100 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %56, i32 0, i32 2
  %57 = load i32*, i32** %nodeidx100, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %57, i64 %idxprom99
  %58 = load i32, i32* %arrayidx101, align 4
  %cmp102 = icmp ne i32 %58, 0
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %sw.bb.98
  store i32 0, i32* %retval
  br label %return

if.end.105:                                       ; preds = %sw.bb.98
  %59 = load i32, i32* %tpos, align 4
  %idxprom106 = sext i32 %59 to i64
  %60 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos107 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %60, i32 0, i32 3
  %61 = load i32*, i32** %pos107, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %61, i64 %idxprom106
  %62 = load i32, i32* %arrayidx108, align 4
  %cmp109 = icmp ne i32 %62, 0
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.105
  store i32 0, i32* %retval
  br label %return

if.end.112:                                       ; preds = %if.end.105
  store i32 0, i32* %nm, align 4
  br label %sw.epilog

sw.bb.113:                                        ; preds = %for.body
  %63 = load i32, i32* %tpos, align 4
  %idxprom114 = sext i32 %63 to i64
  %64 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos115 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %64, i32 0, i32 3
  %65 = load i32*, i32** %pos115, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %65, i64 %idxprom114
  %66 = load i32, i32* %arrayidx116, align 4
  %67 = load i32, i32* %i, align 4
  %add117 = add nsw i32 %67, 1
  %cmp118 = icmp ne i32 %66, %add117
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %sw.bb.113
  store i32 0, i32* %retval
  br label %return

if.end.121:                                       ; preds = %sw.bb.113
  %68 = load i32, i32* %tpos, align 4
  %idxprom122 = sext i32 %68 to i64
  %69 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx123 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %69, i32 0, i32 2
  %70 = load i32*, i32** %nodeidx123, align 8
  %arrayidx124 = getelementptr inbounds i32, i32* %70, i64 %idxprom122
  %71 = load i32, i32* %arrayidx124, align 4
  %cmp125 = icmp slt i32 %71, 1
  br i1 %cmp125, label %if.then.132, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.121
  %72 = load i32, i32* %tpos, align 4
  %idxprom127 = sext i32 %72 to i64
  %73 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx128 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %73, i32 0, i32 2
  %74 = load i32*, i32** %nodeidx128, align 8
  %arrayidx129 = getelementptr inbounds i32, i32* %74, i64 %idxprom127
  %75 = load i32, i32* %arrayidx129, align 4
  %76 = load i32, i32* %M.addr, align 4
  %cmp130 = icmp sgt i32 %75, %76
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %lor.lhs.false, %if.end.121
  store i32 0, i32* %retval
  br label %return

if.end.133:                                       ; preds = %lor.lhs.false
  %77 = load i32, i32* %i, align 4
  %inc134 = add nsw i32 %77, 1
  store i32 %inc134, i32* %i, align 4
  %78 = load i32, i32* %nm, align 4
  %cmp135 = icmp eq i32 %78, 0
  br i1 %cmp135, label %if.then.137, label %if.else.141

if.then.137:                                      ; preds = %if.end.133
  %79 = load i32, i32* %tpos, align 4
  %idxprom138 = sext i32 %79 to i64
  %80 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx139 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %80, i32 0, i32 2
  %81 = load i32*, i32** %nodeidx139, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %81, i64 %idxprom138
  %82 = load i32, i32* %arrayidx140, align 4
  store i32 %82, i32* %k, align 4
  br label %if.end.151

if.else.141:                                      ; preds = %if.end.133
  %83 = load i32, i32* %tpos, align 4
  %idxprom142 = sext i32 %83 to i64
  %84 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx143 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %84, i32 0, i32 2
  %85 = load i32*, i32** %nodeidx143, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %85, i64 %idxprom142
  %86 = load i32, i32* %arrayidx144, align 4
  %87 = load i32, i32* %k, align 4
  %add145 = add nsw i32 %87, 1
  %cmp146 = icmp ne i32 %86, %add145
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.else.141
  store i32 0, i32* %retval
  br label %return

if.end.149:                                       ; preds = %if.else.141
  %88 = load i32, i32* %k, align 4
  %inc150 = add nsw i32 %88, 1
  store i32 %inc150, i32* %k, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.149, %if.then.137
  %89 = load i32, i32* %nm, align 4
  %inc152 = add nsw i32 %89, 1
  store i32 %inc152, i32* %nm, align 4
  br label %sw.epilog

sw.bb.153:                                        ; preds = %for.body
  %90 = load i32, i32* %tpos, align 4
  %idxprom154 = sext i32 %90 to i64
  %91 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos155 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %91, i32 0, i32 3
  %92 = load i32*, i32** %pos155, align 8
  %arrayidx156 = getelementptr inbounds i32, i32* %92, i64 %idxprom154
  %93 = load i32, i32* %arrayidx156, align 4
  %94 = load i32, i32* %i, align 4
  %add157 = add nsw i32 %94, 1
  %cmp158 = icmp ne i32 %93, %add157
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %sw.bb.153
  store i32 0, i32* %retval
  br label %return

if.end.161:                                       ; preds = %sw.bb.153
  %95 = load i32, i32* %tpos, align 4
  %idxprom162 = sext i32 %95 to i64
  %96 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx163 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %96, i32 0, i32 2
  %97 = load i32*, i32** %nodeidx163, align 8
  %arrayidx164 = getelementptr inbounds i32, i32* %97, i64 %idxprom162
  %98 = load i32, i32* %arrayidx164, align 4
  %99 = load i32, i32* %k, align 4
  %cmp165 = icmp ne i32 %98, %99
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %if.end.161
  store i32 0, i32* %retval
  br label %return

if.end.168:                                       ; preds = %if.end.161
  %100 = load i32, i32* %tpos, align 4
  %idxprom169 = sext i32 %100 to i64
  %101 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx170 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %101, i32 0, i32 2
  %102 = load i32*, i32** %nodeidx170, align 8
  %arrayidx171 = getelementptr inbounds i32, i32* %102, i64 %idxprom169
  %103 = load i32, i32* %arrayidx171, align 4
  %cmp172 = icmp slt i32 %103, 1
  br i1 %cmp172, label %if.then.181, label %lor.lhs.false.174

lor.lhs.false.174:                                ; preds = %if.end.168
  %104 = load i32, i32* %tpos, align 4
  %idxprom175 = sext i32 %104 to i64
  %105 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx176 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %105, i32 0, i32 2
  %106 = load i32*, i32** %nodeidx176, align 8
  %arrayidx177 = getelementptr inbounds i32, i32* %106, i64 %idxprom175
  %107 = load i32, i32* %arrayidx177, align 4
  %108 = load i32, i32* %M.addr, align 4
  %sub178 = sub nsw i32 %108, 1
  %cmp179 = icmp sgt i32 %107, %sub178
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %lor.lhs.false.174, %if.end.168
  store i32 0, i32* %retval
  br label %return

if.end.182:                                       ; preds = %lor.lhs.false.174
  %109 = load i32, i32* %k, align 4
  %110 = load i32, i32* %M.addr, align 4
  %cmp183 = icmp sge i32 %109, %110
  br i1 %cmp183, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %if.end.182
  store i32 0, i32* %retval
  br label %return

if.end.186:                                       ; preds = %if.end.182
  %111 = load i32, i32* %i, align 4
  %inc187 = add nsw i32 %111, 1
  store i32 %inc187, i32* %i, align 4
  br label %sw.epilog

sw.bb.188:                                        ; preds = %for.body
  %112 = load i32, i32* %tpos, align 4
  %idxprom189 = sext i32 %112 to i64
  %113 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos190 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %113, i32 0, i32 3
  %114 = load i32*, i32** %pos190, align 8
  %arrayidx191 = getelementptr inbounds i32, i32* %114, i64 %idxprom189
  %115 = load i32, i32* %arrayidx191, align 4
  %cmp192 = icmp ne i32 %115, 0
  br i1 %cmp192, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %sw.bb.188
  store i32 0, i32* %retval
  br label %return

if.end.195:                                       ; preds = %sw.bb.188
  %116 = load i32, i32* %tpos, align 4
  %idxprom196 = sext i32 %116 to i64
  %117 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx197 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %117, i32 0, i32 2
  %118 = load i32*, i32** %nodeidx197, align 8
  %arrayidx198 = getelementptr inbounds i32, i32* %118, i64 %idxprom196
  %119 = load i32, i32* %arrayidx198, align 4
  %120 = load i32, i32* %k, align 4
  %add199 = add nsw i32 %120, 1
  %cmp200 = icmp ne i32 %119, %add199
  br i1 %cmp200, label %if.then.202, label %if.end.203

if.then.202:                                      ; preds = %if.end.195
  store i32 0, i32* %retval
  br label %return

if.end.203:                                       ; preds = %if.end.195
  %121 = load i32, i32* %tpos, align 4
  %idxprom204 = sext i32 %121 to i64
  %122 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx205 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %122, i32 0, i32 2
  %123 = load i32*, i32** %nodeidx205, align 8
  %arrayidx206 = getelementptr inbounds i32, i32* %123, i64 %idxprom204
  %124 = load i32, i32* %arrayidx206, align 4
  %cmp207 = icmp slt i32 %124, 1
  br i1 %cmp207, label %if.then.215, label %lor.lhs.false.209

lor.lhs.false.209:                                ; preds = %if.end.203
  %125 = load i32, i32* %tpos, align 4
  %idxprom210 = sext i32 %125 to i64
  %126 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx211 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %126, i32 0, i32 2
  %127 = load i32*, i32** %nodeidx211, align 8
  %arrayidx212 = getelementptr inbounds i32, i32* %127, i64 %idxprom210
  %128 = load i32, i32* %arrayidx212, align 4
  %129 = load i32, i32* %M.addr, align 4
  %cmp213 = icmp sgt i32 %128, %129
  br i1 %cmp213, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %lor.lhs.false.209, %if.end.203
  store i32 0, i32* %retval
  br label %return

if.end.216:                                       ; preds = %lor.lhs.false.209
  %130 = load i32, i32* %k, align 4
  %inc217 = add nsw i32 %130, 1
  store i32 %inc217, i32* %k, align 4
  br label %sw.epilog

sw.bb.218:                                        ; preds = %for.body
  %131 = load i32, i32* %tpos, align 4
  %idxprom219 = sext i32 %131 to i64
  %132 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx220 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %132, i32 0, i32 2
  %133 = load i32*, i32** %nodeidx220, align 8
  %arrayidx221 = getelementptr inbounds i32, i32* %133, i64 %idxprom219
  %134 = load i32, i32* %arrayidx221, align 4
  %cmp222 = icmp ne i32 %134, 0
  br i1 %cmp222, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %sw.bb.218
  store i32 0, i32* %retval
  br label %return

if.end.225:                                       ; preds = %sw.bb.218
  %135 = load i32, i32* %tpos, align 4
  %idxprom226 = sext i32 %135 to i64
  %136 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos227 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %136, i32 0, i32 3
  %137 = load i32*, i32** %pos227, align 8
  %arrayidx228 = getelementptr inbounds i32, i32* %137, i64 %idxprom226
  %138 = load i32, i32* %arrayidx228, align 4
  %cmp229 = icmp ne i32 %138, 0
  br i1 %cmp229, label %if.then.231, label %if.end.232

if.then.231:                                      ; preds = %if.end.225
  store i32 0, i32* %retval
  br label %return

if.end.232:                                       ; preds = %if.end.225
  store i32 0, i32* %nj, align 4
  br label %sw.epilog

sw.bb.233:                                        ; preds = %for.body
  %139 = load i32, i32* %tpos, align 4
  %idxprom234 = sext i32 %139 to i64
  %140 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx235 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %140, i32 0, i32 2
  %141 = load i32*, i32** %nodeidx235, align 8
  %arrayidx236 = getelementptr inbounds i32, i32* %141, i64 %idxprom234
  %142 = load i32, i32* %arrayidx236, align 4
  %cmp237 = icmp ne i32 %142, 0
  br i1 %cmp237, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %sw.bb.233
  store i32 0, i32* %retval
  br label %return

if.end.240:                                       ; preds = %sw.bb.233
  %143 = load i32, i32* %nj, align 4
  %cmp241 = icmp sgt i32 %143, 0
  br i1 %cmp241, label %if.then.243, label %if.else.253

if.then.243:                                      ; preds = %if.end.240
  %144 = load i32, i32* %tpos, align 4
  %idxprom244 = sext i32 %144 to i64
  %145 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos245 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %145, i32 0, i32 3
  %146 = load i32*, i32** %pos245, align 8
  %arrayidx246 = getelementptr inbounds i32, i32* %146, i64 %idxprom244
  %147 = load i32, i32* %arrayidx246, align 4
  %148 = load i32, i32* %i, align 4
  %add247 = add nsw i32 %148, 1
  %cmp248 = icmp ne i32 %147, %add247
  br i1 %cmp248, label %if.then.250, label %if.end.251

if.then.250:                                      ; preds = %if.then.243
  store i32 0, i32* %retval
  br label %return

if.end.251:                                       ; preds = %if.then.243
  %149 = load i32, i32* %i, align 4
  %inc252 = add nsw i32 %149, 1
  store i32 %inc252, i32* %i, align 4
  br label %if.end.261

if.else.253:                                      ; preds = %if.end.240
  %150 = load i32, i32* %tpos, align 4
  %idxprom254 = sext i32 %150 to i64
  %151 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos255 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %151, i32 0, i32 3
  %152 = load i32*, i32** %pos255, align 8
  %arrayidx256 = getelementptr inbounds i32, i32* %152, i64 %idxprom254
  %153 = load i32, i32* %arrayidx256, align 4
  %cmp257 = icmp ne i32 %153, 0
  br i1 %cmp257, label %if.then.259, label %if.end.260

if.then.259:                                      ; preds = %if.else.253
  store i32 0, i32* %retval
  br label %return

if.end.260:                                       ; preds = %if.else.253
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %if.end.251
  %154 = load i32, i32* %nj, align 4
  %inc262 = add nsw i32 %154, 1
  store i32 %inc262, i32* %nj, align 4
  br label %sw.epilog

sw.bb.263:                                        ; preds = %for.body
  %155 = load i32, i32* %tpos, align 4
  %idxprom264 = sext i32 %155 to i64
  %156 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx265 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %156, i32 0, i32 2
  %157 = load i32*, i32** %nodeidx265, align 8
  %arrayidx266 = getelementptr inbounds i32, i32* %157, i64 %idxprom264
  %158 = load i32, i32* %arrayidx266, align 4
  %cmp267 = icmp ne i32 %158, 0
  br i1 %cmp267, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %sw.bb.263
  store i32 0, i32* %retval
  br label %return

if.end.270:                                       ; preds = %sw.bb.263
  %159 = load i32, i32* %nc, align 4
  %cmp271 = icmp sgt i32 %159, 0
  br i1 %cmp271, label %if.then.273, label %if.else.283

if.then.273:                                      ; preds = %if.end.270
  %160 = load i32, i32* %tpos, align 4
  %idxprom274 = sext i32 %160 to i64
  %161 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos275 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %161, i32 0, i32 3
  %162 = load i32*, i32** %pos275, align 8
  %arrayidx276 = getelementptr inbounds i32, i32* %162, i64 %idxprom274
  %163 = load i32, i32* %arrayidx276, align 4
  %164 = load i32, i32* %i, align 4
  %add277 = add nsw i32 %164, 1
  %cmp278 = icmp ne i32 %163, %add277
  br i1 %cmp278, label %if.then.280, label %if.end.281

if.then.280:                                      ; preds = %if.then.273
  store i32 0, i32* %retval
  br label %return

if.end.281:                                       ; preds = %if.then.273
  %165 = load i32, i32* %i, align 4
  %inc282 = add nsw i32 %165, 1
  store i32 %inc282, i32* %i, align 4
  br label %if.end.291

if.else.283:                                      ; preds = %if.end.270
  %166 = load i32, i32* %tpos, align 4
  %idxprom284 = sext i32 %166 to i64
  %167 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos285 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %167, i32 0, i32 3
  %168 = load i32*, i32** %pos285, align 8
  %arrayidx286 = getelementptr inbounds i32, i32* %168, i64 %idxprom284
  %169 = load i32, i32* %arrayidx286, align 4
  %cmp287 = icmp ne i32 %169, 0
  br i1 %cmp287, label %if.then.289, label %if.end.290

if.then.289:                                      ; preds = %if.else.283
  store i32 0, i32* %retval
  br label %return

if.end.290:                                       ; preds = %if.else.283
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %if.end.281
  %170 = load i32, i32* %nc, align 4
  %inc292 = add nsw i32 %170, 1
  store i32 %inc292, i32* %nc, align 4
  br label %sw.epilog

sw.bb.293:                                        ; preds = %for.body
  %171 = load i32, i32* %tpos, align 4
  %172 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen294 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %172, i32 0, i32 0
  %173 = load i32, i32* %tlen294, align 4
  %sub295 = sub nsw i32 %173, 1
  %cmp296 = icmp ne i32 %171, %sub295
  br i1 %cmp296, label %if.then.298, label %if.end.299

if.then.298:                                      ; preds = %sw.bb.293
  store i32 0, i32* %retval
  br label %return

if.end.299:                                       ; preds = %sw.bb.293
  %174 = load i32, i32* %tpos, align 4
  %idxprom300 = sext i32 %174 to i64
  %175 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx301 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %175, i32 0, i32 2
  %176 = load i32*, i32** %nodeidx301, align 8
  %arrayidx302 = getelementptr inbounds i32, i32* %176, i64 %idxprom300
  %177 = load i32, i32* %arrayidx302, align 4
  %cmp303 = icmp ne i32 %177, 0
  br i1 %cmp303, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %if.end.299
  store i32 0, i32* %retval
  br label %return

if.end.306:                                       ; preds = %if.end.299
  %178 = load i32, i32* %tpos, align 4
  %idxprom307 = sext i32 %178 to i64
  %179 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos308 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %179, i32 0, i32 3
  %180 = load i32*, i32** %pos308, align 8
  %arrayidx309 = getelementptr inbounds i32, i32* %180, i64 %idxprom307
  %181 = load i32, i32* %arrayidx309, align 4
  %cmp310 = icmp ne i32 %181, 0
  br i1 %cmp310, label %if.then.312, label %if.end.313

if.then.312:                                      ; preds = %if.end.306
  store i32 0, i32* %retval
  br label %return

if.end.313:                                       ; preds = %if.end.306
  %182 = load i32, i32* %i, align 4
  %183 = load i32, i32* %N.addr, align 4
  %cmp314 = icmp ne i32 %182, %183
  br i1 %cmp314, label %if.then.316, label %if.end.317

if.then.316:                                      ; preds = %if.end.313
  store i32 0, i32* %retval
  br label %return

if.end.317:                                       ; preds = %if.end.313
  br label %sw.epilog

sw.bb.318:                                        ; preds = %for.body
  br label %sw.default

sw.default:                                       ; preds = %for.body, %sw.bb.318
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.317, %if.end.291, %if.end.261, %if.end.232, %if.end.216, %if.end.186, %if.end.151, %if.end.112, %if.end.96, %if.end.62
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %184 = load i32, i32* %tpos, align 4
  %inc319 = add nsw i32 %184, 1
  store i32 %inc319, i32* %tpos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %sw.default, %if.then.316, %if.then.312, %if.then.305, %if.then.298, %if.then.289, %if.then.280, %if.then.269, %if.then.259, %if.then.250, %if.then.239, %if.then.231, %if.then.224, %if.then.215, %if.then.202, %if.then.194, %if.then.185, %if.then.181, %if.then.167, %if.then.160, %if.then.148, %if.then.132, %if.then.120, %if.then.111, %if.then.104, %if.then.94, %if.then.90, %if.then.83, %if.then.73, %if.then.69, %if.then.61, %if.then.57, %if.then.53, %if.then.49, %if.then.42, %if.then.29, %if.then.24, %if.then.14, %if.then.7, %if.then
  %185 = load i32, i32* %retval
  ret i32 %185
}

; Function Attrs: nounwind uwtable
define i32 @TraceCompare(%struct.p7trace_s* %t1, %struct.p7trace_s* %t2) #0 {
entry:
  %retval = alloca i32, align 4
  %t1.addr = alloca %struct.p7trace_s*, align 8
  %t2.addr = alloca %struct.p7trace_s*, align 8
  %tpos = alloca i32, align 4
  store %struct.p7trace_s* %t1, %struct.p7trace_s** %t1.addr, align 8
  store %struct.p7trace_s* %t2, %struct.p7trace_s** %t2.addr, align 8
  %0 = load %struct.p7trace_s*, %struct.p7trace_s** %t1.addr, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %0, i32 0, i32 0
  %1 = load i32, i32* %tlen, align 4
  %2 = load %struct.p7trace_s*, %struct.p7trace_s** %t2.addr, align 8
  %tlen1 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %2, i32 0, i32 0
  %3 = load i32, i32* %tlen1, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %tpos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %tpos, align 4
  %5 = load %struct.p7trace_s*, %struct.p7trace_s** %t1.addr, align 8
  %tlen2 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %5, i32 0, i32 0
  %6 = load i32, i32* %tlen2, align 4
  %cmp3 = icmp slt i32 %4, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %tpos, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.p7trace_s*, %struct.p7trace_s** %t1.addr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %8, i32 0, i32 1
  %9 = load i8*, i8** %statetype, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %10 to i32
  %11 = load i32, i32* %tpos, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.p7trace_s*, %struct.p7trace_s** %t2.addr, align 8
  %statetype5 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %12, i32 0, i32 1
  %13 = load i8*, i8** %statetype5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %13, i64 %idxprom4
  %14 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %14 to i32
  %cmp8 = icmp ne i32 %conv, %conv7
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %for.body
  %15 = load i32, i32* %tpos, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load %struct.p7trace_s*, %struct.p7trace_s** %t1.addr, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %16, i32 0, i32 2
  %17 = load i32*, i32** %nodeidx, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %17, i64 %idxprom12
  %18 = load i32, i32* %arrayidx13, align 4
  %19 = load i32, i32* %tpos, align 4
  %idxprom14 = sext i32 %19 to i64
  %20 = load %struct.p7trace_s*, %struct.p7trace_s** %t2.addr, align 8
  %nodeidx15 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %20, i32 0, i32 2
  %21 = load i32*, i32** %nodeidx15, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %21, i64 %idxprom14
  %22 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp ne i32 %18, %22
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.11
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.11
  %23 = load i32, i32* %tpos, align 4
  %idxprom21 = sext i32 %23 to i64
  %24 = load %struct.p7trace_s*, %struct.p7trace_s** %t1.addr, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %24, i32 0, i32 3
  %25 = load i32*, i32** %pos, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %25, i64 %idxprom21
  %26 = load i32, i32* %arrayidx22, align 4
  %27 = load i32, i32* %tpos, align 4
  %idxprom23 = sext i32 %27 to i64
  %28 = load %struct.p7trace_s*, %struct.p7trace_s** %t2.addr, align 8
  %pos24 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %28, i32 0, i32 3
  %29 = load i32*, i32** %pos24, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %29, i64 %idxprom23
  %30 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp ne i32 %26, %30
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.20
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.20
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %31 = load i32, i32* %tpos, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %tpos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.28, %if.then.19, %if.then.10, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
