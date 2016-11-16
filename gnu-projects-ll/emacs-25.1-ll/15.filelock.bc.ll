; ModuleID = './src/filelock.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.buffer = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.buffer_text, %struct.buffer_text*, %struct.buffer*, i64, i64, i64, i64, i64, i64, %struct.buffer*, i32, i32, [50 x i8], %struct.timespec, i64, i64, i64, i64, i64, %struct.region_cache*, %struct.region_cache*, %struct.region_cache*, i8, %struct.Lisp_Overlay*, %struct.Lisp_Overlay*, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.buffer_text = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.interval*, %struct.Lisp_Marker*, i8 }
%struct.interval = type opaque
%struct.Lisp_Marker = type { i32, %struct.buffer*, %struct.Lisp_Marker*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.region_cache = type opaque
%struct.Lisp_Overlay = type { i32, %struct.Lisp_Overlay*, i64, i64, i64 }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.Lisp_Boolfwd = type { i32, i8* }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.0, i16, i16, i8*, i8*, i8* }
%union.anon.0 = type { i64 ()* }
%struct.lock_info_type = type { i8*, i8*, i8*, [8199 x i8] }
%struct.Lisp_Cons = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.utmp = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.exit_status, i32, %struct.anon, [4 x i32], [20 x i8] }
%struct.exit_status = type { i16, i16 }
%struct.anon = type { i32, i32 }

@globals = external global %struct.emacs_globals, align 8
@.str = private unnamed_addr constant [35 x i8] c"ask-user-about-supersession-threat\00", align 1
@lock_file.replacement = internal constant [7 x i8] c" (pid \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ask-user-about-lock\00", align 1
@Vbuffer_alist = external global i64, align 8
@current_buffer = external global %struct.buffer*, align 8
@syms_of_filelock.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"temporary-file-directory\00", align 1
@syms_of_filelock.b_fwd = internal global %struct.Lisp_Boolfwd zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"create-lockfiles\00", align 1
@Sunlock_buffer = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.0 { i64 ()* @Funlock_buffer }, i16 0, i16 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"%s@%s.%ld:%ld\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%s@%s.%ld\00", align 1
@boot_time_initialized = internal global i8 0, align 1
@boot_time = internal global i64 0, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"/var/run/random-seed\00", align 1
@initialized = external global i8, align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"/var/log/wtmp\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"%s.%d.gz\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"-cd\00", align 1
@create_lock_file.nonce_base = internal constant [15 x i8] c".#-emacsXXXXXX\00", align 1
@pending_signals = external global i8, align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"unlock-buffer\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"lock-buffer\00", align 1
@Slock_buffer = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Flock_buffer }, i16 0, i16 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.17 = private unnamed_addr constant [14 x i8] c"file-locked-p\00", align 1
@Sfile_locked_p = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Ffile_locked_p }, i16 1, i16 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define void @lock_file(i64 %fn) #0 {
entry:
  %fn.addr = alloca i64, align 8
  %orig_fn = alloca i64, align 8
  %encoded_fn = alloca i64, align 8
  %lfname = alloca i8*, align 8
  %lock_info = alloca %struct.lock_info_type, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %subject_buf = alloca i64, align 8
  %attack = alloca i64, align 8
  %dot = alloca i8*, align 8
  %pidlen = alloca i64, align 8
  %replacementlen = alloca i32, align 4
  store i64 %fn, i64* %fn.addr, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 240), align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.58

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %fn.addr, align 8
  store i64 %1, i64* %orig_fn, align 8
  %2 = load i64, i64* %fn.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %call3 = call i64 @Fexpand_file_name(i64 %2, i64 %call2)
  store i64 %call3, i64* %fn.addr, align 8
  %3 = load i64, i64* %fn.addr, align 8
  %call4 = call i64 @encode_file_name(i64 %3)
  store i64 %call4, i64* %encoded_fn, align 8
  %4 = load i64, i64* %orig_fn, align 8
  %call5 = call i64 @get_truename_buffer(i64 %4)
  store i64 %call5, i64* %subject_buf, align 8
  %5 = load i64, i64* %subject_buf, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %5, %call6
  br i1 %cmp7, label %if.end.18, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %6 = load i64, i64* %subject_buf, align 8
  %call8 = call i64 @Fverify_visited_file_modtime(i64 %6)
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %call8, %call9
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.18

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %7 = load i64, i64* %fn.addr, align 8
  %call12 = call i64 @Ffile_exists_p(i64 %7)
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp14 = icmp eq i64 %call12, %call13
  br i1 %cmp14, label %if.end.18, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true.11
  %call16 = call i64 @intern(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0))
  %8 = load i64, i64* %fn.addr, align 8
  %call17 = call i64 @call1(i64 %call16, i64 %8)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %land.lhs.true.11, %land.lhs.true, %if.end
  %9 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 429), align 1
  %tobool = trunc i8 %9 to i1
  br i1 %tobool, label %if.then.19, label %if.end.58

if.then.19:                                       ; preds = %if.end.18
  %10 = load i64, i64* %encoded_fn, align 8
  %call20 = call i64 @SBYTES(i64 %10)
  %add = add nsw i64 %call20, 2
  %add21 = add nsw i64 %add, 1
  %11 = load i64, i64* %sa_avail, align 8
  %cmp22 = icmp sle i64 %add21, %11
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.19
  %12 = load i64, i64* %encoded_fn, align 8
  %call23 = call i64 @SBYTES(i64 %12)
  %add24 = add nsw i64 %call23, 2
  %add25 = add nsw i64 %add24, 1
  %13 = load i64, i64* %sa_avail, align 8
  %sub = sub nsw i64 %13, %add25
  store i64 %sub, i64* %sa_avail, align 8
  %14 = load i64, i64* %encoded_fn, align 8
  %call26 = call i64 @SBYTES(i64 %14)
  %add27 = add nsw i64 %call26, 2
  %add28 = add nsw i64 %add27, 1
  %15 = alloca i8, i64 %add28
  br label %cond.end

cond.false:                                       ; preds = %if.then.19
  store i8 1, i8* %sa_must_free, align 1
  %16 = load i64, i64* %encoded_fn, align 8
  %call29 = call i64 @SBYTES(i64 %16)
  %add30 = add nsw i64 %call29, 2
  %add31 = add nsw i64 %add30, 1
  %call32 = call i8* @record_xmalloc(i64 %add31)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %15, %cond.true ], [ %call32, %cond.false ]
  store i8* %cond, i8** %lfname, align 8
  %17 = load i8*, i8** %lfname, align 8
  %18 = load i64, i64* %encoded_fn, align 8
  call void @fill_in_lock_file_name(i8* %17, i64 %18)
  %19 = load i8*, i8** %lfname, align 8
  %call33 = call i32 @lock_if_free(%struct.lock_info_type* %lock_info, i8* %19)
  %cmp34 = icmp slt i32 0, %call33
  br i1 %cmp34, label %if.then.35, label %if.end.52

