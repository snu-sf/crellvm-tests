; ModuleID = './tools/test-clipboard.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GOptionEntry = type { i8*, i8, i32, i32, i8*, i8*, i8* }
%struct._GdkAtom = type opaque
%struct._GOptionContext = type opaque
%struct._GtkClipboard = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GOptionGroup = type opaque
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GdkDrawable = type { %struct._GObject }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._cairo_font_options = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkSelectionData = type { %struct._GdkAtom*, %struct._GdkAtom*, %struct._GdkAtom*, i32, i8*, i32, %struct._GdkDisplay* }
%struct._GtkTargetEntry = type { i8*, i32, i32 }
%struct._CopyData = type { i8*, i32, %struct._GError* }

@main_entries = internal constant [8 x %struct._GOptionEntry] [%struct._GOptionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8 115, i32 0, i32 3, i8* bitcast (i32 (i8*, i8*, i8*, %struct._GError**)* @test_clipboard_parse_selection to i8*), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0) }, %struct._GOptionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8 108, i32 0, i32 0, i8* bitcast (i32* @option_list_targets to i8*), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0), i8* null }, %struct._GOptionEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8 116, i32 0, i32 1, i8* bitcast (i8** @option_target to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0) }, %struct._GOptionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8 99, i32 0, i32 1, i8* bitcast (i8** @option_copy_filename to i8*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0) }, %struct._GOptionEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8 83, i32 0, i32 1, i8* bitcast (i8** @option_store_filename to i8*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0) }, %struct._GOptionEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8 112, i32 0, i32 1, i8* bitcast (i8** @option_paste_filename to i8*), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0) }, %struct._GOptionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8 118, i32 8, i32 3, i8* bitcast (void ()* @test_clipboard_show_version to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0), i8* null }, %struct._GOptionEntry zeroinitializer], align 16
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [113 x i8] c"Could not initialize the graphical user interface.\0AMake sure a proper setup for your display environment exists.\00", align 1
@option_selection_type = internal global %struct._GdkAtom* inttoptr (i64 69 to %struct._GdkAtom*), align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"gtk_clipboard_get_for_display\00", align 1
@option_list_targets = internal global i32 0, align 4
@option_copy_filename = internal global i8* null, align 8
@option_paste_filename = internal global i8* null, align 8
@option_store_filename = internal global i8* null, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"Can't perform two operations at the same time\0A\00", align 1
@option_target = internal global i8* null, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Usage: %s -t <target> -c <file>\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Usage: %s -t <target> -S <file>\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Usage: %s -t <target> -p <file>\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"selection-type\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Selection type (primary|secondary|clipboard)\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"<type>\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"list-targets\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"List the targets offered by the clipboard\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"The target format to copy or paste\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"<target>\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Copy <file> to clipboard\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"<file>\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"Store <file> in the clipboard manager\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"paste\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"Paste clipoard into <file> ('-' pastes to STDOUT)\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Show version information and exit\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"secondary\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"clipboard\00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"test-clipboard (GIMP clipboard testbed) version %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"2.8.18\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"TARGETS\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"%s: gtk_clipboard_set_with_data() failed\0A\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"%s: copying failed: %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"%s: copying failed\0A\00", align 1
@.str.33 = private unnamed_addr constant [59 x i8] c"%s: data transfer in progress, hit <ctrl>+c when pasted...\00", align 1
@__func__.test_clipboard_copy_callback = private unnamed_addr constant [29 x i8] c"test_clipboard_copy_callback\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"%s: storing failed: %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"%s: could not contact clipboard manager\0A\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"%s: open() filed: %s\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"%s: write() failed: %s\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"%s: close() failed: %s\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %context = alloca %struct._GOptionContext*, align 8
  %clipboard = alloca %struct._GtkClipboard*, align 8
  %error = alloca %struct._GError*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %call = call %struct._GOptionContext* @g_option_context_new(i8* null)
  store %struct._GOptionContext* %call, %struct._GOptionContext** %context, align 8
  %0 = load %struct._GOptionContext*, %struct._GOptionContext** %context, align 8
  call void @g_option_context_add_main_entries(%struct._GOptionContext* %0, %struct._GOptionEntry* getelementptr inbounds ([8 x %struct._GOptionEntry], [8 x %struct._GOptionEntry]* @main_entries, i32 0, i32 0), i8* null)
  %1 = load %struct._GOptionContext*, %struct._GOptionContext** %context, align 8
  %call1 = call %struct._GOptionGroup* @gtk_get_option_group(i32 1)
  call void @g_option_context_add_group(%struct._GOptionContext* %1, %struct._GOptionGroup* %call1)
  %2 = load %struct._GOptionContext*, %struct._GOptionContext** %context, align 8
  %call2 = call i32 @g_option_context_parse(%struct._GOptionContext* %2, i32* %argc.addr, i8*** %argv.addr, %struct._GError** %error)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.5, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool3 = icmp ne %struct._GError* %3, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %4 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %4, i32 0, i32 2
  %5 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %5)
  %6 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %6)
  br label %if.end

