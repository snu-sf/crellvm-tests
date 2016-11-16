; ModuleID = './sched.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { %struct.event*, void (%struct.event*, i8*)*, i8*, i32, i32, i32, %struct.timeval, i32, i32, i32*, i32* }
%struct.timeval = type { i64, i64 }
%struct.fd_set = type { [16 x i64] }
%struct.timezone = type { i32, i32 }

@evs = internal global %struct.event* null, align 8
@calctimeout = internal global i32 0, align 4
@tevs = internal global %struct.event* null, align 8
@nextev = internal global %struct.event* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"select\00", align 1

; Function Attrs: nounwind uwtable
define void @evenq(%struct.event* %ev) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %evp = alloca %struct.event*, align 8
  %evpp = alloca %struct.event**, align 8
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.event*, %struct.event** %ev.addr, align 8
  %queued = getelementptr inbounds %struct.event, %struct.event* %0, i32 0, i32 7
  %1 = load i32, i32* %queued, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %return

if.end:                                           ; preds = %do.end
  store %struct.event** @evs, %struct.event*** %evpp, align 8
  %2 = load %struct.event*, %struct.event** %ev.addr, align 8
  %type = getelementptr inbounds %struct.event, %struct.event* %2, i32 0, i32 4
  %3 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 1, i32* @calctimeout, align 4
  store %struct.event** @tevs, %struct.event*** %evpp, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.2
  %4 = load %struct.event**, %struct.event*** %evpp, align 8
  %5 = load %struct.event*, %struct.event** %4, align 8
  store %struct.event* %5, %struct.event** %evp, align 8
  %tobool3 = icmp ne %struct.event* %5, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.event*, %struct.event** %ev.addr, align 8
  %pri = getelementptr inbounds %struct.event, %struct.event* %6, i32 0, i32 5
  %7 = load i32, i32* %pri, align 4
  %8 = load %struct.event*, %struct.event** %evp, align 8
  %pri4 = getelementptr inbounds %struct.event, %struct.event* %8, i32 0, i32 5
  %9 = load i32, i32* %pri4, align 4
  %cmp5 = icmp sgt i32 %7, %9
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.body
  br label %for.end

if.end.7:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %10 = load %struct.event*, %struct.event** %evp, align 8
  %next = getelementptr inbounds %struct.event, %struct.event* %10, i32 0, i32 0
  store %struct.event** %next, %struct.event*** %evpp, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.6, %for.cond
  %11 = load %struct.event*, %struct.event** %evp, align 8
  %12 = load %struct.event*, %struct.event** %ev.addr, align 8
  %next8 = getelementptr inbounds %struct.event, %struct.event* %12, i32 0, i32 0
  store %struct.event* %11, %struct.event** %next8, align 8
  %13 = load %struct.event*, %struct.event** %ev.addr, align 8
  %14 = load %struct.event**, %struct.event*** %evpp, align 8
  store %struct.event* %13, %struct.event** %14, align 8
  %15 = load %struct.event*, %struct.event** %ev.addr, align 8
  %queued9 = getelementptr inbounds %struct.event, %struct.event* %15, i32 0, i32 7
  store i32 1, i32* %queued9, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @evdeq(%struct.event* %ev) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %evp = alloca %struct.event*, align 8
  %evpp = alloca %struct.event**, align 8
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.event*, %struct.event** %ev.addr, align 8
  %queued = getelementptr inbounds %struct.event, %struct.event* %0, i32 0, i32 7
  %1 = load i32, i32* %queued, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  br label %if.end.14

