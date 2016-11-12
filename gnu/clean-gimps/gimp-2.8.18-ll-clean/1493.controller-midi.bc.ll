; ModuleID = './modules/controller-midi.bc'
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
%struct.MidiEvent = type { i8*, i8* }
%struct._GTypeModule = type { %struct._GObject, i32, %struct._GSList*, %struct._GSList*, i8* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._ControllerMidiClass = type { %struct._GimpControllerClass }
%struct._GimpControllerClass = type { %struct._GObjectClass, i8*, i8*, i8*, i32 (%struct._GimpController*)*, i8* (%struct._GimpController*, i32)*, i8* (%struct._GimpController*, i32)*, i32 (%struct._GimpController*, %union._GimpControllerEvent*)*, i8*, void ()*, void ()*, void ()* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GimpController = type { %struct._GObject, i8*, i8* }
%union._GimpControllerEvent = type { %struct._GimpControllerEventValue }
%struct._GimpControllerEventValue = type { i32, %struct._GimpController*, i32, %struct._GValue }
%struct._ControllerMidi = type { %struct._GimpController, i8*, i32, %struct._GIOChannel*, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct._GimpControllerEventAny = type { i32, %struct._GimpController*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@controller_midi_type_id = internal global i64 0, align 8
@midi_info = internal constant %struct._GimpModuleInfo { i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [22 x i8] c"MIDI event controller\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Michael Natterer <mitch@gimp.org>\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"v0.2\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"(c) 2004-2007, released under the GPL\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"2004-2007\00", align 1
@controller_midi_register_type.g_define_type_info = internal constant %struct._GTypeInfo { i16 224, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (i8*)* @controller_midi_class_intern_init to void (i8*, i8*)*), void (i8*, i8*)* bitcast (void (%struct._ControllerMidiClass*)* @controller_midi_class_finalize to void (i8*, i8*)*), i8* null, i16 96, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._ControllerMidi*)* @controller_midi_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"ControllerMidi\00", align 1
@controller_midi_parent_class = internal global i8* null, align 8
@ControllerMidi_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"The name of the device to read MIDI events from.\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Device:\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Channel:\00", align 1
@.str.12 = private unnamed_addr constant [84 x i8] c"The MIDI channel to read events from. Set to -1 for reading from all MIDI channels.\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"MIDI\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"gimp-controller-midi\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"MIDI Events\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Reading from %s\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Device not available: %s\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"No device configured\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"End of file\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"MIDI: sysex start\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"MIDI: time code\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"MIDI: song position\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"MIDI: song select\0A\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"MIDI: undefined system message\0A\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"MIDI: tune request\0A\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"MIDI: sysex end\0A\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"MIDI (ch %02d): note on  (%02x vel %02x)\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"MIDI (ch %02d): note off (%02x vel %02x)\0A\00", align 1
@.str.31 = private unnamed_addr constant [60 x i8] c"MIDI (ch %02d): polyphonic aftertouch (%02x pressure %02x)\0A\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"MIDI (ch %02d): controller %d (value %d)\0A\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"MIDI (ch %02d): program change (%d)\0A\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"MIDI (ch %02d): channel aftertouch (%d)\0A\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"MIDI (ch %02d): pitch (%d)\0A\00", align 1
@.str.36 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"controller-midi.c\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@midi_events = internal global [384 x %struct.MidiEvent] zeroinitializer, align 16
@.str.39 = private unnamed_addr constant [13 x i8] c"note-on-%02x\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"note-off-%02x\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"controller-%03d\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"Note %02x on\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"Note %02x off\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"Controller %03d\00", align 1

; Function Attrs: nounwind uwtable
define i64 @controller_midi_get_type() #0 {
entry:
  %0 = load i64, i64* @controller_midi_type_id, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define %struct._GimpModuleInfo* @gimp_module_query(%struct._GTypeModule* %module) #0 {
entry:
  %module.addr = alloca %struct._GTypeModule*, align 8
  store %struct._GTypeModule* %module, %struct._GTypeModule** %module.addr, align 8
  ret %struct._GimpModuleInfo* @midi_info
}

; Function Attrs: nounwind uwtable
define i32 @gimp_module_register(%struct._GTypeModule* %module) #0 {
entry:
  %module.addr = alloca %struct._GTypeModule*, align 8
  store %struct._GTypeModule* %module, %struct._GTypeModule** %module.addr, align 8
  %0 = load %struct._GTypeModule*, %struct._GTypeModule** %module.addr, align 8
  call void @controller_midi_register_type(%struct._GTypeModule* %0)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @controller_midi_register_type(%struct._GTypeModule* %type_module) #0 {
entry:
  %type_module.addr = alloca %struct._GTypeModule*, align 8
  %g_define_type_id = alloca i64, align 8
  store %struct._GTypeModule* %type_module, %struct._GTypeModule** %type_module.addr, align 8
  %0 = load %struct._GTypeModule*, %struct._GTypeModule** %type_module.addr, align 8
  %call = call i64 @gimp_controller_get_type() #6
  %call1 = call i64 @g_type_module_register_type(%struct._GTypeModule* %0, i64 %call, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), %struct._GTypeInfo* @controller_midi_register_type.g_define_type_info, i32 0)
  store i64 %call1, i64* @controller_midi_type_id, align 8
  %1 = load i64, i64* @controller_midi_type_id, align 8
  store i64 %1, i64* %g_define_type_id, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @controller_midi_class_intern_init(i8* %klass) #0 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @controller_midi_parent_class, align 8
  %1 = load i32, i32* @ControllerMidi_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @ControllerMidi_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._ControllerMidiClass*
  call void @controller_midi_class_init(%struct._ControllerMidiClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @controller_midi_class_finalize(%struct._ControllerMidiClass* %klass) #0 {
entry:
  %klass.addr = alloca %struct._ControllerMidiClass*, align 8
  store %struct._ControllerMidiClass* %klass, %struct._ControllerMidiClass** %klass.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @controller_midi_init(%struct._ControllerMidi* %midi) #0 {
entry:
  %midi.addr = alloca %struct._ControllerMidi*, align 8
  store %struct._ControllerMidi* %midi, %struct._ControllerMidi** %midi.addr, align 8
  %0 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %device = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %0, i32 0, i32 1
  store i8* null, i8** %device, align 8
  %1 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %midi_channel = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %1, i32 0, i32 2
  store i32 -1, i32* %midi_channel, align 4
  %2 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %io = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %2, i32 0, i32 3
  store %struct._GIOChannel* null, %struct._GIOChannel** %io, align 8
  %3 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %io_id = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %3, i32 0, i32 4
  store i32 0, i32* %io_id, align 4
  %4 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %swallow = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %4, i32 0, i32 5
  store i32 1, i32* %swallow, align 4
  %5 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %command = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %5, i32 0, i32 6
  store i32 0, i32* %command, align 4
  %6 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %channel = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %6, i32 0, i32 7
  store i32 0, i32* %channel, align 4
  %7 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %key = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %7, i32 0, i32 8
  store i32 -1, i32* %key, align 4
  %8 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %velocity = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %8, i32 0, i32 9
  store i32 -1, i32* %velocity, align 4
  %9 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %msb = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %9, i32 0, i32 10
  store i32 -1, i32* %msb, align 4
  %10 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %lsb = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %10, i32 0, i32 11
  store i32 -1, i32* %lsb, align 4
  ret void
}

declare i64 @g_type_module_register_type(%struct._GTypeModule*, i64, i8*, %struct._GTypeInfo*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_controller_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @controller_midi_class_init(%struct._ControllerMidiClass* %klass) #0 {
entry:
  %klass.addr = alloca %struct._ControllerMidiClass*, align 8
  %controller_class = alloca %struct._GimpControllerClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %blurb = alloca i8*, align 8
  store %struct._ControllerMidiClass* %klass, %struct._ControllerMidiClass** %klass.addr, align 8
  %0 = load %struct._ControllerMidiClass*, %struct._ControllerMidiClass** %klass.addr, align 8
  %1 = bitcast %struct._ControllerMidiClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_controller_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpControllerClass*
  store %struct._GimpControllerClass* %2, %struct._GimpControllerClass** %controller_class, align 8
  %3 = load %struct._ControllerMidiClass*, %struct._ControllerMidiClass** %klass.addr, align 8
  %4 = bitcast %struct._ControllerMidiClass* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  store %struct._GObjectClass* %5, %struct._GObjectClass** %object_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 5
  store void (%struct._GObject*)* @midi_dispose, void (%struct._GObject*)** %dispose, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @midi_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @midi_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %call3 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0)) #5
  %call4 = call noalias i8* (i8*, ...) @g_strconcat(i8* %call3, i8* null)
  store i8* %call4, i8** %blurb, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #5
  %10 = load i8*, i8** %blurb, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* %call5, i8* %10, i8* null, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 1, %struct._GParamSpec* %call6)
  %11 = load i8*, i8** %blurb, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)) #5
  %call8 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.12, i32 0, i32 0)) #5
  %call9 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* %call7, i8* %call8, i32 -1, i32 15, i32 -1, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 2, %struct._GParamSpec* %call9)
  %call10 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)) #5
  %13 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %name = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %13, i32 0, i32 1
  store i8* %call10, i8** %name, align 8
  %14 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %help_id = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %14, i32 0, i32 3
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i8** %help_id, align 8
  %15 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %stock_id = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %15, i32 0, i32 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i8** %stock_id, align 8
  %16 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %get_n_events = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %16, i32 0, i32 4
  store i32 (%struct._GimpController*)* @midi_get_n_events, i32 (%struct._GimpController*)** %get_n_events, align 8
  %17 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %get_event_name = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %17, i32 0, i32 5
  store i8* (%struct._GimpController*, i32)* @midi_get_event_name, i8* (%struct._GimpController*, i32)** %get_event_name, align 8
  %18 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %get_event_blurb = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %18, i32 0, i32 6
  store i8* (%struct._GimpController*, i32)* @midi_get_event_blurb, i8* (%struct._GimpController*, i32)** %get_event_blurb, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @midi_dispose(%struct._GObject* %object) #0 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %midi = alloca %struct._ControllerMidi*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @controller_midi_get_type()
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._ControllerMidi*
  store %struct._ControllerMidi* %2, %struct._ControllerMidi** %midi, align 8
  %3 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %call2 = call i32 @midi_set_device(%struct._ControllerMidi* %3, i8* null)
  %4 = load i8*, i8** @controller_midi_parent_class, align 8
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
define internal void @midi_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #0 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %midi = alloca %struct._ControllerMidi*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @controller_midi_get_type()
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._ControllerMidi*
  store %struct._ControllerMidi* %2, %struct._ControllerMidi** %midi, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %device = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %5, i32 0, i32 1
  %6 = load i8*, i8** %device, align 8
  call void @g_value_set_string(%struct._GValue* %4, i8* %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %midi_channel = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %8, i32 0, i32 2
  %9 = load i32, i32* %midi_channel, align 4
  call void @g_value_set_int(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %10 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %10, %struct._GObject** %_glib__object, align 8
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %11, %struct._GParamSpec** %_glib__pspec, align 8
  %12 = load i32, i32* %property_id.addr, align 4
  store i32 %12, i32* %_glib__property_id, align 4
  %13 = load i32, i32* %_glib__property_id, align 4
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %14, i32 0, i32 1
  %15 = load i8*, i8** %name, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %17 = bitcast %struct._GParamSpec* %16 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %19)
  %20 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %21 = bitcast %struct._GObject* %20 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %23)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0), i32 309, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 %13, i8* %15, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @midi_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #0 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %midi = alloca %struct._ControllerMidi*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @controller_midi_get_type()
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._ControllerMidi*
  store %struct._ControllerMidi* %2, %struct._ControllerMidi** %midi, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_string(%struct._GValue* %5)
  %call3 = call i32 @midi_set_device(%struct._ControllerMidi* %4, i8* %call2)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call5 = call i32 @g_value_get_int(%struct._GValue* %6)
  %7 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %midi_channel = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %7, i32 0, i32 2
  store i32 %call5, i32* %midi_channel, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %8, %struct._GObject** %_glib__object, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %9, %struct._GParamSpec** %_glib__pspec, align 8
  %10 = load i32, i32* %property_id.addr, align 4
  store i32 %10, i32* %_glib__property_id, align 4
  %11 = load i32, i32* %_glib__property_id, align 4
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = bitcast %struct._GParamSpec* %14 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %call6 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type8, align 8
  %call9 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0), i32 287, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 %11, i8* %13, i8* %call6, i8* %call9)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.4, %sw.bb
  ret void
}