if.else:                                          ; preds = %if.then
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %entry
  call void @gtk_init(i32* %argc.addr, i8*** %argv.addr)
  %call6 = call %struct._GdkDisplay* @gdk_display_get_default()
  %7 = load %struct._GdkAtom*, %struct._GdkAtom** @option_selection_type, align 8
  %call7 = call %struct._GtkClipboard* @gtk_clipboard_get_for_display(%struct._GdkDisplay* %call6, %struct._GdkAtom* %7)
  store %struct._GtkClipboard* %call7, %struct._GtkClipboard** %clipboard, align 8
  %8 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %tobool8 = icmp ne %struct._GtkClipboard* %8, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.5
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.5
  %9 = load i32, i32* @option_list_targets, align 4
  %tobool11 = icmp ne i32 %9, 0
  br i1 %tobool11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end.10
  %10 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %call13 = call i32 @test_clipboard_list_targets(%struct._GtkClipboard* %10)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.10
  %11 = load i8*, i8** @option_copy_filename, align 8
  %tobool18 = icmp ne i8* %11, null
  br i1 %tobool18, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end.17
  %12 = load i8*, i8** @option_paste_filename, align 8
  %tobool19 = icmp ne i8* %12, null
  br i1 %tobool19, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.17
  %13 = load i8*, i8** @option_copy_filename, align 8
  %tobool20 = icmp ne i8* %13, null
  br i1 %tobool20, label %land.lhs.true.21, label %lor.lhs.false.23

land.lhs.true.21:                                 ; preds = %lor.lhs.false
  %14 = load i8*, i8** @option_store_filename, align 8
  %tobool22 = icmp ne i8* %14, null
  br i1 %tobool22, label %if.then.27, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %land.lhs.true.21, %lor.lhs.false
  %15 = load i8*, i8** @option_paste_filename, align 8
  %tobool24 = icmp ne i8* %15, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.end.28

land.lhs.true.25:                                 ; preds = %lor.lhs.false.23
  %16 = load i8*, i8** @option_store_filename, align 8
  %tobool26 = icmp ne i8* %16, null
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true.25, %land.lhs.true.21, %land.lhs.true
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %land.lhs.true.25, %lor.lhs.false.23
  %17 = load i8*, i8** @option_copy_filename, align 8
  %tobool29 = icmp ne i8* %17, null
  br i1 %tobool29, label %if.then.30, label %if.end.38

if.then.30:                                       ; preds = %if.end.28
  %18 = load i8*, i8** @option_target, align 8
  %tobool31 = icmp ne i8* %18, null
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.then.30
  %19 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %19, i64 0
  %20 = load i8*, i8** %arrayidx, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i8* %20)
  store i32 1, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.then.30
  %21 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %22 = load i8*, i8** @option_target, align 8
  %23 = load i8*, i8** @option_copy_filename, align 8
  %call34 = call i32 @test_clipboard_copy(%struct._GtkClipboard* %21, i8* %22, i8* %23)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.end.33
  store i32 1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.end.33
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.28
  %24 = load i8*, i8** @option_store_filename, align 8
  %tobool39 = icmp ne i8* %24, null
  br i1 %tobool39, label %if.then.40, label %if.end.49

