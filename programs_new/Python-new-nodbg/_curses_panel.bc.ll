; ModuleID = './_curses_panel.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyType_Spec = type { i8*, i32, i32, i32, %struct.PyType_Slot* }
%struct.PyType_Slot = type { i32, i8* }
%struct._list_of_panels = type { %struct.PyCursesPanelObject*, %struct._list_of_panels* }
%struct.PyCursesPanelObject = type { %struct._object, %struct.panel*, %struct.PyCursesWindowObject* }
%struct.panel = type { %struct._win_st*, %struct.panel*, %struct.panel*, i8* }
%struct._win_st = type { i16, i16, i16, i16, i16, i16, i16, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ldat*, i16, i16, i32, i32, %struct._win_st*, %struct.pdat, i16, %struct.cchar_t }
%struct.ldat = type opaque
%struct.pdat = type { i16, i16, i16, i16, i16, i16 }
%struct.cchar_t = type { i64, [5 x i32] }
%struct.PyCursesWindowObject = type { %struct._object, %struct._win_st*, i8* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._curses_panelstate = type { %struct._object*, %struct._object* }

@_curses_panelmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* null, i64 16, %struct.PyMethodDef* getelementptr inbounds ([5 x %struct.PyMethodDef], [5 x %struct.PyMethodDef]* @PyCurses_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @_curses_panel_traverse, i32 (%struct._object*)* @_curses_panel_clear, void (i8*)* @_curses_panel_free }, align 8
@PyCursesPanel_Type_spec = internal global %struct.PyType_Spec { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i32 32, i32 0, i32 262144, %struct.PyType_Slot* getelementptr inbounds ([3 x %struct.PyType_Slot], [3 x %struct.PyType_Slot]* @PyCursesPanel_Type_slots, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [15 x i8] c"_curses._C_API\00", align 1
@PyCurses_API = internal global i8** null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"_curses_panel.error\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@PyCursesVersion = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"__version__\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"_curses_panel\00", align 1
@PyCurses_methods = internal global [5 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_bottom_panel to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_new_panel, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_top_panel to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_update_panels to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [13 x i8] c"bottom_panel\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"new_panel\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"top_panel\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"update_panels\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.10 = private unnamed_addr constant [37 x i8] c"panel_above: can't find Panel Object\00", align 1
@lop = internal global %struct._list_of_panels* null, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"O!\00", align 1
@catchall_NULL = internal global i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0), align 8
@.str.12 = private unnamed_addr constant [30 x i8] c"curses function returned NULL\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"panel_below: can't find Panel Object\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"_curses_panel.curses panel\00", align 1
@PyCursesPanel_Type_slots = internal global [3 x %struct.PyType_Slot] [%struct.PyType_Slot { i32 52, i8* bitcast (void (%struct.PyCursesPanelObject*)* @PyCursesPanel_Dealloc to i8*) }, %struct.PyType_Slot { i32 64, i8* bitcast ([13 x %struct.PyMethodDef]* @PyCursesPanel_Methods to i8*) }, %struct.PyType_Slot zeroinitializer], align 16
@PyCursesPanel_Methods = internal global [13 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesPanelObject*)* @PyCursesPanel_above to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesPanelObject*)* @PyCursesPanel_below to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesPanelObject*)* @PyCursesPanel_bottom_panel to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesPanelObject*)* @PyCursesPanel_panel_hidden to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesPanelObject*)* @PyCursesPanel_hide_panel to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesPanelObject*, %struct._object*)* @PyCursesPanel_move_panel to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesPanelObject*, %struct._object*)* @PyCursesPanel_replace_panel to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesPanelObject*, %struct._object*)* @PyCursesPanel_set_panel_userptr to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesPanelObject*)* @PyCursesPanel_show_panel to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesPanelObject*)* @PyCursesPanel_top_panel to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesPanelObject*)* @PyCursesPanel_userptr to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesPanelObject*)* @PyCursesPanel_window to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [36 x i8] c"remove_lop: can't find Panel Object\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"above\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"below\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"hidden\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"hide\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"set_userptr\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"userptr\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@catchall_ERR = internal global i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i32 0, i32 0), align 8
@.str.28 = private unnamed_addr constant [18 x i8] c"%s() returned ERR\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"curses function returned ERR\00", align 1
@_Py_FalseStruct = external global %struct._longobject, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@.str.30 = private unnamed_addr constant [11 x i8] c"hide_panel\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"ii;y,x\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"move_panel\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.33 = private unnamed_addr constant [30 x i8] c"replace requires one argument\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"O!;window object\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"replace_panel: can't find Panel Object\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"replace_panel() returned ERR\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"set_panel_userptr\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"show_panel\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"no userptr set\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"2.1\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__curses_panel() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_curses_panelmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %fail

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call %struct._object* @PyModule_GetDict(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %d, align 8
  %call2 = call %struct._object* @PyType_FromSpec(%struct.PyType_Spec* @PyCursesPanel_Type_spec)
  %2 = load %struct._object*, %struct._object** %m, align 8
  %call3 = call i8* @PyModule_GetState(%struct._object* %2)
  %3 = bitcast i8* %call3 to %struct._curses_panelstate*
  %PyCursesPanel_Type = getelementptr inbounds %struct._curses_panelstate, %struct._curses_panelstate* %3, i32 0, i32 1
  store %struct._object* %call2, %struct._object** %PyCursesPanel_Type, align 8
  %4 = load %struct._object*, %struct._object** %m, align 8
  %call4 = call i8* @PyModule_GetState(%struct._object* %4)
  %5 = bitcast i8* %call4 to %struct._curses_panelstate*
  %PyCursesPanel_Type5 = getelementptr inbounds %struct._curses_panelstate, %struct._curses_panelstate* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %PyCursesPanel_Type5, align 8
  %cmp6 = icmp eq %struct._object* %6, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  br label %fail

if.end.8:                                         ; preds = %if.end
  %call9 = call i8* @PyCapsule_Import(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1)
  %7 = bitcast i8* %call9 to i8**
  store i8** %7, i8*** @PyCurses_API, align 8
  %call10 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call10, null
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  br label %fail

if.end.12:                                        ; preds = %if.end.8
  %call13 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), %struct._object* null, %struct._object* null)
  %8 = load %struct._object*, %struct._object** %m, align 8
  %call14 = call i8* @PyModule_GetState(%struct._object* %8)
  %9 = bitcast i8* %call14 to %struct._curses_panelstate*
  %PyCursesError = getelementptr inbounds %struct._curses_panelstate, %struct._curses_panelstate* %9, i32 0, i32 0
  store %struct._object* %call13, %struct._object** %PyCursesError, align 8
  %10 = load %struct._object*, %struct._object** %d, align 8
  %11 = load %struct._object*, %struct._object** %m, align 8
  %call15 = call i8* @PyModule_GetState(%struct._object* %11)
  %12 = bitcast i8* %call15 to %struct._curses_panelstate*
  %PyCursesError16 = getelementptr inbounds %struct._curses_panelstate, %struct._curses_panelstate* %12, i32 0, i32 0
  %13 = load %struct._object*, %struct._object** %PyCursesError16, align 8
  %call17 = call i32 @PyDict_SetItemString(%struct._object* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), %struct._object* %13)
  %14 = load i8*, i8** @PyCursesVersion, align 8
  %call18 = call %struct._object* @PyUnicode_FromString(i8* %14)
  store %struct._object* %call18, %struct._object** %v, align 8
  %15 = load %struct._object*, %struct._object** %d, align 8
  %16 = load %struct._object*, %struct._object** %v, align 8
  %call19 = call i32 @PyDict_SetItemString(%struct._object* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct._object* %16)
  %17 = load %struct._object*, %struct._object** %d, align 8
  %18 = load %struct._object*, %struct._object** %v, align 8
  %call20 = call i32 @PyDict_SetItemString(%struct._object* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), %struct._object* %18)
  br label %do.body