declare noalias i8* @g_strconcat(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #3

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare void @g_free(i8*) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @midi_get_n_events(%struct._GimpController* %controller) #0 {
entry:
  %controller.addr = alloca %struct._GimpController*, align 8
  store %struct._GimpController* %controller, %struct._GimpController** %controller.addr, align 8
  ret i32 384
}

; Function Attrs: nounwind uwtable
define internal i8* @midi_get_event_name(%struct._GimpController* %controller, i32 %event_id) #0 {
entry:
  %retval = alloca i8*, align 8
  %controller.addr = alloca %struct._GimpController*, align 8
  %event_id.addr = alloca i32, align 4
  store %struct._GimpController* %controller, %struct._GimpController** %controller.addr, align 8
  store i32 %event_id, i32* %event_id.addr, align 4
  %0 = load i32, i32* %event_id.addr, align 4
  %cmp = icmp slt i32 %0, 384
  br i1 %cmp, label %if.then, label %if.end.27

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %event_id.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [384 x %struct.MidiEvent], [384 x %struct.MidiEvent]* @midi_events, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.MidiEvent, %struct.MidiEvent* %arrayidx, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end.23, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %3 = load i32, i32* %event_id.addr, align 4
  %cmp2 = icmp slt i32 %3, 128
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then.1
  %4 = load i32, i32* %event_id.addr, align 4
  %call = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i32 %4)
  %5 = load i32, i32* %event_id.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [384 x %struct.MidiEvent], [384 x %struct.MidiEvent]* @midi_events, i32 0, i64 %idxprom4
  %name6 = getelementptr inbounds %struct.MidiEvent, %struct.MidiEvent* %arrayidx5, i32 0, i32 0
  store i8* %call, i8** %name6, align 8
  br label %if.end.22

