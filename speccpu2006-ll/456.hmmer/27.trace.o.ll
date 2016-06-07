; ModuleID = 'trace.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p7trace_s = type { i32, i8*, i32*, i32* }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }
%struct.fancyali_s = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"trace.c\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"illegal state transition %s->%s in traceback\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"illegal state %s in traceback\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"yo! you don't support J in Traces2Alignment(), remember?\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Traces2Alignment reports unrecognized statetype %c\00", align 1
@Alphabet = external global [25 x i8], align 16
@.str.5 = private unnamed_addr constant [9 x i8] c"HMMER %s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"2.3\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"illegal %s->%s transition\00", align 1
@Alphabet_type = external global i32, align 4
@Alphabet_size = external global i32, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"bogus statetype\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"  %16s %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"CS\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"RF\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"  %10.10s %5d %s %-5d\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"  %10.10s %5s %s %-5s\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"sanity check failed: didn't find a match state in trace\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"never happens. Trust me.\00", align 1

; Function Attrs: nounwind uwtable
define void @P7AllocTrace(i32 %tlen, %struct.p7trace_s** %ret_tr) #0 {
entry:
  %tlen.addr = alloca i32, align 4
  %ret_tr.addr = alloca %struct.p7trace_s**, align 8
  %tr = alloca %struct.p7trace_s*, align 8
  store i32 %tlen, i32* %tlen.addr, align 4
  store %struct.p7trace_s** %ret_tr, %struct.p7trace_s*** %ret_tr.addr, align 8
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 40, i64 32)
  %0 = bitcast i8* %call to %struct.p7trace_s*
  store %struct.p7trace_s* %0, %struct.p7trace_s** %tr, align 8
  %1 = load i32, i32* %tlen.addr, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 1, %conv
  %call1 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 41, i64 %mul)
  %2 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %2, i32 0, i32 1
  store i8* %call1, i8** %statetype, align 8
  %3 = load i32, i32* %tlen.addr, align 4
  %conv2 = sext i32 %3 to i64
  %mul3 = mul i64 4, %conv2
  %call4 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 42, i64 %mul3)
  %4 = bitcast i8* %call4 to i32*
  %5 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %5, i32 0, i32 2
  store i32* %4, i32** %nodeidx, align 8
  %6 = load i32, i32* %tlen.addr, align 4
  %conv5 = sext i32 %6 to i64
  %mul6 = mul i64 4, %conv5
  %call7 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 43, i64 %mul6)
  %7 = bitcast i8* %call7 to i32*
  %8 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %8, i32 0, i32 3
  store i32* %7, i32** %pos, align 8
  %9 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %10 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  store %struct.p7trace_s* %9, %struct.p7trace_s** %10, align 8
  ret void
}

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define void @P7ReallocTrace(%struct.p7trace_s* %tr, i32 %tlen) #0 {
entry:
  %tr.addr = alloca %struct.p7trace_s*, align 8
  %tlen.addr = alloca i32, align 4
  store %struct.p7trace_s* %tr, %struct.p7trace_s** %tr.addr, align 8
  store i32 %tlen, i32* %tlen.addr, align 4
  %0 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %0, i32 0, i32 1
  %1 = load i8*, i8** %statetype, align 8
  %2 = load i32, i32* %tlen.addr, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 1
  %call = call i8* @sre_realloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 49, i8* %1, i64 %mul)
  %3 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype1 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %3, i32 0, i32 1
  store i8* %call, i8** %statetype1, align 8
  %4 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %4, i32 0, i32 2
  %5 = load i32*, i32** %nodeidx, align 8
  %6 = bitcast i32* %5 to i8*
  %7 = load i32, i32* %tlen.addr, align 4
  %conv2 = sext i32 %7 to i64
  %mul3 = mul i64 %conv2, 4
  %call4 = call i8* @sre_realloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 50, i8* %6, i64 %mul3)
  %8 = bitcast i8* %call4 to i32*
  %9 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx5 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %9, i32 0, i32 2
  store i32* %8, i32** %nodeidx5, align 8
  %10 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %10, i32 0, i32 3
  %11 = load i32*, i32** %pos, align 8
  %12 = bitcast i32* %11 to i8*
  %13 = load i32, i32* %tlen.addr, align 4
  %conv6 = sext i32 %13 to i64
  %mul7 = mul i64 %conv6, 4
  %call8 = call i8* @sre_realloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 51, i8* %12, i64 %mul7)
  %14 = bitcast i8* %call8 to i32*
  %15 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos9 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %15, i32 0, i32 3
  store i32* %14, i32** %pos9, align 8
  ret void
}

declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @P7FreeTrace(%struct.p7trace_s* %tr) #0 {
entry:
  %tr.addr = alloca %struct.p7trace_s*, align 8
  store %struct.p7trace_s* %tr, %struct.p7trace_s** %tr.addr, align 8
  %0 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %cmp = icmp eq %struct.p7trace_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %1, i32 0, i32 3
  %2 = load i32*, i32** %pos, align 8
  %3 = bitcast i32* %2 to i8*
  call void @free(i8* %3) #4
  %4 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %4, i32 0, i32 2
  %5 = load i32*, i32** %nodeidx, align 8
  %6 = bitcast i32* %5 to i8*
  call void @free(i8* %6) #4
  %7 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %statetype, align 8
  call void @free(i8* %8) #4
  %9 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %10 = bitcast %struct.p7trace_s* %9 to i8*
  call void @free(i8* %10) #4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @TraceSet(%struct.p7trace_s* %tr, i32 %tpos, i8 signext %type, i32 %idx, i32 %pos) #0 {
entry:
  %tr.addr = alloca %struct.p7trace_s*, align 8
  %tpos.addr = alloca i32, align 4
  %type.addr = alloca i8, align 1
  %idx.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  store %struct.p7trace_s* %tr, %struct.p7trace_s** %tr.addr, align 8
  store i32 %tpos, i32* %tpos.addr, align 4
  store i8 %type, i8* %type.addr, align 1
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i8, i8* %type.addr, align 1
  %1 = load i32, i32* %tpos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %2, i32 0, i32 1
  %3 = load i8*, i8** %statetype, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  store i8 %0, i8* %arrayidx, align 1
  %4 = load i32, i32* %idx.addr, align 4
  %5 = load i32, i32* %tpos.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %6, i32 0, i32 2
  %7 = load i32*, i32** %nodeidx, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 %idxprom1
  store i32 %4, i32* %arrayidx2, align 4
  %8 = load i32, i32* %pos.addr, align 4
  %9 = load i32, i32* %tpos.addr, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos4 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %10, i32 0, i32 3
  %11 = load i32*, i32** %pos4, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %11, i64 %idxprom3
  store i32 %8, i32* %arrayidx5, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.p7trace_s** @MergeTraceArrays(%struct.p7trace_s** %t1, i32 %n1, %struct.p7trace_s** %t2, i32 %n2) #0 {
entry:
  %t1.addr = alloca %struct.p7trace_s**, align 8
  %n1.addr = alloca i32, align 4
  %t2.addr = alloca %struct.p7trace_s**, align 8
  %n2.addr = alloca i32, align 4
  %tr = alloca %struct.p7trace_s**, align 8
  %i = alloca i32, align 4
  store %struct.p7trace_s** %t1, %struct.p7trace_s*** %t1.addr, align 8
  store i32 %n1, i32* %n1.addr, align 4
  store %struct.p7trace_s** %t2, %struct.p7trace_s*** %t2.addr, align 8
  store i32 %n2, i32* %n2.addr, align 4
  %0 = load i32, i32* %n1.addr, align 4
  %1 = load i32, i32* %n2.addr, align 4
  %add = add nsw i32 %0, %1
  %conv = sext i32 %add to i64
  %mul = mul i64 8, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 110, i64 %mul)
  %2 = bitcast i8* %call to %struct.p7trace_s**
  store %struct.p7trace_s** %2, %struct.p7trace_s*** %tr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n1.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.p7trace_s**, %struct.p7trace_s*** %t1.addr, align 8
  %arrayidx = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %6, i64 %idxprom
  %7 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx3 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %9, i64 %idxprom2
  store %struct.p7trace_s* %7, %struct.p7trace_s** %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.13, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %n2.addr, align 4
  %cmp5 = icmp slt i32 %11, %12
  br i1 %cmp5, label %for.body.7, label %for.end.15

for.body.7:                                       ; preds = %for.cond.4
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load %struct.p7trace_s**, %struct.p7trace_s*** %t2.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %14, i64 %idxprom8
  %15 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx9, align 8
  %16 = load i32, i32* %n1.addr, align 4
  %17 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %16, %17
  %idxprom11 = sext i32 %add10 to i64
  %18 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx12 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %18, i64 %idxprom11
  store %struct.p7trace_s* %15, %struct.p7trace_s** %arrayidx12, align 8
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.7
  %19 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %19, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond.4

for.end.15:                                       ; preds = %for.cond.4
  %20 = load %struct.p7trace_s**, %struct.p7trace_s*** %t1.addr, align 8
  %21 = bitcast %struct.p7trace_s** %20 to i8*
  call void @free(i8* %21) #4
  %22 = load %struct.p7trace_s**, %struct.p7trace_s*** %t2.addr, align 8
  %23 = bitcast %struct.p7trace_s** %22 to i8*
  call void @free(i8* %23) #4
  %24 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  ret %struct.p7trace_s** %24
}

; Function Attrs: nounwind uwtable
define void @P7ReverseTrace(%struct.p7trace_s* %tr) #0 {
entry:
  %tr.addr = alloca %struct.p7trace_s*, align 8
  %statetype = alloca i8*, align 8
  %nodeidx = alloca i32*, align 8
  %pos = alloca i32*, align 8
  %opos = alloca i32, align 4
  %npos = alloca i32, align 4
  store %struct.p7trace_s* %tr, %struct.p7trace_s** %tr.addr, align 8
  %0 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %0, i32 0, i32 0
  %1 = load i32, i32* %tlen, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 1, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 149, i64 %mul)
  store i8* %call, i8** %statetype, align 8
  %2 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen1 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %2, i32 0, i32 0
  %3 = load i32, i32* %tlen1, align 4
  %conv2 = sext i32 %3 to i64
  %mul3 = mul i64 4, %conv2
  %call4 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 150, i64 %mul3)
  %4 = bitcast i8* %call4 to i32*
  store i32* %4, i32** %nodeidx, align 8
  %5 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen5 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %5, i32 0, i32 0
  %6 = load i32, i32* %tlen5, align 4
  %conv6 = sext i32 %6 to i64
  %mul7 = mul i64 4, %conv6
  %call8 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 151, i64 %mul7)
  %7 = bitcast i8* %call8 to i32*
  store i32* %7, i32** %pos, align 8
  %8 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen9 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %8, i32 0, i32 0
  %9 = load i32, i32* %tlen9, align 4
  %sub = sub nsw i32 %9, 1
  store i32 %sub, i32* %opos, align 4
  store i32 0, i32* %npos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %npos, align 4
  %11 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen10 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %11, i32 0, i32 0
  %12 = load i32, i32* %tlen10, align 4
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %opos, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype12 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %14, i32 0, i32 1
  %15 = load i8*, i8** %statetype12, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1
  %17 = load i32, i32* %npos, align 4
  %idxprom13 = sext i32 %17 to i64
  %18 = load i8*, i8** %statetype, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %18, i64 %idxprom13
  store i8 %16, i8* %arrayidx14, align 1
  %19 = load i32, i32* %opos, align 4
  %idxprom15 = sext i32 %19 to i64
  %20 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx16 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %20, i32 0, i32 2
  %21 = load i32*, i32** %nodeidx16, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %21, i64 %idxprom15
  %22 = load i32, i32* %arrayidx17, align 4
  %23 = load i32, i32* %npos, align 4
  %idxprom18 = sext i32 %23 to i64
  %24 = load i32*, i32** %nodeidx, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %24, i64 %idxprom18
  store i32 %22, i32* %arrayidx19, align 4
  %25 = load i32, i32* %opos, align 4
  %idxprom20 = sext i32 %25 to i64
  %26 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos21 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %26, i32 0, i32 3
  %27 = load i32*, i32** %pos21, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %27, i64 %idxprom20
  %28 = load i32, i32* %arrayidx22, align 4
  %29 = load i32, i32* %npos, align 4
  %idxprom23 = sext i32 %29 to i64
  %30 = load i32*, i32** %pos, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %30, i64 %idxprom23
  store i32 %28, i32* %arrayidx24, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %npos, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %npos, align 4
  %32 = load i32, i32* %opos, align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %opos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype25 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %33, i32 0, i32 1
  %34 = load i8*, i8** %statetype25, align 8
  call void @free(i8* %34) #4
  %35 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx26 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %35, i32 0, i32 2
  %36 = load i32*, i32** %nodeidx26, align 8
  %37 = bitcast i32* %36 to i8*
  call void @free(i8* %37) #4
  %38 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos27 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %38, i32 0, i32 3
  %39 = load i32*, i32** %pos27, align 8
  %40 = bitcast i32* %39 to i8*
  call void @free(i8* %40) #4
  %41 = load i8*, i8** %statetype, align 8
  %42 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype28 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %42, i32 0, i32 1
  store i8* %41, i8** %statetype28, align 8
  %43 = load i32*, i32** %nodeidx, align 8
  %44 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx29 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %44, i32 0, i32 2
  store i32* %43, i32** %nodeidx29, align 8
  %45 = load i32*, i32** %pos, align 8
  %46 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos30 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %46, i32 0, i32 3
  store i32* %45, i32** %pos30, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @P7TraceCount(%struct.plan7_s* %hmm, i8* %dsq, float %wt, %struct.p7trace_s* %tr) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %dsq.addr = alloca i8*, align 8
  %wt.addr = alloca float, align 4
  %tr.addr = alloca %struct.p7trace_s*, align 8
  %tpos = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i8* %dsq, i8** %dsq.addr, align 8
  store float %wt, float* %wt.addr, align 4
  store %struct.p7trace_s* %tr, %struct.p7trace_s** %tr.addr, align 8
  store i32 0, i32* %tpos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %tpos, align 4
  %1 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %1, i32 0, i32 0
  %2 = load i32, i32* %tlen, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %tpos, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %4, i32 0, i32 3
  %5 = load i32*, i32** %pos, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  store i32 %6, i32* %i, align 4
  %7 = load i32, i32* %tpos, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %8, i32 0, i32 1
  %9 = load i8*, i8** %statetype, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %9, i64 %idxprom1
  %10 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %10 to i32
  %cmp3 = icmp eq i32 %conv, 1
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %tpos, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %12, i32 0, i32 2
  %13 = load i32*, i32** %nodeidx, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 %idxprom5
  %14 = load i32, i32* %arrayidx6, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %15, i32 0, i32 22
  %16 = load float**, float*** %mat, align 8
  %arrayidx8 = getelementptr inbounds float*, float** %16, i64 %idxprom7
  %17 = load float*, float** %arrayidx8, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load i8*, i8** %dsq.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %19, i64 %idxprom9
  %20 = load i8, i8* %arrayidx10, align 1
  %21 = load float, float* %wt.addr, align 4
  call void @P7CountSymbol(float* %17, i8 signext %20, float %21)
  br label %if.end.25

if.else:                                          ; preds = %for.body
  %22 = load i32, i32* %tpos, align 4
  %idxprom11 = sext i32 %22 to i64
  %23 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype12 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %23, i32 0, i32 1
  %24 = load i8*, i8** %statetype12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %24, i64 %idxprom11
  %25 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %25 to i32
  %cmp15 = icmp eq i32 %conv14, 3
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.else
  %26 = load i32, i32* %tpos, align 4
  %idxprom18 = sext i32 %26 to i64
  %27 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx19 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %27, i32 0, i32 2
  %28 = load i32*, i32** %nodeidx19, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %28, i64 %idxprom18
  %29 = load i32, i32* %arrayidx20, align 4
  %idxprom21 = sext i32 %29 to i64
  %30 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %30, i32 0, i32 23
  %31 = load float**, float*** %ins, align 8
  %arrayidx22 = getelementptr inbounds float*, float** %31, i64 %idxprom21
  %32 = load float*, float** %arrayidx22, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %33 to i64
  %34 = load i8*, i8** %dsq.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %34, i64 %idxprom23
  %35 = load i8, i8* %arrayidx24, align 1
  %36 = load float, float* %wt.addr, align 4
  call void @P7CountSymbol(float* %32, i8 signext %35, float %36)
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then
  %37 = load i32, i32* %tpos, align 4
  %idxprom26 = sext i32 %37 to i64
  %38 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype27 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %38, i32 0, i32 1
  %39 = load i8*, i8** %statetype27, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %39, i64 %idxprom26
  %40 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %40 to i32
  switch i32 %conv29, label %sw.default.282 [
    i32 4, label %sw.bb
    i32 5, label %sw.bb.30
    i32 6, label %sw.bb.52
    i32 1, label %sw.bb.79
    i32 3, label %sw.bb.129
    i32 2, label %sw.bb.164
    i32 7, label %sw.bb.200
    i32 10, label %sw.bb.227
    i32 8, label %sw.bb.254
    i32 9, label %sw.bb.281
  ]

sw.bb:                                            ; preds = %if.end.25
  br label %sw.epilog.287

sw.bb.30:                                         ; preds = %if.end.25
  %41 = load i32, i32* %tpos, align 4
  %add = add nsw i32 %41, 1
  %idxprom31 = sext i32 %add to i64
  %42 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype32 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %42, i32 0, i32 1
  %43 = load i8*, i8** %statetype32, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %43, i64 %idxprom31
  %44 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %44 to i32
  switch i32 %conv34, label %sw.default [
    i32 6, label %sw.bb.35
    i32 5, label %sw.bb.39
  ]

sw.bb.35:                                         ; preds = %sw.bb.30
  %45 = load float, float* %wt.addr, align 4
  %46 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %46, i32 0, i32 25
  %arrayidx36 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt, i32 0, i64 0
  %arrayidx37 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx36, i32 0, i64 0
  %47 = load float, float* %arrayidx37, align 4
  %add38 = fadd float %47, %45
  store float %add38, float* %arrayidx37, align 4
  br label %sw.epilog

sw.bb.39:                                         ; preds = %sw.bb.30
  %48 = load float, float* %wt.addr, align 4
  %49 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt40 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %49, i32 0, i32 25
  %arrayidx41 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt40, i32 0, i64 0
  %arrayidx42 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx41, i32 0, i64 1
  %50 = load float, float* %arrayidx42, align 4
  %add43 = fadd float %50, %48
  store float %add43, float* %arrayidx42, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.30
  %51 = load i32, i32* %tpos, align 4
  %idxprom44 = sext i32 %51 to i64
  %52 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype45 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %52, i32 0, i32 1
  %53 = load i8*, i8** %statetype45, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %53, i64 %idxprom44
  %54 = load i8, i8* %arrayidx46, align 1
  %call = call i8* @Statetype(i8 signext %54)
  %55 = load i32, i32* %tpos, align 4
  %add47 = add nsw i32 %55, 1
  %idxprom48 = sext i32 %add47 to i64
  %56 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype49 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %56, i32 0, i32 1
  %57 = load i8*, i8** %statetype49, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %57, i64 %idxprom48
  %58 = load i8, i8* %arrayidx50, align 1
  %call51 = call i8* @Statetype(i8 signext %58)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i8* %call, i8* %call51)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.39, %sw.bb.35
  br label %sw.epilog.287

sw.bb.52:                                         ; preds = %if.end.25
  %59 = load i32, i32* %tpos, align 4
  %add53 = add nsw i32 %59, 1
  %idxprom54 = sext i32 %add53 to i64
  %60 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype55 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %60, i32 0, i32 1
  %61 = load i8*, i8** %statetype55, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %61, i64 %idxprom54
  %62 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %62 to i32
  switch i32 %conv57, label %sw.default.68 [
    i32 1, label %sw.bb.58
    i32 2, label %sw.bb.66
  ]

sw.bb.58:                                         ; preds = %sw.bb.52
  %63 = load float, float* %wt.addr, align 4
  %64 = load i32, i32* %tpos, align 4
  %add59 = add nsw i32 %64, 1
  %idxprom60 = sext i32 %add59 to i64
  %65 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx61 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %65, i32 0, i32 2
  %66 = load i32*, i32** %nodeidx61, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %66, i64 %idxprom60
  %67 = load i32, i32* %arrayidx62, align 4
  %idxprom63 = sext i32 %67 to i64
  %68 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %68, i32 0, i32 26
  %69 = load float*, float** %begin, align 8
  %arrayidx64 = getelementptr inbounds float, float* %69, i64 %idxprom63
  %70 = load float, float* %arrayidx64, align 4
  %add65 = fadd float %70, %63
  store float %add65, float* %arrayidx64, align 4
  br label %sw.epilog.78

sw.bb.66:                                         ; preds = %sw.bb.52
  %71 = load float, float* %wt.addr, align 4
  %72 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %72, i32 0, i32 24
  %73 = load float, float* %tbd1, align 4
  %add67 = fadd float %73, %71
  store float %add67, float* %tbd1, align 4
  br label %sw.epilog.78

sw.default.68:                                    ; preds = %sw.bb.52
  %74 = load i32, i32* %tpos, align 4
  %idxprom69 = sext i32 %74 to i64
  %75 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype70 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %75, i32 0, i32 1
  %76 = load i8*, i8** %statetype70, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %76, i64 %idxprom69
  %77 = load i8, i8* %arrayidx71, align 1
  %call72 = call i8* @Statetype(i8 signext %77)
  %78 = load i32, i32* %tpos, align 4
  %add73 = add nsw i32 %78, 1
  %idxprom74 = sext i32 %add73 to i64
  %79 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype75 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %79, i32 0, i32 1
  %80 = load i8*, i8** %statetype75, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %80, i64 %idxprom74
  %81 = load i8, i8* %arrayidx76, align 1
  %call77 = call i8* @Statetype(i8 signext %81)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i8* %call72, i8* %call77)
  br label %sw.epilog.78

sw.epilog.78:                                     ; preds = %sw.default.68, %sw.bb.66, %sw.bb.58
  br label %sw.epilog.287

sw.bb.79:                                         ; preds = %if.end.25
  %82 = load i32, i32* %tpos, align 4
  %add80 = add nsw i32 %82, 1
  %idxprom81 = sext i32 %add80 to i64
  %83 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype82 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %83, i32 0, i32 1
  %84 = load i8*, i8** %statetype82, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %84, i64 %idxprom81
  %85 = load i8, i8* %arrayidx83, align 1
  %conv84 = sext i8 %85 to i32
  switch i32 %conv84, label %sw.default.118 [
    i32 1, label %sw.bb.85
    i32 3, label %sw.bb.93
    i32 2, label %sw.bb.102
    i32 7, label %sw.bb.111
  ]

sw.bb.85:                                         ; preds = %sw.bb.79
  %86 = load float, float* %wt.addr, align 4
  %87 = load i32, i32* %tpos, align 4
  %idxprom86 = sext i32 %87 to i64
  %88 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx87 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %88, i32 0, i32 2
  %89 = load i32*, i32** %nodeidx87, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %89, i64 %idxprom86
  %90 = load i32, i32* %arrayidx88, align 4
  %idxprom89 = sext i32 %90 to i64
  %91 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %91, i32 0, i32 21
  %92 = load float**, float*** %t, align 8
  %arrayidx90 = getelementptr inbounds float*, float** %92, i64 %idxprom89
  %93 = load float*, float** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds float, float* %93, i64 0
  %94 = load float, float* %arrayidx91, align 4
  %add92 = fadd float %94, %86
  store float %add92, float* %arrayidx91, align 4
  br label %sw.epilog.128

sw.bb.93:                                         ; preds = %sw.bb.79
  %95 = load float, float* %wt.addr, align 4
  %96 = load i32, i32* %tpos, align 4
  %idxprom94 = sext i32 %96 to i64
  %97 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx95 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %97, i32 0, i32 2
  %98 = load i32*, i32** %nodeidx95, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %98, i64 %idxprom94
  %99 = load i32, i32* %arrayidx96, align 4
  %idxprom97 = sext i32 %99 to i64
  %100 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t98 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %100, i32 0, i32 21
  %101 = load float**, float*** %t98, align 8
  %arrayidx99 = getelementptr inbounds float*, float** %101, i64 %idxprom97
  %102 = load float*, float** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds float, float* %102, i64 1
  %103 = load float, float* %arrayidx100, align 4
  %add101 = fadd float %103, %95
  store float %add101, float* %arrayidx100, align 4
  br label %sw.epilog.128

sw.bb.102:                                        ; preds = %sw.bb.79
  %104 = load float, float* %wt.addr, align 4
  %105 = load i32, i32* %tpos, align 4
  %idxprom103 = sext i32 %105 to i64
  %106 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx104 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %106, i32 0, i32 2
  %107 = load i32*, i32** %nodeidx104, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %107, i64 %idxprom103
  %108 = load i32, i32* %arrayidx105, align 4
  %idxprom106 = sext i32 %108 to i64
  %109 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t107 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %109, i32 0, i32 21
  %110 = load float**, float*** %t107, align 8
  %arrayidx108 = getelementptr inbounds float*, float** %110, i64 %idxprom106
  %111 = load float*, float** %arrayidx108, align 8
  %arrayidx109 = getelementptr inbounds float, float* %111, i64 2
  %112 = load float, float* %arrayidx109, align 4
  %add110 = fadd float %112, %104
  store float %add110, float* %arrayidx109, align 4
  br label %sw.epilog.128

sw.bb.111:                                        ; preds = %sw.bb.79
  %113 = load float, float* %wt.addr, align 4
  %114 = load i32, i32* %tpos, align 4
  %idxprom112 = sext i32 %114 to i64
  %115 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx113 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %115, i32 0, i32 2
  %116 = load i32*, i32** %nodeidx113, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %116, i64 %idxprom112
  %117 = load i32, i32* %arrayidx114, align 4
  %idxprom115 = sext i32 %117 to i64
  %118 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %118, i32 0, i32 27
  %119 = load float*, float** %end, align 8
  %arrayidx116 = getelementptr inbounds float, float* %119, i64 %idxprom115
  %120 = load float, float* %arrayidx116, align 4
  %add117 = fadd float %120, %113
  store float %add117, float* %arrayidx116, align 4
  br label %sw.epilog.128

sw.default.118:                                   ; preds = %sw.bb.79
  %121 = load i32, i32* %tpos, align 4
  %idxprom119 = sext i32 %121 to i64
  %122 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype120 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %122, i32 0, i32 1
  %123 = load i8*, i8** %statetype120, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %123, i64 %idxprom119
  %124 = load i8, i8* %arrayidx121, align 1
  %call122 = call i8* @Statetype(i8 signext %124)
  %125 = load i32, i32* %tpos, align 4
  %add123 = add nsw i32 %125, 1
  %idxprom124 = sext i32 %add123 to i64
  %126 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype125 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %126, i32 0, i32 1
  %127 = load i8*, i8** %statetype125, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %127, i64 %idxprom124
  %128 = load i8, i8* %arrayidx126, align 1
  %call127 = call i8* @Statetype(i8 signext %128)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i8* %call122, i8* %call127)
  br label %sw.epilog.128

sw.epilog.128:                                    ; preds = %sw.default.118, %sw.bb.111, %sw.bb.102, %sw.bb.93, %sw.bb.85
  br label %sw.epilog.287

