; ModuleID = './lib/utimens.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timeval = type { i64, i64 }

@utimensat_works_really = internal global i32 0, align 4
@lutimensat_works_really = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @fdutimens(i32 %fd, i8* %file, %struct.timespec* %timespec) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %timespec.addr = alloca %struct.timespec*, align 8
  %adjusted_timespec = alloca [2 x %struct.timespec], align 16
  %ts = alloca %struct.timespec*, align 8
  %adjustment_needed = alloca i32, align 4
  %st = alloca %struct.stat, align 8
  %result = alloca i32, align 4
  %coerce = alloca %struct.timespec, align 8
  %coerce36 = alloca %struct.timespec, align 8
  %timeval = alloca [2 x %struct.timeval], align 16
  %t = alloca %struct.timeval*, align 8
  %abig = alloca i8, align 1
  %mbig = alloca i8, align 1
  %adiff = alloca i64, align 8
  %mdiff = alloca i64, align 8
  %tt = alloca %struct.timeval*, align 8
  %truncated_timeval = alloca [2 x %struct.timeval], align 16
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %file, i8** %file.addr, align 8
  store %struct.timespec* %timespec, %struct.timespec** %timespec.addr, align 8
  %0 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %tobool = icmp ne %struct.timespec* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %adjusted_timespec, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.timespec* [ %arraydecay, %cond.true ], [ null, %cond.false ]
  store %struct.timespec* %cond, %struct.timespec** %ts, align 8
  store i32 0, i32* %adjustment_needed, align 4
  %1 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %tobool1 = icmp ne %struct.timespec* %1, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %arrayidx = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %adjusted_timespec, i32 0, i64 0
  %2 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0
  %3 = bitcast %struct.timespec* %arrayidx to i8*
  %4 = bitcast %struct.timespec* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 16, i32 8, i1 false)
  %arrayidx3 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %adjusted_timespec, i32 0, i64 1
  %5 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i64 1
  %6 = bitcast %struct.timespec* %arrayidx3 to i8*
  %7 = bitcast %struct.timespec* %arrayidx4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %8 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %call = call i32 @validate_timespec(%struct.timespec* %8)
  store i32 %call, i32* %adjustment_needed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %9 = load i32, i32* %adjustment_needed, align 4
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %10 = load i32, i32* %fd.addr, align 4
  %cmp7 = icmp slt i32 %10, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end.6
  %11 = load i8*, i8** %file.addr, align 8
  %tobool8 = icmp ne i8* %11, null
  br i1 %tobool8, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  %call10 = call i32* @__errno_location() #6
  store i32 9, i32* %call10, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true, %if.end.6
  %12 = load i32, i32* @utimensat_works_really, align 4
  %cmp12 = icmp sle i32 0, %12
  br i1 %cmp12, label %if.then.13, label %if.end.67

if.then.13:                                       ; preds = %if.end.11
  %13 = load i32, i32* %adjustment_needed, align 4
  %cmp14 = icmp eq i32 %13, 2
  br i1 %cmp14, label %if.then.15, label %if.end.39

if.then.15:                                       ; preds = %if.then.13
  %14 = load i32, i32* %fd.addr, align 4
  %cmp16 = icmp slt i32 %14, 0
  br i1 %cmp16, label %cond.true.17, label %cond.false.20

cond.true.17:                                     ; preds = %if.then.15
  %15 = load i8*, i8** %file.addr, align 8
  %call18 = call i32 @stat(i8* %15, %struct.stat* %st) #1
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.23, label %if.end.24

cond.false.20:                                    ; preds = %if.then.15
  %16 = load i32, i32* %fd.addr, align 4
  %call21 = call i32 @fstat(i32 %16, %struct.stat* %st) #1
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %cond.false.20, %cond.true.17
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %cond.false.20, %cond.true.17
  %17 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %arrayidx25 = getelementptr inbounds %struct.timespec, %struct.timespec* %17, i64 0
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx25, i32 0, i32 1
  %18 = load i64, i64* %tv_nsec, align 8
  %cmp26 = icmp eq i64 %18, 1073741822
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.end.24
  %19 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %arrayidx28 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i64 0
  %call29 = call { i64, i64 } @get_stat_atime(%struct.stat* %st) #7
  %20 = bitcast %struct.timespec* %coerce to { i64, i64 }*
  %21 = getelementptr { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  %22 = extractvalue { i64, i64 } %call29, 0
  store i64 %22, i64* %21, align 8
  %23 = getelementptr { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  %24 = extractvalue { i64, i64 } %call29, 1
  store i64 %24, i64* %23, align 8
  %25 = bitcast %struct.timespec* %arrayidx28 to i8*
  %26 = bitcast %struct.timespec* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false)
  br label %if.end.38

if.else:                                          ; preds = %if.end.24
  %27 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %arrayidx30 = getelementptr inbounds %struct.timespec, %struct.timespec* %27, i64 1
  %tv_nsec31 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx30, i32 0, i32 1
  %28 = load i64, i64* %tv_nsec31, align 8
  %cmp32 = icmp eq i64 %28, 1073741822
  br i1 %cmp32, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.else
  %29 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %arrayidx34 = getelementptr inbounds %struct.timespec, %struct.timespec* %29, i64 1
  %call35 = call { i64, i64 } @get_stat_mtime(%struct.stat* %st) #7
  %30 = bitcast %struct.timespec* %coerce36 to { i64, i64 }*
  %31 = getelementptr { i64, i64 }, { i64, i64 }* %30, i32 0, i32 0
  %32 = extractvalue { i64, i64 } %call35, 0
  store i64 %32, i64* %31, align 8
  %33 = getelementptr { i64, i64 }, { i64, i64 }* %30, i32 0, i32 1
  %34 = extractvalue { i64, i64 } %call35, 1
  store i64 %34, i64* %33, align 8
  %35 = bitcast %struct.timespec* %arrayidx34 to i8*
  %36 = bitcast %struct.timespec* %coerce36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 16, i32 8, i1 false)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %if.else
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.27
  %37 = load i32, i32* %adjustment_needed, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %adjustment_needed, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.13
  %38 = load i32, i32* %fd.addr, align 4
  %cmp40 = icmp slt i32 %38, 0
  br i1 %cmp40, label %if.then.41, label %if.end.52

