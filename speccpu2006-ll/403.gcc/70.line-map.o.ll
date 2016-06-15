; ModuleID = 'line-map.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.line_maps = type { %struct.line_map*, i32, i32, i32, i32, i8 }
%struct.line_map = type { i8*, i32, i32, i32, i8, i8 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [44 x i8] c"line-map.c: file \22%s\22 entered but not left\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"line-map.c: file \22%s\22 left but not entered\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"In file included from %s:%u\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c",\0A                 from %s:%u\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @init_line_maps(%struct.line_maps* %set) #0 {
entry:
  %set.addr = alloca %struct.line_maps*, align 8
  store %struct.line_maps* %set, %struct.line_maps** %set.addr, align 8
  %0 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %0, i32 0, i32 0
  store %struct.line_map* null, %struct.line_map** %maps, align 8
  %1 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %allocated = getelementptr inbounds %struct.line_maps, %struct.line_maps* %1, i32 0, i32 1
  store i32 0, i32* %allocated, align 4
  %2 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %used = getelementptr inbounds %struct.line_maps, %struct.line_maps* %2, i32 0, i32 2
  store i32 0, i32* %used, align 4
  %3 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %last_listed = getelementptr inbounds %struct.line_maps, %struct.line_maps* %3, i32 0, i32 3
  store i32 -1, i32* %last_listed, align 4
  %4 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %trace_includes = getelementptr inbounds %struct.line_maps, %struct.line_maps* %4, i32 0, i32 5
  store i8 0, i8* %trace_includes, align 1
  %5 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %depth = getelementptr inbounds %struct.line_maps, %struct.line_maps* %5, i32 0, i32 4
  store i32 0, i32* %depth, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_line_maps(%struct.line_maps* %set) #0 {
entry:
  %set.addr = alloca %struct.line_maps*, align 8
  %map = alloca %struct.line_map*, align 8
  store %struct.line_maps* %set, %struct.line_maps** %set.addr, align 8
  %0 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %0, i32 0, i32 0
  %1 = load %struct.line_map*, %struct.line_map** %maps, align 8
  %tobool = icmp ne %struct.line_map* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %maps1 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %2, i32 0, i32 0
  %3 = load %struct.line_map*, %struct.line_map** %maps1, align 8
  %4 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %used = getelementptr inbounds %struct.line_maps, %struct.line_maps* %4, i32 0, i32 2
  %5 = load i32, i32* %used, align 4
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.line_map, %struct.line_map* %3, i64 %idx.ext
  %add.ptr2 = getelementptr inbounds %struct.line_map, %struct.line_map* %add.ptr, i64 -1
  store %struct.line_map* %add.ptr2, %struct.line_map** %map, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load %struct.line_map*, %struct.line_map** %map, align 8
  %included_from = getelementptr inbounds %struct.line_map, %struct.line_map* %6, i32 0, i32 3
  %7 = load i32, i32* %included_from, align 4
  %cmp = icmp slt i32 %7, 0
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load %struct.line_map*, %struct.line_map** %map, align 8
  %to_file = getelementptr inbounds %struct.line_map, %struct.line_map* %9, i32 0, i32 0
  %10 = load i8*, i8** %to_file, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0), i8* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct.line_map*, %struct.line_map** %map, align 8
  %included_from3 = getelementptr inbounds %struct.line_map, %struct.line_map* %11, i32 0, i32 3
  %12 = load i32, i32* %included_from3, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %maps4 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %13, i32 0, i32 0
  %14 = load %struct.line_map*, %struct.line_map** %maps4, align 8
  %arrayidx = getelementptr inbounds %struct.line_map, %struct.line_map* %14, i64 %idxprom
  store %struct.line_map* %arrayidx, %struct.line_map** %map, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %maps5 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %15, i32 0, i32 0
  %16 = load %struct.line_map*, %struct.line_map** %maps5, align 8
  %17 = bitcast %struct.line_map* %16 to i8*
  call void @free(i8* %17) #5
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.line_map* @add_line_map(%struct.line_maps* %set, i32 %reason, i32 %sysp, i32 %from_line, i8* %to_file, i32 %to_line) #0 {
entry:
  %set.addr = alloca %struct.line_maps*, align 8
  %reason.addr = alloca i32, align 4
  %sysp.addr = alloca i32, align 4
  %from_line.addr = alloca i32, align 4
  %to_file.addr = alloca i8*, align 8
  %to_line.addr = alloca i32, align 4
  %map = alloca %struct.line_map*, align 8
  %from = alloca %struct.line_map*, align 8
  %error = alloca i8, align 1
  store %struct.line_maps* %set, %struct.line_maps** %set.addr, align 8
  store i32 %reason, i32* %reason.addr, align 4
  store i32 %sysp, i32* %sysp.addr, align 4
  store i32 %from_line, i32* %from_line.addr, align 4
  store i8* %to_file, i8** %to_file.addr, align 8
  store i32 %to_line, i32* %to_line.addr, align 4
  %0 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %used = getelementptr inbounds %struct.line_maps, %struct.line_maps* %0, i32 0, i32 2
  %1 = load i32, i32* %used, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %from_line.addr, align 4
  %3 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %used1 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %3, i32 0, i32 2
  %4 = load i32, i32* %used1, align 4
  %sub = sub i32 %4, 1
  %idxprom = zext i32 %sub to i64
  %5 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %5, i32 0, i32 0
  %6 = load %struct.line_map*, %struct.line_map** %maps, align 8
  %arrayidx = getelementptr inbounds %struct.line_map, %struct.line_map* %6, i64 %idxprom
  %from_line2 = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx, i32 0, i32 2
  %7 = load i32, i32* %from_line2, align 4
  %cmp = icmp ult i32 %2, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %used3 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %8, i32 0, i32 2
  %9 = load i32, i32* %used3, align 4
  %10 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %allocated = getelementptr inbounds %struct.line_maps, %struct.line_maps* %10, i32 0, i32 1
  %11 = load i32, i32* %allocated, align 4
  %cmp4 = icmp eq i32 %9, %11
  br i1 %cmp4, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %if.end
  %12 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %allocated6 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %12, i32 0, i32 1
  %13 = load i32, i32* %allocated6, align 4
  %mul = mul i32 2, %13
  %add = add i32 %mul, 256
  %14 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %allocated7 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %14, i32 0, i32 1
  store i32 %add, i32* %allocated7, align 4
  %15 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %maps8 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %15, i32 0, i32 0
  %16 = load %struct.line_map*, %struct.line_map** %maps8, align 8
  %17 = bitcast %struct.line_map* %16 to i8*
  %18 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %allocated9 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %18, i32 0, i32 1
  %19 = load i32, i32* %allocated9, align 4
  %conv = zext i32 %19 to i64
  %mul10 = mul i64 %conv, 24
  %call = call i8* @xrealloc(i8* %17, i64 %mul10)
  %20 = bitcast i8* %call to %struct.line_map*
  %21 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %maps11 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %21, i32 0, i32 0
  store %struct.line_map* %20, %struct.line_map** %maps11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.5, %if.end
  %22 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %used13 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %22, i32 0, i32 2
  %23 = load i32, i32* %used13, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %used13, align 4
  %idxprom14 = zext i32 %23 to i64
  %24 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %maps15 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %24, i32 0, i32 0
  %25 = load %struct.line_map*, %struct.line_map** %maps15, align 8
  %arrayidx16 = getelementptr inbounds %struct.line_map, %struct.line_map* %25, i64 %idxprom14
  store %struct.line_map* %arrayidx16, %struct.line_map** %map, align 8
  %26 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %depth = getelementptr inbounds %struct.line_maps, %struct.line_maps* %26, i32 0, i32 4
  %27 = load i32, i32* %depth, align 4
  %cmp17 = icmp eq i32 %27, 0
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.12
  store i32 0, i32* %reason.addr, align 4
  br label %if.end.60

