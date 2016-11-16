; ModuleID = './src/callproc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.buffer_text, %struct.buffer_text*, %struct.buffer*, i64, i64, i64, i64, i64, i64, %struct.buffer*, i32, i32, [50 x i8], %struct.timespec, i64, i64, i64, i64, i64, %struct.region_cache*, %struct.region_cache*, %struct.region_cache*, i8, %struct.Lisp_Overlay*, %struct.Lisp_Overlay*, i64, i64 }
%struct.vectorlike_header = type { i64 }
%struct.buffer_text = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.interval*, %struct.Lisp_Marker*, i8 }
%struct.interval = type opaque
%struct.Lisp_Marker = type { i32, %struct.buffer*, %struct.Lisp_Marker*, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.region_cache = type opaque
%struct.Lisp_Overlay = type { i32, %struct.Lisp_Overlay*, i64, i64, i64 }
%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Lisp_Objfwd = type { i32, i64* }
%struct.Lisp_Process = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, [6 x i32], i64, i64, i32, i32, i8, i32, i32, %struct.gnutls_session_int*, %struct.gnutls_certificate_credentials_st*, %struct.gnutls_anon_client_credentials_st*, %struct.gnutls_x509_crt_int*, i32, i32, i32, i32, i8 }
%struct.gnutls_session_int = type opaque
%struct.gnutls_certificate_credentials_st = type opaque
%struct.gnutls_anon_client_credentials_st = type opaque
%struct.gnutls_x509_crt_int = type opaque
%struct.__sigset_t = type { [16 x i64] }
%struct.coding_system = type { i64, i32, i32, %union.anon.1, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i64, i64, i64, i64, i8*, i32*, i32, i32, [64 x i8], i32, i32, i1 (%struct.coding_system*, %struct.coding_detection_info*)*, void (%struct.coding_system*)*, i1 (%struct.coding_system*)* }
%union.anon.1 = type { %struct.ccl_spec*, [328 x i8] }
%struct.ccl_spec = type opaque
%struct.coding_detection_info = type { i32, i32, i32 }
%union.anon.2 = type { i32 }
%union.anon.3 = type { i32 }
%union.anon.4 = type { i32 }
%struct.Lisp_Cons = type { i64, %union.anon }
%union.anon = type { i64 }
%struct.Lisp_Hash_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.hash_table_test, %struct.Lisp_Hash_Table* }
%struct.hash_table_test = type { i64, i64, i64, i1 (%struct.hash_table_test*, i64, i64)*, i64 (%struct.hash_table_test*, i64)* }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.0, i16, i16, i8*, i8*, i8* }
%union.anon.0 = type { i64 ()* }

@current_buffer = external global %struct.buffer*, align 8
@.str = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Setting current directory\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Opening process input file\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Opening null device\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"PWD=\00", align 1
@globals = external global %struct.emacs_globals, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@selected_frame = external global i64, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"DISPLAY=\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"EMACSDATA\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"/usr/local/share/emacs/25.1/etc\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"EMACSDOC\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"EMACSPATH\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"/usr/local/libexec/emacs/25.1/x86_64-unknown-linux-gnu\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"lib-src\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"etc\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c"/home/yonghyun.kim/clean-tests/clean-emacs/emacs-25.1/lisp\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"../src/\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"NEWS\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"../etc/\00", align 1
@initialized = external global i8, align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"arch-dependent data dir\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"arch-independent data dir\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"/usr/local/var/games/emacs\00", align 1
@environ = external global i8**, align 8
@.str.27 = private unnamed_addr constant [12 x i8] c"emacsXXXXXX\00", align 1
@Vtemp_file_name_pattern = internal global i64 0, align 8
@syms_of_callproc.o_fwd = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.28 = private unnamed_addr constant [16 x i8] c"shell-file-name\00", align 1
@syms_of_callproc.o_fwd.29 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.30 = private unnamed_addr constant [10 x i8] c"exec-path\00", align 1
@syms_of_callproc.o_fwd.31 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.32 = private unnamed_addr constant [14 x i8] c"exec-suffixes\00", align 1
@syms_of_callproc.o_fwd.33 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.34 = private unnamed_addr constant [15 x i8] c"exec-directory\00", align 1
@syms_of_callproc.o_fwd.35 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.36 = private unnamed_addr constant [15 x i8] c"data-directory\00", align 1
@syms_of_callproc.o_fwd.37 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.38 = private unnamed_addr constant [14 x i8] c"doc-directory\00", align 1
@syms_of_callproc.o_fwd.39 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.40 = private unnamed_addr constant [25 x i8] c"configure-info-directory\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"/usr/local/share/info\00", align 1
@syms_of_callproc.o_fwd.42 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.43 = private unnamed_addr constant [28 x i8] c"shared-game-score-directory\00", align 1
@syms_of_callproc.o_fwd.44 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.45 = private unnamed_addr constant [20 x i8] c"initial-environment\00", align 1
@syms_of_callproc.o_fwd.46 = internal global %struct.Lisp_Objfwd zeroinitializer, align 8
@.str.47 = private unnamed_addr constant [20 x i8] c"process-environment\00", align 1
@synch_process_pid = internal global i32 0, align 4
@.str.48 = private unnamed_addr constant [33 x i8] c"call-process invoked recursively\00", align 1
@Vcoding_system_hash_table = external global i64, align 8
@noninteractive = external global i8, align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"Searching for program\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"Opening process output file\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"Creating process pipe\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"Cannot redirect stderr\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"Doing vfork\00", align 1
@immediate_quit = external global i8, align 1
@pending_signals = external global i8, align 1
@.str.54 = private unnamed_addr constant [48 x i8] c"after-insert-file-set-buffer-file-coding-system\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.56 = private unnamed_addr constant [67 x i8] c"Waiting for process to die...(type C-g again to kill it instantly)\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"Waiting for process to die...done\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"/tmp/\00", align 1
@.str.60 = private unnamed_addr constant [44 x i8] c"Failed to open temporary file using pattern\00", align 1
@.str.61 = private unnamed_addr constant [24 x i8] c"coding-system-for-write\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"Setting file position\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"while setting up child\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"call-process\00", align 1
@Scall_process = internal global { %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64*)* } { i64 (i64, i64*)* @Fcall_process }, i16 1, i16 -2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.65 = private unnamed_addr constant [16 x i8] c"getenv-internal\00", align 1
@Sgetenv_internal = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fgetenv_internal }, i16 1, i16 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.66 = private unnamed_addr constant [20 x i8] c"call-process-region\00", align 1
@Scall_process_region = internal global { %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64*)* } { i64 (i64, i64*)* @Fcall_process_region }, i16 3, i16 -2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i32 0, i32 0), i8* null, i8* null }, align 8

; Function Attrs: nounwind uwtable
define i64 @encode_current_directory() #0 {
entry:
  %dir = alloca i64, align 8
  %0 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %directory_ = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i32 0, i32 3
  %1 = load i64, i64* %directory_, align 8
  store i64 %1, i64* %dir, align 8
  %2 = load i64, i64* %dir, align 8
  %call = call i64 @Funhandled_file_name_directory(i64 %2)
  store i64 %call, i64* %dir, align 8
  %3 = load i64, i64* %dir, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i64 @build_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store i64 %call2, i64* %dir, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* %dir, align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %call4 = call i64 @expand_and_dir_to_file(i64 %4, i64 %call3)
  store i64 %call4, i64* %dir, align 8
  %5 = load i64, i64* %dir, align 8
  %call5 = call i64 @Ffile_accessible_directory_p(i64 %5)
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %call5, %call6
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %6 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %directory_9 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 3
  %7 = load i64, i64* %directory_9, align 8
  call void @report_file_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i64 %7) #9
  unreachable

if.end.10:                                        ; preds = %if.end
  %8 = load i64, i64* %dir, align 8
  %call11 = call i64 @remove_slash_colon(i64 %8)
  %call12 = call i64 @encode_file_name(i64 %call11)
  store i64 %call12, i64* %dir, align 8
  %9 = load i64, i64* %dir, align 8
  %call13 = call zeroext i1 @file_accessible_directory_p(i64 %9)
  br i1 %call13, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %if.end.10
  %10 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %directory_15 = getelementptr inbounds %struct.buffer, %struct.buffer* %10, i32 0, i32 3
  %11 = load i64, i64* %directory_15, align 8
  call void @report_file_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i64 %11) #9
  unreachable

if.end.16:                                        ; preds = %if.end.10
  %12 = load i64, i64* %dir, align 8
  ret i64 %12
}

declare i64 @Funhandled_file_name_directory(i64) #1

declare i64 @builtin_lisp_symbol(i32) #1

declare i64 @build_string(i8*) #1

declare i64 @expand_and_dir_to_file(i64, i64) #1

declare i64 @Ffile_accessible_directory_p(i64) #1

; Function Attrs: noreturn
declare void @report_file_error(i8*, i64) #2

declare i64 @encode_file_name(i64) #1

declare i64 @remove_slash_colon(i64) #1

declare zeroext i1 @file_accessible_directory_p(i64) #1

; Function Attrs: nounwind uwtable
define void @record_kill_process(%struct.Lisp_Process* %p, i64 %tempfile) #0 {
entry:
  %p.addr = alloca %struct.Lisp_Process*, align 8
  %tempfile.addr = alloca i64, align 8
  %oldset = alloca %struct.__sigset_t, align 8
  store %struct.Lisp_Process* %p, %struct.Lisp_Process** %p.addr, align 8
  store i64 %tempfile, i64* %tempfile.addr, align 8
  call void @block_child_signal(%struct.__sigset_t* %oldset)
  %0 = load %struct.Lisp_Process*, %struct.Lisp_Process** %p.addr, align 8
  %alive = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %0, i32 0, i32 28
  %bf.load = load i8, i8* %alive, align 8
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.Lisp_Process*, %struct.Lisp_Process** %p.addr, align 8
  %pid = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %1, i32 0, i32 20
  %2 = load i32, i32* %pid, align 4
  %3 = load i64, i64* %tempfile.addr, align 8
  call void @record_deleted_pid(i32 %2, i64 %3)
  %4 = load %struct.Lisp_Process*, %struct.Lisp_Process** %p.addr, align 8
  %alive1 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %4, i32 0, i32 28
  %bf.load2 = load i8, i8* %alive1, align 8
  %bf.clear3 = and i8 %bf.load2, -65
  store i8 %bf.clear3, i8* %alive1, align 8
  %5 = load %struct.Lisp_Process*, %struct.Lisp_Process** %p.addr, align 8
  %pid4 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %5, i32 0, i32 20
  %6 = load i32, i32* %pid4, align 4
  %sub = sub nsw i32 0, %6
  %call = call i32 @kill(i32 %sub, i32 9) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @unblock_child_signal(%struct.__sigset_t* %oldset)
  ret void
}

declare void @block_child_signal(%struct.__sigset_t*) #1

declare void @record_deleted_pid(i32, i64) #1

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #3

declare void @unblock_child_signal(%struct.__sigset_t*) #1

; Function Attrs: nounwind uwtable
define i64 @Fcall_process(i64 %nargs, i64* %args) #0 {
entry:
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  %infile = alloca i64, align 8
  %encoded_infile = alloca i64, align 8
  %filefd = alloca i32, align 4
  %count = alloca i64, align 8
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %0 = load i64, i64* %nargs.addr, align 8
  %cmp = icmp sge i64 %0, 2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i64*, i64** %args.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 1
  %2 = load i64, i64* %arrayidx, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %2, %call1
  br i1 %cmp2, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load i64*, i64** %args.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, i64* %3, i64 1
  %4 = load i64, i64* %arrayidx3, align 8
  %5 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %directory_ = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 3
  %6 = load i64, i64* %directory_, align 8
  %call4 = call i64 @Fexpand_file_name(i64 %4, i64 %6)
  store i64 %call4, i64* %infile, align 8
  %7 = load i64, i64* %infile, align 8
  call void @CHECK_STRING(i64 %7)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %call5 = call i64 @build_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0))
  store i64 %call5, i64* %infile, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i64, i64* %infile, align 8
  %call6 = call i64 @encode_file_name(i64 %8)
  store i64 %call6, i64* %encoded_infile, align 8
  %9 = load i64, i64* %encoded_infile, align 8
  %call7 = call i8* @SSDATA(i64 %9)
  %call8 = call i32 @emacs_open(i8* %call7, i32 0, i32 0)
  store i32 %call8, i32* %filefd, align 4
  %10 = load i32, i32* %filefd, align 4
  %cmp9 = icmp slt i32 %10, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %11 = load i64, i64* %infile, align 8
  call void @report_file_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i64 %11) #9
  unreachable

if.end.11:                                        ; preds = %if.end
  %12 = load i32, i32* %filefd, align 4
  call void @record_unwind_protect_int(void (i32)* @close_file_unwind, i32 %12)
  %13 = load i64, i64* %count, align 8
  %14 = load i64, i64* %nargs.addr, align 8
  %15 = load i64*, i64** %args.addr, align 8
  %16 = load i32, i32* %filefd, align 4
  %call12 = call i64 @call_process(i64 %14, i64* %15, i32 %16, i64 -1)
  %call13 = call i64 @unbind_to(i64 %13, i64 %call12)
  ret i64 %call13
}

declare i64 @SPECPDL_INDEX() #1

declare i64 @Fexpand_file_name(i64, i64) #1

declare void @CHECK_STRING(i64) #1

declare i32 @emacs_open(i8*, i32, i32) #1

declare i8* @SSDATA(i64) #1

declare void @record_unwind_protect_int(void (i32)*, i32) #1

declare void @close_file_unwind(i32) #1

declare i64 @unbind_to(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @call_process(i64 %nargs, i64* %args, i32 %filefd, i64 %tempfile_index) #0 {
entry:
  %retval = alloca i64, align 8
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  %filefd.addr = alloca i32, align 4
  %tempfile_index.addr = alloca i64, align 8
  %buffer = alloca i64, align 8
  %current_dir = alloca i64, align 8
  %path = alloca i64, align 8
  %display_p = alloca i8, align 1
  %fd0 = alloca i32, align 4
  %callproc_fd = alloca [3 x i32], align 4
  %status = alloca i32, align 4
  %i = alloca i64, align 8
  %count = alloca i64, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %new_argv = alloca i8**, align 8
  %error_file = alloca i64, align 8
  %output_file = alloca i64, align 8
  %oldset = alloca %struct.__sigset_t, align 8
  %pid = alloca i32, align 4
  %child_errno = alloca i32, align 4
  %fd_output = alloca i32, align 4
  %fd_error = alloca i32, align 4
  %process_coding = alloca %struct.coding_system, align 8
  %argument_coding = alloca %struct.coding_system, align 8
  %coding_systems = alloca i64, align 8
  %discard_output = alloca i8, align 1
  %val = alloca i64, align 8
  %args2 = alloca i64*, align 8
  %must_encode = alloca i8, align 1
  %coding_attrs = alloca i64, align 8
  %stderr_file = alloca i64, align 8
  %spec_buffer = alloca i64, align 8
  %ok = alloca i32, align 4
  %i232 = alloca i64, align 8
  %open_errno = alloca i32, align 4
  %fd = alloca [2 x i32], align 4
  %open_errno363 = alloca i32, align 4
  %buffer_volatile = alloca i64, align 8
  %coding_systems_volatile = alloca i64, align 8
  %current_dir_volatile = alloca i64, align 8
  %display_p_volatile = alloca i8, align 1
  %sa_must_free_volatile = alloca i8, align 1
  %fd_error_volatile = alloca i32, align 4
  %filefd_volatile = alloca i32, align 4
  %count_volatile = alloca i64, align 8
  %sa_avail_volatile = alloca i64, align 8
  %sa_count_volatile = alloca i64, align 8
  %new_argv_volatile = alloca i8**, align 8
  %callproc_fd_volatile = alloca [3 x i32], align 4
  %val473 = alloca i64, align 8
  %args2474 = alloca i64*, align 8
  %i485 = alloca i64, align 8
  %buf = alloca [65536 x i8], align 16
  %bufsize = alloca i32, align 4
  %nread = alloca i32, align 4
  %total_read = alloca i64, align 8
  %carryover = alloca i32, align 4
  %display_on_the_fly = alloca i8, align 1
  %saved_coding = alloca %struct.coding_system, align 8
  %this_read = alloca i32, align 4
  %curbuf = alloca i64, align 8
  %count1 = alloca i64, align 8
  %.compoundliteral = alloca %union.anon.2, align 4
  %signame = alloca i8*, align 8
  %.compoundliteral783 = alloca %union.anon.3, align 4
  %.compoundliteral795 = alloca %union.anon.4, align 4
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  store i32 %filefd, i32* %filefd.addr, align 4
  store i64 %tempfile_index, i64* %tempfile_index.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call1 = call i64 @SPECPDL_INDEX()
  store i64 %call1, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %output_file, align 8
  %0 = load i32, i32* @synch_process_pid, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.48, i32 0, i32 0)) #9
  unreachable

if.end:                                           ; preds = %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call3, i64* %coding_systems, align 8
  %1 = load i64*, i64** %args.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 0
  %2 = load i64, i64* %arrayidx, align 8
  call void @CHECK_STRING(i64 %2)
  %call4 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call4, i64* %error_file, align 8
  %3 = load i64, i64* %nargs.addr, align 8
  %cmp = icmp sge i64 %3, 5
  br i1 %cmp, label %if.then.5, label %if.end.66

if.then.5:                                        ; preds = %if.end
  store i8 0, i8* %must_encode, align 1
  store i64 4, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %nargs.addr, align 8
  %cmp6 = icmp slt i64 %4, %5
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %i, align 8
  %7 = load i64*, i64** %args.addr, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %7, i64 %6
  %8 = load i64, i64* %arrayidx7, align 8
  call void @CHECK_STRING(i64 %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8
  %inc = add nsw i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 4, i64* %i, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.15, %for.end
  %10 = load i64, i64* %i, align 8
  %11 = load i64, i64* %nargs.addr, align 8
  %cmp9 = icmp slt i64 %10, %11
  br i1 %cmp9, label %for.body.10, label %for.end.17

for.body.10:                                      ; preds = %for.cond.8
  %12 = load i64, i64* %i, align 8
  %13 = load i64*, i64** %args.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, i64* %13, i64 %12
  %14 = load i64, i64* %arrayidx11, align 8
  %call12 = call zeroext i1 @STRING_MULTIBYTE(i64 %14)
  br i1 %call12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.body.10
  store i8 1, i8* %must_encode, align 1
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %for.body.10
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.end.14
  %15 = load i64, i64* %i, align 8
  %inc16 = add nsw i64 %15, 1
  store i64 %inc16, i64* %i, align 8
  br label %for.cond.8

for.end.17:                                       ; preds = %for.cond.8
  %16 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 36), align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp19 = icmp eq i64 %16, %call18
  br i1 %cmp19, label %if.else, label %if.then.20

if.then.20:                                       ; preds = %for.end.17
  %17 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 36), align 8
  store i64 %17, i64* %val, align 8
  br label %if.end.53

if.else:                                          ; preds = %for.end.17
  %18 = load i8, i8* %must_encode, align 1
  %tobool21 = trunc i8 %18 to i1
  br i1 %tobool21, label %if.else.24, label %if.then.22

if.then.22:                                       ; preds = %if.else
  %call23 = call i64 @builtin_lisp_symbol(i32 788)
  store i64 %call23, i64* %val, align 8
  br label %if.end.52

if.else.24:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.else.24
  %19 = load i64, i64* %nargs.addr, align 8
  %add = add nsw i64 %19, 1
  %20 = load i64, i64* %sa_avail, align 8
  %div = udiv i64 %20, 8
  %div25 = udiv i64 %div, 1
  %cmp26 = icmp ule i64 %add, %div25
  br i1 %cmp26, label %if.then.27, label %if.else.31

if.then.27:                                       ; preds = %do.body
  %21 = load i64, i64* %nargs.addr, align 8
  %add28 = add nsw i64 %21, 1
  %mul = mul i64 8, %add28
  %22 = load i64, i64* %sa_avail, align 8
  %sub = sub i64 %22, %mul
  store i64 %sub, i64* %sa_avail, align 8
  %23 = load i64, i64* %nargs.addr, align 8
  %add29 = add nsw i64 %23, 1
  %mul30 = mul i64 8, %add29
  %24 = alloca i8, i64 %mul30
  %25 = bitcast i8* %24 to i64*
  store i64* %25, i64** %args2, align 8
  br label %if.end.34

if.else.31:                                       ; preds = %do.body
  %26 = load i64, i64* %nargs.addr, align 8
  %add32 = add nsw i64 %26, 1
  %call33 = call noalias i8* @xnmalloc(i64 %add32, i64 8)
  %27 = bitcast i8* %call33 to i64*
  store i64* %27, i64** %args2, align 8
  store i8 1, i8* %sa_must_free, align 1
  %28 = load i64*, i64** %args2, align 8
  %29 = bitcast i64* %28 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %29)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.27
  br label %do.end

do.end:                                           ; preds = %if.end.34
  %call35 = call i64 @builtin_lisp_symbol(i32 234)
  %30 = load i64*, i64** %args2, align 8
  %arrayidx36 = getelementptr inbounds i64, i64* %30, i64 0
  store i64 %call35, i64* %arrayidx36, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.43, %do.end
  %31 = load i64, i64* %i, align 8
  %32 = load i64, i64* %nargs.addr, align 8
  %cmp38 = icmp slt i64 %31, %32
  br i1 %cmp38, label %for.body.39, label %for.end.45

