; ModuleID = './src/dired.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%union.specbinding = type { %struct.anon.3 }
%struct.anon.3 = type { i8, i64, i64, i64 }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon, i16, i16, i8*, i8*, i8* }
%struct.vectorlike_header = type { i64 }
%union.anon = type { i64 ()* }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.re_pattern_buffer = type { i8*, i64, i64, i64, i8*, i64, i64, i16, i32 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.re_registers = type { i32, i64*, i64* }
%struct.Lisp_String = type { i64, i64, %struct.interval*, i8* }
%struct.interval = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.Lisp_Cons = type { i64, %union.anon.5 }
%union.anon.5 = type { i64 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }

@re_match_object = external global i64, align 8
@immediate_quit = external global i8, align 1
@globals = external global %struct.emacs_globals, align 8
@pending_signals = external global i8, align 1
@empty_unibyte_string = external global i64, align 8
@specpdl = external global %union.specbinding*, align 8
@specpdl_ptr = external global %union.specbinding*, align 8
@Ssystem_users = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon { i64 ()* @Fsystem_users }, i16 0, i16 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null }, align 8
@Ssystem_groups = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon { i64 ()* @Fsystem_groups }, i16 0, i16 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null }, align 8
@syms_of_dired.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str = private unnamed_addr constant [30 x i8] c"completion-ignored-extensions\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Opening directory\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Reading directory\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@Vascii_canon_table = external global i64, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"directory-files\00", align 1
@Sdirectory_files = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64)* @Fdirectory_files }, i16 1, i16 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"directory-files-and-attributes\00", align 1
@Sdirectory_files_and_attributes = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64, i64, i64)* } { i64 (i64, i64, i64, i64, i64)* @Fdirectory_files_and_attributes }, i16 1, i16 5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"file-name-completion\00", align 1
@Sfile_name_completion = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Ffile_name_completion }, i16 2, i16 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"file-name-all-completions\00", align 1
@Sfile_name_all_completions = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Ffile_name_all_completions }, i16 2, i16 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"file-attributes\00", align 1
@Sfile_attributes = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Ffile_attributes }, i16 1, i16 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.10 = private unnamed_addr constant [22 x i8] c"file-attributes-lessp\00", align 1
@Sfile_attributes_lessp = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Ffile_attributes_lessp }, i16 2, i16 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"system-users\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"system-groups\00", align 1

; Function Attrs: nounwind uwtable
define i64 @directory_files_internal(i64 %directory, i64 %full, i64 %match, i64 %nosort, i1 zeroext %attrs, i64 %id_format) #0 {
entry:
  %directory.addr = alloca i64, align 8
  %full.addr = alloca i64, align 8
  %match.addr = alloca i64, align 8
  %nosort.addr = alloca i64, align 8
  %attrs.addr = alloca i8, align 1
  %id_format.addr = alloca i64, align 8
  %directory_nbytes = alloca i64, align 8
  %list = alloca i64, align 8
  %dirfilename = alloca i64, align 8
  %encoded_directory = alloca i64, align 8
  %bufp = alloca %struct.re_pattern_buffer*, align 8
  %needsep = alloca i8, align 1
  %count = alloca i64, align 8
  %directory_volatile = alloca i64, align 8
  %fd = alloca i32, align 4
  %d = alloca %struct.__dirstream*, align 8
  %dp = alloca %struct.dirent*, align 8
  %len = alloca i64, align 8
  %name = alloca i64, align 8
  %finalname = alloca i64, align 8
  %wanted = alloca i8, align 1
  %fullname = alloca i64, align 8
  %nbytes = alloca i64, align 8
  %nchars = alloca i64, align 8
  %fileattrs = alloca i64, align 8
  store i64 %directory, i64* %directory.addr, align 8
  store i64 %full, i64* %full.addr, align 8
  store i64 %match, i64* %match.addr, align 8
  store i64 %nosort, i64* %nosort.addr, align 8
  %frombool = zext i1 %attrs to i8
  store i8 %frombool, i8* %attrs.addr, align 1
  store i64 %id_format, i64* %id_format.addr, align 8
  store %struct.re_pattern_buffer* null, %struct.re_pattern_buffer** %bufp, align 8
  store i8 0, i8* %needsep, align 1
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %0 = load i64, i64* %directory.addr, align 8
  store volatile i64 %0, i64* %directory_volatile, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %dirfilename, align 8
  store i64 %call1, i64* %encoded_directory, align 8
  store i64 %call1, i64* %list, align 8
  %1 = load i64, i64* %directory.addr, align 8
  %call2 = call i64 @Fdirectory_file_name(i64 %1)
  store i64 %call2, i64* %dirfilename, align 8
  %2 = load i64, i64* %match.addr, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %match.addr, align 8
  call void @CHECK_STRING(i64 %3)
  %4 = load i64, i64* %match.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %call5 = call %struct.re_pattern_buffer* @compile_pattern(i64 %4, %struct.re_registers* null, i64 %call4, i1 zeroext false, i1 zeroext true)
  store %struct.re_pattern_buffer* %call5, %struct.re_pattern_buffer** %bufp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* %dirfilename, align 8
  %call6 = call i64 @encode_file_name(i64 %5)
  store i64 %call6, i64* %dirfilename, align 8
  %6 = load i64, i64* %directory.addr, align 8
  %call7 = call i64 @encode_file_name(i64 %6)
  store i64 %call7, i64* %encoded_directory, align 8
  %7 = load i64, i64* %dirfilename, align 8
  %call8 = call %struct.__dirstream* @open_directory(i64 %7, i32* %fd)
  store %struct.__dirstream* %call8, %struct.__dirstream** %d, align 8
  %8 = load %struct.__dirstream*, %struct.__dirstream** %d, align 8
  %9 = bitcast %struct.__dirstream* %8 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @directory_files_internal_unwind, i8* %9)
  %10 = load i64, i64* %directory.addr, align 8
  %call9 = call i64 @SBYTES(i64 %10)
  store i64 %call9, i64* %directory_nbytes, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call10, i64* @re_match_object, align 8
  %11 = load i64, i64* %directory_nbytes, align 8
  %cmp11 = icmp eq i64 %11, 0
  br i1 %cmp11, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %12 = load i64, i64* %directory.addr, align 8
  %13 = load i64, i64* %directory_nbytes, align 8
  %sub = sub nsw i64 %13, 1
  %call12 = call zeroext i8 @SREF(i64 %12, i64 %sub)
  %conv = zext i8 %call12 to i32
  %cmp13 = icmp eq i32 %conv, 47
  br i1 %cmp13, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %lor.lhs.false, %if.end
  store i8 1, i8* %needsep, align 1
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %lor.lhs.false
  br label %for.cond

for.cond:                                         ; preds = %if.end.92, %if.end.16
  %14 = load %struct.__dirstream*, %struct.__dirstream** %d, align 8
  %15 = load i64, i64* %directory.addr, align 8
  %call17 = call %struct.dirent* @read_dirent(%struct.__dirstream* %14, i64 %15)
  store %struct.dirent* %call17, %struct.dirent** %dp, align 8
  %tobool = icmp ne %struct.dirent* %call17, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %call18 = call i64 @dirent_namelen(%struct.dirent* %16)
  store i64 %call18, i64* %len, align 8
  %17 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %17, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %18 = load i64, i64* %len, align 8
  %call19 = call i64 @make_unibyte_string(i8* %arraydecay, i64 %18)
  store i64 %call19, i64* %name, align 8
  %19 = load i64, i64* %name, align 8
  store i64 %19, i64* %finalname, align 8
  %20 = load i64, i64* %name, align 8
  %call20 = call i64 @decode_file_name(i64 %20)
  store i64 %call20, i64* %name, align 8
  %21 = load i64, i64* %name, align 8
  %call21 = call i64 @SBYTES(i64 %21)
  store i64 %call21, i64* %len, align 8
  store i8 1, i8* @immediate_quit, align 1
  br label %do.body

do.body:                                          ; preds = %for.body
  %22 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp23 = icmp eq i64 %22, %call22
  br i1 %cmp23, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %23 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp26 = icmp eq i64 %23, %call25
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %land.lhs.true
  call void @process_quit_flag()
  br label %if.end.32

if.else:                                          ; preds = %land.lhs.true, %do.body
  %24 = load volatile i8, i8* @pending_signals, align 1
  %tobool29 = trunc i8 %24 to i1
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.else
  call void @process_pending_signals()
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.else
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.28
  br label %do.end

do.end:                                           ; preds = %if.end.32
  %25 = load i64, i64* %match.addr, align 8
  %call33 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp34 = icmp eq i64 %25, %call33
  br i1 %cmp34, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.end
  %26 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %bufp, align 8
  %27 = load i64, i64* %name, align 8
  %call36 = call i8* @SSDATA(i64 %27)
  %28 = load i64, i64* %len, align 8
  %29 = load i64, i64* %len, align 8
  %call37 = call i64 @re_search(%struct.re_pattern_buffer* %26, i8* %call36, i64 %28, i64 0, i64 %29, %struct.re_registers* null)
  %cmp38 = icmp sge i64 %call37, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.end
  %30 = phi i1 [ true, %do.end ], [ %cmp38, %lor.rhs ]
  %frombool40 = zext i1 %30 to i8
  store i8 %frombool40, i8* %wanted, align 1
  store i8 0, i8* @immediate_quit, align 1
  %31 = load i8, i8* %wanted, align 1
  %tobool41 = trunc i8 %31 to i1
  br i1 %tobool41, label %if.then.42, label %if.end.92

if.then.42:                                       ; preds = %lor.end
  %32 = load i64, i64* %full.addr, align 8
  %call43 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp44 = icmp eq i64 %32, %call43
  br i1 %cmp44, label %if.else.80, label %if.then.46

if.then.46:                                       ; preds = %if.then.42
  %33 = load i64, i64* %len, align 8
  %34 = load i64, i64* %directory_nbytes, align 8
  %add = add nsw i64 %33, %34
  %35 = load i8, i8* %needsep, align 1
  %tobool47 = trunc i8 %35 to i1
  %conv48 = zext i1 %tobool47 to i64
  %add49 = add nsw i64 %add, %conv48
  store i64 %add49, i64* %nbytes, align 8
  %36 = load i64, i64* %nbytes, align 8
  %37 = load i64, i64* %nbytes, align 8
  %call50 = call i64 @make_uninit_multibyte_string(i64 %36, i64 %37)
  store i64 %call50, i64* %fullname, align 8
  %38 = load i64, i64* %fullname, align 8
  %call51 = call i8* @SDATA(i64 %38)
  %39 = load i64, i64* %directory.addr, align 8
  %call52 = call i8* @SDATA(i64 %39)
  %40 = load i64, i64* %directory_nbytes, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call51, i8* %call52, i64 %40, i32 1, i1 false)
  %41 = load i8, i8* %needsep, align 1
  %tobool53 = trunc i8 %41 to i1
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.46
  %42 = load i64, i64* %fullname, align 8
  %43 = load i64, i64* %directory_nbytes, align 8
  call void @SSET(i64 %42, i64 %43, i8 zeroext 47)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.then.46
  %44 = load i64, i64* %fullname, align 8
  %call56 = call i8* @SDATA(i64 %44)
  %45 = load i64, i64* %directory_nbytes, align 8
  %add.ptr = getelementptr inbounds i8, i8* %call56, i64 %45
  %46 = load i8, i8* %needsep, align 1
  %tobool57 = trunc i8 %46 to i1
  %conv58 = zext i1 %tobool57 to i32
  %idx.ext = sext i32 %conv58 to i64
  %add.ptr59 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  %47 = load i64, i64* %name, align 8
  %call60 = call i8* @SDATA(i64 %47)
  %48 = load i64, i64* %len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr59, i8* %call60, i64 %48, i32 1, i1 false)
  %49 = load i64, i64* %fullname, align 8
  %call61 = call i8* @SDATA(i64 %49)
  %50 = load i64, i64* %nbytes, align 8
  %call62 = call i64 @multibyte_chars_in_text(i8* %call61, i64 %50)
  store i64 %call62, i64* %nchars, align 8
  %51 = load i64, i64* %nchars, align 8
  %52 = load i64, i64* %nbytes, align 8
  %cmp63 = icmp sgt i64 %51, %52
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.55
  call void @emacs_abort() #7
  unreachable

if.end.66:                                        ; preds = %if.end.55
  %53 = load i64, i64* %fullname, align 8
  %54 = load i64, i64* %nchars, align 8
  call void @STRING_SET_CHARS(i64 %53, i64 %54)
  %55 = load i64, i64* %nchars, align 8
  %56 = load i64, i64* %nbytes, align 8
  %cmp67 = icmp eq i64 %55, %56
  br i1 %cmp67, label %if.then.69, label %if.end.79

if.then.69:                                       ; preds = %if.end.66
  br label %do.body.70

do.body.70:                                       ; preds = %if.then.69
  %57 = load i64, i64* %fullname, align 8
  %call71 = call %struct.Lisp_String* @XSTRING(i64 %57)
  %size = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %call71, i32 0, i32 0
  %58 = load i64, i64* %size, align 8
  %cmp72 = icmp eq i64 %58, 0
  br i1 %cmp72, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %do.body.70
  %59 = load i64, i64* @empty_unibyte_string, align 8
  store i64 %59, i64* %fullname, align 8
  br label %if.end.77

