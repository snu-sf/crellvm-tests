; ModuleID = './src/xgselect.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd_set = type { [16 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__sigset_t = type { [16 x i64] }
%struct._GMainContext = type opaque
%struct._GPollFD = type { i32, i16, i16 }

; Function Attrs: nounwind uwtable
define i32 @xg_select(i32 %fds_lim, %struct.fd_set* %rfds, %struct.fd_set* %wfds, %struct.fd_set* %efds, %struct.timespec* %timeout, %struct.__sigset_t* %sigmask) #0 {
entry:
  %fds_lim.addr = alloca i32, align 4
  %rfds.addr = alloca %struct.fd_set*, align 8
  %wfds.addr = alloca %struct.fd_set*, align 8
  %efds.addr = alloca %struct.fd_set*, align 8
  %timeout.addr = alloca %struct.timespec*, align 8
  %sigmask.addr = alloca %struct.__sigset_t*, align 8
  %all_rfds = alloca %struct.fd_set, align 8
  %all_wfds = alloca %struct.fd_set, align 8
  %tmo = alloca %struct.timespec, align 8
  %tmop = alloca %struct.timespec*, align 8
  %context = alloca %struct._GMainContext*, align 8
  %have_wfds = alloca i8, align 1
  %gfds_buf = alloca [128 x %struct._GPollFD], align 16
  %gfds = alloca %struct._GPollFD*, align 8
  %gfds_size = alloca i32, align 4
  %n_gfds = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %our_fds = alloca i32, align 4
  %max_fds = alloca i32, align 4
  %context_acquired = alloca i8, align 1
  %i = alloca i32, align 4
  %nfds = alloca i32, align 4
  %tmo_in_millisec = alloca i32, align 4
  %need_to_dispatch = alloca i8, align 1
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %__d0 = alloca i32, align 4
  %__d1 = alloca i32, align 4
  %__d011 = alloca i32, align 4
  %__d112 = alloca i32, align 4
  %coerce = alloca %struct.timespec, align 8
  %pselect_errno = alloca i32, align 4
  store i32 %fds_lim, i32* %fds_lim.addr, align 4
  store %struct.fd_set* %rfds, %struct.fd_set** %rfds.addr, align 8
  store %struct.fd_set* %wfds, %struct.fd_set** %wfds.addr, align 8
  store %struct.fd_set* %efds, %struct.fd_set** %efds.addr, align 8
  store %struct.timespec* %timeout, %struct.timespec** %timeout.addr, align 8
  store %struct.__sigset_t* %sigmask, %struct.__sigset_t** %sigmask.addr, align 8
  %0 = load %struct.timespec*, %struct.timespec** %timeout.addr, align 8
  store %struct.timespec* %0, %struct.timespec** %tmop, align 8
  %1 = load %struct.fd_set*, %struct.fd_set** %wfds.addr, align 8
  %cmp = icmp ne %struct.fd_set* %1, null
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %have_wfds, align 1
  %arraydecay = getelementptr inbounds [128 x %struct._GPollFD], [128 x %struct._GPollFD]* %gfds_buf, i32 0, i32 0
  store %struct._GPollFD* %arraydecay, %struct._GPollFD** %gfds, align 8
  store i32 128, i32* %gfds_size, align 4
  store i32 0, i32* %retval1, align 4
  store i32 0, i32* %our_fds, align 4
  %2 = load i32, i32* %fds_lim.addr, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %max_fds, align 4
  store i8 0, i8* %context_acquired, align 1
  store i64 16384, i64* %sa_avail, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %call2 = call %struct._GMainContext* @g_main_context_default()
  store %struct._GMainContext* %call2, %struct._GMainContext** %context, align 8
  %3 = load %struct._GMainContext*, %struct._GMainContext** %context, align 8
  %call3 = call i32 @g_main_context_acquire(%struct._GMainContext* %3)
  %tobool = icmp ne i32 %call3, 0
  %frombool4 = zext i1 %tobool to i8
  store i8 %frombool4, i8* %context_acquired, align 1
  %4 = load %struct.fd_set*, %struct.fd_set** %rfds.addr, align 8
  %tobool5 = icmp ne %struct.fd_set* %4, null
  br i1 %tobool5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.fd_set*, %struct.fd_set** %rfds.addr, align 8
  %6 = bitcast %struct.fd_set* %all_rfds to i8*
  %7 = bitcast %struct.fd_set* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 128, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.else
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %all_rfds, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits, i32 0, i64 0
  %8 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx) #2, !srcloc !1
  %asmresult = extractvalue { i64, i64* } %8, 0
  %asmresult6 = extractvalue { i64, i64* } %8, 1
  %9 = trunc i64 %asmresult to i32
  store i32 %9, i32* %__d0, align 4
  %10 = ptrtoint i64* %asmresult6 to i64
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %__d1, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %12 = load %struct.fd_set*, %struct.fd_set** %wfds.addr, align 8
  %tobool7 = icmp ne %struct.fd_set* %12, null
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end
  %13 = load %struct.fd_set*, %struct.fd_set** %wfds.addr, align 8
  %14 = bitcast %struct.fd_set* %all_wfds to i8*
  %15 = bitcast %struct.fd_set* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 128, i32 8, i1 false)
  br label %if.end.18

