; ModuleID = './MultiSource.Benchmarks.Prolangs-C/135.unix-smail.alias.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_node = type { i8*, %struct.alias_node*, %struct.alias_node* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@nargc = internal global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c":include:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c".forward\00", align 1
@alias.t_dom = internal global [512 x i8] zeroinitializer, align 16
@alias.t_unam = internal global [512 x i8] zeroinitializer, align 16
@nargv = internal global [500 x i8*] zeroinitializer, align 16
@v_search.loaded = internal global i32 0, align 4
@aliases = internal global %struct.alias_node { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), %struct.alias_node* null, %struct.alias_node* null }, align 8
@aliasfile = external global i8*, align 8
@debug = external global i32, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"load_alias open('%s') failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"load_alias '%s' includes file '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"load_alias for '%s' failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define i8** @alias(i32* %pargc, i8** %argv) #0 {
entry:
  %pargc.addr = alloca i32*, align 8
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %domain = alloca [512 x i8], align 16
  %ubuf = alloca [512 x i8], align 16
  %user = alloca i8*, align 8
  %addr = alloca %struct.alias_node*, align 8
  %addrstk = alloca %struct.alias_node, align 8
  %flist = alloca %struct.alias_node*, align 8
  %fliststk = alloca %struct.alias_node, align 8
  %u = alloca %struct.alias_node*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %a = alloca %struct.alias_node*, align 8
  %home = alloca i8*, align 8
  %buf = alloca [512 x i8], align 16
  %aliased = alloca i32, align 4
  %st = alloca %struct.stat, align 8
  %p = alloca i8*, align 8
  %dtmpb = alloca [512 x i8], align 16
  %utmpb = alloca [512 x i8], align 16
  %ut = alloca i8*, align 8
  %user_inalias = alloca i32, align 4
  %t = alloca %struct.alias_node*, align 8
  %t_user = alloca i8*, align 8
  store i32* %pargc, i32** %pargc.addr, align 8
  store i8** %argv, i8*** %argv.addr, align 8
  store %struct.alias_node* %addrstk, %struct.alias_node** %addr, align 8
  store %struct.alias_node* %fliststk, %struct.alias_node** %flist, align 8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %ubuf, i32 0, i32 0
  store i8* %arraydecay, i8** %user, align 8
  %0 = load %struct.alias_node*, %struct.alias_node** %addr, align 8
  %horz = getelementptr inbounds %struct.alias_node, %struct.alias_node* %0, i32 0, i32 1
  store %struct.alias_node* null, %struct.alias_node** %horz, align 8
  %1 = load %struct.alias_node*, %struct.alias_node** %flist, align 8
  %horz1 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %1, i32 0, i32 1
  store %struct.alias_node* null, %struct.alias_node** %horz1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32*, i32** %pargc.addr, align 8
  %4 = load i32, i32* %3, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.alias_node*, %struct.alias_node** %addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  call void @add_horz(%struct.alias_node* %5, i8* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end.185, %if.then.151, %if.then.146, %if.then.135, %if.then.101, %if.then.91, %if.end.31, %for.end
  %10 = load i32, i32* @nargc, align 4
  %cmp2 = icmp slt i32 %10, 500
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load %struct.alias_node*, %struct.alias_node** %addr, align 8
  %call = call %struct.alias_node* @pop(%struct.alias_node* %11)
  store %struct.alias_node* %call, %struct.alias_node** %u, align 8
  %cmp3 = icmp ne %struct.alias_node* %call, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %12, label %while.body, label %while.end.186

while.body:                                       ; preds = %land.end
  %13 = load %struct.alias_node*, %struct.alias_node** %u, align 8
  %string = getelementptr inbounds %struct.alias_node, %struct.alias_node* %13, i32 0, i32 0
  %14 = load i8*, i8** %string, align 8
  %call4 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (...)* @strncmpic to i32 (i8*, i8*, i32, ...)*)(i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 9)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end.32

if.then:                                          ; preds = %while.body
  %15 = load %struct.alias_node*, %struct.alias_node** %u, align 8
  %string6 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %15, i32 0, i32 0
  %16 = load i8*, i8** %string6, align 8
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 9
  store i8* %add.ptr, i8** %p, align 8
  %17 = load i8*, i8** %p, align 8
  %18 = load i8, i8* %17, align 1
  %conv = sext i8 %18 to i32
  %cmp7 = icmp eq i32 %conv, 47
  br i1 %cmp7, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.then
  %19 = load %struct.alias_node*, %struct.alias_node** %flist, align 8
  %20 = load i8*, i8** %p, align 8
  %call9 = call %struct.alias_node* @h_search(%struct.alias_node* %19, i8* %20)
  %cmp10 = icmp eq %struct.alias_node* %call9, null
  br i1 %cmp10, label %if.then.12, label %if.end.31

if.then.12:                                       ; preds = %land.lhs.true
  %21 = load %struct.alias_node*, %struct.alias_node** %flist, align 8
  %22 = load i8*, i8** %p, align 8
  call void @add_horz(%struct.alias_node* %21, i8* %22)
  %23 = load i8*, i8** %p, align 8
  %call13 = call i32 @stat(i8* %23, %struct.stat* %st) #4
  %cmp14 = icmp sge i32 %call13, 0
  br i1 %cmp14, label %land.lhs.true.16, label %if.end

land.lhs.true.16:                                 ; preds = %if.then.12
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %24 = load i32, i32* %st_mode, align 4
  %and = and i32 %24, 61440
  %cmp17 = icmp eq i32 %and, 32768
  br i1 %cmp17, label %land.lhs.true.19, label %if.end