if.else.75:                                       ; preds = %do.body.70
  %60 = load i64, i64* %fullname, align 8
  %call76 = call %struct.Lisp_String* @XSTRING(i64 %60)
  %size_byte = getelementptr inbounds %struct.Lisp_String, %struct.Lisp_String* %call76, i32 0, i32 1
  store i64 -1, i64* %size_byte, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.75, %if.then.74
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  br label %if.end.79

if.end.79:                                        ; preds = %do.end.78, %if.end.66
  %61 = load i64, i64* %fullname, align 8
  store i64 %61, i64* %finalname, align 8
  br label %if.end.81

if.else.80:                                       ; preds = %if.then.42
  %62 = load i64, i64* %name, align 8
  store i64 %62, i64* %finalname, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.80, %if.end.79
  %63 = load i8, i8* %attrs.addr, align 1
  %tobool82 = trunc i8 %63 to i1
  br i1 %tobool82, label %if.then.83, label %if.else.89

if.then.83:                                       ; preds = %if.end.81
  %64 = load i32, i32* %fd, align 4
  %65 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name84 = getelementptr inbounds %struct.dirent, %struct.dirent* %65, i32 0, i32 4
  %arraydecay85 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name84, i32 0, i32 0
  %66 = load i64, i64* %id_format.addr, align 8
  %call86 = call i64 @file_attributes(i32 %64, i8* %arraydecay85, i64 %66)
  store i64 %call86, i64* %fileattrs, align 8
  %67 = load i64, i64* %finalname, align 8
  %68 = load i64, i64* %fileattrs, align 8
  %call87 = call i64 @Fcons(i64 %67, i64 %68)
  %69 = load i64, i64* %list, align 8
  %call88 = call i64 @Fcons(i64 %call87, i64 %69)
  store i64 %call88, i64* %list, align 8
  br label %if.end.91

if.else.89:                                       ; preds = %if.end.81
  %70 = load i64, i64* %finalname, align 8
  %71 = load i64, i64* %list, align 8
  %call90 = call i64 @Fcons(i64 %70, i64 %71)
  store i64 %call90, i64* %list, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.89, %if.then.83
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %lor.end
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @block_input()
  %72 = load %struct.__dirstream*, %struct.__dirstream** %d, align 8
  %call93 = call i32 @closedir(%struct.__dirstream* %72)
  call void @unblock_input()
  %73 = load %union.specbinding*, %union.specbinding** @specpdl, align 8
  %74 = load i64, i64* %count, align 8
  %add.ptr94 = getelementptr inbounds %union.specbinding, %union.specbinding* %73, i64 %74
  store %union.specbinding* %add.ptr94, %union.specbinding** @specpdl_ptr, align 8
  %75 = load i64, i64* %nosort.addr, align 8
  %call95 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp96 = icmp eq i64 %75, %call95
  br i1 %cmp96, label %if.then.98, label %if.end.105

if.then.98:                                       ; preds = %for.end
  %76 = load i64, i64* %list, align 8
  %call99 = call i64 @Fnreverse(i64 %76)
  %77 = load i8, i8* %attrs.addr, align 1
  %tobool100 = trunc i8 %77 to i1
  br i1 %tobool100, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.98
  %call102 = call i64 @builtin_lisp_symbol(i32 408)
  br label %cond.end

cond.false:                                       ; preds = %if.then.98
  %call103 = call i64 @builtin_lisp_symbol(i32 884)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call102, %cond.true ], [ %call103, %cond.false ]
  %call104 = call i64 @Fsort(i64 %call99, i64 %cond)
  store i64 %call104, i64* %list, align 8
  br label %if.end.105

if.end.105:                                       ; preds = %cond.end, %for.end
  %78 = load volatile i64, i64* %directory_volatile, align 8
  %79 = load i64, i64* %list, align 8
  ret i64 %79
}

declare i64 @SPECPDL_INDEX() #1

declare i64 @builtin_lisp_symbol(i32) #1

declare i64 @Fdirectory_file_name(i64) #1

declare void @CHECK_STRING(i64) #1

declare %struct.re_pattern_buffer* @compile_pattern(i64, %struct.re_registers*, i64, i1 zeroext, i1 zeroext) #1

declare i64 @encode_file_name(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct.__dirstream* @open_directory(i64 %dirname, i32* %fdp) #0 {
entry:
  %dirname.addr = alloca i64, align 8
  %fdp.addr = alloca i32*, align 8
  %name = alloca i8*, align 8
  %d = alloca %struct.__dirstream*, align 8
  %fd = alloca i32, align 4
  %opendir_errno = alloca i32, align 4
  store i64 %dirname, i64* %dirname.addr, align 8
  store i32* %fdp, i32** %fdp.addr, align 8
  %0 = load i64, i64* %dirname.addr, align 8
  %call = call i8* @SSDATA(i64 %0)
  store i8* %call, i8** %name, align 8
  call void @block_input()
  %1 = load i8*, i8** %name, align 8
  %call1 = call i32 @emacs_open(i8* %1, i32 65536, i32 0)
  store i32 %call1, i32* %fd, align 4
  %2 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i32* @__errno_location() #8
  %3 = load i32, i32* %call2, align 4
  store i32 %3, i32* %opendir_errno, align 4
  store %struct.__dirstream* null, %struct.__dirstream** %d, align 8
  br label %if.end.7

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %fd, align 4
  %call3 = call %struct.__dirstream* @fdopendir(i32 %4)
  store %struct.__dirstream* %call3, %struct.__dirstream** %d, align 8
  %call4 = call i32* @__errno_location() #8
  %5 = load i32, i32* %call4, align 4
  store i32 %5, i32* %opendir_errno, align 4
  %6 = load %struct.__dirstream*, %struct.__dirstream** %d, align 8
  %tobool = icmp ne %struct.__dirstream* %6, null
  br i1 %tobool, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.else
  %7 = load i32, i32* %fd, align 4
  %call6 = call i32 @emacs_close(i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  call void @unblock_input()
  %8 = load %struct.__dirstream*, %struct.__dirstream** %d, align 8
  %tobool8 = icmp ne %struct.__dirstream* %8, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.7
  %9 = load i64, i64* %dirname.addr, align 8
  %10 = load i32, i32* %opendir_errno, align 4
  call void @report_file_errno(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i64 %9, i32 %10) #7
  unreachable

if.end.10:                                        ; preds = %if.end.7
  %11 = load i32, i32* %fd, align 4
  %12 = load i32*, i32** %fdp.addr, align 8
  store i32 %11, i32* %12, align 4
  %13 = load %struct.__dirstream*, %struct.__dirstream** %d, align 8
  ret %struct.__dirstream* %13
}

declare void @record_unwind_protect_ptr(void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @directory_files_internal_unwind(i8* %dh) #0 {
entry:
  %dh.addr = alloca i8*, align 8
  %d = alloca %struct.__dirstream*, align 8
  store i8* %dh, i8** %dh.addr, align 8
  %0 = load i8*, i8** %dh.addr, align 8
  %1 = bitcast i8* %0 to %struct.__dirstream*
  store %struct.__dirstream* %1, %struct.__dirstream** %d, align 8
  call void @block_input()
  %2 = load %struct.__dirstream*, %struct.__dirstream** %d, align 8
  %call = call i32 @closedir(%struct.__dirstream* %2)
  call void @unblock_input()
  ret void
}

declare i64 @SBYTES(i64) #1

declare zeroext i8 @SREF(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct.dirent* @read_dirent(%struct.__dirstream* %dir, i64 %dirname) #0 {
entry:
  %dir.addr = alloca %struct.__dirstream*, align 8
  %dirname.addr = alloca i64, align 8
  %dp = alloca %struct.dirent*, align 8
  store %struct.__dirstream* %dir, %struct.__dirstream** %dir.addr, align 8
  store i64 %dirname, i64* %dirname.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %do.end
  %call = call i32* @__errno_location() #8
  store i32 0, i32* %call, align 4
  %0 = load %struct.__dirstream*, %struct.__dirstream** %dir.addr, align 8
  %call1 = call %struct.dirent* @readdir(%struct.__dirstream* %0)
  store %struct.dirent* %call1, %struct.dirent** %dp, align 8
  %1 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %tobool = icmp ne %struct.dirent* %1, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %call2 = call i32* @__errno_location() #8
  %2 = load i32, i32* %call2, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %3 = load %struct.dirent*, %struct.dirent** %dp, align 8
  ret %struct.dirent* %3

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32* @__errno_location() #8
  %4 = load i32, i32* %call3, align 4
  %cmp4 = icmp eq i32 %4, 11
  br i1 %cmp4, label %if.end.9, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %if.end
  %call6 = call i32* @__errno_location() #8
  %5 = load i32, i32* %call6, align 4
  %cmp7 = icmp eq i32 %5, 4
  br i1 %cmp7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %lor.lhs.false.5
  %6 = load i64, i64* %dirname.addr, align 8
  call void @report_file_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i64 %6) #7
  unreachable

if.end.9:                                         ; preds = %lor.lhs.false.5, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %7 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp11 = icmp eq i64 %7, %call10
  br i1 %cmp11, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %8 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp13 = icmp eq i64 %8, %call12
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %land.lhs.true
  call void @process_quit_flag()
  br label %if.end.18

if.else:                                          ; preds = %land.lhs.true, %do.body
  %9 = load volatile i8, i8* @pending_signals, align 1
  %tobool15 = trunc i8 %9 to i1
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else
  call void @process_pending_signals()
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.18
  br label %while.body
}

; Function Attrs: nounwind uwtable
define internal i64 @dirent_namelen(%struct.dirent* %dp) #0 {
entry:
  %dp.addr = alloca %struct.dirent*, align 8
  store %struct.dirent* %dp, %struct.dirent** %dp.addr, align 8
  %0 = load %struct.dirent*, %struct.dirent** %dp.addr, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %0, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay) #9
  ret i64 %call
}

declare i64 @make_unibyte_string(i8*, i64) #1

declare i64 @decode_file_name(i64) #1

declare void @process_quit_flag() #1

declare void @process_pending_signals() #1

declare i64 @re_search(%struct.re_pattern_buffer*, i8*, i64, i64, i64, %struct.re_registers*) #1

declare i8* @SSDATA(i64) #1

declare i64 @make_uninit_multibyte_string(i64, i64) #1

declare i8* @SDATA(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @SSET(i64, i64, i8 zeroext) #1

declare i64 @multibyte_chars_in_text(i8*, i64) #1

; Function Attrs: noreturn
declare void @emacs_abort() #3

declare void @STRING_SET_CHARS(i64, i64) #1

declare %struct.Lisp_String* @XSTRING(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @file_attributes(i32 %fd, i8* %name, i64 %id_format) #0 {
entry:
  %retval = alloca i64, align 8
  %fd.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %id_format.addr = alloca i64, align 8
  %s = alloca %struct.stat, align 8
  %lstat_result = alloca i32, align 4
  %modes = alloca [12 x i8], align 1
  %uname = alloca i8*, align 8
  %gname = alloca i8*, align 8
  %.compoundliteral = alloca [12 x i64], align 8
  %agg.tmp = alloca %struct.timespec, align 8
  %agg.tmp98 = alloca %struct.timespec, align 8
  %agg.tmp102 = alloca %struct.timespec, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i64 %id_format, i64* %id_format.addr, align 8
  store i8* null, i8** %uname, align 8
  store i8* null, i8** %gname, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i32 @fstatat(i32 %0, i8* %1, %struct.stat* %s, i32 256) #2
  store i32 %call, i32* %lstat_result, align 4
  %2 = load i32, i32* %lstat_result, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %id_format.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp3 = icmp eq i64 %3, %call2
  br i1 %cmp3, label %if.end.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %id_format.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 557)
  %cmp5 = icmp eq i64 %4, %call4
  br i1 %cmp5, label %if.end.9, label %if.then.6

if.then.6:                                        ; preds = %lor.lhs.false
  call void @block_input()
  %call7 = call i8* @stat_uname(%struct.stat* %s)
  store i8* %call7, i8** %uname, align 8
  %call8 = call i8* @stat_gname(%struct.stat* %s)
  store i8* %call8, i8** %gname, align 8
  call void @unblock_input()
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %lor.lhs.false, %if.end
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %modes, i32 0, i32 0
  call void @filemodestring(%struct.stat* %s, i8* %arraydecay)
  %arrayinit.begin = getelementptr inbounds [12 x i64], [12 x i64]* %.compoundliteral, i64 0, i64 0
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 3
  %5 = load i32, i32* %st_mode, align 4
  %and = and i32 %5, 61440
  %cmp10 = icmp eq i32 %and, 40960
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %6 = load i32, i32* %fd.addr, align 4
  %7 = load i8*, i8** %name.addr, align 8
  %call11 = call i64 @emacs_readlinkat(i32 %6, i8* %7)
  br label %cond.end.19

cond.false:                                       ; preds = %if.end.9
  %st_mode12 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 3
  %8 = load i32, i32* %st_mode12, align 4
  %and13 = and i32 %8, 61440
  %cmp14 = icmp eq i32 %and13, 16384
  br i1 %cmp14, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %cond.false
  %call16 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.false.17:                                    ; preds = %cond.false
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.17, %cond.true.15
  %cond = phi i64 [ %call16, %cond.true.15 ], [ %call18, %cond.false.17 ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end, %cond.true
  %cond20 = phi i64 [ %call11, %cond.true ], [ %cond, %cond.end ]
  store i64 %cond20, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %st_nlink = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 2
  %9 = load i64, i64* %st_nlink, align 8
  %shl = shl i64 %9, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %arrayinit.element
  %arrayinit.element21 = getelementptr inbounds i64, i64* %arrayinit.element, i64 1
  %10 = load i8*, i8** %uname, align 8
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %cond.true.22, label %cond.false.32

cond.true.22:                                     ; preds = %cond.end.19
  %11 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 168), align 8
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp24 = icmp eq i64 %11, %call23
  br i1 %cmp24, label %cond.false.28, label %cond.true.25

cond.true.25:                                     ; preds = %cond.true.22
  %12 = load i8*, i8** %uname, align 8
  %call26 = call i64 @build_unibyte_string(i8* %12)
  %13 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 168), align 8
  %call27 = call i64 @code_convert_string_norecord(i64 %call26, i64 %13, i1 zeroext false)
  br label %cond.end.30