for.body.39:                                      ; preds = %for.cond.37
  %33 = load i64, i64* %i, align 8
  %34 = load i64*, i64** %args.addr, align 8
  %arrayidx40 = getelementptr inbounds i64, i64* %34, i64 %33
  %35 = load i64, i64* %arrayidx40, align 8
  %36 = load i64, i64* %i, align 8
  %add41 = add nsw i64 %36, 1
  %37 = load i64*, i64** %args2, align 8
  %arrayidx42 = getelementptr inbounds i64, i64* %37, i64 %add41
  store i64 %35, i64* %arrayidx42, align 8
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.39
  %38 = load i64, i64* %i, align 8
  %inc44 = add nsw i64 %38, 1
  store i64 %inc44, i64* %i, align 8
  br label %for.cond.37

for.end.45:                                       ; preds = %for.cond.37
  %39 = load i64, i64* %nargs.addr, align 8
  %add46 = add nsw i64 %39, 1
  %40 = load i64*, i64** %args2, align 8
  %call47 = call i64 @Ffind_operation_coding_system(i64 %add46, i64* %40)
  store i64 %call47, i64* %coding_systems, align 8
  %41 = load i64, i64* %coding_systems, align 8
  %and = and i64 %41, 7
  %conv = trunc i64 %and to i32
  %cmp48 = icmp eq i32 %conv, 3
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.45
  %42 = load i64, i64* %coding_systems, align 8
  %sub50 = sub nsw i64 %42, 3
  %43 = inttoptr i64 %sub50 to i8*
  %44 = bitcast i8* %43 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %44, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %45 = load i64, i64* %cdr, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.end.45
  %call51 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %45, %cond.true ], [ %call51, %cond.false ]
  store i64 %cond, i64* %val, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %cond.end, %if.then.22
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.20
  %46 = load i64, i64* %val, align 8
  %call54 = call i64 @complement_process_encoding_system(i64 %46)
  store i64 %call54, i64* %val, align 8
  %47 = load i64, i64* %val, align 8
  %call55 = call i64 @Fcheck_coding_system(i64 %47)
  call void @setup_coding_system(i64 %call55, %struct.coding_system* %argument_coding)
  %48 = load i64, i64* @Vcoding_system_hash_table, align 8
  %call56 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %48)
  %id = getelementptr inbounds %struct.coding_system, %struct.coding_system* %argument_coding, i32 0, i32 0
  %49 = load i64, i64* %id, align 8
  %call57 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call56, i64 %49)
  %call58 = call i64 @AREF(i64 %call57, i64 0)
  store i64 %call58, i64* %coding_attrs, align 8
  %50 = load i64, i64* %coding_attrs, align 8
  %call59 = call i64 @AREF(i64 %50, i64 5)
  %call60 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp61 = icmp eq i64 %call59, %call60
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.53
  %51 = load i64, i64* %val, align 8
  %call64 = call i64 @raw_text_coding_system(i64 %51)
  store i64 %call64, i64* %val, align 8
  %52 = load i64, i64* %val, align 8
  call void @setup_coding_system(i64 %52, %struct.coding_system* %argument_coding)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.end.53
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end
  %53 = load i64, i64* %nargs.addr, align 8
  %cmp67 = icmp slt i64 %53, 3
  br i1 %cmp67, label %if.then.69, label %if.else.71

if.then.69:                                       ; preds = %if.end.66
  %call70 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call70, i64* %buffer, align 8
  br label %if.end.150

if.else.71:                                       ; preds = %if.end.66
  %54 = load i64*, i64** %args.addr, align 8
  %arrayidx72 = getelementptr inbounds i64, i64* %54, i64 2
  %55 = load i64, i64* %arrayidx72, align 8
  store i64 %55, i64* %buffer, align 8
  %56 = load i64, i64* %buffer, align 8
  %and73 = and i64 %56, 7
  %conv74 = trunc i64 %and73 to i32
  %cmp75 = icmp eq i32 %conv74, 3
  br i1 %cmp75, label %land.lhs.true, label %if.end.109

land.lhs.true:                                    ; preds = %if.else.71
  %57 = load i64, i64* %buffer, align 8
  %sub77 = sub nsw i64 %57, 3
  %58 = inttoptr i64 %sub77 to i8*
  %59 = bitcast i8* %58 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %59, i32 0, i32 0
  %60 = load i64, i64* %car, align 8
  %call78 = call i64 @builtin_lisp_symbol(i32 41)
  %cmp79 = icmp eq i64 %60, %call78
  br i1 %cmp79, label %if.end.109, label %if.then.81

if.then.81:                                       ; preds = %land.lhs.true
  %61 = load i64, i64* %buffer, align 8
  %sub82 = sub nsw i64 %61, 3
  %62 = inttoptr i64 %sub82 to i8*
  %63 = bitcast i8* %62 to %struct.Lisp_Cons*
  %u83 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %63, i32 0, i32 1
  %cdr84 = bitcast %union.anon* %u83 to i64*
  %64 = load i64, i64* %cdr84, align 8
  %and85 = and i64 %64, 7
  %conv86 = trunc i64 %and85 to i32
  %cmp87 = icmp eq i32 %conv86, 3
  br i1 %cmp87, label %if.then.89, label %if.end.106

if.then.89:                                       ; preds = %if.then.81
  %65 = load i64, i64* %buffer, align 8
  %sub90 = sub nsw i64 %65, 3
  %66 = inttoptr i64 %sub90 to i8*
  %67 = bitcast i8* %66 to %struct.Lisp_Cons*
  %u91 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %67, i32 0, i32 1
  %cdr92 = bitcast %union.anon* %u91 to i64*
  %68 = load i64, i64* %cdr92, align 8
  %sub93 = sub nsw i64 %68, 3
  %69 = inttoptr i64 %sub93 to i8*
  %70 = bitcast i8* %69 to %struct.Lisp_Cons*
  %car94 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %70, i32 0, i32 0
  %71 = load i64, i64* %car94, align 8
  store i64 %71, i64* %stderr_file, align 8
  %72 = load i64, i64* %stderr_file, align 8
  %call95 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp96 = icmp eq i64 %72, %call95
  br i1 %cmp96, label %if.then.101, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.89
  %call98 = call i64 @builtin_lisp_symbol(i32 901)
  %73 = load i64, i64* %stderr_file, align 8
  %cmp99 = icmp eq i64 %call98, %73
  br i1 %cmp99, label %if.then.101, label %if.else.102

if.then.101:                                      ; preds = %lor.lhs.false, %if.then.89
  %74 = load i64, i64* %stderr_file, align 8
  store i64 %74, i64* %error_file, align 8
  br label %if.end.105

if.else.102:                                      ; preds = %lor.lhs.false
  %75 = load i64, i64* %stderr_file, align 8
  %call103 = call i64 @builtin_lisp_symbol(i32 0)
  %call104 = call i64 @Fexpand_file_name(i64 %75, i64 %call103)
  store i64 %call104, i64* %error_file, align 8
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.102, %if.then.101
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.then.81
  %76 = load i64, i64* %buffer, align 8
  %sub107 = sub nsw i64 %76, 3
  %77 = inttoptr i64 %sub107 to i8*
  %78 = bitcast i8* %77 to %struct.Lisp_Cons*
  %car108 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %78, i32 0, i32 0
  %79 = load i64, i64* %car108, align 8
  store i64 %79, i64* %buffer, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.106, %land.lhs.true, %if.else.71
  %80 = load i64, i64* %buffer, align 8
  %and110 = and i64 %80, 7
  %conv111 = trunc i64 %and110 to i32
  %cmp112 = icmp eq i32 %conv111, 3
  br i1 %cmp112, label %land.lhs.true.114, label %if.end.128

land.lhs.true.114:                                ; preds = %if.end.109
  %81 = load i64, i64* %buffer, align 8
  %sub115 = sub nsw i64 %81, 3
  %82 = inttoptr i64 %sub115 to i8*
  %83 = bitcast i8* %82 to %struct.Lisp_Cons*
  %car116 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %83, i32 0, i32 0
  %84 = load i64, i64* %car116, align 8
  %call117 = call i64 @builtin_lisp_symbol(i32 41)
  %cmp118 = icmp eq i64 %84, %call117
  br i1 %cmp118, label %if.then.120, label %if.end.128

if.then.120:                                      ; preds = %land.lhs.true.114
  %85 = load i64, i64* %buffer, align 8
  %sub121 = sub nsw i64 %85, 3
  %86 = inttoptr i64 %sub121 to i8*
  %87 = bitcast i8* %86 to %struct.Lisp_Cons*
  %u122 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %87, i32 0, i32 1
  %cdr123 = bitcast %union.anon* %u122 to i64*
  %88 = load i64, i64* %cdr123, align 8
  %sub124 = sub nsw i64 %88, 3
  %89 = inttoptr i64 %sub124 to i8*
  %90 = bitcast i8* %89 to %struct.Lisp_Cons*
  %car125 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %90, i32 0, i32 0
  %91 = load i64, i64* %car125, align 8
  %92 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %directory_ = getelementptr inbounds %struct.buffer, %struct.buffer* %92, i32 0, i32 3
  %93 = load i64, i64* %directory_, align 8
  %call126 = call i64 @Fexpand_file_name(i64 %91, i64 %93)
  store i64 %call126, i64* %output_file, align 8
  %94 = load i64, i64* %output_file, align 8
  call void @CHECK_STRING(i64 %94)
  %call127 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call127, i64* %buffer, align 8
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.120, %land.lhs.true.114, %if.end.109
  %95 = load i64, i64* %buffer, align 8
  %call129 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp130 = icmp eq i64 %95, %call129
  br i1 %cmp130, label %if.end.149, label %lor.lhs.false.132

lor.lhs.false.132:                                ; preds = %if.end.128
  %96 = load i64, i64* %buffer, align 8
  %call133 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp134 = icmp eq i64 %96, %call133
  br i1 %cmp134, label %if.end.149, label %lor.lhs.false.136

lor.lhs.false.136:                                ; preds = %lor.lhs.false.132
  %97 = load i64, i64* %buffer, align 8
  %and137 = and i64 %97, 7
  %conv138 = trunc i64 %and137 to i32
  %and139 = and i32 %conv138, -5
  %cmp140 = icmp eq i32 %and139, 2
  br i1 %cmp140, label %if.end.149, label %if.then.142

if.then.142:                                      ; preds = %lor.lhs.false.136
  %98 = load i64, i64* %buffer, align 8
  store i64 %98, i64* %spec_buffer, align 8
  %99 = load i64, i64* %buffer, align 8
  %call143 = call i64 @Fget_buffer_create(i64 %99)
  store i64 %call143, i64* %buffer, align 8
  %100 = load i64, i64* %buffer, align 8
  %call144 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp145 = icmp eq i64 %100, %call144
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.then.142
  %101 = load i64, i64* %spec_buffer, align 8
  call void @CHECK_BUFFER(i64 %101)
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %if.then.142
  %102 = load i64, i64* %buffer, align 8
  call void @CHECK_BUFFER(i64 %102)
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %lor.lhs.false.136, %lor.lhs.false.132, %if.end.128
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.then.69
  %call151 = call i64 @encode_current_directory()
  store i64 %call151, i64* %current_dir, align 8
  %103 = load i64, i64* %error_file, align 8
  %call152 = call zeroext i1 @STRINGP(i64 %103)
  br i1 %call152, label %if.then.153, label %if.end.155

if.then.153:                                      ; preds = %if.end.150
  %104 = load i64, i64* %error_file, align 8
  %call154 = call i64 @encode_file_name(i64 %104)
  store i64 %call154, i64* %error_file, align 8
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.153, %if.end.150
  %105 = load i64, i64* %output_file, align 8
  %call156 = call zeroext i1 @STRINGP(i64 %105)
  br i1 %call156, label %if.then.157, label %if.end.159

if.then.157:                                      ; preds = %if.end.155
  %106 = load i64, i64* %output_file, align 8
  %call158 = call i64 @encode_file_name(i64 %106)
  store i64 %call158, i64* %output_file, align 8
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.157, %if.end.155
  %107 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 86), align 8
  %call160 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp161 = icmp eq i64 %107, %call160
  br i1 %cmp161, label %land.lhs.true.163, label %land.end

land.lhs.true.163:                                ; preds = %if.end.159
  %108 = load i8, i8* @noninteractive, align 1
  %tobool164 = trunc i8 %108 to i1
  br i1 %tobool164, label %land.end, label %land.lhs.true.165

land.lhs.true.165:                                ; preds = %land.lhs.true.163
  %109 = load i64, i64* %nargs.addr, align 8
  %cmp166 = icmp sge i64 %109, 4
  br i1 %cmp166, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.165
  %110 = load i64*, i64** %args.addr, align 8
  %arrayidx168 = getelementptr inbounds i64, i64* %110, i64 3
  %111 = load i64, i64* %arrayidx168, align 8
  %call169 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp170 = icmp eq i64 %111, %call169
  %lnot = xor i1 %cmp170, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.165, %land.lhs.true.163, %if.end.159
  %112 = phi i1 [ false, %land.lhs.true.165 ], [ false, %land.lhs.true.163 ], [ false, %if.end.159 ], [ %lnot, %land.rhs ]
  %frombool = zext i1 %112 to i8
  store i8 %frombool, i8* %display_p, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond.172

for.cond.172:                                     ; preds = %for.inc.177, %land.end
  %113 = load i64, i64* %i, align 8
  %cmp173 = icmp slt i64 %113, 3
  br i1 %cmp173, label %for.body.175, label %for.end.179

for.body.175:                                     ; preds = %for.cond.172
  %114 = load i64, i64* %i, align 8
  %arrayidx176 = getelementptr inbounds [3 x i32], [3 x i32]* %callproc_fd, i32 0, i64 %114
  store i32 -1, i32* %arrayidx176, align 4
  br label %for.inc.177

for.inc.177:                                      ; preds = %for.body.175
  %115 = load i64, i64* %i, align 8
  %inc178 = add nsw i64 %115, 1
  store i64 %inc178, i64* %i, align 8
  br label %for.cond.172

for.end.179:                                      ; preds = %for.cond.172
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %callproc_fd, i32 0, i32 0
  %116 = bitcast i32* %arraydecay to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @call_process_kill, i8* %116)
  %117 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 84), align 8
  %118 = load i64*, i64** %args.addr, align 8
  %arrayidx180 = getelementptr inbounds i64, i64* %118, i64 0
  %119 = load i64, i64* %arrayidx180, align 8
  %120 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 85), align 8
  %call181 = call i32 @openp(i64 %117, i64 %119, i64 %120, i64* %path, i64 6, i1 zeroext false)
  store i32 %call181, i32* %ok, align 4
  %121 = load i32, i32* %ok, align 4
  %cmp182 = icmp slt i32 %121, 0
  br i1 %cmp182, label %if.then.184, label %if.end.186

if.then.184:                                      ; preds = %for.end.179
  %122 = load i64*, i64** %args.addr, align 8
  %arrayidx185 = getelementptr inbounds i64, i64* %122, i64 0
  %123 = load i64, i64* %arrayidx185, align 8
  call void @report_file_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i32 0, i32 0), i64 %123) #9
  unreachable

if.end.186:                                       ; preds = %for.end.179
  %124 = load i64, i64* %path, align 8
  %call187 = call i64 @remove_slash_colon(i64 %124)
  store i64 %call187, i64* %path, align 8
  br label %do.body.188

do.body.188:                                      ; preds = %if.end.186
  %125 = load i64, i64* %nargs.addr, align 8
  %cmp189 = icmp slt i64 %125, 4
  br i1 %cmp189, label %cond.true.191, label %cond.false.192

cond.true.191:                                    ; preds = %do.body.188
  br label %cond.end.194

cond.false.192:                                   ; preds = %do.body.188
  %126 = load i64, i64* %nargs.addr, align 8
  %sub193 = sub nsw i64 %126, 2
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.false.192, %cond.true.191
  %cond195 = phi i64 [ 2, %cond.true.191 ], [ %sub193, %cond.false.192 ]
  %127 = load i64, i64* %sa_avail, align 8
  %div196 = udiv i64 %127, 8
  %div197 = udiv i64 %div196, 1
  %cmp198 = icmp ule i64 %cond195, %div197
  br i1 %cmp198, label %if.then.200, label %if.else.218

if.then.200:                                      ; preds = %cond.end.194
  %128 = load i64, i64* %nargs.addr, align 8
  %cmp201 = icmp slt i64 %128, 4
  br i1 %cmp201, label %cond.true.203, label %cond.false.204

cond.true.203:                                    ; preds = %if.then.200
  br label %cond.end.206

cond.false.204:                                   ; preds = %if.then.200
  %129 = load i64, i64* %nargs.addr, align 8
  %sub205 = sub nsw i64 %129, 2
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.204, %cond.true.203
  %cond207 = phi i64 [ 2, %cond.true.203 ], [ %sub205, %cond.false.204 ]
  %mul208 = mul i64 8, %cond207
  %130 = load i64, i64* %sa_avail, align 8
  %sub209 = sub i64 %130, %mul208
  store i64 %sub209, i64* %sa_avail, align 8
  %131 = load i64, i64* %nargs.addr, align 8
  %cmp210 = icmp slt i64 %131, 4
  br i1 %cmp210, label %cond.true.212, label %cond.false.213

cond.true.212:                                    ; preds = %cond.end.206
  br label %cond.end.215

cond.false.213:                                   ; preds = %cond.end.206
  %132 = load i64, i64* %nargs.addr, align 8
  %sub214 = sub nsw i64 %132, 2
  br label %cond.end.215

cond.end.215:                                     ; preds = %cond.false.213, %cond.true.212
  %cond216 = phi i64 [ 2, %cond.true.212 ], [ %sub214, %cond.false.213 ]
  %mul217 = mul i64 8, %cond216
  %133 = alloca i8, i64 %mul217
  %134 = bitcast i8* %133 to i8**
  store i8** %134, i8*** %new_argv, align 8
  br label %if.end.227

if.else.218:                                      ; preds = %cond.end.194
  %135 = load i64, i64* %nargs.addr, align 8
  %cmp219 = icmp slt i64 %135, 4
  br i1 %cmp219, label %cond.true.221, label %cond.false.222

cond.true.221:                                    ; preds = %if.else.218
  br label %cond.end.224

cond.false.222:                                   ; preds = %if.else.218
  %136 = load i64, i64* %nargs.addr, align 8
  %sub223 = sub nsw i64 %136, 2
  br label %cond.end.224

cond.end.224:                                     ; preds = %cond.false.222, %cond.true.221
  %cond225 = phi i64 [ 2, %cond.true.221 ], [ %sub223, %cond.false.222 ]
  %call226 = call noalias i8* @xnmalloc(i64 %cond225, i64 8)
  %137 = bitcast i8* %call226 to i8**
  store i8** %137, i8*** %new_argv, align 8
  store i8 1, i8* %sa_must_free, align 1
  %138 = load i8**, i8*** %new_argv, align 8
  %139 = bitcast i8** %138 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %139)
  br label %if.end.227

if.end.227:                                       ; preds = %cond.end.224, %cond.end.215
  br label %do.end.228

do.end.228:                                       ; preds = %if.end.227
  %140 = load i64, i64* %nargs.addr, align 8
  %cmp229 = icmp sgt i64 %140, 4
  br i1 %cmp229, label %if.then.231, label %if.else.290

if.then.231:                                      ; preds = %do.end.228
  %dst_multibyte = getelementptr inbounds %struct.coding_system, %struct.coding_system* %argument_coding, i32 0, i32 1
  %bf.load = load i32, i32* %dst_multibyte, align 8
  %bf.clear = and i32 %bf.load, -1048577
  store i32 %bf.clear, i32* %dst_multibyte, align 8
  store i64 4, i64* %i232, align 8
  br label %for.cond.233

for.cond.233:                                     ; preds = %for.inc.274, %if.then.231
  %141 = load i64, i64* %i232, align 8
  %142 = load i64, i64* %nargs.addr, align 8
  %cmp234 = icmp slt i64 %141, %142
  br i1 %cmp234, label %for.body.236, label %for.end.276

for.body.236:                                     ; preds = %for.cond.233
  %143 = load i64, i64* %i232, align 8
  %144 = load i64*, i64** %args.addr, align 8
  %arrayidx237 = getelementptr inbounds i64, i64* %144, i64 %143
  %145 = load i64, i64* %arrayidx237, align 8
  %call238 = call zeroext i1 @STRING_MULTIBYTE(i64 %145)
  %src_multibyte = getelementptr inbounds %struct.coding_system, %struct.coding_system* %argument_coding, i32 0, i32 1
  %146 = zext i1 %call238 to i32
  %bf.load239 = load i32, i32* %src_multibyte, align 8
  %bf.shl = shl i32 %146, 19
  %bf.clear240 = and i32 %bf.load239, -524289
  %bf.set = or i32 %bf.clear240, %bf.shl
  store i32 %bf.set, i32* %src_multibyte, align 8
  %bf.result.cast = trunc i32 %146 to i8
  %tobool241 = trunc i8 %bf.result.cast to i1
  %src_multibyte242 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %argument_coding, i32 0, i32 1
  %bf.load243 = load i32, i32* %src_multibyte242, align 8
  %bf.lshr = lshr i32 %bf.load243, 19
  %bf.clear244 = and i32 %bf.lshr, 1
  %bf.cast = trunc i32 %bf.clear244 to i1
  br i1 %bf.cast, label %if.then.257, label %lor.lhs.false.246

lor.lhs.false.246:                                ; preds = %for.body.236
  %common_flags = getelementptr inbounds %struct.coding_system, %struct.coding_system* %argument_coding, i32 0, i32 1
  %bf.load247 = load i32, i32* %common_flags, align 8
  %bf.clear248 = and i32 %bf.load247, 16383
  %and249 = and i32 %bf.clear248, 2048
  %tobool250 = icmp ne i32 %and249, 0
  br i1 %tobool250, label %if.then.257, label %lor.lhs.false.251