if.else:                                          ; preds = %if.end.12
  %28 = load i32, i32* %reason.addr, align 4
  %cmp20 = icmp eq i32 %28, 1
  br i1 %cmp20, label %if.then.22, label %if.end.59

if.then.22:                                       ; preds = %if.else
  %29 = load %struct.line_map*, %struct.line_map** %map, align 8
  %add.ptr = getelementptr inbounds %struct.line_map, %struct.line_map* %29, i64 -1
  %included_from = getelementptr inbounds %struct.line_map, %struct.line_map* %add.ptr, i32 0, i32 3
  %30 = load i32, i32* %included_from, align 4
  %cmp23 = icmp slt i32 %30, 0
  br i1 %cmp23, label %if.then.25, label %if.else.27

if.then.25:                                       ; preds = %if.then.22
  store i8 1, i8* %error, align 1
  store i32 2, i32* %reason.addr, align 4
  %31 = load %struct.line_map*, %struct.line_map** %map, align 8
  %add.ptr26 = getelementptr inbounds %struct.line_map, %struct.line_map* %31, i64 -1
  store %struct.line_map* %add.ptr26, %struct.line_map** %from, align 8
  br label %if.end.37

if.else.27:                                       ; preds = %if.then.22
  %32 = load %struct.line_map*, %struct.line_map** %map, align 8
  %add.ptr28 = getelementptr inbounds %struct.line_map, %struct.line_map* %32, i64 -1
  %included_from29 = getelementptr inbounds %struct.line_map, %struct.line_map* %add.ptr28, i32 0, i32 3
  %33 = load i32, i32* %included_from29, align 4
  %idxprom30 = sext i32 %33 to i64
  %34 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %maps31 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %34, i32 0, i32 0
  %35 = load %struct.line_map*, %struct.line_map** %maps31, align 8
  %arrayidx32 = getelementptr inbounds %struct.line_map, %struct.line_map* %35, i64 %idxprom30
  store %struct.line_map* %arrayidx32, %struct.line_map** %from, align 8
  %36 = load i8*, i8** %to_file.addr, align 8
  %tobool33 = icmp ne i8* %36, null
  br i1 %tobool33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else.27
  %37 = load %struct.line_map*, %struct.line_map** %from, align 8
  %to_file34 = getelementptr inbounds %struct.line_map, %struct.line_map* %37, i32 0, i32 0
  %38 = load i8*, i8** %to_file34, align 8
  %39 = load i8*, i8** %to_file.addr, align 8
  %call35 = call i32 @strcmp(i8* %38, i8* %39) #7
  %tobool36 = icmp ne i32 %call35, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else.27
  %40 = phi i1 [ false, %if.else.27 ], [ %tobool36, %land.rhs ]
  %frombool = zext i1 %40 to i8
  store i8 %frombool, i8* %error, align 1
  br label %if.end.37

