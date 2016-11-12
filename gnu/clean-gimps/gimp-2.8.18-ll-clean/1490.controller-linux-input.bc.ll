; ModuleID = './modules/controller-linux-input.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpModuleInfo = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct.LinuxInputEvent = type { i16, i8*, i8* }
%struct._GTypeModule = type { %struct._GObject, i32, %struct._GSList*, %struct._GSList*, i8* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._ControllerLinuxInputClass = type { %struct._GimpControllerClass }
%struct._GimpControllerClass = type { %struct._GObjectClass, i8*, i8*, i8*, i32 (%struct._GimpController*)*, i8* (%struct._GimpController*, i32)*, i8* (%struct._GimpController*, i32)*, i32 (%struct._GimpController*, %union._GimpControllerEvent*)*, i8*, void ()*, void ()*, void ()* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GimpController = type { %struct._GObject, i8*, i8* }
%union._GimpControllerEvent = type { %struct._GimpControllerEventValue }
%struct._GimpControllerEventValue = type { i32, %struct._GimpController*, i32, %struct._GValue }
%struct._ControllerLinuxInput = type { %struct._GimpController, %struct._GimpInputDeviceStore*, i8*, %struct._GIOChannel*, i32 }
%struct._GimpInputDeviceStore = type opaque
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_event = type { %struct.timeval, i16, i16, i32 }
%struct.timeval = type { i64, i64 }
%struct._GimpControllerEventAny = type { i32, %struct._GimpController*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@controller_linux_input_type_id = internal global i64 0, align 8
@linux_input_info = internal constant %struct._GimpModuleInfo { i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [29 x i8] c"Linux input event controller\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"Sven Neumann <sven@gimp.org>, Michael Natterer <mitch@gimp.org>\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"v0.2\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"(c) 2004-2007, released under the GPL\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"2004-2007\00", align 1
@controller_linux_input_register_type.g_define_type_info = internal constant %struct._GTypeInfo { i16 224, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (i8*)* @controller_linux_input_class_intern_init to void (i8*, i8*)*), void (i8*, i8*)* bitcast (void (%struct._ControllerLinuxInputClass*)* @controller_linux_input_class_finalize to void (i8*, i8*)*), i8* null, i16 72, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._ControllerLinuxInput*)* @controller_linux_input_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"ControllerLinuxInput\00", align 1
@controller_linux_input_parent_class = internal global i8* null, align 8
@ControllerLinuxInput_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Device:\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"The name of the device to read Linux Input events from.\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Linux Input\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"gimp-controller-linux-input\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Linux Input Events\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"No device configured\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Reading from %s\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"Device not available: %s\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Device not available\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"%s: key 0x%02x present\0A\00", align 1
@__func__.linux_input_get_device_info = private unnamed_addr constant [28 x i8] c"linux_input_get_device_info\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"%s: #keys = %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"%s: ext key 0x%02x present\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"%s: #ext_keys = %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"%s: button 0x%02x present\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"%s: #buttons = %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"%s: rel 0x%02x present\0A\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"%s: #rels = %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"%s: abs 0x%02x present [%d..%d]\0A\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"%s: #abs = %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"End of file\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"%s: EV_KEY code = 0x%02x\0A\00", align 1
@__func__.linux_input_read_event = private unnamed_addr constant [23 x i8] c"linux_input_read_event\00", align 1
@key_events = internal constant [22 x %struct.LinuxInputEvent] [%struct.LinuxInputEvent { i16 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 257, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 258, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 259, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 260, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 261, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 262, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 263, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 265, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 272, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 272, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 273, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 274, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 275, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 276, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 277, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 278, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 279, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 336, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 336, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 337, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.76, i32 0, i32 0) }], align 16
@.str.31 = private unnamed_addr constant [39 x i8] c"%s: EV_REL code = 0x%02x (value = %d)\0A\00", align 1
@rel_events = internal constant [18 x %struct.LinuxInputEvent] [%struct.LinuxInputEvent { i16 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.90, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.92, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.94, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.96, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.100, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.102, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.104, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.106, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.108, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.110, i32 0, i32 0) }, %struct.LinuxInputEvent { i16 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.112, i32 0, i32 0) }], align 16
@.str.32 = private unnamed_addr constant [39 x i8] c"%s: EV_ABS code = 0x%02x (value = %d)\0A\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"button-0\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"Button 0\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"button-1\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"Button 1\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"button-2\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"Button 2\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"button-3\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"Button 3\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"button-4\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"Button 4\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"button-5\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"Button 5\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"button-6\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"Button 6\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"button-7\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"Button 7\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"button-8\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"Button 8\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"button-9\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"Button 9\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"button-mouse\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"Button Mouse\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"button-left\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"Button Left\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"button-right\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"Button Right\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"button-middle\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"Button Middle\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"button-side\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"Button Side\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"button-extra\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"Button Extra\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"button-forward\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"Button Forward\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"button-back\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"Button Back\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"button-task\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"Button Task\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"button-wheel\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"Button Wheel\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"button-gear-down\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"Button Gear Down\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"button-gear-up\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"Button Gear Up\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"x-move-left\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"X Move Left\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"x-move-right\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"X Move Right\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"y-move-forward\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"Y Move Forward\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"y-move-back\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"Y Move Back\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"z-move-up\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"Z Move Up\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"z-move-down\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"Z Move Down\00", align 1
@.str.89 = private unnamed_addr constant [20 x i8] c"x-axis-tilt-forward\00", align 1
@.str.90 = private unnamed_addr constant [20 x i8] c"X Axis Tilt Forward\00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c"x-axis-tilt-back\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"X Axis Tilt Back\00", align 1
@.str.93 = private unnamed_addr constant [18 x i8] c"y-axis-tilt-right\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"Y Axis Tilt Right\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"y-axis-tilt-left\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"Y Axis Tilt Left\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"z-axis-turn-left\00", align 1
@.str.98 = private unnamed_addr constant [17 x i8] c"Z Axis Turn Left\00", align 1
@.str.99 = private unnamed_addr constant [18 x i8] c"z-axis-turn-right\00", align 1
@.str.100 = private unnamed_addr constant [18 x i8] c"Z Axis Turn Right\00", align 1
@.str.101 = private unnamed_addr constant [27 x i8] c"horizontal-wheel-turn-back\00", align 1
@.str.102 = private unnamed_addr constant [23 x i8] c"Horiz. Wheel Turn Back\00", align 1
@.str.103 = private unnamed_addr constant [30 x i8] c"horizontal-wheel-turn-forward\00", align 1
@.str.104 = private unnamed_addr constant [26 x i8] c"Horiz. Wheel Turn Forward\00", align 1
@.str.105 = private unnamed_addr constant [15 x i8] c"dial-turn-left\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"Dial Turn Left\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"dial-turn-right\00", align 1
@.str.108 = private unnamed_addr constant [16 x i8] c"Dial Turn Right\00", align 1
@.str.109 = private unnamed_addr constant [16 x i8] c"wheel-turn-left\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c"Wheel Turn Left\00", align 1
@.str.111 = private unnamed_addr constant [17 x i8] c"wheel-turn-right\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"Wheel Turn Right\00", align 1
@.str.113 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.114 = private unnamed_addr constant [25 x i8] c"controller-linux-input.c\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.116 = private unnamed_addr constant [13 x i8] c"device-added\00", align 1
@.str.117 = private unnamed_addr constant [15 x i8] c"device-removed\00", align 1