if.end:                                           ; preds = %do.end
  store %struct.event** @evs, %struct.event*** %evpp, align 8
  %2 = load %struct.event*, %struct.event** %ev.addr, align 8
  %type = getelementptr inbounds %struct.event, %struct.event* %2, i32 0, i32 4
  %3 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 1, i32* @calctimeout, align 4
  store %struct.event** @tevs, %struct.event*** %evpp, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.2
  %4 = load %struct.event**, %struct.event*** %evpp, align 8
  %5 = load %struct.event*, %struct.event** %4, align 8
  store %struct.event* %5, %struct.event** %evp, align 8
  %tobool3 = icmp ne %struct.event* %5, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.event*, %struct.event** %evp, align 8
  %7 = load %struct.event*, %struct.event** %ev.addr, align 8
  %cmp4 = icmp eq %struct.event* %6, %7
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  br label %for.end

if.end.6:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %8 = load %struct.event*, %struct.event** %evp, align 8
  %next = getelementptr inbounds %struct.event, %struct.event* %8, i32 0, i32 0
  store %struct.event** %next, %struct.event*** %evpp, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.5, %for.cond
  br label %do.body.7

do.body.7:                                        ; preds = %for.end
  br label %do.end.8

do.end.8:                                         ; preds = %do.body.7
  %9 = load %struct.event*, %struct.event** %ev.addr, align 8
  %next9 = getelementptr inbounds %struct.event, %struct.event* %9, i32 0, i32 0
  %10 = load %struct.event*, %struct.event** %next9, align 8
  %11 = load %struct.event**, %struct.event*** %evpp, align 8
  store %struct.event* %10, %struct.event** %11, align 8
  %12 = load %struct.event*, %struct.event** %ev.addr, align 8
  %queued10 = getelementptr inbounds %struct.event, %struct.event* %12, i32 0, i32 7
  store i32 0, i32* %queued10, align 4
  %13 = load %struct.event*, %struct.event** %ev.addr, align 8
  %14 = load %struct.event*, %struct.event** @nextev, align 8
  %cmp11 = icmp eq %struct.event* %13, %14
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end.8
  %15 = load %struct.event*, %struct.event** @nextev, align 8
  %next13 = getelementptr inbounds %struct.event, %struct.event* %15, i32 0, i32 0
  %16 = load %struct.event*, %struct.event** %next13, align 8
  store %struct.event* %16, %struct.event** @nextev, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then, %if.then.12, %do.end.8
  ret void
}

; Function Attrs: nounwind uwtable
define void @sched() #0 {
entry:
  %ev = alloca %struct.event*, align 8
  %r = alloca %struct.fd_set, align 8
  %w = alloca %struct.fd_set, align 8
  %set = alloca %struct.fd_set*, align 8
  %timeoutev = alloca %struct.event*, align 8
  %timeout = alloca %struct.timeval, align 8
  %nsel = alloca i32, align 4
  %__d0 = alloca i32, align 4
  %__d1 = alloca i32, align 4
  %__d025 = alloca i32, align 4
  %__d126 = alloca i32, align 4
  store %struct.event* null, %struct.event** %timeoutev, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end.132, %entry
  %0 = load i32, i32* @calctimeout, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %call = call %struct.event* @calctimo()
  store %struct.event* %call, %struct.event** %timeoutev, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond
  %1 = load %struct.event*, %struct.event** %timeoutev, align 8
  %tobool1 = icmp ne %struct.event* %1, null
  br i1 %tobool1, label %if.then.2, label %if.end.22