if.then.35:                                       ; preds = %cond.end
  %dot36 = getelementptr inbounds %struct.lock_info_type, %struct.lock_info_type* %lock_info, i32 0, i32 1
  %20 = load i8*, i8** %dot36, align 8
  store i8* %20, i8** %dot, align 8
  %colon = getelementptr inbounds %struct.lock_info_type, %struct.lock_info_type* %lock_info, i32 0, i32 2
  %21 = load i8*, i8** %colon, align 8
  %22 = load i8*, i8** %dot, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 1
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %pidlen, align 8
  store i32 6, i32* %replacementlen, align 4
  %23 = load i8*, i8** %dot, align 8
  %24 = load i32, i32* %replacementlen, align 4
  %idx.ext = sext i32 %24 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  %25 = load i8*, i8** %dot, align 8
  %add.ptr38 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i64, i64* %pidlen, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr37, i8* %add.ptr38, i64 %26, i32 1, i1 false)
  %27 = load i8*, i8** %dot, align 8
  %28 = load i32, i32* %replacementlen, align 4
  %idx.ext39 = sext i32 %28 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %27, i64 %idx.ext39
  %29 = load i64, i64* %pidlen, align 8
  %add.ptr41 = getelementptr inbounds i8, i8* %add.ptr40, i64 %29
  %call42 = call i8* @strcpy(i8* %add.ptr41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #2
  %30 = load i8*, i8** %dot, align 8
  %31 = load i32, i32* %replacementlen, align 4
  %conv = sext i32 %31 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @lock_file.replacement, i32 0, i32 0), i64 %conv, i32 1, i1 false)
  %call43 = call i64 @intern(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  %32 = load i64, i64* %fn.addr, align 8
  %user = getelementptr inbounds %struct.lock_info_type, %struct.lock_info_type* %lock_info, i32 0, i32 3
  %arraydecay = getelementptr inbounds [8199 x i8], [8199 x i8]* %user, i32 0, i32 0
  %call44 = call i64 @build_string(i8* %arraydecay)
  %call45 = call i64 @call2(i64 %call43, i64 %32, i64 %call44)
  store i64 %call45, i64* %attack, align 8
  %33 = load i64, i64* %attack, align 8
  %call46 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp47 = icmp eq i64 %33, %call46
  br i1 %cmp47, label %if.end.51, label %if.then.49

if.then.49:                                       ; preds = %if.then.35
  %34 = load i8*, i8** %lfname, align 8
  %call50 = call i32 @lock_file_1(i8* %34, i1 zeroext true)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.then.35
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %cond.end
  br label %do.body

do.body:                                          ; preds = %if.end.52
  %35 = load i8, i8* %sa_must_free, align 1
  %tobool53 = trunc i8 %35 to i1
  br i1 %tobool53, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %36 = load i64, i64* %sa_count, align 8
  %call55 = call i64 @builtin_lisp_symbol(i32 0)
  %call56 = call i64 @unbind_to(i64 %36, i64 %call55)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.57
  br label %if.end.58

if.end.58:                                        ; preds = %if.then, %do.end, %if.end.18
  ret void
}

declare i64 @SPECPDL_INDEX() #1

declare i64 @builtin_lisp_symbol(i32) #1

declare i64 @Fexpand_file_name(i64, i64) #1

declare i64 @encode_file_name(i64) #1

declare i64 @get_truename_buffer(i64) #1

declare i64 @Fverify_visited_file_modtime(i64) #1

declare i64 @Ffile_exists_p(i64) #1

declare i64 @call1(i64, i64) #1

declare i64 @intern(i8*) #1

declare i64 @SBYTES(i64) #1

declare i8* @record_xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define internal void @fill_in_lock_file_name(i8* %lockfile, i64 %fn) #0 {
entry:
  %lockfile.addr = alloca i8*, align 8
  %fn.addr = alloca i64, align 8
  %last_slash = alloca i8*, align 8
  %base = alloca i8*, align 8
  %dirlen = alloca i64, align 8
  store i8* %lockfile, i8** %lockfile.addr, align 8
  store i64 %fn, i64* %fn.addr, align 8
  %0 = load i64, i64* %fn.addr, align 8
  %call = call i8* @SSDATA(i64 %0)
  %1 = load i64, i64* %fn.addr, align 8
  %call1 = call i64 @SBYTES(i64 %1)
  %call2 = call i8* @memrchr(i8* %call, i32 47, i64 %call1) #6
  store i8* %call2, i8** %last_slash, align 8
  %2 = load i8*, i8** %last_slash, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  store i8* %add.ptr, i8** %base, align 8
  %3 = load i8*, i8** %base, align 8
  %4 = load i64, i64* %fn.addr, align 8
  %call3 = call i8* @SSDATA(i64 %4)
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %call3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %dirlen, align 8
  %5 = load i8*, i8** %lockfile.addr, align 8
  %6 = load i64, i64* %fn.addr, align 8
  %call4 = call i8* @SSDATA(i64 %6)
  %7 = load i64, i64* %dirlen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %call4, i64 %7, i32 1, i1 false)
  %8 = load i64, i64* %dirlen, align 8
  %9 = load i8*, i8** %lockfile.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %8
  store i8 46, i8* %arrayidx, align 1
  %10 = load i64, i64* %dirlen, align 8
  %add = add nsw i64 %10, 1
  %11 = load i8*, i8** %lockfile.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %11, i64 %add
  store i8 35, i8* %arrayidx5, align 1
  %12 = load i8*, i8** %lockfile.addr, align 8
  %13 = load i64, i64* %dirlen, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %12, i64 %13
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr6, i64 2
  %14 = load i8*, i8** %base, align 8
  %call8 = call i8* @strcpy(i8* %add.ptr7, i8* %14) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @lock_if_free(%struct.lock_info_type* %clasher, i8* %lfname) #0 {
entry:
  %retval = alloca i32, align 4
  %clasher.addr = alloca %struct.lock_info_type*, align 8
  %lfname.addr = alloca i8*, align 8
  %err = alloca i32, align 4
  store %struct.lock_info_type* %clasher, %struct.lock_info_type** %clasher.addr, align 8
  store i8* %lfname, i8** %lfname.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i8*, i8** %lfname.addr, align 8
  %call = call i32 @lock_file_1(i8* %0, i1 zeroext false)
  store i32 %call, i32* %err, align 4
  %cmp = icmp eq i32 %call, 17
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.lock_info_type*, %struct.lock_info_type** %clasher.addr, align 8
  %2 = load i8*, i8** %lfname.addr, align 8
  %call1 = call i32 @current_lock_owner(%struct.lock_info_type* %1, i8* %2)
  switch i32 %call1, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.2
    i32 -1, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %while.body
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i32, i32* %err, align 4
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 -1, i32 0
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %sw.bb.3, %sw.bb.2, %sw.bb
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i64 @call2(i64, i64, i64) #1

declare i64 @build_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @lock_file_1(i8* %lfname, i1 zeroext %force) #0 {
entry:
  %retval = alloca i32, align 4
  %lfname.addr = alloca i8*, align 8
  %force.addr = alloca i8, align 1
  %boot = alloca i64, align 8
  %luser_name = alloca i64, align 8
  %user_name = alloca i8*, align 8
  %lhost_name = alloca i64, align 8
  %host_name = alloca i8*, align 8
  %lock_info_str = alloca [8193 x i8], align 16
  %pid = alloca i64, align 8
  store i8* %lfname, i8** %lfname.addr, align 8
  %frombool = zext i1 %force to i8
  store i8 %frombool, i8* %force.addr, align 1
  %call = call i64 @get_boot_time()
  store i64 %call, i64* %boot, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %call2 = call i64 @Fuser_login_name(i64 %call1)
  store i64 %call2, i64* %luser_name, align 8
  %0 = load i64, i64* %luser_name, align 8
  %call3 = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %luser_name, align 8
  %call4 = call i8* @SSDATA(i64 %1)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call4, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %user_name, align 8
  %call5 = call i64 @Fsystem_name()
  store i64 %call5, i64* %lhost_name, align 8
  %2 = load i64, i64* %lhost_name, align 8
  %call6 = call zeroext i1 @STRINGP(i64 %2)
  br i1 %call6, label %cond.true.7, label %cond.false.9

cond.true.7:                                      ; preds = %cond.end
  %3 = load i64, i64* %lhost_name, align 8
  %call8 = call i8* @SSDATA(i64 %3)
  br label %cond.end.10

cond.false.9:                                     ; preds = %cond.end
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.7
  %cond11 = phi i8* [ %call8, %cond.true.7 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), %cond.false.9 ]
  store i8* %cond11, i8** %host_name, align 8
  %call12 = call i32 @getpid() #2
  %conv = sext i32 %call12 to i64
  store i64 %conv, i64* %pid, align 8
  %4 = load i64, i64* %boot, align 8
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.10
  %arraydecay = getelementptr inbounds [8193 x i8], [8193 x i8]* %lock_info_str, i32 0, i32 0
  %5 = load i8*, i8** %user_name, align 8
  %6 = load i8*, i8** %host_name, align 8
  %7 = load i64, i64* %pid, align 8
  %8 = load i64, i64* %boot, align 8
  %call13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 8193, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* %5, i8* %6, i64 %7, i64 %8) #2
  %conv14 = sext i32 %call13 to i64
  %cmp = icmp ule i64 8193, %conv14
  br i1 %cmp, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then
  store i32 36, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.24