if.else.9:                                        ; preds = %if.end
  br label %do.body.10

do.body.10:                                       ; preds = %if.else.9
  %fds_bits13 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %all_wfds, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits13, i32 0, i64 0
  %16 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx14) #2, !srcloc !2
  %asmresult15 = extractvalue { i64, i64* } %16, 0
  %asmresult16 = extractvalue { i64, i64* } %16, 1
  %17 = trunc i64 %asmresult15 to i32
  store i32 %17, i32* %__d011, align 4
  %18 = ptrtoint i64* %asmresult16 to i64
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %__d112, align 4
  br label %do.end.17

do.end.17:                                        ; preds = %do.body.10
  br label %if.end.18

if.end.18:                                        ; preds = %do.end.17, %if.then.8
  %20 = load i8, i8* %context_acquired, align 1
  %tobool19 = trunc i8 %20 to i1
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %21 = load %struct._GMainContext*, %struct._GMainContext** %context, align 8
  %22 = load %struct._GPollFD*, %struct._GPollFD** %gfds, align 8
  %23 = load i32, i32* %gfds_size, align 4
  %call20 = call i32 @g_main_context_query(%struct._GMainContext* %21, i32 300, i32* %tmo_in_millisec, %struct._GPollFD* %22, i32 %23)
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call20, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %n_gfds, align 4
  %24 = load i32, i32* %gfds_size, align 4
  %25 = load i32, i32* %n_gfds, align 4
  %cmp21 = icmp slt i32 %24, %25
  br i1 %cmp21, label %if.then.22, label %if.end.38

if.then.22:                                       ; preds = %cond.end
  br label %do.body.23

do.body.23:                                       ; preds = %if.then.22
  %26 = load i32, i32* %n_gfds, align 4
  %conv = sext i32 %26 to i64
  %27 = load i64, i64* %sa_avail, align 8
  %div = udiv i64 %27, 8
  %div24 = udiv i64 %div, 8
  %cmp25 = icmp ule i64 %conv, %div24
  br i1 %cmp25, label %if.then.27, label %if.else.32

if.then.27:                                       ; preds = %do.body.23
  %28 = load i32, i32* %n_gfds, align 4
  %conv28 = sext i32 %28 to i64
  %mul = mul i64 64, %conv28
  %29 = load i64, i64* %sa_avail, align 8
  %sub29 = sub i64 %29, %mul
  store i64 %sub29, i64* %sa_avail, align 8
  %30 = load i32, i32* %n_gfds, align 4
  %conv30 = sext i32 %30 to i64
  %mul31 = mul i64 64, %conv30
  %31 = alloca i8, i64 %mul31
  %32 = bitcast i8* %31 to %struct._GPollFD*
  store %struct._GPollFD* %32, %struct._GPollFD** %gfds, align 8
  br label %if.end.35