if.then.41:                                       ; preds = %if.end.39
  %39 = load i8*, i8** %file.addr, align 8
  %40 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %call42 = call i32 @utimensat(i32 -100, i8* %39, %struct.timespec* %40, i32 0) #1
  store i32 %call42, i32* %result, align 4
  %41 = load i32, i32* %result, align 4
  %cmp43 = icmp slt i32 0, %41
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.then.41
  %call45 = call i32* @__errno_location() #6
  store i32 38, i32* %call45, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.then.41
  %42 = load i32, i32* %result, align 4
  %cmp47 = icmp eq i32 %42, 0
  br i1 %cmp47, label %if.then.50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.46
  %call48 = call i32* @__errno_location() #6
  %43 = load i32, i32* %call48, align 4
  %cmp49 = icmp ne i32 %43, 38
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %lor.lhs.false, %if.end.46
  store i32 1, i32* @utimensat_works_really, align 4
  %44 = load i32, i32* %result, align 4
  store i32 %44, i32* %retval
  br label %return

if.end.51:                                        ; preds = %lor.lhs.false
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.39
  %45 = load i32, i32* %fd.addr, align 4
  %cmp53 = icmp sle i32 0, %45
  br i1 %cmp53, label %if.then.54, label %if.end.66

if.then.54:                                       ; preds = %if.end.52
  %46 = load i32, i32* %fd.addr, align 4
  %47 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %call55 = call i32 @futimens(i32 %46, %struct.timespec* %47) #1
  store i32 %call55, i32* %result, align 4
  %48 = load i32, i32* %result, align 4
  %cmp56 = icmp slt i32 0, %48
  br i1 %cmp56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.then.54
  %call58 = call i32* @__errno_location() #6
  store i32 38, i32* %call58, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.then.54
  %49 = load i32, i32* %result, align 4
  %cmp60 = icmp eq i32 %49, 0
  br i1 %cmp60, label %if.then.64, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %if.end.59
  %call62 = call i32* @__errno_location() #6
  %50 = load i32, i32* %call62, align 4
  %cmp63 = icmp ne i32 %50, 38
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %lor.lhs.false.61, %if.end.59
  store i32 1, i32* @utimensat_works_really, align 4
  %51 = load i32, i32* %result, align 4
  store i32 %51, i32* %retval
  br label %return

if.end.65:                                        ; preds = %lor.lhs.false.61
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.52
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.11
  store i32 -1, i32* @utimensat_works_really, align 4
  store i32 -1, i32* @lutimensat_works_really, align 4
  %52 = load i32, i32* %adjustment_needed, align 4
  %tobool68 = icmp ne i32 %52, 0
  br i1 %tobool68, label %if.then.69, label %if.end.86

if.then.69:                                       ; preds = %if.end.67
  %53 = load i32, i32* %adjustment_needed, align 4
  %cmp70 = icmp ne i32 %53, 3
  br i1 %cmp70, label %land.lhs.true.71, label %if.end.80

land.lhs.true.71:                                 ; preds = %if.then.69
  %54 = load i32, i32* %fd.addr, align 4
  %cmp72 = icmp slt i32 %54, 0
  br i1 %cmp72, label %cond.true.73, label %cond.false.76

cond.true.73:                                     ; preds = %land.lhs.true.71
  %55 = load i8*, i8** %file.addr, align 8
  %call74 = call i32 @stat(i8* %55, %struct.stat* %st) #1
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.79, label %if.end.80

cond.false.76:                                    ; preds = %land.lhs.true.71
  %56 = load i32, i32* %fd.addr, align 4
  %call77 = call i32 @fstat(i32 %56, %struct.stat* %st) #1
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %cond.false.76, %cond.true.73
  store i32 -1, i32* %retval
  br label %return

if.end.80:                                        ; preds = %cond.false.76, %cond.true.73, %if.then.69
  %57 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %tobool81 = icmp ne %struct.timespec* %57, null
  br i1 %tobool81, label %land.lhs.true.82, label %if.end.85

land.lhs.true.82:                                 ; preds = %if.end.80
  %call83 = call zeroext i1 @update_timespec(%struct.stat* %st, %struct.timespec** %ts)
  br i1 %call83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %land.lhs.true.82
  store i32 0, i32* %retval
  br label %return

if.end.85:                                        ; preds = %land.lhs.true.82, %if.end.80
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.67
  %58 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %tobool87 = icmp ne %struct.timespec* %58, null
  br i1 %tobool87, label %if.then.88, label %if.else.105