if.else:                                          ; preds = %cond.end.10
  %arraydecay17 = getelementptr inbounds [8193 x i8], [8193 x i8]* %lock_info_str, i32 0, i32 0
  %9 = load i8*, i8** %user_name, align 8
  %10 = load i8*, i8** %host_name, align 8
  %11 = load i64, i64* %pid, align 8
  %call18 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay17, i64 8193, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* %9, i8* %10, i64 %11) #2
  %conv19 = sext i32 %call18 to i64
  %cmp20 = icmp ule i64 8193, %conv19
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.else
  store i32 36, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end
  %12 = load i8*, i8** %lfname.addr, align 8
  %arraydecay25 = getelementptr inbounds [8193 x i8], [8193 x i8]* %lock_info_str, i32 0, i32 0
  %13 = load i8, i8* %force.addr, align 1
  %tobool26 = trunc i8 %13 to i1
  %call27 = call i32 @create_lock_file(i8* %12, i8* %arraydecay25, i1 zeroext %tobool26)
  store i32 %call27, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.22, %if.then.16
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i64 @unbind_to(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @unlock_file(i64 %fn) #0 {
entry:
  %fn.addr = alloca i64, align 8
  %lfname = alloca i8*, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  store i64 %fn, i64* %fn.addr, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %0 = load i64, i64* %fn.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %call2 = call i64 @Fexpand_file_name(i64 %0, i64 %call1)
  store i64 %call2, i64* %fn.addr, align 8
  %1 = load i64, i64* %fn.addr, align 8
  %call3 = call i64 @encode_file_name(i64 %1)
  store i64 %call3, i64* %fn.addr, align 8
  %2 = load i64, i64* %fn.addr, align 8
  %call4 = call i64 @SBYTES(i64 %2)
  %add = add nsw i64 %call4, 2
  %add5 = add nsw i64 %add, 1
  %3 = load i64, i64* %sa_avail, align 8
  %cmp = icmp sle i64 %add5, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* %fn.addr, align 8
  %call6 = call i64 @SBYTES(i64 %4)
  %add7 = add nsw i64 %call6, 2
  %add8 = add nsw i64 %add7, 1
  %5 = load i64, i64* %sa_avail, align 8
  %sub = sub nsw i64 %5, %add8
  store i64 %sub, i64* %sa_avail, align 8
  %6 = load i64, i64* %fn.addr, align 8
  %call9 = call i64 @SBYTES(i64 %6)
  %add10 = add nsw i64 %call9, 2
  %add11 = add nsw i64 %add10, 1
  %7 = alloca i8, i64 %add11
  br label %cond.end

cond.false:                                       ; preds = %entry
  store i8 1, i8* %sa_must_free, align 1
  %8 = load i64, i64* %fn.addr, align 8
  %call12 = call i64 @SBYTES(i64 %8)
  %add13 = add nsw i64 %call12, 2
  %add14 = add nsw i64 %add13, 1
  %call15 = call i8* @record_xmalloc(i64 %add14)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ %call15, %cond.false ]
  store i8* %cond, i8** %lfname, align 8
  %9 = load i8*, i8** %lfname, align 8
  %10 = load i64, i64* %fn.addr, align 8
  call void @fill_in_lock_file_name(i8* %9, i64 %10)
  %11 = load i8*, i8** %lfname, align 8
  %call16 = call i32 @current_lock_owner(%struct.lock_info_type* null, i8* %11)
  %cmp17 = icmp eq i32 %call16, 2
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %12 = load i8*, i8** %lfname, align 8
  %call18 = call i32 @unlink(i8* %12) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  br label %do.body

do.body:                                          ; preds = %if.end
  %13 = load i8, i8* %sa_must_free, align 1
  %tobool = trunc i8 %13 to i1
  br i1 %tobool, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %14 = load i64, i64* %sa_count, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  %call21 = call i64 @unbind_to(i64 %14, i64 %call20)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.22
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @current_lock_owner(%struct.lock_info_type* %owner, i8* %lfname) #0 {
entry:
  %retval = alloca i32, align 4
  %owner.addr = alloca %struct.lock_info_type*, align 8
  %lfname.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %local_owner = alloca %struct.lock_info_type, align 8
  %lfinfolen = alloca i64, align 8
  %pid = alloca i64, align 8
  %boot_time = alloca i64, align 8
  %at = alloca i8*, align 8
  %dot = alloca i8*, align 8
  %lfinfo_end = alloca i8*, align 8
  %system_name = alloca i64, align 8
  store %struct.lock_info_type* %owner, %struct.lock_info_type** %owner.addr, align 8
  store i8* %lfname, i8** %lfname.addr, align 8
  %0 = load %struct.lock_info_type*, %struct.lock_info_type** %owner.addr, align 8
  %tobool = icmp ne %struct.lock_info_type* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.lock_info_type* %local_owner, %struct.lock_info_type** %owner.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %lfname.addr, align 8
  %2 = load %struct.lock_info_type*, %struct.lock_info_type** %owner.addr, align 8
  %user = getelementptr inbounds %struct.lock_info_type, %struct.lock_info_type* %2, i32 0, i32 3
  %arraydecay = getelementptr inbounds [8199 x i8], [8199 x i8]* %user, i32 0, i32 0
  %call = call i64 @read_lock_data(i8* %1, i8* %arraydecay)
  store i64 %call, i64* %lfinfolen, align 8
  %3 = load i64, i64* %lfinfolen, align 8
  %cmp = icmp slt i64 %3, 0
  br i1 %cmp, label %if.then.1, label %if.end.4

if.then.1:                                        ; preds = %if.end
  %call2 = call i32* @__errno_location() #7
  %4 = load i32, i32* %call2, align 4
  %cmp3 = icmp eq i32 %4, 2
  %cond = select i1 %cmp3, i32 0, i32 -1
  store i32 %cond, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load i64, i64* %lfinfolen, align 8
  %cmp5 = icmp slt i64 8192, %5
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %6 = load i64, i64* %lfinfolen, align 8
  %7 = load %struct.lock_info_type*, %struct.lock_info_type** %owner.addr, align 8
  %user8 = getelementptr inbounds %struct.lock_info_type, %struct.lock_info_type* %7, i32 0, i32 3
  %arrayidx = getelementptr inbounds [8199 x i8], [8199 x i8]* %user8, i32 0, i64 %6
  store i8 0, i8* %arrayidx, align 1
  %8 = load %struct.lock_info_type*, %struct.lock_info_type** %owner.addr, align 8
  %user9 = getelementptr inbounds %struct.lock_info_type, %struct.lock_info_type* %8, i32 0, i32 3
  %arraydecay10 = getelementptr inbounds [8199 x i8], [8199 x i8]* %user9, i32 0, i32 0
  %9 = load i64, i64* %lfinfolen, align 8
  %call11 = call i8* @memrchr(i8* %arraydecay10, i32 64, i64 %9) #6
  store i8* %call11, i8** %at, align 8
  %10 = load %struct.lock_info_type*, %struct.lock_info_type** %owner.addr, align 8
  %at12 = getelementptr inbounds %struct.lock_info_type, %struct.lock_info_type* %10, i32 0, i32 0
  store i8* %call11, i8** %at12, align 8
  %11 = load i8*, i8** %at, align 8
  %tobool13 = icmp ne i8* %11, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.7
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.7
  %12 = load i8*, i8** %at, align 8
  %call16 = call i8* @strrchr(i8* %12, i32 46) #6
  store i8* %call16, i8** %dot, align 8
  %13 = load %struct.lock_info_type*, %struct.lock_info_type** %owner.addr, align 8
  %dot17 = getelementptr inbounds %struct.lock_info_type, %struct.lock_info_type* %13, i32 0, i32 1
  store i8* %call16, i8** %dot17, align 8
  %14 = load i8*, i8** %dot, align 8
  %tobool18 = icmp ne i8* %14, null
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.15
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  %15 = load i8*, i8** %dot, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx21, align 1
  %conv = sext i8 %16 to i32
  %call22 = call zeroext i1 @c_isdigit(i32 %conv)
  br i1 %call22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.20
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.20
  %call25 = call i32* @__errno_location() #7
  store i32 0, i32* %call25, align 4
  %17 = load i8*, i8** %dot, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load %struct.lock_info_type*, %struct.lock_info_type** %owner.addr, align 8
  %colon = getelementptr inbounds %struct.lock_info_type, %struct.lock_info_type* %18, i32 0, i32 2
  %call26 = call i64 @strtoimax(i8* %add.ptr, i8** %colon, i32 10) #2
  store i64 %call26, i64* %pid, align 8
  %call27 = call i32* @__errno_location() #7
  %19 = load i32, i32* %call27, align 4
  %cmp28 = icmp eq i32 %19, 34
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.24
  store i64 -1, i64* %pid, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.24
  %20 = load %struct.lock_info_type*, %struct.lock_info_type** %owner.addr, align 8
  %colon32 = getelementptr inbounds %struct.lock_info_type, %struct.lock_info_type* %20, i32 0, i32 2
  %21 = load i8*, i8** %colon32, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %22 to i32
  switch i32 %conv34, label %sw.default [
    i32 0, label %sw.bb
    i32 58, label %sw.bb.36
  ]

