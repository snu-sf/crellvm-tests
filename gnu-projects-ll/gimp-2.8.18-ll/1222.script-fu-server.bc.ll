; ModuleID = './plug-ins/script-fu/script-fu-server.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct.ServerInterface = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i32, i8*, i32 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GHashTable = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon.0] }
%union.anon.0 = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.SFCommand = type { i8*, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.timeval = type { i64, i64 }
%struct.fd_set = type { [16 x i64] }
%union.sa_union = type { %struct.sockaddr_storage }
%struct.sockaddr_storage = type { i16, i64, [112 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._GimpProgressVtable = type { void (i8*, i32, i8*)*, void (i8*)*, void (i8*, i8*)*, void (double, i8*)*, void (i8*)*, i32 (i8*)*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GString = type { i8*, i64, i64 }

@script_fu_done = internal global i32 0, align 4
@server_mode = internal global i32 0, align 4
@script_fu_server_run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@sint = internal global %struct.ServerInterface { %struct._GtkWidget* null, %struct._GtkWidget* null, %struct._GtkWidget* null, i8* null, i32 10008, i8* null, i32 0 }, align 8
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Script-Fu server does not handle \22GIMP_RUN_WITH_LAST_VALS\22\00", align 1
@server_socks_used = internal global i32 0, align 4
@server_socks = internal global [2 x i32] zeroinitializer, align 4
@clients = internal global %struct._GHashTable* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"(error during host address lookup)\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Server: connect from host %s, port %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Server: disconnect from host %s.\0A\00", align 1
@command_queue = internal global %struct._GList* null, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"Error reading command header.\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Error in script-fu command transmission.\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"Error reading command.  Read %d out of %d bytes.\0A\00", align 1
@request_no = internal global i32 0, align 4
@queue_length = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [77 x i8] c"Received request #%d from IP address %s: %s on %s,[Request queue length: %d]\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"<invalid>\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@server_log_file = internal global %struct._IO_FILE* null, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [47 x i8] c"Script-Fu server initialized and listening...\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Processing request #%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [53 x i8] c"Request #%d processed in %f seconds, finishing on %s\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"gimp20-script-fu\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"script-fu\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"Script-Fu Server Options\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"gimp-script-fu\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"plug-in-script-fu-server\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"_Start Server\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"Listen on IP:\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"10008\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"Server port:\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"Server logfile:\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"gimp-warning\00", align 1
@.str.39 = private unnamed_addr constant [141 x i8] c"Listening on an IP address other than 127.0.0.1 (especially 0.0.0.0) can allow attackers to remotely execute arbitrary code on this machine.\00", align 1

; Function Attrs: nounwind uwtable
define void @script_fu_server_quit() #0 {
entry:
  store i32 1, i32* @script_fu_done, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @script_fu_server_get_mode() #0 {
entry:
  %0 = load i32, i32* @server_mode, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define void @script_fu_server_run(i8* %name, i32 %nparams, %struct._GimpParam* %params, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %params.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %status = alloca i32, align 4
  %run_mode = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %params, %struct._GimpParam** %params.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  %0 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  %2 = load i32, i32* %run_mode, align 4
  call void @ts_set_run_mode(i32 %2)
  %3 = load i32, i32* %run_mode, align 4
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %entry
  %call = call i32 @server_interface()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 1, i32* @server_mode, align 4
  %4 = load i8*, i8** getelementptr inbounds (%struct.ServerInterface, %struct.ServerInterface* @sint, i32 0, i32 3), align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.ServerInterface, %struct.ServerInterface* @sint, i32 0, i32 4), align 4
  %6 = load i8*, i8** getelementptr inbounds (%struct.ServerInterface, %struct.ServerInterface* @sint, i32 0, i32 5), align 8
  call void @server_start(i8* %4, i32 %5, i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* @server_mode, align 4
  %7 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 1
  %data3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx2, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data3 to i8**
  %8 = load i8*, i8** %d_string, align 8
  %tobool4 = icmp ne i8* %8, null
  br i1 %tobool4, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %sw.bb.1
  %9 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 1
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_string7 = bitcast %union._GimpParamData* %data6 to i8**
  %10 = load i8*, i8** %d_string7, align 8
  %call8 = call i64 @strlen(i8* %10) #7
  %tobool9 = icmp ne i64 %call8, 0
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %11 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 1
  %data11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx10, i32 0, i32 1
  %d_string12 = bitcast %union._GimpParamData* %data11 to i8**
  %12 = load i8*, i8** %d_string12, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %sw.bb.1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), %cond.false ]
  %13 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 2
  %data14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx13, i32 0, i32 1
  %d_int3215 = bitcast %union._GimpParamData* %data14 to i32*
  %14 = load i32, i32* %d_int3215, align 4
  %15 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 3
  %data17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx16, i32 0, i32 1
  %d_string18 = bitcast %union._GimpParamData* %data17 to i8**
  %16 = load i8*, i8** %d_string18, align 8
  call void @server_start(i8* %cond, i32 %14, i8* %16)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  store i32 1, i32* %status, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i32 0))
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end, %if.end
  %17 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %17, align 4
  %18 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @script_fu_server_run.values, i32 0, i32 0), %struct._GimpParam** %18, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @script_fu_server_run.values, i32 0, i64 0, i32 0), align 4
  %19 = load i32, i32* %status, align 4
  store i32 %19, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @script_fu_server_run.values, i32 0, i64 0, i32 1) to i32*), align 4
  ret void
}