if.then.88:                                       ; preds = %if.end.86
  %59 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %arrayidx89 = getelementptr inbounds %struct.timespec, %struct.timespec* %59, i64 0
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx89, i32 0, i32 0
  %60 = load i64, i64* %tv_sec, align 8
  %arrayidx90 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %timeval, i32 0, i64 0
  %tv_sec91 = getelementptr inbounds %struct.timeval, %struct.timeval* %arrayidx90, i32 0, i32 0
  store i64 %60, i64* %tv_sec91, align 8
  %61 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %arrayidx92 = getelementptr inbounds %struct.timespec, %struct.timespec* %61, i64 0
  %tv_nsec93 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx92, i32 0, i32 1
  %62 = load i64, i64* %tv_nsec93, align 8
  %div = sdiv i64 %62, 1000
  %arrayidx94 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %timeval, i32 0, i64 0
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %arrayidx94, i32 0, i32 1
  store i64 %div, i64* %tv_usec, align 8
  %63 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %arrayidx95 = getelementptr inbounds %struct.timespec, %struct.timespec* %63, i64 1
  %tv_sec96 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx95, i32 0, i32 0
  %64 = load i64, i64* %tv_sec96, align 8
  %arrayidx97 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %timeval, i32 0, i64 1
  %tv_sec98 = getelementptr inbounds %struct.timeval, %struct.timeval* %arrayidx97, i32 0, i32 0
  store i64 %64, i64* %tv_sec98, align 8
  %65 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %arrayidx99 = getelementptr inbounds %struct.timespec, %struct.timespec* %65, i64 1
  %tv_nsec100 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx99, i32 0, i32 1
  %66 = load i64, i64* %tv_nsec100, align 8
  %div101 = sdiv i64 %66, 1000
  %arrayidx102 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %timeval, i32 0, i64 1
  %tv_usec103 = getelementptr inbounds %struct.timeval, %struct.timeval* %arrayidx102, i32 0, i32 1
  store i64 %div101, i64* %tv_usec103, align 8
  %arraydecay104 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %timeval, i32 0, i32 0
  store %struct.timeval* %arraydecay104, %struct.timeval** %t, align 8
  br label %if.end.106

if.else.105:                                      ; preds = %if.end.86
  store %struct.timeval* null, %struct.timeval** %t, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.105, %if.then.88
  %67 = load i32, i32* %fd.addr, align 4
  %cmp107 = icmp slt i32 %67, 0
  br i1 %cmp107, label %if.then.108, label %if.else.110

if.then.108:                                      ; preds = %if.end.106
  %68 = load i8*, i8** %file.addr, align 8
  %69 = load %struct.timeval*, %struct.timeval** %t, align 8
  %call109 = call i32 @futimesat(i32 -100, i8* %68, %struct.timeval* %69) #1
  store i32 %call109, i32* %retval
  br label %return

if.else.110:                                      ; preds = %if.end.106
  %70 = load i32, i32* %fd.addr, align 4
  %71 = load %struct.timeval*, %struct.timeval** %t, align 8
  %call111 = call i32 @futimesat(i32 %70, i8* null, %struct.timeval* %71) #1
  %cmp112 = icmp eq i32 %call111, 0
  br i1 %cmp112, label %if.then.113, label %if.end.177

if.then.113:                                      ; preds = %if.else.110
  %72 = load %struct.timeval*, %struct.timeval** %t, align 8
  %tobool114 = icmp ne %struct.timeval* %72, null
  br i1 %tobool114, label %if.then.115, label %if.end.176

if.then.115:                                      ; preds = %if.then.113
  %73 = load %struct.timeval*, %struct.timeval** %t, align 8
  %arrayidx116 = getelementptr inbounds %struct.timeval, %struct.timeval* %73, i64 0
  %tv_usec117 = getelementptr inbounds %struct.timeval, %struct.timeval* %arrayidx116, i32 0, i32 1
  %74 = load i64, i64* %tv_usec117, align 8
  %cmp118 = icmp sle i64 500000, %74
  %frombool = zext i1 %cmp118 to i8
  store i8 %frombool, i8* %abig, align 1
  %75 = load %struct.timeval*, %struct.timeval** %t, align 8
  %arrayidx119 = getelementptr inbounds %struct.timeval, %struct.timeval* %75, i64 1
  %tv_usec120 = getelementptr inbounds %struct.timeval, %struct.timeval* %arrayidx119, i32 0, i32 1
  %76 = load i64, i64* %tv_usec120, align 8
  %cmp121 = icmp sle i64 500000, %76
  %frombool122 = zext i1 %cmp121 to i8
  store i8 %frombool122, i8* %mbig, align 1
  %77 = load i8, i8* %abig, align 1
  %tobool123 = trunc i8 %77 to i1
  %conv = zext i1 %tobool123 to i32
  %78 = load i8, i8* %mbig, align 1
  %tobool124 = trunc i8 %78 to i1
  %conv125 = zext i1 %tobool124 to i32
  %or = or i32 %conv, %conv125
  %tobool126 = icmp ne i32 %or, 0
  br i1 %tobool126, label %land.lhs.true.127, label %if.end.175

land.lhs.true.127:                                ; preds = %if.then.115
  %79 = load i32, i32* %fd.addr, align 4
  %call128 = call i32 @fstat(i32 %79, %struct.stat* %st) #1
  %cmp129 = icmp eq i32 %call128, 0
  br i1 %cmp129, label %if.then.131, label %if.end.175