if.end.37:                                        ; preds = %land.end, %if.then.25
  %41 = load i8, i8* %error, align 1
  %tobool38 = trunc i8 %41 to i1
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.37
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = load i8*, i8** %to_file.addr, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0), i8* %43)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.37
  %44 = load i8, i8* %error, align 1
  %tobool42 = trunc i8 %44 to i1
  br i1 %tobool42, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.41
  %45 = load i8*, i8** %to_file.addr, align 8
  %cmp44 = icmp eq i8* %45, null
  br i1 %cmp44, label %if.then.46, label %if.end.58

if.then.46:                                       ; preds = %lor.lhs.false, %if.end.41
  %46 = load %struct.line_map*, %struct.line_map** %from, align 8
  %to_file47 = getelementptr inbounds %struct.line_map, %struct.line_map* %46, i32 0, i32 0
  %47 = load i8*, i8** %to_file47, align 8
  store i8* %47, i8** %to_file.addr, align 8
  %48 = load %struct.line_map*, %struct.line_map** %from, align 8
  %arrayidx48 = getelementptr inbounds %struct.line_map, %struct.line_map* %48, i64 1
  %from_line49 = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx48, i32 0, i32 2
  %49 = load i32, i32* %from_line49, align 4
  %sub50 = sub i32 %49, 1
  %50 = load %struct.line_map*, %struct.line_map** %from, align 8
  %to_line51 = getelementptr inbounds %struct.line_map, %struct.line_map* %50, i32 0, i32 1
  %51 = load i32, i32* %to_line51, align 4
  %add52 = add i32 %sub50, %51
  %52 = load %struct.line_map*, %struct.line_map** %from, align 8
  %from_line53 = getelementptr inbounds %struct.line_map, %struct.line_map* %52, i32 0, i32 2
  %53 = load i32, i32* %from_line53, align 4
  %sub54 = sub i32 %add52, %53
  %add55 = add i32 %sub54, 1
  store i32 %add55, i32* %to_line.addr, align 4
  %54 = load %struct.line_map*, %struct.line_map** %from, align 8
  %sysp56 = getelementptr inbounds %struct.line_map, %struct.line_map* %54, i32 0, i32 5
  %55 = load i8, i8* %sysp56, align 1
  %conv57 = zext i8 %55 to i32
  store i32 %conv57, i32* %sysp.addr, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.46, %lor.lhs.false
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.else
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.19
  %56 = load i32, i32* %reason.addr, align 4
  %57 = load %struct.line_map*, %struct.line_map** %map, align 8
  %reason61 = getelementptr inbounds %struct.line_map, %struct.line_map* %57, i32 0, i32 4
  %58 = trunc i32 %56 to i8
  store i8 %58, i8* %reason61, align 4
  %bf.result.cast = zext i8 %58 to i32
  %59 = load i32, i32* %sysp.addr, align 4
  %conv62 = trunc i32 %59 to i8
  %60 = load %struct.line_map*, %struct.line_map** %map, align 8
  %sysp63 = getelementptr inbounds %struct.line_map, %struct.line_map* %60, i32 0, i32 5
  store i8 %conv62, i8* %sysp63, align 1
  %61 = load i32, i32* %from_line.addr, align 4
  %62 = load %struct.line_map*, %struct.line_map** %map, align 8
  %from_line64 = getelementptr inbounds %struct.line_map, %struct.line_map* %62, i32 0, i32 2
  store i32 %61, i32* %from_line64, align 4
  %63 = load i8*, i8** %to_file.addr, align 8
  %64 = load %struct.line_map*, %struct.line_map** %map, align 8
  %to_file65 = getelementptr inbounds %struct.line_map, %struct.line_map* %64, i32 0, i32 0
  store i8* %63, i8** %to_file65, align 8
  %65 = load i32, i32* %to_line.addr, align 4
  %66 = load %struct.line_map*, %struct.line_map** %map, align 8
  %to_line66 = getelementptr inbounds %struct.line_map, %struct.line_map* %66, i32 0, i32 1
  store i32 %65, i32* %to_line66, align 4
  %67 = load i32, i32* %reason.addr, align 4
  %cmp67 = icmp eq i32 %67, 0
  br i1 %cmp67, label %if.then.69, label %if.else.78