declare void @ts_set_run_mode(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @server_interface() #0 {
entry:
  %dlg = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #8
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  call void @gimp_ui_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 0)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0)) #4
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0)) #4
  %call6 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i32 -6, i8* %call5, i32 -5, i8* null)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %dlg, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_dialog_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call7)
  %2 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %4 = bitcast %struct._GtkWidget* %3 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @response_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %6 = bitcast %struct._GtkWidget* %5 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), void ()* @gtk_main_quit, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call11 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %main_vbox, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_container_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call12)
  %9 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %9, i32 12)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_dialog_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call14)
  %12 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkDialog*
  %call16 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %12)
  %13 = bitcast %struct._GtkWidget* %call16 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_box_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call17)
  %14 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBox*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %14, %struct._GtkWidget* %15, i32 1, i32 1, i32 0)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %call19 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 2, i32 0)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %table, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_table_get_type() #8
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call20)
  %19 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %19, i32 6)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #8
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call22)
  %22 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %22, i32 6)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #8
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call24)
  %25 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %25, %struct._GtkWidget* %26, i32 0, i32 0, i32 0)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %27)
  %call26 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call26, %struct._GtkWidget** getelementptr inbounds (%struct.ServerInterface, %struct.ServerInterface* @sint, i32 0, i32 0), align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.ServerInterface, %struct.ServerInterface* @sint, i32 0, i32 0), align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_entry_get_type() #8
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call27)
  %30 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0))
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_table_get_type() #8
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call29)
  %33 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkTable*
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0)) #4
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.ServerInterface, %struct.ServerInterface* @sint, i32 0, i32 0), align 8
  %call32 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %33, i32 0, i32 0, i8* %call31, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %34, i32 1, i32 0)
  %call33 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call33, %struct._GtkWidget** getelementptr inbounds (%struct.ServerInterface, %struct.ServerInterface* @sint, i32 0, i32 1), align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.ServerInterface, %struct.ServerInterface* @sint, i32 0, i32 1), align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_entry_get_type() #8
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call34)
  %37 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0))
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_table_get_type() #8
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call36)
  %40 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkTable*
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0)) #4
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.ServerInterface, %struct.ServerInterface* @sint, i32 0, i32 1), align 8
  %call39 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %40, i32 0, i32 1, i8* %call38, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %41, i32 1, i32 0)
  %call40 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call40, %struct._GtkWidget** getelementptr inbounds (%struct.ServerInterface, %struct.ServerInterface* @sint, i32 0, i32 2), align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_table_get_type() #8
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call41)
  %44 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTable*
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0)) #4
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.ServerInterface, %struct.ServerInterface* @sint, i32 0, i32 2), align 8
  %call44 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %44, i32 0, i32 2, i8* %call43, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %45, i32 1, i32 0)
  %call45 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %hbox, align 8
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_box_get_type() #8
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call46)
  %48 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkBox*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %48, %struct._GtkWidget* %49, i32 0, i32 0, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %call48 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i32 6)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %image, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_box_get_type() #8
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call49)
  %53 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkBox*
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %53, %struct._GtkWidget* %54, i32 1, i32 1, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %55)
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.39, i32 0, i32 0)) #4
  %call52 = call %struct._GtkWidget* @gtk_label_new(i8* %call51)
  store %struct._GtkWidget* %call52, %struct._GtkWidget** %label, align 8
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_label_get_type() #8
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call53)
  %58 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %58, i32 1)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_label_get_type() #8
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call55)
  %61 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %61, i32 3, i32 2, i32 -1)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_box_get_type() #8
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call57)
  %64 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkBox*
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %64, %struct._GtkWidget* %65, i32 1, i32 1, i32 0)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %66)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %67)
  call void @gtk_main()
  %68 = load i32, i32* getelementptr inbounds (%struct.ServerInterface, %struct.ServerInterface* @sint, i32 0, i32 6), align 4
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal void @server_start(i8* %listen_ip, i32 %port, i8* %logfile) #0 {
entry:
  %listen_ip.addr = alloca i8*, align 8
  %port.addr = alloca i32, align 4
  %logfile.addr = alloca i8*, align 8
  %ai = alloca %struct.addrinfo*, align 8
  %ai_curr = alloca %struct.addrinfo*, align 8
  %hints = alloca %struct.addrinfo, align 8
  %e = alloca i32, align 4
  %sockno = alloca i32, align 4
  %port_s = alloca i8*, align 8
  %progress = alloca i8*, align 8
  %cmd = alloca %struct.SFCommand*, align 8
  store i8* %listen_ip, i8** %listen_ip.addr, align 8
  store i32 %port, i32* %port.addr, align 4
  store i8* %logfile, i8** %logfile.addr, align 8
  %0 = bitcast %struct.addrinfo* %hints to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 48, i32 8, i1 false)
  %ai_flags = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 0
  store i32 33, i32* %ai_flags, align 4
  %ai_socktype = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 2
  store i32 1, i32* %ai_socktype, align 4
  %1 = load i32, i32* %port.addr, align 4
  %call = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 %1)
  store i8* %call, i8** %port_s, align 8
  %2 = load i8*, i8** %listen_ip.addr, align 8
  %3 = load i8*, i8** %port_s, align 8
  %call1 = call i32 @getaddrinfo(i8* %2, i8* %3, %struct.addrinfo* %hints, %struct.addrinfo** %ai)
  store i32 %call1, i32* %e, align 4
  %4 = load i8*, i8** %port_s, align 8
  call void @g_free(i8* %4)
  %5 = load i32, i32* %e, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %e, align 4
  %call2 = call i8* @gai_strerror(i32 %6) #4
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* %call2)
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.addrinfo*, %struct.addrinfo** %ai, align 8
  store %struct.addrinfo* %7, %struct.addrinfo** %ai_curr, align 8
  store i32 0, i32* %sockno, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load %struct.addrinfo*, %struct.addrinfo** %ai_curr, align 8
  %cmp3 = icmp ne %struct.addrinfo* %8, null
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %9 = load i32, i32* %sockno, align 4
  %cmp4 = icmp slt i32 %9, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %11 = load %struct.addrinfo*, %struct.addrinfo** %ai_curr, align 8
  %call5 = call i32 @make_socket(%struct.addrinfo* %11)
  %12 = load i32, i32* %sockno, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @server_socks, i32 0, i64 %idxprom
  store i32 %call5, i32* %arrayidx, align 4
  %13 = load i32, i32* %sockno, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* @server_socks, i32 0, i64 %idxprom6
  %14 = load i32, i32* %arrayidx7, align 4
  %call8 = call i32 @listen(i32 %14, i32 5) #4
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body
  call void @print_socket_api_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %15 = load %struct.addrinfo*, %struct.addrinfo** %ai_curr, align 8
  %ai_next = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 7
  %16 = load %struct.addrinfo*, %struct.addrinfo** %ai_next, align 8
  store %struct.addrinfo* %16, %struct.addrinfo** %ai_curr, align 8
  %17 = load i32, i32* %sockno, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %sockno, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %18 = load i32, i32* %sockno, align 4
  store i32 %18, i32* @server_socks_used, align 4
  %19 = load i8*, i8** %logfile.addr, align 8
  %tobool = icmp ne i8* %19, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %20 = load i8*, i8** %logfile.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv = sext i8 %21 to i32
  %tobool12 = icmp ne i32 %conv, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true
  %22 = load i8*, i8** %logfile.addr, align 8
  %call14 = call %struct._IO_FILE* @fopen(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  store %struct._IO_FILE* %call14, %struct._IO_FILE** @server_log_file, align 8
  br label %if.end.15

if.else:                                          ; preds = %land.lhs.true, %for.end
  store %struct._IO_FILE* null, %struct._IO_FILE** @server_log_file, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.13
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @server_log_file, align 8
  %tobool16 = icmp ne %struct._IO_FILE* %23, null
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.15
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %24, %struct._IO_FILE** @server_log_file, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  %call19 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* null, void (i8*)* null, void (i8*)* @g_free)
  store %struct._GHashTable* %call19, %struct._GHashTable** @clients, align 8
  %call20 = call i8* @server_progress_install()
  store i8* %call20, i8** %progress, align 8
  call void (i8*, ...) @server_log(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i32 0, i32 0))
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end.18
  %25 = load i32, i32* @script_fu_done, align 4
  %tobool21 = icmp ne i32 %25, 0
  %lnot = xor i1 %tobool21, true
  br i1 %lnot, label %while.body, label %while.end.27