if.else:                                          ; preds = %if.then.1
  %6 = load i32, i32* %event_id.addr, align 4
  %cmp7 = icmp slt i32 %6, 256
  br i1 %cmp7, label %if.then.8, label %if.else.13

if.then.8:                                        ; preds = %if.else
  %7 = load i32, i32* %event_id.addr, align 4
  %sub = sub nsw i32 %7, 128
  %call9 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i32 %sub)
  %8 = load i32, i32* %event_id.addr, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [384 x %struct.MidiEvent], [384 x %struct.MidiEvent]* @midi_events, i32 0, i64 %idxprom10
  %name12 = getelementptr inbounds %struct.MidiEvent, %struct.MidiEvent* %arrayidx11, i32 0, i32 0
  store i8* %call9, i8** %name12, align 8
  br label %if.end.21

if.else.13:                                       ; preds = %if.else
  %9 = load i32, i32* %event_id.addr, align 4
  %cmp14 = icmp slt i32 %9, 384
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.else.13
  %10 = load i32, i32* %event_id.addr, align 4
  %sub16 = sub nsw i32 %10, 256
  %call17 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0), i32 %sub16)
  %11 = load i32, i32* %event_id.addr, align 4
  %idxprom18 = sext i32 %11 to i64
  %arrayidx19 = getelementptr inbounds [384 x %struct.MidiEvent], [384 x %struct.MidiEvent]* @midi_events, i32 0, i64 %idxprom18
  %name20 = getelementptr inbounds %struct.MidiEvent, %struct.MidiEvent* %arrayidx19, i32 0, i32 0
  store i8* %call17, i8** %name20, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.else.13
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %if.then.8
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.3
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then
  %12 = load i32, i32* %event_id.addr, align 4
  %idxprom24 = sext i32 %12 to i64
  %arrayidx25 = getelementptr inbounds [384 x %struct.MidiEvent], [384 x %struct.MidiEvent]* @midi_events, i32 0, i64 %idxprom24
  %name26 = getelementptr inbounds %struct.MidiEvent, %struct.MidiEvent* %arrayidx25, i32 0, i32 0
  %13 = load i8*, i8** %name26, align 8
  store i8* %13, i8** %retval
  br label %return

if.end.27:                                        ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.end.23
  %14 = load i8*, i8** %retval
  ret i8* %14
}

; Function Attrs: nounwind uwtable
define internal i8* @midi_get_event_blurb(%struct._GimpController* %controller, i32 %event_id) #0 {
entry:
  %retval = alloca i8*, align 8
  %controller.addr = alloca %struct._GimpController*, align 8
  %event_id.addr = alloca i32, align 4
  store %struct._GimpController* %controller, %struct._GimpController** %controller.addr, align 8
  store i32 %event_id, i32* %event_id.addr, align 4
  %0 = load i32, i32* %event_id.addr, align 4
  %cmp = icmp sle i32 %0, 383
  br i1 %cmp, label %if.then, label %if.end.30

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %event_id.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [384 x %struct.MidiEvent], [384 x %struct.MidiEvent]* @midi_events, i32 0, i64 %idxprom
  %blurb = getelementptr inbounds %struct.MidiEvent, %struct.MidiEvent* %arrayidx, i32 0, i32 1
  %2 = load i8*, i8** %blurb, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end.26, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %3 = load i32, i32* %event_id.addr, align 4
  %cmp2 = icmp sle i32 %3, 127
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then.1
  %call = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0)) #5
  %4 = load i32, i32* %event_id.addr, align 4
  %call4 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call, i32 %4)
  %5 = load i32, i32* %event_id.addr, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [384 x %struct.MidiEvent], [384 x %struct.MidiEvent]* @midi_events, i32 0, i64 %idxprom5
  %blurb7 = getelementptr inbounds %struct.MidiEvent, %struct.MidiEvent* %arrayidx6, i32 0, i32 1
  store i8* %call4, i8** %blurb7, align 8
  br label %if.end.25

if.else:                                          ; preds = %if.then.1
  %6 = load i32, i32* %event_id.addr, align 4
  %cmp8 = icmp sle i32 %6, 255
  br i1 %cmp8, label %if.then.9, label %if.else.15

if.then.9:                                        ; preds = %if.else
  %call10 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0)) #5
  %7 = load i32, i32* %event_id.addr, align 4
  %sub = sub nsw i32 %7, 128
  %call11 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call10, i32 %sub)
  %8 = load i32, i32* %event_id.addr, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [384 x %struct.MidiEvent], [384 x %struct.MidiEvent]* @midi_events, i32 0, i64 %idxprom12
  %blurb14 = getelementptr inbounds %struct.MidiEvent, %struct.MidiEvent* %arrayidx13, i32 0, i32 1
  store i8* %call11, i8** %blurb14, align 8
  br label %if.end.24

if.else.15:                                       ; preds = %if.else
  %9 = load i32, i32* %event_id.addr, align 4
  %cmp16 = icmp sle i32 %9, 383
  br i1 %cmp16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.else.15
  %call18 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0)) #5
  %10 = load i32, i32* %event_id.addr, align 4
  %sub19 = sub nsw i32 %10, 256
  %call20 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call18, i32 %sub19)
  %11 = load i32, i32* %event_id.addr, align 4
  %idxprom21 = sext i32 %11 to i64
  %arrayidx22 = getelementptr inbounds [384 x %struct.MidiEvent], [384 x %struct.MidiEvent]* @midi_events, i32 0, i64 %idxprom21
  %blurb23 = getelementptr inbounds %struct.MidiEvent, %struct.MidiEvent* %arrayidx22, i32 0, i32 1
  store i8* %call20, i8** %blurb23, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.else.15
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then.9
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.3
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then
  %12 = load i32, i32* %event_id.addr, align 4
  %idxprom27 = sext i32 %12 to i64
  %arrayidx28 = getelementptr inbounds [384 x %struct.MidiEvent], [384 x %struct.MidiEvent]* @midi_events, i32 0, i64 %idxprom27
  %blurb29 = getelementptr inbounds %struct.MidiEvent, %struct.MidiEvent* %arrayidx28, i32 0, i32 1
  %13 = load i8*, i8** %blurb29, align 8
  store i8* %13, i8** %retval
  br label %return