cond.false.28:                                    ; preds = %cond.true.22
  %14 = load i8*, i8** %uname, align 8
  %call29 = call i64 @build_unibyte_string(i8* %14)
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.28, %cond.true.25
  %cond31 = phi i64 [ %call27, %cond.true.25 ], [ %call29, %cond.false.28 ]
  br label %cond.end.53

cond.false.32:                                    ; preds = %cond.end.19
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 4
  %15 = load i32, i32* %st_uid, align 4
  %cmp33 = icmp ule i32 0, %15
  br i1 %cmp33, label %land.lhs.true, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %cond.false.32
  %st_uid35 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 4
  %16 = load i32, i32* %st_uid35, align 4
  %conv = zext i32 %16 to i64
  %cmp36 = icmp sle i64 -2305843009213693952, %conv
  br i1 %cmp36, label %land.lhs.true, label %cond.true.42

land.lhs.true:                                    ; preds = %lor.lhs.false.34, %cond.false.32
  %st_uid38 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 4
  %17 = load i32, i32* %st_uid38, align 4
  %conv39 = zext i32 %17 to i64
  %cmp40 = icmp sle i64 %conv39, 2305843009213693951
  br i1 %cmp40, label %cond.false.46, label %cond.true.42

cond.true.42:                                     ; preds = %land.lhs.true, %lor.lhs.false.34
  %st_uid43 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 4
  %18 = load i32, i32* %st_uid43, align 4
  %conv44 = uitofp i32 %18 to double
  %call45 = call i64 @make_float(double %conv44)
  br label %cond.end.51

cond.false.46:                                    ; preds = %land.lhs.true
  %st_uid47 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 4
  %19 = load i32, i32* %st_uid47, align 4
  %conv48 = zext i32 %19 to i64
  %shl49 = shl i64 %conv48, 2
  %add50 = add i64 %shl49, 2
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.46, %cond.true.42
  %cond52 = phi i64 [ %call45, %cond.true.42 ], [ %add50, %cond.false.46 ]
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.end.51, %cond.end.30
  %cond54 = phi i64 [ %cond31, %cond.end.30 ], [ %cond52, %cond.end.51 ]
  store i64 %cond54, i64* %arrayinit.element21
  %arrayinit.element55 = getelementptr inbounds i64, i64* %arrayinit.element21, i64 1
  %20 = load i8*, i8** %gname, align 8
  %tobool56 = icmp ne i8* %20, null
  br i1 %tobool56, label %cond.true.57, label %cond.false.68

cond.true.57:                                     ; preds = %cond.end.53
  %21 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 168), align 8
  %call58 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp59 = icmp eq i64 %21, %call58
  br i1 %cmp59, label %cond.false.64, label %cond.true.61

cond.true.61:                                     ; preds = %cond.true.57
  %22 = load i8*, i8** %gname, align 8
  %call62 = call i64 @build_unibyte_string(i8* %22)
  %23 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 168), align 8
  %call63 = call i64 @code_convert_string_norecord(i64 %call62, i64 %23, i1 zeroext false)
  br label %cond.end.66

cond.false.64:                                    ; preds = %cond.true.57
  %24 = load i8*, i8** %gname, align 8
  %call65 = call i64 @build_unibyte_string(i8* %24)
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.64, %cond.true.61
  %cond67 = phi i64 [ %call63, %cond.true.61 ], [ %call65, %cond.false.64 ]
  br label %cond.end.92

cond.false.68:                                    ; preds = %cond.end.53
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 5
  %25 = load i32, i32* %st_gid, align 4
  %cmp69 = icmp ule i32 0, %25
  br i1 %cmp69, label %land.lhs.true.76, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %cond.false.68
  %st_gid72 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 5
  %26 = load i32, i32* %st_gid72, align 4
  %conv73 = zext i32 %26 to i64
  %cmp74 = icmp sle i64 -2305843009213693952, %conv73
  br i1 %cmp74, label %land.lhs.true.76, label %cond.true.81

land.lhs.true.76:                                 ; preds = %lor.lhs.false.71, %cond.false.68
  %st_gid77 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 5
  %27 = load i32, i32* %st_gid77, align 4
  %conv78 = zext i32 %27 to i64
  %cmp79 = icmp sle i64 %conv78, 2305843009213693951
  br i1 %cmp79, label %cond.false.85, label %cond.true.81

cond.true.81:                                     ; preds = %land.lhs.true.76, %lor.lhs.false.71
  %st_gid82 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 5
  %28 = load i32, i32* %st_gid82, align 4
  %conv83 = uitofp i32 %28 to double
  %call84 = call i64 @make_float(double %conv83)
  br label %cond.end.90

cond.false.85:                                    ; preds = %land.lhs.true.76
  %st_gid86 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 5
  %29 = load i32, i32* %st_gid86, align 4
  %conv87 = zext i32 %29 to i64
  %shl88 = shl i64 %conv87, 2
  %add89 = add i64 %shl88, 2
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.85, %cond.true.81
  %cond91 = phi i64 [ %call84, %cond.true.81 ], [ %add89, %cond.false.85 ]
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.end.90, %cond.end.66
  %cond93 = phi i64 [ %cond67, %cond.end.66 ], [ %cond91, %cond.end.90 ]
  store i64 %cond93, i64* %arrayinit.element55
  %arrayinit.element94 = getelementptr inbounds i64, i64* %arrayinit.element55, i64 1
  %call95 = call { i64, i64 } @get_stat_atime(%struct.stat* %s) #9
  %30 = bitcast %struct.timespec* %agg.tmp to { i64, i64 }*
  %31 = getelementptr { i64, i64 }, { i64, i64 }* %30, i32 0, i32 0
  %32 = extractvalue { i64, i64 } %call95, 0
  store i64 %32, i64* %31, align 8
  %33 = getelementptr { i64, i64 }, { i64, i64 }* %30, i32 0, i32 1
  %34 = extractvalue { i64, i64 } %call95, 1
  store i64 %34, i64* %33, align 8
  %35 = bitcast %struct.timespec* %agg.tmp to { i64, i64 }*
  %36 = getelementptr { i64, i64 }, { i64, i64 }* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 1
  %38 = getelementptr { i64, i64 }, { i64, i64 }* %35, i32 0, i32 1
  %39 = load i64, i64* %38, align 1
  %call96 = call i64 @make_lisp_time(i64 %37, i64 %39)
  store i64 %call96, i64* %arrayinit.element94
  %arrayinit.element97 = getelementptr inbounds i64, i64* %arrayinit.element94, i64 1
  %call99 = call { i64, i64 } @get_stat_mtime(%struct.stat* %s) #9
  %40 = bitcast %struct.timespec* %agg.tmp98 to { i64, i64 }*
  %41 = getelementptr { i64, i64 }, { i64, i64 }* %40, i32 0, i32 0
  %42 = extractvalue { i64, i64 } %call99, 0
  store i64 %42, i64* %41, align 8
  %43 = getelementptr { i64, i64 }, { i64, i64 }* %40, i32 0, i32 1
  %44 = extractvalue { i64, i64 } %call99, 1
  store i64 %44, i64* %43, align 8
  %45 = bitcast %struct.timespec* %agg.tmp98 to { i64, i64 }*
  %46 = getelementptr { i64, i64 }, { i64, i64 }* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 1
  %48 = getelementptr { i64, i64 }, { i64, i64 }* %45, i32 0, i32 1
  %49 = load i64, i64* %48, align 1
  %call100 = call i64 @make_lisp_time(i64 %47, i64 %49)
  store i64 %call100, i64* %arrayinit.element97
  %arrayinit.element101 = getelementptr inbounds i64, i64* %arrayinit.element97, i64 1
  %call103 = call { i64, i64 } @get_stat_ctime(%struct.stat* %s) #9
  %50 = bitcast %struct.timespec* %agg.tmp102 to { i64, i64 }*
  %51 = getelementptr { i64, i64 }, { i64, i64 }* %50, i32 0, i32 0
  %52 = extractvalue { i64, i64 } %call103, 0
  store i64 %52, i64* %51, align 8
  %53 = getelementptr { i64, i64 }, { i64, i64 }* %50, i32 0, i32 1
  %54 = extractvalue { i64, i64 } %call103, 1
  store i64 %54, i64* %53, align 8
  %55 = bitcast %struct.timespec* %agg.tmp102 to { i64, i64 }*
  %56 = getelementptr { i64, i64 }, { i64, i64 }* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 1
  %58 = getelementptr { i64, i64 }, { i64, i64 }* %55, i32 0, i32 1
  %59 = load i64, i64* %58, align 1
  %call104 = call i64 @make_lisp_time(i64 %57, i64 %59)
  store i64 %call104, i64* %arrayinit.element101
  %arrayinit.element105 = getelementptr inbounds i64, i64* %arrayinit.element101, i64 1
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 8
  %60 = load i64, i64* %st_size, align 8
  %cmp106 = icmp sle i64 0, %60
  br i1 %cmp106, label %land.lhs.true.112, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %cond.end.92
  %st_size109 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 8
  %61 = load i64, i64* %st_size109, align 8
  %cmp110 = icmp sle i64 -2305843009213693952, %61
  br i1 %cmp110, label %land.lhs.true.112, label %cond.true.116

land.lhs.true.112:                                ; preds = %lor.lhs.false.108, %cond.end.92
  %st_size113 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 8
  %62 = load i64, i64* %st_size113, align 8
  %cmp114 = icmp sle i64 %62, 2305843009213693951
  br i1 %cmp114, label %cond.false.120, label %cond.true.116

cond.true.116:                                    ; preds = %land.lhs.true.112, %lor.lhs.false.108
  %st_size117 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 8
  %63 = load i64, i64* %st_size117, align 8
  %conv118 = sitofp i64 %63 to double
  %call119 = call i64 @make_float(double %conv118)
  br label %cond.end.124

cond.false.120:                                   ; preds = %land.lhs.true.112
  %st_size121 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 8
  %64 = load i64, i64* %st_size121, align 8
  %shl122 = shl i64 %64, 2
  %add123 = add i64 %shl122, 2
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.120, %cond.true.116
  %cond125 = phi i64 [ %call119, %cond.true.116 ], [ %add123, %cond.false.120 ]
  store i64 %cond125, i64* %arrayinit.element105
  %arrayinit.element126 = getelementptr inbounds i64, i64* %arrayinit.element105, i64 1
  %arraydecay127 = getelementptr inbounds [12 x i8], [12 x i8]* %modes, i32 0, i32 0
  %call128 = call i64 @make_string(i8* %arraydecay127, i64 10)
  store i64 %call128, i64* %arrayinit.element126
  %arrayinit.element129 = getelementptr inbounds i64, i64* %arrayinit.element126, i64 1
  %call130 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call130, i64* %arrayinit.element129
  %arrayinit.element131 = getelementptr inbounds i64, i64* %arrayinit.element129, i64 1
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 1
  %65 = load i64, i64* %st_ino, align 8
  %cmp132 = icmp ule i64 0, %65
  br i1 %cmp132, label %land.lhs.true.138, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %cond.end.124
  %st_ino135 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 1
  %66 = load i64, i64* %st_ino135, align 8
  %cmp136 = icmp ule i64 -2305843009213693952, %66
  br i1 %cmp136, label %land.lhs.true.138, label %cond.false.146

land.lhs.true.138:                                ; preds = %lor.lhs.false.134, %cond.end.124
  %st_ino139 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 1
  %67 = load i64, i64* %st_ino139, align 8
  %cmp140 = icmp ule i64 %67, 2305843009213693951
  br i1 %cmp140, label %cond.true.142, label %cond.false.146

cond.true.142:                                    ; preds = %land.lhs.true.138
  %st_ino143 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 1
  %68 = load i64, i64* %st_ino143, align 8
  %shl144 = shl i64 %68, 2
  %add145 = add i64 %shl144, 2
  br label %cond.end.158