while.body:                                       ; preds = %while.cond
  call void @script_fu_server_listen(i32 0)
  br label %while.cond.22

while.cond.22:                                    ; preds = %while.body.24, %while.body
  %26 = load %struct._GList*, %struct._GList** @command_queue, align 8
  %tobool23 = icmp ne %struct._GList* %26, null
  br i1 %tobool23, label %while.body.24, label %while.end

while.body.24:                                    ; preds = %while.cond.22
  %27 = load %struct._GList*, %struct._GList** @command_queue, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 0
  %28 = load i8*, i8** %data, align 8
  %29 = bitcast i8* %28 to %struct.SFCommand*
  store %struct.SFCommand* %29, %struct.SFCommand** %cmd, align 8
  %30 = load %struct.SFCommand*, %struct.SFCommand** %cmd, align 8
  %call25 = call i32 @execute_command(%struct.SFCommand* %30)
  %31 = load %struct._GList*, %struct._GList** @command_queue, align 8
  %32 = load %struct.SFCommand*, %struct.SFCommand** %cmd, align 8
  %33 = bitcast %struct.SFCommand* %32 to i8*
  %call26 = call %struct._GList* @g_list_remove(%struct._GList* %31, i8* %33)
  store %struct._GList* %call26, %struct._GList** @command_queue, align 8
  %34 = load i32, i32* @queue_length, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* @queue_length, align 4
  %35 = load %struct.SFCommand*, %struct.SFCommand** %cmd, align 8
  %command = getelementptr inbounds %struct.SFCommand, %struct.SFCommand* %35, i32 0, i32 0
  %36 = load i8*, i8** %command, align 8
  call void @g_free(i8* %36)
  %37 = load %struct.SFCommand*, %struct.SFCommand** %cmd, align 8
  %38 = bitcast %struct.SFCommand* %37 to i8*
  call void @g_free(i8* %38)
  br label %while.cond.22

while.end:                                        ; preds = %while.cond.22
  br label %while.cond

while.end.27:                                     ; preds = %while.cond
  %39 = load i8*, i8** %progress, align 8
  call void @server_progress_uninstall(i8* %39)
  call void @server_quit()
  br label %return

return:                                           ; preds = %while.end.27, %if.then.10, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define void @script_fu_server_listen(i32 %timeout) #0 {
entry:
  %timeout.addr = alloca i32, align 4
  %tv = alloca %struct.timeval, align 8
  %tvp = alloca %struct.timeval*, align 8
  %fds = alloca %struct.fd_set, align 8
  %sockno = alloca i32, align 4
  %__d0 = alloca i32, align 4
  %__d1 = alloca i32, align 4
  %client = alloca %union.sa_union, align 8
  %clientname = alloca [1025 x i8], align 16
  %size = alloca i32, align 4
  %new = alloca i32, align 4
  %portno = alloca i32, align 4
  store i32 %timeout, i32* %timeout.addr, align 4
  store %struct.timeval* null, %struct.timeval** %tvp, align 8
  %0 = load i32, i32* %timeout.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %timeout.addr, align 4
  %div = sdiv i32 %1, 1000
  %conv = sext i32 %div to i64
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  store i64 %conv, i64* %tv_sec, align 8
  %2 = load i32, i32* %timeout.addr, align 4
  %rem = srem i32 %2, 1000
  %conv1 = sext i32 %rem to i64
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  store i64 %conv1, i64* %tv_usec, align 8
  store %struct.timeval* %tv, %struct.timeval** %tvp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %__fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %fds, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits, i32 0, i64 0
  %3 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx) #4, !srcloc !1
  %asmresult = extractvalue { i64, i64* } %3, 0
  %asmresult2 = extractvalue { i64, i64* } %3, 1
  %4 = trunc i64 %asmresult to i32
  store i32 %4, i32* %__d0, align 4
  %5 = ptrtoint i64* %asmresult2 to i64
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %__d1, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %sockno, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %7 = load i32, i32* %sockno, align 4
  %8 = load i32, i32* @server_socks_used, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %sockno, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* @server_socks, i32 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx4, align 4
  %rem5 = srem i32 %10, 64
  %sh_prom = zext i32 %rem5 to i64
  %shl = shl i64 1, %sh_prom
  %11 = load i32, i32* %sockno, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* @server_socks, i32 0, i64 %idxprom6
  %12 = load i32, i32* %arrayidx7, align 4
  %div8 = sdiv i32 %12, 64
  %idxprom9 = sext i32 %div8 to i64
  %__fds_bits10 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %fds, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits10, i32 0, i64 %idxprom9
  %13 = load i64, i64* %arrayidx11, align 8
  %or = or i64 %13, %shl
  store i64 %or, i64* %arrayidx11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %sockno, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %sockno, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct._GHashTable*, %struct._GHashTable** @clients, align 8
  %16 = bitcast %struct.fd_set* %fds to i8*
  call void @g_hash_table_foreach(%struct._GHashTable* %15, void (i8*, i8*, i8*)* @script_fu_server_add_fd, i8* %16)
  %17 = load %struct.timeval*, %struct.timeval** %tvp, align 8
  %call = call i32 @select(i32 1024, %struct.fd_set* %fds, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %17)
  %cmp12 = icmp slt i32 %call, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.end
  call void @print_socket_api_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %for.end
  store i32 0, i32* %sockno, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.78, %if.end.15
  %18 = load i32, i32* %sockno, align 4
  %19 = load i32, i32* @server_socks_used, align 4
  %cmp17 = icmp slt i32 %18, %19
  br i1 %cmp17, label %for.body.19, label %for.end.80

for.body.19:                                      ; preds = %for.cond.16
  store i32 128, i32* %size, align 4
  %20 = load i32, i32* %sockno, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds [2 x i32], [2 x i32]* @server_socks, i32 0, i64 %idxprom20
  %21 = load i32, i32* %arrayidx21, align 4
  %div22 = sdiv i32 %21, 64
  %idxprom23 = sext i32 %div22 to i64
  %__fds_bits24 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %fds, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits24, i32 0, i64 %idxprom23
  %22 = load i64, i64* %arrayidx25, align 8
  %23 = load i32, i32* %sockno, align 4
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds [2 x i32], [2 x i32]* @server_socks, i32 0, i64 %idxprom26
  %24 = load i32, i32* %arrayidx27, align 4
  %rem28 = srem i32 %24, 64
  %sh_prom29 = zext i32 %rem28 to i64
  %shl30 = shl i64 1, %sh_prom29
  %and = and i64 %22, %shl30
  %cmp31 = icmp ne i64 %and, 0
  br i1 %cmp31, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %for.body.19
  br label %for.inc.78