sw.bb.129:                                        ; preds = %if.end.25
  %129 = load i32, i32* %tpos, align 4
  %add130 = add nsw i32 %129, 1
  %idxprom131 = sext i32 %add130 to i64
  %130 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype132 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %130, i32 0, i32 1
  %131 = load i8*, i8** %statetype132, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %131, i64 %idxprom131
  %132 = load i8, i8* %arrayidx133, align 1
  %conv134 = sext i8 %132 to i32
  switch i32 %conv134, label %sw.default.153 [
    i32 1, label %sw.bb.135
    i32 3, label %sw.bb.144
  ]

sw.bb.135:                                        ; preds = %sw.bb.129
  %133 = load float, float* %wt.addr, align 4
  %134 = load i32, i32* %tpos, align 4
  %idxprom136 = sext i32 %134 to i64
  %135 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx137 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %135, i32 0, i32 2
  %136 = load i32*, i32** %nodeidx137, align 8
  %arrayidx138 = getelementptr inbounds i32, i32* %136, i64 %idxprom136
  %137 = load i32, i32* %arrayidx138, align 4
  %idxprom139 = sext i32 %137 to i64
  %138 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t140 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %138, i32 0, i32 21
  %139 = load float**, float*** %t140, align 8
  %arrayidx141 = getelementptr inbounds float*, float** %139, i64 %idxprom139
  %140 = load float*, float** %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds float, float* %140, i64 3
  %141 = load float, float* %arrayidx142, align 4
  %add143 = fadd float %141, %133
  store float %add143, float* %arrayidx142, align 4
  br label %sw.epilog.163

sw.bb.144:                                        ; preds = %sw.bb.129
  %142 = load float, float* %wt.addr, align 4
  %143 = load i32, i32* %tpos, align 4
  %idxprom145 = sext i32 %143 to i64
  %144 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx146 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %144, i32 0, i32 2
  %145 = load i32*, i32** %nodeidx146, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %145, i64 %idxprom145
  %146 = load i32, i32* %arrayidx147, align 4
  %idxprom148 = sext i32 %146 to i64
  %147 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t149 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %147, i32 0, i32 21
  %148 = load float**, float*** %t149, align 8
  %arrayidx150 = getelementptr inbounds float*, float** %148, i64 %idxprom148
  %149 = load float*, float** %arrayidx150, align 8
  %arrayidx151 = getelementptr inbounds float, float* %149, i64 4
  %150 = load float, float* %arrayidx151, align 4
  %add152 = fadd float %150, %142
  store float %add152, float* %arrayidx151, align 4
  br label %sw.epilog.163

sw.default.153:                                   ; preds = %sw.bb.129
  %151 = load i32, i32* %tpos, align 4
  %idxprom154 = sext i32 %151 to i64
  %152 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype155 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %152, i32 0, i32 1
  %153 = load i8*, i8** %statetype155, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %153, i64 %idxprom154
  %154 = load i8, i8* %arrayidx156, align 1
  %call157 = call i8* @Statetype(i8 signext %154)
  %155 = load i32, i32* %tpos, align 4
  %add158 = add nsw i32 %155, 1
  %idxprom159 = sext i32 %add158 to i64
  %156 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype160 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %156, i32 0, i32 1
  %157 = load i8*, i8** %statetype160, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %157, i64 %idxprom159
  %158 = load i8, i8* %arrayidx161, align 1
  %call162 = call i8* @Statetype(i8 signext %158)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i8* %call157, i8* %call162)
  br label %sw.epilog.163

sw.epilog.163:                                    ; preds = %sw.default.153, %sw.bb.144, %sw.bb.135
  br label %sw.epilog.287

sw.bb.164:                                        ; preds = %if.end.25
  %159 = load i32, i32* %tpos, align 4
  %add165 = add nsw i32 %159, 1
  %idxprom166 = sext i32 %add165 to i64
  %160 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype167 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %160, i32 0, i32 1
  %161 = load i8*, i8** %statetype167, align 8
  %arrayidx168 = getelementptr inbounds i8, i8* %161, i64 %idxprom166
  %162 = load i8, i8* %arrayidx168, align 1
  %conv169 = sext i8 %162 to i32
  switch i32 %conv169, label %sw.default.189 [
    i32 1, label %sw.bb.170
    i32 2, label %sw.bb.179
    i32 7, label %sw.bb.188
  ]

sw.bb.170:                                        ; preds = %sw.bb.164
  %163 = load float, float* %wt.addr, align 4
  %164 = load i32, i32* %tpos, align 4
  %idxprom171 = sext i32 %164 to i64
  %165 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx172 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %165, i32 0, i32 2
  %166 = load i32*, i32** %nodeidx172, align 8
  %arrayidx173 = getelementptr inbounds i32, i32* %166, i64 %idxprom171
  %167 = load i32, i32* %arrayidx173, align 4
  %idxprom174 = sext i32 %167 to i64
  %168 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t175 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %168, i32 0, i32 21
  %169 = load float**, float*** %t175, align 8
  %arrayidx176 = getelementptr inbounds float*, float** %169, i64 %idxprom174
  %170 = load float*, float** %arrayidx176, align 8
  %arrayidx177 = getelementptr inbounds float, float* %170, i64 5
  %171 = load float, float* %arrayidx177, align 4
  %add178 = fadd float %171, %163
  store float %add178, float* %arrayidx177, align 4
  br label %sw.epilog.199

sw.bb.179:                                        ; preds = %sw.bb.164
  %172 = load float, float* %wt.addr, align 4
  %173 = load i32, i32* %tpos, align 4
  %idxprom180 = sext i32 %173 to i64
  %174 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx181 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %174, i32 0, i32 2
  %175 = load i32*, i32** %nodeidx181, align 8
  %arrayidx182 = getelementptr inbounds i32, i32* %175, i64 %idxprom180
  %176 = load i32, i32* %arrayidx182, align 4
  %idxprom183 = sext i32 %176 to i64
  %177 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %t184 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %177, i32 0, i32 21
  %178 = load float**, float*** %t184, align 8
  %arrayidx185 = getelementptr inbounds float*, float** %178, i64 %idxprom183
  %179 = load float*, float** %arrayidx185, align 8
  %arrayidx186 = getelementptr inbounds float, float* %179, i64 6
  %180 = load float, float* %arrayidx186, align 4
  %add187 = fadd float %180, %172
  store float %add187, float* %arrayidx186, align 4
  br label %sw.epilog.199

sw.bb.188:                                        ; preds = %sw.bb.164
  br label %sw.epilog.199

sw.default.189:                                   ; preds = %sw.bb.164
  %181 = load i32, i32* %tpos, align 4
  %idxprom190 = sext i32 %181 to i64
  %182 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype191 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %182, i32 0, i32 1
  %183 = load i8*, i8** %statetype191, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %183, i64 %idxprom190
  %184 = load i8, i8* %arrayidx192, align 1
  %call193 = call i8* @Statetype(i8 signext %184)
  %185 = load i32, i32* %tpos, align 4
  %add194 = add nsw i32 %185, 1
  %idxprom195 = sext i32 %add194 to i64
  %186 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype196 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %186, i32 0, i32 1
  %187 = load i8*, i8** %statetype196, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %187, i64 %idxprom195
  %188 = load i8, i8* %arrayidx197, align 1
  %call198 = call i8* @Statetype(i8 signext %188)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i8* %call193, i8* %call198)
  br label %sw.epilog.199

sw.epilog.199:                                    ; preds = %sw.default.189, %sw.bb.188, %sw.bb.179, %sw.bb.170
  br label %sw.epilog.287

sw.bb.200:                                        ; preds = %if.end.25
  %189 = load i32, i32* %tpos, align 4
  %add201 = add nsw i32 %189, 1
  %idxprom202 = sext i32 %add201 to i64
  %190 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype203 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %190, i32 0, i32 1
  %191 = load i8*, i8** %statetype203, align 8
  %arrayidx204 = getelementptr inbounds i8, i8* %191, i64 %idxprom202
  %192 = load i8, i8* %arrayidx204, align 1
  %conv205 = sext i8 %192 to i32
  switch i32 %conv205, label %sw.default.216 [
    i32 8, label %sw.bb.206
    i32 10, label %sw.bb.211
  ]

sw.bb.206:                                        ; preds = %sw.bb.200
  %193 = load float, float* %wt.addr, align 4
  %194 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt207 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %194, i32 0, i32 25
  %arrayidx208 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt207, i32 0, i64 1
  %arrayidx209 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx208, i32 0, i64 0
  %195 = load float, float* %arrayidx209, align 4
  %add210 = fadd float %195, %193
  store float %add210, float* %arrayidx209, align 4
  br label %sw.epilog.226

sw.bb.211:                                        ; preds = %sw.bb.200
  %196 = load float, float* %wt.addr, align 4
  %197 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt212 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %197, i32 0, i32 25
  %arrayidx213 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt212, i32 0, i64 1
  %arrayidx214 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx213, i32 0, i64 1
  %198 = load float, float* %arrayidx214, align 4
  %add215 = fadd float %198, %196
  store float %add215, float* %arrayidx214, align 4
  br label %sw.epilog.226

sw.default.216:                                   ; preds = %sw.bb.200
  %199 = load i32, i32* %tpos, align 4
  %idxprom217 = sext i32 %199 to i64
  %200 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype218 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %200, i32 0, i32 1
  %201 = load i8*, i8** %statetype218, align 8
  %arrayidx219 = getelementptr inbounds i8, i8* %201, i64 %idxprom217
  %202 = load i8, i8* %arrayidx219, align 1
  %call220 = call i8* @Statetype(i8 signext %202)
  %203 = load i32, i32* %tpos, align 4
  %add221 = add nsw i32 %203, 1
  %idxprom222 = sext i32 %add221 to i64
  %204 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype223 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %204, i32 0, i32 1
  %205 = load i8*, i8** %statetype223, align 8
  %arrayidx224 = getelementptr inbounds i8, i8* %205, i64 %idxprom222
  %206 = load i8, i8* %arrayidx224, align 1
  %call225 = call i8* @Statetype(i8 signext %206)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i8* %call220, i8* %call225)
  br label %sw.epilog.226

sw.epilog.226:                                    ; preds = %sw.default.216, %sw.bb.211, %sw.bb.206
  br label %sw.epilog.287

sw.bb.227:                                        ; preds = %if.end.25
  %207 = load i32, i32* %tpos, align 4
  %add228 = add nsw i32 %207, 1
  %idxprom229 = sext i32 %add228 to i64
  %208 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype230 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %208, i32 0, i32 1
  %209 = load i8*, i8** %statetype230, align 8
  %arrayidx231 = getelementptr inbounds i8, i8* %209, i64 %idxprom229
  %210 = load i8, i8* %arrayidx231, align 1
  %conv232 = sext i8 %210 to i32
  switch i32 %conv232, label %sw.default.243 [
    i32 6, label %sw.bb.233
    i32 10, label %sw.bb.238
  ]

sw.bb.233:                                        ; preds = %sw.bb.227
  %211 = load float, float* %wt.addr, align 4
  %212 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt234 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %212, i32 0, i32 25
  %arrayidx235 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt234, i32 0, i64 3
  %arrayidx236 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx235, i32 0, i64 0
  %213 = load float, float* %arrayidx236, align 4
  %add237 = fadd float %213, %211
  store float %add237, float* %arrayidx236, align 4
  br label %sw.epilog.253

sw.bb.238:                                        ; preds = %sw.bb.227
  %214 = load float, float* %wt.addr, align 4
  %215 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt239 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %215, i32 0, i32 25
  %arrayidx240 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt239, i32 0, i64 3
  %arrayidx241 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx240, i32 0, i64 1
  %216 = load float, float* %arrayidx241, align 4
  %add242 = fadd float %216, %214
  store float %add242, float* %arrayidx241, align 4
  br label %sw.epilog.253

sw.default.243:                                   ; preds = %sw.bb.227
  %217 = load i32, i32* %tpos, align 4
  %idxprom244 = sext i32 %217 to i64
  %218 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype245 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %218, i32 0, i32 1
  %219 = load i8*, i8** %statetype245, align 8
  %arrayidx246 = getelementptr inbounds i8, i8* %219, i64 %idxprom244
  %220 = load i8, i8* %arrayidx246, align 1
  %call247 = call i8* @Statetype(i8 signext %220)
  %221 = load i32, i32* %tpos, align 4
  %add248 = add nsw i32 %221, 1
  %idxprom249 = sext i32 %add248 to i64
  %222 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype250 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %222, i32 0, i32 1
  %223 = load i8*, i8** %statetype250, align 8
  %arrayidx251 = getelementptr inbounds i8, i8* %223, i64 %idxprom249
  %224 = load i8, i8* %arrayidx251, align 1
  %call252 = call i8* @Statetype(i8 signext %224)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i8* %call247, i8* %call252)
  br label %sw.epilog.253

sw.epilog.253:                                    ; preds = %sw.default.243, %sw.bb.238, %sw.bb.233
  br label %sw.epilog.287

sw.bb.254:                                        ; preds = %if.end.25
  %225 = load i32, i32* %tpos, align 4
  %add255 = add nsw i32 %225, 1
  %idxprom256 = sext i32 %add255 to i64
  %226 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype257 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %226, i32 0, i32 1
  %227 = load i8*, i8** %statetype257, align 8
  %arrayidx258 = getelementptr inbounds i8, i8* %227, i64 %idxprom256
  %228 = load i8, i8* %arrayidx258, align 1
  %conv259 = sext i8 %228 to i32
  switch i32 %conv259, label %sw.default.270 [
    i32 9, label %sw.bb.260
    i32 8, label %sw.bb.265
  ]

sw.bb.260:                                        ; preds = %sw.bb.254
  %229 = load float, float* %wt.addr, align 4
  %230 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt261 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %230, i32 0, i32 25
  %arrayidx262 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt261, i32 0, i64 2
  %arrayidx263 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx262, i32 0, i64 0
  %231 = load float, float* %arrayidx263, align 4
  %add264 = fadd float %231, %229
  store float %add264, float* %arrayidx263, align 4
  br label %sw.epilog.280

sw.bb.265:                                        ; preds = %sw.bb.254
  %232 = load float, float* %wt.addr, align 4
  %233 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xt266 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %233, i32 0, i32 25
  %arrayidx267 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %xt266, i32 0, i64 2
  %arrayidx268 = getelementptr inbounds [2 x float], [2 x float]* %arrayidx267, i32 0, i64 1
  %234 = load float, float* %arrayidx268, align 4
  %add269 = fadd float %234, %232
  store float %add269, float* %arrayidx268, align 4
  br label %sw.epilog.280

sw.default.270:                                   ; preds = %sw.bb.254
  %235 = load i32, i32* %tpos, align 4
  %idxprom271 = sext i32 %235 to i64
  %236 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype272 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %236, i32 0, i32 1
  %237 = load i8*, i8** %statetype272, align 8
  %arrayidx273 = getelementptr inbounds i8, i8* %237, i64 %idxprom271
  %238 = load i8, i8* %arrayidx273, align 1
  %call274 = call i8* @Statetype(i8 signext %238)
  %239 = load i32, i32* %tpos, align 4
  %add275 = add nsw i32 %239, 1
  %idxprom276 = sext i32 %add275 to i64
  %240 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype277 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %240, i32 0, i32 1
  %241 = load i8*, i8** %statetype277, align 8
  %arrayidx278 = getelementptr inbounds i8, i8* %241, i64 %idxprom276
  %242 = load i8, i8* %arrayidx278, align 1
  %call279 = call i8* @Statetype(i8 signext %242)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), i8* %call274, i8* %call279)
  br label %sw.epilog.280

sw.epilog.280:                                    ; preds = %sw.default.270, %sw.bb.265, %sw.bb.260
  br label %sw.epilog.287

sw.bb.281:                                        ; preds = %if.end.25
  br label %sw.epilog.287

sw.default.282:                                   ; preds = %if.end.25
  %243 = load i32, i32* %tpos, align 4
  %idxprom283 = sext i32 %243 to i64
  %244 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype284 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %244, i32 0, i32 1
  %245 = load i8*, i8** %statetype284, align 8
  %arrayidx285 = getelementptr inbounds i8, i8* %245, i64 %idxprom283
  %246 = load i8, i8* %arrayidx285, align 1
  %call286 = call i8* @Statetype(i8 signext %246)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i8* %call286)
  br label %sw.epilog.287

sw.epilog.287:                                    ; preds = %sw.default.282, %sw.bb.281, %sw.epilog.280, %sw.epilog.253, %sw.epilog.226, %sw.epilog.199, %sw.epilog.163, %sw.epilog.128, %sw.epilog.78, %sw.epilog, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.287
  %247 = load i32, i32* %tpos, align 4
  %inc = add nsw i32 %247, 1
  store i32 %inc, i32* %tpos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @P7CountSymbol(float*, i8 signext, float) #1

declare void @Die(i8*, ...) #1

declare i8* @Statetype(i8 signext) #1

; Function Attrs: nounwind uwtable
define float @P7TraceScore(%struct.plan7_s* %hmm, i8* %dsq, %struct.p7trace_s* %tr) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %dsq.addr = alloca i8*, align 8
  %tr.addr = alloca %struct.p7trace_s*, align 8
  %score = alloca i32, align 4
  %tpos = alloca i32, align 4
  %sym = alloca i32, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i8* %dsq, i8** %dsq.addr, align 8
  store %struct.p7trace_s* %tr, %struct.p7trace_s** %tr.addr, align 8
  store i32 0, i32* %score, align 4
  store i32 0, i32* %tpos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %tpos, align 4
  %1 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %1, i32 0, i32 0
  %2 = load i32, i32* %tlen, align 4
  %sub = sub nsw i32 %2, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %tpos, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %4, i32 0, i32 3
  %5 = load i32*, i32** %pos, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load i8*, i8** %dsq.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 %idxprom1
  %8 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %8 to i32
  store i32 %conv, i32* %sym, align 4
  %9 = load i32, i32* %tpos, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %statetype, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %11, i64 %idxprom3
  %12 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %12 to i32
  %cmp6 = icmp eq i32 %conv5, 1
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %13 = load i32, i32* %tpos, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %14, i32 0, i32 2
  %15 = load i32*, i32** %nodeidx, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %15, i64 %idxprom8
  %16 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load i32, i32* %sym, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %18, i32 0, i32 31
  %19 = load i32**, i32*** %msc, align 8
  %arrayidx12 = getelementptr inbounds i32*, i32** %19, i64 %idxprom11
  %20 = load i32*, i32** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %20, i64 %idxprom10
  %21 = load i32, i32* %arrayidx13, align 4
  %22 = load i32, i32* %score, align 4
  %add = add nsw i32 %22, %21
  store i32 %add, i32* %score, align 4
  br label %if.end.29

if.else:                                          ; preds = %for.body
  %23 = load i32, i32* %tpos, align 4
  %idxprom14 = sext i32 %23 to i64
  %24 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype15 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %24, i32 0, i32 1
  %25 = load i8*, i8** %statetype15, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %25, i64 %idxprom14
  %26 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %26 to i32
  %cmp18 = icmp eq i32 %conv17, 3
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.else
  %27 = load i32, i32* %tpos, align 4
  %idxprom21 = sext i32 %27 to i64
  %28 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx22 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %28, i32 0, i32 2
  %29 = load i32*, i32** %nodeidx22, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %29, i64 %idxprom21
  %30 = load i32, i32* %arrayidx23, align 4
  %idxprom24 = sext i32 %30 to i64
  %31 = load i32, i32* %sym, align 4
  %idxprom25 = sext i32 %31 to i64
  %32 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %32, i32 0, i32 32
  %33 = load i32**, i32*** %isc, align 8
  %arrayidx26 = getelementptr inbounds i32*, i32** %33, i64 %idxprom25
  %34 = load i32*, i32** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %34, i64 %idxprom24
  %35 = load i32, i32* %arrayidx27, align 4
  %36 = load i32, i32* %score, align 4
  %add28 = add nsw i32 %36, %35
  store i32 %add28, i32* %score, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.20, %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %if.then
  %37 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %38 = load i32, i32* %tpos, align 4
  %idxprom30 = sext i32 %38 to i64
  %39 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype31 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %39, i32 0, i32 1
  %40 = load i8*, i8** %statetype31, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %40, i64 %idxprom30
  %41 = load i8, i8* %arrayidx32, align 1
  %42 = load i32, i32* %tpos, align 4
  %idxprom33 = sext i32 %42 to i64
  %43 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx34 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %43, i32 0, i32 2
  %44 = load i32*, i32** %nodeidx34, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %44, i64 %idxprom33
  %45 = load i32, i32* %arrayidx35, align 4
  %46 = load i32, i32* %tpos, align 4
  %add36 = add nsw i32 %46, 1
  %idxprom37 = sext i32 %add36 to i64
  %47 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype38 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %47, i32 0, i32 1
  %48 = load i8*, i8** %statetype38, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %48, i64 %idxprom37
  %49 = load i8, i8* %arrayidx39, align 1
  %50 = load i32, i32* %tpos, align 4
  %add40 = add nsw i32 %50, 1
  %idxprom41 = sext i32 %add40 to i64
  %51 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx42 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %51, i32 0, i32 2
  %52 = load i32*, i32** %nodeidx42, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %52, i64 %idxprom41
  %53 = load i32, i32* %arrayidx43, align 4
  %call = call i32 @TransitionScoreLookup(%struct.plan7_s* %37, i8 signext %41, i32 %45, i8 signext %49, i32 %53)
  %54 = load i32, i32* %score, align 4
  %add44 = add nsw i32 %54, %call
  store i32 %add44, i32* %score, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %55 = load i32, i32* %tpos, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %tpos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load i32, i32* %score, align 4
  %call45 = call float @Scorify(i32 %56)
  ret float %call45
}

; Function Attrs: nounwind uwtable
define i32 @TransitionScoreLookup(%struct.plan7_s* %hmm, i8 signext %st1, i32 %k1, i8 signext %st2, i32 %k2) #0 {
entry:
  %retval = alloca i32, align 4
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %st1.addr = alloca i8, align 1
  %k1.addr = alloca i32, align 4
  %st2.addr = alloca i8, align 1
  %k2.addr = alloca i32, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i8 %st1, i8* %st1.addr, align 1
  store i32 %k1, i32* %k1.addr, align 4
  store i8 %st2, i8* %st2.addr, align 1
  store i32 %k2, i32* %k2.addr, align 4
  %0 = load i8, i8* %st1.addr, align 1
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.default.119 [
    i32 4, label %sw.bb
    i32 5, label %sw.bb.1
    i32 6, label %sw.bb.10
    i32 1, label %sw.bb.20
    i32 3, label %sw.bb.43
    i32 2, label %sw.bb.59
    i32 7, label %sw.bb.76
    i32 10, label %sw.bb.90
    i32 8, label %sw.bb.104
    i32 9, label %sw.bb.118
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load i8, i8* %st2.addr, align 1
  %conv2 = sext i8 %1 to i32
  switch i32 %conv2, label %sw.default [
    i32 6, label %sw.bb.3
    i32 5, label %sw.bb.5
  ]

sw.bb.3:                                          ; preds = %sw.bb.1
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %2, i32 0, i32 33
  %arrayidx = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc, i32 0, i64 0
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  %3 = load i32, i32* %arrayidx4, align 4
  store i32 %3, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %sw.bb.1
  %4 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc6 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %4, i32 0, i32 33
  %arrayidx7 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc6, i32 0, i64 0
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx7, i32 0, i64 1
  %5 = load i32, i32* %arrayidx8, align 4
  store i32 %5, i32* %retval
  br label %return

sw.default:                                       ; preds = %sw.bb.1
  %6 = load i8, i8* %st1.addr, align 1
  %call = call i8* @Statetype(i8 signext %6)
  %7 = load i8, i8* %st2.addr, align 1
  %call9 = call i8* @Statetype(i8 signext %7)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* %call, i8* %call9)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %sw.epilog.121

sw.bb.10:                                         ; preds = %entry
  %8 = load i8, i8* %st2.addr, align 1
  %conv11 = sext i8 %8 to i32
  switch i32 %conv11, label %sw.default.16 [
    i32 1, label %sw.bb.12
    i32 2, label %sw.bb.14
  ]

sw.bb.12:                                         ; preds = %sw.bb.10
  %9 = load i32, i32* %k2.addr, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 34
  %11 = load i32*, i32** %bsc, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %11, i64 %idxprom
  %12 = load i32, i32* %arrayidx13, align 4
  store i32 %12, i32* %retval
  br label %return

sw.bb.14:                                         ; preds = %sw.bb.10
  %13 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tbd1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %13, i32 0, i32 24
  %14 = load float, float* %tbd1, align 4
  %call15 = call i32 @Prob2Score(float %14, float 1.000000e+00)
  store i32 %call15, i32* %retval
  br label %return

sw.default.16:                                    ; preds = %sw.bb.10
  %15 = load i8, i8* %st1.addr, align 1
  %call17 = call i8* @Statetype(i8 signext %15)
  %16 = load i8, i8* %st2.addr, align 1
  %call18 = call i8* @Statetype(i8 signext %16)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* %call17, i8* %call18)
  br label %sw.epilog.19

sw.epilog.19:                                     ; preds = %sw.default.16
  br label %sw.epilog.121

sw.bb.20:                                         ; preds = %entry
  %17 = load i8, i8* %st2.addr, align 1
  %conv21 = sext i8 %17 to i32
  switch i32 %conv21, label %sw.default.39 [
    i32 1, label %sw.bb.22
    i32 3, label %sw.bb.26
    i32 2, label %sw.bb.31
    i32 7, label %sw.bb.36
  ]

sw.bb.22:                                         ; preds = %sw.bb.20
  %18 = load i32, i32* %k1.addr, align 4
  %idxprom23 = sext i32 %18 to i64
  %19 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %19, i32 0, i32 30
  %20 = load i32**, i32*** %tsc, align 8
  %arrayidx24 = getelementptr inbounds i32*, i32** %20, i64 0
  %21 = load i32*, i32** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %21, i64 %idxprom23
  %22 = load i32, i32* %arrayidx25, align 4
  store i32 %22, i32* %retval
  br label %return

sw.bb.26:                                         ; preds = %sw.bb.20
  %23 = load i32, i32* %k1.addr, align 4
  %idxprom27 = sext i32 %23 to i64
  %24 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc28 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %24, i32 0, i32 30
  %25 = load i32**, i32*** %tsc28, align 8
  %arrayidx29 = getelementptr inbounds i32*, i32** %25, i64 1
  %26 = load i32*, i32** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %26, i64 %idxprom27
  %27 = load i32, i32* %arrayidx30, align 4
  store i32 %27, i32* %retval
  br label %return

sw.bb.31:                                         ; preds = %sw.bb.20
  %28 = load i32, i32* %k1.addr, align 4
  %idxprom32 = sext i32 %28 to i64
  %29 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc33 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %29, i32 0, i32 30
  %30 = load i32**, i32*** %tsc33, align 8
  %arrayidx34 = getelementptr inbounds i32*, i32** %30, i64 2
  %31 = load i32*, i32** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %31, i64 %idxprom32
  %32 = load i32, i32* %arrayidx35, align 4
  store i32 %32, i32* %retval
  br label %return

sw.bb.36:                                         ; preds = %sw.bb.20
  %33 = load i32, i32* %k1.addr, align 4
  %idxprom37 = sext i32 %33 to i64
  %34 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %34, i32 0, i32 35
  %35 = load i32*, i32** %esc, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %35, i64 %idxprom37
  %36 = load i32, i32* %arrayidx38, align 4
  store i32 %36, i32* %retval
  br label %return

sw.default.39:                                    ; preds = %sw.bb.20
  %37 = load i8, i8* %st1.addr, align 1
  %call40 = call i8* @Statetype(i8 signext %37)
  %38 = load i8, i8* %st2.addr, align 1
  %call41 = call i8* @Statetype(i8 signext %38)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* %call40, i8* %call41)
  br label %sw.epilog.42