cond.false.146:                                   ; preds = %land.lhs.true.138, %lor.lhs.false.134
  %st_ino147 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 1
  %69 = load i64, i64* %st_ino147, align 8
  %mul = mul i64 0, %69
  %sub = sub i64 %mul, 1
  %cmp148 = icmp ult i64 %sub, 0
  br i1 %cmp148, label %cond.true.150, label %cond.false.153

cond.true.150:                                    ; preds = %cond.false.146
  %st_ino151 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 1
  %70 = load i64, i64* %st_ino151, align 8
  %call152 = call i64 @intbig_to_lisp(i64 %70)
  br label %cond.end.156

cond.false.153:                                   ; preds = %cond.false.146
  %st_ino154 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 1
  %71 = load i64, i64* %st_ino154, align 8
  %call155 = call i64 @uintbig_to_lisp(i64 %71)
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.153, %cond.true.150
  %cond157 = phi i64 [ %call152, %cond.true.150 ], [ %call155, %cond.false.153 ]
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.end.156, %cond.true.142
  %cond159 = phi i64 [ %add145, %cond.true.142 ], [ %cond157, %cond.end.156 ]
  store i64 %cond159, i64* %arrayinit.element131
  %arrayinit.element160 = getelementptr inbounds i64, i64* %arrayinit.element131, i64 1
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 0
  %72 = load i64, i64* %st_dev, align 8
  %cmp161 = icmp ule i64 0, %72
  br i1 %cmp161, label %land.lhs.true.167, label %lor.lhs.false.163

lor.lhs.false.163:                                ; preds = %cond.end.158
  %st_dev164 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 0
  %73 = load i64, i64* %st_dev164, align 8
  %cmp165 = icmp ule i64 -2305843009213693952, %73
  br i1 %cmp165, label %land.lhs.true.167, label %cond.false.175

land.lhs.true.167:                                ; preds = %lor.lhs.false.163, %cond.end.158
  %st_dev168 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 0
  %74 = load i64, i64* %st_dev168, align 8
  %cmp169 = icmp ule i64 %74, 2305843009213693951
  br i1 %cmp169, label %cond.true.171, label %cond.false.175

cond.true.171:                                    ; preds = %land.lhs.true.167
  %st_dev172 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 0
  %75 = load i64, i64* %st_dev172, align 8
  %shl173 = shl i64 %75, 2
  %add174 = add i64 %shl173, 2
  br label %cond.end.189

cond.false.175:                                   ; preds = %land.lhs.true.167, %lor.lhs.false.163
  %st_dev176 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 0
  %76 = load i64, i64* %st_dev176, align 8
  %mul177 = mul i64 0, %76
  %sub178 = sub i64 %mul177, 1
  %cmp179 = icmp ult i64 %sub178, 0
  br i1 %cmp179, label %cond.true.181, label %cond.false.184

cond.true.181:                                    ; preds = %cond.false.175
  %st_dev182 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 0
  %77 = load i64, i64* %st_dev182, align 8
  %call183 = call i64 @intbig_to_lisp(i64 %77)
  br label %cond.end.187

cond.false.184:                                   ; preds = %cond.false.175
  %st_dev185 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 0
  %78 = load i64, i64* %st_dev185, align 8
  %call186 = call i64 @uintbig_to_lisp(i64 %78)
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.false.184, %cond.true.181
  %cond188 = phi i64 [ %call183, %cond.true.181 ], [ %call186, %cond.false.184 ]
  br label %cond.end.189

cond.end.189:                                     ; preds = %cond.end.187, %cond.true.171
  %cond190 = phi i64 [ %add174, %cond.true.171 ], [ %cond188, %cond.end.187 ]
  store i64 %cond190, i64* %arrayinit.element160
  %arraydecay191 = getelementptr inbounds [12 x i64], [12 x i64]* %.compoundliteral, i32 0, i32 0
  %call192 = call i64 @Flist(i64 12, i64* %arraydecay191)
  store i64 %call192, i64* %retval
  br label %return

return:                                           ; preds = %cond.end.189, %if.then
  %79 = load i64, i64* %retval
  ret i64 %79
}

declare i64 @Fcons(i64, i64) #1

declare void @block_input() #1

declare i32 @closedir(%struct.__dirstream*) #1

declare void @unblock_input() #1

declare i64 @Fsort(i64, i64) #1

declare i64 @Fnreverse(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fdirectory_files(i64 %directory, i64 %full, i64 %match, i64 %nosort) #0 {
entry:
  %retval = alloca i64, align 8
  %directory.addr = alloca i64, align 8
  %full.addr = alloca i64, align 8
  %match.addr = alloca i64, align 8
  %nosort.addr = alloca i64, align 8
  %handler = alloca i64, align 8
  store i64 %directory, i64* %directory.addr, align 8
  store i64 %full, i64* %full.addr, align 8
  store i64 %match, i64* %match.addr, align 8
  store i64 %nosort, i64* %nosort.addr, align 8
  %0 = load i64, i64* %directory.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @Fexpand_file_name(i64 %0, i64 %call)
  store i64 %call1, i64* %directory.addr, align 8
  %1 = load i64, i64* %directory.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 341)
  %call3 = call i64 @Ffind_file_name_handler(i64 %1, i64 %call2)
  store i64 %call3, i64* %handler, align 8
  %2 = load i64, i64* %handler, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %handler, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 341)
  %4 = load i64, i64* %directory.addr, align 8
  %5 = load i64, i64* %full.addr, align 8
  %6 = load i64, i64* %match.addr, align 8
  %7 = load i64, i64* %nosort.addr, align 8
  %call6 = call i64 @call5(i64 %3, i64 %call5, i64 %4, i64 %5, i64 %6, i64 %7)
  store i64 %call6, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i64, i64* %directory.addr, align 8
  %9 = load i64, i64* %full.addr, align 8
  %10 = load i64, i64* %match.addr, align 8
  %11 = load i64, i64* %nosort.addr, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %call8 = call i64 @directory_files_internal(i64 %8, i64 %9, i64 %10, i64 %11, i1 zeroext false, i64 %call7)
  store i64 %call8, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i64, i64* %retval
  ret i64 %12
}

declare i64 @Fexpand_file_name(i64, i64) #1

declare i64 @Ffind_file_name_handler(i64, i64) #1

declare i64 @call5(i64, i64, i64, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fdirectory_files_and_attributes(i64 %directory, i64 %full, i64 %match, i64 %nosort, i64 %id_format) #0 {
entry:
  %retval = alloca i64, align 8
  %directory.addr = alloca i64, align 8
  %full.addr = alloca i64, align 8
  %match.addr = alloca i64, align 8
  %nosort.addr = alloca i64, align 8
  %id_format.addr = alloca i64, align 8
  %handler = alloca i64, align 8
  store i64 %directory, i64* %directory.addr, align 8
  store i64 %full, i64* %full.addr, align 8
  store i64 %match, i64* %match.addr, align 8
  store i64 %nosort, i64* %nosort.addr, align 8
  store i64 %id_format, i64* %id_format.addr, align 8
  %0 = load i64, i64* %directory.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @Fexpand_file_name(i64 %0, i64 %call)
  store i64 %call1, i64* %directory.addr, align 8
  %1 = load i64, i64* %directory.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 342)
  %call3 = call i64 @Ffind_file_name_handler(i64 %1, i64 %call2)
  store i64 %call3, i64* %handler, align 8
  %2 = load i64, i64* %handler, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %handler, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 342)
  %4 = load i64, i64* %directory.addr, align 8
  %5 = load i64, i64* %full.addr, align 8
  %6 = load i64, i64* %match.addr, align 8
  %7 = load i64, i64* %nosort.addr, align 8
  %8 = load i64, i64* %id_format.addr, align 8
  %call6 = call i64 @call6(i64 %3, i64 %call5, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8)
  store i64 %call6, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i64, i64* %directory.addr, align 8
  %10 = load i64, i64* %full.addr, align 8
  %11 = load i64, i64* %match.addr, align 8
  %12 = load i64, i64* %nosort.addr, align 8
  %13 = load i64, i64* %id_format.addr, align 8
  %call7 = call i64 @directory_files_internal(i64 %9, i64 %10, i64 %11, i64 %12, i1 zeroext true, i64 %13)
  store i64 %call7, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i64, i64* %retval
  ret i64 %14
}

declare i64 @call6(i64, i64, i64, i64, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Ffile_name_completion(i64 %file, i64 %directory, i64 %predicate) #0 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca i64, align 8
  %directory.addr = alloca i64, align 8
  %predicate.addr = alloca i64, align 8
  %handler = alloca i64, align 8
  store i64 %file, i64* %file.addr, align 8
  store i64 %directory, i64* %directory.addr, align 8
  store i64 %predicate, i64* %predicate.addr, align 8
  %0 = load i64, i64* %directory.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @Fexpand_file_name(i64 %0, i64 %call)
  store i64 %call1, i64* %directory.addr, align 8
  %1 = load i64, i64* %directory.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 417)
  %call3 = call i64 @Ffind_file_name_handler(i64 %1, i64 %call2)
  store i64 %call3, i64* %handler, align 8
  %2 = load i64, i64* %handler, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %handler, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 417)
  %4 = load i64, i64* %file.addr, align 8
  %5 = load i64, i64* %directory.addr, align 8
  %6 = load i64, i64* %predicate.addr, align 8
  %call6 = call i64 @call4(i64 %3, i64 %call5, i64 %4, i64 %5, i64 %6)
  store i64 %call6, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %file.addr, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 417)
  %call8 = call i64 @Ffind_file_name_handler(i64 %7, i64 %call7)
  store i64 %call8, i64* %handler, align 8
  %8 = load i64, i64* %handler, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %8, %call9
  br i1 %cmp10, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %if.end
  %9 = load i64, i64* %handler, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 417)
  %10 = load i64, i64* %file.addr, align 8
  %11 = load i64, i64* %directory.addr, align 8
  %12 = load i64, i64* %predicate.addr, align 8
  %call13 = call i64 @call4(i64 %9, i64 %call12, i64 %10, i64 %11, i64 %12)
  store i64 %call13, i64* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  %13 = load i64, i64* %file.addr, align 8
  %14 = load i64, i64* %directory.addr, align 8
  %15 = load i64, i64* %predicate.addr, align 8
  %call15 = call i64 @file_name_completion(i64 %13, i64 %14, i1 zeroext false, i64 %15)
  store i64 %call15, i64* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.11, %if.then
  %16 = load i64, i64* %retval
  ret i64 %16
}

declare i64 @call4(i64, i64, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @file_name_completion(i64 %file, i64 %dirname, i1 zeroext %all_flag, i64 %predicate) #0 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca i64, align 8
  %dirname.addr = alloca i64, align 8
  %all_flag.addr = alloca i8, align 1
  %predicate.addr = alloca i64, align 8
  %bestmatchsize = alloca i64, align 8
  %matchcount = alloca i32, align 4
  %bestmatch = alloca i64, align 8
  %tem = alloca i64, align 8
  %elt = alloca i64, align 8
  %name = alloca i64, align 8
  %encoded_file = alloca i64, align 8
  %encoded_dir = alloca i64, align 8
  %st = alloca %struct.stat, align 8
  %directoryp = alloca i8, align 1
  %includeall = alloca i8, align 1
  %check_decoded = alloca i8, align 1
  %count = alloca i64, align 8
  %file_encoding = alloca i64, align 8
  %fd = alloca i32, align 4
  %d = alloca %struct.__dirstream*, align 8
  %dp = alloca %struct.dirent*, align 8
  %len = alloca i64, align 8
  %canexclude = alloca i8, align 1
  %skip = alloca i64, align 8
  %elt_len = alloca i64, align 8
  %p1 = alloca i8*, align 8
  %regexps = alloca i64, align 8
  %table = alloca i64, align 8
  %zero = alloca i64, align 8
  %compare = alloca i64, align 8
  %cmp222 = alloca i64, align 8
  %compare253 = alloca i64, align 8
  %cmp262 = alloca i64, align 8
  %matchsize = alloca i64, align 8
  store i64 %file, i64* %file.addr, align 8
  store i64 %dirname, i64* %dirname.addr, align 8
  %frombool = zext i1 %all_flag to i8
  store i8 %frombool, i8* %all_flag.addr, align 1
  store i64 %predicate, i64* %predicate.addr, align 8
  store i64 0, i64* %bestmatchsize, align 8
  store i32 0, i32* %matchcount, align 4
  store i8 1, i8* %includeall, align 1
  store i8 0, i8* %check_decoded, align 1
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %elt, align 8
  %0 = load i64, i64* %file.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %bestmatch, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %encoded_dir, align 8
  store i64 %call3, i64* %encoded_file, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 325)
  %1 = load i64, i64* %dirname.addr, align 8
  call void @specbind(i64 %call4, i64 %1)
  %2 = load i64, i64* %file.addr, align 8
  %call5 = call i64 @encode_file_name(i64 %2)
  store i64 %call5, i64* %encoded_file, align 8
  %3 = load i64, i64* %dirname.addr, align 8
  %call6 = call i64 @Fdirectory_file_name(i64 %3)
  %call7 = call i64 @encode_file_name(i64 %call6)
  store i64 %call7, i64* %encoded_dir, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 94), align 8
  store i64 %4, i64* %file_encoding, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 94), align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %5, %call8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 59), align 8
  store i64 %6, i64* %file_encoding, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i64, i64* %file_encoding, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %7, %call9
  br i1 %cmp10, label %if.end.21, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %8 = load i64, i64* %file_encoding, align 8
  %call11 = call i64 @Fcoding_system_plist(i64 %8)
  %call12 = call i64 @builtin_lisp_symbol(i32 322)
  %call13 = call i64 @Fplist_get(i64 %call11, i64 %call12)
  %call14 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp15 = icmp eq i64 %call13, %call14
  br i1 %cmp15, label %if.end.21, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true
  store i8 1, i8* %check_decoded, align 1
  %9 = load i64, i64* %file.addr, align 8
  %call17 = call zeroext i1 @STRING_MULTIBYTE(i64 %9)
  br i1 %call17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.then.16
  %10 = load i64, i64* %encoded_file, align 8
  %call19 = call i64 @decode_file_name(i64 %10)
  store i64 %call19, i64* %file.addr, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.then.16
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %land.lhs.true, %if.end
  %11 = load i64, i64* %encoded_dir, align 8
  %call22 = call %struct.__dirstream* @open_directory(i64 %11, i32* %fd)
  store %struct.__dirstream* %call22, %struct.__dirstream** %d, align 8
  %12 = load %struct.__dirstream*, %struct.__dirstream** %d, align 8
  %13 = bitcast %struct.__dirstream* %12 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @directory_files_internal_unwind, i8* %13)
  br label %for.cond