if.end.34:                                        ; preds = %for.body.19
  %25 = load i32, i32* %sockno, align 4
  %idxprom35 = sext i32 %25 to i64
  %arrayidx36 = getelementptr inbounds [2 x i32], [2 x i32]* @server_socks, i32 0, i64 %idxprom35
  %26 = load i32, i32* %arrayidx36, align 4
  %sa = bitcast %union.sa_union* %client to %struct.sockaddr*
  %call37 = call i32 @accept(i32 %26, %struct.sockaddr* %sa, i32* %size)
  store i32 %call37, i32* %new, align 4
  %27 = load i32, i32* %new, align 4
  %cmp38 = icmp slt i32 %27, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.34
  call void @print_socket_api_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.41:                                        ; preds = %if.end.34
  %arraydecay = getelementptr inbounds [1025 x i8], [1025 x i8]* %clientname, i32 0, i32 0
  %call42 = call i8* @strncpy(i8* %arraydecay, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0), i64 1024) #4
  %sa43 = bitcast %union.sa_union* %client to %struct.sockaddr*
  %28 = load i32, i32* %size, align 4
  %arraydecay44 = getelementptr inbounds [1025 x i8], [1025 x i8]* %clientname, i32 0, i32 0
  %call45 = call i32 @getnameinfo(%struct.sockaddr* %sa43, i32 %28, i8* %arraydecay44, i32 1025, i8* null, i32 0, i32 1)
  %29 = load %struct._GHashTable*, %struct._GHashTable** @clients, align 8
  %30 = load i32, i32* %new, align 4
  %conv46 = sext i32 %30 to i64
  %31 = inttoptr i64 %conv46 to i8*
  %arraydecay47 = getelementptr inbounds [1025 x i8], [1025 x i8]* %clientname, i32 0, i32 0
  %call48 = call noalias i8* @g_strdup(i8* %arraydecay47)
  %call49 = call i32 @g_hash_table_insert(%struct._GHashTable* %29, i8* %31, i8* %call48)
  %family = bitcast %union.sa_union* %client to i16*
  %32 = load i16, i16* %family, align 2
  %conv50 = zext i16 %32 to i32
  switch i32 %conv50, label %sw.default [
    i32 2, label %sw.bb
    i32 10, label %sw.bb.63
  ]

sw.bb:                                            ; preds = %if.end.41
  %sa_in = bitcast %union.sa_union* %client to %struct.sockaddr_in*
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sa_in, i32 0, i32 1
  %33 = load i16, i16* %sin_port, align 2
  %conv51 = zext i16 %33 to i32
  %shr = ashr i32 %conv51, 8
  %conv52 = trunc i32 %shr to i16
  %conv53 = zext i16 %conv52 to i32
  %sa_in54 = bitcast %union.sa_union* %client to %struct.sockaddr_in*
  %sin_port55 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sa_in54, i32 0, i32 1
  %34 = load i16, i16* %sin_port55, align 2
  %conv56 = zext i16 %34 to i32
  %shl57 = shl i32 %conv56, 8
  %conv58 = trunc i32 %shl57 to i16
  %conv59 = zext i16 %conv58 to i32
  %or60 = or i32 %conv53, %conv59
  %conv61 = trunc i32 %or60 to i16
  %conv62 = zext i16 %conv61 to i32
  store i32 %conv62, i32* %portno, align 4
  br label %sw.epilog

sw.bb.63:                                         ; preds = %if.end.41
  %sa_in6 = bitcast %union.sa_union* %client to %struct.sockaddr_in6*
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %sa_in6, i32 0, i32 1
  %35 = load i16, i16* %sin6_port, align 2
  %conv64 = zext i16 %35 to i32
  %shr65 = ashr i32 %conv64, 8
  %conv66 = trunc i32 %shr65 to i16
  %conv67 = zext i16 %conv66 to i32
  %sa_in668 = bitcast %union.sa_union* %client to %struct.sockaddr_in6*
  %sin6_port69 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %sa_in668, i32 0, i32 1
  %36 = load i16, i16* %sin6_port69, align 2
  %conv70 = zext i16 %36 to i32
  %shl71 = shl i32 %conv70, 8
  %conv72 = trunc i32 %shl71 to i16
  %conv73 = zext i16 %conv72 to i32
  %or74 = or i32 %conv67, %conv73
  %conv75 = trunc i32 %or74 to i16
  %conv76 = zext i16 %conv75 to i32
  store i32 %conv76, i32* %portno, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.41
  store i32 0, i32* %portno, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.63, %sw.bb
  %arraydecay77 = getelementptr inbounds [1025 x i8], [1025 x i8]* %clientname, i32 0, i32 0
  %37 = load i32, i32* %portno, align 4
  call void (i8*, ...) @server_log(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay77, i32 %37)
  br label %for.inc.78

for.inc.78:                                       ; preds = %sw.epilog, %if.then.33
  %38 = load i32, i32* %sockno, align 4
  %inc79 = add nsw i32 %38, 1
  store i32 %inc79, i32* %sockno, align 4
  br label %for.cond.16

for.end.80:                                       ; preds = %for.cond.16
  %39 = load %struct._GHashTable*, %struct._GHashTable** @clients, align 8
  %40 = bitcast %struct.fd_set* %fds to i8*
  %call81 = call i32 @g_hash_table_foreach_remove(%struct._GHashTable* %39, i32 (i8*, i8*, i8*)* @script_fu_server_read_fd, i8* %40)
  br label %return

return:                                           ; preds = %for.end.80, %if.then.40, %if.then.14
  ret void
}

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @script_fu_server_add_fd(i8* %key, i8* %value, i8* %data) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  %rem = srem i32 %conv, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %2 = load i8*, i8** %key.addr, align 8
  %3 = ptrtoint i8* %2 to i64
  %conv1 = trunc i64 %3 to i32
  %div = sdiv i32 %conv1, 64
  %idxprom = sext i32 %div to i64
  %4 = load i8*, i8** %data.addr, align 8
  %5 = bitcast i8* %4 to %struct.fd_set*
  %__fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %5, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits, i32 0, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %or = or i64 %6, %shl
  store i64 %or, i64* %arrayidx, align 8
  ret void
}

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #1

; Function Attrs: nounwind uwtable
define internal void @print_socket_api_error(i8* %api_name) #0 {
entry:
  %api_name.addr = alloca i8*, align 8
  store i8* %api_name, i8** %api_name.addr, align 8
  %0 = load i8*, i8** %api_name.addr, align 8
  call void @perror(i8* %0)
  ret void
}