; Function Attrs: nounwind uwtable
define i64 @controller_linux_input_get_type() #0 {
entry:
  %0 = load i64, i64* @controller_linux_input_type_id, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define %struct._GimpModuleInfo* @gimp_module_query(%struct._GTypeModule* %module) #0 {
entry:
  %module.addr = alloca %struct._GTypeModule*, align 8
  store %struct._GTypeModule* %module, %struct._GTypeModule** %module.addr, align 8
  ret %struct._GimpModuleInfo* @linux_input_info
}

; Function Attrs: nounwind uwtable
define i32 @gimp_module_register(%struct._GTypeModule* %module) #0 {
entry:
  %module.addr = alloca %struct._GTypeModule*, align 8
  store %struct._GTypeModule* %module, %struct._GTypeModule** %module.addr, align 8
  %0 = load %struct._GTypeModule*, %struct._GTypeModule** %module.addr, align 8
  call void @gimp_input_device_store_register_types(%struct._GTypeModule* %0)
  %1 = load %struct._GTypeModule*, %struct._GTypeModule** %module.addr, align 8
  call void @controller_linux_input_register_type(%struct._GTypeModule* %1)
  ret i32 1
}

declare void @gimp_input_device_store_register_types(%struct._GTypeModule*) #1

; Function Attrs: nounwind uwtable
define internal void @controller_linux_input_register_type(%struct._GTypeModule* %type_module) #0 {
entry:
  %type_module.addr = alloca %struct._GTypeModule*, align 8
  %g_define_type_id = alloca i64, align 8
  store %struct._GTypeModule* %type_module, %struct._GTypeModule** %type_module.addr, align 8
  %0 = load %struct._GTypeModule*, %struct._GTypeModule** %type_module.addr, align 8
  %call = call i64 @gimp_controller_get_type() #6
  %call1 = call i64 @g_type_module_register_type(%struct._GTypeModule* %0, i64 %call, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), %struct._GTypeInfo* @controller_linux_input_register_type.g_define_type_info, i32 0)
  store i64 %call1, i64* @controller_linux_input_type_id, align 8
  %1 = load i64, i64* @controller_linux_input_type_id, align 8
  store i64 %1, i64* %g_define_type_id, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @controller_linux_input_class_intern_init(i8* %klass) #0 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @controller_linux_input_parent_class, align 8
  %1 = load i32, i32* @ControllerLinuxInput_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @ControllerLinuxInput_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._ControllerLinuxInputClass*
  call void @controller_linux_input_class_init(%struct._ControllerLinuxInputClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @controller_linux_input_class_finalize(%struct._ControllerLinuxInputClass* %klass) #0 {
entry:
  %klass.addr = alloca %struct._ControllerLinuxInputClass*, align 8
  store %struct._ControllerLinuxInputClass* %klass, %struct._ControllerLinuxInputClass** %klass.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @controller_linux_input_init(%struct._ControllerLinuxInput* %controller) #0 {
entry:
  %controller.addr = alloca %struct._ControllerLinuxInput*, align 8
  store %struct._ControllerLinuxInput* %controller, %struct._ControllerLinuxInput** %controller.addr, align 8
  %call = call %struct._GimpInputDeviceStore* @gimp_input_device_store_new()
  %0 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %store = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %0, i32 0, i32 1
  store %struct._GimpInputDeviceStore* %call, %struct._GimpInputDeviceStore** %store, align 8
  %1 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %store1 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %1, i32 0, i32 1
  %2 = load %struct._GimpInputDeviceStore*, %struct._GimpInputDeviceStore** %store1, align 8
  %tobool = icmp ne %struct._GimpInputDeviceStore* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %store2 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %3, i32 0, i32 1
  %4 = load %struct._GimpInputDeviceStore*, %struct._GimpInputDeviceStore** %store2, align 8
  %5 = bitcast %struct._GimpInputDeviceStore* %4 to i8*
  %6 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %7 = bitcast %struct._ControllerLinuxInput* %6 to i8*
  %call3 = call i64 @g_signal_connect_data(i8* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.116, i32 0, i32 0), void ()* bitcast (void (%struct._ControllerLinuxInput*, i8*)* @linux_input_device_changed to void ()*), i8* %7, void (i8*, %struct._GClosure*)* null, i32 2)
  %8 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %store4 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %8, i32 0, i32 1
  %9 = load %struct._GimpInputDeviceStore*, %struct._GimpInputDeviceStore** %store4, align 8
  %10 = bitcast %struct._GimpInputDeviceStore* %9 to i8*
  %11 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %12 = bitcast %struct._ControllerLinuxInput* %11 to i8*
  %call5 = call i64 @g_signal_connect_data(i8* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.117, i32 0, i32 0), void ()* bitcast (void (%struct._ControllerLinuxInput*, i8*)* @linux_input_device_changed to void ()*), i8* %12, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @g_type_module_register_type(%struct._GTypeModule*, i64, i8*, %struct._GTypeInfo*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_controller_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @controller_linux_input_class_init(%struct._ControllerLinuxInputClass* %klass) #0 {
entry:
  %klass.addr = alloca %struct._ControllerLinuxInputClass*, align 8
  %controller_class = alloca %struct._GimpControllerClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._ControllerLinuxInputClass* %klass, %struct._ControllerLinuxInputClass** %klass.addr, align 8
  %0 = load %struct._ControllerLinuxInputClass*, %struct._ControllerLinuxInputClass** %klass.addr, align 8
  %1 = bitcast %struct._ControllerLinuxInputClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_controller_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpControllerClass*
  store %struct._GimpControllerClass* %2, %struct._GimpControllerClass** %controller_class, align 8
  %3 = load %struct._ControllerLinuxInputClass*, %struct._ControllerLinuxInputClass** %klass.addr, align 8
  %4 = bitcast %struct._ControllerLinuxInputClass* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  store %struct._GObjectClass* %5, %struct._GObjectClass** %object_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 5
  store void (%struct._GObject*)* @linux_input_dispose, void (%struct._GObject*)** %dispose, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 6
  store void (%struct._GObject*)* @linux_input_finalize, void (%struct._GObject*)** %finalize, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @linux_input_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @linux_input_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)) #5
  %call4 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i32 0, i32 0)) #5
  %call5 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %call3, i8* %call4, i8* null, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 1, %struct._GParamSpec* %call5)
  %call6 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)) #5
  %11 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %name = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %11, i32 0, i32 1
  store i8* %call6, i8** %name, align 8
  %12 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %help_id = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %12, i32 0, i32 3
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), i8** %help_id, align 8
  %13 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %stock_id = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %13, i32 0, i32 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), i8** %stock_id, align 8
  %14 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %get_n_events = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %14, i32 0, i32 4
  store i32 (%struct._GimpController*)* @linux_input_get_n_events, i32 (%struct._GimpController*)** %get_n_events, align 8
  %15 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %get_event_name = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %15, i32 0, i32 5
  store i8* (%struct._GimpController*, i32)* @linux_input_get_event_name, i8* (%struct._GimpController*, i32)** %get_event_name, align 8
  %16 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %get_event_blurb = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %16, i32 0, i32 6
  store i8* (%struct._GimpController*, i32)* @linux_input_get_event_blurb, i8* (%struct._GimpController*, i32)** %get_event_blurb, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @linux_input_dispose(%struct._GObject* %object) #0 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %controller = alloca %struct._ControllerLinuxInput*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @controller_linux_input_get_type()
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._ControllerLinuxInput*
  store %struct._ControllerLinuxInput* %2, %struct._ControllerLinuxInput** %controller, align 8
  %3 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller, align 8
  %call2 = call i32 @linux_input_set_device(%struct._ControllerLinuxInput* %3, i8* null)
  %4 = load i8*, i8** @controller_linux_input_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 80)
  %6 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 5
  %7 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %7(%struct._GObject* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @linux_input_finalize(%struct._GObject* %object) #0 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %controller = alloca %struct._ControllerLinuxInput*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @controller_linux_input_get_type()
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._ControllerLinuxInput*
  store %struct._ControllerLinuxInput* %2, %struct._ControllerLinuxInput** %controller, align 8
  %3 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller, align 8
  %store = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %3, i32 0, i32 1
  %4 = load %struct._GimpInputDeviceStore*, %struct._GimpInputDeviceStore** %store, align 8
  %tobool = icmp ne %struct._GimpInputDeviceStore* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller, align 8
  %store2 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %5, i32 0, i32 1
  %6 = load %struct._GimpInputDeviceStore*, %struct._GimpInputDeviceStore** %store2, align 8
  %7 = bitcast %struct._GimpInputDeviceStore* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller, align 8
  %store3 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %8, i32 0, i32 1
  store %struct._GimpInputDeviceStore* null, %struct._GimpInputDeviceStore** %store3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @controller_linux_input_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @linux_input_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #0 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %controller = alloca %struct._ControllerLinuxInput*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @controller_linux_input_get_type()
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._ControllerLinuxInput*
  store %struct._ControllerLinuxInput* %2, %struct._ControllerLinuxInput** %controller, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller, align 8
  %device = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %5, i32 0, i32 2
  %6 = load i8*, i8** %device, align 8
  call void @g_value_set_string(%struct._GValue* %4, i8* %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller, align 8
  %store = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %8, i32 0, i32 1
  %9 = load %struct._GimpInputDeviceStore*, %struct._GimpInputDeviceStore** %store, align 8
  %10 = bitcast %struct._GimpInputDeviceStore* %9 to i8*
  call void @g_value_set_object(%struct._GValue* %7, i8* %10)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %11, %struct._GObject** %_glib__object, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %12, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = load i32, i32* %property_id.addr, align 4
  store i32 %13, i32* %_glib__property_id, align 4
  %14 = load i32, i32* %_glib__property_id, align 4
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 1
  %16 = load i8*, i8** %name, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = bitcast %struct._GParamSpec* %17 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %20)
  %21 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %22 = bitcast %struct._GObject* %21 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %24)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0), i32 319, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.115, i32 0, i32 0), i32 %14, i8* %16, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @linux_input_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #0 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %controller = alloca %struct._ControllerLinuxInput*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @controller_linux_input_get_type()
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._ControllerLinuxInput*
  store %struct._ControllerLinuxInput* %2, %struct._ControllerLinuxInput** %controller, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_string(%struct._GValue* %5)
  %call3 = call i32 @linux_input_set_device(%struct._ControllerLinuxInput* %4, i8* %call2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %6, %struct._GObject** %_glib__object, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %7, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = load i32, i32* %property_id.addr, align 4
  store i32 %8, i32* %_glib__property_id, align 4
  %9 = load i32, i32* %_glib__property_id, align 4
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = bitcast %struct._GParamSpec* %12 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %15)
  %16 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %19)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.114, i32 0, i32 0), i32 297, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.115, i32 0, i32 0), i32 %9, i8* %11, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @linux_input_get_n_events(%struct._GimpController* %controller) #0 {
