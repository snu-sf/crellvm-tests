; ModuleID = './listnode.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._node = type { i16, i8*, i32, i32, i32, %struct._node* }

@stdout = external global %struct._IO_FILE*, align 8
@level = internal global i32 0, align 4
@atbol = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"? \00", align 1

; Function Attrs: nounwind uwtable
define void @PyNode_ListTree(%struct._node* %n) #0 {
entry:
  %n.addr = alloca %struct._node*, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  call void @listnode(%struct._IO_FILE* %0, %struct._node* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @listnode(%struct._IO_FILE* %fp, %struct._node* %n) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %n.addr = alloca %struct._node*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store i32 0, i32* @level, align 4
  store i32 1, i32* @atbol, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  call void @list1node(%struct._IO_FILE* %0, %struct._node* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @list1node(%struct._IO_FILE* %fp, %struct._node* %n) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %n.addr = alloca %struct._node*, align 8
  %i = alloca i32, align 4
  %i16 = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %cmp = icmp eq %struct._node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.44

if.end:                                           ; preds = %entry
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %1, i32 0, i32 0
  %2 = load i16, i16* %n_type, align 2
  %conv = sext i16 %2 to i32
  %cmp1 = icmp sge i32 %conv, 256
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %3 = load i32, i32* %i, align 4
  %4 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 4
  %5 = load i32, i32* %n_nchildren, align 4
  %cmp4 = icmp slt i32 %3, %5
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5
  %9 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %9, i64 %idxprom
  call void @list1node(%struct._IO_FILE* %6, %struct._node* %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.44

if.else:                                          ; preds = %if.end
  %11 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type6 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 0
  %12 = load i16, i16* %n_type6, align 2
  %conv7 = sext i16 %12 to i32
  %cmp8 = icmp slt i32 %conv7, 256
  br i1 %cmp8, label %if.then.10, label %if.else.41

if.then.10:                                       ; preds = %if.else
  %13 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type11 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 0
  %14 = load i16, i16* %n_type11, align 2
  %conv12 = sext i16 %14 to i32
  switch i32 %conv12, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %if.then.10
  %15 = load i32, i32* @level, align 4
  %inc13 = add i32 %15, 1
  store i32 %inc13, i32* @level, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.then.10
  %16 = load i32, i32* @level, align 4
  %dec = add i32 %16, -1
  store i32 %dec, i32* @level, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.10
  %17 = load i32, i32* @atbol, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.15, label %if.end.24

if.then.15:                                       ; preds = %sw.default
  store i32 0, i32* %i16, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.21, %if.then.15
  %18 = load i32, i32* %i16, align 4
  %19 = load i32, i32* @level, align 4
  %cmp18 = icmp slt i32 %18, %19
  br i1 %cmp18, label %for.body.20, label %for.end.23

for.body.20:                                      ; preds = %for.cond.17
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.20
  %21 = load i32, i32* %i16, align 4
  %inc22 = add i32 %21, 1
  store i32 %inc22, i32* %i16, align 4
  br label %for.cond.17

for.end.23:                                       ; preds = %for.cond.17
  store i32 0, i32* @atbol, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %for.end.23, %sw.default
  %22 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_type25 = getelementptr inbounds %struct._node, %struct._node* %22, i32 0, i32 0
  %23 = load i16, i16* %n_type25, align 2
  %conv26 = sext i16 %23 to i32
  %cmp27 = icmp eq i32 %conv26, 4
  br i1 %cmp27, label %if.then.29, label %if.else.37

if.then.29:                                       ; preds = %if.end.24
  %24 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_str = getelementptr inbounds %struct._node, %struct._node* %24, i32 0, i32 1
  %25 = load i8*, i8** %n_str, align 8
  %cmp30 = icmp ne i8* %25, null
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.then.29
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %27 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_str33 = getelementptr inbounds %struct._node, %struct._node* %27, i32 0, i32 1
  %28 = load i8*, i8** %n_str33, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %28)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.then.29
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* @atbol, align 4
  br label %if.end.40

if.else.37:                                       ; preds = %if.end.24
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %31 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_str38 = getelementptr inbounds %struct._node, %struct._node* %31, i32 0, i32 1
  %32 = load i8*, i8** %n_str38, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* %32)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.end.35
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.40, %sw.bb.14, %sw.bb
  br label %if.end.43

if.else.41:                                       ; preds = %if.else
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %sw.epilog
  br label %if.end.44

if.end.44:                                        ; preds = %if.then, %if.end.43, %for.end
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