if.then.2:                                        ; preds = %if.end
  %call3 = call i32 @gettimeofday(%struct.timeval* %timeout, %struct.timezone* null) #5
  %2 = load %struct.event*, %struct.event** %timeoutev, align 8
  %timeout4 = getelementptr inbounds %struct.event, %struct.event* %2, i32 0, i32 6
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout4, i32 0, i32 0
  %3 = load i64, i64* %tv_sec, align 8
  %tv_sec5 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 0
  %4 = load i64, i64* %tv_sec5, align 8
  %sub = sub nsw i64 %3, %4
  %tv_sec6 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 0
  store i64 %sub, i64* %tv_sec6, align 8
  %5 = load %struct.event*, %struct.event** %timeoutev, align 8
  %timeout7 = getelementptr inbounds %struct.event, %struct.event* %5, i32 0, i32 6
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout7, i32 0, i32 1
  %6 = load i64, i64* %tv_usec, align 8
  %tv_usec8 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 1
  %7 = load i64, i64* %tv_usec8, align 8
  %sub9 = sub nsw i64 %6, %7
  %tv_usec10 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 1
  store i64 %sub9, i64* %tv_usec10, align 8
  %tv_usec11 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 1
  %8 = load i64, i64* %tv_usec11, align 8
  %cmp = icmp slt i64 %8, 0
  br i1 %cmp, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.then.2
  %tv_usec13 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 1
  %9 = load i64, i64* %tv_usec13, align 8
  %add = add nsw i64 %9, 1000000
  store i64 %add, i64* %tv_usec13, align 8
  %tv_sec14 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 0
  %10 = load i64, i64* %tv_sec14, align 8
  %dec = add nsw i64 %10, -1
  store i64 %dec, i64* %tv_sec14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.then.2
  %tv_sec16 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 0
  %11 = load i64, i64* %tv_sec16, align 8
  %cmp17 = icmp slt i64 %11, 0
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.15
  %tv_usec19 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 1
  store i64 0, i64* %tv_usec19, align 8
  %tv_sec20 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 0
  store i64 0, i64* %tv_sec20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end.15
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.22
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %r, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits, i32 0, i64 0
  %12 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx) #5, !srcloc !1
  %asmresult = extractvalue { i64, i64* } %12, 0
  %asmresult23 = extractvalue { i64, i64* } %12, 1
  %13 = trunc i64 %asmresult to i32
  store i32 %13, i32* %__d0, align 4
  %14 = ptrtoint i64* %asmresult23 to i64
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %__d1, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.24

do.body.24:                                       ; preds = %do.end
  %fds_bits27 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %w, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits27, i32 0, i64 0
  %16 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx28) #5, !srcloc !2
  %asmresult29 = extractvalue { i64, i64* } %16, 0
  %asmresult30 = extractvalue { i64, i64* } %16, 1
  %17 = trunc i64 %asmresult29 to i32
  store i32 %17, i32* %__d025, align 4
  %18 = ptrtoint i64* %asmresult30 to i64
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %__d126, align 4
  br label %do.end.31

do.end.31:                                        ; preds = %do.body.24
  %20 = load %struct.event*, %struct.event** @evs, align 8
  store %struct.event* %20, %struct.event** %ev, align 8
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc, %do.end.31
  %21 = load %struct.event*, %struct.event** %ev, align 8
  %tobool33 = icmp ne %struct.event* %21, null
  br i1 %tobool33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.32
  %22 = load %struct.event*, %struct.event** %ev, align 8
  %condpos = getelementptr inbounds %struct.event, %struct.event* %22, i32 0, i32 9
  %23 = load i32*, i32** %condpos, align 8
  %tobool34 = icmp ne i32* %23, null
  br i1 %tobool34, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %for.body
  %24 = load %struct.event*, %struct.event** %ev, align 8
  %condpos35 = getelementptr inbounds %struct.event, %struct.event* %24, i32 0, i32 9
  %25 = load i32*, i32** %condpos35, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.event*, %struct.event** %ev, align 8
  %condneg = getelementptr inbounds %struct.event, %struct.event* %27, i32 0, i32 10
  %28 = load i32*, i32** %condneg, align 8
  %tobool36 = icmp ne i32* %28, null
  br i1 %tobool36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %29 = load %struct.event*, %struct.event** %ev, align 8
  %condneg37 = getelementptr inbounds %struct.event, %struct.event* %29, i32 0, i32 10
  %30 = load i32*, i32** %condneg37, align 8
  %31 = load i32, i32* %30, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %31, %cond.true ], [ 0, %cond.false ]
  %cmp38 = icmp sle i32 %26, %cond
  br i1 %cmp38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %cond.end
  br label %do.body.40