if.end.30:                                        ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.end.26
  %14 = load i8*, i8** %retval
  ret i8* %14
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @midi_set_device(%struct._ControllerMidi* %midi, i8* %device) #0 {
entry:
  %retval = alloca i32, align 4
  %midi.addr = alloca %struct._ControllerMidi*, align 8
  %device.addr = alloca i8*, align 8
  %fd = alloca i32, align 4
  %state = alloca i8*, align 8
  %state32 = alloca i8*, align 8
  store %struct._ControllerMidi* %midi, %struct._ControllerMidi** %midi.addr, align 8
  store i8* %device, i8** %device.addr, align 8
  %0 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %swallow = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %0, i32 0, i32 5
  store i32 1, i32* %swallow, align 4
  %1 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %command = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %1, i32 0, i32 6
  store i32 0, i32* %command, align 4
  %2 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %channel = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %2, i32 0, i32 7
  store i32 0, i32* %channel, align 4
  %3 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %key = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %3, i32 0, i32 8
  store i32 -1, i32* %key, align 4
  %4 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %velocity = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %4, i32 0, i32 9
  store i32 -1, i32* %velocity, align 4
  %5 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %msb = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %5, i32 0, i32 10
  store i32 -1, i32* %msb, align 4
  %6 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %lsb = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %6, i32 0, i32 11
  store i32 -1, i32* %lsb, align 4
  %7 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %io = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %7, i32 0, i32 3
  %8 = load %struct._GIOChannel*, %struct._GIOChannel** %io, align 8
  %tobool = icmp ne %struct._GIOChannel* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %io_id = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %9, i32 0, i32 4
  %10 = load i32, i32* %io_id, align 4
  %call = call i32 @g_source_remove(i32 %10)
  %11 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %io_id1 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %11, i32 0, i32 4
  store i32 0, i32* %io_id1, align 4
  %12 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %io2 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %12, i32 0, i32 3
  %13 = load %struct._GIOChannel*, %struct._GIOChannel** %io2, align 8
  call void @g_io_channel_unref(%struct._GIOChannel* %13)
  %14 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %io3 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %14, i32 0, i32 3
  store %struct._GIOChannel* null, %struct._GIOChannel** %io3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %device4 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %15, i32 0, i32 1
  %16 = load i8*, i8** %device4, align 8
  %tobool5 = icmp ne i8* %16, null
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %17 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %device7 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %17, i32 0, i32 1
  %18 = load i8*, i8** %device7, align 8
  call void @g_free(i8* %18)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %19 = load i8*, i8** %device.addr, align 8
  %call9 = call noalias i8* @g_strdup(i8* %19)
  %20 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %device10 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %20, i32 0, i32 1
  store i8* %call9, i8** %device10, align 8
  %21 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %22 = bitcast %struct._ControllerMidi* %21 to i8*
  %call11 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0)) #5
  call void (i8*, i8*, ...) @g_object_set(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* %call11, i8* null)
  %23 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %device12 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %23, i32 0, i32 1
  %24 = load i8*, i8** %device12, align 8
  %tobool13 = icmp ne i8* %24, null
  br i1 %tobool13, label %land.lhs.true, label %if.else.38

land.lhs.true:                                    ; preds = %if.end.8
  %25 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %device14 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %25, i32 0, i32 1
  %26 = load i8*, i8** %device14, align 8
  %call15 = call i64 @strlen(i8* %26) #7
  %tobool16 = icmp ne i64 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else.38

if.then.17:                                       ; preds = %land.lhs.true
  %27 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %device18 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %27, i32 0, i32 1
  %28 = load i8*, i8** %device18, align 8
  %call19 = call i32 (i8*, i32, ...) @open(i8* %28, i32 2048, i32 0)
  store i32 %call19, i32* %fd, align 4
  %29 = load i32, i32* %fd, align 4
  %cmp = icmp sge i32 %29, 0
  br i1 %cmp, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.then.17
  %call21 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0)) #5
  %30 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %device22 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %30, i32 0, i32 1
  %31 = load i8*, i8** %device22, align 8
  %call23 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call21, i8* %31)
  store i8* %call23, i8** %state, align 8
  %32 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %33 = bitcast %struct._ControllerMidi* %32 to i8*
  %34 = load i8*, i8** %state, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* %34, i8* null)
  %35 = load i8*, i8** %state, align 8
  call void @g_free(i8* %35)
  %36 = load i32, i32* %fd, align 4
  %call24 = call %struct._GIOChannel* @g_io_channel_unix_new(i32 %36)
  %37 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %io25 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %37, i32 0, i32 3
  store %struct._GIOChannel* %call24, %struct._GIOChannel** %io25, align 8
  %38 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %io26 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %38, i32 0, i32 3
  %39 = load %struct._GIOChannel*, %struct._GIOChannel** %io26, align 8
  call void @g_io_channel_set_close_on_unref(%struct._GIOChannel* %39, i32 1)
  %40 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %io27 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %40, i32 0, i32 3
  %41 = load %struct._GIOChannel*, %struct._GIOChannel** %io27, align 8
  %call28 = call i32 @g_io_channel_set_encoding(%struct._GIOChannel* %41, i8* null, %struct._GError** null)
  %42 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %io29 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %42, i32 0, i32 3
  %43 = load %struct._GIOChannel*, %struct._GIOChannel** %io29, align 8
  %44 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %45 = bitcast %struct._ControllerMidi* %44 to i8*
  %call30 = call i32 @g_io_add_watch(%struct._GIOChannel* %43, i32 57, i32 (%struct._GIOChannel*, i32, i8*)* @midi_read_event, i8* %45)
  %46 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %io_id31 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %46, i32 0, i32 4
  store i32 %call30, i32* %io_id31, align 4
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.17
  %call33 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0)) #5
  %call34 = call i32* @__errno_location() #6
  %47 = load i32, i32* %call34, align 4
  %call35 = call i8* @g_strerror(i32 %47) #6
  %call36 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call33, i8* %call35)
  store i8* %call36, i8** %state32, align 8
  %48 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %49 = bitcast %struct._ControllerMidi* %48 to i8*
  %50 = load i8*, i8** %state32, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* %50, i8* null)
  %51 = load i8*, i8** %state32, align 8
  call void @g_free(i8* %51)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true, %if.end.8
  %52 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %53 = bitcast %struct._ControllerMidi* %52 to i8*
  %call39 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0)) #5
  call void (i8*, i8*, ...) @g_object_set(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* %call39, i8* null)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.end.37
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.20
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare i32 @g_source_remove(i32) #1

declare void @g_io_channel_unref(%struct._GIOChannel*) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @open(i8*, i32, ...) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._GIOChannel* @g_io_channel_unix_new(i32) #1

declare void @g_io_channel_set_close_on_unref(%struct._GIOChannel*, i32) #1

declare i32 @g_io_channel_set_encoding(%struct._GIOChannel*, i8*, %struct._GError**) #1

