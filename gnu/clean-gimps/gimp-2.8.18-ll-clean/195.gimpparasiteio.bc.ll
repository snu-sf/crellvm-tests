; ModuleID = './libgimpbase/gimpparasiteio.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPixPipeParams = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, [4 x i32], [4 x i8*], i32 }
%struct._GString = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"LibGimpBase\00", align 1
@__func__.gimp_pixpipe_params_init = private unnamed_addr constant [25 x i8] c"gimp_pixpipe_params_init\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"params != NULL\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@__func__.gimp_pixpipe_params_parse = private unnamed_addr constant [26 x i8] c"gimp_pixpipe_params_parse\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"string != NULL\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" \0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ncells\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"dim\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"cols\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"rows\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"cellwidth\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"cellheight\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"placement\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"rank\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"sel\00", align 1
@__func__.gimp_pixpipe_params_build = private unnamed_addr constant [26 x i8] c"gimp_pixpipe_params_build\00", align 1
@.str.16 = private unnamed_addr constant [81 x i8] c"ncells:%d cellwidth:%d cellheight:%d step:%d dim:%d cols:%d rows:%d placement:%s\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c" rank%d:%d\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c" sel%d:%s\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_pixpipe_params_init(%struct._GimpPixPipeParams* %params) #0 {
entry:
  %params.addr = alloca %struct._GimpPixPipeParams*, align 8
  %i = alloca i32, align 4
  store %struct._GimpPixPipeParams* %params, %struct._GimpPixPipeParams** %params.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %cmp = icmp ne %struct._GimpPixPipeParams* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_pixpipe_params_init, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  br label %for.end.11

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %step = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %1, i32 0, i32 0
  store i32 100, i32* %step, align 4
  %2 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %ncells = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %2, i32 0, i32 1
  store i32 1, i32* %ncells, align 4
  %3 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %cellwidth = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %3, i32 0, i32 5
  store i32 1, i32* %cellwidth, align 4
  %4 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %cellheight = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %4, i32 0, i32 6
  store i32 1, i32* %cellheight, align 4
  %5 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %dim = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %5, i32 0, i32 2
  store i32 1, i32* %dim, align 4
  %6 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %cols = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %6, i32 0, i32 3
  store i32 1, i32* %cols, align 4
  %7 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %rows = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %7, i32 0, i32 4
  store i32 1, i32* %rows, align 4
  %8 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %placement = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %8, i32 0, i32 7
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8** %placement, align 8
  %9 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %free_placement_string = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %9, i32 0, i32 8
  store i32 0, i32* %free_placement_string, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %10 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %10, 4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %selection = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %12, i32 0, i32 10
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* %selection, i32 0, i64 %idxprom
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8** %arrayidx, align 8
  %13 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %free_selection_string = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %13, i32 0, i32 11
  store i32 0, i32* %free_selection_string, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %rank = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %15, i32 0, i32 9
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %rank, i32 0, i64 0
  store i32 1, i32* %arrayidx2, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.9, %for.end
  %16 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %16, 4
  br i1 %cmp4, label %for.body.5, label %for.end.11

for.body.5:                                       ; preds = %for.cond.3
  %17 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %17 to i64
  %18 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %rank7 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %18, i32 0, i32 9
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %rank7, i32 0, i64 %idxprom6
  store i32 0, i32* %arrayidx8, align 4
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.5
  %19 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %19, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond.3

