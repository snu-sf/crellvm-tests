; ModuleID = './app/tests/gimp-test-session-utils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct.GimpTestFileState = type { i8*, i8*, %struct._GTimeVal }
%struct._GTimeVal = type { i64, i64 }
%struct._GFile = type opaque
%struct._GFileInfo = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GCancellable = type { %struct._GObject, %struct._GCancellablePrivate* }
%struct._GCancellablePrivate = type opaque

@.str = private unnamed_addr constant [28 x i8] c"GIMP_TESTING_ABS_TOP_SRCDIR\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"app/tests/gimpdir\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"gimp-test-session-utils.c\00", align 1
@__func__.gimp_test_session_load_and_write_session_files = private unnamed_addr constant [47 x i8] c"gimp_test_session_load_and_write_session_files\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"gimp_test_get_file_state_verbose (sessionrc_filename, &initial_sessionrc_state)\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"gimp_test_get_file_state_verbose (dockrc_filename, &initial_dockrc_state)\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"GIMP_TESTING_SESSIONRC_NAME\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"GIMP_TESTING_DOCKRC_NAME\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"GIMP_TESTING_ABS_TOP_BUILDDIR\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"app/tests/gimpdir-output\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"sessionrc\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"dockrc\00", align 1
@.str.11 = private unnamed_addr constant [78 x i8] c"gimp_test_get_file_state_verbose (sessionrc_filename, &final_sessionrc_state)\00", align 1
@.str.12 = private unnamed_addr constant [72 x i8] c"gimp_test_get_file_state_verbose (dockrc_filename, &final_dockrc_state)\00", align 1
@.str.13 = private unnamed_addr constant [93 x i8] c"gimp_test_file_state_changes (\22sessionrc\22, &initial_sessionrc_state, &final_sessionrc_state)\00", align 1
@.str.14 = private unnamed_addr constant [84 x i8] c"gimp_test_file_state_changes (\22dockrc\22, &initial_dockrc_state, &final_dockrc_state)\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"time::modified\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"Failed to get initial file info for '%s'\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"A new '%s' was not created\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.20 = private unnamed_addr constant [86 x i8] c"'%s' was changed but should not have been. Reason, using `diff -u $expected $actual`\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_test_session_load_and_write_session_files(i8* %loaded_sessionrc, i8* %loaded_dockrc, i8* %expected_sessionrc, i8* %expected_dockrc, i32 %single_window_mode) #0 {
entry:
  %loaded_sessionrc.addr = alloca i8*, align 8
  %loaded_dockrc.addr = alloca i8*, align 8
  %expected_sessionrc.addr = alloca i8*, align 8
  %expected_dockrc.addr = alloca i8*, align 8
  %single_window_mode.addr = alloca i32, align 4
  %gimp = alloca %struct._Gimp*, align 8
  %initial_sessionrc_state = alloca %struct.GimpTestFileState, align 8
  %initial_dockrc_state = alloca %struct.GimpTestFileState, align 8
  %final_sessionrc_state = alloca %struct.GimpTestFileState, align 8
  %final_dockrc_state = alloca %struct.GimpTestFileState, align 8
  %sessionrc_filename = alloca i8*, align 8
  %dockrc_filename = alloca i8*, align 8
  store i8* %loaded_sessionrc, i8** %loaded_sessionrc.addr, align 8
  store i8* %loaded_dockrc, i8** %loaded_dockrc.addr, align 8
  store i8* %expected_sessionrc, i8** %expected_sessionrc.addr, align 8
  store i8* %expected_dockrc, i8** %expected_dockrc.addr, align 8
  store i32 %single_window_mode, i32* %single_window_mode.addr, align 4
  %0 = bitcast %struct.GimpTestFileState* %initial_sessionrc_state to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 32, i32 8, i1 false)
  %1 = bitcast %struct.GimpTestFileState* %initial_dockrc_state to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 32, i32 8, i1 false)
  %2 = bitcast %struct.GimpTestFileState* %final_sessionrc_state to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 32, i32 8, i1 false)
  %3 = bitcast %struct.GimpTestFileState* %final_dockrc_state to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 32, i32 8, i1 false)
  store i8* null, i8** %sessionrc_filename, align 8
  store i8* null, i8** %dockrc_filename, align 8
  call void @gimp_test_utils_set_gimp2_directory(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  call void @gimp_test_utils_setup_menus_dir()
  %4 = load i8*, i8** %expected_sessionrc.addr, align 8
  %call = call noalias i8* @gimp_personal_rc_file(i8* %4)
  store i8* %call, i8** %sessionrc_filename, align 8
  %5 = load i8*, i8** %expected_dockrc.addr, align 8
  %call1 = call noalias i8* @gimp_personal_rc_file(i8* %5)
  store i8* %call1, i8** %dockrc_filename, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i8*, i8** %sessionrc_filename, align 8
  %call2 = call i32 @gimp_test_get_file_state_verbose(i8* %6, %struct.GimpTestFileState* %initial_sessionrc_state)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 191, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__func__.gimp_test_session_load_and_write_session_files, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.3

do.body.3:                                        ; preds = %do.end
  %7 = load i8*, i8** %dockrc_filename, align 8
  %call4 = call i32 @gimp_test_get_file_state_verbose(i8* %7, %struct.GimpTestFileState* %initial_dockrc_state)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %do.body.3
  br label %if.end.8

if.else.7:                                        ; preds = %do.body.3
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 193, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__func__.gimp_test_session_load_and_write_session_files, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i32 0, i32 0)) #5
  unreachable