if.else.32:                                       ; preds = %do.body.23
  %33 = load i32, i32* %n_gfds, align 4
  %conv33 = sext i32 %33 to i64
  %call34 = call noalias i8* @xnmalloc(i64 %conv33, i64 64)
  %34 = bitcast i8* %call34 to %struct._GPollFD*
  store %struct._GPollFD* %34, %struct._GPollFD** %gfds, align 8
  store i8 1, i8* %sa_must_free, align 1
  %35 = load %struct._GPollFD*, %struct._GPollFD** %gfds, align 8
  %36 = bitcast %struct._GPollFD* %35 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %36)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.27
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  %37 = load i32, i32* %n_gfds, align 4
  store i32 %37, i32* %gfds_size, align 4
  %38 = load %struct._GMainContext*, %struct._GMainContext** %context, align 8
  %39 = load %struct._GPollFD*, %struct._GPollFD** %gfds, align 8
  %40 = load i32, i32* %gfds_size, align 4
  %call37 = call i32 @g_main_context_query(%struct._GMainContext* %38, i32 300, i32* %tmo_in_millisec, %struct._GPollFD* %39, i32 %40)
  store i32 %call37, i32* %n_gfds, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.36, %cond.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.38
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %n_gfds, align 4
  %cmp39 = icmp slt i32 %41, %42
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load i32, i32* %i, align 4
  %idxprom = sext i32 %43 to i64
  %44 = load %struct._GPollFD*, %struct._GPollFD** %gfds, align 8
  %arrayidx41 = getelementptr inbounds %struct._GPollFD, %struct._GPollFD* %44, i64 %idxprom
  %events = getelementptr inbounds %struct._GPollFD, %struct._GPollFD* %arrayidx41, i32 0, i32 1
  %45 = load i16, i16* %events, align 2
  %conv42 = zext i16 %45 to i32
  %and = and i32 %conv42, 1
  %tobool43 = icmp ne i32 %and, 0
  br i1 %tobool43, label %if.then.44, label %if.end.57

if.then.44:                                       ; preds = %for.body
  %46 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %46 to i64
  %47 = load %struct._GPollFD*, %struct._GPollFD** %gfds, align 8
  %arrayidx46 = getelementptr inbounds %struct._GPollFD, %struct._GPollFD* %47, i64 %idxprom45
  %fd = getelementptr inbounds %struct._GPollFD, %struct._GPollFD* %arrayidx46, i32 0, i32 0
  %48 = load i32, i32* %fd, align 4
  call void @fd_SET(i32 %48, %struct.fd_set* %all_rfds)
  %49 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %49 to i64
  %50 = load %struct._GPollFD*, %struct._GPollFD** %gfds, align 8
  %arrayidx48 = getelementptr inbounds %struct._GPollFD, %struct._GPollFD* %50, i64 %idxprom47
  %fd49 = getelementptr inbounds %struct._GPollFD, %struct._GPollFD* %arrayidx48, i32 0, i32 0
  %51 = load i32, i32* %fd49, align 4
  %52 = load i32, i32* %max_fds, align 4
  %cmp50 = icmp sgt i32 %51, %52
  br i1 %cmp50, label %if.then.52, label %if.end.56

if.then.52:                                       ; preds = %if.then.44
  %53 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %53 to i64
  %54 = load %struct._GPollFD*, %struct._GPollFD** %gfds, align 8
  %arrayidx54 = getelementptr inbounds %struct._GPollFD, %struct._GPollFD* %54, i64 %idxprom53
  %fd55 = getelementptr inbounds %struct._GPollFD, %struct._GPollFD* %arrayidx54, i32 0, i32 0
  %55 = load i32, i32* %fd55, align 4
  store i32 %55, i32* %max_fds, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.52, %if.then.44
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %for.body
  %56 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %56 to i64
  %57 = load %struct._GPollFD*, %struct._GPollFD** %gfds, align 8
  %arrayidx59 = getelementptr inbounds %struct._GPollFD, %struct._GPollFD* %57, i64 %idxprom58
  %events60 = getelementptr inbounds %struct._GPollFD, %struct._GPollFD* %arrayidx59, i32 0, i32 1
  %58 = load i16, i16* %events60, align 2
  %conv61 = zext i16 %58 to i32
  %and62 = and i32 %conv61, 4
  %tobool63 = icmp ne i32 %and62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.78