for.end.11:                                       ; preds = %if.else, %for.cond.3
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_pixpipe_params_parse(i8* %string, %struct._GimpPixPipeParams* %params) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %params.addr = alloca %struct._GimpPixPipeParams*, align 8
  %copy = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %r = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8
  store %struct._GimpPixPipeParams* %params, %struct._GimpPixPipeParams** %params.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %string.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_pixpipe_params_parse, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %cmp2 = icmp ne %struct._GimpPixPipeParams* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_pixpipe_params_parse, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load i8*, i8** %string.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %2)
  store i8* %call, i8** %copy, align 8
  %3 = load i8*, i8** %copy, align 8
  store i8* %3, i8** %q, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.143, %do.end.6
  %4 = load i8*, i8** %q, align 8
  %call7 = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)) #4
  store i8* %call7, i8** %p, align 8
  %cmp8 = icmp ne i8* %call7, null
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i8* null, i8** %q, align 8
  %5 = load i8*, i8** %p, align 8
  %call9 = call i8* @strchr(i8* %5, i32 58) #5
  store i8* %call9, i8** %r, align 8
  %6 = load i8*, i8** %r, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %while.body
  %7 = load i8*, i8** %r, align 8
  store i8 0, i8* %7, align 1
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %while.body
  %8 = load i8*, i8** %p, align 8
  %call12 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)) #5
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.else.19

if.then.14:                                       ; preds = %if.end.11
  %9 = load i8*, i8** %r, align 8
  %tobool15 = icmp ne i8* %9, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.then.14
  %10 = load i8*, i8** %r, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 1
  %call17 = call i32 @atoi(i8* %add.ptr) #5
  %11 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %ncells = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %11, i32 0, i32 1
  store i32 %call17, i32* %ncells, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.then.14
  br label %if.end.140

if.else.19:                                       ; preds = %if.end.11
  %12 = load i8*, i8** %p, align 8
  %call20 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)) #5
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.28

if.then.22:                                       ; preds = %if.else.19
  %13 = load i8*, i8** %r, align 8
  %tobool23 = icmp ne i8* %13, null
  br i1 %tobool23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.then.22
  %14 = load i8*, i8** %r, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %14, i64 1
  %call26 = call i32 @atoi(i8* %add.ptr25) #5
  %15 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %step = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %15, i32 0, i32 0
  store i32 %call26, i32* %step, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.then.22
  br label %if.end.139

if.else.28:                                       ; preds = %if.else.19
  %16 = load i8*, i8** %p, align 8
  %call29 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #5
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.47

if.then.31:                                       ; preds = %if.else.28
  %17 = load i8*, i8** %r, align 8
  %tobool32 = icmp ne i8* %17, null
  br i1 %tobool32, label %if.then.33, label %if.end.46

if.then.33:                                       ; preds = %if.then.31
  %18 = load i8*, i8** %r, align 8
  %add.ptr34 = getelementptr inbounds i8, i8* %18, i64 1
  %call35 = call i32 @atoi(i8* %add.ptr34) #5
  %19 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %dim = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %19, i32 0, i32 2
  store i32 %call35, i32* %dim, align 4
  %20 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %dim36 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %20, i32 0, i32 2
  %21 = load i32, i32* %dim36, align 4
  %cmp37 = icmp sgt i32 %21, 4
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.33
  br label %cond.end.43

cond.false:                                       ; preds = %if.then.33
  %22 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %dim38 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %22, i32 0, i32 2
  %23 = load i32, i32* %dim38, align 4
  %cmp39 = icmp slt i32 %23, 1
  br i1 %cmp39, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %cond.false
  br label %cond.end

cond.false.41:                                    ; preds = %cond.false
  %24 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %dim42 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %24, i32 0, i32 2
  %25 = load i32, i32* %dim42, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.41, %cond.true.40
  %cond = phi i32 [ 1, %cond.true.40 ], [ %25, %cond.false.41 ]
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.end, %cond.true
  %cond44 = phi i32 [ 4, %cond.true ], [ %cond, %cond.end ]
  %26 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %dim45 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %26, i32 0, i32 2
  store i32 %cond44, i32* %dim45, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %cond.end.43, %if.then.31
  br label %if.end.138

if.else.47:                                       ; preds = %if.else.28
  %27 = load i8*, i8** %p, align 8
  %call48 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)) #5
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then.50, label %if.else.56

