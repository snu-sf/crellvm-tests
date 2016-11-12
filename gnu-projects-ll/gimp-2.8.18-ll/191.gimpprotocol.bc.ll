; ModuleID = './libgimpbase/gimpprotocol.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GimpWireMessage = type { i32, i8* }
%struct._GPConfig = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8*, i8*, i8*, i32, i32 }
%struct._GPTileReq = type { i32, i32, i32 }
%struct._GPTileData = type { i32, i32, i32, i32, i32, i32, i32, i8* }
%struct._GPProcRun = type { i8*, i32, %struct._GPParam* }
%struct._GPParam = type { i32, %union.anon }
%union.anon = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GPProcReturn = type { i8*, i32, %struct._GPParam* }
%struct._GPProcInstall = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GPParamDef*, %struct._GPParamDef* }
%struct._GPParamDef = type { i32, i8*, i8* }
%struct._GPProcUninstall = type { i8* }
%struct._GimpParasite = type { i8*, i32, i32, i8* }

; Function Attrs: nounwind uwtable
define void @gp_init() #0 {
entry:
  call void @gimp_wire_register(i32 0, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_quit_read, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_quit_write, void (%struct._GimpWireMessage*)* @_gp_quit_destroy)
  call void @gimp_wire_register(i32 1, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_config_read, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_config_write, void (%struct._GimpWireMessage*)* @_gp_config_destroy)
  call void @gimp_wire_register(i32 2, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_tile_req_read, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_tile_req_write, void (%struct._GimpWireMessage*)* @_gp_tile_req_destroy)
  call void @gimp_wire_register(i32 3, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_tile_ack_read, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_tile_ack_write, void (%struct._GimpWireMessage*)* @_gp_tile_ack_destroy)
  call void @gimp_wire_register(i32 4, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_tile_data_read, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_tile_data_write, void (%struct._GimpWireMessage*)* @_gp_tile_data_destroy)
  call void @gimp_wire_register(i32 5, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_proc_run_read, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_proc_run_write, void (%struct._GimpWireMessage*)* @_gp_proc_run_destroy)
  call void @gimp_wire_register(i32 6, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_proc_return_read, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_proc_return_write, void (%struct._GimpWireMessage*)* @_gp_proc_return_destroy)
  call void @gimp_wire_register(i32 7, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_temp_proc_run_read, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_temp_proc_run_write, void (%struct._GimpWireMessage*)* @_gp_temp_proc_run_destroy)
  call void @gimp_wire_register(i32 8, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_temp_proc_return_read, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_temp_proc_return_write, void (%struct._GimpWireMessage*)* @_gp_temp_proc_return_destroy)
  call void @gimp_wire_register(i32 9, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_proc_install_read, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_proc_install_write, void (%struct._GimpWireMessage*)* @_gp_proc_install_destroy)
  call void @gimp_wire_register(i32 10, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_proc_uninstall_read, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_proc_uninstall_write, void (%struct._GimpWireMessage*)* @_gp_proc_uninstall_destroy)
  call void @gimp_wire_register(i32 11, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_extension_ack_read, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_extension_ack_write, void (%struct._GimpWireMessage*)* @_gp_extension_ack_destroy)
  call void @gimp_wire_register(i32 12, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_has_init_read, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)* @_gp_has_init_write, void (%struct._GimpWireMessage*)* @_gp_has_init_destroy)
  ret void
}

declare void @gimp_wire_register(i32, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)*, void (%struct._GIOChannel*, %struct._GimpWireMessage*, i8*)*, void (%struct._GimpWireMessage*)*) #1

; Function Attrs: nounwind uwtable
define internal void @_gp_quit_read(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_quit_write(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_quit_destroy(%struct._GimpWireMessage* %msg) #0 {
entry:
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_config_read(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  %config = alloca %struct._GPConfig*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 72)
  %0 = bitcast i8* %call to %struct._GPConfig*
  store %struct._GPConfig* %0, %struct._GPConfig** %config, align 8
  %1 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %2 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %version = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %2, i32 0, i32 0
  %3 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %1, i32* %version, i32 1, i8* %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %5 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %tile_width = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %5, i32 0, i32 1
  %6 = load i8*, i8** %user_data.addr, align 8
  %call2 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %4, i32* %tile_width, i32 1, i8* %6)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %7 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %8 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %tile_height = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %8, i32 0, i32 2
  %9 = load i8*, i8** %user_data.addr, align 8
  %call6 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %7, i32* %tile_height, i32 1, i8* %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %10 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %11 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %shm_ID = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %11, i32 0, i32 3
  %12 = load i8*, i8** %user_data.addr, align 8
  %call10 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %10, i32* %shm_ID, i32 1, i8* %12)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  br label %cleanup

if.end.13:                                        ; preds = %if.end.9
  %13 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %14 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %check_size = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %14, i32 0, i32 4
  %15 = load i8*, i8** %user_data.addr, align 8
  %call14 = call i32 @_gimp_wire_read_int8(%struct._GIOChannel* %13, i8* %check_size, i32 1, i8* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  br label %cleanup

if.end.17:                                        ; preds = %if.end.13
  %16 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %17 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %check_type = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %17, i32 0, i32 5
  %18 = load i8*, i8** %user_data.addr, align 8
  %call18 = call i32 @_gimp_wire_read_int8(%struct._GIOChannel* %16, i8* %check_type, i32 1, i8* %18)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  br label %cleanup

if.end.21:                                        ; preds = %if.end.17
  %19 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %20 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %show_help_button = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %20, i32 0, i32 6
  %21 = load i8*, i8** %user_data.addr, align 8
  %call22 = call i32 @_gimp_wire_read_int8(%struct._GIOChannel* %19, i8* %show_help_button, i32 1, i8* %21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.21
  br label %cleanup

if.end.25:                                        ; preds = %if.end.21
  %22 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %23 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %use_cpu_accel = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %23, i32 0, i32 7
  %24 = load i8*, i8** %user_data.addr, align 8
  %call26 = call i32 @_gimp_wire_read_int8(%struct._GIOChannel* %22, i8* %use_cpu_accel, i32 1, i8* %24)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.end.25
  br label %cleanup

if.end.29:                                        ; preds = %if.end.25
  %25 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %26 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %gimp_reserved_5 = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %26, i32 0, i32 8
  %27 = load i8*, i8** %user_data.addr, align 8
  %call30 = call i32 @_gimp_wire_read_int8(%struct._GIOChannel* %25, i8* %gimp_reserved_5, i32 1, i8* %27)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.end.29
  br label %cleanup

if.end.33:                                        ; preds = %if.end.29
  %28 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %29 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %gimp_reserved_6 = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %29, i32 0, i32 9
  %30 = load i8*, i8** %user_data.addr, align 8
  %call34 = call i32 @_gimp_wire_read_int8(%struct._GIOChannel* %28, i8* %gimp_reserved_6, i32 1, i8* %30)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.end.33
  br label %cleanup

if.end.37:                                        ; preds = %if.end.33
  %31 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %32 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %gimp_reserved_7 = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %32, i32 0, i32 10
  %33 = load i8*, i8** %user_data.addr, align 8
  %call38 = call i32 @_gimp_wire_read_int8(%struct._GIOChannel* %31, i8* %gimp_reserved_7, i32 1, i8* %33)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %if.end.37
  br label %cleanup

if.end.41:                                        ; preds = %if.end.37
  %34 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %35 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %gimp_reserved_8 = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %35, i32 0, i32 11
  %36 = load i8*, i8** %user_data.addr, align 8
  %call42 = call i32 @_gimp_wire_read_int8(%struct._GIOChannel* %34, i8* %gimp_reserved_8, i32 1, i8* %36)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %if.end.41
  br label %cleanup

if.end.45:                                        ; preds = %if.end.41
  %37 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %38 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %install_cmap = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %38, i32 0, i32 12
  %39 = load i8*, i8** %user_data.addr, align 8
  %call46 = call i32 @_gimp_wire_read_int8(%struct._GIOChannel* %37, i8* %install_cmap, i32 1, i8* %39)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.end.45
  br label %cleanup

if.end.49:                                        ; preds = %if.end.45
  %40 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %41 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %show_tooltips = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %41, i32 0, i32 13
  %42 = load i8*, i8** %user_data.addr, align 8
  %call50 = call i32 @_gimp_wire_read_int8(%struct._GIOChannel* %40, i8* %show_tooltips, i32 1, i8* %42)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %if.end.49
  br label %cleanup

if.end.53:                                        ; preds = %if.end.49
  %43 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %44 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %min_colors = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %44, i32 0, i32 14
  %45 = load i8*, i8** %user_data.addr, align 8
  %call54 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %43, i32* %min_colors, i32 1, i8* %45)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %if.end.53
  br label %cleanup

if.end.57:                                        ; preds = %if.end.53
  %46 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %47 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %gdisp_ID = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %47, i32 0, i32 15
  %48 = load i8*, i8** %user_data.addr, align 8
  %call58 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %46, i32* %gdisp_ID, i32 1, i8* %48)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.end.57
  br label %cleanup

if.end.61:                                        ; preds = %if.end.57
  %49 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %50 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %app_name = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %50, i32 0, i32 16
  %51 = load i8*, i8** %user_data.addr, align 8
  %call62 = call i32 @_gimp_wire_read_string(%struct._GIOChannel* %49, i8** %app_name, i32 1, i8* %51)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %if.end.61
  br label %cleanup

if.end.65:                                        ; preds = %if.end.61
  %52 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %53 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %wm_class = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %53, i32 0, i32 17
  %54 = load i8*, i8** %user_data.addr, align 8
  %call66 = call i32 @_gimp_wire_read_string(%struct._GIOChannel* %52, i8** %wm_class, i32 1, i8* %54)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %if.end.65
  br label %cleanup

if.end.69:                                        ; preds = %if.end.65
  %55 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %56 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %display_name = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %56, i32 0, i32 18
  %57 = load i8*, i8** %user_data.addr, align 8
  %call70 = call i32 @_gimp_wire_read_string(%struct._GIOChannel* %55, i8** %display_name, i32 1, i8* %57)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.end.73, label %if.then.72

if.then.72:                                       ; preds = %if.end.69
  br label %cleanup

if.end.73:                                        ; preds = %if.end.69
  %58 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %59 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %monitor_number = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %59, i32 0, i32 19
  %60 = load i8*, i8** %user_data.addr, align 8
  %call74 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %58, i32* %monitor_number, i32 1, i8* %60)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.end.77, label %if.then.76

if.then.76:                                       ; preds = %if.end.73
  br label %cleanup

if.end.77:                                        ; preds = %if.end.73
  %61 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %62 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %timestamp = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %62, i32 0, i32 20
  %63 = load i8*, i8** %user_data.addr, align 8
  %call78 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %61, i32* %timestamp, i32 1, i8* %63)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %if.end.77
  br label %cleanup

if.end.81:                                        ; preds = %if.end.77
  %64 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %65 = bitcast %struct._GPConfig* %64 to i8*
  %66 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %66, i32 0, i32 1
  store i8* %65, i8** %data, align 8
  br label %do.end

cleanup:                                          ; preds = %if.then.80, %if.then.76, %if.then.72, %if.then.68, %if.then.64, %if.then.60, %if.then.56, %if.then.52, %if.then.48, %if.then.44, %if.then.40, %if.then.36, %if.then.32, %if.then.28, %if.then.24, %if.then.20, %if.then.16, %if.then.12, %if.then.8, %if.then.4, %if.then
  %67 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %app_name82 = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %67, i32 0, i32 16
  %68 = load i8*, i8** %app_name82, align 8
  call void @g_free(i8* %68)
  %69 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %wm_class83 = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %69, i32 0, i32 17
  %70 = load i8*, i8** %wm_class83, align 8
  call void @g_free(i8* %70)
  %71 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %display_name84 = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %71, i32 0, i32 18
  %72 = load i8*, i8** %display_name84, align 8
  call void @g_free(i8* %72)
  br label %do.body

do.body:                                          ; preds = %cleanup
  %73 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %74 = bitcast %struct._GPConfig* %73 to i8*
  call void @g_slice_free1(i64 72, i8* %74)
  br label %do.end

do.end:                                           ; preds = %if.end.81, %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_config_write(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  %config = alloca %struct._GPConfig*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct._GPConfig*
  store %struct._GPConfig* %2, %struct._GPConfig** %config, align 8
  %3 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %4 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %version = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %4, i32 0, i32 0
  %5 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %3, i32* %version, i32 1, i8* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.80

if.end:                                           ; preds = %entry
  %6 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %7 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %tile_width = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %7, i32 0, i32 1
  %8 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %6, i32* %tile_width, i32 1, i8* %8)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.80

if.end.4:                                         ; preds = %if.end
  %9 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %10 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %tile_height = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %10, i32 0, i32 2
  %11 = load i8*, i8** %user_data.addr, align 8
  %call5 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %9, i32* %tile_height, i32 1, i8* %11)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %if.end.80

if.end.8:                                         ; preds = %if.end.4
  %12 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %13 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %shm_ID = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %13, i32 0, i32 3
  %14 = load i8*, i8** %user_data.addr, align 8
  %call9 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %12, i32* %shm_ID, i32 1, i8* %14)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  br label %if.end.80

if.end.12:                                        ; preds = %if.end.8
  %15 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %16 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %check_size = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %16, i32 0, i32 4
  %17 = load i8*, i8** %user_data.addr, align 8
  %call13 = call i32 @_gimp_wire_write_int8(%struct._GIOChannel* %15, i8* %check_size, i32 1, i8* %17)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  br label %if.end.80

if.end.16:                                        ; preds = %if.end.12
  %18 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %19 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %check_type = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %19, i32 0, i32 5
  %20 = load i8*, i8** %user_data.addr, align 8
  %call17 = call i32 @_gimp_wire_write_int8(%struct._GIOChannel* %18, i8* %check_type, i32 1, i8* %20)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.16
  br label %if.end.80

if.end.20:                                        ; preds = %if.end.16
  %21 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %22 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %show_help_button = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %22, i32 0, i32 6
  %23 = load i8*, i8** %user_data.addr, align 8
  %call21 = call i32 @_gimp_wire_write_int8(%struct._GIOChannel* %21, i8* %show_help_button, i32 1, i8* %23)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.20
  br label %if.end.80

if.end.24:                                        ; preds = %if.end.20
  %24 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %25 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %use_cpu_accel = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %25, i32 0, i32 7
  %26 = load i8*, i8** %user_data.addr, align 8
  %call25 = call i32 @_gimp_wire_write_int8(%struct._GIOChannel* %24, i8* %use_cpu_accel, i32 1, i8* %26)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.end.24
  br label %if.end.80

if.end.28:                                        ; preds = %if.end.24
  %27 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %28 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %gimp_reserved_5 = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %28, i32 0, i32 8
  %29 = load i8*, i8** %user_data.addr, align 8
  %call29 = call i32 @_gimp_wire_write_int8(%struct._GIOChannel* %27, i8* %gimp_reserved_5, i32 1, i8* %29)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.end.28
  br label %if.end.80

if.end.32:                                        ; preds = %if.end.28
  %30 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %31 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %gimp_reserved_6 = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %31, i32 0, i32 9
  %32 = load i8*, i8** %user_data.addr, align 8
  %call33 = call i32 @_gimp_wire_write_int8(%struct._GIOChannel* %30, i8* %gimp_reserved_6, i32 1, i8* %32)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.80

if.end.36:                                        ; preds = %if.end.32
  %33 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %34 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %gimp_reserved_7 = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %34, i32 0, i32 10
  %35 = load i8*, i8** %user_data.addr, align 8
  %call37 = call i32 @_gimp_wire_write_int8(%struct._GIOChannel* %33, i8* %gimp_reserved_7, i32 1, i8* %35)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.end.36
  br label %if.end.80

if.end.40:                                        ; preds = %if.end.36
  %36 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %37 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %gimp_reserved_8 = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %37, i32 0, i32 11
  %38 = load i8*, i8** %user_data.addr, align 8
  %call41 = call i32 @_gimp_wire_write_int8(%struct._GIOChannel* %36, i8* %gimp_reserved_8, i32 1, i8* %38)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %if.end.40
  br label %if.end.80

if.end.44:                                        ; preds = %if.end.40
  %39 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %40 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %install_cmap = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %40, i32 0, i32 12
  %41 = load i8*, i8** %user_data.addr, align 8
  %call45 = call i32 @_gimp_wire_write_int8(%struct._GIOChannel* %39, i8* %install_cmap, i32 1, i8* %41)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.end.44
  br label %if.end.80

if.end.48:                                        ; preds = %if.end.44
  %42 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %43 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %show_tooltips = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %43, i32 0, i32 13
  %44 = load i8*, i8** %user_data.addr, align 8
  %call49 = call i32 @_gimp_wire_write_int8(%struct._GIOChannel* %42, i8* %show_tooltips, i32 1, i8* %44)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %if.end.48
  br label %if.end.80

if.end.52:                                        ; preds = %if.end.48
  %45 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %46 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %min_colors = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %46, i32 0, i32 14
  %47 = load i8*, i8** %user_data.addr, align 8
  %call53 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %45, i32* %min_colors, i32 1, i8* %47)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %if.end.52
  br label %if.end.80

if.end.56:                                        ; preds = %if.end.52
  %48 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %49 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %gdisp_ID = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %49, i32 0, i32 15
  %50 = load i8*, i8** %user_data.addr, align 8
  %call57 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %48, i32* %gdisp_ID, i32 1, i8* %50)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %if.end.56
  br label %if.end.80

if.end.60:                                        ; preds = %if.end.56
  %51 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %52 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %app_name = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %52, i32 0, i32 16
  %53 = load i8*, i8** %user_data.addr, align 8
  %call61 = call i32 @_gimp_wire_write_string(%struct._GIOChannel* %51, i8** %app_name, i32 1, i8* %53)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %if.end.60
  br label %if.end.80

if.end.64:                                        ; preds = %if.end.60
  %54 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %55 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %wm_class = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %55, i32 0, i32 17
  %56 = load i8*, i8** %user_data.addr, align 8
  %call65 = call i32 @_gimp_wire_write_string(%struct._GIOChannel* %54, i8** %wm_class, i32 1, i8* %56)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %if.end.64
  br label %if.end.80

if.end.68:                                        ; preds = %if.end.64
  %57 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %58 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %display_name = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %58, i32 0, i32 18
  %59 = load i8*, i8** %user_data.addr, align 8
  %call69 = call i32 @_gimp_wire_write_string(%struct._GIOChannel* %57, i8** %display_name, i32 1, i8* %59)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %if.end.68
  br label %if.end.80

if.end.72:                                        ; preds = %if.end.68
  %60 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %61 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %monitor_number = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %61, i32 0, i32 19
  %62 = load i8*, i8** %user_data.addr, align 8
  %call73 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %60, i32* %monitor_number, i32 1, i8* %62)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.end.76, label %if.then.75

if.then.75:                                       ; preds = %if.end.72
  br label %if.end.80

if.end.76:                                        ; preds = %if.end.72
  %63 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %64 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %timestamp = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %64, i32 0, i32 20
  %65 = load i8*, i8** %user_data.addr, align 8
  %call77 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %63, i32* %timestamp, i32 1, i8* %65)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.end.80, label %if.then.79

if.then.79:                                       ; preds = %if.end.76
  br label %if.end.80

if.end.80:                                        ; preds = %if.then, %if.then.3, %if.then.7, %if.then.11, %if.then.15, %if.then.19, %if.then.23, %if.then.27, %if.then.31, %if.then.35, %if.then.39, %if.then.43, %if.then.47, %if.then.51, %if.then.55, %if.then.59, %if.then.63, %if.then.67, %if.then.71, %if.then.75, %if.then.79, %if.end.76
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_config_destroy(%struct._GimpWireMessage* %msg) #0 {
entry:
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %config = alloca %struct._GPConfig*, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  %0 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct._GPConfig*
  store %struct._GPConfig* %2, %struct._GPConfig** %config, align 8
  %3 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %tobool = icmp ne %struct._GPConfig* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %app_name = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %4, i32 0, i32 16
  %5 = load i8*, i8** %app_name, align 8
  call void @g_free(i8* %5)
  %6 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %wm_class = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %6, i32 0, i32 17
  %7 = load i8*, i8** %wm_class, align 8
  call void @g_free(i8* %7)
  %8 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %display_name = getelementptr inbounds %struct._GPConfig, %struct._GPConfig* %8, i32 0, i32 18
  %9 = load i8*, i8** %display_name, align 8
  call void @g_free(i8* %9)
  br label %do.body