do.body.40:                                       ; preds = %if.then.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.body.40
  br label %for.inc

if.end.42:                                        ; preds = %cond.end, %for.body
  %32 = load %struct.event*, %struct.event** %ev, align 8
  %type = getelementptr inbounds %struct.event, %struct.event* %32, i32 0, i32 4
  %33 = load i32, i32* %type, align 4
  %cmp43 = icmp eq i32 %33, 1
  br i1 %cmp43, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.end.42
  %34 = load %struct.event*, %struct.event** %ev, align 8
  %fd = getelementptr inbounds %struct.event, %struct.event* %34, i32 0, i32 3
  %35 = load i32, i32* %fd, align 4
  %rem = srem i32 %35, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %36 = load %struct.event*, %struct.event** %ev, align 8
  %fd45 = getelementptr inbounds %struct.event, %struct.event* %36, i32 0, i32 3
  %37 = load i32, i32* %fd45, align 4
  %div = sdiv i32 %37, 64
  %idxprom = sext i32 %div to i64
  %fds_bits46 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %r, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits46, i32 0, i64 %idxprom
  %38 = load i64, i64* %arrayidx47, align 8
  %or = or i64 %38, %shl
  store i64 %or, i64* %arrayidx47, align 8
  br label %if.end.62

if.else:                                          ; preds = %if.end.42
  %39 = load %struct.event*, %struct.event** %ev, align 8
  %type48 = getelementptr inbounds %struct.event, %struct.event* %39, i32 0, i32 4
  %40 = load i32, i32* %type48, align 4
  %cmp49 = icmp eq i32 %40, 2
  br i1 %cmp49, label %if.then.50, label %if.end.61

if.then.50:                                       ; preds = %if.else
  %41 = load %struct.event*, %struct.event** %ev, align 8
  %fd51 = getelementptr inbounds %struct.event, %struct.event* %41, i32 0, i32 3
  %42 = load i32, i32* %fd51, align 4
  %rem52 = srem i32 %42, 64
  %sh_prom53 = zext i32 %rem52 to i64
  %shl54 = shl i64 1, %sh_prom53
  %43 = load %struct.event*, %struct.event** %ev, align 8
  %fd55 = getelementptr inbounds %struct.event, %struct.event* %43, i32 0, i32 3
  %44 = load i32, i32* %fd55, align 4
  %div56 = sdiv i32 %44, 64
  %idxprom57 = sext i32 %div56 to i64
  %fds_bits58 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %w, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits58, i32 0, i64 %idxprom57
  %45 = load i64, i64* %arrayidx59, align 8
  %or60 = or i64 %45, %shl54
  store i64 %or60, i64* %arrayidx59, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.50, %if.else
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.44
  br label %for.inc

for.inc:                                          ; preds = %if.end.62, %do.end.41
  %46 = load %struct.event*, %struct.event** %ev, align 8
  %next = getelementptr inbounds %struct.event, %struct.event* %46, i32 0, i32 0
  %47 = load %struct.event*, %struct.event** %next, align 8
  store %struct.event* %47, %struct.event** %ev, align 8
  br label %for.cond.32

for.end:                                          ; preds = %for.cond.32
  %48 = load %struct.event*, %struct.event** %timeoutev, align 8
  %tobool63 = icmp ne %struct.event* %48, null
  br i1 %tobool63, label %cond.true.64, label %cond.false.65

cond.true.64:                                     ; preds = %for.end
  br label %cond.end.66