if.then.64:                                       ; preds = %if.end.57
  %59 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %59 to i64
  %60 = load %struct._GPollFD*, %struct._GPollFD** %gfds, align 8
  %arrayidx66 = getelementptr inbounds %struct._GPollFD, %struct._GPollFD* %60, i64 %idxprom65
  %fd67 = getelementptr inbounds %struct._GPollFD, %struct._GPollFD* %arrayidx66, i32 0, i32 0
  %61 = load i32, i32* %fd67, align 4
  call void @fd_SET(i32 %61, %struct.fd_set* %all_wfds)
  %62 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %62 to i64
  %63 = load %struct._GPollFD*, %struct._GPollFD** %gfds, align 8
  %arrayidx69 = getelementptr inbounds %struct._GPollFD, %struct._GPollFD* %63, i64 %idxprom68
  %fd70 = getelementptr inbounds %struct._GPollFD, %struct._GPollFD* %arrayidx69, i32 0, i32 0
  %64 = load i32, i32* %fd70, align 4
  %65 = load i32, i32* %max_fds, align 4
  %cmp71 = icmp sgt i32 %64, %65
  br i1 %cmp71, label %if.then.73, label %if.end.77

if.then.73:                                       ; preds = %if.then.64
  %66 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %66 to i64
  %67 = load %struct._GPollFD*, %struct._GPollFD** %gfds, align 8
  %arrayidx75 = getelementptr inbounds %struct._GPollFD, %struct._GPollFD* %67, i64 %idxprom74
  %fd76 = getelementptr inbounds %struct._GPollFD, %struct._GPollFD* %arrayidx75, i32 0, i32 0
  %68 = load i32, i32* %fd76, align 4
  store i32 %68, i32* %max_fds, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.73, %if.then.64
  store i8 1, i8* %have_wfds, align 1
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.57
  br label %for.inc

for.inc:                                          ; preds = %if.end.78
  %69 = load i32, i32* %i, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.79

do.body.79:                                       ; preds = %for.end
  %70 = load i8, i8* %sa_must_free, align 1
  %tobool80 = trunc i8 %70 to i1
  br i1 %tobool80, label %if.then.81, label %if.end.84

if.then.81:                                       ; preds = %do.body.79
  store i8 0, i8* %sa_must_free, align 1
  %71 = load i64, i64* %sa_count, align 8
  %call82 = call i64 @builtin_lisp_symbol(i32 0)
  %call83 = call i64 @unbind_to(i64 %71, i64 %call82)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.81, %do.body.79
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  %72 = load i32, i32* %n_gfds, align 4
  %cmp86 = icmp sge i32 %72, 0
  br i1 %cmp86, label %land.lhs.true, label %if.end.102

land.lhs.true:                                    ; preds = %do.end.85
  %73 = load i32, i32* %tmo_in_millisec, align 4
  %cmp88 = icmp sge i32 %73, 0
  br i1 %cmp88, label %if.then.90, label %if.end.102

if.then.90:                                       ; preds = %land.lhs.true
  %74 = load i32, i32* %tmo_in_millisec, align 4
  %div91 = sdiv i32 %74, 1000
  %conv92 = sext i32 %div91 to i64
  %75 = load i32, i32* %tmo_in_millisec, align 4
  %rem = srem i32 %75, 1000
  %mul93 = mul nsw i32 1000000, %rem
  %conv94 = sext i32 %mul93 to i64
  %call95 = call { i64, i64 } @make_timespec(i64 %conv92, i64 %conv94)
  %76 = bitcast %struct.timespec* %coerce to { i64, i64 }*
  %77 = getelementptr { i64, i64 }, { i64, i64 }* %76, i32 0, i32 0
  %78 = extractvalue { i64, i64 } %call95, 0
  store i64 %78, i64* %77, align 8
  %79 = getelementptr { i64, i64 }, { i64, i64 }* %76, i32 0, i32 1
  %80 = extractvalue { i64, i64 } %call95, 1
  store i64 %80, i64* %79, align 8
  %81 = bitcast %struct.timespec* %tmo to i8*
  %82 = bitcast %struct.timespec* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 16, i32 8, i1 false)
  %83 = load %struct.timespec*, %struct.timespec** %timeout.addr, align 8
  %tobool96 = icmp ne %struct.timespec* %83, null
  br i1 %tobool96, label %lor.lhs.false, label %if.then.100