if.then.50:                                       ; preds = %if.else.47
  %28 = load i8*, i8** %r, align 8
  %tobool51 = icmp ne i8* %28, null
  br i1 %tobool51, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %if.then.50
  %29 = load i8*, i8** %r, align 8
  %add.ptr53 = getelementptr inbounds i8, i8* %29, i64 1
  %call54 = call i32 @atoi(i8* %add.ptr53) #5
  %30 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %cols = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %30, i32 0, i32 3
  store i32 %call54, i32* %cols, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.52, %if.then.50
  br label %if.end.137

if.else.56:                                       ; preds = %if.else.47
  %31 = load i8*, i8** %p, align 8
  %call57 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)) #5
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.then.59, label %if.else.65

if.then.59:                                       ; preds = %if.else.56
  %32 = load i8*, i8** %r, align 8
  %tobool60 = icmp ne i8* %32, null
  br i1 %tobool60, label %if.then.61, label %if.end.64

if.then.61:                                       ; preds = %if.then.59
  %33 = load i8*, i8** %r, align 8
  %add.ptr62 = getelementptr inbounds i8, i8* %33, i64 1
  %call63 = call i32 @atoi(i8* %add.ptr62) #5
  %34 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %rows = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %34, i32 0, i32 4
  store i32 %call63, i32* %rows, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.61, %if.then.59
  br label %if.end.136

if.else.65:                                       ; preds = %if.else.56
  %35 = load i8*, i8** %p, align 8
  %call66 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0)) #5
  %cmp67 = icmp eq i32 %call66, 0
  br i1 %cmp67, label %if.then.68, label %if.else.74

if.then.68:                                       ; preds = %if.else.65
  %36 = load i8*, i8** %r, align 8
  %tobool69 = icmp ne i8* %36, null
  br i1 %tobool69, label %if.then.70, label %if.end.73

if.then.70:                                       ; preds = %if.then.68
  %37 = load i8*, i8** %r, align 8
  %add.ptr71 = getelementptr inbounds i8, i8* %37, i64 1
  %call72 = call i32 @atoi(i8* %add.ptr71) #5
  %38 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %cellwidth = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %38, i32 0, i32 5
  store i32 %call72, i32* %cellwidth, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %if.then.68
  br label %if.end.135

if.else.74:                                       ; preds = %if.else.65
  %39 = load i8*, i8** %p, align 8
  %call75 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0)) #5
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.then.77, label %if.else.83

if.then.77:                                       ; preds = %if.else.74
  %40 = load i8*, i8** %r, align 8
  %tobool78 = icmp ne i8* %40, null
  br i1 %tobool78, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %if.then.77
  %41 = load i8*, i8** %r, align 8
  %add.ptr80 = getelementptr inbounds i8, i8* %41, i64 1
  %call81 = call i32 @atoi(i8* %add.ptr80) #5
  %42 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %cellheight = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %42, i32 0, i32 6
  store i32 %call81, i32* %cellheight, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %if.then.77
  br label %if.end.134

if.else.83:                                       ; preds = %if.else.74
  %43 = load i8*, i8** %p, align 8
  %call84 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0)) #5
  %cmp85 = icmp eq i32 %call84, 0
  br i1 %cmp85, label %if.then.86, label %if.else.92

if.then.86:                                       ; preds = %if.else.83
  %44 = load i8*, i8** %r, align 8
  %tobool87 = icmp ne i8* %44, null
  br i1 %tobool87, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %if.then.86
  %45 = load i8*, i8** %r, align 8
  %add.ptr89 = getelementptr inbounds i8, i8* %45, i64 1
  %call90 = call noalias i8* @g_strdup(i8* %add.ptr89)
  %46 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %placement = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %46, i32 0, i32 7
  store i8* %call90, i8** %placement, align 8
  %47 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %free_placement_string = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %47, i32 0, i32 8
  store i32 1, i32* %free_placement_string, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.88, %if.then.86
  br label %if.end.133

if.else.92:                                       ; preds = %if.else.83
  %48 = load i8*, i8** %p, align 8
  %call93 = call i32 @strncmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i64 4) #5
  %cmp94 = icmp eq i32 %call93, 0
  br i1 %cmp94, label %land.lhs.true, label %if.else.110