sw.bb:                                            ; preds = %if.end.31
  store i64 0, i64* %boot_time, align 8
  %23 = load %struct.lock_info_type*, %struct.lock_info_type** %owner.addr, align 8
  %colon35 = getelementptr inbounds %struct.lock_info_type, %struct.lock_info_type* %23, i32 0, i32 2
  %24 = load i8*, i8** %colon35, align 8
  store i8* %24, i8** %lfinfo_end, align 8
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.end.31
  %25 = load %struct.lock_info_type*, %struct.lock_info_type** %owner.addr, align 8
  %colon37 = getelementptr inbounds %struct.lock_info_type, %struct.lock_info_type* %25, i32 0, i32 2
  %26 = load i8*, i8** %colon37, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %27 to i32
  %call40 = call zeroext i1 @c_isdigit(i32 %conv39)
  br i1 %call40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %sw.bb.36
  store i32 -1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %sw.bb.36
  %28 = load %struct.lock_info_type*, %struct.lock_info_type** %owner.addr, align 8
  %colon43 = getelementptr inbounds %struct.lock_info_type, %struct.lock_info_type* %28, i32 0, i32 2
  %29 = load i8*, i8** %colon43, align 8
  %add.ptr44 = getelementptr inbounds i8, i8* %29, i64 1
  %call45 = call i64 @strtoimax(i8* %add.ptr44, i8** %lfinfo_end, i32 10) #2
  store i64 %call45, i64* %boot_time, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.31
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.42, %sw.bb
  %30 = load i8*, i8** %lfinfo_end, align 8
  %31 = load %struct.lock_info_type*, %struct.lock_info_type** %owner.addr, align 8
  %user46 = getelementptr inbounds %struct.lock_info_type, %struct.lock_info_type* %31, i32 0, i32 3
  %arraydecay47 = getelementptr inbounds [8199 x i8], [8199 x i8]* %user46, i32 0, i32 0
  %32 = load i64, i64* %lfinfolen, align 8
  %add.ptr48 = getelementptr inbounds i8, i8* %arraydecay47, i64 %32
  %cmp49 = icmp ne i8* %30, %add.ptr48
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %sw.epilog
  store i32 -1, i32* %retval
  br label %return

if.end.52:                                        ; preds = %sw.epilog
  %call53 = call i64 @Fsystem_name()
  store i64 %call53, i64* %system_name, align 8
  %33 = load i64, i64* %system_name, align 8
  %call54 = call zeroext i1 @STRINGP(i64 %33)
  br i1 %call54, label %land.lhs.true, label %if.else.101

land.lhs.true:                                    ; preds = %if.end.52
  %34 = load i8*, i8** %dot, align 8
  %35 = load i8*, i8** %at, align 8
  %add.ptr56 = getelementptr inbounds i8, i8* %35, i64 1
  %sub.ptr.lhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr56 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %36 = load i64, i64* %system_name, align 8
  %call57 = call i64 @SBYTES(i64 %36)
  %cmp58 = icmp eq i64 %sub.ptr.sub, %call57
  br i1 %cmp58, label %land.lhs.true.60, label %if.else.101

land.lhs.true.60:                                 ; preds = %land.lhs.true
  %37 = load i8*, i8** %at, align 8
  %add.ptr61 = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i64, i64* %system_name, align 8
  %call62 = call i8* @SSDATA(i64 %38)
  %39 = load i64, i64* %system_name, align 8
  %call63 = call i64 @SBYTES(i64 %39)
  %call64 = call i32 @memcmp(i8* %add.ptr61, i8* %call62, i64 %call63) #6
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %if.then.67, label %if.else.101

if.then.67:                                       ; preds = %land.lhs.true.60
  %40 = load i64, i64* %pid, align 8
  %call68 = call i32 @getpid() #2
  %conv69 = sext i32 %call68 to i64
  %cmp70 = icmp eq i64 %40, %conv69
  br i1 %cmp70, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %if.then.67
  store i32 2, i32* %ret, align 4
  br label %if.end.100

if.else:                                          ; preds = %if.then.67
  %41 = load i64, i64* %pid, align 8
  %cmp73 = icmp slt i64 0, %41
  br i1 %cmp73, label %land.lhs.true.75, label %if.else.97

land.lhs.true.75:                                 ; preds = %if.else
  %42 = load i64, i64* %pid, align 8
  %cmp76 = icmp sle i64 %42, 2147483647
  br i1 %cmp76, label %land.lhs.true.78, label %if.else.97

land.lhs.true.78:                                 ; preds = %land.lhs.true.75
  %43 = load i64, i64* %pid, align 8
  %conv79 = trunc i64 %43 to i32
  %call80 = call i32 @kill(i32 %conv79, i32 0) #2
  %cmp81 = icmp sge i32 %call80, 0
  br i1 %cmp81, label %land.lhs.true.86, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.78
  %call83 = call i32* @__errno_location() #7
  %44 = load i32, i32* %call83, align 4
  %cmp84 = icmp eq i32 %44, 1
  br i1 %cmp84, label %land.lhs.true.86, label %if.else.97

land.lhs.true.86:                                 ; preds = %lor.lhs.false, %land.lhs.true.78
  %45 = load i64, i64* %boot_time, align 8
  %cmp87 = icmp eq i64 %45, 0
  br i1 %cmp87, label %if.then.96, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %land.lhs.true.86
  %46 = load i64, i64* %boot_time, align 8
  %cmp90 = icmp sle i64 %46, 9223372036854775807
  br i1 %cmp90, label %land.lhs.true.92, label %if.else.97

land.lhs.true.92:                                 ; preds = %lor.lhs.false.89
  %47 = load i64, i64* %boot_time, align 8
  %call93 = call i64 @get_boot_time()
  %call94 = call zeroext i1 @within_one_second(i64 %47, i64 %call93)
  br i1 %call94, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %land.lhs.true.92, %land.lhs.true.86
  store i32 1, i32* %ret, align 4
  br label %if.end.99

if.else.97:                                       ; preds = %land.lhs.true.92, %lor.lhs.false.89, %lor.lhs.false, %land.lhs.true.75, %if.else
  %48 = load i8*, i8** %lfname.addr, align 8
  %call98 = call i32 @unlink(i8* %48) #2
  store i32 %call98, i32* %retval
  br label %return

if.end.99:                                        ; preds = %if.then.96
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.72
  br label %if.end.102

if.else.101:                                      ; preds = %land.lhs.true.60, %land.lhs.true, %if.end.52
  store i32 1, i32* %ret, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.101, %if.end.100
  %49 = load i32, i32* %ret, align 4
  store i32 %49, i32* %retval
  br label %return

return:                                           ; preds = %if.end.102, %if.else.97, %if.then.51, %sw.default, %if.then.41, %if.then.23, %if.then.19, %if.then.14, %if.then.6, %if.then.1
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