if.then.131:                                      ; preds = %land.lhs.true.127
  %st_atim = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 11
  %tv_sec132 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_atim, i32 0, i32 0
  %80 = load i64, i64* %tv_sec132, align 8
  %81 = load %struct.timeval*, %struct.timeval** %t, align 8
  %arrayidx133 = getelementptr inbounds %struct.timeval, %struct.timeval* %81, i64 0
  %tv_sec134 = getelementptr inbounds %struct.timeval, %struct.timeval* %arrayidx133, i32 0, i32 0
  %82 = load i64, i64* %tv_sec134, align 8
  %sub = sub nsw i64 %80, %82
  store i64 %sub, i64* %adiff, align 8
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 12
  %tv_sec135 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %83 = load i64, i64* %tv_sec135, align 8
  %84 = load %struct.timeval*, %struct.timeval** %t, align 8
  %arrayidx136 = getelementptr inbounds %struct.timeval, %struct.timeval* %84, i64 1
  %tv_sec137 = getelementptr inbounds %struct.timeval, %struct.timeval* %arrayidx136, i32 0, i32 0
  %85 = load i64, i64* %tv_sec137, align 8
  %sub138 = sub nsw i64 %83, %85
  store i64 %sub138, i64* %mdiff, align 8
  store %struct.timeval* null, %struct.timeval** %tt, align 8
  %arrayidx139 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %truncated_timeval, i32 0, i64 0
  %86 = load %struct.timeval*, %struct.timeval** %t, align 8
  %arrayidx140 = getelementptr inbounds %struct.timeval, %struct.timeval* %86, i64 0
  %87 = bitcast %struct.timeval* %arrayidx139 to i8*
  %88 = bitcast %struct.timeval* %arrayidx140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 16, i32 8, i1 false)
  %arrayidx141 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %truncated_timeval, i32 0, i64 1
  %89 = load %struct.timeval*, %struct.timeval** %t, align 8
  %arrayidx142 = getelementptr inbounds %struct.timeval, %struct.timeval* %89, i64 1
  %90 = bitcast %struct.timeval* %arrayidx141 to i8*
  %91 = bitcast %struct.timeval* %arrayidx142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %91, i64 16, i32 8, i1 false)
  %92 = load i8, i8* %abig, align 1
  %tobool143 = trunc i8 %92 to i1
  br i1 %tobool143, label %land.lhs.true.145, label %if.end.156

land.lhs.true.145:                                ; preds = %if.then.131
  %93 = load i64, i64* %adiff, align 8
  %cmp146 = icmp eq i64 %93, 1
  br i1 %cmp146, label %land.lhs.true.148, label %if.end.156

land.lhs.true.148:                                ; preds = %land.lhs.true.145
  %call149 = call i64 @get_stat_atime_ns(%struct.stat* %st) #7
  %cmp150 = icmp eq i64 %call149, 0
  br i1 %cmp150, label %if.then.152, label %if.end.156

if.then.152:                                      ; preds = %land.lhs.true.148
  %arraydecay153 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %truncated_timeval, i32 0, i32 0
  store %struct.timeval* %arraydecay153, %struct.timeval** %tt, align 8
  %94 = load %struct.timeval*, %struct.timeval** %tt, align 8
  %arrayidx154 = getelementptr inbounds %struct.timeval, %struct.timeval* %94, i64 0
  %tv_usec155 = getelementptr inbounds %struct.timeval, %struct.timeval* %arrayidx154, i32 0, i32 1
  store i64 0, i64* %tv_usec155, align 8
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.152, %land.lhs.true.148, %land.lhs.true.145, %if.then.131
  %95 = load i8, i8* %mbig, align 1
  %tobool157 = trunc i8 %95 to i1
  br i1 %tobool157, label %land.lhs.true.159, label %if.end.170

land.lhs.true.159:                                ; preds = %if.end.156
  %96 = load i64, i64* %mdiff, align 8
  %cmp160 = icmp eq i64 %96, 1
  br i1 %cmp160, label %land.lhs.true.162, label %if.end.170

land.lhs.true.162:                                ; preds = %land.lhs.true.159
  %call163 = call i64 @get_stat_mtime_ns(%struct.stat* %st) #7
  %cmp164 = icmp eq i64 %call163, 0
  br i1 %cmp164, label %if.then.166, label %if.end.170

if.then.166:                                      ; preds = %land.lhs.true.162
  %arraydecay167 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %truncated_timeval, i32 0, i32 0
  store %struct.timeval* %arraydecay167, %struct.timeval** %tt, align 8
  %97 = load %struct.timeval*, %struct.timeval** %tt, align 8
  %arrayidx168 = getelementptr inbounds %struct.timeval, %struct.timeval* %97, i64 1
  %tv_usec169 = getelementptr inbounds %struct.timeval, %struct.timeval* %arrayidx168, i32 0, i32 1
  store i64 0, i64* %tv_usec169, align 8
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.166, %land.lhs.true.162, %land.lhs.true.159, %if.end.156
  %98 = load %struct.timeval*, %struct.timeval** %tt, align 8
  %tobool171 = icmp ne %struct.timeval* %98, null
  br i1 %tobool171, label %if.then.172, label %if.end.174

if.then.172:                                      ; preds = %if.end.170
  %99 = load i32, i32* %fd.addr, align 4
  %100 = load %struct.timeval*, %struct.timeval** %tt, align 8
  %call173 = call i32 @futimesat(i32 %99, i8* null, %struct.timeval* %100) #1
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.172, %if.end.170
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %land.lhs.true.127, %if.then.115
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.then.113
  store i32 0, i32* %retval
  br label %return

if.end.177:                                       ; preds = %if.else.110
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177
  %101 = load i8*, i8** %file.addr, align 8
  %tobool179 = icmp ne i8* %101, null
  br i1 %tobool179, label %if.end.181, label %if.then.180

if.then.180:                                      ; preds = %if.end.178
  store i32 -1, i32* %retval
  br label %return

if.end.181:                                       ; preds = %if.end.178
  %102 = load i8*, i8** %file.addr, align 8
  %103 = load %struct.timeval*, %struct.timeval** %t, align 8
  %call182 = call i32 @utimes(i8* %102, %struct.timeval* %103) #1
  store i32 %call182, i32* %retval
  br label %return