lor.lhs.false.251:                                ; preds = %lor.lhs.false.246
  %mode = getelementptr inbounds %struct.coding_system, %struct.coding_system* %argument_coding, i32 0, i32 1
  %bf.load252 = load i32, i32* %mode, align 8
  %bf.lshr253 = lshr i32 %bf.load252, 14
  %bf.clear254 = and i32 %bf.lshr253, 31
  %and255 = and i32 %bf.clear254, 2
  %tobool256 = icmp ne i32 %and255, 0
  br i1 %tobool256, label %if.then.257, label %if.end.273

if.then.257:                                      ; preds = %lor.lhs.false.251, %lor.lhs.false.246, %for.body.236
  %147 = load i64, i64* %i232, align 8
  %148 = load i64*, i64** %args.addr, align 8
  %arrayidx258 = getelementptr inbounds i64, i64* %148, i64 %147
  %149 = load i64, i64* %arrayidx258, align 8
  %call259 = call zeroext i1 @STRING_MULTIBYTE(i64 %149)
  br i1 %call259, label %cond.true.261, label %cond.false.268

cond.true.261:                                    ; preds = %if.then.257
  %150 = load i64, i64* %i232, align 8
  %151 = load i64*, i64** %args.addr, align 8
  %arrayidx262 = getelementptr inbounds i64, i64* %151, i64 %150
  %152 = load i64, i64* %arrayidx262, align 8
  %153 = load i64, i64* %i232, align 8
  %154 = load i64*, i64** %args.addr, align 8
  %arrayidx263 = getelementptr inbounds i64, i64* %154, i64 %153
  %155 = load i64, i64* %arrayidx263, align 8
  %call264 = call i64 @SCHARS(i64 %155)
  %156 = load i64, i64* %i232, align 8
  %157 = load i64*, i64** %args.addr, align 8
  %arrayidx265 = getelementptr inbounds i64, i64* %157, i64 %156
  %158 = load i64, i64* %arrayidx265, align 8
  %call266 = call i64 @SBYTES(i64 %158)
  %call267 = call i64 @builtin_lisp_symbol(i32 901)
  call void @encode_coding_object(%struct.coding_system* %argument_coding, i64 %152, i64 0, i64 0, i64 %call264, i64 %call266, i64 %call267)
  %dst_object = getelementptr inbounds %struct.coding_system, %struct.coding_system* %argument_coding, i32 0, i32 21
  %159 = load i64, i64* %dst_object, align 8
  br label %cond.end.270

cond.false.268:                                   ; preds = %if.then.257
  %160 = load i64, i64* %i232, align 8
  %161 = load i64*, i64** %args.addr, align 8
  %arrayidx269 = getelementptr inbounds i64, i64* %161, i64 %160
  %162 = load i64, i64* %arrayidx269, align 8
  br label %cond.end.270

cond.end.270:                                     ; preds = %cond.false.268, %cond.true.261
  %cond271 = phi i64 [ %159, %cond.true.261 ], [ %162, %cond.false.268 ]
  %163 = load i64, i64* %i232, align 8
  %164 = load i64*, i64** %args.addr, align 8
  %arrayidx272 = getelementptr inbounds i64, i64* %164, i64 %163
  store i64 %cond271, i64* %arrayidx272, align 8
  br label %if.end.273

if.end.273:                                       ; preds = %cond.end.270, %lor.lhs.false.251
  br label %for.inc.274

for.inc.274:                                      ; preds = %if.end.273
  %165 = load i64, i64* %i232, align 8
  %inc275 = add nsw i64 %165, 1
  store i64 %inc275, i64* %i232, align 8
  br label %for.cond.233

for.end.276:                                      ; preds = %for.cond.233
  store i64 4, i64* %i232, align 8
  br label %for.cond.277

for.cond.277:                                     ; preds = %for.inc.285, %for.end.276
  %166 = load i64, i64* %i232, align 8
  %167 = load i64, i64* %nargs.addr, align 8
  %cmp278 = icmp slt i64 %166, %167
  br i1 %cmp278, label %for.body.280, label %for.end.287

for.body.280:                                     ; preds = %for.cond.277
  %168 = load i64, i64* %i232, align 8
  %169 = load i64*, i64** %args.addr, align 8
  %arrayidx281 = getelementptr inbounds i64, i64* %169, i64 %168
  %170 = load i64, i64* %arrayidx281, align 8
  %call282 = call i8* @SSDATA(i64 %170)
  %171 = load i64, i64* %i232, align 8
  %sub283 = sub nsw i64 %171, 3
  %172 = load i8**, i8*** %new_argv, align 8
  %arrayidx284 = getelementptr inbounds i8*, i8** %172, i64 %sub283
  store i8* %call282, i8** %arrayidx284, align 8
  br label %for.inc.285

for.inc.285:                                      ; preds = %for.body.280
  %173 = load i64, i64* %i232, align 8
  %inc286 = add nsw i64 %173, 1
  store i64 %inc286, i64* %i232, align 8
  br label %for.cond.277

for.end.287:                                      ; preds = %for.cond.277
  %174 = load i64, i64* %i232, align 8
  %sub288 = sub nsw i64 %174, 3
  %175 = load i8**, i8*** %new_argv, align 8
  %arrayidx289 = getelementptr inbounds i8*, i8** %175, i64 %sub288
  store i8* null, i8** %arrayidx289, align 8
  br label %if.end.292

if.else.290:                                      ; preds = %do.end.228
  %176 = load i8**, i8*** %new_argv, align 8
  %arrayidx291 = getelementptr inbounds i8*, i8** %176, i64 1
  store i8* null, i8** %arrayidx291, align 8
  br label %if.end.292

if.end.292:                                       ; preds = %if.else.290, %for.end.287
  %177 = load i64, i64* %path, align 8
  %call293 = call i64 @encode_file_name(i64 %177)
  store i64 %call293, i64* %path, align 8
  %178 = load i64, i64* %path, align 8
  %call294 = call i8* @SSDATA(i64 %178)
  %179 = load i8**, i8*** %new_argv, align 8
  %arrayidx295 = getelementptr inbounds i8*, i8** %179, i64 0
  store i8* %call294, i8** %arrayidx295, align 8
  %180 = load i64, i64* %buffer, align 8
  %and296 = and i64 %180, 7
  %conv297 = trunc i64 %and296 to i32
  %and298 = and i32 %conv297, -5
  %cmp299 = icmp eq i32 %and298, 2
  br i1 %cmp299, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.292
  %181 = load i64, i64* %buffer, align 8
  %call301 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp302 = icmp eq i64 %181, %call301
  br i1 %cmp302, label %land.rhs.304, label %land.end.308

land.rhs.304:                                     ; preds = %lor.rhs
  %182 = load i64, i64* %output_file, align 8
  %call305 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp306 = icmp eq i64 %182, %call305
  br label %land.end.308

land.end.308:                                     ; preds = %land.rhs.304, %lor.rhs
  %183 = phi i1 [ false, %lor.rhs ], [ %cmp306, %land.rhs.304 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.308, %if.end.292
  %184 = phi i1 [ true, %if.end.292 ], [ %183, %land.end.308 ]
  %frombool309 = zext i1 %184 to i8
  store i8 %frombool309, i8* %discard_output, align 1
  %185 = load i8, i8* %discard_output, align 1
  %tobool310 = trunc i8 %185 to i1
  br i1 %tobool310, label %if.then.311, label %if.else.318

if.then.311:                                      ; preds = %lor.end
  %call312 = call i32 @emacs_open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 0)
  store i32 %call312, i32* %fd_output, align 4
  %186 = load i32, i32* %fd_output, align 4
  %cmp313 = icmp slt i32 %186, 0
  br i1 %cmp313, label %if.then.315, label %if.end.317

if.then.315:                                      ; preds = %if.then.311
  %call316 = call i64 @builtin_lisp_symbol(i32 0)
  call void @report_file_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i64 %call316) #9
  unreachable

if.end.317:                                       ; preds = %if.then.311
  br label %if.end.341

if.else.318:                                      ; preds = %lor.end
  %187 = load i64, i64* %output_file, align 8
  %call319 = call zeroext i1 @STRINGP(i64 %187)
  br i1 %call319, label %if.then.320, label %if.else.329

if.then.320:                                      ; preds = %if.else.318
  %188 = load i64, i64* %output_file, align 8
  %call321 = call i8* @SSDATA(i64 %188)
  %call322 = call i32 @emacs_open(i8* %call321, i32 577, i32 438)
  store i32 %call322, i32* %fd_output, align 4
  %189 = load i32, i32* %fd_output, align 4
  %cmp323 = icmp slt i32 %189, 0
  br i1 %cmp323, label %if.then.325, label %if.end.328

if.then.325:                                      ; preds = %if.then.320
  %call326 = call i32* @__errno_location() #10
  %190 = load i32, i32* %call326, align 4
  store i32 %190, i32* %open_errno, align 4
  %191 = load i64, i64* %output_file, align 8
  %call327 = call i64 @decode_file_name(i64 %191)
  store i64 %call327, i64* %output_file, align 8
  %192 = load i64, i64* %output_file, align 8
  %193 = load i32, i32* %open_errno, align 4
  call void @report_file_errno(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i32 0, i32 0), i64 %192, i32 %193) #9
  unreachable

if.end.328:                                       ; preds = %if.then.320
  br label %if.end.340

if.else.329:                                      ; preds = %if.else.318
  %arraydecay330 = getelementptr inbounds [2 x i32], [2 x i32]* %fd, i32 0, i32 0
  %call331 = call i32 @emacs_pipe(i32* %arraydecay330)
  %cmp332 = icmp ne i32 %call331, 0
  br i1 %cmp332, label %if.then.334, label %if.end.336

if.then.334:                                      ; preds = %if.else.329
  %call335 = call i64 @builtin_lisp_symbol(i32 0)
  call void @report_file_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i32 0, i32 0), i64 %call335) #9
  unreachable

if.end.336:                                       ; preds = %if.else.329
  %arrayidx337 = getelementptr inbounds [2 x i32], [2 x i32]* %fd, i32 0, i64 0
  %194 = load i32, i32* %arrayidx337, align 4
  %arrayidx338 = getelementptr inbounds [3 x i32], [3 x i32]* %callproc_fd, i32 0, i64 2
  store i32 %194, i32* %arrayidx338, align 4
  %arrayidx339 = getelementptr inbounds [2 x i32], [2 x i32]* %fd, i32 0, i64 1
  %195 = load i32, i32* %arrayidx339, align 4
  store i32 %195, i32* %fd_output, align 4
  br label %if.end.340

if.end.340:                                       ; preds = %if.end.336, %if.end.328
  br label %if.end.341

if.end.341:                                       ; preds = %if.end.340, %if.end.317
  %196 = load i32, i32* %fd_output, align 4
  %arrayidx342 = getelementptr inbounds [3 x i32], [3 x i32]* %callproc_fd, i32 0, i64 0
  store i32 %196, i32* %arrayidx342, align 4
  %197 = load i32, i32* %fd_output, align 4
  store i32 %197, i32* %fd_error, align 4
  %198 = load i64, i64* %error_file, align 8
  %call343 = call zeroext i1 @STRINGP(i64 %198)
  br i1 %call343, label %if.then.351, label %lor.lhs.false.345

lor.lhs.false.345:                                ; preds = %if.end.341
  %199 = load i64, i64* %error_file, align 8
  %call346 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp347 = icmp eq i64 %199, %call346
  br i1 %cmp347, label %land.lhs.true.349, label %if.end.375

land.lhs.true.349:                                ; preds = %lor.lhs.false.345
  %200 = load i8, i8* %discard_output, align 1
  %tobool350 = trunc i8 %200 to i1
  br i1 %tobool350, label %if.end.375, label %if.then.351

if.then.351:                                      ; preds = %land.lhs.true.349, %if.end.341
  %201 = load i64, i64* %error_file, align 8
  %call352 = call zeroext i1 @STRINGP(i64 %201)
  br i1 %call352, label %cond.true.354, label %cond.false.356

cond.true.354:                                    ; preds = %if.then.351
  %202 = load i64, i64* %error_file, align 8
  %call355 = call i8* @SSDATA(i64 %202)
  br label %cond.end.357

cond.false.356:                                   ; preds = %if.then.351
  br label %cond.end.357

cond.end.357:                                     ; preds = %cond.false.356, %cond.true.354
  %cond358 = phi i8* [ %call355, %cond.true.354 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), %cond.false.356 ]
  %call359 = call i32 @emacs_open(i8* %cond358, i32 577, i32 438)
  store i32 %call359, i32* %fd_error, align 4
  %203 = load i32, i32* %fd_error, align 4
  %cmp360 = icmp slt i32 %203, 0
  br i1 %cmp360, label %if.then.362, label %if.end.373

if.then.362:                                      ; preds = %cond.end.357
  %call364 = call i32* @__errno_location() #10
  %204 = load i32, i32* %call364, align 4
  store i32 %204, i32* %open_errno363, align 4
  %205 = load i64, i64* %error_file, align 8
  %call365 = call zeroext i1 @STRINGP(i64 %205)
  br i1 %call365, label %cond.true.367, label %cond.false.369

cond.true.367:                                    ; preds = %if.then.362
  %206 = load i64, i64* %error_file, align 8
  %call368 = call i64 @decode_file_name(i64 %206)
  br label %cond.end.371

cond.false.369:                                   ; preds = %if.then.362
  %call370 = call i64 @build_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0))
  br label %cond.end.371

cond.end.371:                                     ; preds = %cond.false.369, %cond.true.367
  %cond372 = phi i64 [ %call368, %cond.true.367 ], [ %call370, %cond.false.369 ]
  %207 = load i32, i32* %open_errno363, align 4
  call void @report_file_errno(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0), i64 %cond372, i32 %207) #9
  unreachable

if.end.373:                                       ; preds = %cond.end.357
  %208 = load i32, i32* %fd_error, align 4
  %arrayidx374 = getelementptr inbounds [3 x i32], [3 x i32]* %callproc_fd, i32 0, i64 1
  store i32 %208, i32* %arrayidx374, align 4
  br label %if.end.375

if.end.375:                                       ; preds = %if.end.373, %land.lhs.true.349, %lor.lhs.false.345
  %call376 = call i64 @Fcurrent_buffer()
  call void @record_unwind_protect(void (i64)* @call_process_cleanup, i64 %call376)
  call void @block_input()
  call void @block_child_signal(%struct.__sigset_t* %oldset)
  %209 = load i64, i64* %buffer, align 8
  store volatile i64 %209, i64* %buffer_volatile, align 8
  %210 = load i64, i64* %coding_systems, align 8
  store volatile i64 %210, i64* %coding_systems_volatile, align 8
  %211 = load i64, i64* %current_dir, align 8
  store volatile i64 %211, i64* %current_dir_volatile, align 8
  %212 = load i8, i8* %display_p, align 1
  %tobool377 = trunc i8 %212 to i1
  %frombool378 = zext i1 %tobool377 to i8
  store volatile i8 %frombool378, i8* %display_p_volatile, align 1
  %213 = load i8, i8* %sa_must_free, align 1
  %tobool379 = trunc i8 %213 to i1
  %frombool380 = zext i1 %tobool379 to i8
  store volatile i8 %frombool380, i8* %sa_must_free_volatile, align 1
  %214 = load i32, i32* %fd_error, align 4
  store volatile i32 %214, i32* %fd_error_volatile, align 4
  %215 = load i32, i32* %filefd.addr, align 4
  store volatile i32 %215, i32* %filefd_volatile, align 4
  %216 = load i64, i64* %count, align 8
  store volatile i64 %216, i64* %count_volatile, align 8
  %217 = load i64, i64* %sa_avail, align 8
  store volatile i64 %217, i64* %sa_avail_volatile, align 8
  %218 = load i64, i64* %sa_count, align 8
  store volatile i64 %218, i64* %sa_count_volatile, align 8
  %219 = load i8**, i8*** %new_argv, align 8
  store volatile i8** %219, i8*** %new_argv_volatile, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.381

for.cond.381:                                     ; preds = %for.inc.387, %if.end.375
  %220 = load i64, i64* %i, align 8
  %cmp382 = icmp slt i64 %220, 3
  br i1 %cmp382, label %for.body.384, label %for.end.389

for.body.384:                                     ; preds = %for.cond.381
  %221 = load i64, i64* %i, align 8
  %arrayidx385 = getelementptr inbounds [3 x i32], [3 x i32]* %callproc_fd, i32 0, i64 %221
  %222 = load i32, i32* %arrayidx385, align 4
  %223 = load i64, i64* %i, align 8
  %arrayidx386 = getelementptr inbounds [3 x i32], [3 x i32]* %callproc_fd_volatile, i32 0, i64 %223
  store volatile i32 %222, i32* %arrayidx386, align 4
  br label %for.inc.387

for.inc.387:                                      ; preds = %for.body.384
  %224 = load i64, i64* %i, align 8
  %inc388 = add nsw i64 %224, 1
  store i64 %inc388, i64* %i, align 8
  br label %for.cond.381

for.end.389:                                      ; preds = %for.cond.381
  %call390 = call i32 @vfork() #11
  store i32 %call390, i32* %pid, align 4
  %225 = load volatile i64, i64* %buffer_volatile, align 8
  store i64 %225, i64* %buffer, align 8
  %226 = load volatile i64, i64* %coding_systems_volatile, align 8
  store i64 %226, i64* %coding_systems, align 8
  %227 = load volatile i64, i64* %current_dir_volatile, align 8
  store i64 %227, i64* %current_dir, align 8
  %228 = load volatile i8, i8* %display_p_volatile, align 1
  %tobool391 = trunc i8 %228 to i1
  %frombool392 = zext i1 %tobool391 to i8
  store i8 %frombool392, i8* %display_p, align 1
  %229 = load volatile i8, i8* %sa_must_free_volatile, align 1
  %tobool393 = trunc i8 %229 to i1
  %frombool394 = zext i1 %tobool393 to i8
  store i8 %frombool394, i8* %sa_must_free, align 1
  %230 = load volatile i32, i32* %fd_error_volatile, align 4
  store i32 %230, i32* %fd_error, align 4
  %231 = load volatile i32, i32* %filefd_volatile, align 4
  store i32 %231, i32* %filefd.addr, align 4
  %232 = load volatile i64, i64* %count_volatile, align 8
  store i64 %232, i64* %count, align 8
  %233 = load volatile i64, i64* %sa_avail_volatile, align 8
  store i64 %233, i64* %sa_avail, align 8
  %234 = load volatile i64, i64* %sa_count_volatile, align 8
  store i64 %234, i64* %sa_count, align 8
  %235 = load volatile i8**, i8*** %new_argv_volatile, align 8
  store i8** %235, i8*** %new_argv, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.395

for.cond.395:                                     ; preds = %for.inc.401, %for.end.389
  %236 = load i64, i64* %i, align 8
  %cmp396 = icmp slt i64 %236, 3
  br i1 %cmp396, label %for.body.398, label %for.end.403

for.body.398:                                     ; preds = %for.cond.395
  %237 = load i64, i64* %i, align 8
  %arrayidx399 = getelementptr inbounds [3 x i32], [3 x i32]* %callproc_fd_volatile, i32 0, i64 %237
  %238 = load volatile i32, i32* %arrayidx399, align 4
  %239 = load i64, i64* %i, align 8
  %arrayidx400 = getelementptr inbounds [3 x i32], [3 x i32]* %callproc_fd, i32 0, i64 %239
  store i32 %238, i32* %arrayidx400, align 4
  br label %for.inc.401

for.inc.401:                                      ; preds = %for.body.398
  %240 = load i64, i64* %i, align 8
  %inc402 = add nsw i64 %240, 1
  store i64 %inc402, i64* %i, align 8
  br label %for.cond.395

for.end.403:                                      ; preds = %for.cond.395
  %arrayidx404 = getelementptr inbounds [3 x i32], [3 x i32]* %callproc_fd, i32 0, i64 0
  %241 = load i32, i32* %arrayidx404, align 4
  store i32 %241, i32* %fd_output, align 4
  %242 = load i32, i32* %pid, align 4
  %cmp405 = icmp eq i32 %242, 0
  br i1 %cmp405, label %if.then.407, label %if.end.411

if.then.407:                                      ; preds = %for.end.403
  call void @unblock_child_signal(%struct.__sigset_t* %oldset)
  %call408 = call i32 @setsid() #5
  %call409 = call void (i32)* @signal(i32 13, void (i32)* null) #5
  %call410 = call void (i32)* @signal(i32 27, void (i32)* null) #5
  %243 = load i32, i32* %filefd.addr, align 4
  %244 = load i32, i32* %fd_output, align 4
  %245 = load i32, i32* %fd_error, align 4
  %246 = load i8**, i8*** %new_argv, align 8
  %247 = load i64, i64* %current_dir, align 8
  %248 = call i32 @child_setup(i32 %243, i32 %244, i32 %245, i8** %246, i1 zeroext false, i64 %247) #9
  unreachable

if.end.411:                                       ; preds = %for.end.403
  %call412 = call i32* @__errno_location() #10
  %249 = load i32, i32* %call412, align 4
  store i32 %249, i32* %child_errno, align 4
  %250 = load i32, i32* %pid, align 4
  %cmp413 = icmp sgt i32 %250, 0
  br i1 %cmp413, label %if.then.415, label %if.end.430