do.body:                                          ; preds = %if.end.12
  %19 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp21 = icmp ne i64 %dec, 0
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body
  br label %if.end.23

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.23
  %26 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %26, %struct._object** %retval
  br label %return

fail:                                             ; preds = %if.then.11, %if.then.7, %if.then
  br label %do.body.24

do.body.24:                                       ; preds = %fail
  %27 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %27, %struct._object** %_py_xdecref_tmp, align 8
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp25 = icmp ne %struct._object* %28, null
  br i1 %cmp25, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %do.body.24
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %29 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp28, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %31, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %34(%struct._object* %35)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.body.24
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.39, %do.end
  %36 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %36
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare %struct._object* @PyModule_GetDict(%struct._object*) #1

declare %struct._object* @PyType_FromSpec(%struct.PyType_Spec*) #1

declare i8* @PyModule_GetState(%struct._object*) #1

declare i8* @PyCapsule_Import(i8*, i32) #1

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @_curses_panel_traverse(%struct._object* %m, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct._object*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct._object* %m, %struct._object** %m.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** %m.addr, align 8
  %call = call i8* @PyModule_GetState(%struct._object* %0)
  %1 = bitcast i8* %call to %struct._curses_panelstate*
  %PyCursesError = getelementptr inbounds %struct._curses_panelstate, %struct._curses_panelstate* %1, i32 0, i32 0
  %2 = load %struct._object*, %struct._object** %PyCursesError, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %4 = load %struct._object*, %struct._object** %m.addr, align 8
  %call1 = call i8* @PyModule_GetState(%struct._object* %4)
  %5 = bitcast i8* %call1 to %struct._curses_panelstate*
  %PyCursesError2 = getelementptr inbounds %struct._curses_panelstate, %struct._curses_panelstate* %5, i32 0, i32 0
  %6 = load %struct._object*, %struct._object** %PyCursesError2, align 8
  %7 = load i8*, i8** %arg.addr, align 8
  %call3 = call i32 %3(%struct._object* %6, i8* %7)
  store i32 %call3, i32* %vret, align 4
  %8 = load i32, i32* %vret, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %9 = load i32, i32* %vret, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.5
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @_curses_panel_clear(%struct._object* %m) #0 {
entry:
  %m.addr = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** %m.addr, align 8
  %call = call i8* @PyModule_GetState(%struct._object* %0)
  %1 = bitcast i8* %call to %struct._curses_panelstate*
  %PyCursesError = getelementptr inbounds %struct._curses_panelstate, %struct._curses_panelstate* %1, i32 0, i32 0
  %2 = load %struct._object*, %struct._object** %PyCursesError, align 8
  store %struct._object* %2, %struct._object** %_py_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %4 = load %struct._object*, %struct._object** %m.addr, align 8
  %call1 = call i8* @PyModule_GetState(%struct._object* %4)
  %5 = bitcast i8* %call1 to %struct._curses_panelstate*
  %PyCursesError2 = getelementptr inbounds %struct._curses_panelstate, %struct._curses_panelstate* %5, i32 0, i32 0
  store %struct._object* null, %struct._object** %PyCursesError2, align 8
  br label %do.body.3

do.body.3:                                        ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body.3
  br label %if.end

if.else:                                          ; preds = %do.body.3
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %do.body
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @_curses_panel_free(i8* %m) #0 {
entry:
  %m.addr = alloca i8*, align 8
  store i8* %m, i8** %m.addr, align 8
  %0 = load i8*, i8** %m.addr, align 8
  %1 = bitcast i8* %0 to %struct._object*
  %call = call i32 @_curses_panel_clear(%struct._object* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_bottom_panel(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %pan = alloca %struct.panel*, align 8
  %po = alloca %struct.PyCursesPanelObject*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i8**, i8*** @PyCurses_API, align 8
  %arrayidx = getelementptr i8*, i8** %0, i64 2
  %1 = load i8*, i8** %arrayidx, align 8
  %2 = bitcast i8* %1 to i32 ()*
  %call = call i32 %2()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.panel* @panel_above(%struct.panel* null)
  store %struct.panel* %call1, %struct.panel** %pan, align 8
  %3 = load %struct.panel*, %struct.panel** %pan, align 8
  %cmp = icmp eq %struct.panel* %3, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.panel*, %struct.panel** %pan, align 8
  %call4 = call %struct.PyCursesPanelObject* @find_po(%struct.panel* %5)
  store %struct.PyCursesPanelObject* %call4, %struct.PyCursesPanelObject** %po, align 8
  %6 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %cmp5 = icmp eq %struct.PyCursesPanelObject* %6, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  %7 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %8 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %9 = bitcast %struct.PyCursesPanelObject* %8 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc8 = add i64 %10, 1
  store i64 %inc8, i64* %ob_refcnt, align 8
  %11 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %12 = bitcast %struct.PyCursesPanelObject* %11 to %struct._object*
  store %struct._object* %12, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.2, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_new_panel(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %win = alloca %struct.PyCursesWindowObject*, align 8
  %pan = alloca %struct.panel*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load i8**, i8*** @PyCurses_API, align 8
  %arrayidx = getelementptr i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  %3 = bitcast i8* %2 to %struct._typeobject*
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), %struct._typeobject* %3, %struct.PyCursesWindowObject** %win)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %win, align 8
  %win1 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %4, i32 0, i32 1
  %5 = load %struct._win_st*, %struct._win_st** %win1, align 8
  %call2 = call %struct.panel* @new_panel(%struct._win_st* %5)
  store %struct.panel* %call2, %struct.panel** %pan, align 8
  %6 = load %struct.panel*, %struct.panel** %pan, align 8
  %cmp = icmp eq %struct.panel* %6, null
  br i1 %cmp, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_curses_panelmodule)
  %call5 = call i8* @PyModule_GetState(%struct._object* %call4)
  %7 = bitcast i8* %call5 to %struct._curses_panelstate*
  %PyCursesError = getelementptr inbounds %struct._curses_panelstate, %struct._curses_panelstate* %7, i32 0, i32 0
  %8 = load %struct._object*, %struct._object** %PyCursesError, align 8
  %9 = load i8*, i8** @catchall_NULL, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* %9)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %10 = load %struct.panel*, %struct.panel** %pan, align 8
  %11 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %win, align 8
  %call7 = call %struct._object* @PyCursesPanel_New(%struct.panel* %10, %struct.PyCursesWindowObject* %11)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.3, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_top_panel(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %pan = alloca %struct.panel*, align 8
  %po = alloca %struct.PyCursesPanelObject*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i8**, i8*** @PyCurses_API, align 8
  %arrayidx = getelementptr i8*, i8** %0, i64 2
  %1 = load i8*, i8** %arrayidx, align 8
  %2 = bitcast i8* %1 to i32 ()*
  %call = call i32 %2()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.panel* @panel_below(%struct.panel* null)
  store %struct.panel* %call1, %struct.panel** %pan, align 8
  %3 = load %struct.panel*, %struct.panel** %pan, align 8
  %cmp = icmp eq %struct.panel* %3, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.panel*, %struct.panel** %pan, align 8
  %call4 = call %struct.PyCursesPanelObject* @find_po(%struct.panel* %5)
  store %struct.PyCursesPanelObject* %call4, %struct.PyCursesPanelObject** %po, align 8
  %6 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %cmp5 = icmp eq %struct.PyCursesPanelObject* %6, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  %7 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %8 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %9 = bitcast %struct.PyCursesPanelObject* %8 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc8 = add i64 %10, 1
  store i64 %inc8, i64* %ob_refcnt, align 8
  %11 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %12 = bitcast %struct.PyCursesPanelObject* %11 to %struct._object*
  store %struct._object* %12, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.2, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_update_panels(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i8**, i8*** @PyCurses_API, align 8
  %arrayidx = getelementptr i8*, i8** %0, i64 2
  %1 = load i8*, i8** %arrayidx, align 8
  %2 = bitcast i8* %1 to i32 ()*
  %call = call i32 %2()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @update_panels()
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

declare %struct.panel* @panel_above(%struct.panel*) #1

; Function Attrs: nounwind uwtable
define internal %struct.PyCursesPanelObject* @find_po(%struct.panel* %pan) #0 {
entry:
  %retval = alloca %struct.PyCursesPanelObject*, align 8
  %pan.addr = alloca %struct.panel*, align 8
  %temp = alloca %struct._list_of_panels*, align 8
  store %struct.panel* %pan, %struct.panel** %pan.addr, align 8
  %0 = load %struct._list_of_panels*, %struct._list_of_panels** @lop, align 8
  store %struct._list_of_panels* %0, %struct._list_of_panels** %temp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct._list_of_panels*, %struct._list_of_panels** %temp, align 8
  %po = getelementptr inbounds %struct._list_of_panels, %struct._list_of_panels* %1, i32 0, i32 0
  %2 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %pan1 = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %2, i32 0, i32 1
  %3 = load %struct.panel*, %struct.panel** %pan1, align 8
  %4 = load %struct.panel*, %struct.panel** %pan.addr, align 8
  %cmp = icmp ne %struct.panel* %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._list_of_panels*, %struct._list_of_panels** %temp, align 8
  %next = getelementptr inbounds %struct._list_of_panels, %struct._list_of_panels* %5, i32 0, i32 1
  %6 = load %struct._list_of_panels*, %struct._list_of_panels** %next, align 8
  %cmp2 = icmp eq %struct._list_of_panels* %6, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store %struct.PyCursesPanelObject* null, %struct.PyCursesPanelObject** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct._list_of_panels*, %struct._list_of_panels** %temp, align 8
  %next3 = getelementptr inbounds %struct._list_of_panels, %struct._list_of_panels* %7, i32 0, i32 1
  %8 = load %struct._list_of_panels*, %struct._list_of_panels** %next3, align 8
  store %struct._list_of_panels* %8, %struct._list_of_panels** %temp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct._list_of_panels*, %struct._list_of_panels** %temp, align 8
  %po4 = getelementptr inbounds %struct._list_of_panels, %struct._list_of_panels* %9, i32 0, i32 0
  %10 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po4, align 8
  store %struct.PyCursesPanelObject* %10, %struct.PyCursesPanelObject** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %11 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %retval
  ret %struct.PyCursesPanelObject* %11
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare %struct.panel* @new_panel(%struct._win_st*) #1

declare %struct._object* @PyState_FindModule(%struct.PyModuleDef*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesPanel_New(%struct.panel* %pan, %struct.PyCursesWindowObject* %wo) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %pan.addr = alloca %struct.panel*, align 8
  %wo.addr = alloca %struct.PyCursesWindowObject*, align 8
  %po = alloca %struct.PyCursesPanelObject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.panel* %pan, %struct.panel** %pan.addr, align 8
  store %struct.PyCursesWindowObject* %wo, %struct.PyCursesWindowObject** %wo.addr, align 8
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_curses_panelmodule)
  %call1 = call i8* @PyModule_GetState(%struct._object* %call)
  %0 = bitcast i8* %call1 to %struct._curses_panelstate*
  %PyCursesPanel_Type = getelementptr inbounds %struct._curses_panelstate, %struct._curses_panelstate* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %PyCursesPanel_Type, align 8
  %2 = bitcast %struct._object* %1 to %struct._typeobject*
  %tp_basicsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 2
  %3 = load i64, i64* %tp_basicsize, align 8
  %call2 = call i8* @PyObject_Malloc(i64 %3)
  %4 = bitcast i8* %call2 to %struct._object*
  %call3 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_curses_panelmodule)
  %call4 = call i8* @PyModule_GetState(%struct._object* %call3)
  %5 = bitcast i8* %call4 to %struct._curses_panelstate*
  %PyCursesPanel_Type5 = getelementptr inbounds %struct._curses_panelstate, %struct._curses_panelstate* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %PyCursesPanel_Type5, align 8
  %7 = bitcast %struct._object* %6 to %struct._typeobject*
  %call6 = call %struct._object* @PyObject_Init(%struct._object* %4, %struct._typeobject* %7)
  %8 = bitcast %struct._object* %call6 to %struct.PyCursesPanelObject*
  store %struct.PyCursesPanelObject* %8, %struct.PyCursesPanelObject** %po, align 8
  %9 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %cmp = icmp eq %struct.PyCursesPanelObject* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.panel*, %struct.panel** %pan.addr, align 8
  %11 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %pan7 = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %11, i32 0, i32 1
  store %struct.panel* %10, %struct.panel** %pan7, align 8
  %12 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %call8 = call i32 @insert_lop(%struct.PyCursesPanelObject* %12)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end
  %13 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %wo11 = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %13, i32 0, i32 2
  store %struct.PyCursesWindowObject* null, %struct.PyCursesWindowObject** %wo11, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.10
  %14 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %15 = bitcast %struct.PyCursesPanelObject* %14 to %struct._object*
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  %22 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %wo.addr, align 8
  %23 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %wo16 = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %23, i32 0, i32 2
  store %struct.PyCursesWindowObject* %22, %struct.PyCursesWindowObject** %wo16, align 8
  %24 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %wo.addr, align 8
  %25 = bitcast %struct.PyCursesWindowObject* %24 to %struct._object*
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt17, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %ob_refcnt17, align 8
  %27 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %28 = bitcast %struct.PyCursesPanelObject* %27 to %struct._object*
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.15, %do.end, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

declare %struct._object* @PyObject_Init(%struct._object*, %struct._typeobject*) #1

declare i8* @PyObject_Malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @insert_lop(%struct.PyCursesPanelObject* %po) #0 {
entry:
  %retval = alloca i32, align 4
  %po.addr = alloca %struct.PyCursesPanelObject*, align 8
  %new = alloca %struct._list_of_panels*, align 8
  store %struct.PyCursesPanelObject* %po, %struct.PyCursesPanelObject** %po.addr, align 8
  %call = call i8* @PyMem_Malloc(i64 16)
  %0 = bitcast i8* %call to %struct._list_of_panels*
  store %struct._list_of_panels* %0, %struct._list_of_panels** %new, align 8
  %cmp = icmp eq %struct._list_of_panels* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po.addr, align 8
  %2 = load %struct._list_of_panels*, %struct._list_of_panels** %new, align 8
  %po2 = getelementptr inbounds %struct._list_of_panels, %struct._list_of_panels* %2, i32 0, i32 0
  store %struct.PyCursesPanelObject* %1, %struct.PyCursesPanelObject** %po2, align 8
  %3 = load %struct._list_of_panels*, %struct._list_of_panels** @lop, align 8
  %4 = load %struct._list_of_panels*, %struct._list_of_panels** %new, align 8
  %next = getelementptr inbounds %struct._list_of_panels, %struct._list_of_panels* %4, i32 0, i32 1
  store %struct._list_of_panels* %3, %struct._list_of_panels** %next, align 8
  %5 = load %struct._list_of_panels*, %struct._list_of_panels** %new, align 8
  store %struct._list_of_panels* %5, %struct._list_of_panels** @lop, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

declare %struct.panel* @panel_below(%struct.panel*) #1

declare void @update_panels() #1

; Function Attrs: nounwind uwtable
define internal void @PyCursesPanel_Dealloc(%struct.PyCursesPanelObject* %po) #0 {
entry:
  %po.addr = alloca %struct.PyCursesPanelObject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyCursesPanelObject* %po, %struct.PyCursesPanelObject** %po.addr, align 8
  %0 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po.addr, align 8
  %pan = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %0, i32 0, i32 1
  %1 = load %struct.panel*, %struct.panel** %pan, align 8
  %call = call i32 @del_panel(%struct.panel* %1)
  %2 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po.addr, align 8
  %wo = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %2, i32 0, i32 2
  %3 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %wo, align 8
  %cmp = icmp ne %struct.PyCursesWindowObject* %3, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po.addr, align 8
  %wo1 = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %4, i32 0, i32 2
  %5 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %wo1, align 8
  %6 = bitcast %struct.PyCursesWindowObject* %5 to %struct._object*
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  %13 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po.addr, align 8
  call void @remove_lop(%struct.PyCursesPanelObject* %13)
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %entry
  %14 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po.addr, align 8
  %15 = bitcast %struct.PyCursesPanelObject* %14 to i8*
  call void @PyObject_Free(i8* %15)
  ret void
}