land.lhs.true:                                    ; preds = %if.else.92
  %49 = load i8*, i8** %r, align 8
  %tobool95 = icmp ne i8* %49, null
  br i1 %tobool95, label %if.then.96, label %if.else.110

if.then.96:                                       ; preds = %land.lhs.true
  %50 = load i8*, i8** %r, align 8
  %tobool97 = icmp ne i8* %50, null
  br i1 %tobool97, label %if.then.98, label %if.end.109

if.then.98:                                       ; preds = %if.then.96
  %51 = load i8*, i8** %p, align 8
  %add.ptr99 = getelementptr inbounds i8, i8* %51, i64 4
  %call100 = call i32 @atoi(i8* %add.ptr99) #5
  store i32 %call100, i32* %i, align 4
  %52 = load i32, i32* %i, align 4
  %cmp101 = icmp sge i32 %52, 0
  br i1 %cmp101, label %land.lhs.true.102, label %if.end.108

land.lhs.true.102:                                ; preds = %if.then.98
  %53 = load i32, i32* %i, align 4
  %54 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %dim103 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %54, i32 0, i32 2
  %55 = load i32, i32* %dim103, align 4
  %cmp104 = icmp slt i32 %53, %55
  br i1 %cmp104, label %if.then.105, label %if.end.108

if.then.105:                                      ; preds = %land.lhs.true.102
  %56 = load i8*, i8** %r, align 8
  %add.ptr106 = getelementptr inbounds i8, i8* %56, i64 1
  %call107 = call i32 @atoi(i8* %add.ptr106) #5
  %57 = load i32, i32* %i, align 4
  %idxprom = sext i32 %57 to i64
  %58 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %rank = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %58, i32 0, i32 9
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %rank, i32 0, i64 %idxprom
  store i32 %call107, i32* %arrayidx, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.105, %land.lhs.true.102, %if.then.98
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then.96
  br label %if.end.132

if.else.110:                                      ; preds = %land.lhs.true, %if.else.92
  %59 = load i8*, i8** %p, align 8
  %call111 = call i32 @strncmp(i8* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i64 3) #5
  %cmp112 = icmp eq i32 %call111, 0
  br i1 %cmp112, label %land.lhs.true.113, label %if.end.131

land.lhs.true.113:                                ; preds = %if.else.110
  %60 = load i8*, i8** %r, align 8
  %tobool114 = icmp ne i8* %60, null
  br i1 %tobool114, label %if.then.115, label %if.end.131

if.then.115:                                      ; preds = %land.lhs.true.113
  %61 = load i8*, i8** %r, align 8
  %tobool116 = icmp ne i8* %61, null
  br i1 %tobool116, label %if.then.117, label %if.end.130

if.then.117:                                      ; preds = %if.then.115
  %62 = load i8*, i8** %p, align 8
  %add.ptr118 = getelementptr inbounds i8, i8* %62, i64 3
  %call119 = call i32 @atoi(i8* %add.ptr118) #5
  store i32 %call119, i32* %i, align 4
  %63 = load i32, i32* %i, align 4
  %cmp120 = icmp sge i32 %63, 0
  br i1 %cmp120, label %land.lhs.true.121, label %if.end.129

land.lhs.true.121:                                ; preds = %if.then.117
  %64 = load i32, i32* %i, align 4
  %65 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %dim122 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %65, i32 0, i32 2
  %66 = load i32, i32* %dim122, align 4
  %cmp123 = icmp slt i32 %64, %66
  br i1 %cmp123, label %if.then.124, label %if.end.129