if.then.69:                                       ; preds = %if.end.60
  %68 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %depth70 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %68, i32 0, i32 4
  %69 = load i32, i32* %depth70, align 4
  %inc71 = add i32 %69, 1
  store i32 %inc71, i32* %depth70, align 4
  %70 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %used72 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %70, i32 0, i32 2
  %71 = load i32, i32* %used72, align 4
  %sub73 = sub i32 %71, 2
  %72 = load %struct.line_map*, %struct.line_map** %map, align 8
  %included_from74 = getelementptr inbounds %struct.line_map, %struct.line_map* %72, i32 0, i32 3
  store i32 %sub73, i32* %included_from74, align 4
  %73 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %trace_includes = getelementptr inbounds %struct.line_maps, %struct.line_maps* %73, i32 0, i32 5
  %74 = load i8, i8* %trace_includes, align 1
  %tobool75 = trunc i8 %74 to i1
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.then.69
  %75 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %76 = load %struct.line_map*, %struct.line_map** %map, align 8
  call void @trace_include(%struct.line_maps* %75, %struct.line_map* %76)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.then.69
  br label %if.end.99

if.else.78:                                       ; preds = %if.end.60
  %77 = load i32, i32* %reason.addr, align 4
  %cmp79 = icmp eq i32 %77, 2
  br i1 %cmp79, label %if.then.81, label %if.else.85