if.then.415:                                      ; preds = %if.end.411
  %251 = load i32, i32* %pid, align 4
  store i32 %251, i32* @synch_process_pid, align 4
  %252 = load i64, i64* %buffer, align 8
  %and416 = and i64 %252, 7
  %conv417 = trunc i64 %and416 to i32
  %and418 = and i32 %conv417, -5
  %cmp419 = icmp eq i32 %and418, 2
  br i1 %cmp419, label %if.then.421, label %if.end.429

if.then.421:                                      ; preds = %if.then.415
  %253 = load i64, i64* %tempfile_index.addr, align 8
  %cmp422 = icmp slt i64 %253, 0
  br i1 %cmp422, label %if.then.424, label %if.else.426

if.then.424:                                      ; preds = %if.then.421
  %254 = load i32, i32* %pid, align 4
  %call425 = call i64 @builtin_lisp_symbol(i32 0)
  call void @record_deleted_pid(i32 %254, i64 %call425)
  br label %if.end.428

if.else.426:                                      ; preds = %if.then.421
  %255 = load i32, i32* %pid, align 4
  %256 = load i64*, i64** %args.addr, align 8
  %arrayidx427 = getelementptr inbounds i64, i64* %256, i64 1
  %257 = load i64, i64* %arrayidx427, align 8
  call void @record_deleted_pid(i32 %255, i64 %257)
  %258 = load i64, i64* %tempfile_index.addr, align 8
  call void @clear_unwind_protect(i64 %258)
  br label %if.end.428

if.end.428:                                       ; preds = %if.else.426, %if.then.424
  store i32 0, i32* @synch_process_pid, align 4
  br label %if.end.429

if.end.429:                                       ; preds = %if.end.428, %if.then.415
  br label %if.end.430

if.end.430:                                       ; preds = %if.end.429, %if.end.411
  call void @unblock_child_signal(%struct.__sigset_t* %oldset)
  call void @unblock_input()
  %259 = load i32, i32* %pid, align 4
  %cmp431 = icmp slt i32 %259, 0
  br i1 %cmp431, label %if.then.433, label %if.end.435

if.then.433:                                      ; preds = %if.end.430
  %call434 = call i64 @builtin_lisp_symbol(i32 0)
  %260 = load i32, i32* %child_errno, align 4
  call void @report_file_errno(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i64 %call434, i32 %260) #9
  unreachable

if.end.435:                                       ; preds = %if.end.430
  store i64 0, i64* %i, align 8
  br label %for.cond.436

for.cond.436:                                     ; preds = %for.inc.451, %if.end.435
  %261 = load i64, i64* %i, align 8
  %cmp437 = icmp slt i64 %261, 3
  br i1 %cmp437, label %for.body.439, label %for.end.453

for.body.439:                                     ; preds = %for.cond.436
  %262 = load i64, i64* %i, align 8
  %cmp440 = icmp ne i64 %262, 2
  br i1 %cmp440, label %land.lhs.true.442, label %if.end.450

land.lhs.true.442:                                ; preds = %for.body.439
  %263 = load i64, i64* %i, align 8
  %arrayidx443 = getelementptr inbounds [3 x i32], [3 x i32]* %callproc_fd, i32 0, i64 %263
  %264 = load i32, i32* %arrayidx443, align 4
  %cmp444 = icmp sle i32 0, %264
  br i1 %cmp444, label %if.then.446, label %if.end.450

if.then.446:                                      ; preds = %land.lhs.true.442
  %265 = load i64, i64* %i, align 8
  %arrayidx447 = getelementptr inbounds [3 x i32], [3 x i32]* %callproc_fd, i32 0, i64 %265
  %266 = load i32, i32* %arrayidx447, align 4
  %call448 = call i32 @emacs_close(i32 %266)
  %267 = load i64, i64* %i, align 8
  %arrayidx449 = getelementptr inbounds [3 x i32], [3 x i32]* %callproc_fd, i32 0, i64 %267
  store i32 -1, i32* %arrayidx449, align 4
  br label %if.end.450

if.end.450:                                       ; preds = %if.then.446, %land.lhs.true.442, %for.body.439
  br label %for.inc.451

for.inc.451:                                      ; preds = %if.end.450
  %268 = load i64, i64* %i, align 8
  %inc452 = add nsw i64 %268, 1
  store i64 %inc452, i64* %i, align 8
  br label %for.cond.436

for.end.453:                                      ; preds = %for.cond.436
  %269 = load i32, i32* %filefd.addr, align 4
  %call454 = call i32 @emacs_close(i32 %269)
  %270 = load i64, i64* %count, align 8
  %sub455 = sub nsw i64 %270, 1
  call void @clear_unwind_protect(i64 %sub455)
  %271 = load i64, i64* %buffer, align 8
  %and456 = and i64 %271, 7
  %conv457 = trunc i64 %and456 to i32
  %and458 = and i32 %conv457, -5
  %cmp459 = icmp eq i32 %and458, 2
  br i1 %cmp459, label %if.then.461, label %if.end.464

if.then.461:                                      ; preds = %for.end.453
  %272 = load i64, i64* %count, align 8
  %call462 = call i64 @builtin_lisp_symbol(i32 0)
  %call463 = call i64 @unbind_to(i64 %272, i64 %call462)
  store i64 %call463, i64* %retval
  br label %return

if.end.464:                                       ; preds = %for.end.453
  %273 = load i64, i64* %buffer, align 8
  %call465 = call zeroext i1 @BUFFERP(i64 %273)
  br i1 %call465, label %if.then.466, label %if.end.468

if.then.466:                                      ; preds = %if.end.464
  %274 = load i64, i64* %buffer, align 8
  %call467 = call i64 @Fset_buffer(i64 %274)
  br label %if.end.468

if.end.468:                                       ; preds = %if.then.466, %if.end.464
  %arrayidx469 = getelementptr inbounds [3 x i32], [3 x i32]* %callproc_fd, i32 0, i64 2
  %275 = load i32, i32* %arrayidx469, align 4
  store i32 %275, i32* %fd0, align 4
  %276 = load i32, i32* %fd0, align 4
  %cmp470 = icmp sle i32 0, %276
  br i1 %cmp470, label %if.then.472, label %if.end.564

if.then.472:                                      ; preds = %if.end.468
  %call475 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call475, i64* %val473, align 8
  %277 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 35), align 8
  %call476 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp477 = icmp eq i64 %277, %call476
  br i1 %cmp477, label %if.else.480, label %if.then.479

if.then.479:                                      ; preds = %if.then.472
  %278 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 35), align 8
  store i64 %278, i64* %val473, align 8
  br label %if.end.537

if.else.480:                                      ; preds = %if.then.472
  %279 = load i64, i64* %coding_systems, align 8
  %call481 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp482 = icmp eq i64 %279, %call481
  br i1 %cmp482, label %if.then.484, label %if.end.517

if.then.484:                                      ; preds = %if.else.480
  br label %do.body.486

do.body.486:                                      ; preds = %if.then.484
  %280 = load i64, i64* %nargs.addr, align 8
  %add487 = add nsw i64 %280, 1
  %281 = load i64, i64* %sa_avail, align 8
  %div488 = udiv i64 %281, 8
  %div489 = udiv i64 %div488, 1
  %cmp490 = icmp ule i64 %add487, %div489
  br i1 %cmp490, label %if.then.492, label %if.else.498

if.then.492:                                      ; preds = %do.body.486
  %282 = load i64, i64* %nargs.addr, align 8
  %add493 = add nsw i64 %282, 1
  %mul494 = mul i64 8, %add493
  %283 = load i64, i64* %sa_avail, align 8
  %sub495 = sub i64 %283, %mul494
  store i64 %sub495, i64* %sa_avail, align 8
  %284 = load i64, i64* %nargs.addr, align 8
  %add496 = add nsw i64 %284, 1
  %mul497 = mul i64 8, %add496
  %285 = alloca i8, i64 %mul497
  %286 = bitcast i8* %285 to i64*
  store i64* %286, i64** %args2474, align 8
  br label %if.end.501

if.else.498:                                      ; preds = %do.body.486
  %287 = load i64, i64* %nargs.addr, align 8
  %add499 = add nsw i64 %287, 1
  %call500 = call noalias i8* @xnmalloc(i64 %add499, i64 8)
  %288 = bitcast i8* %call500 to i64*
  store i64* %288, i64** %args2474, align 8
  store i8 1, i8* %sa_must_free, align 1
  %289 = load i64*, i64** %args2474, align 8
  %290 = bitcast i64* %289 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %290)
  br label %if.end.501

if.end.501:                                       ; preds = %if.else.498, %if.then.492
  br label %do.end.502

do.end.502:                                       ; preds = %if.end.501
  %call503 = call i64 @builtin_lisp_symbol(i32 234)
  %291 = load i64*, i64** %args2474, align 8
  %arrayidx504 = getelementptr inbounds i64, i64* %291, i64 0
  store i64 %call503, i64* %arrayidx504, align 8
  store i64 0, i64* %i485, align 8
  br label %for.cond.505

for.cond.505:                                     ; preds = %for.inc.512, %do.end.502
  %292 = load i64, i64* %i485, align 8
  %293 = load i64, i64* %nargs.addr, align 8
  %cmp506 = icmp slt i64 %292, %293
  br i1 %cmp506, label %for.body.508, label %for.end.514

for.body.508:                                     ; preds = %for.cond.505
  %294 = load i64, i64* %i485, align 8
  %295 = load i64*, i64** %args.addr, align 8
  %arrayidx509 = getelementptr inbounds i64, i64* %295, i64 %294
  %296 = load i64, i64* %arrayidx509, align 8
  %297 = load i64, i64* %i485, align 8
  %add510 = add nsw i64 %297, 1
  %298 = load i64*, i64** %args2474, align 8
  %arrayidx511 = getelementptr inbounds i64, i64* %298, i64 %add510
  store i64 %296, i64* %arrayidx511, align 8
  br label %for.inc.512

for.inc.512:                                      ; preds = %for.body.508
  %299 = load i64, i64* %i485, align 8
  %inc513 = add nsw i64 %299, 1
  store i64 %inc513, i64* %i485, align 8
  br label %for.cond.505

for.end.514:                                      ; preds = %for.cond.505
  %300 = load i64, i64* %nargs.addr, align 8
  %add515 = add nsw i64 %300, 1
  %301 = load i64*, i64** %args2474, align 8
  %call516 = call i64 @Ffind_operation_coding_system(i64 %add515, i64* %301)
  store i64 %call516, i64* %coding_systems, align 8
  br label %if.end.517

if.end.517:                                       ; preds = %for.end.514, %if.else.480
  %302 = load i64, i64* %coding_systems, align 8
  %and518 = and i64 %302, 7
  %conv519 = trunc i64 %and518 to i32
  %cmp520 = icmp eq i32 %conv519, 3
  br i1 %cmp520, label %if.then.522, label %if.else.525

if.then.522:                                      ; preds = %if.end.517
  %303 = load i64, i64* %coding_systems, align 8
  %sub523 = sub nsw i64 %303, 3
  %304 = inttoptr i64 %sub523 to i8*
  %305 = bitcast i8* %304 to %struct.Lisp_Cons*
  %car524 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %305, i32 0, i32 0
  %306 = load i64, i64* %car524, align 8
  store i64 %306, i64* %val473, align 8
  br label %if.end.536

if.else.525:                                      ; preds = %if.end.517
  %307 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 62), align 8
  %and526 = and i64 %307, 7
  %conv527 = trunc i64 %and526 to i32
  %cmp528 = icmp eq i32 %conv527, 3
  br i1 %cmp528, label %if.then.530, label %if.else.533

if.then.530:                                      ; preds = %if.else.525
  %308 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 62), align 8
  %sub531 = sub nsw i64 %308, 3
  %309 = inttoptr i64 %sub531 to i8*
  %310 = bitcast i8* %309 to %struct.Lisp_Cons*
  %car532 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %310, i32 0, i32 0
  %311 = load i64, i64* %car532, align 8
  store i64 %311, i64* %val473, align 8
  br label %if.end.535

if.else.533:                                      ; preds = %if.else.525
  %call534 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call534, i64* %val473, align 8
  br label %if.end.535

if.end.535:                                       ; preds = %if.else.533, %if.then.530
  br label %if.end.536

if.end.536:                                       ; preds = %if.end.535, %if.then.522
  br label %if.end.537

if.end.537:                                       ; preds = %if.end.536, %if.then.479
  %312 = load i64, i64* %val473, align 8
  %call538 = call i64 @Fcheck_coding_system(i64 %312)
  %313 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %313, i32 0, i32 39
  %314 = load i64, i64* %enable_multibyte_characters_, align 8
  %call539 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp540 = icmp eq i64 %314, %call539
  br i1 %cmp540, label %land.lhs.true.542, label %if.end.548

land.lhs.true.542:                                ; preds = %if.end.537
  %315 = load i64, i64* %val473, align 8
  %call543 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp544 = icmp eq i64 %315, %call543
  br i1 %cmp544, label %if.end.548, label %if.then.546

if.then.546:                                      ; preds = %land.lhs.true.542
  %316 = load i64, i64* %val473, align 8
  %call547 = call i64 @raw_text_coding_system(i64 %316)
  store i64 %call547, i64* %val473, align 8
  br label %if.end.548

if.end.548:                                       ; preds = %if.then.546, %land.lhs.true.542, %if.end.537
  %317 = load i64, i64* %val473, align 8
  call void @setup_coding_system(i64 %317, %struct.coding_system* %process_coding)
  %318 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_549 = getelementptr inbounds %struct.buffer, %struct.buffer* %318, i32 0, i32 39
  %319 = load i64, i64* %enable_multibyte_characters_549, align 8
  %call550 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp551 = icmp eq i64 %319, %call550
  %lnot553 = xor i1 %cmp551, true
  %dst_multibyte554 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 1
  %320 = zext i1 %lnot553 to i32
  %bf.load555 = load i32, i32* %dst_multibyte554, align 8
  %bf.shl556 = shl i32 %320, 20
  %bf.clear557 = and i32 %bf.load555, -1048577
  %bf.set558 = or i32 %bf.clear557, %bf.shl556
  store i32 %bf.set558, i32* %dst_multibyte554, align 8
  %bf.result.cast559 = trunc i32 %320 to i8
  %tobool560 = trunc i8 %bf.result.cast559 to i1
  %src_multibyte561 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 1
  %bf.load562 = load i32, i32* %src_multibyte561, align 8
  %bf.clear563 = and i32 %bf.load562, -524289
  store i32 %bf.clear563, i32* %src_multibyte561, align 8
  br label %if.end.564

if.end.564:                                       ; preds = %if.end.548, %if.end.468
  store i8 1, i8* @immediate_quit, align 1
  br label %do.body.565

do.body.565:                                      ; preds = %if.end.564
  %321 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call566 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp567 = icmp eq i64 %321, %call566
  br i1 %cmp567, label %if.else.574, label %land.lhs.true.569

land.lhs.true.569:                                ; preds = %do.body.565
  %322 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call570 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp571 = icmp eq i64 %322, %call570
  br i1 %cmp571, label %if.then.573, label %if.else.574

if.then.573:                                      ; preds = %land.lhs.true.569
  call void @process_quit_flag()
  br label %if.end.578

if.else.574:                                      ; preds = %land.lhs.true.569, %do.body.565
  %323 = load volatile i8, i8* @pending_signals, align 1
  %tobool575 = trunc i8 %323 to i1
  br i1 %tobool575, label %if.then.576, label %if.end.577

if.then.576:                                      ; preds = %if.else.574
  call void @process_pending_signals()
  br label %if.end.577

if.end.577:                                       ; preds = %if.then.576, %if.else.574
  br label %if.end.578

if.end.578:                                       ; preds = %if.end.577, %if.then.573
  br label %do.end.579

do.end.579:                                       ; preds = %if.end.578
  %324 = load i32, i32* %fd0, align 4
  %cmp580 = icmp sle i32 0, %324
  br i1 %cmp580, label %if.then.582, label %if.end.764

if.then.582:                                      ; preds = %do.end.579
  store i32 16384, i32* %bufsize, align 4
  store i64 0, i64* %total_read, align 8
  store i32 0, i32* %carryover, align 4
  %325 = load i8, i8* %display_p, align 1
  %tobool583 = trunc i8 %325 to i1
  %frombool584 = zext i1 %tobool583 to i8
  store i8 %frombool584, i8* %display_on_the_fly, align 1
  %326 = bitcast %struct.coding_system* %saved_coding to i8*
  %327 = bitcast %struct.coding_system* %process_coding to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %326, i8* %327, i64 616, i32 8, i1 false)
  br label %while.body

while.body:                                       ; preds = %if.then.582, %if.end.688, %do.end.753
  %328 = load i32, i32* %carryover, align 4
  store i32 %328, i32* %nread, align 4
  br label %while.cond.585

while.cond.585:                                   ; preds = %if.end.616, %while.body
  %329 = load i32, i32* %nread, align 4
  %330 = load i32, i32* %bufsize, align 4
  %sub586 = sub nsw i32 %330, 1024
  %cmp587 = icmp slt i32 %329, %sub586
  br i1 %cmp587, label %while.body.589, label %while.end

while.body.589:                                   ; preds = %while.cond.585
  %331 = load i32, i32* %fd0, align 4
  %arraydecay590 = getelementptr inbounds [65536 x i8], [65536 x i8]* %buf, i32 0, i32 0
  %332 = load i32, i32* %nread, align 4
  %idx.ext = sext i32 %332 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay590, i64 %idx.ext
  %333 = load i32, i32* %bufsize, align 4
  %334 = load i32, i32* %nread, align 4
  %sub591 = sub nsw i32 %333, %334
  %conv592 = sext i32 %sub591 to i64
  %call593 = call i64 @emacs_read(i32 %331, i8* %add.ptr, i64 %conv592)
  %conv594 = trunc i64 %call593 to i32
  store i32 %conv594, i32* %this_read, align 4
  %335 = load i32, i32* %this_read, align 4
  %cmp595 = icmp slt i32 %335, 0
  br i1 %cmp595, label %if.then.597, label %if.end.598

if.then.597:                                      ; preds = %while.body.589
  br label %give_up

if.end.598:                                       ; preds = %while.body.589
  %336 = load i32, i32* %this_read, align 4
  %cmp599 = icmp eq i32 %336, 0
  br i1 %cmp599, label %if.then.601, label %if.end.610

if.then.601:                                      ; preds = %if.end.598
  %mode602 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 1
  %bf.load603 = load i32, i32* %mode602, align 8
  %bf.lshr604 = lshr i32 %bf.load603, 14
  %bf.clear605 = and i32 %bf.lshr604, 31
  %or = or i32 %bf.clear605, 1
  %bf.load606 = load i32, i32* %mode602, align 8
  %bf.value = and i32 %or, 31
  %bf.shl607 = shl i32 %bf.value, 14
  %bf.clear608 = and i32 %bf.load606, -507905
  %bf.set609 = or i32 %bf.clear608, %bf.shl607
  store i32 %bf.set609, i32* %mode602, align 8
  br label %while.end

if.end.610:                                       ; preds = %if.end.598
  %337 = load i32, i32* %this_read, align 4
  %338 = load i32, i32* %nread, align 4
  %add611 = add nsw i32 %338, %337
  store i32 %add611, i32* %nread, align 4
  %339 = load i32, i32* %this_read, align 4
  %conv612 = sext i32 %339 to i64
  %340 = load i64, i64* %total_read, align 8
  %add613 = add nsw i64 %340, %conv612
  store i64 %add613, i64* %total_read, align 8
  %341 = load i8, i8* %display_on_the_fly, align 1
  %tobool614 = trunc i8 %341 to i1
  br i1 %tobool614, label %if.then.615, label %if.end.616

if.then.615:                                      ; preds = %if.end.610
  br label %while.end

if.end.616:                                       ; preds = %if.end.610
  br label %while.cond.585

while.end:                                        ; preds = %if.then.615, %if.then.601, %while.cond.585
  store i8 0, i8* @immediate_quit, align 1
  %342 = load i32, i32* %nread, align 4
  %tobool617 = icmp ne i32 %342, 0
  br i1 %tobool617, label %if.else.619, label %if.then.618

if.then.618:                                      ; preds = %while.end
  br label %if.end.713

if.else.619:                                      ; preds = %while.end
  %343 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_620 = getelementptr inbounds %struct.buffer, %struct.buffer* %343, i32 0, i32 39
  %344 = load i64, i64* %enable_multibyte_characters_620, align 8
  %call621 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp622 = icmp eq i64 %344, %call621
  br i1 %cmp622, label %land.lhs.true.624, label %if.else.647

land.lhs.true.624:                                ; preds = %if.else.619
  %dst_multibyte625 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 1
  %bf.load626 = load i32, i32* %dst_multibyte625, align 8
  %bf.lshr627 = lshr i32 %bf.load626, 20
  %bf.clear628 = and i32 %bf.lshr627, 1
  %bf.cast629 = trunc i32 %bf.clear628 to i1
  br i1 %bf.cast629, label %if.else.647, label %lor.lhs.false.631

lor.lhs.false.631:                                ; preds = %land.lhs.true.624
  %common_flags632 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 1
  %bf.load633 = load i32, i32* %common_flags632, align 8
  %bf.clear634 = and i32 %bf.load633, 16383
  %and635 = and i32 %bf.clear634, 1024
  %tobool636 = icmp ne i32 %and635, 0
  br i1 %tobool636, label %if.else.647, label %lor.lhs.false.637

lor.lhs.false.637:                                ; preds = %lor.lhs.false.631
  %common_flags638 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 1
  %bf.load639 = load i32, i32* %common_flags638, align 8
  %bf.clear640 = and i32 %bf.load639, 16383
  %and641 = and i32 %bf.clear640, 4096
  %tobool642 = icmp ne i32 %and641, 0
  br i1 %tobool642, label %if.else.647, label %if.then.643