land.lhs.true.19:                                 ; preds = %land.lhs.true.16
  %25 = load i8*, i8** %p, align 8
  %call20 = call %struct._IO_FILE* @fopen(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call20, %struct._IO_FILE** %fp, align 8
  %cmp21 = icmp ne %struct._IO_FILE* %call20, null
  br i1 %cmp21, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %land.lhs.true.19
  br label %while.cond.24

while.cond.24:                                    ; preds = %while.body.27, %if.then.23
  %arraydecay25 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call26 = call i8* @fgets(i8* %arraydecay25, i32 512, %struct._IO_FILE* %26)
  %tobool = icmp ne i8* %call26, null
  br i1 %tobool, label %while.body.27, label %while.end

while.body.27:                                    ; preds = %while.cond.24
  %27 = load %struct.alias_node*, %struct.alias_node** %addr, align 8
  %arraydecay28 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call29 = call i32 @recipients(%struct.alias_node* %27, i8* %arraydecay28)
  br label %while.cond.24

while.end:                                        ; preds = %while.cond.24
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call30 = call i32 @fclose(%struct._IO_FILE* %28)
  br label %if.end

if.end:                                           ; preds = %while.end, %land.lhs.true.19, %land.lhs.true.16, %if.then.12
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %land.lhs.true, %if.then
  br label %while.cond

if.end.32:                                        ; preds = %while.body
  %29 = load %struct.alias_node*, %struct.alias_node** %u, align 8
  %string33 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %29, i32 0, i32 0
  %30 = load i8*, i8** %string33, align 8
  %arraydecay34 = getelementptr inbounds [512 x i8], [512 x i8]* %domain, i32 0, i32 0
  %arraydecay35 = getelementptr inbounds [512 x i8], [512 x i8]* %ubuf, i32 0, i32 0
  %call36 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* %30, i8* %arraydecay34, i8* %arraydecay35)
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.32
  br label %aliasing_complete

if.end.40:                                        ; preds = %if.end.32
  %arraydecay41 = getelementptr inbounds [512 x i8], [512 x i8]* %ubuf, i32 0, i32 0
  %31 = load i8, i8* %arraydecay41, align 1
  %conv42 = sext i8 %31 to i32
  %cmp43 = icmp ne i32 %conv42, 92
  br i1 %cmp43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.40
  %arraydecay45 = getelementptr inbounds [512 x i8], [512 x i8]* %ubuf, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %if.end.40
  %arraydecay46 = getelementptr inbounds [512 x i8], [512 x i8]* %ubuf, i32 0, i32 0
  %add.ptr47 = getelementptr inbounds i8, i8* %arraydecay46, i64 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %arraydecay45, %cond.true ], [ %add.ptr47, %cond.false ]
  store i8* %cond, i8** %user, align 8
  %32 = load %struct.alias_node*, %struct.alias_node** %u, align 8
  %string48 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %32, i32 0, i32 0
  %33 = load i8*, i8** %string48, align 8
  %34 = load i8*, i8** %user, align 8
  %call49 = call i8* @strcpy(i8* %33, i8* %34) #4
  %35 = load i8*, i8** %user, align 8
  %call50 = call %struct.alias_node* @v_search(i8* %35)
  store %struct.alias_node* %call50, %struct.alias_node** %a, align 8
  %cmp51 = icmp ne %struct.alias_node* %call50, null
  br i1 %cmp51, label %if.then.53, label %if.end.93

if.then.53:                                       ; preds = %cond.end
  store i32 0, i32* %user_inalias, align 4
  %36 = load %struct.alias_node*, %struct.alias_node** %a, align 8
  store %struct.alias_node* %36, %struct.alias_node** %t, align 8
  %37 = load %struct.alias_node*, %struct.alias_node** %a, align 8
  %horz54 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %37, i32 0, i32 1
  %38 = load %struct.alias_node*, %struct.alias_node** %horz54, align 8
  store %struct.alias_node* %38, %struct.alias_node** %a, align 8
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.85, %if.then.53
  %39 = load %struct.alias_node*, %struct.alias_node** %a, align 8
  %cmp56 = icmp ne %struct.alias_node* %39, null
  br i1 %cmp56, label %for.body.58, label %for.end.87

for.body.58:                                      ; preds = %for.cond.55
  %40 = load %struct.alias_node*, %struct.alias_node** %a, align 8
  %string59 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %40, i32 0, i32 0
  %41 = load i8*, i8** %string59, align 8
  %arraydecay60 = getelementptr inbounds [512 x i8], [512 x i8]* %dtmpb, i32 0, i32 0
  %arraydecay61 = getelementptr inbounds [512 x i8], [512 x i8]* %utmpb, i32 0, i32 0
  %call62 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* %41, i8* %arraydecay60, i8* %arraydecay61)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.else.82

if.then.64:                                       ; preds = %for.body.58
  %arraydecay65 = getelementptr inbounds [512 x i8], [512 x i8]* %utmpb, i32 0, i32 0
  %42 = load i8, i8* %arraydecay65, align 1
  %conv66 = sext i8 %42 to i32
  %cmp67 = icmp ne i32 %conv66, 92
  br i1 %cmp67, label %cond.true.69, label %cond.false.71

cond.true.69:                                     ; preds = %if.then.64
  %arraydecay70 = getelementptr inbounds [512 x i8], [512 x i8]* %utmpb, i32 0, i32 0
  br label %cond.end.74

cond.false.71:                                    ; preds = %if.then.64
  %arraydecay72 = getelementptr inbounds [512 x i8], [512 x i8]* %utmpb, i32 0, i32 0
  %add.ptr73 = getelementptr inbounds i8, i8* %arraydecay72, i64 1
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.71, %cond.true.69
  %cond75 = phi i8* [ %arraydecay70, %cond.true.69 ], [ %add.ptr73, %cond.false.71 ]
  store i8* %cond75, i8** %ut, align 8
  %43 = load i8*, i8** %ut, align 8
  %44 = load i8*, i8** %user, align 8
  %call76 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %43, i8* %44)
  %cmp77 = icmp eq i32 %call76, 0
  br i1 %cmp77, label %if.then.79, label %if.else

if.then.79:                                       ; preds = %cond.end.74
  store i32 1, i32* %user_inalias, align 4
  br label %if.end.81

if.else:                                          ; preds = %cond.end.74
  %45 = load %struct.alias_node*, %struct.alias_node** %addr, align 8
  %46 = load %struct.alias_node*, %struct.alias_node** %a, align 8
  %string80 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %46, i32 0, i32 0
  %47 = load i8*, i8** %string80, align 8
  call void @add_horz(%struct.alias_node* %45, i8* %47)
  br label %if.end.81

if.end.81:                                        ; preds = %if.else, %if.then.79
  br label %if.end.84

if.else.82:                                       ; preds = %for.body.58
  %48 = load %struct.alias_node*, %struct.alias_node** %addr, align 8
  %49 = load %struct.alias_node*, %struct.alias_node** %a, align 8
  %string83 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %49, i32 0, i32 0
  %50 = load i8*, i8** %string83, align 8
  call void @add_horz(%struct.alias_node* %48, i8* %50)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.82, %if.end.81
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.84
  %51 = load %struct.alias_node*, %struct.alias_node** %a, align 8
  %horz86 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %51, i32 0, i32 1
  %52 = load %struct.alias_node*, %struct.alias_node** %horz86, align 8
  store %struct.alias_node* %52, %struct.alias_node** %a, align 8
  br label %for.cond.55