declare i32 @del_panel(%struct.panel*) #1

; Function Attrs: nounwind uwtable
define internal void @remove_lop(%struct.PyCursesPanelObject* %po) #0 {
entry:
  %po.addr = alloca %struct.PyCursesPanelObject*, align 8
  %temp = alloca %struct._list_of_panels*, align 8
  %n = alloca %struct._list_of_panels*, align 8
  store %struct.PyCursesPanelObject* %po, %struct.PyCursesPanelObject** %po.addr, align 8
  %0 = load %struct._list_of_panels*, %struct._list_of_panels** @lop, align 8
  store %struct._list_of_panels* %0, %struct._list_of_panels** %temp, align 8
  %1 = load %struct._list_of_panels*, %struct._list_of_panels** %temp, align 8
  %po1 = getelementptr inbounds %struct._list_of_panels, %struct._list_of_panels* %1, i32 0, i32 0
  %2 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po1, align 8
  %3 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po.addr, align 8
  %cmp = icmp eq %struct.PyCursesPanelObject* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._list_of_panels*, %struct._list_of_panels** %temp, align 8
  %next = getelementptr inbounds %struct._list_of_panels, %struct._list_of_panels* %4, i32 0, i32 1
  %5 = load %struct._list_of_panels*, %struct._list_of_panels** %next, align 8
  store %struct._list_of_panels* %5, %struct._list_of_panels** @lop, align 8
  %6 = load %struct._list_of_panels*, %struct._list_of_panels** %temp, align 8
  %7 = bitcast %struct._list_of_panels* %6 to i8*
  call void @PyMem_Free(i8* %7)
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %if.end
  %8 = load %struct._list_of_panels*, %struct._list_of_panels** %temp, align 8
  %next2 = getelementptr inbounds %struct._list_of_panels, %struct._list_of_panels* %8, i32 0, i32 1
  %9 = load %struct._list_of_panels*, %struct._list_of_panels** %next2, align 8
  %cmp3 = icmp eq %struct._list_of_panels* %9, null
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %10 = load %struct._list_of_panels*, %struct._list_of_panels** %temp, align 8
  %next4 = getelementptr inbounds %struct._list_of_panels, %struct._list_of_panels* %10, i32 0, i32 1
  %11 = load %struct._list_of_panels*, %struct._list_of_panels** %next4, align 8
  %po5 = getelementptr inbounds %struct._list_of_panels, %struct._list_of_panels* %11, i32 0, i32 0
  %12 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po5, align 8
  %13 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po.addr, align 8
  %cmp6 = icmp ne %struct.PyCursesPanelObject* %12, %13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %14 = phi i1 [ true, %while.cond ], [ %cmp6, %lor.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %15 = load %struct._list_of_panels*, %struct._list_of_panels** %temp, align 8
  %next7 = getelementptr inbounds %struct._list_of_panels, %struct._list_of_panels* %15, i32 0, i32 1
  %16 = load %struct._list_of_panels*, %struct._list_of_panels** %next7, align 8
  %cmp8 = icmp eq %struct._list_of_panels* %16, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %while.body
  %17 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %while.body
  %18 = load %struct._list_of_panels*, %struct._list_of_panels** %temp, align 8
  %next11 = getelementptr inbounds %struct._list_of_panels, %struct._list_of_panels* %18, i32 0, i32 1
  %19 = load %struct._list_of_panels*, %struct._list_of_panels** %next11, align 8
  store %struct._list_of_panels* %19, %struct._list_of_panels** %temp, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %20 = load %struct._list_of_panels*, %struct._list_of_panels** %temp, align 8
  %next12 = getelementptr inbounds %struct._list_of_panels, %struct._list_of_panels* %20, i32 0, i32 1
  %21 = load %struct._list_of_panels*, %struct._list_of_panels** %next12, align 8
  %next13 = getelementptr inbounds %struct._list_of_panels, %struct._list_of_panels* %21, i32 0, i32 1
  %22 = load %struct._list_of_panels*, %struct._list_of_panels** %next13, align 8
  store %struct._list_of_panels* %22, %struct._list_of_panels** %n, align 8
  %23 = load %struct._list_of_panels*, %struct._list_of_panels** %temp, align 8
  %next14 = getelementptr inbounds %struct._list_of_panels, %struct._list_of_panels* %23, i32 0, i32 1
  %24 = load %struct._list_of_panels*, %struct._list_of_panels** %next14, align 8
  %25 = bitcast %struct._list_of_panels* %24 to i8*
  call void @PyMem_Free(i8* %25)
  %26 = load %struct._list_of_panels*, %struct._list_of_panels** %n, align 8
  %27 = load %struct._list_of_panels*, %struct._list_of_panels** %temp, align 8
  %next15 = getelementptr inbounds %struct._list_of_panels, %struct._list_of_panels* %27, i32 0, i32 1
  store %struct._list_of_panels* %26, %struct._list_of_panels** %next15, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then.9, %if.then
  ret void
}