lor.lhs.false:                                    ; preds = %if.then.90
  %84 = load %struct.timespec*, %struct.timespec** %timeout.addr, align 8
  %85 = bitcast %struct.timespec* %tmo to { i64, i64 }*
  %86 = getelementptr { i64, i64 }, { i64, i64 }* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 1
  %88 = getelementptr { i64, i64 }, { i64, i64 }* %85, i32 0, i32 1
  %89 = load i64, i64* %88, align 1
  %90 = bitcast %struct.timespec* %84 to { i64, i64 }*
  %91 = getelementptr { i64, i64 }, { i64, i64 }* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 1
  %93 = getelementptr { i64, i64 }, { i64, i64 }* %90, i32 0, i32 1
  %94 = load i64, i64* %93, align 1
  %call97 = call i32 @timespec_cmp(i64 %87, i64 %89, i64 %92, i64 %94) #5
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %lor.lhs.false, %if.then.90
  store %struct.timespec* %tmo, %struct.timespec** %tmop, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %lor.lhs.false
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %land.lhs.true, %do.end.85
  %95 = load i32, i32* %max_fds, align 4
  %add = add nsw i32 %95, 1
  store i32 %add, i32* %fds_lim.addr, align 4
  %96 = load i32, i32* %fds_lim.addr, align 4
  %97 = load i8, i8* %have_wfds, align 1
  %tobool103 = trunc i8 %97 to i1
  br i1 %tobool103, label %cond.true.105, label %cond.false.106

cond.true.105:                                    ; preds = %if.end.102
  br label %cond.end.107

cond.false.106:                                   ; preds = %if.end.102
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.106, %cond.true.105
  %cond108 = phi %struct.fd_set* [ %all_wfds, %cond.true.105 ], [ null, %cond.false.106 ]
  %98 = load %struct.fd_set*, %struct.fd_set** %efds.addr, align 8
  %99 = load %struct.timespec*, %struct.timespec** %tmop, align 8
  %100 = load %struct.__sigset_t*, %struct.__sigset_t** %sigmask.addr, align 8
  %call109 = call i32 @pselect(i32 %96, %struct.fd_set* %all_rfds, %struct.fd_set* %cond108, %struct.fd_set* %98, %struct.timespec* %99, %struct.__sigset_t* %100)
  store i32 %call109, i32* %nfds, align 4
  %101 = load i32, i32* %nfds, align 4
  %cmp110 = icmp slt i32 %101, 0
  br i1 %cmp110, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %cond.end.107
  %102 = load i32, i32* %nfds, align 4
  store i32 %102, i32* %retval1, align 4
  br label %if.end.168

if.else.113:                                      ; preds = %cond.end.107
  %103 = load i32, i32* %nfds, align 4
  %cmp114 = icmp sgt i32 %103, 0
  br i1 %cmp114, label %if.then.116, label %if.end.167

if.then.116:                                      ; preds = %if.else.113
  store i32 0, i32* %i, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.164, %if.then.116
  %104 = load i32, i32* %i, align 4
  %105 = load i32, i32* %fds_lim.addr, align 4
  %cmp118 = icmp slt i32 %104, %105
  br i1 %cmp118, label %for.body.120, label %for.end.166

for.body.120:                                     ; preds = %for.cond.117
  %106 = load i32, i32* %i, align 4
  %call121 = call zeroext i1 @fd_ISSET(i32 %106, %struct.fd_set* %all_rfds)
  br i1 %call121, label %if.then.122, label %if.else.132

if.then.122:                                      ; preds = %for.body.120
  %107 = load %struct.fd_set*, %struct.fd_set** %rfds.addr, align 8
  %tobool123 = icmp ne %struct.fd_set* %107, null
  br i1 %tobool123, label %land.lhs.true.124, label %if.else.129

land.lhs.true.124:                                ; preds = %if.then.122
  %108 = load i32, i32* %i, align 4
  %109 = load %struct.fd_set*, %struct.fd_set** %rfds.addr, align 8
  %call125 = call zeroext i1 @fd_ISSET(i32 %108, %struct.fd_set* %109)
  br i1 %call125, label %if.then.127, label %if.else.129

if.then.127:                                      ; preds = %land.lhs.true.124
  %110 = load i32, i32* %retval1, align 4
  %inc128 = add nsw i32 %110, 1
  store i32 %inc128, i32* %retval1, align 4
  br label %if.end.131

if.else.129:                                      ; preds = %land.lhs.true.124, %if.then.122
  %111 = load i32, i32* %our_fds, align 4
  %inc130 = add nsw i32 %111, 1
  store i32 %inc130, i32* %our_fds, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.129, %if.then.127
  br label %if.end.136