if.end.8:                                         ; preds = %if.then.6
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  %8 = load i8*, i8** %loaded_sessionrc.addr, align 8
  %call10 = call i32 @g_setenv(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0), i8* %8, i32 1)
  %9 = load i8*, i8** %loaded_dockrc.addr, align 8
  %call11 = call i32 @g_setenv(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i8* %9, i32 1)
  %call12 = call %struct._Gimp* @gimp_init_for_gui_testing(i32 1)
  store %struct._Gimp* %call12, %struct._Gimp** %gimp, align 8
  call void @gimp_test_run_mainloop_until_idle()
  call void @gimp_test_utils_set_gimp2_directory(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
  call void @g_unsetenv(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  call void @g_unsetenv(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0))
  %10 = load i8*, i8** %sessionrc_filename, align 8
  call void @g_free(i8* %10)
  %11 = load i8*, i8** %dockrc_filename, align 8
  call void @g_free(i8* %11)
  %call13 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0))
  store i8* %call13, i8** %sessionrc_filename, align 8
  %call14 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0))
  store i8* %call14, i8** %dockrc_filename, align 8
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_exit(%struct._Gimp* %12, i32 1)
  br label %do.body.15

do.body.15:                                       ; preds = %do.end.9
  %13 = load i8*, i8** %sessionrc_filename, align 8
  %call16 = call i32 @gimp_test_get_file_state_verbose(i8* %13, %struct.GimpTestFileState* %final_sessionrc_state)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.15
  br label %if.end.20

if.else.19:                                       ; preds = %do.body.15
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 228, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__func__.gimp_test_session_load_and_write_session_files, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.11, i32 0, i32 0)) #5
  unreachable

if.end.20:                                        ; preds = %if.then.18
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  br label %do.body.22

do.body.22:                                       ; preds = %do.end.21
  %14 = load i8*, i8** %dockrc_filename, align 8
  %call23 = call i32 @gimp_test_get_file_state_verbose(i8* %14, %struct.GimpTestFileState* %final_dockrc_state)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.22
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.22
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 230, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__func__.gimp_test_session_load_and_write_session_files, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.12, i32 0, i32 0)) #5
  unreachable

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %call30 = call i32 @gimp_test_file_state_changes(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), %struct.GimpTestFileState* %initial_sessionrc_state, %struct.GimpTestFileState* %final_sessionrc_state)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.29
  br label %if.end.34

if.else.33:                                       ; preds = %do.body.29
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 240, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__func__.gimp_test_session_load_and_write_session_files, i32 0, i32 0), i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.13, i32 0, i32 0)) #5
  unreachable

if.end.34:                                        ; preds = %if.then.32
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %do.body.36

do.body.36:                                       ; preds = %do.end.35
  %call37 = call i32 @gimp_test_file_state_changes(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), %struct.GimpTestFileState* %initial_dockrc_state, %struct.GimpTestFileState* %final_dockrc_state)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.36
  br label %if.end.41

if.else.40:                                       ; preds = %do.body.36
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 243, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__func__.gimp_test_session_load_and_write_session_files, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.14, i32 0, i32 0)) #5
  unreachable

if.end.41:                                        ; preds = %if.then.39
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare void @gimp_test_utils_set_gimp2_directory(i8*, i8*) #2

declare void @gimp_test_utils_setup_menus_dir() #2