return:                                           ; preds = %if.end.181, %if.then.180, %if.end.176, %if.then.108, %if.then.84, %if.then.79, %if.then.64, %if.then.50, %if.then.23, %if.then.9, %if.then.5
  %104 = load i32, i32* %retval
  ret i32 %104
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @validate_timespec(%struct.timespec* %timespec) #0 {
entry:
  %retval = alloca i32, align 4
  %timespec.addr = alloca %struct.timespec*, align 8
  %result = alloca i32, align 4
  %utime_omit_count = alloca i32, align 4
  store %struct.timespec* %timespec, %struct.timespec** %timespec.addr, align 8
  store i32 0, i32* %result, align 4
  store i32 0, i32* %utime_omit_count, align 4
  %0 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %arrayidx = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx, i32 0, i32 1
  %1 = load i64, i64* %tv_nsec, align 8
  %cmp = icmp ne i64 %1, 1073741823
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0
  %tv_nsec2 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx1, i32 0, i32 1
  %3 = load i64, i64* %tv_nsec2, align 8
  %cmp3 = icmp ne i64 %3, 1073741822
  br i1 %cmp3, label %land.lhs.true.4, label %lor.lhs.false

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %4 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i64 0
  %tv_nsec6 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx5, i32 0, i32 1
  %5 = load i64, i64* %tv_nsec6, align 8
  %cmp7 = icmp sle i64 0, %5
  br i1 %cmp7, label %land.lhs.true.8, label %if.then

land.lhs.true.8:                                  ; preds = %land.lhs.true.4
  %6 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i64 0
  %tv_nsec10 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx9, i32 0, i32 1
  %7 = load i64, i64* %tv_nsec10, align 8
  %cmp11 = icmp slt i64 %7, 1000000000
  br i1 %cmp11, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true.8, %land.lhs.true, %entry
  %8 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i64 1
  %tv_nsec13 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx12, i32 0, i32 1
  %9 = load i64, i64* %tv_nsec13, align 8
  %cmp14 = icmp ne i64 %9, 1073741823
  br i1 %cmp14, label %land.lhs.true.15, label %if.end

land.lhs.true.15:                                 ; preds = %lor.lhs.false
  %10 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i64 1
  %tv_nsec17 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx16, i32 0, i32 1
  %11 = load i64, i64* %tv_nsec17, align 8
  %cmp18 = icmp ne i64 %11, 1073741822
  br i1 %cmp18, label %land.lhs.true.19, label %if.end

land.lhs.true.19:                                 ; preds = %land.lhs.true.15
  %12 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i64 1
  %tv_nsec21 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx20, i32 0, i32 1
  %13 = load i64, i64* %tv_nsec21, align 8
  %cmp22 = icmp sle i64 0, %13
  br i1 %cmp22, label %land.lhs.true.23, label %if.then

land.lhs.true.23:                                 ; preds = %land.lhs.true.19
  %14 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i64 1
  %tv_nsec25 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx24, i32 0, i32 1
  %15 = load i64, i64* %tv_nsec25, align 8
  %cmp26 = icmp slt i64 %15, 1000000000
  br i1 %cmp26, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.23, %land.lhs.true.19, %land.lhs.true.8, %land.lhs.true.4
  %call = call i32* @__errno_location() #6
  store i32 22, i32* %call, align 4
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.23, %land.lhs.true.15, %lor.lhs.false
  %16 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i64 0
  %tv_nsec28 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx27, i32 0, i32 1
  %17 = load i64, i64* %tv_nsec28, align 8
  %cmp29 = icmp eq i64 %17, 1073741823
  br i1 %cmp29, label %if.then.34, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %if.end
  %18 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i64 0
  %tv_nsec32 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx31, i32 0, i32 1
  %19 = load i64, i64* %tv_nsec32, align 8
  %cmp33 = icmp eq i64 %19, 1073741822
  br i1 %cmp33, label %if.then.34, label %if.end.41

if.then.34:                                       ; preds = %lor.lhs.false.30, %if.end
  %20 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct.timespec, %struct.timespec* %20, i64 0
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx35, i32 0, i32 0
  store i64 0, i64* %tv_sec, align 8
  store i32 1, i32* %result, align 4
  %21 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.timespec, %struct.timespec* %21, i64 0
  %tv_nsec37 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx36, i32 0, i32 1
  %22 = load i64, i64* %tv_nsec37, align 8
  %cmp38 = icmp eq i64 %22, 1073741822
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.34
  %23 = load i32, i32* %utime_omit_count, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %utime_omit_count, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.then.34
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %lor.lhs.false.30
  %24 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct.timespec, %struct.timespec* %24, i64 1
  %tv_nsec43 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx42, i32 0, i32 1
  %25 = load i64, i64* %tv_nsec43, align 8
  %cmp44 = icmp eq i64 %25, 1073741823
  br i1 %cmp44, label %if.then.49, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %if.end.41
  %26 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.timespec, %struct.timespec* %26, i64 1
  %tv_nsec47 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx46, i32 0, i32 1
  %27 = load i64, i64* %tv_nsec47, align 8
  %cmp48 = icmp eq i64 %27, 1073741822
  br i1 %cmp48, label %if.then.49, label %if.end.58

