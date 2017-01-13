; ModuleID = './MultiSource.Benchmarks.MallocBench/44.gs.gxpath.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gx_path_s = type { %struct.gs_memory_procs, %struct.gs_fixed_rect_s, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.subpath*, %struct.subpath*, i32, i32, i32, %struct.gs_fixed_point_s, i8, i8, i8 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.subpath = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s, %struct.segment_s*, i32, i32, i8 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.line_segment = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s }
%struct.curve_segment = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gxpath.c\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"bad type in gx_path_release: %x!\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"gx_path_release\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"gx_path_new_subpath\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"gx_path_add_line\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"gx_path_add_curve\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"gx_path_close_subpath\00", align 1

; Function Attrs: nounwind uwtable
define void @gx_path_init(%struct.gx_path_s* %ppath, %struct.gs_memory_procs* %pprocs) #0 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pprocs.addr = alloca %struct.gs_memory_procs*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store %struct.gs_memory_procs* %pprocs, %struct.gs_memory_procs** %pprocs.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %memory_procs = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 0
  %1 = load %struct.gs_memory_procs*, %struct.gs_memory_procs** %pprocs.addr, align 8
  %2 = bitcast %struct.gs_memory_procs* %memory_procs to i8*
  %3 = bitcast %struct.gs_memory_procs* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false)
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %box_last = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 2
  store %struct.segment_s* null, %struct.segment_s** %box_last, align 8
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position_valid = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 10
  store i8 0, i8* %position_valid, align 1
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %current_subpath = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %6, i32 0, i32 5
  store %struct.subpath* null, %struct.subpath** %current_subpath, align 8
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %first_subpath = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %7, i32 0, i32 4
  store %struct.subpath* null, %struct.subpath** %first_subpath, align 8
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %subpath_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 6
  store i32 0, i32* %subpath_count, align 4
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %segment_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %9, i32 0, i32 7
  store i32 0, i32* %segment_count, align 4
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %curve_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %10, i32 0, i32 8
  store i32 0, i32* %curve_count, align 4
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %subpath_open = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %11, i32 0, i32 11
  store i8 0, i8* %subpath_open, align 1
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %shares_segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %12, i32 0, i32 12
  store i8 0, i8* %shares_segments, align 1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @gx_path_release(%struct.gx_path_s* %ppath) #0 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %pseg = alloca %struct.segment_s*, align 8
  %prev = alloca %struct.segment_s*, align 8
  %size = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %first_subpath = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 4
  %1 = load %struct.subpath*, %struct.subpath** %first_subpath, align 8
  %cmp = icmp eq %struct.subpath* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %shares_segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 12
  %3 = load i8, i8* %shares_segments, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  br label %return

if.end.2:                                         ; preds = %if.end
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %current_subpath = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 5
  %5 = load %struct.subpath*, %struct.subpath** %current_subpath, align 8
  %last = getelementptr inbounds %struct.subpath, %struct.subpath* %5, i32 0, i32 4
  %6 = load %struct.segment_s*, %struct.segment_s** %last, align 8
  store %struct.segment_s* %6, %struct.segment_s** %pseg, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.2
  %7 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %tobool3 = icmp ne %struct.segment_s* %7, null
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %prev4 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %8, i32 0, i32 0
  %9 = load %struct.segment_s*, %struct.segment_s** %prev4, align 8
  store %struct.segment_s* %9, %struct.segment_s** %prev, align 8
  %10 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %10, i32 0, i32 2
  %11 = load i32, i32* %type, align 4
  switch i32 %11, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %while.body
  store i32 64, i32* %size, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %while.body, %while.body
  store i32 40, i32* %size, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %while.body
  store i32 72, i32* %size, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i32 0, i32 0), i32 75)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %type7 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %14, i32 0, i32 2
  %15 = load i32, i32* %type7, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i32 %15)
  call void @exit(i32 1) #4
  unreachable