sw.epilog.42:                                     ; preds = %sw.default.39
  br label %sw.epilog.121

sw.bb.43:                                         ; preds = %entry
  %39 = load i8, i8* %st2.addr, align 1
  %conv44 = sext i8 %39 to i32
  switch i32 %conv44, label %sw.default.55 [
    i32 1, label %sw.bb.45
    i32 3, label %sw.bb.50
  ]

sw.bb.45:                                         ; preds = %sw.bb.43
  %40 = load i32, i32* %k1.addr, align 4
  %idxprom46 = sext i32 %40 to i64
  %41 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc47 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %41, i32 0, i32 30
  %42 = load i32**, i32*** %tsc47, align 8
  %arrayidx48 = getelementptr inbounds i32*, i32** %42, i64 3
  %43 = load i32*, i32** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %43, i64 %idxprom46
  %44 = load i32, i32* %arrayidx49, align 4
  store i32 %44, i32* %retval
  br label %return

sw.bb.50:                                         ; preds = %sw.bb.43
  %45 = load i32, i32* %k1.addr, align 4
  %idxprom51 = sext i32 %45 to i64
  %46 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc52 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %46, i32 0, i32 30
  %47 = load i32**, i32*** %tsc52, align 8
  %arrayidx53 = getelementptr inbounds i32*, i32** %47, i64 4
  %48 = load i32*, i32** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %48, i64 %idxprom51
  %49 = load i32, i32* %arrayidx54, align 4
  store i32 %49, i32* %retval
  br label %return

sw.default.55:                                    ; preds = %sw.bb.43
  %50 = load i8, i8* %st1.addr, align 1
  %call56 = call i8* @Statetype(i8 signext %50)
  %51 = load i8, i8* %st2.addr, align 1
  %call57 = call i8* @Statetype(i8 signext %51)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* %call56, i8* %call57)
  br label %sw.epilog.58

sw.epilog.58:                                     ; preds = %sw.default.55
  br label %sw.epilog.121

sw.bb.59:                                         ; preds = %entry
  %52 = load i8, i8* %st2.addr, align 1
  %conv60 = sext i8 %52 to i32
  switch i32 %conv60, label %sw.default.72 [
    i32 1, label %sw.bb.61
    i32 2, label %sw.bb.66
    i32 7, label %sw.bb.71
  ]

sw.bb.61:                                         ; preds = %sw.bb.59
  %53 = load i32, i32* %k1.addr, align 4
  %idxprom62 = sext i32 %53 to i64
  %54 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc63 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %54, i32 0, i32 30
  %55 = load i32**, i32*** %tsc63, align 8
  %arrayidx64 = getelementptr inbounds i32*, i32** %55, i64 5
  %56 = load i32*, i32** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %56, i64 %idxprom62
  %57 = load i32, i32* %arrayidx65, align 4
  store i32 %57, i32* %retval
  br label %return

sw.bb.66:                                         ; preds = %sw.bb.59
  %58 = load i32, i32* %k1.addr, align 4
  %idxprom67 = sext i32 %58 to i64
  %59 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc68 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %59, i32 0, i32 30
  %60 = load i32**, i32*** %tsc68, align 8
  %arrayidx69 = getelementptr inbounds i32*, i32** %60, i64 6
  %61 = load i32*, i32** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %61, i64 %idxprom67
  %62 = load i32, i32* %arrayidx70, align 4
  store i32 %62, i32* %retval
  br label %return

sw.bb.71:                                         ; preds = %sw.bb.59
  store i32 0, i32* %retval
  br label %return

sw.default.72:                                    ; preds = %sw.bb.59
  %63 = load i8, i8* %st1.addr, align 1
  %call73 = call i8* @Statetype(i8 signext %63)
  %64 = load i8, i8* %st2.addr, align 1
  %call74 = call i8* @Statetype(i8 signext %64)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* %call73, i8* %call74)
  br label %sw.epilog.75

sw.epilog.75:                                     ; preds = %sw.default.72
  br label %sw.epilog.121

sw.bb.76:                                         ; preds = %entry
  %65 = load i8, i8* %st2.addr, align 1
  %conv77 = sext i8 %65 to i32
  switch i32 %conv77, label %sw.default.86 [
    i32 8, label %sw.bb.78
    i32 10, label %sw.bb.82
  ]

sw.bb.78:                                         ; preds = %sw.bb.76
  %66 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc79 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %66, i32 0, i32 33
  %arrayidx80 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc79, i32 0, i64 1
  %arrayidx81 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx80, i32 0, i64 0
  %67 = load i32, i32* %arrayidx81, align 4
  store i32 %67, i32* %retval
  br label %return

sw.bb.82:                                         ; preds = %sw.bb.76
  %68 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc83 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %68, i32 0, i32 33
  %arrayidx84 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc83, i32 0, i64 1
  %arrayidx85 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx84, i32 0, i64 1
  %69 = load i32, i32* %arrayidx85, align 4
  store i32 %69, i32* %retval
  br label %return

sw.default.86:                                    ; preds = %sw.bb.76
  %70 = load i8, i8* %st1.addr, align 1
  %call87 = call i8* @Statetype(i8 signext %70)
  %71 = load i8, i8* %st2.addr, align 1
  %call88 = call i8* @Statetype(i8 signext %71)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* %call87, i8* %call88)
  br label %sw.epilog.89

sw.epilog.89:                                     ; preds = %sw.default.86
  br label %sw.epilog.121

sw.bb.90:                                         ; preds = %entry
  %72 = load i8, i8* %st2.addr, align 1
  %conv91 = sext i8 %72 to i32
  switch i32 %conv91, label %sw.default.100 [
    i32 6, label %sw.bb.92
    i32 10, label %sw.bb.96
  ]

sw.bb.92:                                         ; preds = %sw.bb.90
  %73 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc93 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %73, i32 0, i32 33
  %arrayidx94 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc93, i32 0, i64 3
  %arrayidx95 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx94, i32 0, i64 0
  %74 = load i32, i32* %arrayidx95, align 4
  store i32 %74, i32* %retval
  br label %return

sw.bb.96:                                         ; preds = %sw.bb.90
  %75 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc97 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %75, i32 0, i32 33
  %arrayidx98 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc97, i32 0, i64 3
  %arrayidx99 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx98, i32 0, i64 1
  %76 = load i32, i32* %arrayidx99, align 4
  store i32 %76, i32* %retval
  br label %return

sw.default.100:                                   ; preds = %sw.bb.90
  %77 = load i8, i8* %st1.addr, align 1
  %call101 = call i8* @Statetype(i8 signext %77)
  %78 = load i8, i8* %st2.addr, align 1
  %call102 = call i8* @Statetype(i8 signext %78)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* %call101, i8* %call102)
  br label %sw.epilog.103

sw.epilog.103:                                    ; preds = %sw.default.100
  br label %sw.epilog.121

sw.bb.104:                                        ; preds = %entry
  %79 = load i8, i8* %st2.addr, align 1
  %conv105 = sext i8 %79 to i32
  switch i32 %conv105, label %sw.default.114 [
    i32 9, label %sw.bb.106
    i32 8, label %sw.bb.110
  ]

sw.bb.106:                                        ; preds = %sw.bb.104
  %80 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc107 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %80, i32 0, i32 33
  %arrayidx108 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc107, i32 0, i64 2
  %arrayidx109 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx108, i32 0, i64 0
  %81 = load i32, i32* %arrayidx109, align 4
  store i32 %81, i32* %retval
  br label %return

sw.bb.110:                                        ; preds = %sw.bb.104
  %82 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc111 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %82, i32 0, i32 33
  %arrayidx112 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc111, i32 0, i64 2
  %arrayidx113 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx112, i32 0, i64 1
  %83 = load i32, i32* %arrayidx113, align 4
  store i32 %83, i32* %retval
  br label %return

sw.default.114:                                   ; preds = %sw.bb.104
  %84 = load i8, i8* %st1.addr, align 1
  %call115 = call i8* @Statetype(i8 signext %84)
  %85 = load i8, i8* %st2.addr, align 1
  %call116 = call i8* @Statetype(i8 signext %85)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* %call115, i8* %call116)
  br label %sw.epilog.117

sw.epilog.117:                                    ; preds = %sw.default.114
  br label %sw.epilog.121

sw.bb.118:                                        ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.default.119:                                   ; preds = %entry
  %86 = load i8, i8* %st1.addr, align 1
  %call120 = call i8* @Statetype(i8 signext %86)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i8* %call120)
  br label %sw.epilog.121

sw.epilog.121:                                    ; preds = %sw.default.119, %sw.epilog.117, %sw.epilog.103, %sw.epilog.89, %sw.epilog.75, %sw.epilog.58, %sw.epilog.42, %sw.epilog.19, %sw.epilog
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.121, %sw.bb.118, %sw.bb.110, %sw.bb.106, %sw.bb.96, %sw.bb.92, %sw.bb.82, %sw.bb.78, %sw.bb.71, %sw.bb.66, %sw.bb.61, %sw.bb.50, %sw.bb.45, %sw.bb.36, %sw.bb.31, %sw.bb.26, %sw.bb.22, %sw.bb.14, %sw.bb.12, %sw.bb.5, %sw.bb.3, %sw.bb
  %87 = load i32, i32* %retval
  ret i32 %87
}

declare float @Scorify(i32) #1

; Function Attrs: nounwind uwtable
define %struct.msa_struct* @P7Traces2Alignment(i8** %dsq, %struct.seqinfo_s* %sqinfo, float* %wgt, i32 %nseq, i32 %mlen, %struct.p7trace_s** %tr, i32 %matchonly) #0 {
entry:
  %dsq.addr = alloca i8**, align 8
  %sqinfo.addr = alloca %struct.seqinfo_s*, align 8
  %wgt.addr = alloca float*, align 8
  %nseq.addr = alloca i32, align 4
  %mlen.addr = alloca i32, align 4
  %tr.addr = alloca %struct.p7trace_s**, align 8
  %matchonly.addr = alloca i32, align 4
  %msa = alloca %struct.msa_struct*, align 8
  %idx = alloca i32, align 4
  %alen = alloca i32, align 4
  %inserts = alloca i32*, align 8
  %matmap = alloca i32*, align 8
  %nins = alloca i32, align 4
  %apos = alloca i32, align 4
  %rpos = alloca i32, align 4
  %tpos = alloca i32, align 4
  %statetype = alloca i32, align 4
  %k = alloca i32, align 4
  store i8** %dsq, i8*** %dsq.addr, align 8
  store %struct.seqinfo_s* %sqinfo, %struct.seqinfo_s** %sqinfo.addr, align 8
  store float* %wgt, float** %wgt.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store i32 %mlen, i32* %mlen.addr, align 4
  store %struct.p7trace_s** %tr, %struct.p7trace_s*** %tr.addr, align 8
  store i32 %matchonly, i32* %matchonly.addr, align 4
  %0 = load i32, i32* %mlen.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 4, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 408, i64 %mul)
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %inserts, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %k, align 4
  %3 = load i32, i32* %mlen.addr, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %k, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %inserts, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %k, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %idx, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.89, %for.end
  %7 = load i32, i32* %idx, align 4
  %8 = load i32, i32* %nseq.addr, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %for.body.5, label %for.end.91

for.body.5:                                       ; preds = %for.cond.2
  store i32 0, i32* %nins, align 4
  store i32 0, i32* %tpos, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.86, %for.body.5
  %9 = load i32, i32* %tpos, align 4
  %10 = load i32, i32* %idx, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %11, i64 %idxprom7
  %12 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx8, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %12, i32 0, i32 0
  %13 = load i32, i32* %tlen, align 4
  %cmp9 = icmp slt i32 %9, %13
  br i1 %cmp9, label %for.body.11, label %for.end.88

for.body.11:                                      ; preds = %for.cond.6
  %14 = load i32, i32* %tpos, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load i32, i32* %idx, align 4
  %idxprom13 = sext i32 %15 to i64
  %16 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %16, i64 %idxprom13
  %17 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx14, align 8
  %statetype15 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %17, i32 0, i32 1
  %18 = load i8*, i8** %statetype15, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %18, i64 %idxprom12
  %19 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %19 to i32
  switch i32 %conv17, label %sw.default [
    i32 3, label %sw.bb
    i32 5, label %sw.bb.19
    i32 8, label %sw.bb.29
    i32 1, label %sw.bb.42
    i32 2, label %sw.bb.42
    i32 6, label %sw.bb.62
    i32 9, label %sw.bb.69
    i32 4, label %sw.bb.78
    i32 7, label %sw.bb.78
    i32 10, label %sw.bb.79
  ]

sw.bb:                                            ; preds = %for.body.11
  %20 = load i32, i32* %nins, align 4
  %inc18 = add nsw i32 %20, 1
  store i32 %inc18, i32* %nins, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %for.body.11
  %21 = load i32, i32* %tpos, align 4
  %sub = sub nsw i32 %21, 1
  %idxprom20 = sext i32 %sub to i64
  %22 = load i32, i32* %idx, align 4
  %idxprom21 = sext i32 %22 to i64
  %23 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %23, i64 %idxprom21
  %24 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx22, align 8
  %statetype23 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %24, i32 0, i32 1
  %25 = load i8*, i8** %statetype23, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %25, i64 %idxprom20
  %26 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %26 to i32
  %cmp26 = icmp eq i32 %conv25, 5
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.19
  %27 = load i32, i32* %nins, align 4
  %inc28 = add nsw i32 %27, 1
  store i32 %inc28, i32* %nins, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.19
  br label %sw.epilog

sw.bb.29:                                         ; preds = %for.body.11
  %28 = load i32, i32* %tpos, align 4
  %sub30 = sub nsw i32 %28, 1
  %idxprom31 = sext i32 %sub30 to i64
  %29 = load i32, i32* %idx, align 4
  %idxprom32 = sext i32 %29 to i64
  %30 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %30, i64 %idxprom32
  %31 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx33, align 8
  %statetype34 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %31, i32 0, i32 1
  %32 = load i8*, i8** %statetype34, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %32, i64 %idxprom31
  %33 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %33 to i32
  %cmp37 = icmp eq i32 %conv36, 8
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %sw.bb.29
  %34 = load i32, i32* %nins, align 4
  %inc40 = add nsw i32 %34, 1
  store i32 %inc40, i32* %nins, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %sw.bb.29
  br label %sw.epilog

sw.bb.42:                                         ; preds = %for.body.11, %for.body.11
  %35 = load i32, i32* %nins, align 4
  %36 = load i32, i32* %tpos, align 4
  %idxprom43 = sext i32 %36 to i64
  %37 = load i32, i32* %idx, align 4
  %idxprom44 = sext i32 %37 to i64
  %38 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %38, i64 %idxprom44
  %39 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx45, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %39, i32 0, i32 2
  %40 = load i32*, i32** %nodeidx, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %40, i64 %idxprom43
  %41 = load i32, i32* %arrayidx46, align 4
  %sub47 = sub nsw i32 %41, 1
  %idxprom48 = sext i32 %sub47 to i64
  %42 = load i32*, i32** %inserts, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %42, i64 %idxprom48
  %43 = load i32, i32* %arrayidx49, align 4
  %cmp50 = icmp sgt i32 %35, %43
  br i1 %cmp50, label %if.then.52, label %if.end.61

if.then.52:                                       ; preds = %sw.bb.42
  %44 = load i32, i32* %nins, align 4
  %45 = load i32, i32* %tpos, align 4
  %idxprom53 = sext i32 %45 to i64
  %46 = load i32, i32* %idx, align 4
  %idxprom54 = sext i32 %46 to i64
  %47 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %47, i64 %idxprom54
  %48 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx55, align 8
  %nodeidx56 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %48, i32 0, i32 2
  %49 = load i32*, i32** %nodeidx56, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %49, i64 %idxprom53
  %50 = load i32, i32* %arrayidx57, align 4
  %sub58 = sub nsw i32 %50, 1
  %idxprom59 = sext i32 %sub58 to i64
  %51 = load i32*, i32** %inserts, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %51, i64 %idxprom59
  store i32 %44, i32* %arrayidx60, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.52, %sw.bb.42
  store i32 0, i32* %nins, align 4
  br label %sw.epilog

sw.bb.62:                                         ; preds = %for.body.11
  %52 = load i32, i32* %nins, align 4
  %53 = load i32*, i32** %inserts, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %53, i64 0
  %54 = load i32, i32* %arrayidx63, align 4
  %cmp64 = icmp sgt i32 %52, %54
  br i1 %cmp64, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %sw.bb.62
  %55 = load i32, i32* %nins, align 4
  %56 = load i32*, i32** %inserts, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %55, i32* %arrayidx67, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %sw.bb.62
  store i32 0, i32* %nins, align 4
  br label %sw.epilog

sw.bb.69:                                         ; preds = %for.body.11
  %57 = load i32, i32* %nins, align 4
  %58 = load i32, i32* %mlen.addr, align 4
  %idxprom70 = sext i32 %58 to i64
  %59 = load i32*, i32** %inserts, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %59, i64 %idxprom70
  %60 = load i32, i32* %arrayidx71, align 4
  %cmp72 = icmp sgt i32 %57, %60
  br i1 %cmp72, label %if.then.74, label %if.end.77

if.then.74:                                       ; preds = %sw.bb.69
  %61 = load i32, i32* %nins, align 4
  %62 = load i32, i32* %mlen.addr, align 4
  %idxprom75 = sext i32 %62 to i64
  %63 = load i32*, i32** %inserts, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %63, i64 %idxprom75
  store i32 %61, i32* %arrayidx76, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.74, %sw.bb.69
  br label %sw.epilog

sw.bb.78:                                         ; preds = %for.body.11, %for.body.11
  br label %sw.epilog

sw.bb.79:                                         ; preds = %for.body.11
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.default

sw.default:                                       ; preds = %for.body.11, %sw.bb.79
  %64 = load i32, i32* %tpos, align 4
  %idxprom80 = sext i32 %64 to i64
  %65 = load i32, i32* %idx, align 4
  %idxprom81 = sext i32 %65 to i64
  %66 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr.addr, align 8
  %arrayidx82 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %66, i64 %idxprom81
  %67 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx82, align 8
  %statetype83 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %67, i32 0, i32 1
  %68 = load i8*, i8** %statetype83, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %68, i64 %idxprom80
  %69 = load i8, i8* %arrayidx84, align 1
  %call85 = call i8* @Statetype(i8 signext %69)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0), i8* %call85)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.78, %if.end.77, %if.end.68, %if.end.61, %if.end.41, %if.end, %sw.bb
  br label %for.inc.86

for.inc.86:                                       ; preds = %sw.epilog
  %70 = load i32, i32* %tpos, align 4
  %inc87 = add nsw i32 %70, 1
  store i32 %inc87, i32* %tpos, align 4
  br label %for.cond.6

for.end.88:                                       ; preds = %for.cond.6
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.end.88
  %71 = load i32, i32* %idx, align 4
  %inc90 = add nsw i32 %71, 1
  store i32 %inc90, i32* %idx, align 4
  br label %for.cond.2

for.end.91:                                       ; preds = %for.cond.2
  %72 = load i32, i32* %matchonly.addr, align 4
  %tobool = icmp ne i32 %72, 0
  br i1 %tobool, label %if.then.92, label %if.end.108

if.then.92:                                       ; preds = %for.end.91
  store i32 0, i32* %k, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.105, %if.then.92
  %73 = load i32, i32* %k, align 4
  %74 = load i32, i32* %mlen.addr, align 4
  %cmp94 = icmp sle i32 %73, %74
  br i1 %cmp94, label %for.body.96, label %for.end.107

for.body.96:                                      ; preds = %for.cond.93
  %75 = load i32, i32* %k, align 4
  %idxprom97 = sext i32 %75 to i64
  %76 = load i32*, i32** %inserts, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %76, i64 %idxprom97
  %77 = load i32, i32* %arrayidx98, align 4
  %cmp99 = icmp sgt i32 %77, 1
  br i1 %cmp99, label %if.then.101, label %if.end.104

if.then.101:                                      ; preds = %for.body.96
  %78 = load i32, i32* %k, align 4
  %idxprom102 = sext i32 %78 to i64
  %79 = load i32*, i32** %inserts, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %79, i64 %idxprom102
  store i32 1, i32* %arrayidx103, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.101, %for.body.96
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.104
  %80 = load i32, i32* %k, align 4
  %inc106 = add nsw i32 %80, 1
  store i32 %inc106, i32* %k, align 4
  br label %for.cond.93

for.end.107:                                      ; preds = %for.cond.93
  br label %if.end.108

if.end.108:                                       ; preds = %for.end.107, %for.end.91
  %81 = load i32, i32* %mlen.addr, align 4
  %add109 = add nsw i32 %81, 1
  %conv110 = sext i32 %add109 to i64
  %mul111 = mul i64 4, %conv110
  %call112 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 453, i64 %mul111)
  %82 = bitcast i8* %call112 to i32*
  store i32* %82, i32** %matmap, align 8
  %83 = load i32*, i32** %matmap, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 -1, i32* %arrayidx113, align 4
  %84 = load i32*, i32** %inserts, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %84, i64 0
  %85 = load i32, i32* %arrayidx114, align 4
  store i32 %85, i32* %alen, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.125, %if.end.108
  %86 = load i32, i32* %k, align 4
  %87 = load i32, i32* %mlen.addr, align 4
  %cmp116 = icmp sle i32 %86, %87
  br i1 %cmp116, label %for.body.118, label %for.end.127

for.body.118:                                     ; preds = %for.cond.115
  %88 = load i32, i32* %alen, align 4
  %89 = load i32, i32* %k, align 4
  %idxprom119 = sext i32 %89 to i64
  %90 = load i32*, i32** %matmap, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %90, i64 %idxprom119
  store i32 %88, i32* %arrayidx120, align 4
  %91 = load i32, i32* %k, align 4
  %idxprom121 = sext i32 %91 to i64
  %92 = load i32*, i32** %inserts, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %92, i64 %idxprom121
  %93 = load i32, i32* %arrayidx122, align 4
  %add123 = add nsw i32 %93, 1
  %94 = load i32, i32* %alen, align 4
  %add124 = add nsw i32 %94, %add123
  store i32 %add124, i32* %alen, align 4
  br label %for.inc.125

for.inc.125:                                      ; preds = %for.body.118
  %95 = load i32, i32* %k, align 4
  %inc126 = add nsw i32 %95, 1
  store i32 %inc126, i32* %k, align 4
  br label %for.cond.115

for.end.127:                                      ; preds = %for.cond.115
  %96 = load i32, i32* %nseq.addr, align 4
  %97 = load i32, i32* %alen, align 4
  %call128 = call %struct.msa_struct* @MSAAlloc(i32 %96, i32 %97)
  store %struct.msa_struct* %call128, %struct.msa_struct** %msa, align 8
  store i32 0, i32* %idx, align 4
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.337, %for.end.127
  %98 = load i32, i32* %idx, align 4
  %99 = load i32, i32* %nseq.addr, align 4
  %cmp130 = icmp slt i32 %98, %99
  br i1 %cmp130, label %for.body.132, label %for.end.339

for.body.132:                                     ; preds = %for.cond.129
  store i32 0, i32* %apos, align 4
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc.141, %for.body.132
  %100 = load i32, i32* %apos, align 4
  %101 = load i32, i32* %alen, align 4
  %cmp134 = icmp slt i32 %100, %101
  br i1 %cmp134, label %for.body.136, label %for.end.143

for.body.136:                                     ; preds = %for.cond.133
  %102 = load i32, i32* %apos, align 4
  %idxprom137 = sext i32 %102 to i64
  %103 = load i32, i32* %idx, align 4
  %idxprom138 = sext i32 %103 to i64
  %104 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %104, i32 0, i32 0
  %105 = load i8**, i8*** %aseq, align 8
  %arrayidx139 = getelementptr inbounds i8*, i8** %105, i64 %idxprom138
  %106 = load i8*, i8** %arrayidx139, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %106, i64 %idxprom137
  store i8 46, i8* %arrayidx140, align 1
  br label %for.inc.141

for.inc.141:                                      ; preds = %for.body.136
  %107 = load i32, i32* %apos, align 4
  %inc142 = add nsw i32 %107, 1
  store i32 %inc142, i32* %apos, align 4
  br label %for.cond.133

for.end.143:                                      ; preds = %for.cond.133
  store i32 1, i32* %k, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.155, %for.end.143
  %108 = load i32, i32* %k, align 4
  %109 = load i32, i32* %mlen.addr, align 4
  %cmp145 = icmp sle i32 %108, %109
  br i1 %cmp145, label %for.body.147, label %for.end.157

for.body.147:                                     ; preds = %for.cond.144
  %110 = load i32, i32* %k, align 4
  %idxprom148 = sext i32 %110 to i64
  %111 = load i32*, i32** %matmap, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %111, i64 %idxprom148
  %112 = load i32, i32* %arrayidx149, align 4
  %idxprom150 = sext i32 %112 to i64
  %113 = load i32, i32* %idx, align 4
  %idxprom151 = sext i32 %113 to i64
  %114 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq152 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %114, i32 0, i32 0
  %115 = load i8**, i8*** %aseq152, align 8
  %arrayidx153 = getelementptr inbounds i8*, i8** %115, i64 %idxprom151
  %116 = load i8*, i8** %arrayidx153, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %116, i64 %idxprom150
  store i8 45, i8* %arrayidx154, align 1
  br label %for.inc.155

for.inc.155:                                      ; preds = %for.body.147
  %117 = load i32, i32* %k, align 4
  %inc156 = add nsw i32 %117, 1
  store i32 %inc156, i32* %k, align 4
  br label %for.cond.144

for.end.157:                                      ; preds = %for.cond.144
  %118 = load i32, i32* %alen, align 4
  %idxprom158 = sext i32 %118 to i64
  %119 = load i32, i32* %idx, align 4
  %idxprom159 = sext i32 %119 to i64
  %120 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq160 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %120, i32 0, i32 0
  %121 = load i8**, i8*** %aseq160, align 8
  %arrayidx161 = getelementptr inbounds i8*, i8** %121, i64 %idxprom159
  %122 = load i8*, i8** %arrayidx161, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %122, i64 %idxprom158
  store i8 0, i8* %arrayidx162, align 1
  store i32 0, i32* %apos, align 4
  store i32 0, i32* %tpos, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.283, %for.end.157
  %123 = load i32, i32* %tpos, align 4
  %124 = load i32, i32* %idx, align 4
  %idxprom164 = sext i32 %124 to i64
  %125 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr.addr, align 8
  %arrayidx165 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %125, i64 %idxprom164
  %126 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx165, align 8
  %tlen166 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %126, i32 0, i32 0
  %127 = load i32, i32* %tlen166, align 4
  %cmp167 = icmp slt i32 %123, %127
  br i1 %cmp167, label %for.body.169, label %for.end.285