if.then.49:                                       ; preds = %lor.lhs.false.45, %if.end.41
  %28 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct.timespec, %struct.timespec* %28, i64 1
  %tv_sec51 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx50, i32 0, i32 0
  store i64 0, i64* %tv_sec51, align 8
  store i32 1, i32* %result, align 4
  %29 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct.timespec, %struct.timespec* %29, i64 1
  %tv_nsec53 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx52, i32 0, i32 1
  %30 = load i64, i64* %tv_nsec53, align 8
  %cmp54 = icmp eq i64 %30, 1073741822
  br i1 %cmp54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.then.49
  %31 = load i32, i32* %utime_omit_count, align 4
  %inc56 = add nsw i32 %31, 1
  store i32 %inc56, i32* %utime_omit_count, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.then.49
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %lor.lhs.false.45
  %32 = load i32, i32* %result, align 4
  %33 = load i32, i32* %utime_omit_count, align 4
  %cmp59 = icmp eq i32 %33, 1
  %conv = zext i1 %cmp59 to i32
  %add = add nsw i32 %32, %conv
  store i32 %add, i32* %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #3

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #3

; Function Attrs: nounwind readonly
declare { i64, i64 } @get_stat_atime(%struct.stat*) #4

; Function Attrs: nounwind readonly
declare { i64, i64 } @get_stat_mtime(%struct.stat*) #4

; Function Attrs: nounwind
declare i32 @utimensat(i32, i8*, %struct.timespec*, i32) #3

; Function Attrs: nounwind
declare i32 @futimens(i32, %struct.timespec*) #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @update_timespec(%struct.stat* %statbuf, %struct.timespec** %ts) #0 {
entry:
  %retval = alloca i1, align 1
  %statbuf.addr = alloca %struct.stat*, align 8
  %ts.addr = alloca %struct.timespec**, align 8
  %timespec = alloca %struct.timespec*, align 8
  %coerce = alloca %struct.timespec, align 8
  %coerce31 = alloca %struct.timespec, align 8
  store %struct.stat* %statbuf, %struct.stat** %statbuf.addr, align 8
  store %struct.timespec** %ts, %struct.timespec*** %ts.addr, align 8
  %0 = load %struct.timespec**, %struct.timespec*** %ts.addr, align 8
  %1 = load %struct.timespec*, %struct.timespec** %0, align 8
  store %struct.timespec* %1, %struct.timespec** %timespec, align 8
  %2 = load %struct.timespec*, %struct.timespec** %timespec, align 8
  %arrayidx = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx, i32 0, i32 1
  %3 = load i64, i64* %tv_nsec, align 8
  %cmp = icmp eq i64 %3, 1073741822
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.timespec*, %struct.timespec** %timespec, align 8
  %arrayidx1 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i64 1
  %tv_nsec2 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx1, i32 0, i32 1
  %5 = load i64, i64* %tv_nsec2, align 8
  %cmp3 = icmp eq i64 %5, 1073741822
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load %struct.timespec*, %struct.timespec** %timespec, align 8
  %arrayidx4 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i64 0
  %tv_nsec5 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx4, i32 0, i32 1
  %7 = load i64, i64* %tv_nsec5, align 8
  %cmp6 = icmp eq i64 %7, 1073741823
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.12