for.end.87:                                       ; preds = %for.cond.55
  %53 = load %struct.alias_node*, %struct.alias_node** %t, align 8
  %horz88 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %53, i32 0, i32 1
  store %struct.alias_node* null, %struct.alias_node** %horz88, align 8
  %54 = load i32, i32* %user_inalias, align 4
  %cmp89 = icmp eq i32 %54, 0
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %for.end.87
  br label %while.cond

if.end.92:                                        ; preds = %for.end.87
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %cond.end
  %55 = load i8*, i8** %user, align 8
  %call94 = call i8* (i8*, ...) bitcast (i8* (...)* @tilde to i8* (i8*, ...)*)(i8* %55)
  store i8* %call94, i8** %home, align 8
  %cmp95 = icmp ne i8* %call94, null
  br i1 %cmp95, label %if.then.97, label %if.end.138

if.then.97:                                       ; preds = %if.end.93
  %56 = load %struct.alias_node*, %struct.alias_node** %flist, align 8
  %57 = load i8*, i8** %home, align 8
  %call98 = call %struct.alias_node* @h_search(%struct.alias_node* %56, i8* %57)
  %cmp99 = icmp ne %struct.alias_node* %call98, null
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.then.97
  br label %while.cond

if.end.102:                                       ; preds = %if.then.97
  %58 = load %struct.alias_node*, %struct.alias_node** %flist, align 8
  %59 = load i8*, i8** %home, align 8
  call void @add_horz(%struct.alias_node* %58, i8* %59)
  %arraydecay103 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %60 = load i8*, i8** %home, align 8
  %call104 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #4
  %arraydecay105 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call106 = call i32 @stat(i8* %arraydecay105, %struct.stat* %st) #4
  %cmp107 = icmp sge i32 %call106, 0
  br i1 %cmp107, label %land.lhs.true.109, label %if.end.137

land.lhs.true.109:                                ; preds = %if.end.102
  %st_mode110 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %61 = load i32, i32* %st_mode110, align 4
  %and111 = and i32 %61, 61440
  %cmp112 = icmp eq i32 %and111, 32768
  br i1 %cmp112, label %land.lhs.true.114, label %if.end.137

land.lhs.true.114:                                ; preds = %land.lhs.true.109
  %st_mode115 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %62 = load i32, i32* %st_mode115, align 4
  %and116 = and i32 %62, 292
  %cmp117 = icmp eq i32 %and116, 292
  br i1 %cmp117, label %land.lhs.true.119, label %if.end.137

land.lhs.true.119:                                ; preds = %land.lhs.true.114
  %arraydecay120 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call121 = call %struct._IO_FILE* @fopen(i8* %arraydecay120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call121, %struct._IO_FILE** %fp, align 8
  %cmp122 = icmp ne %struct._IO_FILE* %call121, null
  br i1 %cmp122, label %if.then.124, label %if.end.137

if.then.124:                                      ; preds = %land.lhs.true.119
  store i32 0, i32* %aliased, align 4
  br label %while.cond.125

while.cond.125:                                   ; preds = %while.body.129, %if.then.124
  %arraydecay126 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call127 = call i8* @fgets(i8* %arraydecay126, i32 512, %struct._IO_FILE* %63)
  %tobool128 = icmp ne i8* %call127, null
  br i1 %tobool128, label %while.body.129, label %while.end.132

while.body.129:                                   ; preds = %while.cond.125
  %64 = load %struct.alias_node*, %struct.alias_node** %addr, align 8
  %arraydecay130 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call131 = call i32 @recipients(%struct.alias_node* %64, i8* %arraydecay130)
  %65 = load i32, i32* %aliased, align 4
  %or = or i32 %65, %call131
  store i32 %or, i32* %aliased, align 4
  br label %while.cond.125

while.end.132:                                    ; preds = %while.cond.125
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call133 = call i32 @fclose(%struct._IO_FILE* %66)
  %67 = load i32, i32* %aliased, align 4
  %tobool134 = icmp ne i32 %67, 0
  br i1 %tobool134, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %while.end.132
  br label %while.cond

if.end.136:                                       ; preds = %while.end.132
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %land.lhs.true.119, %land.lhs.true.114, %land.lhs.true.109, %if.end.102
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.end.93
  %68 = load i8*, i8** %user, align 8
  %call139 = call i8* (i8*, ...) bitcast (i8* (...)* @res_fname to i8* (i8*, ...)*)(i8* %68)
  store i8* %call139, i8** %t_user, align 8
  %69 = load i8*, i8** %t_user, align 8
  %cmp140 = icmp ne i8* %69, null
  br i1 %cmp140, label %if.then.142, label %if.end.153

if.then.142:                                      ; preds = %if.end.138
  %70 = load i8*, i8** %t_user, align 8
  %call143 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* %70, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @alias.t_dom, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @alias.t_unam, i32 0, i32 0))
  %cmp144 = icmp eq i32 %call143, 0
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.then.142
  %71 = load %struct.alias_node*, %struct.alias_node** %addr, align 8
  %72 = load i8*, i8** %t_user, align 8
  call void @add_horz(%struct.alias_node* %71, i8* %72)
  br label %while.cond

if.end.147:                                       ; preds = %if.then.142
  %73 = load i8*, i8** %user, align 8
  %call148 = call i32 @strcmp(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @alias.t_unam, i32 0, i32 0), i8* %73) #5
  %cmp149 = icmp ne i32 %call148, 0
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.end.147
  %74 = load %struct.alias_node*, %struct.alias_node** %addr, align 8
  call void @add_horz(%struct.alias_node* %74, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @alias.t_unam, i32 0, i32 0))
  br label %while.cond

if.end.152:                                       ; preds = %if.end.147
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.end.138
  br label %aliasing_complete

aliasing_complete:                                ; preds = %if.end.153, %if.then.39
  %75 = load %struct.alias_node*, %struct.alias_node** %u, align 8
  %string154 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %75, i32 0, i32 0
  %76 = load i8*, i8** %string154, align 8
  %77 = load i8, i8* %76, align 1
  %conv155 = sext i8 %77 to i32
  %cmp156 = icmp ne i32 %conv155, 92
  br i1 %cmp156, label %cond.true.158, label %cond.false.160