declare i32 @g_io_add_watch(%struct._GIOChannel*, i32, i32 (%struct._GIOChannel*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @midi_read_event(%struct._GIOChannel* %io, i32 %cond, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %io.addr = alloca %struct._GIOChannel*, align 8
  %cond.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %midi = alloca %struct._ControllerMidi*, align 8
  %status = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %buf = alloca [15 x i8], align 1
  %size = alloca i64, align 8
  %pos = alloca i32, align 4
  %state = alloca i8*, align 8
  store %struct._GIOChannel* %io, %struct._GIOChannel** %io.addr, align 8
  store i32 %cond, i32* %cond.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @controller_midi_get_type()
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._ControllerMidi*
  store %struct._ControllerMidi* %2, %struct._ControllerMidi** %midi, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  store i32 0, i32* %pos, align 4
  %3 = load %struct._GIOChannel*, %struct._GIOChannel** %io.addr, align 8
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %buf, i32 0, i32 0
  %call2 = call i32 @g_io_channel_read_chars(%struct._GIOChannel* %3, i8* %arraydecay, i64 15, i64* %size, %struct._GError** %error)
  store i32 %call2, i32* %status, align 4
  %4 = load i32, i32* %status, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %entry, %entry
  %5 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %io_id = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %5, i32 0, i32 4
  %6 = load i32, i32* %io_id, align 4
  %call3 = call i32 @g_source_remove(i32 %6)
  %7 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %io_id4 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %7, i32 0, i32 4
  store i32 0, i32* %io_id4, align 4
  %8 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %io5 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %8, i32 0, i32 3
  %9 = load %struct._GIOChannel*, %struct._GIOChannel** %io5, align 8
  call void @g_io_channel_unref(%struct._GIOChannel* %9)
  %10 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %io6 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %10, i32 0, i32 3
  store %struct._GIOChannel* null, %struct._GIOChannel** %io6, align 8
  %11 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %11, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %call7 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0)) #5
  %12 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %12, i32 0, i32 2
  %13 = load i8*, i8** %message, align 8
  %call8 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call7, i8* %13)
  store i8* %call8, i8** %state, align 8
  %14 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %15 = bitcast %struct._ControllerMidi* %14 to i8*
  %16 = load i8*, i8** %state, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* %16, i8* null)
  %17 = load i8*, i8** %state, align 8
  call void @g_free(i8* %17)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %18 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %19 = bitcast %struct._ControllerMidi* %18 to i8*
  %call9 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0)) #5
  call void (i8*, i8*, ...) @g_object_set(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* %call9, i8* null)
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
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.207, %if.then.182, %if.then.131, %if.then.69, %if.then.61, %if.end.57, %sw.epilog
  %20 = load i32, i32* %pos, align 4
  %conv = sext i32 %20 to i64
  %21 = load i64, i64* %size, align 8
  %cmp = icmp ult i64 %conv, %21
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds [15 x i8], [15 x i8]* %buf, i32 0, i64 %idxprom
  %23 = load i8, i8* %arrayidx, align 1
  %conv12 = zext i8 %23 to i32
  %and = and i32 %conv12, 128
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %if.then.14, label %if.end.58

if.then.14:                                       ; preds = %while.body
  %24 = load i32, i32* %pos, align 4
  %idxprom15 = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds [15 x i8], [15 x i8]* %buf, i32 0, i64 %idxprom15
  %25 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %25 to i32
  %cmp18 = icmp sge i32 %conv17, 248
  br i1 %cmp18, label %if.then.20, label %if.else.26

if.then.20:                                       ; preds = %if.then.14
  %26 = load i32, i32* %pos, align 4
  %idxprom21 = sext i32 %26 to i64
  %arrayidx22 = getelementptr inbounds [15 x i8], [15 x i8]* %buf, i32 0, i64 %idxprom21
  %27 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %27 to i32
  switch i32 %conv23, label %sw.epilog.25 [
    i32 248, label %sw.bb.24
    i32 249, label %sw.bb.24
    i32 250, label %sw.bb.24
    i32 251, label %sw.bb.24
    i32 252, label %sw.bb.24
    i32 253, label %sw.bb.24
    i32 254, label %sw.bb.24
    i32 255, label %sw.bb.24
  ]

sw.bb.24:                                         ; preds = %if.then.20, %if.then.20, %if.then.20, %if.then.20, %if.then.20, %if.then.20, %if.then.20, %if.then.20
  br label %sw.epilog.25

sw.epilog.25:                                     ; preds = %if.then.20, %sw.bb.24
  br label %if.end.57

if.else.26:                                       ; preds = %if.then.14
  %28 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %swallow = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %28, i32 0, i32 5
  store i32 0, i32* %swallow, align 4
  %29 = load i32, i32* %pos, align 4
  %idxprom27 = sext i32 %29 to i64
  %arrayidx28 = getelementptr inbounds [15 x i8], [15 x i8]* %buf, i32 0, i64 %idxprom27
  %30 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %30 to i32
  %cmp30 = icmp sge i32 %conv29, 240
  br i1 %cmp30, label %if.then.32, label %if.else.48

if.then.32:                                       ; preds = %if.else.26
  %31 = load i32, i32* %pos, align 4
  %idxprom33 = sext i32 %31 to i64
  %arrayidx34 = getelementptr inbounds [15 x i8], [15 x i8]* %buf, i32 0, i64 %idxprom33
  %32 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %32 to i32
  switch i32 %conv35, label %sw.epilog.47 [
    i32 240, label %sw.bb.36
    i32 241, label %sw.bb.38
    i32 242, label %sw.bb.40
    i32 243, label %sw.bb.42
    i32 244, label %sw.bb.44
    i32 245, label %sw.bb.44
    i32 246, label %sw.bb.45
    i32 247, label %sw.bb.46
  ]

sw.bb.36:                                         ; preds = %if.then.32
  %33 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %swallow37 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %33, i32 0, i32 5
  store i32 1, i32* %swallow37, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0))
  br label %sw.epilog.47

sw.bb.38:                                         ; preds = %if.then.32
  %34 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %swallow39 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %34, i32 0, i32 5
  store i32 1, i32* %swallow39, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0))
  br label %sw.epilog.47

sw.bb.40:                                         ; preds = %if.then.32
  %35 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %swallow41 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %35, i32 0, i32 5
  store i32 1, i32* %swallow41, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0))
  br label %sw.epilog.47

sw.bb.42:                                         ; preds = %if.then.32
  %36 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %swallow43 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %36, i32 0, i32 5
  store i32 1, i32* %swallow43, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0))
  br label %sw.epilog.47

sw.bb.44:                                         ; preds = %if.then.32, %if.then.32
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i32 0, i32 0))
  br label %sw.epilog.47

sw.bb.45:                                         ; preds = %if.then.32
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0))
  br label %sw.epilog.47

sw.bb.46:                                         ; preds = %if.then.32
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0))
  br label %sw.epilog.47