if.then.40:                                       ; preds = %if.end.38
  %25 = load i8*, i8** @option_target, align 8
  %tobool41 = icmp ne i8* %25, null
  br i1 %tobool41, label %if.end.44, label %if.then.42

if.then.42:                                       ; preds = %if.then.40
  %26 = load i8**, i8*** %argv.addr, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %26, i64 0
  %27 = load i8*, i8** %arrayidx43, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i8* %27)
  store i32 1, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.then.40
  %28 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %29 = load i8*, i8** @option_target, align 8
  %30 = load i8*, i8** @option_store_filename, align 8
  %call45 = call i32 @test_clipboard_store(%struct._GtkClipboard* %28, i8* %29, i8* %30)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.end.44
  store i32 1, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.end.44
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.38
  %31 = load i8*, i8** @option_paste_filename, align 8
  %tobool50 = icmp ne i8* %31, null
  br i1 %tobool50, label %if.then.51, label %if.end.60

if.then.51:                                       ; preds = %if.end.49
  %32 = load i8*, i8** @option_target, align 8
  %tobool52 = icmp ne i8* %32, null
  br i1 %tobool52, label %if.end.55, label %if.then.53

if.then.53:                                       ; preds = %if.then.51
  %33 = load i8**, i8*** %argv.addr, align 8
  %arrayidx54 = getelementptr inbounds i8*, i8** %33, i64 0
  %34 = load i8*, i8** %arrayidx54, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i8* %34)
  store i32 1, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.then.51
  %35 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  %36 = load i8*, i8** @option_target, align 8
  %37 = load i8*, i8** @option_paste_filename, align 8
  %call56 = call i32 @test_clipboard_paste(%struct._GtkClipboard* %35, i8* %36, i8* %37)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end.59, label %if.then.58

if.then.58:                                       ; preds = %if.end.55
  store i32 1, i32* %retval
  br label %return

if.end.59:                                        ; preds = %if.end.55
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.49
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.60, %if.then.58, %if.then.53, %if.then.47, %if.then.42, %if.then.36, %if.then.32, %if.then.27, %if.end.16, %if.then.15, %if.end
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare %struct._GOptionContext* @g_option_context_new(i8*) #1

declare void @g_option_context_add_main_entries(%struct._GOptionContext*, %struct._GOptionEntry*, i8*) #1

declare void @g_option_context_add_group(%struct._GOptionContext*, %struct._GOptionGroup*) #1

declare %struct._GOptionGroup* @gtk_get_option_group(i32) #1

declare i32 @g_option_context_parse(%struct._GOptionContext*, i32*, i8***, %struct._GError**) #1

declare void @g_printerr(i8*, ...) #1

declare void @g_error_free(%struct._GError*) #1

declare void @g_print(i8*, ...) #1

declare void @gtk_init(i32*, i8***) #1

declare %struct._GtkClipboard* @gtk_clipboard_get_for_display(%struct._GdkDisplay*, %struct._GdkAtom*) #1

declare %struct._GdkDisplay* @gdk_display_get_default() #1