cond.true.158:                                    ; preds = %aliasing_complete
  %78 = load %struct.alias_node*, %struct.alias_node** %u, align 8
  %string159 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %78, i32 0, i32 0
  %79 = load i8*, i8** %string159, align 8
  br label %cond.end.163

cond.false.160:                                   ; preds = %aliasing_complete
  %80 = load %struct.alias_node*, %struct.alias_node** %u, align 8
  %string161 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %80, i32 0, i32 0
  %81 = load i8*, i8** %string161, align 8
  %add.ptr162 = getelementptr inbounds i8, i8* %81, i64 1
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.160, %cond.true.158
  %cond164 = phi i8* [ %79, %cond.true.158 ], [ %add.ptr162, %cond.false.160 ]
  store i8* %cond164, i8** %user, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.176, %cond.end.163
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* @nargc, align 4
  %cmp166 = icmp slt i32 %82, %83
  br i1 %cmp166, label %for.body.168, label %for.end.178

for.body.168:                                     ; preds = %for.cond.165
  %84 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %84 to i64
  %arrayidx170 = getelementptr inbounds [500 x i8*], [500 x i8*]* @nargv, i32 0, i64 %idxprom169
  %85 = load i8*, i8** %arrayidx170, align 8
  %86 = load i8*, i8** %user, align 8
  %call171 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %85, i8* %86)
  %cmp172 = icmp eq i32 %call171, 0
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %for.body.168
  br label %for.end.178

if.end.175:                                       ; preds = %for.body.168
  br label %for.inc.176

for.inc.176:                                      ; preds = %if.end.175
  %87 = load i32, i32* %i, align 4
  %inc177 = add nsw i32 %87, 1
  store i32 %inc177, i32* %i, align 4
  br label %for.cond.165

for.end.178:                                      ; preds = %if.then.174, %for.cond.165
  %88 = load i32, i32* %i, align 4
  %89 = load i32, i32* @nargc, align 4
  %cmp179 = icmp eq i32 %88, %89
  br i1 %cmp179, label %if.then.181, label %if.end.185

if.then.181:                                      ; preds = %for.end.178
  %90 = load i8*, i8** %user, align 8
  %91 = load i32, i32* @nargc, align 4
  %inc182 = add nsw i32 %91, 1
  store i32 %inc182, i32* @nargc, align 4
  %idxprom183 = sext i32 %91 to i64
  %arrayidx184 = getelementptr inbounds [500 x i8*], [500 x i8*]* @nargv, i32 0, i64 %idxprom183
  store i8* %90, i8** %arrayidx184, align 8
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.181, %for.end.178
  br label %while.cond

while.end.186:                                    ; preds = %land.end
  %92 = load i32, i32* @nargc, align 4
  %93 = load i32*, i32** %pargc.addr, align 8
  store i32 %92, i32* %93, align 4
  ret i8** getelementptr inbounds ([500 x i8*], [500 x i8*]* @nargv, i32 0, i32 0)
}

declare i32 @strncmpic(...) #1

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @islocal(...) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare i32 @strcmpic(...) #1

declare i8* @tilde(...) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i8* @res_fname(...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define %struct.alias_node* @v_search(i8* %user) #0 {
entry:
  %retval = alloca %struct.alias_node*, align 8
  %user.addr = alloca i8*, align 8
  %head = alloca %struct.alias_node*, align 8
  %a = alloca %struct.alias_node*, align 8
  store i8* %user, i8** %user.addr, align 8
  store %struct.alias_node* @aliases, %struct.alias_node** %head, align 8
  %0 = load i32, i32* @v_search.loaded, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.alias_node*, %struct.alias_node** %head, align 8
  %2 = load i8*, i8** @aliasfile, align 8
  call void @load_alias(%struct.alias_node* %1, i8* %2)
  store i32 1, i32* @v_search.loaded, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.alias_node*, %struct.alias_node** %head, align 8
  %vert = getelementptr inbounds %struct.alias_node, %struct.alias_node* %3, i32 0, i32 2
  %4 = load %struct.alias_node*, %struct.alias_node** %vert, align 8
  store %struct.alias_node* %4, %struct.alias_node** %a, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load %struct.alias_node*, %struct.alias_node** %a, align 8
  %cmp1 = icmp ne %struct.alias_node* %5, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.alias_node*, %struct.alias_node** %a, align 8
  %string = getelementptr inbounds %struct.alias_node, %struct.alias_node* %6, i32 0, i32 0
  %7 = load i8*, i8** %string, align 8
  %8 = load i8*, i8** %user.addr, align 8
  %call = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %7, i8* %8)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.body
  br label %for.end

if.end.4:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %9 = load %struct.alias_node*, %struct.alias_node** %a, align 8
  %vert5 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %9, i32 0, i32 2
  %10 = load %struct.alias_node*, %struct.alias_node** %vert5, align 8
  store %struct.alias_node* %10, %struct.alias_node** %a, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.3, %for.cond
  %11 = load %struct.alias_node*, %struct.alias_node** %a, align 8
  %cmp6 = icmp eq %struct.alias_node* %11, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.end
  store %struct.alias_node* null, %struct.alias_node** %retval
  br label %return

if.end.8:                                         ; preds = %for.end
  %12 = load %struct.alias_node*, %struct.alias_node** %a, align 8
  store %struct.alias_node* %12, %struct.alias_node** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7
  %13 = load %struct.alias_node*, %struct.alias_node** %retval
  ret %struct.alias_node* %13
}

; Function Attrs: nounwind uwtable
define %struct.alias_node* @h_search(%struct.alias_node* %head, i8* %str) #0 {
entry:
  %head.addr = alloca %struct.alias_node*, align 8
  %str.addr = alloca i8*, align 8
  %a = alloca %struct.alias_node*, align 8
  store %struct.alias_node* %head, %struct.alias_node** %head.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load %struct.alias_node*, %struct.alias_node** %head.addr, align 8
  %horz = getelementptr inbounds %struct.alias_node, %struct.alias_node* %0, i32 0, i32 1
  %1 = load %struct.alias_node*, %struct.alias_node** %horz, align 8
  store %struct.alias_node* %1, %struct.alias_node** %a, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.alias_node*, %struct.alias_node** %a, align 8
  %cmp = icmp ne %struct.alias_node* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.alias_node*, %struct.alias_node** %a, align 8
  %string = getelementptr inbounds %struct.alias_node, %struct.alias_node* %3, i32 0, i32 0
  %4 = load i8*, i8** %string, align 8
  %5 = load i8*, i8** %str.addr, align 8
  %call = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %4, i8* %5)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct.alias_node*, %struct.alias_node** %a, align 8
  %horz2 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %6, i32 0, i32 1
  %7 = load %struct.alias_node*, %struct.alias_node** %horz2, align 8
  store %struct.alias_node* %7, %struct.alias_node** %a, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load %struct.alias_node*, %struct.alias_node** %a, align 8
  ret %struct.alias_node* %8
}