sw.epilog.47:                                     ; preds = %if.then.32, %sw.bb.46, %sw.bb.45, %sw.bb.44, %sw.bb.42, %sw.bb.40, %sw.bb.38, %sw.bb.36
  br label %if.end.56

if.else.48:                                       ; preds = %if.else.26
  %37 = load i32, i32* %pos, align 4
  %idxprom49 = sext i32 %37 to i64
  %arrayidx50 = getelementptr inbounds [15 x i8], [15 x i8]* %buf, i32 0, i64 %idxprom49
  %38 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %38 to i32
  %shr = ashr i32 %conv51, 4
  %39 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %command = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %39, i32 0, i32 6
  store i32 %shr, i32* %command, align 4
  %40 = load i32, i32* %pos, align 4
  %idxprom52 = sext i32 %40 to i64
  %arrayidx53 = getelementptr inbounds [15 x i8], [15 x i8]* %buf, i32 0, i64 %idxprom52
  %41 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %41 to i32
  %and55 = and i32 %conv54, 15
  %42 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %channel = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %42, i32 0, i32 7
  store i32 %and55, i32* %channel, align 4
  %43 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %key = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %43, i32 0, i32 8
  store i32 -1, i32* %key, align 4
  %44 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %velocity = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %44, i32 0, i32 9
  store i32 -1, i32* %velocity, align 4
  %45 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %msb = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %45, i32 0, i32 10
  store i32 -1, i32* %msb, align 4
  %46 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %lsb = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %46, i32 0, i32 11
  store i32 -1, i32* %lsb, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.48, %sw.epilog.47
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %sw.epilog.25
  %47 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %pos, align 4
  br label %while.cond

if.end.58:                                        ; preds = %while.body
  %48 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %swallow59 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %48, i32 0, i32 5
  %49 = load i32, i32* %swallow59, align 4
  %tobool60 = icmp ne i32 %49, 0
  br i1 %tobool60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.58
  %50 = load i32, i32* %pos, align 4
  %inc62 = add nsw i32 %50, 1
  store i32 %inc62, i32* %pos, align 4
  br label %while.cond

if.end.63:                                        ; preds = %if.end.58
  %51 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %command64 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %51, i32 0, i32 6
  %52 = load i32, i32* %command64, align 4
  switch i32 %52, label %sw.epilog.207 [
    i32 8, label %sw.bb.65
    i32 9, label %sw.bb.65
    i32 10, label %sw.bb.65
    i32 11, label %sw.bb.127
    i32 12, label %sw.bb.160
    i32 13, label %sw.bb.169
    i32 14, label %sw.bb.178
  ]

sw.bb.65:                                         ; preds = %if.end.63, %if.end.63, %if.end.63
  %53 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %key66 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %53, i32 0, i32 8
  %54 = load i32, i32* %key66, align 4
  %cmp67 = icmp eq i32 %54, -1
  br i1 %cmp67, label %if.then.69, label %if.end.75

if.then.69:                                       ; preds = %sw.bb.65
  %55 = load i32, i32* %pos, align 4
  %inc70 = add nsw i32 %55, 1
  store i32 %inc70, i32* %pos, align 4
  %idxprom71 = sext i32 %55 to i64
  %arrayidx72 = getelementptr inbounds [15 x i8], [15 x i8]* %buf, i32 0, i64 %idxprom71
  %56 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %56 to i32
  %57 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %key74 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %57, i32 0, i32 8
  store i32 %conv73, i32* %key74, align 4
  br label %while.cond

if.end.75:                                        ; preds = %sw.bb.65
  %58 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %velocity76 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %58, i32 0, i32 9
  %59 = load i32, i32* %velocity76, align 4
  %cmp77 = icmp eq i32 %59, -1
  br i1 %cmp77, label %if.then.79, label %if.end.85

if.then.79:                                       ; preds = %if.end.75
  %60 = load i32, i32* %pos, align 4
  %inc80 = add nsw i32 %60, 1
  store i32 %inc80, i32* %pos, align 4
  %idxprom81 = sext i32 %60 to i64
  %arrayidx82 = getelementptr inbounds [15 x i8], [15 x i8]* %buf, i32 0, i64 %idxprom81
  %61 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %61 to i32
  %62 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %velocity84 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %62, i32 0, i32 9
  store i32 %conv83, i32* %velocity84, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.79, %if.end.75
  %63 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %command86 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %63, i32 0, i32 6
  %64 = load i32, i32* %command86, align 4
  %cmp87 = icmp eq i32 %64, 9
  br i1 %cmp87, label %land.lhs.true, label %if.end.94

land.lhs.true:                                    ; preds = %if.end.85
  %65 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %velocity89 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %65, i32 0, i32 9
  %66 = load i32, i32* %velocity89, align 4
  %cmp90 = icmp eq i32 %66, 0
  br i1 %cmp90, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %land.lhs.true
  %67 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %command93 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %67, i32 0, i32 6
  store i32 8, i32* %command93, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %land.lhs.true, %if.end.85
  %68 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %command95 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %68, i32 0, i32 6
  %69 = load i32, i32* %command95, align 4
  %cmp96 = icmp eq i32 %69, 9
  br i1 %cmp96, label %if.then.98, label %if.else.106

if.then.98:                                       ; preds = %if.end.94
  %70 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %channel99 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %70, i32 0, i32 7
  %71 = load i32, i32* %channel99, align 4
  %72 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %key100 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %72, i32 0, i32 8
  %73 = load i32, i32* %key100, align 4
  %74 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %velocity101 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %74, i32 0, i32 9
  %75 = load i32, i32* %velocity101, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i32 0, i32 0), i32 %71, i32 %73, i32 %75)
  %76 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %77 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %channel102 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %77, i32 0, i32 7
  %78 = load i32, i32* %channel102, align 4
  %79 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %key103 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %79, i32 0, i32 8
  %80 = load i32, i32* %key103, align 4
  %81 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %velocity104 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %81, i32 0, i32 9
  %82 = load i32, i32* %velocity104, align 4
  %conv105 = sitofp i32 %82 to double
  %div = fdiv double %conv105, 1.270000e+02
  call void @midi_event(%struct._ControllerMidi* %76, i32 %78, i32 %80, double %div)
  br label %if.end.124

if.else.106:                                      ; preds = %if.end.94
  %83 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %command107 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %83, i32 0, i32 6
  %84 = load i32, i32* %command107, align 4
  %cmp108 = icmp eq i32 %84, 8
  br i1 %cmp108, label %if.then.110, label %if.else.119

if.then.110:                                      ; preds = %if.else.106
  %85 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %channel111 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %85, i32 0, i32 7
  %86 = load i32, i32* %channel111, align 4
  %87 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %key112 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %87, i32 0, i32 8
  %88 = load i32, i32* %key112, align 4
  %89 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %velocity113 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %89, i32 0, i32 9
  %90 = load i32, i32* %velocity113, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0), i32 %86, i32 %88, i32 %90)
  %91 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %92 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %channel114 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %92, i32 0, i32 7
  %93 = load i32, i32* %channel114, align 4
  %94 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %key115 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %94, i32 0, i32 8
  %95 = load i32, i32* %key115, align 4
  %add = add nsw i32 %95, 128
  %96 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %velocity116 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %96, i32 0, i32 9
  %97 = load i32, i32* %velocity116, align 4
  %conv117 = sitofp i32 %97 to double
  %div118 = fdiv double %conv117, 1.270000e+02
  call void @midi_event(%struct._ControllerMidi* %91, i32 %93, i32 %add, double %div118)
  br label %if.end.123