if.then.643:                                      ; preds = %lor.lhs.false.637
  %arraydecay644 = getelementptr inbounds [65536 x i8], [65536 x i8]* %buf, i32 0, i32 0
  %345 = load i32, i32* %nread, align 4
  %conv645 = sext i32 %345 to i64
  %346 = load i32, i32* %nread, align 4
  %conv646 = sext i32 %346 to i64
  call void @insert_1_both(i8* %arraydecay644, i64 %conv645, i64 %conv646, i1 zeroext false, i1 zeroext true, i1 zeroext false)
  br label %if.end.712

if.else.647:                                      ; preds = %lor.lhs.false.637, %lor.lhs.false.631, %land.lhs.true.624, %if.else.619
  %call648 = call i64 @SPECPDL_INDEX()
  store i64 %call648, i64* %count1, align 8
  %347 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %348 = bitcast %struct.buffer* %347 to i8*
  %call649 = call i64 @make_lisp_ptr(i8* %348, i32 5)
  store i64 %call649, i64* %curbuf, align 8
  %349 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt = getelementptr inbounds %struct.buffer, %struct.buffer* %349, i32 0, i32 75
  %350 = load i64, i64* %pt, align 8
  %add650 = add nsw i64 %350, 0
  %351 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt651 = getelementptr inbounds %struct.buffer, %struct.buffer* %351, i32 0, i32 75
  %352 = load i64, i64* %pt651, align 8
  %add652 = add nsw i64 %352, 0
  call void @prepare_to_modify_buffer(i64 %add650, i64 %add652, i64* null)
  %call653 = call i64 @builtin_lisp_symbol(i32 544)
  %call654 = call i64 @builtin_lisp_symbol(i32 901)
  call void @specbind(i64 %call653, i64 %call654)
  br label %do.body.655

do.body.655:                                      ; preds = %if.else.647
  %arraydecay656 = getelementptr inbounds [65536 x i8], [65536 x i8]* %buf, i32 0, i32 0
  %source = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 17
  store i8* %arraydecay656, i8** %source, align 8
  %353 = load i32, i32* %nread, align 4
  %conv657 = sext i32 %353 to i64
  %src_bytes = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 15
  store i64 %conv657, i64* %src_bytes, align 8
  %src_chars = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 14
  store i64 %conv657, i64* %src_chars, align 8
  %call658 = call i64 @builtin_lisp_symbol(i32 0)
  %354 = load i32, i32* %nread, align 4
  %conv659 = sext i32 %354 to i64
  %355 = load i32, i32* %nread, align 4
  %conv660 = sext i32 %355 to i64
  %356 = load i64, i64* %curbuf, align 8
  call void @decode_coding_object(%struct.coding_system* %process_coding, i64 %call658, i64 0, i64 0, i64 %conv659, i64 %conv660, i64 %356)
  br label %do.end.661

do.end.661:                                       ; preds = %do.body.655
  %357 = load i64, i64* %count1, align 8
  %call662 = call i64 @builtin_lisp_symbol(i32 0)
  %call663 = call i64 @unbind_to(i64 %357, i64 %call662)
  %358 = load i8, i8* %display_on_the_fly, align 1
  %tobool664 = trunc i8 %358 to i1
  br i1 %tobool664, label %land.lhs.true.666, label %if.end.697

land.lhs.true.666:                                ; preds = %do.end.661
  %common_flags667 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %saved_coding, i32 0, i32 1
  %bf.load668 = load i32, i32* %common_flags667, align 8
  %bf.clear669 = and i32 %bf.load668, 16383
  %and670 = and i32 %bf.clear669, 4096
  %tobool671 = icmp ne i32 %and670, 0
  br i1 %tobool671, label %land.lhs.true.672, label %if.end.697

land.lhs.true.672:                                ; preds = %land.lhs.true.666
  %common_flags673 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 1
  %bf.load674 = load i32, i32* %common_flags673, align 8
  %bf.clear675 = and i32 %bf.load674, 16383
  %and676 = and i32 %bf.clear675, 4096
  %tobool677 = icmp ne i32 %and676, 0
  br i1 %tobool677, label %if.end.697, label %if.then.678

if.then.678:                                      ; preds = %land.lhs.true.672
  %produced = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 8
  %359 = load i64, i64* %produced, align 8
  %cmp679 = icmp sgt i64 %359, 0
  br i1 %cmp679, label %if.then.681, label %if.end.688

if.then.681:                                      ; preds = %if.then.678
  %dst_pos = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 18
  %360 = load i64, i64* %dst_pos, align 8
  %dst_pos_byte = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 19
  %361 = load i64, i64* %dst_pos_byte, align 8
  %dst_pos682 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 18
  %362 = load i64, i64* %dst_pos682, align 8
  %produced_char = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 9
  %363 = load i64, i64* %produced_char, align 8
  %add683 = add nsw i64 %362, %363
  %dst_pos_byte684 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 19
  %364 = load i64, i64* %dst_pos_byte684, align 8
  %produced685 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 8
  %365 = load i64, i64* %produced685, align 8
  %add686 = add nsw i64 %364, %365
  %call687 = call i64 @del_range_2(i64 %360, i64 %361, i64 %add683, i64 %add686, i1 zeroext false)
  br label %if.end.688

if.end.688:                                       ; preds = %if.then.681, %if.then.678
  store i8 0, i8* %display_on_the_fly, align 1
  %366 = bitcast %struct.coding_system* %process_coding to i8*
  %367 = bitcast %struct.coding_system* %saved_coding to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %366, i8* %367, i64 616, i32 8, i1 false)
  %368 = load i32, i32* %nread, align 4
  store i32 %368, i32* %carryover, align 4
  %common_flags689 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %saved_coding, i32 0, i32 1
  %bf.load690 = load i32, i32* %common_flags689, align 8
  %bf.clear691 = and i32 %bf.load690, 16383
  %and692 = and i32 %bf.clear691, -4097
  %bf.load693 = load i32, i32* %common_flags689, align 8
  %bf.value694 = and i32 %and692, 16383
  %bf.clear695 = and i32 %bf.load693, -16384
  %bf.set696 = or i32 %bf.clear695, %bf.value694
  store i32 %bf.set696, i32* %common_flags689, align 8
  br label %while.body

if.end.697:                                       ; preds = %land.lhs.true.672, %land.lhs.true.666, %do.end.661
  %369 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %370 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt698 = getelementptr inbounds %struct.buffer, %struct.buffer* %370, i32 0, i32 75
  %371 = load i64, i64* %pt698, align 8
  %add699 = add nsw i64 %371, 0
  %produced_char700 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 9
  %372 = load i64, i64* %produced_char700, align 8
  %add701 = add nsw i64 %add699, %372
  %373 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %pt_byte = getelementptr inbounds %struct.buffer, %struct.buffer* %373, i32 0, i32 76
  %374 = load i64, i64* %pt_byte, align 8
  %add702 = add nsw i64 %374, 0
  %produced703 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 8
  %375 = load i64, i64* %produced703, align 8
  %add704 = add nsw i64 %add702, %375
  call void @temp_set_point_both(%struct.buffer* %369, i64 %add701, i64 %add704)
  %carryover_bytes = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 27
  %376 = load i32, i32* %carryover_bytes, align 4
  store i32 %376, i32* %carryover, align 4
  %377 = load i32, i32* %carryover, align 4
  %cmp705 = icmp sgt i32 %377, 0
  br i1 %cmp705, label %if.then.707, label %if.end.711

if.then.707:                                      ; preds = %if.end.697
  %378 = bitcast [65536 x i8]* %buf to i8*
  %carryover708 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 26
  %379 = bitcast [64 x i8]* %carryover708 to i8*
  %carryover_bytes709 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 27
  %380 = load i32, i32* %carryover_bytes709, align 4
  %conv710 = sext i32 %380 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %378, i8* %379, i64 %conv710, i32 8, i1 false)
  br label %if.end.711

if.end.711:                                       ; preds = %if.then.707, %if.end.697
  br label %if.end.712

if.end.712:                                       ; preds = %if.end.711, %if.then.643
  br label %if.end.713

if.end.713:                                       ; preds = %if.end.712, %if.then.618
  %mode714 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 1
  %bf.load715 = load i32, i32* %mode714, align 8
  %bf.lshr716 = lshr i32 %bf.load715, 14
  %bf.clear717 = and i32 %bf.lshr716, 31
  %and718 = and i32 %bf.clear717, 1
  %tobool719 = icmp ne i32 %and718, 0
  br i1 %tobool719, label %if.then.720, label %if.end.721

if.then.720:                                      ; preds = %if.end.713
  br label %while.end.754

if.end.721:                                       ; preds = %if.end.713
  %381 = load i32, i32* %bufsize, align 4
  %cmp722 = icmp slt i32 %381, 65536
  br i1 %cmp722, label %land.lhs.true.724, label %if.end.735

land.lhs.true.724:                                ; preds = %if.end.721
  %382 = load i64, i64* %total_read, align 8
  %383 = load i32, i32* %bufsize, align 4
  %mul725 = mul nsw i32 32, %383
  %conv726 = sext i32 %mul725 to i64
  %cmp727 = icmp sgt i64 %382, %conv726
  br i1 %cmp727, label %if.then.729, label %if.end.735

if.then.729:                                      ; preds = %land.lhs.true.724
  %384 = load i32, i32* %bufsize, align 4
  %mul730 = mul nsw i32 %384, 2
  store i32 %mul730, i32* %bufsize, align 4
  %cmp731 = icmp sgt i32 %mul730, 65536
  br i1 %cmp731, label %if.then.733, label %if.end.734

if.then.733:                                      ; preds = %if.then.729
  store i32 65536, i32* %bufsize, align 4
  br label %if.end.734

if.end.734:                                       ; preds = %if.then.733, %if.then.729
  br label %if.end.735

if.end.735:                                       ; preds = %if.end.734, %land.lhs.true.724, %if.end.721
  %385 = load i8, i8* %display_p, align 1
  %tobool736 = trunc i8 %385 to i1
  br i1 %tobool736, label %if.then.737, label %if.end.738

if.then.737:                                      ; preds = %if.end.735
  call void @redisplay_preserve_echo_area(i32 1)
  store i8 1, i8* %display_on_the_fly, align 1
  br label %if.end.738

if.end.738:                                       ; preds = %if.then.737, %if.end.735
  store i8 1, i8* @immediate_quit, align 1
  br label %do.body.739

do.body.739:                                      ; preds = %if.end.738
  %386 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call740 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp741 = icmp eq i64 %386, %call740
  br i1 %cmp741, label %if.else.748, label %land.lhs.true.743

land.lhs.true.743:                                ; preds = %do.body.739
  %387 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call744 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp745 = icmp eq i64 %387, %call744
  br i1 %cmp745, label %if.then.747, label %if.else.748

if.then.747:                                      ; preds = %land.lhs.true.743
  call void @process_quit_flag()
  br label %if.end.752

if.else.748:                                      ; preds = %land.lhs.true.743, %do.body.739
  %388 = load volatile i8, i8* @pending_signals, align 1
  %tobool749 = trunc i8 %388 to i1
  br i1 %tobool749, label %if.then.750, label %if.end.751

if.then.750:                                      ; preds = %if.else.748
  call void @process_pending_signals()
  br label %if.end.751

if.end.751:                                       ; preds = %if.then.750, %if.else.748
  br label %if.end.752

if.end.752:                                       ; preds = %if.end.751, %if.then.747
  br label %do.end.753

do.end.753:                                       ; preds = %if.end.752
  br label %while.body

while.end.754:                                    ; preds = %if.then.720
  br label %give_up

give_up:                                          ; preds = %while.end.754, %if.then.597
  %389 = load i64, i64* @Vcoding_system_hash_table, align 8
  %call755 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %389)
  %id756 = getelementptr inbounds %struct.coding_system, %struct.coding_system* %process_coding, i32 0, i32 0
  %390 = load i64, i64* %id756, align 8
  %call757 = call i64 @HASH_KEY(%struct.Lisp_Hash_Table* %call755, i64 %390)
  store i64 %call757, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 155), align 8
  %391 = load i8, i8* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 447), align 1
  %tobool758 = trunc i8 %391 to i1
  br i1 %tobool758, label %if.then.759, label %if.end.763

if.then.759:                                      ; preds = %give_up
  %call760 = call i64 @intern(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.54, i32 0, i32 0))
  %392 = load i64, i64* %total_read, align 8
  %shl = shl i64 %392, 2
  %add761 = add i64 %shl, 2
  %call762 = call i64 @call1(i64 %call760, i64 %add761)
  br label %if.end.763

if.end.763:                                       ; preds = %if.then.759, %give_up
  br label %if.end.764

if.end.764:                                       ; preds = %if.end.763, %do.end.579
  %393 = load i32, i32* %pid, align 4
  %394 = load i32, i32* %fd0, align 4
  %cmp765 = icmp slt i32 %394, 0
  call void @wait_for_termination(i32 %393, i32* %status, i1 zeroext %cmp765)
  store i8 0, i8* @immediate_quit, align 1
  store i32 0, i32* @synch_process_pid, align 4
  br label %do.body.767

do.body.767:                                      ; preds = %if.end.764
  %395 = load i8, i8* %sa_must_free, align 1
  %tobool768 = trunc i8 %395 to i1
  br i1 %tobool768, label %if.then.769, label %if.end.772

if.then.769:                                      ; preds = %do.body.767
  store i8 0, i8* %sa_must_free, align 1
  %396 = load i64, i64* %sa_count, align 8
  %call770 = call i64 @builtin_lisp_symbol(i32 0)
  %call771 = call i64 @unbind_to(i64 %396, i64 %call770)
  br label %if.end.772

if.end.772:                                       ; preds = %if.then.769, %do.body.767
  br label %do.end.773

do.end.773:                                       ; preds = %if.end.772
  %397 = load i64, i64* %count, align 8
  %call774 = call i64 @builtin_lisp_symbol(i32 0)
  %call775 = call i64 @unbind_to(i64 %397, i64 %call774)
  %__in = bitcast %union.anon.2* %.compoundliteral to i32*
  %398 = load i32, i32* %status, align 4
  store i32 %398, i32* %__in, align 4
  %__i = bitcast %union.anon.2* %.compoundliteral to i32*
  %399 = load i32, i32* %__i, align 4
  %and776 = and i32 %399, 127
  %add777 = add nsw i32 %and776, 1
  %conv778 = trunc i32 %add777 to i8
  %conv779 = sext i8 %conv778 to i32
  %shr = ashr i32 %conv779, 1
  %cmp780 = icmp sgt i32 %shr, 0
  br i1 %cmp780, label %if.then.782, label %if.end.794

if.then.782:                                      ; preds = %do.end.773
  call void @synchronize_system_messages_locale()
  %__in784 = bitcast %union.anon.3* %.compoundliteral783 to i32*
  %400 = load i32, i32* %status, align 4
  store i32 %400, i32* %__in784, align 4
  %__i785 = bitcast %union.anon.3* %.compoundliteral783 to i32*
  %401 = load i32, i32* %__i785, align 4
  %and786 = and i32 %401, 127
  %call787 = call i8* @strsignal(i32 %and786) #5
  store i8* %call787, i8** %signame, align 8
  %402 = load i8*, i8** %signame, align 8
  %cmp788 = icmp eq i8* %402, null
  br i1 %cmp788, label %if.then.790, label %if.end.791

if.then.790:                                      ; preds = %if.then.782
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8** %signame, align 8
  br label %if.end.791

if.end.791:                                       ; preds = %if.then.790, %if.then.782
  %403 = load i8*, i8** %signame, align 8
  %call792 = call i64 @build_string(i8* %403)
  %404 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 168), align 8
  %call793 = call i64 @code_convert_string_norecord(i64 %call792, i64 %404, i1 zeroext false)
  store i64 %call793, i64* %retval
  br label %return

if.end.794:                                       ; preds = %do.end.773
  %__in796 = bitcast %union.anon.4* %.compoundliteral795 to i32*
  %405 = load i32, i32* %status, align 4
  store i32 %405, i32* %__in796, align 4
  %__i797 = bitcast %union.anon.4* %.compoundliteral795 to i32*
  %406 = load i32, i32* %__i797, align 4
  %and798 = and i32 %406, 65280
  %shr799 = ashr i32 %and798, 8
  %conv800 = sext i32 %shr799 to i64
  %shl801 = shl i64 %conv800, 2
  %add802 = add i64 %shl801, 2
  store i64 %add802, i64* %retval
  br label %return

return:                                           ; preds = %if.end.794, %if.end.791, %if.then.461
  %407 = load i64, i64* %retval
  ret i64 %407
}

; Function Attrs: nounwind uwtable
define i64 @Fcall_process_region(i64 %nargs, i64* %args) #0 {
entry:
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  %infile = alloca i64, align 8
  %val = alloca i64, align 8
  %count = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %empty_input = alloca i8, align 1
  %fd = alloca i32, align 4
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  %call = call i64 @SPECPDL_INDEX()
  store i64 %call, i64* %count, align 8
  %0 = load i64*, i64** %args.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0
  %1 = load i64, i64* %arrayidx, align 8
  store i64 %1, i64* %start, align 8
  %2 = load i64*, i64** %args.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %2, i64 1
  %3 = load i64, i64* %arrayidx1, align 8
  store i64 %3, i64* %end, align 8
  %4 = load i64, i64* %start, align 8
  %call2 = call zeroext i1 @STRINGP(i64 %4)
  br i1 %call2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %start, align 8
  %call3 = call i64 @SCHARS(i64 %5)
  %cmp = icmp eq i64 %call3, 0
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %empty_input, align 1
  br label %if.end.17

if.else:                                          ; preds = %entry
  %6 = load i64, i64* %start, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %6, %call4
  br i1 %cmp5, label %if.then.6, label %if.else.9

if.then.6:                                        ; preds = %if.else
  %7 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %text = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 73
  %8 = load %struct.buffer_text*, %struct.buffer_text** %text, align 8
  %z = getelementptr inbounds %struct.buffer_text, %struct.buffer_text* %8, i32 0, i32 2
  %9 = load i64, i64* %z, align 8
  %cmp7 = icmp eq i64 1, %9
  %frombool8 = zext i1 %cmp7 to i8
  store i8 %frombool8, i8* %empty_input, align 1
  br label %if.end

if.else.9:                                        ; preds = %if.else
  %10 = load i64*, i64** %args.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %10, i64 0
  %11 = load i64*, i64** %args.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, i64* %11, i64 1
  call void @validate_region(i64* %arrayidx10, i64* %arrayidx11)
  %12 = load i64*, i64** %args.addr, align 8
  %arrayidx12 = getelementptr inbounds i64, i64* %12, i64 0
  %13 = load i64, i64* %arrayidx12, align 8
  store i64 %13, i64* %start, align 8
  %14 = load i64*, i64** %args.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, i64* %14, i64 1
  %15 = load i64, i64* %arrayidx13, align 8
  store i64 %15, i64* %end, align 8
  %16 = load i64, i64* %start, align 8
  %shr = ashr i64 %16, 2
  %17 = load i64, i64* %end, align 8
  %shr14 = ashr i64 %17, 2
  %cmp15 = icmp eq i64 %shr, %shr14
  %frombool16 = zext i1 %cmp15 to i8
  store i8 %frombool16, i8* %empty_input, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.6
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then
  %18 = load i8, i8* %empty_input, align 1
  %tobool = trunc i8 %18 to i1
  br i1 %tobool, label %if.else.20, label %if.then.18

if.then.18:                                       ; preds = %if.end.17
  %19 = load i64, i64* %nargs.addr, align 8
  %20 = load i64*, i64** %args.addr, align 8
  %call19 = call i32 @create_temp_file(i64 %19, i64* %20, i64* %infile)
  store i32 %call19, i32* %fd, align 4
  br label %if.end.27

if.else.20:                                       ; preds = %if.end.17
  %call21 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call21, i64* %infile, align 8
  %call22 = call i32 @emacs_open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 0)
  store i32 %call22, i32* %fd, align 4
  %21 = load i32, i32* %fd, align 4
  %cmp23 = icmp slt i32 %21, 0
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.else.20
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  call void @report_file_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i64 %call25) #9
  unreachable

if.end.26:                                        ; preds = %if.else.20
  %22 = load i32, i32* %fd, align 4
  call void @record_unwind_protect_int(void (i32)* @close_file_unwind, i32 %22)
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.18
  %23 = load i64, i64* %nargs.addr, align 8
  %cmp28 = icmp sgt i64 %23, 3
  br i1 %cmp28, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.end.27
  %24 = load i64*, i64** %args.addr, align 8
  %arrayidx29 = getelementptr inbounds i64, i64* %24, i64 3
  %25 = load i64, i64* %arrayidx29, align 8
  %call30 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp31 = icmp eq i64 %25, %call30
  br i1 %cmp31, label %if.end.34, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true
  %26 = load i64, i64* %start, align 8
  %27 = load i64, i64* %end, align 8
  %call33 = call i64 @Fdelete_region(i64 %26, i64 %27)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %land.lhs.true, %if.end.27
  %28 = load i64, i64* %nargs.addr, align 8
  %cmp35 = icmp sgt i64 %28, 3
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.34
  %29 = load i64*, i64** %args.addr, align 8
  %add.ptr = getelementptr inbounds i64, i64* %29, i64 2
  store i64* %add.ptr, i64** %args.addr, align 8
  %30 = load i64, i64* %nargs.addr, align 8
  %sub = sub nsw i64 %30, 2
  store i64 %sub, i64* %nargs.addr, align 8
  br label %if.end.40