cond.false.65:                                    ; preds = %for.end
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.65, %cond.true.64
  %cond67 = phi %struct.timeval* [ %timeout, %cond.true.64 ], [ null, %cond.false.65 ]
  %call68 = call i32 @select(i32 1024, %struct.fd_set* %r, %struct.fd_set* %w, %struct.fd_set* null, %struct.timeval* %cond67)
  store i32 %call68, i32* %nsel, align 4
  %49 = load i32, i32* %nsel, align 4
  %cmp69 = icmp slt i32 %49, 0
  br i1 %cmp69, label %if.then.70, label %if.else.76

if.then.70:                                       ; preds = %cond.end.66
  %call71 = call i32* @__errno_location() #6
  %50 = load i32, i32* %call71, align 4
  %cmp72 = icmp ne i32 %50, 4
  br i1 %cmp72, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %if.then.70
  %call74 = call i32* @__errno_location() #6
  %51 = load i32, i32* %call74, align 4
  call void (i32, i8*, ...) @Panic(i32 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)) #7
  unreachable

if.end.75:                                        ; preds = %if.then.70
  store i32 0, i32* %nsel, align 4
  br label %if.end.84

if.else.76:                                       ; preds = %cond.end.66
  %52 = load i32, i32* %nsel, align 4
  %cmp77 = icmp eq i32 %52, 0
  br i1 %cmp77, label %if.then.78, label %if.end.83

if.then.78:                                       ; preds = %if.else.76
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.78
  br label %do.end.80

do.end.80:                                        ; preds = %do.body.79
  br label %do.body.81

do.body.81:                                       ; preds = %do.end.80
  br label %do.end.82

do.end.82:                                        ; preds = %do.body.81
  %53 = load %struct.event*, %struct.event** %timeoutev, align 8
  call void @evdeq(%struct.event* %53)
  %54 = load %struct.event*, %struct.event** %timeoutev, align 8
  %handler = getelementptr inbounds %struct.event, %struct.event* %54, i32 0, i32 1
  %55 = load void (%struct.event*, i8*)*, void (%struct.event*, i8*)** %handler, align 8
  %56 = load %struct.event*, %struct.event** %timeoutev, align 8
  %57 = load %struct.event*, %struct.event** %timeoutev, align 8
  %data = getelementptr inbounds %struct.event, %struct.event* %57, i32 0, i32 2
  %58 = load i8*, i8** %data, align 8
  call void %55(%struct.event* %56, i8* %58)
  br label %if.end.83

if.end.83:                                        ; preds = %do.end.82, %if.else.76
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.75
  %59 = load %struct.event*, %struct.event** @evs, align 8
  store %struct.event* %59, %struct.event** %ev, align 8
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.131, %if.end.84
  %60 = load %struct.event*, %struct.event** %ev, align 8
  %tobool86 = icmp ne %struct.event* %60, null
  br i1 %tobool86, label %for.body.87, label %for.end.132

for.body.87:                                      ; preds = %for.cond.85
  %61 = load %struct.event*, %struct.event** %ev, align 8
  %next88 = getelementptr inbounds %struct.event, %struct.event* %61, i32 0, i32 0
  %62 = load %struct.event*, %struct.event** %next88, align 8
  store %struct.event* %62, %struct.event** @nextev, align 8
  %63 = load %struct.event*, %struct.event** %ev, align 8
  %type89 = getelementptr inbounds %struct.event, %struct.event* %63, i32 0, i32 4
  %64 = load i32, i32* %type89, align 4
  %cmp90 = icmp ne i32 %64, 3
  br i1 %cmp90, label %if.then.91, label %if.end.112

if.then.91:                                       ; preds = %for.body.87
  %65 = load %struct.event*, %struct.event** %ev, align 8
  %type92 = getelementptr inbounds %struct.event, %struct.event* %65, i32 0, i32 4
  %66 = load i32, i32* %type92, align 4
  %cmp93 = icmp eq i32 %66, 1
  br i1 %cmp93, label %cond.true.94, label %cond.false.95

cond.true.94:                                     ; preds = %if.then.91
  br label %cond.end.96