for.body.169:                                     ; preds = %for.cond.163
  %128 = load i32, i32* %tpos, align 4
  %idxprom170 = sext i32 %128 to i64
  %129 = load i32, i32* %idx, align 4
  %idxprom171 = sext i32 %129 to i64
  %130 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr.addr, align 8
  %arrayidx172 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %130, i64 %idxprom171
  %131 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx172, align 8
  %statetype173 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %131, i32 0, i32 1
  %132 = load i8*, i8** %statetype173, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %132, i64 %idxprom170
  %133 = load i8, i8* %arrayidx174, align 1
  %conv175 = sext i8 %133 to i32
  store i32 %conv175, i32* %statetype, align 4
  %134 = load i32, i32* %tpos, align 4
  %idxprom176 = sext i32 %134 to i64
  %135 = load i32, i32* %idx, align 4
  %idxprom177 = sext i32 %135 to i64
  %136 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr.addr, align 8
  %arrayidx178 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %136, i64 %idxprom177
  %137 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx178, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %137, i32 0, i32 3
  %138 = load i32*, i32** %pos, align 8
  %arrayidx179 = getelementptr inbounds i32, i32* %138, i64 %idxprom176
  %139 = load i32, i32* %arrayidx179, align 4
  store i32 %139, i32* %rpos, align 4
  %140 = load i32, i32* %tpos, align 4
  %idxprom180 = sext i32 %140 to i64
  %141 = load i32, i32* %idx, align 4
  %idxprom181 = sext i32 %141 to i64
  %142 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr.addr, align 8
  %arrayidx182 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %142, i64 %idxprom181
  %143 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx182, align 8
  %nodeidx183 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %143, i32 0, i32 2
  %144 = load i32*, i32** %nodeidx183, align 8
  %arrayidx184 = getelementptr inbounds i32, i32* %144, i64 %idxprom180
  %145 = load i32, i32* %arrayidx184, align 4
  store i32 %145, i32* %k, align 4
  %146 = load i32, i32* %statetype, align 4
  %cmp185 = icmp eq i32 %146, 1
  br i1 %cmp185, label %if.then.187, label %if.else

if.then.187:                                      ; preds = %for.body.169
  %147 = load i32, i32* %k, align 4
  %idxprom188 = sext i32 %147 to i64
  %148 = load i32*, i32** %matmap, align 8
  %arrayidx189 = getelementptr inbounds i32, i32* %148, i64 %idxprom188
  %149 = load i32, i32* %arrayidx189, align 4
  store i32 %149, i32* %apos, align 4
  %150 = load i32, i32* %rpos, align 4
  %idxprom190 = sext i32 %150 to i64
  %151 = load i32, i32* %idx, align 4
  %idxprom191 = sext i32 %151 to i64
  %152 = load i8**, i8*** %dsq.addr, align 8
  %arrayidx192 = getelementptr inbounds i8*, i8** %152, i64 %idxprom191
  %153 = load i8*, i8** %arrayidx192, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %153, i64 %idxprom190
  %154 = load i8, i8* %arrayidx193, align 1
  %conv194 = sext i8 %154 to i32
  %idxprom195 = sext i32 %conv194 to i64
  %arrayidx196 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i32 0, i64 %idxprom195
  %155 = load i8, i8* %arrayidx196, align 1
  %156 = load i32, i32* %apos, align 4
  %idxprom197 = sext i32 %156 to i64
  %157 = load i32, i32* %idx, align 4
  %idxprom198 = sext i32 %157 to i64
  %158 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq199 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %158, i32 0, i32 0
  %159 = load i8**, i8*** %aseq199, align 8
  %arrayidx200 = getelementptr inbounds i8*, i8** %159, i64 %idxprom198
  %160 = load i8*, i8** %arrayidx200, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %160, i64 %idxprom197
  store i8 %155, i8* %arrayidx201, align 1
  %161 = load i32, i32* %apos, align 4
  %inc202 = add nsw i32 %161, 1
  store i32 %inc202, i32* %apos, align 4
  br label %if.end.282

if.else:                                          ; preds = %for.body.169
  %162 = load i32, i32* %statetype, align 4
  %cmp203 = icmp eq i32 %162, 2
  br i1 %cmp203, label %if.then.205, label %if.else.209

if.then.205:                                      ; preds = %if.else
  %163 = load i32, i32* %k, align 4
  %idxprom206 = sext i32 %163 to i64
  %164 = load i32*, i32** %matmap, align 8
  %arrayidx207 = getelementptr inbounds i32, i32* %164, i64 %idxprom206
  %165 = load i32, i32* %arrayidx207, align 4
  %add208 = add nsw i32 %165, 1
  store i32 %add208, i32* %apos, align 4
  br label %if.end.281

if.else.209:                                      ; preds = %if.else
  %166 = load i32, i32* %statetype, align 4
  %cmp210 = icmp eq i32 %166, 3
  br i1 %cmp210, label %if.then.212, label %if.else.238

if.then.212:                                      ; preds = %if.else.209
  %167 = load i32, i32* %matchonly.addr, align 4
  %tobool213 = icmp ne i32 %167, 0
  br i1 %tobool213, label %if.then.214, label %if.else.220

if.then.214:                                      ; preds = %if.then.212
  %168 = load i32, i32* %apos, align 4
  %idxprom215 = sext i32 %168 to i64
  %169 = load i32, i32* %idx, align 4
  %idxprom216 = sext i32 %169 to i64
  %170 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq217 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %170, i32 0, i32 0
  %171 = load i8**, i8*** %aseq217, align 8
  %arrayidx218 = getelementptr inbounds i8*, i8** %171, i64 %idxprom216
  %172 = load i8*, i8** %arrayidx218, align 8
  %arrayidx219 = getelementptr inbounds i8, i8* %172, i64 %idxprom215
  store i8 42, i8* %arrayidx219, align 1
  br label %if.end.237

if.else.220:                                      ; preds = %if.then.212
  %173 = load i32, i32* %rpos, align 4
  %idxprom221 = sext i32 %173 to i64
  %174 = load i32, i32* %idx, align 4
  %idxprom222 = sext i32 %174 to i64
  %175 = load i8**, i8*** %dsq.addr, align 8
  %arrayidx223 = getelementptr inbounds i8*, i8** %175, i64 %idxprom222
  %176 = load i8*, i8** %arrayidx223, align 8
  %arrayidx224 = getelementptr inbounds i8, i8* %176, i64 %idxprom221
  %177 = load i8, i8* %arrayidx224, align 1
  %conv225 = sext i8 %177 to i32
  %idxprom226 = sext i32 %conv225 to i64
  %arrayidx227 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i32 0, i64 %idxprom226
  %178 = load i8, i8* %arrayidx227, align 1
  %conv228 = sext i8 %178 to i32
  %call229 = call i32 @tolower(i32 %conv228) #4
  %conv230 = trunc i32 %call229 to i8
  %179 = load i32, i32* %apos, align 4
  %idxprom231 = sext i32 %179 to i64
  %180 = load i32, i32* %idx, align 4
  %idxprom232 = sext i32 %180 to i64
  %181 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq233 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %181, i32 0, i32 0
  %182 = load i8**, i8*** %aseq233, align 8
  %arrayidx234 = getelementptr inbounds i8*, i8** %182, i64 %idxprom232
  %183 = load i8*, i8** %arrayidx234, align 8
  %arrayidx235 = getelementptr inbounds i8, i8* %183, i64 %idxprom231
  store i8 %conv230, i8* %arrayidx235, align 1
  %184 = load i32, i32* %apos, align 4
  %inc236 = add nsw i32 %184, 1
  store i32 %inc236, i32* %apos, align 4
  br label %if.end.237

if.end.237:                                       ; preds = %if.else.220, %if.then.214
  br label %if.end.280

if.else.238:                                      ; preds = %if.else.209
  %185 = load i32, i32* %statetype, align 4
  %cmp239 = icmp eq i32 %185, 5
  br i1 %cmp239, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.238
  %186 = load i32, i32* %statetype, align 4
  %cmp241 = icmp eq i32 %186, 8
  br i1 %cmp241, label %land.lhs.true, label %if.else.271

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.else.238
  %187 = load i32, i32* %rpos, align 4
  %cmp243 = icmp sgt i32 %187, 0
  br i1 %cmp243, label %if.then.245, label %if.else.271

if.then.245:                                      ; preds = %land.lhs.true
  %188 = load i32, i32* %matchonly.addr, align 4
  %tobool246 = icmp ne i32 %188, 0
  br i1 %tobool246, label %if.then.247, label %if.else.253

if.then.247:                                      ; preds = %if.then.245
  %189 = load i32, i32* %apos, align 4
  %idxprom248 = sext i32 %189 to i64
  %190 = load i32, i32* %idx, align 4
  %idxprom249 = sext i32 %190 to i64
  %191 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq250 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %191, i32 0, i32 0
  %192 = load i8**, i8*** %aseq250, align 8
  %arrayidx251 = getelementptr inbounds i8*, i8** %192, i64 %idxprom249
  %193 = load i8*, i8** %arrayidx251, align 8
  %arrayidx252 = getelementptr inbounds i8, i8* %193, i64 %idxprom248
  store i8 42, i8* %arrayidx252, align 1
  br label %if.end.270

if.else.253:                                      ; preds = %if.then.245
  %194 = load i32, i32* %rpos, align 4
  %idxprom254 = sext i32 %194 to i64
  %195 = load i32, i32* %idx, align 4
  %idxprom255 = sext i32 %195 to i64
  %196 = load i8**, i8*** %dsq.addr, align 8
  %arrayidx256 = getelementptr inbounds i8*, i8** %196, i64 %idxprom255
  %197 = load i8*, i8** %arrayidx256, align 8
  %arrayidx257 = getelementptr inbounds i8, i8* %197, i64 %idxprom254
  %198 = load i8, i8* %arrayidx257, align 1
  %conv258 = sext i8 %198 to i32
  %idxprom259 = sext i32 %conv258 to i64
  %arrayidx260 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i32 0, i64 %idxprom259
  %199 = load i8, i8* %arrayidx260, align 1
  %conv261 = sext i8 %199 to i32
  %call262 = call i32 @tolower(i32 %conv261) #4
  %conv263 = trunc i32 %call262 to i8
  %200 = load i32, i32* %apos, align 4
  %idxprom264 = sext i32 %200 to i64
  %201 = load i32, i32* %idx, align 4
  %idxprom265 = sext i32 %201 to i64
  %202 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq266 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %202, i32 0, i32 0
  %203 = load i8**, i8*** %aseq266, align 8
  %arrayidx267 = getelementptr inbounds i8*, i8** %203, i64 %idxprom265
  %204 = load i8*, i8** %arrayidx267, align 8
  %arrayidx268 = getelementptr inbounds i8, i8* %204, i64 %idxprom264
  store i8 %conv263, i8* %arrayidx268, align 1
  %205 = load i32, i32* %apos, align 4
  %inc269 = add nsw i32 %205, 1
  store i32 %inc269, i32* %apos, align 4
  br label %if.end.270

if.end.270:                                       ; preds = %if.else.253, %if.then.247
  br label %if.end.279

if.else.271:                                      ; preds = %land.lhs.true, %lor.lhs.false
  %206 = load i32, i32* %statetype, align 4
  %cmp272 = icmp eq i32 %206, 7
  br i1 %cmp272, label %if.then.274, label %if.end.278

if.then.274:                                      ; preds = %if.else.271
  %207 = load i32, i32* %mlen.addr, align 4
  %idxprom275 = sext i32 %207 to i64
  %208 = load i32*, i32** %matmap, align 8
  %arrayidx276 = getelementptr inbounds i32, i32* %208, i64 %idxprom275
  %209 = load i32, i32* %arrayidx276, align 4
  %add277 = add nsw i32 %209, 1
  store i32 %add277, i32* %apos, align 4
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.274, %if.else.271
  br label %if.end.279

if.end.279:                                       ; preds = %if.end.278, %if.end.270
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %if.end.237
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280, %if.then.205
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.281, %if.then.187
  br label %for.inc.283

for.inc.283:                                      ; preds = %if.end.282
  %210 = load i32, i32* %tpos, align 4
  %inc284 = add nsw i32 %210, 1
  store i32 %inc284, i32* %tpos, align 4
  br label %for.cond.163

for.end.285:                                      ; preds = %for.cond.163
  %211 = load i32, i32* %matchonly.addr, align 4
  %tobool286 = icmp ne i32 %211, 0
  br i1 %tobool286, label %if.end.336, label %if.then.287

if.then.287:                                      ; preds = %for.end.285
  %212 = load i32, i32* %idx, align 4
  %idxprom288 = sext i32 %212 to i64
  %213 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq289 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %213, i32 0, i32 0
  %214 = load i8**, i8*** %aseq289, align 8
  %arrayidx290 = getelementptr inbounds i8*, i8** %214, i64 %idxprom288
  %215 = load i8*, i8** %arrayidx290, align 8
  %216 = load i32*, i32** %inserts, align 8
  %arrayidx291 = getelementptr inbounds i32, i32* %216, i64 0
  %217 = load i32, i32* %arrayidx291, align 4
  call void @rightjustify(i8* %215, i32 %217)
  store i32 1, i32* %k, align 4
  br label %for.cond.292

for.cond.292:                                     ; preds = %for.inc.333, %if.then.287
  %218 = load i32, i32* %k, align 4
  %219 = load i32, i32* %mlen.addr, align 4
  %cmp293 = icmp slt i32 %218, %219
  br i1 %cmp293, label %for.body.295, label %for.end.335

for.body.295:                                     ; preds = %for.cond.292
  %220 = load i32, i32* %k, align 4
  %idxprom296 = sext i32 %220 to i64
  %221 = load i32*, i32** %inserts, align 8
  %arrayidx297 = getelementptr inbounds i32, i32* %221, i64 %idxprom296
  %222 = load i32, i32* %arrayidx297, align 4
  %cmp298 = icmp sgt i32 %222, 1
  br i1 %cmp298, label %if.then.300, label %if.end.332

if.then.300:                                      ; preds = %for.body.295
  store i32 0, i32* %nins, align 4
  %223 = load i32, i32* %k, align 4
  %idxprom301 = sext i32 %223 to i64
  %224 = load i32*, i32** %matmap, align 8
  %arrayidx302 = getelementptr inbounds i32, i32* %224, i64 %idxprom301
  %225 = load i32, i32* %arrayidx302, align 4
  %add303 = add nsw i32 %225, 1
  store i32 %add303, i32* %apos, align 4
  br label %for.cond.304

for.cond.304:                                     ; preds = %for.inc.318, %if.then.300
  %226 = load i32, i32* %apos, align 4
  %idxprom305 = sext i32 %226 to i64
  %227 = load i32, i32* %idx, align 4
  %idxprom306 = sext i32 %227 to i64
  %228 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq307 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %228, i32 0, i32 0
  %229 = load i8**, i8*** %aseq307, align 8
  %arrayidx308 = getelementptr inbounds i8*, i8** %229, i64 %idxprom306
  %230 = load i8*, i8** %arrayidx308, align 8
  %arrayidx309 = getelementptr inbounds i8, i8* %230, i64 %idxprom305
  %231 = load i8, i8* %arrayidx309, align 1
  %conv310 = sext i8 %231 to i32
  %idxprom311 = sext i32 %conv310 to i64
  %call312 = call i16** @__ctype_b_loc() #5
  %232 = load i16*, i16** %call312, align 8
  %arrayidx313 = getelementptr inbounds i16, i16* %232, i64 %idxprom311
  %233 = load i16, i16* %arrayidx313, align 2
  %conv314 = zext i16 %233 to i32
  %and = and i32 %conv314, 512
  %tobool315 = icmp ne i32 %and, 0
  br i1 %tobool315, label %for.body.316, label %for.end.320

for.body.316:                                     ; preds = %for.cond.304
  %234 = load i32, i32* %nins, align 4
  %inc317 = add nsw i32 %234, 1
  store i32 %inc317, i32* %nins, align 4
  br label %for.inc.318

for.inc.318:                                      ; preds = %for.body.316
  %235 = load i32, i32* %apos, align 4
  %inc319 = add nsw i32 %235, 1
  store i32 %inc319, i32* %apos, align 4
  br label %for.cond.304

for.end.320:                                      ; preds = %for.cond.304
  %236 = load i32, i32* %nins, align 4
  %div = sdiv i32 %236, 2
  store i32 %div, i32* %nins, align 4
  %237 = load i32, i32* %idx, align 4
  %idxprom321 = sext i32 %237 to i64
  %238 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq322 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %238, i32 0, i32 0
  %239 = load i8**, i8*** %aseq322, align 8
  %arrayidx323 = getelementptr inbounds i8*, i8** %239, i64 %idxprom321
  %240 = load i8*, i8** %arrayidx323, align 8
  %241 = load i32, i32* %k, align 4
  %idxprom324 = sext i32 %241 to i64
  %242 = load i32*, i32** %matmap, align 8
  %arrayidx325 = getelementptr inbounds i32, i32* %242, i64 %idxprom324
  %243 = load i32, i32* %arrayidx325, align 4
  %idx.ext = sext i32 %243 to i64
  %add.ptr = getelementptr inbounds i8, i8* %240, i64 %idx.ext
  %add.ptr326 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %244 = load i32, i32* %nins, align 4
  %idx.ext327 = sext i32 %244 to i64
  %add.ptr328 = getelementptr inbounds i8, i8* %add.ptr326, i64 %idx.ext327
  %245 = load i32, i32* %k, align 4
  %idxprom329 = sext i32 %245 to i64
  %246 = load i32*, i32** %inserts, align 8
  %arrayidx330 = getelementptr inbounds i32, i32* %246, i64 %idxprom329
  %247 = load i32, i32* %arrayidx330, align 4
  %248 = load i32, i32* %nins, align 4
  %sub331 = sub nsw i32 %247, %248
  call void @rightjustify(i8* %add.ptr328, i32 %sub331)
  br label %if.end.332

if.end.332:                                       ; preds = %for.end.320, %for.body.295
  br label %for.inc.333

for.inc.333:                                      ; preds = %if.end.332
  %249 = load i32, i32* %k, align 4
  %inc334 = add nsw i32 %249, 1
  store i32 %inc334, i32* %k, align 4
  br label %for.cond.292

for.end.335:                                      ; preds = %for.cond.292
  br label %if.end.336

if.end.336:                                       ; preds = %for.end.335, %for.end.285
  br label %for.inc.337

for.inc.337:                                      ; preds = %if.end.336
  %250 = load i32, i32* %idx, align 4
  %inc338 = add nsw i32 %250, 1
  store i32 %inc338, i32* %idx, align 4
  br label %for.cond.129

for.end.339:                                      ; preds = %for.cond.129
  %251 = load i32, i32* %nseq.addr, align 4
  %252 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %nseq340 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %252, i32 0, i32 4
  store i32 %251, i32* %nseq340, align 4
  %253 = load i32, i32* %alen, align 4
  %254 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %alen341 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %254, i32 0, i32 3
  store i32 %253, i32* %alen341, align 4
  %call342 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 529, i64 10)
  %255 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %au = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %255, i32 0, i32 10
  store i8* %call342, i8** %au, align 8
  %256 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %au343 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %256, i32 0, i32 10
  %257 = load i8*, i8** %au343, align 8
  %call344 = call i32 (i8*, i8*, ...) @sprintf(i8* %257, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #4
  store i32 0, i32* %idx, align 4
  br label %for.cond.345

for.cond.345:                                     ; preds = %for.inc.428, %for.end.339
  %258 = load i32, i32* %idx, align 4
  %259 = load i32, i32* %nseq.addr, align 4
  %cmp346 = icmp slt i32 %258, %259
  br i1 %cmp346, label %for.body.348, label %for.end.430

for.body.348:                                     ; preds = %for.cond.345
  %260 = load i32, i32* %idx, align 4
  %idxprom349 = sext i32 %260 to i64
  %261 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %arrayidx350 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %261, i64 %idxprom349
  %name = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx350, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %name, i32 0, i32 0
  %call351 = call i8* @sre_strdup(i8* %arraydecay, i32 -1)
  %262 = load i32, i32* %idx, align 4
  %idxprom352 = sext i32 %262 to i64
  %263 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sqname = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %263, i32 0, i32 1
  %264 = load i8**, i8*** %sqname, align 8
  %arrayidx353 = getelementptr inbounds i8*, i8** %264, i64 %idxprom352
  store i8* %call351, i8** %arrayidx353, align 8
  %265 = load i32, i32* %idx, align 4
  %idxprom354 = sext i32 %265 to i64
  %266 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %arrayidx355 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %266, i64 %idxprom354
  %flags = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx355, i32 0, i32 0
  %267 = load i32, i32* %flags, align 4
  %and356 = and i32 %267, 4
  %tobool357 = icmp ne i32 %and356, 0
  br i1 %tobool357, label %if.then.358, label %if.end.362

if.then.358:                                      ; preds = %for.body.348
  %268 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %269 = load i32, i32* %idx, align 4
  %270 = load i32, i32* %idx, align 4
  %idxprom359 = sext i32 %270 to i64
  %271 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %arrayidx360 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %271, i64 %idxprom359
  %acc = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx360, i32 0, i32 3
  %arraydecay361 = getelementptr inbounds [64 x i8], [64 x i8]* %acc, i32 0, i32 0
  call void @MSASetSeqAccession(%struct.msa_struct* %268, i32 %269, i8* %arraydecay361)
  br label %if.end.362

if.end.362:                                       ; preds = %if.then.358, %for.body.348
  %272 = load i32, i32* %idx, align 4
  %idxprom363 = sext i32 %272 to i64
  %273 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %arrayidx364 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %273, i64 %idxprom363
  %flags365 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx364, i32 0, i32 0
  %274 = load i32, i32* %flags365, align 4
  %and366 = and i32 %274, 8
  %tobool367 = icmp ne i32 %and366, 0
  br i1 %tobool367, label %if.then.368, label %if.end.372

if.then.368:                                      ; preds = %if.end.362
  %275 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %276 = load i32, i32* %idx, align 4
  %277 = load i32, i32* %idx, align 4
  %idxprom369 = sext i32 %277 to i64
  %278 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %arrayidx370 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %278, i64 %idxprom369
  %desc = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx370, i32 0, i32 4
  %arraydecay371 = getelementptr inbounds [128 x i8], [128 x i8]* %desc, i32 0, i32 0
  call void @MSASetSeqDescription(%struct.msa_struct* %275, i32 %276, i8* %arraydecay371)
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.368, %if.end.362
  %279 = load i32, i32* %idx, align 4
  %idxprom373 = sext i32 %279 to i64
  %280 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %arrayidx374 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %280, i64 %idxprom373
  %flags375 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx374, i32 0, i32 0
  %281 = load i32, i32* %flags375, align 4
  %and376 = and i32 %281, 512
  %tobool377 = icmp ne i32 %and376, 0
  br i1 %tobool377, label %if.then.378, label %if.end.397

if.then.378:                                      ; preds = %if.end.372
  %282 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %ss = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %282, i32 0, i32 16
  %283 = load i8**, i8*** %ss, align 8
  %cmp379 = icmp eq i8** %283, null
  br i1 %cmp379, label %if.then.381, label %if.end.386

if.then.381:                                      ; preds = %if.then.378
  %284 = load i32, i32* %nseq.addr, align 4
  %conv382 = sext i32 %284 to i64
  %mul383 = mul i64 8, %conv382
  %call384 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 541, i64 %mul383)
  %285 = bitcast i8* %call384 to i8**
  %286 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %ss385 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %286, i32 0, i32 16
  store i8** %285, i8*** %ss385, align 8
  br label %if.end.386

if.end.386:                                       ; preds = %if.then.381, %if.then.378
  %287 = load i32, i32* %idx, align 4
  %idxprom387 = sext i32 %287 to i64
  %288 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq388 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %288, i32 0, i32 0
  %289 = load i8**, i8*** %aseq388, align 8
  %arrayidx389 = getelementptr inbounds i8*, i8** %289, i64 %idxprom387
  %290 = load i8*, i8** %arrayidx389, align 8
  %291 = load i32, i32* %alen, align 4
  %292 = load i32, i32* %idx, align 4
  %idxprom390 = sext i32 %292 to i64
  %293 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %arrayidx391 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %293, i64 %idxprom390
  %ss392 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx391, i32 0, i32 10
  %294 = load i8*, i8** %ss392, align 8
  %295 = load i32, i32* %idx, align 4
  %idxprom393 = sext i32 %295 to i64
  %296 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %ss394 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %296, i32 0, i32 16
  %297 = load i8**, i8*** %ss394, align 8
  %arrayidx395 = getelementptr inbounds i8*, i8** %297, i64 %idxprom393
  %call396 = call i32 @MakeAlignedString(i8* %290, i32 %291, i8* %294, i8** %arrayidx395)
  br label %if.end.397

if.end.397:                                       ; preds = %if.end.386, %if.end.372
  %298 = load i32, i32* %idx, align 4
  %idxprom398 = sext i32 %298 to i64
  %299 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %arrayidx399 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %299, i64 %idxprom398
  %flags400 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx399, i32 0, i32 0
  %300 = load i32, i32* %flags400, align 4
  %and401 = and i32 %300, 1024
  %tobool402 = icmp ne i32 %and401, 0
  br i1 %tobool402, label %if.then.403, label %if.end.422

if.then.403:                                      ; preds = %if.end.397
  %301 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sa = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %301, i32 0, i32 17
  %302 = load i8**, i8*** %sa, align 8
  %cmp404 = icmp eq i8** %302, null
  br i1 %cmp404, label %if.then.406, label %if.end.411

if.then.406:                                      ; preds = %if.then.403
  %303 = load i32, i32* %nseq.addr, align 4
  %conv407 = sext i32 %303 to i64
  %mul408 = mul i64 8, %conv407
  %call409 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 546, i64 %mul408)
  %304 = bitcast i8* %call409 to i8**
  %305 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sa410 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %305, i32 0, i32 17
  store i8** %304, i8*** %sa410, align 8
  br label %if.end.411

if.end.411:                                       ; preds = %if.then.406, %if.then.403
  %306 = load i32, i32* %idx, align 4
  %idxprom412 = sext i32 %306 to i64
  %307 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %aseq413 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %307, i32 0, i32 0
  %308 = load i8**, i8*** %aseq413, align 8
  %arrayidx414 = getelementptr inbounds i8*, i8** %308, i64 %idxprom412
  %309 = load i8*, i8** %arrayidx414, align 8
  %310 = load i32, i32* %alen, align 4
  %311 = load i32, i32* %idx, align 4
  %idxprom415 = sext i32 %311 to i64
  %312 = load %struct.seqinfo_s*, %struct.seqinfo_s** %sqinfo.addr, align 8
  %arrayidx416 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %312, i64 %idxprom415
  %sa417 = getelementptr inbounds %struct.seqinfo_s, %struct.seqinfo_s* %arrayidx416, i32 0, i32 11
  %313 = load i8*, i8** %sa417, align 8
  %314 = load i32, i32* %idx, align 4
  %idxprom418 = sext i32 %314 to i64
  %315 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %sa419 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %315, i32 0, i32 17
  %316 = load i8**, i8*** %sa419, align 8
  %arrayidx420 = getelementptr inbounds i8*, i8** %316, i64 %idxprom418
  %call421 = call i32 @MakeAlignedString(i8* %309, i32 %310, i8* %313, i8** %arrayidx420)
  br label %if.end.422

if.end.422:                                       ; preds = %if.end.411, %if.end.397
  %317 = load i32, i32* %idx, align 4
  %idxprom423 = sext i32 %317 to i64
  %318 = load float*, float** %wgt.addr, align 8
  %arrayidx424 = getelementptr inbounds float, float* %318, i64 %idxprom423
  %319 = load float, float* %arrayidx424, align 4
  %320 = load i32, i32* %idx, align 4
  %idxprom425 = sext i32 %320 to i64
  %321 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %wgt426 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %321, i32 0, i32 2
  %322 = load float*, float** %wgt426, align 8
  %arrayidx427 = getelementptr inbounds float, float* %322, i64 %idxprom425
  store float %319, float* %arrayidx427, align 4
  br label %for.inc.428

for.inc.428:                                      ; preds = %if.end.422
  %323 = load i32, i32* %idx, align 4
  %inc429 = add nsw i32 %323, 1
  store i32 %inc429, i32* %idx, align 4
  br label %for.cond.345