if.else.132:                                      ; preds = %for.body.120
  %112 = load %struct.fd_set*, %struct.fd_set** %rfds.addr, align 8
  %tobool133 = icmp ne %struct.fd_set* %112, null
  br i1 %tobool133, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.else.132
  %113 = load i32, i32* %i, align 4
  %114 = load %struct.fd_set*, %struct.fd_set** %rfds.addr, align 8
  call void @fd_CLR(i32 %113, %struct.fd_set* %114)
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.134, %if.else.132
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.end.131
  %115 = load i8, i8* %have_wfds, align 1
  %tobool137 = trunc i8 %115 to i1
  br i1 %tobool137, label %land.lhs.true.139, label %if.else.152

land.lhs.true.139:                                ; preds = %if.end.136
  %116 = load i32, i32* %i, align 4
  %call140 = call zeroext i1 @fd_ISSET(i32 %116, %struct.fd_set* %all_wfds)
  br i1 %call140, label %if.then.142, label %if.else.152

if.then.142:                                      ; preds = %land.lhs.true.139
  %117 = load %struct.fd_set*, %struct.fd_set** %wfds.addr, align 8
  %tobool143 = icmp ne %struct.fd_set* %117, null
  br i1 %tobool143, label %land.lhs.true.144, label %if.else.149

land.lhs.true.144:                                ; preds = %if.then.142
  %118 = load i32, i32* %i, align 4
  %119 = load %struct.fd_set*, %struct.fd_set** %wfds.addr, align 8
  %call145 = call zeroext i1 @fd_ISSET(i32 %118, %struct.fd_set* %119)
  br i1 %call145, label %if.then.147, label %if.else.149

if.then.147:                                      ; preds = %land.lhs.true.144
  %120 = load i32, i32* %retval1, align 4
  %inc148 = add nsw i32 %120, 1
  store i32 %inc148, i32* %retval1, align 4
  br label %if.end.151

if.else.149:                                      ; preds = %land.lhs.true.144, %if.then.142
  %121 = load i32, i32* %our_fds, align 4
  %inc150 = add nsw i32 %121, 1
  store i32 %inc150, i32* %our_fds, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.149, %if.then.147
  br label %if.end.156

if.else.152:                                      ; preds = %land.lhs.true.139, %if.end.136
  %122 = load %struct.fd_set*, %struct.fd_set** %wfds.addr, align 8
  %tobool153 = icmp ne %struct.fd_set* %122, null
  br i1 %tobool153, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.else.152
  %123 = load i32, i32* %i, align 4
  %124 = load %struct.fd_set*, %struct.fd_set** %wfds.addr, align 8
  call void @fd_CLR(i32 %123, %struct.fd_set* %124)
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %if.else.152
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.end.151
  %125 = load %struct.fd_set*, %struct.fd_set** %efds.addr, align 8
  %tobool157 = icmp ne %struct.fd_set* %125, null
  br i1 %tobool157, label %land.lhs.true.158, label %if.end.163

land.lhs.true.158:                                ; preds = %if.end.156
  %126 = load i32, i32* %i, align 4
  %127 = load %struct.fd_set*, %struct.fd_set** %efds.addr, align 8
  %call159 = call zeroext i1 @fd_ISSET(i32 %126, %struct.fd_set* %127)
  br i1 %call159, label %if.then.161, label %if.end.163

if.then.161:                                      ; preds = %land.lhs.true.158
  %128 = load i32, i32* %retval1, align 4
  %inc162 = add nsw i32 %128, 1
  store i32 %inc162, i32* %retval1, align 4
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.161, %land.lhs.true.158, %if.end.156
  br label %for.inc.164

for.inc.164:                                      ; preds = %if.end.163
  %129 = load i32, i32* %i, align 4
  %inc165 = add nsw i32 %129, 1
  store i32 %inc165, i32* %i, align 4
  br label %for.cond.117

for.end.166:                                      ; preds = %for.cond.117
  br label %if.end.167