do.body:                                          ; preds = %if.then
  %10 = load %struct._GPConfig*, %struct._GPConfig** %config, align 8
  %11 = bitcast %struct._GPConfig* %10 to i8*
  call void @g_slice_free1(i64 72, i8* %11)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_tile_req_read(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  %tile_req = alloca %struct._GPTileReq*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 12)
  %0 = bitcast i8* %call to %struct._GPTileReq*
  store %struct._GPTileReq* %0, %struct._GPTileReq** %tile_req, align 8
  %1 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %2 = load %struct._GPTileReq*, %struct._GPTileReq** %tile_req, align 8
  %drawable_ID = getelementptr inbounds %struct._GPTileReq, %struct._GPTileReq* %2, i32 0, i32 0
  %3 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %1, i32* %drawable_ID, i32 1, i8* %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %5 = load %struct._GPTileReq*, %struct._GPTileReq** %tile_req, align 8
  %tile_num = getelementptr inbounds %struct._GPTileReq, %struct._GPTileReq* %5, i32 0, i32 1
  %6 = load i8*, i8** %user_data.addr, align 8
  %call2 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %4, i32* %tile_num, i32 1, i8* %6)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %7 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %8 = load %struct._GPTileReq*, %struct._GPTileReq** %tile_req, align 8
  %shadow = getelementptr inbounds %struct._GPTileReq, %struct._GPTileReq* %8, i32 0, i32 2
  %9 = load i8*, i8** %user_data.addr, align 8
  %call6 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %7, i32* %shadow, i32 1, i8* %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %10 = load %struct._GPTileReq*, %struct._GPTileReq** %tile_req, align 8
  %11 = bitcast %struct._GPTileReq* %10 to i8*
  %12 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %12, i32 0, i32 1
  store i8* %11, i8** %data, align 8
  br label %return

cleanup:                                          ; preds = %if.then.8, %if.then.4, %if.then
  br label %do.body

do.body:                                          ; preds = %cleanup
  %13 = load %struct._GPTileReq*, %struct._GPTileReq** %tile_req, align 8
  %14 = bitcast %struct._GPTileReq* %13 to i8*
  call void @g_slice_free1(i64 12, i8* %14)
  br label %do.end

do.end:                                           ; preds = %do.body
  %15 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data10 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %15, i32 0, i32 1
  store i8* null, i8** %data10, align 8
  br label %return

return:                                           ; preds = %do.end, %if.end.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_tile_req_write(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  %tile_req = alloca %struct._GPTileReq*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct._GPTileReq*
  store %struct._GPTileReq* %2, %struct._GPTileReq** %tile_req, align 8
  %3 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %4 = load %struct._GPTileReq*, %struct._GPTileReq** %tile_req, align 8
  %drawable_ID = getelementptr inbounds %struct._GPTileReq, %struct._GPTileReq* %4, i32 0, i32 0
  %5 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %3, i32* %drawable_ID, i32 1, i8* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.8

if.end:                                           ; preds = %entry
  %6 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %7 = load %struct._GPTileReq*, %struct._GPTileReq** %tile_req, align 8
  %tile_num = getelementptr inbounds %struct._GPTileReq, %struct._GPTileReq* %7, i32 0, i32 1
  %8 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %6, i32* %tile_num, i32 1, i8* %8)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.8

if.end.4:                                         ; preds = %if.end
  %9 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %10 = load %struct._GPTileReq*, %struct._GPTileReq** %tile_req, align 8
  %shadow = getelementptr inbounds %struct._GPTileReq, %struct._GPTileReq* %10, i32 0, i32 2
  %11 = load i8*, i8** %user_data.addr, align 8
  %call5 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %9, i32* %shadow, i32 1, i8* %11)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %if.then.3, %if.then.7, %if.end.4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_tile_req_destroy(%struct._GimpWireMessage* %msg) #0 {
entry:
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %tile_req = alloca %struct._GPTileReq*, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  %0 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct._GPTileReq*
  store %struct._GPTileReq* %2, %struct._GPTileReq** %tile_req, align 8
  %3 = load %struct._GPTileReq*, %struct._GPTileReq** %tile_req, align 8
  %tobool = icmp ne %struct._GPTileReq* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data1 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %4, i32 0, i32 1
  %5 = load i8*, i8** %data1, align 8
  call void @g_slice_free1(i64 12, i8* %5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_tile_ack_read(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_tile_ack_write(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_tile_ack_destroy(%struct._GimpWireMessage* %msg) #0 {
entry:
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_tile_data_read(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  %tile_data = alloca %struct._GPTileData*, align 8
  %length = alloca i32, align 4
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 40)
  %0 = bitcast i8* %call to %struct._GPTileData*
  store %struct._GPTileData* %0, %struct._GPTileData** %tile_data, align 8
  %1 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %2 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %drawable_ID = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %2, i32 0, i32 0
  %3 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %1, i32* %drawable_ID, i32 1, i8* %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %5 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %tile_num = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %5, i32 0, i32 1
  %6 = load i8*, i8** %user_data.addr, align 8
  %call2 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %4, i32* %tile_num, i32 1, i8* %6)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %7 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %8 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %shadow = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %8, i32 0, i32 2
  %9 = load i8*, i8** %user_data.addr, align 8
  %call6 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %7, i32* %shadow, i32 1, i8* %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %10 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %11 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %bpp = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %11, i32 0, i32 3
  %12 = load i8*, i8** %user_data.addr, align 8
  %call10 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %10, i32* %bpp, i32 1, i8* %12)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  br label %cleanup

if.end.13:                                        ; preds = %if.end.9
  %13 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %14 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %width = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %14, i32 0, i32 4
  %15 = load i8*, i8** %user_data.addr, align 8
  %call14 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %13, i32* %width, i32 1, i8* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  br label %cleanup

if.end.17:                                        ; preds = %if.end.13
  %16 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %17 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %height = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %17, i32 0, i32 5
  %18 = load i8*, i8** %user_data.addr, align 8
  %call18 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %16, i32* %height, i32 1, i8* %18)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  br label %cleanup

if.end.21:                                        ; preds = %if.end.17
  %19 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %20 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %use_shm = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %20, i32 0, i32 6
  %21 = load i8*, i8** %user_data.addr, align 8
  %call22 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %19, i32* %use_shm, i32 1, i8* %21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.21
  br label %cleanup

if.end.25:                                        ; preds = %if.end.21
  %22 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %use_shm26 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %22, i32 0, i32 6
  %23 = load i32, i32* %use_shm26, align 4
  %tobool27 = icmp ne i32 %23, 0
  br i1 %tobool27, label %if.end.39, label %if.then.28

if.then.28:                                       ; preds = %if.end.25
  %24 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %width29 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %24, i32 0, i32 4
  %25 = load i32, i32* %width29, align 4
  %26 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %height30 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %26, i32 0, i32 5
  %27 = load i32, i32* %height30, align 4
  %mul = mul i32 %25, %27
  %28 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %bpp31 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %28, i32 0, i32 3
  %29 = load i32, i32* %bpp31, align 4
  %mul32 = mul i32 %mul, %29
  store i32 %mul32, i32* %length, align 4
  %30 = load i32, i32* %length, align 4
  %conv = zext i32 %30 to i64
  %call33 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  %31 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %data = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %31, i32 0, i32 7
  store i8* %call33, i8** %data, align 8
  %32 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %33 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %data34 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %33, i32 0, i32 7
  %34 = load i8*, i8** %data34, align 8
  %35 = load i32, i32* %length, align 4
  %36 = load i8*, i8** %user_data.addr, align 8
  %call35 = call i32 @_gimp_wire_read_int8(%struct._GIOChannel* %32, i8* %34, i32 %35, i8* %36)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.then.28
  br label %cleanup

if.end.38:                                        ; preds = %if.then.28
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.25
  %37 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %38 = bitcast %struct._GPTileData* %37 to i8*
  %39 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data40 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %39, i32 0, i32 1
  store i8* %38, i8** %data40, align 8
  br label %return

cleanup:                                          ; preds = %if.then.37, %if.then.24, %if.then.20, %if.then.16, %if.then.12, %if.then.8, %if.then.4, %if.then
  %40 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %data41 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %40, i32 0, i32 7
  %41 = load i8*, i8** %data41, align 8
  call void @g_free(i8* %41)
  br label %do.body

do.body:                                          ; preds = %cleanup
  %42 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %43 = bitcast %struct._GPTileData* %42 to i8*
  call void @g_slice_free1(i64 40, i8* %43)
  br label %do.end

do.end:                                           ; preds = %do.body
  %44 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data42 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %44, i32 0, i32 1
  store i8* null, i8** %data42, align 8
  br label %return

return:                                           ; preds = %do.end, %if.end.39
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_tile_data_write(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  %tile_data = alloca %struct._GPTileData*, align 8
  %length = alloca i32, align 4
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct._GPTileData*
  store %struct._GPTileData* %2, %struct._GPTileData** %tile_data, align 8
  %3 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %4 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %drawable_ID = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %4, i32 0, i32 0
  %5 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %3, i32* %drawable_ID, i32 1, i8* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.37

if.end:                                           ; preds = %entry
  %6 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %7 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %tile_num = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %7, i32 0, i32 1
  %8 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %6, i32* %tile_num, i32 1, i8* %8)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.37

if.end.4:                                         ; preds = %if.end
  %9 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %10 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %shadow = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %10, i32 0, i32 2
  %11 = load i8*, i8** %user_data.addr, align 8
  %call5 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %9, i32* %shadow, i32 1, i8* %11)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %if.end.37

if.end.8:                                         ; preds = %if.end.4
  %12 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %13 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %bpp = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %13, i32 0, i32 3
  %14 = load i8*, i8** %user_data.addr, align 8
  %call9 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %12, i32* %bpp, i32 1, i8* %14)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  br label %if.end.37

if.end.12:                                        ; preds = %if.end.8
  %15 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %16 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %width = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %16, i32 0, i32 4
  %17 = load i8*, i8** %user_data.addr, align 8
  %call13 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %15, i32* %width, i32 1, i8* %17)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  br label %if.end.37

if.end.16:                                        ; preds = %if.end.12
  %18 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %19 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %height = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %19, i32 0, i32 5
  %20 = load i8*, i8** %user_data.addr, align 8
  %call17 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %18, i32* %height, i32 1, i8* %20)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.16
  br label %if.end.37

if.end.20:                                        ; preds = %if.end.16
  %21 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %22 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %use_shm = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %22, i32 0, i32 6
  %23 = load i8*, i8** %user_data.addr, align 8
  %call21 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %21, i32* %use_shm, i32 1, i8* %23)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.20
  br label %if.end.37

if.end.24:                                        ; preds = %if.end.20
  %24 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %use_shm25 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %24, i32 0, i32 6
  %25 = load i32, i32* %use_shm25, align 4
  %tobool26 = icmp ne i32 %25, 0
  br i1 %tobool26, label %if.end.37, label %if.then.27

if.then.27:                                       ; preds = %if.end.24
  %26 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %width28 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %26, i32 0, i32 4
  %27 = load i32, i32* %width28, align 4
  %28 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %height29 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %28, i32 0, i32 5
  %29 = load i32, i32* %height29, align 4
  %mul = mul i32 %27, %29
  %30 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %bpp30 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %30, i32 0, i32 3
  %31 = load i32, i32* %bpp30, align 4
  %mul31 = mul i32 %mul, %31
  store i32 %mul31, i32* %length, align 4
  %32 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %33 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %data32 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %33, i32 0, i32 7
  %34 = load i8*, i8** %data32, align 8
  %35 = load i32, i32* %length, align 4
  %36 = load i8*, i8** %user_data.addr, align 8
  %call33 = call i32 @_gimp_wire_write_int8(%struct._GIOChannel* %32, i8* %34, i32 %35, i8* %36)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.then.27
  br label %if.end.37

if.end.36:                                        ; preds = %if.then.27
  br label %if.end.37