entry:
  %controller.addr = alloca %struct._GimpController*, align 8
  store %struct._GimpController* %controller, %struct._GimpController** %controller.addr, align 8
  ret i32 40
}

; Function Attrs: nounwind uwtable
define internal i8* @linux_input_get_event_name(%struct._GimpController* %controller, i32 %event_id) #0 {
entry:
  %retval = alloca i8*, align 8
  %controller.addr = alloca %struct._GimpController*, align 8
  %event_id.addr = alloca i32, align 4
  store %struct._GimpController* %controller, %struct._GimpController** %controller.addr, align 8
  store i32 %event_id, i32* %event_id.addr, align 4
  %0 = load i32, i32* %event_id.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %event_id.addr, align 4
  %conv = sext i32 %1 to i64
  %cmp1 = icmp ult i64 %conv, 22
  br i1 %cmp1, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %2 = load i32, i32* %event_id.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [22 x %struct.LinuxInputEvent], [22 x %struct.LinuxInputEvent]* @key_events, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.LinuxInputEvent, %struct.LinuxInputEvent* %arrayidx, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  store i8* %3, i8** %retval
  br label %return

if.else.4:                                        ; preds = %if.else
  %4 = load i32, i32* %event_id.addr, align 4
  %5 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %call = call i32 @linux_input_get_n_events(%struct._GimpController* %5)
  %cmp5 = icmp slt i32 %4, %call
  br i1 %cmp5, label %if.then.7, label %if.else.11

if.then.7:                                        ; preds = %if.else.4
  %6 = load i32, i32* %event_id.addr, align 4
  %conv8 = sext i32 %6 to i64
  %sub = sub i64 %conv8, 22
  %arrayidx9 = getelementptr inbounds [18 x %struct.LinuxInputEvent], [18 x %struct.LinuxInputEvent]* @rel_events, i32 0, i64 %sub
  %name10 = getelementptr inbounds %struct.LinuxInputEvent, %struct.LinuxInputEvent* %arrayidx9, i32 0, i32 1
  %7 = load i8*, i8** %name10, align 8
  store i8* %7, i8** %retval
  br label %return

if.else.11:                                       ; preds = %if.else.4
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else.11, %if.then.7, %if.then.3, %if.then
  %8 = load i8*, i8** %retval
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define internal i8* @linux_input_get_event_blurb(%struct._GimpController* %controller, i32 %event_id) #0 {
entry:
  %retval = alloca i8*, align 8
  %controller.addr = alloca %struct._GimpController*, align 8
  %event_id.addr = alloca i32, align 4
  store %struct._GimpController* %controller, %struct._GimpController** %controller.addr, align 8
  store i32 %event_id, i32* %event_id.addr, align 4
  %0 = load i32, i32* %event_id.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %event_id.addr, align 4
  %conv = sext i32 %1 to i64
  %cmp1 = icmp ult i64 %conv, 22
  br i1 %cmp1, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %2 = load i32, i32* %event_id.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [22 x %struct.LinuxInputEvent], [22 x %struct.LinuxInputEvent]* @key_events, i32 0, i64 %idxprom
  %blurb = getelementptr inbounds %struct.LinuxInputEvent, %struct.LinuxInputEvent* %arrayidx, i32 0, i32 2
  %3 = load i8*, i8** %blurb, align 8
  %call = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %3) #5
  store i8* %call, i8** %retval
  br label %return

if.else.4:                                        ; preds = %if.else
  %4 = load i32, i32* %event_id.addr, align 4
  %5 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %call5 = call i32 @linux_input_get_n_events(%struct._GimpController* %5)
  %cmp6 = icmp slt i32 %4, %call5
  br i1 %cmp6, label %if.then.8, label %if.else.13