for.end.430:                                      ; preds = %for.cond.345
  %324 = load i32, i32* %alen, align 4
  %add431 = add nsw i32 %324, 1
  %conv432 = sext i32 %add431 to i64
  %mul433 = mul i64 1, %conv432
  %call434 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 555, i64 %mul433)
  %325 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %rf = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %325, i32 0, i32 13
  store i8* %call434, i8** %rf, align 8
  store i32 0, i32* %apos, align 4
  br label %for.cond.435

for.cond.435:                                     ; preds = %for.inc.442, %for.end.430
  %326 = load i32, i32* %apos, align 4
  %327 = load i32, i32* %alen, align 4
  %cmp436 = icmp slt i32 %326, %327
  br i1 %cmp436, label %for.body.438, label %for.end.444

for.body.438:                                     ; preds = %for.cond.435
  %328 = load i32, i32* %apos, align 4
  %idxprom439 = sext i32 %328 to i64
  %329 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %rf440 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %329, i32 0, i32 13
  %330 = load i8*, i8** %rf440, align 8
  %arrayidx441 = getelementptr inbounds i8, i8* %330, i64 %idxprom439
  store i8 46, i8* %arrayidx441, align 1
  br label %for.inc.442

for.inc.442:                                      ; preds = %for.body.438
  %331 = load i32, i32* %apos, align 4
  %inc443 = add nsw i32 %331, 1
  store i32 %inc443, i32* %apos, align 4
  br label %for.cond.435

for.end.444:                                      ; preds = %for.cond.435
  store i32 1, i32* %k, align 4
  br label %for.cond.445

for.cond.445:                                     ; preds = %for.inc.454, %for.end.444
  %332 = load i32, i32* %k, align 4
  %333 = load i32, i32* %mlen.addr, align 4
  %cmp446 = icmp sle i32 %332, %333
  br i1 %cmp446, label %for.body.448, label %for.end.456

for.body.448:                                     ; preds = %for.cond.445
  %334 = load i32, i32* %k, align 4
  %idxprom449 = sext i32 %334 to i64
  %335 = load i32*, i32** %matmap, align 8
  %arrayidx450 = getelementptr inbounds i32, i32* %335, i64 %idxprom449
  %336 = load i32, i32* %arrayidx450, align 4
  %idxprom451 = sext i32 %336 to i64
  %337 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %rf452 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %337, i32 0, i32 13
  %338 = load i8*, i8** %rf452, align 8
  %arrayidx453 = getelementptr inbounds i8, i8* %338, i64 %idxprom451
  store i8 120, i8* %arrayidx453, align 1
  br label %for.inc.454

for.inc.454:                                      ; preds = %for.body.448
  %339 = load i32, i32* %k, align 4
  %inc455 = add nsw i32 %339, 1
  store i32 %inc455, i32* %k, align 4
  br label %for.cond.445

for.end.456:                                      ; preds = %for.cond.445
  %340 = load i32, i32* %alen, align 4
  %idxprom457 = sext i32 %340 to i64
  %341 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  %rf458 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %341, i32 0, i32 13
  %342 = load i8*, i8** %rf458, align 8
  %arrayidx459 = getelementptr inbounds i8, i8* %342, i64 %idxprom457
  store i8 0, i8* %arrayidx459, align 1
  %343 = load i32*, i32** %inserts, align 8
  %344 = bitcast i32* %343 to i8*
  call void @free(i8* %344) #4
  %345 = load i32*, i32** %matmap, align 8
  %346 = bitcast i32* %345 to i8*
  call void @free(i8* %346) #4
  %347 = load %struct.msa_struct*, %struct.msa_struct** %msa, align 8
  ret %struct.msa_struct* %347
}

declare %struct.msa_struct* @MSAAlloc(i32, i32) #1

; Function Attrs: nounwind
declare i32 @tolower(i32) #2

; Function Attrs: nounwind uwtable
define internal void @rightjustify(i8* %s, i32 %n) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %npos = alloca i32, align 4
  %opos = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %npos, align 4
  %1 = load i32, i32* %n.addr, align 4
  %sub1 = sub nsw i32 %1, 1
  store i32 %sub1, i32* %opos, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, i32* %opos, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %opos, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp2 = icmp eq i32 %conv, 32
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %6 = load i32, i32* %opos, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load i8*, i8** %s.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 %idxprom4
  %8 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %8 to i32
  %cmp7 = icmp eq i32 %conv6, 46
  br i1 %cmp7, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %9 = load i32, i32* %opos, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load i8*, i8** %s.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %10, i64 %idxprom10
  %11 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %11 to i32
  %cmp13 = icmp eq i32 %conv12, 95
  br i1 %cmp13, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.9
  %12 = load i32, i32* %opos, align 4
  %idxprom16 = sext i32 %12 to i64
  %13 = load i8*, i8** %s.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %idxprom16
  %14 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %14 to i32
  %cmp19 = icmp eq i32 %conv18, 45
  br i1 %cmp19, label %if.then, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.15
  %15 = load i32, i32* %opos, align 4
  %idxprom22 = sext i32 %15 to i64
  %16 = load i8*, i8** %s.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %16, i64 %idxprom22
  %17 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %17 to i32
  %cmp25 = icmp eq i32 %conv24, 126
  br i1 %cmp25, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.21, %lor.lhs.false.15, %lor.lhs.false.9, %lor.lhs.false, %while.body
  %18 = load i32, i32* %opos, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %opos, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.21
  %19 = load i32, i32* %opos, align 4
  %dec27 = add nsw i32 %19, -1
  store i32 %dec27, i32* %opos, align 4
  %idxprom28 = sext i32 %19 to i64
  %20 = load i8*, i8** %s.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %20, i64 %idxprom28
  %21 = load i8, i8* %arrayidx29, align 1
  %22 = load i32, i32* %npos, align 4
  %dec30 = add nsw i32 %22, -1
  store i32 %dec30, i32* %npos, align 4
  %idxprom31 = sext i32 %22 to i64
  %23 = load i8*, i8** %s.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %23, i64 %idxprom31
  store i8 %21, i8* %arrayidx32, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.33

while.cond.33:                                    ; preds = %while.body.36, %while.end
  %24 = load i32, i32* %npos, align 4
  %cmp34 = icmp sge i32 %24, 0
  br i1 %cmp34, label %while.body.36, label %while.end.40

while.body.36:                                    ; preds = %while.cond.33
  %25 = load i32, i32* %npos, align 4
  %dec37 = add nsw i32 %25, -1
  store i32 %dec37, i32* %npos, align 4
  %idxprom38 = sext i32 %25 to i64
  %26 = load i8*, i8** %s.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %26, i64 %idxprom38
  store i8 46, i8* %arrayidx39, align 1
  br label %while.cond.33

while.end.40:                                     ; preds = %while.cond.33
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i8* @sre_strdup(i8*, i32) #1

declare void @MSASetSeqAccession(%struct.msa_struct*, i32, i8*) #1

declare void @MSASetSeqDescription(%struct.msa_struct*, i32, i8*) #1

declare i32 @MakeAlignedString(i8*, i32, i8*, i8**) #1

declare i32 @Prob2Score(float, float) #1

; Function Attrs: nounwind uwtable
define %struct.fancyali_s* @CreateFancyAli(%struct.p7trace_s* %tr, %struct.plan7_s* %hmm, i8* %dsq, i8* %name) #0 {
entry:
  %tr.addr = alloca %struct.p7trace_s*, align 8
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %dsq.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %ali = alloca %struct.fancyali_s*, align 8
  %tpos = alloca i32, align 4
  %bestsym = alloca i32, align 4
  %mthresh = alloca float, align 4
  store %struct.p7trace_s* %tr, %struct.p7trace_s** %tr.addr, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i8* %dsq, i8** %dsq.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %call = call %struct.fancyali_s* @AllocFancyAli()
  store %struct.fancyali_s* %call, %struct.fancyali_s** %ali, align 8
  %0 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %rfline = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %0, i32 0, i32 0
  store i8* null, i8** %rfline, align 8
  %1 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %csline = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %1, i32 0, i32 1
  store i8* null, i8** %csline, align 8
  %2 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %2, i32 0, i32 0
  %3 = load i32, i32* %tlen, align 4
  %add = add nsw i32 %3, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 1, %conv
  %call1 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 680, i64 %mul)
  %4 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %model = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %4, i32 0, i32 2
  store i8* %call1, i8** %model, align 8
  %5 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen2 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %5, i32 0, i32 0
  %6 = load i32, i32* %tlen2, align 4
  %add3 = add nsw i32 %6, 1
  %conv4 = sext i32 %add3 to i64
  %mul5 = mul i64 1, %conv4
  %call6 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 681, i64 %mul5)
  %7 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %mline = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %7, i32 0, i32 3
  store i8* %call6, i8** %mline, align 8
  %8 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen7 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %8, i32 0, i32 0
  %9 = load i32, i32* %tlen7, align 4
  %add8 = add nsw i32 %9, 1
  %conv9 = sext i32 %add8 to i64
  %mul10 = mul i64 1, %conv9
  %call11 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 682, i64 %mul10)
  %10 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %aseq = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %10, i32 0, i32 4
  store i8* %call11, i8** %aseq, align 8
  %11 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %model12 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %11, i32 0, i32 2
  %12 = load i8*, i8** %model12, align 8
  %13 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen13 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %13, i32 0, i32 0
  %14 = load i32, i32* %tlen13, align 4
  %conv14 = sext i32 %14 to i64
  call void @llvm.memset.p0i8.i64(i8* %12, i8 32, i64 %conv14, i32 1, i1 false)
  %15 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %mline15 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %15, i32 0, i32 3
  %16 = load i8*, i8** %mline15, align 8
  %17 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen16 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %17, i32 0, i32 0
  %18 = load i32, i32* %tlen16, align 4
  %conv17 = sext i32 %18 to i64
  call void @llvm.memset.p0i8.i64(i8* %16, i8 32, i64 %conv17, i32 1, i1 false)
  %19 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %aseq18 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %19, i32 0, i32 4
  %20 = load i8*, i8** %aseq18, align 8
  %21 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen19 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %21, i32 0, i32 0
  %22 = load i32, i32* %tlen19, align 4
  %conv20 = sext i32 %22 to i64
  call void @llvm.memset.p0i8.i64(i8* %20, i8 32, i64 %conv20, i32 1, i1 false)
  %23 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %23, i32 0, i32 47
  %24 = load i32, i32* %flags, align 4
  %and = and i32 %24, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %25 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen21 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %25, i32 0, i32 0
  %26 = load i32, i32* %tlen21, align 4
  %add22 = add nsw i32 %26, 1
  %conv23 = sext i32 %add22 to i64
  %mul24 = mul i64 1, %conv23
  %call25 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 690, i64 %mul24)
  %27 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %rfline26 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %27, i32 0, i32 0
  store i8* %call25, i8** %rfline26, align 8
  %28 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %rfline27 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %28, i32 0, i32 0
  %29 = load i8*, i8** %rfline27, align 8
  %30 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen28 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %30, i32 0, i32 0
  %31 = load i32, i32* %tlen28, align 4
  %conv29 = sext i32 %31 to i64
  call void @llvm.memset.p0i8.i64(i8* %29, i8 32, i64 %conv29, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %32 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags30 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %32, i32 0, i32 47
  %33 = load i32, i32* %flags30, align 4
  %and31 = and i32 %33, 8
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.43

if.then.33:                                       ; preds = %if.end
  %34 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen34 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %34, i32 0, i32 0
  %35 = load i32, i32* %tlen34, align 4
  %add35 = add nsw i32 %35, 1
  %conv36 = sext i32 %add35 to i64
  %mul37 = mul i64 1, %conv36
  %call38 = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 695, i64 %mul37)
  %36 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %csline39 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %36, i32 0, i32 1
  store i8* %call38, i8** %csline39, align 8
  %37 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %csline40 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %37, i32 0, i32 1
  %38 = load i8*, i8** %csline40, align 8
  %39 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen41 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %39, i32 0, i32 0
  %40 = load i32, i32* %tlen41, align 4
  %conv42 = sext i32 %40 to i64
  call void @llvm.memset.p0i8.i64(i8* %38, i8 32, i64 %conv42, i32 1, i1 false)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.33, %if.end
  %41 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %name44 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %41, i32 0, i32 0
  %42 = load i8*, i8** %name44, align 8
  %call45 = call i8* @Strdup(i8* %42)
  %43 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %query = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %43, i32 0, i32 6
  store i8* %call45, i8** %query, align 8
  %44 = load i8*, i8** %name.addr, align 8
  %call46 = call i8* @Strdup(i8* %44)
  %45 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %target = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %45, i32 0, i32 7
  store i8* %call46, i8** %target, align 8
  %46 = load i32, i32* @Alphabet_type, align 4
  %cmp = icmp eq i32 %46, 3
  br i1 %cmp, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %if.end.43
  store float 5.000000e-01, float* %mthresh, align 4
  br label %if.end.49

if.else:                                          ; preds = %if.end.43
  store float 0x3FECCCCCC0000000, float* %mthresh, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.else, %if.then.48
  store i32 0, i32* %tpos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.49
  %47 = load i32, i32* %tpos, align 4
  %48 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen50 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %48, i32 0, i32 0
  %49 = load i32, i32* %tlen50, align 4
  %cmp51 = icmp slt i32 %47, %49
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load i32, i32* %tpos, align 4
  %idxprom = sext i32 %50 to i64
  %51 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %51, i32 0, i32 3
  %52 = load i32*, i32** %pos, align 8
  %arrayidx = getelementptr inbounds i32, i32* %52, i64 %idxprom
  %53 = load i32, i32* %arrayidx, align 4
  %cmp53 = icmp sgt i32 %53, 0
  br i1 %cmp53, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %for.body
  %54 = load i32, i32* %tpos, align 4
  %idxprom56 = sext i32 %54 to i64
  %55 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos57 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %55, i32 0, i32 3
  %56 = load i32*, i32** %pos57, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %56, i64 %idxprom56
  %57 = load i32, i32* %arrayidx58, align 4
  %58 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %sqfrom = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %58, i32 0, i32 8
  store i32 %57, i32* %sqfrom, align 4
  br label %for.end

if.end.59:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %59 = load i32, i32* %tpos, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %tpos, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.55, %for.cond
  %60 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen60 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %60, i32 0, i32 0
  %61 = load i32, i32* %tlen60, align 4
  %sub = sub nsw i32 %61, 1
  store i32 %sub, i32* %tpos, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.75, %for.end
  %62 = load i32, i32* %tpos, align 4
  %cmp62 = icmp sge i32 %62, 0
  br i1 %cmp62, label %for.body.64, label %for.end.76

for.body.64:                                      ; preds = %for.cond.61
  %63 = load i32, i32* %tpos, align 4
  %idxprom65 = sext i32 %63 to i64
  %64 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos66 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %64, i32 0, i32 3
  %65 = load i32*, i32** %pos66, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %65, i64 %idxprom65
  %66 = load i32, i32* %arrayidx67, align 4
  %cmp68 = icmp sgt i32 %66, 0
  br i1 %cmp68, label %if.then.70, label %if.end.74

if.then.70:                                       ; preds = %for.body.64
  %67 = load i32, i32* %tpos, align 4
  %idxprom71 = sext i32 %67 to i64
  %68 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos72 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %68, i32 0, i32 3
  %69 = load i32*, i32** %pos72, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %69, i64 %idxprom71
  %70 = load i32, i32* %arrayidx73, align 4
  %71 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %sqto = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %71, i32 0, i32 9
  store i32 %70, i32* %sqto, align 4
  br label %for.end.76

if.end.74:                                        ; preds = %for.body.64
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74
  %72 = load i32, i32* %tpos, align 4
  %dec = add nsw i32 %72, -1
  store i32 %dec, i32* %tpos, align 4
  br label %for.cond.61

for.end.76:                                       ; preds = %if.then.70, %for.cond.61
  store i32 0, i32* %tpos, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.356, %for.end.76
  %73 = load i32, i32* %tpos, align 4
  %74 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen78 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %74, i32 0, i32 0
  %75 = load i32, i32* %tlen78, align 4
  %cmp79 = icmp slt i32 %73, %75
  br i1 %cmp79, label %for.body.81, label %for.end.358

for.body.81:                                      ; preds = %for.cond.77
  %76 = load i32, i32* %tpos, align 4
  %idxprom82 = sext i32 %76 to i64
  %77 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %77, i32 0, i32 1
  %78 = load i8*, i8** %statetype, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %78, i64 %idxprom82
  %79 = load i8, i8* %arrayidx83, align 1
  %conv84 = sext i8 %79 to i32
  switch i32 %conv84, label %sw.default [
    i32 4, label %sw.bb
    i32 9, label %sw.bb
    i32 5, label %sw.bb.88
    i32 10, label %sw.bb.88
    i32 8, label %sw.bb.88
    i32 6, label %sw.bb.113
    i32 7, label %sw.bb.117
    i32 1, label %sw.bb.121
    i32 2, label %sw.bb.253
    i32 3, label %sw.bb.318
  ]

sw.bb:                                            ; preds = %for.body.81, %for.body.81
  %80 = load i32, i32* %tpos, align 4
  %idxprom85 = sext i32 %80 to i64
  %81 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %model86 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %81, i32 0, i32 2
  %82 = load i8*, i8** %model86, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %82, i64 %idxprom85
  store i8 42, i8* %arrayidx87, align 1
  br label %sw.epilog

sw.bb.88:                                         ; preds = %for.body.81, %for.body.81, %for.body.81
  %83 = load i32, i32* %tpos, align 4
  %idxprom89 = sext i32 %83 to i64
  %84 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %model90 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %84, i32 0, i32 2
  %85 = load i8*, i8** %model90, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %85, i64 %idxprom89
  store i8 45, i8* %arrayidx91, align 1
  %86 = load i32, i32* %tpos, align 4
  %idxprom92 = sext i32 %86 to i64
  %87 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos93 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %87, i32 0, i32 3
  %88 = load i32*, i32** %pos93, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %88, i64 %idxprom92
  %89 = load i32, i32* %arrayidx94, align 4
  %cmp95 = icmp sgt i32 %89, 0
  br i1 %cmp95, label %if.then.97, label %if.end.112

if.then.97:                                       ; preds = %sw.bb.88
  %90 = load i32, i32* %tpos, align 4
  %idxprom98 = sext i32 %90 to i64
  %91 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos99 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %91, i32 0, i32 3
  %92 = load i32*, i32** %pos99, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %92, i64 %idxprom98
  %93 = load i32, i32* %arrayidx100, align 4
  %idxprom101 = sext i32 %93 to i64
  %94 = load i8*, i8** %dsq.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %94, i64 %idxprom101
  %95 = load i8, i8* %arrayidx102, align 1
  %conv103 = sext i8 %95 to i32
  %idxprom104 = sext i32 %conv103 to i64
  %arrayidx105 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i32 0, i64 %idxprom104
  %96 = load i8, i8* %arrayidx105, align 1
  %conv106 = sext i8 %96 to i32
  %call107 = call i32 @tolower(i32 %conv106) #4
  %conv108 = trunc i32 %call107 to i8
  %97 = load i32, i32* %tpos, align 4
  %idxprom109 = sext i32 %97 to i64
  %98 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %aseq110 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %98, i32 0, i32 4
  %99 = load i8*, i8** %aseq110, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %99, i64 %idxprom109
  store i8 %conv108, i8* %arrayidx111, align 1
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.97, %sw.bb.88
  br label %sw.epilog

sw.bb.113:                                        ; preds = %for.body.81
  %100 = load i32, i32* %tpos, align 4
  %idxprom114 = sext i32 %100 to i64
  %101 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %model115 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %101, i32 0, i32 2
  %102 = load i8*, i8** %model115, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %102, i64 %idxprom114
  store i8 62, i8* %arrayidx116, align 1
  br label %sw.epilog

sw.bb.117:                                        ; preds = %for.body.81
  %103 = load i32, i32* %tpos, align 4
  %idxprom118 = sext i32 %103 to i64
  %104 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %model119 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %104, i32 0, i32 2
  %105 = load i8*, i8** %model119, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %105, i64 %idxprom118
  store i8 60, i8* %arrayidx120, align 1
  br label %sw.epilog

sw.bb.121:                                        ; preds = %for.body.81
  %106 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags122 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %106, i32 0, i32 47
  %107 = load i32, i32* %flags122, align 4
  %and123 = and i32 %107, 4
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %if.then.125, label %if.end.133

if.then.125:                                      ; preds = %sw.bb.121
  %108 = load i32, i32* %tpos, align 4
  %idxprom126 = sext i32 %108 to i64
  %109 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %109, i32 0, i32 2
  %110 = load i32*, i32** %nodeidx, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %110, i64 %idxprom126
  %111 = load i32, i32* %arrayidx127, align 4
  %idxprom128 = sext i32 %111 to i64
  %112 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %rf = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %112, i32 0, i32 3
  %113 = load i8*, i8** %rf, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %113, i64 %idxprom128
  %114 = load i8, i8* %arrayidx129, align 1
  %115 = load i32, i32* %tpos, align 4
  %idxprom130 = sext i32 %115 to i64
  %116 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %rfline131 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %116, i32 0, i32 0
  %117 = load i8*, i8** %rfline131, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %117, i64 %idxprom130
  store i8 %114, i8* %arrayidx132, align 1
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.125, %sw.bb.121
  %118 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags134 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %118, i32 0, i32 47
  %119 = load i32, i32* %flags134, align 4
  %and135 = and i32 %119, 8
  %tobool136 = icmp ne i32 %and135, 0
  br i1 %tobool136, label %if.then.137, label %if.end.146

if.then.137:                                      ; preds = %if.end.133
  %120 = load i32, i32* %tpos, align 4
  %idxprom138 = sext i32 %120 to i64
  %121 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx139 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %121, i32 0, i32 2
  %122 = load i32*, i32** %nodeidx139, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %122, i64 %idxprom138
  %123 = load i32, i32* %arrayidx140, align 4
  %idxprom141 = sext i32 %123 to i64
  %124 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %cs = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %124, i32 0, i32 4
  %125 = load i8*, i8** %cs, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %125, i64 %idxprom141
  %126 = load i8, i8* %arrayidx142, align 1
  %127 = load i32, i32* %tpos, align 4
  %idxprom143 = sext i32 %127 to i64
  %128 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %csline144 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %128, i32 0, i32 1
  %129 = load i8*, i8** %csline144, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %129, i64 %idxprom143
  store i8 %126, i8* %arrayidx145, align 1
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.137, %if.end.133
  %130 = load i32, i32* %tpos, align 4
  %idxprom147 = sext i32 %130 to i64
  %131 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx148 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %131, i32 0, i32 2
  %132 = load i32*, i32** %nodeidx148, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %132, i64 %idxprom147
  %133 = load i32, i32* %arrayidx149, align 4
  %idxprom150 = sext i32 %133 to i64
  %134 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %134, i32 0, i32 22
  %135 = load float**, float*** %mat, align 8
  %arrayidx151 = getelementptr inbounds float*, float** %135, i64 %idxprom150
  %136 = load float*, float** %arrayidx151, align 8
  %137 = load i32, i32* @Alphabet_size, align 4
  %call152 = call i32 @FArgMax(float* %136, i32 %137)
  store i32 %call152, i32* %bestsym, align 4
  %138 = load i32, i32* %bestsym, align 4
  %idxprom153 = sext i32 %138 to i64
  %arrayidx154 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i32 0, i64 %idxprom153
  %139 = load i8, i8* %arrayidx154, align 1
  %140 = load i32, i32* %tpos, align 4
  %idxprom155 = sext i32 %140 to i64
  %141 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %model156 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %141, i32 0, i32 2
  %142 = load i8*, i8** %model156, align 8
  %arrayidx157 = getelementptr inbounds i8, i8* %142, i64 %idxprom155
  store i8 %139, i8* %arrayidx157, align 1
  %143 = load i32, i32* %bestsym, align 4
  %idxprom158 = sext i32 %143 to i64
  %144 = load i32, i32* %tpos, align 4
  %idxprom159 = sext i32 %144 to i64
  %145 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx160 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %145, i32 0, i32 2
  %146 = load i32*, i32** %nodeidx160, align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %146, i64 %idxprom159
  %147 = load i32, i32* %arrayidx161, align 4
  %idxprom162 = sext i32 %147 to i64
  %148 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat163 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %148, i32 0, i32 22
  %149 = load float**, float*** %mat163, align 8
  %arrayidx164 = getelementptr inbounds float*, float** %149, i64 %idxprom162
  %150 = load float*, float** %arrayidx164, align 8
  %arrayidx165 = getelementptr inbounds float, float* %150, i64 %idxprom158
  %151 = load float, float* %arrayidx165, align 4
  %152 = load float, float* %mthresh, align 4
  %cmp166 = fcmp olt float %151, %152
  br i1 %cmp166, label %if.then.168, label %if.end.178

if.then.168:                                      ; preds = %if.end.146
  %153 = load i32, i32* %tpos, align 4
  %idxprom169 = sext i32 %153 to i64
  %154 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %model170 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %154, i32 0, i32 2
  %155 = load i8*, i8** %model170, align 8
  %arrayidx171 = getelementptr inbounds i8, i8* %155, i64 %idxprom169
  %156 = load i8, i8* %arrayidx171, align 1
  %conv172 = sext i8 %156 to i32
  %call173 = call i32 @tolower(i32 %conv172) #4
  %conv174 = trunc i32 %call173 to i8
  %157 = load i32, i32* %tpos, align 4
  %idxprom175 = sext i32 %157 to i64
  %158 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %model176 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %158, i32 0, i32 2
  %159 = load i8*, i8** %model176, align 8
  %arrayidx177 = getelementptr inbounds i8, i8* %159, i64 %idxprom175
  store i8 %conv174, i8* %arrayidx177, align 1
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.168, %if.end.146
  %160 = load i32, i32* %tpos, align 4
  %idxprom179 = sext i32 %160 to i64
  %161 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos180 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %161, i32 0, i32 3
  %162 = load i32*, i32** %pos180, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %162, i64 %idxprom179
  %163 = load i32, i32* %arrayidx181, align 4
  %idxprom182 = sext i32 %163 to i64
  %164 = load i8*, i8** %dsq.addr, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %164, i64 %idxprom182
  %165 = load i8, i8* %arrayidx183, align 1
  %conv184 = sext i8 %165 to i32
  %166 = load i32, i32* %bestsym, align 4
  %cmp185 = icmp eq i32 %conv184, %166
  br i1 %cmp185, label %if.then.187, label %if.else.220