if.then.81:                                       ; preds = %if.else.78
  %78 = load %struct.line_map*, %struct.line_map** %map, align 8
  %arrayidx82 = getelementptr inbounds %struct.line_map, %struct.line_map* %78, i64 -1
  %included_from83 = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx82, i32 0, i32 3
  %79 = load i32, i32* %included_from83, align 4
  %80 = load %struct.line_map*, %struct.line_map** %map, align 8
  %included_from84 = getelementptr inbounds %struct.line_map, %struct.line_map* %80, i32 0, i32 3
  store i32 %79, i32* %included_from84, align 4
  br label %if.end.98

if.else.85:                                       ; preds = %if.else.78
  %81 = load i32, i32* %reason.addr, align 4
  %cmp86 = icmp eq i32 %81, 1
  br i1 %cmp86, label %if.then.88, label %if.end.97

if.then.88:                                       ; preds = %if.else.85
  %82 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %depth89 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %82, i32 0, i32 4
  %83 = load i32, i32* %depth89, align 4
  %dec = add i32 %83, -1
  store i32 %dec, i32* %depth89, align 4
  %84 = load %struct.line_map*, %struct.line_map** %map, align 8
  %add.ptr90 = getelementptr inbounds %struct.line_map, %struct.line_map* %84, i64 -1
  %included_from91 = getelementptr inbounds %struct.line_map, %struct.line_map* %add.ptr90, i32 0, i32 3
  %85 = load i32, i32* %included_from91, align 4
  %idxprom92 = sext i32 %85 to i64
  %86 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %maps93 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %86, i32 0, i32 0
  %87 = load %struct.line_map*, %struct.line_map** %maps93, align 8
  %arrayidx94 = getelementptr inbounds %struct.line_map, %struct.line_map* %87, i64 %idxprom92
  %included_from95 = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx94, i32 0, i32 3
  %88 = load i32, i32* %included_from95, align 4
  %89 = load %struct.line_map*, %struct.line_map** %map, align 8
  %included_from96 = getelementptr inbounds %struct.line_map, %struct.line_map* %89, i32 0, i32 3
  store i32 %88, i32* %included_from96, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.88, %if.else.85
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.81
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.end.77
  %90 = load %struct.line_map*, %struct.line_map** %map, align 8
  ret %struct.line_map* %90
}

; Function Attrs: noreturn nounwind
declare void @abort() #3