if.then.8:                                        ; preds = %if.else.4
  %6 = load i32, i32* %event_id.addr, align 4
  %conv9 = sext i32 %6 to i64
  %sub = sub i64 %conv9, 22
  %arrayidx10 = getelementptr inbounds [18 x %struct.LinuxInputEvent], [18 x %struct.LinuxInputEvent]* @rel_events, i32 0, i64 %sub
  %blurb11 = getelementptr inbounds %struct.LinuxInputEvent, %struct.LinuxInputEvent* %arrayidx10, i32 0, i32 2
  %7 = load i8*, i8** %blurb11, align 8
  %call12 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %7) #5
  store i8* %call12, i8** %retval
  br label %return

if.else.13:                                       ; preds = %if.else.4
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else.13, %if.then.8, %if.then.3, %if.then
  %8 = load i8*, i8** %retval
  ret i8* %8
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @linux_input_set_device(%struct._ControllerLinuxInput* %controller, i8* %device) #0 {
entry:
  %retval = alloca i32, align 4
  %controller.addr = alloca %struct._ControllerLinuxInput*, align 8
  %device.addr = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %state = alloca i8*, align 8
  %fd = alloca i32, align 4
  %name = alloca [256 x i8], align 16
  %error = alloca %struct._GError*, align 8
  store %struct._ControllerLinuxInput* %controller, %struct._ControllerLinuxInput** %controller.addr, align 8
  store i8* %device, i8** %device.addr, align 8
  %0 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %io = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %0, i32 0, i32 3
  %1 = load %struct._GIOChannel*, %struct._GIOChannel** %io, align 8
  %tobool = icmp ne %struct._GIOChannel* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %io_id = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %2, i32 0, i32 4
  %3 = load i32, i32* %io_id, align 4
  %call = call i32 @g_source_remove(i32 %3)
  %4 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %io_id1 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %4, i32 0, i32 4
  store i32 0, i32* %io_id1, align 4
  %5 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %io2 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %5, i32 0, i32 3
  %6 = load %struct._GIOChannel*, %struct._GIOChannel** %io2, align 8
  call void @g_io_channel_unref(%struct._GIOChannel* %6)
  %7 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %io3 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %7, i32 0, i32 3
  store %struct._GIOChannel* null, %struct._GIOChannel** %io3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %device4 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %8, i32 0, i32 2
  %9 = load i8*, i8** %device4, align 8
  %tobool5 = icmp ne i8* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %10 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %device7 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %10, i32 0, i32 2
  %11 = load i8*, i8** %device7, align 8
  call void @g_free(i8* %11)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %12 = load i8*, i8** %device.addr, align 8
  %call9 = call noalias i8* @g_strdup(i8* %12)
  %13 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %device10 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %13, i32 0, i32 2
  store i8* %call9, i8** %device10, align 8
  %14 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %15 = bitcast %struct._ControllerLinuxInput* %14 to i8*
  %call11 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0)) #5
  call void (i8*, i8*, ...) @g_object_set(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* %call11, i8* null)
  %16 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %device12 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %16, i32 0, i32 2
  %17 = load i8*, i8** %device12, align 8
  %tobool13 = icmp ne i8* %17, null
  br i1 %tobool13, label %land.lhs.true, label %if.else.26

land.lhs.true:                                    ; preds = %if.end.8
  %18 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %device14 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %18, i32 0, i32 2
  %19 = load i8*, i8** %device14, align 8
  %call15 = call i64 @strlen(i8* %19) #7
  %tobool16 = icmp ne i64 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else.26

if.then.17:                                       ; preds = %land.lhs.true
  %20 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %store = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %20, i32 0, i32 1
  %21 = load %struct._GimpInputDeviceStore*, %struct._GimpInputDeviceStore** %store, align 8
  %tobool18 = icmp ne %struct._GimpInputDeviceStore* %21, null
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.17
  %22 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %store20 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %22, i32 0, i32 1
  %23 = load %struct._GimpInputDeviceStore*, %struct._GimpInputDeviceStore** %store20, align 8
  %24 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %device21 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %24, i32 0, i32 2
  %25 = load i8*, i8** %device21, align 8
  %call22 = call i8* @gimp_input_device_store_get_device_file(%struct._GimpInputDeviceStore* %23, i8* %25)
  store i8* %call22, i8** %filename, align 8
  br label %if.end.25

if.else:                                          ; preds = %if.then.17
  %26 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %device23 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %26, i32 0, i32 2
  %27 = load i8*, i8** %device23, align 8
  %call24 = call noalias i8* @g_strdup(i8* %27)
  store i8* %call24, i8** %filename, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.19
  br label %if.end.28

if.else.26:                                       ; preds = %land.lhs.true, %if.end.8
  %28 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %29 = bitcast %struct._ControllerLinuxInput* %28 to i8*
  %call27 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0)) #5
  call void (i8*, i8*, ...) @g_object_set(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* %call27, i8* null)
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.25
  %30 = load i8*, i8** %filename, align 8
  %tobool29 = icmp ne i8* %30, null
  br i1 %tobool29, label %if.then.30, label %if.else.62

if.then.30:                                       ; preds = %if.end.28
  %31 = load i8*, i8** %filename, align 8
  %call31 = call i32 (i8*, i32, ...) @open(i8* %31, i32 0, i32 0)
  store i32 %call31, i32* %fd, align 4
  %32 = load i32, i32* %fd, align 4
  %cmp = icmp sge i32 %32, 0
  br i1 %cmp, label %if.then.32, label %if.else.56

if.then.32:                                       ; preds = %if.then.30
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %33 = load i32, i32* %fd, align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %call33 = call i32 (i32, i64, ...) @ioctl(i32 %33, i64 2164278534, i8* %arraydecay) #5
  %cmp34 = icmp sge i32 %call33, 0
  br i1 %cmp34, label %land.lhs.true.35, label %if.end.45

land.lhs.true.35:                                 ; preds = %if.then.32
  %arraydecay36 = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %call37 = call i64 @strlen(i8* %arraydecay36) #7
  %cmp38 = icmp ugt i64 %call37, 0
  br i1 %cmp38, label %land.lhs.true.39, label %if.end.45

land.lhs.true.39:                                 ; preds = %land.lhs.true.35
  %arraydecay40 = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %call41 = call i32 @g_utf8_validate(i8* %arraydecay40, i64 -1, i8** null)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %land.lhs.true.39
  %34 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %35 = bitcast %struct._ControllerLinuxInput* %34 to i8*
  %arraydecay44 = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  call void (i8*, i8*, ...) @g_object_set(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay44, i8* null)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %land.lhs.true.39, %land.lhs.true.35, %if.then.32
  %36 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %37 = load i32, i32* %fd, align 4
  call void @linux_input_get_device_info(%struct._ControllerLinuxInput* %36, i32 %37)
  %call46 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0)) #5
  %38 = load i8*, i8** %filename, align 8
  %call47 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call46, i8* %38)
  store i8* %call47, i8** %state, align 8
  %39 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %40 = bitcast %struct._ControllerLinuxInput* %39 to i8*
  %41 = load i8*, i8** %state, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* %41, i8* null)
  %42 = load i8*, i8** %state, align 8
  call void @g_free(i8* %42)
  %43 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %43)
  %44 = load i32, i32* %fd, align 4
  %call48 = call %struct._GIOChannel* @g_io_channel_unix_new(i32 %44)
  %45 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %io49 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %45, i32 0, i32 3
  store %struct._GIOChannel* %call48, %struct._GIOChannel** %io49, align 8
  %46 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %io50 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %46, i32 0, i32 3
  %47 = load %struct._GIOChannel*, %struct._GIOChannel** %io50, align 8
  call void @g_io_channel_set_close_on_unref(%struct._GIOChannel* %47, i32 1)
  %48 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %io51 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %48, i32 0, i32 3
  %49 = load %struct._GIOChannel*, %struct._GIOChannel** %io51, align 8
  %call52 = call i32 @g_io_channel_set_encoding(%struct._GIOChannel* %49, i8* null, %struct._GError** null)
  %50 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %io53 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %50, i32 0, i32 3
  %51 = load %struct._GIOChannel*, %struct._GIOChannel** %io53, align 8
  %52 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %53 = bitcast %struct._ControllerLinuxInput* %52 to i8*
  %call54 = call i32 @g_io_add_watch(%struct._GIOChannel* %51, i32 1, i32 (%struct._GIOChannel*, i32, i8*)* @linux_input_read_event, i8* %53)
  %54 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %io_id55 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %54, i32 0, i32 4
  store i32 %call54, i32* %io_id55, align 4
  store i32 1, i32* %retval
  br label %return