; Function Attrs: nounwind uwtable
define void @load_alias(%struct.alias_node* %head, i8* %filename) #0 {
entry:
  %head.addr = alloca %struct.alias_node*, align 8
  %filename.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %v = alloca %struct.alias_node*, align 8
  %h = alloca %struct.alias_node*, align 8
  %domain = alloca [512 x i8], align 16
  %user = alloca [512 x i8], align 16
  %p = alloca i8*, align 8
  %b = alloca i8*, align 8
  %buf = alloca [512 x i8], align 16
  %nl = alloca i8*, align 8
  store %struct.alias_node* %head, %struct.alias_node** %head.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @debug, align 4
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %2 = load i8*, i8** %filename.addr, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %for.end

if.end.4:                                         ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.72, %if.then.59, %if.end.28, %if.then.13, %if.end.4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call5 = call i8* @fgets(i8* %arraydecay, i32 512, %struct._IO_FILE* %3)
  %cmp6 = icmp ne i8* %call5, null
  br i1 %cmp6, label %while.body, label %while.end.74

while.body:                                       ; preds = %while.cond
  %arraydecay7 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay7, i8** %p, align 8
  %4 = load i8*, i8** %p, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp8 = icmp eq i32 %conv, 35
  br i1 %cmp8, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %6 = load i8*, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %conv10 = sext i8 %7 to i32
  %cmp11 = icmp eq i32 %conv10, 10
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false, %while.body
  br label %while.cond

if.end.14:                                        ; preds = %lor.lhs.false
  %8 = load i8*, i8** %p, align 8
  %call15 = call i32 @strncmp(i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i64 9) #5
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.29

if.then.18:                                       ; preds = %if.end.14
  %9 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 9
  store i8* %add.ptr, i8** %p, align 8
  %10 = load i8*, i8** %p, align 8
  %call19 = call i8* @strchr(i8* %10, i32 10) #5
  store i8* %call19, i8** %nl, align 8
  %cmp20 = icmp ne i8* %call19, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.18
  %11 = load i8*, i8** %nl, align 8
  store i8 0, i8* %11, align 1
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.then.18
  %12 = load i32, i32* @debug, align 4
  %cmp24 = icmp eq i32 %12, 2
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.23
  %13 = load i8*, i8** %filename.addr, align 8
  %14 = load i8*, i8** %p, align 8
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), i8* %13, i8* %14)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.23
  %15 = load %struct.alias_node*, %struct.alias_node** %head.addr, align 8
  %16 = load i8*, i8** %p, align 8
  call void @load_alias(%struct.alias_node* %15, i8* %16)
  br label %while.cond

if.end.29:                                        ; preds = %if.end.14
  %17 = load i8*, i8** %p, align 8
  %18 = load i8, i8* %17, align 1
  %conv30 = sext i8 %18 to i32
  %cmp31 = icmp ne i32 %conv30, 32
  br i1 %cmp31, label %land.lhs.true, label %if.end.72

land.lhs.true:                                    ; preds = %if.end.29
  %19 = load i8*, i8** %p, align 8
  %20 = load i8, i8* %19, align 1
  %conv33 = sext i8 %20 to i32
  %cmp34 = icmp ne i32 %conv33, 9
  br i1 %cmp34, label %if.then.36, label %if.end.72

if.then.36:                                       ; preds = %land.lhs.true
  %21 = load i8*, i8** %p, align 8
  store i8* %21, i8** %b, align 8
  br label %while.cond.37

while.cond.37:                                    ; preds = %while.body.52, %if.then.36
  %22 = load i8*, i8** %p, align 8
  %23 = load i8, i8* %22, align 1
  %conv38 = sext i8 %23 to i32
  %cmp39 = icmp ne i32 %conv38, 32
  br i1 %cmp39, label %land.lhs.true.41, label %land.end

land.lhs.true.41:                                 ; preds = %while.cond.37
  %24 = load i8*, i8** %p, align 8
  %25 = load i8, i8* %24, align 1
  %conv42 = sext i8 %25 to i32
  %cmp43 = icmp ne i32 %conv42, 9
  br i1 %cmp43, label %land.lhs.true.45, label %land.end

land.lhs.true.45:                                 ; preds = %land.lhs.true.41
  %26 = load i8*, i8** %p, align 8
  %27 = load i8, i8* %26, align 1
  %conv46 = sext i8 %27 to i32
  %cmp47 = icmp ne i32 %conv46, 10
  br i1 %cmp47, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.45
  %28 = load i8*, i8** %p, align 8
  %29 = load i8, i8* %28, align 1
  %conv49 = sext i8 %29 to i32
  %cmp50 = icmp ne i32 %conv49, 44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.45, %land.lhs.true.41, %while.cond.37
  %30 = phi i1 [ false, %land.lhs.true.45 ], [ false, %land.lhs.true.41 ], [ false, %while.cond.37 ], [ %cmp50, %land.rhs ]
  br i1 %30, label %while.body.52, label %while.end

while.body.52:                                    ; preds = %land.end
  %31 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond.37

while.end:                                        ; preds = %land.end
  %32 = load i8*, i8** %p, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr53, i8** %p, align 8
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %b, align 8
  %arraydecay54 = getelementptr inbounds [512 x i8], [512 x i8]* %domain, i32 0, i32 0
  %arraydecay55 = getelementptr inbounds [512 x i8], [512 x i8]* %user, i32 0, i32 0
  %call56 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* %33, i8* %arraydecay54, i8* %arraydecay55)
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %while.end
  br label %while.cond

if.end.60:                                        ; preds = %while.end
  %34 = load %struct.alias_node*, %struct.alias_node** %head.addr, align 8
  %arraydecay61 = getelementptr inbounds [512 x i8], [512 x i8]* %user, i32 0, i32 0
  %call62 = call %struct.alias_node* @add_vert(%struct.alias_node* %34, i8* %arraydecay61)
  store %struct.alias_node* %call62, %struct.alias_node** %h, align 8
  %cmp63 = icmp eq %struct.alias_node* %call62, null
  br i1 %cmp63, label %if.then.65, label %if.end.71

