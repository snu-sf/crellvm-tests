; ModuleID = './MultiSource.Benchmarks.MallocBench/73.gs.iname.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name_table = type { [256 x %struct.name_s*], [512 x %struct.name_s*], i32 }
%struct.name_s = type { %struct.name_s*, i16, i16, i8*, %struct.ref_s* }
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"name_init\00", align 1
@the_nt = common global %struct.name_table* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"name_ref(string)\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@.str.3 = private unnamed_addr constant [88 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/iname.c\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"name_enter failed - %s\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"name_alloc_sub\00", align 1

; Function Attrs: nounwind uwtable
define void @name_init() #0 {
entry:
  %i = alloca i32, align 4
  %call = call i8* @alloc(i32 1, i32 6152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0))
  %0 = bitcast i8* %call to %struct.name_table*
  store %struct.name_table* %0, %struct.name_table** @the_nt, align 8
  %1 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %2 = bitcast %struct.name_table* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 6152, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %3, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %count = getelementptr inbounds %struct.name_table, %struct.name_table* %5, i32 0, i32 2
  store i32 %4, i32* %count, align 4
  %6 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %call1 = call i32 @name_alloc_sub(%struct.name_table* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %add = add i32 %7, 128
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i8* @alloc(i32, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @name_alloc_sub(%struct.name_table* %nt) #0 {
entry:
  %retval = alloca i32, align 4
  %nt.addr = alloca %struct.name_table*, align 8
  %sub = alloca %struct.name_s*, align 8
  store %struct.name_table* %nt, %struct.name_table** %nt.addr, align 8
  %call = call i8* @alloc(i32 1, i32 4096, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %0 = bitcast i8* %call to %struct.name_s*
  store %struct.name_s* %0, %struct.name_s** %sub, align 8
  %1 = load %struct.name_s*, %struct.name_s** %sub, align 8
  %cmp = icmp eq %struct.name_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.name_s*, %struct.name_s** %sub, align 8
  %3 = bitcast %struct.name_s* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 4096, i32 8, i1 false)
  %4 = load %struct.name_s*, %struct.name_s** %sub, align 8
  %5 = load %struct.name_table*, %struct.name_table** %nt.addr, align 8
  %count = getelementptr inbounds %struct.name_table, %struct.name_table* %5, i32 0, i32 2
  %6 = load i32, i32* %count, align 4
  %shr = lshr i32 %6, 7
  %idxprom = zext i32 %shr to i64
  %7 = load %struct.name_table*, %struct.name_table** %nt.addr, align 8
  %table = getelementptr inbounds %struct.name_table, %struct.name_table* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [512 x %struct.name_s*], [512 x %struct.name_s*]* %table, i32 0, i64 %idxprom
  store %struct.name_s* %4, %struct.name_s** %arrayidx, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @name_ref(i8* %ptr, i32 %isize, %struct.ref_s* %pref, i32 %enterflag) #0 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %isize.addr = alloca i32, align 4
  %pref.addr = alloca %struct.ref_s*, align 8
  %enterflag.addr = alloca i32, align 4
  %ppname = alloca %struct.name_s**, align 8
  %pname = alloca %struct.name_s*, align 8
  %cptr = alloca i8*, align 8
  %size = alloca i16, align 2
  %hash = alloca i16, align 2
  %code = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %isize, i32* %isize.addr, align 4
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8
  store i32 %enterflag, i32* %enterflag.addr, align 4
  %0 = load i32, i32* %isize.addr, align 4
  %conv = trunc i32 %0 to i16
  store i16 %conv, i16* %size, align 2
  %1 = load i16, i16* %size, align 2
  %conv1 = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %ptr.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv3 = zext i8 %3 to i32
  %shr = ashr i32 %conv3, 7
  %idxprom = sext i32 %shr to i64
  %4 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %table = getelementptr inbounds %struct.name_table, %struct.name_table* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [512 x %struct.name_s*], [512 x %struct.name_s*]* %table, i32 0, i64 %idxprom
  %5 = load %struct.name_s*, %struct.name_s** %arrayidx, align 8
  %6 = load i8*, i8** %ptr.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv4 = zext i8 %7 to i32
  %and = and i32 %conv4, 127
  %idx.ext = sext i32 %and to i64
  %add.ptr = getelementptr inbounds %struct.name_s, %struct.name_s* %5, i64 %idx.ext
  store %struct.name_s* %add.ptr, %struct.name_s** %pname, align 8
  %8 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %string_size = getelementptr inbounds %struct.name_s, %struct.name_s* %8, i32 0, i32 2
  %9 = load i16, i16* %string_size, align 2
  %conv5 = zext i16 %9 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %10 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %pname9 = bitcast %union.v* %value to %struct.name_s**
  store %struct.name_s* %10, %struct.name_s** %pname9, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  store i16 28, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %13 = load i32, i32* %enterflag.addr, align 4
  %cmp10 = icmp slt i32 %13, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  store i32 -21, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  %14 = load i8*, i8** %ptr.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv14 = zext i8 %15 to i16
  %16 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %index = getelementptr inbounds %struct.name_s, %struct.name_s* %16, i32 0, i32 1
  store i16 %conv14, i16* %index, align 2
  br label %if.end.61

if.else:                                          ; preds = %entry
  %17 = load i8*, i8** %ptr.addr, align 8
  %18 = load i16, i16* %size, align 2
  %conv15 = zext i16 %18 to i32
  %call = call i32 (i8*, i32, ...) bitcast (i32 (...)* @string_hash to i32 (i8*, i32, ...)*)(i8* %17, i32 %conv15)
  %conv16 = trunc i32 %call to i16
  store i16 %conv16, i16* %hash, align 2
  %19 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %hash17 = getelementptr inbounds %struct.name_table, %struct.name_table* %19, i32 0, i32 0
  %arraydecay = getelementptr inbounds [256 x %struct.name_s*], [256 x %struct.name_s*]* %hash17, i32 0, i32 0
  %20 = load i16, i16* %hash, align 2
  %conv18 = zext i16 %20 to i32
  %and19 = and i32 %conv18, 255
  %idx.ext20 = sext i32 %and19 to i64
  %add.ptr21 = getelementptr inbounds %struct.name_s*, %struct.name_s** %arraydecay, i64 %idx.ext20
  store %struct.name_s** %add.ptr21, %struct.name_s*** %ppname, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.35, %if.else
  %21 = load %struct.name_s**, %struct.name_s*** %ppname, align 8
  %22 = load %struct.name_s*, %struct.name_s** %21, align 8
  store %struct.name_s* %22, %struct.name_s** %pname, align 8
  %cmp22 = icmp ne %struct.name_s* %22, null
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %string_size24 = getelementptr inbounds %struct.name_s, %struct.name_s* %23, i32 0, i32 2
  %24 = load i16, i16* %string_size24, align 2
  %conv25 = zext i16 %24 to i32
  %25 = load i16, i16* %size, align 2
  %conv26 = zext i16 %25 to i32
  %cmp27 = icmp eq i32 %conv25, %conv26
  br i1 %cmp27, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %while.body
  %26 = load i8*, i8** %ptr.addr, align 8
  %27 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %string_bytes = getelementptr inbounds %struct.name_s, %struct.name_s* %27, i32 0, i32 3
  %28 = load i8*, i8** %string_bytes, align 8
  %29 = load i16, i16* %size, align 2
  %conv29 = zext i16 %29 to i64
  %call30 = call i32 @memcmp(i8* %26, i8* %28, i64 %conv29) #5
  %tobool = icmp ne i32 %call30, 0
  br i1 %tobool, label %if.end.35, label %if.then.31

if.then.31:                                       ; preds = %land.lhs.true
  %30 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %31 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %pname33 = bitcast %union.v* %value32 to %struct.name_s**
  store %struct.name_s* %30, %struct.name_s** %pname33, align 8
  %32 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %type_attrs34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  store i16 28, i16* %type_attrs34, align 2
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %land.lhs.true, %while.body
  %33 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %next = getelementptr inbounds %struct.name_s, %struct.name_s* %33, i32 0, i32 0
  store %struct.name_s** %next, %struct.name_s*** %ppname, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %34 = load i32, i32* %enterflag.addr, align 4
  %cmp36 = icmp slt i32 %34, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %while.end
  store i32 -21, i32* %retval
  br label %return

if.end.39:                                        ; preds = %while.end
  %35 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %count = getelementptr inbounds %struct.name_table, %struct.name_table* %35, i32 0, i32 2
  %36 = load i32, i32* %count, align 4
  %and40 = and i32 %36, 127
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.end.48, label %if.then.42

if.then.42:                                       ; preds = %if.end.39
  %37 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %call43 = call i32 @name_alloc_sub(%struct.name_table* %37)
  store i32 %call43, i32* %code, align 4
  %38 = load i32, i32* %code, align 4
  %cmp44 = icmp slt i32 %38, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.42
  %39 = load i32, i32* %code, align 4
  store i32 %39, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.then.42
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.39
  %40 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %count49 = getelementptr inbounds %struct.name_table, %struct.name_table* %40, i32 0, i32 2
  %41 = load i32, i32* %count49, align 4
  %shr50 = lshr i32 %41, 7
  %idxprom51 = zext i32 %shr50 to i64
  %42 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %table52 = getelementptr inbounds %struct.name_table, %struct.name_table* %42, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [512 x %struct.name_s*], [512 x %struct.name_s*]* %table52, i32 0, i64 %idxprom51
  %43 = load %struct.name_s*, %struct.name_s** %arrayidx53, align 8
  %44 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %count54 = getelementptr inbounds %struct.name_table, %struct.name_table* %44, i32 0, i32 2
  %45 = load i32, i32* %count54, align 4
  %and55 = and i32 %45, 127
  %idx.ext56 = zext i32 %and55 to i64
  %add.ptr57 = getelementptr inbounds %struct.name_s, %struct.name_s* %43, i64 %idx.ext56
  store %struct.name_s* %add.ptr57, %struct.name_s** %pname, align 8
  %46 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %count58 = getelementptr inbounds %struct.name_table, %struct.name_table* %46, i32 0, i32 2
  %47 = load i32, i32* %count58, align 4
  %inc = add i32 %47, 1
  store i32 %inc, i32* %count58, align 4
  %conv59 = trunc i32 %47 to i16
  %48 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %index60 = getelementptr inbounds %struct.name_s, %struct.name_s* %48, i32 0, i32 1
  store i16 %conv59, i16* %index60, align 2
  %49 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %50 = load %struct.name_s**, %struct.name_s*** %ppname, align 8
  store %struct.name_s* %49, %struct.name_s** %50, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.48, %if.end.13
  %51 = load i32, i32* %enterflag.addr, align 4
  %tobool62 = icmp ne i32 %51, 0
  br i1 %tobool62, label %if.then.63, label %if.else.71

if.then.63:                                       ; preds = %if.end.61
  %52 = load i16, i16* %size, align 2
  %conv64 = zext i16 %52 to i32
  %call65 = call i8* @alloc(i32 %conv64, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store i8* %call65, i8** %cptr, align 8
  %53 = load i8*, i8** %cptr, align 8
  %cmp66 = icmp eq i8* %53, null
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.then.63
  store i32 -25, i32* %retval
  br label %return

if.end.69:                                        ; preds = %if.then.63
  %54 = load i8*, i8** %cptr, align 8
  %55 = load i8*, i8** %ptr.addr, align 8
  %56 = load i16, i16* %size, align 2
  %conv70 = zext i16 %56 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 %conv70, i32 1, i1 false)
  br label %if.end.72

if.else.71:                                       ; preds = %if.end.61
  %57 = load i8*, i8** %ptr.addr, align 8
  store i8* %57, i8** %cptr, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.71, %if.end.69
  %58 = load i16, i16* %size, align 2
  %59 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %string_size73 = getelementptr inbounds %struct.name_s, %struct.name_s* %59, i32 0, i32 2
  store i16 %58, i16* %string_size73, align 2
  %60 = load i8*, i8** %cptr, align 8
  %61 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %string_bytes74 = getelementptr inbounds %struct.name_s, %struct.name_s* %61, i32 0, i32 3
  store i8* %60, i8** %string_bytes74, align 8
  %62 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %next75 = getelementptr inbounds %struct.name_s, %struct.name_s* %62, i32 0, i32 0
  store %struct.name_s* null, %struct.name_s** %next75, align 8
  %63 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %pvalue = getelementptr inbounds %struct.name_s, %struct.name_s* %63, i32 0, i32 4
  store %struct.ref_s* null, %struct.ref_s** %pvalue, align 8
  %64 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %65 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %value76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i32 0, i32 0
  %pname77 = bitcast %union.v* %value76 to %struct.name_s**
  store %struct.name_s* %64, %struct.name_s** %pname77, align 8
  %66 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %type_attrs78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 0, i32 1
  store i16 28, i16* %type_attrs78, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.72, %if.then.68, %if.then.46, %if.then.38, %if.then.31, %if.then.12, %if.then.8
  %67 = load i32, i32* %retval
  ret i32 %67
}

declare i32 @string_hash(...) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @name_string_ref(%struct.ref_s* %pnref, %struct.ref_s* %psref) #0 {
entry:
  %pnref.addr = alloca %struct.ref_s*, align 8
  %psref.addr = alloca %struct.ref_s*, align 8
  %pname = alloca %struct.name_s*, align 8
  store %struct.ref_s* %pnref, %struct.ref_s** %pnref.addr, align 8
  store %struct.ref_s* %psref, %struct.ref_s** %psref.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %pname1 = bitcast %union.v* %value to %struct.name_s**
  %1 = load %struct.name_s*, %struct.name_s** %pname1, align 8
  store %struct.name_s* %1, %struct.name_s** %pname, align 8
  %2 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %string_bytes = getelementptr inbounds %struct.name_s, %struct.name_s* %2, i32 0, i32 3
  %3 = load i8*, i8** %string_bytes, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %psref.addr, align 8
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %bytes = bitcast %union.v* %value2 to i8**
  store i8* %3, i8** %bytes, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %psref.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  store i16 566, i16* %type_attrs, align 2
  %6 = load %struct.name_s*, %struct.name_s** %pname, align 8
  %string_size = getelementptr inbounds %struct.name_s, %struct.name_s* %6, i32 0, i32 2
  %7 = load i16, i16* %string_size, align 2
  %8 = load %struct.ref_s*, %struct.ref_s** %psref.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 2
  store i16 %7, i16* %size, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define void @name_enter(i8* %str, %struct.ref_s* %pref) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  store i8* %str, i8** %str.addr, align 8
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %1) #5
  %conv = trunc i64 %call to i32
  %2 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8
  %call1 = call i32 @name_ref(i8* %0, i32 %conv, %struct.ref_s* %2, i32 0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.3, i32 0, i32 0), i32 135)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** %str.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %5)
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define void @name_index_ref(i32 %index, %struct.ref_s* %pnref) #0 {
entry:
  %index.addr = alloca i32, align 4
  %pnref.addr = alloca %struct.ref_s*, align 8
  store i32 %index, i32* %index.addr, align 4
  store %struct.ref_s* %pnref, %struct.ref_s** %pnref.addr, align 8
  %0 = load i32, i32* %index.addr, align 4
  %shr = lshr i32 %0, 7
  %idxprom = zext i32 %shr to i64
  %1 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %table = getelementptr inbounds %struct.name_table, %struct.name_table* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [512 x %struct.name_s*], [512 x %struct.name_s*]* %table, i32 0, i64 %idxprom
  %2 = load %struct.name_s*, %struct.name_s** %arrayidx, align 8
  %3 = load i32, i32* %index.addr, align 4
  %and = and i32 %3, 127
  %idx.ext = zext i32 %and to i64
  %add.ptr = getelementptr inbounds %struct.name_s, %struct.name_s* %2, i64 %idx.ext
  %4 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %pname = bitcast %union.v* %value to %struct.name_s**
  store %struct.name_s* %add.ptr, %struct.name_s** %pname, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %pnref.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  store i16 28, i16* %type_attrs, align 2
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