if.else.56:                                       ; preds = %if.then.30
  %call57 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0)) #5
  %call58 = call i32* @__errno_location() #6
  %55 = load i32, i32* %call58, align 4
  %call59 = call i8* @g_strerror(i32 %55) #6
  %call60 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call57, i8* %call59)
  store i8* %call60, i8** %state, align 8
  %56 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %57 = bitcast %struct._ControllerLinuxInput* %56 to i8*
  %58 = load i8*, i8** %state, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* %58, i8* null)
  %59 = load i8*, i8** %state, align 8
  call void @g_free(i8* %59)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.56
  %60 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %60)
  br label %if.end.74

if.else.62:                                       ; preds = %if.end.28
  %61 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %store63 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %61, i32 0, i32 1
  %62 = load %struct._GimpInputDeviceStore*, %struct._GimpInputDeviceStore** %store63, align 8
  %tobool64 = icmp ne %struct._GimpInputDeviceStore* %62, null
  br i1 %tobool64, label %if.then.65, label %if.end.73

if.then.65:                                       ; preds = %if.else.62
  %63 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %store66 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %63, i32 0, i32 1
  %64 = load %struct._GimpInputDeviceStore*, %struct._GimpInputDeviceStore** %store66, align 8
  %call67 = call %struct._GError* @gimp_input_device_store_get_error(%struct._GimpInputDeviceStore* %64)
  store %struct._GError* %call67, %struct._GError** %error, align 8
  %65 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool68 = icmp ne %struct._GError* %65, null
  br i1 %tobool68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %if.then.65
  %66 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %67 = bitcast %struct._ControllerLinuxInput* %66 to i8*
  %68 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %68, i32 0, i32 2
  %69 = load i8*, i8** %message, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* %69, i8* null)
  %70 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %70)
  br label %if.end.72

if.else.70:                                       ; preds = %if.then.65
  %71 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %72 = bitcast %struct._ControllerLinuxInput* %71 to i8*
  %call71 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0)) #5
  call void (i8*, i8*, ...) @g_object_set(i8* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* %call71, i8* null)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.70, %if.then.69
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.else.62
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.61
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.74, %if.end.45, %if.else.26
  %73 = load i32, i32* %retval
  ret i32 %73
}

declare i32 @g_source_remove(i32) #1

declare void @g_io_channel_unref(%struct._GIOChannel*) #1

declare void @g_free(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i8* @gimp_input_device_store_get_device_file(%struct._GimpInputDeviceStore*, i8*) #1

declare i32 @open(i8*, i32, ...) #1

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #3

declare i32 @g_utf8_validate(i8*, i64, i8**) #1

; Function Attrs: nounwind uwtable
define internal void @linux_input_get_device_info(%struct._ControllerLinuxInput* %controller, i32 %fd) #0 {
entry:
  %controller.addr = alloca %struct._ControllerLinuxInput*, align 8
  %fd.addr = alloca i32, align 4
  %evbit = alloca [1 x i64], align 8
  %keybit = alloca [12 x i64], align 16
  %relbit = alloca [1 x i64], align 8
  %absbit = alloca [1 x i64], align 8
  %num_keys = alloca i32, align 4
  %num_ext_keys = alloca i32, align 4
  %num_buttons = alloca i32, align 4
  %num_rels = alloca i32, align 4
  %num_abs = alloca i32, align 4
  %i = alloca i32, align 4
  %i52 = alloca i32, align 4
  %i79 = alloca i32, align 4
  %absinfo = alloca %struct.input_absinfo, align 4
  store %struct._ControllerLinuxInput* %controller, %struct._ControllerLinuxInput** %controller.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 0, i32* %num_keys, align 4
  store i32 0, i32* %num_ext_keys, align 4
  store i32 0, i32* %num_buttons, align 4
  store i32 0, i32* %num_rels, align 4
  store i32 0, i32* %num_abs, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i32 0, i32 0
  %call = call i32 (i32, i64, ...) @ioctl(i32 %0, i64 2149532960, i64* %arraydecay) #5
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i32 0, i64 0
  %1 = load i64, i64* %arrayidx, align 8
  %shr = lshr i64 %1, 1
  %and = and i64 %shr, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end.46

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %fd.addr, align 4
  %arraydecay1 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit, i32 0, i32 0
  %call2 = call i32 (i32, i64, ...) @ioctl(i32 %2, i64 2197767457, i64* %arraydecay1) #5
  store i32 16, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %conv = sext i32 %4 to i64
  %div = udiv i64 %conv, 64
  %arrayidx3 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit, i32 0, i64 %div
  %5 = load i64, i64* %arrayidx3, align 8
  %6 = load i32, i32* %i, align 4
  %conv4 = sext i32 %6 to i64
  %rem = urem i64 %conv4, 64
  %shr5 = lshr i64 %5, %rem
  %and6 = and i64 %shr5, 1
  %tobool7 = icmp ne i64 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %for.body
  %7 = load i32, i32* %num_keys, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %num_keys, align 4
  %8 = load i32, i32* %i, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.linux_input_get_device_info, i32 0, i32 0), i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %num_keys, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.linux_input_get_device_info, i32 0, i32 0), i32 %10)
  store i32 352, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.25, %for.end
  %11 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %11, 767
  br i1 %cmp11, label %for.body.13, label %for.end.27

for.body.13:                                      ; preds = %for.cond.10
  %12 = load i32, i32* %i, align 4
  %conv14 = sext i32 %12 to i64
  %div15 = udiv i64 %conv14, 64
  %arrayidx16 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit, i32 0, i64 %div15
  %13 = load i64, i64* %arrayidx16, align 8
  %14 = load i32, i32* %i, align 4
  %conv17 = sext i32 %14 to i64
  %rem18 = urem i64 %conv17, 64
  %shr19 = lshr i64 %13, %rem18
  %and20 = and i64 %shr19, 1
  %tobool21 = icmp ne i64 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %for.body.13
  %15 = load i32, i32* %num_ext_keys, align 4
  %inc23 = add nsw i32 %15, 1
  store i32 %inc23, i32* %num_ext_keys, align 4
  %16 = load i32, i32* %i, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.linux_input_get_device_info, i32 0, i32 0), i32 %16)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %for.body.13
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %17 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %17, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond.10

for.end.27:                                       ; preds = %for.cond.10
  %18 = load i32, i32* %num_ext_keys, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.linux_input_get_device_info, i32 0, i32 0), i32 %18)
  store i32 256, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.43, %for.end.27
  %19 = load i32, i32* %i, align 4
  %cmp29 = icmp slt i32 %19, 352
  br i1 %cmp29, label %for.body.31, label %for.end.45