declare i8* @xrealloc(i8*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @trace_include(%struct.line_maps* %set, %struct.line_map* %map) #0 {
entry:
  %set.addr = alloca %struct.line_maps*, align 8
  %map.addr = alloca %struct.line_map*, align 8
  %i = alloca i32, align 4
  store %struct.line_maps* %set, %struct.line_maps** %set.addr, align 8
  store %struct.line_map* %map, %struct.line_map** %map.addr, align 8
  %0 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %depth = getelementptr inbounds %struct.line_maps, %struct.line_maps* %0, i32 0, i32 4
  %1 = load i32, i32* %depth, align 4
  store i32 %1, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %i, align 4
  %dec = add i32 %2, -1
  store i32 %dec, i32* %i, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @_IO_putc(i32 46, %struct._IO_FILE* %3)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load %struct.line_map*, %struct.line_map** %map.addr, align 8
  %to_file = getelementptr inbounds %struct.line_map, %struct.line_map* %5, i32 0, i32 0
  %6 = load i8*, i8** %to_file, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.line_map* @lookup_line(%struct.line_maps* %set, i32 %line) #0 {
entry:
  %set.addr = alloca %struct.line_maps*, align 8
  %line.addr = alloca i32, align 4
  %md = alloca i32, align 4
  %mn = alloca i32, align 4
  %mx = alloca i32, align 4
  store %struct.line_maps* %set, %struct.line_maps** %set.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i32 0, i32* %mn, align 4
  %0 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %used = getelementptr inbounds %struct.line_maps, %struct.line_maps* %0, i32 0, i32 2
  %1 = load i32, i32* %used, align 4
  store i32 %1, i32* %mx, align 4
  %2 = load i32, i32* %mx, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.4, %if.end
  %3 = load i32, i32* %mx, align 4
  %4 = load i32, i32* %mn, align 4
  %sub = sub i32 %3, %4
  %cmp1 = icmp ugt i32 %sub, 1
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %mn, align 4
  %6 = load i32, i32* %mx, align 4
  %add = add i32 %5, %6
  %div = udiv i32 %add, 2
  store i32 %div, i32* %md, align 4
  %7 = load i32, i32* %md, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %8, i32 0, i32 0
  %9 = load %struct.line_map*, %struct.line_map** %maps, align 8
  %arrayidx = getelementptr inbounds %struct.line_map, %struct.line_map* %9, i64 %idxprom
  %from_line = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx, i32 0, i32 2
  %10 = load i32, i32* %from_line, align 4
  %11 = load i32, i32* %line.addr, align 4
  %cmp2 = icmp ugt i32 %10, %11
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %while.body
  %12 = load i32, i32* %md, align 4
  store i32 %12, i32* %mx, align 4
  br label %if.end.4

if.else:                                          ; preds = %while.body
  %13 = load i32, i32* %md, align 4
  store i32 %13, i32* %mn, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load i32, i32* %mn, align 4
  %idxprom5 = zext i32 %14 to i64
  %15 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %maps6 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %15, i32 0, i32 0
  %16 = load %struct.line_map*, %struct.line_map** %maps6, align 8
  %arrayidx7 = getelementptr inbounds %struct.line_map, %struct.line_map* %16, i64 %idxprom5
  ret %struct.line_map* %arrayidx7
}