if.then.187:                                      ; preds = %if.end.178
  %167 = load i32, i32* %tpos, align 4
  %idxprom188 = sext i32 %167 to i64
  %168 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos189 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %168, i32 0, i32 3
  %169 = load i32*, i32** %pos189, align 8
  %arrayidx190 = getelementptr inbounds i32, i32* %169, i64 %idxprom188
  %170 = load i32, i32* %arrayidx190, align 4
  %idxprom191 = sext i32 %170 to i64
  %171 = load i8*, i8** %dsq.addr, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %171, i64 %idxprom191
  %172 = load i8, i8* %arrayidx192, align 1
  %conv193 = sext i8 %172 to i32
  %idxprom194 = sext i32 %conv193 to i64
  %arrayidx195 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i32 0, i64 %idxprom194
  %173 = load i8, i8* %arrayidx195, align 1
  %174 = load i32, i32* %tpos, align 4
  %idxprom196 = sext i32 %174 to i64
  %175 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %mline197 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %175, i32 0, i32 3
  %176 = load i8*, i8** %mline197, align 8
  %arrayidx198 = getelementptr inbounds i8, i8* %176, i64 %idxprom196
  store i8 %173, i8* %arrayidx198, align 1
  %177 = load i32, i32* %bestsym, align 4
  %idxprom199 = sext i32 %177 to i64
  %178 = load i32, i32* %tpos, align 4
  %idxprom200 = sext i32 %178 to i64
  %179 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx201 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %179, i32 0, i32 2
  %180 = load i32*, i32** %nodeidx201, align 8
  %arrayidx202 = getelementptr inbounds i32, i32* %180, i64 %idxprom200
  %181 = load i32, i32* %arrayidx202, align 4
  %idxprom203 = sext i32 %181 to i64
  %182 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat204 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %182, i32 0, i32 22
  %183 = load float**, float*** %mat204, align 8
  %arrayidx205 = getelementptr inbounds float*, float** %183, i64 %idxprom203
  %184 = load float*, float** %arrayidx205, align 8
  %arrayidx206 = getelementptr inbounds float, float* %184, i64 %idxprom199
  %185 = load float, float* %arrayidx206, align 4
  %186 = load float, float* %mthresh, align 4
  %cmp207 = fcmp olt float %185, %186
  br i1 %cmp207, label %if.then.209, label %if.end.219

if.then.209:                                      ; preds = %if.then.187
  %187 = load i32, i32* %tpos, align 4
  %idxprom210 = sext i32 %187 to i64
  %188 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %mline211 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %188, i32 0, i32 3
  %189 = load i8*, i8** %mline211, align 8
  %arrayidx212 = getelementptr inbounds i8, i8* %189, i64 %idxprom210
  %190 = load i8, i8* %arrayidx212, align 1
  %conv213 = sext i8 %190 to i32
  %call214 = call i32 @tolower(i32 %conv213) #4
  %conv215 = trunc i32 %call214 to i8
  %191 = load i32, i32* %tpos, align 4
  %idxprom216 = sext i32 %191 to i64
  %192 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %mline217 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %192, i32 0, i32 3
  %193 = load i8*, i8** %mline217, align 8
  %arrayidx218 = getelementptr inbounds i8, i8* %193, i64 %idxprom216
  store i8 %conv215, i8* %arrayidx218, align 1
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.209, %if.then.187
  br label %if.end.241

if.else.220:                                      ; preds = %if.end.178
  %194 = load i32, i32* %tpos, align 4
  %idxprom221 = sext i32 %194 to i64
  %195 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx222 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %195, i32 0, i32 2
  %196 = load i32*, i32** %nodeidx222, align 8
  %arrayidx223 = getelementptr inbounds i32, i32* %196, i64 %idxprom221
  %197 = load i32, i32* %arrayidx223, align 4
  %idxprom224 = sext i32 %197 to i64
  %198 = load i32, i32* %tpos, align 4
  %idxprom225 = sext i32 %198 to i64
  %199 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos226 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %199, i32 0, i32 3
  %200 = load i32*, i32** %pos226, align 8
  %arrayidx227 = getelementptr inbounds i32, i32* %200, i64 %idxprom225
  %201 = load i32, i32* %arrayidx227, align 4
  %idxprom228 = sext i32 %201 to i64
  %202 = load i8*, i8** %dsq.addr, align 8
  %arrayidx229 = getelementptr inbounds i8, i8* %202, i64 %idxprom228
  %203 = load i8, i8* %arrayidx229, align 1
  %conv230 = sext i8 %203 to i32
  %idxprom231 = sext i32 %conv230 to i64
  %204 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %204, i32 0, i32 31
  %205 = load i32**, i32*** %msc, align 8
  %arrayidx232 = getelementptr inbounds i32*, i32** %205, i64 %idxprom231
  %206 = load i32*, i32** %arrayidx232, align 8
  %arrayidx233 = getelementptr inbounds i32, i32* %206, i64 %idxprom224
  %207 = load i32, i32* %arrayidx233, align 4
  %cmp234 = icmp sgt i32 %207, 0
  br i1 %cmp234, label %if.then.236, label %if.end.240

if.then.236:                                      ; preds = %if.else.220
  %208 = load i32, i32* %tpos, align 4
  %idxprom237 = sext i32 %208 to i64
  %209 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %mline238 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %209, i32 0, i32 3
  %210 = load i8*, i8** %mline238, align 8
  %arrayidx239 = getelementptr inbounds i8, i8* %210, i64 %idxprom237
  store i8 43, i8* %arrayidx239, align 1
  br label %if.end.240

if.end.240:                                       ; preds = %if.then.236, %if.else.220
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.end.219
  %211 = load i32, i32* %tpos, align 4
  %idxprom242 = sext i32 %211 to i64
  %212 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos243 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %212, i32 0, i32 3
  %213 = load i32*, i32** %pos243, align 8
  %arrayidx244 = getelementptr inbounds i32, i32* %213, i64 %idxprom242
  %214 = load i32, i32* %arrayidx244, align 4
  %idxprom245 = sext i32 %214 to i64
  %215 = load i8*, i8** %dsq.addr, align 8
  %arrayidx246 = getelementptr inbounds i8, i8* %215, i64 %idxprom245
  %216 = load i8, i8* %arrayidx246, align 1
  %conv247 = sext i8 %216 to i32
  %idxprom248 = sext i32 %conv247 to i64
  %arrayidx249 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i32 0, i64 %idxprom248
  %217 = load i8, i8* %arrayidx249, align 1
  %218 = load i32, i32* %tpos, align 4
  %idxprom250 = sext i32 %218 to i64
  %219 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %aseq251 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %219, i32 0, i32 4
  %220 = load i8*, i8** %aseq251, align 8
  %arrayidx252 = getelementptr inbounds i8, i8* %220, i64 %idxprom250
  store i8 %217, i8* %arrayidx252, align 1
  br label %sw.epilog

sw.bb.253:                                        ; preds = %for.body.81
  %221 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags254 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %221, i32 0, i32 47
  %222 = load i32, i32* %flags254, align 4
  %and255 = and i32 %222, 4
  %tobool256 = icmp ne i32 %and255, 0
  br i1 %tobool256, label %if.then.257, label %if.end.267

if.then.257:                                      ; preds = %sw.bb.253
  %223 = load i32, i32* %tpos, align 4
  %idxprom258 = sext i32 %223 to i64
  %224 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx259 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %224, i32 0, i32 2
  %225 = load i32*, i32** %nodeidx259, align 8
  %arrayidx260 = getelementptr inbounds i32, i32* %225, i64 %idxprom258
  %226 = load i32, i32* %arrayidx260, align 4
  %idxprom261 = sext i32 %226 to i64
  %227 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %rf262 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %227, i32 0, i32 3
  %228 = load i8*, i8** %rf262, align 8
  %arrayidx263 = getelementptr inbounds i8, i8* %228, i64 %idxprom261
  %229 = load i8, i8* %arrayidx263, align 1
  %230 = load i32, i32* %tpos, align 4
  %idxprom264 = sext i32 %230 to i64
  %231 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %rfline265 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %231, i32 0, i32 0
  %232 = load i8*, i8** %rfline265, align 8
  %arrayidx266 = getelementptr inbounds i8, i8* %232, i64 %idxprom264
  store i8 %229, i8* %arrayidx266, align 1
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.257, %sw.bb.253
  %233 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags268 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %233, i32 0, i32 47
  %234 = load i32, i32* %flags268, align 4
  %and269 = and i32 %234, 8
  %tobool270 = icmp ne i32 %and269, 0
  br i1 %tobool270, label %if.then.271, label %if.end.281

if.then.271:                                      ; preds = %if.end.267
  %235 = load i32, i32* %tpos, align 4
  %idxprom272 = sext i32 %235 to i64
  %236 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx273 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %236, i32 0, i32 2
  %237 = load i32*, i32** %nodeidx273, align 8
  %arrayidx274 = getelementptr inbounds i32, i32* %237, i64 %idxprom272
  %238 = load i32, i32* %arrayidx274, align 4
  %idxprom275 = sext i32 %238 to i64
  %239 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %cs276 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %239, i32 0, i32 4
  %240 = load i8*, i8** %cs276, align 8
  %arrayidx277 = getelementptr inbounds i8, i8* %240, i64 %idxprom275
  %241 = load i8, i8* %arrayidx277, align 1
  %242 = load i32, i32* %tpos, align 4
  %idxprom278 = sext i32 %242 to i64
  %243 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %csline279 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %243, i32 0, i32 1
  %244 = load i8*, i8** %csline279, align 8
  %arrayidx280 = getelementptr inbounds i8, i8* %244, i64 %idxprom278
  store i8 %241, i8* %arrayidx280, align 1
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.271, %if.end.267
  %245 = load i32, i32* %tpos, align 4
  %idxprom282 = sext i32 %245 to i64
  %246 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx283 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %246, i32 0, i32 2
  %247 = load i32*, i32** %nodeidx283, align 8
  %arrayidx284 = getelementptr inbounds i32, i32* %247, i64 %idxprom282
  %248 = load i32, i32* %arrayidx284, align 4
  %idxprom285 = sext i32 %248 to i64
  %249 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat286 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %249, i32 0, i32 22
  %250 = load float**, float*** %mat286, align 8
  %arrayidx287 = getelementptr inbounds float*, float** %250, i64 %idxprom285
  %251 = load float*, float** %arrayidx287, align 8
  %252 = load i32, i32* @Alphabet_size, align 4
  %call288 = call i32 @FArgMax(float* %251, i32 %252)
  store i32 %call288, i32* %bestsym, align 4
  %253 = load i32, i32* %bestsym, align 4
  %idxprom289 = sext i32 %253 to i64
  %arrayidx290 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i32 0, i64 %idxprom289
  %254 = load i8, i8* %arrayidx290, align 1
  %255 = load i32, i32* %tpos, align 4
  %idxprom291 = sext i32 %255 to i64
  %256 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %model292 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %256, i32 0, i32 2
  %257 = load i8*, i8** %model292, align 8
  %arrayidx293 = getelementptr inbounds i8, i8* %257, i64 %idxprom291
  store i8 %254, i8* %arrayidx293, align 1
  %258 = load i32, i32* %bestsym, align 4
  %idxprom294 = sext i32 %258 to i64
  %259 = load i32, i32* %tpos, align 4
  %idxprom295 = sext i32 %259 to i64
  %260 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx296 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %260, i32 0, i32 2
  %261 = load i32*, i32** %nodeidx296, align 8
  %arrayidx297 = getelementptr inbounds i32, i32* %261, i64 %idxprom295
  %262 = load i32, i32* %arrayidx297, align 4
  %idxprom298 = sext i32 %262 to i64
  %263 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat299 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %263, i32 0, i32 22
  %264 = load float**, float*** %mat299, align 8
  %arrayidx300 = getelementptr inbounds float*, float** %264, i64 %idxprom298
  %265 = load float*, float** %arrayidx300, align 8
  %arrayidx301 = getelementptr inbounds float, float* %265, i64 %idxprom294
  %266 = load float, float* %arrayidx301, align 4
  %267 = load float, float* %mthresh, align 4
  %cmp302 = fcmp olt float %266, %267
  br i1 %cmp302, label %if.then.304, label %if.end.314

if.then.304:                                      ; preds = %if.end.281
  %268 = load i32, i32* %tpos, align 4
  %idxprom305 = sext i32 %268 to i64
  %269 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %model306 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %269, i32 0, i32 2
  %270 = load i8*, i8** %model306, align 8
  %arrayidx307 = getelementptr inbounds i8, i8* %270, i64 %idxprom305
  %271 = load i8, i8* %arrayidx307, align 1
  %conv308 = sext i8 %271 to i32
  %call309 = call i32 @tolower(i32 %conv308) #4
  %conv310 = trunc i32 %call309 to i8
  %272 = load i32, i32* %tpos, align 4
  %idxprom311 = sext i32 %272 to i64
  %273 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %model312 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %273, i32 0, i32 2
  %274 = load i8*, i8** %model312, align 8
  %arrayidx313 = getelementptr inbounds i8, i8* %274, i64 %idxprom311
  store i8 %conv310, i8* %arrayidx313, align 1
  br label %if.end.314

if.end.314:                                       ; preds = %if.then.304, %if.end.281
  %275 = load i32, i32* %tpos, align 4
  %idxprom315 = sext i32 %275 to i64
  %276 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %aseq316 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %276, i32 0, i32 4
  %277 = load i8*, i8** %aseq316, align 8
  %arrayidx317 = getelementptr inbounds i8, i8* %277, i64 %idxprom315
  store i8 45, i8* %arrayidx317, align 1
  br label %sw.epilog

sw.bb.318:                                        ; preds = %for.body.81
  %278 = load i32, i32* %tpos, align 4
  %idxprom319 = sext i32 %278 to i64
  %279 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %model320 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %279, i32 0, i32 2
  %280 = load i8*, i8** %model320, align 8
  %arrayidx321 = getelementptr inbounds i8, i8* %280, i64 %idxprom319
  store i8 46, i8* %arrayidx321, align 1
  %281 = load i32, i32* %tpos, align 4
  %idxprom322 = sext i32 %281 to i64
  %282 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx323 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %282, i32 0, i32 2
  %283 = load i32*, i32** %nodeidx323, align 8
  %arrayidx324 = getelementptr inbounds i32, i32* %283, i64 %idxprom322
  %284 = load i32, i32* %arrayidx324, align 4
  %idxprom325 = sext i32 %284 to i64
  %285 = load i32, i32* %tpos, align 4
  %idxprom326 = sext i32 %285 to i64
  %286 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos327 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %286, i32 0, i32 3
  %287 = load i32*, i32** %pos327, align 8
  %arrayidx328 = getelementptr inbounds i32, i32* %287, i64 %idxprom326
  %288 = load i32, i32* %arrayidx328, align 4
  %idxprom329 = sext i32 %288 to i64
  %289 = load i8*, i8** %dsq.addr, align 8
  %arrayidx330 = getelementptr inbounds i8, i8* %289, i64 %idxprom329
  %290 = load i8, i8* %arrayidx330, align 1
  %conv331 = sext i8 %290 to i32
  %idxprom332 = sext i32 %conv331 to i64
  %291 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %291, i32 0, i32 32
  %292 = load i32**, i32*** %isc, align 8
  %arrayidx333 = getelementptr inbounds i32*, i32** %292, i64 %idxprom332
  %293 = load i32*, i32** %arrayidx333, align 8
  %arrayidx334 = getelementptr inbounds i32, i32* %293, i64 %idxprom325
  %294 = load i32, i32* %arrayidx334, align 4
  %cmp335 = icmp sgt i32 %294, 0
  br i1 %cmp335, label %if.then.337, label %if.end.341

if.then.337:                                      ; preds = %sw.bb.318
  %295 = load i32, i32* %tpos, align 4
  %idxprom338 = sext i32 %295 to i64
  %296 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %mline339 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %296, i32 0, i32 3
  %297 = load i8*, i8** %mline339, align 8
  %arrayidx340 = getelementptr inbounds i8, i8* %297, i64 %idxprom338
  store i8 43, i8* %arrayidx340, align 1
  br label %if.end.341

if.end.341:                                       ; preds = %if.then.337, %sw.bb.318
  %298 = load i32, i32* %tpos, align 4
  %idxprom342 = sext i32 %298 to i64
  %299 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos343 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %299, i32 0, i32 3
  %300 = load i32*, i32** %pos343, align 8
  %arrayidx344 = getelementptr inbounds i32, i32* %300, i64 %idxprom342
  %301 = load i32, i32* %arrayidx344, align 4
  %idxprom345 = sext i32 %301 to i64
  %302 = load i8*, i8** %dsq.addr, align 8
  %arrayidx346 = getelementptr inbounds i8, i8* %302, i64 %idxprom345
  %303 = load i8, i8* %arrayidx346, align 1
  %conv347 = sext i8 %303 to i32
  %idxprom348 = sext i32 %conv347 to i64
  %arrayidx349 = getelementptr inbounds [25 x i8], [25 x i8]* @Alphabet, i32 0, i64 %idxprom348
  %304 = load i8, i8* %arrayidx349, align 1
  %conv350 = sext i8 %304 to i32
  %call351 = call i32 @tolower(i32 %conv350) #4
  %conv352 = trunc i32 %call351 to i8
  %305 = load i32, i32* %tpos, align 4
  %idxprom353 = sext i32 %305 to i64
  %306 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %aseq354 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %306, i32 0, i32 4
  %307 = load i8*, i8** %aseq354, align 8
  %arrayidx355 = getelementptr inbounds i8, i8* %307, i64 %idxprom353
  store i8 %conv352, i8* %arrayidx355, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.81
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.341, %if.end.314, %if.end.241, %sw.bb.117, %sw.bb.113, %if.end.112, %sw.bb
  br label %for.inc.356

for.inc.356:                                      ; preds = %sw.epilog
  %308 = load i32, i32* %tpos, align 4
  %inc357 = add nsw i32 %308, 1
  store i32 %inc357, i32* %tpos, align 4
  br label %for.cond.77

for.end.358:                                      ; preds = %for.cond.77
  %309 = load i32, i32* %tpos, align 4
  %310 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %len = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %310, i32 0, i32 5
  store i32 %309, i32* %len, align 4
  %311 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags359 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %311, i32 0, i32 47
  %312 = load i32, i32* %flags359, align 4
  %and360 = and i32 %312, 4
  %tobool361 = icmp ne i32 %and360, 0
  br i1 %tobool361, label %if.then.362, label %if.end.366

if.then.362:                                      ; preds = %for.end.358
  %313 = load i32, i32* %tpos, align 4
  %idxprom363 = sext i32 %313 to i64
  %314 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %rfline364 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %314, i32 0, i32 0
  %315 = load i8*, i8** %rfline364, align 8
  %arrayidx365 = getelementptr inbounds i8, i8* %315, i64 %idxprom363
  store i8 0, i8* %arrayidx365, align 1
  br label %if.end.366

if.end.366:                                       ; preds = %if.then.362, %for.end.358
  %316 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags367 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %316, i32 0, i32 47
  %317 = load i32, i32* %flags367, align 4
  %and368 = and i32 %317, 8
  %tobool369 = icmp ne i32 %and368, 0
  br i1 %tobool369, label %if.then.370, label %if.end.374

if.then.370:                                      ; preds = %if.end.366
  %318 = load i32, i32* %tpos, align 4
  %idxprom371 = sext i32 %318 to i64
  %319 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %csline372 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %319, i32 0, i32 1
  %320 = load i8*, i8** %csline372, align 8
  %arrayidx373 = getelementptr inbounds i8, i8* %320, i64 %idxprom371
  store i8 0, i8* %arrayidx373, align 1
  br label %if.end.374

if.end.374:                                       ; preds = %if.then.370, %if.end.366
  %321 = load i32, i32* %tpos, align 4
  %idxprom375 = sext i32 %321 to i64
  %322 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %model376 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %322, i32 0, i32 2
  %323 = load i8*, i8** %model376, align 8
  %arrayidx377 = getelementptr inbounds i8, i8* %323, i64 %idxprom375
  store i8 0, i8* %arrayidx377, align 1
  %324 = load i32, i32* %tpos, align 4
  %idxprom378 = sext i32 %324 to i64
  %325 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %mline379 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %325, i32 0, i32 3
  %326 = load i8*, i8** %mline379, align 8
  %arrayidx380 = getelementptr inbounds i8, i8* %326, i64 %idxprom378
  store i8 0, i8* %arrayidx380, align 1
  %327 = load i32, i32* %tpos, align 4
  %idxprom381 = sext i32 %327 to i64
  %328 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  %aseq382 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %328, i32 0, i32 4
  %329 = load i8*, i8** %aseq382, align 8
  %arrayidx383 = getelementptr inbounds i8, i8* %329, i64 %idxprom381
  store i8 0, i8* %arrayidx383, align 1
  %330 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  ret %struct.fancyali_s* %330
}

declare %struct.fancyali_s* @AllocFancyAli() #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare i8* @Strdup(i8*) #1

declare i32 @FArgMax(float*, i32) #1

; Function Attrs: nounwind uwtable
define void @PrintFancyAli(%struct._IO_FILE* %fp, %struct.fancyali_s* %ali) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %ali.addr = alloca %struct.fancyali_s*, align 8
  %buffer = alloca [51 x i8], align 16
  %starti = alloca i32, align 4
  %endi = alloca i32, align 4
  %pos = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.fancyali_s* %ali, %struct.fancyali_s** %ali.addr, align 8
  %arrayidx = getelementptr inbounds [51 x i8], [51 x i8]* %buffer, i32 0, i64 50
  store i8 0, i8* %arrayidx, align 1
  %0 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %sqfrom = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %0, i32 0, i32 8
  %1 = load i32, i32* %sqfrom, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %endi, align 4
  store i32 0, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.102, %entry
  %2 = load i32, i32* %pos, align 4
  %3 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %len = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %3, i32 0, i32 5
  %4 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end.104

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %endi, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, i32* %starti, align 4
  %6 = load i32, i32* %pos, align 4
  store i32 %6, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %aseq = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %8, i32 0, i32 4
  %9 = load i8*, i8** %aseq, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %10 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.1
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %pos, align 4
  %add5 = add nsw i32 %12, 50
  %cmp6 = icmp slt i32 %11, %add5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.1
  %13 = phi i1 [ false, %for.cond.1 ], [ %cmp6, %land.rhs ]
  br i1 %13, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %land.end
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %aseq10 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %15, i32 0, i32 4
  %16 = load i8*, i8** %aseq10, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %16, i64 %idxprom9
  %17 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %17 to i32
  %cmp13 = icmp eq i32 %conv12, 32
  br i1 %cmp13, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.8
  %18 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %18 to i64
  %19 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %aseq16 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %19, i32 0, i32 4
  %20 = load i8*, i8** %aseq16, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %20, i64 %idxprom15
  %21 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %21 to i32
  %cmp19 = icmp eq i32 %conv18, 46
  br i1 %cmp19, label %if.end, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false
  %22 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %22 to i64
  %23 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %aseq23 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %23, i32 0, i32 4
  %24 = load i8*, i8** %aseq23, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %24, i64 %idxprom22
  %25 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %25 to i32
  %cmp26 = icmp eq i32 %conv25, 95
  br i1 %cmp26, label %if.end, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.21
  %26 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %26 to i64
  %27 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %aseq30 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %27, i32 0, i32 4
  %28 = load i8*, i8** %aseq30, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %28, i64 %idxprom29
  %29 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %29 to i32
  %cmp33 = icmp eq i32 %conv32, 45
  br i1 %cmp33, label %if.end, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %lor.lhs.false.28
  %30 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %30 to i64
  %31 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %aseq37 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %31, i32 0, i32 4
  %32 = load i8*, i8** %aseq37, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %32, i64 %idxprom36
  %33 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %33 to i32
  %cmp40 = icmp eq i32 %conv39, 126
  br i1 %cmp40, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.35
  %34 = load i32, i32* %endi, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %endi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.35, %lor.lhs.false.28, %lor.lhs.false.21, %lor.lhs.false, %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %35 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %35, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %land.end
  %36 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %csline = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %36, i32 0, i32 1
  %37 = load i8*, i8** %csline, align 8
  %cmp43 = icmp ne i8* %37, null
  br i1 %cmp43, label %if.then.45, label %if.end.49

if.then.45:                                       ; preds = %for.end
  %arraydecay = getelementptr inbounds [51 x i8], [51 x i8]* %buffer, i32 0, i32 0
  %38 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %csline46 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %38, i32 0, i32 1
  %39 = load i8*, i8** %csline46, align 8
  %40 = load i32, i32* %pos, align 4
  %idx.ext = sext i32 %40 to i64
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %idx.ext
  %call = call i8* @strncpy(i8* %arraydecay, i8* %add.ptr, i64 50) #4
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay47 = getelementptr inbounds [51 x i8], [51 x i8]* %buffer, i32 0, i32 0
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %arraydecay47)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.45, %for.end
  %42 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %rfline = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %42, i32 0, i32 0
  %43 = load i8*, i8** %rfline, align 8
  %cmp50 = icmp ne i8* %43, null
  br i1 %cmp50, label %if.then.52, label %if.end.60

if.then.52:                                       ; preds = %if.end.49
  %arraydecay53 = getelementptr inbounds [51 x i8], [51 x i8]* %buffer, i32 0, i32 0
  %44 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %rfline54 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %44, i32 0, i32 0
  %45 = load i8*, i8** %rfline54, align 8
  %46 = load i32, i32* %pos, align 4
  %idx.ext55 = sext i32 %46 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %45, i64 %idx.ext55
  %call57 = call i8* @strncpy(i8* %arraydecay53, i8* %add.ptr56, i64 50) #4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay58 = getelementptr inbounds [51 x i8], [51 x i8]* %buffer, i32 0, i32 0
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* %arraydecay58)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.52, %if.end.49
  %48 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %model = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %48, i32 0, i32 2
  %49 = load i8*, i8** %model, align 8
  %cmp61 = icmp ne i8* %49, null
  br i1 %cmp61, label %if.then.63, label %if.end.71

if.then.63:                                       ; preds = %if.end.60
  %arraydecay64 = getelementptr inbounds [51 x i8], [51 x i8]* %buffer, i32 0, i32 0
  %50 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %model65 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %50, i32 0, i32 2
  %51 = load i8*, i8** %model65, align 8
  %52 = load i32, i32* %pos, align 4
  %idx.ext66 = sext i32 %52 to i64
  %add.ptr67 = getelementptr inbounds i8, i8* %51, i64 %idx.ext66
  %call68 = call i8* @strncpy(i8* %arraydecay64, i8* %add.ptr67, i64 50) #4
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay69 = getelementptr inbounds [51 x i8], [51 x i8]* %buffer, i32 0, i32 0
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay69)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.63, %if.end.60
  %54 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %mline = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %54, i32 0, i32 3
  %55 = load i8*, i8** %mline, align 8
  %cmp72 = icmp ne i8* %55, null
  br i1 %cmp72, label %if.then.74, label %if.end.82

if.then.74:                                       ; preds = %if.end.71
  %arraydecay75 = getelementptr inbounds [51 x i8], [51 x i8]* %buffer, i32 0, i32 0
  %56 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %mline76 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %56, i32 0, i32 3
  %57 = load i8*, i8** %mline76, align 8
  %58 = load i32, i32* %pos, align 4
  %idx.ext77 = sext i32 %58 to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %57, i64 %idx.ext77
  %call79 = call i8* @strncpy(i8* %arraydecay75, i8* %add.ptr78, i64 50) #4
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay80 = getelementptr inbounds [51 x i8], [51 x i8]* %buffer, i32 0, i32 0
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay80)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.74, %if.end.71
  %60 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %aseq83 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %60, i32 0, i32 4
  %61 = load i8*, i8** %aseq83, align 8
  %cmp84 = icmp ne i8* %61, null
  br i1 %cmp84, label %if.then.86, label %if.end.101

if.then.86:                                       ; preds = %if.end.82
  %arraydecay87 = getelementptr inbounds [51 x i8], [51 x i8]* %buffer, i32 0, i32 0
  %62 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %aseq88 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %62, i32 0, i32 4
  %63 = load i8*, i8** %aseq88, align 8
  %64 = load i32, i32* %pos, align 4
  %idx.ext89 = sext i32 %64 to i64
  %add.ptr90 = getelementptr inbounds i8, i8* %63, i64 %idx.ext89
  %call91 = call i8* @strncpy(i8* %arraydecay87, i8* %add.ptr90, i64 50) #4
  %65 = load i32, i32* %endi, align 4
  %66 = load i32, i32* %starti, align 4
  %cmp92 = icmp sge i32 %65, %66
  br i1 %cmp92, label %if.then.94, label %if.else