for.body.31:                                      ; preds = %for.cond.28
  %20 = load i32, i32* %i, align 4
  %conv32 = sext i32 %20 to i64
  %div33 = udiv i64 %conv32, 64
  %arrayidx34 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit, i32 0, i64 %div33
  %21 = load i64, i64* %arrayidx34, align 8
  %22 = load i32, i32* %i, align 4
  %conv35 = sext i32 %22 to i64
  %rem36 = urem i64 %conv35, 64
  %shr37 = lshr i64 %21, %rem36
  %and38 = and i64 %shr37, 1
  %tobool39 = icmp ne i64 %and38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %for.body.31
  %23 = load i32, i32* %num_buttons, align 4
  %inc41 = add nsw i32 %23, 1
  store i32 %inc41, i32* %num_buttons, align 4
  %24 = load i32, i32* %i, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.linux_input_get_device_info, i32 0, i32 0), i32 %24)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %for.body.31
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.42
  %25 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %25, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond.28

for.end.45:                                       ; preds = %for.cond.28
  %26 = load i32, i32* %num_buttons, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.linux_input_get_device_info, i32 0, i32 0), i32 %26)
  br label %if.end.46

if.end.46:                                        ; preds = %for.end.45, %entry
  %arrayidx47 = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i32 0, i64 0
  %27 = load i64, i64* %arrayidx47, align 8
  %shr48 = lshr i64 %27, 2
  %and49 = and i64 %shr48, 1
  %tobool50 = icmp ne i64 %and49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.73

if.then.51:                                       ; preds = %if.end.46
  %28 = load i32, i32* %fd.addr, align 4
  %arraydecay53 = getelementptr inbounds [1 x i64], [1 x i64]* %relbit, i32 0, i32 0
  %call54 = call i32 (i32, i64, ...) @ioctl(i32 %28, i64 2148484386, i64* %arraydecay53) #5
  store i32 0, i32* %i52, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.70, %if.then.51
  %29 = load i32, i32* %i52, align 4
  %cmp56 = icmp slt i32 %29, 15
  br i1 %cmp56, label %for.body.58, label %for.end.72

for.body.58:                                      ; preds = %for.cond.55
  %30 = load i32, i32* %i52, align 4
  %conv59 = sext i32 %30 to i64
  %div60 = udiv i64 %conv59, 64
  %arrayidx61 = getelementptr inbounds [1 x i64], [1 x i64]* %relbit, i32 0, i64 %div60
  %31 = load i64, i64* %arrayidx61, align 8
  %32 = load i32, i32* %i52, align 4
  %conv62 = sext i32 %32 to i64
  %rem63 = urem i64 %conv62, 64
  %shr64 = lshr i64 %31, %rem63
  %and65 = and i64 %shr64, 1
  %tobool66 = icmp ne i64 %and65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %for.body.58
  %33 = load i32, i32* %num_rels, align 4
  %inc68 = add nsw i32 %33, 1
  store i32 %inc68, i32* %num_rels, align 4
  %34 = load i32, i32* %i52, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.linux_input_get_device_info, i32 0, i32 0), i32 %34)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %for.body.58
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.69
  %35 = load i32, i32* %i52, align 4
  %inc71 = add nsw i32 %35, 1
  store i32 %inc71, i32* %i52, align 4
  br label %for.cond.55

for.end.72:                                       ; preds = %for.cond.55
  %36 = load i32, i32* %num_rels, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.linux_input_get_device_info, i32 0, i32 0), i32 %36)
  br label %if.end.73

if.end.73:                                        ; preds = %for.end.72, %if.end.46
  %arrayidx74 = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i32 0, i64 0
  %37 = load i64, i64* %arrayidx74, align 8
  %shr75 = lshr i64 %37, 3
  %and76 = and i64 %shr75, 1
  %tobool77 = icmp ne i64 %and76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.103

if.then.78:                                       ; preds = %if.end.73
  %38 = load i32, i32* %fd.addr, align 4
  %arraydecay80 = getelementptr inbounds [1 x i64], [1 x i64]* %absbit, i32 0, i32 0
  %call81 = call i32 (i32, i64, ...) @ioctl(i32 %38, i64 2151630115, i64* %arraydecay80) #5
  store i32 0, i32* %i79, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.100, %if.then.78
  %39 = load i32, i32* %i79, align 4
  %cmp83 = icmp slt i32 %39, 63
  br i1 %cmp83, label %for.body.85, label %for.end.102

for.body.85:                                      ; preds = %for.cond.82
  %40 = load i32, i32* %i79, align 4
  %conv86 = sext i32 %40 to i64
  %div87 = udiv i64 %conv86, 64
  %arrayidx88 = getelementptr inbounds [1 x i64], [1 x i64]* %absbit, i32 0, i64 %div87
  %41 = load i64, i64* %arrayidx88, align 8
  %42 = load i32, i32* %i79, align 4
  %conv89 = sext i32 %42 to i64
  %rem90 = urem i64 %conv89, 64
  %shr91 = lshr i64 %41, %rem90
  %and92 = and i64 %shr91, 1
  %tobool93 = icmp ne i64 %and92, 0
  br i1 %tobool93, label %if.then.94, label %if.end.99

if.then.94:                                       ; preds = %for.body.85
  %43 = load i32, i32* %num_abs, align 4
  %inc95 = add nsw i32 %43, 1
  store i32 %inc95, i32* %num_abs, align 4
  %44 = load i32, i32* %fd.addr, align 4
  %45 = load i32, i32* %i79, align 4
  %add = add nsw i32 64, %45
  %shl = shl i32 %add, 0
  %or = or i32 -2147465984, %shl
  %conv96 = zext i32 %or to i64
  %or97 = or i64 %conv96, 1572864
  %call98 = call i32 (i32, i64, ...) @ioctl(i32 %44, i64 %or97, %struct.input_absinfo* %absinfo) #5
  %46 = load i32, i32* %i79, align 4
  %minimum = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %absinfo, i32 0, i32 1
  %47 = load i32, i32* %minimum, align 4
  %maximum = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %absinfo, i32 0, i32 2
  %48 = load i32, i32* %maximum, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.linux_input_get_device_info, i32 0, i32 0), i32 %46, i32 %47, i32 %48)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.94, %for.body.85
  br label %for.inc.100

for.inc.100:                                      ; preds = %if.end.99
  %49 = load i32, i32* %i79, align 4
  %inc101 = add nsw i32 %49, 1
  store i32 %inc101, i32* %i79, align 4
  br label %for.cond.82

for.end.102:                                      ; preds = %for.cond.82
  %50 = load i32, i32* %num_abs, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.linux_input_get_device_info, i32 0, i32 0), i32 %50)
  br label %if.end.103

if.end.103:                                       ; preds = %for.end.102, %if.end.73
  ret void
}

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._GIOChannel* @g_io_channel_unix_new(i32) #1

declare void @g_io_channel_set_close_on_unref(%struct._GIOChannel*, i32) #1

declare i32 @g_io_channel_set_encoding(%struct._GIOChannel*, i8*, %struct._GError**) #1