if.then.65:                                       ; preds = %if.end.60
  %35 = load i32, i32* @debug, align 4
  %cmp66 = icmp eq i32 %35, 2
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.then.65
  %36 = load i8*, i8** %b, align 8
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i8* %36)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.then.65
  br label %for.end

if.end.71:                                        ; preds = %if.end.60
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %land.lhs.true, %if.end.29
  %37 = load %struct.alias_node*, %struct.alias_node** %h, align 8
  %38 = load i8*, i8** %p, align 8
  %call73 = call i32 @recipients(%struct.alias_node* %37, i8* %38)
  br label %while.cond

while.end.74:                                     ; preds = %while.cond
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call75 = call i32 @fclose(%struct._IO_FILE* %39)
  %40 = load %struct.alias_node*, %struct.alias_node** %head.addr, align 8
  store %struct.alias_node* %40, %struct.alias_node** %v, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.86, %while.end.74
  %41 = load %struct.alias_node*, %struct.alias_node** %v, align 8
  %vert = getelementptr inbounds %struct.alias_node, %struct.alias_node* %41, i32 0, i32 2
  %42 = load %struct.alias_node*, %struct.alias_node** %vert, align 8
  %cmp76 = icmp ne %struct.alias_node* %42, null
  br i1 %cmp76, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load %struct.alias_node*, %struct.alias_node** %v, align 8
  %vert78 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %43, i32 0, i32 2
  %44 = load %struct.alias_node*, %struct.alias_node** %vert78, align 8
  %horz = getelementptr inbounds %struct.alias_node, %struct.alias_node* %44, i32 0, i32 1
  %45 = load %struct.alias_node*, %struct.alias_node** %horz, align 8
  %cmp79 = icmp eq %struct.alias_node* %45, null
  br i1 %cmp79, label %if.then.81, label %if.else

if.then.81:                                       ; preds = %for.body
  %46 = load %struct.alias_node*, %struct.alias_node** %v, align 8
  %vert82 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %46, i32 0, i32 2
  %47 = load %struct.alias_node*, %struct.alias_node** %vert82, align 8
  %vert83 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %47, i32 0, i32 2
  %48 = load %struct.alias_node*, %struct.alias_node** %vert83, align 8
  %49 = load %struct.alias_node*, %struct.alias_node** %v, align 8
  %vert84 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %49, i32 0, i32 2
  store %struct.alias_node* %48, %struct.alias_node** %vert84, align 8
  br label %if.end.86

if.else:                                          ; preds = %for.body
  %50 = load %struct.alias_node*, %struct.alias_node** %v, align 8
  %vert85 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %50, i32 0, i32 2
  %51 = load %struct.alias_node*, %struct.alias_node** %vert85, align 8
  store %struct.alias_node* %51, %struct.alias_node** %v, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.else, %if.then.81
  br label %for.cond

for.end:                                          ; preds = %if.end, %if.end.70, %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @recipients(%struct.alias_node* %h, i8* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca %struct.alias_node*, align 8
  %p.addr = alloca i8*, align 8
  %b = alloca i8*, align 8
  %d = alloca [512 x i8], align 16
  %u = alloca [512 x i8], align 16
  %ret = alloca i32, align 4
  store %struct.alias_node* %h, %struct.alias_node** %h.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load i8*, i8** %p.addr, align 8
  call void @strip_comments(i8* %0)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %p.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %3 = load i8*, i8** %p.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 9
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %5 = load i8*, i8** %p.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv6 = sext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 10
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.5
  %7 = load i8*, i8** %p.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv9 = sext i8 %8 to i32
  %cmp10 = icmp eq i32 %conv9, 44
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.5, %lor.lhs.false, %while.cond
  %9 = phi i1 [ true, %lor.lhs.false.5 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp10, %lor.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %10 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  br label %while.cond.12

while.cond.12:                                    ; preds = %while.end.84, %while.end
  %11 = load i8*, i8** %p.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv13 = sext i8 %12 to i32
  %conv14 = sext i32 %conv13 to i64
  %13 = inttoptr i64 %conv14 to i8*
  %cmp15 = icmp ne i8* %13, null
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.12
  %14 = load i8*, i8** %p.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv17 = sext i8 %15 to i32
  %cmp18 = icmp ne i32 %conv17, 35
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.12
  %16 = phi i1 [ false, %while.cond.12 ], [ %cmp18, %land.rhs ]
  br i1 %16, label %while.body.20, label %while.end.85

while.body.20:                                    ; preds = %land.end
  %17 = load i8*, i8** %p.addr, align 8
  store i8* %17, i8** %b, align 8
  %18 = load i8*, i8** %b, align 8
  %19 = load i8, i8* %18, align 1
  %conv21 = sext i8 %19 to i32
  %cmp22 = icmp eq i32 %conv21, 34
  br i1 %cmp22, label %if.then, label %if.else

if.then:                                          ; preds = %while.body.20
  %20 = load i8*, i8** %b, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr24, i8** %b, align 8
  %call = call i8* @strchr(i8* %incdec.ptr24, i32 34) #5
  store i8* %call, i8** %p.addr, align 8
  %cmp25 = icmp eq i8* %call, null
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %if.then
  %21 = load i32, i32* %ret, align 4
  store i32 %21, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.47

if.else:                                          ; preds = %while.body.20
  br label %while.cond.28

while.cond.28:                                    ; preds = %while.body.44, %if.else
  %22 = load i8*, i8** %p.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv29 = sext i8 %23 to i32
  %cmp30 = icmp ne i32 %conv29, 32
  br i1 %cmp30, label %land.lhs.true, label %land.end.43

land.lhs.true:                                    ; preds = %while.cond.28
  %24 = load i8*, i8** %p.addr, align 8
  %25 = load i8, i8* %24, align 1
  %conv32 = sext i8 %25 to i32
  %cmp33 = icmp ne i32 %conv32, 9
  br i1 %cmp33, label %land.lhs.true.35, label %land.end.43

land.lhs.true.35:                                 ; preds = %land.lhs.true
  %26 = load i8*, i8** %p.addr, align 8
  %27 = load i8, i8* %26, align 1
  %conv36 = sext i8 %27 to i32
  %cmp37 = icmp ne i32 %conv36, 10
  br i1 %cmp37, label %land.rhs.39, label %land.end.43

land.rhs.39:                                      ; preds = %land.lhs.true.35
  %28 = load i8*, i8** %p.addr, align 8
  %29 = load i8, i8* %28, align 1
  %conv40 = sext i8 %29 to i32
  %cmp41 = icmp ne i32 %conv40, 44
  br label %land.end.43

land.end.43:                                      ; preds = %land.rhs.39, %land.lhs.true.35, %land.lhs.true, %while.cond.28
  %30 = phi i1 [ false, %land.lhs.true.35 ], [ false, %land.lhs.true ], [ false, %while.cond.28 ], [ %cmp41, %land.rhs.39 ]
  br i1 %30, label %while.body.44, label %while.end.46

while.body.44:                                    ; preds = %land.end.43
  %31 = load i8*, i8** %p.addr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr45, i8** %p.addr, align 8
  br label %while.cond.28

while.end.46:                                     ; preds = %land.end.43
  br label %if.end.47

if.end.47:                                        ; preds = %while.end.46, %if.end
  %32 = load i8*, i8** %p.addr, align 8
  %33 = load i8, i8* %32, align 1
  %conv48 = sext i8 %33 to i32
  %cmp49 = icmp ne i32 %conv48, 0
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.47
  %34 = load i8*, i8** %p.addr, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr52, i8** %p.addr, align 8
  store i8 0, i8* %34, align 1
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.47
  %35 = load i8*, i8** %b, align 8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %d, i32 0, i32 0
  %arraydecay54 = getelementptr inbounds [512 x i8], [512 x i8]* %u, i32 0, i32 0
  %call55 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* %35, i8* %arraydecay, i8* %arraydecay54)
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then.63, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %if.end.53
  %36 = load %struct.alias_node*, %struct.alias_node** %h.addr, align 8
  %string = getelementptr inbounds %struct.alias_node, %struct.alias_node* %36, i32 0, i32 0
  %37 = load i8*, i8** %string, align 8
  %arraydecay59 = getelementptr inbounds [512 x i8], [512 x i8]* %u, i32 0, i32 0
  %call60 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %37, i8* %arraydecay59)
  %cmp61 = icmp ne i32 %call60, 0
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %lor.lhs.false.58, %if.end.53
  %38 = load %struct.alias_node*, %struct.alias_node** %h.addr, align 8
  %39 = load i8*, i8** %b, align 8
  call void @add_horz(%struct.alias_node* %38, i8* %39)
  store i32 1, i32* %ret, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %lor.lhs.false.58
  br label %while.cond.65