if.then.94:                                       ; preds = %if.then.86
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %68 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %target = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %68, i32 0, i32 7
  %69 = load i8*, i8** %target, align 8
  %70 = load i32, i32* %starti, align 4
  %arraydecay95 = getelementptr inbounds [51 x i8], [51 x i8]* %buffer, i32 0, i32 0
  %71 = load i32, i32* %endi, align 4
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i8* %69, i32 %70, i8* %arraydecay95, i32 %71)
  br label %if.end.100

if.else:                                          ; preds = %if.then.86
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %73 = load %struct.fancyali_s*, %struct.fancyali_s** %ali.addr, align 8
  %target97 = getelementptr inbounds %struct.fancyali_s, %struct.fancyali_s* %73, i32 0, i32 7
  %74 = load i8*, i8** %target97, align 8
  %arraydecay98 = getelementptr inbounds [51 x i8], [51 x i8]* %buffer, i32 0, i32 0
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i8* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* %arraydecay98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.100

if.end.100:                                       ; preds = %if.else, %if.then.94
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.end.82
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end.101
  %75 = load i32, i32* %pos, align 4
  %add103 = add nsw i32 %75, 50
  store i32 %add103, i32* %pos, align 4
  br label %for.cond

for.end.104:                                      ; preds = %for.cond
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call105 = call i32 @fflush(%struct._IO_FILE* %76)
  ret void
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @TraceDecompose(%struct.p7trace_s* %otr, %struct.p7trace_s*** %ret_tr, i32* %ret_ntr) #0 {
entry:
  %otr.addr = alloca %struct.p7trace_s*, align 8
  %ret_tr.addr = alloca %struct.p7trace_s***, align 8
  %ret_ntr.addr = alloca i32*, align 8
  %tr = alloca %struct.p7trace_s**, align 8
  %ntr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %idx = alloca i32, align 4
  store %struct.p7trace_s* %otr, %struct.p7trace_s** %otr.addr, align 8
  store %struct.p7trace_s*** %ret_tr, %struct.p7trace_s**** %ret_tr.addr, align 8
  store i32* %ret_ntr, i32** %ret_ntr.addr, align 8
  store i32 0, i32* %ntr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.p7trace_s*, %struct.p7trace_s** %otr.addr, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %1, i32 0, i32 0
  %2 = load i32, i32* %tlen, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.p7trace_s*, %struct.p7trace_s** %otr.addr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %statetype, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %ntr, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %ntr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc3 = add nsw i32 %8, 1
  store i32 %inc3, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %ntr, align 4
  %cmp4 = icmp eq i32 %9, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.end
  %10 = load i32*, i32** %ret_ntr.addr, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.p7trace_s***, %struct.p7trace_s**** %ret_tr.addr, align 8
  store %struct.p7trace_s** null, %struct.p7trace_s*** %11, align 8
  br label %return

if.end.7:                                         ; preds = %for.end
  %12 = load i32, i32* %ntr, align 4
  %conv8 = sext i32 %12 to i64
  %mul = mul i64 8, %conv8
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 893, i64 %mul)
  %13 = bitcast i8* %call to %struct.p7trace_s**
  store %struct.p7trace_s** %13, %struct.p7trace_s*** %tr, align 8
  store i32 0, i32* %idx, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.135, %if.end.7
  %14 = load i32, i32* %i, align 4
  %15 = load %struct.p7trace_s*, %struct.p7trace_s** %otr.addr, align 8
  %tlen10 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %15, i32 0, i32 0
  %16 = load i32, i32* %tlen10, align 4
  %cmp11 = icmp slt i32 %14, %16
  br i1 %cmp11, label %for.body.13, label %for.end.137

for.body.13:                                      ; preds = %for.cond.9
  %17 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %17 to i64
  %18 = load %struct.p7trace_s*, %struct.p7trace_s** %otr.addr, align 8
  %statetype15 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %18, i32 0, i32 1
  %19 = load i8*, i8** %statetype15, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %19, i64 %idxprom14
  %20 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %20 to i32
  %cmp18 = icmp eq i32 %conv17, 6
  br i1 %cmp18, label %if.then.20, label %if.end.134

if.then.20:                                       ; preds = %for.body.13
  %21 = load i32, i32* %i, align 4
  %add = add nsw i32 %21, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.34, %if.then.20
  %22 = load i32, i32* %j, align 4
  %23 = load %struct.p7trace_s*, %struct.p7trace_s** %otr.addr, align 8
  %tlen22 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %23, i32 0, i32 0
  %24 = load i32, i32* %tlen22, align 4
  %cmp23 = icmp slt i32 %22, %24
  br i1 %cmp23, label %for.body.25, label %for.end.36

for.body.25:                                      ; preds = %for.cond.21
  %25 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %25 to i64
  %26 = load %struct.p7trace_s*, %struct.p7trace_s** %otr.addr, align 8
  %statetype27 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %26, i32 0, i32 1
  %27 = load i8*, i8** %statetype27, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %27, i64 %idxprom26
  %28 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %28 to i32
  %cmp30 = icmp eq i32 %conv29, 7
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.body.25
  br label %for.end.36

if.end.33:                                        ; preds = %for.body.25
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %29 = load i32, i32* %j, align 4
  %inc35 = add nsw i32 %29, 1
  store i32 %inc35, i32* %j, align 4
  br label %for.cond.21

for.end.36:                                       ; preds = %if.then.32, %for.cond.21
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %30, %31
  %add37 = add nsw i32 %sub, 5
  %32 = load i32, i32* %idx, align 4
  %idxprom38 = sext i32 %32 to i64
  %33 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx39 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %33, i64 %idxprom38
  call void @P7AllocTrace(i32 %add37, %struct.p7trace_s** %arrayidx39)
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* %i, align 4
  %sub40 = sub nsw i32 %34, %35
  %add41 = add nsw i32 %sub40, 5
  %36 = load i32, i32* %idx, align 4
  %idxprom42 = sext i32 %36 to i64
  %37 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx43 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %37, i64 %idxprom42
  %38 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx43, align 8
  %tlen44 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %38, i32 0, i32 0
  store i32 %add41, i32* %tlen44, align 4
  %39 = load i32, i32* %idx, align 4
  %idxprom45 = sext i32 %39 to i64
  %40 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx46 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %40, i64 %idxprom45
  %41 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx46, align 8
  %statetype47 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %41, i32 0, i32 1
  %42 = load i8*, i8** %statetype47, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 4, i8* %arrayidx48, align 1
  %43 = load i32, i32* %idx, align 4
  %idxprom49 = sext i32 %43 to i64
  %44 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx50 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %44, i64 %idxprom49
  %45 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx50, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %45, i32 0, i32 2
  %46 = load i32*, i32** %nodeidx, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 0, i32* %arrayidx51, align 4
  %47 = load i32, i32* %idx, align 4
  %idxprom52 = sext i32 %47 to i64
  %48 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx53 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %48, i64 %idxprom52
  %49 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx53, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %49, i32 0, i32 3
  %50 = load i32*, i32** %pos, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 0, i32* %arrayidx54, align 4
  %51 = load i32, i32* %idx, align 4
  %idxprom55 = sext i32 %51 to i64
  %52 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx56 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %52, i64 %idxprom55
  %53 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx56, align 8
  %statetype57 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %53, i32 0, i32 1
  %54 = load i8*, i8** %statetype57, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %54, i64 1
  store i8 5, i8* %arrayidx58, align 1
  %55 = load i32, i32* %idx, align 4
  %idxprom59 = sext i32 %55 to i64
  %56 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx60 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %56, i64 %idxprom59
  %57 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx60, align 8
  %nodeidx61 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %57, i32 0, i32 2
  %58 = load i32*, i32** %nodeidx61, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 0, i32* %arrayidx62, align 4
  %59 = load i32, i32* %idx, align 4
  %idxprom63 = sext i32 %59 to i64
  %60 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx64 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %60, i64 %idxprom63
  %61 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx64, align 8
  %pos65 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %61, i32 0, i32 3
  %62 = load i32*, i32** %pos65, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 0, i32* %arrayidx66, align 4
  store i32 2, i32* %j, align 4
  br label %while.body

while.body:                                       ; preds = %for.end.36, %if.end.98
  %63 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %63 to i64
  %64 = load %struct.p7trace_s*, %struct.p7trace_s** %otr.addr, align 8
  %statetype68 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %64, i32 0, i32 1
  %65 = load i8*, i8** %statetype68, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %65, i64 %idxprom67
  %66 = load i8, i8* %arrayidx69, align 1
  %67 = load i32, i32* %j, align 4
  %idxprom70 = sext i32 %67 to i64
  %68 = load i32, i32* %idx, align 4
  %idxprom71 = sext i32 %68 to i64
  %69 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx72 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %69, i64 %idxprom71
  %70 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx72, align 8
  %statetype73 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %70, i32 0, i32 1
  %71 = load i8*, i8** %statetype73, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %71, i64 %idxprom70
  store i8 %66, i8* %arrayidx74, align 1
  %72 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %72 to i64
  %73 = load %struct.p7trace_s*, %struct.p7trace_s** %otr.addr, align 8
  %nodeidx76 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %73, i32 0, i32 2
  %74 = load i32*, i32** %nodeidx76, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %74, i64 %idxprom75
  %75 = load i32, i32* %arrayidx77, align 4
  %76 = load i32, i32* %j, align 4
  %idxprom78 = sext i32 %76 to i64
  %77 = load i32, i32* %idx, align 4
  %idxprom79 = sext i32 %77 to i64
  %78 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx80 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %78, i64 %idxprom79
  %79 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx80, align 8
  %nodeidx81 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %79, i32 0, i32 2
  %80 = load i32*, i32** %nodeidx81, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %80, i64 %idxprom78
  store i32 %75, i32* %arrayidx82, align 4
  %81 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %81 to i64
  %82 = load %struct.p7trace_s*, %struct.p7trace_s** %otr.addr, align 8
  %pos84 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %82, i32 0, i32 3
  %83 = load i32*, i32** %pos84, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %83, i64 %idxprom83
  %84 = load i32, i32* %arrayidx85, align 4
  %85 = load i32, i32* %j, align 4
  %idxprom86 = sext i32 %85 to i64
  %86 = load i32, i32* %idx, align 4
  %idxprom87 = sext i32 %86 to i64
  %87 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx88 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %87, i64 %idxprom87
  %88 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx88, align 8
  %pos89 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %88, i32 0, i32 3
  %89 = load i32*, i32** %pos89, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %89, i64 %idxprom86
  store i32 %84, i32* %arrayidx90, align 4
  %90 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %90 to i64
  %91 = load %struct.p7trace_s*, %struct.p7trace_s** %otr.addr, align 8
  %statetype92 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %91, i32 0, i32 1
  %92 = load i8*, i8** %statetype92, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %92, i64 %idxprom91
  %93 = load i8, i8* %arrayidx93, align 1
  %conv94 = sext i8 %93 to i32
  %cmp95 = icmp eq i32 %conv94, 7
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %while.body
  br label %while.end

if.end.98:                                        ; preds = %while.body
  %94 = load i32, i32* %i, align 4
  %inc99 = add nsw i32 %94, 1
  store i32 %inc99, i32* %i, align 4
  %95 = load i32, i32* %j, align 4
  %inc100 = add nsw i32 %95, 1
  store i32 %inc100, i32* %j, align 4
  br label %while.body

while.end:                                        ; preds = %if.then.97
  %96 = load i32, i32* %j, align 4
  %inc101 = add nsw i32 %96, 1
  store i32 %inc101, i32* %j, align 4
  %97 = load i32, i32* %j, align 4
  %idxprom102 = sext i32 %97 to i64
  %98 = load i32, i32* %idx, align 4
  %idxprom103 = sext i32 %98 to i64
  %99 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx104 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %99, i64 %idxprom103
  %100 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx104, align 8
  %statetype105 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %100, i32 0, i32 1
  %101 = load i8*, i8** %statetype105, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %101, i64 %idxprom102
  store i8 8, i8* %arrayidx106, align 1
  %102 = load i32, i32* %j, align 4
  %idxprom107 = sext i32 %102 to i64
  %103 = load i32, i32* %idx, align 4
  %idxprom108 = sext i32 %103 to i64
  %104 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx109 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %104, i64 %idxprom108
  %105 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx109, align 8
  %nodeidx110 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %105, i32 0, i32 2
  %106 = load i32*, i32** %nodeidx110, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %106, i64 %idxprom107
  store i32 0, i32* %arrayidx111, align 4
  %107 = load i32, i32* %j, align 4
  %idxprom112 = sext i32 %107 to i64
  %108 = load i32, i32* %idx, align 4
  %idxprom113 = sext i32 %108 to i64
  %109 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx114 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %109, i64 %idxprom113
  %110 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx114, align 8
  %pos115 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %110, i32 0, i32 3
  %111 = load i32*, i32** %pos115, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %111, i64 %idxprom112
  store i32 0, i32* %arrayidx116, align 4
  %112 = load i32, i32* %j, align 4
  %inc117 = add nsw i32 %112, 1
  store i32 %inc117, i32* %j, align 4
  %113 = load i32, i32* %j, align 4
  %idxprom118 = sext i32 %113 to i64
  %114 = load i32, i32* %idx, align 4
  %idxprom119 = sext i32 %114 to i64
  %115 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx120 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %115, i64 %idxprom119
  %116 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx120, align 8
  %statetype121 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %116, i32 0, i32 1
  %117 = load i8*, i8** %statetype121, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %117, i64 %idxprom118
  store i8 9, i8* %arrayidx122, align 1
  %118 = load i32, i32* %j, align 4
  %idxprom123 = sext i32 %118 to i64
  %119 = load i32, i32* %idx, align 4
  %idxprom124 = sext i32 %119 to i64
  %120 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx125 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %120, i64 %idxprom124
  %121 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx125, align 8
  %nodeidx126 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %121, i32 0, i32 2
  %122 = load i32*, i32** %nodeidx126, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %122, i64 %idxprom123
  store i32 0, i32* %arrayidx127, align 4
  %123 = load i32, i32* %j, align 4
  %idxprom128 = sext i32 %123 to i64
  %124 = load i32, i32* %idx, align 4
  %idxprom129 = sext i32 %124 to i64
  %125 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx130 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %125, i64 %idxprom129
  %126 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx130, align 8
  %pos131 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %126, i32 0, i32 3
  %127 = load i32*, i32** %pos131, align 8
  %arrayidx132 = getelementptr inbounds i32, i32* %127, i64 %idxprom128
  store i32 0, i32* %arrayidx132, align 4
  %128 = load i32, i32* %idx, align 4
  %inc133 = add nsw i32 %128, 1
  store i32 %inc133, i32* %idx, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %while.end, %for.body.13
  br label %for.inc.135

for.inc.135:                                      ; preds = %if.end.134
  %129 = load i32, i32* %i, align 4
  %inc136 = add nsw i32 %129, 1
  store i32 %inc136, i32* %i, align 4
  br label %for.cond.9

for.end.137:                                      ; preds = %for.cond.9
  %130 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %131 = load %struct.p7trace_s***, %struct.p7trace_s**** %ret_tr.addr, align 8
  store %struct.p7trace_s** %130, %struct.p7trace_s*** %131, align 8
  %132 = load i32, i32* %ntr, align 4
  %133 = load i32*, i32** %ret_ntr.addr, align 8
  store i32 %132, i32* %133, align 4
  br label %return

return:                                           ; preds = %for.end.137, %if.then.6
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @TraceDomainNumber(%struct.p7trace_s* %tr) #0 {
entry:
  %tr.addr = alloca %struct.p7trace_s*, align 8
  %i = alloca i32, align 4
  %ndom = alloca i32, align 4
  store %struct.p7trace_s* %tr, %struct.p7trace_s** %tr.addr, align 8
  store i32 0, i32* %ndom, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %1, i32 0, i32 0
  %2 = load i32, i32* %tlen, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %statetype, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %ndom, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %ndom, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc3 = add nsw i32 %8, 1
  store i32 %inc3, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %ndom, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define void @TraceSimpleBounds(%struct.p7trace_s* %tr, i32* %ret_i1, i32* %ret_i2, i32* %ret_k1, i32* %ret_k2) #0 {
entry:
  %tr.addr = alloca %struct.p7trace_s*, align 8
  %ret_i1.addr = alloca i32*, align 8
  %ret_i2.addr = alloca i32*, align 8
  %ret_k1.addr = alloca i32*, align 8
  %ret_k2.addr = alloca i32*, align 8
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %tpos = alloca i32, align 4
  store %struct.p7trace_s* %tr, %struct.p7trace_s** %tr.addr, align 8
  store i32* %ret_i1, i32** %ret_i1.addr, align 8
  store i32* %ret_i2, i32** %ret_i2.addr, align 8
  store i32* %ret_k1, i32** %ret_k1.addr, align 8
  store i32* %ret_k2, i32** %ret_k2.addr, align 8
  store i32 -1, i32* %k2, align 4
  store i32 -1, i32* %i2, align 4
  store i32 -1, i32* %k1, align 4
  store i32 -1, i32* %i1, align 4
  store i32 0, i32* %tpos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %tpos, align 4
  %1 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %1, i32 0, i32 0
  %2 = load i32, i32* %tlen, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k1, align 4
  %cmp1 = icmp eq i32 %3, -1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32, i32* %tpos, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %5, i32 0, i32 1
  %6 = load i8*, i8** %statetype, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp2 = icmp eq i32 %conv, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load i32, i32* %tpos, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype5 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %9, i32 0, i32 1
  %10 = load i8*, i8** %statetype5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 %idxprom4
  %11 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv7, 2
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %12 = load i32, i32* %tpos, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %13, i32 0, i32 2
  %14 = load i32*, i32** %nodeidx, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %14, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  store i32 %15, i32* %k1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %for.body
  %16 = load i32, i32* %tpos, align 4
  %idxprom12 = sext i32 %16 to i64
  %17 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype13 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %17, i32 0, i32 1
  %18 = load i8*, i8** %statetype13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %18, i64 %idxprom12
  %19 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %19 to i32
  %cmp16 = icmp eq i32 %conv15, 1
  br i1 %cmp16, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end
  %20 = load i32, i32* %tpos, align 4
  %idxprom19 = sext i32 %20 to i64
  %21 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %21, i32 0, i32 3
  %22 = load i32*, i32** %pos, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %22, i64 %idxprom19
  %23 = load i32, i32* %arrayidx20, align 4
  store i32 %23, i32* %i1, align 4
  br label %for.end

if.end.21:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %24 = load i32, i32* %tpos, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %tpos, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.18, %for.cond
  %25 = load i32, i32* %tpos, align 4
  %26 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen22 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %26, i32 0, i32 0
  %27 = load i32, i32* %tlen22, align 4
  %cmp23 = icmp eq i32 %25, %27
  br i1 %cmp23, label %if.then.31, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %for.end
  %28 = load i32, i32* %i1, align 4
  %cmp26 = icmp eq i32 %28, -1
  br i1 %cmp26, label %if.then.31, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.25
  %29 = load i32, i32* %k1, align 4
  %cmp29 = icmp eq i32 %29, -1
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false.28, %lor.lhs.false.25, %for.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %lor.lhs.false.28
  %30 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen33 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %30, i32 0, i32 0
  %31 = load i32, i32* %tlen33, align 4
  %sub = sub nsw i32 %31, 1
  store i32 %sub, i32* %tpos, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.70, %if.end.32
  %32 = load i32, i32* %tpos, align 4
  %cmp35 = icmp sge i32 %32, 0
  br i1 %cmp35, label %for.body.37, label %for.end.71

for.body.37:                                      ; preds = %for.cond.34
  %33 = load i32, i32* %k2, align 4
  %cmp38 = icmp eq i32 %33, -1
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.58

land.lhs.true.40:                                 ; preds = %for.body.37
  %34 = load i32, i32* %tpos, align 4
  %idxprom41 = sext i32 %34 to i64
  %35 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype42 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %35, i32 0, i32 1
  %36 = load i8*, i8** %statetype42, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %36, i64 %idxprom41
  %37 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %37 to i32
  %cmp45 = icmp eq i32 %conv44, 1
  br i1 %cmp45, label %if.then.54, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %land.lhs.true.40
  %38 = load i32, i32* %tpos, align 4
  %idxprom48 = sext i32 %38 to i64
  %39 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype49 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %39, i32 0, i32 1
  %40 = load i8*, i8** %statetype49, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %40, i64 %idxprom48
  %41 = load i8, i8* %arrayidx50, align 1
  %conv51 = sext i8 %41 to i32
  %cmp52 = icmp eq i32 %conv51, 2
  br i1 %cmp52, label %if.then.54, label %if.end.58

if.then.54:                                       ; preds = %lor.lhs.false.47, %land.lhs.true.40
  %42 = load i32, i32* %tpos, align 4
  %idxprom55 = sext i32 %42 to i64
  %43 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx56 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %43, i32 0, i32 2
  %44 = load i32*, i32** %nodeidx56, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %44, i64 %idxprom55
  %45 = load i32, i32* %arrayidx57, align 4
  store i32 %45, i32* %k2, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.54, %lor.lhs.false.47, %for.body.37
  %46 = load i32, i32* %tpos, align 4
  %idxprom59 = sext i32 %46 to i64
  %47 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype60 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %47, i32 0, i32 1
  %48 = load i8*, i8** %statetype60, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %48, i64 %idxprom59
  %49 = load i8, i8* %arrayidx61, align 1
  %conv62 = sext i8 %49 to i32
  %cmp63 = icmp eq i32 %conv62, 1
  br i1 %cmp63, label %if.then.65, label %if.end.69

if.then.65:                                       ; preds = %if.end.58
  %50 = load i32, i32* %tpos, align 4
  %idxprom66 = sext i32 %50 to i64
  %51 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos67 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %51, i32 0, i32 3
  %52 = load i32*, i32** %pos67, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %52, i64 %idxprom66
  %53 = load i32, i32* %arrayidx68, align 4
  store i32 %53, i32* %i2, align 4
  br label %for.end.71

if.end.69:                                        ; preds = %if.end.58
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.69
  %54 = load i32, i32* %tpos, align 4
  %dec = add nsw i32 %54, -1
  store i32 %dec, i32* %tpos, align 4
  br label %for.cond.34

for.end.71:                                       ; preds = %if.then.65, %for.cond.34
  %55 = load i32, i32* %tpos, align 4
  %56 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen72 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %56, i32 0, i32 0
  %57 = load i32, i32* %tlen72, align 4
  %cmp73 = icmp eq i32 %55, %57
  br i1 %cmp73, label %if.then.81, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %for.end.71
  %58 = load i32, i32* %i2, align 4
  %cmp76 = icmp eq i32 %58, -1
  br i1 %cmp76, label %if.then.81, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %lor.lhs.false.75
  %59 = load i32, i32* %k2, align 4
  %cmp79 = icmp eq i32 %59, -1
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %lor.lhs.false.78, %lor.lhs.false.75, %for.end.71
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %lor.lhs.false.78
  %60 = load i32, i32* %k1, align 4
  %61 = load i32*, i32** %ret_k1.addr, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %i1, align 4
  %63 = load i32*, i32** %ret_i1.addr, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %k2, align 4
  %65 = load i32*, i32** %ret_k2.addr, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %i2, align 4
  %67 = load i32*, i32** %ret_i2.addr, align 8
  store i32 %66, i32* %67, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.p7trace_s* @MasterTraceFromMap(i32* %map, i32 %M, i32 %alen) #0 {
entry:
  %map.addr = alloca i32*, align 8
  %M.addr = alloca i32, align 4
  %alen.addr = alloca i32, align 4
  %tr = alloca %struct.p7trace_s*, align 8
  %tpos = alloca i32, align 4
  %apos = alloca i32, align 4
  %k = alloca i32, align 4
  store i32* %map, i32** %map.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32 %alen, i32* %alen.addr, align 4
  %0 = load i32, i32* %alen.addr, align 4
  %add = add nsw i32 %0, 6
  call void @P7AllocTrace(i32 %add, %struct.p7trace_s** %tr)
  store i32 0, i32* %tpos, align 4
  %1 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %2 = load i32, i32* %tpos, align 4
  call void @TraceSet(%struct.p7trace_s* %1, i32 %2, i8 signext 4, i32 0, i32 0)
  %3 = load i32, i32* %tpos, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %tpos, align 4
  %4 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %5 = load i32, i32* %tpos, align 4
  call void @TraceSet(%struct.p7trace_s* %4, i32 %5, i8 signext 5, i32 0, i32 0)
  %6 = load i32, i32* %tpos, align 4
  %inc1 = add nsw i32 %6, 1
  store i32 %inc1, i32* %tpos, align 4
  store i32 1, i32* %apos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %apos, align 4
  %8 = load i32*, i32** %map.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 1
  %9 = load i32, i32* %arrayidx, align 4
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %11 = load i32, i32* %tpos, align 4
  %12 = load i32, i32* %apos, align 4
  call void @TraceSet(%struct.p7trace_s* %10, i32 %11, i8 signext 5, i32 0, i32 %12)
  %13 = load i32, i32* %tpos, align 4
  %inc2 = add nsw i32 %13, 1
  store i32 %inc2, i32* %tpos, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %apos, align 4
  %inc3 = add nsw i32 %14, 1
  store i32 %inc3, i32* %apos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %16 = load i32, i32* %tpos, align 4
  call void @TraceSet(%struct.p7trace_s* %15, i32 %16, i8 signext 6, i32 0, i32 0)
  %17 = load i32, i32* %tpos, align 4
  %inc4 = add nsw i32 %17, 1
  store i32 %inc4, i32* %tpos, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.19, %for.end
  %18 = load i32, i32* %k, align 4
  %19 = load i32, i32* %M.addr, align 4
  %cmp6 = icmp slt i32 %18, %19
  br i1 %cmp6, label %for.body.7, label %for.end.21

for.body.7:                                       ; preds = %for.cond.5
  %20 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %21 = load i32, i32* %tpos, align 4
  %22 = load i32, i32* %k, align 4
  %23 = load i32, i32* %apos, align 4
  call void @TraceSet(%struct.p7trace_s* %20, i32 %21, i8 signext 1, i32 %22, i32 %23)
  %24 = load i32, i32* %tpos, align 4
  %inc8 = add nsw i32 %24, 1
  store i32 %inc8, i32* %tpos, align 4
  %25 = load i32, i32* %apos, align 4
  %inc9 = add nsw i32 %25, 1
  store i32 %inc9, i32* %apos, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.16, %for.body.7
  %26 = load i32, i32* %apos, align 4
  %27 = load i32, i32* %k, align 4
  %add11 = add nsw i32 %27, 1
  %idxprom = sext i32 %add11 to i64
  %28 = load i32*, i32** %map.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %28, i64 %idxprom
  %29 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp slt i32 %26, %29
  br i1 %cmp13, label %for.body.14, label %for.end.18

for.body.14:                                      ; preds = %for.cond.10
  %30 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %31 = load i32, i32* %tpos, align 4
  %32 = load i32, i32* %k, align 4
  %33 = load i32, i32* %apos, align 4
  call void @TraceSet(%struct.p7trace_s* %30, i32 %31, i8 signext 3, i32 %32, i32 %33)
  %34 = load i32, i32* %tpos, align 4
  %inc15 = add nsw i32 %34, 1
  store i32 %inc15, i32* %tpos, align 4
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.14
  %35 = load i32, i32* %apos, align 4
  %inc17 = add nsw i32 %35, 1
  store i32 %inc17, i32* %apos, align 4
  br label %for.cond.10

for.end.18:                                       ; preds = %for.cond.10
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end.18
  %36 = load i32, i32* %k, align 4
  %inc20 = add nsw i32 %36, 1
  store i32 %inc20, i32* %k, align 4
  br label %for.cond.5