if.end.167:                                       ; preds = %for.end.166, %if.else.113
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.then.112
  %130 = load i32, i32* %retval1, align 4
  %cmp169 = icmp eq i32 %130, 0
  %frombool171 = zext i1 %cmp169 to i8
  store i8 %frombool171, i8* %need_to_dispatch, align 1
  %131 = load i8, i8* %need_to_dispatch, align 1
  %tobool172 = trunc i8 %131 to i1
  br i1 %tobool172, label %if.then.173, label %if.end.178

if.then.173:                                      ; preds = %if.end.168
  %call174 = call i32* @__errno_location() #6
  %132 = load i32, i32* %call174, align 4
  store i32 %132, i32* %pselect_errno, align 4
  call void @block_input()
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.173
  %133 = load %struct._GMainContext*, %struct._GMainContext** %context, align 8
  %call175 = call i32 @g_main_context_pending(%struct._GMainContext* %133)
  %tobool176 = icmp ne i32 %call175, 0
  br i1 %tobool176, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %134 = load %struct._GMainContext*, %struct._GMainContext** %context, align 8
  call void @g_main_context_dispatch(%struct._GMainContext* %134)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @unblock_input()
  %135 = load i32, i32* %pselect_errno, align 4
  %call177 = call i32* @__errno_location() #6
  store i32 %135, i32* %call177, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %while.end, %if.end.168
  %136 = load i8, i8* %context_acquired, align 1
  %tobool179 = trunc i8 %136 to i1
  br i1 %tobool179, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %if.end.178
  %137 = load %struct._GMainContext*, %struct._GMainContext** %context, align 8
  call void @g_main_context_release(%struct._GMainContext* %137)
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.180, %if.end.178
  %138 = load i32, i32* %our_fds, align 4
  %cmp182 = icmp sgt i32 %138, 0
  br i1 %cmp182, label %land.lhs.true.190, label %lor.lhs.false.184

lor.lhs.false.184:                                ; preds = %if.end.181
  %139 = load i32, i32* %nfds, align 4
  %cmp185 = icmp eq i32 %139, 0
  br i1 %cmp185, label %land.lhs.true.187, label %if.end.195

land.lhs.true.187:                                ; preds = %lor.lhs.false.184
  %140 = load %struct.timespec*, %struct.timespec** %tmop, align 8
  %cmp188 = icmp eq %struct.timespec* %140, %tmo
  br i1 %cmp188, label %land.lhs.true.190, label %if.end.195

land.lhs.true.190:                                ; preds = %land.lhs.true.187, %if.end.181
  %141 = load i32, i32* %retval1, align 4
  %cmp191 = icmp eq i32 %141, 0
  br i1 %cmp191, label %if.then.193, label %if.end.195

if.then.193:                                      ; preds = %land.lhs.true.190
  store i32 -1, i32* %retval1, align 4
  %call194 = call i32* @__errno_location() #6
  store i32 4, i32* %call194, align 4
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.193, %land.lhs.true.190, %land.lhs.true.187, %lor.lhs.false.184
  %142 = load i32, i32* %retval1, align 4
  ret i32 %142
}

declare i64 @SPECPDL_INDEX() #1

declare %struct._GMainContext* @g_main_context_default() #1

declare i32 @g_main_context_acquire(%struct._GMainContext*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @g_main_context_query(%struct._GMainContext*, i32, i32*, %struct._GPollFD*, i32) #1

declare noalias i8* @xnmalloc(i64, i64) #1

declare void @record_unwind_protect_ptr(void (i8*)*, i8*) #1

declare void @xfree(i8*) #1

declare void @fd_SET(i32, %struct.fd_set*) #1

declare i64 @unbind_to(i64, i64) #1

declare i64 @builtin_lisp_symbol(i32) #1

declare { i64, i64 } @make_timespec(i64, i64) #1

; Function Attrs: nounwind readonly
declare i32 @timespec_cmp(i64, i64, i64, i64) #3

declare i32 @pselect(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timespec*, %struct.__sigset_t*) #1

declare zeroext i1 @fd_ISSET(i32, %struct.fd_set*) #1

declare void @fd_CLR(i32, %struct.fd_set*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare void @block_input() #1

declare i32 @g_main_context_pending(%struct._GMainContext*) #1

declare void @g_main_context_dispatch(%struct._GMainContext*) #1

declare void @unblock_input() #1

declare void @g_main_context_release(%struct._GMainContext*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 570962}
!2 = !{i32 571205}