if.else.37:                                       ; preds = %if.end.34
  %31 = load i64*, i64** %args.addr, align 8
  %arrayidx38 = getelementptr inbounds i64, i64* %31, i64 2
  %32 = load i64, i64* %arrayidx38, align 8
  %33 = load i64*, i64** %args.addr, align 8
  %arrayidx39 = getelementptr inbounds i64, i64* %33, i64 0
  store i64 %32, i64* %arrayidx39, align 8
  store i64 2, i64* %nargs.addr, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  %34 = load i64, i64* %infile, align 8
  %35 = load i64*, i64** %args.addr, align 8
  %arrayidx41 = getelementptr inbounds i64, i64* %35, i64 1
  store i64 %34, i64* %arrayidx41, align 8
  %36 = load i64, i64* %nargs.addr, align 8
  %37 = load i64*, i64** %args.addr, align 8
  %38 = load i32, i32* %fd, align 4
  %39 = load i8, i8* %empty_input, align 1
  %tobool42 = trunc i8 %39 to i1
  br i1 %tobool42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.40
  br label %cond.end

cond.false:                                       ; preds = %if.end.40
  %40 = load i64, i64* %count, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %40, %cond.false ]
  %call43 = call i64 @call_process(i64 %36, i64* %37, i32 %38, i64 %cond)
  store i64 %call43, i64* %val, align 8
  %41 = load i64, i64* %count, align 8
  %42 = load i64, i64* %val, align 8
  %call44 = call i64 @unbind_to(i64 %41, i64 %42)
  ret i64 %call44
}

declare zeroext i1 @STRINGP(i64) #1

declare i64 @SCHARS(i64) #1

declare void @validate_region(i64*, i64*) #1

; Function Attrs: nounwind uwtable
define internal i32 @create_temp_file(i64 %nargs, i64* %args, i64* %filename_string_ptr) #0 {
entry:
  %nargs.addr = alloca i64, align 8
  %args.addr = alloca i64*, align 8
  %filename_string_ptr.addr = alloca i64*, align 8
  %fd = alloca i32, align 4
  %filename_string = alloca i64, align 8
  %val = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %tmpdir = alloca i64, align 8
  %outf = alloca i8*, align 8
  %pattern = alloca i64, align 8
  %tempfile = alloca i8*, align 8
  %count = alloca i64, align 8
  %coding_systems = alloca i64, align 8
  %args2 = alloca i64*, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %count1 = alloca i64, align 8
  store i64 %nargs, i64* %nargs.addr, align 8
  store i64* %args, i64** %args.addr, align 8
  store i64* %filename_string_ptr, i64** %filename_string_ptr.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 289), align 8
  %call = call zeroext i1 @STRINGP(i64 %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 289), align 8
  store i64 %1, i64* %tmpdir, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0)) #5
  store i8* %call1, i8** %outf, align 8
  %2 = load i8*, i8** %outf, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %3 = load i8*, i8** %outf, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %3, %cond.true ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), %cond.false ]
  %call2 = call i64 @build_string(i8* %cond)
  store i64 %call2, i64* %tmpdir, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %4 = load i64, i64* @Vtemp_file_name_pattern, align 8
  %5 = load i64, i64* %tmpdir, align 8
  %call3 = call i64 @Fexpand_file_name(i64 %4, i64 %5)
  store i64 %call3, i64* %pattern, align 8
  %6 = load i64, i64* %pattern, align 8
  %call4 = call i64 @encode_file_name(i64 %6)
  %call5 = call i64 @Fcopy_sequence(i64 %call4)
  store i64 %call5, i64* %filename_string, align 8
  %7 = load i64, i64* %filename_string, align 8
  %call6 = call i8* @SSDATA(i64 %7)
  store i8* %call6, i8** %tempfile, align 8
  %call7 = call i64 @SPECPDL_INDEX()
  store i64 %call7, i64* %count, align 8
  call void @record_unwind_protect_nothing()
  %8 = load i8*, i8** %tempfile, align 8
  %call8 = call i32 @mkostemp(i8* %8, i32 524288)
  store i32 %call8, i32* %fd, align 4
  %9 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %10 = load i64, i64* %pattern, align 8
  call void @report_file_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.60, i32 0, i32 0), i64 %10) #9
  unreachable

if.end.10:                                        ; preds = %if.end
  %11 = load i64, i64* %count, align 8
  %12 = load i64, i64* %filename_string, align 8
  call void @set_unwind_protect(i64 %11, void (i64)* @delete_temp_file, i64 %12)
  %13 = load i32, i32* %fd, align 4
  call void @record_unwind_protect_int(void (i32)* @close_file_unwind, i32 %13)
  %14 = load i64*, i64** %args.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %14, i64 0
  %15 = load i64, i64* %arrayidx, align 8
  store i64 %15, i64* %start, align 8
  %16 = load i64*, i64** %args.addr, align 8
  %arrayidx11 = getelementptr inbounds i64, i64* %16, i64 1
  %17 = load i64, i64* %arrayidx11, align 8
  store i64 %17, i64* %end, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 36), align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp13 = icmp eq i64 %18, %call12
  br i1 %cmp13, label %if.else.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.10
  %19 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 36), align 8
  store i64 %19, i64* %val, align 8
  br label %if.end.53

if.else.15:                                       ; preds = %if.end.10
  %20 = load %struct.buffer*, %struct.buffer** @current_buffer, align 8
  %enable_multibyte_characters_ = getelementptr inbounds %struct.buffer, %struct.buffer* %20, i32 0, i32 39
  %21 = load i64, i64* %enable_multibyte_characters_, align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp17 = icmp eq i64 %21, %call16
  br i1 %cmp17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.else.15
  %call19 = call i64 @builtin_lisp_symbol(i32 788)
  store i64 %call19, i64* %val, align 8
  br label %if.end.52

if.else.20:                                       ; preds = %if.else.15
  store i64 16384, i64* %sa_avail, align 8
  %call21 = call i64 @SPECPDL_INDEX()
  store i64 %call21, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  br label %do.body

do.body:                                          ; preds = %if.else.20
  %22 = load i64, i64* %nargs.addr, align 8
  %add = add nsw i64 %22, 1
  %23 = load i64, i64* %sa_avail, align 8
  %div = udiv i64 %23, 8
  %div22 = udiv i64 %div, 1
  %cmp23 = icmp ule i64 %add, %div22
  br i1 %cmp23, label %if.then.24, label %if.else.28

if.then.24:                                       ; preds = %do.body
  %24 = load i64, i64* %nargs.addr, align 8
  %add25 = add nsw i64 %24, 1
  %mul = mul i64 8, %add25
  %25 = load i64, i64* %sa_avail, align 8
  %sub = sub i64 %25, %mul
  store i64 %sub, i64* %sa_avail, align 8
  %26 = load i64, i64* %nargs.addr, align 8
  %add26 = add nsw i64 %26, 1
  %mul27 = mul i64 8, %add26
  %27 = alloca i8, i64 %mul27
  %28 = bitcast i8* %27 to i64*
  store i64* %28, i64** %args2, align 8
  br label %if.end.31

if.else.28:                                       ; preds = %do.body
  %29 = load i64, i64* %nargs.addr, align 8
  %add29 = add nsw i64 %29, 1
  %call30 = call noalias i8* @xnmalloc(i64 %add29, i64 8)
  %30 = bitcast i8* %call30 to i64*
  store i64* %30, i64** %args2, align 8
  store i8 1, i8* %sa_must_free, align 1
  %31 = load i64*, i64** %args2, align 8
  %32 = bitcast i64* %31 to i8*
  call void @record_unwind_protect_ptr(void (i8*)* @xfree, i8* %32)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.24
  br label %do.end

do.end:                                           ; preds = %if.end.31
  %call32 = call i64 @builtin_lisp_symbol(i32 235)
  %33 = load i64*, i64** %args2, align 8
  %arrayidx33 = getelementptr inbounds i64, i64* %33, i64 0
  store i64 %call32, i64* %arrayidx33, align 8
  %34 = load i64*, i64** %args2, align 8
  %add.ptr = getelementptr inbounds i64, i64* %34, i64 1
  %35 = bitcast i64* %add.ptr to i8*
  %36 = load i64*, i64** %args.addr, align 8
  %37 = bitcast i64* %36 to i8*
  %38 = load i64, i64* %nargs.addr, align 8
  %mul34 = mul i64 %38, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %37, i64 %mul34, i32 8, i1 false)
  %39 = load i64, i64* %nargs.addr, align 8
  %add35 = add nsw i64 %39, 1
  %40 = load i64*, i64** %args2, align 8
  %call36 = call i64 @Ffind_operation_coding_system(i64 %add35, i64* %40)
  store i64 %call36, i64* %coding_systems, align 8
  %41 = load i64, i64* %coding_systems, align 8
  %and = and i64 %41, 7
  %conv = trunc i64 %and to i32
  %cmp37 = icmp eq i32 %conv, 3
  br i1 %cmp37, label %cond.true.39, label %cond.false.41

cond.true.39:                                     ; preds = %do.end
  %42 = load i64, i64* %coding_systems, align 8
  %sub40 = sub nsw i64 %42, 3
  %43 = inttoptr i64 %sub40 to i8*
  %44 = bitcast i8* %43 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %44, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %45 = load i64, i64* %cdr, align 8
  br label %cond.end.43

cond.false.41:                                    ; preds = %do.end
  %call42 = call i64 @builtin_lisp_symbol(i32 0)
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.41, %cond.true.39
  %cond44 = phi i64 [ %45, %cond.true.39 ], [ %call42, %cond.false.41 ]
  store i64 %cond44, i64* %val, align 8
  br label %do.body.45

do.body.45:                                       ; preds = %cond.end.43
  %46 = load i8, i8* %sa_must_free, align 1
  %tobool46 = trunc i8 %46 to i1
  br i1 %tobool46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %do.body.45
  store i8 0, i8* %sa_must_free, align 1
  %47 = load i64, i64* %sa_count, align 8
  %call48 = call i64 @builtin_lisp_symbol(i32 0)
  %call49 = call i64 @unbind_to(i64 %47, i64 %call48)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %do.body.45
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  br label %if.end.52

if.end.52:                                        ; preds = %do.end.51, %if.then.18
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.14
  %48 = load i64, i64* %val, align 8
  %call54 = call i64 @complement_process_encoding_system(i64 %48)
  store i64 %call54, i64* %val, align 8
  %call55 = call i64 @SPECPDL_INDEX()
  store i64 %call55, i64* %count1, align 8
  %call56 = call i64 @intern(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i32 0, i32 0))
  %49 = load i64, i64* %val, align 8
  call void @specbind(i64 %call56, i64 %49)
  %call57 = call i64 @builtin_lisp_symbol(i32 419)
  %call58 = call i64 @builtin_lisp_symbol(i32 0)
  call void @specbind(i64 %call57, i64 %call58)
  %50 = load i64, i64* %start, align 8
  %51 = load i64, i64* %end, align 8
  %52 = load i64, i64* %filename_string, align 8
  %call59 = call i64 @builtin_lisp_symbol(i32 0)
  %call60 = call i64 @builtin_lisp_symbol(i32 598)
  %call61 = call i64 @builtin_lisp_symbol(i32 0)
  %call62 = call i64 @builtin_lisp_symbol(i32 0)
  %53 = load i32, i32* %fd, align 4
  %call63 = call i64 @write_region(i64 %50, i64 %51, i64 %52, i64 %call59, i64 %call60, i64 %call61, i64 %call62, i32 %53)
  %54 = load i64, i64* %count1, align 8
  %call64 = call i64 @builtin_lisp_symbol(i32 0)
  %call65 = call i64 @unbind_to(i64 %54, i64 %call64)
  %55 = load i32, i32* %fd, align 4
  %call66 = call i64 @lseek(i32 %55, i64 0, i32 0) #5
  %cmp67 = icmp slt i64 %call66, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.53
  %56 = load i64, i64* %filename_string, align 8
  call void @report_file_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.62, i32 0, i32 0), i64 %56) #9
  unreachable

if.end.70:                                        ; preds = %if.end.53
  %57 = load i64, i64* %filename_string, align 8
  %58 = load i64*, i64** %filename_string_ptr.addr, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i32, i32* %fd, align 4
  ret i32 %59
}

declare i64 @Fdelete_region(i64, i64) #1

; Function Attrs: noreturn nounwind uwtable
define i32 @child_setup(i32 %in, i32 %out, i32 %err, i8** %new_argv, i1 zeroext %set_pgrp, i64 %current_dir) #4 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca i32, align 4
  %out.addr = alloca i32, align 4
  %err.addr = alloca i32, align 4
  %new_argv.addr = alloca i8**, align 8
  %set_pgrp.addr = alloca i8, align 1
  %current_dir.addr = alloca i64, align 8
  %env = alloca i8**, align 8
  %pwd_var = alloca i8*, align 8
  %pid = alloca i32, align 4
  %temp = alloca i8*, align 8
  %i = alloca i64, align 8
  %tem = alloca i64, align 8
  %new_env = alloca i8**, align 8
  %p = alloca i8**, align 8
  %q = alloca i8**, align 8
  %new_length = alloca i32, align 4
  %display = alloca i64, align 8
  %tmp = alloca i64, align 8
  %vdata = alloca i8*, align 8
  %oin = alloca i32, align 4
  %oout = alloca i32, align 4
  store i32 %in, i32* %in.addr, align 4
  store i32 %out, i32* %out.addr, align 4
  store i32 %err, i32* %err.addr, align 4
  store i8** %new_argv, i8*** %new_argv.addr, align 8
  %frombool = zext i1 %set_pgrp to i8
  store i8 %frombool, i8* %set_pgrp.addr, align 1
  store i64 %current_dir, i64* %current_dir.addr, align 8
  %call = call i32 @getpid() #5
  store i32 %call, i32* %pid, align 4
  %0 = load i64, i64* %current_dir.addr, align 8
  %call1 = call i64 @SBYTES(i64 %0)
  store i64 %call1, i64* %i, align 8
  %1 = load i64, i64* %i, align 8
  %cmp = icmp slt i64 16379, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %new_argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx, align 8
  call void @exec_failed(i8* %3, i32 12) #9
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %i, align 8
  %add = add nsw i64 %4, 5
  %5 = alloca i8, i64 %add
  store i8* %5, i8** %pwd_var, align 8
  %6 = load i8*, i8** %pwd_var, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 4
  store i8* %add.ptr, i8** %temp, align 8
  %7 = load i8*, i8** %pwd_var, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i64 4, i32 1, i1 false)
  %8 = load i8*, i8** %temp, align 8
  %9 = load i64, i64* %current_dir.addr, align 8
  %call2 = call i8* @lispstpcpy(i8* %8, i64 %9)
  %10 = load i8*, i8** %temp, align 8
  %call3 = call i32 @chdir(i8* %10) #5
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  call void @_exit(i32 125) #9
  unreachable

if.end.6:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.6
  %11 = load i64, i64* %i, align 8
  %cmp7 = icmp sgt i64 %11, 2
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %12 = load i64, i64* %i, align 8
  %sub = sub nsw i64 %12, 1
  %13 = load i8*, i8** %temp, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i64 %sub
  %14 = load i8, i8* %arrayidx8, align 1
  %conv = sext i8 %14 to i32
  %cmp9 = icmp eq i32 %conv, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %cmp9, %land.rhs ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %16 = load i64, i64* %i, align 8
  %dec = add nsw i64 %16, -1
  store i64 %dec, i64* %i, align 8
  %17 = load i8*, i8** %temp, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %17, i64 %dec
  store i8 0, i8* %arrayidx11, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call12, i64* %display, align 8
  store i32 0, i32* %new_length, align 4
  %18 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 239), align 8
  store i64 %18, i64* %tem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %19 = load i64, i64* %tem, align 8
  %and = and i64 %19, 7
  %conv13 = trunc i64 %and to i32
  %cmp14 = icmp eq i32 %conv13, 3
  br i1 %cmp14, label %land.rhs.16, label %land.end.20

land.rhs.16:                                      ; preds = %for.cond
  %20 = load i64, i64* %tem, align 8
  %sub17 = sub nsw i64 %20, 3
  %21 = inttoptr i64 %sub17 to i8*
  %22 = bitcast i8* %21 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %22, i32 0, i32 0
  %23 = load i64, i64* %car, align 8
  %call18 = call zeroext i1 @STRINGP(i64 %23)
  br label %land.end.20

land.end.20:                                      ; preds = %land.rhs.16, %for.cond
  %24 = phi i1 [ false, %for.cond ], [ %call18, %land.rhs.16 ]
  br i1 %24, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.20
  %25 = load i64, i64* %tem, align 8
  %sub21 = sub nsw i64 %25, 3
  %26 = inttoptr i64 %sub21 to i8*
  %27 = bitcast i8* %26 to %struct.Lisp_Cons*
  %car22 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %27, i32 0, i32 0
  %28 = load i64, i64* %car22, align 8
  %call23 = call i8* @SSDATA(i64 %28)
  %call24 = call i32 @strncmp(i8* %call23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i64 7) #12
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %for.body
  %29 = load i64, i64* %tem, align 8
  %sub27 = sub nsw i64 %29, 3
  %30 = inttoptr i64 %sub27 to i8*
  %31 = bitcast i8* %30 to %struct.Lisp_Cons*
  %car28 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %31, i32 0, i32 0
  %32 = load i64, i64* %car28, align 8
  %call29 = call i8* @SDATA(i64 %32)
  %arrayidx30 = getelementptr inbounds i8, i8* %call29, i64 7
  %33 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %33 to i32
  %cmp32 = icmp eq i32 %conv31, 0
  br i1 %cmp32, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %34 = load i64, i64* %tem, align 8
  %sub34 = sub nsw i64 %34, 3
  %35 = inttoptr i64 %sub34 to i8*
  %36 = bitcast i8* %35 to %struct.Lisp_Cons*
  %car35 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %36, i32 0, i32 0
  %37 = load i64, i64* %car35, align 8
  %call36 = call i8* @SDATA(i64 %37)
  %arrayidx37 = getelementptr inbounds i8, i8* %call36, i64 7
  %38 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %38 to i32
  %cmp39 = icmp eq i32 %conv38, 61
  br i1 %cmp39, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %call42 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call42, i64* %display, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %lor.lhs.false, %for.body
  %39 = load i32, i32* %new_length, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %new_length, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %40 = load i64, i64* %tem, align 8
  %sub44 = sub nsw i64 %40, 3
  %41 = inttoptr i64 %sub44 to i8*
  %42 = bitcast i8* %41 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %42, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %43 = load i64, i64* %cdr, align 8
  store i64 %43, i64* %tem, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end.20
  %44 = load i64, i64* %display, align 8
  %call45 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp46 = icmp eq i64 %44, %call45
  br i1 %cmp46, label %if.then.48, label %if.end.65

if.then.48:                                       ; preds = %for.end
  %45 = load i64, i64* @selected_frame, align 8
  %call49 = call i64 @builtin_lisp_symbol(i32 344)
  %call50 = call i64 @Fframe_parameter(i64 %45, i64 %call49)
  store i64 %call50, i64* %tmp, align 8
  %46 = load i64, i64* %tmp, align 8
  %call51 = call zeroext i1 @STRINGP(i64 %46)
  br i1 %call51, label %if.end.60, label %land.lhs.true.52

land.lhs.true.52:                                 ; preds = %if.then.48
  %47 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 141), align 8
  %and53 = and i64 %47, 7
  %conv54 = trunc i64 %and53 to i32
  %cmp55 = icmp eq i32 %conv54, 3
  br i1 %cmp55, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %land.lhs.true.52
  %call58 = call i64 @build_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  %48 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 141), align 8
  %call59 = call i64 @Fgetenv_internal(i64 %call58, i64 %48)
  store i64 %call59, i64* %tmp, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %land.lhs.true.52, %if.then.48
  %49 = load i64, i64* %tmp, align 8
  %call61 = call zeroext i1 @STRINGP(i64 %49)
  br i1 %call61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.60
  %50 = load i64, i64* %tmp, align 8
  store i64 %50, i64* %display, align 8
  %51 = load i32, i32* %new_length, align 4
  %inc63 = add nsw i32 %51, 1
  store i32 %inc63, i32* %new_length, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.60
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %for.end
  %52 = load i32, i32* %new_length, align 4
  %conv66 = sext i32 %52 to i64
  %cmp67 = icmp ult i64 2046, %conv66
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.end.65
  %53 = load i8**, i8*** %new_argv.addr, align 8
  %arrayidx70 = getelementptr inbounds i8*, i8** %53, i64 0
  %54 = load i8*, i8** %arrayidx70, align 8
  call void @exec_failed(i8* %54, i32 12) #9
  unreachable

if.end.71:                                        ; preds = %if.end.65
  %55 = load i32, i32* %new_length, align 4
  %add72 = add nsw i32 %55, 2
  %conv73 = sext i32 %add72 to i64
  %mul = mul i64 %conv73, 8
  %56 = alloca i8, i64 %mul
  %57 = bitcast i8* %56 to i8**
  store i8** %57, i8*** %new_env, align 8
  store i8** %57, i8*** %env, align 8
  %call74 = call i8* @egetenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
  %tobool = icmp ne i8* %call74, null
  br i1 %tobool, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.71
  %58 = load i8*, i8** %pwd_var, align 8
  %59 = load i8**, i8*** %new_env, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %incdec.ptr, i8*** %new_env, align 8
  store i8* %58, i8** %59, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.end.71
  %60 = load i64, i64* %display, align 8
  %call77 = call zeroext i1 @STRINGP(i64 %60)
  br i1 %call77, label %if.then.78, label %if.end.91