; Function Attrs: nounwind uwtable
define void @print_containing_files(%struct.line_maps* %set, %struct.line_map* %map) #0 {
entry:
  %set.addr = alloca %struct.line_maps*, align 8
  %map.addr = alloca %struct.line_map*, align 8
  store %struct.line_maps* %set, %struct.line_maps** %set.addr, align 8
  store %struct.line_map* %map, %struct.line_map** %map.addr, align 8
  %0 = load %struct.line_map*, %struct.line_map** %map.addr, align 8
  %included_from = getelementptr inbounds %struct.line_map, %struct.line_map* %0, i32 0, i32 3
  %1 = load i32, i32* %included_from, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %last_listed = getelementptr inbounds %struct.line_maps, %struct.line_maps* %2, i32 0, i32 3
  %3 = load i32, i32* %last_listed, align 4
  %4 = load %struct.line_map*, %struct.line_map** %map.addr, align 8
  %included_from1 = getelementptr inbounds %struct.line_map, %struct.line_map* %4, i32 0, i32 3
  %5 = load i32, i32* %included_from1, align 4
  %cmp2 = icmp eq i32 %3, %5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.line_map*, %struct.line_map** %map.addr, align 8
  %included_from3 = getelementptr inbounds %struct.line_map, %struct.line_map* %6, i32 0, i32 3
  %7 = load i32, i32* %included_from3, align 4
  %8 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %last_listed4 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %8, i32 0, i32 3
  store i32 %7, i32* %last_listed4, align 4
  %9 = load %struct.line_map*, %struct.line_map** %map.addr, align 8
  %included_from5 = getelementptr inbounds %struct.line_map, %struct.line_map* %9, i32 0, i32 3
  %10 = load i32, i32* %included_from5, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %11, i32 0, i32 0
  %12 = load %struct.line_map*, %struct.line_map** %maps, align 8
  %arrayidx = getelementptr inbounds %struct.line_map, %struct.line_map* %12, i64 %idxprom
  store %struct.line_map* %arrayidx, %struct.line_map** %map.addr, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load %struct.line_map*, %struct.line_map** %map.addr, align 8
  %to_file = getelementptr inbounds %struct.line_map, %struct.line_map* %14, i32 0, i32 0
  %15 = load i8*, i8** %to_file, align 8
  %16 = load %struct.line_map*, %struct.line_map** %map.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.line_map, %struct.line_map* %16, i64 1
  %from_line = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx6, i32 0, i32 2
  %17 = load i32, i32* %from_line, align 4
  %sub = sub i32 %17, 1
  %18 = load %struct.line_map*, %struct.line_map** %map.addr, align 8
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %18, i32 0, i32 1
  %19 = load i32, i32* %to_line, align 4
  %add = add i32 %sub, %19
  %20 = load %struct.line_map*, %struct.line_map** %map.addr, align 8
  %from_line7 = getelementptr inbounds %struct.line_map, %struct.line_map* %20, i32 0, i32 2
  %21 = load i32, i32* %from_line7, align 4
  %sub8 = sub i32 %add, %21
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i8* %15, i32 %sub8)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %22 = load %struct.line_map*, %struct.line_map** %map.addr, align 8
  %included_from9 = getelementptr inbounds %struct.line_map, %struct.line_map* %22, i32 0, i32 3
  %23 = load i32, i32* %included_from9, align 4
  %cmp10 = icmp slt i32 %23, 0
  %lnot = xor i1 %cmp10, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load %struct.line_map*, %struct.line_map** %map.addr, align 8
  %included_from11 = getelementptr inbounds %struct.line_map, %struct.line_map* %24, i32 0, i32 3
  %25 = load i32, i32* %included_from11, align 4
  %idxprom12 = sext i32 %25 to i64
  %26 = load %struct.line_maps*, %struct.line_maps** %set.addr, align 8
  %maps13 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %26, i32 0, i32 0
  %27 = load %struct.line_map*, %struct.line_map** %maps13, align 8
  %arrayidx14 = getelementptr inbounds %struct.line_map, %struct.line_map* %27, i64 %idxprom12
  store %struct.line_map* %arrayidx14, %struct.line_map** %map.addr, align 8
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = load %struct.line_map*, %struct.line_map** %map.addr, align 8
  %to_file15 = getelementptr inbounds %struct.line_map, %struct.line_map* %29, i32 0, i32 0
  %30 = load i8*, i8** %to_file15, align 8
  %31 = load %struct.line_map*, %struct.line_map** %map.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.line_map, %struct.line_map* %31, i64 1
  %from_line17 = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx16, i32 0, i32 2
  %32 = load i32, i32* %from_line17, align 4
  %sub18 = sub i32 %32, 1
  %33 = load %struct.line_map*, %struct.line_map** %map.addr, align 8
  %to_line19 = getelementptr inbounds %struct.line_map, %struct.line_map* %33, i32 0, i32 1
  %34 = load i32, i32* %to_line19, align 4
  %add20 = add i32 %sub18, %34
  %35 = load %struct.line_map*, %struct.line_map** %map.addr, align 8
  %from_line21 = getelementptr inbounds %struct.line_map, %struct.line_map* %35, i32 0, i32 2
  %36 = load i32, i32* %from_line21, align 4
  %sub22 = sub i32 %add20, %36
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i8* %30, i32 %sub22)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call24 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %37)
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
