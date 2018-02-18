; ModuleID = './closures.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malloc_state = type { i32, i32, i64, i64, i8*, %struct.malloc_chunk*, %struct.malloc_chunk*, i64, i64, [66 x %struct.malloc_chunk*], [32 x %struct.malloc_tree_chunk*], i64, i64, i32, %union.pthread_mutex_t, %struct.malloc_segment }
%struct.malloc_chunk = type { i64, i64, %struct.malloc_chunk*, %struct.malloc_chunk* }
%struct.malloc_tree_chunk = type { i64, i64, %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk*, [2 x %struct.malloc_tree_chunk*], %struct.malloc_tree_chunk*, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i32, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.malloc_segment = type { i8*, i64, %struct.malloc_segment*, i64 }
%struct.malloc_params = type { i64, i64, i64, i64, i64, i32 }
%struct.anon = type { i32 (i8*)*, i8*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.pthread_mutexattr_t = type { i32 }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.__fsid_t = type { [2 x i32] }
%struct.mntent = type { i8*, i8*, i8*, i8*, i32, i32 }

@_gm_ = internal global %struct.malloc_state zeroinitializer, align 8
@mparams = internal global %struct.malloc_params zeroinitializer, align 8
@magic_init_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@execfd = internal global i32 -1, align 4
@selinux_enabled = internal global i32 -1, align 4
@execsize = internal global i64 0, align 8
@open_temp_exec_file_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"/selinux\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"/proc/mounts\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"selinuxfs \00", align 1
@open_temp_exec_file_opts_idx = internal global i32 0, align 4
@open_temp_exec_file_opts = internal global [7 x %struct.anon] [%struct.anon { i32 (i8*)* @open_temp_exec_file_env, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0 }, %struct.anon { i32 (i8*)* @open_temp_exec_file_dir, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 0 }, %struct.anon { i32 (i8*)* @open_temp_exec_file_dir, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 0 }, %struct.anon { i32 (i8*)* @open_temp_exec_file_dir, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 0 }, %struct.anon { i32 (i8*)* @open_temp_exec_file_env, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 0 }, %struct.anon { i32 (i8*)* @open_temp_exec_file_mnt, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 1 }, %struct.anon { i32 (i8*)* @open_temp_exec_file_mnt, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 1 }], align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"/var/tmp\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"/dev/shm\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"/etc/mtab\00", align 1
@open_temp_exec_file_dir.suffix = internal constant [11 x i8] c"/ffiXXXXXX\00", align 1
@open_temp_exec_file_mnt.last_mounts = internal global i8* null, align 8
@open_temp_exec_file_mnt.last_mntent = internal global %struct._IO_FILE* null, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"noexec\00", align 1

; Function Attrs: uwtable
define i8* @ffi_closure_alloc(i64 %size, i8** %code) #0 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %code.addr = alloca i8**, align 8
  %ptr = alloca i8*, align 8
  %seg = alloca %struct.malloc_segment*, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8** %code, i8*** %code.addr, align 8
  %0 = load i8**, i8*** %code.addr, align 8
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %call = call i8* @dlmalloc(i64 %1)
  store i8* %call, i8** %ptr, align 8
  %2 = load i8*, i8** %ptr, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %3 = load i8*, i8** %ptr, align 8
  %call3 = call %struct.malloc_segment* @segment_holding(%struct.malloc_state* @_gm_, i8* %3)
  store %struct.malloc_segment* %call3, %struct.malloc_segment** %seg, align 8
  %4 = load i8*, i8** %ptr, align 8
  %5 = load %struct.malloc_segment*, %struct.malloc_segment** %seg, align 8
  %exec_offset = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %5, i32 0, i32 3
  %6 = load i64, i64* %exec_offset, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 %6
  %7 = load i8**, i8*** %code.addr, align 8
  store i8* %add.ptr, i8** %7, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %8 = load i8*, i8** %ptr, align 8
  store i8* %8, i8** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: uwtable
define internal i8* @dlmalloc(i64 %bytes) #0 {
entry:
  %retval = alloca i8*, align 8
  %bytes.addr = alloca i64, align 8
  %mem = alloca i8*, align 8
  %nb = alloca i64, align 8
  %idx = alloca i32, align 4
  %smallbits = alloca i32, align 4
  %b = alloca %struct.malloc_chunk*, align 8
  %p = alloca %struct.malloc_chunk*, align 8
  %F = alloca %struct.malloc_chunk*, align 8
  %b47 = alloca %struct.malloc_chunk*, align 8
  %p48 = alloca %struct.malloc_chunk*, align 8
  %r = alloca %struct.malloc_chunk*, align 8
  %rsize = alloca i64, align 8
  %i = alloca i32, align 4
  %leftbits = alloca i32, align 4
  %leastbit = alloca i32, align 4
  %F64 = alloca %struct.malloc_chunk*, align 8
  %DVS = alloca i64, align 8
  %DV = alloca %struct.malloc_chunk*, align 8
  %I = alloca i32, align 4
  %B = alloca %struct.malloc_chunk*, align 8
  %F115 = alloca %struct.malloc_chunk*, align 8
  %rsize173 = alloca i64, align 8
  %p175 = alloca %struct.malloc_chunk*, align 8
  %r179 = alloca %struct.malloc_chunk*, align 8
  %dvs = alloca i64, align 8
  %rsize201 = alloca i64, align 8
  %p203 = alloca %struct.malloc_chunk*, align 8
  %r204 = alloca %struct.malloc_chunk*, align 8
  store i64 %bytes, i64* %bytes.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 1), align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @init_mparams()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 13), align 4
  %and = and i32 %1, 2
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %call2 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 14)) #7
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.220, label %if.then

cond.false:                                       ; preds = %lor.lhs.false
  br i1 false, label %if.end.220, label %if.then

if.then:                                          ; preds = %cond.false, %cond.true
  %2 = load i64, i64* %bytes.addr, align 8
  %cmp4 = icmp ule i64 %2, 240
  br i1 %cmp4, label %if.then.5, label %if.else.152

if.then.5:                                        ; preds = %if.then
  %3 = load i64, i64* %bytes.addr, align 8
  %cmp6 = icmp ult i64 %3, 23
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %if.then.5
  br label %cond.end

cond.false.8:                                     ; preds = %if.then.5
  %4 = load i64, i64* %bytes.addr, align 8
  %add = add i64 %4, 8
  %add9 = add i64 %add, 7
  %and10 = and i64 %add9, -8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.8, %cond.true.7
  %cond = phi i64 [ 32, %cond.true.7 ], [ %and10, %cond.false.8 ]
  store i64 %cond, i64* %nb, align 8
  %5 = load i64, i64* %nb, align 8
  %shr = lshr i64 %5, 3
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %idx, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 0), align 4
  %7 = load i32, i32* %idx, align 4
  %shr11 = lshr i32 %6, %7
  store i32 %shr11, i32* %smallbits, align 4
  %8 = load i32, i32* %smallbits, align 4
  %and12 = and i32 %8, 3
  %cmp13 = icmp ne i32 %and12, 0
  br i1 %cmp13, label %if.then.15, label %if.else.40

if.then.15:                                       ; preds = %cond.end
  %9 = load i32, i32* %smallbits, align 4
  %neg = xor i32 %9, -1
  %and16 = and i32 %neg, 1
  %10 = load i32, i32* %idx, align 4
  %add17 = add i32 %10, %and16
  store i32 %add17, i32* %idx, align 4
  %11 = load i32, i32* %idx, align 4
  %shl = shl i32 %11, 1
  %idxprom = zext i32 %shl to i64
  %arrayidx = getelementptr [66 x %struct.malloc_chunk*], [66 x %struct.malloc_chunk*]* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 9), i32 0, i64 %idxprom
  %12 = bitcast %struct.malloc_chunk** %arrayidx to i8*
  %13 = bitcast i8* %12 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %13, %struct.malloc_chunk** %b, align 8
  %14 = load %struct.malloc_chunk*, %struct.malloc_chunk** %b, align 8
  %fd = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %14, i32 0, i32 2
  %15 = load %struct.malloc_chunk*, %struct.malloc_chunk** %fd, align 8
  store %struct.malloc_chunk* %15, %struct.malloc_chunk** %p, align 8
  %16 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %fd18 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %16, i32 0, i32 2
  %17 = load %struct.malloc_chunk*, %struct.malloc_chunk** %fd18, align 8
  store %struct.malloc_chunk* %17, %struct.malloc_chunk** %F, align 8
  %18 = load %struct.malloc_chunk*, %struct.malloc_chunk** %b, align 8
  %19 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F, align 8
  %cmp19 = icmp eq %struct.malloc_chunk* %18, %19
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then.15
  %20 = load i32, i32* %idx, align 4
  %shl22 = shl i32 1, %20
  %neg23 = xor i32 %shl22, -1
  %21 = load i32, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 0), align 4
  %and24 = and i32 %21, %neg23
  store i32 %and24, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 0), align 4
  br label %if.end.32

if.else:                                          ; preds = %if.then.15
  %22 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F, align 8
  %23 = bitcast %struct.malloc_chunk* %22 to i8*
  %24 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp25 = icmp uge i8* %23, %24
  %conv26 = zext i1 %cmp25 to i32
  %conv27 = sext i32 %conv26 to i64
  %tobool28 = icmp ne i64 %conv27, 0
  br i1 %tobool28, label %if.then.29, label %if.else.31

if.then.29:                                       ; preds = %if.else
  %25 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F, align 8
  %26 = load %struct.malloc_chunk*, %struct.malloc_chunk** %b, align 8
  %fd30 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %26, i32 0, i32 2
  store %struct.malloc_chunk* %25, %struct.malloc_chunk** %fd30, align 8
  %27 = load %struct.malloc_chunk*, %struct.malloc_chunk** %b, align 8
  %28 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F, align 8
  %bk = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %28, i32 0, i32 3
  store %struct.malloc_chunk* %27, %struct.malloc_chunk** %bk, align 8
  br label %if.end

if.else.31:                                       ; preds = %if.else
  call void @abort() #8
  unreachable

if.end:                                           ; preds = %if.then.29
  br label %if.end.32

if.end.32:                                        ; preds = %if.end, %if.then.21
  %29 = load i32, i32* %idx, align 4
  %shl33 = shl i32 %29, 3
  %conv34 = zext i32 %shl33 to i64
  %or = or i64 %conv34, 1
  %or35 = or i64 %or, 2
  %30 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %head = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %30, i32 0, i32 1
  store i64 %or35, i64* %head, align 8
  %31 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %32 = bitcast %struct.malloc_chunk* %31 to i8*
  %33 = load i32, i32* %idx, align 4
  %shl36 = shl i32 %33, 3
  %idx.ext = zext i32 %shl36 to i64
  %add.ptr = getelementptr i8, i8* %32, i64 %idx.ext
  %34 = bitcast i8* %add.ptr to %struct.malloc_chunk*
  %head37 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %34, i32 0, i32 1
  %35 = load i64, i64* %head37, align 8
  %or38 = or i64 %35, 1
  store i64 %or38, i64* %head37, align 8
  %36 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %37 = bitcast %struct.malloc_chunk* %36 to i8*
  %add.ptr39 = getelementptr i8, i8* %37, i64 16
  store i8* %add.ptr39, i8** %mem, align 8
  br label %postaction

if.else.40:                                       ; preds = %cond.end
  %38 = load i64, i64* %nb, align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 2), align 8
  %cmp41 = icmp ugt i64 %38, %39
  br i1 %cmp41, label %if.then.43, label %if.end.150

if.then.43:                                       ; preds = %if.else.40
  %40 = load i32, i32* %smallbits, align 4
  %cmp44 = icmp ne i32 %40, 0
  br i1 %cmp44, label %if.then.46, label %if.else.140

if.then.46:                                       ; preds = %if.then.43
  %41 = load i32, i32* %smallbits, align 4
  %42 = load i32, i32* %idx, align 4
  %shl49 = shl i32 %41, %42
  %43 = load i32, i32* %idx, align 4
  %shl50 = shl i32 1, %43
  %shl51 = shl i32 %shl50, 1
  %44 = load i32, i32* %idx, align 4
  %shl52 = shl i32 1, %44
  %shl53 = shl i32 %shl52, 1
  %sub = sub i32 0, %shl53
  %or54 = or i32 %shl51, %sub
  %and55 = and i32 %shl49, %or54
  store i32 %and55, i32* %leftbits, align 4
  %45 = load i32, i32* %leftbits, align 4
  %46 = load i32, i32* %leftbits, align 4
  %sub56 = sub i32 0, %46
  %and57 = and i32 %45, %sub56
  store i32 %and57, i32* %leastbit, align 4
  %47 = load i32, i32* %leastbit, align 4
  %call58 = call i32 @ffs(i32 %47) #9
  %sub59 = sub i32 %call58, 1
  store i32 %sub59, i32* %i, align 4
  %48 = load i32, i32* %i, align 4
  %shl60 = shl i32 %48, 1
  %idxprom61 = zext i32 %shl60 to i64
  %arrayidx62 = getelementptr [66 x %struct.malloc_chunk*], [66 x %struct.malloc_chunk*]* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 9), i32 0, i64 %idxprom61
  %49 = bitcast %struct.malloc_chunk** %arrayidx62 to i8*
  %50 = bitcast i8* %49 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %50, %struct.malloc_chunk** %b47, align 8
  %51 = load %struct.malloc_chunk*, %struct.malloc_chunk** %b47, align 8
  %fd63 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %51, i32 0, i32 2
  %52 = load %struct.malloc_chunk*, %struct.malloc_chunk** %fd63, align 8
  store %struct.malloc_chunk* %52, %struct.malloc_chunk** %p48, align 8
  %53 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p48, align 8
  %fd65 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %53, i32 0, i32 2
  %54 = load %struct.malloc_chunk*, %struct.malloc_chunk** %fd65, align 8
  store %struct.malloc_chunk* %54, %struct.malloc_chunk** %F64, align 8
  %55 = load %struct.malloc_chunk*, %struct.malloc_chunk** %b47, align 8
  %56 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F64, align 8
  %cmp66 = icmp eq %struct.malloc_chunk* %55, %56
  br i1 %cmp66, label %if.then.68, label %if.else.72

if.then.68:                                       ; preds = %if.then.46
  %57 = load i32, i32* %i, align 4
  %shl69 = shl i32 1, %57
  %neg70 = xor i32 %shl69, -1
  %58 = load i32, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 0), align 4
  %and71 = and i32 %58, %neg70
  store i32 %and71, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 0), align 4
  br label %if.end.82

if.else.72:                                       ; preds = %if.then.46
  %59 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F64, align 8
  %60 = bitcast %struct.malloc_chunk* %59 to i8*
  %61 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp73 = icmp uge i8* %60, %61
  %conv74 = zext i1 %cmp73 to i32
  %conv75 = sext i32 %conv74 to i64
  %tobool76 = icmp ne i64 %conv75, 0
  br i1 %tobool76, label %if.then.77, label %if.else.80

if.then.77:                                       ; preds = %if.else.72
  %62 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F64, align 8
  %63 = load %struct.malloc_chunk*, %struct.malloc_chunk** %b47, align 8
  %fd78 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %63, i32 0, i32 2
  store %struct.malloc_chunk* %62, %struct.malloc_chunk** %fd78, align 8
  %64 = load %struct.malloc_chunk*, %struct.malloc_chunk** %b47, align 8
  %65 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F64, align 8
  %bk79 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %65, i32 0, i32 3
  store %struct.malloc_chunk* %64, %struct.malloc_chunk** %bk79, align 8
  br label %if.end.81

if.else.80:                                       ; preds = %if.else.72
  call void @abort() #8
  unreachable

if.end.81:                                        ; preds = %if.then.77
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.68
  %66 = load i32, i32* %i, align 4
  %shl83 = shl i32 %66, 3
  %conv84 = zext i32 %shl83 to i64
  %67 = load i64, i64* %nb, align 8
  %sub85 = sub i64 %conv84, %67
  store i64 %sub85, i64* %rsize, align 8
  %68 = load i64, i64* %rsize, align 8
  %cmp86 = icmp ult i64 %68, 32
  br i1 %cmp86, label %if.then.88, label %if.else.99

if.then.88:                                       ; preds = %if.end.82
  %69 = load i32, i32* %i, align 4
  %shl89 = shl i32 %69, 3
  %conv90 = zext i32 %shl89 to i64
  %or91 = or i64 %conv90, 1
  %or92 = or i64 %or91, 2
  %70 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p48, align 8
  %head93 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %70, i32 0, i32 1
  store i64 %or92, i64* %head93, align 8
  %71 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p48, align 8
  %72 = bitcast %struct.malloc_chunk* %71 to i8*
  %73 = load i32, i32* %i, align 4
  %shl94 = shl i32 %73, 3
  %idx.ext95 = zext i32 %shl94 to i64
  %add.ptr96 = getelementptr i8, i8* %72, i64 %idx.ext95
  %74 = bitcast i8* %add.ptr96 to %struct.malloc_chunk*
  %head97 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %74, i32 0, i32 1
  %75 = load i64, i64* %head97, align 8
  %or98 = or i64 %75, 1
  store i64 %or98, i64* %head97, align 8
  br label %if.end.138

if.else.99:                                       ; preds = %if.end.82
  %76 = load i64, i64* %nb, align 8
  %or100 = or i64 %76, 1
  %or101 = or i64 %or100, 2
  %77 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p48, align 8
  %head102 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %77, i32 0, i32 1
  store i64 %or101, i64* %head102, align 8
  %78 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p48, align 8
  %79 = bitcast %struct.malloc_chunk* %78 to i8*
  %80 = load i64, i64* %nb, align 8
  %add.ptr103 = getelementptr i8, i8* %79, i64 %80
  %81 = bitcast i8* %add.ptr103 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %81, %struct.malloc_chunk** %r, align 8
  %82 = load i64, i64* %rsize, align 8
  %or104 = or i64 %82, 1
  %83 = load %struct.malloc_chunk*, %struct.malloc_chunk** %r, align 8
  %head105 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %83, i32 0, i32 1
  store i64 %or104, i64* %head105, align 8
  %84 = load i64, i64* %rsize, align 8
  %85 = load %struct.malloc_chunk*, %struct.malloc_chunk** %r, align 8
  %86 = bitcast %struct.malloc_chunk* %85 to i8*
  %87 = load i64, i64* %rsize, align 8
  %add.ptr106 = getelementptr i8, i8* %86, i64 %87
  %88 = bitcast i8* %add.ptr106 to %struct.malloc_chunk*
  %prev_foot = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %88, i32 0, i32 0
  store i64 %84, i64* %prev_foot, align 8
  %89 = load i64, i64* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 2), align 8
  store i64 %89, i64* %DVS, align 8
  %90 = load i64, i64* %DVS, align 8
  %cmp107 = icmp ne i64 %90, 0
  br i1 %cmp107, label %if.then.109, label %if.end.137

if.then.109:                                      ; preds = %if.else.99
  %91 = load %struct.malloc_chunk*, %struct.malloc_chunk** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 5), align 8
  store %struct.malloc_chunk* %91, %struct.malloc_chunk** %DV, align 8
  %92 = load i64, i64* %DVS, align 8
  %shr110 = lshr i64 %92, 3
  %conv111 = trunc i64 %shr110 to i32
  store i32 %conv111, i32* %I, align 4
  %93 = load i32, i32* %I, align 4
  %shl112 = shl i32 %93, 1
  %idxprom113 = zext i32 %shl112 to i64
  %arrayidx114 = getelementptr [66 x %struct.malloc_chunk*], [66 x %struct.malloc_chunk*]* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 9), i32 0, i64 %idxprom113
  %94 = bitcast %struct.malloc_chunk** %arrayidx114 to i8*
  %95 = bitcast i8* %94 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %95, %struct.malloc_chunk** %B, align 8
  %96 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  store %struct.malloc_chunk* %96, %struct.malloc_chunk** %F115, align 8
  %97 = load i32, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 0), align 4
  %98 = load i32, i32* %I, align 4
  %shl116 = shl i32 1, %98
  %and117 = and i32 %97, %shl116
  %tobool118 = icmp ne i32 %and117, 0
  br i1 %tobool118, label %if.else.122, label %if.then.119

if.then.119:                                      ; preds = %if.then.109
  %99 = load i32, i32* %I, align 4
  %shl120 = shl i32 1, %99
  %100 = load i32, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 0), align 4
  %or121 = or i32 %100, %shl120
  store i32 %or121, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 0), align 4
  br label %if.end.132

if.else.122:                                      ; preds = %if.then.109
  %101 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %fd123 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %101, i32 0, i32 2
  %102 = load %struct.malloc_chunk*, %struct.malloc_chunk** %fd123, align 8
  %103 = bitcast %struct.malloc_chunk* %102 to i8*
  %104 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp124 = icmp uge i8* %103, %104
  %conv125 = zext i1 %cmp124 to i32
  %conv126 = sext i32 %conv125 to i64
  %tobool127 = icmp ne i64 %conv126, 0
  br i1 %tobool127, label %if.then.128, label %if.else.130

if.then.128:                                      ; preds = %if.else.122
  %105 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %fd129 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %105, i32 0, i32 2
  %106 = load %struct.malloc_chunk*, %struct.malloc_chunk** %fd129, align 8
  store %struct.malloc_chunk* %106, %struct.malloc_chunk** %F115, align 8
  br label %if.end.131

if.else.130:                                      ; preds = %if.else.122
  call void @abort() #8
  unreachable

if.end.131:                                       ; preds = %if.then.128
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then.119
  %107 = load %struct.malloc_chunk*, %struct.malloc_chunk** %DV, align 8
  %108 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %fd133 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %108, i32 0, i32 2
  store %struct.malloc_chunk* %107, %struct.malloc_chunk** %fd133, align 8
  %109 = load %struct.malloc_chunk*, %struct.malloc_chunk** %DV, align 8
  %110 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F115, align 8
  %bk134 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %110, i32 0, i32 3
  store %struct.malloc_chunk* %109, %struct.malloc_chunk** %bk134, align 8
  %111 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F115, align 8
  %112 = load %struct.malloc_chunk*, %struct.malloc_chunk** %DV, align 8
  %fd135 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %112, i32 0, i32 2
  store %struct.malloc_chunk* %111, %struct.malloc_chunk** %fd135, align 8
  %113 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %114 = load %struct.malloc_chunk*, %struct.malloc_chunk** %DV, align 8
  %bk136 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %114, i32 0, i32 3
  store %struct.malloc_chunk* %113, %struct.malloc_chunk** %bk136, align 8
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.132, %if.else.99
  %115 = load i64, i64* %rsize, align 8
  store i64 %115, i64* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 2), align 8
  %116 = load %struct.malloc_chunk*, %struct.malloc_chunk** %r, align 8
  store %struct.malloc_chunk* %116, %struct.malloc_chunk** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 5), align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.then.88
  %117 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p48, align 8
  %118 = bitcast %struct.malloc_chunk* %117 to i8*
  %add.ptr139 = getelementptr i8, i8* %118, i64 16
  store i8* %add.ptr139, i8** %mem, align 8
  br label %postaction

if.else.140:                                      ; preds = %if.then.43
  %119 = load i32, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 1), align 4
  %cmp141 = icmp ne i32 %119, 0
  br i1 %cmp141, label %land.lhs.true.143, label %if.end.148

land.lhs.true.143:                                ; preds = %if.else.140
  %120 = load i64, i64* %nb, align 8
  %call144 = call i8* @tmalloc_small(%struct.malloc_state* @_gm_, i64 %120)
  store i8* %call144, i8** %mem, align 8
  %cmp145 = icmp ne i8* %call144, null
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %land.lhs.true.143
  br label %postaction

if.end.148:                                       ; preds = %land.lhs.true.143, %if.else.140
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.else.40
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150
  br label %if.end.169

if.else.152:                                      ; preds = %if.then
  %121 = load i64, i64* %bytes.addr, align 8
  %cmp153 = icmp uge i64 %121, -128
  br i1 %cmp153, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %if.else.152
  store i64 -1, i64* %nb, align 8
  br label %if.end.168

if.else.156:                                      ; preds = %if.else.152
  %122 = load i64, i64* %bytes.addr, align 8
  %add157 = add i64 %122, 8
  %add158 = add i64 %add157, 7
  %and159 = and i64 %add158, -8
  store i64 %and159, i64* %nb, align 8
  %123 = load i32, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 1), align 4
  %cmp160 = icmp ne i32 %123, 0
  br i1 %cmp160, label %land.lhs.true.162, label %if.end.167

land.lhs.true.162:                                ; preds = %if.else.156
  %124 = load i64, i64* %nb, align 8
  %call163 = call i8* @tmalloc_large(%struct.malloc_state* @_gm_, i64 %124)
  store i8* %call163, i8** %mem, align 8
  %cmp164 = icmp ne i8* %call163, null
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %land.lhs.true.162
  br label %postaction

if.end.167:                                       ; preds = %land.lhs.true.162, %if.else.156
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.then.155
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.end.151
  %125 = load i64, i64* %nb, align 8
  %126 = load i64, i64* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 2), align 8
  %cmp170 = icmp ule i64 %125, %126
  br i1 %cmp170, label %if.then.172, label %if.else.197

if.then.172:                                      ; preds = %if.end.169
  %127 = load i64, i64* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 2), align 8
  %128 = load i64, i64* %nb, align 8
  %sub174 = sub i64 %127, %128
  store i64 %sub174, i64* %rsize173, align 8
  %129 = load %struct.malloc_chunk*, %struct.malloc_chunk** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 5), align 8
  store %struct.malloc_chunk* %129, %struct.malloc_chunk** %p175, align 8
  %130 = load i64, i64* %rsize173, align 8
  %cmp176 = icmp uge i64 %130, 32
  br i1 %cmp176, label %if.then.178, label %if.else.188

if.then.178:                                      ; preds = %if.then.172
  %131 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p175, align 8
  %132 = bitcast %struct.malloc_chunk* %131 to i8*
  %133 = load i64, i64* %nb, align 8
  %add.ptr180 = getelementptr i8, i8* %132, i64 %133
  %134 = bitcast i8* %add.ptr180 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %134, %struct.malloc_chunk** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 5), align 8
  store %struct.malloc_chunk* %134, %struct.malloc_chunk** %r179, align 8
  %135 = load i64, i64* %rsize173, align 8
  store i64 %135, i64* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 2), align 8
  %136 = load i64, i64* %rsize173, align 8
  %or181 = or i64 %136, 1
  %137 = load %struct.malloc_chunk*, %struct.malloc_chunk** %r179, align 8
  %head182 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %137, i32 0, i32 1
  store i64 %or181, i64* %head182, align 8
  %138 = load i64, i64* %rsize173, align 8
  %139 = load %struct.malloc_chunk*, %struct.malloc_chunk** %r179, align 8
  %140 = bitcast %struct.malloc_chunk* %139 to i8*
  %141 = load i64, i64* %rsize173, align 8
  %add.ptr183 = getelementptr i8, i8* %140, i64 %141
  %142 = bitcast i8* %add.ptr183 to %struct.malloc_chunk*
  %prev_foot184 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %142, i32 0, i32 0
  store i64 %138, i64* %prev_foot184, align 8
  %143 = load i64, i64* %nb, align 8
  %or185 = or i64 %143, 1
  %or186 = or i64 %or185, 2
  %144 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p175, align 8
  %head187 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %144, i32 0, i32 1
  store i64 %or186, i64* %head187, align 8
  br label %if.end.195

if.else.188:                                      ; preds = %if.then.172
  %145 = load i64, i64* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 2), align 8
  store i64 %145, i64* %dvs, align 8
  store i64 0, i64* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 2), align 8
  store %struct.malloc_chunk* null, %struct.malloc_chunk** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 5), align 8
  %146 = load i64, i64* %dvs, align 8
  %or189 = or i64 %146, 1
  %or190 = or i64 %or189, 2
  %147 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p175, align 8
  %head191 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %147, i32 0, i32 1
  store i64 %or190, i64* %head191, align 8
  %148 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p175, align 8
  %149 = bitcast %struct.malloc_chunk* %148 to i8*
  %150 = load i64, i64* %dvs, align 8
  %add.ptr192 = getelementptr i8, i8* %149, i64 %150
  %151 = bitcast i8* %add.ptr192 to %struct.malloc_chunk*
  %head193 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %151, i32 0, i32 1
  %152 = load i64, i64* %head193, align 8
  %or194 = or i64 %152, 1
  store i64 %or194, i64* %head193, align 8
  br label %if.end.195

if.end.195:                                       ; preds = %if.else.188, %if.then.178
  %153 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p175, align 8
  %154 = bitcast %struct.malloc_chunk* %153 to i8*
  %add.ptr196 = getelementptr i8, i8* %154, i64 16
  store i8* %add.ptr196, i8** %mem, align 8
  br label %postaction

if.else.197:                                      ; preds = %if.end.169
  %155 = load i64, i64* %nb, align 8
  %156 = load i64, i64* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 3), align 8
  %cmp198 = icmp ult i64 %155, %156
  br i1 %cmp198, label %if.then.200, label %if.end.212

if.then.200:                                      ; preds = %if.else.197
  %157 = load i64, i64* %nb, align 8
  %158 = load i64, i64* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 3), align 8
  %sub202 = sub i64 %158, %157
  store i64 %sub202, i64* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 3), align 8
  store i64 %sub202, i64* %rsize201, align 8
  %159 = load %struct.malloc_chunk*, %struct.malloc_chunk** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 6), align 8
  store %struct.malloc_chunk* %159, %struct.malloc_chunk** %p203, align 8
  %160 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p203, align 8
  %161 = bitcast %struct.malloc_chunk* %160 to i8*
  %162 = load i64, i64* %nb, align 8
  %add.ptr205 = getelementptr i8, i8* %161, i64 %162
  %163 = bitcast i8* %add.ptr205 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %163, %struct.malloc_chunk** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 6), align 8
  store %struct.malloc_chunk* %163, %struct.malloc_chunk** %r204, align 8
  %164 = load i64, i64* %rsize201, align 8
  %or206 = or i64 %164, 1
  %165 = load %struct.malloc_chunk*, %struct.malloc_chunk** %r204, align 8
  %head207 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %165, i32 0, i32 1
  store i64 %or206, i64* %head207, align 8
  %166 = load i64, i64* %nb, align 8
  %or208 = or i64 %166, 1
  %or209 = or i64 %or208, 2
  %167 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p203, align 8
  %head210 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %167, i32 0, i32 1
  store i64 %or209, i64* %head210, align 8
  %168 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p203, align 8
  %169 = bitcast %struct.malloc_chunk* %168 to i8*
  %add.ptr211 = getelementptr i8, i8* %169, i64 16
  store i8* %add.ptr211, i8** %mem, align 8
  br label %postaction

if.end.212:                                       ; preds = %if.else.197
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212
  %170 = load i64, i64* %nb, align 8
  %call214 = call i8* @sys_alloc(%struct.malloc_state* @_gm_, i64 %170)
  store i8* %call214, i8** %mem, align 8
  br label %postaction

postaction:                                       ; preds = %if.end.213, %if.then.200, %if.end.195, %if.then.166, %if.then.147, %if.end.138, %if.end.32
  %171 = load i32, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 13), align 4
  %and215 = and i32 %171, 2
  %tobool216 = icmp ne i32 %and215, 0
  br i1 %tobool216, label %if.then.217, label %if.end.219

if.then.217:                                      ; preds = %postaction
  %call218 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 14)) #7
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.217, %postaction
  %172 = load i8*, i8** %mem, align 8
  store i8* %172, i8** %retval
  br label %return

if.end.220:                                       ; preds = %cond.false, %cond.true
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.220, %if.end.219
  %173 = load i8*, i8** %retval
  ret i8* %173
}

; Function Attrs: nounwind uwtable
define internal %struct.malloc_segment* @segment_holding(%struct.malloc_state* %m, i8* %addr) #1 {
entry:
  %retval = alloca %struct.malloc_segment*, align 8
  %m.addr = alloca %struct.malloc_state*, align 8
  %addr.addr = alloca i8*, align 8
  %sp = alloca %struct.malloc_segment*, align 8
  store %struct.malloc_state* %m, %struct.malloc_state** %m.addr, align 8
  store i8* %addr, i8** %addr.addr, align 8
  %0 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %0, i32 0, i32 15
  store %struct.malloc_segment* %seg, %struct.malloc_segment** %sp, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.5, %entry
  %1 = load i8*, i8** %addr.addr, align 8
  %2 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %base = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %2, i32 0, i32 0
  %3 = load i8*, i8** %base, align 8
  %cmp = icmp uge i8* %1, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.cond
  %4 = load i8*, i8** %addr.addr, align 8
  %5 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %base1 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %5, i32 0, i32 0
  %6 = load i8*, i8** %base1, align 8
  %7 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %size = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %7, i32 0, i32 1
  %8 = load i64, i64* %size, align 8
  %add.ptr = getelementptr i8, i8* %6, i64 %8
  %cmp2 = icmp ult i8* %4, %add.ptr
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  store %struct.malloc_segment* %9, %struct.malloc_segment** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.cond
  %10 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %next = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %10, i32 0, i32 2
  %11 = load %struct.malloc_segment*, %struct.malloc_segment** %next, align 8
  store %struct.malloc_segment* %11, %struct.malloc_segment** %sp, align 8
  %cmp3 = icmp eq %struct.malloc_segment* %11, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct.malloc_segment* null, %struct.malloc_segment** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  br label %for.cond

return:                                           ; preds = %if.then.4, %if.then
  %12 = load %struct.malloc_segment*, %struct.malloc_segment** %retval
  ret %struct.malloc_segment* %12
}

; Function Attrs: uwtable
define void @ffi_closure_free(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  call void @dlfree(i8* %0)
  ret void
}

; Function Attrs: uwtable
define internal void @dlfree(i8* %mem) #0 {
entry:
  %mem.addr = alloca i8*, align 8
  %p = alloca %struct.malloc_chunk*, align 8
  %psize = alloca i64, align 8
  %next = alloca %struct.malloc_chunk*, align 8
  %prevsize = alloca i64, align 8
  %prev = alloca %struct.malloc_chunk*, align 8
  %F = alloca %struct.malloc_chunk*, align 8
  %B = alloca %struct.malloc_chunk*, align 8
  %I = alloca i32, align 4
  %TP = alloca %struct.malloc_tree_chunk*, align 8
  %XP = alloca %struct.malloc_tree_chunk*, align 8
  %R = alloca %struct.malloc_tree_chunk*, align 8
  %F79 = alloca %struct.malloc_tree_chunk*, align 8
  %RP = alloca %struct.malloc_tree_chunk**, align 8
  %CP = alloca %struct.malloc_tree_chunk**, align 8
  %H = alloca %struct.malloc_tree_chunk**, align 8
  %C0 = alloca %struct.malloc_tree_chunk*, align 8
  %C1 = alloca %struct.malloc_tree_chunk*, align 8
  %tsize = alloca i64, align 8
  %dsize = alloca i64, align 8
  %nsize = alloca i64, align 8
  %F266 = alloca %struct.malloc_chunk*, align 8
  %B268 = alloca %struct.malloc_chunk*, align 8
  %I270 = alloca i32, align 4
  %TP309 = alloca %struct.malloc_tree_chunk*, align 8
  %XP310 = alloca %struct.malloc_tree_chunk*, align 8
  %R312 = alloca %struct.malloc_tree_chunk*, align 8
  %F317 = alloca %struct.malloc_tree_chunk*, align 8
  %RP330 = alloca %struct.malloc_tree_chunk**, align 8
  %CP341 = alloca %struct.malloc_tree_chunk**, align 8
  %H367 = alloca %struct.malloc_tree_chunk**, align 8
  %C0410 = alloca %struct.malloc_tree_chunk*, align 8
  %C1411 = alloca %struct.malloc_tree_chunk*, align 8
  %I472 = alloca i32, align 4
  %B475 = alloca %struct.malloc_chunk*, align 8
  %F479 = alloca %struct.malloc_chunk*, align 8
  %TP502 = alloca %struct.malloc_tree_chunk*, align 8
  %H503 = alloca %struct.malloc_tree_chunk**, align 8
  %I504 = alloca i32, align 4
  %X = alloca i64, align 8
  %Y = alloca i32, align 4
  %N = alloca i32, align 4
  %K = alloca i32, align 4
  %T = alloca %struct.malloc_tree_chunk*, align 8
  %K558 = alloca i64, align 8
  %C = alloca %struct.malloc_tree_chunk**, align 8
  %F594 = alloca %struct.malloc_tree_chunk*, align 8
  store i8* %mem, i8** %mem.addr, align 8
  %0 = load i8*, i8** %mem.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end.623

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %mem.addr, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -16
  %2 = bitcast i8* %add.ptr to %struct.malloc_chunk*
  store %struct.malloc_chunk* %2, %struct.malloc_chunk** %p, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 1), align 8
  %cmp1 = icmp eq i64 %3, 0
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %call = call i32 @init_mparams()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %4 = load i32, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 13), align 4
  %and = and i32 %4, 2
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %call3 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 14)) #7
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.622, label %if.then.5

cond.false:                                       ; preds = %lor.lhs.false
  br i1 false, label %if.end.622, label %if.then.5

if.then.5:                                        ; preds = %cond.false, %cond.true
  %5 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %6 = bitcast %struct.malloc_chunk* %5 to i8*
  %7 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp6 = icmp uge i8* %6, %7
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.5
  %8 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %head = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %8, i32 0, i32 1
  %9 = load i64, i64* %head, align 8
  %and7 = and i64 %9, 2
  %tobool8 = icmp ne i64 %and7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.5
  %10 = phi i1 [ false, %if.then.5 ], [ %tobool8, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  %conv = sext i32 %land.ext to i64
  %tobool9 = icmp ne i64 %conv, 0
  br i1 %tobool9, label %if.then.10, label %if.end.616

if.then.10:                                       ; preds = %land.end
  %11 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %head11 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %11, i32 0, i32 1
  %12 = load i64, i64* %head11, align 8
  %and12 = and i64 %12, -4
  store i64 %and12, i64* %psize, align 8
  %13 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %14 = bitcast %struct.malloc_chunk* %13 to i8*
  %15 = load i64, i64* %psize, align 8
  %add.ptr13 = getelementptr i8, i8* %14, i64 %15
  %16 = bitcast i8* %add.ptr13 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %16, %struct.malloc_chunk** %next, align 8
  %17 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %head14 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %17, i32 0, i32 1
  %18 = load i64, i64* %head14, align 8
  %and15 = and i64 %18, 1
  %tobool16 = icmp ne i64 %and15, 0
  br i1 %tobool16, label %if.end.218, label %if.then.17

if.then.17:                                       ; preds = %if.then.10
  %19 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %prev_foot = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %19, i32 0, i32 0
  %20 = load i64, i64* %prev_foot, align 8
  store i64 %20, i64* %prevsize, align 8
  %21 = load i64, i64* %prevsize, align 8
  %and18 = and i64 %21, 1
  %cmp19 = icmp ne i64 %and18, 0
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then.17
  %22 = load i64, i64* %prevsize, align 8
  %and22 = and i64 %22, -2
  store i64 %and22, i64* %prevsize, align 8
  %23 = load i64, i64* %prevsize, align 8
  %add = add i64 %23, 32
  %24 = load i64, i64* %psize, align 8
  %add23 = add i64 %24, %add
  store i64 %add23, i64* %psize, align 8
  %25 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %26 = bitcast %struct.malloc_chunk* %25 to i8*
  %27 = load i64, i64* %prevsize, align 8
  %idx.neg = sub i64 0, %27
  %add.ptr24 = getelementptr i8, i8* %26, i64 %idx.neg
  %28 = load i64, i64* %psize, align 8
  %call25 = call i32 @dlmunmap(i8* %add.ptr24, i64 %28)
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %if.then.21
  %29 = load i64, i64* %psize, align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 11), align 8
  %sub = sub i64 %30, %29
  store i64 %sub, i64* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 11), align 8
  br label %if.end

if.end:                                           ; preds = %if.then.28, %if.then.21
  br label %postaction

if.else:                                          ; preds = %if.then.17
  %31 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %32 = bitcast %struct.malloc_chunk* %31 to i8*
  %33 = load i64, i64* %prevsize, align 8
  %idx.neg29 = sub i64 0, %33
  %add.ptr30 = getelementptr i8, i8* %32, i64 %idx.neg29
  %34 = bitcast i8* %add.ptr30 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %34, %struct.malloc_chunk** %prev, align 8
  %35 = load i64, i64* %prevsize, align 8
  %36 = load i64, i64* %psize, align 8
  %add31 = add i64 %36, %35
  store i64 %add31, i64* %psize, align 8
  %37 = load %struct.malloc_chunk*, %struct.malloc_chunk** %prev, align 8
  store %struct.malloc_chunk* %37, %struct.malloc_chunk** %p, align 8
  %38 = load %struct.malloc_chunk*, %struct.malloc_chunk** %prev, align 8
  %39 = bitcast %struct.malloc_chunk* %38 to i8*
  %40 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp32 = icmp uge i8* %39, %40
  %conv33 = zext i1 %cmp32 to i32
  %conv34 = sext i32 %conv33 to i64
  %tobool35 = icmp ne i64 %conv34, 0
  br i1 %tobool35, label %if.then.36, label %if.else.215

if.then.36:                                       ; preds = %if.else
  %41 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %42 = load %struct.malloc_chunk*, %struct.malloc_chunk** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 5), align 8
  %cmp37 = icmp ne %struct.malloc_chunk* %41, %42
  br i1 %cmp37, label %if.then.39, label %if.else.202

if.then.39:                                       ; preds = %if.then.36
  %43 = load i64, i64* %prevsize, align 8
  %shr = lshr i64 %43, 3
  %cmp40 = icmp ult i64 %shr, 32
  br i1 %cmp40, label %if.then.42, label %if.else.74

if.then.42:                                       ; preds = %if.then.39
  %44 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %fd = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %44, i32 0, i32 2
  %45 = load %struct.malloc_chunk*, %struct.malloc_chunk** %fd, align 8
  store %struct.malloc_chunk* %45, %struct.malloc_chunk** %F, align 8
  %46 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %bk = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %46, i32 0, i32 3
  %47 = load %struct.malloc_chunk*, %struct.malloc_chunk** %bk, align 8
  store %struct.malloc_chunk* %47, %struct.malloc_chunk** %B, align 8
  %48 = load i64, i64* %prevsize, align 8
  %shr43 = lshr i64 %48, 3
  %conv44 = trunc i64 %shr43 to i32
  store i32 %conv44, i32* %I, align 4
  %49 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F, align 8
  %50 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %cmp45 = icmp eq %struct.malloc_chunk* %49, %50
  br i1 %cmp45, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %if.then.42
  %51 = load i32, i32* %I, align 4
  %shl = shl i32 1, %51
  %neg = xor i32 %shl, -1
  %52 = load i32, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 0), align 4
  %and48 = and i32 %52, %neg
  store i32 %and48, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 0), align 4
  br label %if.end.73

if.else.49:                                       ; preds = %if.then.42
  %53 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F, align 8
  %54 = load i32, i32* %I, align 4
  %shl50 = shl i32 %54, 1
  %idxprom = zext i32 %shl50 to i64
  %arrayidx = getelementptr [66 x %struct.malloc_chunk*], [66 x %struct.malloc_chunk*]* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 9), i32 0, i64 %idxprom
  %55 = bitcast %struct.malloc_chunk** %arrayidx to i8*
  %56 = bitcast i8* %55 to %struct.malloc_chunk*
  %cmp51 = icmp eq %struct.malloc_chunk* %53, %56
  br i1 %cmp51, label %land.rhs.56, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %if.else.49
  %57 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F, align 8
  %58 = bitcast %struct.malloc_chunk* %57 to i8*
  %59 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp54 = icmp uge i8* %58, %59
  br i1 %cmp54, label %land.rhs.56, label %land.end.64

land.rhs.56:                                      ; preds = %lor.lhs.false.53, %if.else.49
  %60 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %61 = load i32, i32* %I, align 4
  %shl57 = shl i32 %61, 1
  %idxprom58 = zext i32 %shl57 to i64
  %arrayidx59 = getelementptr [66 x %struct.malloc_chunk*], [66 x %struct.malloc_chunk*]* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 9), i32 0, i64 %idxprom58
  %62 = bitcast %struct.malloc_chunk** %arrayidx59 to i8*
  %63 = bitcast i8* %62 to %struct.malloc_chunk*
  %cmp60 = icmp eq %struct.malloc_chunk* %60, %63
  br i1 %cmp60, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.56
  %64 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %65 = bitcast %struct.malloc_chunk* %64 to i8*
  %66 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp62 = icmp uge i8* %65, %66
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.56
  %67 = phi i1 [ true, %land.rhs.56 ], [ %cmp62, %lor.rhs ]
  br label %land.end.64

land.end.64:                                      ; preds = %lor.end, %lor.lhs.false.53
  %68 = phi i1 [ false, %lor.lhs.false.53 ], [ %67, %lor.end ]
  %land.ext65 = zext i1 %68 to i32
  %conv66 = sext i32 %land.ext65 to i64
  %tobool67 = icmp ne i64 %conv66, 0
  br i1 %tobool67, label %if.then.68, label %if.else.71

if.then.68:                                       ; preds = %land.end.64
  %69 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %70 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F, align 8
  %bk69 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %70, i32 0, i32 3
  store %struct.malloc_chunk* %69, %struct.malloc_chunk** %bk69, align 8
  %71 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F, align 8
  %72 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %fd70 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %72, i32 0, i32 2
  store %struct.malloc_chunk* %71, %struct.malloc_chunk** %fd70, align 8
  br label %if.end.72

if.else.71:                                       ; preds = %land.end.64
  call void @abort() #8
  unreachable

if.end.72:                                        ; preds = %if.then.68
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.47
  br label %if.end.201

if.else.74:                                       ; preds = %if.then.39
  %73 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %74 = bitcast %struct.malloc_chunk* %73 to %struct.malloc_tree_chunk*
  store %struct.malloc_tree_chunk* %74, %struct.malloc_tree_chunk** %TP, align 8
  %75 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %parent = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %75, i32 0, i32 5
  %76 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %parent, align 8
  store %struct.malloc_tree_chunk* %76, %struct.malloc_tree_chunk** %XP, align 8
  %77 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %bk75 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %77, i32 0, i32 3
  %78 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %bk75, align 8
  %79 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %cmp76 = icmp ne %struct.malloc_tree_chunk* %78, %79
  br i1 %cmp76, label %if.then.78, label %if.else.91

if.then.78:                                       ; preds = %if.else.74
  %80 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %fd80 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %80, i32 0, i32 2
  %81 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %fd80, align 8
  store %struct.malloc_tree_chunk* %81, %struct.malloc_tree_chunk** %F79, align 8
  %82 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %bk81 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %82, i32 0, i32 3
  %83 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %bk81, align 8
  store %struct.malloc_tree_chunk* %83, %struct.malloc_tree_chunk** %R, align 8
  %84 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F79, align 8
  %85 = bitcast %struct.malloc_tree_chunk* %84 to i8*
  %86 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp82 = icmp uge i8* %85, %86
  %conv83 = zext i1 %cmp82 to i32
  %conv84 = sext i32 %conv83 to i64
  %tobool85 = icmp ne i64 %conv84, 0
  br i1 %tobool85, label %if.then.86, label %if.else.89

if.then.86:                                       ; preds = %if.then.78
  %87 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %88 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F79, align 8
  %bk87 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %88, i32 0, i32 3
  store %struct.malloc_tree_chunk* %87, %struct.malloc_tree_chunk** %bk87, align 8
  %89 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F79, align 8
  %90 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %fd88 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %90, i32 0, i32 2
  store %struct.malloc_tree_chunk* %89, %struct.malloc_tree_chunk** %fd88, align 8
  br label %if.end.90

if.else.89:                                       ; preds = %if.then.78
  call void @abort() #8
  unreachable

if.end.90:                                        ; preds = %if.then.86
  br label %if.end.119

if.else.91:                                       ; preds = %if.else.74
  %91 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %child = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %91, i32 0, i32 4
  %arrayidx92 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child, i32 0, i64 1
  store %struct.malloc_tree_chunk** %arrayidx92, %struct.malloc_tree_chunk*** %RP, align 8
  %92 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx92, align 8
  store %struct.malloc_tree_chunk* %92, %struct.malloc_tree_chunk** %R, align 8
  %cmp93 = icmp ne %struct.malloc_tree_chunk* %92, null
  br i1 %cmp93, label %if.then.100, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %if.else.91
  %93 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %child96 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %93, i32 0, i32 4
  %arrayidx97 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child96, i32 0, i64 0
  store %struct.malloc_tree_chunk** %arrayidx97, %struct.malloc_tree_chunk*** %RP, align 8
  %94 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx97, align 8
  store %struct.malloc_tree_chunk* %94, %struct.malloc_tree_chunk** %R, align 8
  %cmp98 = icmp ne %struct.malloc_tree_chunk* %94, null
  br i1 %cmp98, label %if.then.100, label %if.end.118

if.then.100:                                      ; preds = %lor.lhs.false.95, %if.else.91
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.100
  %95 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %child101 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %95, i32 0, i32 4
  %arrayidx102 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child101, i32 0, i64 1
  store %struct.malloc_tree_chunk** %arrayidx102, %struct.malloc_tree_chunk*** %CP, align 8
  %96 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx102, align 8
  %cmp103 = icmp ne %struct.malloc_tree_chunk* %96, null
  br i1 %cmp103, label %lor.end.110, label %lor.rhs.105

lor.rhs.105:                                      ; preds = %while.cond
  %97 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %child106 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %97, i32 0, i32 4
  %arrayidx107 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child106, i32 0, i64 0
  store %struct.malloc_tree_chunk** %arrayidx107, %struct.malloc_tree_chunk*** %CP, align 8
  %98 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx107, align 8
  %cmp108 = icmp ne %struct.malloc_tree_chunk* %98, null
  br label %lor.end.110

lor.end.110:                                      ; preds = %lor.rhs.105, %while.cond
  %99 = phi i1 [ true, %while.cond ], [ %cmp108, %lor.rhs.105 ]
  br i1 %99, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end.110
  %100 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %CP, align 8
  store %struct.malloc_tree_chunk** %100, %struct.malloc_tree_chunk*** %RP, align 8
  %101 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %100, align 8
  store %struct.malloc_tree_chunk* %101, %struct.malloc_tree_chunk** %R, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end.110
  %102 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %RP, align 8
  %103 = bitcast %struct.malloc_tree_chunk** %102 to i8*
  %104 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp111 = icmp uge i8* %103, %104
  %conv112 = zext i1 %cmp111 to i32
  %conv113 = sext i32 %conv112 to i64
  %tobool114 = icmp ne i64 %conv113, 0
  br i1 %tobool114, label %if.then.115, label %if.else.116

if.then.115:                                      ; preds = %while.end
  %105 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %RP, align 8
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %105, align 8
  br label %if.end.117

if.else.116:                                      ; preds = %while.end
  call void @abort() #8
  unreachable

if.end.117:                                       ; preds = %if.then.115
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %lor.lhs.false.95
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.end.90
  %106 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %cmp120 = icmp ne %struct.malloc_tree_chunk* %106, null
  br i1 %cmp120, label %if.then.122, label %if.end.200

if.then.122:                                      ; preds = %if.end.119
  %107 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %index = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %107, i32 0, i32 6
  %108 = load i32, i32* %index, align 4
  %idxprom123 = zext i32 %108 to i64
  %arrayidx124 = getelementptr [32 x %struct.malloc_tree_chunk*], [32 x %struct.malloc_tree_chunk*]* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 10), i32 0, i64 %idxprom123
  store %struct.malloc_tree_chunk** %arrayidx124, %struct.malloc_tree_chunk*** %H, align 8
  %109 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %110 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H, align 8
  %111 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %110, align 8
  %cmp125 = icmp eq %struct.malloc_tree_chunk* %109, %111
  br i1 %cmp125, label %if.then.127, label %if.else.136

if.then.127:                                      ; preds = %if.then.122
  %112 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %113 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H, align 8
  store %struct.malloc_tree_chunk* %112, %struct.malloc_tree_chunk** %113, align 8
  %cmp128 = icmp eq %struct.malloc_tree_chunk* %112, null
  br i1 %cmp128, label %if.then.130, label %if.end.135

if.then.130:                                      ; preds = %if.then.127
  %114 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %index131 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %114, i32 0, i32 6
  %115 = load i32, i32* %index131, align 4
  %shl132 = shl i32 1, %115
  %neg133 = xor i32 %shl132, -1
  %116 = load i32, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 1), align 4
  %and134 = and i32 %116, %neg133
  store i32 %and134, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 1), align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.130, %if.then.127
  br label %if.end.155

if.else.136:                                      ; preds = %if.then.122
  %117 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %118 = bitcast %struct.malloc_tree_chunk* %117 to i8*
  %119 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp137 = icmp uge i8* %118, %119
  %conv138 = zext i1 %cmp137 to i32
  %conv139 = sext i32 %conv138 to i64
  %tobool140 = icmp ne i64 %conv139, 0
  br i1 %tobool140, label %if.then.141, label %if.else.153

if.then.141:                                      ; preds = %if.else.136
  %120 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %child142 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %120, i32 0, i32 4
  %arrayidx143 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child142, i32 0, i64 0
  %121 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx143, align 8
  %122 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %cmp144 = icmp eq %struct.malloc_tree_chunk* %121, %122
  br i1 %cmp144, label %if.then.146, label %if.else.149

if.then.146:                                      ; preds = %if.then.141
  %123 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %124 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %child147 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %124, i32 0, i32 4
  %arrayidx148 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child147, i32 0, i64 0
  store %struct.malloc_tree_chunk* %123, %struct.malloc_tree_chunk** %arrayidx148, align 8
  br label %if.end.152

if.else.149:                                      ; preds = %if.then.141
  %125 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %126 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %child150 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %126, i32 0, i32 4
  %arrayidx151 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child150, i32 0, i64 1
  store %struct.malloc_tree_chunk* %125, %struct.malloc_tree_chunk** %arrayidx151, align 8
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.149, %if.then.146
  br label %if.end.154

if.else.153:                                      ; preds = %if.else.136
  call void @abort() #8
  unreachable

if.end.154:                                       ; preds = %if.end.152
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.end.135
  %127 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %cmp156 = icmp ne %struct.malloc_tree_chunk* %127, null
  br i1 %cmp156, label %if.then.158, label %if.end.199

if.then.158:                                      ; preds = %if.end.155
  %128 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %129 = bitcast %struct.malloc_tree_chunk* %128 to i8*
  %130 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp159 = icmp uge i8* %129, %130
  %conv160 = zext i1 %cmp159 to i32
  %conv161 = sext i32 %conv160 to i64
  %tobool162 = icmp ne i64 %conv161, 0
  br i1 %tobool162, label %if.then.163, label %if.else.197

if.then.163:                                      ; preds = %if.then.158
  %131 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %132 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %parent164 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %132, i32 0, i32 5
  store %struct.malloc_tree_chunk* %131, %struct.malloc_tree_chunk** %parent164, align 8
  %133 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %child165 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %133, i32 0, i32 4
  %arrayidx166 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child165, i32 0, i64 0
  %134 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx166, align 8
  store %struct.malloc_tree_chunk* %134, %struct.malloc_tree_chunk** %C0, align 8
  %cmp167 = icmp ne %struct.malloc_tree_chunk* %134, null
  br i1 %cmp167, label %if.then.169, label %if.end.180

if.then.169:                                      ; preds = %if.then.163
  %135 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C0, align 8
  %136 = bitcast %struct.malloc_tree_chunk* %135 to i8*
  %137 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp170 = icmp uge i8* %136, %137
  %conv171 = zext i1 %cmp170 to i32
  %conv172 = sext i32 %conv171 to i64
  %tobool173 = icmp ne i64 %conv172, 0
  br i1 %tobool173, label %if.then.174, label %if.else.178

if.then.174:                                      ; preds = %if.then.169
  %138 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C0, align 8
  %139 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %child175 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %139, i32 0, i32 4
  %arrayidx176 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child175, i32 0, i64 0
  store %struct.malloc_tree_chunk* %138, %struct.malloc_tree_chunk** %arrayidx176, align 8
  %140 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %141 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C0, align 8
  %parent177 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %141, i32 0, i32 5
  store %struct.malloc_tree_chunk* %140, %struct.malloc_tree_chunk** %parent177, align 8
  br label %if.end.179

if.else.178:                                      ; preds = %if.then.169
  call void @abort() #8
  unreachable

if.end.179:                                       ; preds = %if.then.174
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %if.then.163
  %142 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %child181 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %142, i32 0, i32 4
  %arrayidx182 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child181, i32 0, i64 1
  %143 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx182, align 8
  store %struct.malloc_tree_chunk* %143, %struct.malloc_tree_chunk** %C1, align 8
  %cmp183 = icmp ne %struct.malloc_tree_chunk* %143, null
  br i1 %cmp183, label %if.then.185, label %if.end.196

if.then.185:                                      ; preds = %if.end.180
  %144 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C1, align 8
  %145 = bitcast %struct.malloc_tree_chunk* %144 to i8*
  %146 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp186 = icmp uge i8* %145, %146
  %conv187 = zext i1 %cmp186 to i32
  %conv188 = sext i32 %conv187 to i64
  %tobool189 = icmp ne i64 %conv188, 0
  br i1 %tobool189, label %if.then.190, label %if.else.194

if.then.190:                                      ; preds = %if.then.185
  %147 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C1, align 8
  %148 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %child191 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %148, i32 0, i32 4
  %arrayidx192 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child191, i32 0, i64 1
  store %struct.malloc_tree_chunk* %147, %struct.malloc_tree_chunk** %arrayidx192, align 8
  %149 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %150 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C1, align 8
  %parent193 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %150, i32 0, i32 5
  store %struct.malloc_tree_chunk* %149, %struct.malloc_tree_chunk** %parent193, align 8
  br label %if.end.195

if.else.194:                                      ; preds = %if.then.185
  call void @abort() #8
  unreachable

if.end.195:                                       ; preds = %if.then.190
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.end.180
  br label %if.end.198

if.else.197:                                      ; preds = %if.then.158
  call void @abort() #8
  unreachable

if.end.198:                                       ; preds = %if.end.196
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %if.end.155
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.end.119
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.end.73
  br label %if.end.214

if.else.202:                                      ; preds = %if.then.36
  %151 = load %struct.malloc_chunk*, %struct.malloc_chunk** %next, align 8
  %head203 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %151, i32 0, i32 1
  %152 = load i64, i64* %head203, align 8
  %and204 = and i64 %152, 3
  %cmp205 = icmp eq i64 %and204, 3
  br i1 %cmp205, label %if.then.207, label %if.end.213

if.then.207:                                      ; preds = %if.else.202
  %153 = load i64, i64* %psize, align 8
  store i64 %153, i64* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 2), align 8
  %154 = load %struct.malloc_chunk*, %struct.malloc_chunk** %next, align 8
  %head208 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %154, i32 0, i32 1
  %155 = load i64, i64* %head208, align 8
  %and209 = and i64 %155, -2
  store i64 %and209, i64* %head208, align 8
  %156 = load i64, i64* %psize, align 8
  %or = or i64 %156, 1
  %157 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %head210 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %157, i32 0, i32 1
  store i64 %or, i64* %head210, align 8
  %158 = load i64, i64* %psize, align 8
  %159 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %160 = bitcast %struct.malloc_chunk* %159 to i8*
  %161 = load i64, i64* %psize, align 8
  %add.ptr211 = getelementptr i8, i8* %160, i64 %161
  %162 = bitcast i8* %add.ptr211 to %struct.malloc_chunk*
  %prev_foot212 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %162, i32 0, i32 0
  store i64 %158, i64* %prev_foot212, align 8
  br label %postaction

if.end.213:                                       ; preds = %if.else.202
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.end.201
  br label %if.end.216

if.else.215:                                      ; preds = %if.else
  br label %erroraction

if.end.216:                                       ; preds = %if.end.214
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %if.then.10
  %163 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %164 = bitcast %struct.malloc_chunk* %163 to i8*
  %165 = load %struct.malloc_chunk*, %struct.malloc_chunk** %next, align 8
  %166 = bitcast %struct.malloc_chunk* %165 to i8*
  %cmp219 = icmp ult i8* %164, %166
  br i1 %cmp219, label %land.rhs.221, label %land.end.225

land.rhs.221:                                     ; preds = %if.end.218
  %167 = load %struct.malloc_chunk*, %struct.malloc_chunk** %next, align 8
  %head222 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %167, i32 0, i32 1
  %168 = load i64, i64* %head222, align 8
  %and223 = and i64 %168, 1
  %tobool224 = icmp ne i64 %and223, 0
  br label %land.end.225

land.end.225:                                     ; preds = %land.rhs.221, %if.end.218
  %169 = phi i1 [ false, %if.end.218 ], [ %tobool224, %land.rhs.221 ]
  %land.ext226 = zext i1 %169 to i32
  %conv227 = sext i32 %land.ext226 to i64
  %tobool228 = icmp ne i64 %conv227, 0
  br i1 %tobool228, label %if.then.229, label %if.end.615

if.then.229:                                      ; preds = %land.end.225
  %170 = load %struct.malloc_chunk*, %struct.malloc_chunk** %next, align 8
  %head230 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %170, i32 0, i32 1
  %171 = load i64, i64* %head230, align 8
  %and231 = and i64 %171, 2
  %tobool232 = icmp ne i64 %and231, 0
  br i1 %tobool232, label %if.else.460, label %if.then.233

if.then.233:                                      ; preds = %if.then.229
  %172 = load %struct.malloc_chunk*, %struct.malloc_chunk** %next, align 8
  %173 = load %struct.malloc_chunk*, %struct.malloc_chunk** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 6), align 8
  %cmp234 = icmp eq %struct.malloc_chunk* %172, %173
  br i1 %cmp234, label %if.then.236, label %if.else.249

if.then.236:                                      ; preds = %if.then.233
  %174 = load i64, i64* %psize, align 8
  %175 = load i64, i64* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 3), align 8
  %add237 = add i64 %175, %174
  store i64 %add237, i64* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 3), align 8
  store i64 %add237, i64* %tsize, align 8
  %176 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  store %struct.malloc_chunk* %176, %struct.malloc_chunk** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 6), align 8
  %177 = load i64, i64* %tsize, align 8
  %or238 = or i64 %177, 1
  %178 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %head239 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %178, i32 0, i32 1
  store i64 %or238, i64* %head239, align 8
  %179 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %180 = load %struct.malloc_chunk*, %struct.malloc_chunk** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 5), align 8
  %cmp240 = icmp eq %struct.malloc_chunk* %179, %180
  br i1 %cmp240, label %if.then.242, label %if.end.243

if.then.242:                                      ; preds = %if.then.236
  store %struct.malloc_chunk* null, %struct.malloc_chunk** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 2), align 8
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.242, %if.then.236
  %181 = load i64, i64* %tsize, align 8
  %182 = load i64, i64* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 7), align 8
  %cmp244 = icmp ugt i64 %181, %182
  br i1 %cmp244, label %if.then.246, label %if.end.248

if.then.246:                                      ; preds = %if.end.243
  %call247 = call i32 @sys_trim(%struct.malloc_state* @_gm_, i64 0)
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.246, %if.end.243
  br label %postaction

if.else.249:                                      ; preds = %if.then.233
  %183 = load %struct.malloc_chunk*, %struct.malloc_chunk** %next, align 8
  %184 = load %struct.malloc_chunk*, %struct.malloc_chunk** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 5), align 8
  %cmp250 = icmp eq %struct.malloc_chunk* %183, %184
  br i1 %cmp250, label %if.then.252, label %if.else.258

if.then.252:                                      ; preds = %if.else.249
  %185 = load i64, i64* %psize, align 8
  %186 = load i64, i64* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 2), align 8
  %add253 = add i64 %186, %185
  store i64 %add253, i64* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 2), align 8
  store i64 %add253, i64* %dsize, align 8
  %187 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  store %struct.malloc_chunk* %187, %struct.malloc_chunk** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 5), align 8
  %188 = load i64, i64* %dsize, align 8
  %or254 = or i64 %188, 1
  %189 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %head255 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %189, i32 0, i32 1
  store i64 %or254, i64* %head255, align 8
  %190 = load i64, i64* %dsize, align 8
  %191 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %192 = bitcast %struct.malloc_chunk* %191 to i8*
  %193 = load i64, i64* %dsize, align 8
  %add.ptr256 = getelementptr i8, i8* %192, i64 %193
  %194 = bitcast i8* %add.ptr256 to %struct.malloc_chunk*
  %prev_foot257 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %194, i32 0, i32 0
  store i64 %190, i64* %prev_foot257, align 8
  br label %postaction

if.else.258:                                      ; preds = %if.else.249
  %195 = load %struct.malloc_chunk*, %struct.malloc_chunk** %next, align 8
  %head259 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %195, i32 0, i32 1
  %196 = load i64, i64* %head259, align 8
  %and260 = and i64 %196, -4
  store i64 %and260, i64* %nsize, align 8
  %197 = load i64, i64* %nsize, align 8
  %198 = load i64, i64* %psize, align 8
  %add261 = add i64 %198, %197
  store i64 %add261, i64* %psize, align 8
  %199 = load i64, i64* %nsize, align 8
  %shr262 = lshr i64 %199, 3
  %cmp263 = icmp ult i64 %shr262, 32
  br i1 %cmp263, label %if.then.265, label %if.else.308

if.then.265:                                      ; preds = %if.else.258
  %200 = load %struct.malloc_chunk*, %struct.malloc_chunk** %next, align 8
  %fd267 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %200, i32 0, i32 2
  %201 = load %struct.malloc_chunk*, %struct.malloc_chunk** %fd267, align 8
  store %struct.malloc_chunk* %201, %struct.malloc_chunk** %F266, align 8
  %202 = load %struct.malloc_chunk*, %struct.malloc_chunk** %next, align 8
  %bk269 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %202, i32 0, i32 3
  %203 = load %struct.malloc_chunk*, %struct.malloc_chunk** %bk269, align 8
  store %struct.malloc_chunk* %203, %struct.malloc_chunk** %B268, align 8
  %204 = load i64, i64* %nsize, align 8
  %shr271 = lshr i64 %204, 3
  %conv272 = trunc i64 %shr271 to i32
  store i32 %conv272, i32* %I270, align 4
  %205 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F266, align 8
  %206 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B268, align 8
  %cmp273 = icmp eq %struct.malloc_chunk* %205, %206
  br i1 %cmp273, label %if.then.275, label %if.else.279

if.then.275:                                      ; preds = %if.then.265
  %207 = load i32, i32* %I270, align 4
  %shl276 = shl i32 1, %207
  %neg277 = xor i32 %shl276, -1
  %208 = load i32, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 0), align 4
  %and278 = and i32 %208, %neg277
  store i32 %and278, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 0), align 4
  br label %if.end.307

if.else.279:                                      ; preds = %if.then.265
  %209 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F266, align 8
  %210 = load i32, i32* %I270, align 4
  %shl280 = shl i32 %210, 1
  %idxprom281 = zext i32 %shl280 to i64
  %arrayidx282 = getelementptr [66 x %struct.malloc_chunk*], [66 x %struct.malloc_chunk*]* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 9), i32 0, i64 %idxprom281
  %211 = bitcast %struct.malloc_chunk** %arrayidx282 to i8*
  %212 = bitcast i8* %211 to %struct.malloc_chunk*
  %cmp283 = icmp eq %struct.malloc_chunk* %209, %212
  br i1 %cmp283, label %land.rhs.288, label %lor.lhs.false.285

lor.lhs.false.285:                                ; preds = %if.else.279
  %213 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F266, align 8
  %214 = bitcast %struct.malloc_chunk* %213 to i8*
  %215 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp286 = icmp uge i8* %214, %215
  br i1 %cmp286, label %land.rhs.288, label %land.end.298

land.rhs.288:                                     ; preds = %lor.lhs.false.285, %if.else.279
  %216 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B268, align 8
  %217 = load i32, i32* %I270, align 4
  %shl289 = shl i32 %217, 1
  %idxprom290 = zext i32 %shl289 to i64
  %arrayidx291 = getelementptr [66 x %struct.malloc_chunk*], [66 x %struct.malloc_chunk*]* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 9), i32 0, i64 %idxprom290
  %218 = bitcast %struct.malloc_chunk** %arrayidx291 to i8*
  %219 = bitcast i8* %218 to %struct.malloc_chunk*
  %cmp292 = icmp eq %struct.malloc_chunk* %216, %219
  br i1 %cmp292, label %lor.end.297, label %lor.rhs.294

lor.rhs.294:                                      ; preds = %land.rhs.288
  %220 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B268, align 8
  %221 = bitcast %struct.malloc_chunk* %220 to i8*
  %222 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp295 = icmp uge i8* %221, %222
  br label %lor.end.297

lor.end.297:                                      ; preds = %lor.rhs.294, %land.rhs.288
  %223 = phi i1 [ true, %land.rhs.288 ], [ %cmp295, %lor.rhs.294 ]
  br label %land.end.298

land.end.298:                                     ; preds = %lor.end.297, %lor.lhs.false.285
  %224 = phi i1 [ false, %lor.lhs.false.285 ], [ %223, %lor.end.297 ]
  %land.ext299 = zext i1 %224 to i32
  %conv300 = sext i32 %land.ext299 to i64
  %tobool301 = icmp ne i64 %conv300, 0
  br i1 %tobool301, label %if.then.302, label %if.else.305

if.then.302:                                      ; preds = %land.end.298
  %225 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B268, align 8
  %226 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F266, align 8
  %bk303 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %226, i32 0, i32 3
  store %struct.malloc_chunk* %225, %struct.malloc_chunk** %bk303, align 8
  %227 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F266, align 8
  %228 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B268, align 8
  %fd304 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %228, i32 0, i32 2
  store %struct.malloc_chunk* %227, %struct.malloc_chunk** %fd304, align 8
  br label %if.end.306

if.else.305:                                      ; preds = %land.end.298
  call void @abort() #8
  unreachable

if.end.306:                                       ; preds = %if.then.302
  br label %if.end.307

if.end.307:                                       ; preds = %if.end.306, %if.then.275
  br label %if.end.449

if.else.308:                                      ; preds = %if.else.258
  %229 = load %struct.malloc_chunk*, %struct.malloc_chunk** %next, align 8
  %230 = bitcast %struct.malloc_chunk* %229 to %struct.malloc_tree_chunk*
  store %struct.malloc_tree_chunk* %230, %struct.malloc_tree_chunk** %TP309, align 8
  %231 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP309, align 8
  %parent311 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %231, i32 0, i32 5
  %232 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %parent311, align 8
  store %struct.malloc_tree_chunk* %232, %struct.malloc_tree_chunk** %XP310, align 8
  %233 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP309, align 8
  %bk313 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %233, i32 0, i32 3
  %234 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %bk313, align 8
  %235 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP309, align 8
  %cmp314 = icmp ne %struct.malloc_tree_chunk* %234, %235
  br i1 %cmp314, label %if.then.316, label %if.else.329

if.then.316:                                      ; preds = %if.else.308
  %236 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP309, align 8
  %fd318 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %236, i32 0, i32 2
  %237 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %fd318, align 8
  store %struct.malloc_tree_chunk* %237, %struct.malloc_tree_chunk** %F317, align 8
  %238 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP309, align 8
  %bk319 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %238, i32 0, i32 3
  %239 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %bk319, align 8
  store %struct.malloc_tree_chunk* %239, %struct.malloc_tree_chunk** %R312, align 8
  %240 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F317, align 8
  %241 = bitcast %struct.malloc_tree_chunk* %240 to i8*
  %242 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp320 = icmp uge i8* %241, %242
  %conv321 = zext i1 %cmp320 to i32
  %conv322 = sext i32 %conv321 to i64
  %tobool323 = icmp ne i64 %conv322, 0
  br i1 %tobool323, label %if.then.324, label %if.else.327

if.then.324:                                      ; preds = %if.then.316
  %243 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R312, align 8
  %244 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F317, align 8
  %bk325 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %244, i32 0, i32 3
  store %struct.malloc_tree_chunk* %243, %struct.malloc_tree_chunk** %bk325, align 8
  %245 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F317, align 8
  %246 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R312, align 8
  %fd326 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %246, i32 0, i32 2
  store %struct.malloc_tree_chunk* %245, %struct.malloc_tree_chunk** %fd326, align 8
  br label %if.end.328

if.else.327:                                      ; preds = %if.then.316
  call void @abort() #8
  unreachable

if.end.328:                                       ; preds = %if.then.324
  br label %if.end.363

if.else.329:                                      ; preds = %if.else.308
  %247 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP309, align 8
  %child331 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %247, i32 0, i32 4
  %arrayidx332 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child331, i32 0, i64 1
  store %struct.malloc_tree_chunk** %arrayidx332, %struct.malloc_tree_chunk*** %RP330, align 8
  %248 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx332, align 8
  store %struct.malloc_tree_chunk* %248, %struct.malloc_tree_chunk** %R312, align 8
  %cmp333 = icmp ne %struct.malloc_tree_chunk* %248, null
  br i1 %cmp333, label %if.then.340, label %lor.lhs.false.335

lor.lhs.false.335:                                ; preds = %if.else.329
  %249 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP309, align 8
  %child336 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %249, i32 0, i32 4
  %arrayidx337 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child336, i32 0, i64 0
  store %struct.malloc_tree_chunk** %arrayidx337, %struct.malloc_tree_chunk*** %RP330, align 8
  %250 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx337, align 8
  store %struct.malloc_tree_chunk* %250, %struct.malloc_tree_chunk** %R312, align 8
  %cmp338 = icmp ne %struct.malloc_tree_chunk* %250, null
  br i1 %cmp338, label %if.then.340, label %if.end.362

if.then.340:                                      ; preds = %lor.lhs.false.335, %if.else.329
  br label %while.cond.342

while.cond.342:                                   ; preds = %while.body.353, %if.then.340
  %251 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R312, align 8
  %child343 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %251, i32 0, i32 4
  %arrayidx344 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child343, i32 0, i64 1
  store %struct.malloc_tree_chunk** %arrayidx344, %struct.malloc_tree_chunk*** %CP341, align 8
  %252 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx344, align 8
  %cmp345 = icmp ne %struct.malloc_tree_chunk* %252, null
  br i1 %cmp345, label %lor.end.352, label %lor.rhs.347

lor.rhs.347:                                      ; preds = %while.cond.342
  %253 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R312, align 8
  %child348 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %253, i32 0, i32 4
  %arrayidx349 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child348, i32 0, i64 0
  store %struct.malloc_tree_chunk** %arrayidx349, %struct.malloc_tree_chunk*** %CP341, align 8
  %254 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx349, align 8
  %cmp350 = icmp ne %struct.malloc_tree_chunk* %254, null
  br label %lor.end.352

lor.end.352:                                      ; preds = %lor.rhs.347, %while.cond.342
  %255 = phi i1 [ true, %while.cond.342 ], [ %cmp350, %lor.rhs.347 ]
  br i1 %255, label %while.body.353, label %while.end.354

while.body.353:                                   ; preds = %lor.end.352
  %256 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %CP341, align 8
  store %struct.malloc_tree_chunk** %256, %struct.malloc_tree_chunk*** %RP330, align 8
  %257 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %256, align 8
  store %struct.malloc_tree_chunk* %257, %struct.malloc_tree_chunk** %R312, align 8
  br label %while.cond.342

while.end.354:                                    ; preds = %lor.end.352
  %258 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %RP330, align 8
  %259 = bitcast %struct.malloc_tree_chunk** %258 to i8*
  %260 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp355 = icmp uge i8* %259, %260
  %conv356 = zext i1 %cmp355 to i32
  %conv357 = sext i32 %conv356 to i64
  %tobool358 = icmp ne i64 %conv357, 0
  br i1 %tobool358, label %if.then.359, label %if.else.360

if.then.359:                                      ; preds = %while.end.354
  %261 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %RP330, align 8
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %261, align 8
  br label %if.end.361

if.else.360:                                      ; preds = %while.end.354
  call void @abort() #8
  unreachable

if.end.361:                                       ; preds = %if.then.359
  br label %if.end.362

if.end.362:                                       ; preds = %if.end.361, %lor.lhs.false.335
  br label %if.end.363

if.end.363:                                       ; preds = %if.end.362, %if.end.328
  %262 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP310, align 8
  %cmp364 = icmp ne %struct.malloc_tree_chunk* %262, null
  br i1 %cmp364, label %if.then.366, label %if.end.448

if.then.366:                                      ; preds = %if.end.363
  %263 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP309, align 8
  %index368 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %263, i32 0, i32 6
  %264 = load i32, i32* %index368, align 4
  %idxprom369 = zext i32 %264 to i64
  %arrayidx370 = getelementptr [32 x %struct.malloc_tree_chunk*], [32 x %struct.malloc_tree_chunk*]* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 10), i32 0, i64 %idxprom369
  store %struct.malloc_tree_chunk** %arrayidx370, %struct.malloc_tree_chunk*** %H367, align 8
  %265 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP309, align 8
  %266 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H367, align 8
  %267 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %266, align 8
  %cmp371 = icmp eq %struct.malloc_tree_chunk* %265, %267
  br i1 %cmp371, label %if.then.373, label %if.else.382

if.then.373:                                      ; preds = %if.then.366
  %268 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R312, align 8
  %269 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H367, align 8
  store %struct.malloc_tree_chunk* %268, %struct.malloc_tree_chunk** %269, align 8
  %cmp374 = icmp eq %struct.malloc_tree_chunk* %268, null
  br i1 %cmp374, label %if.then.376, label %if.end.381

if.then.376:                                      ; preds = %if.then.373
  %270 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP309, align 8
  %index377 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %270, i32 0, i32 6
  %271 = load i32, i32* %index377, align 4
  %shl378 = shl i32 1, %271
  %neg379 = xor i32 %shl378, -1
  %272 = load i32, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 1), align 4
  %and380 = and i32 %272, %neg379
  store i32 %and380, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 1), align 4
  br label %if.end.381

if.end.381:                                       ; preds = %if.then.376, %if.then.373
  br label %if.end.401

if.else.382:                                      ; preds = %if.then.366
  %273 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP310, align 8
  %274 = bitcast %struct.malloc_tree_chunk* %273 to i8*
  %275 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp383 = icmp uge i8* %274, %275
  %conv384 = zext i1 %cmp383 to i32
  %conv385 = sext i32 %conv384 to i64
  %tobool386 = icmp ne i64 %conv385, 0
  br i1 %tobool386, label %if.then.387, label %if.else.399

if.then.387:                                      ; preds = %if.else.382
  %276 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP310, align 8
  %child388 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %276, i32 0, i32 4
  %arrayidx389 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child388, i32 0, i64 0
  %277 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx389, align 8
  %278 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP309, align 8
  %cmp390 = icmp eq %struct.malloc_tree_chunk* %277, %278
  br i1 %cmp390, label %if.then.392, label %if.else.395

if.then.392:                                      ; preds = %if.then.387
  %279 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R312, align 8
  %280 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP310, align 8
  %child393 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %280, i32 0, i32 4
  %arrayidx394 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child393, i32 0, i64 0
  store %struct.malloc_tree_chunk* %279, %struct.malloc_tree_chunk** %arrayidx394, align 8
  br label %if.end.398

if.else.395:                                      ; preds = %if.then.387
  %281 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R312, align 8
  %282 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP310, align 8
  %child396 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %282, i32 0, i32 4
  %arrayidx397 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child396, i32 0, i64 1
  store %struct.malloc_tree_chunk* %281, %struct.malloc_tree_chunk** %arrayidx397, align 8
  br label %if.end.398

if.end.398:                                       ; preds = %if.else.395, %if.then.392
  br label %if.end.400

if.else.399:                                      ; preds = %if.else.382
  call void @abort() #8
  unreachable

if.end.400:                                       ; preds = %if.end.398
  br label %if.end.401

if.end.401:                                       ; preds = %if.end.400, %if.end.381
  %283 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R312, align 8
  %cmp402 = icmp ne %struct.malloc_tree_chunk* %283, null
  br i1 %cmp402, label %if.then.404, label %if.end.447

if.then.404:                                      ; preds = %if.end.401
  %284 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R312, align 8
  %285 = bitcast %struct.malloc_tree_chunk* %284 to i8*
  %286 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp405 = icmp uge i8* %285, %286
  %conv406 = zext i1 %cmp405 to i32
  %conv407 = sext i32 %conv406 to i64
  %tobool408 = icmp ne i64 %conv407, 0
  br i1 %tobool408, label %if.then.409, label %if.else.445

if.then.409:                                      ; preds = %if.then.404
  %287 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP310, align 8
  %288 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R312, align 8
  %parent412 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %288, i32 0, i32 5
  store %struct.malloc_tree_chunk* %287, %struct.malloc_tree_chunk** %parent412, align 8
  %289 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP309, align 8
  %child413 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %289, i32 0, i32 4
  %arrayidx414 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child413, i32 0, i64 0
  %290 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx414, align 8
  store %struct.malloc_tree_chunk* %290, %struct.malloc_tree_chunk** %C0410, align 8
  %cmp415 = icmp ne %struct.malloc_tree_chunk* %290, null
  br i1 %cmp415, label %if.then.417, label %if.end.428

if.then.417:                                      ; preds = %if.then.409
  %291 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C0410, align 8
  %292 = bitcast %struct.malloc_tree_chunk* %291 to i8*
  %293 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp418 = icmp uge i8* %292, %293
  %conv419 = zext i1 %cmp418 to i32
  %conv420 = sext i32 %conv419 to i64
  %tobool421 = icmp ne i64 %conv420, 0
  br i1 %tobool421, label %if.then.422, label %if.else.426

if.then.422:                                      ; preds = %if.then.417
  %294 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C0410, align 8
  %295 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R312, align 8
  %child423 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %295, i32 0, i32 4
  %arrayidx424 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child423, i32 0, i64 0
  store %struct.malloc_tree_chunk* %294, %struct.malloc_tree_chunk** %arrayidx424, align 8
  %296 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R312, align 8
  %297 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C0410, align 8
  %parent425 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %297, i32 0, i32 5
  store %struct.malloc_tree_chunk* %296, %struct.malloc_tree_chunk** %parent425, align 8
  br label %if.end.427

if.else.426:                                      ; preds = %if.then.417
  call void @abort() #8
  unreachable

if.end.427:                                       ; preds = %if.then.422
  br label %if.end.428

if.end.428:                                       ; preds = %if.end.427, %if.then.409
  %298 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP309, align 8
  %child429 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %298, i32 0, i32 4
  %arrayidx430 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child429, i32 0, i64 1
  %299 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx430, align 8
  store %struct.malloc_tree_chunk* %299, %struct.malloc_tree_chunk** %C1411, align 8
  %cmp431 = icmp ne %struct.malloc_tree_chunk* %299, null
  br i1 %cmp431, label %if.then.433, label %if.end.444

if.then.433:                                      ; preds = %if.end.428
  %300 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C1411, align 8
  %301 = bitcast %struct.malloc_tree_chunk* %300 to i8*
  %302 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp434 = icmp uge i8* %301, %302
  %conv435 = zext i1 %cmp434 to i32
  %conv436 = sext i32 %conv435 to i64
  %tobool437 = icmp ne i64 %conv436, 0
  br i1 %tobool437, label %if.then.438, label %if.else.442

if.then.438:                                      ; preds = %if.then.433
  %303 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C1411, align 8
  %304 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R312, align 8
  %child439 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %304, i32 0, i32 4
  %arrayidx440 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child439, i32 0, i64 1
  store %struct.malloc_tree_chunk* %303, %struct.malloc_tree_chunk** %arrayidx440, align 8
  %305 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R312, align 8
  %306 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C1411, align 8
  %parent441 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %306, i32 0, i32 5
  store %struct.malloc_tree_chunk* %305, %struct.malloc_tree_chunk** %parent441, align 8
  br label %if.end.443

if.else.442:                                      ; preds = %if.then.433
  call void @abort() #8
  unreachable

if.end.443:                                       ; preds = %if.then.438
  br label %if.end.444

if.end.444:                                       ; preds = %if.end.443, %if.end.428
  br label %if.end.446

if.else.445:                                      ; preds = %if.then.404
  call void @abort() #8
  unreachable

if.end.446:                                       ; preds = %if.end.444
  br label %if.end.447

if.end.447:                                       ; preds = %if.end.446, %if.end.401
  br label %if.end.448

if.end.448:                                       ; preds = %if.end.447, %if.end.363
  br label %if.end.449

if.end.449:                                       ; preds = %if.end.448, %if.end.307
  %307 = load i64, i64* %psize, align 8
  %or450 = or i64 %307, 1
  %308 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %head451 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %308, i32 0, i32 1
  store i64 %or450, i64* %head451, align 8
  %309 = load i64, i64* %psize, align 8
  %310 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %311 = bitcast %struct.malloc_chunk* %310 to i8*
  %312 = load i64, i64* %psize, align 8
  %add.ptr452 = getelementptr i8, i8* %311, i64 %312
  %313 = bitcast i8* %add.ptr452 to %struct.malloc_chunk*
  %prev_foot453 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %313, i32 0, i32 0
  store i64 %309, i64* %prev_foot453, align 8
  %314 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %315 = load %struct.malloc_chunk*, %struct.malloc_chunk** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 5), align 8
  %cmp454 = icmp eq %struct.malloc_chunk* %314, %315
  br i1 %cmp454, label %if.then.456, label %if.end.457

if.then.456:                                      ; preds = %if.end.449
  %316 = load i64, i64* %psize, align 8
  store i64 %316, i64* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 2), align 8
  br label %postaction

if.end.457:                                       ; preds = %if.end.449
  br label %if.end.458

if.end.458:                                       ; preds = %if.end.457
  br label %if.end.459

if.end.459:                                       ; preds = %if.end.458
  br label %if.end.467

if.else.460:                                      ; preds = %if.then.229
  %317 = load %struct.malloc_chunk*, %struct.malloc_chunk** %next, align 8
  %head461 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %317, i32 0, i32 1
  %318 = load i64, i64* %head461, align 8
  %and462 = and i64 %318, -2
  store i64 %and462, i64* %head461, align 8
  %319 = load i64, i64* %psize, align 8
  %or463 = or i64 %319, 1
  %320 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %head464 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %320, i32 0, i32 1
  store i64 %or463, i64* %head464, align 8
  %321 = load i64, i64* %psize, align 8
  %322 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %323 = bitcast %struct.malloc_chunk* %322 to i8*
  %324 = load i64, i64* %psize, align 8
  %add.ptr465 = getelementptr i8, i8* %323, i64 %324
  %325 = bitcast i8* %add.ptr465 to %struct.malloc_chunk*
  %prev_foot466 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %325, i32 0, i32 0
  store i64 %321, i64* %prev_foot466, align 8
  br label %if.end.467

if.end.467:                                       ; preds = %if.else.460, %if.end.459
  %326 = load i64, i64* %psize, align 8
  %shr468 = lshr i64 %326, 3
  %cmp469 = icmp ult i64 %shr468, 32
  br i1 %cmp469, label %if.then.471, label %if.else.501

if.then.471:                                      ; preds = %if.end.467
  %327 = load i64, i64* %psize, align 8
  %shr473 = lshr i64 %327, 3
  %conv474 = trunc i64 %shr473 to i32
  store i32 %conv474, i32* %I472, align 4
  %328 = load i32, i32* %I472, align 4
  %shl476 = shl i32 %328, 1
  %idxprom477 = zext i32 %shl476 to i64
  %arrayidx478 = getelementptr [66 x %struct.malloc_chunk*], [66 x %struct.malloc_chunk*]* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 9), i32 0, i64 %idxprom477
  %329 = bitcast %struct.malloc_chunk** %arrayidx478 to i8*
  %330 = bitcast i8* %329 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %330, %struct.malloc_chunk** %B475, align 8
  %331 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B475, align 8
  store %struct.malloc_chunk* %331, %struct.malloc_chunk** %F479, align 8
  %332 = load i32, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 0), align 4
  %333 = load i32, i32* %I472, align 4
  %shl480 = shl i32 1, %333
  %and481 = and i32 %332, %shl480
  %tobool482 = icmp ne i32 %and481, 0
  br i1 %tobool482, label %if.else.486, label %if.then.483

if.then.483:                                      ; preds = %if.then.471
  %334 = load i32, i32* %I472, align 4
  %shl484 = shl i32 1, %334
  %335 = load i32, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 0), align 4
  %or485 = or i32 %335, %shl484
  store i32 %or485, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 0), align 4
  br label %if.end.496

if.else.486:                                      ; preds = %if.then.471
  %336 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B475, align 8
  %fd487 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %336, i32 0, i32 2
  %337 = load %struct.malloc_chunk*, %struct.malloc_chunk** %fd487, align 8
  %338 = bitcast %struct.malloc_chunk* %337 to i8*
  %339 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp488 = icmp uge i8* %338, %339
  %conv489 = zext i1 %cmp488 to i32
  %conv490 = sext i32 %conv489 to i64
  %tobool491 = icmp ne i64 %conv490, 0
  br i1 %tobool491, label %if.then.492, label %if.else.494

if.then.492:                                      ; preds = %if.else.486
  %340 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B475, align 8
  %fd493 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %340, i32 0, i32 2
  %341 = load %struct.malloc_chunk*, %struct.malloc_chunk** %fd493, align 8
  store %struct.malloc_chunk* %341, %struct.malloc_chunk** %F479, align 8
  br label %if.end.495

if.else.494:                                      ; preds = %if.else.486
  call void @abort() #8
  unreachable

if.end.495:                                       ; preds = %if.then.492
  br label %if.end.496

if.end.496:                                       ; preds = %if.end.495, %if.then.483
  %342 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %343 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B475, align 8
  %fd497 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %343, i32 0, i32 2
  store %struct.malloc_chunk* %342, %struct.malloc_chunk** %fd497, align 8
  %344 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %345 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F479, align 8
  %bk498 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %345, i32 0, i32 3
  store %struct.malloc_chunk* %344, %struct.malloc_chunk** %bk498, align 8
  %346 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F479, align 8
  %347 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %fd499 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %347, i32 0, i32 2
  store %struct.malloc_chunk* %346, %struct.malloc_chunk** %fd499, align 8
  %348 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B475, align 8
  %349 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %bk500 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %349, i32 0, i32 3
  store %struct.malloc_chunk* %348, %struct.malloc_chunk** %bk500, align 8
  br label %if.end.614

if.else.501:                                      ; preds = %if.end.467
  %350 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %351 = bitcast %struct.malloc_chunk* %350 to %struct.malloc_tree_chunk*
  store %struct.malloc_tree_chunk* %351, %struct.malloc_tree_chunk** %TP502, align 8
  %352 = load i64, i64* %psize, align 8
  %shr505 = lshr i64 %352, 8
  store i64 %shr505, i64* %X, align 8
  %353 = load i64, i64* %X, align 8
  %cmp506 = icmp eq i64 %353, 0
  br i1 %cmp506, label %if.then.508, label %if.else.509

if.then.508:                                      ; preds = %if.else.501
  store i32 0, i32* %I504, align 4
  br label %if.end.540

if.else.509:                                      ; preds = %if.else.501
  %354 = load i64, i64* %X, align 8
  %cmp510 = icmp ugt i64 %354, 65535
  br i1 %cmp510, label %if.then.512, label %if.else.513

if.then.512:                                      ; preds = %if.else.509
  store i32 31, i32* %I504, align 4
  br label %if.end.539

if.else.513:                                      ; preds = %if.else.509
  %355 = load i64, i64* %X, align 8
  %conv514 = trunc i64 %355 to i32
  store i32 %conv514, i32* %Y, align 4
  %356 = load i32, i32* %Y, align 4
  %sub515 = sub i32 %356, 256
  %shr516 = lshr i32 %sub515, 16
  %and517 = and i32 %shr516, 8
  store i32 %and517, i32* %N, align 4
  %357 = load i32, i32* %N, align 4
  %358 = load i32, i32* %Y, align 4
  %shl518 = shl i32 %358, %357
  store i32 %shl518, i32* %Y, align 4
  %sub519 = sub i32 %shl518, 4096
  %shr520 = lshr i32 %sub519, 16
  %and521 = and i32 %shr520, 4
  store i32 %and521, i32* %K, align 4
  %359 = load i32, i32* %K, align 4
  %360 = load i32, i32* %N, align 4
  %add522 = add i32 %360, %359
  store i32 %add522, i32* %N, align 4
  %361 = load i32, i32* %K, align 4
  %362 = load i32, i32* %Y, align 4
  %shl523 = shl i32 %362, %361
  store i32 %shl523, i32* %Y, align 4
  %sub524 = sub i32 %shl523, 16384
  %shr525 = lshr i32 %sub524, 16
  %and526 = and i32 %shr525, 2
  store i32 %and526, i32* %K, align 4
  %363 = load i32, i32* %N, align 4
  %add527 = add i32 %363, %and526
  store i32 %add527, i32* %N, align 4
  %364 = load i32, i32* %N, align 4
  %sub528 = sub i32 14, %364
  %365 = load i32, i32* %K, align 4
  %366 = load i32, i32* %Y, align 4
  %shl529 = shl i32 %366, %365
  store i32 %shl529, i32* %Y, align 4
  %shr530 = lshr i32 %shl529, 15
  %add531 = add i32 %sub528, %shr530
  store i32 %add531, i32* %K, align 4
  %367 = load i32, i32* %K, align 4
  %shl532 = shl i32 %367, 1
  %conv533 = zext i32 %shl532 to i64
  %368 = load i64, i64* %psize, align 8
  %369 = load i32, i32* %K, align 4
  %add534 = add i32 %369, 7
  %sh_prom = zext i32 %add534 to i64
  %shr535 = lshr i64 %368, %sh_prom
  %and536 = and i64 %shr535, 1
  %add537 = add i64 %conv533, %and536
  %conv538 = trunc i64 %add537 to i32
  store i32 %conv538, i32* %I504, align 4
  br label %if.end.539

if.end.539:                                       ; preds = %if.else.513, %if.then.512
  br label %if.end.540

if.end.540:                                       ; preds = %if.end.539, %if.then.508
  %370 = load i32, i32* %I504, align 4
  %idxprom541 = zext i32 %370 to i64
  %arrayidx542 = getelementptr [32 x %struct.malloc_tree_chunk*], [32 x %struct.malloc_tree_chunk*]* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 10), i32 0, i64 %idxprom541
  store %struct.malloc_tree_chunk** %arrayidx542, %struct.malloc_tree_chunk*** %H503, align 8
  %371 = load i32, i32* %I504, align 4
  %372 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP502, align 8
  %index543 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %372, i32 0, i32 6
  store i32 %371, i32* %index543, align 4
  %373 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP502, align 8
  %child544 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %373, i32 0, i32 4
  %arrayidx545 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child544, i32 0, i64 1
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %arrayidx545, align 8
  %374 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP502, align 8
  %child546 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %374, i32 0, i32 4
  %arrayidx547 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child546, i32 0, i64 0
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %arrayidx547, align 8
  %375 = load i32, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 1), align 4
  %376 = load i32, i32* %I504, align 4
  %shl548 = shl i32 1, %376
  %and549 = and i32 %375, %shl548
  %tobool550 = icmp ne i32 %and549, 0
  br i1 %tobool550, label %if.else.557, label %if.then.551

if.then.551:                                      ; preds = %if.end.540
  %377 = load i32, i32* %I504, align 4
  %shl552 = shl i32 1, %377
  %378 = load i32, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 1), align 4
  %or553 = or i32 %378, %shl552
  store i32 %or553, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 1), align 4
  %379 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP502, align 8
  %380 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H503, align 8
  store %struct.malloc_tree_chunk* %379, %struct.malloc_tree_chunk** %380, align 8
  %381 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H503, align 8
  %382 = bitcast %struct.malloc_tree_chunk** %381 to %struct.malloc_tree_chunk*
  %383 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP502, align 8
  %parent554 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %383, i32 0, i32 5
  store %struct.malloc_tree_chunk* %382, %struct.malloc_tree_chunk** %parent554, align 8
  %384 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP502, align 8
  %385 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP502, align 8
  %bk555 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %385, i32 0, i32 3
  store %struct.malloc_tree_chunk* %384, %struct.malloc_tree_chunk** %bk555, align 8
  %386 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP502, align 8
  %fd556 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %386, i32 0, i32 2
  store %struct.malloc_tree_chunk* %384, %struct.malloc_tree_chunk** %fd556, align 8
  br label %if.end.613

if.else.557:                                      ; preds = %if.end.540
  %387 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H503, align 8
  %388 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %387, align 8
  store %struct.malloc_tree_chunk* %388, %struct.malloc_tree_chunk** %T, align 8
  %389 = load i64, i64* %psize, align 8
  %390 = load i32, i32* %I504, align 4
  %cmp559 = icmp eq i32 %390, 31
  br i1 %cmp559, label %cond.true.561, label %cond.false.562

cond.true.561:                                    ; preds = %if.else.557
  br label %cond.end

cond.false.562:                                   ; preds = %if.else.557
  %391 = load i32, i32* %I504, align 4
  %shr563 = lshr i32 %391, 1
  %add564 = add i32 %shr563, 8
  %sub565 = sub i32 %add564, 2
  %conv566 = zext i32 %sub565 to i64
  %sub567 = sub i64 63, %conv566
  br label %cond.end

cond.end:                                         ; preds = %cond.false.562, %cond.true.561
  %cond = phi i64 [ 0, %cond.true.561 ], [ %sub567, %cond.false.562 ]
  %shl568 = shl i64 %389, %cond
  store i64 %shl568, i64* %K558, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.612, %cond.end
  %392 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %head569 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %392, i32 0, i32 1
  %393 = load i64, i64* %head569, align 8
  %and570 = and i64 %393, -4
  %394 = load i64, i64* %psize, align 8
  %cmp571 = icmp ne i64 %and570, %394
  br i1 %cmp571, label %if.then.573, label %if.else.593

if.then.573:                                      ; preds = %for.cond
  %395 = load i64, i64* %K558, align 8
  %shr574 = lshr i64 %395, 63
  %and575 = and i64 %shr574, 1
  %396 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %child576 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %396, i32 0, i32 4
  %arrayidx577 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child576, i32 0, i64 %and575
  store %struct.malloc_tree_chunk** %arrayidx577, %struct.malloc_tree_chunk*** %C, align 8
  %397 = load i64, i64* %K558, align 8
  %shl578 = shl i64 %397, 1
  store i64 %shl578, i64* %K558, align 8
  %398 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %C, align 8
  %399 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %398, align 8
  %cmp579 = icmp ne %struct.malloc_tree_chunk* %399, null
  br i1 %cmp579, label %if.then.581, label %if.else.582

if.then.581:                                      ; preds = %if.then.573
  %400 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %C, align 8
  %401 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %400, align 8
  store %struct.malloc_tree_chunk* %401, %struct.malloc_tree_chunk** %T, align 8
  br label %if.end.592

if.else.582:                                      ; preds = %if.then.573
  %402 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %C, align 8
  %403 = bitcast %struct.malloc_tree_chunk** %402 to i8*
  %404 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp583 = icmp uge i8* %403, %404
  %conv584 = zext i1 %cmp583 to i32
  %conv585 = sext i32 %conv584 to i64
  %tobool586 = icmp ne i64 %conv585, 0
  br i1 %tobool586, label %if.then.587, label %if.else.591

if.then.587:                                      ; preds = %if.else.582
  %405 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP502, align 8
  %406 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %C, align 8
  store %struct.malloc_tree_chunk* %405, %struct.malloc_tree_chunk** %406, align 8
  %407 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %408 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP502, align 8
  %parent588 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %408, i32 0, i32 5
  store %struct.malloc_tree_chunk* %407, %struct.malloc_tree_chunk** %parent588, align 8
  %409 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP502, align 8
  %410 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP502, align 8
  %bk589 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %410, i32 0, i32 3
  store %struct.malloc_tree_chunk* %409, %struct.malloc_tree_chunk** %bk589, align 8
  %411 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP502, align 8
  %fd590 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %411, i32 0, i32 2
  store %struct.malloc_tree_chunk* %409, %struct.malloc_tree_chunk** %fd590, align 8
  br label %for.end

if.else.591:                                      ; preds = %if.else.582
  call void @abort() #8
  unreachable

if.end.592:                                       ; preds = %if.then.581
  br label %if.end.612

if.else.593:                                      ; preds = %for.cond
  %412 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %fd595 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %412, i32 0, i32 2
  %413 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %fd595, align 8
  store %struct.malloc_tree_chunk* %413, %struct.malloc_tree_chunk** %F594, align 8
  %414 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %415 = bitcast %struct.malloc_tree_chunk* %414 to i8*
  %416 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp596 = icmp uge i8* %415, %416
  br i1 %cmp596, label %land.rhs.598, label %land.end.601

land.rhs.598:                                     ; preds = %if.else.593
  %417 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F594, align 8
  %418 = bitcast %struct.malloc_tree_chunk* %417 to i8*
  %419 = load i8*, i8** getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 4), align 8
  %cmp599 = icmp uge i8* %418, %419
  br label %land.end.601

land.end.601:                                     ; preds = %land.rhs.598, %if.else.593
  %420 = phi i1 [ false, %if.else.593 ], [ %cmp599, %land.rhs.598 ]
  %land.ext602 = zext i1 %420 to i32
  %conv603 = sext i32 %land.ext602 to i64
  %tobool604 = icmp ne i64 %conv603, 0
  br i1 %tobool604, label %if.then.605, label %if.else.611

if.then.605:                                      ; preds = %land.end.601
  %421 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP502, align 8
  %422 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F594, align 8
  %bk606 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %422, i32 0, i32 3
  store %struct.malloc_tree_chunk* %421, %struct.malloc_tree_chunk** %bk606, align 8
  %423 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %fd607 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %423, i32 0, i32 2
  store %struct.malloc_tree_chunk* %421, %struct.malloc_tree_chunk** %fd607, align 8
  %424 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F594, align 8
  %425 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP502, align 8
  %fd608 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %425, i32 0, i32 2
  store %struct.malloc_tree_chunk* %424, %struct.malloc_tree_chunk** %fd608, align 8
  %426 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %427 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP502, align 8
  %bk609 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %427, i32 0, i32 3
  store %struct.malloc_tree_chunk* %426, %struct.malloc_tree_chunk** %bk609, align 8
  %428 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP502, align 8
  %parent610 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %428, i32 0, i32 5
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %parent610, align 8
  br label %for.end

if.else.611:                                      ; preds = %land.end.601
  call void @abort() #8
  unreachable

if.end.612:                                       ; preds = %if.end.592
  br label %for.cond

for.end:                                          ; preds = %if.then.605, %if.then.587
  br label %if.end.613

if.end.613:                                       ; preds = %for.end, %if.then.551
  br label %if.end.614

if.end.614:                                       ; preds = %if.end.613, %if.end.496
  br label %postaction

if.end.615:                                       ; preds = %land.end.225
  br label %if.end.616

if.end.616:                                       ; preds = %if.end.615, %land.end
  br label %erroraction

erroraction:                                      ; preds = %if.end.616, %if.else.215
  call void @abort() #8
  unreachable

postaction:                                       ; preds = %if.end.614, %if.then.456, %if.then.252, %if.end.248, %if.then.207, %if.end
  %429 = load i32, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 13), align 4
  %and617 = and i32 %429, 2
  %tobool618 = icmp ne i32 %and617, 0
  br i1 %tobool618, label %if.then.619, label %if.end.621

if.then.619:                                      ; preds = %postaction
  %call620 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 14)) #7
  br label %if.end.621

if.end.621:                                       ; preds = %if.then.619, %postaction
  br label %if.end.622

if.end.622:                                       ; preds = %if.end.621, %cond.false, %cond.true
  br label %if.end.623

if.end.623:                                       ; preds = %if.end.622, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @init_mparams() #1 {
entry:
  %s = alloca i64, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 1), align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  store i64 -1, i64* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 3), align 8
  store i64 2097152, i64* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 4), align 8
  store i32 7, i32* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 5), align 4
  store i64 1482184792, i64* %s, align 8
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @magic_init_mutex) #7
  %1 = load i64, i64* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 0), align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %2 = load i64, i64* %s, align 8
  store i64 %2, i64* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 0), align 8
  %call3 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 14), %union.pthread_mutexattr_t* null) #7
  %3 = load i32, i32* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 5), align 4
  store i32 %3, i32* getelementptr inbounds (%struct.malloc_state, %struct.malloc_state* @_gm_, i32 0, i32 13), align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %call4 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @magic_init_mutex) #7
  %call5 = call i64 @sysconf(i32 30) #7
  store i64 %call5, i64* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 1), align 8
  %call6 = call i64 @sysconf(i32 30) #7
  %cmp7 = icmp ne i64 %call6, 0
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %call8 = call i64 @sysconf(i32 30) #7
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 1), align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call8, %cond.true ], [ %4, %cond.false ]
  store i64 %cond, i64* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 2), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 2), align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 2), align 8
  %sub = sub i64 %6, 1
  %and = and i64 %5, %sub
  %cmp9 = icmp ne i64 %and, 0
  br i1 %cmp9, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %7 = load i64, i64* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 1), align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 1), align 8
  %sub10 = sub i64 %8, 1
  %and11 = and i64 %7, %sub10
  %cmp12 = icmp ne i64 %and11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false, %cond.end
  call void @abort() #8
  unreachable

if.end.14:                                        ; preds = %lor.lhs.false
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: nounwind readnone
declare i32 @ffs(i32) #4

; Function Attrs: nounwind uwtable
define internal i8* @tmalloc_small(%struct.malloc_state* %m, i64 %nb) #1 {
entry:
  %m.addr = alloca %struct.malloc_state*, align 8
  %nb.addr = alloca i64, align 8
  %t = alloca %struct.malloc_tree_chunk*, align 8
  %v = alloca %struct.malloc_tree_chunk*, align 8
  %rsize = alloca i64, align 8
  %i = alloca i32, align 4
  %leastbit = alloca i32, align 4
  %trem = alloca i64, align 8
  %r = alloca %struct.malloc_chunk*, align 8
  %XP = alloca %struct.malloc_tree_chunk*, align 8
  %R = alloca %struct.malloc_tree_chunk*, align 8
  %F = alloca %struct.malloc_tree_chunk*, align 8
  %RP = alloca %struct.malloc_tree_chunk**, align 8
  %CP = alloca %struct.malloc_tree_chunk**, align 8
  %H = alloca %struct.malloc_tree_chunk**, align 8
  %C0 = alloca %struct.malloc_tree_chunk*, align 8
  %C1 = alloca %struct.malloc_tree_chunk*, align 8
  %DVS = alloca i64, align 8
  %DV = alloca %struct.malloc_chunk*, align 8
  %I = alloca i32, align 4
  %B = alloca %struct.malloc_chunk*, align 8
  %F175 = alloca %struct.malloc_chunk*, align 8
  store %struct.malloc_state* %m, %struct.malloc_state** %m.addr, align 8
  store i64 %nb, i64* %nb.addr, align 8
  %0 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treemap = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %0, i32 0, i32 1
  %1 = load i32, i32* %treemap, align 4
  %2 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treemap1 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %2, i32 0, i32 1
  %3 = load i32, i32* %treemap1, align 4
  %sub = sub i32 0, %3
  %and = and i32 %1, %sub
  store i32 %and, i32* %leastbit, align 4
  %4 = load i32, i32* %leastbit, align 4
  %call = call i32 @ffs(i32 %4) #9
  %sub2 = sub i32 %call, 1
  store i32 %sub2, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treebins = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %6, i32 0, i32 10
  %arrayidx = getelementptr [32 x %struct.malloc_tree_chunk*], [32 x %struct.malloc_tree_chunk*]* %treebins, i32 0, i64 %idxprom
  %7 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx, align 8
  store %struct.malloc_tree_chunk* %7, %struct.malloc_tree_chunk** %t, align 8
  store %struct.malloc_tree_chunk* %7, %struct.malloc_tree_chunk** %v, align 8
  %8 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %t, align 8
  %head = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %8, i32 0, i32 1
  %9 = load i64, i64* %head, align 8
  %and3 = and i64 %9, -4
  %10 = load i64, i64* %nb.addr, align 8
  %sub4 = sub i64 %and3, %10
  store i64 %sub4, i64* %rsize, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %11 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %t, align 8
  %child = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %11, i32 0, i32 4
  %arrayidx5 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child, i32 0, i64 0
  %12 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx5, align 8
  %cmp = icmp ne %struct.malloc_tree_chunk* %12, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.cond
  %13 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %t, align 8
  %child6 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %13, i32 0, i32 4
  %arrayidx7 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child6, i32 0, i64 0
  %14 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx7, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.cond
  %15 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %t, align 8
  %child8 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %15, i32 0, i32 4
  %arrayidx9 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child8, i32 0, i64 1
  %16 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx9, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.malloc_tree_chunk* [ %14, %cond.true ], [ %16, %cond.false ]
  store %struct.malloc_tree_chunk* %cond, %struct.malloc_tree_chunk** %t, align 8
  %cmp10 = icmp ne %struct.malloc_tree_chunk* %cond, null
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end
  %17 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %t, align 8
  %head11 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %17, i32 0, i32 1
  %18 = load i64, i64* %head11, align 8
  %and12 = and i64 %18, -4
  %19 = load i64, i64* %nb.addr, align 8
  %sub13 = sub i64 %and12, %19
  store i64 %sub13, i64* %trem, align 8
  %20 = load i64, i64* %trem, align 8
  %21 = load i64, i64* %rsize, align 8
  %cmp14 = icmp ult i64 %20, %21
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %22 = load i64, i64* %trem, align 8
  store i64 %22, i64* %rsize, align 8
  %23 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %t, align 8
  store %struct.malloc_tree_chunk* %23, %struct.malloc_tree_chunk** %v, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %cond.end
  %24 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %25 = bitcast %struct.malloc_tree_chunk* %24 to i8*
  %26 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %26, i32 0, i32 4
  %27 = load i8*, i8** %least_addr, align 8
  %cmp15 = icmp uge i8* %25, %27
  %conv = zext i1 %cmp15 to i32
  %conv16 = sext i32 %conv to i64
  %tobool = icmp ne i64 %conv16, 0
  br i1 %tobool, label %if.then.17, label %if.end.205

if.then.17:                                       ; preds = %while.end
  %28 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %29 = bitcast %struct.malloc_tree_chunk* %28 to i8*
  %30 = load i64, i64* %nb.addr, align 8
  %add.ptr = getelementptr i8, i8* %29, i64 %30
  %31 = bitcast i8* %add.ptr to %struct.malloc_chunk*
  store %struct.malloc_chunk* %31, %struct.malloc_chunk** %r, align 8
  %32 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %33 = bitcast %struct.malloc_tree_chunk* %32 to i8*
  %34 = load %struct.malloc_chunk*, %struct.malloc_chunk** %r, align 8
  %35 = bitcast %struct.malloc_chunk* %34 to i8*
  %cmp18 = icmp ult i8* %33, %35
  %conv19 = zext i1 %cmp18 to i32
  %conv20 = sext i32 %conv19 to i64
  %tobool21 = icmp ne i64 %conv20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.204

if.then.22:                                       ; preds = %if.then.17
  %36 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %parent = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %36, i32 0, i32 5
  %37 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %parent, align 8
  store %struct.malloc_tree_chunk* %37, %struct.malloc_tree_chunk** %XP, align 8
  %38 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %bk = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %38, i32 0, i32 3
  %39 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %bk, align 8
  %40 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %cmp23 = icmp ne %struct.malloc_tree_chunk* %39, %40
  br i1 %cmp23, label %if.then.25, label %if.else.36

if.then.25:                                       ; preds = %if.then.22
  %41 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %fd = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %41, i32 0, i32 2
  %42 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %fd, align 8
  store %struct.malloc_tree_chunk* %42, %struct.malloc_tree_chunk** %F, align 8
  %43 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %bk26 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %43, i32 0, i32 3
  %44 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %bk26, align 8
  store %struct.malloc_tree_chunk* %44, %struct.malloc_tree_chunk** %R, align 8
  %45 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F, align 8
  %46 = bitcast %struct.malloc_tree_chunk* %45 to i8*
  %47 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr27 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %47, i32 0, i32 4
  %48 = load i8*, i8** %least_addr27, align 8
  %cmp28 = icmp uge i8* %46, %48
  %conv29 = zext i1 %cmp28 to i32
  %conv30 = sext i32 %conv29 to i64
  %tobool31 = icmp ne i64 %conv30, 0
  br i1 %tobool31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %if.then.25
  %49 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %50 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F, align 8
  %bk33 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %50, i32 0, i32 3
  store %struct.malloc_tree_chunk* %49, %struct.malloc_tree_chunk** %bk33, align 8
  %51 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F, align 8
  %52 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %fd34 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %52, i32 0, i32 2
  store %struct.malloc_tree_chunk* %51, %struct.malloc_tree_chunk** %fd34, align 8
  br label %if.end.35

if.else:                                          ; preds = %if.then.25
  call void @abort() #8
  unreachable

if.end.35:                                        ; preds = %if.then.32
  br label %if.end.66

if.else.36:                                       ; preds = %if.then.22
  %53 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %child37 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %53, i32 0, i32 4
  %arrayidx38 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child37, i32 0, i64 1
  store %struct.malloc_tree_chunk** %arrayidx38, %struct.malloc_tree_chunk*** %RP, align 8
  %54 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx38, align 8
  store %struct.malloc_tree_chunk* %54, %struct.malloc_tree_chunk** %R, align 8
  %cmp39 = icmp ne %struct.malloc_tree_chunk* %54, null
  br i1 %cmp39, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.36
  %55 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %child41 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %55, i32 0, i32 4
  %arrayidx42 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child41, i32 0, i64 0
  store %struct.malloc_tree_chunk** %arrayidx42, %struct.malloc_tree_chunk*** %RP, align 8
  %56 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx42, align 8
  store %struct.malloc_tree_chunk* %56, %struct.malloc_tree_chunk** %R, align 8
  %cmp43 = icmp ne %struct.malloc_tree_chunk* %56, null
  br i1 %cmp43, label %if.then.45, label %if.end.65

if.then.45:                                       ; preds = %lor.lhs.false, %if.else.36
  br label %while.cond.46

while.cond.46:                                    ; preds = %while.body.55, %if.then.45
  %57 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %child47 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %57, i32 0, i32 4
  %arrayidx48 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child47, i32 0, i64 1
  store %struct.malloc_tree_chunk** %arrayidx48, %struct.malloc_tree_chunk*** %CP, align 8
  %58 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx48, align 8
  %cmp49 = icmp ne %struct.malloc_tree_chunk* %58, null
  br i1 %cmp49, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.46
  %59 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %child51 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %59, i32 0, i32 4
  %arrayidx52 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child51, i32 0, i64 0
  store %struct.malloc_tree_chunk** %arrayidx52, %struct.malloc_tree_chunk*** %CP, align 8
  %60 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx52, align 8
  %cmp53 = icmp ne %struct.malloc_tree_chunk* %60, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.46
  %61 = phi i1 [ true, %while.cond.46 ], [ %cmp53, %lor.rhs ]
  br i1 %61, label %while.body.55, label %while.end.56

while.body.55:                                    ; preds = %lor.end
  %62 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %CP, align 8
  store %struct.malloc_tree_chunk** %62, %struct.malloc_tree_chunk*** %RP, align 8
  %63 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %62, align 8
  store %struct.malloc_tree_chunk* %63, %struct.malloc_tree_chunk** %R, align 8
  br label %while.cond.46

while.end.56:                                     ; preds = %lor.end
  %64 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %RP, align 8
  %65 = bitcast %struct.malloc_tree_chunk** %64 to i8*
  %66 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr57 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %66, i32 0, i32 4
  %67 = load i8*, i8** %least_addr57, align 8
  %cmp58 = icmp uge i8* %65, %67
  %conv59 = zext i1 %cmp58 to i32
  %conv60 = sext i32 %conv59 to i64
  %tobool61 = icmp ne i64 %conv60, 0
  br i1 %tobool61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %while.end.56
  %68 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %RP, align 8
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %68, align 8
  br label %if.end.64

if.else.63:                                       ; preds = %while.end.56
  call void @abort() #8
  unreachable

if.end.64:                                        ; preds = %if.then.62
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %lor.lhs.false
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.35
  %69 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %cmp67 = icmp ne %struct.malloc_tree_chunk* %69, null
  br i1 %cmp67, label %if.then.69, label %if.end.151

if.then.69:                                       ; preds = %if.end.66
  %70 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %index = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %70, i32 0, i32 6
  %71 = load i32, i32* %index, align 4
  %idxprom70 = zext i32 %71 to i64
  %72 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treebins71 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %72, i32 0, i32 10
  %arrayidx72 = getelementptr [32 x %struct.malloc_tree_chunk*], [32 x %struct.malloc_tree_chunk*]* %treebins71, i32 0, i64 %idxprom70
  store %struct.malloc_tree_chunk** %arrayidx72, %struct.malloc_tree_chunk*** %H, align 8
  %73 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %74 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H, align 8
  %75 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %74, align 8
  %cmp73 = icmp eq %struct.malloc_tree_chunk* %73, %75
  br i1 %cmp73, label %if.then.75, label %if.else.83

if.then.75:                                       ; preds = %if.then.69
  %76 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %77 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H, align 8
  store %struct.malloc_tree_chunk* %76, %struct.malloc_tree_chunk** %77, align 8
  %cmp76 = icmp eq %struct.malloc_tree_chunk* %76, null
  br i1 %cmp76, label %if.then.78, label %if.end.82

if.then.78:                                       ; preds = %if.then.75
  %78 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %index79 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %78, i32 0, i32 6
  %79 = load i32, i32* %index79, align 4
  %shl = shl i32 1, %79
  %neg = xor i32 %shl, -1
  %80 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treemap80 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %80, i32 0, i32 1
  %81 = load i32, i32* %treemap80, align 4
  %and81 = and i32 %81, %neg
  store i32 %and81, i32* %treemap80, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.78, %if.then.75
  br label %if.end.103

if.else.83:                                       ; preds = %if.then.69
  %82 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %83 = bitcast %struct.malloc_tree_chunk* %82 to i8*
  %84 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr84 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %84, i32 0, i32 4
  %85 = load i8*, i8** %least_addr84, align 8
  %cmp85 = icmp uge i8* %83, %85
  %conv86 = zext i1 %cmp85 to i32
  %conv87 = sext i32 %conv86 to i64
  %tobool88 = icmp ne i64 %conv87, 0
  br i1 %tobool88, label %if.then.89, label %if.else.101

if.then.89:                                       ; preds = %if.else.83
  %86 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %child90 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %86, i32 0, i32 4
  %arrayidx91 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child90, i32 0, i64 0
  %87 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx91, align 8
  %88 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %cmp92 = icmp eq %struct.malloc_tree_chunk* %87, %88
  br i1 %cmp92, label %if.then.94, label %if.else.97

if.then.94:                                       ; preds = %if.then.89
  %89 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %90 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %child95 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %90, i32 0, i32 4
  %arrayidx96 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child95, i32 0, i64 0
  store %struct.malloc_tree_chunk* %89, %struct.malloc_tree_chunk** %arrayidx96, align 8
  br label %if.end.100

if.else.97:                                       ; preds = %if.then.89
  %91 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %92 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %child98 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %92, i32 0, i32 4
  %arrayidx99 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child98, i32 0, i64 1
  store %struct.malloc_tree_chunk* %91, %struct.malloc_tree_chunk** %arrayidx99, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.97, %if.then.94
  br label %if.end.102

if.else.101:                                      ; preds = %if.else.83
  call void @abort() #8
  unreachable

if.end.102:                                       ; preds = %if.end.100
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.82
  %93 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %cmp104 = icmp ne %struct.malloc_tree_chunk* %93, null
  br i1 %cmp104, label %if.then.106, label %if.end.150

if.then.106:                                      ; preds = %if.end.103
  %94 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %95 = bitcast %struct.malloc_tree_chunk* %94 to i8*
  %96 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr107 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %96, i32 0, i32 4
  %97 = load i8*, i8** %least_addr107, align 8
  %cmp108 = icmp uge i8* %95, %97
  %conv109 = zext i1 %cmp108 to i32
  %conv110 = sext i32 %conv109 to i64
  %tobool111 = icmp ne i64 %conv110, 0
  br i1 %tobool111, label %if.then.112, label %if.else.148

if.then.112:                                      ; preds = %if.then.106
  %98 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %99 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %parent113 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %99, i32 0, i32 5
  store %struct.malloc_tree_chunk* %98, %struct.malloc_tree_chunk** %parent113, align 8
  %100 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %child114 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %100, i32 0, i32 4
  %arrayidx115 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child114, i32 0, i64 0
  %101 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx115, align 8
  store %struct.malloc_tree_chunk* %101, %struct.malloc_tree_chunk** %C0, align 8
  %cmp116 = icmp ne %struct.malloc_tree_chunk* %101, null
  br i1 %cmp116, label %if.then.118, label %if.end.130

if.then.118:                                      ; preds = %if.then.112
  %102 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C0, align 8
  %103 = bitcast %struct.malloc_tree_chunk* %102 to i8*
  %104 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr119 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %104, i32 0, i32 4
  %105 = load i8*, i8** %least_addr119, align 8
  %cmp120 = icmp uge i8* %103, %105
  %conv121 = zext i1 %cmp120 to i32
  %conv122 = sext i32 %conv121 to i64
  %tobool123 = icmp ne i64 %conv122, 0
  br i1 %tobool123, label %if.then.124, label %if.else.128

if.then.124:                                      ; preds = %if.then.118
  %106 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C0, align 8
  %107 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %child125 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %107, i32 0, i32 4
  %arrayidx126 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child125, i32 0, i64 0
  store %struct.malloc_tree_chunk* %106, %struct.malloc_tree_chunk** %arrayidx126, align 8
  %108 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %109 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C0, align 8
  %parent127 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %109, i32 0, i32 5
  store %struct.malloc_tree_chunk* %108, %struct.malloc_tree_chunk** %parent127, align 8
  br label %if.end.129

if.else.128:                                      ; preds = %if.then.118
  call void @abort() #8
  unreachable

if.end.129:                                       ; preds = %if.then.124
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.112
  %110 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %child131 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %110, i32 0, i32 4
  %arrayidx132 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child131, i32 0, i64 1
  %111 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx132, align 8
  store %struct.malloc_tree_chunk* %111, %struct.malloc_tree_chunk** %C1, align 8
  %cmp133 = icmp ne %struct.malloc_tree_chunk* %111, null
  br i1 %cmp133, label %if.then.135, label %if.end.147

if.then.135:                                      ; preds = %if.end.130
  %112 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C1, align 8
  %113 = bitcast %struct.malloc_tree_chunk* %112 to i8*
  %114 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr136 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %114, i32 0, i32 4
  %115 = load i8*, i8** %least_addr136, align 8
  %cmp137 = icmp uge i8* %113, %115
  %conv138 = zext i1 %cmp137 to i32
  %conv139 = sext i32 %conv138 to i64
  %tobool140 = icmp ne i64 %conv139, 0
  br i1 %tobool140, label %if.then.141, label %if.else.145

if.then.141:                                      ; preds = %if.then.135
  %116 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C1, align 8
  %117 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %child142 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %117, i32 0, i32 4
  %arrayidx143 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child142, i32 0, i64 1
  store %struct.malloc_tree_chunk* %116, %struct.malloc_tree_chunk** %arrayidx143, align 8
  %118 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %119 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C1, align 8
  %parent144 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %119, i32 0, i32 5
  store %struct.malloc_tree_chunk* %118, %struct.malloc_tree_chunk** %parent144, align 8
  br label %if.end.146

if.else.145:                                      ; preds = %if.then.135
  call void @abort() #8
  unreachable

if.end.146:                                       ; preds = %if.then.141
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.end.130
  br label %if.end.149

if.else.148:                                      ; preds = %if.then.106
  call void @abort() #8
  unreachable

if.end.149:                                       ; preds = %if.end.147
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.end.103
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.end.66
  %120 = load i64, i64* %rsize, align 8
  %cmp152 = icmp ult i64 %120, 32
  br i1 %cmp152, label %if.then.154, label %if.else.161

if.then.154:                                      ; preds = %if.end.151
  %121 = load i64, i64* %rsize, align 8
  %122 = load i64, i64* %nb.addr, align 8
  %add = add i64 %121, %122
  %or = or i64 %add, 1
  %or155 = or i64 %or, 2
  %123 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %head156 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %123, i32 0, i32 1
  store i64 %or155, i64* %head156, align 8
  %124 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %125 = bitcast %struct.malloc_tree_chunk* %124 to i8*
  %126 = load i64, i64* %rsize, align 8
  %127 = load i64, i64* %nb.addr, align 8
  %add157 = add i64 %126, %127
  %add.ptr158 = getelementptr i8, i8* %125, i64 %add157
  %128 = bitcast i8* %add.ptr158 to %struct.malloc_chunk*
  %head159 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %128, i32 0, i32 1
  %129 = load i64, i64* %head159, align 8
  %or160 = or i64 %129, 1
  store i64 %or160, i64* %head159, align 8
  br label %if.end.202

if.else.161:                                      ; preds = %if.end.151
  %130 = load i64, i64* %nb.addr, align 8
  %or162 = or i64 %130, 1
  %or163 = or i64 %or162, 2
  %131 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %head164 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %131, i32 0, i32 1
  store i64 %or163, i64* %head164, align 8
  %132 = load i64, i64* %rsize, align 8
  %or165 = or i64 %132, 1
  %133 = load %struct.malloc_chunk*, %struct.malloc_chunk** %r, align 8
  %head166 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %133, i32 0, i32 1
  store i64 %or165, i64* %head166, align 8
  %134 = load i64, i64* %rsize, align 8
  %135 = load %struct.malloc_chunk*, %struct.malloc_chunk** %r, align 8
  %136 = bitcast %struct.malloc_chunk* %135 to i8*
  %137 = load i64, i64* %rsize, align 8
  %add.ptr167 = getelementptr i8, i8* %136, i64 %137
  %138 = bitcast i8* %add.ptr167 to %struct.malloc_chunk*
  %prev_foot = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %138, i32 0, i32 0
  store i64 %134, i64* %prev_foot, align 8
  %139 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %dvsize = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %139, i32 0, i32 2
  %140 = load i64, i64* %dvsize, align 8
  store i64 %140, i64* %DVS, align 8
  %141 = load i64, i64* %DVS, align 8
  %cmp168 = icmp ne i64 %141, 0
  br i1 %cmp168, label %if.then.170, label %if.end.199

if.then.170:                                      ; preds = %if.else.161
  %142 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %dv = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %142, i32 0, i32 5
  %143 = load %struct.malloc_chunk*, %struct.malloc_chunk** %dv, align 8
  store %struct.malloc_chunk* %143, %struct.malloc_chunk** %DV, align 8
  %144 = load i64, i64* %DVS, align 8
  %shr = lshr i64 %144, 3
  %conv171 = trunc i64 %shr to i32
  store i32 %conv171, i32* %I, align 4
  %145 = load i32, i32* %I, align 4
  %shl172 = shl i32 %145, 1
  %idxprom173 = zext i32 %shl172 to i64
  %146 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %smallbins = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %146, i32 0, i32 9
  %arrayidx174 = getelementptr [66 x %struct.malloc_chunk*], [66 x %struct.malloc_chunk*]* %smallbins, i32 0, i64 %idxprom173
  %147 = bitcast %struct.malloc_chunk** %arrayidx174 to i8*
  %148 = bitcast i8* %147 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %148, %struct.malloc_chunk** %B, align 8
  %149 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  store %struct.malloc_chunk* %149, %struct.malloc_chunk** %F175, align 8
  %150 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %smallmap = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %150, i32 0, i32 0
  %151 = load i32, i32* %smallmap, align 4
  %152 = load i32, i32* %I, align 4
  %shl176 = shl i32 1, %152
  %and177 = and i32 %151, %shl176
  %tobool178 = icmp ne i32 %and177, 0
  br i1 %tobool178, label %if.else.183, label %if.then.179

if.then.179:                                      ; preds = %if.then.170
  %153 = load i32, i32* %I, align 4
  %shl180 = shl i32 1, %153
  %154 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %smallmap181 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %154, i32 0, i32 0
  %155 = load i32, i32* %smallmap181, align 4
  %or182 = or i32 %155, %shl180
  store i32 %or182, i32* %smallmap181, align 4
  br label %if.end.194

if.else.183:                                      ; preds = %if.then.170
  %156 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %fd184 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %156, i32 0, i32 2
  %157 = load %struct.malloc_chunk*, %struct.malloc_chunk** %fd184, align 8
  %158 = bitcast %struct.malloc_chunk* %157 to i8*
  %159 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr185 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %159, i32 0, i32 4
  %160 = load i8*, i8** %least_addr185, align 8
  %cmp186 = icmp uge i8* %158, %160
  %conv187 = zext i1 %cmp186 to i32
  %conv188 = sext i32 %conv187 to i64
  %tobool189 = icmp ne i64 %conv188, 0
  br i1 %tobool189, label %if.then.190, label %if.else.192

if.then.190:                                      ; preds = %if.else.183
  %161 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %fd191 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %161, i32 0, i32 2
  %162 = load %struct.malloc_chunk*, %struct.malloc_chunk** %fd191, align 8
  store %struct.malloc_chunk* %162, %struct.malloc_chunk** %F175, align 8
  br label %if.end.193

if.else.192:                                      ; preds = %if.else.183
  call void @abort() #8
  unreachable

if.end.193:                                       ; preds = %if.then.190
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.then.179
  %163 = load %struct.malloc_chunk*, %struct.malloc_chunk** %DV, align 8
  %164 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %fd195 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %164, i32 0, i32 2
  store %struct.malloc_chunk* %163, %struct.malloc_chunk** %fd195, align 8
  %165 = load %struct.malloc_chunk*, %struct.malloc_chunk** %DV, align 8
  %166 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F175, align 8
  %bk196 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %166, i32 0, i32 3
  store %struct.malloc_chunk* %165, %struct.malloc_chunk** %bk196, align 8
  %167 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F175, align 8
  %168 = load %struct.malloc_chunk*, %struct.malloc_chunk** %DV, align 8
  %fd197 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %168, i32 0, i32 2
  store %struct.malloc_chunk* %167, %struct.malloc_chunk** %fd197, align 8
  %169 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %170 = load %struct.malloc_chunk*, %struct.malloc_chunk** %DV, align 8
  %bk198 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %170, i32 0, i32 3
  store %struct.malloc_chunk* %169, %struct.malloc_chunk** %bk198, align 8
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.194, %if.else.161
  %171 = load i64, i64* %rsize, align 8
  %172 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %dvsize200 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %172, i32 0, i32 2
  store i64 %171, i64* %dvsize200, align 8
  %173 = load %struct.malloc_chunk*, %struct.malloc_chunk** %r, align 8
  %174 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %dv201 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %174, i32 0, i32 5
  store %struct.malloc_chunk* %173, %struct.malloc_chunk** %dv201, align 8
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.199, %if.then.154
  %175 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %176 = bitcast %struct.malloc_tree_chunk* %175 to i8*
  %add.ptr203 = getelementptr i8, i8* %176, i64 16
  ret i8* %add.ptr203

if.end.204:                                       ; preds = %if.then.17
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %while.end
  call void @abort() #8
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i8* @tmalloc_large(%struct.malloc_state* %m, i64 %nb) #1 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct.malloc_state*, align 8
  %nb.addr = alloca i64, align 8
  %v = alloca %struct.malloc_tree_chunk*, align 8
  %rsize = alloca i64, align 8
  %t = alloca %struct.malloc_tree_chunk*, align 8
  %idx = alloca i32, align 4
  %X = alloca i64, align 8
  %Y = alloca i32, align 4
  %N = alloca i32, align 4
  %K = alloca i32, align 4
  %sizebits = alloca i64, align 8
  %rst = alloca %struct.malloc_tree_chunk*, align 8
  %rt = alloca %struct.malloc_tree_chunk*, align 8
  %trem = alloca i64, align 8
  %leftbits = alloca i32, align 4
  %i = alloca i32, align 4
  %leastbit = alloca i32, align 4
  %trem89 = alloca i64, align 8
  %r = alloca %struct.malloc_chunk*, align 8
  %XP = alloca %struct.malloc_tree_chunk*, align 8
  %R = alloca %struct.malloc_tree_chunk*, align 8
  %F = alloca %struct.malloc_tree_chunk*, align 8
  %RP = alloca %struct.malloc_tree_chunk**, align 8
  %CP = alloca %struct.malloc_tree_chunk**, align 8
  %H = alloca %struct.malloc_tree_chunk**, align 8
  %C0 = alloca %struct.malloc_tree_chunk*, align 8
  %C1 = alloca %struct.malloc_tree_chunk*, align 8
  %I = alloca i32, align 4
  %B = alloca %struct.malloc_chunk*, align 8
  %F283 = alloca %struct.malloc_chunk*, align 8
  %TP = alloca %struct.malloc_tree_chunk*, align 8
  %H308 = alloca %struct.malloc_tree_chunk**, align 8
  %I309 = alloca i32, align 4
  %X310 = alloca i64, align 8
  %Y320 = alloca i32, align 4
  %N322 = alloca i32, align 4
  %K326 = alloca i32, align 4
  %T = alloca %struct.malloc_tree_chunk*, align 8
  %K371 = alloca i64, align 8
  %C = alloca %struct.malloc_tree_chunk**, align 8
  %F411 = alloca %struct.malloc_tree_chunk*, align 8
  store %struct.malloc_state* %m, %struct.malloc_state** %m.addr, align 8
  store i64 %nb, i64* %nb.addr, align 8
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %v, align 8
  %0 = load i64, i64* %nb.addr, align 8
  %sub = sub i64 0, %0
  store i64 %sub, i64* %rsize, align 8
  %1 = load i64, i64* %nb.addr, align 8
  %shr = lshr i64 %1, 8
  store i64 %shr, i64* %X, align 8
  %2 = load i64, i64* %X, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %idx, align 4
  br label %if.end.25

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %X, align 8
  %cmp1 = icmp ugt i64 %3, 65535
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i32 31, i32* %idx, align 4
  br label %if.end

if.else.3:                                        ; preds = %if.else
  %4 = load i64, i64* %X, align 8
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %Y, align 4
  %5 = load i32, i32* %Y, align 4
  %sub4 = sub i32 %5, 256
  %shr5 = lshr i32 %sub4, 16
  %and = and i32 %shr5, 8
  store i32 %and, i32* %N, align 4
  %6 = load i32, i32* %N, align 4
  %7 = load i32, i32* %Y, align 4
  %shl = shl i32 %7, %6
  store i32 %shl, i32* %Y, align 4
  %sub6 = sub i32 %shl, 4096
  %shr7 = lshr i32 %sub6, 16
  %and8 = and i32 %shr7, 4
  store i32 %and8, i32* %K, align 4
  %8 = load i32, i32* %K, align 4
  %9 = load i32, i32* %N, align 4
  %add = add i32 %9, %8
  store i32 %add, i32* %N, align 4
  %10 = load i32, i32* %K, align 4
  %11 = load i32, i32* %Y, align 4
  %shl9 = shl i32 %11, %10
  store i32 %shl9, i32* %Y, align 4
  %sub10 = sub i32 %shl9, 16384
  %shr11 = lshr i32 %sub10, 16
  %and12 = and i32 %shr11, 2
  store i32 %and12, i32* %K, align 4
  %12 = load i32, i32* %N, align 4
  %add13 = add i32 %12, %and12
  store i32 %add13, i32* %N, align 4
  %13 = load i32, i32* %N, align 4
  %sub14 = sub i32 14, %13
  %14 = load i32, i32* %K, align 4
  %15 = load i32, i32* %Y, align 4
  %shl15 = shl i32 %15, %14
  store i32 %shl15, i32* %Y, align 4
  %shr16 = lshr i32 %shl15, 15
  %add17 = add i32 %sub14, %shr16
  store i32 %add17, i32* %K, align 4
  %16 = load i32, i32* %K, align 4
  %shl18 = shl i32 %16, 1
  %conv19 = zext i32 %shl18 to i64
  %17 = load i64, i64* %nb.addr, align 8
  %18 = load i32, i32* %K, align 4
  %add20 = add i32 %18, 7
  %sh_prom = zext i32 %add20 to i64
  %shr21 = lshr i64 %17, %sh_prom
  %and22 = and i64 %shr21, 1
  %add23 = add i64 %conv19, %and22
  %conv24 = trunc i64 %add23 to i32
  store i32 %conv24, i32* %idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.3, %if.then.2
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then
  %19 = load i32, i32* %idx, align 4
  %idxprom = zext i32 %19 to i64
  %20 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treebins = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %20, i32 0, i32 10
  %arrayidx = getelementptr [32 x %struct.malloc_tree_chunk*], [32 x %struct.malloc_tree_chunk*]* %treebins, i32 0, i64 %idxprom
  %21 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx, align 8
  store %struct.malloc_tree_chunk* %21, %struct.malloc_tree_chunk** %t, align 8
  %cmp26 = icmp ne %struct.malloc_tree_chunk* %21, null
  br i1 %cmp26, label %if.then.28, label %if.end.63

if.then.28:                                       ; preds = %if.end.25
  %22 = load i64, i64* %nb.addr, align 8
  %23 = load i32, i32* %idx, align 4
  %cmp29 = icmp eq i32 %23, 31
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.28
  br label %cond.end

cond.false:                                       ; preds = %if.then.28
  %24 = load i32, i32* %idx, align 4
  %shr31 = lshr i32 %24, 1
  %add32 = add i32 %shr31, 8
  %sub33 = sub i32 %add32, 2
  %conv34 = zext i32 %sub33 to i64
  %sub35 = sub i64 63, %conv34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %sub35, %cond.false ]
  %shl36 = shl i64 %22, %cond
  store i64 %shl36, i64* %sizebits, align 8
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %rst, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.61, %cond.end
  %25 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %t, align 8
  %head = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %25, i32 0, i32 1
  %26 = load i64, i64* %head, align 8
  %and37 = and i64 %26, -4
  %27 = load i64, i64* %nb.addr, align 8
  %sub38 = sub i64 %and37, %27
  store i64 %sub38, i64* %trem, align 8
  %28 = load i64, i64* %trem, align 8
  %29 = load i64, i64* %rsize, align 8
  %cmp39 = icmp ult i64 %28, %29
  br i1 %cmp39, label %if.then.41, label %if.end.46

if.then.41:                                       ; preds = %for.cond
  %30 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %t, align 8
  store %struct.malloc_tree_chunk* %30, %struct.malloc_tree_chunk** %v, align 8
  %31 = load i64, i64* %trem, align 8
  store i64 %31, i64* %rsize, align 8
  %cmp42 = icmp eq i64 %31, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.41
  br label %for.end

if.end.45:                                        ; preds = %if.then.41
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %for.cond
  %32 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %t, align 8
  %child = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %32, i32 0, i32 4
  %arrayidx47 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child, i32 0, i64 1
  %33 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx47, align 8
  store %struct.malloc_tree_chunk* %33, %struct.malloc_tree_chunk** %rt, align 8
  %34 = load i64, i64* %sizebits, align 8
  %shr48 = lshr i64 %34, 63
  %and49 = and i64 %shr48, 1
  %35 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %t, align 8
  %child50 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %35, i32 0, i32 4
  %arrayidx51 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child50, i32 0, i64 %and49
  %36 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx51, align 8
  store %struct.malloc_tree_chunk* %36, %struct.malloc_tree_chunk** %t, align 8
  %37 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %rt, align 8
  %cmp52 = icmp ne %struct.malloc_tree_chunk* %37, null
  br i1 %cmp52, label %land.lhs.true, label %if.end.57

land.lhs.true:                                    ; preds = %if.end.46
  %38 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %rt, align 8
  %39 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %t, align 8
  %cmp54 = icmp ne %struct.malloc_tree_chunk* %38, %39
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %land.lhs.true
  %40 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %rt, align 8
  store %struct.malloc_tree_chunk* %40, %struct.malloc_tree_chunk** %rst, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %land.lhs.true, %if.end.46
  %41 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %t, align 8
  %cmp58 = icmp eq %struct.malloc_tree_chunk* %41, null
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.57
  %42 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %rst, align 8
  store %struct.malloc_tree_chunk* %42, %struct.malloc_tree_chunk** %t, align 8
  br label %for.end

if.end.61:                                        ; preds = %if.end.57
  %43 = load i64, i64* %sizebits, align 8
  %shl62 = shl i64 %43, 1
  store i64 %shl62, i64* %sizebits, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.60, %if.then.44
  br label %if.end.63

if.end.63:                                        ; preds = %for.end, %if.end.25
  %44 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %t, align 8
  %cmp64 = icmp eq %struct.malloc_tree_chunk* %44, null
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.86

land.lhs.true.66:                                 ; preds = %if.end.63
  %45 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %cmp67 = icmp eq %struct.malloc_tree_chunk* %45, null
  br i1 %cmp67, label %if.then.69, label %if.end.86

if.then.69:                                       ; preds = %land.lhs.true.66
  %46 = load i32, i32* %idx, align 4
  %shl70 = shl i32 1, %46
  %shl71 = shl i32 %shl70, 1
  %47 = load i32, i32* %idx, align 4
  %shl72 = shl i32 1, %47
  %shl73 = shl i32 %shl72, 1
  %sub74 = sub i32 0, %shl73
  %or = or i32 %shl71, %sub74
  %48 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treemap = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %48, i32 0, i32 1
  %49 = load i32, i32* %treemap, align 4
  %and75 = and i32 %or, %49
  store i32 %and75, i32* %leftbits, align 4
  %50 = load i32, i32* %leftbits, align 4
  %cmp76 = icmp ne i32 %50, 0
  br i1 %cmp76, label %if.then.78, label %if.end.85

if.then.78:                                       ; preds = %if.then.69
  %51 = load i32, i32* %leftbits, align 4
  %52 = load i32, i32* %leftbits, align 4
  %sub79 = sub i32 0, %52
  %and80 = and i32 %51, %sub79
  store i32 %and80, i32* %leastbit, align 4
  %53 = load i32, i32* %leastbit, align 4
  %call = call i32 @ffs(i32 %53) #9
  %sub81 = sub i32 %call, 1
  store i32 %sub81, i32* %i, align 4
  %54 = load i32, i32* %i, align 4
  %idxprom82 = zext i32 %54 to i64
  %55 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treebins83 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %55, i32 0, i32 10
  %arrayidx84 = getelementptr [32 x %struct.malloc_tree_chunk*], [32 x %struct.malloc_tree_chunk*]* %treebins83, i32 0, i64 %idxprom82
  %56 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx84, align 8
  store %struct.malloc_tree_chunk* %56, %struct.malloc_tree_chunk** %t, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.78, %if.then.69
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %land.lhs.true.66, %if.end.63
  br label %while.cond

while.cond:                                       ; preds = %cond.end.107, %if.end.86
  %57 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %t, align 8
  %cmp87 = icmp ne %struct.malloc_tree_chunk* %57, null
  br i1 %cmp87, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %58 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %t, align 8
  %head90 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %58, i32 0, i32 1
  %59 = load i64, i64* %head90, align 8
  %and91 = and i64 %59, -4
  %60 = load i64, i64* %nb.addr, align 8
  %sub92 = sub i64 %and91, %60
  store i64 %sub92, i64* %trem89, align 8
  %61 = load i64, i64* %trem89, align 8
  %62 = load i64, i64* %rsize, align 8
  %cmp93 = icmp ult i64 %61, %62
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %while.body
  %63 = load i64, i64* %trem89, align 8
  store i64 %63, i64* %rsize, align 8
  %64 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %t, align 8
  store %struct.malloc_tree_chunk* %64, %struct.malloc_tree_chunk** %v, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %while.body
  %65 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %t, align 8
  %child97 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %65, i32 0, i32 4
  %arrayidx98 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child97, i32 0, i64 0
  %66 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx98, align 8
  %cmp99 = icmp ne %struct.malloc_tree_chunk* %66, null
  br i1 %cmp99, label %cond.true.101, label %cond.false.104

cond.true.101:                                    ; preds = %if.end.96
  %67 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %t, align 8
  %child102 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %67, i32 0, i32 4
  %arrayidx103 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child102, i32 0, i64 0
  %68 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx103, align 8
  br label %cond.end.107

cond.false.104:                                   ; preds = %if.end.96
  %69 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %t, align 8
  %child105 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %69, i32 0, i32 4
  %arrayidx106 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child105, i32 0, i64 1
  %70 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx106, align 8
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.104, %cond.true.101
  %cond108 = phi %struct.malloc_tree_chunk* [ %68, %cond.true.101 ], [ %70, %cond.false.104 ]
  store %struct.malloc_tree_chunk* %cond108, %struct.malloc_tree_chunk** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %71 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %cmp109 = icmp ne %struct.malloc_tree_chunk* %71, null
  br i1 %cmp109, label %land.lhs.true.111, label %if.end.436

land.lhs.true.111:                                ; preds = %while.end
  %72 = load i64, i64* %rsize, align 8
  %73 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %dvsize = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %73, i32 0, i32 2
  %74 = load i64, i64* %dvsize, align 8
  %75 = load i64, i64* %nb.addr, align 8
  %sub112 = sub i64 %74, %75
  %cmp113 = icmp ult i64 %72, %sub112
  br i1 %cmp113, label %if.then.115, label %if.end.436

if.then.115:                                      ; preds = %land.lhs.true.111
  %76 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %77 = bitcast %struct.malloc_tree_chunk* %76 to i8*
  %78 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %78, i32 0, i32 4
  %79 = load i8*, i8** %least_addr, align 8
  %cmp116 = icmp uge i8* %77, %79
  %conv117 = zext i1 %cmp116 to i32
  %conv118 = sext i32 %conv117 to i64
  %tobool = icmp ne i64 %conv118, 0
  br i1 %tobool, label %if.then.119, label %if.end.435

if.then.119:                                      ; preds = %if.then.115
  %80 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %81 = bitcast %struct.malloc_tree_chunk* %80 to i8*
  %82 = load i64, i64* %nb.addr, align 8
  %add.ptr = getelementptr i8, i8* %81, i64 %82
  %83 = bitcast i8* %add.ptr to %struct.malloc_chunk*
  store %struct.malloc_chunk* %83, %struct.malloc_chunk** %r, align 8
  %84 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %85 = bitcast %struct.malloc_tree_chunk* %84 to i8*
  %86 = load %struct.malloc_chunk*, %struct.malloc_chunk** %r, align 8
  %87 = bitcast %struct.malloc_chunk* %86 to i8*
  %cmp120 = icmp ult i8* %85, %87
  %conv121 = zext i1 %cmp120 to i32
  %conv122 = sext i32 %conv121 to i64
  %tobool123 = icmp ne i64 %conv122, 0
  br i1 %tobool123, label %if.then.124, label %if.end.434

if.then.124:                                      ; preds = %if.then.119
  %88 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %parent = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %88, i32 0, i32 5
  %89 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %parent, align 8
  store %struct.malloc_tree_chunk* %89, %struct.malloc_tree_chunk** %XP, align 8
  %90 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %bk = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %90, i32 0, i32 3
  %91 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %bk, align 8
  %92 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %cmp125 = icmp ne %struct.malloc_tree_chunk* %91, %92
  br i1 %cmp125, label %if.then.127, label %if.else.139

if.then.127:                                      ; preds = %if.then.124
  %93 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %fd = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %93, i32 0, i32 2
  %94 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %fd, align 8
  store %struct.malloc_tree_chunk* %94, %struct.malloc_tree_chunk** %F, align 8
  %95 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %bk128 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %95, i32 0, i32 3
  %96 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %bk128, align 8
  store %struct.malloc_tree_chunk* %96, %struct.malloc_tree_chunk** %R, align 8
  %97 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F, align 8
  %98 = bitcast %struct.malloc_tree_chunk* %97 to i8*
  %99 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr129 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %99, i32 0, i32 4
  %100 = load i8*, i8** %least_addr129, align 8
  %cmp130 = icmp uge i8* %98, %100
  %conv131 = zext i1 %cmp130 to i32
  %conv132 = sext i32 %conv131 to i64
  %tobool133 = icmp ne i64 %conv132, 0
  br i1 %tobool133, label %if.then.134, label %if.else.137

if.then.134:                                      ; preds = %if.then.127
  %101 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %102 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F, align 8
  %bk135 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %102, i32 0, i32 3
  store %struct.malloc_tree_chunk* %101, %struct.malloc_tree_chunk** %bk135, align 8
  %103 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F, align 8
  %104 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %fd136 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %104, i32 0, i32 2
  store %struct.malloc_tree_chunk* %103, %struct.malloc_tree_chunk** %fd136, align 8
  br label %if.end.138

if.else.137:                                      ; preds = %if.then.127
  call void @abort() #8
  unreachable

if.end.138:                                       ; preds = %if.then.134
  br label %if.end.169

if.else.139:                                      ; preds = %if.then.124
  %105 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %child140 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %105, i32 0, i32 4
  %arrayidx141 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child140, i32 0, i64 1
  store %struct.malloc_tree_chunk** %arrayidx141, %struct.malloc_tree_chunk*** %RP, align 8
  %106 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx141, align 8
  store %struct.malloc_tree_chunk* %106, %struct.malloc_tree_chunk** %R, align 8
  %cmp142 = icmp ne %struct.malloc_tree_chunk* %106, null
  br i1 %cmp142, label %if.then.148, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.139
  %107 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %child144 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %107, i32 0, i32 4
  %arrayidx145 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child144, i32 0, i64 0
  store %struct.malloc_tree_chunk** %arrayidx145, %struct.malloc_tree_chunk*** %RP, align 8
  %108 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx145, align 8
  store %struct.malloc_tree_chunk* %108, %struct.malloc_tree_chunk** %R, align 8
  %cmp146 = icmp ne %struct.malloc_tree_chunk* %108, null
  br i1 %cmp146, label %if.then.148, label %if.end.168

if.then.148:                                      ; preds = %lor.lhs.false, %if.else.139
  br label %while.cond.149

while.cond.149:                                   ; preds = %while.body.158, %if.then.148
  %109 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %child150 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %109, i32 0, i32 4
  %arrayidx151 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child150, i32 0, i64 1
  store %struct.malloc_tree_chunk** %arrayidx151, %struct.malloc_tree_chunk*** %CP, align 8
  %110 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx151, align 8
  %cmp152 = icmp ne %struct.malloc_tree_chunk* %110, null
  br i1 %cmp152, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.149
  %111 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %child154 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %111, i32 0, i32 4
  %arrayidx155 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child154, i32 0, i64 0
  store %struct.malloc_tree_chunk** %arrayidx155, %struct.malloc_tree_chunk*** %CP, align 8
  %112 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx155, align 8
  %cmp156 = icmp ne %struct.malloc_tree_chunk* %112, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.149
  %113 = phi i1 [ true, %while.cond.149 ], [ %cmp156, %lor.rhs ]
  br i1 %113, label %while.body.158, label %while.end.159

while.body.158:                                   ; preds = %lor.end
  %114 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %CP, align 8
  store %struct.malloc_tree_chunk** %114, %struct.malloc_tree_chunk*** %RP, align 8
  %115 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %114, align 8
  store %struct.malloc_tree_chunk* %115, %struct.malloc_tree_chunk** %R, align 8
  br label %while.cond.149

while.end.159:                                    ; preds = %lor.end
  %116 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %RP, align 8
  %117 = bitcast %struct.malloc_tree_chunk** %116 to i8*
  %118 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr160 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %118, i32 0, i32 4
  %119 = load i8*, i8** %least_addr160, align 8
  %cmp161 = icmp uge i8* %117, %119
  %conv162 = zext i1 %cmp161 to i32
  %conv163 = sext i32 %conv162 to i64
  %tobool164 = icmp ne i64 %conv163, 0
  br i1 %tobool164, label %if.then.165, label %if.else.166

if.then.165:                                      ; preds = %while.end.159
  %120 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %RP, align 8
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %120, align 8
  br label %if.end.167

if.else.166:                                      ; preds = %while.end.159
  call void @abort() #8
  unreachable

if.end.167:                                       ; preds = %if.then.165
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %lor.lhs.false
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.end.138
  %121 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %cmp170 = icmp ne %struct.malloc_tree_chunk* %121, null
  br i1 %cmp170, label %if.then.172, label %if.end.255

if.then.172:                                      ; preds = %if.end.169
  %122 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %index = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %122, i32 0, i32 6
  %123 = load i32, i32* %index, align 4
  %idxprom173 = zext i32 %123 to i64
  %124 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treebins174 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %124, i32 0, i32 10
  %arrayidx175 = getelementptr [32 x %struct.malloc_tree_chunk*], [32 x %struct.malloc_tree_chunk*]* %treebins174, i32 0, i64 %idxprom173
  store %struct.malloc_tree_chunk** %arrayidx175, %struct.malloc_tree_chunk*** %H, align 8
  %125 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %126 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H, align 8
  %127 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %126, align 8
  %cmp176 = icmp eq %struct.malloc_tree_chunk* %125, %127
  br i1 %cmp176, label %if.then.178, label %if.else.187

if.then.178:                                      ; preds = %if.then.172
  %128 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %129 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H, align 8
  store %struct.malloc_tree_chunk* %128, %struct.malloc_tree_chunk** %129, align 8
  %cmp179 = icmp eq %struct.malloc_tree_chunk* %128, null
  br i1 %cmp179, label %if.then.181, label %if.end.186

if.then.181:                                      ; preds = %if.then.178
  %130 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %index182 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %130, i32 0, i32 6
  %131 = load i32, i32* %index182, align 4
  %shl183 = shl i32 1, %131
  %neg = xor i32 %shl183, -1
  %132 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treemap184 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %132, i32 0, i32 1
  %133 = load i32, i32* %treemap184, align 4
  %and185 = and i32 %133, %neg
  store i32 %and185, i32* %treemap184, align 4
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.181, %if.then.178
  br label %if.end.207

if.else.187:                                      ; preds = %if.then.172
  %134 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %135 = bitcast %struct.malloc_tree_chunk* %134 to i8*
  %136 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr188 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %136, i32 0, i32 4
  %137 = load i8*, i8** %least_addr188, align 8
  %cmp189 = icmp uge i8* %135, %137
  %conv190 = zext i1 %cmp189 to i32
  %conv191 = sext i32 %conv190 to i64
  %tobool192 = icmp ne i64 %conv191, 0
  br i1 %tobool192, label %if.then.193, label %if.else.205

if.then.193:                                      ; preds = %if.else.187
  %138 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %child194 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %138, i32 0, i32 4
  %arrayidx195 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child194, i32 0, i64 0
  %139 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx195, align 8
  %140 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %cmp196 = icmp eq %struct.malloc_tree_chunk* %139, %140
  br i1 %cmp196, label %if.then.198, label %if.else.201

if.then.198:                                      ; preds = %if.then.193
  %141 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %142 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %child199 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %142, i32 0, i32 4
  %arrayidx200 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child199, i32 0, i64 0
  store %struct.malloc_tree_chunk* %141, %struct.malloc_tree_chunk** %arrayidx200, align 8
  br label %if.end.204

if.else.201:                                      ; preds = %if.then.193
  %143 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %144 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %child202 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %144, i32 0, i32 4
  %arrayidx203 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child202, i32 0, i64 1
  store %struct.malloc_tree_chunk* %143, %struct.malloc_tree_chunk** %arrayidx203, align 8
  br label %if.end.204

if.end.204:                                       ; preds = %if.else.201, %if.then.198
  br label %if.end.206

if.else.205:                                      ; preds = %if.else.187
  call void @abort() #8
  unreachable

if.end.206:                                       ; preds = %if.end.204
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.end.186
  %145 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %cmp208 = icmp ne %struct.malloc_tree_chunk* %145, null
  br i1 %cmp208, label %if.then.210, label %if.end.254

if.then.210:                                      ; preds = %if.end.207
  %146 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %147 = bitcast %struct.malloc_tree_chunk* %146 to i8*
  %148 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr211 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %148, i32 0, i32 4
  %149 = load i8*, i8** %least_addr211, align 8
  %cmp212 = icmp uge i8* %147, %149
  %conv213 = zext i1 %cmp212 to i32
  %conv214 = sext i32 %conv213 to i64
  %tobool215 = icmp ne i64 %conv214, 0
  br i1 %tobool215, label %if.then.216, label %if.else.252

if.then.216:                                      ; preds = %if.then.210
  %150 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %151 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %parent217 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %151, i32 0, i32 5
  store %struct.malloc_tree_chunk* %150, %struct.malloc_tree_chunk** %parent217, align 8
  %152 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %child218 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %152, i32 0, i32 4
  %arrayidx219 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child218, i32 0, i64 0
  %153 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx219, align 8
  store %struct.malloc_tree_chunk* %153, %struct.malloc_tree_chunk** %C0, align 8
  %cmp220 = icmp ne %struct.malloc_tree_chunk* %153, null
  br i1 %cmp220, label %if.then.222, label %if.end.234

if.then.222:                                      ; preds = %if.then.216
  %154 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C0, align 8
  %155 = bitcast %struct.malloc_tree_chunk* %154 to i8*
  %156 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr223 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %156, i32 0, i32 4
  %157 = load i8*, i8** %least_addr223, align 8
  %cmp224 = icmp uge i8* %155, %157
  %conv225 = zext i1 %cmp224 to i32
  %conv226 = sext i32 %conv225 to i64
  %tobool227 = icmp ne i64 %conv226, 0
  br i1 %tobool227, label %if.then.228, label %if.else.232

if.then.228:                                      ; preds = %if.then.222
  %158 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C0, align 8
  %159 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %child229 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %159, i32 0, i32 4
  %arrayidx230 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child229, i32 0, i64 0
  store %struct.malloc_tree_chunk* %158, %struct.malloc_tree_chunk** %arrayidx230, align 8
  %160 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %161 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C0, align 8
  %parent231 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %161, i32 0, i32 5
  store %struct.malloc_tree_chunk* %160, %struct.malloc_tree_chunk** %parent231, align 8
  br label %if.end.233

if.else.232:                                      ; preds = %if.then.222
  call void @abort() #8
  unreachable

if.end.233:                                       ; preds = %if.then.228
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %if.then.216
  %162 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %child235 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %162, i32 0, i32 4
  %arrayidx236 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child235, i32 0, i64 1
  %163 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx236, align 8
  store %struct.malloc_tree_chunk* %163, %struct.malloc_tree_chunk** %C1, align 8
  %cmp237 = icmp ne %struct.malloc_tree_chunk* %163, null
  br i1 %cmp237, label %if.then.239, label %if.end.251

if.then.239:                                      ; preds = %if.end.234
  %164 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C1, align 8
  %165 = bitcast %struct.malloc_tree_chunk* %164 to i8*
  %166 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr240 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %166, i32 0, i32 4
  %167 = load i8*, i8** %least_addr240, align 8
  %cmp241 = icmp uge i8* %165, %167
  %conv242 = zext i1 %cmp241 to i32
  %conv243 = sext i32 %conv242 to i64
  %tobool244 = icmp ne i64 %conv243, 0
  br i1 %tobool244, label %if.then.245, label %if.else.249

if.then.245:                                      ; preds = %if.then.239
  %168 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C1, align 8
  %169 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %child246 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %169, i32 0, i32 4
  %arrayidx247 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child246, i32 0, i64 1
  store %struct.malloc_tree_chunk* %168, %struct.malloc_tree_chunk** %arrayidx247, align 8
  %170 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %171 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C1, align 8
  %parent248 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %171, i32 0, i32 5
  store %struct.malloc_tree_chunk* %170, %struct.malloc_tree_chunk** %parent248, align 8
  br label %if.end.250

if.else.249:                                      ; preds = %if.then.239
  call void @abort() #8
  unreachable

if.end.250:                                       ; preds = %if.then.245
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.end.234
  br label %if.end.253

if.else.252:                                      ; preds = %if.then.210
  call void @abort() #8
  unreachable

if.end.253:                                       ; preds = %if.end.251
  br label %if.end.254

if.end.254:                                       ; preds = %if.end.253, %if.end.207
  br label %if.end.255

if.end.255:                                       ; preds = %if.end.254, %if.end.169
  %172 = load i64, i64* %rsize, align 8
  %cmp256 = icmp ult i64 %172, 32
  br i1 %cmp256, label %if.then.258, label %if.else.267

if.then.258:                                      ; preds = %if.end.255
  %173 = load i64, i64* %rsize, align 8
  %174 = load i64, i64* %nb.addr, align 8
  %add259 = add i64 %173, %174
  %or260 = or i64 %add259, 1
  %or261 = or i64 %or260, 2
  %175 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %head262 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %175, i32 0, i32 1
  store i64 %or261, i64* %head262, align 8
  %176 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %177 = bitcast %struct.malloc_tree_chunk* %176 to i8*
  %178 = load i64, i64* %rsize, align 8
  %179 = load i64, i64* %nb.addr, align 8
  %add263 = add i64 %178, %179
  %add.ptr264 = getelementptr i8, i8* %177, i64 %add263
  %180 = bitcast i8* %add.ptr264 to %struct.malloc_chunk*
  %head265 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %180, i32 0, i32 1
  %181 = load i64, i64* %head265, align 8
  %or266 = or i64 %181, 1
  store i64 %or266, i64* %head265, align 8
  br label %if.end.432

if.else.267:                                      ; preds = %if.end.255
  %182 = load i64, i64* %nb.addr, align 8
  %or268 = or i64 %182, 1
  %or269 = or i64 %or268, 2
  %183 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %head270 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %183, i32 0, i32 1
  store i64 %or269, i64* %head270, align 8
  %184 = load i64, i64* %rsize, align 8
  %or271 = or i64 %184, 1
  %185 = load %struct.malloc_chunk*, %struct.malloc_chunk** %r, align 8
  %head272 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %185, i32 0, i32 1
  store i64 %or271, i64* %head272, align 8
  %186 = load i64, i64* %rsize, align 8
  %187 = load %struct.malloc_chunk*, %struct.malloc_chunk** %r, align 8
  %188 = bitcast %struct.malloc_chunk* %187 to i8*
  %189 = load i64, i64* %rsize, align 8
  %add.ptr273 = getelementptr i8, i8* %188, i64 %189
  %190 = bitcast i8* %add.ptr273 to %struct.malloc_chunk*
  %prev_foot = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %190, i32 0, i32 0
  store i64 %186, i64* %prev_foot, align 8
  %191 = load i64, i64* %rsize, align 8
  %shr274 = lshr i64 %191, 3
  %cmp275 = icmp ult i64 %shr274, 32
  br i1 %cmp275, label %if.then.277, label %if.else.307

if.then.277:                                      ; preds = %if.else.267
  %192 = load i64, i64* %rsize, align 8
  %shr278 = lshr i64 %192, 3
  %conv279 = trunc i64 %shr278 to i32
  store i32 %conv279, i32* %I, align 4
  %193 = load i32, i32* %I, align 4
  %shl280 = shl i32 %193, 1
  %idxprom281 = zext i32 %shl280 to i64
  %194 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %smallbins = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %194, i32 0, i32 9
  %arrayidx282 = getelementptr [66 x %struct.malloc_chunk*], [66 x %struct.malloc_chunk*]* %smallbins, i32 0, i64 %idxprom281
  %195 = bitcast %struct.malloc_chunk** %arrayidx282 to i8*
  %196 = bitcast i8* %195 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %196, %struct.malloc_chunk** %B, align 8
  %197 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  store %struct.malloc_chunk* %197, %struct.malloc_chunk** %F283, align 8
  %198 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %smallmap = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %198, i32 0, i32 0
  %199 = load i32, i32* %smallmap, align 4
  %200 = load i32, i32* %I, align 4
  %shl284 = shl i32 1, %200
  %and285 = and i32 %199, %shl284
  %tobool286 = icmp ne i32 %and285, 0
  br i1 %tobool286, label %if.else.291, label %if.then.287

if.then.287:                                      ; preds = %if.then.277
  %201 = load i32, i32* %I, align 4
  %shl288 = shl i32 1, %201
  %202 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %smallmap289 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %202, i32 0, i32 0
  %203 = load i32, i32* %smallmap289, align 4
  %or290 = or i32 %203, %shl288
  store i32 %or290, i32* %smallmap289, align 4
  br label %if.end.302

if.else.291:                                      ; preds = %if.then.277
  %204 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %fd292 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %204, i32 0, i32 2
  %205 = load %struct.malloc_chunk*, %struct.malloc_chunk** %fd292, align 8
  %206 = bitcast %struct.malloc_chunk* %205 to i8*
  %207 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr293 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %207, i32 0, i32 4
  %208 = load i8*, i8** %least_addr293, align 8
  %cmp294 = icmp uge i8* %206, %208
  %conv295 = zext i1 %cmp294 to i32
  %conv296 = sext i32 %conv295 to i64
  %tobool297 = icmp ne i64 %conv296, 0
  br i1 %tobool297, label %if.then.298, label %if.else.300

if.then.298:                                      ; preds = %if.else.291
  %209 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %fd299 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %209, i32 0, i32 2
  %210 = load %struct.malloc_chunk*, %struct.malloc_chunk** %fd299, align 8
  store %struct.malloc_chunk* %210, %struct.malloc_chunk** %F283, align 8
  br label %if.end.301

if.else.300:                                      ; preds = %if.else.291
  call void @abort() #8
  unreachable

if.end.301:                                       ; preds = %if.then.298
  br label %if.end.302

if.end.302:                                       ; preds = %if.end.301, %if.then.287
  %211 = load %struct.malloc_chunk*, %struct.malloc_chunk** %r, align 8
  %212 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %fd303 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %212, i32 0, i32 2
  store %struct.malloc_chunk* %211, %struct.malloc_chunk** %fd303, align 8
  %213 = load %struct.malloc_chunk*, %struct.malloc_chunk** %r, align 8
  %214 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F283, align 8
  %bk304 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %214, i32 0, i32 3
  store %struct.malloc_chunk* %213, %struct.malloc_chunk** %bk304, align 8
  %215 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F283, align 8
  %216 = load %struct.malloc_chunk*, %struct.malloc_chunk** %r, align 8
  %fd305 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %216, i32 0, i32 2
  store %struct.malloc_chunk* %215, %struct.malloc_chunk** %fd305, align 8
  %217 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %218 = load %struct.malloc_chunk*, %struct.malloc_chunk** %r, align 8
  %bk306 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %218, i32 0, i32 3
  store %struct.malloc_chunk* %217, %struct.malloc_chunk** %bk306, align 8
  br label %if.end.431

if.else.307:                                      ; preds = %if.else.267
  %219 = load %struct.malloc_chunk*, %struct.malloc_chunk** %r, align 8
  %220 = bitcast %struct.malloc_chunk* %219 to %struct.malloc_tree_chunk*
  store %struct.malloc_tree_chunk* %220, %struct.malloc_tree_chunk** %TP, align 8
  %221 = load i64, i64* %rsize, align 8
  %shr311 = lshr i64 %221, 8
  store i64 %shr311, i64* %X310, align 8
  %222 = load i64, i64* %X310, align 8
  %cmp312 = icmp eq i64 %222, 0
  br i1 %cmp312, label %if.then.314, label %if.else.315

if.then.314:                                      ; preds = %if.else.307
  store i32 0, i32* %I309, align 4
  br label %if.end.350

if.else.315:                                      ; preds = %if.else.307
  %223 = load i64, i64* %X310, align 8
  %cmp316 = icmp ugt i64 %223, 65535
  br i1 %cmp316, label %if.then.318, label %if.else.319

if.then.318:                                      ; preds = %if.else.315
  store i32 31, i32* %I309, align 4
  br label %if.end.349

if.else.319:                                      ; preds = %if.else.315
  %224 = load i64, i64* %X310, align 8
  %conv321 = trunc i64 %224 to i32
  store i32 %conv321, i32* %Y320, align 4
  %225 = load i32, i32* %Y320, align 4
  %sub323 = sub i32 %225, 256
  %shr324 = lshr i32 %sub323, 16
  %and325 = and i32 %shr324, 8
  store i32 %and325, i32* %N322, align 4
  %226 = load i32, i32* %N322, align 4
  %227 = load i32, i32* %Y320, align 4
  %shl327 = shl i32 %227, %226
  store i32 %shl327, i32* %Y320, align 4
  %sub328 = sub i32 %shl327, 4096
  %shr329 = lshr i32 %sub328, 16
  %and330 = and i32 %shr329, 4
  store i32 %and330, i32* %K326, align 4
  %228 = load i32, i32* %K326, align 4
  %229 = load i32, i32* %N322, align 4
  %add331 = add i32 %229, %228
  store i32 %add331, i32* %N322, align 4
  %230 = load i32, i32* %K326, align 4
  %231 = load i32, i32* %Y320, align 4
  %shl332 = shl i32 %231, %230
  store i32 %shl332, i32* %Y320, align 4
  %sub333 = sub i32 %shl332, 16384
  %shr334 = lshr i32 %sub333, 16
  %and335 = and i32 %shr334, 2
  store i32 %and335, i32* %K326, align 4
  %232 = load i32, i32* %N322, align 4
  %add336 = add i32 %232, %and335
  store i32 %add336, i32* %N322, align 4
  %233 = load i32, i32* %N322, align 4
  %sub337 = sub i32 14, %233
  %234 = load i32, i32* %K326, align 4
  %235 = load i32, i32* %Y320, align 4
  %shl338 = shl i32 %235, %234
  store i32 %shl338, i32* %Y320, align 4
  %shr339 = lshr i32 %shl338, 15
  %add340 = add i32 %sub337, %shr339
  store i32 %add340, i32* %K326, align 4
  %236 = load i32, i32* %K326, align 4
  %shl341 = shl i32 %236, 1
  %conv342 = zext i32 %shl341 to i64
  %237 = load i64, i64* %rsize, align 8
  %238 = load i32, i32* %K326, align 4
  %add343 = add i32 %238, 7
  %sh_prom344 = zext i32 %add343 to i64
  %shr345 = lshr i64 %237, %sh_prom344
  %and346 = and i64 %shr345, 1
  %add347 = add i64 %conv342, %and346
  %conv348 = trunc i64 %add347 to i32
  store i32 %conv348, i32* %I309, align 4
  br label %if.end.349

if.end.349:                                       ; preds = %if.else.319, %if.then.318
  br label %if.end.350

if.end.350:                                       ; preds = %if.end.349, %if.then.314
  %239 = load i32, i32* %I309, align 4
  %idxprom351 = zext i32 %239 to i64
  %240 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treebins352 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %240, i32 0, i32 10
  %arrayidx353 = getelementptr [32 x %struct.malloc_tree_chunk*], [32 x %struct.malloc_tree_chunk*]* %treebins352, i32 0, i64 %idxprom351
  store %struct.malloc_tree_chunk** %arrayidx353, %struct.malloc_tree_chunk*** %H308, align 8
  %241 = load i32, i32* %I309, align 4
  %242 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %index354 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %242, i32 0, i32 6
  store i32 %241, i32* %index354, align 4
  %243 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %child355 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %243, i32 0, i32 4
  %arrayidx356 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child355, i32 0, i64 1
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %arrayidx356, align 8
  %244 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %child357 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %244, i32 0, i32 4
  %arrayidx358 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child357, i32 0, i64 0
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %arrayidx358, align 8
  %245 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treemap359 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %245, i32 0, i32 1
  %246 = load i32, i32* %treemap359, align 4
  %247 = load i32, i32* %I309, align 4
  %shl360 = shl i32 1, %247
  %and361 = and i32 %246, %shl360
  %tobool362 = icmp ne i32 %and361, 0
  br i1 %tobool362, label %if.else.370, label %if.then.363

if.then.363:                                      ; preds = %if.end.350
  %248 = load i32, i32* %I309, align 4
  %shl364 = shl i32 1, %248
  %249 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treemap365 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %249, i32 0, i32 1
  %250 = load i32, i32* %treemap365, align 4
  %or366 = or i32 %250, %shl364
  store i32 %or366, i32* %treemap365, align 4
  %251 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %252 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H308, align 8
  store %struct.malloc_tree_chunk* %251, %struct.malloc_tree_chunk** %252, align 8
  %253 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H308, align 8
  %254 = bitcast %struct.malloc_tree_chunk** %253 to %struct.malloc_tree_chunk*
  %255 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %parent367 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %255, i32 0, i32 5
  store %struct.malloc_tree_chunk* %254, %struct.malloc_tree_chunk** %parent367, align 8
  %256 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %257 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %bk368 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %257, i32 0, i32 3
  store %struct.malloc_tree_chunk* %256, %struct.malloc_tree_chunk** %bk368, align 8
  %258 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %fd369 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %258, i32 0, i32 2
  store %struct.malloc_tree_chunk* %256, %struct.malloc_tree_chunk** %fd369, align 8
  br label %if.end.430

if.else.370:                                      ; preds = %if.end.350
  %259 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H308, align 8
  %260 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %259, align 8
  store %struct.malloc_tree_chunk* %260, %struct.malloc_tree_chunk** %T, align 8
  %261 = load i64, i64* %rsize, align 8
  %262 = load i32, i32* %I309, align 4
  %cmp372 = icmp eq i32 %262, 31
  br i1 %cmp372, label %cond.true.374, label %cond.false.375

cond.true.374:                                    ; preds = %if.else.370
  br label %cond.end.381

cond.false.375:                                   ; preds = %if.else.370
  %263 = load i32, i32* %I309, align 4
  %shr376 = lshr i32 %263, 1
  %add377 = add i32 %shr376, 8
  %sub378 = sub i32 %add377, 2
  %conv379 = zext i32 %sub378 to i64
  %sub380 = sub i64 63, %conv379
  br label %cond.end.381

cond.end.381:                                     ; preds = %cond.false.375, %cond.true.374
  %cond382 = phi i64 [ 0, %cond.true.374 ], [ %sub380, %cond.false.375 ]
  %shl383 = shl i64 %261, %cond382
  store i64 %shl383, i64* %K371, align 8
  br label %for.cond.384

for.cond.384:                                     ; preds = %if.end.428, %cond.end.381
  %264 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %head385 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %264, i32 0, i32 1
  %265 = load i64, i64* %head385, align 8
  %and386 = and i64 %265, -4
  %266 = load i64, i64* %rsize, align 8
  %cmp387 = icmp ne i64 %and386, %266
  br i1 %cmp387, label %if.then.389, label %if.else.410

if.then.389:                                      ; preds = %for.cond.384
  %267 = load i64, i64* %K371, align 8
  %shr390 = lshr i64 %267, 63
  %and391 = and i64 %shr390, 1
  %268 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %child392 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %268, i32 0, i32 4
  %arrayidx393 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child392, i32 0, i64 %and391
  store %struct.malloc_tree_chunk** %arrayidx393, %struct.malloc_tree_chunk*** %C, align 8
  %269 = load i64, i64* %K371, align 8
  %shl394 = shl i64 %269, 1
  store i64 %shl394, i64* %K371, align 8
  %270 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %C, align 8
  %271 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %270, align 8
  %cmp395 = icmp ne %struct.malloc_tree_chunk* %271, null
  br i1 %cmp395, label %if.then.397, label %if.else.398

if.then.397:                                      ; preds = %if.then.389
  %272 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %C, align 8
  %273 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %272, align 8
  store %struct.malloc_tree_chunk* %273, %struct.malloc_tree_chunk** %T, align 8
  br label %if.end.409

if.else.398:                                      ; preds = %if.then.389
  %274 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %C, align 8
  %275 = bitcast %struct.malloc_tree_chunk** %274 to i8*
  %276 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr399 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %276, i32 0, i32 4
  %277 = load i8*, i8** %least_addr399, align 8
  %cmp400 = icmp uge i8* %275, %277
  %conv401 = zext i1 %cmp400 to i32
  %conv402 = sext i32 %conv401 to i64
  %tobool403 = icmp ne i64 %conv402, 0
  br i1 %tobool403, label %if.then.404, label %if.else.408

if.then.404:                                      ; preds = %if.else.398
  %278 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %279 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %C, align 8
  store %struct.malloc_tree_chunk* %278, %struct.malloc_tree_chunk** %279, align 8
  %280 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %281 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %parent405 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %281, i32 0, i32 5
  store %struct.malloc_tree_chunk* %280, %struct.malloc_tree_chunk** %parent405, align 8
  %282 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %283 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %bk406 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %283, i32 0, i32 3
  store %struct.malloc_tree_chunk* %282, %struct.malloc_tree_chunk** %bk406, align 8
  %284 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %fd407 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %284, i32 0, i32 2
  store %struct.malloc_tree_chunk* %282, %struct.malloc_tree_chunk** %fd407, align 8
  br label %for.end.429

if.else.408:                                      ; preds = %if.else.398
  call void @abort() #8
  unreachable

if.end.409:                                       ; preds = %if.then.397
  br label %if.end.428

if.else.410:                                      ; preds = %for.cond.384
  %285 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %fd412 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %285, i32 0, i32 2
  %286 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %fd412, align 8
  store %struct.malloc_tree_chunk* %286, %struct.malloc_tree_chunk** %F411, align 8
  %287 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %288 = bitcast %struct.malloc_tree_chunk* %287 to i8*
  %289 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr413 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %289, i32 0, i32 4
  %290 = load i8*, i8** %least_addr413, align 8
  %cmp414 = icmp uge i8* %288, %290
  br i1 %cmp414, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else.410
  %291 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F411, align 8
  %292 = bitcast %struct.malloc_tree_chunk* %291 to i8*
  %293 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr416 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %293, i32 0, i32 4
  %294 = load i8*, i8** %least_addr416, align 8
  %cmp417 = icmp uge i8* %292, %294
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else.410
  %295 = phi i1 [ false, %if.else.410 ], [ %cmp417, %land.rhs ]
  %land.ext = zext i1 %295 to i32
  %conv419 = sext i32 %land.ext to i64
  %tobool420 = icmp ne i64 %conv419, 0
  br i1 %tobool420, label %if.then.421, label %if.else.427

if.then.421:                                      ; preds = %land.end
  %296 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %297 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F411, align 8
  %bk422 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %297, i32 0, i32 3
  store %struct.malloc_tree_chunk* %296, %struct.malloc_tree_chunk** %bk422, align 8
  %298 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %fd423 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %298, i32 0, i32 2
  store %struct.malloc_tree_chunk* %296, %struct.malloc_tree_chunk** %fd423, align 8
  %299 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F411, align 8
  %300 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %fd424 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %300, i32 0, i32 2
  store %struct.malloc_tree_chunk* %299, %struct.malloc_tree_chunk** %fd424, align 8
  %301 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %302 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %bk425 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %302, i32 0, i32 3
  store %struct.malloc_tree_chunk* %301, %struct.malloc_tree_chunk** %bk425, align 8
  %303 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %parent426 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %303, i32 0, i32 5
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %parent426, align 8
  br label %for.end.429

if.else.427:                                      ; preds = %land.end
  call void @abort() #8
  unreachable

if.end.428:                                       ; preds = %if.end.409
  br label %for.cond.384

for.end.429:                                      ; preds = %if.then.421, %if.then.404
  br label %if.end.430

if.end.430:                                       ; preds = %for.end.429, %if.then.363
  br label %if.end.431

if.end.431:                                       ; preds = %if.end.430, %if.end.302
  br label %if.end.432

if.end.432:                                       ; preds = %if.end.431, %if.then.258
  %304 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %v, align 8
  %305 = bitcast %struct.malloc_tree_chunk* %304 to i8*
  %add.ptr433 = getelementptr i8, i8* %305, i64 16
  store i8* %add.ptr433, i8** %retval
  br label %return

if.end.434:                                       ; preds = %if.then.119
  br label %if.end.435

if.end.435:                                       ; preds = %if.end.434, %if.then.115
  call void @abort() #8
  unreachable

if.end.436:                                       ; preds = %land.lhs.true.111, %while.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.436, %if.end.432
  %306 = load i8*, i8** %retval
  ret i8* %306
}

; Function Attrs: uwtable
define internal i8* @sys_alloc(%struct.malloc_state* %m, i64 %nb) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct.malloc_state*, align 8
  %nb.addr = alloca i64, align 8
  %tbase = alloca i8*, align 8
  %tsize = alloca i64, align 8
  %mmap_flag = alloca i32, align 4
  %mem = alloca i8*, align 8
  %req = alloca i64, align 8
  %rsize = alloca i64, align 8
  %mp = alloca i8*, align 8
  %mn = alloca %struct.malloc_chunk*, align 8
  %sp = alloca %struct.malloc_segment*, align 8
  %oldbase = alloca i8*, align 8
  %rsize165 = alloca i64, align 8
  %p = alloca %struct.malloc_chunk*, align 8
  %r = alloca %struct.malloc_chunk*, align 8
  store %struct.malloc_state* %m, %struct.malloc_state** %m.addr, align 8
  store i64 %nb, i64* %nb.addr, align 8
  store i8* inttoptr (i64 -1 to i8*), i8** %tbase, align 8
  store i64 0, i64* %tsize, align 8
  store i32 0, i32* %mmap_flag, align 4
  %call = call i32 @init_mparams()
  %0 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %mflags = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %0, i32 0, i32 13
  %1 = load i32, i32* %mflags, align 4
  %conv = zext i32 %1 to i64
  %and = and i64 %conv, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* %nb.addr, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 3), align 8
  %cmp = icmp uge i64 %2, %3
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %5 = load i64, i64* %nb.addr, align 8
  %call2 = call i8* @mmap_alloc(%struct.malloc_state* %4, i64 %5)
  store i8* %call2, i8** %mem, align 8
  %6 = load i8*, i8** %mem, align 8
  %cmp3 = icmp ne i8* %6, null
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %7 = load i8*, i8** %mem, align 8
  store i8* %7, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %land.lhs.true, %entry
  %8 = load i8*, i8** %tbase, align 8
  %cmp7 = icmp eq i8* %8, inttoptr (i64 -1 to i8*)
  br i1 %cmp7, label %if.then.9, label %if.end.22

if.then.9:                                        ; preds = %if.end.6
  %9 = load i64, i64* %nb.addr, align 8
  %add = add i64 %9, 72
  %add10 = add i64 %add, 1
  store i64 %add10, i64* %req, align 8
  %10 = load i64, i64* %req, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 2), align 8
  %add11 = add i64 %10, %11
  %12 = load i64, i64* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 2), align 8
  %sub = sub i64 %12, 1
  %neg = xor i64 %sub, -1
  %and12 = and i64 %add11, %neg
  store i64 %and12, i64* %rsize, align 8
  %13 = load i64, i64* %rsize, align 8
  %14 = load i64, i64* %nb.addr, align 8
  %cmp13 = icmp ugt i64 %13, %14
  br i1 %cmp13, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.then.9
  %15 = load i64, i64* %rsize, align 8
  %call16 = call i8* @dlmmap(i8* null, i64 %15, i32 3, i32 34, i32 -1, i64 0)
  store i8* %call16, i8** %mp, align 8
  %16 = load i8*, i8** %mp, align 8
  %cmp17 = icmp ne i8* %16, inttoptr (i64 -1 to i8*)
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.15
  %17 = load i8*, i8** %mp, align 8
  store i8* %17, i8** %tbase, align 8
  %18 = load i64, i64* %rsize, align 8
  store i64 %18, i64* %tsize, align 8
  store i32 1, i32* %mmap_flag, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.15
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.9
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.6
  %19 = load i8*, i8** %tbase, align 8
  %cmp23 = icmp ne i8* %19, inttoptr (i64 -1 to i8*)
  br i1 %cmp23, label %if.then.25, label %if.end.177

if.then.25:                                       ; preds = %if.end.22
  %20 = load i64, i64* %tsize, align 8
  %21 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %footprint = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %21, i32 0, i32 11
  %22 = load i64, i64* %footprint, align 8
  %add26 = add i64 %22, %20
  store i64 %add26, i64* %footprint, align 8
  %23 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %max_footprint = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %23, i32 0, i32 12
  %24 = load i64, i64* %max_footprint, align 8
  %cmp27 = icmp ugt i64 %add26, %24
  br i1 %cmp27, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.then.25
  %25 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %footprint30 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %25, i32 0, i32 11
  %26 = load i64, i64* %footprint30, align 8
  %27 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %max_footprint31 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %27, i32 0, i32 12
  store i64 %26, i64* %max_footprint31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.then.25
  %28 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %top = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %28, i32 0, i32 6
  %29 = load %struct.malloc_chunk*, %struct.malloc_chunk** %top, align 8
  %cmp33 = icmp ne %struct.malloc_chunk* %29, null
  br i1 %cmp33, label %if.else.81, label %if.then.35

if.then.35:                                       ; preds = %if.end.32
  %30 = load i8*, i8** %tbase, align 8
  %31 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %31, i32 0, i32 4
  store i8* %30, i8** %least_addr, align 8
  %32 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %32, i32 0, i32 15
  %base = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg, i32 0, i32 0
  store i8* %30, i8** %base, align 8
  %33 = load i64, i64* %tsize, align 8
  %34 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg36 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %34, i32 0, i32 15
  %size = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg36, i32 0, i32 1
  store i64 %33, i64* %size, align 8
  %35 = load i32, i32* %mmap_flag, align 4
  %conv37 = zext i32 %35 to i64
  %cmp38 = icmp ne i64 %conv37, 1
  br i1 %cmp38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.35
  call void @abort() #8
  unreachable
                                                  ; No predecessors!
  %37 = load i32, i32* %mmap_flag, align 4
  br label %cond.end.68

cond.false:                                       ; preds = %if.then.35
  %38 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg40 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %38, i32 0, i32 15
  %base41 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg40, i32 0, i32 0
  %39 = load i8*, i8** %base41, align 8
  %40 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg42 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %40, i32 0, i32 15
  %size43 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg42, i32 0, i32 1
  %41 = load i64, i64* %size43, align 8
  %add.ptr = getelementptr i8, i8* %39, i64 %41
  %add.ptr44 = getelementptr i8, i8* %add.ptr, i64 -8
  %42 = bitcast i8* %add.ptr44 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg45 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %44, i32 0, i32 15
  %exec_offset = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg45, i32 0, i32 3
  store i64 %43, i64* %exec_offset, align 8
  %45 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg46 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %45, i32 0, i32 15
  %base47 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg46, i32 0, i32 0
  %46 = load i8*, i8** %base47, align 8
  %47 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg48 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %47, i32 0, i32 15
  %exec_offset49 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg48, i32 0, i32 3
  %48 = load i64, i64* %exec_offset49, align 8
  %add.ptr50 = getelementptr i8, i8* %46, i64 %48
  %49 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg51 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %49, i32 0, i32 15
  %size52 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg51, i32 0, i32 1
  %50 = load i64, i64* %size52, align 8
  %add.ptr53 = getelementptr i8, i8* %add.ptr50, i64 %50
  %add.ptr54 = getelementptr i8, i8* %add.ptr53, i64 -8
  %51 = bitcast i8* %add.ptr54 to i64*
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg55 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %53, i32 0, i32 15
  %exec_offset56 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg55, i32 0, i32 3
  %54 = load i64, i64* %exec_offset56, align 8
  %cmp57 = icmp ne i64 %52, %54
  br i1 %cmp57, label %cond.true.59, label %cond.false.61

cond.true.59:                                     ; preds = %cond.false
  call void @abort() #8
  unreachable
                                                  ; No predecessors!
  %56 = load i32, i32* %mmap_flag, align 4
  %conv60 = zext i32 %56 to i64
  br label %cond.end

cond.false.61:                                    ; preds = %cond.false
  %57 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg62 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %57, i32 0, i32 15
  %base63 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg62, i32 0, i32 0
  %58 = load i8*, i8** %base63, align 8
  %59 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg64 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %59, i32 0, i32 15
  %size65 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg64, i32 0, i32 1
  %60 = load i64, i64* %size65, align 8
  %add.ptr66 = getelementptr i8, i8* %58, i64 %60
  %add.ptr67 = getelementptr i8, i8* %add.ptr66, i64 -8
  %61 = bitcast i8* %add.ptr67 to i64*
  store i64 0, i64* %61, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.61, %55
  %cond = phi i64 [ %conv60, %55 ], [ 0, %cond.false.61 ]
  %62 = load i32, i32* %mmap_flag, align 4
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.end, %36
  %cond69 = phi i32 [ %37, %36 ], [ %62, %cond.end ]
  %63 = load i64, i64* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 0), align 8
  %64 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %magic = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %64, i32 0, i32 8
  store i64 %63, i64* %magic, align 8
  %65 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  call void @init_bins(%struct.malloc_state* %65)
  %66 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %cmp70 = icmp eq %struct.malloc_state* %66, @_gm_
  br i1 %cmp70, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %cond.end.68
  %67 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %68 = load i8*, i8** %tbase, align 8
  %69 = bitcast i8* %68 to %struct.malloc_chunk*
  %70 = load i64, i64* %tsize, align 8
  %sub73 = sub i64 %70, 72
  call void @init_top(%struct.malloc_state* %67, %struct.malloc_chunk* %69, i64 %sub73)
  br label %if.end.80

if.else:                                          ; preds = %cond.end.68
  %71 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %72 = bitcast %struct.malloc_state* %71 to i8*
  %add.ptr74 = getelementptr i8, i8* %72, i64 -16
  %73 = bitcast i8* %add.ptr74 to %struct.malloc_chunk*
  %74 = bitcast %struct.malloc_chunk* %73 to i8*
  %75 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %76 = bitcast %struct.malloc_state* %75 to i8*
  %add.ptr75 = getelementptr i8, i8* %76, i64 -16
  %77 = bitcast i8* %add.ptr75 to %struct.malloc_chunk*
  %head = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %77, i32 0, i32 1
  %78 = load i64, i64* %head, align 8
  %and76 = and i64 %78, -4
  %add.ptr77 = getelementptr i8, i8* %74, i64 %and76
  %79 = bitcast i8* %add.ptr77 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %79, %struct.malloc_chunk** %mn, align 8
  %80 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %81 = load %struct.malloc_chunk*, %struct.malloc_chunk** %mn, align 8
  %82 = load i8*, i8** %tbase, align 8
  %83 = load i64, i64* %tsize, align 8
  %add.ptr78 = getelementptr i8, i8* %82, i64 %83
  %84 = load %struct.malloc_chunk*, %struct.malloc_chunk** %mn, align 8
  %85 = bitcast %struct.malloc_chunk* %84 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr78 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %85 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub79 = sub i64 %sub.ptr.sub, 72
  call void @init_top(%struct.malloc_state* %80, %struct.malloc_chunk* %81, i64 %sub79)
  br label %if.end.80

if.end.80:                                        ; preds = %if.else, %if.then.72
  br label %if.end.160

if.else.81:                                       ; preds = %if.end.32
  %86 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg82 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %86, i32 0, i32 15
  store %struct.malloc_segment* %seg82, %struct.malloc_segment** %sp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.81
  %87 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %cmp83 = icmp ne %struct.malloc_segment* %87, null
  br i1 %cmp83, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %88 = load i8*, i8** %tbase, align 8
  %89 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %base85 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %89, i32 0, i32 0
  %90 = load i8*, i8** %base85, align 8
  %91 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %size86 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %91, i32 0, i32 1
  %92 = load i64, i64* %size86, align 8
  %add.ptr87 = getelementptr i8, i8* %90, i64 %92
  %cmp88 = icmp ne i8* %88, %add.ptr87
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %93 = phi i1 [ false, %while.cond ], [ %cmp88, %land.rhs ]
  br i1 %93, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %94 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %next = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %94, i32 0, i32 2
  %95 = load %struct.malloc_segment*, %struct.malloc_segment** %next, align 8
  store %struct.malloc_segment* %95, %struct.malloc_segment** %sp, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %96 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %cmp90 = icmp ne %struct.malloc_segment* %96, null
  br i1 %cmp90, label %land.lhs.true.92, label %if.else.119

land.lhs.true.92:                                 ; preds = %while.end
  %97 = load i8*, i8** %tbase, align 8
  %98 = load i64, i64* %tsize, align 8
  %add.ptr93 = getelementptr i8, i8* %97, i64 %98
  %add.ptr94 = getelementptr i8, i8* %add.ptr93, i64 -8
  %99 = bitcast i8* %add.ptr94 to i64*
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %exec_offset95 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %101, i32 0, i32 3
  %102 = load i64, i64* %exec_offset95, align 8
  %cmp96 = icmp eq i64 %100, %102
  br i1 %cmp96, label %land.lhs.true.98, label %if.else.119

land.lhs.true.98:                                 ; preds = %land.lhs.true.92
  %103 = load i32, i32* %mmap_flag, align 4
  %conv99 = zext i32 %103 to i64
  %cmp100 = icmp eq i64 1, %conv99
  br i1 %cmp100, label %land.lhs.true.102, label %if.else.119

land.lhs.true.102:                                ; preds = %land.lhs.true.98
  %104 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %top103 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %104, i32 0, i32 6
  %105 = load %struct.malloc_chunk*, %struct.malloc_chunk** %top103, align 8
  %106 = bitcast %struct.malloc_chunk* %105 to i8*
  %107 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %base104 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %107, i32 0, i32 0
  %108 = load i8*, i8** %base104, align 8
  %cmp105 = icmp uge i8* %106, %108
  br i1 %cmp105, label %land.lhs.true.107, label %if.else.119

land.lhs.true.107:                                ; preds = %land.lhs.true.102
  %109 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %top108 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %109, i32 0, i32 6
  %110 = load %struct.malloc_chunk*, %struct.malloc_chunk** %top108, align 8
  %111 = bitcast %struct.malloc_chunk* %110 to i8*
  %112 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %base109 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %112, i32 0, i32 0
  %113 = load i8*, i8** %base109, align 8
  %114 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %size110 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %114, i32 0, i32 1
  %115 = load i64, i64* %size110, align 8
  %add.ptr111 = getelementptr i8, i8* %113, i64 %115
  %cmp112 = icmp ult i8* %111, %add.ptr111
  br i1 %cmp112, label %if.then.114, label %if.else.119

if.then.114:                                      ; preds = %land.lhs.true.107
  %116 = load i64, i64* %tsize, align 8
  %117 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %size115 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %117, i32 0, i32 1
  %118 = load i64, i64* %size115, align 8
  %add116 = add i64 %118, %116
  store i64 %add116, i64* %size115, align 8
  %119 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %120 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %top117 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %120, i32 0, i32 6
  %121 = load %struct.malloc_chunk*, %struct.malloc_chunk** %top117, align 8
  %122 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %topsize = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %122, i32 0, i32 3
  %123 = load i64, i64* %topsize, align 8
  %124 = load i64, i64* %tsize, align 8
  %add118 = add i64 %123, %124
  call void @init_top(%struct.malloc_state* %119, %struct.malloc_chunk* %121, i64 %add118)
  br label %if.end.159

if.else.119:                                      ; preds = %land.lhs.true.107, %land.lhs.true.102, %land.lhs.true.98, %land.lhs.true.92, %while.end
  %125 = load i8*, i8** %tbase, align 8
  %126 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr120 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %126, i32 0, i32 4
  %127 = load i8*, i8** %least_addr120, align 8
  %cmp121 = icmp ult i8* %125, %127
  br i1 %cmp121, label %if.then.123, label %if.end.125

if.then.123:                                      ; preds = %if.else.119
  %128 = load i8*, i8** %tbase, align 8
  %129 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr124 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %129, i32 0, i32 4
  store i8* %128, i8** %least_addr124, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.123, %if.else.119
  %130 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg126 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %130, i32 0, i32 15
  store %struct.malloc_segment* %seg126, %struct.malloc_segment** %sp, align 8
  br label %while.cond.127

while.cond.127:                                   ; preds = %while.body.136, %if.end.125
  %131 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %cmp128 = icmp ne %struct.malloc_segment* %131, null
  br i1 %cmp128, label %land.rhs.130, label %land.end.135

land.rhs.130:                                     ; preds = %while.cond.127
  %132 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %base131 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %132, i32 0, i32 0
  %133 = load i8*, i8** %base131, align 8
  %134 = load i8*, i8** %tbase, align 8
  %135 = load i64, i64* %tsize, align 8
  %add.ptr132 = getelementptr i8, i8* %134, i64 %135
  %cmp133 = icmp ne i8* %133, %add.ptr132
  br label %land.end.135

land.end.135:                                     ; preds = %land.rhs.130, %while.cond.127
  %136 = phi i1 [ false, %while.cond.127 ], [ %cmp133, %land.rhs.130 ]
  br i1 %136, label %while.body.136, label %while.end.138

while.body.136:                                   ; preds = %land.end.135
  %137 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %next137 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %137, i32 0, i32 2
  %138 = load %struct.malloc_segment*, %struct.malloc_segment** %next137, align 8
  store %struct.malloc_segment* %138, %struct.malloc_segment** %sp, align 8
  br label %while.cond.127

while.end.138:                                    ; preds = %land.end.135
  %139 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %cmp139 = icmp ne %struct.malloc_segment* %139, null
  br i1 %cmp139, label %land.lhs.true.141, label %if.else.157

land.lhs.true.141:                                ; preds = %while.end.138
  %140 = load i8*, i8** %tbase, align 8
  %141 = load i64, i64* %tsize, align 8
  %add.ptr142 = getelementptr i8, i8* %140, i64 %141
  %add.ptr143 = getelementptr i8, i8* %add.ptr142, i64 -8
  %142 = bitcast i8* %add.ptr143 to i64*
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %exec_offset144 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %144, i32 0, i32 3
  %145 = load i64, i64* %exec_offset144, align 8
  %cmp145 = icmp eq i64 %143, %145
  br i1 %cmp145, label %land.lhs.true.147, label %if.else.157

land.lhs.true.147:                                ; preds = %land.lhs.true.141
  %146 = load i32, i32* %mmap_flag, align 4
  %conv148 = zext i32 %146 to i64
  %cmp149 = icmp eq i64 1, %conv148
  br i1 %cmp149, label %if.then.151, label %if.else.157

if.then.151:                                      ; preds = %land.lhs.true.147
  %147 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %base152 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %147, i32 0, i32 0
  %148 = load i8*, i8** %base152, align 8
  store i8* %148, i8** %oldbase, align 8
  %149 = load i8*, i8** %tbase, align 8
  %150 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %base153 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %150, i32 0, i32 0
  store i8* %149, i8** %base153, align 8
  %151 = load i64, i64* %tsize, align 8
  %152 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %size154 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %152, i32 0, i32 1
  %153 = load i64, i64* %size154, align 8
  %add155 = add i64 %153, %151
  store i64 %add155, i64* %size154, align 8
  %154 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %155 = load i8*, i8** %tbase, align 8
  %156 = load i8*, i8** %oldbase, align 8
  %157 = load i64, i64* %nb.addr, align 8
  %call156 = call i8* @prepend_alloc(%struct.malloc_state* %154, i8* %155, i8* %156, i64 %157)
  store i8* %call156, i8** %retval
  br label %return

if.else.157:                                      ; preds = %land.lhs.true.147, %land.lhs.true.141, %while.end.138
  %158 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %159 = load i8*, i8** %tbase, align 8
  %160 = load i64, i64* %tsize, align 8
  %161 = load i32, i32* %mmap_flag, align 4
  call void @add_segment(%struct.malloc_state* %158, i8* %159, i64 %160, i32 %161)
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.157
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.then.114
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.end.80
  %162 = load i64, i64* %nb.addr, align 8
  %163 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %topsize161 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %163, i32 0, i32 3
  %164 = load i64, i64* %topsize161, align 8
  %cmp162 = icmp ult i64 %162, %164
  br i1 %cmp162, label %if.then.164, label %if.end.176

if.then.164:                                      ; preds = %if.end.160
  %165 = load i64, i64* %nb.addr, align 8
  %166 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %topsize166 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %166, i32 0, i32 3
  %167 = load i64, i64* %topsize166, align 8
  %sub167 = sub i64 %167, %165
  store i64 %sub167, i64* %topsize166, align 8
  store i64 %sub167, i64* %rsize165, align 8
  %168 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %top168 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %168, i32 0, i32 6
  %169 = load %struct.malloc_chunk*, %struct.malloc_chunk** %top168, align 8
  store %struct.malloc_chunk* %169, %struct.malloc_chunk** %p, align 8
  %170 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %171 = bitcast %struct.malloc_chunk* %170 to i8*
  %172 = load i64, i64* %nb.addr, align 8
  %add.ptr169 = getelementptr i8, i8* %171, i64 %172
  %173 = bitcast i8* %add.ptr169 to %struct.malloc_chunk*
  %174 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %top170 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %174, i32 0, i32 6
  store %struct.malloc_chunk* %173, %struct.malloc_chunk** %top170, align 8
  store %struct.malloc_chunk* %173, %struct.malloc_chunk** %r, align 8
  %175 = load i64, i64* %rsize165, align 8
  %or = or i64 %175, 1
  %176 = load %struct.malloc_chunk*, %struct.malloc_chunk** %r, align 8
  %head171 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %176, i32 0, i32 1
  store i64 %or, i64* %head171, align 8
  %177 = load i64, i64* %nb.addr, align 8
  %or172 = or i64 %177, 1
  %or173 = or i64 %or172, 2
  %178 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %head174 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %178, i32 0, i32 1
  store i64 %or173, i64* %head174, align 8
  %179 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %180 = bitcast %struct.malloc_chunk* %179 to i8*
  %add.ptr175 = getelementptr i8, i8* %180, i64 16
  store i8* %add.ptr175, i8** %retval
  br label %return

if.end.176:                                       ; preds = %if.end.160
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.end.22
  %call178 = call i32* @__errno_location() #9
  store i32 12, i32* %call178, align 4
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.177, %if.then.164, %if.then.151, %if.then.5
  %181 = load i8*, i8** %retval
  ret i8* %181
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #2

; Function Attrs: nounwind
declare i64 @sysconf(i32) #2

; Function Attrs: uwtable
define internal i8* @mmap_alloc(%struct.malloc_state* %m, i64 %nb) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct.malloc_state*, align 8
  %nb.addr = alloca i64, align 8
  %mmsize = alloca i64, align 8
  %mm = alloca i8*, align 8
  %offset = alloca i64, align 8
  %psize = alloca i64, align 8
  %p = alloca %struct.malloc_chunk*, align 8
  store %struct.malloc_state* %m, %struct.malloc_state** %m.addr, align 8
  store i64 %nb, i64* %nb.addr, align 8
  %0 = load i64, i64* %nb.addr, align 8
  %add = add i64 %0, 48
  %add1 = add i64 %add, 7
  %1 = load i64, i64* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 2), align 8
  %add2 = add i64 %add1, %1
  %2 = load i64, i64* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 2), align 8
  %sub = sub i64 %2, 1
  %neg = xor i64 %sub, -1
  %and = and i64 %add2, %neg
  store i64 %and, i64* %mmsize, align 8
  %3 = load i64, i64* %mmsize, align 8
  %4 = load i64, i64* %nb.addr, align 8
  %cmp = icmp ugt i64 %3, %4
  br i1 %cmp, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %mmsize, align 8
  %call = call i8* @dlmmap(i8* null, i64 %5, i32 3, i32 34, i32 -1, i64 0)
  store i8* %call, i8** %mm, align 8
  %6 = load i8*, i8** %mm, align 8
  %cmp3 = icmp ne i8* %6, inttoptr (i64 -1 to i8*)
  br i1 %cmp3, label %if.then.4, label %if.end.30

if.then.4:                                        ; preds = %if.then
  %7 = load i8*, i8** %mm, align 8
  %add.ptr = getelementptr i8, i8* %7, i64 16
  %8 = ptrtoint i8* %add.ptr to i64
  %and5 = and i64 %8, 7
  %cmp6 = icmp eq i64 %and5, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.4
  br label %cond.end

cond.false:                                       ; preds = %if.then.4
  %9 = load i8*, i8** %mm, align 8
  %add.ptr7 = getelementptr i8, i8* %9, i64 16
  %10 = ptrtoint i8* %add.ptr7 to i64
  %and8 = and i64 %10, 7
  %sub9 = sub i64 8, %and8
  %and10 = and i64 %sub9, 7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %and10, %cond.false ]
  store i64 %cond, i64* %offset, align 8
  %11 = load i64, i64* %mmsize, align 8
  %12 = load i64, i64* %offset, align 8
  %sub11 = sub i64 %11, %12
  %sub12 = sub i64 %sub11, 32
  store i64 %sub12, i64* %psize, align 8
  %13 = load i8*, i8** %mm, align 8
  %14 = load i64, i64* %offset, align 8
  %add.ptr13 = getelementptr i8, i8* %13, i64 %14
  %15 = bitcast i8* %add.ptr13 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %15, %struct.malloc_chunk** %p, align 8
  %16 = load i64, i64* %offset, align 8
  %or = or i64 %16, 1
  %17 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %prev_foot = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %17, i32 0, i32 0
  store i64 %or, i64* %prev_foot, align 8
  %18 = load i64, i64* %psize, align 8
  %or14 = or i64 %18, 2
  %19 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %head = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %19, i32 0, i32 1
  store i64 %or14, i64* %head, align 8
  %20 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %21 = bitcast %struct.malloc_chunk* %20 to i8*
  %22 = load i64, i64* %psize, align 8
  %add.ptr15 = getelementptr i8, i8* %21, i64 %22
  %23 = bitcast i8* %add.ptr15 to %struct.malloc_chunk*
  %head16 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %23, i32 0, i32 1
  store i64 11, i64* %head16, align 8
  %24 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %25 = bitcast %struct.malloc_chunk* %24 to i8*
  %26 = load i64, i64* %psize, align 8
  %add17 = add i64 %26, 8
  %add.ptr18 = getelementptr i8, i8* %25, i64 %add17
  %27 = bitcast i8* %add.ptr18 to %struct.malloc_chunk*
  %head19 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %27, i32 0, i32 1
  store i64 0, i64* %head19, align 8
  %28 = load i8*, i8** %mm, align 8
  %29 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %29, i32 0, i32 4
  %30 = load i8*, i8** %least_addr, align 8
  %cmp20 = icmp ult i8* %28, %30
  br i1 %cmp20, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %cond.end
  %31 = load i8*, i8** %mm, align 8
  %32 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr22 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %32, i32 0, i32 4
  store i8* %31, i8** %least_addr22, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.21, %cond.end
  %33 = load i64, i64* %mmsize, align 8
  %34 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %footprint = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %34, i32 0, i32 11
  %35 = load i64, i64* %footprint, align 8
  %add23 = add i64 %35, %33
  store i64 %add23, i64* %footprint, align 8
  %36 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %max_footprint = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %36, i32 0, i32 12
  %37 = load i64, i64* %max_footprint, align 8
  %cmp24 = icmp ugt i64 %add23, %37
  br i1 %cmp24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end
  %38 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %footprint26 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %38, i32 0, i32 11
  %39 = load i64, i64* %footprint26, align 8
  %40 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %max_footprint27 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %40, i32 0, i32 12
  store i64 %39, i64* %max_footprint27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.end
  %41 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %42 = bitcast %struct.malloc_chunk* %41 to i8*
  %add.ptr29 = getelementptr i8, i8* %42, i64 16
  store i8* %add.ptr29, i8** %retval
  br label %return

if.end.30:                                        ; preds = %if.then
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.end.28
  %43 = load i8*, i8** %retval
  ret i8* %43
}

; Function Attrs: uwtable
define internal i8* @dlmmap(i8* %start, i64 %length, i32 %prot, i32 %flags, i32 %fd, i64 %offset) #0 {
entry:
  %retval = alloca i8*, align 8
  %start.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %prot.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  store i8* %start, i8** %start.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i32 %prot, i32* %prot.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i64 %offset, i64* %offset.addr, align 8
  %0 = load i32, i32* @execfd, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  br i1 false, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %1 = load i8*, i8** %start.addr, align 8
  %2 = load i64, i64* %length.addr, align 8
  %3 = load i32, i32* %prot.addr, align 4
  %and = and i32 %3, -5
  %4 = load i32, i32* %flags.addr, align 4
  %5 = load i32, i32* %fd.addr, align 4
  %6 = load i64, i64* %offset.addr, align 8
  %call = call i8* @mmap(i8* %1, i64 %2, i32 %and, i32 %4, i32 %5, i64 %6) #7
  store i8* %call, i8** %ptr, align 8
  %7 = load i8*, i8** %ptr, align 8
  store i8* %7, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load i32, i32* @execfd, align 4
  %cmp1 = icmp eq i32 %8, -1
  br i1 %cmp1, label %land.lhs.true.2, label %if.end.16

land.lhs.true.2:                                  ; preds = %if.end
  %9 = load i32, i32* @selinux_enabled, align 4
  %cmp3 = icmp sge i32 %9, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.2
  %10 = load i32, i32* @selinux_enabled, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end.16, label %if.then.6

cond.false:                                       ; preds = %land.lhs.true.2
  %call4 = call i32 @selinux_enabled_check()
  store i32 %call4, i32* @selinux_enabled, align 4
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.16, label %if.then.6

if.then.6:                                        ; preds = %cond.false, %cond.true
  %11 = load i8*, i8** %start.addr, align 8
  %12 = load i64, i64* %length.addr, align 8
  %13 = load i32, i32* %prot.addr, align 4
  %or = or i32 %13, 4
  %14 = load i32, i32* %flags.addr, align 4
  %15 = load i32, i32* %fd.addr, align 4
  %16 = load i64, i64* %offset.addr, align 8
  %call7 = call i8* @mmap(i8* %11, i64 %12, i32 %or, i32 %14, i32 %15, i64 %16) #7
  store i8* %call7, i8** %ptr, align 8
  %17 = load i8*, i8** %ptr, align 8
  %cmp8 = icmp ne i8* %17, inttoptr (i64 -1 to i8*)
  br i1 %cmp8, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.6
  %call9 = call i32* @__errno_location() #9
  %18 = load i32, i32* %call9, align 4
  %cmp10 = icmp ne i32 %18, 1
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.15

land.lhs.true.11:                                 ; preds = %lor.lhs.false
  %call12 = call i32* @__errno_location() #9
  %19 = load i32, i32* %call12, align 4
  %cmp13 = icmp ne i32 %19, 13
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true.11, %if.then.6
  %20 = load i8*, i8** %ptr, align 8
  store i8* %20, i8** %retval
  br label %return

if.end.15:                                        ; preds = %land.lhs.true.11, %lor.lhs.false
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %cond.false, %cond.true, %if.end
  %21 = load i64, i64* @execsize, align 8
  %cmp17 = icmp eq i64 %21, 0
  br i1 %cmp17, label %if.then.20, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %if.end.16
  %22 = load i32, i32* @execfd, align 4
  %cmp19 = icmp eq i32 %22, -1
  br i1 %cmp19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %lor.lhs.false.18, %if.end.16
  %call21 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @open_temp_exec_file_mutex) #7
  %23 = load i8*, i8** %start.addr, align 8
  %24 = load i64, i64* %length.addr, align 8
  %25 = load i32, i32* %prot.addr, align 4
  %26 = load i32, i32* %flags.addr, align 4
  %27 = load i64, i64* %offset.addr, align 8
  %call22 = call i8* @dlmmap_locked(i8* %23, i64 %24, i32 %25, i32 %26, i64 %27)
  store i8* %call22, i8** %ptr, align 8
  %call23 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @open_temp_exec_file_mutex) #7
  %28 = load i8*, i8** %ptr, align 8
  store i8* %28, i8** %retval
  br label %return

if.end.24:                                        ; preds = %lor.lhs.false.18
  %29 = load i8*, i8** %start.addr, align 8
  %30 = load i64, i64* %length.addr, align 8
  %31 = load i32, i32* %prot.addr, align 4
  %32 = load i32, i32* %flags.addr, align 4
  %33 = load i64, i64* %offset.addr, align 8
  %call25 = call i8* @dlmmap_locked(i8* %29, i64 %30, i32 %31, i32 %32, i64 %33)
  store i8* %call25, i8** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.20, %if.then.14, %if.then
  %34 = load i8*, i8** %retval
  ret i8* %34
}

; Function Attrs: nounwind uwtable
define internal void @init_bins(%struct.malloc_state* %m) #1 {
entry:
  %m.addr = alloca %struct.malloc_state*, align 8
  %i = alloca i32, align 4
  %bin = alloca %struct.malloc_chunk*, align 8
  store %struct.malloc_state* %m, %struct.malloc_state** %m.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %shl = shl i32 %1, 1
  %idxprom = zext i32 %shl to i64
  %2 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %smallbins = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %2, i32 0, i32 9
  %arrayidx = getelementptr [66 x %struct.malloc_chunk*], [66 x %struct.malloc_chunk*]* %smallbins, i32 0, i64 %idxprom
  %3 = bitcast %struct.malloc_chunk** %arrayidx to i8*
  %4 = bitcast i8* %3 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %4, %struct.malloc_chunk** %bin, align 8
  %5 = load %struct.malloc_chunk*, %struct.malloc_chunk** %bin, align 8
  %6 = load %struct.malloc_chunk*, %struct.malloc_chunk** %bin, align 8
  %bk = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %6, i32 0, i32 3
  store %struct.malloc_chunk* %5, %struct.malloc_chunk** %bk, align 8
  %7 = load %struct.malloc_chunk*, %struct.malloc_chunk** %bin, align 8
  %fd = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %7, i32 0, i32 2
  store %struct.malloc_chunk* %5, %struct.malloc_chunk** %fd, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_top(%struct.malloc_state* %m, %struct.malloc_chunk* %p, i64 %psize) #1 {
entry:
  %m.addr = alloca %struct.malloc_state*, align 8
  %p.addr = alloca %struct.malloc_chunk*, align 8
  %psize.addr = alloca i64, align 8
  %offset = alloca i64, align 8
  store %struct.malloc_state* %m, %struct.malloc_state** %m.addr, align 8
  store %struct.malloc_chunk* %p, %struct.malloc_chunk** %p.addr, align 8
  store i64 %psize, i64* %psize.addr, align 8
  %0 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p.addr, align 8
  %1 = bitcast %struct.malloc_chunk* %0 to i8*
  %add.ptr = getelementptr i8, i8* %1, i64 16
  %2 = ptrtoint i8* %add.ptr to i64
  %and = and i64 %2, 7
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p.addr, align 8
  %4 = bitcast %struct.malloc_chunk* %3 to i8*
  %add.ptr1 = getelementptr i8, i8* %4, i64 16
  %5 = ptrtoint i8* %add.ptr1 to i64
  %and2 = and i64 %5, 7
  %sub = sub i64 8, %and2
  %and3 = and i64 %sub, 7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %and3, %cond.false ]
  store i64 %cond, i64* %offset, align 8
  %6 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p.addr, align 8
  %7 = bitcast %struct.malloc_chunk* %6 to i8*
  %8 = load i64, i64* %offset, align 8
  %add.ptr4 = getelementptr i8, i8* %7, i64 %8
  %9 = bitcast i8* %add.ptr4 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %9, %struct.malloc_chunk** %p.addr, align 8
  %10 = load i64, i64* %offset, align 8
  %11 = load i64, i64* %psize.addr, align 8
  %sub5 = sub i64 %11, %10
  store i64 %sub5, i64* %psize.addr, align 8
  %12 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p.addr, align 8
  %13 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %top = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %13, i32 0, i32 6
  store %struct.malloc_chunk* %12, %struct.malloc_chunk** %top, align 8
  %14 = load i64, i64* %psize.addr, align 8
  %15 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %topsize = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %15, i32 0, i32 3
  store i64 %14, i64* %topsize, align 8
  %16 = load i64, i64* %psize.addr, align 8
  %or = or i64 %16, 1
  %17 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p.addr, align 8
  %head = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %17, i32 0, i32 1
  store i64 %or, i64* %head, align 8
  %18 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p.addr, align 8
  %19 = bitcast %struct.malloc_chunk* %18 to i8*
  %20 = load i64, i64* %psize.addr, align 8
  %add.ptr6 = getelementptr i8, i8* %19, i64 %20
  %21 = bitcast i8* %add.ptr6 to %struct.malloc_chunk*
  %head7 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %21, i32 0, i32 1
  store i64 72, i64* %head7, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 4), align 8
  %23 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %trim_check = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %23, i32 0, i32 7
  store i64 %22, i64* %trim_check, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @prepend_alloc(%struct.malloc_state* %m, i8* %newbase, i8* %oldbase, i64 %nb) #1 {
entry:
  %m.addr = alloca %struct.malloc_state*, align 8
  %newbase.addr = alloca i8*, align 8
  %oldbase.addr = alloca i8*, align 8
  %nb.addr = alloca i64, align 8
  %p = alloca %struct.malloc_chunk*, align 8
  %oldfirst = alloca %struct.malloc_chunk*, align 8
  %psize = alloca i64, align 8
  %q = alloca %struct.malloc_chunk*, align 8
  %qsize = alloca i64, align 8
  %tsize = alloca i64, align 8
  %dsize = alloca i64, align 8
  %nsize = alloca i64, align 8
  %F = alloca %struct.malloc_chunk*, align 8
  %B = alloca %struct.malloc_chunk*, align 8
  %I = alloca i32, align 4
  %TP = alloca %struct.malloc_tree_chunk*, align 8
  %XP = alloca %struct.malloc_tree_chunk*, align 8
  %R = alloca %struct.malloc_tree_chunk*, align 8
  %F71 = alloca %struct.malloc_tree_chunk*, align 8
  %RP = alloca %struct.malloc_tree_chunk**, align 8
  %CP = alloca %struct.malloc_tree_chunk**, align 8
  %H = alloca %struct.malloc_tree_chunk**, align 8
  %C0 = alloca %struct.malloc_tree_chunk*, align 8
  %C1 = alloca %struct.malloc_tree_chunk*, align 8
  %I213 = alloca i32, align 4
  %B216 = alloca %struct.malloc_chunk*, align 8
  %F221 = alloca %struct.malloc_chunk*, align 8
  %TP247 = alloca %struct.malloc_tree_chunk*, align 8
  %H248 = alloca %struct.malloc_tree_chunk**, align 8
  %I249 = alloca i32, align 4
  %X = alloca i64, align 8
  %Y = alloca i32, align 4
  %N = alloca i32, align 4
  %K = alloca i32, align 4
  %T = alloca %struct.malloc_tree_chunk*, align 8
  %K306 = alloca i64, align 8
  %C = alloca %struct.malloc_tree_chunk**, align 8
  %F345 = alloca %struct.malloc_tree_chunk*, align 8
  store %struct.malloc_state* %m, %struct.malloc_state** %m.addr, align 8
  store i8* %newbase, i8** %newbase.addr, align 8
  store i8* %oldbase, i8** %oldbase.addr, align 8
  store i64 %nb, i64* %nb.addr, align 8
  %0 = load i8*, i8** %newbase.addr, align 8
  %1 = load i8*, i8** %newbase.addr, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 16
  %2 = ptrtoint i8* %add.ptr to i64
  %and = and i64 %2, 7
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8*, i8** %newbase.addr, align 8
  %add.ptr1 = getelementptr i8, i8* %3, i64 16
  %4 = ptrtoint i8* %add.ptr1 to i64
  %and2 = and i64 %4, 7
  %sub = sub i64 8, %and2
  %and3 = and i64 %sub, 7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %and3, %cond.false ]
  %add.ptr4 = getelementptr i8, i8* %0, i64 %cond
  %5 = bitcast i8* %add.ptr4 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %5, %struct.malloc_chunk** %p, align 8
  %6 = load i8*, i8** %oldbase.addr, align 8
  %7 = load i8*, i8** %oldbase.addr, align 8
  %add.ptr5 = getelementptr i8, i8* %7, i64 16
  %8 = ptrtoint i8* %add.ptr5 to i64
  %and6 = and i64 %8, 7
  %cmp7 = icmp eq i64 %and6, 0
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.14

cond.false.9:                                     ; preds = %cond.end
  %9 = load i8*, i8** %oldbase.addr, align 8
  %add.ptr10 = getelementptr i8, i8* %9, i64 16
  %10 = ptrtoint i8* %add.ptr10 to i64
  %and11 = and i64 %10, 7
  %sub12 = sub i64 8, %and11
  %and13 = and i64 %sub12, 7
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.9, %cond.true.8
  %cond15 = phi i64 [ 0, %cond.true.8 ], [ %and13, %cond.false.9 ]
  %add.ptr16 = getelementptr i8, i8* %6, i64 %cond15
  %11 = bitcast i8* %add.ptr16 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %11, %struct.malloc_chunk** %oldfirst, align 8
  %12 = load %struct.malloc_chunk*, %struct.malloc_chunk** %oldfirst, align 8
  %13 = bitcast %struct.malloc_chunk* %12 to i8*
  %14 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %15 = bitcast %struct.malloc_chunk* %14 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %psize, align 8
  %16 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %17 = bitcast %struct.malloc_chunk* %16 to i8*
  %18 = load i64, i64* %nb.addr, align 8
  %add.ptr17 = getelementptr i8, i8* %17, i64 %18
  %19 = bitcast i8* %add.ptr17 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %19, %struct.malloc_chunk** %q, align 8
  %20 = load i64, i64* %psize, align 8
  %21 = load i64, i64* %nb.addr, align 8
  %sub18 = sub i64 %20, %21
  store i64 %sub18, i64* %qsize, align 8
  %22 = load i64, i64* %nb.addr, align 8
  %or = or i64 %22, 1
  %or19 = or i64 %or, 2
  %23 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %head = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %23, i32 0, i32 1
  store i64 %or19, i64* %head, align 8
  %24 = load %struct.malloc_chunk*, %struct.malloc_chunk** %oldfirst, align 8
  %25 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %top = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %25, i32 0, i32 6
  %26 = load %struct.malloc_chunk*, %struct.malloc_chunk** %top, align 8
  %cmp20 = icmp eq %struct.malloc_chunk* %24, %26
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.14
  %27 = load i64, i64* %qsize, align 8
  %28 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %topsize = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %28, i32 0, i32 3
  %29 = load i64, i64* %topsize, align 8
  %add = add i64 %29, %27
  store i64 %add, i64* %topsize, align 8
  store i64 %add, i64* %tsize, align 8
  %30 = load %struct.malloc_chunk*, %struct.malloc_chunk** %q, align 8
  %31 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %top21 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %31, i32 0, i32 6
  store %struct.malloc_chunk* %30, %struct.malloc_chunk** %top21, align 8
  %32 = load i64, i64* %tsize, align 8
  %or22 = or i64 %32, 1
  %33 = load %struct.malloc_chunk*, %struct.malloc_chunk** %q, align 8
  %head23 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %33, i32 0, i32 1
  store i64 %or22, i64* %head23, align 8
  br label %if.end.369

if.else:                                          ; preds = %cond.end.14
  %34 = load %struct.malloc_chunk*, %struct.malloc_chunk** %oldfirst, align 8
  %35 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %dv = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %35, i32 0, i32 5
  %36 = load %struct.malloc_chunk*, %struct.malloc_chunk** %dv, align 8
  %cmp24 = icmp eq %struct.malloc_chunk* %34, %36
  br i1 %cmp24, label %if.then.25, label %if.else.31

if.then.25:                                       ; preds = %if.else
  %37 = load i64, i64* %qsize, align 8
  %38 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %dvsize = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %38, i32 0, i32 2
  %39 = load i64, i64* %dvsize, align 8
  %add26 = add i64 %39, %37
  store i64 %add26, i64* %dvsize, align 8
  store i64 %add26, i64* %dsize, align 8
  %40 = load %struct.malloc_chunk*, %struct.malloc_chunk** %q, align 8
  %41 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %dv27 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %41, i32 0, i32 5
  store %struct.malloc_chunk* %40, %struct.malloc_chunk** %dv27, align 8
  %42 = load i64, i64* %dsize, align 8
  %or28 = or i64 %42, 1
  %43 = load %struct.malloc_chunk*, %struct.malloc_chunk** %q, align 8
  %head29 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %43, i32 0, i32 1
  store i64 %or28, i64* %head29, align 8
  %44 = load i64, i64* %dsize, align 8
  %45 = load %struct.malloc_chunk*, %struct.malloc_chunk** %q, align 8
  %46 = bitcast %struct.malloc_chunk* %45 to i8*
  %47 = load i64, i64* %dsize, align 8
  %add.ptr30 = getelementptr i8, i8* %46, i64 %47
  %48 = bitcast i8* %add.ptr30 to %struct.malloc_chunk*
  %prev_foot = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %48, i32 0, i32 0
  store i64 %44, i64* %prev_foot, align 8
  br label %if.end.368

if.else.31:                                       ; preds = %if.else
  %49 = load %struct.malloc_chunk*, %struct.malloc_chunk** %oldfirst, align 8
  %head32 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %49, i32 0, i32 1
  %50 = load i64, i64* %head32, align 8
  %and33 = and i64 %50, 2
  %tobool = icmp ne i64 %and33, 0
  br i1 %tobool, label %if.end.202, label %if.then.34

if.then.34:                                       ; preds = %if.else.31
  %51 = load %struct.malloc_chunk*, %struct.malloc_chunk** %oldfirst, align 8
  %head35 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %51, i32 0, i32 1
  %52 = load i64, i64* %head35, align 8
  %and36 = and i64 %52, -4
  store i64 %and36, i64* %nsize, align 8
  %53 = load i64, i64* %nsize, align 8
  %shr = lshr i64 %53, 3
  %cmp37 = icmp ult i64 %shr, 32
  br i1 %cmp37, label %if.then.38, label %if.else.66

if.then.38:                                       ; preds = %if.then.34
  %54 = load %struct.malloc_chunk*, %struct.malloc_chunk** %oldfirst, align 8
  %fd = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %54, i32 0, i32 2
  %55 = load %struct.malloc_chunk*, %struct.malloc_chunk** %fd, align 8
  store %struct.malloc_chunk* %55, %struct.malloc_chunk** %F, align 8
  %56 = load %struct.malloc_chunk*, %struct.malloc_chunk** %oldfirst, align 8
  %bk = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %56, i32 0, i32 3
  %57 = load %struct.malloc_chunk*, %struct.malloc_chunk** %bk, align 8
  store %struct.malloc_chunk* %57, %struct.malloc_chunk** %B, align 8
  %58 = load i64, i64* %nsize, align 8
  %shr39 = lshr i64 %58, 3
  %conv = trunc i64 %shr39 to i32
  store i32 %conv, i32* %I, align 4
  %59 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F, align 8
  %60 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %cmp40 = icmp eq %struct.malloc_chunk* %59, %60
  br i1 %cmp40, label %if.then.42, label %if.else.44

if.then.42:                                       ; preds = %if.then.38
  %61 = load i32, i32* %I, align 4
  %shl = shl i32 1, %61
  %neg = xor i32 %shl, -1
  %62 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %smallmap = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %62, i32 0, i32 0
  %63 = load i32, i32* %smallmap, align 4
  %and43 = and i32 %63, %neg
  store i32 %and43, i32* %smallmap, align 4
  br label %if.end.65

if.else.44:                                       ; preds = %if.then.38
  %64 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F, align 8
  %65 = load i32, i32* %I, align 4
  %shl45 = shl i32 %65, 1
  %idxprom = zext i32 %shl45 to i64
  %66 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %smallbins = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %66, i32 0, i32 9
  %arrayidx = getelementptr [66 x %struct.malloc_chunk*], [66 x %struct.malloc_chunk*]* %smallbins, i32 0, i64 %idxprom
  %67 = bitcast %struct.malloc_chunk** %arrayidx to i8*
  %68 = bitcast i8* %67 to %struct.malloc_chunk*
  %cmp46 = icmp eq %struct.malloc_chunk* %64, %68
  br i1 %cmp46, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.44
  %69 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F, align 8
  %70 = bitcast %struct.malloc_chunk* %69 to i8*
  %71 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %71, i32 0, i32 4
  %72 = load i8*, i8** %least_addr, align 8
  %cmp48 = icmp uge i8* %70, %72
  br i1 %cmp48, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %if.else.44
  %73 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %74 = load i32, i32* %I, align 4
  %shl50 = shl i32 %74, 1
  %idxprom51 = zext i32 %shl50 to i64
  %75 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %smallbins52 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %75, i32 0, i32 9
  %arrayidx53 = getelementptr [66 x %struct.malloc_chunk*], [66 x %struct.malloc_chunk*]* %smallbins52, i32 0, i64 %idxprom51
  %76 = bitcast %struct.malloc_chunk** %arrayidx53 to i8*
  %77 = bitcast i8* %76 to %struct.malloc_chunk*
  %cmp54 = icmp eq %struct.malloc_chunk* %73, %77
  br i1 %cmp54, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %78 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %79 = bitcast %struct.malloc_chunk* %78 to i8*
  %80 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr56 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %80, i32 0, i32 4
  %81 = load i8*, i8** %least_addr56, align 8
  %cmp57 = icmp uge i8* %79, %81
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %82 = phi i1 [ true, %land.rhs ], [ %cmp57, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false
  %83 = phi i1 [ false, %lor.lhs.false ], [ %82, %lor.end ]
  %land.ext = zext i1 %83 to i32
  %conv59 = sext i32 %land.ext to i64
  %tobool60 = icmp ne i64 %conv59, 0
  br i1 %tobool60, label %if.then.61, label %if.else.64

if.then.61:                                       ; preds = %land.end
  %84 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %85 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F, align 8
  %bk62 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %85, i32 0, i32 3
  store %struct.malloc_chunk* %84, %struct.malloc_chunk** %bk62, align 8
  %86 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F, align 8
  %87 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %fd63 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %87, i32 0, i32 2
  store %struct.malloc_chunk* %86, %struct.malloc_chunk** %fd63, align 8
  br label %if.end

if.else.64:                                       ; preds = %land.end
  call void @abort() #8
  unreachable

if.end:                                           ; preds = %if.then.61
  br label %if.end.65

if.end.65:                                        ; preds = %if.end, %if.then.42
  br label %if.end.199

if.else.66:                                       ; preds = %if.then.34
  %88 = load %struct.malloc_chunk*, %struct.malloc_chunk** %oldfirst, align 8
  %89 = bitcast %struct.malloc_chunk* %88 to %struct.malloc_tree_chunk*
  store %struct.malloc_tree_chunk* %89, %struct.malloc_tree_chunk** %TP, align 8
  %90 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %parent = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %90, i32 0, i32 5
  %91 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %parent, align 8
  store %struct.malloc_tree_chunk* %91, %struct.malloc_tree_chunk** %XP, align 8
  %92 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %bk67 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %92, i32 0, i32 3
  %93 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %bk67, align 8
  %94 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %cmp68 = icmp ne %struct.malloc_tree_chunk* %93, %94
  br i1 %cmp68, label %if.then.70, label %if.else.84

if.then.70:                                       ; preds = %if.else.66
  %95 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %fd72 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %95, i32 0, i32 2
  %96 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %fd72, align 8
  store %struct.malloc_tree_chunk* %96, %struct.malloc_tree_chunk** %F71, align 8
  %97 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %bk73 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %97, i32 0, i32 3
  %98 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %bk73, align 8
  store %struct.malloc_tree_chunk* %98, %struct.malloc_tree_chunk** %R, align 8
  %99 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F71, align 8
  %100 = bitcast %struct.malloc_tree_chunk* %99 to i8*
  %101 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr74 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %101, i32 0, i32 4
  %102 = load i8*, i8** %least_addr74, align 8
  %cmp75 = icmp uge i8* %100, %102
  %conv76 = zext i1 %cmp75 to i32
  %conv77 = sext i32 %conv76 to i64
  %tobool78 = icmp ne i64 %conv77, 0
  br i1 %tobool78, label %if.then.79, label %if.else.82

if.then.79:                                       ; preds = %if.then.70
  %103 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %104 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F71, align 8
  %bk80 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %104, i32 0, i32 3
  store %struct.malloc_tree_chunk* %103, %struct.malloc_tree_chunk** %bk80, align 8
  %105 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F71, align 8
  %106 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %fd81 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %106, i32 0, i32 2
  store %struct.malloc_tree_chunk* %105, %struct.malloc_tree_chunk** %fd81, align 8
  br label %if.end.83

if.else.82:                                       ; preds = %if.then.70
  call void @abort() #8
  unreachable

if.end.83:                                        ; preds = %if.then.79
  br label %if.end.113

if.else.84:                                       ; preds = %if.else.66
  %107 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %child = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %107, i32 0, i32 4
  %arrayidx85 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child, i32 0, i64 1
  store %struct.malloc_tree_chunk** %arrayidx85, %struct.malloc_tree_chunk*** %RP, align 8
  %108 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx85, align 8
  store %struct.malloc_tree_chunk* %108, %struct.malloc_tree_chunk** %R, align 8
  %cmp86 = icmp ne %struct.malloc_tree_chunk* %108, null
  br i1 %cmp86, label %if.then.93, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %if.else.84
  %109 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %child89 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %109, i32 0, i32 4
  %arrayidx90 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child89, i32 0, i64 0
  store %struct.malloc_tree_chunk** %arrayidx90, %struct.malloc_tree_chunk*** %RP, align 8
  %110 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx90, align 8
  store %struct.malloc_tree_chunk* %110, %struct.malloc_tree_chunk** %R, align 8
  %cmp91 = icmp ne %struct.malloc_tree_chunk* %110, null
  br i1 %cmp91, label %if.then.93, label %if.end.112

if.then.93:                                       ; preds = %lor.lhs.false.88, %if.else.84
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.93
  %111 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %child94 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %111, i32 0, i32 4
  %arrayidx95 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child94, i32 0, i64 1
  store %struct.malloc_tree_chunk** %arrayidx95, %struct.malloc_tree_chunk*** %CP, align 8
  %112 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx95, align 8
  %cmp96 = icmp ne %struct.malloc_tree_chunk* %112, null
  br i1 %cmp96, label %lor.end.103, label %lor.rhs.98

lor.rhs.98:                                       ; preds = %while.cond
  %113 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %child99 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %113, i32 0, i32 4
  %arrayidx100 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child99, i32 0, i64 0
  store %struct.malloc_tree_chunk** %arrayidx100, %struct.malloc_tree_chunk*** %CP, align 8
  %114 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx100, align 8
  %cmp101 = icmp ne %struct.malloc_tree_chunk* %114, null
  br label %lor.end.103

lor.end.103:                                      ; preds = %lor.rhs.98, %while.cond
  %115 = phi i1 [ true, %while.cond ], [ %cmp101, %lor.rhs.98 ]
  br i1 %115, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end.103
  %116 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %CP, align 8
  store %struct.malloc_tree_chunk** %116, %struct.malloc_tree_chunk*** %RP, align 8
  %117 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %116, align 8
  store %struct.malloc_tree_chunk* %117, %struct.malloc_tree_chunk** %R, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end.103
  %118 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %RP, align 8
  %119 = bitcast %struct.malloc_tree_chunk** %118 to i8*
  %120 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr104 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %120, i32 0, i32 4
  %121 = load i8*, i8** %least_addr104, align 8
  %cmp105 = icmp uge i8* %119, %121
  %conv106 = zext i1 %cmp105 to i32
  %conv107 = sext i32 %conv106 to i64
  %tobool108 = icmp ne i64 %conv107, 0
  br i1 %tobool108, label %if.then.109, label %if.else.110

if.then.109:                                      ; preds = %while.end
  %122 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %RP, align 8
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %122, align 8
  br label %if.end.111

if.else.110:                                      ; preds = %while.end
  call void @abort() #8
  unreachable

if.end.111:                                       ; preds = %if.then.109
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %lor.lhs.false.88
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.end.83
  %123 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %cmp114 = icmp ne %struct.malloc_tree_chunk* %123, null
  br i1 %cmp114, label %if.then.116, label %if.end.198

if.then.116:                                      ; preds = %if.end.113
  %124 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %index = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %124, i32 0, i32 6
  %125 = load i32, i32* %index, align 4
  %idxprom117 = zext i32 %125 to i64
  %126 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treebins = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %126, i32 0, i32 10
  %arrayidx118 = getelementptr [32 x %struct.malloc_tree_chunk*], [32 x %struct.malloc_tree_chunk*]* %treebins, i32 0, i64 %idxprom117
  store %struct.malloc_tree_chunk** %arrayidx118, %struct.malloc_tree_chunk*** %H, align 8
  %127 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %128 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H, align 8
  %129 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %128, align 8
  %cmp119 = icmp eq %struct.malloc_tree_chunk* %127, %129
  br i1 %cmp119, label %if.then.121, label %if.else.130

if.then.121:                                      ; preds = %if.then.116
  %130 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %131 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H, align 8
  store %struct.malloc_tree_chunk* %130, %struct.malloc_tree_chunk** %131, align 8
  %cmp122 = icmp eq %struct.malloc_tree_chunk* %130, null
  br i1 %cmp122, label %if.then.124, label %if.end.129

if.then.124:                                      ; preds = %if.then.121
  %132 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %index125 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %132, i32 0, i32 6
  %133 = load i32, i32* %index125, align 4
  %shl126 = shl i32 1, %133
  %neg127 = xor i32 %shl126, -1
  %134 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treemap = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %134, i32 0, i32 1
  %135 = load i32, i32* %treemap, align 4
  %and128 = and i32 %135, %neg127
  store i32 %and128, i32* %treemap, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.124, %if.then.121
  br label %if.end.150

if.else.130:                                      ; preds = %if.then.116
  %136 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %137 = bitcast %struct.malloc_tree_chunk* %136 to i8*
  %138 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr131 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %138, i32 0, i32 4
  %139 = load i8*, i8** %least_addr131, align 8
  %cmp132 = icmp uge i8* %137, %139
  %conv133 = zext i1 %cmp132 to i32
  %conv134 = sext i32 %conv133 to i64
  %tobool135 = icmp ne i64 %conv134, 0
  br i1 %tobool135, label %if.then.136, label %if.else.148

if.then.136:                                      ; preds = %if.else.130
  %140 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %child137 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %140, i32 0, i32 4
  %arrayidx138 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child137, i32 0, i64 0
  %141 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx138, align 8
  %142 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %cmp139 = icmp eq %struct.malloc_tree_chunk* %141, %142
  br i1 %cmp139, label %if.then.141, label %if.else.144

if.then.141:                                      ; preds = %if.then.136
  %143 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %144 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %child142 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %144, i32 0, i32 4
  %arrayidx143 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child142, i32 0, i64 0
  store %struct.malloc_tree_chunk* %143, %struct.malloc_tree_chunk** %arrayidx143, align 8
  br label %if.end.147

if.else.144:                                      ; preds = %if.then.136
  %145 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %146 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %child145 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %146, i32 0, i32 4
  %arrayidx146 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child145, i32 0, i64 1
  store %struct.malloc_tree_chunk* %145, %struct.malloc_tree_chunk** %arrayidx146, align 8
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.144, %if.then.141
  br label %if.end.149

if.else.148:                                      ; preds = %if.else.130
  call void @abort() #8
  unreachable

if.end.149:                                       ; preds = %if.end.147
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.end.129
  %147 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %cmp151 = icmp ne %struct.malloc_tree_chunk* %147, null
  br i1 %cmp151, label %if.then.153, label %if.end.197

if.then.153:                                      ; preds = %if.end.150
  %148 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %149 = bitcast %struct.malloc_tree_chunk* %148 to i8*
  %150 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr154 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %150, i32 0, i32 4
  %151 = load i8*, i8** %least_addr154, align 8
  %cmp155 = icmp uge i8* %149, %151
  %conv156 = zext i1 %cmp155 to i32
  %conv157 = sext i32 %conv156 to i64
  %tobool158 = icmp ne i64 %conv157, 0
  br i1 %tobool158, label %if.then.159, label %if.else.195

if.then.159:                                      ; preds = %if.then.153
  %152 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %153 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %parent160 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %153, i32 0, i32 5
  store %struct.malloc_tree_chunk* %152, %struct.malloc_tree_chunk** %parent160, align 8
  %154 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %child161 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %154, i32 0, i32 4
  %arrayidx162 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child161, i32 0, i64 0
  %155 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx162, align 8
  store %struct.malloc_tree_chunk* %155, %struct.malloc_tree_chunk** %C0, align 8
  %cmp163 = icmp ne %struct.malloc_tree_chunk* %155, null
  br i1 %cmp163, label %if.then.165, label %if.end.177

if.then.165:                                      ; preds = %if.then.159
  %156 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C0, align 8
  %157 = bitcast %struct.malloc_tree_chunk* %156 to i8*
  %158 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr166 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %158, i32 0, i32 4
  %159 = load i8*, i8** %least_addr166, align 8
  %cmp167 = icmp uge i8* %157, %159
  %conv168 = zext i1 %cmp167 to i32
  %conv169 = sext i32 %conv168 to i64
  %tobool170 = icmp ne i64 %conv169, 0
  br i1 %tobool170, label %if.then.171, label %if.else.175

if.then.171:                                      ; preds = %if.then.165
  %160 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C0, align 8
  %161 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %child172 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %161, i32 0, i32 4
  %arrayidx173 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child172, i32 0, i64 0
  store %struct.malloc_tree_chunk* %160, %struct.malloc_tree_chunk** %arrayidx173, align 8
  %162 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %163 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C0, align 8
  %parent174 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %163, i32 0, i32 5
  store %struct.malloc_tree_chunk* %162, %struct.malloc_tree_chunk** %parent174, align 8
  br label %if.end.176

if.else.175:                                      ; preds = %if.then.165
  call void @abort() #8
  unreachable

if.end.176:                                       ; preds = %if.then.171
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.then.159
  %164 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %child178 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %164, i32 0, i32 4
  %arrayidx179 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child178, i32 0, i64 1
  %165 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx179, align 8
  store %struct.malloc_tree_chunk* %165, %struct.malloc_tree_chunk** %C1, align 8
  %cmp180 = icmp ne %struct.malloc_tree_chunk* %165, null
  br i1 %cmp180, label %if.then.182, label %if.end.194

if.then.182:                                      ; preds = %if.end.177
  %166 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C1, align 8
  %167 = bitcast %struct.malloc_tree_chunk* %166 to i8*
  %168 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr183 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %168, i32 0, i32 4
  %169 = load i8*, i8** %least_addr183, align 8
  %cmp184 = icmp uge i8* %167, %169
  %conv185 = zext i1 %cmp184 to i32
  %conv186 = sext i32 %conv185 to i64
  %tobool187 = icmp ne i64 %conv186, 0
  br i1 %tobool187, label %if.then.188, label %if.else.192

if.then.188:                                      ; preds = %if.then.182
  %170 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C1, align 8
  %171 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %child189 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %171, i32 0, i32 4
  %arrayidx190 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child189, i32 0, i64 1
  store %struct.malloc_tree_chunk* %170, %struct.malloc_tree_chunk** %arrayidx190, align 8
  %172 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %173 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C1, align 8
  %parent191 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %173, i32 0, i32 5
  store %struct.malloc_tree_chunk* %172, %struct.malloc_tree_chunk** %parent191, align 8
  br label %if.end.193

if.else.192:                                      ; preds = %if.then.182
  call void @abort() #8
  unreachable

if.end.193:                                       ; preds = %if.then.188
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.end.177
  br label %if.end.196

if.else.195:                                      ; preds = %if.then.153
  call void @abort() #8
  unreachable

if.end.196:                                       ; preds = %if.end.194
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.end.150
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.end.113
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %if.end.65
  %174 = load %struct.malloc_chunk*, %struct.malloc_chunk** %oldfirst, align 8
  %175 = bitcast %struct.malloc_chunk* %174 to i8*
  %176 = load i64, i64* %nsize, align 8
  %add.ptr200 = getelementptr i8, i8* %175, i64 %176
  %177 = bitcast i8* %add.ptr200 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %177, %struct.malloc_chunk** %oldfirst, align 8
  %178 = load i64, i64* %nsize, align 8
  %179 = load i64, i64* %qsize, align 8
  %add201 = add i64 %179, %178
  store i64 %add201, i64* %qsize, align 8
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.199, %if.else.31
  %180 = load %struct.malloc_chunk*, %struct.malloc_chunk** %oldfirst, align 8
  %head203 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %180, i32 0, i32 1
  %181 = load i64, i64* %head203, align 8
  %and204 = and i64 %181, -2
  store i64 %and204, i64* %head203, align 8
  %182 = load i64, i64* %qsize, align 8
  %or205 = or i64 %182, 1
  %183 = load %struct.malloc_chunk*, %struct.malloc_chunk** %q, align 8
  %head206 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %183, i32 0, i32 1
  store i64 %or205, i64* %head206, align 8
  %184 = load i64, i64* %qsize, align 8
  %185 = load %struct.malloc_chunk*, %struct.malloc_chunk** %q, align 8
  %186 = bitcast %struct.malloc_chunk* %185 to i8*
  %187 = load i64, i64* %qsize, align 8
  %add.ptr207 = getelementptr i8, i8* %186, i64 %187
  %188 = bitcast i8* %add.ptr207 to %struct.malloc_chunk*
  %prev_foot208 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %188, i32 0, i32 0
  store i64 %184, i64* %prev_foot208, align 8
  %189 = load i64, i64* %qsize, align 8
  %shr209 = lshr i64 %189, 3
  %cmp210 = icmp ult i64 %shr209, 32
  br i1 %cmp210, label %if.then.212, label %if.else.246

if.then.212:                                      ; preds = %if.end.202
  %190 = load i64, i64* %qsize, align 8
  %shr214 = lshr i64 %190, 3
  %conv215 = trunc i64 %shr214 to i32
  store i32 %conv215, i32* %I213, align 4
  %191 = load i32, i32* %I213, align 4
  %shl217 = shl i32 %191, 1
  %idxprom218 = zext i32 %shl217 to i64
  %192 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %smallbins219 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %192, i32 0, i32 9
  %arrayidx220 = getelementptr [66 x %struct.malloc_chunk*], [66 x %struct.malloc_chunk*]* %smallbins219, i32 0, i64 %idxprom218
  %193 = bitcast %struct.malloc_chunk** %arrayidx220 to i8*
  %194 = bitcast i8* %193 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %194, %struct.malloc_chunk** %B216, align 8
  %195 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B216, align 8
  store %struct.malloc_chunk* %195, %struct.malloc_chunk** %F221, align 8
  %196 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %smallmap222 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %196, i32 0, i32 0
  %197 = load i32, i32* %smallmap222, align 4
  %198 = load i32, i32* %I213, align 4
  %shl223 = shl i32 1, %198
  %and224 = and i32 %197, %shl223
  %tobool225 = icmp ne i32 %and224, 0
  br i1 %tobool225, label %if.else.230, label %if.then.226

if.then.226:                                      ; preds = %if.then.212
  %199 = load i32, i32* %I213, align 4
  %shl227 = shl i32 1, %199
  %200 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %smallmap228 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %200, i32 0, i32 0
  %201 = load i32, i32* %smallmap228, align 4
  %or229 = or i32 %201, %shl227
  store i32 %or229, i32* %smallmap228, align 4
  br label %if.end.241

if.else.230:                                      ; preds = %if.then.212
  %202 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B216, align 8
  %fd231 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %202, i32 0, i32 2
  %203 = load %struct.malloc_chunk*, %struct.malloc_chunk** %fd231, align 8
  %204 = bitcast %struct.malloc_chunk* %203 to i8*
  %205 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr232 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %205, i32 0, i32 4
  %206 = load i8*, i8** %least_addr232, align 8
  %cmp233 = icmp uge i8* %204, %206
  %conv234 = zext i1 %cmp233 to i32
  %conv235 = sext i32 %conv234 to i64
  %tobool236 = icmp ne i64 %conv235, 0
  br i1 %tobool236, label %if.then.237, label %if.else.239

if.then.237:                                      ; preds = %if.else.230
  %207 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B216, align 8
  %fd238 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %207, i32 0, i32 2
  %208 = load %struct.malloc_chunk*, %struct.malloc_chunk** %fd238, align 8
  store %struct.malloc_chunk* %208, %struct.malloc_chunk** %F221, align 8
  br label %if.end.240

if.else.239:                                      ; preds = %if.else.230
  call void @abort() #8
  unreachable

if.end.240:                                       ; preds = %if.then.237
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.then.226
  %209 = load %struct.malloc_chunk*, %struct.malloc_chunk** %q, align 8
  %210 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B216, align 8
  %fd242 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %210, i32 0, i32 2
  store %struct.malloc_chunk* %209, %struct.malloc_chunk** %fd242, align 8
  %211 = load %struct.malloc_chunk*, %struct.malloc_chunk** %q, align 8
  %212 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F221, align 8
  %bk243 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %212, i32 0, i32 3
  store %struct.malloc_chunk* %211, %struct.malloc_chunk** %bk243, align 8
  %213 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F221, align 8
  %214 = load %struct.malloc_chunk*, %struct.malloc_chunk** %q, align 8
  %fd244 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %214, i32 0, i32 2
  store %struct.malloc_chunk* %213, %struct.malloc_chunk** %fd244, align 8
  %215 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B216, align 8
  %216 = load %struct.malloc_chunk*, %struct.malloc_chunk** %q, align 8
  %bk245 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %216, i32 0, i32 3
  store %struct.malloc_chunk* %215, %struct.malloc_chunk** %bk245, align 8
  br label %if.end.367

if.else.246:                                      ; preds = %if.end.202
  %217 = load %struct.malloc_chunk*, %struct.malloc_chunk** %q, align 8
  %218 = bitcast %struct.malloc_chunk* %217 to %struct.malloc_tree_chunk*
  store %struct.malloc_tree_chunk* %218, %struct.malloc_tree_chunk** %TP247, align 8
  %219 = load i64, i64* %qsize, align 8
  %shr250 = lshr i64 %219, 8
  store i64 %shr250, i64* %X, align 8
  %220 = load i64, i64* %X, align 8
  %cmp251 = icmp eq i64 %220, 0
  br i1 %cmp251, label %if.then.253, label %if.else.254

if.then.253:                                      ; preds = %if.else.246
  store i32 0, i32* %I249, align 4
  br label %if.end.285

if.else.254:                                      ; preds = %if.else.246
  %221 = load i64, i64* %X, align 8
  %cmp255 = icmp ugt i64 %221, 65535
  br i1 %cmp255, label %if.then.257, label %if.else.258

if.then.257:                                      ; preds = %if.else.254
  store i32 31, i32* %I249, align 4
  br label %if.end.284

if.else.258:                                      ; preds = %if.else.254
  %222 = load i64, i64* %X, align 8
  %conv259 = trunc i64 %222 to i32
  store i32 %conv259, i32* %Y, align 4
  %223 = load i32, i32* %Y, align 4
  %sub260 = sub i32 %223, 256
  %shr261 = lshr i32 %sub260, 16
  %and262 = and i32 %shr261, 8
  store i32 %and262, i32* %N, align 4
  %224 = load i32, i32* %N, align 4
  %225 = load i32, i32* %Y, align 4
  %shl263 = shl i32 %225, %224
  store i32 %shl263, i32* %Y, align 4
  %sub264 = sub i32 %shl263, 4096
  %shr265 = lshr i32 %sub264, 16
  %and266 = and i32 %shr265, 4
  store i32 %and266, i32* %K, align 4
  %226 = load i32, i32* %K, align 4
  %227 = load i32, i32* %N, align 4
  %add267 = add i32 %227, %226
  store i32 %add267, i32* %N, align 4
  %228 = load i32, i32* %K, align 4
  %229 = load i32, i32* %Y, align 4
  %shl268 = shl i32 %229, %228
  store i32 %shl268, i32* %Y, align 4
  %sub269 = sub i32 %shl268, 16384
  %shr270 = lshr i32 %sub269, 16
  %and271 = and i32 %shr270, 2
  store i32 %and271, i32* %K, align 4
  %230 = load i32, i32* %N, align 4
  %add272 = add i32 %230, %and271
  store i32 %add272, i32* %N, align 4
  %231 = load i32, i32* %N, align 4
  %sub273 = sub i32 14, %231
  %232 = load i32, i32* %K, align 4
  %233 = load i32, i32* %Y, align 4
  %shl274 = shl i32 %233, %232
  store i32 %shl274, i32* %Y, align 4
  %shr275 = lshr i32 %shl274, 15
  %add276 = add i32 %sub273, %shr275
  store i32 %add276, i32* %K, align 4
  %234 = load i32, i32* %K, align 4
  %shl277 = shl i32 %234, 1
  %conv278 = zext i32 %shl277 to i64
  %235 = load i64, i64* %qsize, align 8
  %236 = load i32, i32* %K, align 4
  %add279 = add i32 %236, 7
  %sh_prom = zext i32 %add279 to i64
  %shr280 = lshr i64 %235, %sh_prom
  %and281 = and i64 %shr280, 1
  %add282 = add i64 %conv278, %and281
  %conv283 = trunc i64 %add282 to i32
  store i32 %conv283, i32* %I249, align 4
  br label %if.end.284

if.end.284:                                       ; preds = %if.else.258, %if.then.257
  br label %if.end.285

if.end.285:                                       ; preds = %if.end.284, %if.then.253
  %237 = load i32, i32* %I249, align 4
  %idxprom286 = zext i32 %237 to i64
  %238 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treebins287 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %238, i32 0, i32 10
  %arrayidx288 = getelementptr [32 x %struct.malloc_tree_chunk*], [32 x %struct.malloc_tree_chunk*]* %treebins287, i32 0, i64 %idxprom286
  store %struct.malloc_tree_chunk** %arrayidx288, %struct.malloc_tree_chunk*** %H248, align 8
  %239 = load i32, i32* %I249, align 4
  %240 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP247, align 8
  %index289 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %240, i32 0, i32 6
  store i32 %239, i32* %index289, align 4
  %241 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP247, align 8
  %child290 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %241, i32 0, i32 4
  %arrayidx291 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child290, i32 0, i64 1
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %arrayidx291, align 8
  %242 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP247, align 8
  %child292 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %242, i32 0, i32 4
  %arrayidx293 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child292, i32 0, i64 0
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %arrayidx293, align 8
  %243 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treemap294 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %243, i32 0, i32 1
  %244 = load i32, i32* %treemap294, align 4
  %245 = load i32, i32* %I249, align 4
  %shl295 = shl i32 1, %245
  %and296 = and i32 %244, %shl295
  %tobool297 = icmp ne i32 %and296, 0
  br i1 %tobool297, label %if.else.305, label %if.then.298

if.then.298:                                      ; preds = %if.end.285
  %246 = load i32, i32* %I249, align 4
  %shl299 = shl i32 1, %246
  %247 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treemap300 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %247, i32 0, i32 1
  %248 = load i32, i32* %treemap300, align 4
  %or301 = or i32 %248, %shl299
  store i32 %or301, i32* %treemap300, align 4
  %249 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP247, align 8
  %250 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H248, align 8
  store %struct.malloc_tree_chunk* %249, %struct.malloc_tree_chunk** %250, align 8
  %251 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H248, align 8
  %252 = bitcast %struct.malloc_tree_chunk** %251 to %struct.malloc_tree_chunk*
  %253 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP247, align 8
  %parent302 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %253, i32 0, i32 5
  store %struct.malloc_tree_chunk* %252, %struct.malloc_tree_chunk** %parent302, align 8
  %254 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP247, align 8
  %255 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP247, align 8
  %bk303 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %255, i32 0, i32 3
  store %struct.malloc_tree_chunk* %254, %struct.malloc_tree_chunk** %bk303, align 8
  %256 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP247, align 8
  %fd304 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %256, i32 0, i32 2
  store %struct.malloc_tree_chunk* %254, %struct.malloc_tree_chunk** %fd304, align 8
  br label %if.end.366

if.else.305:                                      ; preds = %if.end.285
  %257 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H248, align 8
  %258 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %257, align 8
  store %struct.malloc_tree_chunk* %258, %struct.malloc_tree_chunk** %T, align 8
  %259 = load i64, i64* %qsize, align 8
  %260 = load i32, i32* %I249, align 4
  %cmp307 = icmp eq i32 %260, 31
  br i1 %cmp307, label %cond.true.309, label %cond.false.310

cond.true.309:                                    ; preds = %if.else.305
  br label %cond.end.316

cond.false.310:                                   ; preds = %if.else.305
  %261 = load i32, i32* %I249, align 4
  %shr311 = lshr i32 %261, 1
  %add312 = add i32 %shr311, 8
  %sub313 = sub i32 %add312, 2
  %conv314 = zext i32 %sub313 to i64
  %sub315 = sub i64 63, %conv314
  br label %cond.end.316

cond.end.316:                                     ; preds = %cond.false.310, %cond.true.309
  %cond317 = phi i64 [ 0, %cond.true.309 ], [ %sub315, %cond.false.310 ]
  %shl318 = shl i64 %259, %cond317
  store i64 %shl318, i64* %K306, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.365, %cond.end.316
  %262 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %head319 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %262, i32 0, i32 1
  %263 = load i64, i64* %head319, align 8
  %and320 = and i64 %263, -4
  %264 = load i64, i64* %qsize, align 8
  %cmp321 = icmp ne i64 %and320, %264
  br i1 %cmp321, label %if.then.323, label %if.else.344

if.then.323:                                      ; preds = %for.cond
  %265 = load i64, i64* %K306, align 8
  %shr324 = lshr i64 %265, 63
  %and325 = and i64 %shr324, 1
  %266 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %child326 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %266, i32 0, i32 4
  %arrayidx327 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child326, i32 0, i64 %and325
  store %struct.malloc_tree_chunk** %arrayidx327, %struct.malloc_tree_chunk*** %C, align 8
  %267 = load i64, i64* %K306, align 8
  %shl328 = shl i64 %267, 1
  store i64 %shl328, i64* %K306, align 8
  %268 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %C, align 8
  %269 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %268, align 8
  %cmp329 = icmp ne %struct.malloc_tree_chunk* %269, null
  br i1 %cmp329, label %if.then.331, label %if.else.332

if.then.331:                                      ; preds = %if.then.323
  %270 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %C, align 8
  %271 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %270, align 8
  store %struct.malloc_tree_chunk* %271, %struct.malloc_tree_chunk** %T, align 8
  br label %if.end.343

if.else.332:                                      ; preds = %if.then.323
  %272 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %C, align 8
  %273 = bitcast %struct.malloc_tree_chunk** %272 to i8*
  %274 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr333 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %274, i32 0, i32 4
  %275 = load i8*, i8** %least_addr333, align 8
  %cmp334 = icmp uge i8* %273, %275
  %conv335 = zext i1 %cmp334 to i32
  %conv336 = sext i32 %conv335 to i64
  %tobool337 = icmp ne i64 %conv336, 0
  br i1 %tobool337, label %if.then.338, label %if.else.342

if.then.338:                                      ; preds = %if.else.332
  %276 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP247, align 8
  %277 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %C, align 8
  store %struct.malloc_tree_chunk* %276, %struct.malloc_tree_chunk** %277, align 8
  %278 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %279 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP247, align 8
  %parent339 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %279, i32 0, i32 5
  store %struct.malloc_tree_chunk* %278, %struct.malloc_tree_chunk** %parent339, align 8
  %280 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP247, align 8
  %281 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP247, align 8
  %bk340 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %281, i32 0, i32 3
  store %struct.malloc_tree_chunk* %280, %struct.malloc_tree_chunk** %bk340, align 8
  %282 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP247, align 8
  %fd341 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %282, i32 0, i32 2
  store %struct.malloc_tree_chunk* %280, %struct.malloc_tree_chunk** %fd341, align 8
  br label %for.end

if.else.342:                                      ; preds = %if.else.332
  call void @abort() #8
  unreachable

if.end.343:                                       ; preds = %if.then.331
  br label %if.end.365

if.else.344:                                      ; preds = %for.cond
  %283 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %fd346 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %283, i32 0, i32 2
  %284 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %fd346, align 8
  store %struct.malloc_tree_chunk* %284, %struct.malloc_tree_chunk** %F345, align 8
  %285 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %286 = bitcast %struct.malloc_tree_chunk* %285 to i8*
  %287 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr347 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %287, i32 0, i32 4
  %288 = load i8*, i8** %least_addr347, align 8
  %cmp348 = icmp uge i8* %286, %288
  br i1 %cmp348, label %land.rhs.350, label %land.end.354

land.rhs.350:                                     ; preds = %if.else.344
  %289 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F345, align 8
  %290 = bitcast %struct.malloc_tree_chunk* %289 to i8*
  %291 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr351 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %291, i32 0, i32 4
  %292 = load i8*, i8** %least_addr351, align 8
  %cmp352 = icmp uge i8* %290, %292
  br label %land.end.354

land.end.354:                                     ; preds = %land.rhs.350, %if.else.344
  %293 = phi i1 [ false, %if.else.344 ], [ %cmp352, %land.rhs.350 ]
  %land.ext355 = zext i1 %293 to i32
  %conv356 = sext i32 %land.ext355 to i64
  %tobool357 = icmp ne i64 %conv356, 0
  br i1 %tobool357, label %if.then.358, label %if.else.364

if.then.358:                                      ; preds = %land.end.354
  %294 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP247, align 8
  %295 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F345, align 8
  %bk359 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %295, i32 0, i32 3
  store %struct.malloc_tree_chunk* %294, %struct.malloc_tree_chunk** %bk359, align 8
  %296 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %fd360 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %296, i32 0, i32 2
  store %struct.malloc_tree_chunk* %294, %struct.malloc_tree_chunk** %fd360, align 8
  %297 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F345, align 8
  %298 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP247, align 8
  %fd361 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %298, i32 0, i32 2
  store %struct.malloc_tree_chunk* %297, %struct.malloc_tree_chunk** %fd361, align 8
  %299 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %300 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP247, align 8
  %bk362 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %300, i32 0, i32 3
  store %struct.malloc_tree_chunk* %299, %struct.malloc_tree_chunk** %bk362, align 8
  %301 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP247, align 8
  %parent363 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %301, i32 0, i32 5
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %parent363, align 8
  br label %for.end

if.else.364:                                      ; preds = %land.end.354
  call void @abort() #8
  unreachable

if.end.365:                                       ; preds = %if.end.343
  br label %for.cond

for.end:                                          ; preds = %if.then.358, %if.then.338
  br label %if.end.366

if.end.366:                                       ; preds = %for.end, %if.then.298
  br label %if.end.367

if.end.367:                                       ; preds = %if.end.366, %if.end.241
  br label %if.end.368

if.end.368:                                       ; preds = %if.end.367, %if.then.25
  br label %if.end.369

if.end.369:                                       ; preds = %if.end.368, %if.then
  %302 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %303 = bitcast %struct.malloc_chunk* %302 to i8*
  %add.ptr370 = getelementptr i8, i8* %303, i64 16
  ret i8* %add.ptr370
}

; Function Attrs: uwtable
define internal void @add_segment(%struct.malloc_state* %m, i8* %tbase, i64 %tsize, i32 %mmapped) #0 {
entry:
  %m.addr = alloca %struct.malloc_state*, align 8
  %tbase.addr = alloca i8*, align 8
  %tsize.addr = alloca i64, align 8
  %mmapped.addr = alloca i32, align 4
  %old_top = alloca i8*, align 8
  %oldsp = alloca %struct.malloc_segment*, align 8
  %old_end = alloca i8*, align 8
  %ssize = alloca i64, align 8
  %rawsp = alloca i8*, align 8
  %offset = alloca i64, align 8
  %asp = alloca i8*, align 8
  %csp = alloca i8*, align 8
  %sp = alloca %struct.malloc_chunk*, align 8
  %ss = alloca %struct.malloc_segment*, align 8
  %tnext = alloca %struct.malloc_chunk*, align 8
  %p = alloca %struct.malloc_chunk*, align 8
  %nfences = alloca i32, align 4
  %nextp = alloca %struct.malloc_chunk*, align 8
  %q = alloca %struct.malloc_chunk*, align 8
  %psize = alloca i64, align 8
  %tn = alloca %struct.malloc_chunk*, align 8
  %I = alloca i32, align 4
  %B = alloca %struct.malloc_chunk*, align 8
  %F = alloca %struct.malloc_chunk*, align 8
  %TP = alloca %struct.malloc_tree_chunk*, align 8
  %H = alloca %struct.malloc_tree_chunk**, align 8
  %I99 = alloca i32, align 4
  %X = alloca i64, align 8
  %Y = alloca i32, align 4
  %N = alloca i32, align 4
  %K = alloca i32, align 4
  %T = alloca %struct.malloc_tree_chunk*, align 8
  %K151 = alloca i64, align 8
  %C = alloca %struct.malloc_tree_chunk**, align 8
  %F191 = alloca %struct.malloc_tree_chunk*, align 8
  store %struct.malloc_state* %m, %struct.malloc_state** %m.addr, align 8
  store i8* %tbase, i8** %tbase.addr, align 8
  store i64 %tsize, i64* %tsize.addr, align 8
  store i32 %mmapped, i32* %mmapped.addr, align 4
  %0 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %top = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %0, i32 0, i32 6
  %1 = load %struct.malloc_chunk*, %struct.malloc_chunk** %top, align 8
  %2 = bitcast %struct.malloc_chunk* %1 to i8*
  store i8* %2, i8** %old_top, align 8
  %3 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %4 = load i8*, i8** %old_top, align 8
  %call = call %struct.malloc_segment* @segment_holding(%struct.malloc_state* %3, i8* %4)
  store %struct.malloc_segment* %call, %struct.malloc_segment** %oldsp, align 8
  %5 = load %struct.malloc_segment*, %struct.malloc_segment** %oldsp, align 8
  %base = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %5, i32 0, i32 0
  %6 = load i8*, i8** %base, align 8
  %7 = load %struct.malloc_segment*, %struct.malloc_segment** %oldsp, align 8
  %size = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %7, i32 0, i32 1
  %8 = load i64, i64* %size, align 8
  %add.ptr = getelementptr i8, i8* %6, i64 %8
  store i8* %add.ptr, i8** %old_end, align 8
  store i64 40, i64* %ssize, align 8
  %9 = load i8*, i8** %old_end, align 8
  %10 = load i64, i64* %ssize, align 8
  %add = add i64 %10, 32
  %add1 = add i64 %add, 7
  %idx.neg = sub i64 0, %add1
  %add.ptr2 = getelementptr i8, i8* %9, i64 %idx.neg
  store i8* %add.ptr2, i8** %rawsp, align 8
  %11 = load i8*, i8** %rawsp, align 8
  %add.ptr3 = getelementptr i8, i8* %11, i64 16
  %12 = ptrtoint i8* %add.ptr3 to i64
  %and = and i64 %12, 7
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %13 = load i8*, i8** %rawsp, align 8
  %add.ptr4 = getelementptr i8, i8* %13, i64 16
  %14 = ptrtoint i8* %add.ptr4 to i64
  %and5 = and i64 %14, 7
  %sub = sub i64 8, %and5
  %and6 = and i64 %sub, 7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %and6, %cond.false ]
  store i64 %cond, i64* %offset, align 8
  %15 = load i8*, i8** %rawsp, align 8
  %16 = load i64, i64* %offset, align 8
  %add.ptr7 = getelementptr i8, i8* %15, i64 %16
  store i8* %add.ptr7, i8** %asp, align 8
  %17 = load i8*, i8** %asp, align 8
  %18 = load i8*, i8** %old_top, align 8
  %add.ptr8 = getelementptr i8, i8* %18, i64 32
  %cmp9 = icmp ult i8* %17, %add.ptr8
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.end
  %19 = load i8*, i8** %old_top, align 8
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end
  %20 = load i8*, i8** %asp, align 8
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.10
  %cond13 = phi i8* [ %19, %cond.true.10 ], [ %20, %cond.false.11 ]
  store i8* %cond13, i8** %csp, align 8
  %21 = load i8*, i8** %csp, align 8
  %22 = bitcast i8* %21 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %22, %struct.malloc_chunk** %sp, align 8
  %23 = load %struct.malloc_chunk*, %struct.malloc_chunk** %sp, align 8
  %24 = bitcast %struct.malloc_chunk* %23 to i8*
  %add.ptr14 = getelementptr i8, i8* %24, i64 16
  %25 = bitcast i8* %add.ptr14 to %struct.malloc_segment*
  store %struct.malloc_segment* %25, %struct.malloc_segment** %ss, align 8
  %26 = load %struct.malloc_chunk*, %struct.malloc_chunk** %sp, align 8
  %27 = bitcast %struct.malloc_chunk* %26 to i8*
  %28 = load i64, i64* %ssize, align 8
  %add.ptr15 = getelementptr i8, i8* %27, i64 %28
  %29 = bitcast i8* %add.ptr15 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %29, %struct.malloc_chunk** %tnext, align 8
  %30 = load %struct.malloc_chunk*, %struct.malloc_chunk** %tnext, align 8
  store %struct.malloc_chunk* %30, %struct.malloc_chunk** %p, align 8
  store i32 0, i32* %nfences, align 4
  %31 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %32 = load i8*, i8** %tbase.addr, align 8
  %33 = bitcast i8* %32 to %struct.malloc_chunk*
  %34 = load i64, i64* %tsize.addr, align 8
  %sub16 = sub i64 %34, 72
  call void @init_top(%struct.malloc_state* %31, %struct.malloc_chunk* %33, i64 %sub16)
  %35 = load i64, i64* %ssize, align 8
  %or = or i64 %35, 1
  %or17 = or i64 %or, 2
  %36 = load %struct.malloc_chunk*, %struct.malloc_chunk** %sp, align 8
  %head = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %36, i32 0, i32 1
  store i64 %or17, i64* %head, align 8
  %37 = load %struct.malloc_segment*, %struct.malloc_segment** %ss, align 8
  %38 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %38, i32 0, i32 15
  %39 = bitcast %struct.malloc_segment* %37 to i8*
  %40 = bitcast %struct.malloc_segment* %seg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 32, i32 8, i1 false)
  %41 = load i8*, i8** %tbase.addr, align 8
  %42 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg18 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %42, i32 0, i32 15
  %base19 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg18, i32 0, i32 0
  store i8* %41, i8** %base19, align 8
  %43 = load i64, i64* %tsize.addr, align 8
  %44 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg20 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %44, i32 0, i32 15
  %size21 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg20, i32 0, i32 1
  store i64 %43, i64* %size21, align 8
  %45 = load i32, i32* %mmapped.addr, align 4
  %conv = zext i32 %45 to i64
  %cmp22 = icmp ne i64 %conv, 1
  br i1 %cmp22, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.end.12
  call void @abort() #8
  unreachable
                                                  ; No predecessors!
  %47 = load i32, i32* %mmapped.addr, align 4
  br label %cond.end.57

cond.false.25:                                    ; preds = %cond.end.12
  %48 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg26 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %48, i32 0, i32 15
  %base27 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg26, i32 0, i32 0
  %49 = load i8*, i8** %base27, align 8
  %50 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg28 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %50, i32 0, i32 15
  %size29 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg28, i32 0, i32 1
  %51 = load i64, i64* %size29, align 8
  %add.ptr30 = getelementptr i8, i8* %49, i64 %51
  %add.ptr31 = getelementptr i8, i8* %add.ptr30, i64 -8
  %52 = bitcast i8* %add.ptr31 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg32 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %54, i32 0, i32 15
  %exec_offset = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg32, i32 0, i32 3
  store i64 %53, i64* %exec_offset, align 8
  %55 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg33 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %55, i32 0, i32 15
  %base34 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg33, i32 0, i32 0
  %56 = load i8*, i8** %base34, align 8
  %57 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg35 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %57, i32 0, i32 15
  %exec_offset36 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg35, i32 0, i32 3
  %58 = load i64, i64* %exec_offset36, align 8
  %add.ptr37 = getelementptr i8, i8* %56, i64 %58
  %59 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg38 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %59, i32 0, i32 15
  %size39 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg38, i32 0, i32 1
  %60 = load i64, i64* %size39, align 8
  %add.ptr40 = getelementptr i8, i8* %add.ptr37, i64 %60
  %add.ptr41 = getelementptr i8, i8* %add.ptr40, i64 -8
  %61 = bitcast i8* %add.ptr41 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg42 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %63, i32 0, i32 15
  %exec_offset43 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg42, i32 0, i32 3
  %64 = load i64, i64* %exec_offset43, align 8
  %cmp44 = icmp ne i64 %62, %64
  br i1 %cmp44, label %cond.true.46, label %cond.false.48

cond.true.46:                                     ; preds = %cond.false.25
  call void @abort() #8
  unreachable
                                                  ; No predecessors!
  %66 = load i32, i32* %mmapped.addr, align 4
  %conv47 = zext i32 %66 to i64
  br label %cond.end.55

cond.false.48:                                    ; preds = %cond.false.25
  %67 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg49 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %67, i32 0, i32 15
  %base50 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg49, i32 0, i32 0
  %68 = load i8*, i8** %base50, align 8
  %69 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg51 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %69, i32 0, i32 15
  %size52 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg51, i32 0, i32 1
  %70 = load i64, i64* %size52, align 8
  %add.ptr53 = getelementptr i8, i8* %68, i64 %70
  %add.ptr54 = getelementptr i8, i8* %add.ptr53, i64 -8
  %71 = bitcast i8* %add.ptr54 to i64*
  store i64 0, i64* %71, align 8
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.48, %65
  %cond56 = phi i64 [ %conv47, %65 ], [ 0, %cond.false.48 ]
  %72 = load i32, i32* %mmapped.addr, align 4
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.end.55, %46
  %cond58 = phi i32 [ %47, %46 ], [ %72, %cond.end.55 ]
  %73 = load %struct.malloc_segment*, %struct.malloc_segment** %ss, align 8
  %74 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg59 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %74, i32 0, i32 15
  %next = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %seg59, i32 0, i32 2
  store %struct.malloc_segment* %73, %struct.malloc_segment** %next, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %cond.end.57
  %75 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %76 = bitcast %struct.malloc_chunk* %75 to i8*
  %add.ptr60 = getelementptr i8, i8* %76, i64 8
  %77 = bitcast i8* %add.ptr60 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %77, %struct.malloc_chunk** %nextp, align 8
  %78 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %head61 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %78, i32 0, i32 1
  store i64 11, i64* %head61, align 8
  %79 = load i32, i32* %nfences, align 4
  %inc = add i32 %79, 1
  store i32 %inc, i32* %nfences, align 4
  %80 = load %struct.malloc_chunk*, %struct.malloc_chunk** %nextp, align 8
  %head62 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %80, i32 0, i32 1
  %81 = bitcast i64* %head62 to i8*
  %82 = load i8*, i8** %old_end, align 8
  %cmp63 = icmp ult i8* %81, %82
  br i1 %cmp63, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %83 = load %struct.malloc_chunk*, %struct.malloc_chunk** %nextp, align 8
  store %struct.malloc_chunk* %83, %struct.malloc_chunk** %p, align 8
  br label %if.end

if.else:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %for.cond

for.end:                                          ; preds = %if.else
  %84 = load i8*, i8** %csp, align 8
  %85 = load i8*, i8** %old_top, align 8
  %cmp65 = icmp ne i8* %84, %85
  br i1 %cmp65, label %if.then.67, label %if.end.212

if.then.67:                                       ; preds = %for.end
  %86 = load i8*, i8** %old_top, align 8
  %87 = bitcast i8* %86 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %87, %struct.malloc_chunk** %q, align 8
  %88 = load i8*, i8** %csp, align 8
  %89 = load i8*, i8** %old_top, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %88 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %89 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %psize, align 8
  %90 = load %struct.malloc_chunk*, %struct.malloc_chunk** %q, align 8
  %91 = bitcast %struct.malloc_chunk* %90 to i8*
  %92 = load i64, i64* %psize, align 8
  %add.ptr68 = getelementptr i8, i8* %91, i64 %92
  %93 = bitcast i8* %add.ptr68 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %93, %struct.malloc_chunk** %tn, align 8
  %94 = load %struct.malloc_chunk*, %struct.malloc_chunk** %tn, align 8
  %head69 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %94, i32 0, i32 1
  %95 = load i64, i64* %head69, align 8
  %and70 = and i64 %95, -2
  store i64 %and70, i64* %head69, align 8
  %96 = load i64, i64* %psize, align 8
  %or71 = or i64 %96, 1
  %97 = load %struct.malloc_chunk*, %struct.malloc_chunk** %q, align 8
  %head72 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %97, i32 0, i32 1
  store i64 %or71, i64* %head72, align 8
  %98 = load i64, i64* %psize, align 8
  %99 = load %struct.malloc_chunk*, %struct.malloc_chunk** %q, align 8
  %100 = bitcast %struct.malloc_chunk* %99 to i8*
  %101 = load i64, i64* %psize, align 8
  %add.ptr73 = getelementptr i8, i8* %100, i64 %101
  %102 = bitcast i8* %add.ptr73 to %struct.malloc_chunk*
  %prev_foot = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %102, i32 0, i32 0
  store i64 %98, i64* %prev_foot, align 8
  %103 = load i64, i64* %psize, align 8
  %shr = lshr i64 %103, 3
  %cmp74 = icmp ult i64 %shr, 32
  br i1 %cmp74, label %if.then.76, label %if.else.98

if.then.76:                                       ; preds = %if.then.67
  %104 = load i64, i64* %psize, align 8
  %shr77 = lshr i64 %104, 3
  %conv78 = trunc i64 %shr77 to i32
  store i32 %conv78, i32* %I, align 4
  %105 = load i32, i32* %I, align 4
  %shl = shl i32 %105, 1
  %idxprom = zext i32 %shl to i64
  %106 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %smallbins = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %106, i32 0, i32 9
  %arrayidx = getelementptr [66 x %struct.malloc_chunk*], [66 x %struct.malloc_chunk*]* %smallbins, i32 0, i64 %idxprom
  %107 = bitcast %struct.malloc_chunk** %arrayidx to i8*
  %108 = bitcast i8* %107 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %108, %struct.malloc_chunk** %B, align 8
  %109 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  store %struct.malloc_chunk* %109, %struct.malloc_chunk** %F, align 8
  %110 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %smallmap = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %110, i32 0, i32 0
  %111 = load i32, i32* %smallmap, align 4
  %112 = load i32, i32* %I, align 4
  %shl79 = shl i32 1, %112
  %and80 = and i32 %111, %shl79
  %tobool = icmp ne i32 %and80, 0
  br i1 %tobool, label %if.else.85, label %if.then.81

if.then.81:                                       ; preds = %if.then.76
  %113 = load i32, i32* %I, align 4
  %shl82 = shl i32 1, %113
  %114 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %smallmap83 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %114, i32 0, i32 0
  %115 = load i32, i32* %smallmap83, align 4
  %or84 = or i32 %115, %shl82
  store i32 %or84, i32* %smallmap83, align 4
  br label %if.end.94

if.else.85:                                       ; preds = %if.then.76
  %116 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %fd = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %116, i32 0, i32 2
  %117 = load %struct.malloc_chunk*, %struct.malloc_chunk** %fd, align 8
  %118 = bitcast %struct.malloc_chunk* %117 to i8*
  %119 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %119, i32 0, i32 4
  %120 = load i8*, i8** %least_addr, align 8
  %cmp86 = icmp uge i8* %118, %120
  %conv87 = zext i1 %cmp86 to i32
  %conv88 = sext i32 %conv87 to i64
  %tobool89 = icmp ne i64 %conv88, 0
  br i1 %tobool89, label %if.then.90, label %if.else.92

if.then.90:                                       ; preds = %if.else.85
  %121 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %fd91 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %121, i32 0, i32 2
  %122 = load %struct.malloc_chunk*, %struct.malloc_chunk** %fd91, align 8
  store %struct.malloc_chunk* %122, %struct.malloc_chunk** %F, align 8
  br label %if.end.93

if.else.92:                                       ; preds = %if.else.85
  call void @abort() #8
  unreachable

if.end.93:                                        ; preds = %if.then.90
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.81
  %123 = load %struct.malloc_chunk*, %struct.malloc_chunk** %q, align 8
  %124 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %fd95 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %124, i32 0, i32 2
  store %struct.malloc_chunk* %123, %struct.malloc_chunk** %fd95, align 8
  %125 = load %struct.malloc_chunk*, %struct.malloc_chunk** %q, align 8
  %126 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F, align 8
  %bk = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %126, i32 0, i32 3
  store %struct.malloc_chunk* %125, %struct.malloc_chunk** %bk, align 8
  %127 = load %struct.malloc_chunk*, %struct.malloc_chunk** %F, align 8
  %128 = load %struct.malloc_chunk*, %struct.malloc_chunk** %q, align 8
  %fd96 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %128, i32 0, i32 2
  store %struct.malloc_chunk* %127, %struct.malloc_chunk** %fd96, align 8
  %129 = load %struct.malloc_chunk*, %struct.malloc_chunk** %B, align 8
  %130 = load %struct.malloc_chunk*, %struct.malloc_chunk** %q, align 8
  %bk97 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %130, i32 0, i32 3
  store %struct.malloc_chunk* %129, %struct.malloc_chunk** %bk97, align 8
  br label %if.end.211

if.else.98:                                       ; preds = %if.then.67
  %131 = load %struct.malloc_chunk*, %struct.malloc_chunk** %q, align 8
  %132 = bitcast %struct.malloc_chunk* %131 to %struct.malloc_tree_chunk*
  store %struct.malloc_tree_chunk* %132, %struct.malloc_tree_chunk** %TP, align 8
  %133 = load i64, i64* %psize, align 8
  %shr100 = lshr i64 %133, 8
  store i64 %shr100, i64* %X, align 8
  %134 = load i64, i64* %X, align 8
  %cmp101 = icmp eq i64 %134, 0
  br i1 %cmp101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %if.else.98
  store i32 0, i32* %I99, align 4
  br label %if.end.135

if.else.104:                                      ; preds = %if.else.98
  %135 = load i64, i64* %X, align 8
  %cmp105 = icmp ugt i64 %135, 65535
  br i1 %cmp105, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %if.else.104
  store i32 31, i32* %I99, align 4
  br label %if.end.134

if.else.108:                                      ; preds = %if.else.104
  %136 = load i64, i64* %X, align 8
  %conv109 = trunc i64 %136 to i32
  store i32 %conv109, i32* %Y, align 4
  %137 = load i32, i32* %Y, align 4
  %sub110 = sub i32 %137, 256
  %shr111 = lshr i32 %sub110, 16
  %and112 = and i32 %shr111, 8
  store i32 %and112, i32* %N, align 4
  %138 = load i32, i32* %N, align 4
  %139 = load i32, i32* %Y, align 4
  %shl113 = shl i32 %139, %138
  store i32 %shl113, i32* %Y, align 4
  %sub114 = sub i32 %shl113, 4096
  %shr115 = lshr i32 %sub114, 16
  %and116 = and i32 %shr115, 4
  store i32 %and116, i32* %K, align 4
  %140 = load i32, i32* %K, align 4
  %141 = load i32, i32* %N, align 4
  %add117 = add i32 %141, %140
  store i32 %add117, i32* %N, align 4
  %142 = load i32, i32* %K, align 4
  %143 = load i32, i32* %Y, align 4
  %shl118 = shl i32 %143, %142
  store i32 %shl118, i32* %Y, align 4
  %sub119 = sub i32 %shl118, 16384
  %shr120 = lshr i32 %sub119, 16
  %and121 = and i32 %shr120, 2
  store i32 %and121, i32* %K, align 4
  %144 = load i32, i32* %N, align 4
  %add122 = add i32 %144, %and121
  store i32 %add122, i32* %N, align 4
  %145 = load i32, i32* %N, align 4
  %sub123 = sub i32 14, %145
  %146 = load i32, i32* %K, align 4
  %147 = load i32, i32* %Y, align 4
  %shl124 = shl i32 %147, %146
  store i32 %shl124, i32* %Y, align 4
  %shr125 = lshr i32 %shl124, 15
  %add126 = add i32 %sub123, %shr125
  store i32 %add126, i32* %K, align 4
  %148 = load i32, i32* %K, align 4
  %shl127 = shl i32 %148, 1
  %conv128 = zext i32 %shl127 to i64
  %149 = load i64, i64* %psize, align 8
  %150 = load i32, i32* %K, align 4
  %add129 = add i32 %150, 7
  %sh_prom = zext i32 %add129 to i64
  %shr130 = lshr i64 %149, %sh_prom
  %and131 = and i64 %shr130, 1
  %add132 = add i64 %conv128, %and131
  %conv133 = trunc i64 %add132 to i32
  store i32 %conv133, i32* %I99, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.108, %if.then.107
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.then.103
  %151 = load i32, i32* %I99, align 4
  %idxprom136 = zext i32 %151 to i64
  %152 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treebins = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %152, i32 0, i32 10
  %arrayidx137 = getelementptr [32 x %struct.malloc_tree_chunk*], [32 x %struct.malloc_tree_chunk*]* %treebins, i32 0, i64 %idxprom136
  store %struct.malloc_tree_chunk** %arrayidx137, %struct.malloc_tree_chunk*** %H, align 8
  %153 = load i32, i32* %I99, align 4
  %154 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %index = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %154, i32 0, i32 6
  store i32 %153, i32* %index, align 4
  %155 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %child = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %155, i32 0, i32 4
  %arrayidx138 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child, i32 0, i64 1
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %arrayidx138, align 8
  %156 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %child139 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %156, i32 0, i32 4
  %arrayidx140 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child139, i32 0, i64 0
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %arrayidx140, align 8
  %157 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treemap = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %157, i32 0, i32 1
  %158 = load i32, i32* %treemap, align 4
  %159 = load i32, i32* %I99, align 4
  %shl141 = shl i32 1, %159
  %and142 = and i32 %158, %shl141
  %tobool143 = icmp ne i32 %and142, 0
  br i1 %tobool143, label %if.else.150, label %if.then.144

if.then.144:                                      ; preds = %if.end.135
  %160 = load i32, i32* %I99, align 4
  %shl145 = shl i32 1, %160
  %161 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treemap146 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %161, i32 0, i32 1
  %162 = load i32, i32* %treemap146, align 4
  %or147 = or i32 %162, %shl145
  store i32 %or147, i32* %treemap146, align 4
  %163 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %164 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H, align 8
  store %struct.malloc_tree_chunk* %163, %struct.malloc_tree_chunk** %164, align 8
  %165 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H, align 8
  %166 = bitcast %struct.malloc_tree_chunk** %165 to %struct.malloc_tree_chunk*
  %167 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %parent = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %167, i32 0, i32 5
  store %struct.malloc_tree_chunk* %166, %struct.malloc_tree_chunk** %parent, align 8
  %168 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %169 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %bk148 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %169, i32 0, i32 3
  store %struct.malloc_tree_chunk* %168, %struct.malloc_tree_chunk** %bk148, align 8
  %170 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %fd149 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %170, i32 0, i32 2
  store %struct.malloc_tree_chunk* %168, %struct.malloc_tree_chunk** %fd149, align 8
  br label %if.end.210

if.else.150:                                      ; preds = %if.end.135
  %171 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H, align 8
  %172 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %171, align 8
  store %struct.malloc_tree_chunk* %172, %struct.malloc_tree_chunk** %T, align 8
  %173 = load i64, i64* %psize, align 8
  %174 = load i32, i32* %I99, align 4
  %cmp152 = icmp eq i32 %174, 31
  br i1 %cmp152, label %cond.true.154, label %cond.false.155

cond.true.154:                                    ; preds = %if.else.150
  br label %cond.end.161

cond.false.155:                                   ; preds = %if.else.150
  %175 = load i32, i32* %I99, align 4
  %shr156 = lshr i32 %175, 1
  %add157 = add i32 %shr156, 8
  %sub158 = sub i32 %add157, 2
  %conv159 = zext i32 %sub158 to i64
  %sub160 = sub i64 63, %conv159
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.155, %cond.true.154
  %cond162 = phi i64 [ 0, %cond.true.154 ], [ %sub160, %cond.false.155 ]
  %shl163 = shl i64 %173, %cond162
  store i64 %shl163, i64* %K151, align 8
  br label %for.cond.164

for.cond.164:                                     ; preds = %if.end.208, %cond.end.161
  %176 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %head165 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %176, i32 0, i32 1
  %177 = load i64, i64* %head165, align 8
  %and166 = and i64 %177, -4
  %178 = load i64, i64* %psize, align 8
  %cmp167 = icmp ne i64 %and166, %178
  br i1 %cmp167, label %if.then.169, label %if.else.190

if.then.169:                                      ; preds = %for.cond.164
  %179 = load i64, i64* %K151, align 8
  %shr170 = lshr i64 %179, 63
  %and171 = and i64 %shr170, 1
  %180 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %child172 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %180, i32 0, i32 4
  %arrayidx173 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child172, i32 0, i64 %and171
  store %struct.malloc_tree_chunk** %arrayidx173, %struct.malloc_tree_chunk*** %C, align 8
  %181 = load i64, i64* %K151, align 8
  %shl174 = shl i64 %181, 1
  store i64 %shl174, i64* %K151, align 8
  %182 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %C, align 8
  %183 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %182, align 8
  %cmp175 = icmp ne %struct.malloc_tree_chunk* %183, null
  br i1 %cmp175, label %if.then.177, label %if.else.178

if.then.177:                                      ; preds = %if.then.169
  %184 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %C, align 8
  %185 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %184, align 8
  store %struct.malloc_tree_chunk* %185, %struct.malloc_tree_chunk** %T, align 8
  br label %if.end.189

if.else.178:                                      ; preds = %if.then.169
  %186 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %C, align 8
  %187 = bitcast %struct.malloc_tree_chunk** %186 to i8*
  %188 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr179 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %188, i32 0, i32 4
  %189 = load i8*, i8** %least_addr179, align 8
  %cmp180 = icmp uge i8* %187, %189
  %conv181 = zext i1 %cmp180 to i32
  %conv182 = sext i32 %conv181 to i64
  %tobool183 = icmp ne i64 %conv182, 0
  br i1 %tobool183, label %if.then.184, label %if.else.188

if.then.184:                                      ; preds = %if.else.178
  %190 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %191 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %C, align 8
  store %struct.malloc_tree_chunk* %190, %struct.malloc_tree_chunk** %191, align 8
  %192 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %193 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %parent185 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %193, i32 0, i32 5
  store %struct.malloc_tree_chunk* %192, %struct.malloc_tree_chunk** %parent185, align 8
  %194 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %195 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %bk186 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %195, i32 0, i32 3
  store %struct.malloc_tree_chunk* %194, %struct.malloc_tree_chunk** %bk186, align 8
  %196 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %fd187 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %196, i32 0, i32 2
  store %struct.malloc_tree_chunk* %194, %struct.malloc_tree_chunk** %fd187, align 8
  br label %for.end.209

if.else.188:                                      ; preds = %if.else.178
  call void @abort() #8
  unreachable

if.end.189:                                       ; preds = %if.then.177
  br label %if.end.208

if.else.190:                                      ; preds = %for.cond.164
  %197 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %fd192 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %197, i32 0, i32 2
  %198 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %fd192, align 8
  store %struct.malloc_tree_chunk* %198, %struct.malloc_tree_chunk** %F191, align 8
  %199 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %200 = bitcast %struct.malloc_tree_chunk* %199 to i8*
  %201 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr193 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %201, i32 0, i32 4
  %202 = load i8*, i8** %least_addr193, align 8
  %cmp194 = icmp uge i8* %200, %202
  br i1 %cmp194, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else.190
  %203 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F191, align 8
  %204 = bitcast %struct.malloc_tree_chunk* %203 to i8*
  %205 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr196 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %205, i32 0, i32 4
  %206 = load i8*, i8** %least_addr196, align 8
  %cmp197 = icmp uge i8* %204, %206
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else.190
  %207 = phi i1 [ false, %if.else.190 ], [ %cmp197, %land.rhs ]
  %land.ext = zext i1 %207 to i32
  %conv199 = sext i32 %land.ext to i64
  %tobool200 = icmp ne i64 %conv199, 0
  br i1 %tobool200, label %if.then.201, label %if.else.207

if.then.201:                                      ; preds = %land.end
  %208 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %209 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F191, align 8
  %bk202 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %209, i32 0, i32 3
  store %struct.malloc_tree_chunk* %208, %struct.malloc_tree_chunk** %bk202, align 8
  %210 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %fd203 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %210, i32 0, i32 2
  store %struct.malloc_tree_chunk* %208, %struct.malloc_tree_chunk** %fd203, align 8
  %211 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F191, align 8
  %212 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %fd204 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %212, i32 0, i32 2
  store %struct.malloc_tree_chunk* %211, %struct.malloc_tree_chunk** %fd204, align 8
  %213 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %214 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %bk205 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %214, i32 0, i32 3
  store %struct.malloc_tree_chunk* %213, %struct.malloc_tree_chunk** %bk205, align 8
  %215 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %TP, align 8
  %parent206 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %215, i32 0, i32 5
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %parent206, align 8
  br label %for.end.209

if.else.207:                                      ; preds = %land.end
  call void @abort() #8
  unreachable

if.end.208:                                       ; preds = %if.end.189
  br label %for.cond.164

for.end.209:                                      ; preds = %if.then.201, %if.then.184
  br label %if.end.210

if.end.210:                                       ; preds = %for.end.209, %if.then.144
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.end.94
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %for.end
  ret void
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind
declare i8* @mmap(i8*, i64, i32, i32, i32, i64) #2

; Function Attrs: uwtable
define internal i32 @selinux_enabled_check() #0 {
entry:
  %retval = alloca i32, align 4
  %sfs = alloca %struct.statfs, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %buf = alloca i8*, align 8
  %len = alloca i64, align 8
  %p = alloca i8*, align 8
  store i8* null, i8** %buf, align 8
  store i64 0, i64* %len, align 8
  %call = call i32 @statfs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.statfs* %sfs) #7
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %f_type = getelementptr inbounds %struct.statfs, %struct.statfs* %sfs, i32 0, i32 0
  %0 = load i64, i64* %f_type, align 8
  %conv = trunc i64 %0 to i32
  %cmp1 = icmp eq i32 %conv, -109248628
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %f, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %cmp4 = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.27, %if.end.7
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call8 = call i64 @getline(i8** %buf, i64* %len, %struct._IO_FILE* %2)
  %cmp9 = icmp sge i64 %call8, 0
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %buf, align 8
  %call11 = call i8* @strchr(i8* %3, i32 32) #10
  store i8* %call11, i8** %p, align 8
  %4 = load i8*, i8** %p, align 8
  %cmp12 = icmp eq i8* %4, null
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %while.body
  br label %while.end

if.end.15:                                        ; preds = %while.body
  %5 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr i8, i8* %5, i64 1
  %call16 = call i8* @strchr(i8* %add.ptr, i32 32) #10
  store i8* %call16, i8** %p, align 8
  %6 = load i8*, i8** %p, align 8
  %cmp17 = icmp eq i8* %6, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  br label %while.end

if.end.20:                                        ; preds = %if.end.15
  %7 = load i8*, i8** %p, align 8
  %add.ptr21 = getelementptr i8, i8* %7, i64 1
  %call22 = call i32 @strncmp(i8* %add.ptr21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i64 10) #10
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.20
  %8 = load i8*, i8** %buf, align 8
  call void @free(i8* %8) #7
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call26 = call i32 @fclose(%struct._IO_FILE* %9)
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.20
  br label %while.cond

while.end:                                        ; preds = %if.then.19, %if.then.14, %while.cond
  %10 = load i8*, i8** %buf, align 8
  call void @free(i8* %10) #7
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call28 = call i32 @fclose(%struct._IO_FILE* %11)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.25, %if.then.6, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: uwtable
define internal i8* @dlmmap_locked(i8* %start, i64 %length, i32 %prot, i32 %flags, i64 %offset) #0 {
entry:
  %retval = alloca i8*, align 8
  %start.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %prot.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %ptr = alloca i8*, align 8
  store i8* %start, i8** %start.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i32 %prot, i32* %prot.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i64 %offset, i64* %offset.addr, align 8
  %0 = load i32, i32* @execfd, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  store i32 0, i32* @open_temp_exec_file_opts_idx, align 4
  br label %retry_open

retry_open:                                       ; preds = %if.then.13, %if.then
  %call = call i32 @open_temp_exec_file()
  store i32 %call, i32* @execfd, align 4
  %1 = load i32, i32* @execfd, align 4
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %retry_open
  store i8* inttoptr (i64 -1 to i8*), i8** %retval
  br label %return

if.end:                                           ; preds = %retry_open
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %2 = load i64, i64* @execsize, align 8
  store i64 %2, i64* %offset.addr, align 8
  %3 = load i32, i32* @execfd, align 4
  %4 = load i64, i64* %offset.addr, align 8
  %5 = load i64, i64* %length.addr, align 8
  %add = add i64 %4, %5
  %call4 = call i32 @ftruncate(i32 %3, i64 %add) #7
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i8* inttoptr (i64 -1 to i8*), i8** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %6 = load i32, i32* %flags.addr, align 4
  %and = and i32 %6, -35
  store i32 %and, i32* %flags.addr, align 4
  %7 = load i32, i32* %flags.addr, align 4
  %or = or i32 %7, 1
  store i32 %or, i32* %flags.addr, align 4
  %8 = load i64, i64* %length.addr, align 8
  %9 = load i32, i32* %prot.addr, align 4
  %and7 = and i32 %9, -3
  %or8 = or i32 %and7, 4
  %10 = load i32, i32* %flags.addr, align 4
  %11 = load i32, i32* @execfd, align 4
  %12 = load i64, i64* %offset.addr, align 8
  %call9 = call i8* @mmap(i8* null, i64 %8, i32 %or8, i32 %10, i32 %11, i64 %12) #7
  store i8* %call9, i8** %ptr, align 8
  %13 = load i8*, i8** %ptr, align 8
  %cmp10 = icmp eq i8* %13, inttoptr (i64 -1 to i8*)
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.6
  %14 = load i64, i64* %offset.addr, align 8
  %tobool12 = icmp ne i64 %14, 0
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %if.then.11
  %15 = load i32, i32* @execfd, align 4
  %call14 = call i32 @close(i32 %15)
  br label %retry_open

if.end.15:                                        ; preds = %if.then.11
  %16 = load i32, i32* @execfd, align 4
  %17 = load i64, i64* %offset.addr, align 8
  %call16 = call i32 @ftruncate(i32 %16, i64 %17) #7
  store i8* inttoptr (i64 -1 to i8*), i8** %retval
  br label %return

if.else:                                          ; preds = %if.end.6
  %18 = load i64, i64* %offset.addr, align 8
  %tobool17 = icmp ne i64 %18, 0
  br i1 %tobool17, label %if.end.21, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %19 = load i32, i32* @open_temp_exec_file_opts_idx, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr [7 x %struct.anon], [7 x %struct.anon]* @open_temp_exec_file_opts, i32 0, i64 %idxprom
  %repeat = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %20 = load i32, i32* %repeat, align 4
  %tobool18 = icmp ne i32 %20, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %land.lhs.true
  %call20 = call i32 @open_temp_exec_file_opts_next()
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %land.lhs.true, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21
  %21 = load i8*, i8** %start.addr, align 8
  %22 = load i64, i64* %length.addr, align 8
  %23 = load i32, i32* %prot.addr, align 4
  %24 = load i32, i32* %flags.addr, align 4
  %25 = load i32, i32* @execfd, align 4
  %26 = load i64, i64* %offset.addr, align 8
  %call23 = call i8* @mmap(i8* %21, i64 %22, i32 %23, i32 %24, i32 %25, i64 %26) #7
  store i8* %call23, i8** %start.addr, align 8
  %27 = load i8*, i8** %start.addr, align 8
  %cmp24 = icmp eq i8* %27, inttoptr (i64 -1 to i8*)
  br i1 %cmp24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end.22
  %28 = load i8*, i8** %ptr, align 8
  %29 = load i64, i64* %length.addr, align 8
  %call26 = call i32 @munmap(i8* %28, i64 %29) #7
  %30 = load i32, i32* @execfd, align 4
  %31 = load i64, i64* %offset.addr, align 8
  %call27 = call i32 @ftruncate(i32 %30, i64 %31) #7
  %32 = load i8*, i8** %start.addr, align 8
  store i8* %32, i8** %retval
  br label %return

if.end.28:                                        ; preds = %if.end.22
  %33 = load i8*, i8** %ptr, align 8
  %34 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %35 = load i8*, i8** %start.addr, align 8
  %36 = load i64, i64* %length.addr, align 8
  %add.ptr = getelementptr i8, i8* %35, i64 %36
  %add.ptr29 = getelementptr i8, i8* %add.ptr, i64 -8
  %37 = bitcast i8* %add.ptr29 to i64*
  store i64 %sub.ptr.sub, i64* %37, align 8
  %38 = load i64, i64* %length.addr, align 8
  %39 = load i64, i64* @execsize, align 8
  %add30 = add i64 %39, %38
  store i64 %add30, i64* @execsize, align 8
  %40 = load i8*, i8** %start.addr, align 8
  store i8* %40, i8** %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.25, %if.end.15, %if.then.5, %if.then.2
  %41 = load i8*, i8** %retval
  ret i8* %41
}

; Function Attrs: nounwind
declare i32 @statfs(i8*, %struct.statfs*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #5

declare i64 @getline(i8**, i64*, %struct._IO_FILE*) #5

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #6

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #6

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #5

; Function Attrs: uwtable
define internal i32 @open_temp_exec_file() #0 {
entry:
  %fd = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, i32* @open_temp_exec_file_opts_idx, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr [7 x %struct.anon], [7 x %struct.anon]* @open_temp_exec_file_opts, i32 0, i64 %idxprom
  %func = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %1 = load i32 (i8*)*, i32 (i8*)** %func, align 8
  %2 = load i32, i32* @open_temp_exec_file_opts_idx, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr [7 x %struct.anon], [7 x %struct.anon]* @open_temp_exec_file_opts, i32 0, i64 %idxprom1
  %arg = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx2, i32 0, i32 1
  %3 = load i8*, i8** %arg, align 8
  %call = call i32 %1(i8* %3)
  store i32 %call, i32* %fd, align 4
  %4 = load i32, i32* @open_temp_exec_file_opts_idx, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr [7 x %struct.anon], [7 x %struct.anon]* @open_temp_exec_file_opts, i32 0, i64 %idxprom3
  %repeat = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx4, i32 0, i32 2
  %5 = load i32, i32* %repeat, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %do.body
  %6 = load i32, i32* %fd, align 4
  %cmp = icmp eq i32 %6, -1
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %lor.lhs.false, %do.body
  %call5 = call i32 @open_temp_exec_file_opts_next()
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  br label %do.end

if.end:                                           ; preds = %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %lor.lhs.false
  br label %do.cond

do.cond:                                          ; preds = %if.end.8
  %7 = load i32, i32* %fd, align 4
  %cmp9 = icmp eq i32 %7, -1
  br i1 %cmp9, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.7
  %8 = load i32, i32* %fd, align 4
  ret i32 %8
}

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) #2

declare i32 @close(i32) #5

; Function Attrs: uwtable
define internal i32 @open_temp_exec_file_opts_next() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @open_temp_exec_file_opts_idx, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr [7 x %struct.anon], [7 x %struct.anon]* @open_temp_exec_file_opts, i32 0, i64 %idxprom
  %repeat = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %repeat, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @open_temp_exec_file_opts_idx, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr [7 x %struct.anon], [7 x %struct.anon]* @open_temp_exec_file_opts, i32 0, i64 %idxprom1
  %func = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx2, i32 0, i32 0
  %3 = load i32 (i8*)*, i32 (i8*)** %func, align 8
  %call = call i32 %3(i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* @open_temp_exec_file_opts_idx, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* @open_temp_exec_file_opts_idx, align 4
  %5 = load i32, i32* @open_temp_exec_file_opts_idx, align 4
  %conv = sext i32 %5 to i64
  %cmp = icmp eq i64 %conv, 7
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* @open_temp_exec_file_opts_idx, align 4
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind
declare i32 @munmap(i8*, i64) #2

; Function Attrs: uwtable
define internal i32 @open_temp_exec_file_env(i8* %envvar) #0 {
entry:
  %retval = alloca i32, align 4
  %envvar.addr = alloca i8*, align 8
  %value = alloca i8*, align 8
  store i8* %envvar, i8** %envvar.addr, align 8
  %0 = load i8*, i8** %envvar.addr, align 8
  %call = call i8* @getenv(i8* %0) #7
  store i8* %call, i8** %value, align 8
  %1 = load i8*, i8** %value, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %value, align 8
  %call1 = call i32 @open_temp_exec_file_dir(i8* %2)
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: uwtable
define internal i32 @open_temp_exec_file_dir(i8* %dir) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca i8*, align 8
  %lendir = alloca i32, align 4
  %tempname = alloca i8*, align 8
  store i8* %dir, i8** %dir.addr, align 8
  %0 = load i8*, i8** %dir.addr, align 8
  %call = call i64 @strlen(i8* %0) #10
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %lendir, align 4
  %1 = load i32, i32* %lendir, align 4
  %conv1 = sext i32 %1 to i64
  %add = add i64 %conv1, 11
  %2 = alloca i8, i64 %add
  store i8* %2, i8** %tempname, align 8
  %3 = load i8*, i8** %tempname, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %tempname, align 8
  %5 = load i8*, i8** %dir.addr, align 8
  %6 = load i32, i32* %lendir, align 4
  %conv2 = sext i32 %6 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 %conv2, i32 1, i1 false)
  %7 = load i8*, i8** %tempname, align 8
  %8 = load i32, i32* %lendir, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr i8, i8* %7, i64 %idx.ext
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @open_temp_exec_file_dir.suffix, i32 0, i32 0), i64 11, i32 1, i1 false)
  %9 = load i8*, i8** %tempname, align 8
  %call3 = call i32 @open_temp_exec_file_name(i8* %9)
  store i32 %call3, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: uwtable
define internal i32 @open_temp_exec_file_mnt(i8* %mounts) #0 {
entry:
  %retval = alloca i32, align 4
  %mounts.addr = alloca i8*, align 8
  %fd = alloca i32, align 4
  %mnt = alloca %struct.mntent, align 8
  %buf = alloca [12288 x i8], align 16
  store i8* %mounts, i8** %mounts.addr, align 8
  %0 = load i8*, i8** %mounts.addr, align 8
  %1 = load i8*, i8** @open_temp_exec_file_mnt.last_mounts, align 8
  %cmp = icmp ne i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @open_temp_exec_file_mnt.last_mntent, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @open_temp_exec_file_mnt.last_mntent, align 8
  %call = call i32 @endmntent(%struct._IO_FILE* %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %4 = load i8*, i8** %mounts.addr, align 8
  store i8* %4, i8** @open_temp_exec_file_mnt.last_mounts, align 8
  %5 = load i8*, i8** %mounts.addr, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %6 = load i8*, i8** %mounts.addr, align 8
  %call4 = call %struct._IO_FILE* @setmntent(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #7
  store %struct._IO_FILE* %call4, %struct._IO_FILE** @open_temp_exec_file_mnt.last_mntent, align 8
  br label %if.end.5

if.else:                                          ; preds = %if.end
  store %struct._IO_FILE* null, %struct._IO_FILE** @open_temp_exec_file_mnt.last_mntent, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @open_temp_exec_file_mnt.last_mntent, align 8
  %tobool7 = icmp ne %struct._IO_FILE* %7, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.6
  br label %for.cond

for.cond:                                         ; preds = %if.end.27, %if.then.21, %if.end.9
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @open_temp_exec_file_mnt.last_mntent, align 8
  %arraydecay = getelementptr inbounds [12288 x i8], [12288 x i8]* %buf, i32 0, i32 0
  %call10 = call %struct.mntent* @getmntent_r(%struct._IO_FILE* %8, %struct.mntent* %mnt, i8* %arraydecay, i32 12288) #7
  %cmp11 = icmp eq %struct.mntent* %call10, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %for.cond
  %call14 = call i8* @hasmntopt(%struct.mntent* %mnt, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)) #7
  %tobool15 = icmp ne i8* %call14, null
  br i1 %tobool15, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %call16 = call i8* @hasmntopt(%struct.mntent* %mnt, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)) #7
  %tobool17 = icmp ne i8* %call16, null
  br i1 %tobool17, label %if.then.21, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %mnt_dir = getelementptr inbounds %struct.mntent, %struct.mntent* %mnt, i32 0, i32 1
  %9 = load i8*, i8** %mnt_dir, align 8
  %call19 = call i32 @access(i8* %9, i32 2) #7
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false, %if.end.13
  br label %for.cond

if.end.22:                                        ; preds = %lor.lhs.false.18
  %mnt_dir23 = getelementptr inbounds %struct.mntent, %struct.mntent* %mnt, i32 0, i32 1
  %10 = load i8*, i8** %mnt_dir23, align 8
  %call24 = call i32 @open_temp_exec_file_dir(i8* %10)
  store i32 %call24, i32* %fd, align 4
  %11 = load i32, i32* %fd, align 4
  %cmp25 = icmp ne i32 %11, -1
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.22
  %12 = load i32, i32* %fd, align 4
  store i32 %12, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.22
  br label %for.cond

return:                                           ; preds = %if.then.26, %if.then.12, %if.then.8
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: uwtable
define internal i32 @open_temp_exec_file_name(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %fd = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 @mkstemp(i8* %0)
  store i32 %call, i32* %fd, align 4
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8
  %call1 = call i32 @unlink(i8* %2) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %fd, align 4
  ret i32 %3
}

declare i32 @mkstemp(i8*) #5

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

; Function Attrs: nounwind
declare i32 @endmntent(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare %struct._IO_FILE* @setmntent(i8*, i8*) #2

; Function Attrs: nounwind
declare %struct.mntent* @getmntent_r(%struct._IO_FILE*, %struct.mntent*, i8*, i32) #2

; Function Attrs: nounwind
declare i8* @hasmntopt(%struct.mntent*, i8*) #2

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @dlmunmap(i8* %start, i64 %length) #1 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %seg = alloca %struct.malloc_segment*, align 8
  %code = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %start, i8** %start.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load i8*, i8** %start.addr, align 8
  %call = call %struct.malloc_segment* @segment_holding(%struct.malloc_state* @_gm_, i8* %0)
  store %struct.malloc_segment* %call, %struct.malloc_segment** %seg, align 8
  %1 = load %struct.malloc_segment*, %struct.malloc_segment** %seg, align 8
  %tobool = icmp ne %struct.malloc_segment* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %start.addr, align 8
  %3 = load %struct.malloc_segment*, %struct.malloc_segment** %seg, align 8
  %exec_offset = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %3, i32 0, i32 3
  %4 = load i64, i64* %exec_offset, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 %4
  store i8* %add.ptr, i8** %code, align 8
  %5 = load i8*, i8** %start.addr, align 8
  %cmp = icmp ne i8* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8*, i8** %code, align 8
  %7 = load i64, i64* %length.addr, align 8
  %call1 = call i32 @munmap(i8* %6, i64 %7) #7
  store i32 %call1, i32* %ret, align 4
  %8 = load i32, i32* %ret, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load i32, i32* %ret, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %land.lhs.true, %entry
  %10 = load i8*, i8** %start.addr, align 8
  %11 = load i64, i64* %length.addr, align 8
  %call5 = call i32 @munmap(i8* %10, i64 %11) #7
  store i32 %call5, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: uwtable
define internal i32 @sys_trim(%struct.malloc_state* %m, i64 %pad) #0 {
entry:
  %m.addr = alloca %struct.malloc_state*, align 8
  %pad.addr = alloca i64, align 8
  %released = alloca i64, align 8
  %unit = alloca i64, align 8
  %extra = alloca i64, align 8
  %sp = alloca %struct.malloc_segment*, align 8
  %newsize = alloca i64, align 8
  store %struct.malloc_state* %m, %struct.malloc_state** %m.addr, align 8
  store i64 %pad, i64* %pad.addr, align 8
  store i64 0, i64* %released, align 8
  %0 = load i64, i64* %pad.addr, align 8
  %cmp = icmp ult i64 %0, -128
  br i1 %cmp, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %top = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %1, i32 0, i32 6
  %2 = load %struct.malloc_chunk*, %struct.malloc_chunk** %top, align 8
  %cmp1 = icmp ne %struct.malloc_chunk* %2, null
  br i1 %cmp1, label %if.then, label %if.end.34

if.then:                                          ; preds = %land.lhs.true
  %3 = load i64, i64* %pad.addr, align 8
  %add = add i64 %3, 72
  store i64 %add, i64* %pad.addr, align 8
  %4 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %topsize = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %4, i32 0, i32 3
  %5 = load i64, i64* %topsize, align 8
  %6 = load i64, i64* %pad.addr, align 8
  %cmp2 = icmp ugt i64 %5, %6
  br i1 %cmp2, label %if.then.3, label %if.end.28

if.then.3:                                        ; preds = %if.then
  %7 = load i64, i64* getelementptr inbounds (%struct.malloc_params, %struct.malloc_params* @mparams, i32 0, i32 2), align 8
  store i64 %7, i64* %unit, align 8
  %8 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %topsize4 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %8, i32 0, i32 3
  %9 = load i64, i64* %topsize4, align 8
  %10 = load i64, i64* %pad.addr, align 8
  %sub = sub i64 %9, %10
  %11 = load i64, i64* %unit, align 8
  %sub5 = sub i64 %11, 1
  %add6 = add i64 %sub, %sub5
  %12 = load i64, i64* %unit, align 8
  %div = udiv i64 %add6, %12
  %sub7 = sub i64 %div, 1
  %13 = load i64, i64* %unit, align 8
  %mul = mul i64 %sub7, %13
  store i64 %mul, i64* %extra, align 8
  %14 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %15 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %top8 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %15, i32 0, i32 6
  %16 = load %struct.malloc_chunk*, %struct.malloc_chunk** %top8, align 8
  %17 = bitcast %struct.malloc_chunk* %16 to i8*
  %call = call %struct.malloc_segment* @segment_holding(%struct.malloc_state* %14, i8* %17)
  store %struct.malloc_segment* %call, %struct.malloc_segment** %sp, align 8
  %18 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %size = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %18, i32 0, i32 1
  %19 = load i64, i64* %size, align 8
  %20 = load i64, i64* %extra, align 8
  %cmp9 = icmp uge i64 %19, %20
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.18

land.lhs.true.10:                                 ; preds = %if.then.3
  %21 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %22 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %call11 = call i32 @has_segment_link(%struct.malloc_state* %21, %struct.malloc_segment* %22)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end.18, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true.10
  %23 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %size13 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %23, i32 0, i32 1
  %24 = load i64, i64* %size13, align 8
  %25 = load i64, i64* %extra, align 8
  %sub14 = sub i64 %24, %25
  store i64 %sub14, i64* %newsize, align 8
  %26 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %base = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %26, i32 0, i32 0
  %27 = load i8*, i8** %base, align 8
  %28 = load i64, i64* %newsize, align 8
  %add.ptr = getelementptr i8, i8* %27, i64 %28
  %29 = load i64, i64* %extra, align 8
  %call15 = call i32 @dlmunmap(i8* %add.ptr, i64 %29)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.12
  %30 = load i64, i64* %extra, align 8
  store i64 %30, i64* %released, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %land.lhs.true.10, %if.then.3
  %31 = load i64, i64* %released, align 8
  %cmp19 = icmp ne i64 %31, 0
  br i1 %cmp19, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %if.end.18
  %32 = load i64, i64* %released, align 8
  %33 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %size21 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %33, i32 0, i32 1
  %34 = load i64, i64* %size21, align 8
  %sub22 = sub i64 %34, %32
  store i64 %sub22, i64* %size21, align 8
  %35 = load i64, i64* %released, align 8
  %36 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %footprint = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %36, i32 0, i32 11
  %37 = load i64, i64* %footprint, align 8
  %sub23 = sub i64 %37, %35
  store i64 %sub23, i64* %footprint, align 8
  %38 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %39 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %top24 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %39, i32 0, i32 6
  %40 = load %struct.malloc_chunk*, %struct.malloc_chunk** %top24, align 8
  %41 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %topsize25 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %41, i32 0, i32 3
  %42 = load i64, i64* %topsize25, align 8
  %43 = load i64, i64* %released, align 8
  %sub26 = sub i64 %42, %43
  call void @init_top(%struct.malloc_state* %38, %struct.malloc_chunk* %40, i64 %sub26)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.20, %if.end.18
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then
  %44 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %call29 = call i64 @release_unused_segments(%struct.malloc_state* %44)
  %45 = load i64, i64* %released, align 8
  %add30 = add i64 %45, %call29
  store i64 %add30, i64* %released, align 8
  %46 = load i64, i64* %released, align 8
  %cmp31 = icmp eq i64 %46, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  %47 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %trim_check = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %47, i32 0, i32 7
  store i64 -1, i64* %trim_check, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.28
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %land.lhs.true, %entry
  %48 = load i64, i64* %released, align 8
  %cmp35 = icmp ne i64 %48, 0
  %cond = select i1 %cmp35, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @has_segment_link(%struct.malloc_state* %m, %struct.malloc_segment* %ss) #1 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.malloc_state*, align 8
  %ss.addr = alloca %struct.malloc_segment*, align 8
  %sp = alloca %struct.malloc_segment*, align 8
  store %struct.malloc_state* %m, %struct.malloc_state** %m.addr, align 8
  store %struct.malloc_segment* %ss, %struct.malloc_segment** %ss.addr, align 8
  %0 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %0, i32 0, i32 15
  store %struct.malloc_segment* %seg, %struct.malloc_segment** %sp, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.5, %entry
  %1 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %2 = bitcast %struct.malloc_segment* %1 to i8*
  %3 = load %struct.malloc_segment*, %struct.malloc_segment** %ss.addr, align 8
  %base = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %3, i32 0, i32 0
  %4 = load i8*, i8** %base, align 8
  %cmp = icmp uge i8* %2, %4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.cond
  %5 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %6 = bitcast %struct.malloc_segment* %5 to i8*
  %7 = load %struct.malloc_segment*, %struct.malloc_segment** %ss.addr, align 8
  %base1 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %7, i32 0, i32 0
  %8 = load i8*, i8** %base1, align 8
  %9 = load %struct.malloc_segment*, %struct.malloc_segment** %ss.addr, align 8
  %size = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %9, i32 0, i32 1
  %10 = load i64, i64* %size, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 %10
  %cmp2 = icmp ult i8* %6, %add.ptr
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.cond
  %11 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %next = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %11, i32 0, i32 2
  %12 = load %struct.malloc_segment*, %struct.malloc_segment** %next, align 8
  store %struct.malloc_segment* %12, %struct.malloc_segment** %sp, align 8
  %cmp3 = icmp eq %struct.malloc_segment* %12, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  br label %for.cond

return:                                           ; preds = %if.then.4, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i64 @release_unused_segments(%struct.malloc_state* %m) #1 {
entry:
  %m.addr = alloca %struct.malloc_state*, align 8
  %released = alloca i64, align 8
  %pred = alloca %struct.malloc_segment*, align 8
  %sp = alloca %struct.malloc_segment*, align 8
  %base = alloca i8*, align 8
  %size = alloca i64, align 8
  %next3 = alloca %struct.malloc_segment*, align 8
  %p = alloca %struct.malloc_chunk*, align 8
  %psize = alloca i64, align 8
  %tp = alloca %struct.malloc_tree_chunk*, align 8
  %XP = alloca %struct.malloc_tree_chunk*, align 8
  %R = alloca %struct.malloc_tree_chunk*, align 8
  %F = alloca %struct.malloc_tree_chunk*, align 8
  %RP = alloca %struct.malloc_tree_chunk**, align 8
  %CP = alloca %struct.malloc_tree_chunk**, align 8
  %H = alloca %struct.malloc_tree_chunk**, align 8
  %C0 = alloca %struct.malloc_tree_chunk*, align 8
  %C1 = alloca %struct.malloc_tree_chunk*, align 8
  %H147 = alloca %struct.malloc_tree_chunk**, align 8
  %I = alloca i32, align 4
  %X = alloca i64, align 8
  %Y = alloca i32, align 4
  %N = alloca i32, align 4
  %K = alloca i32, align 4
  %T = alloca %struct.malloc_tree_chunk*, align 8
  %K202 = alloca i64, align 8
  %C = alloca %struct.malloc_tree_chunk**, align 8
  %F241 = alloca %struct.malloc_tree_chunk*, align 8
  store %struct.malloc_state* %m, %struct.malloc_state** %m.addr, align 8
  store i64 0, i64* %released, align 8
  %0 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %seg = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %0, i32 0, i32 15
  store %struct.malloc_segment* %seg, %struct.malloc_segment** %pred, align 8
  %1 = load %struct.malloc_segment*, %struct.malloc_segment** %pred, align 8
  %next = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %1, i32 0, i32 2
  %2 = load %struct.malloc_segment*, %struct.malloc_segment** %next, align 8
  store %struct.malloc_segment* %2, %struct.malloc_segment** %sp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.261, %entry
  %3 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %cmp = icmp ne %struct.malloc_segment* %3, null
  br i1 %cmp, label %while.body, label %while.end.262

while.body:                                       ; preds = %while.cond
  %4 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %base1 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %4, i32 0, i32 0
  %5 = load i8*, i8** %base1, align 8
  store i8* %5, i8** %base, align 8
  %6 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %size2 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %6, i32 0, i32 1
  %7 = load i64, i64* %size2, align 8
  store i64 %7, i64* %size, align 8
  %8 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %next4 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %8, i32 0, i32 2
  %9 = load %struct.malloc_segment*, %struct.malloc_segment** %next4, align 8
  store %struct.malloc_segment* %9, %struct.malloc_segment** %next3, align 8
  %10 = load i8*, i8** %base, align 8
  %11 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr i8, i8* %11, i64 16
  %12 = ptrtoint i8* %add.ptr to i64
  %and = and i64 %12, 7
  %cmp5 = icmp eq i64 %and, 0
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %13 = load i8*, i8** %base, align 8
  %add.ptr6 = getelementptr i8, i8* %13, i64 16
  %14 = ptrtoint i8* %add.ptr6 to i64
  %and7 = and i64 %14, 7
  %sub = sub i64 8, %and7
  %and8 = and i64 %sub, 7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %and8, %cond.false ]
  %add.ptr9 = getelementptr i8, i8* %10, i64 %cond
  %15 = bitcast i8* %add.ptr9 to %struct.malloc_chunk*
  store %struct.malloc_chunk* %15, %struct.malloc_chunk** %p, align 8
  %16 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %head = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %16, i32 0, i32 1
  %17 = load i64, i64* %head, align 8
  %and10 = and i64 %17, -4
  store i64 %and10, i64* %psize, align 8
  %18 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %head11 = getelementptr inbounds %struct.malloc_chunk, %struct.malloc_chunk* %18, i32 0, i32 1
  %19 = load i64, i64* %head11, align 8
  %and12 = and i64 %19, 2
  %tobool = icmp ne i64 %and12, 0
  br i1 %tobool, label %if.end.261, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %20 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %21 = bitcast %struct.malloc_chunk* %20 to i8*
  %22 = load i64, i64* %psize, align 8
  %add.ptr13 = getelementptr i8, i8* %21, i64 %22
  %23 = load i8*, i8** %base, align 8
  %24 = load i64, i64* %size, align 8
  %add.ptr14 = getelementptr i8, i8* %23, i64 %24
  %add.ptr15 = getelementptr i8, i8* %add.ptr14, i64 -72
  %cmp16 = icmp uge i8* %add.ptr13, %add.ptr15
  br i1 %cmp16, label %if.then, label %if.end.261

if.then:                                          ; preds = %land.lhs.true
  %25 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %26 = bitcast %struct.malloc_chunk* %25 to %struct.malloc_tree_chunk*
  store %struct.malloc_tree_chunk* %26, %struct.malloc_tree_chunk** %tp, align 8
  %27 = load %struct.malloc_chunk*, %struct.malloc_chunk** %p, align 8
  %28 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %dv = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %28, i32 0, i32 5
  %29 = load %struct.malloc_chunk*, %struct.malloc_chunk** %dv, align 8
  %cmp17 = icmp eq %struct.malloc_chunk* %27, %29
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then
  %30 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %dv19 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %30, i32 0, i32 5
  store %struct.malloc_chunk* null, %struct.malloc_chunk** %dv19, align 8
  %31 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %dvsize = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %31, i32 0, i32 2
  store i64 0, i64* %dvsize, align 8
  br label %if.end.140

if.else:                                          ; preds = %if.then
  %32 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %parent = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %32, i32 0, i32 5
  %33 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %parent, align 8
  store %struct.malloc_tree_chunk* %33, %struct.malloc_tree_chunk** %XP, align 8
  %34 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %bk = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %34, i32 0, i32 3
  %35 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %bk, align 8
  %36 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %cmp20 = icmp ne %struct.malloc_tree_chunk* %35, %36
  br i1 %cmp20, label %if.then.21, label %if.else.30

if.then.21:                                       ; preds = %if.else
  %37 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %fd = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %37, i32 0, i32 2
  %38 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %fd, align 8
  store %struct.malloc_tree_chunk* %38, %struct.malloc_tree_chunk** %F, align 8
  %39 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %bk22 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %39, i32 0, i32 3
  %40 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %bk22, align 8
  store %struct.malloc_tree_chunk* %40, %struct.malloc_tree_chunk** %R, align 8
  %41 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F, align 8
  %42 = bitcast %struct.malloc_tree_chunk* %41 to i8*
  %43 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %43, i32 0, i32 4
  %44 = load i8*, i8** %least_addr, align 8
  %cmp23 = icmp uge i8* %42, %44
  %conv = zext i1 %cmp23 to i32
  %conv24 = sext i32 %conv to i64
  %tobool25 = icmp ne i64 %conv24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %if.then.21
  %45 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %46 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F, align 8
  %bk27 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %46, i32 0, i32 3
  store %struct.malloc_tree_chunk* %45, %struct.malloc_tree_chunk** %bk27, align 8
  %47 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F, align 8
  %48 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %fd28 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %48, i32 0, i32 2
  store %struct.malloc_tree_chunk* %47, %struct.malloc_tree_chunk** %fd28, align 8
  br label %if.end

if.else.29:                                       ; preds = %if.then.21
  call void @abort() #8
  unreachable

if.end:                                           ; preds = %if.then.26
  br label %if.end.57

if.else.30:                                       ; preds = %if.else
  %49 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %child = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %49, i32 0, i32 4
  %arrayidx = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child, i32 0, i64 1
  store %struct.malloc_tree_chunk** %arrayidx, %struct.malloc_tree_chunk*** %RP, align 8
  %50 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx, align 8
  store %struct.malloc_tree_chunk* %50, %struct.malloc_tree_chunk** %R, align 8
  %cmp31 = icmp ne %struct.malloc_tree_chunk* %50, null
  br i1 %cmp31, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.30
  %51 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %child33 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %51, i32 0, i32 4
  %arrayidx34 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child33, i32 0, i64 0
  store %struct.malloc_tree_chunk** %arrayidx34, %struct.malloc_tree_chunk*** %RP, align 8
  %52 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx34, align 8
  store %struct.malloc_tree_chunk* %52, %struct.malloc_tree_chunk** %R, align 8
  %cmp35 = icmp ne %struct.malloc_tree_chunk* %52, null
  br i1 %cmp35, label %if.then.37, label %if.end.56

if.then.37:                                       ; preds = %lor.lhs.false, %if.else.30
  br label %while.cond.38

while.cond.38:                                    ; preds = %while.body.47, %if.then.37
  %53 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %child39 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %53, i32 0, i32 4
  %arrayidx40 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child39, i32 0, i64 1
  store %struct.malloc_tree_chunk** %arrayidx40, %struct.malloc_tree_chunk*** %CP, align 8
  %54 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx40, align 8
  %cmp41 = icmp ne %struct.malloc_tree_chunk* %54, null
  br i1 %cmp41, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.38
  %55 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %child43 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %55, i32 0, i32 4
  %arrayidx44 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child43, i32 0, i64 0
  store %struct.malloc_tree_chunk** %arrayidx44, %struct.malloc_tree_chunk*** %CP, align 8
  %56 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx44, align 8
  %cmp45 = icmp ne %struct.malloc_tree_chunk* %56, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.38
  %57 = phi i1 [ true, %while.cond.38 ], [ %cmp45, %lor.rhs ]
  br i1 %57, label %while.body.47, label %while.end

while.body.47:                                    ; preds = %lor.end
  %58 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %CP, align 8
  store %struct.malloc_tree_chunk** %58, %struct.malloc_tree_chunk*** %RP, align 8
  %59 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %58, align 8
  store %struct.malloc_tree_chunk* %59, %struct.malloc_tree_chunk** %R, align 8
  br label %while.cond.38

while.end:                                        ; preds = %lor.end
  %60 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %RP, align 8
  %61 = bitcast %struct.malloc_tree_chunk** %60 to i8*
  %62 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr48 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %62, i32 0, i32 4
  %63 = load i8*, i8** %least_addr48, align 8
  %cmp49 = icmp uge i8* %61, %63
  %conv50 = zext i1 %cmp49 to i32
  %conv51 = sext i32 %conv50 to i64
  %tobool52 = icmp ne i64 %conv51, 0
  br i1 %tobool52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %while.end
  %64 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %RP, align 8
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %64, align 8
  br label %if.end.55

if.else.54:                                       ; preds = %while.end
  call void @abort() #8
  unreachable

if.end.55:                                        ; preds = %if.then.53
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %lor.lhs.false
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end
  %65 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %cmp58 = icmp ne %struct.malloc_tree_chunk* %65, null
  br i1 %cmp58, label %if.then.60, label %if.end.139

if.then.60:                                       ; preds = %if.end.57
  %66 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %index = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %66, i32 0, i32 6
  %67 = load i32, i32* %index, align 4
  %idxprom = zext i32 %67 to i64
  %68 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treebins = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %68, i32 0, i32 10
  %arrayidx61 = getelementptr [32 x %struct.malloc_tree_chunk*], [32 x %struct.malloc_tree_chunk*]* %treebins, i32 0, i64 %idxprom
  store %struct.malloc_tree_chunk** %arrayidx61, %struct.malloc_tree_chunk*** %H, align 8
  %69 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %70 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H, align 8
  %71 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %70, align 8
  %cmp62 = icmp eq %struct.malloc_tree_chunk* %69, %71
  br i1 %cmp62, label %if.then.64, label %if.else.71

if.then.64:                                       ; preds = %if.then.60
  %72 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %73 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H, align 8
  store %struct.malloc_tree_chunk* %72, %struct.malloc_tree_chunk** %73, align 8
  %cmp65 = icmp eq %struct.malloc_tree_chunk* %72, null
  br i1 %cmp65, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %if.then.64
  %74 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %index68 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %74, i32 0, i32 6
  %75 = load i32, i32* %index68, align 4
  %shl = shl i32 1, %75
  %neg = xor i32 %shl, -1
  %76 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treemap = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %76, i32 0, i32 1
  %77 = load i32, i32* %treemap, align 4
  %and69 = and i32 %77, %neg
  store i32 %and69, i32* %treemap, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.67, %if.then.64
  br label %if.end.91

if.else.71:                                       ; preds = %if.then.60
  %78 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %79 = bitcast %struct.malloc_tree_chunk* %78 to i8*
  %80 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr72 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %80, i32 0, i32 4
  %81 = load i8*, i8** %least_addr72, align 8
  %cmp73 = icmp uge i8* %79, %81
  %conv74 = zext i1 %cmp73 to i32
  %conv75 = sext i32 %conv74 to i64
  %tobool76 = icmp ne i64 %conv75, 0
  br i1 %tobool76, label %if.then.77, label %if.else.89

if.then.77:                                       ; preds = %if.else.71
  %82 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %child78 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %82, i32 0, i32 4
  %arrayidx79 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child78, i32 0, i64 0
  %83 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx79, align 8
  %84 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %cmp80 = icmp eq %struct.malloc_tree_chunk* %83, %84
  br i1 %cmp80, label %if.then.82, label %if.else.85

if.then.82:                                       ; preds = %if.then.77
  %85 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %86 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %child83 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %86, i32 0, i32 4
  %arrayidx84 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child83, i32 0, i64 0
  store %struct.malloc_tree_chunk* %85, %struct.malloc_tree_chunk** %arrayidx84, align 8
  br label %if.end.88

if.else.85:                                       ; preds = %if.then.77
  %87 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %88 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %child86 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %88, i32 0, i32 4
  %arrayidx87 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child86, i32 0, i64 1
  store %struct.malloc_tree_chunk* %87, %struct.malloc_tree_chunk** %arrayidx87, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.85, %if.then.82
  br label %if.end.90

if.else.89:                                       ; preds = %if.else.71
  call void @abort() #8
  unreachable

if.end.90:                                        ; preds = %if.end.88
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.70
  %89 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %cmp92 = icmp ne %struct.malloc_tree_chunk* %89, null
  br i1 %cmp92, label %if.then.94, label %if.end.138

if.then.94:                                       ; preds = %if.end.91
  %90 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %91 = bitcast %struct.malloc_tree_chunk* %90 to i8*
  %92 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr95 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %92, i32 0, i32 4
  %93 = load i8*, i8** %least_addr95, align 8
  %cmp96 = icmp uge i8* %91, %93
  %conv97 = zext i1 %cmp96 to i32
  %conv98 = sext i32 %conv97 to i64
  %tobool99 = icmp ne i64 %conv98, 0
  br i1 %tobool99, label %if.then.100, label %if.else.136

if.then.100:                                      ; preds = %if.then.94
  %94 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %XP, align 8
  %95 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %parent101 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %95, i32 0, i32 5
  store %struct.malloc_tree_chunk* %94, %struct.malloc_tree_chunk** %parent101, align 8
  %96 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %child102 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %96, i32 0, i32 4
  %arrayidx103 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child102, i32 0, i64 0
  %97 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx103, align 8
  store %struct.malloc_tree_chunk* %97, %struct.malloc_tree_chunk** %C0, align 8
  %cmp104 = icmp ne %struct.malloc_tree_chunk* %97, null
  br i1 %cmp104, label %if.then.106, label %if.end.118

if.then.106:                                      ; preds = %if.then.100
  %98 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C0, align 8
  %99 = bitcast %struct.malloc_tree_chunk* %98 to i8*
  %100 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr107 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %100, i32 0, i32 4
  %101 = load i8*, i8** %least_addr107, align 8
  %cmp108 = icmp uge i8* %99, %101
  %conv109 = zext i1 %cmp108 to i32
  %conv110 = sext i32 %conv109 to i64
  %tobool111 = icmp ne i64 %conv110, 0
  br i1 %tobool111, label %if.then.112, label %if.else.116

if.then.112:                                      ; preds = %if.then.106
  %102 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C0, align 8
  %103 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %child113 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %103, i32 0, i32 4
  %arrayidx114 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child113, i32 0, i64 0
  store %struct.malloc_tree_chunk* %102, %struct.malloc_tree_chunk** %arrayidx114, align 8
  %104 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %105 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C0, align 8
  %parent115 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %105, i32 0, i32 5
  store %struct.malloc_tree_chunk* %104, %struct.malloc_tree_chunk** %parent115, align 8
  br label %if.end.117

if.else.116:                                      ; preds = %if.then.106
  call void @abort() #8
  unreachable

if.end.117:                                       ; preds = %if.then.112
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.then.100
  %106 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %child119 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %106, i32 0, i32 4
  %arrayidx120 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child119, i32 0, i64 1
  %107 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %arrayidx120, align 8
  store %struct.malloc_tree_chunk* %107, %struct.malloc_tree_chunk** %C1, align 8
  %cmp121 = icmp ne %struct.malloc_tree_chunk* %107, null
  br i1 %cmp121, label %if.then.123, label %if.end.135

if.then.123:                                      ; preds = %if.end.118
  %108 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C1, align 8
  %109 = bitcast %struct.malloc_tree_chunk* %108 to i8*
  %110 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr124 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %110, i32 0, i32 4
  %111 = load i8*, i8** %least_addr124, align 8
  %cmp125 = icmp uge i8* %109, %111
  %conv126 = zext i1 %cmp125 to i32
  %conv127 = sext i32 %conv126 to i64
  %tobool128 = icmp ne i64 %conv127, 0
  br i1 %tobool128, label %if.then.129, label %if.else.133

if.then.129:                                      ; preds = %if.then.123
  %112 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C1, align 8
  %113 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %child130 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %113, i32 0, i32 4
  %arrayidx131 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child130, i32 0, i64 1
  store %struct.malloc_tree_chunk* %112, %struct.malloc_tree_chunk** %arrayidx131, align 8
  %114 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %R, align 8
  %115 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %C1, align 8
  %parent132 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %115, i32 0, i32 5
  store %struct.malloc_tree_chunk* %114, %struct.malloc_tree_chunk** %parent132, align 8
  br label %if.end.134

if.else.133:                                      ; preds = %if.then.123
  call void @abort() #8
  unreachable

if.end.134:                                       ; preds = %if.then.129
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.end.118
  br label %if.end.137

if.else.136:                                      ; preds = %if.then.94
  call void @abort() #8
  unreachable

if.end.137:                                       ; preds = %if.end.135
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.end.91
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.end.57
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.then.18
  %116 = load i8*, i8** %base, align 8
  %117 = load i64, i64* %size, align 8
  %call = call i32 @dlmunmap(i8* %116, i64 %117)
  %cmp141 = icmp eq i32 %call, 0
  br i1 %cmp141, label %if.then.143, label %if.else.146

if.then.143:                                      ; preds = %if.end.140
  %118 = load i64, i64* %size, align 8
  %119 = load i64, i64* %released, align 8
  %add = add i64 %119, %118
  store i64 %add, i64* %released, align 8
  %120 = load i64, i64* %size, align 8
  %121 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %footprint = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %121, i32 0, i32 11
  %122 = load i64, i64* %footprint, align 8
  %sub144 = sub i64 %122, %120
  store i64 %sub144, i64* %footprint, align 8
  %123 = load %struct.malloc_segment*, %struct.malloc_segment** %pred, align 8
  store %struct.malloc_segment* %123, %struct.malloc_segment** %sp, align 8
  %124 = load %struct.malloc_segment*, %struct.malloc_segment** %next3, align 8
  %125 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  %next145 = getelementptr inbounds %struct.malloc_segment, %struct.malloc_segment* %125, i32 0, i32 2
  store %struct.malloc_segment* %124, %struct.malloc_segment** %next145, align 8
  br label %if.end.260

if.else.146:                                      ; preds = %if.end.140
  %126 = load i64, i64* %psize, align 8
  %shr = lshr i64 %126, 8
  store i64 %shr, i64* %X, align 8
  %127 = load i64, i64* %X, align 8
  %cmp148 = icmp eq i64 %127, 0
  br i1 %cmp148, label %if.then.150, label %if.else.151

if.then.150:                                      ; preds = %if.else.146
  store i32 0, i32* %I, align 4
  br label %if.end.182

if.else.151:                                      ; preds = %if.else.146
  %128 = load i64, i64* %X, align 8
  %cmp152 = icmp ugt i64 %128, 65535
  br i1 %cmp152, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %if.else.151
  store i32 31, i32* %I, align 4
  br label %if.end.181

if.else.155:                                      ; preds = %if.else.151
  %129 = load i64, i64* %X, align 8
  %conv156 = trunc i64 %129 to i32
  store i32 %conv156, i32* %Y, align 4
  %130 = load i32, i32* %Y, align 4
  %sub157 = sub i32 %130, 256
  %shr158 = lshr i32 %sub157, 16
  %and159 = and i32 %shr158, 8
  store i32 %and159, i32* %N, align 4
  %131 = load i32, i32* %N, align 4
  %132 = load i32, i32* %Y, align 4
  %shl160 = shl i32 %132, %131
  store i32 %shl160, i32* %Y, align 4
  %sub161 = sub i32 %shl160, 4096
  %shr162 = lshr i32 %sub161, 16
  %and163 = and i32 %shr162, 4
  store i32 %and163, i32* %K, align 4
  %133 = load i32, i32* %K, align 4
  %134 = load i32, i32* %N, align 4
  %add164 = add i32 %134, %133
  store i32 %add164, i32* %N, align 4
  %135 = load i32, i32* %K, align 4
  %136 = load i32, i32* %Y, align 4
  %shl165 = shl i32 %136, %135
  store i32 %shl165, i32* %Y, align 4
  %sub166 = sub i32 %shl165, 16384
  %shr167 = lshr i32 %sub166, 16
  %and168 = and i32 %shr167, 2
  store i32 %and168, i32* %K, align 4
  %137 = load i32, i32* %N, align 4
  %add169 = add i32 %137, %and168
  store i32 %add169, i32* %N, align 4
  %138 = load i32, i32* %N, align 4
  %sub170 = sub i32 14, %138
  %139 = load i32, i32* %K, align 4
  %140 = load i32, i32* %Y, align 4
  %shl171 = shl i32 %140, %139
  store i32 %shl171, i32* %Y, align 4
  %shr172 = lshr i32 %shl171, 15
  %add173 = add i32 %sub170, %shr172
  store i32 %add173, i32* %K, align 4
  %141 = load i32, i32* %K, align 4
  %shl174 = shl i32 %141, 1
  %conv175 = zext i32 %shl174 to i64
  %142 = load i64, i64* %psize, align 8
  %143 = load i32, i32* %K, align 4
  %add176 = add i32 %143, 7
  %sh_prom = zext i32 %add176 to i64
  %shr177 = lshr i64 %142, %sh_prom
  %and178 = and i64 %shr177, 1
  %add179 = add i64 %conv175, %and178
  %conv180 = trunc i64 %add179 to i32
  store i32 %conv180, i32* %I, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.155, %if.then.154
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.then.150
  %144 = load i32, i32* %I, align 4
  %idxprom183 = zext i32 %144 to i64
  %145 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treebins184 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %145, i32 0, i32 10
  %arrayidx185 = getelementptr [32 x %struct.malloc_tree_chunk*], [32 x %struct.malloc_tree_chunk*]* %treebins184, i32 0, i64 %idxprom183
  store %struct.malloc_tree_chunk** %arrayidx185, %struct.malloc_tree_chunk*** %H147, align 8
  %146 = load i32, i32* %I, align 4
  %147 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %index186 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %147, i32 0, i32 6
  store i32 %146, i32* %index186, align 4
  %148 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %child187 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %148, i32 0, i32 4
  %arrayidx188 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child187, i32 0, i64 1
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %arrayidx188, align 8
  %149 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %child189 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %149, i32 0, i32 4
  %arrayidx190 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child189, i32 0, i64 0
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %arrayidx190, align 8
  %150 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treemap191 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %150, i32 0, i32 1
  %151 = load i32, i32* %treemap191, align 4
  %152 = load i32, i32* %I, align 4
  %shl192 = shl i32 1, %152
  %and193 = and i32 %151, %shl192
  %tobool194 = icmp ne i32 %and193, 0
  br i1 %tobool194, label %if.else.201, label %if.then.195

if.then.195:                                      ; preds = %if.end.182
  %153 = load i32, i32* %I, align 4
  %shl196 = shl i32 1, %153
  %154 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %treemap197 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %154, i32 0, i32 1
  %155 = load i32, i32* %treemap197, align 4
  %or = or i32 %155, %shl196
  store i32 %or, i32* %treemap197, align 4
  %156 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %157 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H147, align 8
  store %struct.malloc_tree_chunk* %156, %struct.malloc_tree_chunk** %157, align 8
  %158 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H147, align 8
  %159 = bitcast %struct.malloc_tree_chunk** %158 to %struct.malloc_tree_chunk*
  %160 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %parent198 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %160, i32 0, i32 5
  store %struct.malloc_tree_chunk* %159, %struct.malloc_tree_chunk** %parent198, align 8
  %161 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %162 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %bk199 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %162, i32 0, i32 3
  store %struct.malloc_tree_chunk* %161, %struct.malloc_tree_chunk** %bk199, align 8
  %163 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %fd200 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %163, i32 0, i32 2
  store %struct.malloc_tree_chunk* %161, %struct.malloc_tree_chunk** %fd200, align 8
  br label %if.end.259

if.else.201:                                      ; preds = %if.end.182
  %164 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %H147, align 8
  %165 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %164, align 8
  store %struct.malloc_tree_chunk* %165, %struct.malloc_tree_chunk** %T, align 8
  %166 = load i64, i64* %psize, align 8
  %167 = load i32, i32* %I, align 4
  %cmp203 = icmp eq i32 %167, 31
  br i1 %cmp203, label %cond.true.205, label %cond.false.206

cond.true.205:                                    ; preds = %if.else.201
  br label %cond.end.212

cond.false.206:                                   ; preds = %if.else.201
  %168 = load i32, i32* %I, align 4
  %shr207 = lshr i32 %168, 1
  %add208 = add i32 %shr207, 8
  %sub209 = sub i32 %add208, 2
  %conv210 = zext i32 %sub209 to i64
  %sub211 = sub i64 63, %conv210
  br label %cond.end.212

cond.end.212:                                     ; preds = %cond.false.206, %cond.true.205
  %cond213 = phi i64 [ 0, %cond.true.205 ], [ %sub211, %cond.false.206 ]
  %shl214 = shl i64 %166, %cond213
  store i64 %shl214, i64* %K202, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.258, %cond.end.212
  %169 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %head215 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %169, i32 0, i32 1
  %170 = load i64, i64* %head215, align 8
  %and216 = and i64 %170, -4
  %171 = load i64, i64* %psize, align 8
  %cmp217 = icmp ne i64 %and216, %171
  br i1 %cmp217, label %if.then.219, label %if.else.240

if.then.219:                                      ; preds = %for.cond
  %172 = load i64, i64* %K202, align 8
  %shr220 = lshr i64 %172, 63
  %and221 = and i64 %shr220, 1
  %173 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %child222 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %173, i32 0, i32 4
  %arrayidx223 = getelementptr [2 x %struct.malloc_tree_chunk*], [2 x %struct.malloc_tree_chunk*]* %child222, i32 0, i64 %and221
  store %struct.malloc_tree_chunk** %arrayidx223, %struct.malloc_tree_chunk*** %C, align 8
  %174 = load i64, i64* %K202, align 8
  %shl224 = shl i64 %174, 1
  store i64 %shl224, i64* %K202, align 8
  %175 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %C, align 8
  %176 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %175, align 8
  %cmp225 = icmp ne %struct.malloc_tree_chunk* %176, null
  br i1 %cmp225, label %if.then.227, label %if.else.228

if.then.227:                                      ; preds = %if.then.219
  %177 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %C, align 8
  %178 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %177, align 8
  store %struct.malloc_tree_chunk* %178, %struct.malloc_tree_chunk** %T, align 8
  br label %if.end.239

if.else.228:                                      ; preds = %if.then.219
  %179 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %C, align 8
  %180 = bitcast %struct.malloc_tree_chunk** %179 to i8*
  %181 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr229 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %181, i32 0, i32 4
  %182 = load i8*, i8** %least_addr229, align 8
  %cmp230 = icmp uge i8* %180, %182
  %conv231 = zext i1 %cmp230 to i32
  %conv232 = sext i32 %conv231 to i64
  %tobool233 = icmp ne i64 %conv232, 0
  br i1 %tobool233, label %if.then.234, label %if.else.238

if.then.234:                                      ; preds = %if.else.228
  %183 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %184 = load %struct.malloc_tree_chunk**, %struct.malloc_tree_chunk*** %C, align 8
  store %struct.malloc_tree_chunk* %183, %struct.malloc_tree_chunk** %184, align 8
  %185 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %186 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %parent235 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %186, i32 0, i32 5
  store %struct.malloc_tree_chunk* %185, %struct.malloc_tree_chunk** %parent235, align 8
  %187 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %188 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %bk236 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %188, i32 0, i32 3
  store %struct.malloc_tree_chunk* %187, %struct.malloc_tree_chunk** %bk236, align 8
  %189 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %fd237 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %189, i32 0, i32 2
  store %struct.malloc_tree_chunk* %187, %struct.malloc_tree_chunk** %fd237, align 8
  br label %for.end

if.else.238:                                      ; preds = %if.else.228
  call void @abort() #8
  unreachable

if.end.239:                                       ; preds = %if.then.227
  br label %if.end.258

if.else.240:                                      ; preds = %for.cond
  %190 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %fd242 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %190, i32 0, i32 2
  %191 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %fd242, align 8
  store %struct.malloc_tree_chunk* %191, %struct.malloc_tree_chunk** %F241, align 8
  %192 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %193 = bitcast %struct.malloc_tree_chunk* %192 to i8*
  %194 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr243 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %194, i32 0, i32 4
  %195 = load i8*, i8** %least_addr243, align 8
  %cmp244 = icmp uge i8* %193, %195
  br i1 %cmp244, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else.240
  %196 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F241, align 8
  %197 = bitcast %struct.malloc_tree_chunk* %196 to i8*
  %198 = load %struct.malloc_state*, %struct.malloc_state** %m.addr, align 8
  %least_addr246 = getelementptr inbounds %struct.malloc_state, %struct.malloc_state* %198, i32 0, i32 4
  %199 = load i8*, i8** %least_addr246, align 8
  %cmp247 = icmp uge i8* %197, %199
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else.240
  %200 = phi i1 [ false, %if.else.240 ], [ %cmp247, %land.rhs ]
  %land.ext = zext i1 %200 to i32
  %conv249 = sext i32 %land.ext to i64
  %tobool250 = icmp ne i64 %conv249, 0
  br i1 %tobool250, label %if.then.251, label %if.else.257

if.then.251:                                      ; preds = %land.end
  %201 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %202 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F241, align 8
  %bk252 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %202, i32 0, i32 3
  store %struct.malloc_tree_chunk* %201, %struct.malloc_tree_chunk** %bk252, align 8
  %203 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %fd253 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %203, i32 0, i32 2
  store %struct.malloc_tree_chunk* %201, %struct.malloc_tree_chunk** %fd253, align 8
  %204 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %F241, align 8
  %205 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %fd254 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %205, i32 0, i32 2
  store %struct.malloc_tree_chunk* %204, %struct.malloc_tree_chunk** %fd254, align 8
  %206 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %T, align 8
  %207 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %bk255 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %207, i32 0, i32 3
  store %struct.malloc_tree_chunk* %206, %struct.malloc_tree_chunk** %bk255, align 8
  %208 = load %struct.malloc_tree_chunk*, %struct.malloc_tree_chunk** %tp, align 8
  %parent256 = getelementptr inbounds %struct.malloc_tree_chunk, %struct.malloc_tree_chunk* %208, i32 0, i32 5
  store %struct.malloc_tree_chunk* null, %struct.malloc_tree_chunk** %parent256, align 8
  br label %for.end

if.else.257:                                      ; preds = %land.end
  call void @abort() #8
  unreachable

if.end.258:                                       ; preds = %if.end.239
  br label %for.cond

for.end:                                          ; preds = %if.then.251, %if.then.234
  br label %if.end.259

if.end.259:                                       ; preds = %for.end, %if.then.195
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.259, %if.then.143
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %land.lhs.true, %cond.end
  %209 = load %struct.malloc_segment*, %struct.malloc_segment** %sp, align 8
  store %struct.malloc_segment* %209, %struct.malloc_segment** %pred, align 8
  %210 = load %struct.malloc_segment*, %struct.malloc_segment** %next3, align 8
  store %struct.malloc_segment* %210, %struct.malloc_segment** %sp, align 8
  br label %while.cond

while.end.262:                                    ; preds = %while.cond
  %211 = load i64, i64* %released, align 8
  ret i64 %211
}

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