if.then.78:                                       ; preds = %if.end.76
  %61 = load i64, i64* %display, align 8
  %call79 = call i64 @SBYTES(i64 %61)
  %cmp80 = icmp ult i64 16375, %call79
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.then.78
  %62 = load i8**, i8*** %new_argv.addr, align 8
  %arrayidx83 = getelementptr inbounds i8*, i8** %62, i64 0
  %63 = load i8*, i8** %arrayidx83, align 8
  call void @exec_failed(i8* %63, i32 12) #9
  unreachable

if.end.84:                                        ; preds = %if.then.78
  %64 = load i64, i64* %display, align 8
  %call86 = call i64 @SBYTES(i64 %64)
  %add87 = add i64 9, %call86
  %65 = alloca i8, i64 %add87
  store i8* %65, i8** %vdata, align 8
  %66 = load i8*, i8** %vdata, align 8
  %call88 = call i8* @stpcpy(i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0)) #5
  %67 = load i64, i64* %display, align 8
  %call89 = call i8* @lispstpcpy(i8* %call88, i64 %67)
  %68 = load i8**, i8*** %env, align 8
  %69 = load i8**, i8*** %new_env, align 8
  %70 = load i8*, i8** %vdata, align 8
  %call90 = call i8** @add_env(i8** %68, i8** %69, i8* %70)
  store i8** %call90, i8*** %new_env, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.84, %if.end.76
  %71 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 239), align 8
  store i64 %71, i64* %tem, align 8
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.108, %if.end.91
  %72 = load i64, i64* %tem, align 8
  %and93 = and i64 %72, 7
  %conv94 = trunc i64 %and93 to i32
  %cmp95 = icmp eq i32 %conv94, 3
  br i1 %cmp95, label %land.rhs.97, label %land.end.102

land.rhs.97:                                      ; preds = %for.cond.92
  %73 = load i64, i64* %tem, align 8
  %sub98 = sub nsw i64 %73, 3
  %74 = inttoptr i64 %sub98 to i8*
  %75 = bitcast i8* %74 to %struct.Lisp_Cons*
  %car99 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %75, i32 0, i32 0
  %76 = load i64, i64* %car99, align 8
  %call100 = call zeroext i1 @STRINGP(i64 %76)
  br label %land.end.102

land.end.102:                                     ; preds = %land.rhs.97, %for.cond.92
  %77 = phi i1 [ false, %for.cond.92 ], [ %call100, %land.rhs.97 ]
  br i1 %77, label %for.body.103, label %for.end.112

for.body.103:                                     ; preds = %land.end.102
  %78 = load i8**, i8*** %env, align 8
  %79 = load i8**, i8*** %new_env, align 8
  %80 = load i64, i64* %tem, align 8
  %sub104 = sub nsw i64 %80, 3
  %81 = inttoptr i64 %sub104 to i8*
  %82 = bitcast i8* %81 to %struct.Lisp_Cons*
  %car105 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %82, i32 0, i32 0
  %83 = load i64, i64* %car105, align 8
  %call106 = call i8* @SSDATA(i64 %83)
  %call107 = call i8** @add_env(i8** %78, i8** %79, i8* %call106)
  store i8** %call107, i8*** %new_env, align 8
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.body.103
  %84 = load i64, i64* %tem, align 8
  %sub109 = sub nsw i64 %84, 3
  %85 = inttoptr i64 %sub109 to i8*
  %86 = bitcast i8* %85 to %struct.Lisp_Cons*
  %u110 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %86, i32 0, i32 1
  %cdr111 = bitcast %union.anon* %u110 to i64*
  %87 = load i64, i64* %cdr111, align 8
  store i64 %87, i64* %tem, align 8
  br label %for.cond.92

for.end.112:                                      ; preds = %land.end.102
  %88 = load i8**, i8*** %new_env, align 8
  store i8* null, i8** %88, align 8
  %89 = load i8**, i8*** %env, align 8
  store i8** %89, i8*** %q, align 8
  store i8** %89, i8*** %p, align 8
  br label %while.cond.113

while.cond.113:                                   ; preds = %if.end.133, %for.end.112
  %90 = load i8**, i8*** %p, align 8
  %91 = load i8*, i8** %90, align 8
  %cmp114 = icmp ne i8* %91, null
  br i1 %cmp114, label %while.body.116, label %while.end.134

while.body.116:                                   ; preds = %while.cond.113
  br label %while.cond.117

while.cond.117:                                   ; preds = %while.body.125, %while.body.116
  %92 = load i8**, i8*** %q, align 8
  %93 = load i8*, i8** %92, align 8
  %cmp118 = icmp ne i8* %93, null
  br i1 %cmp118, label %land.rhs.120, label %land.end.124

land.rhs.120:                                     ; preds = %while.cond.117
  %94 = load i8**, i8*** %q, align 8
  %95 = load i8*, i8** %94, align 8
  %call121 = call i8* @strchr(i8* %95, i32 61) #12
  %cmp122 = icmp eq i8* %call121, null
  br label %land.end.124

land.end.124:                                     ; preds = %land.rhs.120, %while.cond.117
  %96 = phi i1 [ false, %while.cond.117 ], [ %cmp122, %land.rhs.120 ]
  br i1 %96, label %while.body.125, label %while.end.127

while.body.125:                                   ; preds = %land.end.124
  %97 = load i8**, i8*** %q, align 8
  %incdec.ptr126 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %incdec.ptr126, i8*** %q, align 8
  br label %while.cond.117

while.end.127:                                    ; preds = %land.end.124
  %98 = load i8**, i8*** %q, align 8
  %incdec.ptr128 = getelementptr inbounds i8*, i8** %98, i32 1
  store i8** %incdec.ptr128, i8*** %q, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = load i8**, i8*** %p, align 8
  store i8* %99, i8** %100, align 8
  %101 = load i8**, i8*** %p, align 8
  %102 = load i8*, i8** %101, align 8
  %cmp129 = icmp ne i8* %102, null
  br i1 %cmp129, label %if.then.131, label %if.end.133

if.then.131:                                      ; preds = %while.end.127
  %103 = load i8**, i8*** %p, align 8
  %incdec.ptr132 = getelementptr inbounds i8*, i8** %103, i32 1
  store i8** %incdec.ptr132, i8*** %p, align 8
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.131, %while.end.127
  br label %while.cond.113

while.end.134:                                    ; preds = %while.cond.113
  %104 = load i32, i32* %in.addr, align 4
  store i32 %104, i32* %oin, align 4
  %105 = load i32, i32* %out.addr, align 4
  store i32 %105, i32* %oout, align 4
  %106 = load i32, i32* %in.addr, align 4
  %call137 = call i32 @relocate_fd(i32 %106, i32 3)
  store i32 %call137, i32* %in.addr, align 4
  %107 = load i32, i32* %out.addr, align 4
  %108 = load i32, i32* %oin, align 4
  %cmp138 = icmp eq i32 %107, %108
  br i1 %cmp138, label %if.then.140, label %if.else

if.then.140:                                      ; preds = %while.end.134
  %109 = load i32, i32* %in.addr, align 4
  store i32 %109, i32* %out.addr, align 4
  br label %if.end.142

if.else:                                          ; preds = %while.end.134
  %110 = load i32, i32* %out.addr, align 4
  %call141 = call i32 @relocate_fd(i32 %110, i32 3)
  store i32 %call141, i32* %out.addr, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.else, %if.then.140
  %111 = load i32, i32* %err.addr, align 4
  %112 = load i32, i32* %oin, align 4
  %cmp143 = icmp eq i32 %111, %112
  br i1 %cmp143, label %if.then.145, label %if.else.146

if.then.145:                                      ; preds = %if.end.142
  %113 = load i32, i32* %in.addr, align 4
  store i32 %113, i32* %err.addr, align 4
  br label %if.end.153

if.else.146:                                      ; preds = %if.end.142
  %114 = load i32, i32* %err.addr, align 4
  %115 = load i32, i32* %oout, align 4
  %cmp147 = icmp eq i32 %114, %115
  br i1 %cmp147, label %if.then.149, label %if.else.150

if.then.149:                                      ; preds = %if.else.146
  %116 = load i32, i32* %out.addr, align 4
  store i32 %116, i32* %err.addr, align 4
  br label %if.end.152

if.else.150:                                      ; preds = %if.else.146
  %117 = load i32, i32* %err.addr, align 4
  %call151 = call i32 @relocate_fd(i32 %117, i32 3)
  store i32 %call151, i32* %err.addr, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.150, %if.then.149
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.145
  %118 = load i32, i32* %in.addr, align 4
  %call154 = call i32 @dup2(i32 %118, i32 0) #5
  %119 = load i32, i32* %out.addr, align 4
  %call155 = call i32 @dup2(i32 %119, i32 1) #5
  %120 = load i32, i32* %err.addr, align 4
  %call156 = call i32 @dup2(i32 %120, i32 2) #5
  %call157 = call i32 @setpgid(i32 0, i32 0) #5
  %121 = load i32, i32* %pid, align 4
  %call158 = call i32 @tcsetpgrp(i32 0, i32 %121) #5
  %122 = load i8**, i8*** %new_argv.addr, align 8
  %arrayidx159 = getelementptr inbounds i8*, i8** %122, i64 0
  %123 = load i8*, i8** %arrayidx159, align 8
  %124 = load i8**, i8*** %new_argv.addr, align 8
  %125 = load i8**, i8*** %env, align 8
  %call160 = call i32 @execve(i8* %123, i8** %124, i8** %125) #5
  %126 = load i8**, i8*** %new_argv.addr, align 8
  %arrayidx161 = getelementptr inbounds i8*, i8** %126, i64 0
  %127 = load i8*, i8** %arrayidx161, align 8
  %call162 = call i32* @__errno_location() #10
  %128 = load i32, i32* %call162, align 4
  call void @exec_failed(i8* %127, i32 %128) #9
  unreachable

return:                                           ; No predecessors!
  %129 = load i32, i32* %retval
  ret i32 %129
}

; Function Attrs: nounwind
declare i32 @getpid() #3

declare i64 @SBYTES(i64) #1

; Function Attrs: noreturn nounwind uwtable
define internal void @exec_failed(i8* %name, i32 %err) #4 {
entry:
  %name.addr = alloca i8*, align 8
  %err.addr = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %err, i32* %err.addr, align 4
  %call = call i32 (i32, i32, ...) @rpl_fcntl(i32 2, i32 4, i32 2048)
  %0 = load i32, i32* %err.addr, align 4
  %call1 = call i32* @__errno_location() #10
  store i32 %0, i32* %call1, align 4
  %1 = load i8*, i8** %name.addr, align 8
  call void @emacs_perror(i8* %1)
  %2 = load i32, i32* %err.addr, align 4
  %cmp = icmp eq i32 %2, 2
  %cond = select i1 %cmp, i32 127, i32 126
  call void @_exit(i32 %cond) #9
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i8* @lispstpcpy(i8*, i64) #1

; Function Attrs: nounwind
declare i32 @chdir(i8*) #3

; Function Attrs: noreturn
declare void @_exit(i32) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #6

declare i8* @SDATA(i64) #1

declare i64 @Fframe_parameter(i64, i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fgetenv_internal(i64 %variable, i64 %env) #0 {
entry:
  %retval = alloca i64, align 8
  %variable.addr = alloca i64, align 8
  %env.addr = alloca i64, align 8
  %value = alloca i8*, align 8
  %valuelen = alloca i64, align 8
  store i64 %variable, i64* %variable.addr, align 8
  store i64 %env, i64* %env.addr, align 8
  %0 = load i64, i64* %variable.addr, align 8
  call void @CHECK_STRING(i64 %0)
  %1 = load i64, i64* %env.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then, label %if.else.8

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %variable.addr, align 8
  %call = call i8* @SSDATA(i64 %2)
  %3 = load i64, i64* %variable.addr, align 8
  %call2 = call i64 @SBYTES(i64 %3)
  %4 = load i64, i64* %env.addr, align 8
  %call3 = call zeroext i1 @getenv_internal_1(i8* %call, i64 %call2, i8** %value, i64* %valuelen, i64 %4)
  br i1 %call3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %5 = load i8*, i8** %value, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.4
  %6 = load i8*, i8** %value, align 8
  %7 = load i64, i64* %valuelen, align 8
  %call5 = call i64 @make_string(i8* %6, i64 %7)
  br label %cond.end

cond.false:                                       ; preds = %if.then.4
  %call6 = call i64 @builtin_lisp_symbol(i32 901)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call5, %cond.true ], [ %call6, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call7, i64* %retval
  br label %return

if.else.8:                                        ; preds = %entry
  %8 = load i64, i64* %variable.addr, align 8
  %call9 = call i8* @SSDATA(i64 %8)
  %9 = load i64, i64* %variable.addr, align 8
  %call10 = call i64 @SBYTES(i64 %9)
  %10 = load i64, i64* %env.addr, align 8
  %call11 = call zeroext i1 @getenv_internal(i8* %call9, i64 %call10, i8** %value, i64* %valuelen, i64 %10)
  br i1 %call11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.else.8
  %11 = load i8*, i8** %value, align 8
  %12 = load i64, i64* %valuelen, align 8
  %call13 = call i64 @make_string(i8* %11, i64 %12)
  store i64 %call13, i64* %retval
  br label %return

if.else.14:                                       ; preds = %if.else.8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call15, i64* %retval
  br label %return

return:                                           ; preds = %if.else.14, %if.then.12, %if.else, %cond.end
  %13 = load i64, i64* %retval
  ret i64 %13
}

declare i8* @egetenv(i8*) #1

; Function Attrs: nounwind
declare i8* @stpcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i8** @add_env(i8** %env, i8** %new_env, i8* %string) #0 {
entry:
  %retval = alloca i8**, align 8
  %env.addr = alloca i8**, align 8
  %new_env.addr = alloca i8**, align 8
  %string.addr = alloca i8*, align 8
  %ep = alloca i8**, align 8
  %ok = alloca i8, align 1
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  store i8** %env, i8*** %env.addr, align 8
  store i8** %new_env, i8*** %new_env.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i8 1, i8* %ok, align 1
  %0 = load i8*, i8** %string.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %new_env.addr, align 8
  store i8** %1, i8*** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8**, i8*** %env.addr, align 8
  store i8** %2, i8*** %ep, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i8, i8* %ok, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i8**, i8*** %ep, align 8
  %5 = load i8**, i8*** %new_env.addr, align 8
  %cmp1 = icmp ne i8** %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %7 = load i8**, i8*** %ep, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %p, align 8
  %9 = load i8*, i8** %string.addr, align 8
  store i8* %9, i8** %q, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %for.body
  %10 = load i8, i8* %ok, align 1
  %tobool2 = trunc i8 %10 to i1
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  %conv = sext i8 %12 to i32
  %tobool3 = icmp ne i32 %conv, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %while.body
  %13 = load i8*, i8** %q, align 8
  %14 = load i8, i8* %13, align 1
  %conv4 = sext i8 %14 to i32
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %conv5 = sext i8 %16 to i32
  %cmp6 = icmp ne i32 %conv4, %conv5
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  br label %while.end

if.end.9:                                         ; preds = %land.lhs.true, %while.body
  %17 = load i8*, i8** %q, align 8
  %18 = load i8, i8* %17, align 1
  %conv10 = sext i8 %18 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  br label %while.end

if.end.14:                                        ; preds = %if.end.9
  %19 = load i8*, i8** %q, align 8
  %20 = load i8, i8* %19, align 1
  %conv15 = sext i8 %20 to i32
  %cmp16 = icmp eq i32 %conv15, 61
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.14
  store i8 0, i8* %ok, align 1
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.14
  %21 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %22 = load i8*, i8** %q, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr20, i8** %q, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.13, %if.then.8, %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %23 = load i8**, i8*** %ep, align 8
  %incdec.ptr21 = getelementptr inbounds i8*, i8** %23, i32 1
  store i8** %incdec.ptr21, i8*** %ep, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %24 = load i8, i8* %ok, align 1
  %tobool22 = trunc i8 %24 to i1
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %for.end
  %25 = load i8*, i8** %string.addr, align 8
  %26 = load i8**, i8*** %new_env.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %incdec.ptr24, i8*** %new_env.addr, align 8
  store i8* %25, i8** %26, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %for.end
  %27 = load i8**, i8*** %new_env.addr, align 8
  store i8** %27, i8*** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then
  %28 = load i8**, i8*** %retval
  ret i8** %28
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #6

; Function Attrs: nounwind uwtable
define internal i32 @relocate_fd(i32 %fd, i32 %minfd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %minfd.addr = alloca i32, align 4
  %new = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %minfd, i32* %minfd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load i32, i32* %minfd.addr, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %fd.addr, align 4
  store i32 %2, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %fd.addr, align 4
  %4 = load i32, i32* %minfd.addr, align 4
  %call = call i32 (i32, i32, ...) @rpl_fcntl(i32 %3, i32 1030, i32 %4)
  store i32 %call, i32* %new, align 4
  %5 = load i32, i32* %new, align 4
  %cmp1 = icmp eq i32 %5, -1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  call void @emacs_perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i32 0, i32 0))
  call void @_exit(i32 125) #9
  unreachable

if.end:                                           ; preds = %if.else
  %6 = load i32, i32* %new, align 4
  store i32 %6, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #3

; Function Attrs: nounwind
declare i32 @setpgid(i32, i32) #3

; Function Attrs: nounwind
declare i32 @tcsetpgrp(i32, i32) #3

; Function Attrs: nounwind
declare i32 @execve(i8*, i8**, i8**) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind uwtable
define internal zeroext i1 @getenv_internal_1(i8* %var, i64 %varlen, i8** %value, i64* %valuelen, i64 %env) #0 {
entry:
  %retval = alloca i1, align 1
  %var.addr = alloca i8*, align 8
  %varlen.addr = alloca i64, align 8
  %value.addr = alloca i8**, align 8
  %valuelen.addr = alloca i64*, align 8
  %env.addr = alloca i64, align 8
  %entry2 = alloca i64, align 8
  store i8* %var, i8** %var.addr, align 8
  store i64 %varlen, i64* %varlen.addr, align 8
  store i8** %value, i8*** %value.addr, align 8
  store i64* %valuelen, i64** %valuelen.addr, align 8
  store i64 %env, i64* %env.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %env.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %env.addr, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 0
  %4 = load i64, i64* %car, align 8
  store i64 %4, i64* %entry2, align 8
  %5 = load i64, i64* %entry2, align 8
  %call = call zeroext i1 @STRINGP(i64 %5)
  br i1 %call, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %for.body
  %6 = load i64, i64* %entry2, align 8
  %call4 = call i64 @SBYTES(i64 %6)
  %7 = load i64, i64* %varlen.addr, align 8
  %cmp5 = icmp sge i64 %call4, %7
  br i1 %cmp5, label %land.lhs.true.7, label %if.end.28

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %8 = load i64, i64* %entry2, align 8
  %call8 = call i8* @SDATA(i64 %8)
  %9 = load i8*, i8** %var.addr, align 8
  %10 = load i64, i64* %varlen.addr, align 8
  %call9 = call i32 @memcmp(i8* %call8, i8* %9, i64 %10) #12
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end.28, label %if.then

if.then:                                          ; preds = %land.lhs.true.7
  %11 = load i64, i64* %entry2, align 8
  %call10 = call i64 @SBYTES(i64 %11)
  %12 = load i64, i64* %varlen.addr, align 8
  %cmp11 = icmp sgt i64 %call10, %12
  br i1 %cmp11, label %land.lhs.true.13, label %if.else

land.lhs.true.13:                                 ; preds = %if.then
  %13 = load i64, i64* %entry2, align 8
  %14 = load i64, i64* %varlen.addr, align 8
  %call14 = call zeroext i8 @SREF(i64 %13, i64 %14)
  %conv15 = zext i8 %call14 to i32
  %cmp16 = icmp eq i32 %conv15, 61
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %land.lhs.true.13
  %15 = load i64, i64* %entry2, align 8
  %call19 = call i8* @SSDATA(i64 %15)
  %16 = load i64, i64* %varlen.addr, align 8
  %add = add nsw i64 %16, 1
  %add.ptr = getelementptr inbounds i8, i8* %call19, i64 %add
  %17 = load i8**, i8*** %value.addr, align 8
  store i8* %add.ptr, i8** %17, align 8
  %18 = load i64, i64* %entry2, align 8
  %call20 = call i64 @SBYTES(i64 %18)
  %19 = load i64, i64* %varlen.addr, align 8
  %add21 = add nsw i64 %19, 1
  %sub22 = sub nsw i64 %call20, %add21
  %20 = load i64*, i64** %valuelen.addr, align 8
  store i64 %sub22, i64* %20, align 8
  store i1 true, i1* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.13, %if.then
  %21 = load i64, i64* %entry2, align 8
  %call23 = call i64 @SBYTES(i64 %21)
  %22 = load i64, i64* %varlen.addr, align 8
  %cmp24 = icmp eq i64 %call23, %22
  br i1 %cmp24, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %if.else
  %23 = load i8**, i8*** %value.addr, align 8
  store i8* null, i8** %23, align 8
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %land.lhs.true.7, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %24 = load i64, i64* %env.addr, align 8
  %sub29 = sub nsw i64 %24, 3
  %25 = inttoptr i64 %sub29 to i8*
  %26 = bitcast i8* %25 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %26, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %27 = load i64, i64* %cdr, align 8
  store i64 %27, i64* %env.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.26, %if.then.18
  %28 = load i1, i1* %retval
  ret i1 %28
}