cond.false.95:                                    ; preds = %if.then.91
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.95, %cond.true.94
  %cond97 = phi %struct.fd_set* [ %r, %cond.true.94 ], [ %w, %cond.false.95 ]
  store %struct.fd_set* %cond97, %struct.fd_set** %set, align 8
  %67 = load i32, i32* %nsel, align 4
  %cmp98 = icmp eq i32 %67, 0
  br i1 %cmp98, label %if.then.109, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.96
  %68 = load %struct.event*, %struct.event** %ev, align 8
  %fd99 = getelementptr inbounds %struct.event, %struct.event* %68, i32 0, i32 3
  %69 = load i32, i32* %fd99, align 4
  %div100 = sdiv i32 %69, 64
  %idxprom101 = sext i32 %div100 to i64
  %70 = load %struct.fd_set*, %struct.fd_set** %set, align 8
  %fds_bits102 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %70, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits102, i32 0, i64 %idxprom101
  %71 = load i64, i64* %arrayidx103, align 8
  %72 = load %struct.event*, %struct.event** %ev, align 8
  %fd104 = getelementptr inbounds %struct.event, %struct.event* %72, i32 0, i32 3
  %73 = load i32, i32* %fd104, align 4
  %rem105 = srem i32 %73, 64
  %sh_prom106 = zext i32 %rem105 to i64
  %shl107 = shl i64 1, %sh_prom106
  %and = and i64 %71, %shl107
  %cmp108 = icmp ne i64 %and, 0
  br i1 %cmp108, label %if.end.110, label %if.then.109

if.then.109:                                      ; preds = %lor.lhs.false, %cond.end.96
  br label %for.inc.131

if.end.110:                                       ; preds = %lor.lhs.false
  %74 = load i32, i32* %nsel, align 4
  %dec111 = add nsw i32 %74, -1
  store i32 %dec111, i32* %nsel, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.110, %for.body.87
  %75 = load %struct.event*, %struct.event** %ev, align 8
  %condpos113 = getelementptr inbounds %struct.event, %struct.event* %75, i32 0, i32 9
  %76 = load i32*, i32** %condpos113, align 8
  %tobool114 = icmp ne i32* %76, null
  br i1 %tobool114, label %land.lhs.true.115, label %if.end.126

land.lhs.true.115:                                ; preds = %if.end.112
  %77 = load %struct.event*, %struct.event** %ev, align 8
  %condpos116 = getelementptr inbounds %struct.event, %struct.event* %77, i32 0, i32 9
  %78 = load i32*, i32** %condpos116, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.event*, %struct.event** %ev, align 8
  %condneg117 = getelementptr inbounds %struct.event, %struct.event* %80, i32 0, i32 10
  %81 = load i32*, i32** %condneg117, align 8
  %tobool118 = icmp ne i32* %81, null
  br i1 %tobool118, label %cond.true.119, label %cond.false.121

cond.true.119:                                    ; preds = %land.lhs.true.115
  %82 = load %struct.event*, %struct.event** %ev, align 8
  %condneg120 = getelementptr inbounds %struct.event, %struct.event* %82, i32 0, i32 10
  %83 = load i32*, i32** %condneg120, align 8
  %84 = load i32, i32* %83, align 4
  br label %cond.end.122

cond.false.121:                                   ; preds = %land.lhs.true.115
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.121, %cond.true.119
  %cond123 = phi i32 [ %84, %cond.true.119 ], [ 0, %cond.false.121 ]
  %cmp124 = icmp sle i32 %79, %cond123
  br i1 %cmp124, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %cond.end.122
  br label %for.inc.131

if.end.126:                                       ; preds = %cond.end.122, %if.end.112
  br label %do.body.127

do.body.127:                                      ; preds = %if.end.126
  br label %do.end.128