land.lhs.true.7:                                  ; preds = %if.end
  %8 = load %struct.timespec*, %struct.timespec** %timespec, align 8
  %arrayidx8 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i64 1
  %tv_nsec9 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx8, i32 0, i32 1
  %9 = load i64, i64* %tv_nsec9, align 8
  %cmp10 = icmp eq i64 %9, 1073741823
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true.7
  %10 = load %struct.timespec**, %struct.timespec*** %ts.addr, align 8
  store %struct.timespec* null, %struct.timespec** %10, align 8
  store i1 false, i1* %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true.7, %if.end
  %11 = load %struct.timespec*, %struct.timespec** %timespec, align 8
  %arrayidx13 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 0
  %tv_nsec14 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx13, i32 0, i32 1
  %12 = load i64, i64* %tv_nsec14, align 8
  %cmp15 = icmp eq i64 %12, 1073741822
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.12
  %13 = load %struct.timespec*, %struct.timespec** %timespec, align 8
  %arrayidx17 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i64 0
  %14 = load %struct.stat*, %struct.stat** %statbuf.addr, align 8
  %call = call { i64, i64 } @get_stat_atime(%struct.stat* %14) #7
  %15 = bitcast %struct.timespec* %coerce to { i64, i64 }*
  %16 = getelementptr { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  %17 = extractvalue { i64, i64 } %call, 0
  store i64 %17, i64* %16, align 8
  %18 = getelementptr { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  %19 = extractvalue { i64, i64 } %call, 1
  store i64 %19, i64* %18, align 8
  %20 = bitcast %struct.timespec* %arrayidx17 to i8*
  %21 = bitcast %struct.timespec* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 16, i32 8, i1 false)
  br label %if.end.24

if.else:                                          ; preds = %if.end.12
  %22 = load %struct.timespec*, %struct.timespec** %timespec, align 8
  %arrayidx18 = getelementptr inbounds %struct.timespec, %struct.timespec* %22, i64 0
  %tv_nsec19 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx18, i32 0, i32 1
  %23 = load i64, i64* %tv_nsec19, align 8
  %cmp20 = icmp eq i64 %23, 1073741823
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.else
  %24 = load %struct.timespec*, %struct.timespec** %timespec, align 8
  %arrayidx22 = getelementptr inbounds %struct.timespec, %struct.timespec* %24, i64 0
  call void @gettime(%struct.timespec* %arrayidx22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.16
  %25 = load %struct.timespec*, %struct.timespec** %timespec, align 8
  %arrayidx25 = getelementptr inbounds %struct.timespec, %struct.timespec* %25, i64 1
  %tv_nsec26 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx25, i32 0, i32 1
  %26 = load i64, i64* %tv_nsec26, align 8
  %cmp27 = icmp eq i64 %26, 1073741822
  br i1 %cmp27, label %if.then.28, label %if.else.32

if.then.28:                                       ; preds = %if.end.24
  %27 = load %struct.timespec*, %struct.timespec** %timespec, align 8
  %arrayidx29 = getelementptr inbounds %struct.timespec, %struct.timespec* %27, i64 1
  %28 = load %struct.stat*, %struct.stat** %statbuf.addr, align 8
  %call30 = call { i64, i64 } @get_stat_mtime(%struct.stat* %28) #7
  %29 = bitcast %struct.timespec* %coerce31 to { i64, i64 }*
  %30 = getelementptr { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = extractvalue { i64, i64 } %call30, 0
  store i64 %31, i64* %30, align 8
  %32 = getelementptr { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = extractvalue { i64, i64 } %call30, 1
  store i64 %33, i64* %32, align 8
  %34 = bitcast %struct.timespec* %arrayidx29 to i8*
  %35 = bitcast %struct.timespec* %coerce31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 16, i32 8, i1 false)
  br label %if.end.39

if.else.32:                                       ; preds = %if.end.24
  %36 = load %struct.timespec*, %struct.timespec** %timespec, align 8
  %arrayidx33 = getelementptr inbounds %struct.timespec, %struct.timespec* %36, i64 1
  %tv_nsec34 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx33, i32 0, i32 1
  %37 = load i64, i64* %tv_nsec34, align 8
  %cmp35 = icmp eq i64 %37, 1073741823
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.else.32
  %38 = load %struct.timespec*, %struct.timespec** %timespec, align 8
  %arrayidx37 = getelementptr inbounds %struct.timespec, %struct.timespec* %38, i64 1
  call void @gettime(%struct.timespec* %arrayidx37)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.else.32
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.28
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.then.11, %if.then
  %39 = load i1, i1* %retval
  ret i1 %39
}

; Function Attrs: nounwind
declare i32 @futimesat(i32, i8*, %struct.timeval*) #3

; Function Attrs: nounwind readonly
declare i64 @get_stat_atime_ns(%struct.stat*) #4

; Function Attrs: nounwind readonly
declare i64 @get_stat_mtime_ns(%struct.stat*) #4

; Function Attrs: nounwind
declare i32 @utimes(i8*, %struct.timeval*) #3

; Function Attrs: nounwind uwtable
define i32 @utimens(i8* %file, %struct.timespec* %timespec) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %timespec.addr = alloca %struct.timespec*, align 8
  store i8* %file, i8** %file.addr, align 8
  store %struct.timespec* %timespec, %struct.timespec** %timespec.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %1 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %call = call i32 @fdutimens(i32 -1, i8* %0, %struct.timespec* %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @lutimens(i8* %file, %struct.timespec* %timespec) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %timespec.addr = alloca %struct.timespec*, align 8
  %adjusted_timespec = alloca [2 x %struct.timespec], align 16
  %ts = alloca %struct.timespec*, align 8
  %adjustment_needed = alloca i32, align 4
  %st = alloca %struct.stat, align 8
  %result = alloca i32, align 4
  %coerce = alloca %struct.timespec, align 8
  %coerce26 = alloca %struct.timespec, align 8
  store i8* %file, i8** %file.addr, align 8
  store %struct.timespec* %timespec, %struct.timespec** %timespec.addr, align 8
  %0 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %tobool = icmp ne %struct.timespec* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %adjusted_timespec, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.timespec* [ %arraydecay, %cond.true ], [ null, %cond.false ]
  store %struct.timespec* %cond, %struct.timespec** %ts, align 8
  store i32 0, i32* %adjustment_needed, align 4
  %1 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %tobool1 = icmp ne %struct.timespec* %1, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %arrayidx = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %adjusted_timespec, i32 0, i64 0
  %2 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0
  %3 = bitcast %struct.timespec* %arrayidx to i8*
  %4 = bitcast %struct.timespec* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 16, i32 8, i1 false)
  %arrayidx3 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %adjusted_timespec, i32 0, i64 1
  %5 = load %struct.timespec*, %struct.timespec** %timespec.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i64 1
  %6 = bitcast %struct.timespec* %arrayidx3 to i8*
  %7 = bitcast %struct.timespec* %arrayidx4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %8 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %call = call i32 @validate_timespec(%struct.timespec* %8)
  store i32 %call, i32* %adjustment_needed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %9 = load i32, i32* %adjustment_needed, align 4
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %10 = load i32, i32* @lutimensat_works_really, align 4
  %cmp7 = icmp sle i32 0, %10
  br i1 %cmp7, label %if.then.8, label %if.end.40

if.then.8:                                        ; preds = %if.end.6
  %11 = load i32, i32* %adjustment_needed, align 4
  %cmp9 = icmp eq i32 %11, 2
  br i1 %cmp9, label %if.then.10, label %if.end.29

if.then.10:                                       ; preds = %if.then.8
  %12 = load i8*, i8** %file.addr, align 8
  %call11 = call i32 @lstat(i8* %12, %struct.stat* %st) #1
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.10
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.10
  %13 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %arrayidx15 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i64 0
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx15, i32 0, i32 1
  %14 = load i64, i64* %tv_nsec, align 8
  %cmp16 = icmp eq i64 %14, 1073741822
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.14
  %15 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %arrayidx18 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i64 0
  %call19 = call { i64, i64 } @get_stat_atime(%struct.stat* %st) #7
  %16 = bitcast %struct.timespec* %coerce to { i64, i64 }*
  %17 = getelementptr { i64, i64 }, { i64, i64 }* %16, i32 0, i32 0
  %18 = extractvalue { i64, i64 } %call19, 0
  store i64 %18, i64* %17, align 8
  %19 = getelementptr { i64, i64 }, { i64, i64 }* %16, i32 0, i32 1
  %20 = extractvalue { i64, i64 } %call19, 1
  store i64 %20, i64* %19, align 8
  %21 = bitcast %struct.timespec* %arrayidx18 to i8*
  %22 = bitcast %struct.timespec* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 16, i32 8, i1 false)
  br label %if.end.28

if.else:                                          ; preds = %if.end.14
  %23 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %arrayidx20 = getelementptr inbounds %struct.timespec, %struct.timespec* %23, i64 1
  %tv_nsec21 = getelementptr inbounds %struct.timespec, %struct.timespec* %arrayidx20, i32 0, i32 1
  %24 = load i64, i64* %tv_nsec21, align 8
  %cmp22 = icmp eq i64 %24, 1073741822
  br i1 %cmp22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.else
  %25 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %arrayidx24 = getelementptr inbounds %struct.timespec, %struct.timespec* %25, i64 1
  %call25 = call { i64, i64 } @get_stat_mtime(%struct.stat* %st) #7
  %26 = bitcast %struct.timespec* %coerce26 to { i64, i64 }*
  %27 = getelementptr { i64, i64 }, { i64, i64 }* %26, i32 0, i32 0
  %28 = extractvalue { i64, i64 } %call25, 0
  store i64 %28, i64* %27, align 8
  %29 = getelementptr { i64, i64 }, { i64, i64 }* %26, i32 0, i32 1
  %30 = extractvalue { i64, i64 } %call25, 1
  store i64 %30, i64* %29, align 8
  %31 = bitcast %struct.timespec* %arrayidx24 to i8*
  %32 = bitcast %struct.timespec* %coerce26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.17
  %33 = load i32, i32* %adjustment_needed, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %adjustment_needed, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.8
  %34 = load i8*, i8** %file.addr, align 8
  %35 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %call30 = call i32 @utimensat(i32 -100, i8* %34, %struct.timespec* %35, i32 256) #1
  store i32 %call30, i32* %result, align 4
  %36 = load i32, i32* %result, align 4
  %cmp31 = icmp slt i32 0, %36
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.29
  %call33 = call i32* @__errno_location() #6
  store i32 38, i32* %call33, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.29
  %37 = load i32, i32* %result, align 4
  %cmp35 = icmp eq i32 %37, 0
  br i1 %cmp35, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.34
  %call36 = call i32* @__errno_location() #6
  %38 = load i32, i32* %call36, align 4
  %cmp37 = icmp ne i32 %38, 38
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false, %if.end.34
  store i32 1, i32* @utimensat_works_really, align 4
  store i32 1, i32* @lutimensat_works_really, align 4
  %39 = load i32, i32* %result, align 4
  store i32 %39, i32* %retval
  br label %return

if.end.39:                                        ; preds = %lor.lhs.false
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.6
  store i32 -1, i32* @lutimensat_works_really, align 4
  %40 = load i32, i32* %adjustment_needed, align 4
  %tobool41 = icmp ne i32 %40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.53

if.then.42:                                       ; preds = %if.end.40
  %41 = load i32, i32* %adjustment_needed, align 4
  %cmp43 = icmp ne i32 %41, 3
  br i1 %cmp43, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.then.42
  %42 = load i8*, i8** %file.addr, align 8
  %call44 = call i32 @lstat(i8* %42, %struct.stat* %st) #1
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %land.lhs.true, %if.then.42
  %43 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %tobool48 = icmp ne %struct.timespec* %43, null
  br i1 %tobool48, label %land.lhs.true.49, label %if.end.52

land.lhs.true.49:                                 ; preds = %if.end.47
  %call50 = call zeroext i1 @update_timespec(%struct.stat* %st, %struct.timespec** %ts)
  br i1 %call50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.49
  store i32 0, i32* %retval
  br label %return

if.end.52:                                        ; preds = %land.lhs.true.49, %if.end.47
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.40
  %44 = load i32, i32* %adjustment_needed, align 4
  %tobool54 = icmp ne i32 %44, 0
  br i1 %tobool54, label %if.end.59, label %land.lhs.true.55

land.lhs.true.55:                                 ; preds = %if.end.53
  %45 = load i8*, i8** %file.addr, align 8
  %call56 = call i32 @lstat(i8* %45, %struct.stat* %st) #1
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %land.lhs.true.55
  store i32 -1, i32* %retval
  br label %return

if.end.59:                                        ; preds = %land.lhs.true.55, %if.end.53
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %46 = load i32, i32* %st_mode, align 4
  %and = and i32 %46, 61440
  %cmp60 = icmp eq i32 %and, 40960
  br i1 %cmp60, label %if.end.63, label %if.then.61

if.then.61:                                       ; preds = %if.end.59
  %47 = load i8*, i8** %file.addr, align 8
  %48 = load %struct.timespec*, %struct.timespec** %ts, align 8
  %call62 = call i32 @fdutimens(i32 -1, i8* %47, %struct.timespec* %48)
  store i32 %call62, i32* %retval
  br label %return

if.end.63:                                        ; preds = %if.end.59
  %call64 = call i32* @__errno_location() #6
  store i32 38, i32* %call64, align 4
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.63, %if.then.61, %if.then.58, %if.then.51, %if.then.46, %if.then.38, %if.then.13, %if.then.5
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #3

declare void @gettime(%struct.timespec*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