for.cond:                                         ; preds = %if.end.356, %if.then.237, %if.then.211, %if.then.197, %if.then.158, %if.then.45, %if.then.41, %if.end.21
  %14 = load %struct.__dirstream*, %struct.__dirstream** %d, align 8
  %15 = load i64, i64* %dirname.addr, align 8
  %call23 = call %struct.dirent* @read_dirent(%struct.__dirstream* %14, i64 %15)
  store %struct.dirent* %call23, %struct.dirent** %dp, align 8
  %tobool = icmp ne %struct.dirent* %call23, null
  br i1 %tobool, label %for.body, label %for.end.357

for.body:                                         ; preds = %for.cond
  %16 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %call24 = call i64 @dirent_namelen(%struct.dirent* %16)
  store i64 %call24, i64* %len, align 8
  store i8 0, i8* %canexclude, align 1
  br label %do.body

do.body:                                          ; preds = %for.body
  %17 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp26 = icmp eq i64 %17, %call25
  br i1 %cmp26, label %if.else, label %land.lhs.true.27

land.lhs.true.27:                                 ; preds = %do.body
  %18 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp29 = icmp eq i64 %18, %call28
  br i1 %cmp29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %land.lhs.true.27
  call void @process_quit_flag()
  br label %if.end.34

if.else:                                          ; preds = %land.lhs.true.27, %do.body
  %19 = load volatile i8, i8* @pending_signals, align 1
  %tobool31 = trunc i8 %19 to i1
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.else
  call void @process_pending_signals()
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.else
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.30
  br label %do.end

do.end:                                           ; preds = %if.end.34
  %20 = load i64, i64* %len, align 8
  %21 = load i64, i64* %encoded_file, align 8
  %call35 = call i64 @SCHARS(i64 %21)
  %cmp36 = icmp slt i64 %20, %call35
  br i1 %cmp36, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %22 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %23 = load i64, i64* %encoded_file, align 8
  %call37 = call i8* @SSDATA(i64 %23)
  %24 = load i64, i64* %encoded_file, align 8
  %call38 = call i64 @SCHARS(i64 %24)
  %call39 = call i64 @scmp(i8* %arraydecay, i8* %call37, i64 %call38)
  %cmp40 = icmp sge i64 %call39, 0
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %lor.lhs.false, %do.end
  br label %for.cond

if.end.42:                                        ; preds = %lor.lhs.false
  %25 = load i32, i32* %fd, align 4
  %26 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %call43 = call i32 @file_name_completion_stat(i32 %25, %struct.dirent* %26, %struct.stat* %st)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  br label %for.cond

if.end.46:                                        ; preds = %if.end.42
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %27 = load i32, i32* %st_mode, align 4
  %and = and i32 %27, 61440
  %cmp47 = icmp eq i32 %and, 16384
  %conv = zext i1 %cmp47 to i32
  %cmp48 = icmp ne i32 %conv, 0
  %frombool50 = zext i1 %cmp48 to i8
  store i8 %frombool50, i8* %directoryp, align 1
  %call51 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call51, i64* %tem, align 8
  %28 = load i8, i8* %all_flag.addr, align 1
  %tobool52 = trunc i8 %28 to i1
  br i1 %tobool52, label %if.end.167, label %if.then.53

if.then.53:                                       ; preds = %if.end.46
  %29 = load i8, i8* %directoryp, align 1
  %tobool54 = trunc i8 %29 to i1
  br i1 %tobool54, label %if.then.55, label %if.else.108

if.then.55:                                       ; preds = %if.then.53
  %30 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name56 = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 4
  %arraydecay57 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name56, i32 0, i32 0
  %call58 = call i32 @strcmp(i8* %arraydecay57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #9
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %lor.lhs.false.60, label %if.then.65

lor.lhs.false.60:                                 ; preds = %if.then.55
  %31 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name61 = getelementptr inbounds %struct.dirent, %struct.dirent* %31, i32 0, i32 4
  %arraydecay62 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name61, i32 0, i32 0
  %call63 = call i32 @strcmp(i8* %arraydecay62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)) #9
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.else.66, label %if.then.65

if.then.65:                                       ; preds = %lor.lhs.false.60, %if.then.55
  store i8 1, i8* %canexclude, align 1
  br label %if.end.107

if.else.66:                                       ; preds = %lor.lhs.false.60
  %32 = load i64, i64* %len, align 8
  %33 = load i64, i64* %encoded_file, align 8
  %call67 = call i64 @SCHARS(i64 %33)
  %cmp68 = icmp sgt i64 %32, %call67
  br i1 %cmp68, label %if.then.70, label %if.end.106

if.then.70:                                       ; preds = %if.else.66
  %34 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 43), align 8
  store i64 %34, i64* %tem, align 8
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc, %if.then.70
  %35 = load i64, i64* %tem, align 8
  %and72 = and i64 %35, 7
  %conv73 = trunc i64 %and72 to i32
  %cmp74 = icmp eq i32 %conv73, 3
  br i1 %cmp74, label %for.body.76, label %for.end

for.body.76:                                      ; preds = %for.cond.71
  %36 = load i64, i64* %tem, align 8
  %sub = sub nsw i64 %36, 3
  %37 = inttoptr i64 %sub to i8*
  %38 = bitcast i8* %37 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %38, i32 0, i32 0
  %39 = load i64, i64* %car, align 8
  store i64 %39, i64* %elt, align 8
  %40 = load i64, i64* %elt, align 8
  %call77 = call zeroext i1 @STRINGP(i64 %40)
  br i1 %call77, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %for.body.76
  br label %for.inc

if.end.79:                                        ; preds = %for.body.76
  %41 = load i64, i64* %elt, align 8
  %call80 = call i64 @encode_file_name(i64 %41)
  store i64 %call80, i64* %elt, align 8
  %42 = load i64, i64* %elt, align 8
  %call81 = call i64 @SCHARS(i64 %42)
  %sub82 = sub nsw i64 %call81, 1
  store i64 %sub82, i64* %elt_len, align 8
  %43 = load i64, i64* %elt_len, align 8
  %cmp83 = icmp sle i64 %43, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.79
  br label %for.inc

if.end.86:                                        ; preds = %if.end.79
  %44 = load i64, i64* %elt, align 8
  %call87 = call i8* @SSDATA(i64 %44)
  store i8* %call87, i8** %p1, align 8
  %45 = load i64, i64* %elt_len, align 8
  %46 = load i8*, i8** %p1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %46, i64 %45
  %47 = load i8, i8* %arrayidx, align 1
  %conv88 = sext i8 %47 to i32
  %cmp89 = icmp ne i32 %conv88, 47
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.86
  br label %for.inc

if.end.92:                                        ; preds = %if.end.86
  %48 = load i64, i64* %len, align 8
  %49 = load i64, i64* %elt_len, align 8
  %sub93 = sub nsw i64 %48, %49
  store i64 %sub93, i64* %skip, align 8
  %50 = load i64, i64* %skip, align 8
  %cmp94 = icmp slt i64 %50, 0
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.92
  br label %for.inc

if.end.97:                                        ; preds = %if.end.92
  %51 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name98 = getelementptr inbounds %struct.dirent, %struct.dirent* %51, i32 0, i32 4
  %arraydecay99 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name98, i32 0, i32 0
  %52 = load i64, i64* %skip, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay99, i64 %52
  %53 = load i8*, i8** %p1, align 8
  %54 = load i64, i64* %elt_len, align 8
  %call100 = call i64 @scmp(i8* %add.ptr, i8* %53, i64 %54)
  %cmp101 = icmp sge i64 %call100, 0
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.end.97
  br label %for.inc

if.end.104:                                       ; preds = %if.end.97
  br label %for.end

for.inc:                                          ; preds = %if.then.103, %if.then.96, %if.then.91, %if.then.85, %if.then.78
  %55 = load i64, i64* %tem, align 8
  %sub105 = sub nsw i64 %55, 3
  %56 = inttoptr i64 %sub105 to i8*
  %57 = bitcast i8* %56 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %57, i32 0, i32 1
  %cdr = bitcast %union.anon.5* %u to i64*
  %58 = load i64, i64* %cdr, align 8
  store i64 %58, i64* %tem, align 8
  br label %for.cond.71

for.end:                                          ; preds = %if.end.104, %for.cond.71
  br label %if.end.106

if.end.106:                                       ; preds = %for.end, %if.else.66
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.65
  br label %if.end.147

if.else.108:                                      ; preds = %if.then.53
  %59 = load i64, i64* %len, align 8
  %60 = load i64, i64* %encoded_file, align 8
  %call109 = call i64 @SCHARS(i64 %60)
  %cmp110 = icmp sgt i64 %59, %call109
  br i1 %cmp110, label %if.then.112, label %if.end.146

if.then.112:                                      ; preds = %if.else.108
  %61 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 43), align 8
  store i64 %61, i64* %tem, align 8
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.141, %if.then.112
  %62 = load i64, i64* %tem, align 8
  %and114 = and i64 %62, 7
  %conv115 = trunc i64 %and114 to i32
  %cmp116 = icmp eq i32 %conv115, 3
  br i1 %cmp116, label %for.body.118, label %for.end.145

for.body.118:                                     ; preds = %for.cond.113
  %63 = load i64, i64* %tem, align 8
  %sub119 = sub nsw i64 %63, 3
  %64 = inttoptr i64 %sub119 to i8*
  %65 = bitcast i8* %64 to %struct.Lisp_Cons*
  %car120 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %65, i32 0, i32 0
  %66 = load i64, i64* %car120, align 8
  store i64 %66, i64* %elt, align 8
  %67 = load i64, i64* %elt, align 8
  %call121 = call zeroext i1 @STRINGP(i64 %67)
  br i1 %call121, label %if.end.123, label %if.then.122

if.then.122:                                      ; preds = %for.body.118
  br label %for.inc.141

if.end.123:                                       ; preds = %for.body.118
  %68 = load i64, i64* %elt, align 8
  %call124 = call i64 @encode_file_name(i64 %68)
  store i64 %call124, i64* %elt, align 8
  %69 = load i64, i64* %len, align 8
  %70 = load i64, i64* %elt, align 8
  %call125 = call i64 @SCHARS(i64 %70)
  %sub126 = sub nsw i64 %69, %call125
  store i64 %sub126, i64* %skip, align 8
  %71 = load i64, i64* %skip, align 8
  %cmp127 = icmp slt i64 %71, 0
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %if.end.123
  br label %for.inc.141

if.end.130:                                       ; preds = %if.end.123
  %72 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name131 = getelementptr inbounds %struct.dirent, %struct.dirent* %72, i32 0, i32 4
  %arraydecay132 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name131, i32 0, i32 0
  %73 = load i64, i64* %skip, align 8
  %add.ptr133 = getelementptr inbounds i8, i8* %arraydecay132, i64 %73
  %74 = load i64, i64* %elt, align 8
  %call134 = call i8* @SSDATA(i64 %74)
  %75 = load i64, i64* %elt, align 8
  %call135 = call i64 @SCHARS(i64 %75)
  %call136 = call i64 @scmp(i8* %add.ptr133, i8* %call134, i64 %call135)
  %cmp137 = icmp sge i64 %call136, 0
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.end.130
  br label %for.inc.141

if.end.140:                                       ; preds = %if.end.130
  br label %for.end.145

for.inc.141:                                      ; preds = %if.then.139, %if.then.129, %if.then.122
  %76 = load i64, i64* %tem, align 8
  %sub142 = sub nsw i64 %76, 3
  %77 = inttoptr i64 %sub142 to i8*
  %78 = bitcast i8* %77 to %struct.Lisp_Cons*
  %u143 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %78, i32 0, i32 1
  %cdr144 = bitcast %union.anon.5* %u143 to i64*
  %79 = load i64, i64* %cdr144, align 8
  store i64 %79, i64* %tem, align 8
  br label %for.cond.113