do.end.128:                                       ; preds = %do.body.127
  %85 = load %struct.event*, %struct.event** %ev, align 8
  %handler129 = getelementptr inbounds %struct.event, %struct.event* %85, i32 0, i32 1
  %86 = load void (%struct.event*, i8*)*, void (%struct.event*, i8*)** %handler129, align 8
  %87 = load %struct.event*, %struct.event** %ev, align 8
  %88 = load %struct.event*, %struct.event** %ev, align 8
  %data130 = getelementptr inbounds %struct.event, %struct.event* %88, i32 0, i32 2
  %89 = load i8*, i8** %data130, align 8
  call void %86(%struct.event* %87, i8* %89)
  br label %for.inc.131

for.inc.131:                                      ; preds = %do.end.128, %if.then.125, %if.then.109
  %90 = load %struct.event*, %struct.event** @nextev, align 8
  store %struct.event* %90, %struct.event** %ev, align 8
  br label %for.cond.85

for.end.132:                                      ; preds = %for.cond.85
  br label %for.cond

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.event* @calctimo() #0 {
entry:
  %retval = alloca %struct.event*, align 8
  %ev = alloca %struct.event*, align 8
  %min = alloca %struct.event*, align 8
  %mins = alloca i64, align 8
  %0 = load %struct.event*, %struct.event** @tevs, align 8
  store %struct.event* %0, %struct.event** %min, align 8
  %cmp = icmp eq %struct.event* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.event* null, %struct.event** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.event*, %struct.event** %min, align 8
  %timeout = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 6
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 0
  %2 = load i64, i64* %tv_sec, align 8
  store i64 %2, i64* %mins, align 8
  %3 = load %struct.event*, %struct.event** @tevs, align 8
  %next = getelementptr inbounds %struct.event, %struct.event* %3, i32 0, i32 0
  %4 = load %struct.event*, %struct.event** %next, align 8
  store %struct.event* %4, %struct.event** %ev, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load %struct.event*, %struct.event** %ev, align 8
  %tobool = icmp ne %struct.event* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  br label %do.end

do.end:                                           ; preds = %do.body
  %6 = load i64, i64* %mins, align 8
  %7 = load %struct.event*, %struct.event** %ev, align 8
  %timeout1 = getelementptr inbounds %struct.event, %struct.event* %7, i32 0, i32 6
  %tv_sec2 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout1, i32 0, i32 0
  %8 = load i64, i64* %tv_sec2, align 8
  %cmp3 = icmp slt i64 %6, %8
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %do.end
  br label %for.inc

if.end.5:                                         ; preds = %do.end
  %9 = load i64, i64* %mins, align 8
  %10 = load %struct.event*, %struct.event** %ev, align 8
  %timeout6 = getelementptr inbounds %struct.event, %struct.event* %10, i32 0, i32 6
  %tv_sec7 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout6, i32 0, i32 0
  %11 = load i64, i64* %tv_sec7, align 8
  %cmp8 = icmp sgt i64 %9, %11
  br i1 %cmp8, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %12 = load %struct.event*, %struct.event** %min, align 8
  %timeout9 = getelementptr inbounds %struct.event, %struct.event* %12, i32 0, i32 6
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout9, i32 0, i32 1
  %13 = load i64, i64* %tv_usec, align 8
  %14 = load %struct.event*, %struct.event** %ev, align 8
  %timeout10 = getelementptr inbounds %struct.event, %struct.event* %14, i32 0, i32 6
  %tv_usec11 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout10, i32 0, i32 1
  %15 = load i64, i64* %tv_usec11, align 8
  %cmp12 = icmp sgt i64 %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %lor.lhs.false, %if.end.5
  %16 = load %struct.event*, %struct.event** %ev, align 8
  store %struct.event* %16, %struct.event** %min, align 8
  %17 = load %struct.event*, %struct.event** %ev, align 8
  %timeout14 = getelementptr inbounds %struct.event, %struct.event* %17, i32 0, i32 6
  %tv_sec15 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout14, i32 0, i32 0
  %18 = load i64, i64* %tv_sec15, align 8
  store i64 %18, i64* %mins, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.16, %if.then.4
  %19 = load %struct.event*, %struct.event** %ev, align 8
  %next17 = getelementptr inbounds %struct.event, %struct.event* %19, i32 0, i32 0
  %20 = load %struct.event*, %struct.event** %next17, align 8
  store %struct.event* %20, %struct.event** %ev, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.event*, %struct.event** %min, align 8
  store %struct.event* %21, %struct.event** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %22 = load %struct.event*, %struct.event** %retval
  ret %struct.event* %22
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: noreturn
declare void @Panic(i32, i8*, ...) #4