declare i32 @g_io_add_watch(%struct._GIOChannel*, i32, i32 (%struct._GIOChannel*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @linux_input_read_event(%struct._GIOChannel* %io, i32 %cond, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %io.addr = alloca %struct._GIOChannel*, align 8
  %cond.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %input = alloca %struct._ControllerLinuxInput*, align 8
  %status = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %ev = alloca %struct.input_event, align 8
  %n_bytes = alloca i64, align 8
  %state = alloca i8*, align 8
  %controller = alloca %struct._GimpController*, align 8
  %cevent = alloca %union._GimpControllerEvent, align 8
  %i = alloca i32, align 4
  store %struct._GIOChannel* %io, %struct._GIOChannel** %io.addr, align 8
  store i32 %cond, i32* %cond.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @controller_linux_input_get_type()
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._ControllerLinuxInput*
  store %struct._ControllerLinuxInput* %2, %struct._ControllerLinuxInput** %input, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %3 = load %struct._GIOChannel*, %struct._GIOChannel** %io.addr, align 8
  %4 = bitcast %struct.input_event* %ev to i8*
  %call2 = call i32 @g_io_channel_read_chars(%struct._GIOChannel* %3, i8* %4, i64 24, i64* %n_bytes, %struct._GError** %error)
  store i32 %call2, i32* %status, align 4
  %5 = load i32, i32* %status, align 4
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %entry, %entry
  %6 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %input, align 8
  %io_id = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %6, i32 0, i32 4
  %7 = load i32, i32* %io_id, align 4
  %call3 = call i32 @g_source_remove(i32 %7)
  %8 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %input, align 8
  %io_id4 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %8, i32 0, i32 4
  store i32 0, i32* %io_id4, align 4
  %9 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %input, align 8
  %io5 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %9, i32 0, i32 3
  %10 = load %struct._GIOChannel*, %struct._GIOChannel** %io5, align 8
  call void @g_io_channel_unref(%struct._GIOChannel* %10)
  %11 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %input, align 8
  %io6 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %11, i32 0, i32 3
  store %struct._GIOChannel* null, %struct._GIOChannel** %io6, align 8
  %12 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %12, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %call7 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0)) #5
  %13 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %13, i32 0, i32 2
  %14 = load i8*, i8** %message, align 8
  %call8 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call7, i8* %14)
  store i8* %call8, i8** %state, align 8
  %15 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %input, align 8
  %16 = bitcast %struct._ControllerLinuxInput* %15 to i8*
  %17 = load i8*, i8** %state, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* %17, i8* null)
  %18 = load i8*, i8** %state, align 8
  call void @g_free(i8* %18)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %19 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %input, align 8
  %20 = bitcast %struct._ControllerLinuxInput* %19 to i8*
  %call9 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0)) #5
  call void (i8*, i8*, ...) @g_object_set(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* %call9, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %21 = load i64, i64* %n_bytes, align 8
  %cmp = icmp eq i64 %21, 24
  br i1 %cmp, label %if.then.11, label %if.end.89

if.then.11:                                       ; preds = %sw.epilog
  %22 = load i8*, i8** %data.addr, align 8
  %23 = bitcast i8* %22 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_controller_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call12)
  %24 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpController*
  store %struct._GimpController* %24, %struct._GimpController** %controller, align 8
  %25 = bitcast %union._GimpControllerEvent* %cevent to i8*
  call void @llvm.memset.p0i8.i64(i8* %25, i8 0, i64 48, i32 8, i1 false)
  %26 = bitcast i8* %25 to { i32, [44 x i8] }*
  %type = getelementptr inbounds %struct.input_event, %struct.input_event* %ev, i32 0, i32 1
  %27 = load i16, i16* %type, align 2
  %conv = zext i16 %27 to i32
  switch i32 %conv, label %sw.default.87 [
    i32 1, label %sw.bb.14
    i32 2, label %sw.bb.31
    i32 3, label %sw.bb.83
  ]

sw.bb.14:                                         ; preds = %if.then.11
  %code = getelementptr inbounds %struct.input_event, %struct.input_event* %ev, i32 0, i32 2
  %28 = load i16, i16* %code, align 2
  %conv15 = zext i16 %28 to i32
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.linux_input_read_event, i32 0, i32 0), i32 %conv15)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.14
  %29 = load i32, i32* %i, align 4
  %conv16 = sext i32 %29 to i64
  %cmp17 = icmp ult i64 %conv16, 22
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %code19 = getelementptr inbounds %struct.input_event, %struct.input_event* %ev, i32 0, i32 2
  %30 = load i16, i16* %code19, align 2
  %conv20 = zext i16 %30 to i32
  %31 = load i32, i32* %i, align 4
  %idxprom = sext i32 %31 to i64
  %arrayidx = getelementptr inbounds [22 x %struct.LinuxInputEvent], [22 x %struct.LinuxInputEvent]* @key_events, i32 0, i64 %idxprom
  %code21 = getelementptr inbounds %struct.LinuxInputEvent, %struct.LinuxInputEvent* %arrayidx, i32 0, i32 0
  %32 = load i16, i16* %code21, align 2
  %conv22 = zext i16 %32 to i32
  %cmp23 = icmp eq i32 %conv20, %conv22
  br i1 %cmp23, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %for.body
  %any = bitcast %union._GimpControllerEvent* %cevent to %struct._GimpControllerEventAny*
  %type26 = getelementptr inbounds %struct._GimpControllerEventAny, %struct._GimpControllerEventAny* %any, i32 0, i32 0
  store i32 0, i32* %type26, align 4
  %33 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %any27 = bitcast %union._GimpControllerEvent* %cevent to %struct._GimpControllerEventAny*
  %source = getelementptr inbounds %struct._GimpControllerEventAny, %struct._GimpControllerEventAny* %any27, i32 0, i32 1
  store %struct._GimpController* %33, %struct._GimpController** %source, align 8
  %34 = load i32, i32* %i, align 4
  %any28 = bitcast %union._GimpControllerEvent* %cevent to %struct._GimpControllerEventAny*
  %event_id = getelementptr inbounds %struct._GimpControllerEventAny, %struct._GimpControllerEventAny* %any28, i32 0, i32 2
  store i32 %34, i32* %event_id, align 4
  %35 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %call29 = call i32 @gimp_controller_event(%struct._GimpController* %35, %union._GimpControllerEvent* %cevent)
  br label %for.end

if.end.30:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.25, %for.cond
  br label %sw.epilog.88

sw.bb.31:                                         ; preds = %if.then.11
  %code32 = getelementptr inbounds %struct.input_event, %struct.input_event* %ev, i32 0, i32 2
  %37 = load i16, i16* %code32, align 2
  %conv33 = zext i16 %37 to i32
  %value = getelementptr inbounds %struct.input_event, %struct.input_event* %ev, i32 0, i32 3
  %38 = load i32, i32* %value, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.linux_input_read_event, i32 0, i32 0), i32 %conv33, i32 %38)
  store i32 0, i32* %i, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.80, %sw.bb.31
  %39 = load i32, i32* %i, align 4
  %conv35 = sext i32 %39 to i64
  %cmp36 = icmp ult i64 %conv35, 18
  br i1 %cmp36, label %for.body.38, label %for.end.82

for.body.38:                                      ; preds = %for.cond.34
  %code39 = getelementptr inbounds %struct.input_event, %struct.input_event* %ev, i32 0, i32 2
  %40 = load i16, i16* %code39, align 2
  %conv40 = zext i16 %40 to i32
  %41 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %41 to i64
  %arrayidx42 = getelementptr inbounds [18 x %struct.LinuxInputEvent], [18 x %struct.LinuxInputEvent]* @rel_events, i32 0, i64 %idxprom41
  %code43 = getelementptr inbounds %struct.LinuxInputEvent, %struct.LinuxInputEvent* %arrayidx42, i32 0, i32 0
  %42 = load i16, i16* %code43, align 2
  %conv44 = zext i16 %42 to i32
  %cmp45 = icmp eq i32 %conv40, %conv44
  br i1 %cmp45, label %if.then.47, label %if.end.79