declare i32 @accept(i32, %struct.sockaddr*, i32*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @server_log(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %buf = alloca i8*, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call noalias i8* @g_strdup_vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2)
  store i8* %call, i8** %buf, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %1 = load i8*, i8** %buf, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @server_log_file, align 8
  %call5 = call i32 @fputs(i8* %1, %struct._IO_FILE* %2)
  %3 = load i8*, i8** %buf, align 8
  call void @g_free(i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @server_log_file, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp = icmp ne %struct._IO_FILE* %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @server_log_file, align 8
  %call6 = call i32 @fflush(%struct._IO_FILE* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @g_hash_table_foreach_remove(%struct._GHashTable*, i32 (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @script_fu_server_read_fd(i8* %key, i8* %value, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %fd = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %cmd = alloca %struct.SFCommand*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %fd, align 4
  %2 = load i32, i32* %fd, align 4
  %div = sdiv i32 %2, 64
  %idxprom = sext i32 %div to i64
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to %struct.fd_set*
  %__fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %4, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits, i32 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %6 = load i32, i32* %fd, align 4
  %rem = srem i32 %6, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %5, %shl
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %fd, align 4
  %call = call i32 @read_from_client(i32 %7)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %if.then
  %8 = load i8*, i8** %value.addr, align 8
  call void (i8*, ...) @server_log(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0), i8* %8)
  %9 = load i32, i32* %fd, align 4
  %call5 = call i32 @close(i32 %9)
  %10 = load %struct._GList*, %struct._GList** @command_queue, align 8
  store %struct._GList* %10, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %11, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._GList*, %struct._GList** @command_queue, align 8
  %data6 = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 0
  %13 = load i8*, i8** %data6, align 8
  %14 = bitcast i8* %13 to %struct.SFCommand*
  store %struct.SFCommand* %14, %struct.SFCommand** %cmd, align 8
  %15 = load %struct.SFCommand*, %struct.SFCommand** %cmd, align 8
  %filedes = getelementptr inbounds %struct.SFCommand, %struct.SFCommand* %15, i32 0, i32 1
  %16 = load i32, i32* %filedes, align 4
  %17 = load i32, i32* %fd, align 4
  %cmp7 = icmp eq i32 %16, %17
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %for.body
  %18 = load %struct.SFCommand*, %struct.SFCommand** %cmd, align 8
  %filedes10 = getelementptr inbounds %struct.SFCommand, %struct.SFCommand* %18, i32 0, i32 1
  store i32 -1, i32* %filedes10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 1
  %20 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %20, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %for.end
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @read_from_client(i32 %filedes) #0 {
entry:
  %retval = alloca i32, align 4
  %filedes.addr = alloca i32, align 4
  %cmd = alloca %struct.SFCommand*, align 8
  %buffer = alloca [3 x i8], align 1
  %command = alloca i8*, align 8
  %clientaddr = alloca i8*, align 8
  %clock = alloca i64, align 8
  %command_len = alloca i32, align 4
  %nbytes = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %filedes, i32* %filedes.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.12, %if.then.7, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %filedes.addr, align 4
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %buffer, i32 0, i32 0
  %2 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %3 = load i32, i32* %i, align 4
  %sub = sub nsw i32 3, %3
  %conv = sext i32 %sub to i64
  %call = call i64 @recv(i32 %1, i8* %add.ptr, i64 %conv, i32 0)
  %conv1 = trunc i64 %call to i32
  store i32 %conv1, i32* %nbytes, align 4
  %4 = load i32, i32* %nbytes, align 4
  %cmp2 = icmp slt i32 %4, 0
  br i1 %cmp2, label %if.then, label %if.end.8

if.then:                                          ; preds = %for.body
  %call4 = call i32* @__errno_location() #8
  %5 = load i32, i32* %call4, align 4
  %cmp5 = icmp eq i32 %5, 4
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  br label %for.cond

if.end:                                           ; preds = %if.then
  call void (i8*, ...) @server_log(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %for.body
  %6 = load i32, i32* %nbytes, align 4
  %cmp9 = icmp eq i32 %6, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %7 = load i32, i32* %nbytes, align 4
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, %7
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %buffer, i32 0, i64 0
  %9 = load i8, i8* %arrayidx, align 1
  %conv13 = zext i8 %9 to i32
  %cmp14 = icmp ne i32 %conv13, 71
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.end
  call void (i8*, ...) @server_log(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %for.end
  %arrayidx18 = getelementptr inbounds [3 x i8], [3 x i8]* %buffer, i32 0, i64 1
  %10 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %10 to i32
  %shl = shl i32 %conv19, 8
  %arrayidx20 = getelementptr inbounds [3 x i8], [3 x i8]* %buffer, i32 0, i64 2
  %11 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %11 to i32
  %or = or i32 %shl, %conv21
  store i32 %or, i32* %command_len, align 4
  %12 = load i32, i32* %command_len, align 4
  %add22 = add nsw i32 %12, 1
  %conv23 = sext i32 %add22 to i64
  %call24 = call noalias i8* @g_malloc_n(i64 %conv23, i64 1)
  store i8* %call24, i8** %command, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %if.end.45, %if.then.43, %if.end.17
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %command_len, align 4
  %cmp26 = icmp slt i32 %13, %14
  br i1 %cmp26, label %for.body.28, label %for.end.47

for.body.28:                                      ; preds = %for.cond.25
  %15 = load i32, i32* %filedes.addr, align 4
  %16 = load i8*, i8** %command, align 8
  %17 = load i32, i32* %i, align 4
  %idx.ext29 = sext i32 %17 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %16, i64 %idx.ext29
  %18 = load i32, i32* %command_len, align 4
  %19 = load i32, i32* %i, align 4
  %sub31 = sub nsw i32 %18, %19
  %conv32 = sext i32 %sub31 to i64
  %call33 = call i64 @recv(i32 %15, i8* %add.ptr30, i64 %conv32, i32 0)
  %conv34 = trunc i64 %call33 to i32
  store i32 %conv34, i32* %nbytes, align 4
  %20 = load i32, i32* %nbytes, align 4
  %cmp35 = icmp sle i32 %20, 0
  br i1 %cmp35, label %if.then.37, label %if.end.45

if.then.37:                                       ; preds = %for.body.28
  %21 = load i32, i32* %nbytes, align 4
  %cmp38 = icmp slt i32 %21, 0
  br i1 %cmp38, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %if.then.37
  %call40 = call i32* @__errno_location() #8
  %22 = load i32, i32* %call40, align 4
  %cmp41 = icmp eq i32 %22, 4
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %land.lhs.true
  br label %for.cond.25

if.end.44:                                        ; preds = %land.lhs.true, %if.then.37
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %command_len, align 4
  call void (i8*, ...) @server_log(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i32 0, i32 0), i32 %23, i32 %24)
  %25 = load i8*, i8** %command, align 8
  call void @g_free(i8* %25)
  store i32 -1, i32* %retval
  br label %return

if.end.45:                                        ; preds = %for.body.28
  %26 = load i32, i32* %nbytes, align 4
  %27 = load i32, i32* %i, align 4
  %add46 = add nsw i32 %27, %26
  store i32 %add46, i32* %i, align 4
  br label %for.cond.25

for.end.47:                                       ; preds = %for.cond.25
  %28 = load i32, i32* %command_len, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load i8*, i8** %command, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %29, i64 %idxprom
  store i8 0, i8* %arrayidx48, align 1
  %call49 = call noalias i8* @g_malloc_n(i64 1, i64 16)
  %30 = bitcast i8* %call49 to %struct.SFCommand*
  store %struct.SFCommand* %30, %struct.SFCommand** %cmd, align 8
  %31 = load i32, i32* %filedes.addr, align 4
  %32 = load %struct.SFCommand*, %struct.SFCommand** %cmd, align 8
  %filedes50 = getelementptr inbounds %struct.SFCommand, %struct.SFCommand* %32, i32 0, i32 1
  store i32 %31, i32* %filedes50, align 4
  %33 = load i8*, i8** %command, align 8
  %34 = load %struct.SFCommand*, %struct.SFCommand** %cmd, align 8
  %command51 = getelementptr inbounds %struct.SFCommand, %struct.SFCommand* %34, i32 0, i32 0
  store i8* %33, i8** %command51, align 8
  %35 = load i32, i32* @request_no, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* @request_no, align 4
  %36 = load %struct.SFCommand*, %struct.SFCommand** %cmd, align 8
  %request_no = getelementptr inbounds %struct.SFCommand, %struct.SFCommand* %36, i32 0, i32 2
  store i32 %35, i32* %request_no, align 4
  %37 = load %struct._GList*, %struct._GList** @command_queue, align 8
  %38 = load %struct.SFCommand*, %struct.SFCommand** %cmd, align 8
  %39 = bitcast %struct.SFCommand* %38 to i8*
  %call52 = call %struct._GList* @g_list_append(%struct._GList* %37, i8* %39)
  store %struct._GList* %call52, %struct._GList** @command_queue, align 8
  %40 = load i32, i32* @queue_length, align 4
  %inc53 = add nsw i32 %40, 1
  store i32 %inc53, i32* @queue_length, align 4
  %41 = load %struct._GHashTable*, %struct._GHashTable** @clients, align 8
  %42 = load %struct.SFCommand*, %struct.SFCommand** %cmd, align 8
  %filedes54 = getelementptr inbounds %struct.SFCommand, %struct.SFCommand* %42, i32 0, i32 1
  %43 = load i32, i32* %filedes54, align 4
  %conv55 = sext i32 %43 to i64
  %44 = inttoptr i64 %conv55 to i8*
  %call56 = call i8* @g_hash_table_lookup(%struct._GHashTable* %41, i8* %44)
  store i8* %call56, i8** %clientaddr, align 8
  %call57 = call i64 @time(i64* %clock) #4
  %45 = load %struct.SFCommand*, %struct.SFCommand** %cmd, align 8
  %request_no58 = getelementptr inbounds %struct.SFCommand, %struct.SFCommand* %45, i32 0, i32 2
  %46 = load i32, i32* %request_no58, align 4
  %47 = load i8*, i8** %clientaddr, align 8
  %tobool = icmp ne i8* %47, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.47
  %48 = load i8*, i8** %clientaddr, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.end.47
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %48, %cond.true ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), %cond.false ]
  %49 = load %struct.SFCommand*, %struct.SFCommand** %cmd, align 8
  %command59 = getelementptr inbounds %struct.SFCommand, %struct.SFCommand* %49, i32 0, i32 0
  %50 = load i8*, i8** %command59, align 8
  %call60 = call i8* @ctime(i64* %clock) #4
  %51 = load i32, i32* @queue_length, align 4
  call void (i8*, ...) @server_log(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.10, i32 0, i32 0), i32 %46, i8* %cond, i8* %50, i8* %call60, i32 %51)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.end.44, %if.then.16, %if.then.11, %if.end
  %52 = load i32, i32* %retval
  ret i32 %52
}

declare i32 @close(i32) #1

declare i64 @recv(i32, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @g_free(i8*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind
declare i8* @ctime(i64*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare void @g_printerr(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gai_strerror(i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @make_socket(%struct.addrinfo* %ai) #0 {
entry:
  %ai.addr = alloca %struct.addrinfo*, align 8
  %sock = alloca i32, align 4
  %v = alloca i32, align 4
  store %struct.addrinfo* %ai, %struct.addrinfo** %ai.addr, align 8
  store i32 1, i32* %v, align 4
  %0 = load %struct.addrinfo*, %struct.addrinfo** %ai.addr, align 8
  %ai_family = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %0, i32 0, i32 1
  %1 = load i32, i32* %ai_family, align 4
  %2 = load %struct.addrinfo*, %struct.addrinfo** %ai.addr, align 8
  %ai_socktype = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %2, i32 0, i32 2
  %3 = load i32, i32* %ai_socktype, align 4
  %4 = load %struct.addrinfo*, %struct.addrinfo** %ai.addr, align 8
  %ai_protocol = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 3
  %5 = load i32, i32* %ai_protocol, align 4
  %call = call i32 @socket(i32 %1, i32 %3, i32 %5) #4
  store i32 %call, i32* %sock, align 4
  %6 = load i32, i32* %sock, align 4
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @print_socket_api_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  call void @gimp_quit() #9
  unreachable

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %sock, align 4
  %8 = bitcast i32* %v to i8*
  %call1 = call i32 @setsockopt(i32 %7, i32 1, i32 2, i8* %8, i32 4) #4
  %9 = load %struct.addrinfo*, %struct.addrinfo** %ai.addr, align 8
  %ai_family2 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 1
  %10 = load i32, i32* %ai_family2, align 4
  %cmp3 = icmp eq i32 %10, 10
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* %v, align 4
  %11 = load i32, i32* %sock, align 4
  %12 = bitcast i32* %v to i8*
  %call5 = call i32 @setsockopt(i32 %11, i32 41, i32 26, i8* %12, i32 4) #4
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  call void @print_socket_api_error(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0))
  call void @gimp_quit() #9
  unreachable

if.end.8:                                         ; preds = %if.then.4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %13 = load i32, i32* %sock, align 4
  %14 = load %struct.addrinfo*, %struct.addrinfo** %ai.addr, align 8
  %ai_addr = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 5
  %15 = load %struct.sockaddr*, %struct.sockaddr** %ai_addr, align 8
  %16 = load %struct.addrinfo*, %struct.addrinfo** %ai.addr, align 8
  %ai_addrlen = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 4
  %17 = load i32, i32* %ai_addrlen, align 4
  %call10 = call i32 @bind(i32 %13, %struct.sockaddr* %15, i32 %17) #4
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  call void @print_socket_api_error(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0))
  call void @gimp_quit() #9
  unreachable

if.end.13:                                        ; preds = %if.end.9
  %18 = load i32, i32* %sock, align 4
  ret i32 %18
}

; Function Attrs: nounwind
declare i32 @listen(i32, i32) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #1

; Function Attrs: nounwind readnone
declare i32 @g_direct_hash(i8*) #5

; Function Attrs: nounwind uwtable
define internal i8* @server_progress_install() #0 {
entry:
  %vtable = alloca %struct._GimpProgressVtable, align 8
  %0 = bitcast %struct._GimpProgressVtable* %vtable to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 112, i32 8, i1 false)
  %start = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable, i32 0, i32 0
  store void (i8*, i32, i8*)* @server_progress_start, void (i8*, i32, i8*)** %start, align 8
  %end = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable, i32 0, i32 1
  store void (i8*)* @server_progress_end, void (i8*)** %end, align 8
  %set_text = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable, i32 0, i32 2
  store void (i8*, i8*)* @server_progress_set_text, void (i8*, i8*)** %set_text, align 8
  %set_value = getelementptr inbounds %struct._GimpProgressVtable, %struct._GimpProgressVtable* %vtable, i32 0, i32 3
  store void (double, i8*)* @server_progress_set_value, void (double, i8*)** %set_value, align 8
  %call = call i8* @gimp_progress_install_vtable(%struct._GimpProgressVtable* %vtable, i8* null)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @execute_command(%struct.SFCommand* %cmd) #0 {
entry:
  %retval = alloca i32, align 4
  %cmd.addr = alloca %struct.SFCommand*, align 8
  %buffer = alloca [4 x i8], align 1
  %response = alloca %struct._GString*, align 8
  %clock1 = alloca i64, align 8
  %clock2 = alloca i64, align 8
  %error = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.SFCommand* %cmd, %struct.SFCommand** %cmd.addr, align 8
  %0 = load %struct.SFCommand*, %struct.SFCommand** %cmd.addr, align 8
  %request_no = getelementptr inbounds %struct.SFCommand, %struct.SFCommand* %0, i32 0, i32 2
  %1 = load i32, i32* %request_no, align 4
  call void (i8*, ...) @server_log(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0), i32 %1)
  %call = call i64 @time(i64* %clock1) #4
  %call1 = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call1, %struct._GString** %response, align 8
  %2 = load %struct._GString*, %struct._GString** %response, align 8
  %3 = bitcast %struct._GString* %2 to i8*
  call void @ts_register_output_func(void (i32, i8*, i32, i8*)* @ts_gstring_output_func, i8* %3)
  %4 = load %struct.SFCommand*, %struct.SFCommand** %cmd.addr, align 8
  %command = getelementptr inbounds %struct.SFCommand, %struct.SFCommand* %4, i32 0, i32 0
  %5 = load i8*, i8** %command, align 8
  %call2 = call i32 @ts_interpret_string(i8* %5)
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %error, align 4
  %6 = load %struct._GString*, %struct._GString** %response, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %6, i32 0, i32 0
  %7 = load i8*, i8** %str, align 8
  call void (i8*, ...) @server_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* %7)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %error, align 4
  %8 = load %struct._GString*, %struct._GString** %response, align 8
  %call3 = call i8* @ts_get_success_msg()
  %call4 = call %struct._GString* @g_string_assign(%struct._GString* %8, i8* %call3)
  %call5 = call i64 @time(i64* %clock2) #4
  %9 = load %struct.SFCommand*, %struct.SFCommand** %cmd.addr, align 8
  %request_no6 = getelementptr inbounds %struct.SFCommand, %struct.SFCommand* %9, i32 0, i32 2
  %10 = load i32, i32* %request_no6, align 4
  %11 = load i64, i64* %clock2, align 8
  %12 = load i64, i64* %clock1, align 8
  %call7 = call double @difftime(i64 %11, i64 %12) #8
  %call8 = call i8* @ctime(i64* %clock2) #4
  call void (i8*, ...) @server_log(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.22, i32 0, i32 0), i32 %10, double %call7, i8* %call8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i64 0
  store i8 71, i8* %arrayidx, align 1
  %13 = load i32, i32* %error, align 4
  %tobool = icmp ne i32 %13, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %conv = trunc i32 %cond to i8
  %arrayidx9 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i64 1
  store i8 %conv, i8* %arrayidx9, align 1
  %14 = load %struct._GString*, %struct._GString** %response, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %14, i32 0, i32 1
  %15 = load i64, i64* %len, align 8
  %shr = lshr i64 %15, 8
  %conv10 = trunc i64 %shr to i8
  %arrayidx11 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i64 2
  store i8 %conv10, i8* %arrayidx11, align 1
  %16 = load %struct._GString*, %struct._GString** %response, align 8
  %len12 = getelementptr inbounds %struct._GString, %struct._GString* %16, i32 0, i32 1
  %17 = load i64, i64* %len12, align 8
  %and = and i64 %17, 255
  %conv13 = trunc i64 %and to i8
  %arrayidx14 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i64 3
  store i8 %conv13, i8* %arrayidx14, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %18, 4
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.SFCommand*, %struct.SFCommand** %cmd.addr, align 8
  %filedes = getelementptr inbounds %struct.SFCommand, %struct.SFCommand* %19, i32 0, i32 1
  %20 = load i32, i32* %filedes, align 4
  %cmp17 = icmp sgt i32 %20, 0
  br i1 %cmp17, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %for.body
  %21 = load %struct.SFCommand*, %struct.SFCommand** %cmd.addr, align 8
  %filedes19 = getelementptr inbounds %struct.SFCommand, %struct.SFCommand* %21, i32 0, i32 1
  %22 = load i32, i32* %filedes19, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i32 0
  %23 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %call20 = call i64 @send(i32 %22, i8* %add.ptr, i64 1, i32 0)
  %cmp21 = icmp slt i64 %call20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true
  call void @print_socket_api_error(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.44, %for.end
  %25 = load i32, i32* %i, align 4
  %conv26 = sext i32 %25 to i64
  %26 = load %struct._GString*, %struct._GString** %response, align 8
  %len27 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 1
  %27 = load i64, i64* %len27, align 8
  %cmp28 = icmp ult i64 %conv26, %27
  br i1 %cmp28, label %for.body.30, label %for.end.46

for.body.30:                                      ; preds = %for.cond.25
  %28 = load %struct.SFCommand*, %struct.SFCommand** %cmd.addr, align 8
  %filedes31 = getelementptr inbounds %struct.SFCommand, %struct.SFCommand* %28, i32 0, i32 1
  %29 = load i32, i32* %filedes31, align 4
  %cmp32 = icmp sgt i32 %29, 0
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.43

land.lhs.true.34:                                 ; preds = %for.body.30
  %30 = load %struct.SFCommand*, %struct.SFCommand** %cmd.addr, align 8
  %filedes35 = getelementptr inbounds %struct.SFCommand, %struct.SFCommand* %30, i32 0, i32 1
  %31 = load i32, i32* %filedes35, align 4
  %32 = load %struct._GString*, %struct._GString** %response, align 8
  %str36 = getelementptr inbounds %struct._GString, %struct._GString* %32, i32 0, i32 0
  %33 = load i8*, i8** %str36, align 8
  %34 = load i32, i32* %i, align 4
  %idx.ext37 = sext i32 %34 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %33, i64 %idx.ext37
  %call39 = call i64 @send(i32 %31, i8* %add.ptr38, i64 1, i32 0)
  %cmp40 = icmp slt i64 %call39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.lhs.true.34
  call void @print_socket_api_error(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %land.lhs.true.34, %for.body.30
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %35 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %35, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.25

for.end.46:                                       ; preds = %for.cond.25
  %36 = load %struct._GString*, %struct._GString** %response, align 8
  %call47 = call i8* @g_string_free(%struct._GString* %36, i32 1)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.46, %if.then.42, %if.then.23
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @server_progress_uninstall(i8* %progress) #0 {
entry:
  %progress.addr = alloca i8*, align 8
  store i8* %progress, i8** %progress.addr, align 8
  %0 = load i8*, i8** %progress.addr, align 8
  %call = call i8* @gimp_progress_uninstall(i8* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @server_quit() #0 {
entry:
  %sockno = alloca i32, align 4
  %cmd = alloca %struct.SFCommand*, align 8
  store i32 0, i32* %sockno, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %sockno, align 4
  %1 = load i32, i32* @server_socks_used, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %sockno, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @server_socks, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %call = call i32 @close(i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %sockno, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %sockno, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct._GHashTable*, %struct._GHashTable** @clients, align 8
  %tobool = icmp ne %struct._GHashTable* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %6 = load %struct._GHashTable*, %struct._GHashTable** @clients, align 8
  call void @g_hash_table_foreach(%struct._GHashTable* %6, void (i8*, i8*, i8*)* @script_fu_server_shutdown_fd, i8* null)
  %7 = load %struct._GHashTable*, %struct._GHashTable** @clients, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %7)
  store %struct._GHashTable* null, %struct._GHashTable** @clients, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load %struct._GList*, %struct._GList** @command_queue, align 8
  %tobool1 = icmp ne %struct._GList* %8, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct._GList*, %struct._GList** @command_queue, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8
  %11 = bitcast i8* %10 to %struct.SFCommand*
  store %struct.SFCommand* %11, %struct.SFCommand** %cmd, align 8
  %12 = load %struct.SFCommand*, %struct.SFCommand** %cmd, align 8
  %command = getelementptr inbounds %struct.SFCommand, %struct.SFCommand* %12, i32 0, i32 0
  %13 = load i8*, i8** %command, align 8
  call void @g_free(i8* %13)
  %14 = load %struct.SFCommand*, %struct.SFCommand** %cmd, align 8
  %15 = bitcast %struct.SFCommand* %14 to i8*
  call void @g_free(i8* %15)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load %struct._GList*, %struct._GList** @command_queue, align 8
  call void @g_list_free(%struct._GList* %16)
  store %struct._GList* null, %struct._GList** @command_queue, align 8
  store i32 0, i32* @queue_length, align 4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @server_log_file, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp2 = icmp ne %struct._IO_FILE* %17, %18
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %while.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @server_log_file, align 8
  %call4 = call i32 @fclose(%struct._IO_FILE* %19)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %while.end
  store %struct._IO_FILE* null, %struct._IO_FILE** @server_log_file, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #3

; Function Attrs: noreturn
declare void @gimp_quit() #6

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #3

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @server_progress_start(i8* %message, i32 %cancelable, i8* %user_data) #0 {
entry:
  %message.addr = alloca i8*, align 8
  %cancelable.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  store i8* %message, i8** %message.addr, align 8
  store i32 %cancelable, i32* %cancelable.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @server_progress_end(i8* %user_data) #0 {
entry:
  %user_data.addr = alloca i8*, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @server_progress_set_text(i8* %message, i8* %user_data) #0 {
entry:
  %message.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  store i8* %message, i8** %message.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @server_progress_set_value(double %percentage, i8* %user_data) #0 {
entry:
  %percentage.addr = alloca double, align 8
  %user_data.addr = alloca i8*, align 8
  store double %percentage, double* %percentage.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  ret void
}

declare i8* @gimp_progress_install_vtable(%struct._GimpProgressVtable*, i8*) #1

declare %struct._GString* @g_string_new(i8*) #1

declare void @ts_register_output_func(void (i32, i8*, i32, i8*)*, i8*) #1

declare void @ts_gstring_output_func(i32, i8*, i32, i8*) #1

declare i32 @ts_interpret_string(i8*) #1

declare %struct._GString* @g_string_assign(%struct._GString*, i8*) #1

declare i8* @ts_get_success_msg() #1

; Function Attrs: nounwind readnone
declare double @difftime(i64, i64) #5

declare i64 @send(i32, i8*, i64, i32) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare i8* @gimp_progress_uninstall(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @script_fu_server_shutdown_fd(i8* %key, i8* %value, i8* %data) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  %call = call i32 @shutdown(i32 %conv, i32 2) #4
  ret void
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #1

declare void @g_list_free(%struct._GList*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @shutdown(i32, i32) #3

declare noalias i8* @g_strdup_vprintf(i8*, %struct.__va_list_tag*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #5

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #3

declare void @gimp_ui_init(i8*, i32) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #5

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @response_callback(%struct._GtkWidget* %widget, i32 %response_id, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** getelementptr inbounds (%struct.ServerInterface, %struct.ServerInterface* @sint, i32 0, i32 5), align 8
  call void @g_free(i8* %1)
  %2 = load i8*, i8** getelementptr inbounds (%struct.ServerInterface, %struct.ServerInterface* @sint, i32 0, i32 3), align 8
  call void @g_free(i8* %2)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.ServerInterface, %struct.ServerInterface* @sint, i32 0, i32 1), align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  %call2 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %5)
  %call3 = call i32 @atoi(i8* %call2) #7
  store i32 %call3, i32* getelementptr inbounds (%struct.ServerInterface, %struct.ServerInterface* @sint, i32 0, i32 4), align 4
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.ServerInterface, %struct.ServerInterface* @sint, i32 0, i32 2), align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_entry_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkEntry*
  %call6 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %8)
  %call7 = call noalias i8* @g_strdup(i8* %call6)
  store i8* %call7, i8** getelementptr inbounds (%struct.ServerInterface, %struct.ServerInterface* @sint, i32 0, i32 5), align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.ServerInterface, %struct.ServerInterface* @sint, i32 0, i32 0), align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_entry_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkEntry*
  %call10 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %11)
  %call11 = call noalias i8* @g_strdup(i8* %call10)
  store i8* %call11, i8** getelementptr inbounds (%struct.ServerInterface, %struct.ServerInterface* @sint, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.ServerInterface, %struct.ServerInterface* @sint, i32 0, i32 6), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %12)
  ret void
}

declare void @gtk_main_quit() #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #5

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #5

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #5

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #5

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_label_set_line_wrap(%struct._GtkLabel*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #5

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

declare void @gtk_main() #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @perror(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 2078630}