for.end.145:                                      ; preds = %if.end.140, %for.cond.113
  br label %if.end.146

if.end.146:                                       ; preds = %for.end.145, %if.else.108
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.end.107
  %80 = load i64, i64* %tem, align 8
  %and148 = and i64 %80, 7
  %conv149 = trunc i64 %and148 to i32
  %cmp150 = icmp eq i32 %conv149, 3
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %if.end.147
  store i8 1, i8* %canexclude, align 1
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.152, %if.end.147
  %81 = load i8, i8* %includeall, align 1
  %tobool154 = trunc i8 %81 to i1
  br i1 %tobool154, label %if.end.159, label %land.lhs.true.155

land.lhs.true.155:                                ; preds = %if.end.153
  %82 = load i8, i8* %canexclude, align 1
  %tobool156 = trunc i8 %82 to i1
  br i1 %tobool156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %land.lhs.true.155
  br label %for.cond

if.end.159:                                       ; preds = %land.lhs.true.155, %if.end.153
  %83 = load i8, i8* %includeall, align 1
  %tobool160 = trunc i8 %83 to i1
  br i1 %tobool160, label %land.lhs.true.162, label %if.end.166

land.lhs.true.162:                                ; preds = %if.end.159
  %84 = load i8, i8* %canexclude, align 1
  %tobool163 = trunc i8 %84 to i1
  br i1 %tobool163, label %if.end.166, label %if.then.164

if.then.164:                                      ; preds = %land.lhs.true.162
  store i8 0, i8* %includeall, align 1
  %call165 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call165, i64* %bestmatch, align 8
  store i64 0, i64* %bestmatchsize, align 8
  store i32 0, i32* %matchcount, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.164, %land.lhs.true.162, %if.end.159
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.end.46
  %85 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name168 = getelementptr inbounds %struct.dirent, %struct.dirent* %85, i32 0, i32 4
  %arraydecay169 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name168, i32 0, i32 0
  %86 = load i64, i64* %len, align 8
  %call170 = call i64 @make_unibyte_string(i8* %arraydecay169, i64 %86)
  store i64 %call170, i64* %name, align 8
  %87 = load i64, i64* %name, align 8
  %call171 = call i64 @decode_file_name(i64 %87)
  store i64 %call171, i64* %name, align 8
  %88 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 428), align 1
  %tobool172 = trunc i8 %88 to i1
  br i1 %tobool172, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.167
  %89 = load i64, i64* @Vascii_canon_table, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.167
  %call174 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %89, %cond.true ], [ %call174, %cond.false ]
  store i64 %cond, i64* %table, align 8
  %90 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 44), align 8
  store i64 %90, i64* %regexps, align 8
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.188, %cond.end
  %91 = load i64, i64* %regexps, align 8
  %and176 = and i64 %91, 7
  %conv177 = trunc i64 %and176 to i32
  %cmp178 = icmp eq i32 %conv177, 3
  br i1 %cmp178, label %for.body.180, label %for.end.192

for.body.180:                                     ; preds = %for.cond.175
  %92 = load i64, i64* %regexps, align 8
  %sub181 = sub nsw i64 %92, 3
  %93 = inttoptr i64 %sub181 to i8*
  %94 = bitcast i8* %93 to %struct.Lisp_Cons*
  %car182 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %94, i32 0, i32 0
  %95 = load i64, i64* %car182, align 8
  %96 = load i64, i64* %name, align 8
  %97 = load i64, i64* %table, align 8
  %call183 = call i64 @fast_string_match_internal(i64 %95, i64 %96, i64 %97)
  %cmp184 = icmp slt i64 %call183, 0
  br i1 %cmp184, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %for.body.180
  br label %for.end.192

if.end.187:                                       ; preds = %for.body.180
  br label %for.inc.188

for.inc.188:                                      ; preds = %if.end.187
  %98 = load i64, i64* %regexps, align 8
  %sub189 = sub nsw i64 %98, 3
  %99 = inttoptr i64 %sub189 to i8*
  %100 = bitcast i8* %99 to %struct.Lisp_Cons*
  %u190 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %100, i32 0, i32 1
  %cdr191 = bitcast %union.anon.5* %u190 to i64*
  %101 = load i64, i64* %cdr191, align 8
  store i64 %101, i64* %regexps, align 8
  br label %for.cond.175

for.end.192:                                      ; preds = %if.then.186, %for.cond.175
  %102 = load i64, i64* %regexps, align 8
  %and193 = and i64 %102, 7
  %conv194 = trunc i64 %and193 to i32
  %cmp195 = icmp eq i32 %conv194, 3
  br i1 %cmp195, label %if.then.197, label %if.end.198

if.then.197:                                      ; preds = %for.end.192
  br label %for.cond

if.end.198:                                       ; preds = %for.end.192
  %103 = load i8, i8* %directoryp, align 1
  %tobool199 = trunc i8 %103 to i1
  br i1 %tobool199, label %if.then.200, label %if.end.202

if.then.200:                                      ; preds = %if.end.198
  %104 = load i64, i64* %name, align 8
  %call201 = call i64 @Ffile_name_as_directory(i64 %104)
  store i64 %call201, i64* %name, align 8
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.200, %if.end.198
  %105 = load i64, i64* %predicate.addr, align 8
  %call203 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp204 = icmp eq i64 %105, %call203
  br i1 %cmp204, label %if.end.212, label %land.lhs.true.206

land.lhs.true.206:                                ; preds = %if.end.202
  %106 = load i64, i64* %predicate.addr, align 8
  %107 = load i64, i64* %name, align 8
  %call207 = call i64 @call1(i64 %106, i64 %107)
  %call208 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp209 = icmp eq i64 %call207, %call208
  br i1 %cmp209, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %land.lhs.true.206
  br label %for.cond

if.end.212:                                       ; preds = %land.lhs.true.206, %if.end.202
  store i64 2, i64* %zero, align 8
  %108 = load i8, i8* %check_decoded, align 1
  %tobool213 = trunc i8 %108 to i1
  br i1 %tobool213, label %land.lhs.true.215, label %if.end.239

land.lhs.true.215:                                ; preds = %if.end.212
  %109 = load i64, i64* %file.addr, align 8
  %call216 = call i64 @SCHARS(i64 %109)
  %110 = load i64, i64* %name, align 8
  %call217 = call i64 @SCHARS(i64 %110)
  %cmp218 = icmp sle i64 %call216, %call217
  br i1 %cmp218, label %if.then.220, label %if.end.239

if.then.220:                                      ; preds = %land.lhs.true.215
  %111 = load i64, i64* %file.addr, align 8
  %call221 = call i64 @SCHARS(i64 %111)
  store i64 %call221, i64* %compare, align 8
  %112 = load i64, i64* %name, align 8
  %113 = load i64, i64* %zero, align 8
  %114 = load i64, i64* %compare, align 8
  %shl = shl i64 %114, 2
  %add = add i64 %shl, 2
  %115 = load i64, i64* %file.addr, align 8
  %116 = load i64, i64* %zero, align 8
  %117 = load i64, i64* %compare, align 8
  %shl223 = shl i64 %117, 2
  %add224 = add i64 %shl223, 2
  %118 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 428), align 1
  %tobool225 = trunc i8 %118 to i1
  br i1 %tobool225, label %cond.true.227, label %cond.false.229

cond.true.227:                                    ; preds = %if.then.220
  %call228 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.231

cond.false.229:                                   ; preds = %if.then.220
  %call230 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.231

cond.end.231:                                     ; preds = %cond.false.229, %cond.true.227
  %cond232 = phi i64 [ %call228, %cond.true.227 ], [ %call230, %cond.false.229 ]
  %call233 = call i64 @Fcompare_strings(i64 %112, i64 %113, i64 %add, i64 %115, i64 %116, i64 %add224, i64 %cond232)
  store i64 %call233, i64* %cmp222, align 8
  %119 = load i64, i64* %cmp222, align 8
  %call234 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp235 = icmp eq i64 %119, %call234
  br i1 %cmp235, label %if.end.238, label %if.then.237

if.then.237:                                      ; preds = %cond.end.231
  br label %for.cond

if.end.238:                                       ; preds = %cond.end.231
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %land.lhs.true.215, %if.end.212
  %120 = load i32, i32* %matchcount, align 4
  %cmp240 = icmp sle i32 %120, 1
  %conv241 = zext i1 %cmp240 to i32
  %121 = load i32, i32* %matchcount, align 4
  %add242 = add nsw i32 %121, %conv241
  store i32 %add242, i32* %matchcount, align 4
  %122 = load i8, i8* %all_flag.addr, align 1
  %tobool243 = trunc i8 %122 to i1
  br i1 %tobool243, label %if.then.244, label %if.else.246

if.then.244:                                      ; preds = %if.end.239
  %123 = load i64, i64* %name, align 8
  %124 = load i64, i64* %bestmatch, align 8
  %call245 = call i64 @Fcons(i64 %123, i64 %124)
  store i64 %call245, i64* %bestmatch, align 8
  br label %if.end.356

if.else.246:                                      ; preds = %if.end.239
  %125 = load i64, i64* %bestmatch, align 8
  %call247 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp248 = icmp eq i64 %125, %call247
  br i1 %cmp248, label %if.then.250, label %if.else.252

if.then.250:                                      ; preds = %if.else.246
  %126 = load i64, i64* %name, align 8
  store i64 %126, i64* %bestmatch, align 8
  %127 = load i64, i64* %name, align 8
  %call251 = call i64 @SCHARS(i64 %127)
  store i64 %call251, i64* %bestmatchsize, align 8
  br label %if.end.355

if.else.252:                                      ; preds = %if.else.246
  %128 = load i64, i64* %bestmatchsize, align 8
  %129 = load i64, i64* %name, align 8
  %call254 = call i64 @SCHARS(i64 %129)
  %cmp255 = icmp slt i64 %128, %call254
  br i1 %cmp255, label %cond.true.257, label %cond.false.258

cond.true.257:                                    ; preds = %if.else.252
  %130 = load i64, i64* %bestmatchsize, align 8
  br label %cond.end.260

cond.false.258:                                   ; preds = %if.else.252
  %131 = load i64, i64* %name, align 8
  %call259 = call i64 @SCHARS(i64 %131)
  br label %cond.end.260

cond.end.260:                                     ; preds = %cond.false.258, %cond.true.257
  %cond261 = phi i64 [ %130, %cond.true.257 ], [ %call259, %cond.false.258 ]
  store i64 %cond261, i64* %compare253, align 8
  %132 = load i64, i64* %bestmatch, align 8
  %133 = load i64, i64* %zero, align 8
  %134 = load i64, i64* %compare253, align 8
  %shl263 = shl i64 %134, 2
  %add264 = add i64 %shl263, 2
  %135 = load i64, i64* %name, align 8
  %136 = load i64, i64* %zero, align 8
  %137 = load i64, i64* %compare253, align 8
  %shl265 = shl i64 %137, 2
  %add266 = add i64 %shl265, 2
  %138 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 428), align 1
  %tobool267 = trunc i8 %138 to i1
  br i1 %tobool267, label %cond.true.269, label %cond.false.271

cond.true.269:                                    ; preds = %cond.end.260
  %call270 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end.273

cond.false.271:                                   ; preds = %cond.end.260
  %call272 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.273

cond.end.273:                                     ; preds = %cond.false.271, %cond.true.269
  %cond274 = phi i64 [ %call270, %cond.true.269 ], [ %call272, %cond.false.271 ]
  %call275 = call i64 @Fcompare_strings(i64 %132, i64 %133, i64 %add264, i64 %135, i64 %136, i64 %add266, i64 %cond274)
  store i64 %call275, i64* %cmp262, align 8
  %139 = load i64, i64* %cmp262, align 8
  %call276 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp277 = icmp eq i64 %139, %call276
  br i1 %cmp277, label %cond.true.279, label %cond.false.280

cond.true.279:                                    ; preds = %cond.end.273
  %140 = load i64, i64* %compare253, align 8
  br label %cond.end.291

cond.false.280:                                   ; preds = %cond.end.273
  %141 = load i64, i64* %cmp262, align 8
  %shr = ashr i64 %141, 2
  %cmp281 = icmp slt i64 %shr, 0
  br i1 %cmp281, label %cond.true.283, label %cond.false.286

cond.true.283:                                    ; preds = %cond.false.280
  %142 = load i64, i64* %cmp262, align 8
  %shr284 = ashr i64 %142, 2
  %sub285 = sub nsw i64 0, %shr284
  br label %cond.end.288

cond.false.286:                                   ; preds = %cond.false.280
  %143 = load i64, i64* %cmp262, align 8
  %shr287 = ashr i64 %143, 2
  br label %cond.end.288

cond.end.288:                                     ; preds = %cond.false.286, %cond.true.283
  %cond289 = phi i64 [ %sub285, %cond.true.283 ], [ %shr287, %cond.false.286 ]
  %sub290 = sub nsw i64 %cond289, 1
  br label %cond.end.291