; Function Attrs: nounwind uwtable
define internal void @g_error(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 4, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @test_clipboard_list_targets(%struct._GtkClipboard* %clipboard) #0 {
entry:
  %clipboard.addr = alloca %struct._GtkClipboard*, align 8
  %data = alloca %struct._GtkSelectionData*, align 8
  %targets = alloca %struct._GdkAtom**, align 8
  %n_targets = alloca i32, align 4
  %success = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GtkClipboard* %clipboard, %struct._GtkClipboard** %clipboard.addr, align 8
  %0 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard.addr, align 8
  %call = call %struct._GdkAtom* @gdk_atom_intern(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i32 0)
  %call1 = call %struct._GtkSelectionData* @gtk_clipboard_wait_for_contents(%struct._GtkClipboard* %0, %struct._GdkAtom* %call)
  store %struct._GtkSelectionData* %call1, %struct._GtkSelectionData** %data, align 8
  %1 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data, align 8
  %tobool = icmp ne %struct._GtkSelectionData* %1, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data, align 8
  %call2 = call i32 @gtk_selection_data_get_targets(%struct._GtkSelectionData* %2, %struct._GdkAtom*** %targets, i32* %n_targets)
  store i32 %call2, i32* %success, align 4
  %3 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %data, align 8
  call void @gtk_selection_data_free(%struct._GtkSelectionData* %3)
  %4 = load i32, i32* %success, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n_targets, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._GdkAtom**, %struct._GdkAtom*** %targets, align 8
  %arrayidx = getelementptr inbounds %struct._GdkAtom*, %struct._GdkAtom** %8, i64 %idxprom
  %9 = load %struct._GdkAtom*, %struct._GdkAtom** %arrayidx, align 8
  %call5 = call i8* @gdk_atom_name(%struct._GdkAtom* %9)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %call5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct._GdkAtom**, %struct._GdkAtom*** %targets, align 8
  %12 = bitcast %struct._GdkAtom** %11 to i8*
  call void @g_free(i8* %12)
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @test_clipboard_copy(%struct._GtkClipboard* %clipboard, i8* %target, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %clipboard.addr = alloca %struct._GtkClipboard*, align 8
  %target.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %entry1 = alloca %struct._GtkTargetEntry, align 8
  %data = alloca %struct._CopyData, align 8
  store %struct._GtkClipboard* %clipboard, %struct._GtkClipboard** %clipboard.addr, align 8
  store i8* %target, i8** %target.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %target.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %0)
  %target2 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %entry1, i32 0, i32 0
  store i8* %call, i8** %target2, align 8
  %flags = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %entry1, i32 0, i32 1
  store i32 0, i32* %flags, align 4
  %info = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %entry1, i32 0, i32 2
  store i32 1, i32* %info, align 4
  %1 = load i8*, i8** %filename.addr, align 8
  %filename3 = getelementptr inbounds %struct._CopyData, %struct._CopyData* %data, i32 0, i32 0
  store i8* %1, i8** %filename3, align 8
  %file_copied = getelementptr inbounds %struct._CopyData, %struct._CopyData* %data, i32 0, i32 1
  store i32 0, i32* %file_copied, align 4
  %error = getelementptr inbounds %struct._CopyData, %struct._CopyData* %data, i32 0, i32 2
  store %struct._GError* null, %struct._GError** %error, align 8
  %2 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard.addr, align 8
  %3 = bitcast %struct._CopyData* %data to i8*
  %call4 = call i32 @gtk_clipboard_set_with_data(%struct._GtkClipboard* %2, %struct._GtkTargetEntry* %entry1, i32 1, void (%struct._GtkClipboard*, %struct._GtkSelectionData*, i32, i8*)* @test_clipboard_copy_callback, void (%struct._GtkClipboard*, i8*)* null, i8* %3)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = call i8* @g_get_prgname()
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0), i8* %call5)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @gtk_main()
  %file_copied6 = getelementptr inbounds %struct._CopyData, %struct._CopyData* %data, i32 0, i32 1
  %4 = load i32, i32* %file_copied6, align 4
  %tobool7 = icmp ne i32 %4, 0
  br i1 %tobool7, label %if.end.17, label %if.then.8

if.then.8:                                        ; preds = %if.end
  %error9 = getelementptr inbounds %struct._CopyData, %struct._CopyData* %data, i32 0, i32 2
  %5 = load %struct._GError*, %struct._GError** %error9, align 8
  %tobool10 = icmp ne %struct._GError* %5, null
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.8
  %call12 = call i8* @g_get_prgname()
  %error13 = getelementptr inbounds %struct._CopyData, %struct._CopyData* %data, i32 0, i32 2
  %6 = load %struct._GError*, %struct._GError** %error13, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %6, i32 0, i32 2
  %7 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i32 0, i32 0), i8* %call12, i8* %7)
  %error14 = getelementptr inbounds %struct._CopyData, %struct._CopyData* %data, i32 0, i32 2
  %8 = load %struct._GError*, %struct._GError** %error14, align 8
  call void @g_error_free(%struct._GError* %8)
  br label %if.end.16