; Function Attrs: nounwind uwtable
define void @unlock_all_files() #0 {
entry:
  %tail = alloca i64, align 8
  %buf = alloca i64, align 8
  %b = alloca %struct.buffer*, align 8
  %0 = load i64, i64* @Vbuffer_alist, align 8
  store i64 %0, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %tail, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  %sub2 = sub nsw i64 %5, 3
  %6 = inttoptr i64 %sub2 to i8*
  %7 = bitcast i8* %6 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %7, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %8 = load i64, i64* %cdr, align 8
  store i64 %8, i64* %buf, align 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ true, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %10 = load i64, i64* %buf, align 8
  %call = call %struct.buffer* @XBUFFER(i64 %10)
  store %struct.buffer* %call, %struct.buffer** %b, align 8
  %11 = load %struct.buffer*, %struct.buffer** %b, align 8
  %file_truename_ = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 49
  %12 = load i64, i64* %file_truename_, align 8
  %call3 = call zeroext i1 @STRINGP(i64 %12)
  br i1 %call3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %13 = load %struct.buffer*, %struct.buffer** %b, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 73
  %14 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %save_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %14, i32 0, i32 8
  %15 = load i64, i64* %save_modiff, align 8
  %16 = load %struct.buffer*, %struct.buffer** %b, align 8
  %text5 = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 73
  %17 = load %struct.buffer_text*, %struct.buffer_text** %text5, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %17, i32 0, i32 6
  %18 = load i64, i64* %modiff, align 8
  %cmp6 = icmp slt i64 %15, %18
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %19 = load %struct.buffer*, %struct.buffer** %b, align 8
  %file_truename_8 = getelementptr inbounds %struct.buffer, %struct.buffer* %19, i32 0, i32 49
  %20 = load i64, i64* %file_truename_8, align 8
  call void @unlock_file(i64 %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i64, i64* %tail, align 8
  %sub9 = sub nsw i64 %21, 3
  %22 = inttoptr i64 %sub9 to i8*
  %23 = bitcast i8* %22 to %struct.Lisp_Cons*
  %u10 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %23, i32 0, i32 1
  %cdr11 = bitcast %union.anon* %u10 to i64*
  %24 = load i64, i64* %cdr11, align 8
  store i64 %24, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  ret void
}

declare %struct.buffer* @XBUFFER(i64) #1

declare zeroext i1 @STRINGP(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Flock_buffer(i64 %file) #0 {
entry:
  %file.addr = alloca i64, align 8
  store i64 %file, i64* %file.addr, align 8
  %0 = load i64, i64* %file.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %file_truename_ = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 49
  %2 = load i64, i64* %file_truename_, align 8
  store i64 %2, i64* %file.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %file.addr, align 8
  call void @CHECK_STRING(i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 73
  %5 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %save_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %5, i32 0, i32 8
  %6 = load i64, i64* %save_modiff, align 8
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 73
  %8 = load %struct.buffer_text*, %struct.buffer_text** %text1, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %8, i32 0, i32 6
  %9 = load i64, i64* %modiff, align 8
  %cmp2 = icmp slt i64 %6, %9
  br i1 %cmp2, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %10 = load i64, i64* %file.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %10, %call3
  br i1 %cmp4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  %11 = load i64, i64* %file.addr, align 8
  call void @lock_file(i64 %11)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %land.lhs.true, %if.end
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call7
}

declare void @CHECK_STRING(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Funlock_buffer() #0 {
entry:
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 73
  %1 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %save_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %1, i32 0, i32 8
  %2 = load i64, i64* %save_modiff, align 8
  %3 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text1 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 73
  %4 = load %struct.buffer_text*, %struct.buffer_text** %text1, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %4, i32 0, i32 6
  %5 = load i64, i64* %modiff, align 8
  %cmp = icmp slt i64 %2, %5
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %file_truename_ = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 49
  %7 = load i64, i64* %file_truename_, align 8
  %call = call zeroext i1 @STRINGP(i64 %7)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %file_truename_2 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 49
  %9 = load i64, i64* %file_truename_2, align 8
  call void @unlock_file(i64 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call3
}

; Function Attrs: nounwind uwtable
define void @unlock_buffer(%struct.buffer* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.buffer*, align 8
  store %struct.buffer* %buffer, %struct.buffer** %buffer.addr, align 8
  %0 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 73
  %1 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %save_modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %1, i32 0, i32 8
  %2 = load i64, i64* %save_modiff, align 8
  %3 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %text1 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 73
  %4 = load %struct.buffer_text*, %struct.buffer_text** %text1, align 8
  %modiff = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %4, i32 0, i32 6
  %5 = load i64, i64* %modiff, align 8
  %cmp = icmp slt i64 %2, %5
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %file_truename_ = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 49
  %7 = load i64, i64* %file_truename_, align 8
  %call = call zeroext i1 @STRINGP(i64 %7)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.buffer*, %struct.buffer** %buffer.addr, align 8
  %file_truename_2 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 49
  %9 = load i64, i64* %file_truename_2, align 8
  call void @unlock_file(i64 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Ffile_locked_p(i64 %filename) #0 {
entry:
  %filename.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  %lfname = alloca i8*, align 8
  %owner = alloca i32, align 4
  %locker = alloca %struct.lock_info_type, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  store i64 %filename, i64* %filename.addr, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %0 = load i64, i64* %filename.addr, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %call2 = call i64 @Fexpand_file_name(i64 %0, i64 %call1)
  store i64 %call2, i64* %filename.addr, align 8
  %1 = load i64, i64* %filename.addr, align 8
  %call3 = call i64 @SBYTES(i64 %1)
  %add = add nsw i64 %call3, 2
  %add4 = add nsw i64 %add, 1
  %2 = load i64, i64* %sa_avail, align 8
  %cmp = icmp sle i64 %add4, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i64, i64* %filename.addr, align 8
  %call5 = call i64 @SBYTES(i64 %3)
  %add6 = add nsw i64 %call5, 2
  %add7 = add nsw i64 %add6, 1
  %4 = load i64, i64* %sa_avail, align 8
  %sub = sub nsw i64 %4, %add7
  store i64 %sub, i64* %sa_avail, align 8
  %5 = load i64, i64* %filename.addr, align 8
  %call8 = call i64 @SBYTES(i64 %5)
  %add9 = add nsw i64 %call8, 2
  %add10 = add nsw i64 %add9, 1
  %6 = alloca i8, i64 %add10
  br label %cond.end

cond.false:                                       ; preds = %entry
  store i8 1, i8* %sa_must_free, align 1
  %7 = load i64, i64* %filename.addr, align 8
  %call11 = call i64 @SBYTES(i64 %7)
  %add12 = add nsw i64 %call11, 2
  %add13 = add nsw i64 %add12, 1
  %call14 = call i8* @record_xmalloc(i64 %add13)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %6, %cond.true ], [ %call14, %cond.false ]
  store i8* %cond, i8** %lfname, align 8
  %8 = load i8*, i8** %lfname, align 8
  %9 = load i64, i64* %filename.addr, align 8
  call void @fill_in_lock_file_name(i8* %8, i64 %9)
  %10 = load i8*, i8** %lfname, align 8
  %call15 = call i32 @current_lock_owner(%struct.lock_info_type* %locker, i8* %10)
  store i32 %call15, i32* %owner, align 4
  %11 = load i32, i32* %owner, align 4
  %cmp16 = icmp sle i32 %11, 0
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call17, i64* %ret, align 8
  br label %if.end.25

if.else:                                          ; preds = %cond.end
  %12 = load i32, i32* %owner, align 4
  %cmp18 = icmp eq i32 %12, 2
  br i1 %cmp18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.else
  %call20 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call20, i64* %ret, align 8
  br label %if.end

if.else.21:                                       ; preds = %if.else
  %user = getelementptr inbounds %struct.lock_info_type, %struct.lock_info_type* %locker, i32 0, i32 3
  %arraydecay = getelementptr inbounds [8199 x i8], [8199 x i8]* %user, i32 0, i32 0
  %at = getelementptr inbounds %struct.lock_info_type, %struct.lock_info_type* %locker, i32 0, i32 0
  %13 = load i8*, i8** %at, align 8
  %user22 = getelementptr inbounds %struct.lock_info_type, %struct.lock_info_type* %locker, i32 0, i32 3
  %arraydecay23 = getelementptr inbounds [8199 x i8], [8199 x i8]* %user22, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call24 = call i64 @make_string(i8* %arraydecay, i64 %sub.ptr.sub)
  store i64 %call24, i64* %ret, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.21, %if.then.19
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end.25
  %14 = load i8, i8* %sa_must_free, align 1
  %tobool = trunc i8 %14 to i1
  br i1 %tobool, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %15 = load i64, i64* %sa_count, align 8
  %call27 = call i64 @builtin_lisp_symbol(i32 0)
  %call28 = call i64 @unbind_to(i64 %15, i64 %call27)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.29
  %16 = load i64, i64* %ret, align 8
  ret i64 %16
}

declare i64 @make_string(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @syms_of_filelock() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_filelock.o_fwd, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 289))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 289), align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  call void @defvar_bool(%struct.Lisp_Boolfwd* @syms_of_filelock.b_fwd, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 429))
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  store i8 1, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 429), align 1
  call void @defsubr(%struct.Lisp_Subr* @Sunlock_buffer)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Slock_buffer to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sfile_locked_p to %struct.Lisp_Subr*))
  ret void
}

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare void @defvar_bool(%struct.Lisp_Boolfwd*, i8*, i8*) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