if.then.47:                                       ; preds = %for.body.38
  %any48 = bitcast %union._GimpControllerEvent* %cevent to %struct._GimpControllerEventAny*
  %type49 = getelementptr inbounds %struct._GimpControllerEventAny, %struct._GimpControllerEventAny* %any48, i32 0, i32 0
  store i32 1, i32* %type49, align 4
  %43 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %any50 = bitcast %union._GimpControllerEvent* %cevent to %struct._GimpControllerEventAny*
  %source51 = getelementptr inbounds %struct._GimpControllerEventAny, %struct._GimpControllerEventAny* %any50, i32 0, i32 1
  store %struct._GimpController* %43, %struct._GimpController** %source51, align 8
  %44 = load i32, i32* %i, align 4
  %conv52 = sext i32 %44 to i64
  %add = add i64 22, %conv52
  %conv53 = trunc i64 %add to i32
  %any54 = bitcast %union._GimpControllerEvent* %cevent to %struct._GimpControllerEventAny*
  %event_id55 = getelementptr inbounds %struct._GimpControllerEventAny, %struct._GimpControllerEventAny* %any54, i32 0, i32 2
  store i32 %conv53, i32* %event_id55, align 4
  %value56 = bitcast %union._GimpControllerEvent* %cevent to %struct._GimpControllerEventValue*
  %value57 = getelementptr inbounds %struct._GimpControllerEventValue, %struct._GimpControllerEventValue* %value56, i32 0, i32 3
  %call58 = call %struct._GValue* @g_value_init(%struct._GValue* %value57, i64 60)
  %value59 = getelementptr inbounds %struct.input_event, %struct.input_event* %ev, i32 0, i32 3
  %45 = load i32, i32* %value59, align 4
  %cmp60 = icmp slt i32 %45, 0
  br i1 %cmp60, label %if.then.62, label %if.else.67

if.then.62:                                       ; preds = %if.then.47
  %value63 = bitcast %union._GimpControllerEvent* %cevent to %struct._GimpControllerEventValue*
  %value64 = getelementptr inbounds %struct._GimpControllerEventValue, %struct._GimpControllerEventValue* %value63, i32 0, i32 3
  %value65 = getelementptr inbounds %struct.input_event, %struct.input_event* %ev, i32 0, i32 3
  %46 = load i32, i32* %value65, align 4
  %sub = sub nsw i32 0, %46
  %conv66 = sitofp i32 %sub to double
  call void @g_value_set_double(%struct._GValue* %value64, double %conv66)
  br label %if.end.75

if.else.67:                                       ; preds = %if.then.47
  %any68 = bitcast %union._GimpControllerEvent* %cevent to %struct._GimpControllerEventAny*
  %event_id69 = getelementptr inbounds %struct._GimpControllerEventAny, %struct._GimpControllerEventAny* %any68, i32 0, i32 2
  %47 = load i32, i32* %event_id69, align 4
  %inc70 = add nsw i32 %47, 1
  store i32 %inc70, i32* %event_id69, align 4
  %value71 = bitcast %union._GimpControllerEvent* %cevent to %struct._GimpControllerEventValue*
  %value72 = getelementptr inbounds %struct._GimpControllerEventValue, %struct._GimpControllerEventValue* %value71, i32 0, i32 3
  %value73 = getelementptr inbounds %struct.input_event, %struct.input_event* %ev, i32 0, i32 3
  %48 = load i32, i32* %value73, align 4
  %conv74 = sitofp i32 %48 to double
  call void @g_value_set_double(%struct._GValue* %value72, double %conv74)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.67, %if.then.62
  %49 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %call76 = call i32 @gimp_controller_event(%struct._GimpController* %49, %union._GimpControllerEvent* %cevent)
  %value77 = bitcast %union._GimpControllerEvent* %cevent to %struct._GimpControllerEventValue*
  %value78 = getelementptr inbounds %struct._GimpControllerEventValue, %struct._GimpControllerEventValue* %value77, i32 0, i32 3
  call void @g_value_unset(%struct._GValue* %value78)
  br label %for.end.82

if.end.79:                                        ; preds = %for.body.38
  br label %for.inc.80

for.inc.80:                                       ; preds = %if.end.79
  %50 = load i32, i32* %i, align 4
  %inc81 = add nsw i32 %50, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond.34

for.end.82:                                       ; preds = %if.end.75, %for.cond.34
  br label %sw.epilog.88

sw.bb.83:                                         ; preds = %if.then.11
  %code84 = getelementptr inbounds %struct.input_event, %struct.input_event* %ev, i32 0, i32 2
  %51 = load i16, i16* %code84, align 2
  %conv85 = zext i16 %51 to i32
  %value86 = getelementptr inbounds %struct.input_event, %struct.input_event* %ev, i32 0, i32 3
  %52 = load i32, i32* %value86, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.linux_input_read_event, i32 0, i32 0), i32 %conv85, i32 %52)
  br label %sw.epilog.88

sw.default.87:                                    ; preds = %if.then.11
  br label %sw.epilog.88

sw.epilog.88:                                     ; preds = %sw.default.87, %sw.bb.83, %for.end.82, %for.end
  br label %if.end.89

if.end.89:                                        ; preds = %sw.epilog.88, %sw.epilog
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.89, %sw.bb.10, %if.end
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare %struct._GError* @gimp_input_device_store_get_error(%struct._GimpInputDeviceStore*) #1

declare void @g_error_free(%struct._GError*) #1

declare void @g_print(i8*, ...) #1

declare i32 @g_io_channel_read_chars(%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**) #1

declare void @g_clear_error(%struct._GError**) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare i32 @gimp_controller_event(%struct._GimpController*, %union._GimpControllerEvent*) #1

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_unset(%struct._GValue*) #1

declare void @g_object_unref(i8*) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

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

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i8* @g_value_get_string(%struct._GValue*) #1

declare %struct._GimpInputDeviceStore* @gimp_input_device_store_new() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @linux_input_device_changed(%struct._ControllerLinuxInput* %controller, i8* %identifier) #0 {
entry:
  %controller.addr = alloca %struct._ControllerLinuxInput*, align 8
  %identifier.addr = alloca i8*, align 8
  store %struct._ControllerLinuxInput* %controller, %struct._ControllerLinuxInput** %controller.addr, align 8
  store i8* %identifier, i8** %identifier.addr, align 8
  %0 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %device = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %0, i32 0, i32 2
  %1 = load i8*, i8** %device, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %identifier.addr, align 8
  %3 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %device1 = getelementptr inbounds %struct._ControllerLinuxInput, %struct._ControllerLinuxInput* %3, i32 0, i32 2
  %4 = load i8*, i8** %device1, align 8
  %call = call i32 @strcmp(i8* %2, i8* %4) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %6 = load i8*, i8** %identifier.addr, align 8
  %call2 = call i32 @linux_input_set_device(%struct._ControllerLinuxInput* %5, i8* %6)
  %7 = load %struct._ControllerLinuxInput*, %struct._ControllerLinuxInput** %controller.addr, align 8
  %8 = bitcast %struct._ControllerLinuxInput* %7 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @g_object_notify(%struct._GObject*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