if.else:                                          ; preds = %if.then.8
  %call15 = call i8* @g_get_prgname()
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i8* %call15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.11
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.end.16, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @test_clipboard_store(%struct._GtkClipboard* %clipboard, i8* %target, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %clipboard.addr = alloca %struct._GtkClipboard*, align 8
  %target.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %entry1 = alloca %struct._GtkTargetEntry, align 8
  %data = alloca %struct._CopyData, align 8
  store %struct._GtkClipboard* %clipboard, %struct._GtkClipboard** %clipboard.addr, align 8
  store i8* %target, i8** %target.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %target.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %0)
  %target2 = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %entry1, i32 0, i32 0
  store i8* %call, i8** %target2, align 8
  %flags = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %entry1, i32 0, i32 1
  store i32 0, i32* %flags, align 4
  %info = getelementptr inbounds %struct._GtkTargetEntry, %struct._GtkTargetEntry* %entry1, i32 0, i32 2
  store i32 1, i32* %info, align 4
  %1 = load i8*, i8** %filename.addr, align 8
  %filename3 = getelementptr inbounds %struct._CopyData, %struct._CopyData* %data, i32 0, i32 0
  store i8* %1, i8** %filename3, align 8
  %file_copied = getelementptr inbounds %struct._CopyData, %struct._CopyData* %data, i32 0, i32 1
  store i32 0, i32* %file_copied, align 4
  %error = getelementptr inbounds %struct._CopyData, %struct._CopyData* %data, i32 0, i32 2
  store %struct._GError* null, %struct._GError** %error, align 8
  %2 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard.addr, align 8
  %3 = bitcast %struct._CopyData* %data to i8*
  %call4 = call i32 @gtk_clipboard_set_with_data(%struct._GtkClipboard* %2, %struct._GtkTargetEntry* %entry1, i32 1, void (%struct._GtkClipboard*, %struct._GtkSelectionData*, i32, i8*)* @test_clipboard_copy_callback, void (%struct._GtkClipboard*, i8*)* null, i8* %3)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = call i8* @g_get_prgname()
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0), i8* %call5)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard.addr, align 8
  call void @gtk_clipboard_set_can_store(%struct._GtkClipboard* %4, %struct._GtkTargetEntry* %entry1, i32 1)
  %5 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard.addr, align 8
  call void @gtk_clipboard_store(%struct._GtkClipboard* %5)
  %file_copied6 = getelementptr inbounds %struct._CopyData, %struct._CopyData* %data, i32 0, i32 1
  %6 = load i32, i32* %file_copied6, align 4
  %tobool7 = icmp ne i32 %6, 0
  br i1 %tobool7, label %if.end.17, label %if.then.8

if.then.8:                                        ; preds = %if.end
  %error9 = getelementptr inbounds %struct._CopyData, %struct._CopyData* %data, i32 0, i32 2
  %7 = load %struct._GError*, %struct._GError** %error9, align 8
  %tobool10 = icmp ne %struct._GError* %7, null
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.8
  %call12 = call i8* @g_get_prgname()
  %error13 = getelementptr inbounds %struct._CopyData, %struct._CopyData* %data, i32 0, i32 2
  %8 = load %struct._GError*, %struct._GError** %error13, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %8, i32 0, i32 2
  %9 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i32 0, i32 0), i8* %call12, i8* %9)
  %error14 = getelementptr inbounds %struct._CopyData, %struct._CopyData* %data, i32 0, i32 2
  %10 = load %struct._GError*, %struct._GError** %error14, align 8
  call void @g_error_free(%struct._GError* %10)
  br label %if.end.16