sw.epilog:                                        ; preds = %sw.bb.6, %sw.bb.5, %sw.bb
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %memory_procs = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %16, i32 0, i32 0
  %free = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %memory_procs, i32 0, i32 1
  %17 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %free, align 8
  %18 = load %struct.segment_s*, %struct.segment_s** %pseg, align 8
  %19 = bitcast %struct.segment_s* %18 to i8*
  %20 = load i32, i32* %size, align 4
  call void %17(i8* %19, i32 1, i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  %21 = load %struct.segment_s*, %struct.segment_s** %prev, align 8
  store %struct.segment_s* %21, %struct.segment_s** %pseg, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %first_subpath9 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %22, i32 0, i32 4
  store %struct.subpath* null, %struct.subpath** %first_subpath9, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then.1, %if.then
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define void @gx_path_share(%struct.gx_path_s* %ppath) #0 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %first_subpath = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 4
  %1 = load %struct.subpath*, %struct.subpath** %first_subpath, align 8
  %tobool = icmp ne %struct.subpath* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %shares_segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 12
  store i8 1, i8* %shares_segments, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_new_subpath(%struct.gx_path_s* %ppath) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %psub = alloca %struct.subpath*, align 8
  %spp = alloca %struct.subpath*, align 8
  %prev10 = alloca %struct.segment_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %current_subpath = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 5
  %1 = load %struct.subpath*, %struct.subpath** %current_subpath, align 8
  store %struct.subpath* %1, %struct.subpath** %psub, align 8
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %shares_segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 12
  %3 = load i8, i8* %shares_segments, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %call = call %struct.subpath* @path_alloc_copy(%struct.gx_path_s* %4)
  store %struct.subpath* %call, %struct.subpath** %psub, align 8
  %tobool1 = icmp ne %struct.subpath* %call, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store i32 -13, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %memory_procs = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 0
  %alloc = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %memory_procs, i32 0, i32 0
  %6 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %alloc, align 8
  %call4 = call i8* %6(i32 1, i32 64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  %7 = bitcast i8* %call4 to %struct.subpath*
  store %struct.subpath* %7, %struct.subpath** %spp, align 8
  %tobool5 = icmp ne %struct.subpath* %7, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  store i32 -13, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %8 = load %struct.subpath*, %struct.subpath** %spp, align 8
  %type = getelementptr inbounds %struct.subpath, %struct.subpath* %8, i32 0, i32 2
  store i32 0, i32* %type, align 4
  %9 = load %struct.subpath*, %struct.subpath** %spp, align 8
  %next = getelementptr inbounds %struct.subpath, %struct.subpath* %9, i32 0, i32 1
  store %struct.segment_s* null, %struct.segment_s** %next, align 8
  %10 = load %struct.subpath*, %struct.subpath** %spp, align 8
  %11 = bitcast %struct.subpath* %10 to %struct.segment_s*
  %12 = load %struct.subpath*, %struct.subpath** %spp, align 8
  %last = getelementptr inbounds %struct.subpath, %struct.subpath* %12, i32 0, i32 4
  store %struct.segment_s* %11, %struct.segment_s** %last, align 8
  %13 = load %struct.subpath*, %struct.subpath** %spp, align 8
  %curve_count = getelementptr inbounds %struct.subpath, %struct.subpath* %13, i32 0, i32 6
  store i32 0, i32* %curve_count, align 4
  %14 = load %struct.subpath*, %struct.subpath** %spp, align 8
  %line_count = getelementptr inbounds %struct.subpath, %struct.subpath* %14, i32 0, i32 5
  store i32 0, i32* %line_count, align 4
  %15 = load %struct.subpath*, %struct.subpath** %spp, align 8
  %closed = getelementptr inbounds %struct.subpath, %struct.subpath* %15, i32 0, i32 7
  store i8 0, i8* %closed, align 1
  %16 = load %struct.subpath*, %struct.subpath** %spp, align 8
  %pt = getelementptr inbounds %struct.subpath, %struct.subpath* %16, i32 0, i32 3
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %17, i32 0, i32 9
  %18 = bitcast %struct.gs_fixed_point_s* %pt to i8*
  %19 = bitcast %struct.gs_fixed_point_s* %position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false)
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %subpath_open = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %20, i32 0, i32 11
  store i8 1, i8* %subpath_open, align 1
  %21 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %tobool8 = icmp ne %struct.subpath* %21, null
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %if.end.7
  %22 = load %struct.subpath*, %struct.subpath** %spp, align 8
  %23 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %first_subpath = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %23, i32 0, i32 4
  store %struct.subpath* %22, %struct.subpath** %first_subpath, align 8
  %24 = load %struct.subpath*, %struct.subpath** %spp, align 8
  %prev = getelementptr inbounds %struct.subpath, %struct.subpath* %24, i32 0, i32 0
  store %struct.segment_s* null, %struct.segment_s** %prev, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.end.7
  %25 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %last11 = getelementptr inbounds %struct.subpath, %struct.subpath* %25, i32 0, i32 4
  %26 = load %struct.segment_s*, %struct.segment_s** %last11, align 8
  store %struct.segment_s* %26, %struct.segment_s** %prev10, align 8
  %27 = load %struct.subpath*, %struct.subpath** %spp, align 8
  %28 = bitcast %struct.subpath* %27 to %struct.segment_s*
  %29 = load %struct.segment_s*, %struct.segment_s** %prev10, align 8
  %next12 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %29, i32 0, i32 1
  store %struct.segment_s* %28, %struct.segment_s** %next12, align 8
  %30 = load %struct.segment_s*, %struct.segment_s** %prev10, align 8
  %31 = load %struct.subpath*, %struct.subpath** %spp, align 8
  %prev13 = getelementptr inbounds %struct.subpath, %struct.subpath* %31, i32 0, i32 0
  store %struct.segment_s* %30, %struct.segment_s** %prev13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.9
  %32 = load %struct.subpath*, %struct.subpath** %spp, align 8
  %33 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %current_subpath15 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %33, i32 0, i32 5
  store %struct.subpath* %32, %struct.subpath** %current_subpath15, align 8
  %34 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %subpath_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %34, i32 0, i32 6
  %35 = load i32, i32* %subpath_count, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %subpath_count, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.6, %if.then.2
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define %struct.subpath* @path_alloc_copy(%struct.gx_path_s* %ppath) #0 {
entry:
  %retval = alloca %struct.subpath*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %path_new = alloca %struct.gx_path_s, align 8
  %code = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %call = call i32 @gx_path_copy(%struct.gx_path_s* %0, %struct.gx_path_s* %path_new)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.subpath* null, %struct.subpath** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %3 = bitcast %struct.gx_path_s* %2 to i8*
  %4 = bitcast %struct.gx_path_s* %path_new to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 144, i32 8, i1 false)
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %shares_segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 12
  store i8 0, i8* %shares_segments, align 1
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %current_subpath = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %6, i32 0, i32 5
  %7 = load %struct.subpath*, %struct.subpath** %current_subpath, align 8
  store %struct.subpath* %7, %struct.subpath** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct.subpath*, %struct.subpath** %retval
  ret %struct.subpath* %8
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_add_point(%struct.gx_path_s* %ppath, i64 %x, i64 %y) #0 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %y, i64* %y.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %subpath_open = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 11
  store i8 0, i8* %subpath_open, align 1
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position_valid = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 10
  store i8 1, i8* %position_valid, align 1
  %2 = load i64, i64* %x.addr, align 8
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 9
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  store i64 %2, i64* %x1, align 8
  %4 = load i64, i64* %y.addr, align 8
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 9
  %y3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position2, i32 0, i32 1
  store i64 %4, i64* %y3, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_add_relative_point(%struct.gx_path_s* %ppath, i64 %dx, i64 %dy) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %dx.addr = alloca i64, align 8
  %dy.addr = alloca i64, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store i64 %dx, i64* %dx.addr, align 8
  store i64 %dy, i64* %dy.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position_valid = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 10
  %1 = load i8, i8* %position_valid, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -14, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %subpath_open = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 11
  store i8 0, i8* %subpath_open, align 1
  %3 = load i64, i64* %dx.addr, align 8
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 9
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %5 = load i64, i64* %x, align 8
  %add = add nsw i64 %5, %3
  store i64 %add, i64* %x, align 8
  %6 = load i64, i64* %dy.addr, align 8
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %7, i32 0, i32 9
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position1, i32 0, i32 1
  %8 = load i64, i64* %y, align 8
  %add2 = add nsw i64 %8, %6
  store i64 %add2, i64* %y, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_add_line(%struct.gx_path_s* %ppath, i64 %x, i64 %y) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %psub = alloca %struct.subpath*, align 8
  %lp = alloca %struct.line_segment*, align 8
  %code = alloca i32, align 4
  %prev = alloca %struct.segment_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %y, i64* %y.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %current_subpath = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 5
  %1 = load %struct.subpath*, %struct.subpath** %current_subpath, align 8
  store %struct.subpath* %1, %struct.subpath** %psub, align 8
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %subpath_open = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 11
  %3 = load i8, i8* %subpath_open, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.end.6, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position_valid = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 10
  %5 = load i8, i8* %position_valid, align 1
  %tobool1 = icmp ne i8 %5, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store i32 -14, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %call = call i32 @gx_path_new_subpath(%struct.gx_path_s* %6)
  store i32 %call, i32* %code, align 4
  %7 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %8 = load i32, i32* %code, align 4
  store i32 %8, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %current_subpath5 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %9, i32 0, i32 5
  %10 = load %struct.subpath*, %struct.subpath** %current_subpath5, align 8
  store %struct.subpath* %10, %struct.subpath** %psub, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.4, %entry
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %shares_segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %11, i32 0, i32 12
  %12 = load i8, i8* %shares_segments, align 1
  %tobool7 = icmp ne i8 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end.6
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %call9 = call %struct.subpath* @path_alloc_copy(%struct.gx_path_s* %13)
  store %struct.subpath* %call9, %struct.subpath** %psub, align 8
  %tobool10 = icmp ne %struct.subpath* %call9, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.then.8
  store i32 -13, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end.6
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %memory_procs = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %14, i32 0, i32 0
  %alloc = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %memory_procs, i32 0, i32 0
  %15 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %alloc, align 8
  %call14 = call i8* %15(i32 1, i32 40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0))
  %16 = bitcast i8* %call14 to %struct.line_segment*
  store %struct.line_segment* %16, %struct.line_segment** %lp, align 8
  %tobool15 = icmp ne %struct.line_segment* %16, null
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  store i32 -13, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.13
  %17 = load %struct.line_segment*, %struct.line_segment** %lp, align 8
  %type = getelementptr inbounds %struct.line_segment, %struct.line_segment* %17, i32 0, i32 2
  store i32 1, i32* %type, align 4
  %18 = load %struct.line_segment*, %struct.line_segment** %lp, align 8
  %next = getelementptr inbounds %struct.line_segment, %struct.line_segment* %18, i32 0, i32 1
  store %struct.segment_s* null, %struct.segment_s** %next, align 8
  %19 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %last = getelementptr inbounds %struct.subpath, %struct.subpath* %19, i32 0, i32 4
  %20 = load %struct.segment_s*, %struct.segment_s** %last, align 8
  store %struct.segment_s* %20, %struct.segment_s** %prev, align 8
  %21 = load %struct.line_segment*, %struct.line_segment** %lp, align 8
  %22 = bitcast %struct.line_segment* %21 to %struct.segment_s*
  %23 = load %struct.segment_s*, %struct.segment_s** %prev, align 8
  %next18 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %23, i32 0, i32 1
  store %struct.segment_s* %22, %struct.segment_s** %next18, align 8
  %24 = load %struct.segment_s*, %struct.segment_s** %prev, align 8
  %25 = load %struct.line_segment*, %struct.line_segment** %lp, align 8
  %prev19 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %25, i32 0, i32 0
  store %struct.segment_s* %24, %struct.segment_s** %prev19, align 8
  %26 = load %struct.line_segment*, %struct.line_segment** %lp, align 8
  %27 = bitcast %struct.line_segment* %26 to %struct.segment_s*
  %28 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %last20 = getelementptr inbounds %struct.subpath, %struct.subpath* %28, i32 0, i32 4
  store %struct.segment_s* %27, %struct.segment_s** %last20, align 8
  %29 = load i64, i64* %x.addr, align 8
  %30 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %30, i32 0, i32 9
  %x21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  store i64 %29, i64* %x21, align 8
  %31 = load %struct.line_segment*, %struct.line_segment** %lp, align 8
  %pt = getelementptr inbounds %struct.line_segment, %struct.line_segment* %31, i32 0, i32 3
  %x22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  store i64 %29, i64* %x22, align 8
  %32 = load i64, i64* %y.addr, align 8
  %33 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position23 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %33, i32 0, i32 9
  %y24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position23, i32 0, i32 1
  store i64 %32, i64* %y24, align 8
  %34 = load %struct.line_segment*, %struct.line_segment** %lp, align 8
  %pt25 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %34, i32 0, i32 3
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt25, i32 0, i32 1
  store i64 %32, i64* %y26, align 8
  %35 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %line_count = getelementptr inbounds %struct.subpath, %struct.subpath* %35, i32 0, i32 5
  %36 = load i32, i32* %line_count, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %line_count, align 4
  %37 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %segment_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %37, i32 0, i32 7
  %38 = load i32, i32* %segment_count, align 4
  %inc27 = add nsw i32 %38, 1
  store i32 %inc27, i32* %segment_count, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.16, %if.then.11, %if.then.3, %if.then.2
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_add_rectangle(%struct.gx_path_s* %ppath, i64 %x0, i64 %y0, i64 %x1, i64 %y1) #0 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x0.addr = alloca i64, align 8
  %y0.addr = alloca i64, align 8
  %x1.addr = alloca i64, align 8
  %y1.addr = alloca i64, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store i64 %x0, i64* %x0.addr, align 8
  store i64 %y0, i64* %y0.addr, align 8
  store i64 %x1, i64* %x1.addr, align 8
  store i64 %y1, i64* %y1.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %1 = load i64, i64* %x0.addr, align 8
  %2 = load i64, i64* %y0.addr, align 8
  %3 = load i64, i64* %x0.addr, align 8
  %4 = load i64, i64* %y1.addr, align 8
  %5 = load i64, i64* %x1.addr, align 8
  %6 = load i64, i64* %y1.addr, align 8
  %call = call i32 @gx_path_add_pgram(%struct.gx_path_s* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_add_pgram(%struct.gx_path_s* %ppath, i64 %x0, i64 %y0, i64 %x1, i64 %y1, i64 %x2, i64 %y2) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x0.addr = alloca i64, align 8
  %y0.addr = alloca i64, align 8
  %x1.addr = alloca i64, align 8
  %y1.addr = alloca i64, align 8
  %x2.addr = alloca i64, align 8
  %y2.addr = alloca i64, align 8
  %code = alloca i32, align 4
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store i64 %x0, i64* %x0.addr, align 8
  store i64 %y0, i64* %y0.addr, align 8
  store i64 %x1, i64* %x1.addr, align 8
  store i64 %y1, i64* %y1.addr, align 8
  store i64 %x2, i64* %x2.addr, align 8
  store i64 %y2, i64* %y2.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %1 = load i64, i64* %x0.addr, align 8
  %2 = load i64, i64* %y0.addr, align 8
  %call = call i32 @gx_path_add_point(%struct.gx_path_s* %0, i64 %1, i64 %2)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %4 = load i64, i64* %x1.addr, align 8
  %5 = load i64, i64* %y1.addr, align 8
  %call1 = call i32 @gx_path_add_line(%struct.gx_path_s* %3, i64 %4, i64 %5)
  store i32 %call1, i32* %code, align 4
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %7 = load i64, i64* %x2.addr, align 8
  %8 = load i64, i64* %y2.addr, align 8
  %call4 = call i32 @gx_path_add_line(%struct.gx_path_s* %6, i64 %7, i64 %8)
  store i32 %call4, i32* %code, align 4
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %10 = load i64, i64* %x0.addr, align 8
  %11 = load i64, i64* %x2.addr, align 8
  %add = add nsw i64 %10, %11
  %12 = load i64, i64* %x1.addr, align 8
  %sub = sub nsw i64 %add, %12
  %13 = load i64, i64* %y0.addr, align 8
  %14 = load i64, i64* %y2.addr, align 8
  %add7 = add nsw i64 %13, %14
  %15 = load i64, i64* %y1.addr, align 8
  %sub8 = sub nsw i64 %add7, %15
  %call9 = call i32 @gx_path_add_line(%struct.gx_path_s* %9, i64 %sub, i64 %sub8)
  store i32 %call9, i32* %code, align 4
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.6
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %call12 = call i32 @gx_path_close_subpath(%struct.gx_path_s* %16)
  store i32 %call12, i32* %code, align 4
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.11, %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %entry
  %17 = load i32, i32* %code, align 4
  store i32 %17, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.11
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_close_subpath(%struct.gx_path_s* %ppath) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %psub = alloca %struct.subpath*, align 8
  %lp = alloca %struct.line_segment*, align 8
  %prev = alloca %struct.segment_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %current_subpath = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 5
  %1 = load %struct.subpath*, %struct.subpath** %current_subpath, align 8
  store %struct.subpath* %1, %struct.subpath** %psub, align 8
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %subpath_open = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 11
  %3 = load i8, i8* %subpath_open, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 9
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  %5 = load i64, i64* %x, align 8
  %6 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %pt = getelementptr inbounds %struct.subpath, %struct.subpath* %6, i32 0, i32 3
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  %7 = load i64, i64* %x1, align 8
  %cmp = icmp eq i64 %5, %7
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position2 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 9
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position2, i32 0, i32 1
  %9 = load i64, i64* %y, align 8
  %10 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %pt3 = getelementptr inbounds %struct.subpath, %struct.subpath* %10, i32 0, i32 3
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt3, i32 0, i32 1
  %11 = load i64, i64* %y4, align 8
  %cmp5 = icmp eq i64 %9, %11
  br i1 %cmp5, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %12 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %last = getelementptr inbounds %struct.subpath, %struct.subpath* %12, i32 0, i32 4
  %13 = load %struct.segment_s*, %struct.segment_s** %last, align 8
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %13, i32 0, i32 2
  %14 = load i32, i32* %type, align 4
  %cmp7 = icmp eq i32 %14, 1
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true.6
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %shares_segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %15, i32 0, i32 12
  %16 = load i8, i8* %shares_segments, align 1
  %tobool9 = icmp ne i8 %16, 0
  br i1 %tobool9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.then.8
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %call = call %struct.subpath* @path_alloc_copy(%struct.gx_path_s* %17)
  %cmp11 = icmp ne %struct.subpath* null, %call
  br i1 %cmp11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.then.10
  store i32 -13, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.8
  %18 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %last15 = getelementptr inbounds %struct.subpath, %struct.subpath* %18, i32 0, i32 4
  %19 = load %struct.segment_s*, %struct.segment_s** %last15, align 8
  %type16 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %19, i32 0, i32 2
  store i32 2, i32* %type16, align 4
  store %struct.line_segment* null, %struct.line_segment** %lp, align 8
  br label %if.end.47

if.else:                                          ; preds = %land.lhs.true.6, %land.lhs.true, %if.end
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %shares_segments17 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %20, i32 0, i32 12
  %21 = load i8, i8* %shares_segments17, align 1
  %tobool18 = icmp ne i8 %21, 0
  br i1 %tobool18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %if.else
  %22 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %call20 = call %struct.subpath* @path_alloc_copy(%struct.gx_path_s* %22)
  store %struct.subpath* %call20, %struct.subpath** %psub, align 8
  %tobool21 = icmp ne %struct.subpath* %call20, null
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.then.19
  store i32 -13, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.then.19
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.else
  %23 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %memory_procs = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %23, i32 0, i32 0
  %alloc = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %memory_procs, i32 0, i32 0
  %24 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %alloc, align 8
  %call25 = call i8* %24(i32 1, i32 40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  %25 = bitcast i8* %call25 to %struct.line_segment*
  store %struct.line_segment* %25, %struct.line_segment** %lp, align 8
  %tobool26 = icmp ne %struct.line_segment* %25, null
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.end.24
  store i32 -13, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.24
  %26 = load %struct.line_segment*, %struct.line_segment** %lp, align 8
  %type29 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %26, i32 0, i32 2
  store i32 2, i32* %type29, align 4
  %27 = load %struct.line_segment*, %struct.line_segment** %lp, align 8
  %next = getelementptr inbounds %struct.line_segment, %struct.line_segment* %27, i32 0, i32 1
  store %struct.segment_s* null, %struct.segment_s** %next, align 8
  %28 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %last30 = getelementptr inbounds %struct.subpath, %struct.subpath* %28, i32 0, i32 4
  %29 = load %struct.segment_s*, %struct.segment_s** %last30, align 8
  store %struct.segment_s* %29, %struct.segment_s** %prev, align 8
  %30 = load %struct.line_segment*, %struct.line_segment** %lp, align 8
  %31 = bitcast %struct.line_segment* %30 to %struct.segment_s*
  %32 = load %struct.segment_s*, %struct.segment_s** %prev, align 8
  %next31 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %32, i32 0, i32 1
  store %struct.segment_s* %31, %struct.segment_s** %next31, align 8
  %33 = load %struct.segment_s*, %struct.segment_s** %prev, align 8
  %34 = load %struct.line_segment*, %struct.line_segment** %lp, align 8
  %prev32 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %34, i32 0, i32 0
  store %struct.segment_s* %33, %struct.segment_s** %prev32, align 8
  %35 = load %struct.line_segment*, %struct.line_segment** %lp, align 8
  %36 = bitcast %struct.line_segment* %35 to %struct.segment_s*
  %37 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %last33 = getelementptr inbounds %struct.subpath, %struct.subpath* %37, i32 0, i32 4
  store %struct.segment_s* %36, %struct.segment_s** %last33, align 8
  %38 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %pt34 = getelementptr inbounds %struct.subpath, %struct.subpath* %38, i32 0, i32 3
  %x35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt34, i32 0, i32 0
  %39 = load i64, i64* %x35, align 8
  %40 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position36 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %40, i32 0, i32 9
  %x37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position36, i32 0, i32 0
  store i64 %39, i64* %x37, align 8
  %41 = load %struct.line_segment*, %struct.line_segment** %lp, align 8
  %pt38 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %41, i32 0, i32 3
  %x39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt38, i32 0, i32 0
  store i64 %39, i64* %x39, align 8
  %42 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %pt40 = getelementptr inbounds %struct.subpath, %struct.subpath* %42, i32 0, i32 3
  %y41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt40, i32 0, i32 1
  %43 = load i64, i64* %y41, align 8
  %44 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position42 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %44, i32 0, i32 9
  %y43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position42, i32 0, i32 1
  store i64 %43, i64* %y43, align 8
  %45 = load %struct.line_segment*, %struct.line_segment** %lp, align 8
  %pt44 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %45, i32 0, i32 3
  %y45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt44, i32 0, i32 1
  store i64 %43, i64* %y45, align 8
  %46 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %line_count = getelementptr inbounds %struct.subpath, %struct.subpath* %46, i32 0, i32 5
  %47 = load i32, i32* %line_count, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %line_count, align 4
  %48 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %segment_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %48, i32 0, i32 7
  %49 = load i32, i32* %segment_count, align 4
  %inc46 = add nsw i32 %49, 1
  store i32 %inc46, i32* %segment_count, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.28, %if.end.14
  %50 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %closed = getelementptr inbounds %struct.subpath, %struct.subpath* %50, i32 0, i32 7
  store i8 1, i8* %closed, align 1
  %51 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %subpath_open48 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %51, i32 0, i32 11
  store i8 0, i8* %subpath_open48, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.47, %if.then.27, %if.then.22, %if.then.12, %if.then
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_add_curve(%struct.gx_path_s* %ppath, i64 %x1, i64 %y1, i64 %x2, i64 %y2, i64 %x3, i64 %y3) #0 {
entry:
  %retval = alloca i32, align 4
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x1.addr = alloca i64, align 8
  %y1.addr = alloca i64, align 8
  %x2.addr = alloca i64, align 8
  %y2.addr = alloca i64, align 8
  %x3.addr = alloca i64, align 8
  %y3.addr = alloca i64, align 8
  %psub = alloca %struct.subpath*, align 8
  %lp = alloca %struct.curve_segment*, align 8
  %code = alloca i32, align 4
  %prev = alloca %struct.segment_s*, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store i64 %x1, i64* %x1.addr, align 8
  store i64 %y1, i64* %y1.addr, align 8
  store i64 %x2, i64* %x2.addr, align 8
  store i64 %y2, i64* %y2.addr, align 8
  store i64 %x3, i64* %x3.addr, align 8
  store i64 %y3, i64* %y3.addr, align 8
  %0 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %current_subpath = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %0, i32 0, i32 5
  %1 = load %struct.subpath*, %struct.subpath** %current_subpath, align 8
  store %struct.subpath* %1, %struct.subpath** %psub, align 8
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %subpath_open = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %2, i32 0, i32 11
  %3 = load i8, i8* %subpath_open, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.end.6, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position_valid = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i32 0, i32 10
  %5 = load i8, i8* %position_valid, align 1
  %tobool1 = icmp ne i8 %5, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store i32 -14, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %call = call i32 @gx_path_new_subpath(%struct.gx_path_s* %6)
  store i32 %call, i32* %code, align 4
  %7 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %8 = load i32, i32* %code, align 4
  store i32 %8, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %current_subpath5 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %9, i32 0, i32 5
  %10 = load %struct.subpath*, %struct.subpath** %current_subpath5, align 8
  store %struct.subpath* %10, %struct.subpath** %psub, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.4, %entry
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %shares_segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %11, i32 0, i32 12
  %12 = load i8, i8* %shares_segments, align 1
  %tobool7 = icmp ne i8 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end.6
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %call9 = call %struct.subpath* @path_alloc_copy(%struct.gx_path_s* %13)
  store %struct.subpath* %call9, %struct.subpath** %psub, align 8
  %tobool10 = icmp ne %struct.subpath* %call9, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.then.8
  store i32 -13, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end.6
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %memory_procs = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %14, i32 0, i32 0
  %alloc = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %memory_procs, i32 0, i32 0
  %15 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %alloc, align 8
  %call14 = call i8* %15(i32 1, i32 72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0))
  %16 = bitcast i8* %call14 to %struct.curve_segment*
  store %struct.curve_segment* %16, %struct.curve_segment** %lp, align 8
  %tobool15 = icmp ne %struct.curve_segment* %16, null
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  store i32 -13, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.13
  %17 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8
  %type = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %17, i32 0, i32 2
  store i32 3, i32* %type, align 4
  %18 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8
  %next = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %18, i32 0, i32 1
  store %struct.segment_s* null, %struct.segment_s** %next, align 8
  %19 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %last = getelementptr inbounds %struct.subpath, %struct.subpath* %19, i32 0, i32 4
  %20 = load %struct.segment_s*, %struct.segment_s** %last, align 8
  store %struct.segment_s* %20, %struct.segment_s** %prev, align 8
  %21 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8
  %22 = bitcast %struct.curve_segment* %21 to %struct.segment_s*
  %23 = load %struct.segment_s*, %struct.segment_s** %prev, align 8
  %next18 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %23, i32 0, i32 1
  store %struct.segment_s* %22, %struct.segment_s** %next18, align 8
  %24 = load %struct.segment_s*, %struct.segment_s** %prev, align 8
  %25 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8
  %prev19 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %25, i32 0, i32 0
  store %struct.segment_s* %24, %struct.segment_s** %prev19, align 8
  %26 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8
  %27 = bitcast %struct.curve_segment* %26 to %struct.segment_s*
  %28 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %last20 = getelementptr inbounds %struct.subpath, %struct.subpath* %28, i32 0, i32 4
  store %struct.segment_s* %27, %struct.segment_s** %last20, align 8
  %29 = load i64, i64* %x1.addr, align 8
  %30 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8
  %p1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %30, i32 0, i32 4
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  store i64 %29, i64* %x, align 8
  %31 = load i64, i64* %y1.addr, align 8
  %32 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8
  %p121 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %32, i32 0, i32 4
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p121, i32 0, i32 1
  store i64 %31, i64* %y, align 8
  %33 = load i64, i64* %x2.addr, align 8
  %34 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8
  %p2 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %34, i32 0, i32 5
  %x22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  store i64 %33, i64* %x22, align 8
  %35 = load i64, i64* %y2.addr, align 8
  %36 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8
  %p223 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %36, i32 0, i32 5
  %y24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p223, i32 0, i32 1
  store i64 %35, i64* %y24, align 8
  %37 = load i64, i64* %x3.addr, align 8
  %38 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %38, i32 0, i32 9
  %x25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position, i32 0, i32 0
  store i64 %37, i64* %x25, align 8
  %39 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8
  %pt = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %39, i32 0, i32 3
  %x26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  store i64 %37, i64* %x26, align 8
  %40 = load i64, i64* %y3.addr, align 8
  %41 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %position27 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %41, i32 0, i32 9
  %y28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %position27, i32 0, i32 1
  store i64 %40, i64* %y28, align 8
  %42 = load %struct.curve_segment*, %struct.curve_segment** %lp, align 8
  %pt29 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %42, i32 0, i32 3
  %y30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt29, i32 0, i32 1
  store i64 %40, i64* %y30, align 8
  %43 = load %struct.subpath*, %struct.subpath** %psub, align 8
  %curve_count = getelementptr inbounds %struct.subpath, %struct.subpath* %43, i32 0, i32 6
  %44 = load i32, i32* %curve_count, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %curve_count, align 4
  %45 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %segment_count = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %45, i32 0, i32 7
  %46 = load i32, i32* %segment_count, align 4
  %inc31 = add nsw i32 %46, 1
  store i32 %inc31, i32* %segment_count, align 4
  %47 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %curve_count32 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %47, i32 0, i32 8
  %48 = load i32, i32* %curve_count32, align 4
  %inc33 = add nsw i32 %48, 1
  store i32 %inc33, i32* %curve_count32, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.16, %if.then.11, %if.then.3, %if.then.2
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define i32 @gx_path_add_arc(%struct.gx_path_s* %ppath, i64 %x0, i64 %y0, i64 %x3, i64 %y3, i64 %xt, i64 %yt) #0 {
entry:
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %x0.addr = alloca i64, align 8
  %y0.addr = alloca i64, align 8
  %x3.addr = alloca i64, align 8
  %y3.addr = alloca i64, align 8
  %xt.addr = alloca i64, align 8
  %yt.addr = alloca i64, align 8
  %xm = alloca i64, align 8
  %ym = alloca i64, align 8
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8
  store i64 %x0, i64* %x0.addr, align 8
  store i64 %y0, i64* %y0.addr, align 8
  store i64 %x3, i64* %x3.addr, align 8
  store i64 %y3, i64* %y3.addr, align 8
  store i64 %xt, i64* %xt.addr, align 8
  store i64 %yt, i64* %yt.addr, align 8
  %0 = load i64, i64* %xt.addr, align 8
  %conv = sitofp i64 %0 to double
  %mul = fmul double %conv, 5.500000e-01
  %conv1 = fptosi double %mul to i64
  store i64 %conv1, i64* %xm, align 8
  %1 = load i64, i64* %yt.addr, align 8
  %conv2 = sitofp i64 %1 to double
  %mul3 = fmul double %conv2, 5.500000e-01
  %conv4 = fptosi double %mul3 to i64
  store i64 %conv4, i64* %ym, align 8
  %2 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8
  %3 = load i64, i64* %x0.addr, align 8
  %conv5 = sitofp i64 %3 to double
  %mul6 = fmul double %conv5, 0x3FDCCCCCCCCCCCCC
  %conv7 = fptosi double %mul6 to i64
  %4 = load i64, i64* %xm, align 8
  %add = add nsw i64 %conv7, %4
  %5 = load i64, i64* %y0.addr, align 8
  %conv8 = sitofp i64 %5 to double
  %mul9 = fmul double %conv8, 0x3FDCCCCCCCCCCCCC
  %conv10 = fptosi double %mul9 to i64
  %6 = load i64, i64* %ym, align 8
  %add11 = add nsw i64 %conv10, %6
  %7 = load i64, i64* %x3.addr, align 8
  %conv12 = sitofp i64 %7 to double
  %mul13 = fmul double %conv12, 0x3FDCCCCCCCCCCCCC
  %conv14 = fptosi double %mul13 to i64
  %8 = load i64, i64* %xm, align 8
  %add15 = add nsw i64 %conv14, %8
  %9 = load i64, i64* %y3.addr, align 8
  %conv16 = sitofp i64 %9 to double
  %mul17 = fmul double %conv16, 0x3FDCCCCCCCCCCCCC
  %conv18 = fptosi double %mul17 to i64
  %10 = load i64, i64* %ym, align 8
  %add19 = add nsw i64 %conv18, %10
  %11 = load i64, i64* %x3.addr, align 8
  %12 = load i64, i64* %y3.addr, align 8
  %call = call i32 @gx_path_add_curve(%struct.gx_path_s* %2, i64 %add, i64 %add11, i64 %add15, i64 %add19, i64 %11, i64 %12)
  ret i32 %call
}

declare i32 @gx_path_copy(%struct.gx_path_s*, %struct.gx_path_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