; Function Attrs: nounwind readonly
declare i8* @memrchr(i8*, i32, i64) #4

declare i8* @SSDATA(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @get_boot_time() #0 {
entry:
  %retval = alloca i64, align 8
  %counter = alloca i32, align 4
  %st = alloca %struct.stat, align 8
  %cmd_string = alloca [20 x i8], align 16
  %tempname = alloca i64, align 8
  %filename = alloca i64, align 8
  %delete_flag = alloca i8, align 1
  %.compoundliteral = alloca [6 x i64], align 8
  %0 = load i8, i8* @boot_time_initialized, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @boot_time, align 8
  store i64 %1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8 1, i8* @boot_time_initialized, align 1
  br i1 true, label %if.then.1, label %if.end.4

if.then.1:                                        ; preds = %if.end
  %call = call i32 @stat(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), %struct.stat* %st) #2
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.then.1
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 12
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %2 = load i64, i64* %tv_sec, align 8
  store i64 %2, i64* @boot_time, align 8
  %3 = load i64, i64* @boot_time, align 8
  store i64 %3, i64* %retval
  br label %return

if.end.3:                                         ; preds = %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end.3, %if.end
  %4 = load i8, i8* @initialized, align 1
  %tobool5 = trunc i8 %4 to i1
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.4
  %5 = load i64, i64* @boot_time, align 8
  store i64 %5, i64* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  call void @get_boot_time_1(i8* null, i1 zeroext false)
  %6 = load i64, i64* @boot_time, align 8
  %tobool8 = icmp ne i64 %6, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %7 = load i64, i64* @boot_time, align 8
  store i64 %7, i64* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.7
  call void @get_boot_time_1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i1 zeroext true)
  store i32 0, i32* %counter, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %8 = load i32, i32* %counter, align 4
  %cmp11 = icmp slt i32 %8, 20
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %9 = load i64, i64* @boot_time, align 8
  %tobool12 = icmp ne i64 %9, 0
  %lnot = xor i1 %tobool12, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  store i8 0, i8* %delete_flag, align 1
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call13, i64* %filename, align 8
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %cmd_string, i32 0, i32 0
  %11 = load i32, i32* %counter, align 4
  %call14 = call i64 (i8*, i8*, ...) @make_formatted_string(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %11)
  store i64 %call14, i64* %tempname, align 8
  %12 = load i64, i64* %tempname, align 8
  %call15 = call i64 @Ffile_exists_p(i64 %12)
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp17 = icmp eq i64 %call15, %call16
  br i1 %cmp17, label %if.else, label %if.then.18

if.then.18:                                       ; preds = %for.body
  %13 = load i64, i64* %tempname, align 8
  store i64 %13, i64* %filename, align 8
  br label %if.end.41

if.else:                                          ; preds = %for.body
  %arraydecay19 = getelementptr inbounds [20 x i8], [20 x i8]* %cmd_string, i32 0, i32 0
  %14 = load i32, i32* %counter, align 4
  %call20 = call i64 (i8*, i8*, ...) @make_formatted_string(i8* %arraydecay19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %14)
  store i64 %call20, i64* %tempname, align 8
  %15 = load i64, i64* %tempname, align 8
  %call21 = call i64 @Ffile_exists_p(i64 %15)
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp23 = icmp eq i64 %call21, %call22
  br i1 %cmp23, label %if.end.40, label %if.then.24

if.then.24:                                       ; preds = %if.else
  %call25 = call i64 @build_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  %16 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 289), align 8
  %call26 = call i64 @Fexpand_file_name(i64 %call25, i64 %16)
  store i64 %call26, i64* %filename, align 8
  %17 = load i64, i64* %filename, align 8
  %call27 = call i64 @make_temp_name(i64 %17, i1 zeroext true)
  store i64 %call27, i64* %filename, align 8
  %arrayinit.begin = getelementptr inbounds [6 x i64], [6 x i64]* %.compoundliteral, i64 0, i64 0
  %call28 = call i64 @build_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
  store i64 %call28, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %call29 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call29, i64* %arrayinit.element
  %arrayinit.element30 = getelementptr inbounds i64, i64* %arrayinit.element, i64 1
  %call31 = call i64 @builtin_lisp_symbol(i32 41)
  %18 = load i64, i64* %filename, align 8
  %call32 = call i64 @list2(i64 %call31, i64 %18)
  store i64 %call32, i64* %arrayinit.element30
  %arrayinit.element33 = getelementptr inbounds i64, i64* %arrayinit.element30, i64 1
  %call34 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call34, i64* %arrayinit.element33
  %arrayinit.element35 = getelementptr inbounds i64, i64* %arrayinit.element33, i64 1
  %call36 = call i64 @build_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0))
  store i64 %call36, i64* %arrayinit.element35
  %arrayinit.element37 = getelementptr inbounds i64, i64* %arrayinit.element35, i64 1
  %19 = load i64, i64* %tempname, align 8
  store i64 %19, i64* %arrayinit.element37
  %arraydecay38 = getelementptr inbounds [6 x i64], [6 x i64]* %.compoundliteral, i32 0, i32 0
  %call39 = call i64 @Fcall_process(i64 6, i64* %arraydecay38)
  store i8 1, i8* %delete_flag, align 1
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.24, %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.18
  %20 = load i64, i64* %filename, align 8
  %call42 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp43 = icmp eq i64 %20, %call42
  br i1 %cmp43, label %if.end.51, label %if.then.44

if.then.44:                                       ; preds = %if.end.41
  %21 = load i64, i64* %filename, align 8
  %call45 = call i8* @SSDATA(i64 %21)
  call void @get_boot_time_1(i8* %call45, i1 zeroext true)
  %22 = load i8, i8* %delete_flag, align 1
  %tobool46 = trunc i8 %22 to i1
  br i1 %tobool46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.then.44
  %23 = load i64, i64* %filename, align 8
  %call48 = call i8* @SSDATA(i64 %23)
  %call49 = call i32 @unlink(i8* %call48) #2
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.then.44
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.41
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %24 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %counter, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %25 = load i64, i64* @boot_time, align 8
  store i64 %25, i64* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.9, %if.then.6, %if.then.2, %if.then
  %26 = load i64, i64* %retval
  ret i64 %26
}

declare i64 @Fuser_login_name(i64) #1

declare i64 @Fsystem_name() #1

; Function Attrs: nounwind
declare i32 @getpid() #3

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @create_lock_file(i8* %lfname, i8* %lock_info_str, i1 zeroext %force) #0 {
entry:
  %lfname.addr = alloca i8*, align 8
  %lock_info_str.addr = alloca i8*, align 8
  %force.addr = alloca i8, align 1
  %err = alloca i32, align 4
  %last_slash = alloca i8*, align 8
  %lfdirlen = alloca i64, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %nonce = alloca i8*, align 8
  %fd = alloca i32, align 4
  %lock_info_len = alloca i64, align 8
  store i8* %lfname, i8** %lfname.addr, align 8
  store i8* %lock_info_str, i8** %lock_info_str.addr, align 8
  %frombool = zext i1 %force to i8
  store i8 %frombool, i8* %force.addr, align 1
  %0 = load i8*, i8** %lock_info_str.addr, align 8
  %1 = load i8*, i8** %lfname.addr, align 8
  %call = call i32 @symlink(i8* %0, i8* %1) #2
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i32* @__errno_location() #7
  %2 = load i32, i32* %call1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %2, %cond.false ]
  store i32 %cond, i32* %err, align 4
  %3 = load i32, i32* %err, align 4
  %cmp2 = icmp eq i32 %3, 17
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %4 = load i8, i8* %force.addr, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i8*, i8** %lfname.addr, align 8
  %call3 = call i32 @unlink(i8* %5) #2
  %6 = load i8*, i8** %lock_info_str.addr, align 8
  %7 = load i8*, i8** %lfname.addr, align 8
  %call4 = call i32 @symlink(i8* %6, i8* %7) #2
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %if.then
  br label %cond.end.9