if.then.124:                                      ; preds = %land.lhs.true.121
  %67 = load i8*, i8** %r, align 8
  %add.ptr125 = getelementptr inbounds i8, i8* %67, i64 1
  %call126 = call noalias i8* @g_strdup(i8* %add.ptr125)
  %68 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %68 to i64
  %69 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %selection = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %69, i32 0, i32 10
  %arrayidx128 = getelementptr inbounds [4 x i8*], [4 x i8*]* %selection, i32 0, i64 %idxprom127
  store i8* %call126, i8** %arrayidx128, align 8
  %70 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %free_selection_string = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %70, i32 0, i32 11
  store i32 1, i32* %free_selection_string, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.124, %land.lhs.true.121, %if.then.117
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.115
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %land.lhs.true.113, %if.else.110
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.109
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.end.91
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.end.82
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.end.73
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.end.64
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.end.55
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.end.46
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.end.27
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.end.18
  %71 = load i8*, i8** %r, align 8
  %tobool141 = icmp ne i8* %71, null
  br i1 %tobool141, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.140
  %72 = load i8*, i8** %r, align 8
  store i8 58, i8* %72, align 1
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %if.end.140
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %73 = load i8*, i8** %copy, align 8
  call void @g_free(i8* %73)
  br label %return

return:                                           ; preds = %while.end, %if.else.4, %if.else
  ret void
}

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define noalias i8* @gimp_pixpipe_params_build(%struct._GimpPixPipeParams* %params) #0 {
entry:
  %retval = alloca i8*, align 8
  %params.addr = alloca %struct._GimpPixPipeParams*, align 8
  %str = alloca %struct._GString*, align 8
  %i = alloca i32, align 4
  store %struct._GimpPixPipeParams* %params, %struct._GimpPixPipeParams** %params.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %cmp = icmp ne %struct._GimpPixPipeParams* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_pixpipe_params_build, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call, %struct._GString** %str, align 8
  %1 = load %struct._GString*, %struct._GString** %str, align 8
  %2 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %ncells = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %2, i32 0, i32 1
  %3 = load i32, i32* %ncells, align 4
  %4 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %cellwidth = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %4, i32 0, i32 5
  %5 = load i32, i32* %cellwidth, align 4
  %6 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %cellheight = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %6, i32 0, i32 6
  %7 = load i32, i32* %cellheight, align 4
  %8 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %step = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %8, i32 0, i32 0
  %9 = load i32, i32* %step, align 4
  %10 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %dim = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %10, i32 0, i32 2
  %11 = load i32, i32* %dim, align 4
  %12 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %cols = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %12, i32 0, i32 3
  %13 = load i32, i32* %cols, align 4
  %14 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %rows = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %14, i32 0, i32 4
  %15 = load i32, i32* %rows, align 4
  %16 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %placement = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %16, i32 0, i32 7
  %17 = load i8*, i8** %placement, align 8
  call void (%struct._GString*, i8*, ...) @g_string_printf(%struct._GString* %1, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.16, i32 0, i32 0), i32 %3, i32 %5, i32 %7, i32 %9, i32 %11, i32 %13, i32 %15, i8* %17)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %18 = load i32, i32* %i, align 4
  %19 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %dim1 = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %19, i32 0, i32 2
  %20 = load i32, i32* %dim1, align 4
  %cmp2 = icmp slt i32 %18, %20
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct._GString*, %struct._GString** %str, align 8
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %rank = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %24, i32 0, i32 9
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %rank, i32 0, i64 %idxprom
  %25 = load i32, i32* %arrayidx, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i32 %22, i32 %25)
  %26 = load %struct._GString*, %struct._GString** %str, align 8
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %28 to i64
  %29 = load %struct._GimpPixPipeParams*, %struct._GimpPixPipeParams** %params.addr, align 8
  %selection = getelementptr inbounds %struct._GimpPixPipeParams, %struct._GimpPixPipeParams* %29, i32 0, i32 10
  %arrayidx4 = getelementptr inbounds [4 x i8*], [4 x i8*]* %selection, i32 0, i64 %idxprom3
  %30 = load i8*, i8** %arrayidx4, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32 %27, i8* %30)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct._GString*, %struct._GString** %str, align 8
  %call5 = call i8* @g_string_free(%struct._GString* %32, i32 0)
  store i8* %call5, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else
  %33 = load i8*, i8** %retval
  ret i8* %33
}

declare %struct._GString* @g_string_new(i8*) #1

declare void @g_string_printf(%struct._GString*, i8*, ...) #1

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