declare noalias i8* @gimp_personal_rc_file(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_test_get_file_state_verbose(i8* %filename, %struct.GimpTestFileState* %filestate) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %filestate.addr = alloca %struct.GimpTestFileState*, align 8
  %success = alloca i32, align 4
  %contents = alloca i8*, align 8
  %length = alloca i64, align 8
  %file = alloca %struct._GFile*, align 8
  %info = alloca %struct._GFileInfo*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct.GimpTestFileState* %filestate, %struct.GimpTestFileState** %filestate.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %0)
  %1 = load %struct.GimpTestFileState*, %struct.GimpTestFileState** %filestate.addr, align 8
  %filename1 = getelementptr inbounds %struct.GimpTestFileState, %struct.GimpTestFileState* %1, i32 0, i32 0
  store i8* %call, i8** %filename1, align 8
  %2 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  store i8* null, i8** %contents, align 8
  store i64 0, i64* %length, align 8
  %3 = load i8*, i8** %filename.addr, align 8
  %call2 = call i32 @g_file_get_contents(i8* %3, i8** %contents, i64* %length, %struct._GError** null)
  store i32 %call2, i32* %success, align 4
  %4 = load i32, i32* %success, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %5 = load i8*, i8** %contents, align 8
  %6 = load i64, i64* %length, align 8
  %call5 = call i8* @g_compute_checksum_for_string(i32 0, i8* %5, i64 %6)
  %7 = load %struct.GimpTestFileState*, %struct.GimpTestFileState** %filestate.addr, align 8
  %md5 = getelementptr inbounds %struct.GimpTestFileState, %struct.GimpTestFileState* %7, i32 0, i32 1
  store i8* %call5, i8** %md5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %8 = load i8*, i8** %contents, align 8
  call void @g_free(i8* %8)
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %9 = load i32, i32* %success, align 4
  %tobool7 = icmp ne i32 %9, 0
  br i1 %tobool7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.end.6
  %10 = load i8*, i8** %filename.addr, align 8
  %call9 = call %struct._GFile* @g_file_new_for_path(i8* %10)
  store %struct._GFile* %call9, %struct._GFile** %file, align 8
  %11 = load %struct._GFile*, %struct._GFile** %file, align 8
  %call10 = call %struct._GFileInfo* @g_file_query_info(%struct._GFile* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 0, %struct._GCancellable* null, %struct._GError** null)
  store %struct._GFileInfo* %call10, %struct._GFileInfo** %info, align 8
  %12 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %tobool11 = icmp ne %struct._GFileInfo* %12, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.8
  %13 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %14 = load %struct.GimpTestFileState*, %struct.GimpTestFileState** %filestate.addr, align 8
  %modtime = getelementptr inbounds %struct.GimpTestFileState, %struct.GimpTestFileState* %14, i32 0, i32 2
  call void @g_file_info_get_modification_time(%struct._GFileInfo* %13, %struct._GTimeVal* %modtime)
  store i32 1, i32* %success, align 4
  %15 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %16 = bitcast %struct._GFileInfo* %15 to i8*
  call void @g_object_unref(i8* %16)
  br label %if.end.13

if.else:                                          ; preds = %if.then.8
  store i32 0, i32* %success, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  %17 = load %struct._GFile*, %struct._GFile** %file, align 8
  %18 = bitcast %struct._GFile* %17 to i8*
  call void @g_object_unref(i8* %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end.6
  %19 = load i32, i32* %success, align 4
  %tobool15 = icmp ne i32 %19, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.14
  %20 = load i8*, i8** %filename.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i32 0, i32 0), i8* %20)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  %21 = load i32, i32* %success, align 4
  ret i32 %21
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #3

declare i32 @g_setenv(i8*, i8*, i32) #2

declare %struct._Gimp* @gimp_init_for_gui_testing(i32) #2

declare void @gimp_test_run_mainloop_until_idle() #2

declare void @g_unsetenv(i8*) #2

declare void @g_free(i8*) #2