if.end.37:                                        ; preds = %if.then, %if.then.3, %if.then.7, %if.then.11, %if.then.15, %if.then.19, %if.then.23, %if.then.35, %if.end.36, %if.end.24
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_tile_data_destroy(%struct._GimpWireMessage* %msg) #0 {
entry:
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %tile_data = alloca %struct._GPTileData*, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  %0 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct._GPTileData*
  store %struct._GPTileData* %2, %struct._GPTileData** %tile_data, align 8
  %3 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %tobool = icmp ne %struct._GPTileData* %3, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %4 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %data1 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %4, i32 0, i32 7
  %5 = load i8*, i8** %data1, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %data4 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %6, i32 0, i32 7
  %7 = load i8*, i8** %data4, align 8
  call void @g_free(i8* %7)
  %8 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %data5 = getelementptr inbounds %struct._GPTileData, %struct._GPTileData* %8, i32 0, i32 7
  store i8* null, i8** %data5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load %struct._GPTileData*, %struct._GPTileData** %tile_data, align 8
  %10 = bitcast %struct._GPTileData* %9 to i8*
  call void @g_slice_free1(i64 40, i8* %10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_proc_run_read(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  %proc_run = alloca %struct._GPProcRun*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 24)
  %0 = bitcast i8* %call to %struct._GPProcRun*
  store %struct._GPProcRun* %0, %struct._GPProcRun** %proc_run, align 8
  %1 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %2 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run, align 8
  %name = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %2, i32 0, i32 0
  %3 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @_gimp_wire_read_string(%struct._GIOChannel* %1, i8** %name, i32 1, i8* %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %5 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run, align 8
  %params = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %5, i32 0, i32 2
  %6 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run, align 8
  %nparams = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %6, i32 0, i32 1
  %7 = load i8*, i8** %user_data.addr, align 8
  call void @_gp_params_read(%struct._GIOChannel* %4, %struct._GPParam** %params, i32* %nparams, i8* %7)
  %8 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run, align 8
  %9 = bitcast %struct._GPProcRun* %8 to i8*
  %10 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %10, i32 0, i32 1
  store i8* %9, i8** %data, align 8
  br label %return

cleanup:                                          ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %cleanup
  %11 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run, align 8
  %12 = bitcast %struct._GPProcRun* %11 to i8*
  call void @g_slice_free1(i64 24, i8* %12)
  br label %do.end

do.end:                                           ; preds = %do.body
  %13 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data2 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %13, i32 0, i32 1
  store i8* null, i8** %data2, align 8
  br label %return

return:                                           ; preds = %do.end, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_proc_run_write(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  %proc_run = alloca %struct._GPProcRun*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct._GPProcRun*
  store %struct._GPProcRun* %2, %struct._GPProcRun** %proc_run, align 8
  %3 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %4 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run, align 8
  %name = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %4, i32 0, i32 0
  %5 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @_gimp_wire_write_string(%struct._GIOChannel* %3, i8** %name, i32 1, i8* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %7 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run, align 8
  %params = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %7, i32 0, i32 2
  %8 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %9 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run, align 8
  %nparams = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %9, i32 0, i32 1
  %10 = load i32, i32* %nparams, align 4
  %11 = load i8*, i8** %user_data.addr, align 8
  call void @_gp_params_write(%struct._GIOChannel* %6, %struct._GPParam* %8, i32 %10, i8* %11)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_proc_run_destroy(%struct._GimpWireMessage* %msg) #0 {
entry:
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %proc_run = alloca %struct._GPProcRun*, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  %0 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct._GPProcRun*
  store %struct._GPProcRun* %2, %struct._GPProcRun** %proc_run, align 8
  %3 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run, align 8
  %tobool = icmp ne %struct._GPProcRun* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run, align 8
  %params = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %4, i32 0, i32 2
  %5 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %6 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run, align 8
  %nparams = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %6, i32 0, i32 1
  %7 = load i32, i32* %nparams, align 4
  call void @gp_params_destroy(%struct._GPParam* %5, i32 %7)
  %8 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run, align 8
  %name = getelementptr inbounds %struct._GPProcRun, %struct._GPProcRun* %8, i32 0, i32 0
  %9 = load i8*, i8** %name, align 8
  call void @g_free(i8* %9)
  br label %do.body

do.body:                                          ; preds = %if.then
  %10 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run, align 8
  %11 = bitcast %struct._GPProcRun* %10 to i8*
  call void @g_slice_free1(i64 24, i8* %11)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_proc_return_read(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  %proc_return = alloca %struct._GPProcReturn*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 24)
  %0 = bitcast i8* %call to %struct._GPProcReturn*
  store %struct._GPProcReturn* %0, %struct._GPProcReturn** %proc_return, align 8
  %1 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %2 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return, align 8
  %name = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %2, i32 0, i32 0
  %3 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @_gimp_wire_read_string(%struct._GIOChannel* %1, i8** %name, i32 1, i8* %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %5 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return, align 8
  %params = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %5, i32 0, i32 2
  %6 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return, align 8
  %nparams = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %6, i32 0, i32 1
  %7 = load i8*, i8** %user_data.addr, align 8
  call void @_gp_params_read(%struct._GIOChannel* %4, %struct._GPParam** %params, i32* %nparams, i8* %7)
  %8 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return, align 8
  %9 = bitcast %struct._GPProcReturn* %8 to i8*
  %10 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %10, i32 0, i32 1
  store i8* %9, i8** %data, align 8
  br label %return

cleanup:                                          ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %cleanup
  %11 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return, align 8
  %12 = bitcast %struct._GPProcReturn* %11 to i8*
  call void @g_slice_free1(i64 24, i8* %12)
  br label %do.end

do.end:                                           ; preds = %do.body
  %13 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data2 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %13, i32 0, i32 1
  store i8* null, i8** %data2, align 8
  br label %return

return:                                           ; preds = %do.end, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_proc_return_write(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  %proc_return = alloca %struct._GPProcReturn*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct._GPProcReturn*
  store %struct._GPProcReturn* %2, %struct._GPProcReturn** %proc_return, align 8
  %3 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %4 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return, align 8
  %name = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %4, i32 0, i32 0
  %5 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @_gimp_wire_write_string(%struct._GIOChannel* %3, i8** %name, i32 1, i8* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %7 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return, align 8
  %params = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %7, i32 0, i32 2
  %8 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %9 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return, align 8
  %nparams = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %9, i32 0, i32 1
  %10 = load i32, i32* %nparams, align 4
  %11 = load i8*, i8** %user_data.addr, align 8
  call void @_gp_params_write(%struct._GIOChannel* %6, %struct._GPParam* %8, i32 %10, i8* %11)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_proc_return_destroy(%struct._GimpWireMessage* %msg) #0 {
entry:
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %proc_return = alloca %struct._GPProcReturn*, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  %0 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct._GPProcReturn*
  store %struct._GPProcReturn* %2, %struct._GPProcReturn** %proc_return, align 8
  %3 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return, align 8
  %tobool = icmp ne %struct._GPProcReturn* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return, align 8
  %params = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %4, i32 0, i32 2
  %5 = load %struct._GPParam*, %struct._GPParam** %params, align 8
  %6 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return, align 8
  %nparams = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %6, i32 0, i32 1
  %7 = load i32, i32* %nparams, align 4
  call void @gp_params_destroy(%struct._GPParam* %5, i32 %7)
  %8 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return, align 8
  %name = getelementptr inbounds %struct._GPProcReturn, %struct._GPProcReturn* %8, i32 0, i32 0
  %9 = load i8*, i8** %name, align 8
  call void @g_free(i8* %9)
  br label %do.body

do.body:                                          ; preds = %if.then
  %10 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return, align 8
  %11 = bitcast %struct._GPProcReturn* %10 to i8*
  call void @g_slice_free1(i64 24, i8* %11)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_temp_proc_run_read(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %1 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %2 = load i8*, i8** %user_data.addr, align 8
  call void @_gp_proc_run_read(%struct._GIOChannel* %0, %struct._GimpWireMessage* %1, i8* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_temp_proc_run_write(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %1 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %2 = load i8*, i8** %user_data.addr, align 8
  call void @_gp_proc_run_write(%struct._GIOChannel* %0, %struct._GimpWireMessage* %1, i8* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_temp_proc_run_destroy(%struct._GimpWireMessage* %msg) #0 {
entry:
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  %0 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  call void @_gp_proc_run_destroy(%struct._GimpWireMessage* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_temp_proc_return_read(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %1 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %2 = load i8*, i8** %user_data.addr, align 8
  call void @_gp_proc_return_read(%struct._GIOChannel* %0, %struct._GimpWireMessage* %1, i8* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_temp_proc_return_write(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %1 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %2 = load i8*, i8** %user_data.addr, align 8
  call void @_gp_proc_return_write(%struct._GIOChannel* %0, %struct._GimpWireMessage* %1, i8* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_temp_proc_return_destroy(%struct._GimpWireMessage* %msg) #0 {
entry:
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  %0 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  call void @_gp_proc_return_destroy(%struct._GimpWireMessage* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_proc_install_read(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  %proc_install = alloca %struct._GPProcInstall*, align 8
  %i = alloca i32, align 4
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 96)
  %0 = bitcast i8* %call to %struct._GPProcInstall*
  store %struct._GPProcInstall* %0, %struct._GPProcInstall** %proc_install, align 8
  %1 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %2 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %name = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %2, i32 0, i32 0
  %3 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @_gimp_wire_read_string(%struct._GIOChannel* %1, i8** %name, i32 1, i8* %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %5 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %blurb = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %5, i32 0, i32 1
  %6 = load i8*, i8** %user_data.addr, align 8
  %call2 = call i32 @_gimp_wire_read_string(%struct._GIOChannel* %4, i8** %blurb, i32 1, i8* %6)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %7 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %8 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %help = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %8, i32 0, i32 2
  %9 = load i8*, i8** %user_data.addr, align 8
  %call6 = call i32 @_gimp_wire_read_string(%struct._GIOChannel* %7, i8** %help, i32 1, i8* %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %10 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %11 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %author = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %11, i32 0, i32 3
  %12 = load i8*, i8** %user_data.addr, align 8
  %call10 = call i32 @_gimp_wire_read_string(%struct._GIOChannel* %10, i8** %author, i32 1, i8* %12)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  br label %cleanup

if.end.13:                                        ; preds = %if.end.9
  %13 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %14 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %copyright = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %14, i32 0, i32 4
  %15 = load i8*, i8** %user_data.addr, align 8
  %call14 = call i32 @_gimp_wire_read_string(%struct._GIOChannel* %13, i8** %copyright, i32 1, i8* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  br label %cleanup

if.end.17:                                        ; preds = %if.end.13
  %16 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %17 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %date = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %17, i32 0, i32 5
  %18 = load i8*, i8** %user_data.addr, align 8
  %call18 = call i32 @_gimp_wire_read_string(%struct._GIOChannel* %16, i8** %date, i32 1, i8* %18)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  br label %cleanup

if.end.21:                                        ; preds = %if.end.17
  %19 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %20 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %menu_path = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %20, i32 0, i32 6
  %21 = load i8*, i8** %user_data.addr, align 8
  %call22 = call i32 @_gimp_wire_read_string(%struct._GIOChannel* %19, i8** %menu_path, i32 1, i8* %21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.21
  br label %cleanup

if.end.25:                                        ; preds = %if.end.21
  %22 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %23 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %image_types = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %23, i32 0, i32 7
  %24 = load i8*, i8** %user_data.addr, align 8
  %call26 = call i32 @_gimp_wire_read_string(%struct._GIOChannel* %22, i8** %image_types, i32 1, i8* %24)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.end.25
  br label %cleanup

if.end.29:                                        ; preds = %if.end.25
  %25 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %26 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %type = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %26, i32 0, i32 8
  %27 = load i8*, i8** %user_data.addr, align 8
  %call30 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %25, i32* %type, i32 1, i8* %27)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.end.29
  br label %cleanup

if.end.33:                                        ; preds = %if.end.29
  %28 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %29 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %nparams = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %29, i32 0, i32 9
  %30 = load i8*, i8** %user_data.addr, align 8
  %call34 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %28, i32* %nparams, i32 1, i8* %30)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.end.33
  br label %cleanup

if.end.37:                                        ; preds = %if.end.33
  %31 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %32 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %nreturn_vals = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %32, i32 0, i32 10
  %33 = load i8*, i8** %user_data.addr, align 8
  %call38 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %31, i32* %nreturn_vals, i32 1, i8* %33)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %if.end.37
  br label %cleanup

if.end.41:                                        ; preds = %if.end.37
  %34 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %nparams42 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %34, i32 0, i32 9
  %35 = load i32, i32* %nparams42, align 4
  %conv = zext i32 %35 to i64
  %call43 = call noalias i8* @g_malloc0_n(i64 %conv, i64 24)
  %36 = bitcast i8* %call43 to %struct._GPParamDef*
  %37 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %params = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %37, i32 0, i32 11
  store %struct._GPParamDef* %36, %struct._GPParamDef** %params, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.41
  %38 = load i32, i32* %i, align 4
  %39 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %nparams44 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %39, i32 0, i32 9
  %40 = load i32, i32* %nparams44, align 4
  %cmp = icmp ult i32 %38, %40
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom = sext i32 %42 to i64
  %43 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %params46 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %43, i32 0, i32 11
  %44 = load %struct._GPParamDef*, %struct._GPParamDef** %params46, align 8
  %arrayidx = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %44, i64 %idxprom
  %type47 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx, i32 0, i32 0
  %45 = load i8*, i8** %user_data.addr, align 8
  %call48 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %41, i32* %type47, i32 1, i8* %45)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %for.body
  br label %cleanup

if.end.51:                                        ; preds = %for.body
  %46 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %47 to i64
  %48 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %params53 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %48, i32 0, i32 11
  %49 = load %struct._GPParamDef*, %struct._GPParamDef** %params53, align 8
  %arrayidx54 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %49, i64 %idxprom52
  %name55 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx54, i32 0, i32 1
  %50 = load i8*, i8** %user_data.addr, align 8
  %call56 = call i32 @_gimp_wire_read_string(%struct._GIOChannel* %46, i8** %name55, i32 1, i8* %50)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end.59, label %if.then.58

if.then.58:                                       ; preds = %if.end.51
  br label %cleanup

if.end.59:                                        ; preds = %if.end.51
  %51 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %52 to i64
  %53 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %params61 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %53, i32 0, i32 11
  %54 = load %struct._GPParamDef*, %struct._GPParamDef** %params61, align 8
  %arrayidx62 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %54, i64 %idxprom60
  %description = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx62, i32 0, i32 2
  %55 = load i8*, i8** %user_data.addr, align 8
  %call63 = call i32 @_gimp_wire_read_string(%struct._GIOChannel* %51, i8** %description, i32 1, i8* %55)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %if.end.59
  br label %cleanup

if.end.66:                                        ; preds = %if.end.59
  br label %for.inc

for.inc:                                          ; preds = %if.end.66
  %56 = load i32, i32* %i, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %nreturn_vals67 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %57, i32 0, i32 10
  %58 = load i32, i32* %nreturn_vals67, align 4
  %conv68 = zext i32 %58 to i64
  %call69 = call noalias i8* @g_malloc0_n(i64 %conv68, i64 24)
  %59 = bitcast i8* %call69 to %struct._GPParamDef*
  %60 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %return_vals = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %60, i32 0, i32 12
  store %struct._GPParamDef* %59, %struct._GPParamDef** %return_vals, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.99, %for.end
  %61 = load i32, i32* %i, align 4
  %62 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %nreturn_vals71 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %62, i32 0, i32 10
  %63 = load i32, i32* %nreturn_vals71, align 4
  %cmp72 = icmp ult i32 %61, %63
  br i1 %cmp72, label %for.body.74, label %for.end.101

for.body.74:                                      ; preds = %for.cond.70
  %64 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %65 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %65 to i64
  %66 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %return_vals76 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %66, i32 0, i32 12
  %67 = load %struct._GPParamDef*, %struct._GPParamDef** %return_vals76, align 8
  %arrayidx77 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %67, i64 %idxprom75
  %type78 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx77, i32 0, i32 0
  %68 = load i8*, i8** %user_data.addr, align 8
  %call79 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %64, i32* %type78, i32 1, i8* %68)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.end.82, label %if.then.81

if.then.81:                                       ; preds = %for.body.74
  br label %cleanup

if.end.82:                                        ; preds = %for.body.74
  %69 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %70 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %70 to i64
  %71 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %return_vals84 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %71, i32 0, i32 12
  %72 = load %struct._GPParamDef*, %struct._GPParamDef** %return_vals84, align 8
  %arrayidx85 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %72, i64 %idxprom83
  %name86 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx85, i32 0, i32 1
  %73 = load i8*, i8** %user_data.addr, align 8
  %call87 = call i32 @_gimp_wire_read_string(%struct._GIOChannel* %69, i8** %name86, i32 1, i8* %73)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.end.90, label %if.then.89

if.then.89:                                       ; preds = %if.end.82
  br label %cleanup

if.end.90:                                        ; preds = %if.end.82
  %74 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %75 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %75 to i64
  %76 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %return_vals92 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %76, i32 0, i32 12
  %77 = load %struct._GPParamDef*, %struct._GPParamDef** %return_vals92, align 8
  %arrayidx93 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %77, i64 %idxprom91
  %description94 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx93, i32 0, i32 2
  %78 = load i8*, i8** %user_data.addr, align 8
  %call95 = call i32 @_gimp_wire_read_string(%struct._GIOChannel* %74, i8** %description94, i32 1, i8* %78)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.end.98, label %if.then.97

if.then.97:                                       ; preds = %if.end.90
  br label %cleanup

if.end.98:                                        ; preds = %if.end.90
  br label %for.inc.99

for.inc.99:                                       ; preds = %if.end.98
  %79 = load i32, i32* %i, align 4
  %inc100 = add nsw i32 %79, 1
  store i32 %inc100, i32* %i, align 4
  br label %for.cond.70

for.end.101:                                      ; preds = %for.cond.70
  %80 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %81 = bitcast %struct._GPProcInstall* %80 to i8*
  %82 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %82, i32 0, i32 1
  store i8* %81, i8** %data, align 8
  br label %return

cleanup:                                          ; preds = %if.then.97, %if.then.89, %if.then.81, %if.then.65, %if.then.58, %if.then.50, %if.then.40, %if.then.36, %if.then.32, %if.then.28, %if.then.24, %if.then.20, %if.then.16, %if.then.12, %if.then.8, %if.then.4, %if.then
  %83 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %name102 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %83, i32 0, i32 0
  %84 = load i8*, i8** %name102, align 8
  call void @g_free(i8* %84)
  %85 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %blurb103 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %85, i32 0, i32 1
  %86 = load i8*, i8** %blurb103, align 8
  call void @g_free(i8* %86)
  %87 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %help104 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %87, i32 0, i32 2
  %88 = load i8*, i8** %help104, align 8
  call void @g_free(i8* %88)
  %89 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %author105 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %89, i32 0, i32 3
  %90 = load i8*, i8** %author105, align 8
  call void @g_free(i8* %90)
  %91 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %copyright106 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %91, i32 0, i32 4
  %92 = load i8*, i8** %copyright106, align 8
  call void @g_free(i8* %92)
  %93 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %date107 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %93, i32 0, i32 5
  %94 = load i8*, i8** %date107, align 8
  call void @g_free(i8* %94)
  %95 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %menu_path108 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %95, i32 0, i32 6
  %96 = load i8*, i8** %menu_path108, align 8
  call void @g_free(i8* %96)
  %97 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %image_types109 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %97, i32 0, i32 7
  %98 = load i8*, i8** %image_types109, align 8
  call void @g_free(i8* %98)
  %99 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %params110 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %99, i32 0, i32 11
  %100 = load %struct._GPParamDef*, %struct._GPParamDef** %params110, align 8
  %tobool111 = icmp ne %struct._GPParamDef* %100, null
  br i1 %tobool111, label %if.then.112, label %if.end.137

if.then.112:                                      ; preds = %cleanup
  store i32 0, i32* %i, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.133, %if.then.112
  %101 = load i32, i32* %i, align 4
  %102 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %nparams114 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %102, i32 0, i32 9
  %103 = load i32, i32* %nparams114, align 4
  %cmp115 = icmp ult i32 %101, %103
  br i1 %cmp115, label %for.body.117, label %for.end.135

for.body.117:                                     ; preds = %for.cond.113
  %104 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %104 to i64
  %105 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %params119 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %105, i32 0, i32 11
  %106 = load %struct._GPParamDef*, %struct._GPParamDef** %params119, align 8
  %arrayidx120 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %106, i64 %idxprom118
  %name121 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx120, i32 0, i32 1
  %107 = load i8*, i8** %name121, align 8
  %tobool122 = icmp ne i8* %107, null
  br i1 %tobool122, label %if.end.124, label %if.then.123

if.then.123:                                      ; preds = %for.body.117
  br label %for.end.135

if.end.124:                                       ; preds = %for.body.117
  %108 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %108 to i64
  %109 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %params126 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %109, i32 0, i32 11
  %110 = load %struct._GPParamDef*, %struct._GPParamDef** %params126, align 8
  %arrayidx127 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %110, i64 %idxprom125
  %name128 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx127, i32 0, i32 1
  %111 = load i8*, i8** %name128, align 8
  call void @g_free(i8* %111)
  %112 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %112 to i64
  %113 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %params130 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %113, i32 0, i32 11
  %114 = load %struct._GPParamDef*, %struct._GPParamDef** %params130, align 8
  %arrayidx131 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %114, i64 %idxprom129
  %description132 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx131, i32 0, i32 2
  %115 = load i8*, i8** %description132, align 8
  call void @g_free(i8* %115)
  br label %for.inc.133

for.inc.133:                                      ; preds = %if.end.124
  %116 = load i32, i32* %i, align 4
  %inc134 = add nsw i32 %116, 1
  store i32 %inc134, i32* %i, align 4
  br label %for.cond.113

for.end.135:                                      ; preds = %if.then.123, %for.cond.113
  %117 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %params136 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %117, i32 0, i32 11
  %118 = load %struct._GPParamDef*, %struct._GPParamDef** %params136, align 8
  %119 = bitcast %struct._GPParamDef* %118 to i8*
  call void @g_free(i8* %119)
  br label %if.end.137

if.end.137:                                       ; preds = %for.end.135, %cleanup
  %120 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %return_vals138 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %120, i32 0, i32 12
  %121 = load %struct._GPParamDef*, %struct._GPParamDef** %return_vals138, align 8
  %tobool139 = icmp ne %struct._GPParamDef* %121, null
  br i1 %tobool139, label %if.then.140, label %if.end.165

if.then.140:                                      ; preds = %if.end.137
  store i32 0, i32* %i, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.161, %if.then.140
  %122 = load i32, i32* %i, align 4
  %123 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %nreturn_vals142 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %123, i32 0, i32 10
  %124 = load i32, i32* %nreturn_vals142, align 4
  %cmp143 = icmp ult i32 %122, %124
  br i1 %cmp143, label %for.body.145, label %for.end.163

for.body.145:                                     ; preds = %for.cond.141
  %125 = load i32, i32* %i, align 4
  %idxprom146 = sext i32 %125 to i64
  %126 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %return_vals147 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %126, i32 0, i32 12
  %127 = load %struct._GPParamDef*, %struct._GPParamDef** %return_vals147, align 8
  %arrayidx148 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %127, i64 %idxprom146
  %name149 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx148, i32 0, i32 1
  %128 = load i8*, i8** %name149, align 8
  %tobool150 = icmp ne i8* %128, null
  br i1 %tobool150, label %if.end.152, label %if.then.151

if.then.151:                                      ; preds = %for.body.145
  br label %for.end.163

if.end.152:                                       ; preds = %for.body.145
  %129 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %129 to i64
  %130 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %return_vals154 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %130, i32 0, i32 12
  %131 = load %struct._GPParamDef*, %struct._GPParamDef** %return_vals154, align 8
  %arrayidx155 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %131, i64 %idxprom153
  %name156 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx155, i32 0, i32 1
  %132 = load i8*, i8** %name156, align 8
  call void @g_free(i8* %132)
  %133 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %133 to i64
  %134 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %return_vals158 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %134, i32 0, i32 12
  %135 = load %struct._GPParamDef*, %struct._GPParamDef** %return_vals158, align 8
  %arrayidx159 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %135, i64 %idxprom157
  %description160 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx159, i32 0, i32 2
  %136 = load i8*, i8** %description160, align 8
  call void @g_free(i8* %136)
  br label %for.inc.161

for.inc.161:                                      ; preds = %if.end.152
  %137 = load i32, i32* %i, align 4
  %inc162 = add nsw i32 %137, 1
  store i32 %inc162, i32* %i, align 4
  br label %for.cond.141

for.end.163:                                      ; preds = %if.then.151, %for.cond.141
  %138 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %return_vals164 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %138, i32 0, i32 12
  %139 = load %struct._GPParamDef*, %struct._GPParamDef** %return_vals164, align 8
  %140 = bitcast %struct._GPParamDef* %139 to i8*
  call void @g_free(i8* %140)
  br label %if.end.165

if.end.165:                                       ; preds = %for.end.163, %if.end.137
  br label %do.body

do.body:                                          ; preds = %if.end.165
  %141 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %142 = bitcast %struct._GPProcInstall* %141 to i8*
  call void @g_slice_free1(i64 96, i8* %142)
  br label %do.end

do.end:                                           ; preds = %do.body
  %143 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data166 = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %143, i32 0, i32 1
  store i8* null, i8** %data166, align 8
  br label %return

return:                                           ; preds = %do.end, %for.end.101
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_proc_install_write(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  %proc_install = alloca %struct._GPProcInstall*, align 8
  %i = alloca i32, align 4
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct._GPProcInstall*
  store %struct._GPProcInstall* %2, %struct._GPProcInstall** %proc_install, align 8
  %3 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %4 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %name = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %4, i32 0, i32 0
  %5 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @_gimp_wire_write_string(%struct._GIOChannel* %3, i8** %name, i32 1, i8* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end.91

if.end:                                           ; preds = %entry
  %6 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %7 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %blurb = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %7, i32 0, i32 1
  %8 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @_gimp_wire_write_string(%struct._GIOChannel* %6, i8** %blurb, i32 1, i8* %8)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %for.end.91

if.end.4:                                         ; preds = %if.end
  %9 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %10 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %help = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %10, i32 0, i32 2
  %11 = load i8*, i8** %user_data.addr, align 8
  %call5 = call i32 @_gimp_wire_write_string(%struct._GIOChannel* %9, i8** %help, i32 1, i8* %11)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %for.end.91

if.end.8:                                         ; preds = %if.end.4
  %12 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %13 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %author = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %13, i32 0, i32 3
  %14 = load i8*, i8** %user_data.addr, align 8
  %call9 = call i32 @_gimp_wire_write_string(%struct._GIOChannel* %12, i8** %author, i32 1, i8* %14)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  br label %for.end.91

if.end.12:                                        ; preds = %if.end.8
  %15 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %16 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %copyright = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %16, i32 0, i32 4
  %17 = load i8*, i8** %user_data.addr, align 8
  %call13 = call i32 @_gimp_wire_write_string(%struct._GIOChannel* %15, i8** %copyright, i32 1, i8* %17)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  br label %for.end.91

if.end.16:                                        ; preds = %if.end.12
  %18 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %19 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %date = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %19, i32 0, i32 5
  %20 = load i8*, i8** %user_data.addr, align 8
  %call17 = call i32 @_gimp_wire_write_string(%struct._GIOChannel* %18, i8** %date, i32 1, i8* %20)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.16
  br label %for.end.91

if.end.20:                                        ; preds = %if.end.16
  %21 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %22 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %menu_path = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %22, i32 0, i32 6
  %23 = load i8*, i8** %user_data.addr, align 8
  %call21 = call i32 @_gimp_wire_write_string(%struct._GIOChannel* %21, i8** %menu_path, i32 1, i8* %23)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.20
  br label %for.end.91

if.end.24:                                        ; preds = %if.end.20
  %24 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %25 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %image_types = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %25, i32 0, i32 7
  %26 = load i8*, i8** %user_data.addr, align 8
  %call25 = call i32 @_gimp_wire_write_string(%struct._GIOChannel* %24, i8** %image_types, i32 1, i8* %26)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.end.24
  br label %for.end.91

if.end.28:                                        ; preds = %if.end.24
  %27 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %28 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %type = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %28, i32 0, i32 8
  %29 = load i8*, i8** %user_data.addr, align 8
  %call29 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %27, i32* %type, i32 1, i8* %29)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.end.28
  br label %for.end.91

if.end.32:                                        ; preds = %if.end.28
  %30 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %31 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %nparams = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %31, i32 0, i32 9
  %32 = load i8*, i8** %user_data.addr, align 8
  %call33 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %30, i32* %nparams, i32 1, i8* %32)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.end.32
  br label %for.end.91

if.end.36:                                        ; preds = %if.end.32
  %33 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %34 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %nreturn_vals = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %34, i32 0, i32 10
  %35 = load i8*, i8** %user_data.addr, align 8
  %call37 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %33, i32* %nreturn_vals, i32 1, i8* %35)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.end.36
  br label %for.end.91

if.end.40:                                        ; preds = %if.end.36
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.40
  %36 = load i32, i32* %i, align 4
  %37 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %nparams41 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %37, i32 0, i32 9
  %38 = load i32, i32* %nparams41, align 4
  %cmp = icmp ult i32 %36, %38
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom = sext i32 %40 to i64
  %41 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %params = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %41, i32 0, i32 11
  %42 = load %struct._GPParamDef*, %struct._GPParamDef** %params, align 8
  %arrayidx = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %42, i64 %idxprom
  %type42 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx, i32 0, i32 0
  %43 = load i8*, i8** %user_data.addr, align 8
  %call43 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %39, i32* %type42, i32 1, i8* %43)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %for.body
  br label %for.end.91

if.end.46:                                        ; preds = %for.body
  %44 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %45 to i64
  %46 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %params48 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %46, i32 0, i32 11
  %47 = load %struct._GPParamDef*, %struct._GPParamDef** %params48, align 8
  %arrayidx49 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %47, i64 %idxprom47
  %name50 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx49, i32 0, i32 1
  %48 = load i8*, i8** %user_data.addr, align 8
  %call51 = call i32 @_gimp_wire_write_string(%struct._GIOChannel* %44, i8** %name50, i32 1, i8* %48)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %if.end.46
  br label %for.end.91

if.end.54:                                        ; preds = %if.end.46
  %49 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %50 to i64
  %51 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %params56 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %51, i32 0, i32 11
  %52 = load %struct._GPParamDef*, %struct._GPParamDef** %params56, align 8
  %arrayidx57 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %52, i64 %idxprom55
  %description = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx57, i32 0, i32 2
  %53 = load i8*, i8** %user_data.addr, align 8
  %call58 = call i32 @_gimp_wire_write_string(%struct._GIOChannel* %49, i8** %description, i32 1, i8* %53)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.end.54
  br label %for.end.91

if.end.61:                                        ; preds = %if.end.54
  br label %for.inc

for.inc:                                          ; preds = %if.end.61
  %54 = load i32, i32* %i, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.89, %for.end
  %55 = load i32, i32* %i, align 4
  %56 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %nreturn_vals63 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %56, i32 0, i32 10
  %57 = load i32, i32* %nreturn_vals63, align 4
  %cmp64 = icmp ult i32 %55, %57
  br i1 %cmp64, label %for.body.65, label %for.end.91

for.body.65:                                      ; preds = %for.cond.62
  %58 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %59 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %59 to i64
  %60 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %return_vals = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %60, i32 0, i32 12
  %61 = load %struct._GPParamDef*, %struct._GPParamDef** %return_vals, align 8
  %arrayidx67 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %61, i64 %idxprom66
  %type68 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx67, i32 0, i32 0
  %62 = load i8*, i8** %user_data.addr, align 8
  %call69 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %58, i32* %type68, i32 1, i8* %62)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %for.body.65
  br label %for.end.91

if.end.72:                                        ; preds = %for.body.65
  %63 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %64 to i64
  %65 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %return_vals74 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %65, i32 0, i32 12
  %66 = load %struct._GPParamDef*, %struct._GPParamDef** %return_vals74, align 8
  %arrayidx75 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %66, i64 %idxprom73
  %name76 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx75, i32 0, i32 1
  %67 = load i8*, i8** %user_data.addr, align 8
  %call77 = call i32 @_gimp_wire_write_string(%struct._GIOChannel* %63, i8** %name76, i32 1, i8* %67)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.end.80, label %if.then.79

if.then.79:                                       ; preds = %if.end.72
  br label %for.end.91

if.end.80:                                        ; preds = %if.end.72
  %68 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %69 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %69 to i64
  %70 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %return_vals82 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %70, i32 0, i32 12
  %71 = load %struct._GPParamDef*, %struct._GPParamDef** %return_vals82, align 8
  %arrayidx83 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %71, i64 %idxprom81
  %description84 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx83, i32 0, i32 2
  %72 = load i8*, i8** %user_data.addr, align 8
  %call85 = call i32 @_gimp_wire_write_string(%struct._GIOChannel* %68, i8** %description84, i32 1, i8* %72)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.end.88, label %if.then.87

if.then.87:                                       ; preds = %if.end.80
  br label %for.end.91

if.end.88:                                        ; preds = %if.end.80
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %73 = load i32, i32* %i, align 4
  %inc90 = add nsw i32 %73, 1
  store i32 %inc90, i32* %i, align 4
  br label %for.cond.62

for.end.91:                                       ; preds = %if.then, %if.then.3, %if.then.7, %if.then.11, %if.then.15, %if.then.19, %if.then.23, %if.then.27, %if.then.31, %if.then.35, %if.then.39, %if.then.45, %if.then.53, %if.then.60, %if.then.71, %if.then.79, %if.then.87, %for.cond.62
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_proc_install_destroy(%struct._GimpWireMessage* %msg) #0 {
entry:
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %proc_install = alloca %struct._GPProcInstall*, align 8
  %i = alloca i32, align 4
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  %0 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct._GPProcInstall*
  store %struct._GPProcInstall* %2, %struct._GPProcInstall** %proc_install, align 8
  %3 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %tobool = icmp ne %struct._GPProcInstall* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %name = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  call void @g_free(i8* %5)
  %6 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %blurb = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %6, i32 0, i32 1
  %7 = load i8*, i8** %blurb, align 8
  call void @g_free(i8* %7)
  %8 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %help = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %8, i32 0, i32 2
  %9 = load i8*, i8** %help, align 8
  call void @g_free(i8* %9)
  %10 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %author = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %10, i32 0, i32 3
  %11 = load i8*, i8** %author, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %copyright = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %12, i32 0, i32 4
  %13 = load i8*, i8** %copyright, align 8
  call void @g_free(i8* %13)
  %14 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %date = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %14, i32 0, i32 5
  %15 = load i8*, i8** %date, align 8
  call void @g_free(i8* %15)
  %16 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %menu_path = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %16, i32 0, i32 6
  %17 = load i8*, i8** %menu_path, align 8
  call void @g_free(i8* %17)
  %18 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %image_types = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %18, i32 0, i32 7
  %19 = load i8*, i8** %image_types, align 8
  call void @g_free(i8* %19)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %20 = load i32, i32* %i, align 4
  %21 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %nparams = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %21, i32 0, i32 9
  %22 = load i32, i32* %nparams, align 4
  %cmp = icmp ult i32 %20, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %params = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %24, i32 0, i32 11
  %25 = load %struct._GPParamDef*, %struct._GPParamDef** %params, align 8
  %arrayidx = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %25, i64 %idxprom
  %name1 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx, i32 0, i32 1
  %26 = load i8*, i8** %name1, align 8
  call void @g_free(i8* %26)
  %27 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %27 to i64
  %28 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %params3 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %28, i32 0, i32 11
  %29 = load %struct._GPParamDef*, %struct._GPParamDef** %params3, align 8
  %arrayidx4 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %29, i64 %idxprom2
  %description = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx4, i32 0, i32 2
  %30 = load i8*, i8** %description, align 8
  call void @g_free(i8* %30)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.15, %for.end
  %32 = load i32, i32* %i, align 4
  %33 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %nreturn_vals = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %33, i32 0, i32 10
  %34 = load i32, i32* %nreturn_vals, align 4
  %cmp6 = icmp ult i32 %32, %34
  br i1 %cmp6, label %for.body.7, label %for.end.17

for.body.7:                                       ; preds = %for.cond.5
  %35 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %35 to i64
  %36 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %return_vals = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %36, i32 0, i32 12
  %37 = load %struct._GPParamDef*, %struct._GPParamDef** %return_vals, align 8
  %arrayidx9 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %37, i64 %idxprom8
  %name10 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx9, i32 0, i32 1
  %38 = load i8*, i8** %name10, align 8
  call void @g_free(i8* %38)
  %39 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %39 to i64
  %40 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %return_vals12 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %40, i32 0, i32 12
  %41 = load %struct._GPParamDef*, %struct._GPParamDef** %return_vals12, align 8
  %arrayidx13 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %41, i64 %idxprom11
  %description14 = getelementptr inbounds %struct._GPParamDef, %struct._GPParamDef* %arrayidx13, i32 0, i32 2
  %42 = load i8*, i8** %description14, align 8
  call void @g_free(i8* %42)
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.7
  %43 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %43, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond.5

for.end.17:                                       ; preds = %for.cond.5
  %44 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %params18 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %44, i32 0, i32 11
  %45 = load %struct._GPParamDef*, %struct._GPParamDef** %params18, align 8
  %46 = bitcast %struct._GPParamDef* %45 to i8*
  call void @g_free(i8* %46)
  %47 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %return_vals19 = getelementptr inbounds %struct._GPProcInstall, %struct._GPProcInstall* %47, i32 0, i32 12
  %48 = load %struct._GPParamDef*, %struct._GPParamDef** %return_vals19, align 8
  %49 = bitcast %struct._GPParamDef* %48 to i8*
  call void @g_free(i8* %49)
  br label %do.body

do.body:                                          ; preds = %for.end.17
  %50 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install, align 8
  %51 = bitcast %struct._GPProcInstall* %50 to i8*
  call void @g_slice_free1(i64 96, i8* %51)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_proc_uninstall_read(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  %proc_uninstall = alloca %struct._GPProcUninstall*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 8)
  %0 = bitcast i8* %call to %struct._GPProcUninstall*
  store %struct._GPProcUninstall* %0, %struct._GPProcUninstall** %proc_uninstall, align 8
  %1 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %2 = load %struct._GPProcUninstall*, %struct._GPProcUninstall** %proc_uninstall, align 8
  %name = getelementptr inbounds %struct._GPProcUninstall, %struct._GPProcUninstall* %2, i32 0, i32 0
  %3 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @_gimp_wire_read_string(%struct._GIOChannel* %1, i8** %name, i32 1, i8* %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._GPProcUninstall*, %struct._GPProcUninstall** %proc_uninstall, align 8
  %5 = bitcast %struct._GPProcUninstall* %4 to i8*
  %6 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %6, i32 0, i32 1
  store i8* %5, i8** %data, align 8
  br label %do.end

cleanup:                                          ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %cleanup
  %7 = load %struct._GPProcUninstall*, %struct._GPProcUninstall** %proc_uninstall, align 8
  %8 = bitcast %struct._GPProcUninstall* %7 to i8*
  call void @g_slice_free1(i64 8, i8* %8)
  br label %do.end

do.end:                                           ; preds = %if.end, %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_proc_uninstall_write(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  %proc_uninstall = alloca %struct._GPProcUninstall*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct._GPProcUninstall*
  store %struct._GPProcUninstall* %2, %struct._GPProcUninstall** %proc_uninstall, align 8
  %3 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %4 = load %struct._GPProcUninstall*, %struct._GPProcUninstall** %proc_uninstall, align 8
  %name = getelementptr inbounds %struct._GPProcUninstall, %struct._GPProcUninstall* %4, i32 0, i32 0
  %5 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @_gimp_wire_write_string(%struct._GIOChannel* %3, i8** %name, i32 1, i8* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_proc_uninstall_destroy(%struct._GimpWireMessage* %msg) #0 {
entry:
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %proc_uninstall = alloca %struct._GPProcUninstall*, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  %0 = load %struct._GimpWireMessage*, %struct._GimpWireMessage** %msg.addr, align 8
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct._GPProcUninstall*
  store %struct._GPProcUninstall* %2, %struct._GPProcUninstall** %proc_uninstall, align 8
  %3 = load %struct._GPProcUninstall*, %struct._GPProcUninstall** %proc_uninstall, align 8
  %tobool = icmp ne %struct._GPProcUninstall* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GPProcUninstall*, %struct._GPProcUninstall** %proc_uninstall, align 8
  %name = getelementptr inbounds %struct._GPProcUninstall, %struct._GPProcUninstall* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  call void @g_free(i8* %5)
  br label %do.body

do.body:                                          ; preds = %if.then
  %6 = load %struct._GPProcUninstall*, %struct._GPProcUninstall** %proc_uninstall, align 8
  %7 = bitcast %struct._GPProcUninstall* %6 to i8*
  call void @g_slice_free1(i64 8, i8* %7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_extension_ack_read(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_extension_ack_write(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_extension_ack_destroy(%struct._GimpWireMessage* %msg) #0 {
entry:
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_has_init_read(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_has_init_write(%struct._GIOChannel* %channel, %struct._GimpWireMessage* %msg, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_gp_has_init_destroy(%struct._GimpWireMessage* %msg) #0 {
entry:
  %msg.addr = alloca %struct._GimpWireMessage*, align 8
  store %struct._GimpWireMessage* %msg, %struct._GimpWireMessage** %msg.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gp_quit_write(%struct._GIOChannel* %channel, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %user_data.addr = alloca i8*, align 8
  %msg = alloca %struct._GimpWireMessage, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %type = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 0
  store i32 0, i32* %type, align 4
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 1
  store i8* null, i8** %data, align 8
  %0 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %1 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @gimp_wire_write_msg(%struct._GIOChannel* %0, %struct._GimpWireMessage* %msg, i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @gimp_wire_flush(%struct._GIOChannel* %2, i8* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare i32 @gimp_wire_write_msg(%struct._GIOChannel*, %struct._GimpWireMessage*, i8*) #1

declare i32 @gimp_wire_flush(%struct._GIOChannel*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gp_config_write(%struct._GIOChannel* %channel, %struct._GPConfig* %config, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %config.addr = alloca %struct._GPConfig*, align 8
  %user_data.addr = alloca i8*, align 8
  %msg = alloca %struct._GimpWireMessage, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GPConfig* %config, %struct._GPConfig** %config.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %type = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 0
  store i32 1, i32* %type, align 4
  %0 = load %struct._GPConfig*, %struct._GPConfig** %config.addr, align 8
  %1 = bitcast %struct._GPConfig* %0 to i8*
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 1
  store i8* %1, i8** %data, align 8
  %2 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @gimp_wire_write_msg(%struct._GIOChannel* %2, %struct._GimpWireMessage* %msg, i8* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %5 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @gimp_wire_flush(%struct._GIOChannel* %4, i8* %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gp_tile_req_write(%struct._GIOChannel* %channel, %struct._GPTileReq* %tile_req, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %tile_req.addr = alloca %struct._GPTileReq*, align 8
  %user_data.addr = alloca i8*, align 8
  %msg = alloca %struct._GimpWireMessage, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GPTileReq* %tile_req, %struct._GPTileReq** %tile_req.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %type = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 0
  store i32 2, i32* %type, align 4
  %0 = load %struct._GPTileReq*, %struct._GPTileReq** %tile_req.addr, align 8
  %1 = bitcast %struct._GPTileReq* %0 to i8*
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 1
  store i8* %1, i8** %data, align 8
  %2 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @gimp_wire_write_msg(%struct._GIOChannel* %2, %struct._GimpWireMessage* %msg, i8* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %5 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @gimp_wire_flush(%struct._GIOChannel* %4, i8* %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gp_tile_ack_write(%struct._GIOChannel* %channel, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %user_data.addr = alloca i8*, align 8
  %msg = alloca %struct._GimpWireMessage, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %type = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 0
  store i32 3, i32* %type, align 4
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 1
  store i8* null, i8** %data, align 8
  %0 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %1 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @gimp_wire_write_msg(%struct._GIOChannel* %0, %struct._GimpWireMessage* %msg, i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @gimp_wire_flush(%struct._GIOChannel* %2, i8* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @gp_tile_data_write(%struct._GIOChannel* %channel, %struct._GPTileData* %tile_data, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %tile_data.addr = alloca %struct._GPTileData*, align 8
  %user_data.addr = alloca i8*, align 8
  %msg = alloca %struct._GimpWireMessage, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GPTileData* %tile_data, %struct._GPTileData** %tile_data.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %type = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 0
  store i32 4, i32* %type, align 4
  %0 = load %struct._GPTileData*, %struct._GPTileData** %tile_data.addr, align 8
  %1 = bitcast %struct._GPTileData* %0 to i8*
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 1
  store i8* %1, i8** %data, align 8
  %2 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @gimp_wire_write_msg(%struct._GIOChannel* %2, %struct._GimpWireMessage* %msg, i8* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %5 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @gimp_wire_flush(%struct._GIOChannel* %4, i8* %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gp_proc_run_write(%struct._GIOChannel* %channel, %struct._GPProcRun* %proc_run, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %proc_run.addr = alloca %struct._GPProcRun*, align 8
  %user_data.addr = alloca i8*, align 8
  %msg = alloca %struct._GimpWireMessage, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GPProcRun* %proc_run, %struct._GPProcRun** %proc_run.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %type = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 0
  store i32 5, i32* %type, align 4
  %0 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run.addr, align 8
  %1 = bitcast %struct._GPProcRun* %0 to i8*
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 1
  store i8* %1, i8** %data, align 8
  %2 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @gimp_wire_write_msg(%struct._GIOChannel* %2, %struct._GimpWireMessage* %msg, i8* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %5 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @gimp_wire_flush(%struct._GIOChannel* %4, i8* %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gp_proc_return_write(%struct._GIOChannel* %channel, %struct._GPProcReturn* %proc_return, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %proc_return.addr = alloca %struct._GPProcReturn*, align 8
  %user_data.addr = alloca i8*, align 8
  %msg = alloca %struct._GimpWireMessage, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GPProcReturn* %proc_return, %struct._GPProcReturn** %proc_return.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %type = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 0
  store i32 6, i32* %type, align 4
  %0 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return.addr, align 8
  %1 = bitcast %struct._GPProcReturn* %0 to i8*
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 1
  store i8* %1, i8** %data, align 8
  %2 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @gimp_wire_write_msg(%struct._GIOChannel* %2, %struct._GimpWireMessage* %msg, i8* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %5 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @gimp_wire_flush(%struct._GIOChannel* %4, i8* %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gp_temp_proc_run_write(%struct._GIOChannel* %channel, %struct._GPProcRun* %proc_run, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %proc_run.addr = alloca %struct._GPProcRun*, align 8
  %user_data.addr = alloca i8*, align 8
  %msg = alloca %struct._GimpWireMessage, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GPProcRun* %proc_run, %struct._GPProcRun** %proc_run.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %type = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 0
  store i32 7, i32* %type, align 4
  %0 = load %struct._GPProcRun*, %struct._GPProcRun** %proc_run.addr, align 8
  %1 = bitcast %struct._GPProcRun* %0 to i8*
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 1
  store i8* %1, i8** %data, align 8
  %2 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @gimp_wire_write_msg(%struct._GIOChannel* %2, %struct._GimpWireMessage* %msg, i8* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %5 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @gimp_wire_flush(%struct._GIOChannel* %4, i8* %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gp_temp_proc_return_write(%struct._GIOChannel* %channel, %struct._GPProcReturn* %proc_return, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %proc_return.addr = alloca %struct._GPProcReturn*, align 8
  %user_data.addr = alloca i8*, align 8
  %msg = alloca %struct._GimpWireMessage, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GPProcReturn* %proc_return, %struct._GPProcReturn** %proc_return.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %type = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 0
  store i32 8, i32* %type, align 4
  %0 = load %struct._GPProcReturn*, %struct._GPProcReturn** %proc_return.addr, align 8
  %1 = bitcast %struct._GPProcReturn* %0 to i8*
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 1
  store i8* %1, i8** %data, align 8
  %2 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @gimp_wire_write_msg(%struct._GIOChannel* %2, %struct._GimpWireMessage* %msg, i8* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %5 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @gimp_wire_flush(%struct._GIOChannel* %4, i8* %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gp_proc_install_write(%struct._GIOChannel* %channel, %struct._GPProcInstall* %proc_install, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %proc_install.addr = alloca %struct._GPProcInstall*, align 8
  %user_data.addr = alloca i8*, align 8
  %msg = alloca %struct._GimpWireMessage, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GPProcInstall* %proc_install, %struct._GPProcInstall** %proc_install.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %type = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 0
  store i32 9, i32* %type, align 4
  %0 = load %struct._GPProcInstall*, %struct._GPProcInstall** %proc_install.addr, align 8
  %1 = bitcast %struct._GPProcInstall* %0 to i8*
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 1
  store i8* %1, i8** %data, align 8
  %2 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @gimp_wire_write_msg(%struct._GIOChannel* %2, %struct._GimpWireMessage* %msg, i8* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %5 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @gimp_wire_flush(%struct._GIOChannel* %4, i8* %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gp_proc_uninstall_write(%struct._GIOChannel* %channel, %struct._GPProcUninstall* %proc_uninstall, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %proc_uninstall.addr = alloca %struct._GPProcUninstall*, align 8
  %user_data.addr = alloca i8*, align 8
  %msg = alloca %struct._GimpWireMessage, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GPProcUninstall* %proc_uninstall, %struct._GPProcUninstall** %proc_uninstall.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %type = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 0
  store i32 10, i32* %type, align 4
  %0 = load %struct._GPProcUninstall*, %struct._GPProcUninstall** %proc_uninstall.addr, align 8
  %1 = bitcast %struct._GPProcUninstall* %0 to i8*
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 1
  store i8* %1, i8** %data, align 8
  %2 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @gimp_wire_write_msg(%struct._GIOChannel* %2, %struct._GimpWireMessage* %msg, i8* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %5 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @gimp_wire_flush(%struct._GIOChannel* %4, i8* %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gp_extension_ack_write(%struct._GIOChannel* %channel, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %user_data.addr = alloca i8*, align 8
  %msg = alloca %struct._GimpWireMessage, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %type = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 0
  store i32 11, i32* %type, align 4
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 1
  store i8* null, i8** %data, align 8
  %0 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %1 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @gimp_wire_write_msg(%struct._GIOChannel* %0, %struct._GimpWireMessage* %msg, i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @gimp_wire_flush(%struct._GIOChannel* %2, i8* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @gp_has_init_write(%struct._GIOChannel* %channel, i8* %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %user_data.addr = alloca i8*, align 8
  %msg = alloca %struct._GimpWireMessage, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %type = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 0
  store i32 12, i32* %type, align 4
  %data = getelementptr inbounds %struct._GimpWireMessage, %struct._GimpWireMessage* %msg, i32 0, i32 1
  store i8* null, i8** %data, align 8
  %0 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %1 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @gimp_wire_write_msg(%struct._GIOChannel* %0, %struct._GimpWireMessage* %msg, i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @gimp_wire_flush(%struct._GIOChannel* %2, i8* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @gp_params_destroy(%struct._GPParam* %params, i32 %nparams) #0 {
entry:
  %params.addr = alloca %struct._GPParam*, align 8
  %nparams.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._GPParam* %params, %struct._GPParam** %params.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.71, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.73

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GPParam, %struct._GPParam* %3, i64 %idxprom
  %type = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx, i32 0, i32 0
  %4 = load i32, i32* %type, align 4
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
    i32 14, label %sw.bb
    i32 15, label %sw.bb
    i32 16, label %sw.bb
    i32 17, label %sw.bb
    i32 19, label %sw.bb
    i32 21, label %sw.bb
    i32 4, label %sw.bb.1
    i32 5, label %sw.bb.4
    i32 6, label %sw.bb.8
    i32 7, label %sw.bb.12
    i32 8, label %sw.bb.16
    i32 9, label %sw.bb.20
    i32 18, label %sw.bb.42
    i32 20, label %sw.bb.46
    i32 22, label %sw.bb.70
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  br label %sw.epilog

sw.bb.1:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %6, i64 %idxprom2
  %data = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx3, i32 0, i32 1
  %d_string = bitcast %union.anon* %data to i8**
  %7 = load i8*, i8** %d_string, align 8
  call void @g_free(i8* %7)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %9, i64 %idxprom5
  %data7 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx6, i32 0, i32 1
  %d_int32array = bitcast %union.anon* %data7 to i32**
  %10 = load i32*, i32** %d_int32array, align 8
  %11 = bitcast i32* %10 to i8*
  call void @g_free(i8* %11)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %13, i64 %idxprom9
  %data11 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx10, i32 0, i32 1
  %d_int16array = bitcast %union.anon* %data11 to i16**
  %14 = load i16*, i16** %d_int16array, align 8
  %15 = bitcast i16* %14 to i8*
  call void @g_free(i8* %15)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %17, i64 %idxprom13
  %data15 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx14, i32 0, i32 1
  %d_int8array = bitcast %union.anon* %data15 to i8**
  %18 = load i8*, i8** %d_int8array, align 8
  call void @g_free(i8* %18)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %20, i64 %idxprom17
  %data19 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx18, i32 0, i32 1
  %d_floatarray = bitcast %union.anon* %data19 to double**
  %21 = load double*, double** %d_floatarray, align 8
  %22 = bitcast double* %21 to i8*
  call void @g_free(i8* %22)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %cmp21 = icmp sgt i32 %23, 0
  br i1 %cmp21, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb.20
  %24 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %24, 1
  %idxprom22 = sext i32 %sub to i64
  %25 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %25, i64 %idxprom22
  %type24 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx23, i32 0, i32 0
  %26 = load i32, i32* %type24, align 4
  %cmp25 = icmp eq i32 %26, 0
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %27 = load i32, i32* %i, align 4
  %sub26 = sub nsw i32 %27, 1
  %idxprom27 = sext i32 %sub26 to i64
  %28 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %28, i64 %idxprom27
  %data29 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx28, i32 0, i32 1
  %d_int32 = bitcast %union.anon* %data29 to i32*
  %29 = load i32, i32* %d_int32, align 4
  store i32 %29, i32* %count, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc, %if.then
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %count, align 4
  %cmp31 = icmp slt i32 %30, %31
  br i1 %cmp31, label %for.body.32, label %for.end

for.body.32:                                      ; preds = %for.cond.30
  %32 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %32 to i64
  %33 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %33 to i64
  %34 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %34, i64 %idxprom34
  %data36 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx35, i32 0, i32 1
  %d_stringarray = bitcast %union.anon* %data36 to i8***
  %35 = load i8**, i8*** %d_stringarray, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %35, i64 %idxprom33
  %36 = load i8*, i8** %arrayidx37, align 8
  call void @g_free(i8* %36)
  br label %for.inc

for.inc:                                          ; preds = %for.body.32
  %37 = load i32, i32* %j, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.30

for.end:                                          ; preds = %for.cond.30
  %38 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %38 to i64
  %39 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %39, i64 %idxprom38
  %data40 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx39, i32 0, i32 1
  %d_stringarray41 = bitcast %union.anon* %data40 to i8***
  %40 = load i8**, i8*** %d_stringarray41, align 8
  %41 = bitcast i8** %40 to i8*
  call void @g_free(i8* %41)
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %sw.bb.20
  br label %sw.epilog

sw.bb.42:                                         ; preds = %for.body
  %42 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %42 to i64
  %43 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %43, i64 %idxprom43
  %data45 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx44, i32 0, i32 1
  %d_colorarray = bitcast %union.anon* %data45 to %struct._GimpRGB**
  %44 = load %struct._GimpRGB*, %struct._GimpRGB** %d_colorarray, align 8
  %45 = bitcast %struct._GimpRGB* %44 to i8*
  call void @g_free(i8* %45)
  br label %sw.epilog

sw.bb.46:                                         ; preds = %for.body
  %46 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %46 to i64
  %47 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx48 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %47, i64 %idxprom47
  %data49 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx48, i32 0, i32 1
  %d_parasite = bitcast %union.anon* %data49 to %struct._GimpParasite*
  %name = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite, i32 0, i32 0
  %48 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %48, null
  br i1 %tobool, label %if.then.50, label %if.end.56

if.then.50:                                       ; preds = %sw.bb.46
  %49 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %49 to i64
  %50 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %50, i64 %idxprom51
  %data53 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx52, i32 0, i32 1
  %d_parasite54 = bitcast %union.anon* %data53 to %struct._GimpParasite*
  %name55 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite54, i32 0, i32 0
  %51 = load i8*, i8** %name55, align 8
  call void @g_free(i8* %51)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.50, %sw.bb.46
  %52 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %52 to i64
  %53 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx58 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %53, i64 %idxprom57
  %data59 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx58, i32 0, i32 1
  %d_parasite60 = bitcast %union.anon* %data59 to %struct._GimpParasite*
  %data61 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite60, i32 0, i32 3
  %54 = load i8*, i8** %data61, align 8
  %tobool62 = icmp ne i8* %54, null
  br i1 %tobool62, label %if.then.63, label %if.end.69

if.then.63:                                       ; preds = %if.end.56
  %55 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %55 to i64
  %56 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx65 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %56, i64 %idxprom64
  %data66 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx65, i32 0, i32 1
  %d_parasite67 = bitcast %union.anon* %data66 to %struct._GimpParasite*
  %data68 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite67, i32 0, i32 3
  %57 = load i8*, i8** %data68, align 8
  call void @g_free(i8* %57)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.63, %if.end.56
  br label %sw.epilog

sw.bb.70:                                         ; preds = %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.70, %if.end.69, %sw.bb.42, %if.end, %sw.bb.16, %sw.bb.12, %sw.bb.8, %sw.bb.4, %sw.bb.1, %sw.bb
  br label %for.inc.71

for.inc.71:                                       ; preds = %sw.epilog
  %58 = load i32, i32* %i, align 4
  %inc72 = add nsw i32 %58, 1
  store i32 %inc72, i32* %i, align 4
  br label %for.cond

for.end.73:                                       ; preds = %for.cond
  %59 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %60 = bitcast %struct._GPParam* %59 to i8*
  call void @g_free(i8* %60)
  ret void
}

declare void @g_free(i8*) #1

declare noalias i8* @g_slice_alloc0(i64) #1

declare hidden i32 @_gimp_wire_read_int32(%struct._GIOChannel*, i32*, i32, i8*) #1

declare hidden i32 @_gimp_wire_read_int8(%struct._GIOChannel*, i8*, i32, i8*) #1

declare hidden i32 @_gimp_wire_read_string(%struct._GIOChannel*, i8**, i32, i8*) #1

declare void @g_slice_free1(i64, i8*) #1

declare hidden i32 @_gimp_wire_write_int32(%struct._GIOChannel*, i32*, i32, i8*) #1

declare hidden i32 @_gimp_wire_write_int8(%struct._GIOChannel*, i8*, i32, i8*) #1

declare hidden i32 @_gimp_wire_write_string(%struct._GIOChannel*, i8**, i32, i8*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @_gp_params_read(%struct._GIOChannel* %channel, %struct._GPParam** %params, i32* %nparams, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %params.addr = alloca %struct._GPParam**, align 8
  %nparams.addr = alloca i32*, align 8
  %user_data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GPParam** %params, %struct._GPParam*** %params.addr, align 8
  store i32* %nparams, i32** %nparams.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %1 = load i32*, i32** %nparams.addr, align 8
  %2 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %0, i32* %1, i32 1, i8* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32*, i32** %nparams.addr, align 8
  %4 = load i32, i32* %3, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  store %struct._GPParam* null, %struct._GPParam** %5, align 8
  br label %return

if.end.2:                                         ; preds = %if.end
  %6 = load i32*, i32** %nparams.addr, align 8
  %7 = load i32, i32* %6, align 4
  %conv = zext i32 %7 to i64
  %call3 = call noalias i8* @g_malloc0_n(i64 %conv, i64 40)
  %8 = bitcast i8* %call3 to %struct._GPParam*
  %9 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  store %struct._GPParam* %8, %struct._GPParam** %9, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.498, %if.end.2
  %10 = load i32, i32* %i, align 4
  %11 = load i32*, i32** %nparams.addr, align 8
  %12 = load i32, i32* %11, align 4
  %cmp4 = icmp ult i32 %10, %12
  br i1 %cmp4, label %for.body, label %for.end.500

for.body:                                         ; preds = %for.cond
  %13 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %16 = load %struct._GPParam*, %struct._GPParam** %15, align 8
  %arrayidx = getelementptr inbounds %struct._GPParam, %struct._GPParam* %16, i64 %idxprom
  %type = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx, i32 0, i32 0
  %17 = load i8*, i8** %user_data.addr, align 8
  %call6 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %13, i32* %type, i32 1, i8* %17)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %for.body
  br label %cleanup

if.end.9:                                         ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %18 to i64
  %19 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %20 = load %struct._GPParam*, %struct._GPParam** %19, align 8
  %arrayidx11 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %20, i64 %idxprom10
  %type12 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx11, i32 0, i32 0
  %21 = load i32, i32* %type12, align 4
  switch i32 %21, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.19
    i32 2, label %sw.bb.27
    i32 3, label %sw.bb.35
    i32 4, label %sw.bb.43
    i32 5, label %sw.bb.51
    i32 6, label %sw.bb.95
    i32 7, label %sw.bb.144
    i32 8, label %sw.bb.193
    i32 9, label %sw.bb.242
    i32 10, label %sw.bb.306
    i32 11, label %sw.bb.314
    i32 12, label %sw.bb.322
    i32 13, label %sw.bb.330
    i32 14, label %sw.bb.338
    i32 15, label %sw.bb.346
    i32 16, label %sw.bb.354
    i32 17, label %sw.bb.362
    i32 18, label %sw.bb.370
    i32 19, label %sw.bb.398
    i32 20, label %sw.bb.406
    i32 21, label %sw.bb.489
    i32 22, label %sw.bb.497
  ]

sw.bb:                                            ; preds = %if.end.9
  %22 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %23 to i64
  %24 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %25 = load %struct._GPParam*, %struct._GPParam** %24, align 8
  %arrayidx14 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %25, i64 %idxprom13
  %data = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx14, i32 0, i32 1
  %d_int32 = bitcast %union.anon* %data to i32*
  %26 = load i8*, i8** %user_data.addr, align 8
  %call15 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %22, i32* %d_int32, i32 1, i8* %26)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %sw.bb
  br label %cleanup

if.end.18:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.end.9
  %27 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %28 to i64
  %29 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %30 = load %struct._GPParam*, %struct._GPParam** %29, align 8
  %arrayidx21 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %30, i64 %idxprom20
  %data22 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx21, i32 0, i32 1
  %d_int16 = bitcast %union.anon* %data22 to i16*
  %31 = load i8*, i8** %user_data.addr, align 8
  %call23 = call i32 @_gimp_wire_read_int16(%struct._GIOChannel* %27, i16* %d_int16, i32 1, i8* %31)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %sw.bb.19
  br label %cleanup

if.end.26:                                        ; preds = %sw.bb.19
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end.9
  %32 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %33 to i64
  %34 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %35 = load %struct._GPParam*, %struct._GPParam** %34, align 8
  %arrayidx29 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %35, i64 %idxprom28
  %data30 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx29, i32 0, i32 1
  %d_int8 = bitcast %union.anon* %data30 to i8*
  %36 = load i8*, i8** %user_data.addr, align 8
  %call31 = call i32 @_gimp_wire_read_int8(%struct._GIOChannel* %32, i8* %d_int8, i32 1, i8* %36)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %sw.bb.27
  br label %cleanup

if.end.34:                                        ; preds = %sw.bb.27
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end.9
  %37 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %38 to i64
  %39 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %40 = load %struct._GPParam*, %struct._GPParam** %39, align 8
  %arrayidx37 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %40, i64 %idxprom36
  %data38 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx37, i32 0, i32 1
  %d_float = bitcast %union.anon* %data38 to double*
  %41 = load i8*, i8** %user_data.addr, align 8
  %call39 = call i32 @_gimp_wire_read_double(%struct._GIOChannel* %37, double* %d_float, i32 1, i8* %41)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %sw.bb.35
  br label %cleanup

if.end.42:                                        ; preds = %sw.bb.35
  br label %sw.epilog

sw.bb.43:                                         ; preds = %if.end.9
  %42 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %43 to i64
  %44 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %45 = load %struct._GPParam*, %struct._GPParam** %44, align 8
  %arrayidx45 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %45, i64 %idxprom44
  %data46 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx45, i32 0, i32 1
  %d_string = bitcast %union.anon* %data46 to i8**
  %46 = load i8*, i8** %user_data.addr, align 8
  %call47 = call i32 @_gimp_wire_read_string(%struct._GIOChannel* %42, i8** %d_string, i32 1, i8* %46)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %sw.bb.43
  br label %cleanup

if.end.50:                                        ; preds = %sw.bb.43
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.end.9
  %47 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %47, 1
  %idxprom52 = sext i32 %sub to i64
  %48 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %49 = load %struct._GPParam*, %struct._GPParam** %48, align 8
  %arrayidx53 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %49, i64 %idxprom52
  %data54 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx53, i32 0, i32 1
  %d_int3255 = bitcast %union.anon* %data54 to i32*
  %50 = load i32, i32* %d_int3255, align 4
  %cmp56 = icmp sgt i32 0, %50
  br i1 %cmp56, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.51
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.51
  %51 = load i32, i32* %i, align 4
  %sub58 = sub nsw i32 %51, 1
  %idxprom59 = sext i32 %sub58 to i64
  %52 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %53 = load %struct._GPParam*, %struct._GPParam** %52, align 8
  %arrayidx60 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %53, i64 %idxprom59
  %data61 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx60, i32 0, i32 1
  %d_int3262 = bitcast %union.anon* %data61 to i32*
  %54 = load i32, i32* %d_int3262, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %54, %cond.false ]
  %55 = load i32, i32* %i, align 4
  %sub63 = sub nsw i32 %55, 1
  %idxprom64 = sext i32 %sub63 to i64
  %56 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %57 = load %struct._GPParam*, %struct._GPParam** %56, align 8
  %arrayidx65 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %57, i64 %idxprom64
  %data66 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx65, i32 0, i32 1
  %d_int3267 = bitcast %union.anon* %data66 to i32*
  store i32 %cond, i32* %d_int3267, align 4
  %58 = load i32, i32* %i, align 4
  %sub68 = sub nsw i32 %58, 1
  %idxprom69 = sext i32 %sub68 to i64
  %59 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %60 = load %struct._GPParam*, %struct._GPParam** %59, align 8
  %arrayidx70 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %60, i64 %idxprom69
  %data71 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx70, i32 0, i32 1
  %d_int3272 = bitcast %union.anon* %data71 to i32*
  %61 = load i32, i32* %d_int3272, align 4
  %conv73 = sext i32 %61 to i64
  %call74 = call noalias i8* @g_malloc_n(i64 %conv73, i64 4)
  %62 = bitcast i8* %call74 to i32*
  %63 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %63 to i64
  %64 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %65 = load %struct._GPParam*, %struct._GPParam** %64, align 8
  %arrayidx76 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %65, i64 %idxprom75
  %data77 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx76, i32 0, i32 1
  %d_int32array = bitcast %union.anon* %data77 to i32**
  store i32* %62, i32** %d_int32array, align 8
  %66 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %67 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %67 to i64
  %68 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %69 = load %struct._GPParam*, %struct._GPParam** %68, align 8
  %arrayidx79 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %69, i64 %idxprom78
  %data80 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx79, i32 0, i32 1
  %d_int32array81 = bitcast %union.anon* %data80 to i32**
  %70 = load i32*, i32** %d_int32array81, align 8
  %71 = load i32, i32* %i, align 4
  %sub82 = sub nsw i32 %71, 1
  %idxprom83 = sext i32 %sub82 to i64
  %72 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %73 = load %struct._GPParam*, %struct._GPParam** %72, align 8
  %arrayidx84 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %73, i64 %idxprom83
  %data85 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx84, i32 0, i32 1
  %d_int3286 = bitcast %union.anon* %data85 to i32*
  %74 = load i32, i32* %d_int3286, align 4
  %75 = load i8*, i8** %user_data.addr, align 8
  %call87 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %66, i32* %70, i32 %74, i8* %75)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.end.94, label %if.then.89

if.then.89:                                       ; preds = %cond.end
  %76 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %76 to i64
  %77 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %78 = load %struct._GPParam*, %struct._GPParam** %77, align 8
  %arrayidx91 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %78, i64 %idxprom90
  %data92 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx91, i32 0, i32 1
  %d_int32array93 = bitcast %union.anon* %data92 to i32**
  %79 = load i32*, i32** %d_int32array93, align 8
  %80 = bitcast i32* %79 to i8*
  call void @g_free(i8* %80)
  br label %cleanup

if.end.94:                                        ; preds = %cond.end
  br label %sw.epilog

sw.bb.95:                                         ; preds = %if.end.9
  %81 = load i32, i32* %i, align 4
  %sub96 = sub nsw i32 %81, 1
  %idxprom97 = sext i32 %sub96 to i64
  %82 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %83 = load %struct._GPParam*, %struct._GPParam** %82, align 8
  %arrayidx98 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %83, i64 %idxprom97
  %data99 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx98, i32 0, i32 1
  %d_int32100 = bitcast %union.anon* %data99 to i32*
  %84 = load i32, i32* %d_int32100, align 4
  %cmp101 = icmp sgt i32 0, %84
  br i1 %cmp101, label %cond.true.103, label %cond.false.104

cond.true.103:                                    ; preds = %sw.bb.95
  br label %cond.end.110

cond.false.104:                                   ; preds = %sw.bb.95
  %85 = load i32, i32* %i, align 4
  %sub105 = sub nsw i32 %85, 1
  %idxprom106 = sext i32 %sub105 to i64
  %86 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %87 = load %struct._GPParam*, %struct._GPParam** %86, align 8
  %arrayidx107 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %87, i64 %idxprom106
  %data108 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx107, i32 0, i32 1
  %d_int32109 = bitcast %union.anon* %data108 to i32*
  %88 = load i32, i32* %d_int32109, align 4
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.false.104, %cond.true.103
  %cond111 = phi i32 [ 0, %cond.true.103 ], [ %88, %cond.false.104 ]
  %89 = load i32, i32* %i, align 4
  %sub112 = sub nsw i32 %89, 1
  %idxprom113 = sext i32 %sub112 to i64
  %90 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %91 = load %struct._GPParam*, %struct._GPParam** %90, align 8
  %arrayidx114 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %91, i64 %idxprom113
  %data115 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx114, i32 0, i32 1
  %d_int32116 = bitcast %union.anon* %data115 to i32*
  store i32 %cond111, i32* %d_int32116, align 4
  %92 = load i32, i32* %i, align 4
  %sub117 = sub nsw i32 %92, 1
  %idxprom118 = sext i32 %sub117 to i64
  %93 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %94 = load %struct._GPParam*, %struct._GPParam** %93, align 8
  %arrayidx119 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %94, i64 %idxprom118
  %data120 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx119, i32 0, i32 1
  %d_int32121 = bitcast %union.anon* %data120 to i32*
  %95 = load i32, i32* %d_int32121, align 4
  %conv122 = sext i32 %95 to i64
  %call123 = call noalias i8* @g_malloc_n(i64 %conv122, i64 2)
  %96 = bitcast i8* %call123 to i16*
  %97 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %97 to i64
  %98 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %99 = load %struct._GPParam*, %struct._GPParam** %98, align 8
  %arrayidx125 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %99, i64 %idxprom124
  %data126 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx125, i32 0, i32 1
  %d_int16array = bitcast %union.anon* %data126 to i16**
  store i16* %96, i16** %d_int16array, align 8
  %100 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %101 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %101 to i64
  %102 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %103 = load %struct._GPParam*, %struct._GPParam** %102, align 8
  %arrayidx128 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %103, i64 %idxprom127
  %data129 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx128, i32 0, i32 1
  %d_int16array130 = bitcast %union.anon* %data129 to i16**
  %104 = load i16*, i16** %d_int16array130, align 8
  %105 = load i32, i32* %i, align 4
  %sub131 = sub nsw i32 %105, 1
  %idxprom132 = sext i32 %sub131 to i64
  %106 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %107 = load %struct._GPParam*, %struct._GPParam** %106, align 8
  %arrayidx133 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %107, i64 %idxprom132
  %data134 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx133, i32 0, i32 1
  %d_int32135 = bitcast %union.anon* %data134 to i32*
  %108 = load i32, i32* %d_int32135, align 4
  %109 = load i8*, i8** %user_data.addr, align 8
  %call136 = call i32 @_gimp_wire_read_int16(%struct._GIOChannel* %100, i16* %104, i32 %108, i8* %109)
  %tobool137 = icmp ne i32 %call136, 0
  br i1 %tobool137, label %if.end.143, label %if.then.138

if.then.138:                                      ; preds = %cond.end.110
  %110 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %110 to i64
  %111 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %112 = load %struct._GPParam*, %struct._GPParam** %111, align 8
  %arrayidx140 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %112, i64 %idxprom139
  %data141 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx140, i32 0, i32 1
  %d_int16array142 = bitcast %union.anon* %data141 to i16**
  %113 = load i16*, i16** %d_int16array142, align 8
  %114 = bitcast i16* %113 to i8*
  call void @g_free(i8* %114)
  br label %cleanup

if.end.143:                                       ; preds = %cond.end.110
  br label %sw.epilog

sw.bb.144:                                        ; preds = %if.end.9
  %115 = load i32, i32* %i, align 4
  %sub145 = sub nsw i32 %115, 1
  %idxprom146 = sext i32 %sub145 to i64
  %116 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %117 = load %struct._GPParam*, %struct._GPParam** %116, align 8
  %arrayidx147 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %117, i64 %idxprom146
  %data148 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx147, i32 0, i32 1
  %d_int32149 = bitcast %union.anon* %data148 to i32*
  %118 = load i32, i32* %d_int32149, align 4
  %cmp150 = icmp sgt i32 0, %118
  br i1 %cmp150, label %cond.true.152, label %cond.false.153

cond.true.152:                                    ; preds = %sw.bb.144
  br label %cond.end.159

cond.false.153:                                   ; preds = %sw.bb.144
  %119 = load i32, i32* %i, align 4
  %sub154 = sub nsw i32 %119, 1
  %idxprom155 = sext i32 %sub154 to i64
  %120 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %121 = load %struct._GPParam*, %struct._GPParam** %120, align 8
  %arrayidx156 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %121, i64 %idxprom155
  %data157 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx156, i32 0, i32 1
  %d_int32158 = bitcast %union.anon* %data157 to i32*
  %122 = load i32, i32* %d_int32158, align 4
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.153, %cond.true.152
  %cond160 = phi i32 [ 0, %cond.true.152 ], [ %122, %cond.false.153 ]
  %123 = load i32, i32* %i, align 4
  %sub161 = sub nsw i32 %123, 1
  %idxprom162 = sext i32 %sub161 to i64
  %124 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %125 = load %struct._GPParam*, %struct._GPParam** %124, align 8
  %arrayidx163 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %125, i64 %idxprom162
  %data164 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx163, i32 0, i32 1
  %d_int32165 = bitcast %union.anon* %data164 to i32*
  store i32 %cond160, i32* %d_int32165, align 4
  %126 = load i32, i32* %i, align 4
  %sub166 = sub nsw i32 %126, 1
  %idxprom167 = sext i32 %sub166 to i64
  %127 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %128 = load %struct._GPParam*, %struct._GPParam** %127, align 8
  %arrayidx168 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %128, i64 %idxprom167
  %data169 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx168, i32 0, i32 1
  %d_int32170 = bitcast %union.anon* %data169 to i32*
  %129 = load i32, i32* %d_int32170, align 4
  %conv171 = sext i32 %129 to i64
  %call172 = call noalias i8* @g_malloc_n(i64 %conv171, i64 1)
  %130 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %130 to i64
  %131 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %132 = load %struct._GPParam*, %struct._GPParam** %131, align 8
  %arrayidx174 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %132, i64 %idxprom173
  %data175 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx174, i32 0, i32 1
  %d_int8array = bitcast %union.anon* %data175 to i8**
  store i8* %call172, i8** %d_int8array, align 8
  %133 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %134 = load i32, i32* %i, align 4
  %idxprom176 = sext i32 %134 to i64
  %135 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %136 = load %struct._GPParam*, %struct._GPParam** %135, align 8
  %arrayidx177 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %136, i64 %idxprom176
  %data178 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx177, i32 0, i32 1
  %d_int8array179 = bitcast %union.anon* %data178 to i8**
  %137 = load i8*, i8** %d_int8array179, align 8
  %138 = load i32, i32* %i, align 4
  %sub180 = sub nsw i32 %138, 1
  %idxprom181 = sext i32 %sub180 to i64
  %139 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %140 = load %struct._GPParam*, %struct._GPParam** %139, align 8
  %arrayidx182 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %140, i64 %idxprom181
  %data183 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx182, i32 0, i32 1
  %d_int32184 = bitcast %union.anon* %data183 to i32*
  %141 = load i32, i32* %d_int32184, align 4
  %142 = load i8*, i8** %user_data.addr, align 8
  %call185 = call i32 @_gimp_wire_read_int8(%struct._GIOChannel* %133, i8* %137, i32 %141, i8* %142)
  %tobool186 = icmp ne i32 %call185, 0
  br i1 %tobool186, label %if.end.192, label %if.then.187

if.then.187:                                      ; preds = %cond.end.159
  %143 = load i32, i32* %i, align 4
  %idxprom188 = sext i32 %143 to i64
  %144 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %145 = load %struct._GPParam*, %struct._GPParam** %144, align 8
  %arrayidx189 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %145, i64 %idxprom188
  %data190 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx189, i32 0, i32 1
  %d_int8array191 = bitcast %union.anon* %data190 to i8**
  %146 = load i8*, i8** %d_int8array191, align 8
  call void @g_free(i8* %146)
  br label %cleanup

if.end.192:                                       ; preds = %cond.end.159
  br label %sw.epilog

sw.bb.193:                                        ; preds = %if.end.9
  %147 = load i32, i32* %i, align 4
  %sub194 = sub nsw i32 %147, 1
  %idxprom195 = sext i32 %sub194 to i64
  %148 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %149 = load %struct._GPParam*, %struct._GPParam** %148, align 8
  %arrayidx196 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %149, i64 %idxprom195
  %data197 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx196, i32 0, i32 1
  %d_int32198 = bitcast %union.anon* %data197 to i32*
  %150 = load i32, i32* %d_int32198, align 4
  %cmp199 = icmp sgt i32 0, %150
  br i1 %cmp199, label %cond.true.201, label %cond.false.202

cond.true.201:                                    ; preds = %sw.bb.193
  br label %cond.end.208

cond.false.202:                                   ; preds = %sw.bb.193
  %151 = load i32, i32* %i, align 4
  %sub203 = sub nsw i32 %151, 1
  %idxprom204 = sext i32 %sub203 to i64
  %152 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %153 = load %struct._GPParam*, %struct._GPParam** %152, align 8
  %arrayidx205 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %153, i64 %idxprom204
  %data206 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx205, i32 0, i32 1
  %d_int32207 = bitcast %union.anon* %data206 to i32*
  %154 = load i32, i32* %d_int32207, align 4
  br label %cond.end.208

cond.end.208:                                     ; preds = %cond.false.202, %cond.true.201
  %cond209 = phi i32 [ 0, %cond.true.201 ], [ %154, %cond.false.202 ]
  %155 = load i32, i32* %i, align 4
  %sub210 = sub nsw i32 %155, 1
  %idxprom211 = sext i32 %sub210 to i64
  %156 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %157 = load %struct._GPParam*, %struct._GPParam** %156, align 8
  %arrayidx212 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %157, i64 %idxprom211
  %data213 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx212, i32 0, i32 1
  %d_int32214 = bitcast %union.anon* %data213 to i32*
  store i32 %cond209, i32* %d_int32214, align 4
  %158 = load i32, i32* %i, align 4
  %sub215 = sub nsw i32 %158, 1
  %idxprom216 = sext i32 %sub215 to i64
  %159 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %160 = load %struct._GPParam*, %struct._GPParam** %159, align 8
  %arrayidx217 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %160, i64 %idxprom216
  %data218 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx217, i32 0, i32 1
  %d_int32219 = bitcast %union.anon* %data218 to i32*
  %161 = load i32, i32* %d_int32219, align 4
  %conv220 = sext i32 %161 to i64
  %call221 = call noalias i8* @g_malloc_n(i64 %conv220, i64 8)
  %162 = bitcast i8* %call221 to double*
  %163 = load i32, i32* %i, align 4
  %idxprom222 = sext i32 %163 to i64
  %164 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %165 = load %struct._GPParam*, %struct._GPParam** %164, align 8
  %arrayidx223 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %165, i64 %idxprom222
  %data224 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx223, i32 0, i32 1
  %d_floatarray = bitcast %union.anon* %data224 to double**
  store double* %162, double** %d_floatarray, align 8
  %166 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %167 = load i32, i32* %i, align 4
  %idxprom225 = sext i32 %167 to i64
  %168 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %169 = load %struct._GPParam*, %struct._GPParam** %168, align 8
  %arrayidx226 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %169, i64 %idxprom225
  %data227 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx226, i32 0, i32 1
  %d_floatarray228 = bitcast %union.anon* %data227 to double**
  %170 = load double*, double** %d_floatarray228, align 8
  %171 = load i32, i32* %i, align 4
  %sub229 = sub nsw i32 %171, 1
  %idxprom230 = sext i32 %sub229 to i64
  %172 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %173 = load %struct._GPParam*, %struct._GPParam** %172, align 8
  %arrayidx231 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %173, i64 %idxprom230
  %data232 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx231, i32 0, i32 1
  %d_int32233 = bitcast %union.anon* %data232 to i32*
  %174 = load i32, i32* %d_int32233, align 4
  %175 = load i8*, i8** %user_data.addr, align 8
  %call234 = call i32 @_gimp_wire_read_double(%struct._GIOChannel* %166, double* %170, i32 %174, i8* %175)
  %tobool235 = icmp ne i32 %call234, 0
  br i1 %tobool235, label %if.end.241, label %if.then.236

if.then.236:                                      ; preds = %cond.end.208
  %176 = load i32, i32* %i, align 4
  %idxprom237 = sext i32 %176 to i64
  %177 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %178 = load %struct._GPParam*, %struct._GPParam** %177, align 8
  %arrayidx238 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %178, i64 %idxprom237
  %data239 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx238, i32 0, i32 1
  %d_floatarray240 = bitcast %union.anon* %data239 to double**
  %179 = load double*, double** %d_floatarray240, align 8
  %180 = bitcast double* %179 to i8*
  call void @g_free(i8* %180)
  br label %cleanup

if.end.241:                                       ; preds = %cond.end.208
  br label %sw.epilog

sw.bb.242:                                        ; preds = %if.end.9
  %181 = load i32, i32* %i, align 4
  %sub243 = sub nsw i32 %181, 1
  %idxprom244 = sext i32 %sub243 to i64
  %182 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %183 = load %struct._GPParam*, %struct._GPParam** %182, align 8
  %arrayidx245 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %183, i64 %idxprom244
  %data246 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx245, i32 0, i32 1
  %d_int32247 = bitcast %union.anon* %data246 to i32*
  %184 = load i32, i32* %d_int32247, align 4
  %cmp248 = icmp sgt i32 0, %184
  br i1 %cmp248, label %cond.true.250, label %cond.false.251

cond.true.250:                                    ; preds = %sw.bb.242
  br label %cond.end.257

cond.false.251:                                   ; preds = %sw.bb.242
  %185 = load i32, i32* %i, align 4
  %sub252 = sub nsw i32 %185, 1
  %idxprom253 = sext i32 %sub252 to i64
  %186 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %187 = load %struct._GPParam*, %struct._GPParam** %186, align 8
  %arrayidx254 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %187, i64 %idxprom253
  %data255 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx254, i32 0, i32 1
  %d_int32256 = bitcast %union.anon* %data255 to i32*
  %188 = load i32, i32* %d_int32256, align 4
  br label %cond.end.257

cond.end.257:                                     ; preds = %cond.false.251, %cond.true.250
  %cond258 = phi i32 [ 0, %cond.true.250 ], [ %188, %cond.false.251 ]
  %189 = load i32, i32* %i, align 4
  %sub259 = sub nsw i32 %189, 1
  %idxprom260 = sext i32 %sub259 to i64
  %190 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %191 = load %struct._GPParam*, %struct._GPParam** %190, align 8
  %arrayidx261 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %191, i64 %idxprom260
  %data262 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx261, i32 0, i32 1
  %d_int32263 = bitcast %union.anon* %data262 to i32*
  store i32 %cond258, i32* %d_int32263, align 4
  %192 = load i32, i32* %i, align 4
  %sub264 = sub nsw i32 %192, 1
  %idxprom265 = sext i32 %sub264 to i64
  %193 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %194 = load %struct._GPParam*, %struct._GPParam** %193, align 8
  %arrayidx266 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %194, i64 %idxprom265
  %data267 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx266, i32 0, i32 1
  %d_int32268 = bitcast %union.anon* %data267 to i32*
  %195 = load i32, i32* %d_int32268, align 4
  %conv269 = sext i32 %195 to i64
  %call270 = call noalias i8* @g_malloc0_n(i64 %conv269, i64 8)
  %196 = bitcast i8* %call270 to i8**
  %197 = load i32, i32* %i, align 4
  %idxprom271 = sext i32 %197 to i64
  %198 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %199 = load %struct._GPParam*, %struct._GPParam** %198, align 8
  %arrayidx272 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %199, i64 %idxprom271
  %data273 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx272, i32 0, i32 1
  %d_stringarray = bitcast %union.anon* %data273 to i8***
  store i8** %196, i8*** %d_stringarray, align 8
  %200 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %201 = load i32, i32* %i, align 4
  %idxprom274 = sext i32 %201 to i64
  %202 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %203 = load %struct._GPParam*, %struct._GPParam** %202, align 8
  %arrayidx275 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %203, i64 %idxprom274
  %data276 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx275, i32 0, i32 1
  %d_stringarray277 = bitcast %union.anon* %data276 to i8***
  %204 = load i8**, i8*** %d_stringarray277, align 8
  %205 = load i32, i32* %i, align 4
  %sub278 = sub nsw i32 %205, 1
  %idxprom279 = sext i32 %sub278 to i64
  %206 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %207 = load %struct._GPParam*, %struct._GPParam** %206, align 8
  %arrayidx280 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %207, i64 %idxprom279
  %data281 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx280, i32 0, i32 1
  %d_int32282 = bitcast %union.anon* %data281 to i32*
  %208 = load i32, i32* %d_int32282, align 4
  %209 = load i8*, i8** %user_data.addr, align 8
  %call283 = call i32 @_gimp_wire_read_string(%struct._GIOChannel* %200, i8** %204, i32 %208, i8* %209)
  %tobool284 = icmp ne i32 %call283, 0
  br i1 %tobool284, label %if.end.305, label %if.then.285

if.then.285:                                      ; preds = %cond.end.257
  store i32 0, i32* %j, align 4
  br label %for.cond.286

for.cond.286:                                     ; preds = %for.inc, %if.then.285
  %210 = load i32, i32* %j, align 4
  %211 = load i32, i32* %i, align 4
  %sub287 = sub nsw i32 %211, 1
  %idxprom288 = sext i32 %sub287 to i64
  %212 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %213 = load %struct._GPParam*, %struct._GPParam** %212, align 8
  %arrayidx289 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %213, i64 %idxprom288
  %data290 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx289, i32 0, i32 1
  %d_int32291 = bitcast %union.anon* %data290 to i32*
  %214 = load i32, i32* %d_int32291, align 4
  %cmp292 = icmp slt i32 %210, %214
  br i1 %cmp292, label %for.body.294, label %for.end

for.body.294:                                     ; preds = %for.cond.286
  %215 = load i32, i32* %j, align 4
  %idxprom295 = sext i32 %215 to i64
  %216 = load i32, i32* %i, align 4
  %idxprom296 = sext i32 %216 to i64
  %217 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %218 = load %struct._GPParam*, %struct._GPParam** %217, align 8
  %arrayidx297 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %218, i64 %idxprom296
  %data298 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx297, i32 0, i32 1
  %d_stringarray299 = bitcast %union.anon* %data298 to i8***
  %219 = load i8**, i8*** %d_stringarray299, align 8
  %arrayidx300 = getelementptr inbounds i8*, i8** %219, i64 %idxprom295
  %220 = load i8*, i8** %arrayidx300, align 8
  call void @g_free(i8* %220)
  br label %for.inc

for.inc:                                          ; preds = %for.body.294
  %221 = load i32, i32* %j, align 4
  %inc = add nsw i32 %221, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.286

for.end:                                          ; preds = %for.cond.286
  %222 = load i32, i32* %i, align 4
  %idxprom301 = sext i32 %222 to i64
  %223 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %224 = load %struct._GPParam*, %struct._GPParam** %223, align 8
  %arrayidx302 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %224, i64 %idxprom301
  %data303 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx302, i32 0, i32 1
  %d_stringarray304 = bitcast %union.anon* %data303 to i8***
  %225 = load i8**, i8*** %d_stringarray304, align 8
  %226 = bitcast i8** %225 to i8*
  call void @g_free(i8* %226)
  br label %cleanup

if.end.305:                                       ; preds = %cond.end.257
  br label %sw.epilog

sw.bb.306:                                        ; preds = %if.end.9
  %227 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %228 = load i32, i32* %i, align 4
  %idxprom307 = sext i32 %228 to i64
  %229 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %230 = load %struct._GPParam*, %struct._GPParam** %229, align 8
  %arrayidx308 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %230, i64 %idxprom307
  %data309 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx308, i32 0, i32 1
  %d_color = bitcast %union.anon* %data309 to %struct._GimpRGB*
  %231 = load i8*, i8** %user_data.addr, align 8
  %call310 = call i32 @_gimp_wire_read_color(%struct._GIOChannel* %227, %struct._GimpRGB* %d_color, i32 1, i8* %231)
  %tobool311 = icmp ne i32 %call310, 0
  br i1 %tobool311, label %if.end.313, label %if.then.312

if.then.312:                                      ; preds = %sw.bb.306
  br label %cleanup

if.end.313:                                       ; preds = %sw.bb.306
  br label %sw.epilog

sw.bb.314:                                        ; preds = %if.end.9
  %232 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %233 = load i32, i32* %i, align 4
  %idxprom315 = sext i32 %233 to i64
  %234 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %235 = load %struct._GPParam*, %struct._GPParam** %234, align 8
  %arrayidx316 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %235, i64 %idxprom315
  %data317 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx316, i32 0, i32 1
  %d_item = bitcast %union.anon* %data317 to i32*
  %236 = load i8*, i8** %user_data.addr, align 8
  %call318 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %232, i32* %d_item, i32 1, i8* %236)
  %tobool319 = icmp ne i32 %call318, 0
  br i1 %tobool319, label %if.end.321, label %if.then.320

if.then.320:                                      ; preds = %sw.bb.314
  br label %cleanup

if.end.321:                                       ; preds = %sw.bb.314
  br label %sw.epilog

sw.bb.322:                                        ; preds = %if.end.9
  %237 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %238 = load i32, i32* %i, align 4
  %idxprom323 = sext i32 %238 to i64
  %239 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %240 = load %struct._GPParam*, %struct._GPParam** %239, align 8
  %arrayidx324 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %240, i64 %idxprom323
  %data325 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx324, i32 0, i32 1
  %d_display = bitcast %union.anon* %data325 to i32*
  %241 = load i8*, i8** %user_data.addr, align 8
  %call326 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %237, i32* %d_display, i32 1, i8* %241)
  %tobool327 = icmp ne i32 %call326, 0
  br i1 %tobool327, label %if.end.329, label %if.then.328

if.then.328:                                      ; preds = %sw.bb.322
  br label %cleanup

if.end.329:                                       ; preds = %sw.bb.322
  br label %sw.epilog

sw.bb.330:                                        ; preds = %if.end.9
  %242 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %243 = load i32, i32* %i, align 4
  %idxprom331 = sext i32 %243 to i64
  %244 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %245 = load %struct._GPParam*, %struct._GPParam** %244, align 8
  %arrayidx332 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %245, i64 %idxprom331
  %data333 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx332, i32 0, i32 1
  %d_image = bitcast %union.anon* %data333 to i32*
  %246 = load i8*, i8** %user_data.addr, align 8
  %call334 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %242, i32* %d_image, i32 1, i8* %246)
  %tobool335 = icmp ne i32 %call334, 0
  br i1 %tobool335, label %if.end.337, label %if.then.336

if.then.336:                                      ; preds = %sw.bb.330
  br label %cleanup

if.end.337:                                       ; preds = %sw.bb.330
  br label %sw.epilog

sw.bb.338:                                        ; preds = %if.end.9
  %247 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %248 = load i32, i32* %i, align 4
  %idxprom339 = sext i32 %248 to i64
  %249 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %250 = load %struct._GPParam*, %struct._GPParam** %249, align 8
  %arrayidx340 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %250, i64 %idxprom339
  %data341 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx340, i32 0, i32 1
  %d_layer = bitcast %union.anon* %data341 to i32*
  %251 = load i8*, i8** %user_data.addr, align 8
  %call342 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %247, i32* %d_layer, i32 1, i8* %251)
  %tobool343 = icmp ne i32 %call342, 0
  br i1 %tobool343, label %if.end.345, label %if.then.344

if.then.344:                                      ; preds = %sw.bb.338
  br label %cleanup

if.end.345:                                       ; preds = %sw.bb.338
  br label %sw.epilog

sw.bb.346:                                        ; preds = %if.end.9
  %252 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %253 = load i32, i32* %i, align 4
  %idxprom347 = sext i32 %253 to i64
  %254 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %255 = load %struct._GPParam*, %struct._GPParam** %254, align 8
  %arrayidx348 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %255, i64 %idxprom347
  %data349 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx348, i32 0, i32 1
  %d_channel = bitcast %union.anon* %data349 to i32*
  %256 = load i8*, i8** %user_data.addr, align 8
  %call350 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %252, i32* %d_channel, i32 1, i8* %256)
  %tobool351 = icmp ne i32 %call350, 0
  br i1 %tobool351, label %if.end.353, label %if.then.352

if.then.352:                                      ; preds = %sw.bb.346
  br label %cleanup

if.end.353:                                       ; preds = %sw.bb.346
  br label %sw.epilog

sw.bb.354:                                        ; preds = %if.end.9
  %257 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %258 = load i32, i32* %i, align 4
  %idxprom355 = sext i32 %258 to i64
  %259 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %260 = load %struct._GPParam*, %struct._GPParam** %259, align 8
  %arrayidx356 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %260, i64 %idxprom355
  %data357 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx356, i32 0, i32 1
  %d_drawable = bitcast %union.anon* %data357 to i32*
  %261 = load i8*, i8** %user_data.addr, align 8
  %call358 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %257, i32* %d_drawable, i32 1, i8* %261)
  %tobool359 = icmp ne i32 %call358, 0
  br i1 %tobool359, label %if.end.361, label %if.then.360

if.then.360:                                      ; preds = %sw.bb.354
  br label %cleanup

if.end.361:                                       ; preds = %sw.bb.354
  br label %sw.epilog

sw.bb.362:                                        ; preds = %if.end.9
  %262 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %263 = load i32, i32* %i, align 4
  %idxprom363 = sext i32 %263 to i64
  %264 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %265 = load %struct._GPParam*, %struct._GPParam** %264, align 8
  %arrayidx364 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %265, i64 %idxprom363
  %data365 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx364, i32 0, i32 1
  %d_selection = bitcast %union.anon* %data365 to i32*
  %266 = load i8*, i8** %user_data.addr, align 8
  %call366 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %262, i32* %d_selection, i32 1, i8* %266)
  %tobool367 = icmp ne i32 %call366, 0
  br i1 %tobool367, label %if.end.369, label %if.then.368

if.then.368:                                      ; preds = %sw.bb.362
  br label %cleanup

if.end.369:                                       ; preds = %sw.bb.362
  br label %sw.epilog

sw.bb.370:                                        ; preds = %if.end.9
  %267 = load i32, i32* %i, align 4
  %sub371 = sub nsw i32 %267, 1
  %idxprom372 = sext i32 %sub371 to i64
  %268 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %269 = load %struct._GPParam*, %struct._GPParam** %268, align 8
  %arrayidx373 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %269, i64 %idxprom372
  %data374 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx373, i32 0, i32 1
  %d_int32375 = bitcast %union.anon* %data374 to i32*
  %270 = load i32, i32* %d_int32375, align 4
  %conv376 = sext i32 %270 to i64
  %call377 = call noalias i8* @g_malloc_n(i64 %conv376, i64 32)
  %271 = bitcast i8* %call377 to %struct._GimpRGB*
  %272 = load i32, i32* %i, align 4
  %idxprom378 = sext i32 %272 to i64
  %273 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %274 = load %struct._GPParam*, %struct._GPParam** %273, align 8
  %arrayidx379 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %274, i64 %idxprom378
  %data380 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx379, i32 0, i32 1
  %d_colorarray = bitcast %union.anon* %data380 to %struct._GimpRGB**
  store %struct._GimpRGB* %271, %struct._GimpRGB** %d_colorarray, align 8
  %275 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %276 = load i32, i32* %i, align 4
  %idxprom381 = sext i32 %276 to i64
  %277 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %278 = load %struct._GPParam*, %struct._GPParam** %277, align 8
  %arrayidx382 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %278, i64 %idxprom381
  %data383 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx382, i32 0, i32 1
  %d_colorarray384 = bitcast %union.anon* %data383 to %struct._GimpRGB**
  %279 = load %struct._GimpRGB*, %struct._GimpRGB** %d_colorarray384, align 8
  %280 = load i32, i32* %i, align 4
  %sub385 = sub nsw i32 %280, 1
  %idxprom386 = sext i32 %sub385 to i64
  %281 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %282 = load %struct._GPParam*, %struct._GPParam** %281, align 8
  %arrayidx387 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %282, i64 %idxprom386
  %data388 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx387, i32 0, i32 1
  %d_int32389 = bitcast %union.anon* %data388 to i32*
  %283 = load i32, i32* %d_int32389, align 4
  %284 = load i8*, i8** %user_data.addr, align 8
  %call390 = call i32 @_gimp_wire_read_color(%struct._GIOChannel* %275, %struct._GimpRGB* %279, i32 %283, i8* %284)
  %tobool391 = icmp ne i32 %call390, 0
  br i1 %tobool391, label %if.end.397, label %if.then.392

if.then.392:                                      ; preds = %sw.bb.370
  %285 = load i32, i32* %i, align 4
  %idxprom393 = sext i32 %285 to i64
  %286 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %287 = load %struct._GPParam*, %struct._GPParam** %286, align 8
  %arrayidx394 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %287, i64 %idxprom393
  %data395 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx394, i32 0, i32 1
  %d_colorarray396 = bitcast %union.anon* %data395 to %struct._GimpRGB**
  %288 = load %struct._GimpRGB*, %struct._GimpRGB** %d_colorarray396, align 8
  %289 = bitcast %struct._GimpRGB* %288 to i8*
  call void @g_free(i8* %289)
  br label %cleanup

if.end.397:                                       ; preds = %sw.bb.370
  br label %sw.epilog

sw.bb.398:                                        ; preds = %if.end.9
  %290 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %291 = load i32, i32* %i, align 4
  %idxprom399 = sext i32 %291 to i64
  %292 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %293 = load %struct._GPParam*, %struct._GPParam** %292, align 8
  %arrayidx400 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %293, i64 %idxprom399
  %data401 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx400, i32 0, i32 1
  %d_vectors = bitcast %union.anon* %data401 to i32*
  %294 = load i8*, i8** %user_data.addr, align 8
  %call402 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %290, i32* %d_vectors, i32 1, i8* %294)
  %tobool403 = icmp ne i32 %call402, 0
  br i1 %tobool403, label %if.end.405, label %if.then.404

if.then.404:                                      ; preds = %sw.bb.398
  br label %cleanup

if.end.405:                                       ; preds = %sw.bb.398
  br label %sw.epilog

sw.bb.406:                                        ; preds = %if.end.9
  %295 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %296 = load i32, i32* %i, align 4
  %idxprom407 = sext i32 %296 to i64
  %297 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %298 = load %struct._GPParam*, %struct._GPParam** %297, align 8
  %arrayidx408 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %298, i64 %idxprom407
  %data409 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx408, i32 0, i32 1
  %d_parasite = bitcast %union.anon* %data409 to %struct._GimpParasite*
  %name = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite, i32 0, i32 0
  %299 = load i8*, i8** %user_data.addr, align 8
  %call410 = call i32 @_gimp_wire_read_string(%struct._GIOChannel* %295, i8** %name, i32 1, i8* %299)
  %tobool411 = icmp ne i32 %call410, 0
  br i1 %tobool411, label %if.end.413, label %if.then.412

if.then.412:                                      ; preds = %sw.bb.406
  br label %cleanup

if.end.413:                                       ; preds = %sw.bb.406
  %300 = load i32, i32* %i, align 4
  %idxprom414 = sext i32 %300 to i64
  %301 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %302 = load %struct._GPParam*, %struct._GPParam** %301, align 8
  %arrayidx415 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %302, i64 %idxprom414
  %data416 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx415, i32 0, i32 1
  %d_parasite417 = bitcast %union.anon* %data416 to %struct._GimpParasite*
  %name418 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite417, i32 0, i32 0
  %303 = load i8*, i8** %name418, align 8
  %cmp419 = icmp eq i8* %303, null
  br i1 %cmp419, label %if.then.421, label %if.end.427

if.then.421:                                      ; preds = %if.end.413
  %304 = load i32, i32* %i, align 4
  %idxprom422 = sext i32 %304 to i64
  %305 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %306 = load %struct._GPParam*, %struct._GPParam** %305, align 8
  %arrayidx423 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %306, i64 %idxprom422
  %data424 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx423, i32 0, i32 1
  %d_parasite425 = bitcast %union.anon* %data424 to %struct._GimpParasite*
  %data426 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite425, i32 0, i32 3
  store i8* null, i8** %data426, align 8
  br label %sw.epilog

if.end.427:                                       ; preds = %if.end.413
  %307 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %308 = load i32, i32* %i, align 4
  %idxprom428 = sext i32 %308 to i64
  %309 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %310 = load %struct._GPParam*, %struct._GPParam** %309, align 8
  %arrayidx429 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %310, i64 %idxprom428
  %data430 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx429, i32 0, i32 1
  %d_parasite431 = bitcast %union.anon* %data430 to %struct._GimpParasite*
  %flags = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite431, i32 0, i32 1
  %311 = load i8*, i8** %user_data.addr, align 8
  %call432 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %307, i32* %flags, i32 1, i8* %311)
  %tobool433 = icmp ne i32 %call432, 0
  br i1 %tobool433, label %if.end.435, label %if.then.434

if.then.434:                                      ; preds = %if.end.427
  br label %cleanup

if.end.435:                                       ; preds = %if.end.427
  %312 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %313 = load i32, i32* %i, align 4
  %idxprom436 = sext i32 %313 to i64
  %314 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %315 = load %struct._GPParam*, %struct._GPParam** %314, align 8
  %arrayidx437 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %315, i64 %idxprom436
  %data438 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx437, i32 0, i32 1
  %d_parasite439 = bitcast %union.anon* %data438 to %struct._GimpParasite*
  %size = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite439, i32 0, i32 2
  %316 = load i8*, i8** %user_data.addr, align 8
  %call440 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %312, i32* %size, i32 1, i8* %316)
  %tobool441 = icmp ne i32 %call440, 0
  br i1 %tobool441, label %if.end.443, label %if.then.442

if.then.442:                                      ; preds = %if.end.435
  br label %cleanup

if.end.443:                                       ; preds = %if.end.435
  %317 = load i32, i32* %i, align 4
  %idxprom444 = sext i32 %317 to i64
  %318 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %319 = load %struct._GPParam*, %struct._GPParam** %318, align 8
  %arrayidx445 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %319, i64 %idxprom444
  %data446 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx445, i32 0, i32 1
  %d_parasite447 = bitcast %union.anon* %data446 to %struct._GimpParasite*
  %size448 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite447, i32 0, i32 2
  %320 = load i32, i32* %size448, align 4
  %cmp449 = icmp ugt i32 %320, 0
  br i1 %cmp449, label %if.then.451, label %if.else

if.then.451:                                      ; preds = %if.end.443
  %321 = load i32, i32* %i, align 4
  %idxprom452 = sext i32 %321 to i64
  %322 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %323 = load %struct._GPParam*, %struct._GPParam** %322, align 8
  %arrayidx453 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %323, i64 %idxprom452
  %data454 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx453, i32 0, i32 1
  %d_parasite455 = bitcast %union.anon* %data454 to %struct._GimpParasite*
  %size456 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite455, i32 0, i32 2
  %324 = load i32, i32* %size456, align 4
  %conv457 = zext i32 %324 to i64
  %call458 = call noalias i8* @g_malloc(i64 %conv457)
  %325 = load i32, i32* %i, align 4
  %idxprom459 = sext i32 %325 to i64
  %326 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %327 = load %struct._GPParam*, %struct._GPParam** %326, align 8
  %arrayidx460 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %327, i64 %idxprom459
  %data461 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx460, i32 0, i32 1
  %d_parasite462 = bitcast %union.anon* %data461 to %struct._GimpParasite*
  %data463 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite462, i32 0, i32 3
  store i8* %call458, i8** %data463, align 8
  %328 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %329 = load i32, i32* %i, align 4
  %idxprom464 = sext i32 %329 to i64
  %330 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %331 = load %struct._GPParam*, %struct._GPParam** %330, align 8
  %arrayidx465 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %331, i64 %idxprom464
  %data466 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx465, i32 0, i32 1
  %d_parasite467 = bitcast %union.anon* %data466 to %struct._GimpParasite*
  %data468 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite467, i32 0, i32 3
  %332 = load i8*, i8** %data468, align 8
  %333 = load i32, i32* %i, align 4
  %idxprom469 = sext i32 %333 to i64
  %334 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %335 = load %struct._GPParam*, %struct._GPParam** %334, align 8
  %arrayidx470 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %335, i64 %idxprom469
  %data471 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx470, i32 0, i32 1
  %d_parasite472 = bitcast %union.anon* %data471 to %struct._GimpParasite*
  %size473 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite472, i32 0, i32 2
  %336 = load i32, i32* %size473, align 4
  %337 = load i8*, i8** %user_data.addr, align 8
  %call474 = call i32 @_gimp_wire_read_int8(%struct._GIOChannel* %328, i8* %332, i32 %336, i8* %337)
  %tobool475 = icmp ne i32 %call474, 0
  br i1 %tobool475, label %if.end.482, label %if.then.476

if.then.476:                                      ; preds = %if.then.451
  %338 = load i32, i32* %i, align 4
  %idxprom477 = sext i32 %338 to i64
  %339 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %340 = load %struct._GPParam*, %struct._GPParam** %339, align 8
  %arrayidx478 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %340, i64 %idxprom477
  %data479 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx478, i32 0, i32 1
  %d_parasite480 = bitcast %union.anon* %data479 to %struct._GimpParasite*
  %data481 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite480, i32 0, i32 3
  %341 = load i8*, i8** %data481, align 8
  call void @g_free(i8* %341)
  br label %cleanup

if.end.482:                                       ; preds = %if.then.451
  br label %if.end.488

if.else:                                          ; preds = %if.end.443
  %342 = load i32, i32* %i, align 4
  %idxprom483 = sext i32 %342 to i64
  %343 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %344 = load %struct._GPParam*, %struct._GPParam** %343, align 8
  %arrayidx484 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %344, i64 %idxprom483
  %data485 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx484, i32 0, i32 1
  %d_parasite486 = bitcast %union.anon* %data485 to %struct._GimpParasite*
  %data487 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %d_parasite486, i32 0, i32 3
  store i8* null, i8** %data487, align 8
  br label %if.end.488

if.end.488:                                       ; preds = %if.else, %if.end.482
  br label %sw.epilog

sw.bb.489:                                        ; preds = %if.end.9
  %345 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %346 = load i32, i32* %i, align 4
  %idxprom490 = sext i32 %346 to i64
  %347 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %348 = load %struct._GPParam*, %struct._GPParam** %347, align 8
  %arrayidx491 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %348, i64 %idxprom490
  %data492 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx491, i32 0, i32 1
  %d_status = bitcast %union.anon* %data492 to i32*
  %349 = load i8*, i8** %user_data.addr, align 8
  %call493 = call i32 @_gimp_wire_read_int32(%struct._GIOChannel* %345, i32* %d_status, i32 1, i8* %349)
  %tobool494 = icmp ne i32 %call493, 0
  br i1 %tobool494, label %if.end.496, label %if.then.495

if.then.495:                                      ; preds = %sw.bb.489
  br label %cleanup

if.end.496:                                       ; preds = %sw.bb.489
  br label %sw.epilog

sw.bb.497:                                        ; preds = %if.end.9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.9, %sw.bb.497, %if.end.496, %if.end.488, %if.then.421, %if.end.405, %if.end.397, %if.end.369, %if.end.361, %if.end.353, %if.end.345, %if.end.337, %if.end.329, %if.end.321, %if.end.313, %if.end.305, %if.end.241, %if.end.192, %if.end.143, %if.end.94, %if.end.50, %if.end.42, %if.end.34, %if.end.26, %if.end.18
  br label %for.inc.498

for.inc.498:                                      ; preds = %sw.epilog
  %350 = load i32, i32* %i, align 4
  %inc499 = add nsw i32 %350, 1
  store i32 %inc499, i32* %i, align 4
  br label %for.cond

for.end.500:                                      ; preds = %for.cond
  br label %return

cleanup:                                          ; preds = %if.then.495, %if.then.476, %if.then.442, %if.then.434, %if.then.412, %if.then.404, %if.then.392, %if.then.368, %if.then.360, %if.then.352, %if.then.344, %if.then.336, %if.then.328, %if.then.320, %if.then.312, %for.end, %if.then.236, %if.then.187, %if.then.138, %if.then.89, %if.then.49, %if.then.41, %if.then.33, %if.then.25, %if.then.17, %if.then.8
  %351 = load i32*, i32** %nparams.addr, align 8
  store i32 0, i32* %351, align 4
  %352 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  %353 = load %struct._GPParam*, %struct._GPParam** %352, align 8
  %354 = bitcast %struct._GPParam* %353 to i8*
  call void @g_free(i8* %354)
  %355 = load %struct._GPParam**, %struct._GPParam*** %params.addr, align 8
  store %struct._GPParam* null, %struct._GPParam** %355, align 8
  br label %return

return:                                           ; preds = %cleanup, %for.end.500, %if.then.1, %if.then
  ret void
}

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare hidden i32 @_gimp_wire_read_int16(%struct._GIOChannel*, i16*, i32, i8*) #1

declare hidden i32 @_gimp_wire_read_double(%struct._GIOChannel*, double*, i32, i8*) #1

declare hidden i32 @_gimp_wire_read_color(%struct._GIOChannel*, %struct._GimpRGB*, i32, i8*) #1

declare noalias i8* @g_malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal void @_gp_params_write(%struct._GIOChannel* %channel, %struct._GPParam* %params, i32 %nparams, i8* %user_data) #0 {
entry:
  %channel.addr = alloca %struct._GIOChannel*, align 8
  %params.addr = alloca %struct._GPParam*, align 8
  %nparams.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %p = alloca %struct._GimpParasite*, align 8
  store %struct._GIOChannel* %channel, %struct._GIOChannel** %channel.addr, align 8
  store %struct._GPParam* %params, %struct._GPParam** %params.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %1 = load i8*, i8** %user_data.addr, align 8
  %call = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %0, i32* %nparams.addr, i32 1, i8* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GPParam, %struct._GPParam* %6, i64 %idxprom
  %type = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx, i32 0, i32 0
  %7 = load i8*, i8** %user_data.addr, align 8
  %call1 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %4, i32* %type, i32 1, i8* %7)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %for.body
  br label %for.end

if.end.4:                                         ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %9, i64 %idxprom5
  %type7 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx6, i32 0, i32 0
  %10 = load i32, i32* %type7, align 4
  switch i32 %10, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.14
    i32 2, label %sw.bb.22
    i32 3, label %sw.bb.30
    i32 4, label %sw.bb.38
    i32 5, label %sw.bb.46
    i32 6, label %sw.bb.58
    i32 7, label %sw.bb.71
    i32 8, label %sw.bb.84
    i32 9, label %sw.bb.97
    i32 10, label %sw.bb.110
    i32 11, label %sw.bb.118
    i32 12, label %sw.bb.126
    i32 13, label %sw.bb.134
    i32 14, label %sw.bb.142
    i32 15, label %sw.bb.150
    i32 16, label %sw.bb.158
    i32 17, label %sw.bb.166
    i32 18, label %sw.bb.174
    i32 19, label %sw.bb.187
    i32 20, label %sw.bb.195
    i32 21, label %sw.bb.227
    i32 22, label %sw.bb.235
  ]

sw.bb:                                            ; preds = %if.end.4
  %11 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %13, i64 %idxprom8
  %data = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx9, i32 0, i32 1
  %d_int32 = bitcast %union.anon* %data to i32*
  %14 = load i8*, i8** %user_data.addr, align 8
  %call10 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %11, i32* %d_int32, i32 1, i8* %14)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %sw.bb
  br label %for.end

if.end.13:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end.4
  %15 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %16 to i64
  %17 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %17, i64 %idxprom15
  %data17 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx16, i32 0, i32 1
  %d_int16 = bitcast %union.anon* %data17 to i16*
  %18 = load i8*, i8** %user_data.addr, align 8
  %call18 = call i32 @_gimp_wire_write_int16(%struct._GIOChannel* %15, i16* %d_int16, i32 1, i8* %18)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %sw.bb.14
  br label %for.end

if.end.21:                                        ; preds = %sw.bb.14
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end.4
  %19 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %21, i64 %idxprom23
  %data25 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx24, i32 0, i32 1
  %d_int8 = bitcast %union.anon* %data25 to i8*
  %22 = load i8*, i8** %user_data.addr, align 8
  %call26 = call i32 @_gimp_wire_write_int8(%struct._GIOChannel* %19, i8* %d_int8, i32 1, i8* %22)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %sw.bb.22
  br label %for.end

if.end.29:                                        ; preds = %sw.bb.22
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.end.4
  %23 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %24 to i64
  %25 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %25, i64 %idxprom31
  %data33 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx32, i32 0, i32 1
  %d_float = bitcast %union.anon* %data33 to double*
  %26 = load i8*, i8** %user_data.addr, align 8
  %call34 = call i32 @_gimp_wire_write_double(%struct._GIOChannel* %23, double* %d_float, i32 1, i8* %26)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %sw.bb.30
  br label %for.end

if.end.37:                                        ; preds = %sw.bb.30
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.end.4
  %27 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %28 to i64
  %29 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %29, i64 %idxprom39
  %data41 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx40, i32 0, i32 1
  %d_string = bitcast %union.anon* %data41 to i8**
  %30 = load i8*, i8** %user_data.addr, align 8
  %call42 = call i32 @_gimp_wire_write_string(%struct._GIOChannel* %27, i8** %d_string, i32 1, i8* %30)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %sw.bb.38
  br label %for.end

if.end.45:                                        ; preds = %sw.bb.38
  br label %sw.epilog

sw.bb.46:                                         ; preds = %if.end.4
  %31 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %32 to i64
  %33 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx48 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %33, i64 %idxprom47
  %data49 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx48, i32 0, i32 1
  %d_int32array = bitcast %union.anon* %data49 to i32**
  %34 = load i32*, i32** %d_int32array, align 8
  %35 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %35, 1
  %idxprom50 = sext i32 %sub to i64
  %36 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %36, i64 %idxprom50
  %data52 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx51, i32 0, i32 1
  %d_int3253 = bitcast %union.anon* %data52 to i32*
  %37 = load i32, i32* %d_int3253, align 4
  %38 = load i8*, i8** %user_data.addr, align 8
  %call54 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %31, i32* %34, i32 %37, i8* %38)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %sw.bb.46
  br label %for.end

if.end.57:                                        ; preds = %sw.bb.46
  br label %sw.epilog

sw.bb.58:                                         ; preds = %if.end.4
  %39 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %40 to i64
  %41 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx60 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %41, i64 %idxprom59
  %data61 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx60, i32 0, i32 1
  %d_int16array = bitcast %union.anon* %data61 to i16**
  %42 = load i16*, i16** %d_int16array, align 8
  %43 = load i32, i32* %i, align 4
  %sub62 = sub nsw i32 %43, 1
  %idxprom63 = sext i32 %sub62 to i64
  %44 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx64 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %44, i64 %idxprom63
  %data65 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx64, i32 0, i32 1
  %d_int3266 = bitcast %union.anon* %data65 to i32*
  %45 = load i32, i32* %d_int3266, align 4
  %46 = load i8*, i8** %user_data.addr, align 8
  %call67 = call i32 @_gimp_wire_write_int16(%struct._GIOChannel* %39, i16* %42, i32 %45, i8* %46)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.end.70, label %if.then.69

if.then.69:                                       ; preds = %sw.bb.58
  br label %for.end

if.end.70:                                        ; preds = %sw.bb.58
  br label %sw.epilog

sw.bb.71:                                         ; preds = %if.end.4
  %47 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %48 to i64
  %49 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx73 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %49, i64 %idxprom72
  %data74 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx73, i32 0, i32 1
  %d_int8array = bitcast %union.anon* %data74 to i8**
  %50 = load i8*, i8** %d_int8array, align 8
  %51 = load i32, i32* %i, align 4
  %sub75 = sub nsw i32 %51, 1
  %idxprom76 = sext i32 %sub75 to i64
  %52 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx77 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %52, i64 %idxprom76
  %data78 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx77, i32 0, i32 1
  %d_int3279 = bitcast %union.anon* %data78 to i32*
  %53 = load i32, i32* %d_int3279, align 4
  %54 = load i8*, i8** %user_data.addr, align 8
  %call80 = call i32 @_gimp_wire_write_int8(%struct._GIOChannel* %47, i8* %50, i32 %53, i8* %54)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.end.83, label %if.then.82

if.then.82:                                       ; preds = %sw.bb.71
  br label %for.end

if.end.83:                                        ; preds = %sw.bb.71
  br label %sw.epilog

sw.bb.84:                                         ; preds = %if.end.4
  %55 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %56 to i64
  %57 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx86 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %57, i64 %idxprom85
  %data87 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx86, i32 0, i32 1
  %d_floatarray = bitcast %union.anon* %data87 to double**
  %58 = load double*, double** %d_floatarray, align 8
  %59 = load i32, i32* %i, align 4
  %sub88 = sub nsw i32 %59, 1
  %idxprom89 = sext i32 %sub88 to i64
  %60 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx90 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %60, i64 %idxprom89
  %data91 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx90, i32 0, i32 1
  %d_int3292 = bitcast %union.anon* %data91 to i32*
  %61 = load i32, i32* %d_int3292, align 4
  %62 = load i8*, i8** %user_data.addr, align 8
  %call93 = call i32 @_gimp_wire_write_double(%struct._GIOChannel* %55, double* %58, i32 %61, i8* %62)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.end.96, label %if.then.95

if.then.95:                                       ; preds = %sw.bb.84
  br label %for.end

if.end.96:                                        ; preds = %sw.bb.84
  br label %sw.epilog

sw.bb.97:                                         ; preds = %if.end.4
  %63 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %64 to i64
  %65 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx99 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %65, i64 %idxprom98
  %data100 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx99, i32 0, i32 1
  %d_stringarray = bitcast %union.anon* %data100 to i8***
  %66 = load i8**, i8*** %d_stringarray, align 8
  %67 = load i32, i32* %i, align 4
  %sub101 = sub nsw i32 %67, 1
  %idxprom102 = sext i32 %sub101 to i64
  %68 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx103 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %68, i64 %idxprom102
  %data104 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx103, i32 0, i32 1
  %d_int32105 = bitcast %union.anon* %data104 to i32*
  %69 = load i32, i32* %d_int32105, align 4
  %70 = load i8*, i8** %user_data.addr, align 8
  %call106 = call i32 @_gimp_wire_write_string(%struct._GIOChannel* %63, i8** %66, i32 %69, i8* %70)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.end.109, label %if.then.108

if.then.108:                                      ; preds = %sw.bb.97
  br label %for.end

if.end.109:                                       ; preds = %sw.bb.97
  br label %sw.epilog

sw.bb.110:                                        ; preds = %if.end.4
  %71 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %72 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %72 to i64
  %73 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx112 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %73, i64 %idxprom111
  %data113 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx112, i32 0, i32 1
  %d_color = bitcast %union.anon* %data113 to %struct._GimpRGB*
  %74 = load i8*, i8** %user_data.addr, align 8
  %call114 = call i32 @_gimp_wire_write_color(%struct._GIOChannel* %71, %struct._GimpRGB* %d_color, i32 1, i8* %74)
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.end.117, label %if.then.116

if.then.116:                                      ; preds = %sw.bb.110
  br label %for.end

if.end.117:                                       ; preds = %sw.bb.110
  br label %sw.epilog

sw.bb.118:                                        ; preds = %if.end.4
  %75 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %76 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %76 to i64
  %77 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx120 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %77, i64 %idxprom119
  %data121 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx120, i32 0, i32 1
  %d_item = bitcast %union.anon* %data121 to i32*
  %78 = load i8*, i8** %user_data.addr, align 8
  %call122 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %75, i32* %d_item, i32 1, i8* %78)
  %tobool123 = icmp ne i32 %call122, 0
  br i1 %tobool123, label %if.end.125, label %if.then.124

if.then.124:                                      ; preds = %sw.bb.118
  br label %for.end

if.end.125:                                       ; preds = %sw.bb.118
  br label %sw.epilog

sw.bb.126:                                        ; preds = %if.end.4
  %79 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %80 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %80 to i64
  %81 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx128 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %81, i64 %idxprom127
  %data129 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx128, i32 0, i32 1
  %d_display = bitcast %union.anon* %data129 to i32*
  %82 = load i8*, i8** %user_data.addr, align 8
  %call130 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %79, i32* %d_display, i32 1, i8* %82)
  %tobool131 = icmp ne i32 %call130, 0
  br i1 %tobool131, label %if.end.133, label %if.then.132

if.then.132:                                      ; preds = %sw.bb.126
  br label %for.end

if.end.133:                                       ; preds = %sw.bb.126
  br label %sw.epilog

sw.bb.134:                                        ; preds = %if.end.4
  %83 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %84 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %84 to i64
  %85 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx136 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %85, i64 %idxprom135
  %data137 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx136, i32 0, i32 1
  %d_image = bitcast %union.anon* %data137 to i32*
  %86 = load i8*, i8** %user_data.addr, align 8
  %call138 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %83, i32* %d_image, i32 1, i8* %86)
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %if.end.141, label %if.then.140

if.then.140:                                      ; preds = %sw.bb.134
  br label %for.end

if.end.141:                                       ; preds = %sw.bb.134
  br label %sw.epilog

sw.bb.142:                                        ; preds = %if.end.4
  %87 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %88 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %88 to i64
  %89 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx144 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %89, i64 %idxprom143
  %data145 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx144, i32 0, i32 1
  %d_layer = bitcast %union.anon* %data145 to i32*
  %90 = load i8*, i8** %user_data.addr, align 8
  %call146 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %87, i32* %d_layer, i32 1, i8* %90)
  %tobool147 = icmp ne i32 %call146, 0
  br i1 %tobool147, label %if.end.149, label %if.then.148

if.then.148:                                      ; preds = %sw.bb.142
  br label %for.end

if.end.149:                                       ; preds = %sw.bb.142
  br label %sw.epilog

sw.bb.150:                                        ; preds = %if.end.4
  %91 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %92 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %92 to i64
  %93 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx152 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %93, i64 %idxprom151
  %data153 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx152, i32 0, i32 1
  %d_channel = bitcast %union.anon* %data153 to i32*
  %94 = load i8*, i8** %user_data.addr, align 8
  %call154 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %91, i32* %d_channel, i32 1, i8* %94)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.end.157, label %if.then.156

if.then.156:                                      ; preds = %sw.bb.150
  br label %for.end

if.end.157:                                       ; preds = %sw.bb.150
  br label %sw.epilog

sw.bb.158:                                        ; preds = %if.end.4
  %95 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %96 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %96 to i64
  %97 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx160 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %97, i64 %idxprom159
  %data161 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx160, i32 0, i32 1
  %d_drawable = bitcast %union.anon* %data161 to i32*
  %98 = load i8*, i8** %user_data.addr, align 8
  %call162 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %95, i32* %d_drawable, i32 1, i8* %98)
  %tobool163 = icmp ne i32 %call162, 0
  br i1 %tobool163, label %if.end.165, label %if.then.164

if.then.164:                                      ; preds = %sw.bb.158
  br label %for.end

if.end.165:                                       ; preds = %sw.bb.158
  br label %sw.epilog

sw.bb.166:                                        ; preds = %if.end.4
  %99 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %100 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %100 to i64
  %101 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx168 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %101, i64 %idxprom167
  %data169 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx168, i32 0, i32 1
  %d_selection = bitcast %union.anon* %data169 to i32*
  %102 = load i8*, i8** %user_data.addr, align 8
  %call170 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %99, i32* %d_selection, i32 1, i8* %102)
  %tobool171 = icmp ne i32 %call170, 0
  br i1 %tobool171, label %if.end.173, label %if.then.172

if.then.172:                                      ; preds = %sw.bb.166
  br label %for.end

if.end.173:                                       ; preds = %sw.bb.166
  br label %sw.epilog

sw.bb.174:                                        ; preds = %if.end.4
  %103 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %104 = load i32, i32* %i, align 4
  %idxprom175 = sext i32 %104 to i64
  %105 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx176 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %105, i64 %idxprom175
  %data177 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx176, i32 0, i32 1
  %d_colorarray = bitcast %union.anon* %data177 to %struct._GimpRGB**
  %106 = load %struct._GimpRGB*, %struct._GimpRGB** %d_colorarray, align 8
  %107 = load i32, i32* %i, align 4
  %sub178 = sub nsw i32 %107, 1
  %idxprom179 = sext i32 %sub178 to i64
  %108 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx180 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %108, i64 %idxprom179
  %data181 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx180, i32 0, i32 1
  %d_int32182 = bitcast %union.anon* %data181 to i32*
  %109 = load i32, i32* %d_int32182, align 4
  %110 = load i8*, i8** %user_data.addr, align 8
  %call183 = call i32 @_gimp_wire_write_color(%struct._GIOChannel* %103, %struct._GimpRGB* %106, i32 %109, i8* %110)
  %tobool184 = icmp ne i32 %call183, 0
  br i1 %tobool184, label %if.end.186, label %if.then.185

if.then.185:                                      ; preds = %sw.bb.174
  br label %for.end

if.end.186:                                       ; preds = %sw.bb.174
  br label %sw.epilog

sw.bb.187:                                        ; preds = %if.end.4
  %111 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %112 = load i32, i32* %i, align 4
  %idxprom188 = sext i32 %112 to i64
  %113 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx189 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %113, i64 %idxprom188
  %data190 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx189, i32 0, i32 1
  %d_vectors = bitcast %union.anon* %data190 to i32*
  %114 = load i8*, i8** %user_data.addr, align 8
  %call191 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %111, i32* %d_vectors, i32 1, i8* %114)
  %tobool192 = icmp ne i32 %call191, 0
  br i1 %tobool192, label %if.end.194, label %if.then.193

if.then.193:                                      ; preds = %sw.bb.187
  br label %for.end

if.end.194:                                       ; preds = %sw.bb.187
  br label %sw.epilog

sw.bb.195:                                        ; preds = %if.end.4
  %115 = load i32, i32* %i, align 4
  %idxprom196 = sext i32 %115 to i64
  %116 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx197 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %116, i64 %idxprom196
  %data198 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx197, i32 0, i32 1
  %d_parasite = bitcast %union.anon* %data198 to %struct._GimpParasite*
  store %struct._GimpParasite* %d_parasite, %struct._GimpParasite** %p, align 8
  %117 = load %struct._GimpParasite*, %struct._GimpParasite** %p, align 8
  %name = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %117, i32 0, i32 0
  %118 = load i8*, i8** %name, align 8
  %cmp199 = icmp eq i8* %118, null
  br i1 %cmp199, label %if.then.200, label %if.end.203

if.then.200:                                      ; preds = %sw.bb.195
  %119 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %120 = load %struct._GimpParasite*, %struct._GimpParasite** %p, align 8
  %name201 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %120, i32 0, i32 0
  %121 = load i8*, i8** %user_data.addr, align 8
  %call202 = call i32 @_gimp_wire_write_string(%struct._GIOChannel* %119, i8** %name201, i32 1, i8* %121)
  br label %sw.epilog

if.end.203:                                       ; preds = %sw.bb.195
  %122 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %123 = load %struct._GimpParasite*, %struct._GimpParasite** %p, align 8
  %name204 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %123, i32 0, i32 0
  %124 = load i8*, i8** %user_data.addr, align 8
  %call205 = call i32 @_gimp_wire_write_string(%struct._GIOChannel* %122, i8** %name204, i32 1, i8* %124)
  %tobool206 = icmp ne i32 %call205, 0
  br i1 %tobool206, label %if.end.208, label %if.then.207

if.then.207:                                      ; preds = %if.end.203
  br label %for.end

if.end.208:                                       ; preds = %if.end.203
  %125 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %126 = load %struct._GimpParasite*, %struct._GimpParasite** %p, align 8
  %flags = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %126, i32 0, i32 1
  %127 = load i8*, i8** %user_data.addr, align 8
  %call209 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %125, i32* %flags, i32 1, i8* %127)
  %tobool210 = icmp ne i32 %call209, 0
  br i1 %tobool210, label %if.end.212, label %if.then.211

if.then.211:                                      ; preds = %if.end.208
  br label %for.end

if.end.212:                                       ; preds = %if.end.208
  %128 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %129 = load %struct._GimpParasite*, %struct._GimpParasite** %p, align 8
  %size = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %129, i32 0, i32 2
  %130 = load i8*, i8** %user_data.addr, align 8
  %call213 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %128, i32* %size, i32 1, i8* %130)
  %tobool214 = icmp ne i32 %call213, 0
  br i1 %tobool214, label %if.end.216, label %if.then.215

if.then.215:                                      ; preds = %if.end.212
  br label %for.end

if.end.216:                                       ; preds = %if.end.212
  %131 = load %struct._GimpParasite*, %struct._GimpParasite** %p, align 8
  %size217 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %131, i32 0, i32 2
  %132 = load i32, i32* %size217, align 4
  %cmp218 = icmp ugt i32 %132, 0
  br i1 %cmp218, label %if.then.219, label %if.end.226

if.then.219:                                      ; preds = %if.end.216
  %133 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %134 = load %struct._GimpParasite*, %struct._GimpParasite** %p, align 8
  %data220 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %134, i32 0, i32 3
  %135 = load i8*, i8** %data220, align 8
  %136 = load %struct._GimpParasite*, %struct._GimpParasite** %p, align 8
  %size221 = getelementptr inbounds %struct._GimpParasite, %struct._GimpParasite* %136, i32 0, i32 2
  %137 = load i32, i32* %size221, align 4
  %138 = load i8*, i8** %user_data.addr, align 8
  %call222 = call i32 @_gimp_wire_write_int8(%struct._GIOChannel* %133, i8* %135, i32 %137, i8* %138)
  %tobool223 = icmp ne i32 %call222, 0
  br i1 %tobool223, label %if.end.225, label %if.then.224

if.then.224:                                      ; preds = %if.then.219
  br label %for.end

if.end.225:                                       ; preds = %if.then.219
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %if.end.216
  br label %sw.epilog

sw.bb.227:                                        ; preds = %if.end.4
  %139 = load %struct._GIOChannel*, %struct._GIOChannel** %channel.addr, align 8
  %140 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %140 to i64
  %141 = load %struct._GPParam*, %struct._GPParam** %params.addr, align 8
  %arrayidx229 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %141, i64 %idxprom228
  %data230 = getelementptr inbounds %struct._GPParam, %struct._GPParam* %arrayidx229, i32 0, i32 1
  %d_status = bitcast %union.anon* %data230 to i32*
  %142 = load i8*, i8** %user_data.addr, align 8
  %call231 = call i32 @_gimp_wire_write_int32(%struct._GIOChannel* %139, i32* %d_status, i32 1, i8* %142)
  %tobool232 = icmp ne i32 %call231, 0
  br i1 %tobool232, label %if.end.234, label %if.then.233

if.then.233:                                      ; preds = %sw.bb.227
  br label %for.end

if.end.234:                                       ; preds = %sw.bb.227
  br label %sw.epilog

sw.bb.235:                                        ; preds = %if.end.4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.4, %sw.bb.235, %if.end.234, %if.end.226, %if.then.200, %if.end.194, %if.end.186, %if.end.173, %if.end.165, %if.end.157, %if.end.149, %if.end.141, %if.end.133, %if.end.125, %if.end.117, %if.end.109, %if.end.96, %if.end.83, %if.end.70, %if.end.57, %if.end.45, %if.end.37, %if.end.29, %if.end.21, %if.end.13
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %143 = load i32, i32* %i, align 4
  %inc = add nsw i32 %143, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %if.then.3, %if.then.12, %if.then.20, %if.then.28, %if.then.36, %if.then.44, %if.then.56, %if.then.69, %if.then.82, %if.then.95, %if.then.108, %if.then.116, %if.then.124, %if.then.132, %if.then.140, %if.then.148, %if.then.156, %if.then.164, %if.then.172, %if.then.185, %if.then.193, %if.then.207, %if.then.211, %if.then.215, %if.then.224, %if.then.233, %for.cond
  ret void
}

declare hidden i32 @_gimp_wire_write_int16(%struct._GIOChannel*, i16*, i32, i8*) #1

declare hidden i32 @_gimp_wire_write_double(%struct._GIOChannel*, double*, i32, i8*) #1

declare hidden i32 @_gimp_wire_write_color(%struct._GIOChannel*, %struct._GimpRGB*, i32, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