for.end.21:                                       ; preds = %for.cond.5
  %37 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %38 = load i32, i32* %tpos, align 4
  %39 = load i32, i32* %M.addr, align 4
  %40 = load i32, i32* %apos, align 4
  call void @TraceSet(%struct.p7trace_s* %37, i32 %38, i8 signext 1, i32 %39, i32 %40)
  %41 = load i32, i32* %tpos, align 4
  %inc22 = add nsw i32 %41, 1
  store i32 %inc22, i32* %tpos, align 4
  %42 = load i32, i32* %apos, align 4
  %inc23 = add nsw i32 %42, 1
  store i32 %inc23, i32* %apos, align 4
  %43 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %44 = load i32, i32* %tpos, align 4
  call void @TraceSet(%struct.p7trace_s* %43, i32 %44, i8 signext 7, i32 0, i32 0)
  %45 = load i32, i32* %tpos, align 4
  %inc24 = add nsw i32 %45, 1
  store i32 %inc24, i32* %tpos, align 4
  %46 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %47 = load i32, i32* %tpos, align 4
  call void @TraceSet(%struct.p7trace_s* %46, i32 %47, i8 signext 8, i32 0, i32 0)
  %48 = load i32, i32* %tpos, align 4
  %inc25 = add nsw i32 %48, 1
  store i32 %inc25, i32* %tpos, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.30, %for.end.21
  %49 = load i32, i32* %apos, align 4
  %50 = load i32, i32* %alen.addr, align 4
  %cmp27 = icmp sle i32 %49, %50
  br i1 %cmp27, label %for.body.28, label %for.end.32

for.body.28:                                      ; preds = %for.cond.26
  %51 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %52 = load i32, i32* %tpos, align 4
  %53 = load i32, i32* %apos, align 4
  call void @TraceSet(%struct.p7trace_s* %51, i32 %52, i8 signext 8, i32 0, i32 %53)
  %54 = load i32, i32* %tpos, align 4
  %inc29 = add nsw i32 %54, 1
  store i32 %inc29, i32* %tpos, align 4
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.28
  %55 = load i32, i32* %apos, align 4
  %inc31 = add nsw i32 %55, 1
  store i32 %inc31, i32* %apos, align 4
  br label %for.cond.26

for.end.32:                                       ; preds = %for.cond.26
  %56 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %57 = load i32, i32* %tpos, align 4
  call void @TraceSet(%struct.p7trace_s* %56, i32 %57, i8 signext 9, i32 0, i32 0)
  %58 = load i32, i32* %tpos, align 4
  %inc33 = add nsw i32 %58, 1
  store i32 %inc33, i32* %tpos, align 4
  %59 = load i32, i32* %tpos, align 4
  %60 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %60, i32 0, i32 0
  store i32 %59, i32* %tlen, align 4
  %61 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  ret %struct.p7trace_s* %61
}

; Function Attrs: nounwind uwtable
define void @ImposeMasterTrace(i8** %aseq, i32 %nseq, %struct.p7trace_s* %mtr, %struct.p7trace_s*** %ret_tr) #0 {
entry:
  %aseq.addr = alloca i8**, align 8
  %nseq.addr = alloca i32, align 4
  %mtr.addr = alloca %struct.p7trace_s*, align 8
  %ret_tr.addr = alloca %struct.p7trace_s***, align 8
  %tr = alloca %struct.p7trace_s**, align 8
  %idx = alloca i32, align 4
  %i = alloca i32, align 4
  %tpos = alloca i32, align 4
  %mpos = alloca i32, align 4
  store i8** %aseq, i8*** %aseq.addr, align 8
  store i32 %nseq, i32* %nseq.addr, align 4
  store %struct.p7trace_s* %mtr, %struct.p7trace_s** %mtr.addr, align 8
  store %struct.p7trace_s*** %ret_tr, %struct.p7trace_s**** %ret_tr.addr, align 8
  %0 = load i32, i32* %nseq.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 1126, i64 %mul)
  %1 = bitcast i8* %call to %struct.p7trace_s**
  store %struct.p7trace_s** %1, %struct.p7trace_s*** %tr, align 8
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.243, %entry
  %2 = load i32, i32* %idx, align 4
  %3 = load i32, i32* %nseq.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.245

for.body:                                         ; preds = %for.cond
  %4 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %4, i32 0, i32 0
  %5 = load i32, i32* %tlen, align 4
  %6 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %7, i64 %idxprom
  call void @P7AllocTrace(i32 %5, %struct.p7trace_s** %arrayidx)
  store i32 0, i32* %tpos, align 4
  store i32 1, i32* %i, align 4
  store i32 0, i32* %mpos, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %mpos, align 4
  %9 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %tlen3 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %9, i32 0, i32 0
  %10 = load i32, i32* %tlen3, align 4
  %cmp4 = icmp slt i32 %8, %10
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.2
  %11 = load i32, i32* %mpos, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %12, i32 0, i32 1
  %13 = load i8*, i8** %statetype, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i64 %idxprom7
  %14 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %14 to i32
  switch i32 %conv9, label %sw.epilog [
    i32 4, label %sw.bb
    i32 6, label %sw.bb
    i32 2, label %sw.bb
    i32 7, label %sw.bb
    i32 9, label %sw.bb
    i32 1, label %sw.bb.17
    i32 3, label %sw.bb.86
    i32 10, label %sw.bb.155
    i32 5, label %sw.bb.155
    i32 8, label %sw.bb.155
    i32 0, label %sw.bb.238
  ]

sw.bb:                                            ; preds = %for.body.6, %for.body.6, %for.body.6, %for.body.6, %for.body.6
  %15 = load i32, i32* %idx, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx11 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %16, i64 %idxprom10
  %17 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx11, align 8
  %18 = load i32, i32* %tpos, align 4
  %19 = load i32, i32* %mpos, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %statetype13 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %20, i32 0, i32 1
  %21 = load i8*, i8** %statetype13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %21, i64 %idxprom12
  %22 = load i8, i8* %arrayidx14, align 1
  %23 = load i32, i32* %mpos, align 4
  %idxprom15 = sext i32 %23 to i64
  %24 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %24, i32 0, i32 2
  %25 = load i32*, i32** %nodeidx, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %25, i64 %idxprom15
  %26 = load i32, i32* %arrayidx16, align 4
  call void @TraceSet(%struct.p7trace_s* %17, i32 %18, i8 signext %22, i32 %26, i32 0)
  %27 = load i32, i32* %tpos, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %tpos, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %for.body.6
  %28 = load i32, i32* %mpos, align 4
  %idxprom18 = sext i32 %28 to i64
  %29 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %29, i32 0, i32 3
  %30 = load i32*, i32** %pos, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %30, i64 %idxprom18
  %31 = load i32, i32* %arrayidx19, align 4
  %sub = sub nsw i32 %31, 1
  %idxprom20 = sext i32 %sub to i64
  %32 = load i32, i32* %idx, align 4
  %idxprom21 = sext i32 %32 to i64
  %33 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %33, i64 %idxprom21
  %34 = load i8*, i8** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %34, i64 %idxprom20
  %35 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %35 to i32
  %cmp25 = icmp eq i32 %conv24, 32
  br i1 %cmp25, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.17
  %36 = load i32, i32* %mpos, align 4
  %idxprom27 = sext i32 %36 to i64
  %37 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %pos28 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %37, i32 0, i32 3
  %38 = load i32*, i32** %pos28, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %38, i64 %idxprom27
  %39 = load i32, i32* %arrayidx29, align 4
  %sub30 = sub nsw i32 %39, 1
  %idxprom31 = sext i32 %sub30 to i64
  %40 = load i32, i32* %idx, align 4
  %idxprom32 = sext i32 %40 to i64
  %41 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %41, i64 %idxprom32
  %42 = load i8*, i8** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %42, i64 %idxprom31
  %43 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %43 to i32
  %cmp36 = icmp eq i32 %conv35, 46
  br i1 %cmp36, label %if.then, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false
  %44 = load i32, i32* %mpos, align 4
  %idxprom39 = sext i32 %44 to i64
  %45 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %pos40 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %45, i32 0, i32 3
  %46 = load i32*, i32** %pos40, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %46, i64 %idxprom39
  %47 = load i32, i32* %arrayidx41, align 4
  %sub42 = sub nsw i32 %47, 1
  %idxprom43 = sext i32 %sub42 to i64
  %48 = load i32, i32* %idx, align 4
  %idxprom44 = sext i32 %48 to i64
  %49 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx45 = getelementptr inbounds i8*, i8** %49, i64 %idxprom44
  %50 = load i8*, i8** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %50, i64 %idxprom43
  %51 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %51 to i32
  %cmp48 = icmp eq i32 %conv47, 95
  br i1 %cmp48, label %if.then, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.38
  %52 = load i32, i32* %mpos, align 4
  %idxprom51 = sext i32 %52 to i64
  %53 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %pos52 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %53, i32 0, i32 3
  %54 = load i32*, i32** %pos52, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %54, i64 %idxprom51
  %55 = load i32, i32* %arrayidx53, align 4
  %sub54 = sub nsw i32 %55, 1
  %idxprom55 = sext i32 %sub54 to i64
  %56 = load i32, i32* %idx, align 4
  %idxprom56 = sext i32 %56 to i64
  %57 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx57 = getelementptr inbounds i8*, i8** %57, i64 %idxprom56
  %58 = load i8*, i8** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %58, i64 %idxprom55
  %59 = load i8, i8* %arrayidx58, align 1
  %conv59 = sext i8 %59 to i32
  %cmp60 = icmp eq i32 %conv59, 45
  br i1 %cmp60, label %if.then, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false.50
  %60 = load i32, i32* %mpos, align 4
  %idxprom63 = sext i32 %60 to i64
  %61 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %pos64 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %61, i32 0, i32 3
  %62 = load i32*, i32** %pos64, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %62, i64 %idxprom63
  %63 = load i32, i32* %arrayidx65, align 4
  %sub66 = sub nsw i32 %63, 1
  %idxprom67 = sext i32 %sub66 to i64
  %64 = load i32, i32* %idx, align 4
  %idxprom68 = sext i32 %64 to i64
  %65 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx69 = getelementptr inbounds i8*, i8** %65, i64 %idxprom68
  %66 = load i8*, i8** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %66, i64 %idxprom67
  %67 = load i8, i8* %arrayidx70, align 1
  %conv71 = sext i8 %67 to i32
  %cmp72 = icmp eq i32 %conv71, 126
  br i1 %cmp72, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.62, %lor.lhs.false.50, %lor.lhs.false.38, %lor.lhs.false, %sw.bb.17
  %68 = load i32, i32* %idx, align 4
  %idxprom74 = sext i32 %68 to i64
  %69 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx75 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %69, i64 %idxprom74
  %70 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx75, align 8
  %71 = load i32, i32* %tpos, align 4
  %72 = load i32, i32* %mpos, align 4
  %idxprom76 = sext i32 %72 to i64
  %73 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %nodeidx77 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %73, i32 0, i32 2
  %74 = load i32*, i32** %nodeidx77, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %74, i64 %idxprom76
  %75 = load i32, i32* %arrayidx78, align 4
  call void @TraceSet(%struct.p7trace_s* %70, i32 %71, i8 signext 2, i32 %75, i32 0)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.62
  %76 = load i32, i32* %idx, align 4
  %idxprom79 = sext i32 %76 to i64
  %77 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx80 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %77, i64 %idxprom79
  %78 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx80, align 8
  %79 = load i32, i32* %tpos, align 4
  %80 = load i32, i32* %mpos, align 4
  %idxprom81 = sext i32 %80 to i64
  %81 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %nodeidx82 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %81, i32 0, i32 2
  %82 = load i32*, i32** %nodeidx82, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %82, i64 %idxprom81
  %83 = load i32, i32* %arrayidx83, align 4
  %84 = load i32, i32* %i, align 4
  call void @TraceSet(%struct.p7trace_s* %78, i32 %79, i8 signext 1, i32 %83, i32 %84)
  %85 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %85, 1
  store i32 %inc84, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %86 = load i32, i32* %tpos, align 4
  %inc85 = add nsw i32 %86, 1
  store i32 %inc85, i32* %tpos, align 4
  br label %sw.epilog

sw.bb.86:                                         ; preds = %for.body.6
  %87 = load i32, i32* %mpos, align 4
  %idxprom87 = sext i32 %87 to i64
  %88 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %pos88 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %88, i32 0, i32 3
  %89 = load i32*, i32** %pos88, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %89, i64 %idxprom87
  %90 = load i32, i32* %arrayidx89, align 4
  %sub90 = sub nsw i32 %90, 1
  %idxprom91 = sext i32 %sub90 to i64
  %91 = load i32, i32* %idx, align 4
  %idxprom92 = sext i32 %91 to i64
  %92 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx93 = getelementptr inbounds i8*, i8** %92, i64 %idxprom92
  %93 = load i8*, i8** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %93, i64 %idxprom91
  %94 = load i8, i8* %arrayidx94, align 1
  %conv95 = sext i8 %94 to i32
  %cmp96 = icmp eq i32 %conv95, 32
  br i1 %cmp96, label %if.end.154, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %sw.bb.86
  %95 = load i32, i32* %mpos, align 4
  %idxprom99 = sext i32 %95 to i64
  %96 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %pos100 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %96, i32 0, i32 3
  %97 = load i32*, i32** %pos100, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %97, i64 %idxprom99
  %98 = load i32, i32* %arrayidx101, align 4
  %sub102 = sub nsw i32 %98, 1
  %idxprom103 = sext i32 %sub102 to i64
  %99 = load i32, i32* %idx, align 4
  %idxprom104 = sext i32 %99 to i64
  %100 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx105 = getelementptr inbounds i8*, i8** %100, i64 %idxprom104
  %101 = load i8*, i8** %arrayidx105, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %101, i64 %idxprom103
  %102 = load i8, i8* %arrayidx106, align 1
  %conv107 = sext i8 %102 to i32
  %cmp108 = icmp eq i32 %conv107, 46
  br i1 %cmp108, label %if.end.154, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %lor.lhs.false.98
  %103 = load i32, i32* %mpos, align 4
  %idxprom111 = sext i32 %103 to i64
  %104 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %pos112 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %104, i32 0, i32 3
  %105 = load i32*, i32** %pos112, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %105, i64 %idxprom111
  %106 = load i32, i32* %arrayidx113, align 4
  %sub114 = sub nsw i32 %106, 1
  %idxprom115 = sext i32 %sub114 to i64
  %107 = load i32, i32* %idx, align 4
  %idxprom116 = sext i32 %107 to i64
  %108 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx117 = getelementptr inbounds i8*, i8** %108, i64 %idxprom116
  %109 = load i8*, i8** %arrayidx117, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %109, i64 %idxprom115
  %110 = load i8, i8* %arrayidx118, align 1
  %conv119 = sext i8 %110 to i32
  %cmp120 = icmp eq i32 %conv119, 95
  br i1 %cmp120, label %if.end.154, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %lor.lhs.false.110
  %111 = load i32, i32* %mpos, align 4
  %idxprom123 = sext i32 %111 to i64
  %112 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %pos124 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %112, i32 0, i32 3
  %113 = load i32*, i32** %pos124, align 8
  %arrayidx125 = getelementptr inbounds i32, i32* %113, i64 %idxprom123
  %114 = load i32, i32* %arrayidx125, align 4
  %sub126 = sub nsw i32 %114, 1
  %idxprom127 = sext i32 %sub126 to i64
  %115 = load i32, i32* %idx, align 4
  %idxprom128 = sext i32 %115 to i64
  %116 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx129 = getelementptr inbounds i8*, i8** %116, i64 %idxprom128
  %117 = load i8*, i8** %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %117, i64 %idxprom127
  %118 = load i8, i8* %arrayidx130, align 1
  %conv131 = sext i8 %118 to i32
  %cmp132 = icmp eq i32 %conv131, 45
  br i1 %cmp132, label %if.end.154, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %lor.lhs.false.122
  %119 = load i32, i32* %mpos, align 4
  %idxprom135 = sext i32 %119 to i64
  %120 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %pos136 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %120, i32 0, i32 3
  %121 = load i32*, i32** %pos136, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %121, i64 %idxprom135
  %122 = load i32, i32* %arrayidx137, align 4
  %sub138 = sub nsw i32 %122, 1
  %idxprom139 = sext i32 %sub138 to i64
  %123 = load i32, i32* %idx, align 4
  %idxprom140 = sext i32 %123 to i64
  %124 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx141 = getelementptr inbounds i8*, i8** %124, i64 %idxprom140
  %125 = load i8*, i8** %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %125, i64 %idxprom139
  %126 = load i8, i8* %arrayidx142, align 1
  %conv143 = sext i8 %126 to i32
  %cmp144 = icmp eq i32 %conv143, 126
  br i1 %cmp144, label %if.end.154, label %if.then.146

if.then.146:                                      ; preds = %lor.lhs.false.134
  %127 = load i32, i32* %idx, align 4
  %idxprom147 = sext i32 %127 to i64
  %128 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx148 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %128, i64 %idxprom147
  %129 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx148, align 8
  %130 = load i32, i32* %tpos, align 4
  %131 = load i32, i32* %mpos, align 4
  %idxprom149 = sext i32 %131 to i64
  %132 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %nodeidx150 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %132, i32 0, i32 2
  %133 = load i32*, i32** %nodeidx150, align 8
  %arrayidx151 = getelementptr inbounds i32, i32* %133, i64 %idxprom149
  %134 = load i32, i32* %arrayidx151, align 4
  %135 = load i32, i32* %i, align 4
  call void @TraceSet(%struct.p7trace_s* %129, i32 %130, i8 signext 3, i32 %134, i32 %135)
  %136 = load i32, i32* %i, align 4
  %inc152 = add nsw i32 %136, 1
  store i32 %inc152, i32* %i, align 4
  %137 = load i32, i32* %tpos, align 4
  %inc153 = add nsw i32 %137, 1
  store i32 %inc153, i32* %tpos, align 4
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.146, %lor.lhs.false.134, %lor.lhs.false.122, %lor.lhs.false.110, %lor.lhs.false.98, %sw.bb.86
  br label %sw.epilog

sw.bb.155:                                        ; preds = %for.body.6, %for.body.6, %for.body.6
  %138 = load i32, i32* %mpos, align 4
  %idxprom156 = sext i32 %138 to i64
  %139 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %pos157 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %139, i32 0, i32 3
  %140 = load i32*, i32** %pos157, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %140, i64 %idxprom156
  %141 = load i32, i32* %arrayidx158, align 4
  %cmp159 = icmp eq i32 %141, 0
  br i1 %cmp159, label %if.then.161, label %if.else.168

if.then.161:                                      ; preds = %sw.bb.155
  %142 = load i32, i32* %idx, align 4
  %idxprom162 = sext i32 %142 to i64
  %143 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx163 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %143, i64 %idxprom162
  %144 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx163, align 8
  %145 = load i32, i32* %tpos, align 4
  %146 = load i32, i32* %mpos, align 4
  %idxprom164 = sext i32 %146 to i64
  %147 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %statetype165 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %147, i32 0, i32 1
  %148 = load i8*, i8** %statetype165, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %148, i64 %idxprom164
  %149 = load i8, i8* %arrayidx166, align 1
  call void @TraceSet(%struct.p7trace_s* %144, i32 %145, i8 signext %149, i32 0, i32 0)
  %150 = load i32, i32* %tpos, align 4
  %inc167 = add nsw i32 %150, 1
  store i32 %inc167, i32* %tpos, align 4
  br label %if.end.237

if.else.168:                                      ; preds = %sw.bb.155
  %151 = load i32, i32* %mpos, align 4
  %idxprom169 = sext i32 %151 to i64
  %152 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %pos170 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %152, i32 0, i32 3
  %153 = load i32*, i32** %pos170, align 8
  %arrayidx171 = getelementptr inbounds i32, i32* %153, i64 %idxprom169
  %154 = load i32, i32* %arrayidx171, align 4
  %sub172 = sub nsw i32 %154, 1
  %idxprom173 = sext i32 %sub172 to i64
  %155 = load i32, i32* %idx, align 4
  %idxprom174 = sext i32 %155 to i64
  %156 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx175 = getelementptr inbounds i8*, i8** %156, i64 %idxprom174
  %157 = load i8*, i8** %arrayidx175, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %157, i64 %idxprom173
  %158 = load i8, i8* %arrayidx176, align 1
  %conv177 = sext i8 %158 to i32
  %cmp178 = icmp eq i32 %conv177, 32
  br i1 %cmp178, label %if.end.236, label %lor.lhs.false.180

lor.lhs.false.180:                                ; preds = %if.else.168
  %159 = load i32, i32* %mpos, align 4
  %idxprom181 = sext i32 %159 to i64
  %160 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %pos182 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %160, i32 0, i32 3
  %161 = load i32*, i32** %pos182, align 8
  %arrayidx183 = getelementptr inbounds i32, i32* %161, i64 %idxprom181
  %162 = load i32, i32* %arrayidx183, align 4
  %sub184 = sub nsw i32 %162, 1
  %idxprom185 = sext i32 %sub184 to i64
  %163 = load i32, i32* %idx, align 4
  %idxprom186 = sext i32 %163 to i64
  %164 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx187 = getelementptr inbounds i8*, i8** %164, i64 %idxprom186
  %165 = load i8*, i8** %arrayidx187, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %165, i64 %idxprom185
  %166 = load i8, i8* %arrayidx188, align 1
  %conv189 = sext i8 %166 to i32
  %cmp190 = icmp eq i32 %conv189, 46
  br i1 %cmp190, label %if.end.236, label %lor.lhs.false.192

lor.lhs.false.192:                                ; preds = %lor.lhs.false.180
  %167 = load i32, i32* %mpos, align 4
  %idxprom193 = sext i32 %167 to i64
  %168 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %pos194 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %168, i32 0, i32 3
  %169 = load i32*, i32** %pos194, align 8
  %arrayidx195 = getelementptr inbounds i32, i32* %169, i64 %idxprom193
  %170 = load i32, i32* %arrayidx195, align 4
  %sub196 = sub nsw i32 %170, 1
  %idxprom197 = sext i32 %sub196 to i64
  %171 = load i32, i32* %idx, align 4
  %idxprom198 = sext i32 %171 to i64
  %172 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx199 = getelementptr inbounds i8*, i8** %172, i64 %idxprom198
  %173 = load i8*, i8** %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds i8, i8* %173, i64 %idxprom197
  %174 = load i8, i8* %arrayidx200, align 1
  %conv201 = sext i8 %174 to i32
  %cmp202 = icmp eq i32 %conv201, 95
  br i1 %cmp202, label %if.end.236, label %lor.lhs.false.204

lor.lhs.false.204:                                ; preds = %lor.lhs.false.192
  %175 = load i32, i32* %mpos, align 4
  %idxprom205 = sext i32 %175 to i64
  %176 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %pos206 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %176, i32 0, i32 3
  %177 = load i32*, i32** %pos206, align 8
  %arrayidx207 = getelementptr inbounds i32, i32* %177, i64 %idxprom205
  %178 = load i32, i32* %arrayidx207, align 4
  %sub208 = sub nsw i32 %178, 1
  %idxprom209 = sext i32 %sub208 to i64
  %179 = load i32, i32* %idx, align 4
  %idxprom210 = sext i32 %179 to i64
  %180 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx211 = getelementptr inbounds i8*, i8** %180, i64 %idxprom210
  %181 = load i8*, i8** %arrayidx211, align 8
  %arrayidx212 = getelementptr inbounds i8, i8* %181, i64 %idxprom209
  %182 = load i8, i8* %arrayidx212, align 1
  %conv213 = sext i8 %182 to i32
  %cmp214 = icmp eq i32 %conv213, 45
  br i1 %cmp214, label %if.end.236, label %lor.lhs.false.216

lor.lhs.false.216:                                ; preds = %lor.lhs.false.204
  %183 = load i32, i32* %mpos, align 4
  %idxprom217 = sext i32 %183 to i64
  %184 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %pos218 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %184, i32 0, i32 3
  %185 = load i32*, i32** %pos218, align 8
  %arrayidx219 = getelementptr inbounds i32, i32* %185, i64 %idxprom217
  %186 = load i32, i32* %arrayidx219, align 4
  %sub220 = sub nsw i32 %186, 1
  %idxprom221 = sext i32 %sub220 to i64
  %187 = load i32, i32* %idx, align 4
  %idxprom222 = sext i32 %187 to i64
  %188 = load i8**, i8*** %aseq.addr, align 8
  %arrayidx223 = getelementptr inbounds i8*, i8** %188, i64 %idxprom222
  %189 = load i8*, i8** %arrayidx223, align 8
  %arrayidx224 = getelementptr inbounds i8, i8* %189, i64 %idxprom221
  %190 = load i8, i8* %arrayidx224, align 1
  %conv225 = sext i8 %190 to i32
  %cmp226 = icmp eq i32 %conv225, 126
  br i1 %cmp226, label %if.end.236, label %if.then.228

if.then.228:                                      ; preds = %lor.lhs.false.216
  %191 = load i32, i32* %idx, align 4
  %idxprom229 = sext i32 %191 to i64
  %192 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx230 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %192, i64 %idxprom229
  %193 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx230, align 8
  %194 = load i32, i32* %tpos, align 4
  %195 = load i32, i32* %mpos, align 4
  %idxprom231 = sext i32 %195 to i64
  %196 = load %struct.p7trace_s*, %struct.p7trace_s** %mtr.addr, align 8
  %statetype232 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %196, i32 0, i32 1
  %197 = load i8*, i8** %statetype232, align 8
  %arrayidx233 = getelementptr inbounds i8, i8* %197, i64 %idxprom231
  %198 = load i8, i8* %arrayidx233, align 1
  %199 = load i32, i32* %i, align 4
  call void @TraceSet(%struct.p7trace_s* %193, i32 %194, i8 signext %198, i32 0, i32 %199)
  %200 = load i32, i32* %i, align 4
  %inc234 = add nsw i32 %200, 1
  store i32 %inc234, i32* %i, align 4
  %201 = load i32, i32* %tpos, align 4
  %inc235 = add nsw i32 %201, 1
  store i32 %inc235, i32* %tpos, align 4
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.228, %lor.lhs.false.216, %lor.lhs.false.204, %lor.lhs.false.192, %lor.lhs.false.180, %if.else.168
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.then.161
  br label %sw.epilog

sw.bb.238:                                        ; preds = %for.body.6
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.238, %for.body.6, %if.end.237, %if.end.154, %if.end, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %202 = load i32, i32* %mpos, align 4
  %inc239 = add nsw i32 %202, 1
  store i32 %inc239, i32* %mpos, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %203 = load i32, i32* %tpos, align 4
  %204 = load i32, i32* %idx, align 4
  %idxprom240 = sext i32 %204 to i64
  %205 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %arrayidx241 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %205, i64 %idxprom240
  %206 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx241, align 8
  %tlen242 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %206, i32 0, i32 0
  store i32 %203, i32* %tlen242, align 4
  br label %for.inc.243

for.inc.243:                                      ; preds = %for.end
  %207 = load i32, i32* %idx, align 4
  %inc244 = add nsw i32 %207, 1
  store i32 %inc244, i32* %idx, align 4
  br label %for.cond

for.end.245:                                      ; preds = %for.cond
  %208 = load %struct.p7trace_s**, %struct.p7trace_s*** %tr, align 8
  %209 = load %struct.p7trace_s***, %struct.p7trace_s**** %ret_tr.addr, align 8
  store %struct.p7trace_s** %208, %struct.p7trace_s*** %209, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