if.else:                                          ; preds = %if.then.8
  %call15 = call i8* @g_get_prgname()
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.35, i32 0, i32 0), i8* %call15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.11
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.end.16, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @test_clipboard_paste(%struct._GtkClipboard* %clipboard, i8* %target, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %clipboard.addr = alloca %struct._GtkClipboard*, align 8
  %target.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %sel_data = alloca %struct._GtkSelectionData*, align 8
  %data = alloca i8*, align 8
  %length = alloca i32, align 4
  %fd = alloca i32, align 4
  store %struct._GtkClipboard* %clipboard, %struct._GtkClipboard** %clipboard.addr, align 8
  store i8* %target, i8** %target.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard.addr, align 8
  %1 = load i8*, i8** %target.addr, align 8
  %call = call %struct._GdkAtom* @gdk_atom_intern(i8* %1, i32 0)
  %call1 = call %struct._GtkSelectionData* @gtk_clipboard_wait_for_contents(%struct._GtkClipboard* %0, %struct._GdkAtom* %call)
  store %struct._GtkSelectionData* %call1, %struct._GtkSelectionData** %sel_data, align 8
  %2 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %sel_data, align 8
  %tobool = icmp ne %struct._GtkSelectionData* %2, null
  br i1 %tobool, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %filename.addr, align 8
  %call2 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0)) #7
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.then
  store i32 1, i32* %fd, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %4 = load i8*, i8** %filename.addr, align 8
  %call5 = call i32 (i8*, i32, ...) @open(i8* %4, i32 577, i32 438)
  store i32 %call5, i32* %fd, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %5 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %call7 = call i8* @g_get_prgname()
  %call8 = call i32* @__errno_location() #8
  %6 = load i32, i32* %call8, align 4
  %call9 = call i8* @g_strerror(i32 %6) #8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i32 0, i32 0), i8* %call7, i8* %call9)
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %7 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %sel_data, align 8
  %call11 = call i8* @gtk_selection_data_get_data(%struct._GtkSelectionData* %7)
  store i8* %call11, i8** %data, align 8
  %8 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %sel_data, align 8
  %call12 = call i32 @gtk_selection_data_get_length(%struct._GtkSelectionData* %8)
  store i32 %call12, i32* %length, align 4
  %9 = load i32, i32* %fd, align 4
  %10 = load i8*, i8** %data, align 8
  %11 = load i32, i32* %length, align 4
  %conv = sext i32 %11 to i64
  %call13 = call i64 @write(i32 %9, i8* %10, i64 %conv)
  %12 = load i32, i32* %length, align 4
  %conv14 = sext i32 %12 to i64
  %cmp15 = icmp slt i64 %call13, %conv14
  br i1 %cmp15, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end.10
  %13 = load i32, i32* %fd, align 4
  %call18 = call i32 @close(i32 %13)
  %call19 = call i8* @g_get_prgname()
  %call20 = call i32* @__errno_location() #8
  %14 = load i32, i32* %call20, align 4
  %call21 = call i8* @g_strerror(i32 %14) #8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i32 0, i32 0), i8* %call19, i8* %call21)
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.10
  %15 = load i32, i32* %fd, align 4
  %call23 = call i32 @close(i32 %15)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %if.end.22
  %call27 = call i8* @g_get_prgname()
  %call28 = call i32* @__errno_location() #8
  %16 = load i32, i32* %call28, align 4
  %call29 = call i8* @g_strerror(i32 %16) #8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i32 0, i32 0), i8* %call27, i8* %call29)
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.22
  %17 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %sel_data, align 8
  call void @gtk_selection_data_free(%struct._GtkSelectionData* %17)
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.26, %if.then.17, %if.then.6
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @test_clipboard_parse_selection(i8* %option_name, i8* %value, i8* %data, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %option_name.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  store i8* %option_name, i8** %option_name.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0)) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GdkAtom* inttoptr (i64 1 to %struct._GdkAtom*), %struct._GdkAtom** @option_selection_type, align 8
  br label %if.end.10

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %value.addr, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0)) #7
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else.4, label %if.then.3

if.then.3:                                        ; preds = %if.else
  store %struct._GdkAtom* inttoptr (i64 2 to %struct._GdkAtom*), %struct._GdkAtom** @option_selection_type, align 8
  br label %if.end.9

if.else.4:                                        ; preds = %if.else
  %2 = load i8*, i8** %value.addr, align 8
  %call5 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0)) #7
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else.8, label %if.then.7

if.then.7:                                        ; preds = %if.else.4
  store %struct._GdkAtom* inttoptr (i64 69 to %struct._GdkAtom*), %struct._GdkAtom** @option_selection_type, align 8
  br label %if.end