cond.false.7:                                     ; preds = %if.then
  %call8 = call i32* @__errno_location() #7
  %8 = load i32, i32* %call8, align 4
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.7, %cond.true.6
  %cond10 = phi i32 [ 0, %cond.true.6 ], [ %8, %cond.false.7 ]
  store i32 %cond10, i32* %err, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.9, %land.lhs.true, %cond.end
  %9 = load i32, i32* %err, align 4
  %cmp11 = icmp eq i32 %9, 38
  br i1 %cmp11, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i32, i32* %err, align 4
  %cmp12 = icmp eq i32 %10, 1
  br i1 %cmp12, label %if.then.15, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %11 = load i32, i32* %err, align 4
  %cmp14 = icmp eq i32 %11, 36
  br i1 %cmp14, label %if.then.15, label %if.end.65

if.then.15:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false, %if.end
  %12 = load i8*, i8** %lfname.addr, align 8
  %call16 = call i8* @strrchr(i8* %12, i32 47) #6
  store i8* %call16, i8** %last_slash, align 8
  %13 = load i8*, i8** %last_slash, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8*, i8** %lfname.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %lfdirlen, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call17 = call i64 @SPECPDL_INDEX()
  store i64 %call17, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %15 = load i64, i64* %lfdirlen, align 8
  %add = add i64 %15, 15
  %16 = load i64, i64* %sa_avail, align 8
  %cmp18 = icmp ule i64 %add, %16
  br i1 %cmp18, label %cond.true.19, label %cond.false.22

cond.true.19:                                     ; preds = %if.then.15
  %17 = load i64, i64* %lfdirlen, align 8
  %add20 = add i64 %17, 15
  %18 = load i64, i64* %sa_avail, align 8
  %sub = sub i64 %18, %add20
  store i64 %sub, i64* %sa_avail, align 8
  %19 = load i64, i64* %lfdirlen, align 8
  %add21 = add i64 %19, 15
  %20 = alloca i8, i64 %add21
  br label %cond.end.25

cond.false.22:                                    ; preds = %if.then.15
  store i8 1, i8* %sa_must_free, align 1
  %21 = load i64, i64* %lfdirlen, align 8
  %add23 = add i64 %21, 15
  %call24 = call i8* @record_xmalloc(i64 %add23)
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.22, %cond.true.19
  %cond26 = phi i8* [ %20, %cond.true.19 ], [ %call24, %cond.false.22 ]
  store i8* %cond26, i8** %nonce, align 8
  %22 = load i8*, i8** %nonce, align 8
  %23 = load i8*, i8** %lfname.addr, align 8
  %24 = load i64, i64* %lfdirlen, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 %24, i32 1, i1 false)
  %25 = load i8*, i8** %nonce, align 8
  %26 = load i64, i64* %lfdirlen, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %25, i64 %26
  %call28 = call i8* @strcpy(i8* %add.ptr27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @create_lock_file.nonce_base, i32 0, i32 0)) #2
  %27 = load i8*, i8** %nonce, align 8
  %call29 = call i32 @mkostemp(i8* %27, i32 524288)
  store i32 %call29, i32* %fd, align 4
  %28 = load i32, i32* %fd, align 4
  %cmp30 = icmp slt i32 %28, 0
  br i1 %cmp30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %cond.end.25
  %call32 = call i32* @__errno_location() #7
  %29 = load i32, i32* %call32, align 4
  store i32 %29, i32* %err, align 4
  br label %if.end.59

if.else:                                          ; preds = %cond.end.25
  %30 = load i8*, i8** %lock_info_str.addr, align 8
  %call33 = call i64 @strlen(i8* %30) #6
  store i64 %call33, i64* %lock_info_len, align 8
  store i32 0, i32* %err, align 4
  %31 = load i32, i32* %fd, align 4
  %32 = load i8*, i8** %lock_info_str.addr, align 8
  %33 = load i64, i64* %lock_info_len, align 8
  %call34 = call i64 @write(i32 %31, i8* %32, i64 %33)
  %34 = load i64, i64* %lock_info_len, align 8
  %cmp35 = icmp ne i64 %call34, %34
  br i1 %cmp35, label %if.then.39, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %if.else
  %35 = load i32, i32* %fd, align 4
  %call37 = call i32 @fchmod(i32 %35, i32 292) #2
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %lor.lhs.false.36, %if.else
  %call40 = call i32* @__errno_location() #7
  %36 = load i32, i32* %call40, align 4
  store i32 %36, i32* %err, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %lor.lhs.false.36
  %37 = load i32, i32* %fd, align 4
  %call42 = call i32 @emacs_close(i32 %37)
  %cmp43 = icmp ne i32 %call42, 0
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.41
  %call45 = call i32* @__errno_location() #7
  %38 = load i32, i32* %call45, align 4
  store i32 %38, i32* %err, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.41
  %39 = load i32, i32* %err, align 4
  %tobool47 = icmp ne i32 %39, 0
  br i1 %tobool47, label %if.end.54, label %land.lhs.true.48

land.lhs.true.48:                                 ; preds = %if.end.46
  %40 = load i8*, i8** %nonce, align 8
  %41 = load i8*, i8** %lfname.addr, align 8
  %42 = load i8, i8* %force.addr, align 1
  %tobool49 = trunc i8 %42 to i1
  %call50 = call i32 @rename_lock_file(i8* %40, i8* %41, i1 zeroext %tobool49)
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %land.lhs.true.48
  %call53 = call i32* @__errno_location() #7
  %43 = load i32, i32* %call53, align 4
  store i32 %43, i32* %err, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %land.lhs.true.48, %if.end.46
  %44 = load i32, i32* %err, align 4
  %tobool55 = icmp ne i32 %44, 0
  br i1 %tobool55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.54
  %45 = load i8*, i8** %nonce, align 8
  %call57 = call i32 @unlink(i8* %45) #2
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.54
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.31
  br label %do.body

do.body:                                          ; preds = %if.end.59
  %46 = load i8, i8* %sa_must_free, align 1
  %tobool60 = trunc i8 %46 to i1
  br i1 %tobool60, label %if.then.61, label %if.end.64

if.then.61:                                       ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %47 = load i64, i64* %sa_count, align 8
  %call62 = call i64 @builtin_lisp_symbol(i32 0)
  %call63 = call i64 @unbind_to(i64 %47, i64 %call62)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.61, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.64
  br label %if.end.65

if.end.65:                                        ; preds = %do.end, %lor.lhs.false.13
  %48 = load i32, i32* %err, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #3

; Function Attrs: nounwind uwtable
define internal void @get_boot_time_1(i8* %filename, i1 zeroext %newest) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %newest.addr = alloca i8, align 1
  %ut = alloca %struct.utmp, align 4
  %utp = alloca %struct.utmp*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %frombool = zext i1 %newest to i8
  store i8 %frombool, i8* %newest.addr, align 1
  %0 = load i8*, i8** %filename.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @faccessat(i32 -100, i8* %1, i32 4, i32 512) #2
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %2 = load i8*, i8** %filename.addr, align 8
  %call2 = call i32 @utmpname(i8* %2) #2
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  call void @setutent() #2
  br label %while.body

while.body:                                       ; preds = %if.end.3, %if.end.21
  %ut_type = getelementptr inbounds %struct.utmp, %struct.utmp* %ut, i32 0, i32 0
  store i16 2, i16* %ut_type, align 2
  %call4 = call %struct.utmp* @getutid(%struct.utmp* %ut) #2
  store %struct.utmp* %call4, %struct.utmp** %utp, align 8
  %3 = load %struct.utmp*, %struct.utmp** %utp, align 8
  %tobool5 = icmp ne %struct.utmp* %3, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %while.body
  br label %while.end

if.end.7:                                         ; preds = %while.body
  %4 = load %struct.utmp*, %struct.utmp** %utp, align 8
  %ut_tv = getelementptr inbounds %struct.utmp, %struct.utmp* %4, i32 0, i32 8
  %tv_sec = getelementptr inbounds %struct.anon, %struct.anon* %ut_tv, i32 0, i32 0
  %5 = load i32, i32* %tv_sec, align 4
  %conv = sext i32 %5 to i64
  %6 = load i64, i64* @boot_time, align 8
  %cmp8 = icmp sgt i64 %conv, %6
  br i1 %cmp8, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %if.end.7
  %7 = load %struct.utmp*, %struct.utmp** %utp, align 8
  %ut_tv11 = getelementptr inbounds %struct.utmp, %struct.utmp* %7, i32 0, i32 8
  %tv_sec12 = getelementptr inbounds %struct.anon, %struct.anon* %ut_tv11, i32 0, i32 0
  %8 = load i32, i32* %tv_sec12, align 4
  %conv13 = sext i32 %8 to i64
  store i64 %conv13, i64* @boot_time, align 8
  %9 = load i8, i8* %newest.addr, align 1
  %tobool14 = trunc i8 %9 to i1
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.10
  br label %while.end