if.else.119:                                      ; preds = %if.else.106
  %98 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %channel120 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %98, i32 0, i32 7
  %99 = load i32, i32* %channel120, align 4
  %100 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %key121 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %100, i32 0, i32 8
  %101 = load i32, i32* %key121, align 4
  %102 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %velocity122 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %102, i32 0, i32 9
  %103 = load i32, i32* %velocity122, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.31, i32 0, i32 0), i32 %99, i32 %101, i32 %103)
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.119, %if.then.110
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.then.98
  %104 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %key125 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %104, i32 0, i32 8
  store i32 -1, i32* %key125, align 4
  %105 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %velocity126 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %105, i32 0, i32 9
  store i32 -1, i32* %velocity126, align 4
  br label %sw.epilog.207

sw.bb.127:                                        ; preds = %if.end.63
  %106 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %key128 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %106, i32 0, i32 8
  %107 = load i32, i32* %key128, align 4
  %cmp129 = icmp eq i32 %107, -1
  br i1 %cmp129, label %if.then.131, label %if.end.137

if.then.131:                                      ; preds = %sw.bb.127
  %108 = load i32, i32* %pos, align 4
  %inc132 = add nsw i32 %108, 1
  store i32 %inc132, i32* %pos, align 4
  %idxprom133 = sext i32 %108 to i64
  %arrayidx134 = getelementptr inbounds [15 x i8], [15 x i8]* %buf, i32 0, i64 %idxprom133
  %109 = load i8, i8* %arrayidx134, align 1
  %conv135 = zext i8 %109 to i32
  %110 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %key136 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %110, i32 0, i32 8
  store i32 %conv135, i32* %key136, align 4
  br label %while.cond

if.end.137:                                       ; preds = %sw.bb.127
  %111 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %velocity138 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %111, i32 0, i32 9
  %112 = load i32, i32* %velocity138, align 4
  %cmp139 = icmp eq i32 %112, -1
  br i1 %cmp139, label %if.then.141, label %if.end.147

if.then.141:                                      ; preds = %if.end.137
  %113 = load i32, i32* %pos, align 4
  %inc142 = add nsw i32 %113, 1
  store i32 %inc142, i32* %pos, align 4
  %idxprom143 = sext i32 %113 to i64
  %arrayidx144 = getelementptr inbounds [15 x i8], [15 x i8]* %buf, i32 0, i64 %idxprom143
  %114 = load i8, i8* %arrayidx144, align 1
  %conv145 = zext i8 %114 to i32
  %115 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %velocity146 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %115, i32 0, i32 9
  store i32 %conv145, i32* %velocity146, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.141, %if.end.137
  %116 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %channel148 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %116, i32 0, i32 7
  %117 = load i32, i32* %channel148, align 4
  %118 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %key149 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %118, i32 0, i32 8
  %119 = load i32, i32* %key149, align 4
  %120 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %velocity150 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %120, i32 0, i32 9
  %121 = load i32, i32* %velocity150, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i32 0, i32 0), i32 %117, i32 %119, i32 %121)
  %122 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %123 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %channel151 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %123, i32 0, i32 7
  %124 = load i32, i32* %channel151, align 4
  %125 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %key152 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %125, i32 0, i32 8
  %126 = load i32, i32* %key152, align 4
  %add153 = add nsw i32 %126, 128
  %add154 = add nsw i32 %add153, 128
  %127 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %velocity155 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %127, i32 0, i32 9
  %128 = load i32, i32* %velocity155, align 4
  %conv156 = sitofp i32 %128 to double
  %div157 = fdiv double %conv156, 1.270000e+02
  call void @midi_event(%struct._ControllerMidi* %122, i32 %124, i32 %add154, double %div157)
  %129 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %key158 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %129, i32 0, i32 8
  store i32 -1, i32* %key158, align 4
  %130 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %velocity159 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %130, i32 0, i32 9
  store i32 -1, i32* %velocity159, align 4
  br label %sw.epilog.207

sw.bb.160:                                        ; preds = %if.end.63
  %131 = load i32, i32* %pos, align 4
  %inc161 = add nsw i32 %131, 1
  store i32 %inc161, i32* %pos, align 4
  %idxprom162 = sext i32 %131 to i64
  %arrayidx163 = getelementptr inbounds [15 x i8], [15 x i8]* %buf, i32 0, i64 %idxprom162
  %132 = load i8, i8* %arrayidx163, align 1
  %conv164 = zext i8 %132 to i32
  %133 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %key165 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %133, i32 0, i32 8
  store i32 %conv164, i32* %key165, align 4
  %134 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %channel166 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %134, i32 0, i32 7
  %135 = load i32, i32* %channel166, align 4
  %136 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %key167 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %136, i32 0, i32 8
  %137 = load i32, i32* %key167, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i32 0, i32 0), i32 %135, i32 %137)
  %138 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %key168 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %138, i32 0, i32 8
  store i32 -1, i32* %key168, align 4
  br label %sw.epilog.207

sw.bb.169:                                        ; preds = %if.end.63
  %139 = load i32, i32* %pos, align 4
  %inc170 = add nsw i32 %139, 1
  store i32 %inc170, i32* %pos, align 4
  %idxprom171 = sext i32 %139 to i64
  %arrayidx172 = getelementptr inbounds [15 x i8], [15 x i8]* %buf, i32 0, i64 %idxprom171
  %140 = load i8, i8* %arrayidx172, align 1
  %conv173 = zext i8 %140 to i32
  %141 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %velocity174 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %141, i32 0, i32 9
  store i32 %conv173, i32* %velocity174, align 4
  %142 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %channel175 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %142, i32 0, i32 7
  %143 = load i32, i32* %channel175, align 4
  %144 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %velocity176 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %144, i32 0, i32 9
  %145 = load i32, i32* %velocity176, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i32 0, i32 0), i32 %143, i32 %145)
  %146 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %velocity177 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %146, i32 0, i32 9
  store i32 -1, i32* %velocity177, align 4
  br label %sw.epilog.207

sw.bb.178:                                        ; preds = %if.end.63
  %147 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %lsb179 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %147, i32 0, i32 11
  %148 = load i32, i32* %lsb179, align 4
  %cmp180 = icmp eq i32 %148, -1
  br i1 %cmp180, label %if.then.182, label %if.end.188