cond.end.291:                                     ; preds = %cond.end.288, %cond.true.279
  %cond292 = phi i64 [ %140, %cond.true.279 ], [ %sub290, %cond.end.288 ]
  store i64 %cond292, i64* %matchsize, align 8
  %144 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 428), align 1
  %tobool293 = trunc i8 %144 to i1
  br i1 %tobool293, label %if.then.294, label %if.end.339

if.then.294:                                      ; preds = %cond.end.291
  %145 = load i64, i64* %matchsize, align 8
  %146 = load i64, i64* %name, align 8
  %call295 = call i64 @SCHARS(i64 %146)
  %cmp296 = icmp eq i64 %145, %call295
  br i1 %cmp296, label %land.lhs.true.298, label %lor.lhs.false.305

land.lhs.true.298:                                ; preds = %if.then.294
  %147 = load i64, i64* %matchsize, align 8
  %148 = load i8, i8* %directoryp, align 1
  %tobool299 = trunc i8 %148 to i1
  %conv300 = zext i1 %tobool299 to i64
  %add301 = add nsw i64 %147, %conv300
  %149 = load i64, i64* %bestmatch, align 8
  %call302 = call i64 @SCHARS(i64 %149)
  %cmp303 = icmp slt i64 %add301, %call302
  br i1 %cmp303, label %if.then.337, label %lor.lhs.false.305

lor.lhs.false.305:                                ; preds = %land.lhs.true.298, %if.then.294
  %150 = load i64, i64* %matchsize, align 8
  %151 = load i64, i64* %name, align 8
  %call306 = call i64 @SCHARS(i64 %151)
  %cmp307 = icmp eq i64 %150, %call306
  %conv308 = zext i1 %cmp307 to i32
  %152 = load i64, i64* %matchsize, align 8
  %153 = load i8, i8* %directoryp, align 1
  %tobool309 = trunc i8 %153 to i1
  %conv310 = zext i1 %tobool309 to i64
  %add311 = add nsw i64 %152, %conv310
  %154 = load i64, i64* %bestmatch, align 8
  %call312 = call i64 @SCHARS(i64 %154)
  %cmp313 = icmp eq i64 %add311, %call312
  %conv314 = zext i1 %cmp313 to i32
  %cmp315 = icmp eq i32 %conv308, %conv314
  br i1 %cmp315, label %land.lhs.true.317, label %if.end.338

land.lhs.true.317:                                ; preds = %lor.lhs.false.305
  %155 = load i64, i64* %name, align 8
  %156 = load i64, i64* %zero, align 8
  %157 = load i64, i64* %file.addr, align 8
  %call318 = call i64 @SCHARS(i64 %157)
  %shl319 = shl i64 %call318, 2
  %add320 = add i64 %shl319, 2
  %158 = load i64, i64* %file.addr, align 8
  %159 = load i64, i64* %zero, align 8
  %call321 = call i64 @builtin_lisp_symbol(i32 0)
  %call322 = call i64 @builtin_lisp_symbol(i32 0)
  %call323 = call i64 @Fcompare_strings(i64 %155, i64 %156, i64 %add320, i64 %158, i64 %159, i64 %call321, i64 %call322)
  store i64 %call323, i64* %cmp262, align 8
  %call324 = call i64 @builtin_lisp_symbol(i32 901)
  %160 = load i64, i64* %cmp262, align 8
  %cmp325 = icmp eq i64 %call324, %160
  br i1 %cmp325, label %land.lhs.true.327, label %if.end.338

land.lhs.true.327:                                ; preds = %land.lhs.true.317
  %161 = load i64, i64* %bestmatch, align 8
  %162 = load i64, i64* %zero, align 8
  %163 = load i64, i64* %file.addr, align 8
  %call328 = call i64 @SCHARS(i64 %163)
  %shl329 = shl i64 %call328, 2
  %add330 = add i64 %shl329, 2
  %164 = load i64, i64* %file.addr, align 8
  %165 = load i64, i64* %zero, align 8
  %call331 = call i64 @builtin_lisp_symbol(i32 0)
  %call332 = call i64 @builtin_lisp_symbol(i32 0)
  %call333 = call i64 @Fcompare_strings(i64 %161, i64 %162, i64 %add330, i64 %164, i64 %165, i64 %call331, i64 %call332)
  store i64 %call333, i64* %cmp262, align 8
  %call334 = call i64 @builtin_lisp_symbol(i32 901)
  %166 = load i64, i64* %cmp262, align 8
  %cmp335 = icmp eq i64 %call334, %166
  %lnot = xor i1 %cmp335, true
  br i1 %lnot, label %if.then.337, label %if.end.338

if.then.337:                                      ; preds = %land.lhs.true.327, %land.lhs.true.298
  %167 = load i64, i64* %name, align 8
  store i64 %167, i64* %bestmatch, align 8
  br label %if.end.338

if.end.338:                                       ; preds = %if.then.337, %land.lhs.true.327, %land.lhs.true.317, %lor.lhs.false.305
  br label %if.end.339

if.end.339:                                       ; preds = %if.end.338, %cond.end.291
  %168 = load i64, i64* %matchsize, align 8
  store i64 %168, i64* %bestmatchsize, align 8
  %169 = load i64, i64* %matchsize, align 8
  %170 = load i64, i64* %file.addr, align 8
  %call340 = call i64 @SCHARS(i64 %170)
  %cmp341 = icmp sle i64 %169, %call340
  br i1 %cmp341, label %land.lhs.true.343, label %if.end.354

land.lhs.true.343:                                ; preds = %if.end.339
  %171 = load i8, i8* %includeall, align 1
  %tobool344 = trunc i8 %171 to i1
  br i1 %tobool344, label %if.end.354, label %land.lhs.true.345

land.lhs.true.345:                                ; preds = %land.lhs.true.343
  %172 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 428), align 1
  %tobool346 = trunc i8 %172 to i1
  br i1 %tobool346, label %lor.lhs.false.347, label %land.lhs.true.350

lor.lhs.false.347:                                ; preds = %land.lhs.true.345
  %173 = load i64, i64* %matchsize, align 8
  %cmp348 = icmp eq i64 %173, 0
  br i1 %cmp348, label %land.lhs.true.350, label %if.end.354

land.lhs.true.350:                                ; preds = %lor.lhs.false.347, %land.lhs.true.345
  %174 = load i32, i32* %matchcount, align 4
  %cmp351 = icmp sgt i32 %174, 1
  br i1 %cmp351, label %if.then.353, label %if.end.354

if.then.353:                                      ; preds = %land.lhs.true.350
  br label %for.end.357

if.end.354:                                       ; preds = %land.lhs.true.350, %lor.lhs.false.347, %land.lhs.true.343, %if.end.339
  br label %if.end.355

if.end.355:                                       ; preds = %if.end.354, %if.then.250
  br label %if.end.356

if.end.356:                                       ; preds = %if.end.355, %if.then.244
  br label %for.cond

for.end.357:                                      ; preds = %if.then.353, %for.cond
  %175 = load i64, i64* %count, align 8
  %176 = load i64, i64* %bestmatch, align 8
  %call358 = call i64 @unbind_to(i64 %175, i64 %176)
  store i64 %call358, i64* %bestmatch, align 8
  %177 = load i8, i8* %all_flag.addr, align 1
  %tobool359 = trunc i8 %177 to i1
  br i1 %tobool359, label %if.then.365, label %lor.lhs.false.361

lor.lhs.false.361:                                ; preds = %for.end.357
  %178 = load i64, i64* %bestmatch, align 8
  %call362 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp363 = icmp eq i64 %178, %call362
  br i1 %cmp363, label %if.then.365, label %if.end.366

if.then.365:                                      ; preds = %lor.lhs.false.361, %for.end.357
  %179 = load i64, i64* %bestmatch, align 8
  store i64 %179, i64* %retval
  br label %return

if.end.366:                                       ; preds = %lor.lhs.false.361
  %180 = load i32, i32* %matchcount, align 4
  %cmp367 = icmp eq i32 %180, 1
  br i1 %cmp367, label %land.lhs.true.369, label %if.end.376

land.lhs.true.369:                                ; preds = %if.end.366
  %181 = load i64, i64* %bestmatch, align 8
  %182 = load i64, i64* %file.addr, align 8
  %call370 = call i64 @Fequal(i64 %181, i64 %182)
  %call371 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp372 = icmp eq i64 %call370, %call371
  br i1 %cmp372, label %if.end.376, label %if.then.374

if.then.374:                                      ; preds = %land.lhs.true.369
  %call375 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call375, i64* %retval
  br label %return

if.end.376:                                       ; preds = %land.lhs.true.369, %if.end.366
  %183 = load i64, i64* %bestmatch, align 8
  %184 = load i64, i64* %bestmatchsize, align 8
  %shl377 = shl i64 %184, 2
  %add378 = add i64 %shl377, 2
  %call379 = call i64 @Fsubstring(i64 %183, i64 2, i64 %add378)
  store i64 %call379, i64* %bestmatch, align 8
  %185 = load i64, i64* %bestmatch, align 8
  store i64 %185, i64* %retval
  br label %return

return:                                           ; preds = %if.end.376, %if.then.374, %if.then.365
  %186 = load i64, i64* %retval
  ret i64 %186
}

; Function Attrs: nounwind uwtable
define i64 @Ffile_name_all_completions(i64 %file, i64 %directory) #0 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca i64, align 8
  %directory.addr = alloca i64, align 8
  %handler = alloca i64, align 8
  store i64 %file, i64* %file.addr, align 8
  store i64 %directory, i64* %directory.addr, align 8
  %0 = load i64, i64* %directory.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @Fexpand_file_name(i64 %0, i64 %call)
  store i64 %call1, i64* %directory.addr, align 8
  %1 = load i64, i64* %directory.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 415)
  %call3 = call i64 @Ffind_file_name_handler(i64 %1, i64 %call2)
  store i64 %call3, i64* %handler, align 8
  %2 = load i64, i64* %handler, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %2, %call4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %handler, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 415)
  %4 = load i64, i64* %file.addr, align 8
  %5 = load i64, i64* %directory.addr, align 8
  %call6 = call i64 @call3(i64 %3, i64 %call5, i64 %4, i64 %5)
  store i64 %call6, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %file.addr, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 415)
  %call8 = call i64 @Ffind_file_name_handler(i64 %6, i64 %call7)
  store i64 %call8, i64* %handler, align 8
  %7 = load i64, i64* %handler, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %7, %call9
  br i1 %cmp10, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %if.end
  %8 = load i64, i64* %handler, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 415)
  %9 = load i64, i64* %file.addr, align 8
  %10 = load i64, i64* %directory.addr, align 8
  %call13 = call i64 @call3(i64 %8, i64 %call12, i64 %9, i64 %10)
  store i64 %call13, i64* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  %11 = load i64, i64* %file.addr, align 8
  %12 = load i64, i64* %directory.addr, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %call16 = call i64 @file_name_completion(i64 %11, i64 %12, i1 zeroext true, i64 %call15)
  store i64 %call16, i64* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.11, %if.then
  %13 = load i64, i64* %retval
  ret i64 %13
}

declare i64 @call3(i64, i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Ffile_attributes(i64 %filename, i64 %id_format) #0 {
entry:
  %retval = alloca i64, align 8
  %filename.addr = alloca i64, align 8
  %id_format.addr = alloca i64, align 8
  %encoded = alloca i64, align 8
  %handler = alloca i64, align 8
  store i64 %filename, i64* %filename.addr, align 8
  store i64 %id_format, i64* %id_format.addr, align 8
  %0 = load i64, i64* %filename.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call i64 @builtin_lisp_symbol(i32 901)
  %call2 = call i64 @internal_condition_case_2(i64 (i64, i64)* @Fexpand_file_name, i64 %0, i64 %call, i64 %call1, i64 (i64)* @Fidentity)
  store i64 %call2, i64* %filename.addr, align 8
  %1 = load i64, i64* %filename.addr, align 8
  %call3 = call zeroext i1 @STRINGP(i64 %1)
  br i1 %call3, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %filename.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 407)
  %call6 = call i64 @Ffind_file_name_handler(i64 %2, i64 %call5)
  store i64 %call6, i64* %handler, align 8
  %3 = load i64, i64* %handler, align 8
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call7
  br i1 %cmp, label %if.end.16, label %if.then.8

if.then.8:                                        ; preds = %if.end
  %4 = load i64, i64* %id_format.addr, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %4, %call9
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.8
  %5 = load i64, i64* %handler, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 407)
  %6 = load i64, i64* %filename.addr, align 8
  %call13 = call i64 @call2(i64 %5, i64 %call12, i64 %6)
  store i64 %call13, i64* %retval
  br label %return

if.else:                                          ; preds = %if.then.8
  %7 = load i64, i64* %handler, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 407)
  %8 = load i64, i64* %filename.addr, align 8
  %9 = load i64, i64* %id_format.addr, align 8
  %call15 = call i64 @call3(i64 %7, i64 %call14, i64 %8, i64 %9)
  store i64 %call15, i64* %retval
  br label %return