declare void @PyObject_Free(i8*) #1

declare void @PyMem_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesPanel_above(%struct.PyCursesPanelObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesPanelObject*, align 8
  %pan = alloca %struct.panel*, align 8
  %po = alloca %struct.PyCursesPanelObject*, align 8
  store %struct.PyCursesPanelObject* %self, %struct.PyCursesPanelObject** %self.addr, align 8
  %0 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %self.addr, align 8
  %pan1 = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %0, i32 0, i32 1
  %1 = load %struct.panel*, %struct.panel** %pan1, align 8
  %call = call %struct.panel* @panel_above(%struct.panel* %1)
  store %struct.panel* %call, %struct.panel** %pan, align 8
  %2 = load %struct.panel*, %struct.panel** %pan, align 8
  %cmp = icmp eq %struct.panel* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.panel*, %struct.panel** %pan, align 8
  %call2 = call %struct.PyCursesPanelObject* @find_po(%struct.panel* %4)
  store %struct.PyCursesPanelObject* %call2, %struct.PyCursesPanelObject** %po, align 8
  %5 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %cmp3 = icmp eq %struct.PyCursesPanelObject* %5, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %7 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %8 = bitcast %struct.PyCursesPanelObject* %7 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc6 = add i64 %9, 1
  store i64 %inc6, i64* %ob_refcnt, align 8
  %10 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %11 = bitcast %struct.PyCursesPanelObject* %10 to %struct._object*
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesPanel_below(%struct.PyCursesPanelObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesPanelObject*, align 8
  %pan = alloca %struct.panel*, align 8
  %po = alloca %struct.PyCursesPanelObject*, align 8
  store %struct.PyCursesPanelObject* %self, %struct.PyCursesPanelObject** %self.addr, align 8
  %0 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %self.addr, align 8
  %pan1 = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %0, i32 0, i32 1
  %1 = load %struct.panel*, %struct.panel** %pan1, align 8
  %call = call %struct.panel* @panel_below(%struct.panel* %1)
  store %struct.panel* %call, %struct.panel** %pan, align 8
  %2 = load %struct.panel*, %struct.panel** %pan, align 8
  %cmp = icmp eq %struct.panel* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.panel*, %struct.panel** %pan, align 8
  %call2 = call %struct.PyCursesPanelObject* @find_po(%struct.panel* %4)
  store %struct.PyCursesPanelObject* %call2, %struct.PyCursesPanelObject** %po, align 8
  %5 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %cmp3 = icmp eq %struct.PyCursesPanelObject* %5, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %7 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %8 = bitcast %struct.PyCursesPanelObject* %7 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc6 = add i64 %9, 1
  store i64 %inc6, i64* %ob_refcnt, align 8
  %10 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %11 = bitcast %struct.PyCursesPanelObject* %10 to %struct._object*
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesPanel_bottom_panel(%struct.PyCursesPanelObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyCursesPanelObject*, align 8
  store %struct.PyCursesPanelObject* %self, %struct.PyCursesPanelObject** %self.addr, align 8
  %0 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %self.addr, align 8
  %pan = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %0, i32 0, i32 1
  %1 = load %struct.panel*, %struct.panel** %pan, align 8
  %call = call i32 @bottom_panel(%struct.panel* %1)
  %call1 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  ret %struct._object* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesPanel_panel_hidden(%struct.PyCursesPanelObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesPanelObject*, align 8
  store %struct.PyCursesPanelObject* %self, %struct.PyCursesPanelObject** %self.addr, align 8
  %0 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %self.addr, align 8
  %pan = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %0, i32 0, i32 1
  %1 = load %struct.panel*, %struct.panel** %pan, align 8
  %call = call i32 @panel_hidden(%struct.panel* %1)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc1 = add i64 %3, 1
  store i64 %inc1, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesPanel_hide_panel(%struct.PyCursesPanelObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyCursesPanelObject*, align 8
  store %struct.PyCursesPanelObject* %self, %struct.PyCursesPanelObject** %self.addr, align 8
  %0 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %self.addr, align 8
  %pan = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %0, i32 0, i32 1
  %1 = load %struct.panel*, %struct.panel** %pan, align 8
  %call = call i32 @hide_panel(%struct.panel* %1)
  %call1 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0))
  ret %struct._object* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesPanel_move_panel(%struct.PyCursesPanelObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesPanelObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %arg1 = alloca i32, align 4
  %arg2 = alloca i32, align 4
  store %struct.PyCursesPanelObject* %self, %struct.PyCursesPanelObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32* %arg1, i32* %arg2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %self.addr, align 8
  %pan = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %1, i32 0, i32 1
  %2 = load %struct.panel*, %struct.panel** %pan, align 8
  %3 = load i32, i32* %arg1, align 4
  %4 = load i32, i32* %arg2, align 4
  %call1 = call i32 @move_panel(%struct.panel* %2, i32 %3, i32 %4)
  %call2 = call %struct._object* @PyCursesCheckERR(i32 %call1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesPanel_replace_panel(%struct.PyCursesPanelObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesPanelObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %po = alloca %struct.PyCursesPanelObject*, align 8
  %temp = alloca %struct.PyCursesWindowObject*, align 8
  %rtn = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyCursesPanelObject* %self, %struct.PyCursesPanelObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load i8**, i8*** @PyCurses_API, align 8
  %arrayidx = getelementptr i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  %5 = bitcast i8* %4 to %struct._typeobject*
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), %struct._typeobject* %5, %struct.PyCursesWindowObject** %temp)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %self.addr, align 8
  %pan = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %6, i32 0, i32 1
  %7 = load %struct.panel*, %struct.panel** %pan, align 8
  %call4 = call %struct.PyCursesPanelObject* @find_po(%struct.panel* %7)
  store %struct.PyCursesPanelObject* %call4, %struct.PyCursesPanelObject** %po, align 8
  %8 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %cmp5 = icmp eq %struct.PyCursesPanelObject* %8, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  %9 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %10 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %self.addr, align 8
  %pan8 = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %10, i32 0, i32 1
  %11 = load %struct.panel*, %struct.panel** %pan8, align 8
  %12 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %temp, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %12, i32 0, i32 1
  %13 = load %struct._win_st*, %struct._win_st** %win, align 8
  %call9 = call i32 @replace_panel(%struct.panel* %11, %struct._win_st* %13)
  store i32 %call9, i32* %rtn, align 4
  %14 = load i32, i32* %rtn, align 4
  %cmp10 = icmp eq i32 %14, -1
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.7
  %call12 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_curses_panelmodule)
  %call13 = call i8* @PyModule_GetState(%struct._object* %call12)
  %15 = bitcast i8* %call13 to %struct._curses_panelstate*
  %PyCursesError = getelementptr inbounds %struct._curses_panelstate, %struct._curses_panelstate* %15, i32 0, i32 0
  %16 = load %struct._object*, %struct._object** %PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.7
  br label %do.body

do.body:                                          ; preds = %if.end.14
  %17 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %wo = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %17, i32 0, i32 2
  %18 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %wo, align 8
  %19 = bitcast %struct.PyCursesWindowObject* %18 to %struct._object*
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.17
  %26 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %temp, align 8
  %27 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %wo18 = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %27, i32 0, i32 2
  store %struct.PyCursesWindowObject* %26, %struct.PyCursesWindowObject** %wo18, align 8
  %28 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %po, align 8
  %wo19 = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %28, i32 0, i32 2
  %29 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %wo19, align 8
  %30 = bitcast %struct.PyCursesWindowObject* %29 to %struct._object*
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt20, align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* %ob_refcnt20, align 8
  %32 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc21 = add i64 %32, 1
  store i64 %inc21, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.11, %if.then.6, %if.then.2, %if.then
  %33 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %33
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesPanel_set_panel_userptr(%struct.PyCursesPanelObject* %self, %struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesPanelObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %oldobj = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  store %struct.PyCursesPanelObject* %self, %struct.PyCursesPanelObject** %self.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load i8**, i8*** @PyCurses_API, align 8
  %arrayidx = getelementptr i8*, i8** %0, i64 2
  %1 = load i8*, i8** %arrayidx, align 8
  %2 = bitcast i8* %1 to i32 ()*
  %call = call i32 %2()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %self.addr, align 8
  %pan = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %5, i32 0, i32 1
  %6 = load %struct.panel*, %struct.panel** %pan, align 8
  %call1 = call i8* @panel_userptr(%struct.panel* %6)
  %7 = bitcast i8* %call1 to %struct._object*
  store %struct._object* %7, %struct._object** %oldobj, align 8
  %8 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %self.addr, align 8
  %pan2 = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %8, i32 0, i32 1
  %9 = load %struct.panel*, %struct.panel** %pan2, align 8
  %10 = load %struct._object*, %struct._object** %obj.addr, align 8
  %11 = bitcast %struct._object* %10 to i8*
  %call3 = call i32 @set_panel_userptr(%struct.panel* %9, i8* %11)
  store i32 %call3, i32* %rc, align 4
  %12 = load i32, i32* %rc, align 4
  %cmp = icmp eq i32 %12, -1
  br i1 %cmp, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %13 = load %struct._object*, %struct._object** %obj.addr, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt5 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt5, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt5, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %if.end
  br label %do.body.10

do.body.10:                                       ; preds = %if.end.9
  %20 = load %struct._object*, %struct._object** %oldobj, align 8
  store %struct._object* %20, %struct._object** %_py_xdecref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp11 = icmp ne %struct._object* %21, null
  br i1 %cmp11, label %if.then.12, label %if.end.24

if.then.12:                                       ; preds = %do.body.10
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp14, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %24, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.13
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %27(%struct._object* %28)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %if.end.24

if.end.24:                                        ; preds = %do.end.23, %do.body.10
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %29 = load i32, i32* %rc, align 4
  %call26 = call %struct._object* @PyCursesCheckERR(i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0))
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.25, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesPanel_show_panel(%struct.PyCursesPanelObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyCursesPanelObject*, align 8
  store %struct.PyCursesPanelObject* %self, %struct.PyCursesPanelObject** %self.addr, align 8
  %0 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %self.addr, align 8
  %pan = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %0, i32 0, i32 1
  %1 = load %struct.panel*, %struct.panel** %pan, align 8
  %call = call i32 @show_panel(%struct.panel* %1)
  %call1 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0))
  ret %struct._object* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesPanel_top_panel(%struct.PyCursesPanelObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyCursesPanelObject*, align 8
  store %struct.PyCursesPanelObject* %self, %struct.PyCursesPanelObject** %self.addr, align 8
  %0 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %self.addr, align 8
  %pan = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %0, i32 0, i32 1
  %1 = load %struct.panel*, %struct.panel** %pan, align 8
  %call = call i32 @top_panel(%struct.panel* %1)
  %call1 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  ret %struct._object* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesPanel_userptr(%struct.PyCursesPanelObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesPanelObject*, align 8
  %obj = alloca %struct._object*, align 8
  store %struct.PyCursesPanelObject* %self, %struct.PyCursesPanelObject** %self.addr, align 8
  %0 = load i8**, i8*** @PyCurses_API, align 8
  %arrayidx = getelementptr i8*, i8** %0, i64 2
  %1 = load i8*, i8** %arrayidx, align 8
  %2 = bitcast i8* %1 to i32 ()*
  %call = call i32 %2()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %self.addr, align 8
  %pan = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %3, i32 0, i32 1
  %4 = load %struct.panel*, %struct.panel** %pan, align 8
  %call1 = call i8* @panel_userptr(%struct.panel* %4)
  %5 = bitcast i8* %call1 to %struct._object*
  store %struct._object* %5, %struct._object** %obj, align 8
  %6 = load %struct._object*, %struct._object** %obj, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_curses_panelmodule)
  %call4 = call i8* @PyModule_GetState(%struct._object* %call3)
  %7 = bitcast i8* %call4 to %struct._curses_panelstate*
  %PyCursesError = getelementptr inbounds %struct._curses_panelstate, %struct._curses_panelstate* %7, i32 0, i32 0
  %8 = load %struct._object*, %struct._object** %PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %obj, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %11 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesPanel_window(%struct.PyCursesPanelObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyCursesPanelObject*, align 8
  store %struct.PyCursesPanelObject* %self, %struct.PyCursesPanelObject** %self.addr, align 8
  %0 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %self.addr, align 8
  %wo = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %0, i32 0, i32 2
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %wo, align 8
  %2 = bitcast %struct.PyCursesWindowObject* %1 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %4 = load %struct.PyCursesPanelObject*, %struct.PyCursesPanelObject** %self.addr, align 8
  %wo1 = getelementptr inbounds %struct.PyCursesPanelObject, %struct.PyCursesPanelObject* %4, i32 0, i32 2
  %5 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %wo1, align 8
  %6 = bitcast %struct.PyCursesWindowObject* %5 to %struct._object*
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesCheckERR(i32 %code, i8* %fname) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %code.addr = alloca i32, align 4
  %fname.addr = alloca i8*, align 8
  store i32 %code, i32* %code.addr, align 4
  store i8* %fname, i8** %fname.addr, align 8
  %0 = load i32, i32* %code.addr, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %fname.addr, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then.2, label %if.else.4

if.then.2:                                        ; preds = %if.else
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_curses_panelmodule)
  %call3 = call i8* @PyModule_GetState(%struct._object* %call)
  %3 = bitcast i8* %call3 to %struct._curses_panelstate*
  %PyCursesError = getelementptr inbounds %struct._curses_panelstate, %struct._curses_panelstate* %3, i32 0, i32 0
  %4 = load %struct._object*, %struct._object** %PyCursesError, align 8
  %5 = load i8*, i8** @catchall_ERR, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* %5)
  br label %if.end

if.else.4:                                        ; preds = %if.else
  %call5 = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @_curses_panelmodule)
  %call6 = call i8* @PyModule_GetState(%struct._object* %call5)
  %6 = bitcast i8* %call6 to %struct._curses_panelstate*
  %PyCursesError7 = getelementptr inbounds %struct._curses_panelstate, %struct._curses_panelstate* %6, i32 0, i32 0
  %7 = load %struct._object*, %struct._object** %PyCursesError7, align 8
  %8 = load i8*, i8** %fname.addr, align 8
  %call8 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.2
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

declare i32 @bottom_panel(%struct.panel*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i32 @panel_hidden(%struct.panel*) #1

declare i32 @hide_panel(%struct.panel*) #1

declare i32 @move_panel(%struct.panel*, i32, i32) #1

declare i64 @PyTuple_Size(%struct._object*) #1

declare i32 @replace_panel(%struct.panel*, %struct._win_st*) #1

declare i8* @panel_userptr(%struct.panel*) #1

declare i32 @set_panel_userptr(%struct.panel*, i8*) #1

declare i32 @show_panel(%struct.panel*) #1

declare i32 @top_panel(%struct.panel*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
