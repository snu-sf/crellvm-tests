; ModuleID = './MultiSource.Benchmarks.MallocBench/98.gs.gsmain.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gx_bitmap_s = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@proc_reloc = common global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Unknown switch %s - ignoring\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Not a debugging configuration, -Z switch ignored\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Map file %s is apparently missing or malformed\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"[T]main = %lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"-T switch\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"%s not found\0A\00", align 1
@trace_flush_flag = external global i32, align 4
@gx_device_list = external global [0 x %struct.gx_device_s*], align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"frame %8lx called from %8lx (%8lx)\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_main(i32 %argc, i8** %argv, i8* %map_name, i32 (i8, i8*)* %switch_proc, void (i8*, i32)* %arg_proc) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %map_name.addr = alloca i8*, align 8
  %switch_proc.addr = alloca i32 (i8, i8*)*, align 8
  %arg_proc.addr = alloca void (i8*, i32)*, align 8
  %argi = alloca i32, align 4
  %mapf = alloca %struct._IO_FILE*, align 8
  %arg_count = alloca i32, align 4
  %arg = alloca i8*, align 8
  %delim = alloca i8*, align 8
  %tname = alloca i8*, align 8
  %targs = alloca i8*, align 8
  %rsize = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* %map_name, i8** %map_name.addr, align 8
  store i32 (i8, i8*)* %switch_proc, i32 (i8, i8*)** %switch_proc.addr, align 8
  store void (i8*, i32)* %arg_proc, void (i8*, i32)** %arg_proc.addr, align 8
  store i32 1, i32* %argi, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %mapf, align 8
  store i32 0, i32* %arg_count, align 4
  store i64 0, i64* @proc_reloc, align 8
  call void (...) @gp_init()
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %argi, align 4
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %argi, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  store i8* %4, i8** %arg, align 8
  %5 = load i8*, i8** %arg, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 45
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load i8*, i8** %arg, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %arg, align 8
  %8 = load i8, i8* %incdec.ptr, align 1
  %conv3 = sext i8 %8 to i32
  switch i32 %conv3, label %sw.default [
    i32 90, label %sw.bb
    i32 84, label %sw.bb.10
  ]

sw.default:                                       ; preds = %if.then
  %9 = load i32 (i8, i8*)*, i32 (i8, i8*)** %switch_proc.addr, align 8
  %10 = load i8*, i8** %arg, align 8
  %11 = load i8, i8* %10, align 1
  %12 = load i8*, i8** %arg, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 1
  %call = call i32 %9(i8 signext %11, i8* %add.ptr)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %sw.default
  %13 = load i8*, i8** %arg, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %13, i64 -1
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i8* %add.ptr7)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %sw.default
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0))
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.then
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %mapf, align 8
  %cmp11 = icmp eq %struct._IO_FILE* %14, null
  br i1 %cmp11, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %sw.bb.10
  %15 = load i8*, i8** %map_name.addr, align 8
  %call14 = call %struct._IO_FILE* @trace_open_map(i8* %15, i64* @proc_reloc)
  store %struct._IO_FILE* %call14, %struct._IO_FILE** %mapf, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %mapf, align 8
  %cmp15 = icmp eq %struct._IO_FILE* %16, null
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.then.13
  %17 = load i8*, i8** %map_name.addr, align 8
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0), i8* %17)
  br label %sw.epilog

if.end.19:                                        ; preds = %if.then.13
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i64 ptrtoint (i32 (...)* @main to i64))
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.19, %sw.bb.10
  store i8* null, i8** %targs, align 8
  store i32 0, i32* %rsize, align 4
  %18 = load i8*, i8** %arg, align 8
  %call22 = call i8* @strchr(i8* %18, i32 58) #5
  store i8* %call22, i8** %delim, align 8
  %19 = load i8*, i8** %delim, align 8
  %cmp23 = icmp ne i8* %19, null
  br i1 %cmp23, label %if.then.25, label %if.end.35