if.else.8:                                        ; preds = %if.else.4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.7
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then.3
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.else.8
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: noreturn nounwind uwtable
define internal void @test_clipboard_show_version() #2 {
entry:
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0))
  call void @exit(i32 0) #9
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare %struct._GtkSelectionData* @gtk_clipboard_wait_for_contents(%struct._GtkClipboard*, %struct._GdkAtom*) #1

declare %struct._GdkAtom* @gdk_atom_intern(i8*, i32) #1

declare i32 @gtk_selection_data_get_targets(%struct._GtkSelectionData*, %struct._GdkAtom***, i32*) #1

declare void @gtk_selection_data_free(%struct._GtkSelectionData*) #1

declare i8* @gdk_atom_name(%struct._GdkAtom*) #1

declare void @g_free(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i32 @gtk_clipboard_set_with_data(%struct._GtkClipboard*, %struct._GtkTargetEntry*, i32, void (%struct._GtkClipboard*, %struct._GtkSelectionData*, i32, i8*)*, void (%struct._GtkClipboard*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @test_clipboard_copy_callback(%struct._GtkClipboard* %clipboard, %struct._GtkSelectionData* %selection, i32 %info, i8* %data) #0 {
entry:
  %clipboard.addr = alloca %struct._GtkClipboard*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %info.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %copy_data = alloca %struct._CopyData*, align 8
  %buf = alloca i8*, align 8
  %buf_size = alloca i64, align 8
  store %struct._GtkClipboard* %clipboard, %struct._GtkClipboard** %clipboard.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store i32 %info, i32* %info.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._CopyData*
  store %struct._CopyData* %1, %struct._CopyData** %copy_data, align 8
  %2 = load %struct._CopyData*, %struct._CopyData** %copy_data, align 8
  %filename = getelementptr inbounds %struct._CopyData, %struct._CopyData* %2, i32 0, i32 0
  %3 = load i8*, i8** %filename, align 8
  %4 = load %struct._CopyData*, %struct._CopyData** %copy_data, align 8
  %error = getelementptr inbounds %struct._CopyData, %struct._CopyData* %4, i32 0, i32 2
  %call = call i32 @g_file_get_contents(i8* %3, i8** %buf, i64* %buf_size, %struct._GError** %error)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.3, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** @option_store_filename, align 8
  %tobool1 = icmp ne i8* %5, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  call void @gtk_main_quit()
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %return

if.end.3:                                         ; preds = %entry
  %6 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %7 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call4 = call %struct._GdkAtom* @gtk_selection_data_get_target(%struct._GtkSelectionData* %7)
  %8 = load i8*, i8** %buf, align 8
  %9 = load i64, i64* %buf_size, align 8
  %conv = trunc i64 %9 to i32
  call void @gtk_selection_data_set(%struct._GtkSelectionData* %6, %struct._GdkAtom* %call4, i32 8, i8* %8, i32 %conv)
  %10 = load i8*, i8** %buf, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._CopyData*, %struct._CopyData** %copy_data, align 8
  %file_copied = getelementptr inbounds %struct._CopyData, %struct._CopyData* %11, i32 0, i32 1
  store i32 1, i32* %file_copied, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.test_clipboard_copy_callback, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.3, %if.end
  ret void
}

declare i8* @g_get_prgname() #1

declare void @gtk_main() #1

declare i32 @g_file_get_contents(i8*, i8**, i64*, %struct._GError**) #1

declare void @gtk_main_quit() #1

declare void @gtk_selection_data_set(%struct._GtkSelectionData*, %struct._GdkAtom*, i32, i8*, i32) #1

declare %struct._GdkAtom* @gtk_selection_data_get_target(%struct._GtkSelectionData*) #1

declare void @gtk_clipboard_set_can_store(%struct._GtkClipboard*, %struct._GtkTargetEntry*, i32) #1

declare void @gtk_clipboard_store(%struct._GtkClipboard*) #1

declare i32 @open(i8*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #6

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i8* @gtk_selection_data_get_data(%struct._GtkSelectionData*) #1

declare i32 @gtk_selection_data_get_length(%struct._GtkSelectionData*) #1

declare i64 @write(i32, i8*, i64) #1

declare i32 @close(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