while.cond.65:                                    ; preds = %while.body.82, %if.end.64
  %40 = load i8*, i8** %p.addr, align 8
  %41 = load i8, i8* %40, align 1
  %conv66 = sext i8 %41 to i32
  %cmp67 = icmp eq i32 %conv66, 32
  br i1 %cmp67, label %lor.end.81, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %while.cond.65
  %42 = load i8*, i8** %p.addr, align 8
  %43 = load i8, i8* %42, align 1
  %conv70 = sext i8 %43 to i32
  %cmp71 = icmp eq i32 %conv70, 9
  br i1 %cmp71, label %lor.end.81, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %lor.lhs.false.69
  %44 = load i8*, i8** %p.addr, align 8
  %45 = load i8, i8* %44, align 1
  %conv74 = sext i8 %45 to i32
  %cmp75 = icmp eq i32 %conv74, 10
  br i1 %cmp75, label %lor.end.81, label %lor.rhs.77

lor.rhs.77:                                       ; preds = %lor.lhs.false.73
  %46 = load i8*, i8** %p.addr, align 8
  %47 = load i8, i8* %46, align 1
  %conv78 = sext i8 %47 to i32
  %cmp79 = icmp eq i32 %conv78, 44
  br label %lor.end.81

lor.end.81:                                       ; preds = %lor.rhs.77, %lor.lhs.false.73, %lor.lhs.false.69, %while.cond.65
  %48 = phi i1 [ true, %lor.lhs.false.73 ], [ true, %lor.lhs.false.69 ], [ true, %while.cond.65 ], [ %cmp79, %lor.rhs.77 ]
  br i1 %48, label %while.body.82, label %while.end.84

while.body.82:                                    ; preds = %lor.end.81
  %49 = load i8*, i8** %p.addr, align 8
  %incdec.ptr83 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr83, i8** %p.addr, align 8
  br label %while.cond.65

while.end.84:                                     ; preds = %lor.end.81
  br label %while.cond.12

while.end.85:                                     ; preds = %land.end
  %50 = load i32, i32* %ret, align 4
  store i32 %50, i32* %retval
  br label %return