if.end.16:                                        ; preds = %if.end
  %10 = load i64, i64* %filename.addr, align 8
  %call17 = call i64 @encode_file_name(i64 %10)
  store i64 %call17, i64* %encoded, align 8
  %11 = load i64, i64* %encoded, align 8
  %call18 = call i8* @SSDATA(i64 %11)
  %12 = load i64, i64* %id_format.addr, align 8
  %call19 = call i64 @file_attributes(i32 -100, i8* %call18, i64 %12)
  store i64 %call19, i64* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.else, %if.then.11, %if.then
  %13 = load i64, i64* %retval
  ret i64 %13
}

declare i64 @internal_condition_case_2(i64 (i64, i64)*, i64, i64, i64, i64 (i64)*) #1

; Function Attrs: nounwind readnone
declare i64 @Fidentity(i64) #4

declare zeroext i1 @STRINGP(i64) #1

declare i64 @call2(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Ffile_attributes_lessp(i64 %f1, i64 %f2) #0 {
entry:
  %f1.addr = alloca i64, align 8
  %f2.addr = alloca i64, align 8
  store i64 %f1, i64* %f1.addr, align 8
  store i64 %f2, i64* %f2.addr, align 8
  %0 = load i64, i64* %f1.addr, align 8
  %call = call i64 @Fcar(i64 %0)
  %1 = load i64, i64* %f2.addr, align 8
  %call1 = call i64 @Fcar(i64 %1)
  %call2 = call i64 @Fstring_lessp(i64 %call, i64 %call1)
  ret i64 %call2
}

declare i64 @Fstring_lessp(i64, i64) #1

declare i64 @Fcar(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fsystem_users() #0 {
entry:
  %users = alloca i64, align 8
  %pw = alloca %struct.passwd*, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %users, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %call1 = call %struct.passwd* @getpwent()
  store %struct.passwd* %call1, %struct.passwd** %pw, align 8
  %tobool = icmp ne %struct.passwd* %call1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 168), align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call2
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %while.body
  %1 = load %struct.passwd*, %struct.passwd** %pw, align 8
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %1, i32 0, i32 0
  %2 = load i8*, i8** %pw_name, align 8
  %call3 = call i64 @build_string(i8* %2)
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 168), align 8
  %call4 = call i64 @code_convert_string_norecord(i64 %call3, i64 %3, i1 zeroext false)
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %4 = load %struct.passwd*, %struct.passwd** %pw, align 8
  %pw_name5 = getelementptr inbounds %struct.passwd, %struct.passwd* %4, i32 0, i32 0
  %5 = load i8*, i8** %pw_name5, align 8
  %call6 = call i64 @build_string(i8* %5)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call4, %cond.true ], [ %call6, %cond.false ]
  %6 = load i64, i64* %users, align 8
  %call7 = call i64 @Fcons(i64 %cond, i64 %6)
  store i64 %call7, i64* %users, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @endpwent()
  %7 = load i64, i64* %users, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp9 = icmp eq i64 %7, %call8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %8 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 322), align 8
  %call10 = call i64 @list1(i64 %8)
  store i64 %call10, i64* %users, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %9 = load i64, i64* %users, align 8
  ret i64 %9
}

declare %struct.passwd* @getpwent() #1

declare i64 @code_convert_string_norecord(i64, i64, i1 zeroext) #1

declare i64 @build_string(i8*) #1

declare void @endpwent() #1

declare i64 @list1(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fsystem_groups() #0 {
entry:
  %groups = alloca i64, align 8
  %gr = alloca %struct.group*, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %groups, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %call1 = call %struct.group* @getgrent()
  store %struct.group* %call1, %struct.group** %gr, align 8
  %tobool = icmp ne %struct.group* %call1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 168), align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %0, %call2
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %while.body
  %1 = load %struct.group*, %struct.group** %gr, align 8
  %gr_name = getelementptr inbounds %struct.group, %struct.group* %1, i32 0, i32 0
  %2 = load i8*, i8** %gr_name, align 8
  %call3 = call i64 @build_string(i8* %2)
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 168), align 8
  %call4 = call i64 @code_convert_string_norecord(i64 %call3, i64 %3, i1 zeroext false)
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %4 = load %struct.group*, %struct.group** %gr, align 8
  %gr_name5 = getelementptr inbounds %struct.group, %struct.group* %4, i32 0, i32 0
  %5 = load i8*, i8** %gr_name5, align 8
  %call6 = call i64 @build_string(i8* %5)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call4, %cond.true ], [ %call6, %cond.false ]
  %6 = load i64, i64* %groups, align 8
  %call7 = call i64 @Fcons(i64 %cond, i64 %6)
  store i64 %call7, i64* %groups, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @endgrent()
  %7 = load i64, i64* %groups, align 8
  ret i64 %7
}

declare %struct.group* @getgrent() #1

declare void @endgrent() #1

; Function Attrs: nounwind uwtable
define void @syms_of_dired() #0 {
entry:
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sdirectory_files to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sdirectory_files_and_attributes to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sfile_name_completion to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sfile_name_all_completions to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sfile_attributes to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sfile_attributes_lessp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* @Ssystem_users)
  call void @defsubr(%struct.Lisp_Subr* @Ssystem_groups)
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_dired.o_fwd, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 43))
  br label %do.end

do.end:                                           ; preds = %do.body
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 43), align 8
  ret void
}

declare void @defsubr(%struct.Lisp_Subr*) #1

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare i32 @emacs_open(i8*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare %struct.__dirstream* @fdopendir(i32) #1

declare i32 @emacs_close(i32) #1

; Function Attrs: noreturn
declare void @report_file_errno(i8*, i64, i32) #3

declare %struct.dirent* @readdir(%struct.__dirstream*) #1

; Function Attrs: noreturn
declare void @report_file_error(i8*, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare void @specbind(i64, i64) #1

declare i64 @Fplist_get(i64, i64) #1

declare i64 @Fcoding_system_plist(i64) #1

declare zeroext i1 @STRING_MULTIBYTE(i64) #1

declare i64 @SCHARS(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @scmp(i8* %s1, i8* %s2, i64 %len) #0 {
entry:
  %retval = alloca i64, align 8
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %l = alloca i64, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  store i64 %0, i64* %l, align 8
  %1 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 428), align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load i64, i64* %l, align 8
  %tobool1 = icmp ne i64 %2, 0
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i8*, i8** %s1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %s1.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i32
  %call = call i32 @downcase(i32 %conv)
  %5 = load i8*, i8** %s2.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr2, i8** %s2.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv3 = zext i8 %6 to i32
  %call4 = call i32 @downcase(i32 %conv3)
  %cmp = icmp eq i32 %call, %call4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i64, i64* %l, align 8
  %dec = add nsw i64 %8, -1
  store i64 %dec, i64* %l, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end

if.else:                                          ; preds = %entry
  br label %while.cond.6

while.cond.6:                                     ; preds = %while.body.16, %if.else
  %9 = load i64, i64* %l, align 8
  %tobool7 = icmp ne i64 %9, 0
  br i1 %tobool7, label %land.rhs.8, label %land.end.15

land.rhs.8:                                       ; preds = %while.cond.6
  %10 = load i8*, i8** %s1.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr9, i8** %s1.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv10 = sext i8 %11 to i32
  %12 = load i8*, i8** %s2.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr11, i8** %s2.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv12 = sext i8 %13 to i32
  %cmp13 = icmp eq i32 %conv10, %conv12
  br label %land.end.15

land.end.15:                                      ; preds = %land.rhs.8, %while.cond.6
  %14 = phi i1 [ false, %while.cond.6 ], [ %cmp13, %land.rhs.8 ]
  br i1 %14, label %while.body.16, label %while.end.18

while.body.16:                                    ; preds = %land.end.15
  %15 = load i64, i64* %l, align 8
  %dec17 = add nsw i64 %15, -1
  store i64 %dec17, i64* %l, align 8
  br label %while.cond.6

while.end.18:                                     ; preds = %land.end.15
  br label %if.end

if.end:                                           ; preds = %while.end.18, %while.end
  %16 = load i64, i64* %l, align 8
  %cmp19 = icmp eq i64 %16, 0
  br i1 %cmp19, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.end
  store i64 -1, i64* %retval
  br label %return

if.else.22:                                       ; preds = %if.end
  %17 = load i64, i64* %len.addr, align 8
  %18 = load i64, i64* %l, align 8
  %sub = sub nsw i64 %17, %18
  store i64 %sub, i64* %retval
  br label %return

return:                                           ; preds = %if.else.22, %if.then.21
  %19 = load i64, i64* %retval
  ret i64 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @file_name_completion_stat(i32 %fd, %struct.dirent* %dp, %struct.stat* %st_addr) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %dp.addr = alloca %struct.dirent*, align 8
  %st_addr.addr = alloca %struct.stat*, align 8
  %value = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.dirent* %dp, %struct.dirent** %dp.addr, align 8
  store %struct.stat* %st_addr, %struct.stat** %st_addr.addr, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load %struct.dirent*, %struct.dirent** %dp.addr, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %1, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %2 = load %struct.stat*, %struct.stat** %st_addr.addr, align 8
  %call = call i32 @fstatat(i32 %0, i8* %arraydecay, %struct.stat* %2, i32 256) #2
  store i32 %call, i32* %value, align 4
  %3 = load i32, i32* %value, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.stat*, %struct.stat** %st_addr.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3
  %5 = load i32, i32* %st_mode, align 4
  %and = and i32 %5, 61440
  %cmp1 = icmp eq i32 %and, 40960
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* %fd.addr, align 4
  %7 = load %struct.dirent*, %struct.dirent** %dp.addr, align 8
  %d_name2 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 4
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name2, i32 0, i32 0
  %8 = load %struct.stat*, %struct.stat** %st_addr.addr, align 8
  %call4 = call i32 @fstatat(i32 %6, i8* %arraydecay3, %struct.stat* %8, i32 0) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load i32, i32* %value, align 4
  ret i32 %9
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare i64 @fast_string_match_internal(i64, i64, i64) #1

declare i64 @Ffile_name_as_directory(i64) #1

declare i64 @call1(i64, i64) #1

declare i64 @Fcompare_strings(i64, i64, i64, i64, i64, i64, i64) #1

declare i64 @unbind_to(i64, i64) #1

declare i64 @Fequal(i64, i64) #1

declare i64 @Fsubstring(i64, i64, i64) #1

declare i32 @downcase(i32) #1

; Function Attrs: nounwind
declare i32 @fstatat(i32, i8*, %struct.stat*, i32) #6

; Function Attrs: nounwind uwtable
define internal i8* @stat_uname(%struct.stat* %st) #0 {
entry:
  %retval = alloca i8*, align 8
  %st.addr = alloca %struct.stat*, align 8
  %pw = alloca %struct.passwd*, align 8
  store %struct.stat* %st, %struct.stat** %st.addr, align 8
  %0 = load %struct.stat*, %struct.stat** %st.addr, align 8
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 4
  %1 = load i32, i32* %st_uid, align 4
  %call = call %struct.passwd* @getpwuid(i32 %1)
  store %struct.passwd* %call, %struct.passwd** %pw, align 8
  %2 = load %struct.passwd*, %struct.passwd** %pw, align 8
  %tobool = icmp ne %struct.passwd* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.passwd*, %struct.passwd** %pw, align 8
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %3, i32 0, i32 0
  %4 = load i8*, i8** %pw_name, align 8
  store i8* %4, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i8*, i8** %retval
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define internal i8* @stat_gname(%struct.stat* %st) #0 {
entry:
  %retval = alloca i8*, align 8
  %st.addr = alloca %struct.stat*, align 8
  %gr = alloca %struct.group*, align 8
  store %struct.stat* %st, %struct.stat** %st.addr, align 8
  %0 = load %struct.stat*, %struct.stat** %st.addr, align 8
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 5
  %1 = load i32, i32* %st_gid, align 4
  %call = call %struct.group* @getgrgid(i32 %1)
  store %struct.group* %call, %struct.group** %gr, align 8
  %2 = load %struct.group*, %struct.group** %gr, align 8
  %tobool = icmp ne %struct.group* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.group*, %struct.group** %gr, align 8
  %gr_name = getelementptr inbounds %struct.group, %struct.group* %3, i32 0, i32 0
  %4 = load i8*, i8** %gr_name, align 8
  store i8* %4, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i8*, i8** %retval
  ret i8* %5
}

declare void @filemodestring(%struct.stat*, i8*) #1

declare i64 @Flist(i64, i64*) #1

declare i64 @emacs_readlinkat(i32, i8*) #1

declare i64 @build_unibyte_string(i8*) #1

declare i64 @make_float(double) #1

declare i64 @make_lisp_time(i64, i64) #1

; Function Attrs: nounwind readonly
declare { i64, i64 } @get_stat_atime(%struct.stat*) #5

; Function Attrs: nounwind readonly
declare { i64, i64 } @get_stat_mtime(%struct.stat*) #5

; Function Attrs: nounwind readonly
declare { i64, i64 } @get_stat_ctime(%struct.stat*) #5

declare i64 @make_string(i8*, i64) #1

declare i64 @intbig_to_lisp(i64) #1

declare i64 @uintbig_to_lisp(i64) #1

declare %struct.passwd* @getpwuid(i32) #1

declare %struct.group* @getgrgid(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