; Function Attrs: nounwind uwtable
define void @SetTimeout(%struct.event* %ev, i32 %timo) #0 {
entry:
  %ev.addr = alloca %struct.event*, align 8
  %timo.addr = alloca i32, align 4
  store %struct.event* %ev, %struct.event** %ev.addr, align 8
  store i32 %timo, i32* %timo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  %0 = load %struct.event*, %struct.event** %ev.addr, align 8
  %timeout = getelementptr inbounds %struct.event, %struct.event* %0, i32 0, i32 6
  %call = call i32 @gettimeofday(%struct.timeval* %timeout, %struct.timezone* null) #5
  %1 = load i32, i32* %timo.addr, align 4
  %div = sdiv i32 %1, 1000
  %conv = sext i32 %div to i64
  %2 = load %struct.event*, %struct.event** %ev.addr, align 8
  %timeout3 = getelementptr inbounds %struct.event, %struct.event* %2, i32 0, i32 6
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout3, i32 0, i32 0
  %3 = load i64, i64* %tv_sec, align 8
  %add = add nsw i64 %3, %conv
  store i64 %add, i64* %tv_sec, align 8
  %4 = load i32, i32* %timo.addr, align 4
  %rem = srem i32 %4, 1000
  %mul = mul nsw i32 %rem, 1000
  %conv4 = sext i32 %mul to i64
  %5 = load %struct.event*, %struct.event** %ev.addr, align 8
  %timeout5 = getelementptr inbounds %struct.event, %struct.event* %5, i32 0, i32 6
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout5, i32 0, i32 1
  %6 = load i64, i64* %tv_usec, align 8
  %add6 = add nsw i64 %6, %conv4
  store i64 %add6, i64* %tv_usec, align 8
  %7 = load %struct.event*, %struct.event** %ev.addr, align 8
  %timeout7 = getelementptr inbounds %struct.event, %struct.event* %7, i32 0, i32 6
  %tv_usec8 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout7, i32 0, i32 1
  %8 = load i64, i64* %tv_usec8, align 8
  %cmp = icmp sgt i64 %8, 1000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end.2
  %9 = load %struct.event*, %struct.event** %ev.addr, align 8
  %timeout10 = getelementptr inbounds %struct.event, %struct.event* %9, i32 0, i32 6
  %tv_usec11 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout10, i32 0, i32 1
  %10 = load i64, i64* %tv_usec11, align 8
  %sub = sub nsw i64 %10, 1000000
  store i64 %sub, i64* %tv_usec11, align 8
  %11 = load %struct.event*, %struct.event** %ev.addr, align 8
  %timeout12 = getelementptr inbounds %struct.event, %struct.event* %11, i32 0, i32 6
  %tv_sec13 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout12, i32 0, i32 0
  %12 = load i64, i64* %tv_sec13, align 8
  %inc = add nsw i64 %12, 1
  store i64 %inc, i64* %tv_sec13, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.2
  %13 = load %struct.event*, %struct.event** %ev.addr, align 8
  %queued = getelementptr inbounds %struct.event, %struct.event* %13, i32 0, i32 7
  %14 = load i32, i32* %queued, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  store i32 1, i32* @calctimeout, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 134263}
!2 = !{i32 134468}