if.then.182:                                      ; preds = %sw.bb.178
  %149 = load i32, i32* %pos, align 4
  %inc183 = add nsw i32 %149, 1
  store i32 %inc183, i32* %pos, align 4
  %idxprom184 = sext i32 %149 to i64
  %arrayidx185 = getelementptr inbounds [15 x i8], [15 x i8]* %buf, i32 0, i64 %idxprom184
  %150 = load i8, i8* %arrayidx185, align 1
  %conv186 = zext i8 %150 to i32
  %151 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %lsb187 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %151, i32 0, i32 11
  store i32 %conv186, i32* %lsb187, align 4
  br label %while.cond

if.end.188:                                       ; preds = %sw.bb.178
  %152 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %msb189 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %152, i32 0, i32 10
  %153 = load i32, i32* %msb189, align 4
  %cmp190 = icmp eq i32 %153, -1
  br i1 %cmp190, label %if.then.192, label %if.end.198

if.then.192:                                      ; preds = %if.end.188
  %154 = load i32, i32* %pos, align 4
  %inc193 = add nsw i32 %154, 1
  store i32 %inc193, i32* %pos, align 4
  %idxprom194 = sext i32 %154 to i64
  %arrayidx195 = getelementptr inbounds [15 x i8], [15 x i8]* %buf, i32 0, i64 %idxprom194
  %155 = load i8, i8* %arrayidx195, align 1
  %conv196 = zext i8 %155 to i32
  %156 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %msb197 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %156, i32 0, i32 10
  store i32 %conv196, i32* %msb197, align 4
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.192, %if.end.188
  %157 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %lsb199 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %157, i32 0, i32 11
  %158 = load i32, i32* %lsb199, align 4
  %159 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %msb200 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %159, i32 0, i32 10
  %160 = load i32, i32* %msb200, align 4
  %shl = shl i32 %160, 7
  %or = or i32 %158, %shl
  %161 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %velocity201 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %161, i32 0, i32 9
  store i32 %or, i32* %velocity201, align 4
  %162 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %channel202 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %162, i32 0, i32 7
  %163 = load i32, i32* %channel202, align 4
  %164 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %velocity203 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %164, i32 0, i32 9
  %165 = load i32, i32* %velocity203, align 4
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i32 0, i32 0), i32 %163, i32 %165)
  %166 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %msb204 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %166, i32 0, i32 10
  store i32 -1, i32* %msb204, align 4
  %167 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %lsb205 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %167, i32 0, i32 11
  store i32 -1, i32* %lsb205, align 4
  %168 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi, align 8
  %velocity206 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %168, i32 0, i32 9
  store i32 -1, i32* %velocity206, align 4
  br label %sw.epilog.207

sw.epilog.207:                                    ; preds = %if.end.63, %if.end.198, %sw.bb.169, %sw.bb.160, %if.end.147, %if.end.124
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %sw.bb.10, %if.end
  %169 = load i32, i32* %retval
  ret i32 %169
}

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare i32 @g_io_channel_read_chars(%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**) #1

declare void @g_clear_error(%struct._GError**) #1

declare void @g_print(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @midi_event(%struct._ControllerMidi* %midi, i32 %channel, i32 %event_id, double %value) #0 {
entry:
  %midi.addr = alloca %struct._ControllerMidi*, align 8
  %channel.addr = alloca i32, align 4
  %event_id.addr = alloca i32, align 4
  %value.addr = alloca double, align 8
  %event = alloca %union._GimpControllerEvent, align 8
  store %struct._ControllerMidi* %midi, %struct._ControllerMidi** %midi.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store i32 %event_id, i32* %event_id.addr, align 4
  store double %value, double* %value.addr, align 8
  %0 = load i32, i32* %channel.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %midi_channel = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %1, i32 0, i32 2
  %2 = load i32, i32* %midi_channel, align 4
  %cmp1 = icmp eq i32 %2, -1
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %channel.addr, align 4
  %4 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %midi_channel3 = getelementptr inbounds %struct._ControllerMidi, %struct._ControllerMidi* %4, i32 0, i32 2
  %5 = load i32, i32* %midi_channel3, align 4
  %cmp4 = icmp eq i32 %3, %5
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %6 = bitcast %union._GimpControllerEvent* %event to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 48, i32 8, i1 false)
  %7 = bitcast i8* %6 to { i32, [44 x i8] }*
  %any = bitcast %union._GimpControllerEvent* %event to %struct._GimpControllerEventAny*
  %type = getelementptr inbounds %struct._GimpControllerEventAny, %struct._GimpControllerEventAny* %any, i32 0, i32 0
  store i32 1, i32* %type, align 4
  %8 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %9 = bitcast %struct._ControllerMidi* %8 to %struct._GTypeInstance*
  %call = call i64 @gimp_controller_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpController*
  %any6 = bitcast %union._GimpControllerEvent* %event to %struct._GimpControllerEventAny*
  %source = getelementptr inbounds %struct._GimpControllerEventAny, %struct._GimpControllerEventAny* %any6, i32 0, i32 1
  store %struct._GimpController* %10, %struct._GimpController** %source, align 8
  %11 = load i32, i32* %event_id.addr, align 4
  %any7 = bitcast %union._GimpControllerEvent* %event to %struct._GimpControllerEventAny*
  %event_id8 = getelementptr inbounds %struct._GimpControllerEventAny, %struct._GimpControllerEventAny* %any7, i32 0, i32 2
  store i32 %11, i32* %event_id8, align 4
  %value9 = bitcast %union._GimpControllerEvent* %event to %struct._GimpControllerEventValue*
  %value10 = getelementptr inbounds %struct._GimpControllerEventValue, %struct._GimpControllerEventValue* %value9, i32 0, i32 3
  %call11 = call %struct._GValue* @g_value_init(%struct._GValue* %value10, i64 60)
  %value12 = bitcast %union._GimpControllerEvent* %event to %struct._GimpControllerEventValue*
  %value13 = getelementptr inbounds %struct._GimpControllerEventValue, %struct._GimpControllerEventValue* %value12, i32 0, i32 3
  %12 = load double, double* %value.addr, align 8
  call void @g_value_set_double(%struct._GValue* %value13, double %12)
  %13 = load %struct._ControllerMidi*, %struct._ControllerMidi** %midi.addr, align 8
  %14 = bitcast %struct._ControllerMidi* %13 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_controller_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call14)
  %15 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpController*
  %call16 = call i32 @gimp_controller_event(%struct._GimpController* %15, %union._GimpControllerEvent* %event)
  %value17 = bitcast %union._GimpControllerEvent* %event to %struct._GimpControllerEventValue*
  %value18 = getelementptr inbounds %struct._GimpControllerEventValue, %struct._GimpControllerEventValue* %value17, i32 0, i32 3
  call void @g_value_unset(%struct._GValue* %value18)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare i32 @gimp_controller_event(%struct._GimpController*, %union._GimpControllerEvent*) #1

declare void @g_value_unset(%struct._GValue*) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

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

declare i32 @g_value_get_int(%struct._GValue*) #1

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