declare i64 @make_string(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @getenv_internal(i8* %var, i64 %varlen, i8** %value, i64* %valuelen, i64 %frame) #0 {
entry:
  %retval = alloca i1, align 1
  %var.addr = alloca i8*, align 8
  %varlen.addr = alloca i64, align 8
  %value.addr = alloca i8**, align 8
  %valuelen.addr = alloca i64*, align 8
  %frame.addr = alloca i64, align 8
  %display = alloca i64, align 8
  store i8* %var, i8** %var.addr, align 8
  store i64 %varlen, i64* %varlen.addr, align 8
  store i8** %value, i8*** %value.addr, align 8
  store i64* %valuelen, i64** %valuelen.addr, align 8
  store i64 %frame, i64* %frame.addr, align 8
  %0 = load i8*, i8** %var.addr, align 8
  %1 = load i64, i64* %varlen.addr, align 8
  %2 = load i8**, i8*** %value.addr, align 8
  %3 = load i64*, i64** %valuelen.addr, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 239), align 8
  %call = call zeroext i1 @getenv_internal_1(i8* %0, i64 %1, i8** %2, i64* %3, i64 %4)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8**, i8*** %value.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %tobool = icmp ne i8* %6, null
  %cond = select i1 %tobool, i32 1, i32 0
  %tobool1 = icmp ne i32 %cond, 0
  store i1 %tobool1, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %var.addr, align 8
  %call2 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)) #12
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then.3, label %if.end.20

if.then.3:                                        ; preds = %if.end
  %8 = load i64, i64* %frame.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp5 = icmp eq i64 %8, %call4
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  %9 = load i64, i64* @selected_frame, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.3
  %10 = load i64, i64* %frame.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond6 = phi i64 [ %9, %cond.true ], [ %10, %cond.false ]
  %call7 = call i64 @builtin_lisp_symbol(i32 344)
  %call8 = call i64 @Fframe_parameter(i64 %cond6, i64 %call7)
  store i64 %call8, i64* %display, align 8
  %11 = load i64, i64* %display, align 8
  %call9 = call zeroext i1 @STRINGP(i64 %11)
  br i1 %call9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %cond.end
  %12 = load i64, i64* %display, align 8
  %call11 = call i8* @SSDATA(i64 %12)
  %13 = load i8**, i8*** %value.addr, align 8
  store i8* %call11, i8** %13, align 8
  %14 = load i64, i64* %display, align 8
  %call12 = call i64 @SBYTES(i64 %14)
  %15 = load i64*, i64** %valuelen.addr, align 8
  store i64 %call12, i64* %15, align 8
  store i1 true, i1* %retval
  br label %return

if.end.13:                                        ; preds = %cond.end
  %16 = load i8*, i8** %var.addr, align 8
  %17 = load i64, i64* %varlen.addr, align 8
  %18 = load i8**, i8*** %value.addr, align 8
  %19 = load i64*, i64** %valuelen.addr, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 141), align 8
  %call14 = call zeroext i1 @getenv_internal_1(i8* %16, i64 %17, i8** %18, i64* %19, i64 %20)
  br i1 %call14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.13
  %21 = load i8**, i8*** %value.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %tobool16 = icmp ne i8* %22, null
  %cond17 = select i1 %tobool16, i32 1, i32 0
  %tobool18 = icmp ne i32 %cond17, 0
  store i1 %tobool18, i1* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.13
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.15, %if.then.10, %if.then
  %23 = load i1, i1* %retval
  ret i1 %23
}

; Function Attrs: nounwind uwtable
define i8* @egetenv_internal(i8* %var, i64 %len) #0 {
entry:
  %retval = alloca i8*, align 8
  %var.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %value = alloca i8*, align 8
  %valuelen = alloca i64, align 8
  store i8* %var, i8** %var.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %var.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  %call1 = call zeroext i1 @getenv_internal(i8* %0, i64 %1, i8** %value, i64* %valuelen, i64 %call)
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %value, align 8
  store i8* %2, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i8*, i8** %retval
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define void @init_callproc_1() #0 {
entry:
  %call = call i64 @decode_env_path(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), i1 zeroext false)
  store i64 %call, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 51), align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 51), align 8
  %call1 = call i64 @Fcar(i64 %0)
  %call2 = call i64 @Ffile_name_as_directory(i64 %call1)
  store i64 %call2, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 51), align 8
  %call3 = call i64 @decode_env_path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), i1 zeroext false)
  store i64 %call3, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 72), align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 72), align 8
  %call4 = call i64 @Fcar(i64 %1)
  %call5 = call i64 @Ffile_name_as_directory(i64 %call4)
  store i64 %call5, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 72), align 8
  %call6 = call i64 @decode_env_path(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i32 0, i32 0), i1 zeroext false)
  store i64 %call6, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 84), align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 84), align 8
  %call7 = call i64 @Fcar(i64 %2)
  %call8 = call i64 @Ffile_name_as_directory(i64 %call7)
  store i64 %call8, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 83), align 8
  %call9 = call i64 @decode_env_path(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i1 zeroext false)
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 84), align 8
  %call10 = call i64 @nconc2(i64 %call9, i64 %3)
  store i64 %call10, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 84), align 8
  ret void
}

declare i64 @decode_env_path(i8*, i8*, i1 zeroext) #1

declare i64 @Ffile_name_as_directory(i64) #1

declare i64 @Fcar(i64) #1

declare i64 @nconc2(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @init_callproc() #0 {
entry:
  %data_dir = alloca i8, align 1
  %sh = alloca i8*, align 8
  %tempdir = alloca i64, align 8
  %tem = alloca i64, align 8
  %tem27 = alloca i64, align 8
  %tem1 = alloca i64, align 8
  %srcdir = alloca i64, align 8
  %lispdir = alloca i64, align 8
  %newdir = alloca i64, align 8
  %call = call i8* @egetenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0))
  %cmp = icmp ne i8* %call, null
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %data_dir, align 1
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 145), align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp2 = icmp eq i64 %0, %call1
  br i1 %cmp2, label %if.end.21, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call i64 @build_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0))
  %1 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 145), align 8
  %call4 = call i64 @Fexpand_file_name(i64 %call3, i64 %1)
  store i64 %call4, i64* %tem, align 8
  %2 = load i64, i64* %tem, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 84), align 8
  %call5 = call i64 @Fmember(i64 %2, i64 %3)
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %call5, %call6
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %4 = load i64, i64* %tem, align 8
  %call9 = call i8* @SSDATA(i64 %4)
  %call10 = call i64 @decode_env_path(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* %call9, i1 zeroext false)
  store i64 %call10, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 84), align 8
  %call11 = call i64 @decode_env_path(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i1 zeroext false)
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 84), align 8
  %call12 = call i64 @nconc2(i64 %call11, i64 %5)
  store i64 %call12, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 84), align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %6 = load i64, i64* %tem, align 8
  %call13 = call i64 @Ffile_name_as_directory(i64 %6)
  store i64 %call13, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 83), align 8
  %7 = load i8, i8* %data_dir, align 1
  %tobool = trunc i8 %7 to i1
  %conv = zext i1 %tobool to i32
  %cmp14 = icmp eq i32 %conv, 0
  br i1 %cmp14, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end
  %call17 = call i64 @build_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0))
  %8 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 145), align 8
  %call18 = call i64 @Fexpand_file_name(i64 %call17, i64 %8)
  store i64 %call18, i64* %tem, align 8
  %9 = load i64, i64* %tem, align 8
  %call19 = call i64 @Ffile_name_as_directory(i64 %9)
  store i64 %call19, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 72), align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %entry
  %10 = load i8, i8* %data_dir, align 1
  %tobool22 = trunc i8 %10 to i1
  %conv23 = zext i1 %tobool22 to i32
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.54

if.then.26:                                       ; preds = %if.end.21
  %call28 = call i64 @decode_env_path(i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i32 0, i32 0), i1 zeroext false)
  %call29 = call i64 @Fcar(i64 %call28)
  store i64 %call29, i64* %lispdir, align 8
  %call30 = call i64 @build_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0))
  %11 = load i64, i64* %lispdir, align 8
  %call31 = call i64 @Fexpand_file_name(i64 %call30, i64 %11)
  store i64 %call31, i64* %srcdir, align 8
  %call32 = call i64 @build_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0))
  %12 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 51), align 8
  %call33 = call i64 @Fexpand_file_name(i64 %call32, i64 %12)
  store i64 %call33, i64* %tem27, align 8
  %13 = load i64, i64* %tem27, align 8
  %call34 = call i64 @Ffile_exists_p(i64 %13)
  store i64 %call34, i64* %tem1, align 8
  %14 = load i64, i64* %srcdir, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 148), align 8
  %call35 = call i64 @Fequal(i64 %14, i64 %15)
  %call36 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp37 = icmp eq i64 %call35, %call36
  br i1 %cmp37, label %lor.lhs.false, label %if.then.42

lor.lhs.false:                                    ; preds = %if.then.26
  %16 = load i64, i64* %tem1, align 8
  %call39 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp40 = icmp eq i64 %16, %call39
  br i1 %cmp40, label %if.then.42, label %if.end.53

if.then.42:                                       ; preds = %lor.lhs.false, %if.then.26
  %call43 = call i64 @build_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0))
  %17 = load i64, i64* %lispdir, align 8
  %call44 = call i64 @Fexpand_file_name(i64 %call43, i64 %17)
  store i64 %call44, i64* %newdir, align 8
  %call45 = call i64 @build_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0))
  %18 = load i64, i64* %newdir, align 8
  %call46 = call i64 @Fexpand_file_name(i64 %call45, i64 %18)
  store i64 %call46, i64* %tem27, align 8
  %19 = load i64, i64* %tem27, align 8
  %call47 = call i64 @Ffile_exists_p(i64 %19)
  store i64 %call47, i64* %tem1, align 8
  %20 = load i64, i64* %tem1, align 8
  %call48 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp49 = icmp eq i64 %20, %call48
  br i1 %cmp49, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %if.then.42
  %21 = load i64, i64* %newdir, align 8
  store i64 %21, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 51), align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.then.42
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %lor.lhs.false
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.21
  %22 = load i8, i8* @initialized, align 1
  %tobool55 = trunc i8 %22 to i1
  br i1 %tobool55, label %if.then.56, label %if.end.61

if.then.56:                                       ; preds = %if.end.54
  %23 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 83), align 8
  %call57 = call i64 @Fdirectory_file_name(i64 %23)
  store i64 %call57, i64* %tempdir, align 8
  %24 = load i64, i64* %tempdir, align 8
  %call58 = call zeroext i1 @file_accessible_directory_p(i64 %24)
  br i1 %call58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %if.then.56
  %25 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 83), align 8
  call void @dir_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0), i64 %25)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.then.56
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.54
  %26 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 51), align 8
  %call62 = call i64 @Fdirectory_file_name(i64 %26)
  store i64 %call62, i64* %tempdir, align 8
  %27 = load i64, i64* %tempdir, align 8
  %call63 = call zeroext i1 @file_accessible_directory_p(i64 %27)
  br i1 %call63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %if.end.61
  %28 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 51), align 8
  call void @dir_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0), i64 %28)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.end.61
  %call66 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)) #5
  store i8* %call66, i8** %sh, align 8
  %29 = load i8*, i8** %sh, align 8
  %tobool67 = icmp ne i8* %29, null
  br i1 %tobool67, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.65
  %30 = load i8*, i8** %sh, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.65
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %30, %cond.true ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), %cond.false ]
  %call68 = call i64 @build_string(i8* %cond)
  store i64 %call68, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 269), align 8
  %call69 = call i64 @build_unibyte_string(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0))
  store i64 %call69, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 268), align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 268), align 8
  %call70 = call i64 @Ffile_accessible_directory_p(i64 %31)
  %call71 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp72 = icmp eq i64 %call70, %call71
  br i1 %cmp72, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %cond.end
  %call75 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call75, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 268), align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %cond.end
  ret void
}

declare i64 @Fmember(i64, i64) #1

declare i64 @Ffile_exists_p(i64) #1

declare i64 @Fequal(i64, i64) #1

declare i64 @Fdirectory_file_name(i64) #1

declare void @dir_warning(i8*, i64) #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

declare i64 @build_unibyte_string(i8*) #1

; Function Attrs: nounwind uwtable
define void @set_initial_environment() #0 {
entry:
  %envp = alloca i8**, align 8
  %0 = load i8**, i8*** @environ, align 8
  store i8** %0, i8*** %envp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8**, i8*** %envp, align 8
  %2 = load i8*, i8** %1, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %envp, align 8
  %4 = load i8*, i8** %3, align 8
  %call = call i64 @build_string(i8* %4)
  %5 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 239), align 8
  %call1 = call i64 @Fcons(i64 %call, i64 %5)
  store i64 %call1, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 239), align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8**, i8*** %envp, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %6, i32 1
  store i8** %incdec.ptr, i8*** %envp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 239), align 8
  %call2 = call i64 @Fcopy_sequence(i64 %7)
  store i64 %call2, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 141), align 8
  ret void
}

declare i64 @Fcons(i64, i64) #1

declare i64 @Fcopy_sequence(i64) #1

; Function Attrs: nounwind uwtable
define void @syms_of_callproc() #0 {
entry:
  %call = call i64 @build_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0))
  store i64 %call, i64* @Vtemp_file_name_pattern, align 8
  call void @staticpro(i64* @Vtemp_file_name_pattern)
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_callproc.o_fwd, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 269))
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_callproc.o_fwd.29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 84))
  br label %do.end.2

do.end.2:                                         ; preds = %do.body.1
  br label %do.body.3

do.body.3:                                        ; preds = %do.end.2
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_callproc.o_fwd.31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 85))
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.3
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 85), align 8
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.4
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_callproc.o_fwd.33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 83))
  br label %do.end.7

do.end.7:                                         ; preds = %do.body.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_callproc.o_fwd.35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 51))
  br label %do.end.9

do.end.9:                                         ; preds = %do.body.8
  br label %do.body.10

do.body.10:                                       ; preds = %do.end.9
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_callproc.o_fwd.37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 72))
  br label %do.end.11

do.end.11:                                        ; preds = %do.body.10
  br label %do.body.12

do.body.12:                                       ; preds = %do.end.11
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_callproc.o_fwd.39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 47))
  br label %do.end.13

do.end.13:                                        ; preds = %do.body.12
  %call14 = call i64 @build_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0))
  store i64 %call14, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 47), align 8
  br label %do.body.15

do.body.15:                                       ; preds = %do.end.13
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_callproc.o_fwd.42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 268))
  br label %do.end.16

do.end.16:                                        ; preds = %do.body.15
  %call17 = call i64 @build_string(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0))
  store i64 %call17, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 268), align 8
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.16
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_callproc.o_fwd.44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 141))
  br label %do.end.19

do.end.19:                                        ; preds = %do.body.18
  %call20 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call20, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 141), align 8
  br label %do.body.21

do.body.21:                                       ; preds = %do.end.19
  call void @defvar_lisp(%struct.Lisp_Objfwd* @syms_of_callproc.o_fwd.46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 239))
  br label %do.end.22

do.end.22:                                        ; preds = %do.body.21
  %call23 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call23, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 239), align 8
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* }* @Scall_process to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sgetenv_internal to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64*)* }, i16, i16, i8*, i8*, i8* }* @Scall_process_region to %struct.Lisp_Subr*))
  ret void
}

declare void @staticpro(i64*) #1

declare void @defvar_lisp(%struct.Lisp_Objfwd*, i8*, i64*) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

; Function Attrs: noreturn
declare void @error(i8*, ...) #2

declare zeroext i1 @STRING_MULTIBYTE(i64) #1

declare noalias i8* @xnmalloc(i64, i64) #1

declare void @record_unwind_protect_ptr(void (i8*)*, i8*) #1

declare void @xfree(i8*) #1

declare i64 @Ffind_operation_coding_system(i64, i64*) #1

declare i64 @complement_process_encoding_system(i64) #1

declare void @setup_coding_system(i64, %struct.coding_system*) #1

declare i64 @Fcheck_coding_system(i64) #1

declare i64 @AREF(i64, i64) #1

declare i64 @HASH_VALUE(%struct.Lisp_Hash_Table*, i64) #1

declare %struct.Lisp_Hash_Table* @XHASH_TABLE(i64) #1

declare i64 @raw_text_coding_system(i64) #1

declare i64 @Fget_buffer_create(i64) #1

declare void @CHECK_BUFFER(i64) #1

; Function Attrs: nounwind uwtable
define internal void @call_process_kill(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %callproc_fd = alloca i32*, align 8
  %i = alloca i32, align 4
  %proc = alloca %struct.Lisp_Process, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %callproc_fd, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %callproc_fd, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sle i32 0, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load i32*, i32** %callproc_fd, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  %call = call i32 @emacs_close(i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* @synch_process_pid, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %for.end
  %alive = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %proc, i32 0, i32 28
  %bf.load = load i8, i8* %alive, align 8
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, 64
  store i8 %bf.set, i8* %alive, align 8
  %11 = load i32, i32* @synch_process_pid, align 4
  %pid = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %proc, i32 0, i32 20
  store i32 %11, i32* %pid, align 4
  call void @record_kill_process(%struct.Lisp_Process* %proc, i64 2)
  store i32 0, i32* @synch_process_pid, align 4
  br label %if.end.8

if.else:                                          ; preds = %for.end
  %call5 = call zeroext i1 @STRINGP(i64 2)
  br i1 %call5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.else
  call void @delete_temp_file(i64 2)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.4
  ret void
}

declare i32 @openp(i64, i64, i64, i64*, i64, i1 zeroext) #1

declare void @encode_coding_object(%struct.coding_system*, i64, i64, i64, i64, i64, i64) #1

declare i64 @decode_file_name(i64) #1

; Function Attrs: noreturn
declare void @report_file_errno(i8*, i64, i32) #2

declare i32 @emacs_pipe(i32*) #1

declare void @record_unwind_protect(void (i64)*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @call_process_cleanup(i64 %buffer) #0 {
entry:
  %buffer.addr = alloca i64, align 8
  store i64 %buffer, i64* %buffer.addr, align 8
  %0 = load i64, i64* %buffer.addr, align 8
  %call = call i64 @Fset_buffer(i64 %0)
  %1 = load i32, i32* @synch_process_pid, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @synch_process_pid, align 4
  %sub = sub nsw i32 0, %2
  %call1 = call i32 @kill(i32 %sub, i32 2) #5
  call void @message1(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.56, i32 0, i32 0))
  store i8 1, i8* @immediate_quit, align 1
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %3, %call2
  br i1 %cmp, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %4 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %4, %call3
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %land.lhs.true
  call void @process_quit_flag()
  br label %if.end.8

if.else:                                          ; preds = %land.lhs.true, %do.body
  %5 = load volatile i8, i8* @pending_signals, align 1
  %tobool6 = trunc i8 %5 to i1
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  call void @process_pending_signals()
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %6 = load i32, i32* @synch_process_pid, align 4
  call void @wait_for_termination(i32 %6, i32* null, i1 zeroext true)
  store i32 0, i32* @synch_process_pid, align 4
  store i8 0, i8* @immediate_quit, align 1
  call void @message1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %entry
  ret void
}

declare i64 @Fcurrent_buffer() #1

declare void @block_input() #1

; Function Attrs: nounwind returns_twice
declare i32 @vfork() #8

; Function Attrs: nounwind
declare i32 @setsid() #3

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #3

declare void @clear_unwind_protect(i64) #1

declare void @unblock_input() #1

declare i32 @emacs_close(i32) #1

declare zeroext i1 @BUFFERP(i64) #1

declare i64 @Fset_buffer(i64) #1

declare void @process_quit_flag() #1

declare void @process_pending_signals() #1

declare i64 @emacs_read(i32, i8*, i64) #1

declare void @insert_1_both(i8*, i64, i64, i1 zeroext, i1 zeroext, i1 zeroext) #1

declare i64 @make_lisp_ptr(i8*, i32) #1

declare void @prepare_to_modify_buffer(i64, i64, i64*) #1

declare void @specbind(i64, i64) #1

declare void @decode_coding_object(%struct.coding_system*, i64, i64, i64, i64, i64, i64) #1

declare i64 @del_range_2(i64, i64, i64, i64, i1 zeroext) #1

declare void @temp_set_point_both(%struct.buffer*, i64, i64) #1

declare void @redisplay_preserve_echo_area(i32) #1

declare i64 @HASH_KEY(%struct.Lisp_Hash_Table*, i64) #1

declare i64 @call1(i64, i64) #1

declare i64 @intern(i8*) #1

declare void @wait_for_termination(i32, i32*, i1 zeroext) #1

declare void @synchronize_system_messages_locale() #1

; Function Attrs: nounwind
declare i8* @strsignal(i32) #3

declare i64 @code_convert_string_norecord(i64, i64, i1 zeroext) #1

; Function Attrs: nounwind uwtable
define internal void @delete_temp_file(i64 %name) #0 {
entry:
  %name.addr = alloca i64, align 8
  store i64 %name, i64* %name.addr, align 8
  %0 = load i64, i64* %name.addr, align 8
  %call = call i8* @SSDATA(i64 %0)
  %call1 = call i32 @unlink(i8* %call) #5
  ret void
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

declare void @message1(i8*) #1

declare void @record_unwind_protect_nothing() #1

declare i32 @mkostemp(i8*, i32) #1

declare void @set_unwind_protect(i64, void (i64)*, i64) #1

declare i64 @write_region(i64, i64, i64, i64, i64, i64, i64, i32) #1

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #3

declare i32 @rpl_fcntl(i32, i32, ...) #1

declare void @emacs_perror(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #6

declare zeroext i8 @SREF(i64, i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind returns_twice }
attributes #12 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