declare void @gimp_exit(%struct._Gimp*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_test_file_state_changes(i8* %filename, %struct.GimpTestFileState* %state1, %struct.GimpTestFileState* %state2) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %state1.addr = alloca %struct.GimpTestFileState*, align 8
  %state2.addr = alloca %struct.GimpTestFileState*, align 8
  %diff_argv = alloca [5 x i8*], align 16
  store i8* %filename, i8** %filename.addr, align 8
  store %struct.GimpTestFileState* %state1, %struct.GimpTestFileState** %state1.addr, align 8
  store %struct.GimpTestFileState* %state2, %struct.GimpTestFileState** %state2.addr, align 8
  %0 = load %struct.GimpTestFileState*, %struct.GimpTestFileState** %state1.addr, align 8
  %modtime = getelementptr inbounds %struct.GimpTestFileState, %struct.GimpTestFileState* %0, i32 0, i32 2
  %tv_sec = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %modtime, i32 0, i32 0
  %1 = load i64, i64* %tv_sec, align 8
  %2 = load %struct.GimpTestFileState*, %struct.GimpTestFileState** %state2.addr, align 8
  %modtime1 = getelementptr inbounds %struct.GimpTestFileState, %struct.GimpTestFileState* %2, i32 0, i32 2
  %tv_sec2 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %modtime1, i32 0, i32 0
  %3 = load i64, i64* %tv_sec2, align 8
  %cmp = icmp eq i64 %1, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.GimpTestFileState*, %struct.GimpTestFileState** %state1.addr, align 8
  %modtime3 = getelementptr inbounds %struct.GimpTestFileState, %struct.GimpTestFileState* %4, i32 0, i32 2
  %tv_usec = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %modtime3, i32 0, i32 1
  %5 = load i64, i64* %tv_usec, align 8
  %6 = load %struct.GimpTestFileState*, %struct.GimpTestFileState** %state2.addr, align 8
  %modtime4 = getelementptr inbounds %struct.GimpTestFileState, %struct.GimpTestFileState* %6, i32 0, i32 2
  %tv_usec5 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %modtime4, i32 0, i32 1
  %7 = load i64, i64* %tv_usec5, align 8
  %cmp6 = icmp eq i64 %5, %7
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load i8*, i8** %filename.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0), i8* %8)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %9 = load %struct.GimpTestFileState*, %struct.GimpTestFileState** %state1.addr, align 8
  %md5 = getelementptr inbounds %struct.GimpTestFileState, %struct.GimpTestFileState* %9, i32 0, i32 1
  %10 = load i8*, i8** %md5, align 8
  %11 = load %struct.GimpTestFileState*, %struct.GimpTestFileState** %state2.addr, align 8
  %md57 = getelementptr inbounds %struct.GimpTestFileState, %struct.GimpTestFileState* %11, i32 0, i32 1
  %12 = load i8*, i8** %md57, align 8
  %call = call i32 @strcmp(i8* %10, i8* %12) #6
  %cmp8 = icmp ne i32 %call, 0
  br i1 %cmp8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %if.end
  %arrayinit.begin = getelementptr inbounds [5 x i8*], [5 x i8*]* %diff_argv, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8** %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i8*, i8** %arrayinit.begin, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8** %arrayinit.element
  %arrayinit.element10 = getelementptr inbounds i8*, i8** %arrayinit.element, i64 1
  %13 = load %struct.GimpTestFileState*, %struct.GimpTestFileState** %state1.addr, align 8
  %filename11 = getelementptr inbounds %struct.GimpTestFileState, %struct.GimpTestFileState* %13, i32 0, i32 0
  %14 = load i8*, i8** %filename11, align 8
  store i8* %14, i8** %arrayinit.element10
  %arrayinit.element12 = getelementptr inbounds i8*, i8** %arrayinit.element10, i64 1
  %15 = load %struct.GimpTestFileState*, %struct.GimpTestFileState** %state2.addr, align 8
  %filename13 = getelementptr inbounds %struct.GimpTestFileState, %struct.GimpTestFileState* %15, i32 0, i32 0
  %16 = load i8*, i8** %filename13, align 8
  store i8* %16, i8** %arrayinit.element12
  %arrayinit.element14 = getelementptr inbounds i8*, i8** %arrayinit.element12, i64 1
  store i8* null, i8** %arrayinit.element14
  %17 = load i8*, i8** %filename.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.20, i32 0, i32 0), i8* %17)
  %arraydecay = getelementptr inbounds [5 x i8*], [5 x i8*]* %diff_argv, i32 0, i32 0
  %call15 = call i32 @g_spawn_sync(i8* null, i8** %arraydecay, i8** null, i32 4, void (i8*)* null, i8* null, i8** null, i8** null, i32* null, %struct._GError** null)
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.9, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare noalias i8* @g_strdup(i8*) #2

declare i32 @g_file_get_contents(i8*, i8**, i64*, %struct._GError**) #2

declare i8* @g_compute_checksum_for_string(i32, i8*, i64) #2

declare %struct._GFile* @g_file_new_for_path(i8*) #2

declare %struct._GFileInfo* @g_file_query_info(%struct._GFile*, i8*, i32, %struct._GCancellable*, %struct._GError**) #2

declare void @g_file_info_get_modification_time(%struct._GFileInfo*, %struct._GTimeVal*) #2

declare void @g_object_unref(i8*) #2

declare void @g_printerr(i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @g_spawn_sync(i8*, i8**, i8**, i32, void (i8*)*, i8*, i8**, i8**, i32*, %struct._GError**) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