return:                                           ; preds = %while.end.85, %if.then.27
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define void @strip_comments(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %b = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %p.addr, align 8
  %call = call i8* @strchr(i8* %0, i32 40) #5
  store i8* %call, i8** %p.addr, align 8
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  store i8* %1, i8** %b, align 8
  %2 = load i8*, i8** %p.addr, align 8
  %call1 = call i8* @strchr(i8* %2, i32 41) #5
  store i8* %call1, i8** %p.addr, align 8
  %cmp2 = icmp ne i8* %call1, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load i8*, i8** %b, align 8
  %4 = load i8*, i8** %p.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr3, i8** %p.addr, align 8
  %call4 = call i8* @strcpy(i8* %3, i8* %incdec.ptr3) #4
  br label %if.end

if.else:                                          ; preds = %while.body
  %5 = load i8*, i8** %b, align 8
  store i8 0, i8* %5, align 1
  br label %while.end

if.end:                                           ; preds = %if.then
  br label %while.cond

while.end:                                        ; preds = %if.else, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.alias_node* @add_vert(%struct.alias_node* %head, i8* %str) #0 {
entry:
  %head.addr = alloca %struct.alias_node*, align 8
  %str.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %new = alloca %struct.alias_node*, align 8
  store %struct.alias_node* %head, %struct.alias_node** %head.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strchr(i8* %0, i32 58) #5
  store i8* %call, i8** %p, align 8
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %p, align 8
  store i8 0, i8* %1, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call noalias i8* @malloc(i64 24) #4
  %2 = bitcast i8* %call1 to %struct.alias_node*
  store %struct.alias_node* %2, %struct.alias_node** %new, align 8
  %cmp2 = icmp ne %struct.alias_node* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.15

if.then.3:                                        ; preds = %if.end
  %3 = load i8*, i8** %str.addr, align 8
  %call4 = call i64 @strlen(i8* %3) #5
  %conv = trunc i64 %call4 to i32
  %add = add i32 %conv, 1
  %conv5 = zext i32 %add to i64
  %call6 = call noalias i8* @malloc(i64 %conv5) #4
  %4 = load %struct.alias_node*, %struct.alias_node** %new, align 8
  %string = getelementptr inbounds %struct.alias_node, %struct.alias_node* %4, i32 0, i32 0
  store i8* %call6, i8** %string, align 8
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.3
  %5 = load %struct.alias_node*, %struct.alias_node** %new, align 8
  %6 = bitcast %struct.alias_node* %5 to i8*
  call void @free(i8* %6) #4
  store %struct.alias_node* null, %struct.alias_node** %new, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.then.3
  %7 = load %struct.alias_node*, %struct.alias_node** %new, align 8
  %string10 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %7, i32 0, i32 0
  %8 = load i8*, i8** %string10, align 8
  %9 = load i8*, i8** %str.addr, align 8
  %call11 = call i8* @strcpy(i8* %8, i8* %9) #4
  %10 = load %struct.alias_node*, %struct.alias_node** %head.addr, align 8
  %vert = getelementptr inbounds %struct.alias_node, %struct.alias_node* %10, i32 0, i32 2
  %11 = load %struct.alias_node*, %struct.alias_node** %vert, align 8
  %12 = load %struct.alias_node*, %struct.alias_node** %new, align 8
  %vert12 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %12, i32 0, i32 2
  store %struct.alias_node* %11, %struct.alias_node** %vert12, align 8
  %13 = load %struct.alias_node*, %struct.alias_node** %new, align 8
  %horz = getelementptr inbounds %struct.alias_node, %struct.alias_node* %13, i32 0, i32 1
  store %struct.alias_node* null, %struct.alias_node** %horz, align 8
  %14 = load %struct.alias_node*, %struct.alias_node** %new, align 8
  %15 = load %struct.alias_node*, %struct.alias_node** %head.addr, align 8
  %vert13 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %15, i32 0, i32 2
  store %struct.alias_node* %14, %struct.alias_node** %vert13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.9
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  %16 = load %struct.alias_node*, %struct.alias_node** %new, align 8
  ret %struct.alias_node* %16
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @add_horz(%struct.alias_node* %head, i8* %str) #0 {
entry:
  %head.addr = alloca %struct.alias_node*, align 8
  %str.addr = alloca i8*, align 8
  %new = alloca %struct.alias_node*, align 8
  store %struct.alias_node* %head, %struct.alias_node** %head.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %call = call noalias i8* @malloc(i64 24) #4
  %0 = bitcast i8* %call to %struct.alias_node*
  store %struct.alias_node* %0, %struct.alias_node** %new, align 8
  %cmp = icmp ne %struct.alias_node* %0, null
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #5
  %conv = trunc i64 %call1 to i32
  %add = add i32 %conv, 1
  %conv2 = zext i32 %add to i64
  %call3 = call noalias i8* @malloc(i64 %conv2) #4
  %2 = load %struct.alias_node*, %struct.alias_node** %new, align 8
  %string = getelementptr inbounds %struct.alias_node, %struct.alias_node* %2, i32 0, i32 0
  store i8* %call3, i8** %string, align 8
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %3 = load %struct.alias_node*, %struct.alias_node** %new, align 8
  %4 = bitcast %struct.alias_node* %3 to i8*
  call void @free(i8* %4) #4
  store %struct.alias_node* null, %struct.alias_node** %new, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load %struct.alias_node*, %struct.alias_node** %new, align 8
  %string7 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %5, i32 0, i32 0
  %6 = load i8*, i8** %string7, align 8
  %7 = load i8*, i8** %str.addr, align 8
  %call8 = call i8* @strcpy(i8* %6, i8* %7) #4
  %8 = load %struct.alias_node*, %struct.alias_node** %head.addr, align 8
  %horz = getelementptr inbounds %struct.alias_node, %struct.alias_node* %8, i32 0, i32 1
  %9 = load %struct.alias_node*, %struct.alias_node** %horz, align 8
  %10 = load %struct.alias_node*, %struct.alias_node** %new, align 8
  %horz9 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %10, i32 0, i32 1
  store %struct.alias_node* %9, %struct.alias_node** %horz9, align 8
  %11 = load %struct.alias_node*, %struct.alias_node** %new, align 8
  %vert = getelementptr inbounds %struct.alias_node, %struct.alias_node* %11, i32 0, i32 2
  store %struct.alias_node* null, %struct.alias_node** %vert, align 8
  %12 = load %struct.alias_node*, %struct.alias_node** %new, align 8
  %13 = load %struct.alias_node*, %struct.alias_node** %head.addr, align 8
  %horz10 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %13, i32 0, i32 1
  store %struct.alias_node* %12, %struct.alias_node** %horz10, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.alias_node* @pop(%struct.alias_node* %head) #0 {
entry:
  %head.addr = alloca %struct.alias_node*, align 8
  %ret = alloca %struct.alias_node*, align 8
  store %struct.alias_node* %head, %struct.alias_node** %head.addr, align 8
  store %struct.alias_node* null, %struct.alias_node** %ret, align 8
  %0 = load %struct.alias_node*, %struct.alias_node** %head.addr, align 8
  %cmp = icmp ne %struct.alias_node* %0, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %1 = load %struct.alias_node*, %struct.alias_node** %head.addr, align 8
  %horz = getelementptr inbounds %struct.alias_node, %struct.alias_node* %1, i32 0, i32 1
  %2 = load %struct.alias_node*, %struct.alias_node** %horz, align 8
  store %struct.alias_node* %2, %struct.alias_node** %ret, align 8
  %3 = load %struct.alias_node*, %struct.alias_node** %ret, align 8
  %cmp1 = icmp ne %struct.alias_node* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.alias_node*, %struct.alias_node** %ret, align 8
  %horz3 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %4, i32 0, i32 1
  %5 = load %struct.alias_node*, %struct.alias_node** %horz3, align 8
  %6 = load %struct.alias_node*, %struct.alias_node** %head.addr, align 8
  %horz4 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %6, i32 0, i32 1
  store %struct.alias_node* %5, %struct.alias_node** %horz4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %7 = load %struct.alias_node*, %struct.alias_node** %ret, align 8
  ret %struct.alias_node* %7
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