if.then.25:                                       ; preds = %if.end.21
  %20 = load i8*, i8** %delim, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %20, i64 1
  %call27 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32* %rsize) #6
  %21 = load i8*, i8** %delim, align 8
  store i8 0, i8* %21, align 1
  %22 = load i8*, i8** %delim, align 8
  %add.ptr28 = getelementptr inbounds i8, i8* %22, i64 1
  %call29 = call i8* @strchr(i8* %add.ptr28, i32 58) #5
  store i8* %call29, i8** %delim, align 8
  %23 = load i8*, i8** %delim, align 8
  %cmp30 = icmp ne i8* %23, null
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.then.25
  %24 = load i8*, i8** %delim, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %add.ptr33, i8** %targs, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.then.25
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.21
  %25 = load i8*, i8** %arg, align 8
  %call36 = call i64 @strlen(i8* %25) #5
  %add = add i64 %call36, 1
  %conv37 = trunc i64 %add to i32
  %call38 = call i8* @gs_malloc(i32 %conv37, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call38, i8** %tname, align 8
  %26 = load i8*, i8** %tname, align 8
  %27 = load i8*, i8** %arg, align 8
  %call39 = call i8* @strcpy(i8* %26, i8* %27) #6
  %28 = load i8*, i8** %tname, align 8
  store i8 95, i8* %28, align 1
  %29 = load i8*, i8** %tname, align 8
  %call40 = call i32 (i8*, ...) bitcast (i32 (...)* @strupr to i32 (i8*, ...)*)(i8* %29)
  %30 = load i8*, i8** %tname, align 8
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %mapf, align 8
  %32 = load i8*, i8** %targs, align 8
  %33 = load i32, i32* %rsize, align 4
  %call41 = call i32 (i8*, %struct._IO_FILE*, i8*, i32, ...) bitcast (i32 (...)* @trace_name to i32 (i8*, %struct._IO_FILE*, i8*, i32, ...)*)(i8* %30, %struct._IO_FILE* %31, i8* %32, i32 %33)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.35
  %34 = load i8*, i8** %tname, align 8
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* %34)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.35
  store i32 1, i32* @trace_flush_flag, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.46, %if.then.17, %sw.bb, %if.end
  br label %if.end.47

if.else:                                          ; preds = %for.body
  %35 = load void (i8*, i32)*, void (i8*, i32)** %arg_proc.addr, align 8
  %36 = load i8*, i8** %arg, align 8
  %37 = load i32, i32* %arg_count, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %arg_count, align 4
  call void %35(i8* %36, i32 %37)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %38 = load i32, i32* %argi, align 4
  %inc48 = add nsw i32 %38, 1
  store i32 %inc48, i32* %argi, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i32, i32* %arg_count, align 4
  ret i32 %39
}

declare void @gp_init(...) #1

declare i32 @printf(i8*, ...) #1

declare %struct._IO_FILE* @trace_open_map(i8*, i64*) #1

declare i32 @main(...) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare i8* @gs_malloc(i32, i32, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i32 @strupr(...) #1

declare i32 @trace_name(...) #1

; Function Attrs: nounwind uwtable
define void @gs_exit(i32 %code) #0 {
entry:
  %code.addr = alloca i32, align 4
  %pdev = alloca %struct.gx_device_s**, align 8
  store i32 %code, i32* %code.addr, align 4
  store %struct.gx_device_s** getelementptr inbounds ([0 x %struct.gx_device_s*], [0 x %struct.gx_device_s*]* @gx_device_list, i32 0, i32 0), %struct.gx_device_s*** %pdev, align 8
  %0 = load i32, i32* %code.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load %struct.gx_device_s**, %struct.gx_device_s*** %pdev, align 8
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %2, align 8
  %cmp1 = icmp ne %struct.gx_device_s* %3, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.gx_device_s**, %struct.gx_device_s*** %pdev, align 8
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %4, align 8
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 10
  %6 = load i32, i32* %is_open, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %for.body
  %7 = load %struct.gx_device_s**, %struct.gx_device_s*** %pdev, align 8
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %7, align 8
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 1
  %9 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %9, i32 0, i32 4
  %10 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device, align 8
  %11 = load %struct.gx_device_s**, %struct.gx_device_s*** %pdev, align 8
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %11, align 8
  %call3 = call i32 %10(%struct.gx_device_s* %12)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %13 = load %struct.gx_device_s**, %struct.gx_device_s*** %pdev, align 8
  %incdec.ptr = getelementptr inbounds %struct.gx_device_s*, %struct.gx_device_s** %13, i32 1
  store %struct.gx_device_s** %incdec.ptr, %struct.gx_device_s*** %pdev, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %code.addr, align 4
  call void @exit(i32 %14) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define void @gs_dump_C_stack() #0 {
entry:
  %nbp = alloca i8*, align 8
  %bp = alloca i8*, align 8
  %call = call i8* (...) @stack_top_frame()
  store i8* %call, i8** %nbp, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i8*, i8** %nbp, align 8
  store i8* %0, i8** %bp, align 8
  %1 = load i8*, i8** %bp, align 8
  %2 = ptrtoint i8* %1 to i64
  %3 = load i8*, i8** %bp, align 8
  %call1 = call i64 @stack_return(i8* %3)
  %4 = load i8*, i8** %bp, align 8
  %call2 = call i64 @stack_return(i8* %4)
  %5 = load i64, i64* @proc_reloc, align 8
  %sub = sub i64 %call2, %5
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0), i64 %2, i64 %call1, i64 %sub)
  %6 = load i8*, i8** %bp, align 8
  %call4 = call i8* @stack_next_frame(i8* %6)
  store i8* %call4, i8** %nbp, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load i8*, i8** %nbp, align 8
  %cmp = icmp ne i8* %7, null
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

declare i8* @stack_top_frame(...) #1

declare i64 @stack_return(i8*) #1

declare i8* @stack_next_frame(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