if.end.16:                                        ; preds = %if.then.10
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.7
  %call18 = call %struct.utmp* @getutent() #2
  store %struct.utmp* %call18, %struct.utmp** %utp, align 8
  %10 = load %struct.utmp*, %struct.utmp** %utp, align 8
  %tobool19 = icmp ne %struct.utmp* %10, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  br label %while.end

if.end.21:                                        ; preds = %if.end.17
  br label %while.body

while.end:                                        ; preds = %if.then.20, %if.then.15, %if.then.6
  call void @endutent() #2
  br label %return

return:                                           ; preds = %while.end, %if.then.1
  ret void
}

declare i64 @make_formatted_string(i8*, i8*, ...) #1

declare i64 @make_temp_name(i64, i1 zeroext) #1

declare i64 @Fcall_process(i64, i64*) #1

declare i64 @list2(i64, i64) #1

; Function Attrs: nounwind
declare i32 @faccessat(i32, i8*, i32, i32) #3

; Function Attrs: nounwind
declare i32 @utmpname(i8*) #3

; Function Attrs: nounwind
declare void @setutent() #3

; Function Attrs: nounwind
declare %struct.utmp* @getutid(%struct.utmp*) #3

; Function Attrs: nounwind
declare %struct.utmp* @getutent() #3

; Function Attrs: nounwind
declare void @endutent() #3

; Function Attrs: nounwind
declare i32 @symlink(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

declare i32 @mkostemp(i8*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i64 @write(i32, i8*, i64) #1

; Function Attrs: nounwind
declare i32 @fchmod(i32, i32) #3

declare i32 @emacs_close(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @rename_lock_file(i8* %old, i8* %new, i1 zeroext %force) #0 {
entry:
  %retval = alloca i32, align 4
  %old.addr = alloca i8*, align 8
  %new.addr = alloca i8*, align 8
  %force.addr = alloca i8, align 1
  %st = alloca %struct.stat, align 8
  store i8* %old, i8** %old.addr, align 8
  store i8* %new, i8** %new.addr, align 8
  %frombool = zext i1 %force to i8
  store i8 %frombool, i8* %force.addr, align 1
  %0 = load i8, i8* %force.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end.23, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %old.addr, align 8
  %2 = load i8*, i8** %new.addr, align 8
  %call = call i32 @link(i8* %1, i8* %2) #2
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %3 = load i8*, i8** %old.addr, align 8
  %call2 = call i32 @unlink(i8* %3) #2
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.1
  %call4 = call i32* @__errno_location() #7
  %4 = load i32, i32* %call4, align 4
  %cmp5 = icmp eq i32 %4, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.1
  %5 = phi i1 [ true, %if.then.1 ], [ %cmp5, %lor.rhs ]
  %cond = select i1 %5, i32 0, i32 -1
  store i32 %cond, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %call6 = call i32* @__errno_location() #7
  %6 = load i32, i32* %call6, align 4
  %cmp7 = icmp ne i32 %6, 38
  br i1 %cmp7, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end
  %call8 = call i32* @__errno_location() #7
  %7 = load i32, i32* %call8, align 4
  %cmp9 = icmp ne i32 %7, 1
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true, %if.end
  %8 = load i8*, i8** %new.addr, align 8
  %call12 = call i32 @lstat(i8* %8, %struct.stat* %st) #2
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %call14 = call i32* @__errno_location() #7
  %9 = load i32, i32* %call14, align 4
  %cmp15 = icmp eq i32 %9, 75
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %lor.lhs.false, %if.end.11
  %call17 = call i32* @__errno_location() #7
  store i32 17, i32* %call17, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false
  %call19 = call i32* @__errno_location() #7
  %10 = load i32, i32* %call19, align 4
  %cmp20 = icmp ne i32 %10, 2
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.18
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %entry
  %11 = load i8*, i8** %old.addr, align 8
  %12 = load i8*, i8** %new.addr, align 8
  %call24 = call i32 @rename(i8* %11, i8* %12) #2
  store i32 %call24, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.21, %if.then.16, %if.then.10, %lor.end
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind
declare i32 @link(i8*, i8*) #3

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #3

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i64 @read_lock_data(i8* %lfname, i8* %lfinfo) #0 {
entry:
  %retval = alloca i64, align 8
  %lfname.addr = alloca i8*, align 8
  %lfinfo.addr = alloca i8*, align 8
  %nbytes = alloca i64, align 8
  %fd = alloca i32, align 4
  %read_bytes = alloca i64, align 8
  %read_errno = alloca i32, align 4
  store i8* %lfname, i8** %lfname.addr, align 8
  store i8* %lfinfo, i8** %lfinfo.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %0 = load i8*, i8** %lfname.addr, align 8
  %1 = load i8*, i8** %lfinfo.addr, align 8
  %call = call i64 @readlinkat(i32 -100, i8* %0, i8* %1, i64 8193) #2
  store i64 %call, i64* %nbytes, align 8
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call1 = call i32* @__errno_location() #7
  %2 = load i32, i32* %call1, align 4
  %cmp2 = icmp eq i32 %2, 22
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** %lfname.addr, align 8
  %call3 = call i32 @emacs_open(i8* %4, i32 131072, i32 0)
  store i32 %call3, i32* %fd, align 4
  %5 = load i32, i32* %fd, align 4
  %cmp4 = icmp sle i32 0, %5
  br i1 %cmp4, label %if.then, label %if.end.11

if.then:                                          ; preds = %while.body
  %6 = load i32, i32* %fd, align 4
  %7 = load i8*, i8** %lfinfo.addr, align 8
  %call5 = call i64 @read(i32 %6, i8* %7, i64 8193)
  store i64 %call5, i64* %read_bytes, align 8
  %call6 = call i32* @__errno_location() #7
  %8 = load i32, i32* %call6, align 4
  store i32 %8, i32* %read_errno, align 4
  %9 = load i32, i32* %fd, align 4
  %call7 = call i32 @emacs_close(i32 %9)
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load i32, i32* %read_errno, align 4
  %call10 = call i32* @__errno_location() #7
  store i32 %10, i32* %call10, align 4
  %11 = load i64, i64* %read_bytes, align 8
  store i64 %11, i64* %retval
  br label %return

if.end.11:                                        ; preds = %while.body
  %call12 = call i32* @__errno_location() #7
  %12 = load i32, i32* %call12, align 4
  %cmp13 = icmp ne i32 %12, 40
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store i64 -1, i64* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  br label %do.body

do.body:                                          ; preds = %if.end.15
  %13 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp17 = icmp eq i64 %13, %call16
  br i1 %cmp17, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %14 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp19 = icmp eq i64 %14, %call18
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true
  call void @process_quit_flag()
  br label %if.end.23

if.else:                                          ; preds = %land.lhs.true, %do.body
  %15 = load volatile i8, i8* @pending_signals, align 1
  %tobool = trunc i8 %15 to i1
  br i1 %tobool, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.else
  call void @process_pending_signals()
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.23
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load i64, i64* %nbytes, align 8
  store i64 %16, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.14, %if.end, %if.then.9
  %17 = load i64, i64* %retval
  ret i64 %17
}

declare zeroext i1 @c_isdigit(i32) #1

; Function Attrs: nounwind
declare i64 @strtoimax(i8*, i8**, i32) #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @within_one_second(i64 %a, i64 %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  %sub = sub nsw i64 %0, %1
  %cmp = icmp sge i64 %sub, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load i64, i64* %a.addr, align 8
  %3 = load i64, i64* %b.addr, align 8
  %sub1 = sub nsw i64 %2, %3
  %cmp2 = icmp sle i64 %sub1, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  ret i1 %4
}

; Function Attrs: nounwind
declare i64 @readlinkat(i32, i8*, i8*, i64) #3

declare i32 @emacs_open(i8*, i32, i32) #1

declare i64 @read(i32, i8*, i64) #1

declare void @process_quit_flag() #1

declare void @process_pending_signals() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
