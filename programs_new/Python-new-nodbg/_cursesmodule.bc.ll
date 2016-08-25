; ModuleID = './_cursesmodule.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
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
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct._win_st = type { i16, i16, i16, i16, i16, i16, i16, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ldat*, i16, i16, i32, i32, %struct._win_st*, %struct.pdat, i16, %struct.cchar_t }
%struct.ldat = type opaque
%struct.pdat = type { i16, i16, i16, i16, i16, i16 }
%struct.cchar_t = type { i64, [5 x i32] }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.PyCursesWindowObject = type { %struct._object, %struct._win_st*, i8* }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }
%struct.MEVENT = type { i16, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"2.2\00", align 1
@PyCursesVersion = global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"_curses.curses window\00", align 1
@PyCursesWindow_Methods = internal global [75 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @curses_window_addch to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([403 x i8], [403 x i8]* @curses_window_addch__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_AddNStr to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_AddStr to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_AttrOff to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_AttrOn to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_AttrSet to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_Bkgd to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_ChgAt to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_BkgdSet to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_Border to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_Box to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*)* @PyCursesWindow_wclear to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_clearok to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*)* @PyCursesWindow_wclrtobot to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*)* @PyCursesWindow_wclrtoeol to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*)* @PyCursesWindow_wcursyncup to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_DelCh to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_wdeleteln to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_DerWin to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.85, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_EchoChar to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_Enclose to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_werase to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*)* @PyCursesWindow_getbegyx to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*)* @PyCursesWindow_GetBkgd to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_GetCh to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_GetKey to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_Get_WCh to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*)* @PyCursesWindow_getmaxyx to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*)* @PyCursesWindow_getparyx to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_GetStr to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*)* @PyCursesWindow_getyx to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_Hline to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_idcok to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_idlok to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_immedok to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_InCh to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_InsCh to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_winsdelln to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.104, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_winsertln to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_InsNStr to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_InsStr to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_InStr to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.108, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_Is_LineTouched to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.109, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*)* @PyCursesWindow_is_wintouched to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_keypad to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_leaveok to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_wmove to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.113, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_mvderwin to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_mvwin to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_nodelay to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_notimeout to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.117, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_NoOutRefresh to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_Overlay to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_Overwrite to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.120, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_PutWin to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_RedrawLine to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_redrawwin to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_Refresh to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_wresize to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_Scroll to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.126, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_scrollok to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.127, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_SetScrollRegion to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.128, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*)* @PyCursesWindow_wstandend to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.129, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*)* @PyCursesWindow_wstandout to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_SubWin to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_SubWin to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*)* @PyCursesWindow_wsyncdown to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.133, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_syncok to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.134, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*)* @PyCursesWindow_wsyncup to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.135, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_wtimeout to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.136, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_TouchLine to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.137, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_touchwin to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.138, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_untouchwin to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.139, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_Vline to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@PyCursesWindow_getsets = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.249, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, i8*)* @PyCursesWindow_get_encoding to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* bitcast (i32 (%struct.PyCursesWindowObject*, %struct._object*)* @PyCursesWindow_set_encoding to i32 (%struct._object*, %struct._object*, i8*)*), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.250, i32 0, i32 0), i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyCursesWindow_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.PyCursesWindowObject*)* @PyCursesWindow_Dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([75 x %struct.PyMethodDef], [75 x %struct.PyMethodDef]* @PyCursesWindow_Methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([2 x %struct.PyGetSetDef], [2 x %struct.PyGetSetDef]* @PyCursesWindow_getsets, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyInit__curses.PyCurses_API = internal global [4 x i8*] zeroinitializer, align 16
@_cursesmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.256, i32 0, i32 0), i8* null, i64 -1, %struct.PyMethodDef* getelementptr inbounds ([74 x %struct.PyMethodDef], [74 x %struct.PyMethodDef]* @PyCurses_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@ModDict = internal global %struct._object* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"_curses._C_API\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"_C_API\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"_curses.error\00", align 1
@PyCursesError = internal global %struct._object* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"__version__\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"A_ATTRIBUTES\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"A_NORMAL\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"A_STANDOUT\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"A_UNDERLINE\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"A_REVERSE\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"A_BLINK\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"A_DIM\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"A_BOLD\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"A_ALTCHARSET\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"A_INVIS\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"A_PROTECT\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"A_CHARTEXT\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"A_COLOR\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"A_HORIZONTAL\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"A_LEFT\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"A_LOW\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"A_RIGHT\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"A_TOP\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"A_VERTICAL\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"COLOR_BLACK\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"COLOR_RED\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"COLOR_GREEN\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"COLOR_YELLOW\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"COLOR_BLUE\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"COLOR_MAGENTA\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"COLOR_CYAN\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"COLOR_WHITE\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"BUTTON1_PRESSED\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"BUTTON1_RELEASED\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"BUTTON1_CLICKED\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"BUTTON1_DOUBLE_CLICKED\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"BUTTON1_TRIPLE_CLICKED\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"BUTTON2_PRESSED\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"BUTTON2_RELEASED\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"BUTTON2_CLICKED\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"BUTTON2_DOUBLE_CLICKED\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"BUTTON2_TRIPLE_CLICKED\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"BUTTON3_PRESSED\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"BUTTON3_RELEASED\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"BUTTON3_CLICKED\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"BUTTON3_DOUBLE_CLICKED\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"BUTTON3_TRIPLE_CLICKED\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"BUTTON4_PRESSED\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"BUTTON4_RELEASED\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"BUTTON4_CLICKED\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"BUTTON4_DOUBLE_CLICKED\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"BUTTON4_TRIPLE_CLICKED\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"BUTTON_SHIFT\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"BUTTON_CTRL\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"BUTTON_ALT\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"ALL_MOUSE_EVENTS\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"REPORT_MOUSE_POSITION\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"UNKNOWN KEY\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"KEY_F(\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"KEY_MIN\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"KEY_MAX\00", align 1
@stdscr = external global %struct._win_st*, align 8
@.str.66 = private unnamed_addr constant [6 x i8] c"addch\00", align 1
@curses_window_addch__doc__ = internal global [403 x i8] c"addch([y, x,] ch, [attr])\0APaint character ch at (y, x) with attributes attr.\0A\0A  y\0A    Y-coordinate.\0A  x\0A    X-coordinate.\0A  ch\0A    Character to add.\0A  attr\0A    Attributes for the character.\0A\0APaint character ch at (y, x) with attributes attr,\0Aoverwriting any character previously painted at that location.\0ABy default, the character position and attributes are the\0Acurrent settings for the window object.\00", align 16
@.str.67 = private unnamed_addr constant [8 x i8] c"addnstr\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"addstr\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"attroff\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"attron\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"attrset\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"bkgd\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"chgat\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"bkgdset\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"border\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"clearok\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"clrtobot\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"clrtoeol\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"cursyncup\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"delch\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"deleteln\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"derwin\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"echochar\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"enclose\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"erase\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"getbegyx\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"getbkgd\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"getch\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"getkey\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"get_wch\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"getmaxyx\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"getparyx\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"getstr\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"getyx\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"hline\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"idcok\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"idlok\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"immedok\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"inch\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"insch\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"insdelln\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"insertln\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"insnstr\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"insstr\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"instr\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"is_linetouched\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"is_wintouched\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"keypad\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"leaveok\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"mvderwin\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"mvwin\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"nodelay\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"notimeout\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"noutrefresh\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"overlay\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"overwrite\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"putwin\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"redrawln\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"redrawwin\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"refresh\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"resize\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"scroll\00", align 1
@.str.126 = private unnamed_addr constant [9 x i8] c"scrollok\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"setscrreg\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"standend\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"standout\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"subpad\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"subwin\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"syncdown\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"syncok\00", align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"syncup\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"touchline\00", align 1
@.str.137 = private unnamed_addr constant [9 x i8] c"touchwin\00", align 1
@.str.138 = private unnamed_addr constant [11 x i8] c"untouchwin\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"vline\00", align 1
@.str.140 = private unnamed_addr constant [8 x i8] c"O:addch\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"Ol:addch\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"iiO:addch\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"iiOl:addch\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.144 = private unnamed_addr constant [46 x i8] c"curses.window.addch requires 1 to 4 arguments\00", align 1
@.str.145 = private unnamed_addr constant [8 x i8] c"add_wch\00", align 1
@.str.146 = private unnamed_addr constant [65 x i8] c"expect bytes or str of length 1, or int, got a str of length %zi\00", align 1
@PyLong_Type = external global %struct._typeobject, align 8
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.147 = private unnamed_addr constant [24 x i8] c"int doesn't fit in long\00", align 1
@.str.148 = private unnamed_addr constant [48 x i8] c"expect bytes or str of length 1, or int, got %s\00", align 1
@.str.149 = private unnamed_addr constant [27 x i8] c"byte doesn't fit in chtype\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@catchall_ERR = internal global i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.151, i32 0, i32 0), align 8
@.str.150 = private unnamed_addr constant [18 x i8] c"%s() returned ERR\00", align 1
@.str.151 = private unnamed_addr constant [29 x i8] c"curses function returned ERR\00", align 1
@.str.152 = private unnamed_addr constant [9 x i8] c"Oi;str,n\00", align 1
@.str.153 = private unnamed_addr constant [15 x i8] c"Oil;str,n,attr\00", align 1
@.str.154 = private unnamed_addr constant [15 x i8] c"iiOi;y,x,str,n\00", align 1
@.str.155 = private unnamed_addr constant [21 x i8] c"iiOil;y,x,str,n,attr\00", align 1
@.str.156 = private unnamed_addr constant [34 x i8] c"addnstr requires 2 to 5 arguments\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"addnwstr\00", align 1
@.str.158 = private unnamed_addr constant [28 x i8] c"expect bytes or str, got %s\00", align 1
@.str.159 = private unnamed_addr constant [6 x i8] c"O;str\00", align 1
@.str.160 = private unnamed_addr constant [12 x i8] c"Ol;str,attr\00", align 1
@.str.161 = private unnamed_addr constant [16 x i8] c"iiO;int,int,str\00", align 1
@.str.162 = private unnamed_addr constant [22 x i8] c"iiOl;int,int,str,attr\00", align 1
@.str.163 = private unnamed_addr constant [33 x i8] c"addstr requires 1 to 4 arguments\00", align 1
@.str.164 = private unnamed_addr constant [8 x i8] c"addwstr\00", align 1
@.str.165 = private unnamed_addr constant [7 x i8] c"l;attr\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"O;ch or int\00", align 1
@.str.167 = private unnamed_addr constant [18 x i8] c"Ol;ch or int,attr\00", align 1
@.str.168 = private unnamed_addr constant [31 x i8] c"bkgd requires 1 or 2 arguments\00", align 1
@screen_encoding = internal global i8* null, align 8
@.str.169 = private unnamed_addr constant [10 x i8] c"il;n,attr\00", align 1
@.str.170 = private unnamed_addr constant [17 x i8] c"iil;int,int,attr\00", align 1
@.str.171 = private unnamed_addr constant [20 x i8] c"iiil;int,int,n,attr\00", align 1
@.str.172 = private unnamed_addr constant [32 x i8] c"chgat requires 1 to 4 arguments\00", align 1
@.str.173 = private unnamed_addr constant [34 x i8] c"bkgdset requires 1 or 2 arguments\00", align 1
@.str.174 = private unnamed_addr constant [34 x i8] c"|OOOOOOOO;ls,rs,ts,bs,tl,tr,bl,br\00", align 1
@.str.175 = private unnamed_addr constant [18 x i8] c"ll;vertint,horint\00", align 1
@.str.176 = private unnamed_addr constant [22 x i8] c"i;True(1) or False(0)\00", align 1
@.str.177 = private unnamed_addr constant [7 x i8] c"ii;y,x\00", align 1
@.str.178 = private unnamed_addr constant [32 x i8] c"delch requires 0 or 2 arguments\00", align 1
@.str.179 = private unnamed_addr constant [11 x i8] c"[mv]wdelch\00", align 1
@.str.180 = private unnamed_addr constant [10 x i8] c"wdeleteln\00", align 1
@.str.181 = private unnamed_addr constant [19 x i8] c"ii;begin_y,begin_x\00", align 1
@.str.182 = private unnamed_addr constant [34 x i8] c"iiii;nlines,ncols,begin_y,begin_x\00", align 1
@.str.183 = private unnamed_addr constant [33 x i8] c"derwin requires 2 or 4 arguments\00", align 1
@catchall_NULL = internal global i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.184, i32 0, i32 0), align 8
@.str.184 = private unnamed_addr constant [30 x i8] c"curses function returned NULL\00", align 1
@.str.185 = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1
@.str.186 = private unnamed_addr constant [35 x i8] c"echochar requires 1 or 2 arguments\00", align 1
@.str.187 = private unnamed_addr constant [7 x i8] c"werase\00", align 1
@.str.188 = private unnamed_addr constant [3 x i8] c"ii\00", align 1
@.str.189 = private unnamed_addr constant [32 x i8] c"getch requires 0 or 2 arguments\00", align 1
@.str.190 = private unnamed_addr constant [33 x i8] c"getkey requires 0 or 2 arguments\00", align 1
@.str.191 = private unnamed_addr constant [9 x i8] c"no input\00", align 1
@.str.192 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.193 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.194 = private unnamed_addr constant [34 x i8] c"get_wch requires 0 or 2 arguments\00", align 1
@.str.195 = private unnamed_addr constant [4 x i8] c"i;n\00", align 1
@.str.196 = private unnamed_addr constant [10 x i8] c"iii;y,x,n\00", align 1
@.str.197 = private unnamed_addr constant [33 x i8] c"getstr requires 0 to 3 arguments\00", align 1
@.str.198 = private unnamed_addr constant [15 x i8] c"Oi;ch or int,n\00", align 1
@.str.199 = private unnamed_addr constant [21 x i8] c"Oil;ch or int,n,attr\00", align 1
@.str.200 = private unnamed_addr constant [21 x i8] c"iiOi;y,x,ch or int,n\00", align 1
@.str.201 = private unnamed_addr constant [28 x i8] c"iiOil; y,x,ch or int,n,attr\00", align 1
@.str.202 = private unnamed_addr constant [32 x i8] c"hline requires 2 to 5 arguments\00", align 1
@.str.203 = private unnamed_addr constant [6 x i8] c"wmove\00", align 1
@.str.204 = private unnamed_addr constant [31 x i8] c"inch requires 0 or 2 arguments\00", align 1
@.str.205 = private unnamed_addr constant [18 x i8] c"iiO;y,x,ch or int\00", align 1
@.str.206 = private unnamed_addr constant [25 x i8] c"iiOl;y,x,ch or int, attr\00", align 1
@.str.207 = private unnamed_addr constant [32 x i8] c"insch requires 1 or 4 arguments\00", align 1
@.str.208 = private unnamed_addr constant [9 x i8] c"i;nlines\00", align 1
@.str.209 = private unnamed_addr constant [10 x i8] c"winsdelln\00", align 1
@.str.210 = private unnamed_addr constant [10 x i8] c"winsertln\00", align 1
@.str.211 = private unnamed_addr constant [34 x i8] c"insnstr requires 2 to 5 arguments\00", align 1
@.str.212 = private unnamed_addr constant [10 x i8] c"insn_wstr\00", align 1
@.str.213 = private unnamed_addr constant [12 x i8] c"iiO;y,x,str\00", align 1
@.str.214 = private unnamed_addr constant [18 x i8] c"iiOl;y,x,str,attr\00", align 1
@.str.215 = private unnamed_addr constant [33 x i8] c"insstr requires 1 to 4 arguments\00", align 1
@.str.216 = private unnamed_addr constant [8 x i8] c"inswstr\00", align 1
@.str.217 = private unnamed_addr constant [32 x i8] c"instr requires 0 or 3 arguments\00", align 1
@.str.218 = private unnamed_addr constant [7 x i8] c"i;line\00", align 1
@.str.219 = private unnamed_addr constant [50 x i8] c"is_linetouched: line number outside of boundaries\00", align 1
@_Py_FalseStruct = external global %struct._longobject, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@.str.220 = private unnamed_addr constant [55 x i8] c"iiiiii;pminrow,pmincol,sminrow,smincol,smaxrow,smaxcol\00", align 1
@.str.221 = private unnamed_addr constant [13 x i8] c"pnoutrefresh\00", align 1
@.str.222 = private unnamed_addr constant [52 x i8] c"noutrefresh() called for a pad requires 6 arguments\00", align 1
@.str.223 = private unnamed_addr constant [13 x i8] c":noutrefresh\00", align 1
@.str.224 = private unnamed_addr constant [13 x i8] c"wnoutrefresh\00", align 1
@.str.225 = private unnamed_addr constant [17 x i8] c"O!;window object\00", align 1
@.str.226 = private unnamed_addr constant [53 x i8] c"O!iiiiii;window object, int, int, int, int, int, int\00", align 1
@.str.227 = private unnamed_addr constant [40 x i8] c"overlay requires one or seven arguments\00", align 1
@.str.228 = private unnamed_addr constant [8 x i8] c"copywin\00", align 1
@.str.229 = private unnamed_addr constant [42 x i8] c"overwrite requires one or seven arguments\00", align 1
@.str.230 = private unnamed_addr constant [29 x i8] c"/tmp/py.curses.putwin.XXXXXX\00", align 1
@PyExc_IOError = external global %struct._object*, align 8
@.str.231 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@PyCursesWindow_PutWin.PyId_write = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.232, i32 0, i32 0), %struct._object* null }, align 8
@.str.232 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.233 = private unnamed_addr constant [3 x i8] c"y#\00", align 1
@.str.234 = private unnamed_addr constant [11 x i8] c"ii;beg,num\00", align 1
@.str.235 = private unnamed_addr constant [9 x i8] c"prefresh\00", align 1
@.str.236 = private unnamed_addr constant [41 x i8] c"refresh() for a pad requires 6 arguments\00", align 1
@.str.237 = private unnamed_addr constant [9 x i8] c":refresh\00", align 1
@.str.238 = private unnamed_addr constant [17 x i8] c"ii;lines,columns\00", align 1
@.str.239 = private unnamed_addr constant [8 x i8] c"wresize\00", align 1
@.str.240 = private unnamed_addr constant [33 x i8] c"scroll requires 0 or 1 arguments\00", align 1
@.str.241 = private unnamed_addr constant [15 x i8] c"ii;top, bottom\00", align 1
@.str.242 = private unnamed_addr constant [11 x i8] c"wsetscrreg\00", align 1
@.str.243 = private unnamed_addr constant [33 x i8] c"subwin requires 2 or 4 arguments\00", align 1
@.str.244 = private unnamed_addr constant [8 x i8] c"i;delay\00", align 1
@.str.245 = private unnamed_addr constant [15 x i8] c"ii;start,count\00", align 1
@.str.246 = private unnamed_addr constant [20 x i8] c"iii;start,count,val\00", align 1
@.str.247 = private unnamed_addr constant [36 x i8] c"touchline requires 2 or 3 arguments\00", align 1
@.str.248 = private unnamed_addr constant [32 x i8] c"vline requires 2 to 5 arguments\00", align 1
@.str.249 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.250 = private unnamed_addr constant [48 x i8] c"the typecode character used to create the array\00", align 1
@.str.251 = private unnamed_addr constant [28 x i8] c"encoding may not be deleted\00", align 1
@.str.252 = private unnamed_addr constant [33 x i8] c"setting encoding to a non-string\00", align 1
@initialised_setupterm = internal global i32 0, align 4
@.str.253 = private unnamed_addr constant [39 x i8] c"must call (at least) setupterm() first\00", align 1
@initialised = internal global i32 0, align 4
@.str.254 = private unnamed_addr constant [26 x i8] c"must call initscr() first\00", align 1
@initialisedcolors = internal global i32 0, align 4
@.str.255 = private unnamed_addr constant [30 x i8] c"must call start_color() first\00", align 1
@.str.256 = private unnamed_addr constant [8 x i8] c"_curses\00", align 1
@PyCurses_methods = internal global [74 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.257, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_baudrate to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.258, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_beep to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.259, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_can_change_color to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.260, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_cbreak, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.261, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_Color_Content, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.262, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_color_pair, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.263, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_Curs_Set, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.264, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_def_prog_mode to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.265, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_def_shell_mode to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.266, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_Delay_Output, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.267, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_doupdate to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.268, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_echo, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.269, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_endwin to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.270, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_EraseChar to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.271, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_filter to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.272, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_flash to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.273, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_flushinp to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.274, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_GetMouse to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.275, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_UngetMouse, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.276, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_getsyx to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.277, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCursesWindowObject*, %struct._object*)* @PyCurses_GetWin to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.278, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_has_colors to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.279, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_has_ic to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.280, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_has_il to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.281, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_has_key, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.282, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_HalfDelay, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.283, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_Init_Color, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.284, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_Init_Pair, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.285, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_InitScr to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.286, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_IntrFlush, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.287, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_isendwin to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.288, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_Is_Term_Resized, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.289, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_KeyName, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.290, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_KillChar to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.291, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_longname to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.292, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_Meta, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.293, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_MouseInterval, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.294, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_MouseMask, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.295, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_Napms, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.296, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_NewPad, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.297, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_NewWindow, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.298, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_nl, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.299, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_nocbreak to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.300, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_noecho to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.301, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_nonl to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.302, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_noqiflush to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.303, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_noraw to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.304, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_Pair_Content, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.305, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_pair_number, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.306, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_Putp, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.307, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_QiFlush, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.308, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_raw, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.309, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_reset_prog_mode to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.310, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_reset_shell_mode to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.311, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_resetty to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.312, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_ResizeTerm, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.313, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_Resize_Term, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.314, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_savetty to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.315, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_setsyx, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.316, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @PyCurses_setupterm to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.317, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_Start_Color to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.318, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_termattrs to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.319, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_termname to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.320, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_tigetflag, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.321, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_tigetnum, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.322, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_tigetstr, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.323, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_tparm, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.324, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_TypeAhead, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.325, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_UnCtrl, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.326, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_UngetCh, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.327, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_Unget_Wch, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.328, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @PyCurses_Use_Env, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.329, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @PyCurses_Use_Default_Colors to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@.str.257 = private unnamed_addr constant [9 x i8] c"baudrate\00", align 1
@.str.258 = private unnamed_addr constant [5 x i8] c"beep\00", align 1
@.str.259 = private unnamed_addr constant [17 x i8] c"can_change_color\00", align 1
@.str.260 = private unnamed_addr constant [7 x i8] c"cbreak\00", align 1
@.str.261 = private unnamed_addr constant [14 x i8] c"color_content\00", align 1
@.str.262 = private unnamed_addr constant [11 x i8] c"color_pair\00", align 1
@.str.263 = private unnamed_addr constant [9 x i8] c"curs_set\00", align 1
@.str.264 = private unnamed_addr constant [14 x i8] c"def_prog_mode\00", align 1
@.str.265 = private unnamed_addr constant [15 x i8] c"def_shell_mode\00", align 1
@.str.266 = private unnamed_addr constant [13 x i8] c"delay_output\00", align 1
@.str.267 = private unnamed_addr constant [9 x i8] c"doupdate\00", align 1
@.str.268 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.269 = private unnamed_addr constant [7 x i8] c"endwin\00", align 1
@.str.270 = private unnamed_addr constant [10 x i8] c"erasechar\00", align 1
@.str.271 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.272 = private unnamed_addr constant [6 x i8] c"flash\00", align 1
@.str.273 = private unnamed_addr constant [9 x i8] c"flushinp\00", align 1
@.str.274 = private unnamed_addr constant [9 x i8] c"getmouse\00", align 1
@.str.275 = private unnamed_addr constant [11 x i8] c"ungetmouse\00", align 1
@.str.276 = private unnamed_addr constant [7 x i8] c"getsyx\00", align 1
@.str.277 = private unnamed_addr constant [7 x i8] c"getwin\00", align 1
@.str.278 = private unnamed_addr constant [11 x i8] c"has_colors\00", align 1
@.str.279 = private unnamed_addr constant [7 x i8] c"has_ic\00", align 1
@.str.280 = private unnamed_addr constant [7 x i8] c"has_il\00", align 1
@.str.281 = private unnamed_addr constant [8 x i8] c"has_key\00", align 1
@.str.282 = private unnamed_addr constant [10 x i8] c"halfdelay\00", align 1
@.str.283 = private unnamed_addr constant [11 x i8] c"init_color\00", align 1
@.str.284 = private unnamed_addr constant [10 x i8] c"init_pair\00", align 1
@.str.285 = private unnamed_addr constant [8 x i8] c"initscr\00", align 1
@.str.286 = private unnamed_addr constant [10 x i8] c"intrflush\00", align 1
@.str.287 = private unnamed_addr constant [9 x i8] c"isendwin\00", align 1
@.str.288 = private unnamed_addr constant [16 x i8] c"is_term_resized\00", align 1
@.str.289 = private unnamed_addr constant [8 x i8] c"keyname\00", align 1
@.str.290 = private unnamed_addr constant [9 x i8] c"killchar\00", align 1
@.str.291 = private unnamed_addr constant [9 x i8] c"longname\00", align 1
@.str.292 = private unnamed_addr constant [5 x i8] c"meta\00", align 1
@.str.293 = private unnamed_addr constant [14 x i8] c"mouseinterval\00", align 1
@.str.294 = private unnamed_addr constant [10 x i8] c"mousemask\00", align 1
@.str.295 = private unnamed_addr constant [6 x i8] c"napms\00", align 1
@.str.296 = private unnamed_addr constant [7 x i8] c"newpad\00", align 1
@.str.297 = private unnamed_addr constant [7 x i8] c"newwin\00", align 1
@.str.298 = private unnamed_addr constant [3 x i8] c"nl\00", align 1
@.str.299 = private unnamed_addr constant [9 x i8] c"nocbreak\00", align 1
@.str.300 = private unnamed_addr constant [7 x i8] c"noecho\00", align 1
@.str.301 = private unnamed_addr constant [5 x i8] c"nonl\00", align 1
@.str.302 = private unnamed_addr constant [10 x i8] c"noqiflush\00", align 1
@.str.303 = private unnamed_addr constant [6 x i8] c"noraw\00", align 1
@.str.304 = private unnamed_addr constant [13 x i8] c"pair_content\00", align 1
@.str.305 = private unnamed_addr constant [12 x i8] c"pair_number\00", align 1
@.str.306 = private unnamed_addr constant [5 x i8] c"putp\00", align 1
@.str.307 = private unnamed_addr constant [8 x i8] c"qiflush\00", align 1
@.str.308 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.309 = private unnamed_addr constant [16 x i8] c"reset_prog_mode\00", align 1
@.str.310 = private unnamed_addr constant [17 x i8] c"reset_shell_mode\00", align 1
@.str.311 = private unnamed_addr constant [8 x i8] c"resetty\00", align 1
@.str.312 = private unnamed_addr constant [11 x i8] c"resizeterm\00", align 1
@.str.313 = private unnamed_addr constant [12 x i8] c"resize_term\00", align 1
@.str.314 = private unnamed_addr constant [8 x i8] c"savetty\00", align 1
@.str.315 = private unnamed_addr constant [7 x i8] c"setsyx\00", align 1
@.str.316 = private unnamed_addr constant [10 x i8] c"setupterm\00", align 1
@.str.317 = private unnamed_addr constant [12 x i8] c"start_color\00", align 1
@.str.318 = private unnamed_addr constant [10 x i8] c"termattrs\00", align 1
@.str.319 = private unnamed_addr constant [9 x i8] c"termname\00", align 1
@.str.320 = private unnamed_addr constant [10 x i8] c"tigetflag\00", align 1
@.str.321 = private unnamed_addr constant [9 x i8] c"tigetnum\00", align 1
@.str.322 = private unnamed_addr constant [9 x i8] c"tigetstr\00", align 1
@.str.323 = private unnamed_addr constant [6 x i8] c"tparm\00", align 1
@.str.324 = private unnamed_addr constant [10 x i8] c"typeahead\00", align 1
@.str.325 = private unnamed_addr constant [7 x i8] c"unctrl\00", align 1
@.str.326 = private unnamed_addr constant [8 x i8] c"ungetch\00", align 1
@.str.327 = private unnamed_addr constant [10 x i8] c"unget_wch\00", align 1
@.str.328 = private unnamed_addr constant [8 x i8] c"use_env\00", align 1
@.str.329 = private unnamed_addr constant [19 x i8] c"use_default_colors\00", align 1
@.str.330 = private unnamed_addr constant [33 x i8] c"cbreak requires 0 or 1 arguments\00", align 1
@.str.331 = private unnamed_addr constant [16 x i8] c"h:color_content\00", align 1
@.str.332 = private unnamed_addr constant [6 x i8] c"(iii)\00", align 1
@.str.333 = private unnamed_addr constant [52 x i8] c"Argument 1 was out of range. Check value of COLORS.\00", align 1
@.str.334 = private unnamed_addr constant [13 x i8] c"i:color_pair\00", align 1
@.str.335 = private unnamed_addr constant [11 x i8] c"i:curs_set\00", align 1
@.str.336 = private unnamed_addr constant [15 x i8] c"i:delay_output\00", align 1
@.str.337 = private unnamed_addr constant [31 x i8] c"echo requires 0 or 1 arguments\00", align 1
@.str.338 = private unnamed_addr constant [24 x i8] c"getmouse() returned ERR\00", align 1
@.str.339 = private unnamed_addr constant [8 x i8] c"(hiiil)\00", align 1
@.str.340 = private unnamed_addr constant [6 x i8] c"hiiil\00", align 1
@newscr = external global %struct._win_st*, align 8
@.str.341 = private unnamed_addr constant [5 x i8] c"(ii)\00", align 1
@PyCurses_GetWin.PyId_read = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.342, i32 0, i32 0), %struct._object* null }, align 8
@.str.342 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.343 = private unnamed_addr constant [29 x i8] c"/tmp/py.curses.getwin.XXXXXX\00", align 1
@.str.344 = private unnamed_addr constant [42 x i8] c"f.read() returned %.100s instead of bytes\00", align 1
@.str.345 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.346 = private unnamed_addr constant [12 x i8] c"b:halfdelay\00", align 1
@.str.347 = private unnamed_addr constant [17 x i8] c"hhhh;color,r,g,b\00", align 1
@.str.348 = private unnamed_addr constant [32 x i8] c"init_color requires 4 arguments\00", align 1
@.str.349 = private unnamed_addr constant [31 x i8] c"init_pair requires 3 arguments\00", align 1
@.str.350 = private unnamed_addr constant [15 x i8] c"hhh;pair, f, b\00", align 1
@acs_map = external global [0 x i64], align 8
@.str.351 = private unnamed_addr constant [13 x i8] c"ACS_ULCORNER\00", align 1
@.str.352 = private unnamed_addr constant [13 x i8] c"ACS_LLCORNER\00", align 1
@.str.353 = private unnamed_addr constant [13 x i8] c"ACS_URCORNER\00", align 1
@.str.354 = private unnamed_addr constant [13 x i8] c"ACS_LRCORNER\00", align 1
@.str.355 = private unnamed_addr constant [9 x i8] c"ACS_LTEE\00", align 1
@.str.356 = private unnamed_addr constant [9 x i8] c"ACS_RTEE\00", align 1
@.str.357 = private unnamed_addr constant [9 x i8] c"ACS_BTEE\00", align 1
@.str.358 = private unnamed_addr constant [9 x i8] c"ACS_TTEE\00", align 1
@.str.359 = private unnamed_addr constant [10 x i8] c"ACS_HLINE\00", align 1
@.str.360 = private unnamed_addr constant [10 x i8] c"ACS_VLINE\00", align 1
@.str.361 = private unnamed_addr constant [9 x i8] c"ACS_PLUS\00", align 1
@.str.362 = private unnamed_addr constant [7 x i8] c"ACS_S1\00", align 1
@.str.363 = private unnamed_addr constant [7 x i8] c"ACS_S9\00", align 1
@.str.364 = private unnamed_addr constant [12 x i8] c"ACS_DIAMOND\00", align 1
@.str.365 = private unnamed_addr constant [12 x i8] c"ACS_CKBOARD\00", align 1
@.str.366 = private unnamed_addr constant [11 x i8] c"ACS_DEGREE\00", align 1
@.str.367 = private unnamed_addr constant [12 x i8] c"ACS_PLMINUS\00", align 1
@.str.368 = private unnamed_addr constant [11 x i8] c"ACS_BULLET\00", align 1
@.str.369 = private unnamed_addr constant [11 x i8] c"ACS_LARROW\00", align 1
@.str.370 = private unnamed_addr constant [11 x i8] c"ACS_RARROW\00", align 1
@.str.371 = private unnamed_addr constant [11 x i8] c"ACS_DARROW\00", align 1
@.str.372 = private unnamed_addr constant [11 x i8] c"ACS_UARROW\00", align 1
@.str.373 = private unnamed_addr constant [10 x i8] c"ACS_BOARD\00", align 1
@.str.374 = private unnamed_addr constant [12 x i8] c"ACS_LANTERN\00", align 1
@.str.375 = private unnamed_addr constant [10 x i8] c"ACS_BLOCK\00", align 1
@.str.376 = private unnamed_addr constant [9 x i8] c"ACS_BSSB\00", align 1
@.str.377 = private unnamed_addr constant [9 x i8] c"ACS_SSBB\00", align 1
@.str.378 = private unnamed_addr constant [9 x i8] c"ACS_BBSS\00", align 1
@.str.379 = private unnamed_addr constant [9 x i8] c"ACS_SBBS\00", align 1
@.str.380 = private unnamed_addr constant [9 x i8] c"ACS_SBSS\00", align 1
@.str.381 = private unnamed_addr constant [9 x i8] c"ACS_SSSB\00", align 1
@.str.382 = private unnamed_addr constant [9 x i8] c"ACS_SSBS\00", align 1
@.str.383 = private unnamed_addr constant [9 x i8] c"ACS_BSSS\00", align 1
@.str.384 = private unnamed_addr constant [9 x i8] c"ACS_BSBS\00", align 1
@.str.385 = private unnamed_addr constant [9 x i8] c"ACS_SBSB\00", align 1
@.str.386 = private unnamed_addr constant [9 x i8] c"ACS_SSSS\00", align 1
@.str.387 = private unnamed_addr constant [7 x i8] c"ACS_S3\00", align 1
@.str.388 = private unnamed_addr constant [7 x i8] c"ACS_S7\00", align 1
@.str.389 = private unnamed_addr constant [11 x i8] c"ACS_LEQUAL\00", align 1
@.str.390 = private unnamed_addr constant [11 x i8] c"ACS_GEQUAL\00", align 1
@.str.391 = private unnamed_addr constant [7 x i8] c"ACS_PI\00", align 1
@.str.392 = private unnamed_addr constant [11 x i8] c"ACS_NEQUAL\00", align 1
@.str.393 = private unnamed_addr constant [13 x i8] c"ACS_STERLING\00", align 1
@LINES = external global i32, align 4
@.str.394 = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@COLS = external global i32, align 4
@.str.395 = private unnamed_addr constant [5 x i8] c"COLS\00", align 1
@.str.396 = private unnamed_addr constant [20 x i8] c"i;True(1), False(0)\00", align 1
@.str.397 = private unnamed_addr constant [30 x i8] c"intrflush requires 1 argument\00", align 1
@.str.398 = private unnamed_addr constant [19 x i8] c"ii:is_term_resized\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.399 = private unnamed_addr constant [19 x i8] c"invalid key number\00", align 1
@.str.400 = private unnamed_addr constant [25 x i8] c"meta requires 1 argument\00", align 1
@.str.401 = private unnamed_addr constant [11 x i8] c"i;interval\00", align 1
@.str.402 = private unnamed_addr constant [12 x i8] c"i;mousemask\00", align 1
@.str.403 = private unnamed_addr constant [5 x i8] c"(ll)\00", align 1
@.str.404 = private unnamed_addr constant [5 x i8] c"i;ms\00", align 1
@.str.405 = private unnamed_addr constant [16 x i8] c"ii;nlines,ncols\00", align 1
@.str.406 = private unnamed_addr constant [33 x i8] c"newwin requires 2 or 4 arguments\00", align 1
@.str.407 = private unnamed_addr constant [29 x i8] c"nl requires 0 or 1 arguments\00", align 1
@.str.408 = private unnamed_addr constant [7 x i8] c"h;pair\00", align 1
@.str.409 = private unnamed_addr constant [33 x i8] c"pair_content requires 1 argument\00", align 1
@.str.410 = private unnamed_addr constant [48 x i8] c"Argument 1 was out of range. (1..COLOR_PAIRS-1)\00", align 1
@.str.411 = private unnamed_addr constant [12 x i8] c"i;pairvalue\00", align 1
@.str.412 = private unnamed_addr constant [32 x i8] c"pair_number requires 1 argument\00", align 1
@.str.413 = private unnamed_addr constant [6 x i8] c"y;str\00", align 1
@.str.414 = private unnamed_addr constant [34 x i8] c"qiflush requires 0 or 1 arguments\00", align 1
@.str.415 = private unnamed_addr constant [30 x i8] c"raw requires 0 or 1 arguments\00", align 1
@.str.416 = private unnamed_addr constant [14 x i8] c"ii:resizeterm\00", align 1
@.str.417 = private unnamed_addr constant [7 x i8] c"curses\00", align 1
@update_lines_cols.PyId_LINES = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.394, i32 0, i32 0), %struct._object* null }, align 8
@update_lines_cols.PyId_COLS = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.395, i32 0, i32 0), %struct._object* null }, align 8
@.str.418 = private unnamed_addr constant [15 x i8] c"ii:resize_term\00", align 1
@.str.419 = private unnamed_addr constant [28 x i8] c"setsyx requires 2 arguments\00", align 1
@.str.420 = private unnamed_addr constant [8 x i8] c"ii;y, x\00", align 1
@PyCurses_setupterm.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.421, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.422, i32 0, i32 0), i8* null], align 16
@.str.421 = private unnamed_addr constant [5 x i8] c"term\00", align 1
@.str.422 = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@.str.423 = private unnamed_addr constant [14 x i8] c"|zi:setupterm\00", align 1
@.str.424 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.425 = private unnamed_addr constant [16 x i8] c"lost sys.stdout\00", align 1
@.str.426 = private unnamed_addr constant [25 x i8] c"setupterm: unknown error\00", align 1
@.str.427 = private unnamed_addr constant [35 x i8] c"setupterm: could not find terminal\00", align 1
@.str.428 = private unnamed_addr constant [44 x i8] c"setupterm: could not find terminfo database\00", align 1
@COLORS = external global i32, align 4
@.str.429 = private unnamed_addr constant [7 x i8] c"COLORS\00", align 1
@COLOR_PAIRS = external global i32, align 4
@.str.430 = private unnamed_addr constant [12 x i8] c"COLOR_PAIRS\00", align 1
@.str.431 = private unnamed_addr constant [27 x i8] c"start_color() returned ERR\00", align 1
@.str.432 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.433 = private unnamed_addr constant [18 x i8] c"y|iiiiiiiii:tparm\00", align 1
@.str.434 = private unnamed_addr constant [22 x i8] c"tparm() returned NULL\00", align 1
@.str.435 = private unnamed_addr constant [5 x i8] c"i;fd\00", align 1
@.str.436 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.437 = private unnamed_addr constant [33 x i8] c"character doesn't fit in wchar_t\00", align 1
@.str.438 = private unnamed_addr constant [28 x i8] c"use_env requires 1 argument\00", align 1
@.str.439 = private unnamed_addr constant [34 x i8] c"use_default_colors() returned ERR\00", align 1

; Function Attrs: nounwind uwtable
define internal void @PyCursesWindow_Dealloc(%struct.PyCursesWindowObject* %wo) #0 {
entry:
  %wo.addr = alloca %struct.PyCursesWindowObject*, align 8
  store %struct.PyCursesWindowObject* %wo, %struct.PyCursesWindowObject** %wo.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %wo.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  %2 = load %struct._win_st*, %struct._win_st** @stdscr, align 8
  %cmp = icmp ne %struct._win_st* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %wo.addr, align 8
  %win1 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %3, i32 0, i32 1
  %4 = load %struct._win_st*, %struct._win_st** %win1, align 8
  %call = call i32 @delwin(%struct._win_st* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %wo.addr, align 8
  %encoding = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %5, i32 0, i32 2
  %6 = load i8*, i8** %encoding, align 8
  %cmp2 = icmp ne i8* %6, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %wo.addr, align 8
  %encoding4 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %7, i32 0, i32 2
  %8 = load i8*, i8** %encoding4, align 8
  call void @PyMem_Free(i8* %8)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %9 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %wo.addr, align 8
  %10 = bitcast %struct.PyCursesWindowObject* %9 to i8*
  call void @PyObject_Free(i8* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__curses() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %c_api_object = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %o = alloca %struct._object*, align 8
  %_py_decref_tmp36 = alloca %struct._object*, align 8
  %o49 = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  %o70 = alloca %struct._object*, align 8
  %_py_decref_tmp78 = alloca %struct._object*, align 8
  %o91 = alloca %struct._object*, align 8
  %_py_decref_tmp99 = alloca %struct._object*, align 8
  %o112 = alloca %struct._object*, align 8
  %_py_decref_tmp120 = alloca %struct._object*, align 8
  %o133 = alloca %struct._object*, align 8
  %_py_decref_tmp141 = alloca %struct._object*, align 8
  %o154 = alloca %struct._object*, align 8
  %_py_decref_tmp162 = alloca %struct._object*, align 8
  %o175 = alloca %struct._object*, align 8
  %_py_decref_tmp183 = alloca %struct._object*, align 8
  %o196 = alloca %struct._object*, align 8
  %_py_decref_tmp204 = alloca %struct._object*, align 8
  %o217 = alloca %struct._object*, align 8
  %_py_decref_tmp225 = alloca %struct._object*, align 8
  %o238 = alloca %struct._object*, align 8
  %_py_decref_tmp246 = alloca %struct._object*, align 8
  %o259 = alloca %struct._object*, align 8
  %_py_decref_tmp267 = alloca %struct._object*, align 8
  %o280 = alloca %struct._object*, align 8
  %_py_decref_tmp288 = alloca %struct._object*, align 8
  %o301 = alloca %struct._object*, align 8
  %_py_decref_tmp309 = alloca %struct._object*, align 8
  %o322 = alloca %struct._object*, align 8
  %_py_decref_tmp330 = alloca %struct._object*, align 8
  %o343 = alloca %struct._object*, align 8
  %_py_decref_tmp351 = alloca %struct._object*, align 8
  %o364 = alloca %struct._object*, align 8
  %_py_decref_tmp372 = alloca %struct._object*, align 8
  %o385 = alloca %struct._object*, align 8
  %_py_decref_tmp393 = alloca %struct._object*, align 8
  %o406 = alloca %struct._object*, align 8
  %_py_decref_tmp414 = alloca %struct._object*, align 8
  %o427 = alloca %struct._object*, align 8
  %_py_decref_tmp435 = alloca %struct._object*, align 8
  %o448 = alloca %struct._object*, align 8
  %_py_decref_tmp456 = alloca %struct._object*, align 8
  %o469 = alloca %struct._object*, align 8
  %_py_decref_tmp477 = alloca %struct._object*, align 8
  %o490 = alloca %struct._object*, align 8
  %_py_decref_tmp498 = alloca %struct._object*, align 8
  %o511 = alloca %struct._object*, align 8
  %_py_decref_tmp519 = alloca %struct._object*, align 8
  %o532 = alloca %struct._object*, align 8
  %_py_decref_tmp540 = alloca %struct._object*, align 8
  %o553 = alloca %struct._object*, align 8
  %_py_decref_tmp561 = alloca %struct._object*, align 8
  %o574 = alloca %struct._object*, align 8
  %_py_decref_tmp582 = alloca %struct._object*, align 8
  %o595 = alloca %struct._object*, align 8
  %_py_decref_tmp603 = alloca %struct._object*, align 8
  %o616 = alloca %struct._object*, align 8
  %_py_decref_tmp624 = alloca %struct._object*, align 8
  %o637 = alloca %struct._object*, align 8
  %_py_decref_tmp645 = alloca %struct._object*, align 8
  %o658 = alloca %struct._object*, align 8
  %_py_decref_tmp666 = alloca %struct._object*, align 8
  %o679 = alloca %struct._object*, align 8
  %_py_decref_tmp687 = alloca %struct._object*, align 8
  %o700 = alloca %struct._object*, align 8
  %_py_decref_tmp708 = alloca %struct._object*, align 8
  %o721 = alloca %struct._object*, align 8
  %_py_decref_tmp729 = alloca %struct._object*, align 8
  %o742 = alloca %struct._object*, align 8
  %_py_decref_tmp750 = alloca %struct._object*, align 8
  %o763 = alloca %struct._object*, align 8
  %_py_decref_tmp771 = alloca %struct._object*, align 8
  %o784 = alloca %struct._object*, align 8
  %_py_decref_tmp792 = alloca %struct._object*, align 8
  %o805 = alloca %struct._object*, align 8
  %_py_decref_tmp813 = alloca %struct._object*, align 8
  %o826 = alloca %struct._object*, align 8
  %_py_decref_tmp834 = alloca %struct._object*, align 8
  %o847 = alloca %struct._object*, align 8
  %_py_decref_tmp855 = alloca %struct._object*, align 8
  %o868 = alloca %struct._object*, align 8
  %_py_decref_tmp876 = alloca %struct._object*, align 8
  %o889 = alloca %struct._object*, align 8
  %_py_decref_tmp897 = alloca %struct._object*, align 8
  %o910 = alloca %struct._object*, align 8
  %_py_decref_tmp918 = alloca %struct._object*, align 8
  %o931 = alloca %struct._object*, align 8
  %_py_decref_tmp939 = alloca %struct._object*, align 8
  %o952 = alloca %struct._object*, align 8
  %_py_decref_tmp960 = alloca %struct._object*, align 8
  %o973 = alloca %struct._object*, align 8
  %_py_decref_tmp981 = alloca %struct._object*, align 8
  %o994 = alloca %struct._object*, align 8
  %_py_decref_tmp1002 = alloca %struct._object*, align 8
  %o1015 = alloca %struct._object*, align 8
  %_py_decref_tmp1023 = alloca %struct._object*, align 8
  %o1036 = alloca %struct._object*, align 8
  %_py_decref_tmp1044 = alloca %struct._object*, align 8
  %o1057 = alloca %struct._object*, align 8
  %_py_decref_tmp1065 = alloca %struct._object*, align 8
  %o1078 = alloca %struct._object*, align 8
  %_py_decref_tmp1086 = alloca %struct._object*, align 8
  %o1099 = alloca %struct._object*, align 8
  %_py_decref_tmp1107 = alloca %struct._object*, align 8
  %o1120 = alloca %struct._object*, align 8
  %_py_decref_tmp1128 = alloca %struct._object*, align 8
  %o1141 = alloca %struct._object*, align 8
  %_py_decref_tmp1149 = alloca %struct._object*, align 8
  %key = alloca i32, align 4
  %key_n = alloca i8*, align 8
  %key_n2 = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %o1190 = alloca %struct._object*, align 8
  %_py_decref_tmp1200 = alloca %struct._object*, align 8
  %o1218 = alloca %struct._object*, align 8
  %_py_decref_tmp1227 = alloca %struct._object*, align 8
  %o1241 = alloca %struct._object*, align 8
  %_py_decref_tmp1250 = alloca %struct._object*, align 8
  %call = call i32 @PyType_Ready(%struct._typeobject* @PyCursesWindow_Type)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8* bitcast (%struct._typeobject* @PyCursesWindow_Type to i8*), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @PyInit__curses.PyCurses_API, i32 0, i64 0), align 8
  store i8* bitcast (i32 ()* @func_PyCursesSetupTermCalled to i8*), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @PyInit__curses.PyCurses_API, i32 0, i64 1), align 8
  store i8* bitcast (i32 ()* @func_PyCursesInitialised to i8*), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @PyInit__curses.PyCurses_API, i32 0, i64 2), align 8
  store i8* bitcast (i32 ()* @func_PyCursesInitialisedColor to i8*), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @PyInit__curses.PyCurses_API, i32 0, i64 3), align 8
  %call1 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_cursesmodule, i32 1013)
  store %struct._object* %call1, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp2 = icmp eq %struct._object* %0, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %1 = load %struct._object*, %struct._object** %m, align 8
  %call5 = call %struct._object* @PyModule_GetDict(%struct._object* %1)
  store %struct._object* %call5, %struct._object** %d, align 8
  %2 = load %struct._object*, %struct._object** %d, align 8
  %cmp6 = icmp eq %struct._object* %2, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %3 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %3, %struct._object** @ModDict, align 8
  %call9 = call %struct._object* @PyCapsule_New(i8* bitcast ([4 x i8*]* @PyInit__curses.PyCurses_API to i8*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), void (%struct._object*)* null)
  store %struct._object* %call9, %struct._object** %c_api_object, align 8
  %4 = load %struct._object*, %struct._object** %d, align 8
  %5 = load %struct._object*, %struct._object** %c_api_object, align 8
  %call10 = call i32 @PyDict_SetItemString(%struct._object* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), %struct._object* %5)
  br label %do.body

do.body:                                          ; preds = %if.end.8
  %6 = load %struct._object*, %struct._object** %c_api_object, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  %call14 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), %struct._object* null, %struct._object* null)
  store %struct._object* %call14, %struct._object** @PyCursesError, align 8
  %13 = load %struct._object*, %struct._object** %d, align 8
  %14 = load %struct._object*, %struct._object** @PyCursesError, align 8
  %call15 = call i32 @PyDict_SetItemString(%struct._object* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), %struct._object* %14)
  %15 = load i8*, i8** @PyCursesVersion, align 8
  %call16 = call %struct._object* @PyBytes_FromString(i8* %15)
  store %struct._object* %call16, %struct._object** %v, align 8
  %16 = load %struct._object*, %struct._object** %d, align 8
  %17 = load %struct._object*, %struct._object** %v, align 8
  %call17 = call i32 @PyDict_SetItemString(%struct._object* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._object* %17)
  %18 = load %struct._object*, %struct._object** %d, align 8
  %19 = load %struct._object*, %struct._object** %v, align 8
  %call18 = call i32 @PyDict_SetItemString(%struct._object* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), %struct._object* %19)
  br label %do.body.19

do.body.19:                                       ; preds = %do.end
  %20 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp20, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %22, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %25(%struct._object* %26)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %do.body.30

do.body.30:                                       ; preds = %do.end.29
  %call31 = call %struct._object* @PyLong_FromLong(i64 -1)
  store %struct._object* %call31, %struct._object** %o, align 8
  %27 = load %struct._object*, %struct._object** %o, align 8
  %tobool = icmp ne %struct._object* %27, null
  br i1 %tobool, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %do.body.30
  %28 = load %struct._object*, %struct._object** @ModDict, align 8
  %29 = load %struct._object*, %struct._object** %o, align 8
  %call32 = call i32 @PyDict_SetItemString(%struct._object* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), %struct._object* %29)
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then.34, label %if.end.46

if.then.34:                                       ; preds = %land.lhs.true
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  %30 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp36, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt37, align 8
  %dec38 = add i64 %32, -1
  store i64 %dec38, i64* %ob_refcnt37, align 8
  %cmp39 = icmp ne i64 %dec38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.35
  br label %if.end.44

if.else.41:                                       ; preds = %do.body.35
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  call void %35(%struct._object* %36)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %if.end.46

if.end.46:                                        ; preds = %do.end.45, %land.lhs.true, %do.body.30
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %call50 = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call50, %struct._object** %o49, align 8
  %37 = load %struct._object*, %struct._object** %o49, align 8
  %tobool51 = icmp ne %struct._object* %37, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.end.67

land.lhs.true.52:                                 ; preds = %do.body.48
  %38 = load %struct._object*, %struct._object** @ModDict, align 8
  %39 = load %struct._object*, %struct._object** %o49, align 8
  %call53 = call i32 @PyDict_SetItemString(%struct._object* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), %struct._object* %39)
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %if.then.55, label %if.end.67

if.then.55:                                       ; preds = %land.lhs.true.52
  br label %do.body.56

do.body.56:                                       ; preds = %if.then.55
  %40 = load %struct._object*, %struct._object** %o49, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp57, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt58, align 8
  %dec59 = add i64 %42, -1
  store i64 %dec59, i64* %ob_refcnt58, align 8
  %cmp60 = icmp ne i64 %dec59, 0
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.56
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  call void %45(%struct._object* %46)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %do.end.66, %land.lhs.true.52, %do.body.48
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  br label %do.body.69

do.body.69:                                       ; preds = %do.end.68
  %call71 = call %struct._object* @PyLong_FromLong(i64 -256)
  store %struct._object* %call71, %struct._object** %o70, align 8
  %47 = load %struct._object*, %struct._object** %o70, align 8
  %tobool72 = icmp ne %struct._object* %47, null
  br i1 %tobool72, label %land.lhs.true.73, label %if.end.88

land.lhs.true.73:                                 ; preds = %do.body.69
  %48 = load %struct._object*, %struct._object** @ModDict, align 8
  %49 = load %struct._object*, %struct._object** %o70, align 8
  %call74 = call i32 @PyDict_SetItemString(%struct._object* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), %struct._object* %49)
  %cmp75 = icmp eq i32 %call74, 0
  br i1 %cmp75, label %if.then.76, label %if.end.88

if.then.76:                                       ; preds = %land.lhs.true.73
  br label %do.body.77

do.body.77:                                       ; preds = %if.then.76
  %50 = load %struct._object*, %struct._object** %o70, align 8
  store %struct._object* %50, %struct._object** %_py_decref_tmp78, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt79, align 8
  %dec80 = add i64 %52, -1
  store i64 %dec80, i64* %ob_refcnt79, align 8
  %cmp81 = icmp ne i64 %dec80, 0
  br i1 %cmp81, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %do.body.77
  br label %if.end.86

if.else.83:                                       ; preds = %do.body.77
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8
  %tp_dealloc85 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc85, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  call void %55(%struct._object* %56)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.83, %if.then.82
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  br label %if.end.88

if.end.88:                                        ; preds = %do.end.87, %land.lhs.true.73, %do.body.69
  br label %do.end.89

do.end.89:                                        ; preds = %if.end.88
  br label %do.body.90

do.body.90:                                       ; preds = %do.end.89
  %call92 = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call92, %struct._object** %o91, align 8
  %57 = load %struct._object*, %struct._object** %o91, align 8
  %tobool93 = icmp ne %struct._object* %57, null
  br i1 %tobool93, label %land.lhs.true.94, label %if.end.109

land.lhs.true.94:                                 ; preds = %do.body.90
  %58 = load %struct._object*, %struct._object** @ModDict, align 8
  %59 = load %struct._object*, %struct._object** %o91, align 8
  %call95 = call i32 @PyDict_SetItemString(%struct._object* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), %struct._object* %59)
  %cmp96 = icmp eq i32 %call95, 0
  br i1 %cmp96, label %if.then.97, label %if.end.109

if.then.97:                                       ; preds = %land.lhs.true.94
  br label %do.body.98

do.body.98:                                       ; preds = %if.then.97
  %60 = load %struct._object*, %struct._object** %o91, align 8
  store %struct._object* %60, %struct._object** %_py_decref_tmp99, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  %ob_refcnt100 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt100, align 8
  %dec101 = add i64 %62, -1
  store i64 %dec101, i64* %ob_refcnt100, align 8
  %cmp102 = icmp ne i64 %dec101, 0
  br i1 %cmp102, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %do.body.98
  br label %if.end.107

if.else.104:                                      ; preds = %do.body.98
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  %ob_type105 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type105, align 8
  %tp_dealloc106 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc106, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  call void %65(%struct._object* %66)
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.104, %if.then.103
  br label %do.end.108

do.end.108:                                       ; preds = %if.end.107
  br label %if.end.109

if.end.109:                                       ; preds = %do.end.108, %land.lhs.true.94, %do.body.90
  br label %do.end.110

do.end.110:                                       ; preds = %if.end.109
  br label %do.body.111

do.body.111:                                      ; preds = %do.end.110
  %call113 = call %struct._object* @PyLong_FromLong(i64 65536)
  store %struct._object* %call113, %struct._object** %o112, align 8
  %67 = load %struct._object*, %struct._object** %o112, align 8
  %tobool114 = icmp ne %struct._object* %67, null
  br i1 %tobool114, label %land.lhs.true.115, label %if.end.130

land.lhs.true.115:                                ; preds = %do.body.111
  %68 = load %struct._object*, %struct._object** @ModDict, align 8
  %69 = load %struct._object*, %struct._object** %o112, align 8
  %call116 = call i32 @PyDict_SetItemString(%struct._object* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), %struct._object* %69)
  %cmp117 = icmp eq i32 %call116, 0
  br i1 %cmp117, label %if.then.118, label %if.end.130

if.then.118:                                      ; preds = %land.lhs.true.115
  br label %do.body.119

do.body.119:                                      ; preds = %if.then.118
  %70 = load %struct._object*, %struct._object** %o112, align 8
  store %struct._object* %70, %struct._object** %_py_decref_tmp120, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  %ob_refcnt121 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0
  %72 = load i64, i64* %ob_refcnt121, align 8
  %dec122 = add i64 %72, -1
  store i64 %dec122, i64* %ob_refcnt121, align 8
  %cmp123 = icmp ne i64 %dec122, 0
  br i1 %cmp123, label %if.then.124, label %if.else.125

if.then.124:                                      ; preds = %do.body.119
  br label %if.end.128

if.else.125:                                      ; preds = %do.body.119
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  %ob_type126 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type126, align 8
  %tp_dealloc127 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc127, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  call void %75(%struct._object* %76)
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.125, %if.then.124
  br label %do.end.129

do.end.129:                                       ; preds = %if.end.128
  br label %if.end.130

if.end.130:                                       ; preds = %do.end.129, %land.lhs.true.115, %do.body.111
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  br label %do.body.132

do.body.132:                                      ; preds = %do.end.131
  %call134 = call %struct._object* @PyLong_FromLong(i64 131072)
  store %struct._object* %call134, %struct._object** %o133, align 8
  %77 = load %struct._object*, %struct._object** %o133, align 8
  %tobool135 = icmp ne %struct._object* %77, null
  br i1 %tobool135, label %land.lhs.true.136, label %if.end.151

land.lhs.true.136:                                ; preds = %do.body.132
  %78 = load %struct._object*, %struct._object** @ModDict, align 8
  %79 = load %struct._object*, %struct._object** %o133, align 8
  %call137 = call i32 @PyDict_SetItemString(%struct._object* %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), %struct._object* %79)
  %cmp138 = icmp eq i32 %call137, 0
  br i1 %cmp138, label %if.then.139, label %if.end.151

if.then.139:                                      ; preds = %land.lhs.true.136
  br label %do.body.140

do.body.140:                                      ; preds = %if.then.139
  %80 = load %struct._object*, %struct._object** %o133, align 8
  store %struct._object* %80, %struct._object** %_py_decref_tmp141, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8
  %ob_refcnt142 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt142, align 8
  %dec143 = add i64 %82, -1
  store i64 %dec143, i64* %ob_refcnt142, align 8
  %cmp144 = icmp ne i64 %dec143, 0
  br i1 %cmp144, label %if.then.145, label %if.else.146

if.then.145:                                      ; preds = %do.body.140
  br label %if.end.149

if.else.146:                                      ; preds = %do.body.140
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8
  %ob_type147 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type147, align 8
  %tp_dealloc148 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc148, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8
  call void %85(%struct._object* %86)
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.146, %if.then.145
  br label %do.end.150

do.end.150:                                       ; preds = %if.end.149
  br label %if.end.151

if.end.151:                                       ; preds = %do.end.150, %land.lhs.true.136, %do.body.132
  br label %do.end.152

do.end.152:                                       ; preds = %if.end.151
  br label %do.body.153

do.body.153:                                      ; preds = %do.end.152
  %call155 = call %struct._object* @PyLong_FromLong(i64 262144)
  store %struct._object* %call155, %struct._object** %o154, align 8
  %87 = load %struct._object*, %struct._object** %o154, align 8
  %tobool156 = icmp ne %struct._object* %87, null
  br i1 %tobool156, label %land.lhs.true.157, label %if.end.172

land.lhs.true.157:                                ; preds = %do.body.153
  %88 = load %struct._object*, %struct._object** @ModDict, align 8
  %89 = load %struct._object*, %struct._object** %o154, align 8
  %call158 = call i32 @PyDict_SetItemString(%struct._object* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), %struct._object* %89)
  %cmp159 = icmp eq i32 %call158, 0
  br i1 %cmp159, label %if.then.160, label %if.end.172

if.then.160:                                      ; preds = %land.lhs.true.157
  br label %do.body.161

do.body.161:                                      ; preds = %if.then.160
  %90 = load %struct._object*, %struct._object** %o154, align 8
  store %struct._object* %90, %struct._object** %_py_decref_tmp162, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp162, align 8
  %ob_refcnt163 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0
  %92 = load i64, i64* %ob_refcnt163, align 8
  %dec164 = add i64 %92, -1
  store i64 %dec164, i64* %ob_refcnt163, align 8
  %cmp165 = icmp ne i64 %dec164, 0
  br i1 %cmp165, label %if.then.166, label %if.else.167

if.then.166:                                      ; preds = %do.body.161
  br label %if.end.170

if.else.167:                                      ; preds = %do.body.161
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp162, align 8
  %ob_type168 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 1
  %94 = load %struct._typeobject*, %struct._typeobject** %ob_type168, align 8
  %tp_dealloc169 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %94, i32 0, i32 4
  %95 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc169, align 8
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp162, align 8
  call void %95(%struct._object* %96)
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.167, %if.then.166
  br label %do.end.171

do.end.171:                                       ; preds = %if.end.170
  br label %if.end.172

if.end.172:                                       ; preds = %do.end.171, %land.lhs.true.157, %do.body.153
  br label %do.end.173

do.end.173:                                       ; preds = %if.end.172
  br label %do.body.174

do.body.174:                                      ; preds = %do.end.173
  %call176 = call %struct._object* @PyLong_FromLong(i64 524288)
  store %struct._object* %call176, %struct._object** %o175, align 8
  %97 = load %struct._object*, %struct._object** %o175, align 8
  %tobool177 = icmp ne %struct._object* %97, null
  br i1 %tobool177, label %land.lhs.true.178, label %if.end.193

land.lhs.true.178:                                ; preds = %do.body.174
  %98 = load %struct._object*, %struct._object** @ModDict, align 8
  %99 = load %struct._object*, %struct._object** %o175, align 8
  %call179 = call i32 @PyDict_SetItemString(%struct._object* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct._object* %99)
  %cmp180 = icmp eq i32 %call179, 0
  br i1 %cmp180, label %if.then.181, label %if.end.193

if.then.181:                                      ; preds = %land.lhs.true.178
  br label %do.body.182

do.body.182:                                      ; preds = %if.then.181
  %100 = load %struct._object*, %struct._object** %o175, align 8
  store %struct._object* %100, %struct._object** %_py_decref_tmp183, align 8
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp183, align 8
  %ob_refcnt184 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 0
  %102 = load i64, i64* %ob_refcnt184, align 8
  %dec185 = add i64 %102, -1
  store i64 %dec185, i64* %ob_refcnt184, align 8
  %cmp186 = icmp ne i64 %dec185, 0
  br i1 %cmp186, label %if.then.187, label %if.else.188

if.then.187:                                      ; preds = %do.body.182
  br label %if.end.191

if.else.188:                                      ; preds = %do.body.182
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp183, align 8
  %ob_type189 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 1
  %104 = load %struct._typeobject*, %struct._typeobject** %ob_type189, align 8
  %tp_dealloc190 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %104, i32 0, i32 4
  %105 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc190, align 8
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp183, align 8
  call void %105(%struct._object* %106)
  br label %if.end.191

if.end.191:                                       ; preds = %if.else.188, %if.then.187
  br label %do.end.192

do.end.192:                                       ; preds = %if.end.191
  br label %if.end.193

if.end.193:                                       ; preds = %do.end.192, %land.lhs.true.178, %do.body.174
  br label %do.end.194

do.end.194:                                       ; preds = %if.end.193
  br label %do.body.195

do.body.195:                                      ; preds = %do.end.194
  %call197 = call %struct._object* @PyLong_FromLong(i64 1048576)
  store %struct._object* %call197, %struct._object** %o196, align 8
  %107 = load %struct._object*, %struct._object** %o196, align 8
  %tobool198 = icmp ne %struct._object* %107, null
  br i1 %tobool198, label %land.lhs.true.199, label %if.end.214

land.lhs.true.199:                                ; preds = %do.body.195
  %108 = load %struct._object*, %struct._object** @ModDict, align 8
  %109 = load %struct._object*, %struct._object** %o196, align 8
  %call200 = call i32 @PyDict_SetItemString(%struct._object* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), %struct._object* %109)
  %cmp201 = icmp eq i32 %call200, 0
  br i1 %cmp201, label %if.then.202, label %if.end.214

if.then.202:                                      ; preds = %land.lhs.true.199
  br label %do.body.203

do.body.203:                                      ; preds = %if.then.202
  %110 = load %struct._object*, %struct._object** %o196, align 8
  store %struct._object* %110, %struct._object** %_py_decref_tmp204, align 8
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp204, align 8
  %ob_refcnt205 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 0
  %112 = load i64, i64* %ob_refcnt205, align 8
  %dec206 = add i64 %112, -1
  store i64 %dec206, i64* %ob_refcnt205, align 8
  %cmp207 = icmp ne i64 %dec206, 0
  br i1 %cmp207, label %if.then.208, label %if.else.209

if.then.208:                                      ; preds = %do.body.203
  br label %if.end.212

if.else.209:                                      ; preds = %do.body.203
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp204, align 8
  %ob_type210 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 1
  %114 = load %struct._typeobject*, %struct._typeobject** %ob_type210, align 8
  %tp_dealloc211 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %114, i32 0, i32 4
  %115 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc211, align 8
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp204, align 8
  call void %115(%struct._object* %116)
  br label %if.end.212

if.end.212:                                       ; preds = %if.else.209, %if.then.208
  br label %do.end.213

do.end.213:                                       ; preds = %if.end.212
  br label %if.end.214

if.end.214:                                       ; preds = %do.end.213, %land.lhs.true.199, %do.body.195
  br label %do.end.215

do.end.215:                                       ; preds = %if.end.214
  br label %do.body.216

do.body.216:                                      ; preds = %do.end.215
  %call218 = call %struct._object* @PyLong_FromLong(i64 2097152)
  store %struct._object* %call218, %struct._object** %o217, align 8
  %117 = load %struct._object*, %struct._object** %o217, align 8
  %tobool219 = icmp ne %struct._object* %117, null
  br i1 %tobool219, label %land.lhs.true.220, label %if.end.235

land.lhs.true.220:                                ; preds = %do.body.216
  %118 = load %struct._object*, %struct._object** @ModDict, align 8
  %119 = load %struct._object*, %struct._object** %o217, align 8
  %call221 = call i32 @PyDict_SetItemString(%struct._object* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), %struct._object* %119)
  %cmp222 = icmp eq i32 %call221, 0
  br i1 %cmp222, label %if.then.223, label %if.end.235

if.then.223:                                      ; preds = %land.lhs.true.220
  br label %do.body.224

do.body.224:                                      ; preds = %if.then.223
  %120 = load %struct._object*, %struct._object** %o217, align 8
  store %struct._object* %120, %struct._object** %_py_decref_tmp225, align 8
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp225, align 8
  %ob_refcnt226 = getelementptr inbounds %struct._object, %struct._object* %121, i32 0, i32 0
  %122 = load i64, i64* %ob_refcnt226, align 8
  %dec227 = add i64 %122, -1
  store i64 %dec227, i64* %ob_refcnt226, align 8
  %cmp228 = icmp ne i64 %dec227, 0
  br i1 %cmp228, label %if.then.229, label %if.else.230

if.then.229:                                      ; preds = %do.body.224
  br label %if.end.233

if.else.230:                                      ; preds = %do.body.224
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp225, align 8
  %ob_type231 = getelementptr inbounds %struct._object, %struct._object* %123, i32 0, i32 1
  %124 = load %struct._typeobject*, %struct._typeobject** %ob_type231, align 8
  %tp_dealloc232 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %124, i32 0, i32 4
  %125 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc232, align 8
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp225, align 8
  call void %125(%struct._object* %126)
  br label %if.end.233

if.end.233:                                       ; preds = %if.else.230, %if.then.229
  br label %do.end.234

do.end.234:                                       ; preds = %if.end.233
  br label %if.end.235

if.end.235:                                       ; preds = %do.end.234, %land.lhs.true.220, %do.body.216
  br label %do.end.236

do.end.236:                                       ; preds = %if.end.235
  br label %do.body.237

do.body.237:                                      ; preds = %do.end.236
  %call239 = call %struct._object* @PyLong_FromLong(i64 4194304)
  store %struct._object* %call239, %struct._object** %o238, align 8
  %127 = load %struct._object*, %struct._object** %o238, align 8
  %tobool240 = icmp ne %struct._object* %127, null
  br i1 %tobool240, label %land.lhs.true.241, label %if.end.256

land.lhs.true.241:                                ; preds = %do.body.237
  %128 = load %struct._object*, %struct._object** @ModDict, align 8
  %129 = load %struct._object*, %struct._object** %o238, align 8
  %call242 = call i32 @PyDict_SetItemString(%struct._object* %128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), %struct._object* %129)
  %cmp243 = icmp eq i32 %call242, 0
  br i1 %cmp243, label %if.then.244, label %if.end.256

if.then.244:                                      ; preds = %land.lhs.true.241
  br label %do.body.245

do.body.245:                                      ; preds = %if.then.244
  %130 = load %struct._object*, %struct._object** %o238, align 8
  store %struct._object* %130, %struct._object** %_py_decref_tmp246, align 8
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp246, align 8
  %ob_refcnt247 = getelementptr inbounds %struct._object, %struct._object* %131, i32 0, i32 0
  %132 = load i64, i64* %ob_refcnt247, align 8
  %dec248 = add i64 %132, -1
  store i64 %dec248, i64* %ob_refcnt247, align 8
  %cmp249 = icmp ne i64 %dec248, 0
  br i1 %cmp249, label %if.then.250, label %if.else.251

if.then.250:                                      ; preds = %do.body.245
  br label %if.end.254

if.else.251:                                      ; preds = %do.body.245
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp246, align 8
  %ob_type252 = getelementptr inbounds %struct._object, %struct._object* %133, i32 0, i32 1
  %134 = load %struct._typeobject*, %struct._typeobject** %ob_type252, align 8
  %tp_dealloc253 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %134, i32 0, i32 4
  %135 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc253, align 8
  %136 = load %struct._object*, %struct._object** %_py_decref_tmp246, align 8
  call void %135(%struct._object* %136)
  br label %if.end.254

if.end.254:                                       ; preds = %if.else.251, %if.then.250
  br label %do.end.255

do.end.255:                                       ; preds = %if.end.254
  br label %if.end.256

if.end.256:                                       ; preds = %do.end.255, %land.lhs.true.241, %do.body.237
  br label %do.end.257

do.end.257:                                       ; preds = %if.end.256
  br label %do.body.258

do.body.258:                                      ; preds = %do.end.257
  %call260 = call %struct._object* @PyLong_FromLong(i64 8388608)
  store %struct._object* %call260, %struct._object** %o259, align 8
  %137 = load %struct._object*, %struct._object** %o259, align 8
  %tobool261 = icmp ne %struct._object* %137, null
  br i1 %tobool261, label %land.lhs.true.262, label %if.end.277

land.lhs.true.262:                                ; preds = %do.body.258
  %138 = load %struct._object*, %struct._object** @ModDict, align 8
  %139 = load %struct._object*, %struct._object** %o259, align 8
  %call263 = call i32 @PyDict_SetItemString(%struct._object* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), %struct._object* %139)
  %cmp264 = icmp eq i32 %call263, 0
  br i1 %cmp264, label %if.then.265, label %if.end.277

if.then.265:                                      ; preds = %land.lhs.true.262
  br label %do.body.266

do.body.266:                                      ; preds = %if.then.265
  %140 = load %struct._object*, %struct._object** %o259, align 8
  store %struct._object* %140, %struct._object** %_py_decref_tmp267, align 8
  %141 = load %struct._object*, %struct._object** %_py_decref_tmp267, align 8
  %ob_refcnt268 = getelementptr inbounds %struct._object, %struct._object* %141, i32 0, i32 0
  %142 = load i64, i64* %ob_refcnt268, align 8
  %dec269 = add i64 %142, -1
  store i64 %dec269, i64* %ob_refcnt268, align 8
  %cmp270 = icmp ne i64 %dec269, 0
  br i1 %cmp270, label %if.then.271, label %if.else.272

if.then.271:                                      ; preds = %do.body.266
  br label %if.end.275

if.else.272:                                      ; preds = %do.body.266
  %143 = load %struct._object*, %struct._object** %_py_decref_tmp267, align 8
  %ob_type273 = getelementptr inbounds %struct._object, %struct._object* %143, i32 0, i32 1
  %144 = load %struct._typeobject*, %struct._typeobject** %ob_type273, align 8
  %tp_dealloc274 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %144, i32 0, i32 4
  %145 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc274, align 8
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp267, align 8
  call void %145(%struct._object* %146)
  br label %if.end.275

if.end.275:                                       ; preds = %if.else.272, %if.then.271
  br label %do.end.276

do.end.276:                                       ; preds = %if.end.275
  br label %if.end.277

if.end.277:                                       ; preds = %do.end.276, %land.lhs.true.262, %do.body.258
  br label %do.end.278

do.end.278:                                       ; preds = %if.end.277
  br label %do.body.279

do.body.279:                                      ; preds = %do.end.278
  %call281 = call %struct._object* @PyLong_FromLong(i64 16777216)
  store %struct._object* %call281, %struct._object** %o280, align 8
  %147 = load %struct._object*, %struct._object** %o280, align 8
  %tobool282 = icmp ne %struct._object* %147, null
  br i1 %tobool282, label %land.lhs.true.283, label %if.end.298

land.lhs.true.283:                                ; preds = %do.body.279
  %148 = load %struct._object*, %struct._object** @ModDict, align 8
  %149 = load %struct._object*, %struct._object** %o280, align 8
  %call284 = call i32 @PyDict_SetItemString(%struct._object* %148, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), %struct._object* %149)
  %cmp285 = icmp eq i32 %call284, 0
  br i1 %cmp285, label %if.then.286, label %if.end.298

if.then.286:                                      ; preds = %land.lhs.true.283
  br label %do.body.287

do.body.287:                                      ; preds = %if.then.286
  %150 = load %struct._object*, %struct._object** %o280, align 8
  store %struct._object* %150, %struct._object** %_py_decref_tmp288, align 8
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp288, align 8
  %ob_refcnt289 = getelementptr inbounds %struct._object, %struct._object* %151, i32 0, i32 0
  %152 = load i64, i64* %ob_refcnt289, align 8
  %dec290 = add i64 %152, -1
  store i64 %dec290, i64* %ob_refcnt289, align 8
  %cmp291 = icmp ne i64 %dec290, 0
  br i1 %cmp291, label %if.then.292, label %if.else.293

if.then.292:                                      ; preds = %do.body.287
  br label %if.end.296

if.else.293:                                      ; preds = %do.body.287
  %153 = load %struct._object*, %struct._object** %_py_decref_tmp288, align 8
  %ob_type294 = getelementptr inbounds %struct._object, %struct._object* %153, i32 0, i32 1
  %154 = load %struct._typeobject*, %struct._typeobject** %ob_type294, align 8
  %tp_dealloc295 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %154, i32 0, i32 4
  %155 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc295, align 8
  %156 = load %struct._object*, %struct._object** %_py_decref_tmp288, align 8
  call void %155(%struct._object* %156)
  br label %if.end.296

if.end.296:                                       ; preds = %if.else.293, %if.then.292
  br label %do.end.297

do.end.297:                                       ; preds = %if.end.296
  br label %if.end.298

if.end.298:                                       ; preds = %do.end.297, %land.lhs.true.283, %do.body.279
  br label %do.end.299

do.end.299:                                       ; preds = %if.end.298
  br label %do.body.300

do.body.300:                                      ; preds = %do.end.299
  %call302 = call %struct._object* @PyLong_FromLong(i64 255)
  store %struct._object* %call302, %struct._object** %o301, align 8
  %157 = load %struct._object*, %struct._object** %o301, align 8
  %tobool303 = icmp ne %struct._object* %157, null
  br i1 %tobool303, label %land.lhs.true.304, label %if.end.319

land.lhs.true.304:                                ; preds = %do.body.300
  %158 = load %struct._object*, %struct._object** @ModDict, align 8
  %159 = load %struct._object*, %struct._object** %o301, align 8
  %call305 = call i32 @PyDict_SetItemString(%struct._object* %158, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), %struct._object* %159)
  %cmp306 = icmp eq i32 %call305, 0
  br i1 %cmp306, label %if.then.307, label %if.end.319

if.then.307:                                      ; preds = %land.lhs.true.304
  br label %do.body.308

do.body.308:                                      ; preds = %if.then.307
  %160 = load %struct._object*, %struct._object** %o301, align 8
  store %struct._object* %160, %struct._object** %_py_decref_tmp309, align 8
  %161 = load %struct._object*, %struct._object** %_py_decref_tmp309, align 8
  %ob_refcnt310 = getelementptr inbounds %struct._object, %struct._object* %161, i32 0, i32 0
  %162 = load i64, i64* %ob_refcnt310, align 8
  %dec311 = add i64 %162, -1
  store i64 %dec311, i64* %ob_refcnt310, align 8
  %cmp312 = icmp ne i64 %dec311, 0
  br i1 %cmp312, label %if.then.313, label %if.else.314

if.then.313:                                      ; preds = %do.body.308
  br label %if.end.317

if.else.314:                                      ; preds = %do.body.308
  %163 = load %struct._object*, %struct._object** %_py_decref_tmp309, align 8
  %ob_type315 = getelementptr inbounds %struct._object, %struct._object* %163, i32 0, i32 1
  %164 = load %struct._typeobject*, %struct._typeobject** %ob_type315, align 8
  %tp_dealloc316 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %164, i32 0, i32 4
  %165 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc316, align 8
  %166 = load %struct._object*, %struct._object** %_py_decref_tmp309, align 8
  call void %165(%struct._object* %166)
  br label %if.end.317

if.end.317:                                       ; preds = %if.else.314, %if.then.313
  br label %do.end.318

do.end.318:                                       ; preds = %if.end.317
  br label %if.end.319

if.end.319:                                       ; preds = %do.end.318, %land.lhs.true.304, %do.body.300
  br label %do.end.320

do.end.320:                                       ; preds = %if.end.319
  br label %do.body.321

do.body.321:                                      ; preds = %do.end.320
  %call323 = call %struct._object* @PyLong_FromLong(i64 65280)
  store %struct._object* %call323, %struct._object** %o322, align 8
  %167 = load %struct._object*, %struct._object** %o322, align 8
  %tobool324 = icmp ne %struct._object* %167, null
  br i1 %tobool324, label %land.lhs.true.325, label %if.end.340

land.lhs.true.325:                                ; preds = %do.body.321
  %168 = load %struct._object*, %struct._object** @ModDict, align 8
  %169 = load %struct._object*, %struct._object** %o322, align 8
  %call326 = call i32 @PyDict_SetItemString(%struct._object* %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), %struct._object* %169)
  %cmp327 = icmp eq i32 %call326, 0
  br i1 %cmp327, label %if.then.328, label %if.end.340

if.then.328:                                      ; preds = %land.lhs.true.325
  br label %do.body.329

do.body.329:                                      ; preds = %if.then.328
  %170 = load %struct._object*, %struct._object** %o322, align 8
  store %struct._object* %170, %struct._object** %_py_decref_tmp330, align 8
  %171 = load %struct._object*, %struct._object** %_py_decref_tmp330, align 8
  %ob_refcnt331 = getelementptr inbounds %struct._object, %struct._object* %171, i32 0, i32 0
  %172 = load i64, i64* %ob_refcnt331, align 8
  %dec332 = add i64 %172, -1
  store i64 %dec332, i64* %ob_refcnt331, align 8
  %cmp333 = icmp ne i64 %dec332, 0
  br i1 %cmp333, label %if.then.334, label %if.else.335

if.then.334:                                      ; preds = %do.body.329
  br label %if.end.338

if.else.335:                                      ; preds = %do.body.329
  %173 = load %struct._object*, %struct._object** %_py_decref_tmp330, align 8
  %ob_type336 = getelementptr inbounds %struct._object, %struct._object* %173, i32 0, i32 1
  %174 = load %struct._typeobject*, %struct._typeobject** %ob_type336, align 8
  %tp_dealloc337 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %174, i32 0, i32 4
  %175 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc337, align 8
  %176 = load %struct._object*, %struct._object** %_py_decref_tmp330, align 8
  call void %175(%struct._object* %176)
  br label %if.end.338

if.end.338:                                       ; preds = %if.else.335, %if.then.334
  br label %do.end.339

do.end.339:                                       ; preds = %if.end.338
  br label %if.end.340

if.end.340:                                       ; preds = %do.end.339, %land.lhs.true.325, %do.body.321
  br label %do.end.341

do.end.341:                                       ; preds = %if.end.340
  br label %do.body.342

do.body.342:                                      ; preds = %do.end.341
  %call344 = call %struct._object* @PyLong_FromLong(i64 33554432)
  store %struct._object* %call344, %struct._object** %o343, align 8
  %177 = load %struct._object*, %struct._object** %o343, align 8
  %tobool345 = icmp ne %struct._object* %177, null
  br i1 %tobool345, label %land.lhs.true.346, label %if.end.361

land.lhs.true.346:                                ; preds = %do.body.342
  %178 = load %struct._object*, %struct._object** @ModDict, align 8
  %179 = load %struct._object*, %struct._object** %o343, align 8
  %call347 = call i32 @PyDict_SetItemString(%struct._object* %178, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), %struct._object* %179)
  %cmp348 = icmp eq i32 %call347, 0
  br i1 %cmp348, label %if.then.349, label %if.end.361

if.then.349:                                      ; preds = %land.lhs.true.346
  br label %do.body.350

do.body.350:                                      ; preds = %if.then.349
  %180 = load %struct._object*, %struct._object** %o343, align 8
  store %struct._object* %180, %struct._object** %_py_decref_tmp351, align 8
  %181 = load %struct._object*, %struct._object** %_py_decref_tmp351, align 8
  %ob_refcnt352 = getelementptr inbounds %struct._object, %struct._object* %181, i32 0, i32 0
  %182 = load i64, i64* %ob_refcnt352, align 8
  %dec353 = add i64 %182, -1
  store i64 %dec353, i64* %ob_refcnt352, align 8
  %cmp354 = icmp ne i64 %dec353, 0
  br i1 %cmp354, label %if.then.355, label %if.else.356

if.then.355:                                      ; preds = %do.body.350
  br label %if.end.359

if.else.356:                                      ; preds = %do.body.350
  %183 = load %struct._object*, %struct._object** %_py_decref_tmp351, align 8
  %ob_type357 = getelementptr inbounds %struct._object, %struct._object* %183, i32 0, i32 1
  %184 = load %struct._typeobject*, %struct._typeobject** %ob_type357, align 8
  %tp_dealloc358 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %184, i32 0, i32 4
  %185 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc358, align 8
  %186 = load %struct._object*, %struct._object** %_py_decref_tmp351, align 8
  call void %185(%struct._object* %186)
  br label %if.end.359

if.end.359:                                       ; preds = %if.else.356, %if.then.355
  br label %do.end.360

do.end.360:                                       ; preds = %if.end.359
  br label %if.end.361

if.end.361:                                       ; preds = %do.end.360, %land.lhs.true.346, %do.body.342
  br label %do.end.362

do.end.362:                                       ; preds = %if.end.361
  br label %do.body.363

do.body.363:                                      ; preds = %do.end.362
  %call365 = call %struct._object* @PyLong_FromLong(i64 67108864)
  store %struct._object* %call365, %struct._object** %o364, align 8
  %187 = load %struct._object*, %struct._object** %o364, align 8
  %tobool366 = icmp ne %struct._object* %187, null
  br i1 %tobool366, label %land.lhs.true.367, label %if.end.382

land.lhs.true.367:                                ; preds = %do.body.363
  %188 = load %struct._object*, %struct._object** @ModDict, align 8
  %189 = load %struct._object*, %struct._object** %o364, align 8
  %call368 = call i32 @PyDict_SetItemString(%struct._object* %188, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), %struct._object* %189)
  %cmp369 = icmp eq i32 %call368, 0
  br i1 %cmp369, label %if.then.370, label %if.end.382

if.then.370:                                      ; preds = %land.lhs.true.367
  br label %do.body.371

do.body.371:                                      ; preds = %if.then.370
  %190 = load %struct._object*, %struct._object** %o364, align 8
  store %struct._object* %190, %struct._object** %_py_decref_tmp372, align 8
  %191 = load %struct._object*, %struct._object** %_py_decref_tmp372, align 8
  %ob_refcnt373 = getelementptr inbounds %struct._object, %struct._object* %191, i32 0, i32 0
  %192 = load i64, i64* %ob_refcnt373, align 8
  %dec374 = add i64 %192, -1
  store i64 %dec374, i64* %ob_refcnt373, align 8
  %cmp375 = icmp ne i64 %dec374, 0
  br i1 %cmp375, label %if.then.376, label %if.else.377

if.then.376:                                      ; preds = %do.body.371
  br label %if.end.380

if.else.377:                                      ; preds = %do.body.371
  %193 = load %struct._object*, %struct._object** %_py_decref_tmp372, align 8
  %ob_type378 = getelementptr inbounds %struct._object, %struct._object* %193, i32 0, i32 1
  %194 = load %struct._typeobject*, %struct._typeobject** %ob_type378, align 8
  %tp_dealloc379 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %194, i32 0, i32 4
  %195 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc379, align 8
  %196 = load %struct._object*, %struct._object** %_py_decref_tmp372, align 8
  call void %195(%struct._object* %196)
  br label %if.end.380

if.end.380:                                       ; preds = %if.else.377, %if.then.376
  br label %do.end.381

do.end.381:                                       ; preds = %if.end.380
  br label %if.end.382

if.end.382:                                       ; preds = %do.end.381, %land.lhs.true.367, %do.body.363
  br label %do.end.383

do.end.383:                                       ; preds = %if.end.382
  br label %do.body.384

do.body.384:                                      ; preds = %do.end.383
  %call386 = call %struct._object* @PyLong_FromLong(i64 134217728)
  store %struct._object* %call386, %struct._object** %o385, align 8
  %197 = load %struct._object*, %struct._object** %o385, align 8
  %tobool387 = icmp ne %struct._object* %197, null
  br i1 %tobool387, label %land.lhs.true.388, label %if.end.403

land.lhs.true.388:                                ; preds = %do.body.384
  %198 = load %struct._object*, %struct._object** @ModDict, align 8
  %199 = load %struct._object*, %struct._object** %o385, align 8
  %call389 = call i32 @PyDict_SetItemString(%struct._object* %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), %struct._object* %199)
  %cmp390 = icmp eq i32 %call389, 0
  br i1 %cmp390, label %if.then.391, label %if.end.403

if.then.391:                                      ; preds = %land.lhs.true.388
  br label %do.body.392

do.body.392:                                      ; preds = %if.then.391
  %200 = load %struct._object*, %struct._object** %o385, align 8
  store %struct._object* %200, %struct._object** %_py_decref_tmp393, align 8
  %201 = load %struct._object*, %struct._object** %_py_decref_tmp393, align 8
  %ob_refcnt394 = getelementptr inbounds %struct._object, %struct._object* %201, i32 0, i32 0
  %202 = load i64, i64* %ob_refcnt394, align 8
  %dec395 = add i64 %202, -1
  store i64 %dec395, i64* %ob_refcnt394, align 8
  %cmp396 = icmp ne i64 %dec395, 0
  br i1 %cmp396, label %if.then.397, label %if.else.398

if.then.397:                                      ; preds = %do.body.392
  br label %if.end.401

if.else.398:                                      ; preds = %do.body.392
  %203 = load %struct._object*, %struct._object** %_py_decref_tmp393, align 8
  %ob_type399 = getelementptr inbounds %struct._object, %struct._object* %203, i32 0, i32 1
  %204 = load %struct._typeobject*, %struct._typeobject** %ob_type399, align 8
  %tp_dealloc400 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %204, i32 0, i32 4
  %205 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc400, align 8
  %206 = load %struct._object*, %struct._object** %_py_decref_tmp393, align 8
  call void %205(%struct._object* %206)
  br label %if.end.401

if.end.401:                                       ; preds = %if.else.398, %if.then.397
  br label %do.end.402

do.end.402:                                       ; preds = %if.end.401
  br label %if.end.403

if.end.403:                                       ; preds = %do.end.402, %land.lhs.true.388, %do.body.384
  br label %do.end.404

do.end.404:                                       ; preds = %if.end.403
  br label %do.body.405

do.body.405:                                      ; preds = %do.end.404
  %call407 = call %struct._object* @PyLong_FromLong(i64 268435456)
  store %struct._object* %call407, %struct._object** %o406, align 8
  %207 = load %struct._object*, %struct._object** %o406, align 8
  %tobool408 = icmp ne %struct._object* %207, null
  br i1 %tobool408, label %land.lhs.true.409, label %if.end.424

land.lhs.true.409:                                ; preds = %do.body.405
  %208 = load %struct._object*, %struct._object** @ModDict, align 8
  %209 = load %struct._object*, %struct._object** %o406, align 8
  %call410 = call i32 @PyDict_SetItemString(%struct._object* %208, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), %struct._object* %209)
  %cmp411 = icmp eq i32 %call410, 0
  br i1 %cmp411, label %if.then.412, label %if.end.424

if.then.412:                                      ; preds = %land.lhs.true.409
  br label %do.body.413

do.body.413:                                      ; preds = %if.then.412
  %210 = load %struct._object*, %struct._object** %o406, align 8
  store %struct._object* %210, %struct._object** %_py_decref_tmp414, align 8
  %211 = load %struct._object*, %struct._object** %_py_decref_tmp414, align 8
  %ob_refcnt415 = getelementptr inbounds %struct._object, %struct._object* %211, i32 0, i32 0
  %212 = load i64, i64* %ob_refcnt415, align 8
  %dec416 = add i64 %212, -1
  store i64 %dec416, i64* %ob_refcnt415, align 8
  %cmp417 = icmp ne i64 %dec416, 0
  br i1 %cmp417, label %if.then.418, label %if.else.419

if.then.418:                                      ; preds = %do.body.413
  br label %if.end.422

if.else.419:                                      ; preds = %do.body.413
  %213 = load %struct._object*, %struct._object** %_py_decref_tmp414, align 8
  %ob_type420 = getelementptr inbounds %struct._object, %struct._object* %213, i32 0, i32 1
  %214 = load %struct._typeobject*, %struct._typeobject** %ob_type420, align 8
  %tp_dealloc421 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %214, i32 0, i32 4
  %215 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc421, align 8
  %216 = load %struct._object*, %struct._object** %_py_decref_tmp414, align 8
  call void %215(%struct._object* %216)
  br label %if.end.422

if.end.422:                                       ; preds = %if.else.419, %if.then.418
  br label %do.end.423

do.end.423:                                       ; preds = %if.end.422
  br label %if.end.424

if.end.424:                                       ; preds = %do.end.423, %land.lhs.true.409, %do.body.405
  br label %do.end.425

do.end.425:                                       ; preds = %if.end.424
  br label %do.body.426

do.body.426:                                      ; preds = %do.end.425
  %call428 = call %struct._object* @PyLong_FromLong(i64 536870912)
  store %struct._object* %call428, %struct._object** %o427, align 8
  %217 = load %struct._object*, %struct._object** %o427, align 8
  %tobool429 = icmp ne %struct._object* %217, null
  br i1 %tobool429, label %land.lhs.true.430, label %if.end.445

land.lhs.true.430:                                ; preds = %do.body.426
  %218 = load %struct._object*, %struct._object** @ModDict, align 8
  %219 = load %struct._object*, %struct._object** %o427, align 8
  %call431 = call i32 @PyDict_SetItemString(%struct._object* %218, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), %struct._object* %219)
  %cmp432 = icmp eq i32 %call431, 0
  br i1 %cmp432, label %if.then.433, label %if.end.445

if.then.433:                                      ; preds = %land.lhs.true.430
  br label %do.body.434

do.body.434:                                      ; preds = %if.then.433
  %220 = load %struct._object*, %struct._object** %o427, align 8
  store %struct._object* %220, %struct._object** %_py_decref_tmp435, align 8
  %221 = load %struct._object*, %struct._object** %_py_decref_tmp435, align 8
  %ob_refcnt436 = getelementptr inbounds %struct._object, %struct._object* %221, i32 0, i32 0
  %222 = load i64, i64* %ob_refcnt436, align 8
  %dec437 = add i64 %222, -1
  store i64 %dec437, i64* %ob_refcnt436, align 8
  %cmp438 = icmp ne i64 %dec437, 0
  br i1 %cmp438, label %if.then.439, label %if.else.440

if.then.439:                                      ; preds = %do.body.434
  br label %if.end.443

if.else.440:                                      ; preds = %do.body.434
  %223 = load %struct._object*, %struct._object** %_py_decref_tmp435, align 8
  %ob_type441 = getelementptr inbounds %struct._object, %struct._object* %223, i32 0, i32 1
  %224 = load %struct._typeobject*, %struct._typeobject** %ob_type441, align 8
  %tp_dealloc442 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %224, i32 0, i32 4
  %225 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc442, align 8
  %226 = load %struct._object*, %struct._object** %_py_decref_tmp435, align 8
  call void %225(%struct._object* %226)
  br label %if.end.443

if.end.443:                                       ; preds = %if.else.440, %if.then.439
  br label %do.end.444

do.end.444:                                       ; preds = %if.end.443
  br label %if.end.445

if.end.445:                                       ; preds = %do.end.444, %land.lhs.true.430, %do.body.426
  br label %do.end.446

do.end.446:                                       ; preds = %if.end.445
  br label %do.body.447

do.body.447:                                      ; preds = %do.end.446
  %call449 = call %struct._object* @PyLong_FromLong(i64 1073741824)
  store %struct._object* %call449, %struct._object** %o448, align 8
  %227 = load %struct._object*, %struct._object** %o448, align 8
  %tobool450 = icmp ne %struct._object* %227, null
  br i1 %tobool450, label %land.lhs.true.451, label %if.end.466

land.lhs.true.451:                                ; preds = %do.body.447
  %228 = load %struct._object*, %struct._object** @ModDict, align 8
  %229 = load %struct._object*, %struct._object** %o448, align 8
  %call452 = call i32 @PyDict_SetItemString(%struct._object* %228, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %struct._object* %229)
  %cmp453 = icmp eq i32 %call452, 0
  br i1 %cmp453, label %if.then.454, label %if.end.466

if.then.454:                                      ; preds = %land.lhs.true.451
  br label %do.body.455

do.body.455:                                      ; preds = %if.then.454
  %230 = load %struct._object*, %struct._object** %o448, align 8
  store %struct._object* %230, %struct._object** %_py_decref_tmp456, align 8
  %231 = load %struct._object*, %struct._object** %_py_decref_tmp456, align 8
  %ob_refcnt457 = getelementptr inbounds %struct._object, %struct._object* %231, i32 0, i32 0
  %232 = load i64, i64* %ob_refcnt457, align 8
  %dec458 = add i64 %232, -1
  store i64 %dec458, i64* %ob_refcnt457, align 8
  %cmp459 = icmp ne i64 %dec458, 0
  br i1 %cmp459, label %if.then.460, label %if.else.461

if.then.460:                                      ; preds = %do.body.455
  br label %if.end.464

if.else.461:                                      ; preds = %do.body.455
  %233 = load %struct._object*, %struct._object** %_py_decref_tmp456, align 8
  %ob_type462 = getelementptr inbounds %struct._object, %struct._object* %233, i32 0, i32 1
  %234 = load %struct._typeobject*, %struct._typeobject** %ob_type462, align 8
  %tp_dealloc463 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %234, i32 0, i32 4
  %235 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc463, align 8
  %236 = load %struct._object*, %struct._object** %_py_decref_tmp456, align 8
  call void %235(%struct._object* %236)
  br label %if.end.464

if.end.464:                                       ; preds = %if.else.461, %if.then.460
  br label %do.end.465

do.end.465:                                       ; preds = %if.end.464
  br label %if.end.466

if.end.466:                                       ; preds = %do.end.465, %land.lhs.true.451, %do.body.447
  br label %do.end.467

do.end.467:                                       ; preds = %if.end.466
  br label %do.body.468

do.body.468:                                      ; preds = %do.end.467
  %call470 = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call470, %struct._object** %o469, align 8
  %237 = load %struct._object*, %struct._object** %o469, align 8
  %tobool471 = icmp ne %struct._object* %237, null
  br i1 %tobool471, label %land.lhs.true.472, label %if.end.487

land.lhs.true.472:                                ; preds = %do.body.468
  %238 = load %struct._object*, %struct._object** @ModDict, align 8
  %239 = load %struct._object*, %struct._object** %o469, align 8
  %call473 = call i32 @PyDict_SetItemString(%struct._object* %238, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), %struct._object* %239)
  %cmp474 = icmp eq i32 %call473, 0
  br i1 %cmp474, label %if.then.475, label %if.end.487

if.then.475:                                      ; preds = %land.lhs.true.472
  br label %do.body.476

do.body.476:                                      ; preds = %if.then.475
  %240 = load %struct._object*, %struct._object** %o469, align 8
  store %struct._object* %240, %struct._object** %_py_decref_tmp477, align 8
  %241 = load %struct._object*, %struct._object** %_py_decref_tmp477, align 8
  %ob_refcnt478 = getelementptr inbounds %struct._object, %struct._object* %241, i32 0, i32 0
  %242 = load i64, i64* %ob_refcnt478, align 8
  %dec479 = add i64 %242, -1
  store i64 %dec479, i64* %ob_refcnt478, align 8
  %cmp480 = icmp ne i64 %dec479, 0
  br i1 %cmp480, label %if.then.481, label %if.else.482

if.then.481:                                      ; preds = %do.body.476
  br label %if.end.485

if.else.482:                                      ; preds = %do.body.476
  %243 = load %struct._object*, %struct._object** %_py_decref_tmp477, align 8
  %ob_type483 = getelementptr inbounds %struct._object, %struct._object* %243, i32 0, i32 1
  %244 = load %struct._typeobject*, %struct._typeobject** %ob_type483, align 8
  %tp_dealloc484 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %244, i32 0, i32 4
  %245 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc484, align 8
  %246 = load %struct._object*, %struct._object** %_py_decref_tmp477, align 8
  call void %245(%struct._object* %246)
  br label %if.end.485

if.end.485:                                       ; preds = %if.else.482, %if.then.481
  br label %do.end.486

do.end.486:                                       ; preds = %if.end.485
  br label %if.end.487

if.end.487:                                       ; preds = %do.end.486, %land.lhs.true.472, %do.body.468
  br label %do.end.488

do.end.488:                                       ; preds = %if.end.487
  br label %do.body.489

do.body.489:                                      ; preds = %do.end.488
  %call491 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call491, %struct._object** %o490, align 8
  %247 = load %struct._object*, %struct._object** %o490, align 8
  %tobool492 = icmp ne %struct._object* %247, null
  br i1 %tobool492, label %land.lhs.true.493, label %if.end.508

land.lhs.true.493:                                ; preds = %do.body.489
  %248 = load %struct._object*, %struct._object** @ModDict, align 8
  %249 = load %struct._object*, %struct._object** %o490, align 8
  %call494 = call i32 @PyDict_SetItemString(%struct._object* %248, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), %struct._object* %249)
  %cmp495 = icmp eq i32 %call494, 0
  br i1 %cmp495, label %if.then.496, label %if.end.508

if.then.496:                                      ; preds = %land.lhs.true.493
  br label %do.body.497

do.body.497:                                      ; preds = %if.then.496
  %250 = load %struct._object*, %struct._object** %o490, align 8
  store %struct._object* %250, %struct._object** %_py_decref_tmp498, align 8
  %251 = load %struct._object*, %struct._object** %_py_decref_tmp498, align 8
  %ob_refcnt499 = getelementptr inbounds %struct._object, %struct._object* %251, i32 0, i32 0
  %252 = load i64, i64* %ob_refcnt499, align 8
  %dec500 = add i64 %252, -1
  store i64 %dec500, i64* %ob_refcnt499, align 8
  %cmp501 = icmp ne i64 %dec500, 0
  br i1 %cmp501, label %if.then.502, label %if.else.503

if.then.502:                                      ; preds = %do.body.497
  br label %if.end.506

if.else.503:                                      ; preds = %do.body.497
  %253 = load %struct._object*, %struct._object** %_py_decref_tmp498, align 8
  %ob_type504 = getelementptr inbounds %struct._object, %struct._object* %253, i32 0, i32 1
  %254 = load %struct._typeobject*, %struct._typeobject** %ob_type504, align 8
  %tp_dealloc505 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %254, i32 0, i32 4
  %255 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc505, align 8
  %256 = load %struct._object*, %struct._object** %_py_decref_tmp498, align 8
  call void %255(%struct._object* %256)
  br label %if.end.506

if.end.506:                                       ; preds = %if.else.503, %if.then.502
  br label %do.end.507

do.end.507:                                       ; preds = %if.end.506
  br label %if.end.508

if.end.508:                                       ; preds = %do.end.507, %land.lhs.true.493, %do.body.489
  br label %do.end.509

do.end.509:                                       ; preds = %if.end.508
  br label %do.body.510

do.body.510:                                      ; preds = %do.end.509
  %call512 = call %struct._object* @PyLong_FromLong(i64 2)
  store %struct._object* %call512, %struct._object** %o511, align 8
  %257 = load %struct._object*, %struct._object** %o511, align 8
  %tobool513 = icmp ne %struct._object* %257, null
  br i1 %tobool513, label %land.lhs.true.514, label %if.end.529

land.lhs.true.514:                                ; preds = %do.body.510
  %258 = load %struct._object*, %struct._object** @ModDict, align 8
  %259 = load %struct._object*, %struct._object** %o511, align 8
  %call515 = call i32 @PyDict_SetItemString(%struct._object* %258, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), %struct._object* %259)
  %cmp516 = icmp eq i32 %call515, 0
  br i1 %cmp516, label %if.then.517, label %if.end.529

if.then.517:                                      ; preds = %land.lhs.true.514
  br label %do.body.518

do.body.518:                                      ; preds = %if.then.517
  %260 = load %struct._object*, %struct._object** %o511, align 8
  store %struct._object* %260, %struct._object** %_py_decref_tmp519, align 8
  %261 = load %struct._object*, %struct._object** %_py_decref_tmp519, align 8
  %ob_refcnt520 = getelementptr inbounds %struct._object, %struct._object* %261, i32 0, i32 0
  %262 = load i64, i64* %ob_refcnt520, align 8
  %dec521 = add i64 %262, -1
  store i64 %dec521, i64* %ob_refcnt520, align 8
  %cmp522 = icmp ne i64 %dec521, 0
  br i1 %cmp522, label %if.then.523, label %if.else.524

if.then.523:                                      ; preds = %do.body.518
  br label %if.end.527

if.else.524:                                      ; preds = %do.body.518
  %263 = load %struct._object*, %struct._object** %_py_decref_tmp519, align 8
  %ob_type525 = getelementptr inbounds %struct._object, %struct._object* %263, i32 0, i32 1
  %264 = load %struct._typeobject*, %struct._typeobject** %ob_type525, align 8
  %tp_dealloc526 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %264, i32 0, i32 4
  %265 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc526, align 8
  %266 = load %struct._object*, %struct._object** %_py_decref_tmp519, align 8
  call void %265(%struct._object* %266)
  br label %if.end.527

if.end.527:                                       ; preds = %if.else.524, %if.then.523
  br label %do.end.528

do.end.528:                                       ; preds = %if.end.527
  br label %if.end.529

if.end.529:                                       ; preds = %do.end.528, %land.lhs.true.514, %do.body.510
  br label %do.end.530

do.end.530:                                       ; preds = %if.end.529
  br label %do.body.531

do.body.531:                                      ; preds = %do.end.530
  %call533 = call %struct._object* @PyLong_FromLong(i64 3)
  store %struct._object* %call533, %struct._object** %o532, align 8
  %267 = load %struct._object*, %struct._object** %o532, align 8
  %tobool534 = icmp ne %struct._object* %267, null
  br i1 %tobool534, label %land.lhs.true.535, label %if.end.550

land.lhs.true.535:                                ; preds = %do.body.531
  %268 = load %struct._object*, %struct._object** @ModDict, align 8
  %269 = load %struct._object*, %struct._object** %o532, align 8
  %call536 = call i32 @PyDict_SetItemString(%struct._object* %268, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), %struct._object* %269)
  %cmp537 = icmp eq i32 %call536, 0
  br i1 %cmp537, label %if.then.538, label %if.end.550

if.then.538:                                      ; preds = %land.lhs.true.535
  br label %do.body.539

do.body.539:                                      ; preds = %if.then.538
  %270 = load %struct._object*, %struct._object** %o532, align 8
  store %struct._object* %270, %struct._object** %_py_decref_tmp540, align 8
  %271 = load %struct._object*, %struct._object** %_py_decref_tmp540, align 8
  %ob_refcnt541 = getelementptr inbounds %struct._object, %struct._object* %271, i32 0, i32 0
  %272 = load i64, i64* %ob_refcnt541, align 8
  %dec542 = add i64 %272, -1
  store i64 %dec542, i64* %ob_refcnt541, align 8
  %cmp543 = icmp ne i64 %dec542, 0
  br i1 %cmp543, label %if.then.544, label %if.else.545

if.then.544:                                      ; preds = %do.body.539
  br label %if.end.548

if.else.545:                                      ; preds = %do.body.539
  %273 = load %struct._object*, %struct._object** %_py_decref_tmp540, align 8
  %ob_type546 = getelementptr inbounds %struct._object, %struct._object* %273, i32 0, i32 1
  %274 = load %struct._typeobject*, %struct._typeobject** %ob_type546, align 8
  %tp_dealloc547 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %274, i32 0, i32 4
  %275 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc547, align 8
  %276 = load %struct._object*, %struct._object** %_py_decref_tmp540, align 8
  call void %275(%struct._object* %276)
  br label %if.end.548

if.end.548:                                       ; preds = %if.else.545, %if.then.544
  br label %do.end.549

do.end.549:                                       ; preds = %if.end.548
  br label %if.end.550

if.end.550:                                       ; preds = %do.end.549, %land.lhs.true.535, %do.body.531
  br label %do.end.551

do.end.551:                                       ; preds = %if.end.550
  br label %do.body.552

do.body.552:                                      ; preds = %do.end.551
  %call554 = call %struct._object* @PyLong_FromLong(i64 4)
  store %struct._object* %call554, %struct._object** %o553, align 8
  %277 = load %struct._object*, %struct._object** %o553, align 8
  %tobool555 = icmp ne %struct._object* %277, null
  br i1 %tobool555, label %land.lhs.true.556, label %if.end.571

land.lhs.true.556:                                ; preds = %do.body.552
  %278 = load %struct._object*, %struct._object** @ModDict, align 8
  %279 = load %struct._object*, %struct._object** %o553, align 8
  %call557 = call i32 @PyDict_SetItemString(%struct._object* %278, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), %struct._object* %279)
  %cmp558 = icmp eq i32 %call557, 0
  br i1 %cmp558, label %if.then.559, label %if.end.571

if.then.559:                                      ; preds = %land.lhs.true.556
  br label %do.body.560

do.body.560:                                      ; preds = %if.then.559
  %280 = load %struct._object*, %struct._object** %o553, align 8
  store %struct._object* %280, %struct._object** %_py_decref_tmp561, align 8
  %281 = load %struct._object*, %struct._object** %_py_decref_tmp561, align 8
  %ob_refcnt562 = getelementptr inbounds %struct._object, %struct._object* %281, i32 0, i32 0
  %282 = load i64, i64* %ob_refcnt562, align 8
  %dec563 = add i64 %282, -1
  store i64 %dec563, i64* %ob_refcnt562, align 8
  %cmp564 = icmp ne i64 %dec563, 0
  br i1 %cmp564, label %if.then.565, label %if.else.566

if.then.565:                                      ; preds = %do.body.560
  br label %if.end.569

if.else.566:                                      ; preds = %do.body.560
  %283 = load %struct._object*, %struct._object** %_py_decref_tmp561, align 8
  %ob_type567 = getelementptr inbounds %struct._object, %struct._object* %283, i32 0, i32 1
  %284 = load %struct._typeobject*, %struct._typeobject** %ob_type567, align 8
  %tp_dealloc568 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %284, i32 0, i32 4
  %285 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc568, align 8
  %286 = load %struct._object*, %struct._object** %_py_decref_tmp561, align 8
  call void %285(%struct._object* %286)
  br label %if.end.569

if.end.569:                                       ; preds = %if.else.566, %if.then.565
  br label %do.end.570

do.end.570:                                       ; preds = %if.end.569
  br label %if.end.571

if.end.571:                                       ; preds = %do.end.570, %land.lhs.true.556, %do.body.552
  br label %do.end.572

do.end.572:                                       ; preds = %if.end.571
  br label %do.body.573

do.body.573:                                      ; preds = %do.end.572
  %call575 = call %struct._object* @PyLong_FromLong(i64 5)
  store %struct._object* %call575, %struct._object** %o574, align 8
  %287 = load %struct._object*, %struct._object** %o574, align 8
  %tobool576 = icmp ne %struct._object* %287, null
  br i1 %tobool576, label %land.lhs.true.577, label %if.end.592

land.lhs.true.577:                                ; preds = %do.body.573
  %288 = load %struct._object*, %struct._object** @ModDict, align 8
  %289 = load %struct._object*, %struct._object** %o574, align 8
  %call578 = call i32 @PyDict_SetItemString(%struct._object* %288, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), %struct._object* %289)
  %cmp579 = icmp eq i32 %call578, 0
  br i1 %cmp579, label %if.then.580, label %if.end.592

if.then.580:                                      ; preds = %land.lhs.true.577
  br label %do.body.581

do.body.581:                                      ; preds = %if.then.580
  %290 = load %struct._object*, %struct._object** %o574, align 8
  store %struct._object* %290, %struct._object** %_py_decref_tmp582, align 8
  %291 = load %struct._object*, %struct._object** %_py_decref_tmp582, align 8
  %ob_refcnt583 = getelementptr inbounds %struct._object, %struct._object* %291, i32 0, i32 0
  %292 = load i64, i64* %ob_refcnt583, align 8
  %dec584 = add i64 %292, -1
  store i64 %dec584, i64* %ob_refcnt583, align 8
  %cmp585 = icmp ne i64 %dec584, 0
  br i1 %cmp585, label %if.then.586, label %if.else.587

if.then.586:                                      ; preds = %do.body.581
  br label %if.end.590

if.else.587:                                      ; preds = %do.body.581
  %293 = load %struct._object*, %struct._object** %_py_decref_tmp582, align 8
  %ob_type588 = getelementptr inbounds %struct._object, %struct._object* %293, i32 0, i32 1
  %294 = load %struct._typeobject*, %struct._typeobject** %ob_type588, align 8
  %tp_dealloc589 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %294, i32 0, i32 4
  %295 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc589, align 8
  %296 = load %struct._object*, %struct._object** %_py_decref_tmp582, align 8
  call void %295(%struct._object* %296)
  br label %if.end.590

if.end.590:                                       ; preds = %if.else.587, %if.then.586
  br label %do.end.591

do.end.591:                                       ; preds = %if.end.590
  br label %if.end.592

if.end.592:                                       ; preds = %do.end.591, %land.lhs.true.577, %do.body.573
  br label %do.end.593

do.end.593:                                       ; preds = %if.end.592
  br label %do.body.594

do.body.594:                                      ; preds = %do.end.593
  %call596 = call %struct._object* @PyLong_FromLong(i64 6)
  store %struct._object* %call596, %struct._object** %o595, align 8
  %297 = load %struct._object*, %struct._object** %o595, align 8
  %tobool597 = icmp ne %struct._object* %297, null
  br i1 %tobool597, label %land.lhs.true.598, label %if.end.613

land.lhs.true.598:                                ; preds = %do.body.594
  %298 = load %struct._object*, %struct._object** @ModDict, align 8
  %299 = load %struct._object*, %struct._object** %o595, align 8
  %call599 = call i32 @PyDict_SetItemString(%struct._object* %298, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), %struct._object* %299)
  %cmp600 = icmp eq i32 %call599, 0
  br i1 %cmp600, label %if.then.601, label %if.end.613

if.then.601:                                      ; preds = %land.lhs.true.598
  br label %do.body.602

do.body.602:                                      ; preds = %if.then.601
  %300 = load %struct._object*, %struct._object** %o595, align 8
  store %struct._object* %300, %struct._object** %_py_decref_tmp603, align 8
  %301 = load %struct._object*, %struct._object** %_py_decref_tmp603, align 8
  %ob_refcnt604 = getelementptr inbounds %struct._object, %struct._object* %301, i32 0, i32 0
  %302 = load i64, i64* %ob_refcnt604, align 8
  %dec605 = add i64 %302, -1
  store i64 %dec605, i64* %ob_refcnt604, align 8
  %cmp606 = icmp ne i64 %dec605, 0
  br i1 %cmp606, label %if.then.607, label %if.else.608

if.then.607:                                      ; preds = %do.body.602
  br label %if.end.611

if.else.608:                                      ; preds = %do.body.602
  %303 = load %struct._object*, %struct._object** %_py_decref_tmp603, align 8
  %ob_type609 = getelementptr inbounds %struct._object, %struct._object* %303, i32 0, i32 1
  %304 = load %struct._typeobject*, %struct._typeobject** %ob_type609, align 8
  %tp_dealloc610 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %304, i32 0, i32 4
  %305 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc610, align 8
  %306 = load %struct._object*, %struct._object** %_py_decref_tmp603, align 8
  call void %305(%struct._object* %306)
  br label %if.end.611

if.end.611:                                       ; preds = %if.else.608, %if.then.607
  br label %do.end.612

do.end.612:                                       ; preds = %if.end.611
  br label %if.end.613

if.end.613:                                       ; preds = %do.end.612, %land.lhs.true.598, %do.body.594
  br label %do.end.614

do.end.614:                                       ; preds = %if.end.613
  br label %do.body.615

do.body.615:                                      ; preds = %do.end.614
  %call617 = call %struct._object* @PyLong_FromLong(i64 7)
  store %struct._object* %call617, %struct._object** %o616, align 8
  %307 = load %struct._object*, %struct._object** %o616, align 8
  %tobool618 = icmp ne %struct._object* %307, null
  br i1 %tobool618, label %land.lhs.true.619, label %if.end.634

land.lhs.true.619:                                ; preds = %do.body.615
  %308 = load %struct._object*, %struct._object** @ModDict, align 8
  %309 = load %struct._object*, %struct._object** %o616, align 8
  %call620 = call i32 @PyDict_SetItemString(%struct._object* %308, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), %struct._object* %309)
  %cmp621 = icmp eq i32 %call620, 0
  br i1 %cmp621, label %if.then.622, label %if.end.634

if.then.622:                                      ; preds = %land.lhs.true.619
  br label %do.body.623

do.body.623:                                      ; preds = %if.then.622
  %310 = load %struct._object*, %struct._object** %o616, align 8
  store %struct._object* %310, %struct._object** %_py_decref_tmp624, align 8
  %311 = load %struct._object*, %struct._object** %_py_decref_tmp624, align 8
  %ob_refcnt625 = getelementptr inbounds %struct._object, %struct._object* %311, i32 0, i32 0
  %312 = load i64, i64* %ob_refcnt625, align 8
  %dec626 = add i64 %312, -1
  store i64 %dec626, i64* %ob_refcnt625, align 8
  %cmp627 = icmp ne i64 %dec626, 0
  br i1 %cmp627, label %if.then.628, label %if.else.629

if.then.628:                                      ; preds = %do.body.623
  br label %if.end.632

if.else.629:                                      ; preds = %do.body.623
  %313 = load %struct._object*, %struct._object** %_py_decref_tmp624, align 8
  %ob_type630 = getelementptr inbounds %struct._object, %struct._object* %313, i32 0, i32 1
  %314 = load %struct._typeobject*, %struct._typeobject** %ob_type630, align 8
  %tp_dealloc631 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %314, i32 0, i32 4
  %315 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc631, align 8
  %316 = load %struct._object*, %struct._object** %_py_decref_tmp624, align 8
  call void %315(%struct._object* %316)
  br label %if.end.632

if.end.632:                                       ; preds = %if.else.629, %if.then.628
  br label %do.end.633

do.end.633:                                       ; preds = %if.end.632
  br label %if.end.634

if.end.634:                                       ; preds = %do.end.633, %land.lhs.true.619, %do.body.615
  br label %do.end.635

do.end.635:                                       ; preds = %if.end.634
  br label %do.body.636

do.body.636:                                      ; preds = %do.end.635
  %call638 = call %struct._object* @PyLong_FromLong(i64 2)
  store %struct._object* %call638, %struct._object** %o637, align 8
  %317 = load %struct._object*, %struct._object** %o637, align 8
  %tobool639 = icmp ne %struct._object* %317, null
  br i1 %tobool639, label %land.lhs.true.640, label %if.end.655

land.lhs.true.640:                                ; preds = %do.body.636
  %318 = load %struct._object*, %struct._object** @ModDict, align 8
  %319 = load %struct._object*, %struct._object** %o637, align 8
  %call641 = call i32 @PyDict_SetItemString(%struct._object* %318, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0), %struct._object* %319)
  %cmp642 = icmp eq i32 %call641, 0
  br i1 %cmp642, label %if.then.643, label %if.end.655

if.then.643:                                      ; preds = %land.lhs.true.640
  br label %do.body.644

do.body.644:                                      ; preds = %if.then.643
  %320 = load %struct._object*, %struct._object** %o637, align 8
  store %struct._object* %320, %struct._object** %_py_decref_tmp645, align 8
  %321 = load %struct._object*, %struct._object** %_py_decref_tmp645, align 8
  %ob_refcnt646 = getelementptr inbounds %struct._object, %struct._object* %321, i32 0, i32 0
  %322 = load i64, i64* %ob_refcnt646, align 8
  %dec647 = add i64 %322, -1
  store i64 %dec647, i64* %ob_refcnt646, align 8
  %cmp648 = icmp ne i64 %dec647, 0
  br i1 %cmp648, label %if.then.649, label %if.else.650

if.then.649:                                      ; preds = %do.body.644
  br label %if.end.653

if.else.650:                                      ; preds = %do.body.644
  %323 = load %struct._object*, %struct._object** %_py_decref_tmp645, align 8
  %ob_type651 = getelementptr inbounds %struct._object, %struct._object* %323, i32 0, i32 1
  %324 = load %struct._typeobject*, %struct._typeobject** %ob_type651, align 8
  %tp_dealloc652 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %324, i32 0, i32 4
  %325 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc652, align 8
  %326 = load %struct._object*, %struct._object** %_py_decref_tmp645, align 8
  call void %325(%struct._object* %326)
  br label %if.end.653

if.end.653:                                       ; preds = %if.else.650, %if.then.649
  br label %do.end.654

do.end.654:                                       ; preds = %if.end.653
  br label %if.end.655

if.end.655:                                       ; preds = %do.end.654, %land.lhs.true.640, %do.body.636
  br label %do.end.656

do.end.656:                                       ; preds = %if.end.655
  br label %do.body.657

do.body.657:                                      ; preds = %do.end.656
  %call659 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call659, %struct._object** %o658, align 8
  %327 = load %struct._object*, %struct._object** %o658, align 8
  %tobool660 = icmp ne %struct._object* %327, null
  br i1 %tobool660, label %land.lhs.true.661, label %if.end.676

land.lhs.true.661:                                ; preds = %do.body.657
  %328 = load %struct._object*, %struct._object** @ModDict, align 8
  %329 = load %struct._object*, %struct._object** %o658, align 8
  %call662 = call i32 @PyDict_SetItemString(%struct._object* %328, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0), %struct._object* %329)
  %cmp663 = icmp eq i32 %call662, 0
  br i1 %cmp663, label %if.then.664, label %if.end.676

if.then.664:                                      ; preds = %land.lhs.true.661
  br label %do.body.665

do.body.665:                                      ; preds = %if.then.664
  %330 = load %struct._object*, %struct._object** %o658, align 8
  store %struct._object* %330, %struct._object** %_py_decref_tmp666, align 8
  %331 = load %struct._object*, %struct._object** %_py_decref_tmp666, align 8
  %ob_refcnt667 = getelementptr inbounds %struct._object, %struct._object* %331, i32 0, i32 0
  %332 = load i64, i64* %ob_refcnt667, align 8
  %dec668 = add i64 %332, -1
  store i64 %dec668, i64* %ob_refcnt667, align 8
  %cmp669 = icmp ne i64 %dec668, 0
  br i1 %cmp669, label %if.then.670, label %if.else.671

if.then.670:                                      ; preds = %do.body.665
  br label %if.end.674

if.else.671:                                      ; preds = %do.body.665
  %333 = load %struct._object*, %struct._object** %_py_decref_tmp666, align 8
  %ob_type672 = getelementptr inbounds %struct._object, %struct._object* %333, i32 0, i32 1
  %334 = load %struct._typeobject*, %struct._typeobject** %ob_type672, align 8
  %tp_dealloc673 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %334, i32 0, i32 4
  %335 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc673, align 8
  %336 = load %struct._object*, %struct._object** %_py_decref_tmp666, align 8
  call void %335(%struct._object* %336)
  br label %if.end.674

if.end.674:                                       ; preds = %if.else.671, %if.then.670
  br label %do.end.675

do.end.675:                                       ; preds = %if.end.674
  br label %if.end.676

if.end.676:                                       ; preds = %do.end.675, %land.lhs.true.661, %do.body.657
  br label %do.end.677

do.end.677:                                       ; preds = %if.end.676
  br label %do.body.678

do.body.678:                                      ; preds = %do.end.677
  %call680 = call %struct._object* @PyLong_FromLong(i64 4)
  store %struct._object* %call680, %struct._object** %o679, align 8
  %337 = load %struct._object*, %struct._object** %o679, align 8
  %tobool681 = icmp ne %struct._object* %337, null
  br i1 %tobool681, label %land.lhs.true.682, label %if.end.697

land.lhs.true.682:                                ; preds = %do.body.678
  %338 = load %struct._object*, %struct._object** @ModDict, align 8
  %339 = load %struct._object*, %struct._object** %o679, align 8
  %call683 = call i32 @PyDict_SetItemString(%struct._object* %338, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0), %struct._object* %339)
  %cmp684 = icmp eq i32 %call683, 0
  br i1 %cmp684, label %if.then.685, label %if.end.697

if.then.685:                                      ; preds = %land.lhs.true.682
  br label %do.body.686

do.body.686:                                      ; preds = %if.then.685
  %340 = load %struct._object*, %struct._object** %o679, align 8
  store %struct._object* %340, %struct._object** %_py_decref_tmp687, align 8
  %341 = load %struct._object*, %struct._object** %_py_decref_tmp687, align 8
  %ob_refcnt688 = getelementptr inbounds %struct._object, %struct._object* %341, i32 0, i32 0
  %342 = load i64, i64* %ob_refcnt688, align 8
  %dec689 = add i64 %342, -1
  store i64 %dec689, i64* %ob_refcnt688, align 8
  %cmp690 = icmp ne i64 %dec689, 0
  br i1 %cmp690, label %if.then.691, label %if.else.692

if.then.691:                                      ; preds = %do.body.686
  br label %if.end.695

if.else.692:                                      ; preds = %do.body.686
  %343 = load %struct._object*, %struct._object** %_py_decref_tmp687, align 8
  %ob_type693 = getelementptr inbounds %struct._object, %struct._object* %343, i32 0, i32 1
  %344 = load %struct._typeobject*, %struct._typeobject** %ob_type693, align 8
  %tp_dealloc694 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %344, i32 0, i32 4
  %345 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc694, align 8
  %346 = load %struct._object*, %struct._object** %_py_decref_tmp687, align 8
  call void %345(%struct._object* %346)
  br label %if.end.695

if.end.695:                                       ; preds = %if.else.692, %if.then.691
  br label %do.end.696

do.end.696:                                       ; preds = %if.end.695
  br label %if.end.697

if.end.697:                                       ; preds = %do.end.696, %land.lhs.true.682, %do.body.678
  br label %do.end.698

do.end.698:                                       ; preds = %if.end.697
  br label %do.body.699

do.body.699:                                      ; preds = %do.end.698
  %call701 = call %struct._object* @PyLong_FromLong(i64 8)
  store %struct._object* %call701, %struct._object** %o700, align 8
  %347 = load %struct._object*, %struct._object** %o700, align 8
  %tobool702 = icmp ne %struct._object* %347, null
  br i1 %tobool702, label %land.lhs.true.703, label %if.end.718

land.lhs.true.703:                                ; preds = %do.body.699
  %348 = load %struct._object*, %struct._object** @ModDict, align 8
  %349 = load %struct._object*, %struct._object** %o700, align 8
  %call704 = call i32 @PyDict_SetItemString(%struct._object* %348, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i32 0, i32 0), %struct._object* %349)
  %cmp705 = icmp eq i32 %call704, 0
  br i1 %cmp705, label %if.then.706, label %if.end.718

if.then.706:                                      ; preds = %land.lhs.true.703
  br label %do.body.707

do.body.707:                                      ; preds = %if.then.706
  %350 = load %struct._object*, %struct._object** %o700, align 8
  store %struct._object* %350, %struct._object** %_py_decref_tmp708, align 8
  %351 = load %struct._object*, %struct._object** %_py_decref_tmp708, align 8
  %ob_refcnt709 = getelementptr inbounds %struct._object, %struct._object* %351, i32 0, i32 0
  %352 = load i64, i64* %ob_refcnt709, align 8
  %dec710 = add i64 %352, -1
  store i64 %dec710, i64* %ob_refcnt709, align 8
  %cmp711 = icmp ne i64 %dec710, 0
  br i1 %cmp711, label %if.then.712, label %if.else.713

if.then.712:                                      ; preds = %do.body.707
  br label %if.end.716

if.else.713:                                      ; preds = %do.body.707
  %353 = load %struct._object*, %struct._object** %_py_decref_tmp708, align 8
  %ob_type714 = getelementptr inbounds %struct._object, %struct._object* %353, i32 0, i32 1
  %354 = load %struct._typeobject*, %struct._typeobject** %ob_type714, align 8
  %tp_dealloc715 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %354, i32 0, i32 4
  %355 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc715, align 8
  %356 = load %struct._object*, %struct._object** %_py_decref_tmp708, align 8
  call void %355(%struct._object* %356)
  br label %if.end.716

if.end.716:                                       ; preds = %if.else.713, %if.then.712
  br label %do.end.717

do.end.717:                                       ; preds = %if.end.716
  br label %if.end.718

if.end.718:                                       ; preds = %do.end.717, %land.lhs.true.703, %do.body.699
  br label %do.end.719

do.end.719:                                       ; preds = %if.end.718
  br label %do.body.720

do.body.720:                                      ; preds = %do.end.719
  %call722 = call %struct._object* @PyLong_FromLong(i64 16)
  store %struct._object* %call722, %struct._object** %o721, align 8
  %357 = load %struct._object*, %struct._object** %o721, align 8
  %tobool723 = icmp ne %struct._object* %357, null
  br i1 %tobool723, label %land.lhs.true.724, label %if.end.739

land.lhs.true.724:                                ; preds = %do.body.720
  %358 = load %struct._object*, %struct._object** @ModDict, align 8
  %359 = load %struct._object*, %struct._object** %o721, align 8
  %call725 = call i32 @PyDict_SetItemString(%struct._object* %358, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i32 0, i32 0), %struct._object* %359)
  %cmp726 = icmp eq i32 %call725, 0
  br i1 %cmp726, label %if.then.727, label %if.end.739

if.then.727:                                      ; preds = %land.lhs.true.724
  br label %do.body.728

do.body.728:                                      ; preds = %if.then.727
  %360 = load %struct._object*, %struct._object** %o721, align 8
  store %struct._object* %360, %struct._object** %_py_decref_tmp729, align 8
  %361 = load %struct._object*, %struct._object** %_py_decref_tmp729, align 8
  %ob_refcnt730 = getelementptr inbounds %struct._object, %struct._object* %361, i32 0, i32 0
  %362 = load i64, i64* %ob_refcnt730, align 8
  %dec731 = add i64 %362, -1
  store i64 %dec731, i64* %ob_refcnt730, align 8
  %cmp732 = icmp ne i64 %dec731, 0
  br i1 %cmp732, label %if.then.733, label %if.else.734

if.then.733:                                      ; preds = %do.body.728
  br label %if.end.737

if.else.734:                                      ; preds = %do.body.728
  %363 = load %struct._object*, %struct._object** %_py_decref_tmp729, align 8
  %ob_type735 = getelementptr inbounds %struct._object, %struct._object* %363, i32 0, i32 1
  %364 = load %struct._typeobject*, %struct._typeobject** %ob_type735, align 8
  %tp_dealloc736 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %364, i32 0, i32 4
  %365 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc736, align 8
  %366 = load %struct._object*, %struct._object** %_py_decref_tmp729, align 8
  call void %365(%struct._object* %366)
  br label %if.end.737

if.end.737:                                       ; preds = %if.else.734, %if.then.733
  br label %do.end.738

do.end.738:                                       ; preds = %if.end.737
  br label %if.end.739

if.end.739:                                       ; preds = %do.end.738, %land.lhs.true.724, %do.body.720
  br label %do.end.740

do.end.740:                                       ; preds = %if.end.739
  br label %do.body.741

do.body.741:                                      ; preds = %do.end.740
  %call743 = call %struct._object* @PyLong_FromLong(i64 128)
  store %struct._object* %call743, %struct._object** %o742, align 8
  %367 = load %struct._object*, %struct._object** %o742, align 8
  %tobool744 = icmp ne %struct._object* %367, null
  br i1 %tobool744, label %land.lhs.true.745, label %if.end.760

land.lhs.true.745:                                ; preds = %do.body.741
  %368 = load %struct._object*, %struct._object** @ModDict, align 8
  %369 = load %struct._object*, %struct._object** %o742, align 8
  %call746 = call i32 @PyDict_SetItemString(%struct._object* %368, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), %struct._object* %369)
  %cmp747 = icmp eq i32 %call746, 0
  br i1 %cmp747, label %if.then.748, label %if.end.760

if.then.748:                                      ; preds = %land.lhs.true.745
  br label %do.body.749

do.body.749:                                      ; preds = %if.then.748
  %370 = load %struct._object*, %struct._object** %o742, align 8
  store %struct._object* %370, %struct._object** %_py_decref_tmp750, align 8
  %371 = load %struct._object*, %struct._object** %_py_decref_tmp750, align 8
  %ob_refcnt751 = getelementptr inbounds %struct._object, %struct._object* %371, i32 0, i32 0
  %372 = load i64, i64* %ob_refcnt751, align 8
  %dec752 = add i64 %372, -1
  store i64 %dec752, i64* %ob_refcnt751, align 8
  %cmp753 = icmp ne i64 %dec752, 0
  br i1 %cmp753, label %if.then.754, label %if.else.755

if.then.754:                                      ; preds = %do.body.749
  br label %if.end.758

if.else.755:                                      ; preds = %do.body.749
  %373 = load %struct._object*, %struct._object** %_py_decref_tmp750, align 8
  %ob_type756 = getelementptr inbounds %struct._object, %struct._object* %373, i32 0, i32 1
  %374 = load %struct._typeobject*, %struct._typeobject** %ob_type756, align 8
  %tp_dealloc757 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %374, i32 0, i32 4
  %375 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc757, align 8
  %376 = load %struct._object*, %struct._object** %_py_decref_tmp750, align 8
  call void %375(%struct._object* %376)
  br label %if.end.758

if.end.758:                                       ; preds = %if.else.755, %if.then.754
  br label %do.end.759

do.end.759:                                       ; preds = %if.end.758
  br label %if.end.760

if.end.760:                                       ; preds = %do.end.759, %land.lhs.true.745, %do.body.741
  br label %do.end.761

do.end.761:                                       ; preds = %if.end.760
  br label %do.body.762

do.body.762:                                      ; preds = %do.end.761
  %call764 = call %struct._object* @PyLong_FromLong(i64 64)
  store %struct._object* %call764, %struct._object** %o763, align 8
  %377 = load %struct._object*, %struct._object** %o763, align 8
  %tobool765 = icmp ne %struct._object* %377, null
  br i1 %tobool765, label %land.lhs.true.766, label %if.end.781

land.lhs.true.766:                                ; preds = %do.body.762
  %378 = load %struct._object*, %struct._object** @ModDict, align 8
  %379 = load %struct._object*, %struct._object** %o763, align 8
  %call767 = call i32 @PyDict_SetItemString(%struct._object* %378, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), %struct._object* %379)
  %cmp768 = icmp eq i32 %call767, 0
  br i1 %cmp768, label %if.then.769, label %if.end.781

if.then.769:                                      ; preds = %land.lhs.true.766
  br label %do.body.770

do.body.770:                                      ; preds = %if.then.769
  %380 = load %struct._object*, %struct._object** %o763, align 8
  store %struct._object* %380, %struct._object** %_py_decref_tmp771, align 8
  %381 = load %struct._object*, %struct._object** %_py_decref_tmp771, align 8
  %ob_refcnt772 = getelementptr inbounds %struct._object, %struct._object* %381, i32 0, i32 0
  %382 = load i64, i64* %ob_refcnt772, align 8
  %dec773 = add i64 %382, -1
  store i64 %dec773, i64* %ob_refcnt772, align 8
  %cmp774 = icmp ne i64 %dec773, 0
  br i1 %cmp774, label %if.then.775, label %if.else.776

if.then.775:                                      ; preds = %do.body.770
  br label %if.end.779

if.else.776:                                      ; preds = %do.body.770
  %383 = load %struct._object*, %struct._object** %_py_decref_tmp771, align 8
  %ob_type777 = getelementptr inbounds %struct._object, %struct._object* %383, i32 0, i32 1
  %384 = load %struct._typeobject*, %struct._typeobject** %ob_type777, align 8
  %tp_dealloc778 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %384, i32 0, i32 4
  %385 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc778, align 8
  %386 = load %struct._object*, %struct._object** %_py_decref_tmp771, align 8
  call void %385(%struct._object* %386)
  br label %if.end.779

if.end.779:                                       ; preds = %if.else.776, %if.then.775
  br label %do.end.780

do.end.780:                                       ; preds = %if.end.779
  br label %if.end.781

if.end.781:                                       ; preds = %do.end.780, %land.lhs.true.766, %do.body.762
  br label %do.end.782

do.end.782:                                       ; preds = %if.end.781
  br label %do.body.783

do.body.783:                                      ; preds = %do.end.782
  %call785 = call %struct._object* @PyLong_FromLong(i64 256)
  store %struct._object* %call785, %struct._object** %o784, align 8
  %387 = load %struct._object*, %struct._object** %o784, align 8
  %tobool786 = icmp ne %struct._object* %387, null
  br i1 %tobool786, label %land.lhs.true.787, label %if.end.802

land.lhs.true.787:                                ; preds = %do.body.783
  %388 = load %struct._object*, %struct._object** @ModDict, align 8
  %389 = load %struct._object*, %struct._object** %o784, align 8
  %call788 = call i32 @PyDict_SetItemString(%struct._object* %388, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0), %struct._object* %389)
  %cmp789 = icmp eq i32 %call788, 0
  br i1 %cmp789, label %if.then.790, label %if.end.802

if.then.790:                                      ; preds = %land.lhs.true.787
  br label %do.body.791

do.body.791:                                      ; preds = %if.then.790
  %390 = load %struct._object*, %struct._object** %o784, align 8
  store %struct._object* %390, %struct._object** %_py_decref_tmp792, align 8
  %391 = load %struct._object*, %struct._object** %_py_decref_tmp792, align 8
  %ob_refcnt793 = getelementptr inbounds %struct._object, %struct._object* %391, i32 0, i32 0
  %392 = load i64, i64* %ob_refcnt793, align 8
  %dec794 = add i64 %392, -1
  store i64 %dec794, i64* %ob_refcnt793, align 8
  %cmp795 = icmp ne i64 %dec794, 0
  br i1 %cmp795, label %if.then.796, label %if.else.797

if.then.796:                                      ; preds = %do.body.791
  br label %if.end.800

if.else.797:                                      ; preds = %do.body.791
  %393 = load %struct._object*, %struct._object** %_py_decref_tmp792, align 8
  %ob_type798 = getelementptr inbounds %struct._object, %struct._object* %393, i32 0, i32 1
  %394 = load %struct._typeobject*, %struct._typeobject** %ob_type798, align 8
  %tp_dealloc799 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %394, i32 0, i32 4
  %395 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc799, align 8
  %396 = load %struct._object*, %struct._object** %_py_decref_tmp792, align 8
  call void %395(%struct._object* %396)
  br label %if.end.800

if.end.800:                                       ; preds = %if.else.797, %if.then.796
  br label %do.end.801

do.end.801:                                       ; preds = %if.end.800
  br label %if.end.802

if.end.802:                                       ; preds = %do.end.801, %land.lhs.true.787, %do.body.783
  br label %do.end.803

do.end.803:                                       ; preds = %if.end.802
  br label %do.body.804

do.body.804:                                      ; preds = %do.end.803
  %call806 = call %struct._object* @PyLong_FromLong(i64 512)
  store %struct._object* %call806, %struct._object** %o805, align 8
  %397 = load %struct._object*, %struct._object** %o805, align 8
  %tobool807 = icmp ne %struct._object* %397, null
  br i1 %tobool807, label %land.lhs.true.808, label %if.end.823

land.lhs.true.808:                                ; preds = %do.body.804
  %398 = load %struct._object*, %struct._object** @ModDict, align 8
  %399 = load %struct._object*, %struct._object** %o805, align 8
  %call809 = call i32 @PyDict_SetItemString(%struct._object* %398, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i32 0, i32 0), %struct._object* %399)
  %cmp810 = icmp eq i32 %call809, 0
  br i1 %cmp810, label %if.then.811, label %if.end.823

if.then.811:                                      ; preds = %land.lhs.true.808
  br label %do.body.812

do.body.812:                                      ; preds = %if.then.811
  %400 = load %struct._object*, %struct._object** %o805, align 8
  store %struct._object* %400, %struct._object** %_py_decref_tmp813, align 8
  %401 = load %struct._object*, %struct._object** %_py_decref_tmp813, align 8
  %ob_refcnt814 = getelementptr inbounds %struct._object, %struct._object* %401, i32 0, i32 0
  %402 = load i64, i64* %ob_refcnt814, align 8
  %dec815 = add i64 %402, -1
  store i64 %dec815, i64* %ob_refcnt814, align 8
  %cmp816 = icmp ne i64 %dec815, 0
  br i1 %cmp816, label %if.then.817, label %if.else.818

if.then.817:                                      ; preds = %do.body.812
  br label %if.end.821

if.else.818:                                      ; preds = %do.body.812
  %403 = load %struct._object*, %struct._object** %_py_decref_tmp813, align 8
  %ob_type819 = getelementptr inbounds %struct._object, %struct._object* %403, i32 0, i32 1
  %404 = load %struct._typeobject*, %struct._typeobject** %ob_type819, align 8
  %tp_dealloc820 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %404, i32 0, i32 4
  %405 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc820, align 8
  %406 = load %struct._object*, %struct._object** %_py_decref_tmp813, align 8
  call void %405(%struct._object* %406)
  br label %if.end.821

if.end.821:                                       ; preds = %if.else.818, %if.then.817
  br label %do.end.822

do.end.822:                                       ; preds = %if.end.821
  br label %if.end.823

if.end.823:                                       ; preds = %do.end.822, %land.lhs.true.808, %do.body.804
  br label %do.end.824

do.end.824:                                       ; preds = %if.end.823
  br label %do.body.825

do.body.825:                                      ; preds = %do.end.824
  %call827 = call %struct._object* @PyLong_FromLong(i64 1024)
  store %struct._object* %call827, %struct._object** %o826, align 8
  %407 = load %struct._object*, %struct._object** %o826, align 8
  %tobool828 = icmp ne %struct._object* %407, null
  br i1 %tobool828, label %land.lhs.true.829, label %if.end.844

land.lhs.true.829:                                ; preds = %do.body.825
  %408 = load %struct._object*, %struct._object** @ModDict, align 8
  %409 = load %struct._object*, %struct._object** %o826, align 8
  %call830 = call i32 @PyDict_SetItemString(%struct._object* %408, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i32 0, i32 0), %struct._object* %409)
  %cmp831 = icmp eq i32 %call830, 0
  br i1 %cmp831, label %if.then.832, label %if.end.844

if.then.832:                                      ; preds = %land.lhs.true.829
  br label %do.body.833

do.body.833:                                      ; preds = %if.then.832
  %410 = load %struct._object*, %struct._object** %o826, align 8
  store %struct._object* %410, %struct._object** %_py_decref_tmp834, align 8
  %411 = load %struct._object*, %struct._object** %_py_decref_tmp834, align 8
  %ob_refcnt835 = getelementptr inbounds %struct._object, %struct._object* %411, i32 0, i32 0
  %412 = load i64, i64* %ob_refcnt835, align 8
  %dec836 = add i64 %412, -1
  store i64 %dec836, i64* %ob_refcnt835, align 8
  %cmp837 = icmp ne i64 %dec836, 0
  br i1 %cmp837, label %if.then.838, label %if.else.839

if.then.838:                                      ; preds = %do.body.833
  br label %if.end.842

if.else.839:                                      ; preds = %do.body.833
  %413 = load %struct._object*, %struct._object** %_py_decref_tmp834, align 8
  %ob_type840 = getelementptr inbounds %struct._object, %struct._object* %413, i32 0, i32 1
  %414 = load %struct._typeobject*, %struct._typeobject** %ob_type840, align 8
  %tp_dealloc841 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %414, i32 0, i32 4
  %415 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc841, align 8
  %416 = load %struct._object*, %struct._object** %_py_decref_tmp834, align 8
  call void %415(%struct._object* %416)
  br label %if.end.842

if.end.842:                                       ; preds = %if.else.839, %if.then.838
  br label %do.end.843

do.end.843:                                       ; preds = %if.end.842
  br label %if.end.844

if.end.844:                                       ; preds = %do.end.843, %land.lhs.true.829, %do.body.825
  br label %do.end.845

do.end.845:                                       ; preds = %if.end.844
  br label %do.body.846

do.body.846:                                      ; preds = %do.end.845
  %call848 = call %struct._object* @PyLong_FromLong(i64 8192)
  store %struct._object* %call848, %struct._object** %o847, align 8
  %417 = load %struct._object*, %struct._object** %o847, align 8
  %tobool849 = icmp ne %struct._object* %417, null
  br i1 %tobool849, label %land.lhs.true.850, label %if.end.865

land.lhs.true.850:                                ; preds = %do.body.846
  %418 = load %struct._object*, %struct._object** @ModDict, align 8
  %419 = load %struct._object*, %struct._object** %o847, align 8
  %call851 = call i32 @PyDict_SetItemString(%struct._object* %418, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0), %struct._object* %419)
  %cmp852 = icmp eq i32 %call851, 0
  br i1 %cmp852, label %if.then.853, label %if.end.865

if.then.853:                                      ; preds = %land.lhs.true.850
  br label %do.body.854

do.body.854:                                      ; preds = %if.then.853
  %420 = load %struct._object*, %struct._object** %o847, align 8
  store %struct._object* %420, %struct._object** %_py_decref_tmp855, align 8
  %421 = load %struct._object*, %struct._object** %_py_decref_tmp855, align 8
  %ob_refcnt856 = getelementptr inbounds %struct._object, %struct._object* %421, i32 0, i32 0
  %422 = load i64, i64* %ob_refcnt856, align 8
  %dec857 = add i64 %422, -1
  store i64 %dec857, i64* %ob_refcnt856, align 8
  %cmp858 = icmp ne i64 %dec857, 0
  br i1 %cmp858, label %if.then.859, label %if.else.860

if.then.859:                                      ; preds = %do.body.854
  br label %if.end.863

if.else.860:                                      ; preds = %do.body.854
  %423 = load %struct._object*, %struct._object** %_py_decref_tmp855, align 8
  %ob_type861 = getelementptr inbounds %struct._object, %struct._object* %423, i32 0, i32 1
  %424 = load %struct._typeobject*, %struct._typeobject** %ob_type861, align 8
  %tp_dealloc862 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %424, i32 0, i32 4
  %425 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc862, align 8
  %426 = load %struct._object*, %struct._object** %_py_decref_tmp855, align 8
  call void %425(%struct._object* %426)
  br label %if.end.863

if.end.863:                                       ; preds = %if.else.860, %if.then.859
  br label %do.end.864

do.end.864:                                       ; preds = %if.end.863
  br label %if.end.865

if.end.865:                                       ; preds = %do.end.864, %land.lhs.true.850, %do.body.846
  br label %do.end.866

do.end.866:                                       ; preds = %if.end.865
  br label %do.body.867

do.body.867:                                      ; preds = %do.end.866
  %call869 = call %struct._object* @PyLong_FromLong(i64 4096)
  store %struct._object* %call869, %struct._object** %o868, align 8
  %427 = load %struct._object*, %struct._object** %o868, align 8
  %tobool870 = icmp ne %struct._object* %427, null
  br i1 %tobool870, label %land.lhs.true.871, label %if.end.886

land.lhs.true.871:                                ; preds = %do.body.867
  %428 = load %struct._object*, %struct._object** @ModDict, align 8
  %429 = load %struct._object*, %struct._object** %o868, align 8
  %call872 = call i32 @PyDict_SetItemString(%struct._object* %428, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0), %struct._object* %429)
  %cmp873 = icmp eq i32 %call872, 0
  br i1 %cmp873, label %if.then.874, label %if.end.886

if.then.874:                                      ; preds = %land.lhs.true.871
  br label %do.body.875

do.body.875:                                      ; preds = %if.then.874
  %430 = load %struct._object*, %struct._object** %o868, align 8
  store %struct._object* %430, %struct._object** %_py_decref_tmp876, align 8
  %431 = load %struct._object*, %struct._object** %_py_decref_tmp876, align 8
  %ob_refcnt877 = getelementptr inbounds %struct._object, %struct._object* %431, i32 0, i32 0
  %432 = load i64, i64* %ob_refcnt877, align 8
  %dec878 = add i64 %432, -1
  store i64 %dec878, i64* %ob_refcnt877, align 8
  %cmp879 = icmp ne i64 %dec878, 0
  br i1 %cmp879, label %if.then.880, label %if.else.881

if.then.880:                                      ; preds = %do.body.875
  br label %if.end.884

if.else.881:                                      ; preds = %do.body.875
  %433 = load %struct._object*, %struct._object** %_py_decref_tmp876, align 8
  %ob_type882 = getelementptr inbounds %struct._object, %struct._object* %433, i32 0, i32 1
  %434 = load %struct._typeobject*, %struct._typeobject** %ob_type882, align 8
  %tp_dealloc883 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %434, i32 0, i32 4
  %435 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc883, align 8
  %436 = load %struct._object*, %struct._object** %_py_decref_tmp876, align 8
  call void %435(%struct._object* %436)
  br label %if.end.884

if.end.884:                                       ; preds = %if.else.881, %if.then.880
  br label %do.end.885

do.end.885:                                       ; preds = %if.end.884
  br label %if.end.886

if.end.886:                                       ; preds = %do.end.885, %land.lhs.true.871, %do.body.867
  br label %do.end.887

do.end.887:                                       ; preds = %if.end.886
  br label %do.body.888

do.body.888:                                      ; preds = %do.end.887
  %call890 = call %struct._object* @PyLong_FromLong(i64 16384)
  store %struct._object* %call890, %struct._object** %o889, align 8
  %437 = load %struct._object*, %struct._object** %o889, align 8
  %tobool891 = icmp ne %struct._object* %437, null
  br i1 %tobool891, label %land.lhs.true.892, label %if.end.907

land.lhs.true.892:                                ; preds = %do.body.888
  %438 = load %struct._object*, %struct._object** @ModDict, align 8
  %439 = load %struct._object*, %struct._object** %o889, align 8
  %call893 = call i32 @PyDict_SetItemString(%struct._object* %438, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0), %struct._object* %439)
  %cmp894 = icmp eq i32 %call893, 0
  br i1 %cmp894, label %if.then.895, label %if.end.907

if.then.895:                                      ; preds = %land.lhs.true.892
  br label %do.body.896

do.body.896:                                      ; preds = %if.then.895
  %440 = load %struct._object*, %struct._object** %o889, align 8
  store %struct._object* %440, %struct._object** %_py_decref_tmp897, align 8
  %441 = load %struct._object*, %struct._object** %_py_decref_tmp897, align 8
  %ob_refcnt898 = getelementptr inbounds %struct._object, %struct._object* %441, i32 0, i32 0
  %442 = load i64, i64* %ob_refcnt898, align 8
  %dec899 = add i64 %442, -1
  store i64 %dec899, i64* %ob_refcnt898, align 8
  %cmp900 = icmp ne i64 %dec899, 0
  br i1 %cmp900, label %if.then.901, label %if.else.902

if.then.901:                                      ; preds = %do.body.896
  br label %if.end.905

if.else.902:                                      ; preds = %do.body.896
  %443 = load %struct._object*, %struct._object** %_py_decref_tmp897, align 8
  %ob_type903 = getelementptr inbounds %struct._object, %struct._object* %443, i32 0, i32 1
  %444 = load %struct._typeobject*, %struct._typeobject** %ob_type903, align 8
  %tp_dealloc904 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %444, i32 0, i32 4
  %445 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc904, align 8
  %446 = load %struct._object*, %struct._object** %_py_decref_tmp897, align 8
  call void %445(%struct._object* %446)
  br label %if.end.905

if.end.905:                                       ; preds = %if.else.902, %if.then.901
  br label %do.end.906

do.end.906:                                       ; preds = %if.end.905
  br label %if.end.907

if.end.907:                                       ; preds = %do.end.906, %land.lhs.true.892, %do.body.888
  br label %do.end.908

do.end.908:                                       ; preds = %if.end.907
  br label %do.body.909

do.body.909:                                      ; preds = %do.end.908
  %call911 = call %struct._object* @PyLong_FromLong(i64 32768)
  store %struct._object* %call911, %struct._object** %o910, align 8
  %447 = load %struct._object*, %struct._object** %o910, align 8
  %tobool912 = icmp ne %struct._object* %447, null
  br i1 %tobool912, label %land.lhs.true.913, label %if.end.928

land.lhs.true.913:                                ; preds = %do.body.909
  %448 = load %struct._object*, %struct._object** @ModDict, align 8
  %449 = load %struct._object*, %struct._object** %o910, align 8
  %call914 = call i32 @PyDict_SetItemString(%struct._object* %448, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i32 0, i32 0), %struct._object* %449)
  %cmp915 = icmp eq i32 %call914, 0
  br i1 %cmp915, label %if.then.916, label %if.end.928

if.then.916:                                      ; preds = %land.lhs.true.913
  br label %do.body.917

do.body.917:                                      ; preds = %if.then.916
  %450 = load %struct._object*, %struct._object** %o910, align 8
  store %struct._object* %450, %struct._object** %_py_decref_tmp918, align 8
  %451 = load %struct._object*, %struct._object** %_py_decref_tmp918, align 8
  %ob_refcnt919 = getelementptr inbounds %struct._object, %struct._object* %451, i32 0, i32 0
  %452 = load i64, i64* %ob_refcnt919, align 8
  %dec920 = add i64 %452, -1
  store i64 %dec920, i64* %ob_refcnt919, align 8
  %cmp921 = icmp ne i64 %dec920, 0
  br i1 %cmp921, label %if.then.922, label %if.else.923

if.then.922:                                      ; preds = %do.body.917
  br label %if.end.926

if.else.923:                                      ; preds = %do.body.917
  %453 = load %struct._object*, %struct._object** %_py_decref_tmp918, align 8
  %ob_type924 = getelementptr inbounds %struct._object, %struct._object* %453, i32 0, i32 1
  %454 = load %struct._typeobject*, %struct._typeobject** %ob_type924, align 8
  %tp_dealloc925 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %454, i32 0, i32 4
  %455 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc925, align 8
  %456 = load %struct._object*, %struct._object** %_py_decref_tmp918, align 8
  call void %455(%struct._object* %456)
  br label %if.end.926

if.end.926:                                       ; preds = %if.else.923, %if.then.922
  br label %do.end.927

do.end.927:                                       ; preds = %if.end.926
  br label %if.end.928

if.end.928:                                       ; preds = %do.end.927, %land.lhs.true.913, %do.body.909
  br label %do.end.929

do.end.929:                                       ; preds = %if.end.928
  br label %do.body.930

do.body.930:                                      ; preds = %do.end.929
  %call932 = call %struct._object* @PyLong_FromLong(i64 65536)
  store %struct._object* %call932, %struct._object** %o931, align 8
  %457 = load %struct._object*, %struct._object** %o931, align 8
  %tobool933 = icmp ne %struct._object* %457, null
  br i1 %tobool933, label %land.lhs.true.934, label %if.end.949

land.lhs.true.934:                                ; preds = %do.body.930
  %458 = load %struct._object*, %struct._object** @ModDict, align 8
  %459 = load %struct._object*, %struct._object** %o931, align 8
  %call935 = call i32 @PyDict_SetItemString(%struct._object* %458, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i32 0, i32 0), %struct._object* %459)
  %cmp936 = icmp eq i32 %call935, 0
  br i1 %cmp936, label %if.then.937, label %if.end.949

if.then.937:                                      ; preds = %land.lhs.true.934
  br label %do.body.938

do.body.938:                                      ; preds = %if.then.937
  %460 = load %struct._object*, %struct._object** %o931, align 8
  store %struct._object* %460, %struct._object** %_py_decref_tmp939, align 8
  %461 = load %struct._object*, %struct._object** %_py_decref_tmp939, align 8
  %ob_refcnt940 = getelementptr inbounds %struct._object, %struct._object* %461, i32 0, i32 0
  %462 = load i64, i64* %ob_refcnt940, align 8
  %dec941 = add i64 %462, -1
  store i64 %dec941, i64* %ob_refcnt940, align 8
  %cmp942 = icmp ne i64 %dec941, 0
  br i1 %cmp942, label %if.then.943, label %if.else.944

if.then.943:                                      ; preds = %do.body.938
  br label %if.end.947

if.else.944:                                      ; preds = %do.body.938
  %463 = load %struct._object*, %struct._object** %_py_decref_tmp939, align 8
  %ob_type945 = getelementptr inbounds %struct._object, %struct._object* %463, i32 0, i32 1
  %464 = load %struct._typeobject*, %struct._typeobject** %ob_type945, align 8
  %tp_dealloc946 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %464, i32 0, i32 4
  %465 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc946, align 8
  %466 = load %struct._object*, %struct._object** %_py_decref_tmp939, align 8
  call void %465(%struct._object* %466)
  br label %if.end.947

if.end.947:                                       ; preds = %if.else.944, %if.then.943
  br label %do.end.948

do.end.948:                                       ; preds = %if.end.947
  br label %if.end.949

if.end.949:                                       ; preds = %do.end.948, %land.lhs.true.934, %do.body.930
  br label %do.end.950

do.end.950:                                       ; preds = %if.end.949
  br label %do.body.951

do.body.951:                                      ; preds = %do.end.950
  %call953 = call %struct._object* @PyLong_FromLong(i64 524288)
  store %struct._object* %call953, %struct._object** %o952, align 8
  %467 = load %struct._object*, %struct._object** %o952, align 8
  %tobool954 = icmp ne %struct._object* %467, null
  br i1 %tobool954, label %land.lhs.true.955, label %if.end.970

land.lhs.true.955:                                ; preds = %do.body.951
  %468 = load %struct._object*, %struct._object** @ModDict, align 8
  %469 = load %struct._object*, %struct._object** %o952, align 8
  %call956 = call i32 @PyDict_SetItemString(%struct._object* %468, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i32 0, i32 0), %struct._object* %469)
  %cmp957 = icmp eq i32 %call956, 0
  br i1 %cmp957, label %if.then.958, label %if.end.970

if.then.958:                                      ; preds = %land.lhs.true.955
  br label %do.body.959

do.body.959:                                      ; preds = %if.then.958
  %470 = load %struct._object*, %struct._object** %o952, align 8
  store %struct._object* %470, %struct._object** %_py_decref_tmp960, align 8
  %471 = load %struct._object*, %struct._object** %_py_decref_tmp960, align 8
  %ob_refcnt961 = getelementptr inbounds %struct._object, %struct._object* %471, i32 0, i32 0
  %472 = load i64, i64* %ob_refcnt961, align 8
  %dec962 = add i64 %472, -1
  store i64 %dec962, i64* %ob_refcnt961, align 8
  %cmp963 = icmp ne i64 %dec962, 0
  br i1 %cmp963, label %if.then.964, label %if.else.965

if.then.964:                                      ; preds = %do.body.959
  br label %if.end.968

if.else.965:                                      ; preds = %do.body.959
  %473 = load %struct._object*, %struct._object** %_py_decref_tmp960, align 8
  %ob_type966 = getelementptr inbounds %struct._object, %struct._object* %473, i32 0, i32 1
  %474 = load %struct._typeobject*, %struct._typeobject** %ob_type966, align 8
  %tp_dealloc967 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %474, i32 0, i32 4
  %475 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc967, align 8
  %476 = load %struct._object*, %struct._object** %_py_decref_tmp960, align 8
  call void %475(%struct._object* %476)
  br label %if.end.968

if.end.968:                                       ; preds = %if.else.965, %if.then.964
  br label %do.end.969

do.end.969:                                       ; preds = %if.end.968
  br label %if.end.970

if.end.970:                                       ; preds = %do.end.969, %land.lhs.true.955, %do.body.951
  br label %do.end.971

do.end.971:                                       ; preds = %if.end.970
  br label %do.body.972

do.body.972:                                      ; preds = %do.end.971
  %call974 = call %struct._object* @PyLong_FromLong(i64 262144)
  store %struct._object* %call974, %struct._object** %o973, align 8
  %477 = load %struct._object*, %struct._object** %o973, align 8
  %tobool975 = icmp ne %struct._object* %477, null
  br i1 %tobool975, label %land.lhs.true.976, label %if.end.991

land.lhs.true.976:                                ; preds = %do.body.972
  %478 = load %struct._object*, %struct._object** @ModDict, align 8
  %479 = load %struct._object*, %struct._object** %o973, align 8
  %call977 = call i32 @PyDict_SetItemString(%struct._object* %478, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0), %struct._object* %479)
  %cmp978 = icmp eq i32 %call977, 0
  br i1 %cmp978, label %if.then.979, label %if.end.991

if.then.979:                                      ; preds = %land.lhs.true.976
  br label %do.body.980

do.body.980:                                      ; preds = %if.then.979
  %480 = load %struct._object*, %struct._object** %o973, align 8
  store %struct._object* %480, %struct._object** %_py_decref_tmp981, align 8
  %481 = load %struct._object*, %struct._object** %_py_decref_tmp981, align 8
  %ob_refcnt982 = getelementptr inbounds %struct._object, %struct._object* %481, i32 0, i32 0
  %482 = load i64, i64* %ob_refcnt982, align 8
  %dec983 = add i64 %482, -1
  store i64 %dec983, i64* %ob_refcnt982, align 8
  %cmp984 = icmp ne i64 %dec983, 0
  br i1 %cmp984, label %if.then.985, label %if.else.986

if.then.985:                                      ; preds = %do.body.980
  br label %if.end.989

if.else.986:                                      ; preds = %do.body.980
  %483 = load %struct._object*, %struct._object** %_py_decref_tmp981, align 8
  %ob_type987 = getelementptr inbounds %struct._object, %struct._object* %483, i32 0, i32 1
  %484 = load %struct._typeobject*, %struct._typeobject** %ob_type987, align 8
  %tp_dealloc988 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %484, i32 0, i32 4
  %485 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc988, align 8
  %486 = load %struct._object*, %struct._object** %_py_decref_tmp981, align 8
  call void %485(%struct._object* %486)
  br label %if.end.989

if.end.989:                                       ; preds = %if.else.986, %if.then.985
  br label %do.end.990

do.end.990:                                       ; preds = %if.end.989
  br label %if.end.991

if.end.991:                                       ; preds = %do.end.990, %land.lhs.true.976, %do.body.972
  br label %do.end.992

do.end.992:                                       ; preds = %if.end.991
  br label %do.body.993

do.body.993:                                      ; preds = %do.end.992
  %call995 = call %struct._object* @PyLong_FromLong(i64 1048576)
  store %struct._object* %call995, %struct._object** %o994, align 8
  %487 = load %struct._object*, %struct._object** %o994, align 8
  %tobool996 = icmp ne %struct._object* %487, null
  br i1 %tobool996, label %land.lhs.true.997, label %if.end.1012

land.lhs.true.997:                                ; preds = %do.body.993
  %488 = load %struct._object*, %struct._object** @ModDict, align 8
  %489 = load %struct._object*, %struct._object** %o994, align 8
  %call998 = call i32 @PyDict_SetItemString(%struct._object* %488, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0), %struct._object* %489)
  %cmp999 = icmp eq i32 %call998, 0
  br i1 %cmp999, label %if.then.1000, label %if.end.1012

if.then.1000:                                     ; preds = %land.lhs.true.997
  br label %do.body.1001

do.body.1001:                                     ; preds = %if.then.1000
  %490 = load %struct._object*, %struct._object** %o994, align 8
  store %struct._object* %490, %struct._object** %_py_decref_tmp1002, align 8
  %491 = load %struct._object*, %struct._object** %_py_decref_tmp1002, align 8
  %ob_refcnt1003 = getelementptr inbounds %struct._object, %struct._object* %491, i32 0, i32 0
  %492 = load i64, i64* %ob_refcnt1003, align 8
  %dec1004 = add i64 %492, -1
  store i64 %dec1004, i64* %ob_refcnt1003, align 8
  %cmp1005 = icmp ne i64 %dec1004, 0
  br i1 %cmp1005, label %if.then.1006, label %if.else.1007

if.then.1006:                                     ; preds = %do.body.1001
  br label %if.end.1010

if.else.1007:                                     ; preds = %do.body.1001
  %493 = load %struct._object*, %struct._object** %_py_decref_tmp1002, align 8
  %ob_type1008 = getelementptr inbounds %struct._object, %struct._object* %493, i32 0, i32 1
  %494 = load %struct._typeobject*, %struct._typeobject** %ob_type1008, align 8
  %tp_dealloc1009 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %494, i32 0, i32 4
  %495 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1009, align 8
  %496 = load %struct._object*, %struct._object** %_py_decref_tmp1002, align 8
  call void %495(%struct._object* %496)
  br label %if.end.1010

if.end.1010:                                      ; preds = %if.else.1007, %if.then.1006
  br label %do.end.1011

do.end.1011:                                      ; preds = %if.end.1010
  br label %if.end.1012

if.end.1012:                                      ; preds = %do.end.1011, %land.lhs.true.997, %do.body.993
  br label %do.end.1013

do.end.1013:                                      ; preds = %if.end.1012
  br label %do.body.1014

do.body.1014:                                     ; preds = %do.end.1013
  %call1016 = call %struct._object* @PyLong_FromLong(i64 2097152)
  store %struct._object* %call1016, %struct._object** %o1015, align 8
  %497 = load %struct._object*, %struct._object** %o1015, align 8
  %tobool1017 = icmp ne %struct._object* %497, null
  br i1 %tobool1017, label %land.lhs.true.1018, label %if.end.1033

land.lhs.true.1018:                               ; preds = %do.body.1014
  %498 = load %struct._object*, %struct._object** @ModDict, align 8
  %499 = load %struct._object*, %struct._object** %o1015, align 8
  %call1019 = call i32 @PyDict_SetItemString(%struct._object* %498, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i32 0, i32 0), %struct._object* %499)
  %cmp1020 = icmp eq i32 %call1019, 0
  br i1 %cmp1020, label %if.then.1021, label %if.end.1033

if.then.1021:                                     ; preds = %land.lhs.true.1018
  br label %do.body.1022

do.body.1022:                                     ; preds = %if.then.1021
  %500 = load %struct._object*, %struct._object** %o1015, align 8
  store %struct._object* %500, %struct._object** %_py_decref_tmp1023, align 8
  %501 = load %struct._object*, %struct._object** %_py_decref_tmp1023, align 8
  %ob_refcnt1024 = getelementptr inbounds %struct._object, %struct._object* %501, i32 0, i32 0
  %502 = load i64, i64* %ob_refcnt1024, align 8
  %dec1025 = add i64 %502, -1
  store i64 %dec1025, i64* %ob_refcnt1024, align 8
  %cmp1026 = icmp ne i64 %dec1025, 0
  br i1 %cmp1026, label %if.then.1027, label %if.else.1028

if.then.1027:                                     ; preds = %do.body.1022
  br label %if.end.1031

if.else.1028:                                     ; preds = %do.body.1022
  %503 = load %struct._object*, %struct._object** %_py_decref_tmp1023, align 8
  %ob_type1029 = getelementptr inbounds %struct._object, %struct._object* %503, i32 0, i32 1
  %504 = load %struct._typeobject*, %struct._typeobject** %ob_type1029, align 8
  %tp_dealloc1030 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %504, i32 0, i32 4
  %505 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1030, align 8
  %506 = load %struct._object*, %struct._object** %_py_decref_tmp1023, align 8
  call void %505(%struct._object* %506)
  br label %if.end.1031

if.end.1031:                                      ; preds = %if.else.1028, %if.then.1027
  br label %do.end.1032

do.end.1032:                                      ; preds = %if.end.1031
  br label %if.end.1033

if.end.1033:                                      ; preds = %do.end.1032, %land.lhs.true.1018, %do.body.1014
  br label %do.end.1034

do.end.1034:                                      ; preds = %if.end.1033
  br label %do.body.1035

do.body.1035:                                     ; preds = %do.end.1034
  %call1037 = call %struct._object* @PyLong_FromLong(i64 4194304)
  store %struct._object* %call1037, %struct._object** %o1036, align 8
  %507 = load %struct._object*, %struct._object** %o1036, align 8
  %tobool1038 = icmp ne %struct._object* %507, null
  br i1 %tobool1038, label %land.lhs.true.1039, label %if.end.1054

land.lhs.true.1039:                               ; preds = %do.body.1035
  %508 = load %struct._object*, %struct._object** @ModDict, align 8
  %509 = load %struct._object*, %struct._object** %o1036, align 8
  %call1040 = call i32 @PyDict_SetItemString(%struct._object* %508, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i32 0, i32 0), %struct._object* %509)
  %cmp1041 = icmp eq i32 %call1040, 0
  br i1 %cmp1041, label %if.then.1042, label %if.end.1054

if.then.1042:                                     ; preds = %land.lhs.true.1039
  br label %do.body.1043

do.body.1043:                                     ; preds = %if.then.1042
  %510 = load %struct._object*, %struct._object** %o1036, align 8
  store %struct._object* %510, %struct._object** %_py_decref_tmp1044, align 8
  %511 = load %struct._object*, %struct._object** %_py_decref_tmp1044, align 8
  %ob_refcnt1045 = getelementptr inbounds %struct._object, %struct._object* %511, i32 0, i32 0
  %512 = load i64, i64* %ob_refcnt1045, align 8
  %dec1046 = add i64 %512, -1
  store i64 %dec1046, i64* %ob_refcnt1045, align 8
  %cmp1047 = icmp ne i64 %dec1046, 0
  br i1 %cmp1047, label %if.then.1048, label %if.else.1049

if.then.1048:                                     ; preds = %do.body.1043
  br label %if.end.1052

if.else.1049:                                     ; preds = %do.body.1043
  %513 = load %struct._object*, %struct._object** %_py_decref_tmp1044, align 8
  %ob_type1050 = getelementptr inbounds %struct._object, %struct._object* %513, i32 0, i32 1
  %514 = load %struct._typeobject*, %struct._typeobject** %ob_type1050, align 8
  %tp_dealloc1051 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %514, i32 0, i32 4
  %515 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1051, align 8
  %516 = load %struct._object*, %struct._object** %_py_decref_tmp1044, align 8
  call void %515(%struct._object* %516)
  br label %if.end.1052

if.end.1052:                                      ; preds = %if.else.1049, %if.then.1048
  br label %do.end.1053

do.end.1053:                                      ; preds = %if.end.1052
  br label %if.end.1054

if.end.1054:                                      ; preds = %do.end.1053, %land.lhs.true.1039, %do.body.1035
  br label %do.end.1055

do.end.1055:                                      ; preds = %if.end.1054
  br label %do.body.1056

do.body.1056:                                     ; preds = %do.end.1055
  %call1058 = call %struct._object* @PyLong_FromLong(i64 33554432)
  store %struct._object* %call1058, %struct._object** %o1057, align 8
  %517 = load %struct._object*, %struct._object** %o1057, align 8
  %tobool1059 = icmp ne %struct._object* %517, null
  br i1 %tobool1059, label %land.lhs.true.1060, label %if.end.1075

land.lhs.true.1060:                               ; preds = %do.body.1056
  %518 = load %struct._object*, %struct._object** @ModDict, align 8
  %519 = load %struct._object*, %struct._object** %o1057, align 8
  %call1061 = call i32 @PyDict_SetItemString(%struct._object* %518, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), %struct._object* %519)
  %cmp1062 = icmp eq i32 %call1061, 0
  br i1 %cmp1062, label %if.then.1063, label %if.end.1075

if.then.1063:                                     ; preds = %land.lhs.true.1060
  br label %do.body.1064

do.body.1064:                                     ; preds = %if.then.1063
  %520 = load %struct._object*, %struct._object** %o1057, align 8
  store %struct._object* %520, %struct._object** %_py_decref_tmp1065, align 8
  %521 = load %struct._object*, %struct._object** %_py_decref_tmp1065, align 8
  %ob_refcnt1066 = getelementptr inbounds %struct._object, %struct._object* %521, i32 0, i32 0
  %522 = load i64, i64* %ob_refcnt1066, align 8
  %dec1067 = add i64 %522, -1
  store i64 %dec1067, i64* %ob_refcnt1066, align 8
  %cmp1068 = icmp ne i64 %dec1067, 0
  br i1 %cmp1068, label %if.then.1069, label %if.else.1070

if.then.1069:                                     ; preds = %do.body.1064
  br label %if.end.1073

if.else.1070:                                     ; preds = %do.body.1064
  %523 = load %struct._object*, %struct._object** %_py_decref_tmp1065, align 8
  %ob_type1071 = getelementptr inbounds %struct._object, %struct._object* %523, i32 0, i32 1
  %524 = load %struct._typeobject*, %struct._typeobject** %ob_type1071, align 8
  %tp_dealloc1072 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %524, i32 0, i32 4
  %525 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1072, align 8
  %526 = load %struct._object*, %struct._object** %_py_decref_tmp1065, align 8
  call void %525(%struct._object* %526)
  br label %if.end.1073

if.end.1073:                                      ; preds = %if.else.1070, %if.then.1069
  br label %do.end.1074

do.end.1074:                                      ; preds = %if.end.1073
  br label %if.end.1075

if.end.1075:                                      ; preds = %do.end.1074, %land.lhs.true.1060, %do.body.1056
  br label %do.end.1076

do.end.1076:                                      ; preds = %if.end.1075
  br label %do.body.1077

do.body.1077:                                     ; preds = %do.end.1076
  %call1079 = call %struct._object* @PyLong_FromLong(i64 16777216)
  store %struct._object* %call1079, %struct._object** %o1078, align 8
  %527 = load %struct._object*, %struct._object** %o1078, align 8
  %tobool1080 = icmp ne %struct._object* %527, null
  br i1 %tobool1080, label %land.lhs.true.1081, label %if.end.1096

land.lhs.true.1081:                               ; preds = %do.body.1077
  %528 = load %struct._object*, %struct._object** @ModDict, align 8
  %529 = load %struct._object*, %struct._object** %o1078, align 8
  %call1082 = call i32 @PyDict_SetItemString(%struct._object* %528, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), %struct._object* %529)
  %cmp1083 = icmp eq i32 %call1082, 0
  br i1 %cmp1083, label %if.then.1084, label %if.end.1096

if.then.1084:                                     ; preds = %land.lhs.true.1081
  br label %do.body.1085

do.body.1085:                                     ; preds = %if.then.1084
  %530 = load %struct._object*, %struct._object** %o1078, align 8
  store %struct._object* %530, %struct._object** %_py_decref_tmp1086, align 8
  %531 = load %struct._object*, %struct._object** %_py_decref_tmp1086, align 8
  %ob_refcnt1087 = getelementptr inbounds %struct._object, %struct._object* %531, i32 0, i32 0
  %532 = load i64, i64* %ob_refcnt1087, align 8
  %dec1088 = add i64 %532, -1
  store i64 %dec1088, i64* %ob_refcnt1087, align 8
  %cmp1089 = icmp ne i64 %dec1088, 0
  br i1 %cmp1089, label %if.then.1090, label %if.else.1091

if.then.1090:                                     ; preds = %do.body.1085
  br label %if.end.1094

if.else.1091:                                     ; preds = %do.body.1085
  %533 = load %struct._object*, %struct._object** %_py_decref_tmp1086, align 8
  %ob_type1092 = getelementptr inbounds %struct._object, %struct._object* %533, i32 0, i32 1
  %534 = load %struct._typeobject*, %struct._typeobject** %ob_type1092, align 8
  %tp_dealloc1093 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %534, i32 0, i32 4
  %535 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1093, align 8
  %536 = load %struct._object*, %struct._object** %_py_decref_tmp1086, align 8
  call void %535(%struct._object* %536)
  br label %if.end.1094

if.end.1094:                                      ; preds = %if.else.1091, %if.then.1090
  br label %do.end.1095

do.end.1095:                                      ; preds = %if.end.1094
  br label %if.end.1096

if.end.1096:                                      ; preds = %do.end.1095, %land.lhs.true.1081, %do.body.1077
  br label %do.end.1097

do.end.1097:                                      ; preds = %if.end.1096
  br label %do.body.1098

do.body.1098:                                     ; preds = %do.end.1097
  %call1100 = call %struct._object* @PyLong_FromLong(i64 67108864)
  store %struct._object* %call1100, %struct._object** %o1099, align 8
  %537 = load %struct._object*, %struct._object** %o1099, align 8
  %tobool1101 = icmp ne %struct._object* %537, null
  br i1 %tobool1101, label %land.lhs.true.1102, label %if.end.1117

land.lhs.true.1102:                               ; preds = %do.body.1098
  %538 = load %struct._object*, %struct._object** @ModDict, align 8
  %539 = load %struct._object*, %struct._object** %o1099, align 8
  %call1103 = call i32 @PyDict_SetItemString(%struct._object* %538, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), %struct._object* %539)
  %cmp1104 = icmp eq i32 %call1103, 0
  br i1 %cmp1104, label %if.then.1105, label %if.end.1117

if.then.1105:                                     ; preds = %land.lhs.true.1102
  br label %do.body.1106

do.body.1106:                                     ; preds = %if.then.1105
  %540 = load %struct._object*, %struct._object** %o1099, align 8
  store %struct._object* %540, %struct._object** %_py_decref_tmp1107, align 8
  %541 = load %struct._object*, %struct._object** %_py_decref_tmp1107, align 8
  %ob_refcnt1108 = getelementptr inbounds %struct._object, %struct._object* %541, i32 0, i32 0
  %542 = load i64, i64* %ob_refcnt1108, align 8
  %dec1109 = add i64 %542, -1
  store i64 %dec1109, i64* %ob_refcnt1108, align 8
  %cmp1110 = icmp ne i64 %dec1109, 0
  br i1 %cmp1110, label %if.then.1111, label %if.else.1112

if.then.1111:                                     ; preds = %do.body.1106
  br label %if.end.1115

if.else.1112:                                     ; preds = %do.body.1106
  %543 = load %struct._object*, %struct._object** %_py_decref_tmp1107, align 8
  %ob_type1113 = getelementptr inbounds %struct._object, %struct._object* %543, i32 0, i32 1
  %544 = load %struct._typeobject*, %struct._typeobject** %ob_type1113, align 8
  %tp_dealloc1114 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %544, i32 0, i32 4
  %545 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1114, align 8
  %546 = load %struct._object*, %struct._object** %_py_decref_tmp1107, align 8
  call void %545(%struct._object* %546)
  br label %if.end.1115

if.end.1115:                                      ; preds = %if.else.1112, %if.then.1111
  br label %do.end.1116

do.end.1116:                                      ; preds = %if.end.1115
  br label %if.end.1117

if.end.1117:                                      ; preds = %do.end.1116, %land.lhs.true.1102, %do.body.1098
  br label %do.end.1118

do.end.1118:                                      ; preds = %if.end.1117
  br label %do.body.1119

do.body.1119:                                     ; preds = %do.end.1118
  %call1121 = call %struct._object* @PyLong_FromLong(i64 134217727)
  store %struct._object* %call1121, %struct._object** %o1120, align 8
  %547 = load %struct._object*, %struct._object** %o1120, align 8
  %tobool1122 = icmp ne %struct._object* %547, null
  br i1 %tobool1122, label %land.lhs.true.1123, label %if.end.1138

land.lhs.true.1123:                               ; preds = %do.body.1119
  %548 = load %struct._object*, %struct._object** @ModDict, align 8
  %549 = load %struct._object*, %struct._object** %o1120, align 8
  %call1124 = call i32 @PyDict_SetItemString(%struct._object* %548, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i32 0, i32 0), %struct._object* %549)
  %cmp1125 = icmp eq i32 %call1124, 0
  br i1 %cmp1125, label %if.then.1126, label %if.end.1138

if.then.1126:                                     ; preds = %land.lhs.true.1123
  br label %do.body.1127

do.body.1127:                                     ; preds = %if.then.1126
  %550 = load %struct._object*, %struct._object** %o1120, align 8
  store %struct._object* %550, %struct._object** %_py_decref_tmp1128, align 8
  %551 = load %struct._object*, %struct._object** %_py_decref_tmp1128, align 8
  %ob_refcnt1129 = getelementptr inbounds %struct._object, %struct._object* %551, i32 0, i32 0
  %552 = load i64, i64* %ob_refcnt1129, align 8
  %dec1130 = add i64 %552, -1
  store i64 %dec1130, i64* %ob_refcnt1129, align 8
  %cmp1131 = icmp ne i64 %dec1130, 0
  br i1 %cmp1131, label %if.then.1132, label %if.else.1133

if.then.1132:                                     ; preds = %do.body.1127
  br label %if.end.1136

if.else.1133:                                     ; preds = %do.body.1127
  %553 = load %struct._object*, %struct._object** %_py_decref_tmp1128, align 8
  %ob_type1134 = getelementptr inbounds %struct._object, %struct._object* %553, i32 0, i32 1
  %554 = load %struct._typeobject*, %struct._typeobject** %ob_type1134, align 8
  %tp_dealloc1135 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %554, i32 0, i32 4
  %555 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1135, align 8
  %556 = load %struct._object*, %struct._object** %_py_decref_tmp1128, align 8
  call void %555(%struct._object* %556)
  br label %if.end.1136

if.end.1136:                                      ; preds = %if.else.1133, %if.then.1132
  br label %do.end.1137

do.end.1137:                                      ; preds = %if.end.1136
  br label %if.end.1138

if.end.1138:                                      ; preds = %do.end.1137, %land.lhs.true.1123, %do.body.1119
  br label %do.end.1139

do.end.1139:                                      ; preds = %if.end.1138
  br label %do.body.1140

do.body.1140:                                     ; preds = %do.end.1139
  %call1142 = call %struct._object* @PyLong_FromLong(i64 134217728)
  store %struct._object* %call1142, %struct._object** %o1141, align 8
  %557 = load %struct._object*, %struct._object** %o1141, align 8
  %tobool1143 = icmp ne %struct._object* %557, null
  br i1 %tobool1143, label %land.lhs.true.1144, label %if.end.1159

land.lhs.true.1144:                               ; preds = %do.body.1140
  %558 = load %struct._object*, %struct._object** @ModDict, align 8
  %559 = load %struct._object*, %struct._object** %o1141, align 8
  %call1145 = call i32 @PyDict_SetItemString(%struct._object* %558, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i32 0, i32 0), %struct._object* %559)
  %cmp1146 = icmp eq i32 %call1145, 0
  br i1 %cmp1146, label %if.then.1147, label %if.end.1159

if.then.1147:                                     ; preds = %land.lhs.true.1144
  br label %do.body.1148

do.body.1148:                                     ; preds = %if.then.1147
  %560 = load %struct._object*, %struct._object** %o1141, align 8
  store %struct._object* %560, %struct._object** %_py_decref_tmp1149, align 8
  %561 = load %struct._object*, %struct._object** %_py_decref_tmp1149, align 8
  %ob_refcnt1150 = getelementptr inbounds %struct._object, %struct._object* %561, i32 0, i32 0
  %562 = load i64, i64* %ob_refcnt1150, align 8
  %dec1151 = add i64 %562, -1
  store i64 %dec1151, i64* %ob_refcnt1150, align 8
  %cmp1152 = icmp ne i64 %dec1151, 0
  br i1 %cmp1152, label %if.then.1153, label %if.else.1154

if.then.1153:                                     ; preds = %do.body.1148
  br label %if.end.1157

if.else.1154:                                     ; preds = %do.body.1148
  %563 = load %struct._object*, %struct._object** %_py_decref_tmp1149, align 8
  %ob_type1155 = getelementptr inbounds %struct._object, %struct._object* %563, i32 0, i32 1
  %564 = load %struct._typeobject*, %struct._typeobject** %ob_type1155, align 8
  %tp_dealloc1156 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %564, i32 0, i32 4
  %565 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1156, align 8
  %566 = load %struct._object*, %struct._object** %_py_decref_tmp1149, align 8
  call void %565(%struct._object* %566)
  br label %if.end.1157

if.end.1157:                                      ; preds = %if.else.1154, %if.then.1153
  br label %do.end.1158

do.end.1158:                                      ; preds = %if.end.1157
  br label %if.end.1159

if.end.1159:                                      ; preds = %do.end.1158, %land.lhs.true.1144, %do.body.1140
  br label %do.end.1160

do.end.1160:                                      ; preds = %if.end.1159
  store i32 257, i32* %key, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.1160
  %567 = load i32, i32* %key, align 4
  %cmp1161 = icmp slt i32 %567, 511
  br i1 %cmp1161, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %568 = load i32, i32* %key, align 4
  %call1162 = call i8* @keyname(i32 %568)
  store i8* %call1162, i8** %key_n, align 8
  %569 = load i8*, i8** %key_n, align 8
  %cmp1163 = icmp eq i8* %569, null
  br i1 %cmp1163, label %if.then.1166, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %570 = load i8*, i8** %key_n, align 8
  %call1164 = call i32 @strcmp(i8* %570, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0)) #5
  %cmp1165 = icmp eq i32 %call1164, 0
  br i1 %cmp1165, label %if.then.1166, label %if.end.1167

if.then.1166:                                     ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end.1167:                                      ; preds = %lor.lhs.false
  %571 = load i8*, i8** %key_n, align 8
  %call1168 = call i32 @strncmp(i8* %571, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i64 6) #5
  %cmp1169 = icmp eq i32 %call1168, 0
  br i1 %cmp1169, label %if.then.1170, label %if.else.1187

if.then.1170:                                     ; preds = %if.end.1167
  %572 = load i8*, i8** %key_n, align 8
  %call1171 = call i64 @strlen(i8* %572) #5
  %add = add i64 %call1171, 1
  %call1172 = call i8* @PyMem_Malloc(i64 %add)
  store i8* %call1172, i8** %key_n2, align 8
  %573 = load i8*, i8** %key_n2, align 8
  %tobool1173 = icmp ne i8* %573, null
  br i1 %tobool1173, label %if.end.1176, label %if.then.1174

if.then.1174:                                     ; preds = %if.then.1170
  %call1175 = call %struct._object* @PyErr_NoMemory()
  br label %for.end

if.end.1176:                                      ; preds = %if.then.1170
  %574 = load i8*, i8** %key_n, align 8
  store i8* %574, i8** %p1, align 8
  %575 = load i8*, i8** %key_n2, align 8
  store i8* %575, i8** %p2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.1185, %if.end.1176
  %576 = load i8*, i8** %p1, align 8
  %577 = load i8, i8* %576, align 1
  %tobool1177 = icmp ne i8 %577, 0
  br i1 %tobool1177, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %578 = load i8*, i8** %p1, align 8
  %579 = load i8, i8* %578, align 1
  %conv = sext i8 %579 to i32
  %cmp1178 = icmp ne i32 %conv, 40
  br i1 %cmp1178, label %land.lhs.true.1180, label %if.end.1185

land.lhs.true.1180:                               ; preds = %while.body
  %580 = load i8*, i8** %p1, align 8
  %581 = load i8, i8* %580, align 1
  %conv1181 = sext i8 %581 to i32
  %cmp1182 = icmp ne i32 %conv1181, 41
  br i1 %cmp1182, label %if.then.1184, label %if.end.1185

if.then.1184:                                     ; preds = %land.lhs.true.1180
  %582 = load i8*, i8** %p1, align 8
  %583 = load i8, i8* %582, align 1
  %584 = load i8*, i8** %p2, align 8
  store i8 %583, i8* %584, align 1
  %585 = load i8*, i8** %p2, align 8
  %incdec.ptr = getelementptr i8, i8* %585, i32 1
  store i8* %incdec.ptr, i8** %p2, align 8
  br label %if.end.1185

if.end.1185:                                      ; preds = %if.then.1184, %land.lhs.true.1180, %while.body
  %586 = load i8*, i8** %p1, align 8
  %incdec.ptr1186 = getelementptr i8, i8* %586, i32 1
  store i8* %incdec.ptr1186, i8** %p1, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %587 = load i8*, i8** %p2, align 8
  store i8 0, i8* %587, align 1
  br label %if.end.1188

if.else.1187:                                     ; preds = %if.end.1167
  %588 = load i8*, i8** %key_n, align 8
  store i8* %588, i8** %key_n2, align 8
  br label %if.end.1188

if.end.1188:                                      ; preds = %if.else.1187, %while.end
  br label %do.body.1189

do.body.1189:                                     ; preds = %if.end.1188
  %589 = load i32, i32* %key, align 4
  %conv1191 = sext i32 %589 to i64
  %call1192 = call %struct._object* @PyLong_FromLong(i64 %conv1191)
  store %struct._object* %call1192, %struct._object** %o1190, align 8
  %590 = load %struct._object*, %struct._object** %o1190, align 8
  %tobool1193 = icmp ne %struct._object* %590, null
  br i1 %tobool1193, label %land.lhs.true.1194, label %if.end.1211

land.lhs.true.1194:                               ; preds = %do.body.1189
  %591 = load %struct._object*, %struct._object** @ModDict, align 8
  %592 = load i8*, i8** %key_n2, align 8
  %593 = load %struct._object*, %struct._object** %o1190, align 8
  %call1195 = call i32 @PyDict_SetItemString(%struct._object* %591, i8* %592, %struct._object* %593)
  %cmp1196 = icmp eq i32 %call1195, 0
  br i1 %cmp1196, label %if.then.1198, label %if.end.1211

if.then.1198:                                     ; preds = %land.lhs.true.1194
  br label %do.body.1199

do.body.1199:                                     ; preds = %if.then.1198
  %594 = load %struct._object*, %struct._object** %o1190, align 8
  store %struct._object* %594, %struct._object** %_py_decref_tmp1200, align 8
  %595 = load %struct._object*, %struct._object** %_py_decref_tmp1200, align 8
  %ob_refcnt1201 = getelementptr inbounds %struct._object, %struct._object* %595, i32 0, i32 0
  %596 = load i64, i64* %ob_refcnt1201, align 8
  %dec1202 = add i64 %596, -1
  store i64 %dec1202, i64* %ob_refcnt1201, align 8
  %cmp1203 = icmp ne i64 %dec1202, 0
  br i1 %cmp1203, label %if.then.1205, label %if.else.1206

if.then.1205:                                     ; preds = %do.body.1199
  br label %if.end.1209

if.else.1206:                                     ; preds = %do.body.1199
  %597 = load %struct._object*, %struct._object** %_py_decref_tmp1200, align 8
  %ob_type1207 = getelementptr inbounds %struct._object, %struct._object* %597, i32 0, i32 1
  %598 = load %struct._typeobject*, %struct._typeobject** %ob_type1207, align 8
  %tp_dealloc1208 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %598, i32 0, i32 4
  %599 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1208, align 8
  %600 = load %struct._object*, %struct._object** %_py_decref_tmp1200, align 8
  call void %599(%struct._object* %600)
  br label %if.end.1209

if.end.1209:                                      ; preds = %if.else.1206, %if.then.1205
  br label %do.end.1210

do.end.1210:                                      ; preds = %if.end.1209
  br label %if.end.1211

if.end.1211:                                      ; preds = %do.end.1210, %land.lhs.true.1194, %do.body.1189
  br label %do.end.1212

do.end.1212:                                      ; preds = %if.end.1211
  %601 = load i8*, i8** %key_n2, align 8
  %602 = load i8*, i8** %key_n, align 8
  %cmp1213 = icmp ne i8* %601, %602
  br i1 %cmp1213, label %if.then.1215, label %if.end.1216

if.then.1215:                                     ; preds = %do.end.1212
  %603 = load i8*, i8** %key_n2, align 8
  call void @PyMem_Free(i8* %603)
  br label %if.end.1216

if.end.1216:                                      ; preds = %if.then.1215, %do.end.1212
  br label %for.inc

for.inc:                                          ; preds = %if.end.1216, %if.then.1166
  %604 = load i32, i32* %key, align 4
  %inc = add i32 %604, 1
  store i32 %inc, i32* %key, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.1174, %for.cond
  br label %do.body.1217

do.body.1217:                                     ; preds = %for.end
  %call1219 = call %struct._object* @PyLong_FromLong(i64 257)
  store %struct._object* %call1219, %struct._object** %o1218, align 8
  %605 = load %struct._object*, %struct._object** %o1218, align 8
  %tobool1220 = icmp ne %struct._object* %605, null
  br i1 %tobool1220, label %land.lhs.true.1221, label %if.end.1238

land.lhs.true.1221:                               ; preds = %do.body.1217
  %606 = load %struct._object*, %struct._object** @ModDict, align 8
  %607 = load %struct._object*, %struct._object** %o1218, align 8
  %call1222 = call i32 @PyDict_SetItemString(%struct._object* %606, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), %struct._object* %607)
  %cmp1223 = icmp eq i32 %call1222, 0
  br i1 %cmp1223, label %if.then.1225, label %if.end.1238

if.then.1225:                                     ; preds = %land.lhs.true.1221
  br label %do.body.1226

do.body.1226:                                     ; preds = %if.then.1225
  %608 = load %struct._object*, %struct._object** %o1218, align 8
  store %struct._object* %608, %struct._object** %_py_decref_tmp1227, align 8
  %609 = load %struct._object*, %struct._object** %_py_decref_tmp1227, align 8
  %ob_refcnt1228 = getelementptr inbounds %struct._object, %struct._object* %609, i32 0, i32 0
  %610 = load i64, i64* %ob_refcnt1228, align 8
  %dec1229 = add i64 %610, -1
  store i64 %dec1229, i64* %ob_refcnt1228, align 8
  %cmp1230 = icmp ne i64 %dec1229, 0
  br i1 %cmp1230, label %if.then.1232, label %if.else.1233

if.then.1232:                                     ; preds = %do.body.1226
  br label %if.end.1236

if.else.1233:                                     ; preds = %do.body.1226
  %611 = load %struct._object*, %struct._object** %_py_decref_tmp1227, align 8
  %ob_type1234 = getelementptr inbounds %struct._object, %struct._object* %611, i32 0, i32 1
  %612 = load %struct._typeobject*, %struct._typeobject** %ob_type1234, align 8
  %tp_dealloc1235 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %612, i32 0, i32 4
  %613 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1235, align 8
  %614 = load %struct._object*, %struct._object** %_py_decref_tmp1227, align 8
  call void %613(%struct._object* %614)
  br label %if.end.1236

if.end.1236:                                      ; preds = %if.else.1233, %if.then.1232
  br label %do.end.1237

do.end.1237:                                      ; preds = %if.end.1236
  br label %if.end.1238

if.end.1238:                                      ; preds = %do.end.1237, %land.lhs.true.1221, %do.body.1217
  br label %do.end.1239

do.end.1239:                                      ; preds = %if.end.1238
  br label %do.body.1240

do.body.1240:                                     ; preds = %do.end.1239
  %call1242 = call %struct._object* @PyLong_FromLong(i64 511)
  store %struct._object* %call1242, %struct._object** %o1241, align 8
  %615 = load %struct._object*, %struct._object** %o1241, align 8
  %tobool1243 = icmp ne %struct._object* %615, null
  br i1 %tobool1243, label %land.lhs.true.1244, label %if.end.1261

land.lhs.true.1244:                               ; preds = %do.body.1240
  %616 = load %struct._object*, %struct._object** @ModDict, align 8
  %617 = load %struct._object*, %struct._object** %o1241, align 8
  %call1245 = call i32 @PyDict_SetItemString(%struct._object* %616, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), %struct._object* %617)
  %cmp1246 = icmp eq i32 %call1245, 0
  br i1 %cmp1246, label %if.then.1248, label %if.end.1261

if.then.1248:                                     ; preds = %land.lhs.true.1244
  br label %do.body.1249

do.body.1249:                                     ; preds = %if.then.1248
  %618 = load %struct._object*, %struct._object** %o1241, align 8
  store %struct._object* %618, %struct._object** %_py_decref_tmp1250, align 8
  %619 = load %struct._object*, %struct._object** %_py_decref_tmp1250, align 8
  %ob_refcnt1251 = getelementptr inbounds %struct._object, %struct._object* %619, i32 0, i32 0
  %620 = load i64, i64* %ob_refcnt1251, align 8
  %dec1252 = add i64 %620, -1
  store i64 %dec1252, i64* %ob_refcnt1251, align 8
  %cmp1253 = icmp ne i64 %dec1252, 0
  br i1 %cmp1253, label %if.then.1255, label %if.else.1256

if.then.1255:                                     ; preds = %do.body.1249
  br label %if.end.1259

if.else.1256:                                     ; preds = %do.body.1249
  %621 = load %struct._object*, %struct._object** %_py_decref_tmp1250, align 8
  %ob_type1257 = getelementptr inbounds %struct._object, %struct._object* %621, i32 0, i32 1
  %622 = load %struct._typeobject*, %struct._typeobject** %ob_type1257, align 8
  %tp_dealloc1258 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %622, i32 0, i32 4
  %623 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1258, align 8
  %624 = load %struct._object*, %struct._object** %_py_decref_tmp1250, align 8
  call void %623(%struct._object* %624)
  br label %if.end.1259

if.end.1259:                                      ; preds = %if.else.1256, %if.then.1255
  br label %do.end.1260

do.end.1260:                                      ; preds = %if.end.1259
  br label %if.end.1261

if.end.1261:                                      ; preds = %do.end.1260, %land.lhs.true.1244, %do.body.1240
  br label %do.end.1262

do.end.1262:                                      ; preds = %if.end.1261
  %625 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %625, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.1262, %if.then.7, %if.then.3, %if.then
  %626 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %626
}

declare i32 @PyType_Ready(%struct._typeobject*) #1

; Function Attrs: nounwind uwtable
define internal i32 @func_PyCursesSetupTermCalled() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @initialised_setupterm, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.253, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @func_PyCursesInitialised() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @func_PyCursesInitialisedColor() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @initialisedcolors, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.255, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare %struct._object* @PyModule_GetDict(%struct._object*) #1

declare %struct._object* @PyCapsule_New(i8*, i8*, void (%struct._object*)*) #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyBytes_FromString(i8*) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare i8* @keyname(i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare %struct._object* @PyErr_NoMemory() #1

declare void @PyMem_Free(i8*) #1

declare i32 @delwin(%struct._win_st*) #1

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @curses_window_addch(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %group_left_1 = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %ch = alloca %struct._object*, align 8
  %group_right_1 = alloca i32, align 4
  %attr = alloca i64, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  store i32 0, i32* %group_left_1, align 4
  store i32 0, i32* %y, align 4
  store i32 0, i32* %x, align 4
  store i32 0, i32* %group_right_1, align 4
  store i64 0, i64* %attr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  switch i64 %2, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb.1
    i64 3, label %sw.bb.6
    i64 4, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.140, i32 0, i32 0), %struct._object** %ch)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %exit

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call2 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.141, i32 0, i32 0), %struct._object** %ch, i64* %attr)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %sw.bb.1
  br label %exit

if.end.5:                                         ; preds = %sw.bb.1
  store i32 1, i32* %group_right_1, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %call7 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.142, i32 0, i32 0), i32* %y, i32* %x, %struct._object** %ch)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %sw.bb.6
  br label %exit

if.end.10:                                        ; preds = %sw.bb.6
  store i32 1, i32* %group_left_1, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  %call12 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.143, i32 0, i32 0), i32* %y, i32* %x, %struct._object** %ch, i64* %attr)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %sw.bb.11
  br label %exit

if.end.15:                                        ; preds = %sw.bb.11
  store i32 1, i32* %group_right_1, align 4
  store i32 1, i32* %group_left_1, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.144, i32 0, i32 0))
  br label %exit

sw.epilog:                                        ; preds = %if.end.15, %if.end.10, %if.end.5, %if.end
  %8 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %9 = load i32, i32* %group_left_1, align 4
  %10 = load i32, i32* %y, align 4
  %11 = load i32, i32* %x, align 4
  %12 = load %struct._object*, %struct._object** %ch, align 8
  %13 = load i32, i32* %group_right_1, align 4
  %14 = load i64, i64* %attr, align 8
  %call16 = call %struct._object* @curses_window_addch_impl(%struct.PyCursesWindowObject* %8, i32 %9, i32 %10, i32 %11, %struct._object* %12, i32 %13, i64 %14)
  store %struct._object* %call16, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %sw.epilog, %sw.default, %if.then.14, %if.then.9, %if.then.4, %if.then
  %15 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_AddNStr(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %rtn = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %n = alloca i32, align 4
  %strtype = alloca i32, align 4
  %strobj = alloca %struct._object*, align 8
  %bytesobj = alloca %struct._object*, align 8
  %wstr = alloca i32*, align 8
  %attr = alloca i64, align 8
  %attr_old = alloca i64, align 8
  %lattr = alloca i64, align 8
  %use_xy = alloca i32, align 4
  %use_attr = alloca i32, align 4
  %funcname = alloca i8*, align 8
  %str = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %bytesobj, align 8
  store i32* null, i32** %wstr, align 8
  store i64 0, i64* %attr, align 8
  store i64 0, i64* %attr_old, align 8
  store i32 0, i32* %use_xy, align 4
  store i32 0, i32* %use_attr, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 2, label %sw.bb
    i64 3, label %sw.bb.2
    i64 4, label %sw.bb.7
    i64 5, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.152, i32 0, i32 0), %struct._object** %strobj, i32* %n)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call3 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.153, i32 0, i32 0), %struct._object** %strobj, i32* %n, i64* %lattr)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.2
  %3 = load i64, i64* %lattr, align 8
  store i64 %3, i64* %attr, align 8
  store i32 1, i32* %use_attr, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call8 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.154, i32 0, i32 0), i32* %y, i32* %x, %struct._object** %strobj, i32* %n)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %sw.bb.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %sw.bb.7
  store i32 1, i32* %use_xy, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %call13 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.155, i32 0, i32 0), i32* %y, i32* %x, %struct._object** %strobj, i32* %n, i64* %lattr)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %sw.bb.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %sw.bb.12
  %6 = load i64, i64* %lattr, align 8
  store i64 %6, i64* %attr, align 8
  store i32 1, i32* %use_attr, align 4
  store i32 1, i32* %use_xy, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.156, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.16, %if.end.11, %if.end.6, %if.end
  %8 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %9 = load %struct._object*, %struct._object** %strobj, align 8
  %call17 = call i32 @PyCurses_ConvertToString(%struct.PyCursesWindowObject* %8, %struct._object* %9, %struct._object** %bytesobj, i32** %wstr)
  store i32 %call17, i32* %strtype, align 4
  %10 = load i32, i32* %strtype, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %sw.epilog
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %sw.epilog
  %11 = load i32, i32* %use_attr, align 4
  %cmp20 = icmp eq i32 %11, 1
  br i1 %cmp20, label %if.then.21, label %if.end.33

if.then.21:                                       ; preds = %if.end.19
  %12 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %12, i32 0, i32 1
  %13 = load %struct._win_st*, %struct._win_st** %win, align 8
  %tobool22 = icmp ne %struct._win_st* %13, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.21
  %14 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win23 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %14, i32 0, i32 1
  %15 = load %struct._win_st*, %struct._win_st** %win23, align 8
  %_attrs = getelementptr inbounds %struct._win_st, %struct._win_st* %15, i32 0, i32 7
  %16 = load i64, i64* %_attrs, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ 0, %cond.false ]
  %conv = trunc i64 %cond to i32
  %conv24 = sext i32 %conv to i64
  store i64 %conv24, i64* %attr_old, align 8
  %17 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win25 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %17, i32 0, i32 1
  %18 = load %struct._win_st*, %struct._win_st** %win25, align 8
  %tobool26 = icmp ne %struct._win_st* %18, null
  br i1 %tobool26, label %cond.true.27, label %cond.false.30

cond.true.27:                                     ; preds = %cond.end
  %19 = load i64, i64* %attr, align 8
  %20 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win28 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %20, i32 0, i32 1
  %21 = load %struct._win_st*, %struct._win_st** %win28, align 8
  %_attrs29 = getelementptr inbounds %struct._win_st, %struct._win_st* %21, i32 0, i32 7
  store i64 %19, i64* %_attrs29, align 8
  br label %cond.end.31

cond.false.30:                                    ; preds = %cond.end
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.27
  %cond32 = phi i32 [ 0, %cond.true.27 ], [ -1, %cond.false.30 ]
  br label %if.end.33

if.end.33:                                        ; preds = %cond.end.31, %if.end.19
  %22 = load i32, i32* %strtype, align 4
  %cmp34 = icmp eq i32 %22, 2
  br i1 %cmp34, label %if.then.36, label %if.else.53

if.then.36:                                       ; preds = %if.end.33
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.157, i32 0, i32 0), i8** %funcname, align 8
  %23 = load i32, i32* %use_xy, align 4
  %cmp37 = icmp eq i32 %23, 1
  br i1 %cmp37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %if.then.36
  %24 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win40 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %24, i32 0, i32 1
  %25 = load %struct._win_st*, %struct._win_st** %win40, align 8
  %26 = load i32, i32* %y, align 4
  %27 = load i32, i32* %x, align 4
  %call41 = call i32 @wmove(%struct._win_st* %25, i32 %26, i32 %27)
  %cmp42 = icmp eq i32 %call41, -1
  br i1 %cmp42, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %if.then.39
  br label %cond.end.48

cond.false.45:                                    ; preds = %if.then.39
  %28 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win46 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %28, i32 0, i32 1
  %29 = load %struct._win_st*, %struct._win_st** %win46, align 8
  %30 = load i32*, i32** %wstr, align 8
  %31 = load i32, i32* %n, align 4
  %call47 = call i32 @waddnwstr(%struct._win_st* %29, i32* %30, i32 %31)
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.45, %cond.true.44
  %cond49 = phi i32 [ -1, %cond.true.44 ], [ %call47, %cond.false.45 ]
  store i32 %cond49, i32* %rtn, align 4
  br label %if.end.52

if.else:                                          ; preds = %if.then.36
  %32 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win50 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %32, i32 0, i32 1
  %33 = load %struct._win_st*, %struct._win_st** %win50, align 8
  %34 = load i32*, i32** %wstr, align 8
  %35 = load i32, i32* %n, align 4
  %call51 = call i32 @waddnwstr(%struct._win_st* %33, i32* %34, i32 %35)
  store i32 %call51, i32* %rtn, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %cond.end.48
  %36 = load i32*, i32** %wstr, align 8
  %37 = bitcast i32* %36 to i8*
  call void @PyMem_Free(i8* %37)
  br label %if.end.76

if.else.53:                                       ; preds = %if.end.33
  %38 = load %struct._object*, %struct._object** %bytesobj, align 8
  %39 = bitcast %struct._object* %38 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %39, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %str, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8** %funcname, align 8
  %40 = load i32, i32* %use_xy, align 4
  %cmp54 = icmp eq i32 %40, 1
  br i1 %cmp54, label %if.then.56, label %if.else.67

if.then.56:                                       ; preds = %if.else.53
  %41 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win57 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %41, i32 0, i32 1
  %42 = load %struct._win_st*, %struct._win_st** %win57, align 8
  %43 = load i32, i32* %y, align 4
  %44 = load i32, i32* %x, align 4
  %call58 = call i32 @wmove(%struct._win_st* %42, i32 %43, i32 %44)
  %cmp59 = icmp eq i32 %call58, -1
  br i1 %cmp59, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %if.then.56
  br label %cond.end.65

cond.false.62:                                    ; preds = %if.then.56
  %45 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win63 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %45, i32 0, i32 1
  %46 = load %struct._win_st*, %struct._win_st** %win63, align 8
  %47 = load i8*, i8** %str, align 8
  %48 = load i32, i32* %n, align 4
  %call64 = call i32 @waddnstr(%struct._win_st* %46, i8* %47, i32 %48)
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.62, %cond.true.61
  %cond66 = phi i32 [ -1, %cond.true.61 ], [ %call64, %cond.false.62 ]
  store i32 %cond66, i32* %rtn, align 4
  br label %if.end.70

if.else.67:                                       ; preds = %if.else.53
  %49 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win68 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %49, i32 0, i32 1
  %50 = load %struct._win_st*, %struct._win_st** %win68, align 8
  %51 = load i8*, i8** %str, align 8
  %52 = load i32, i32* %n, align 4
  %call69 = call i32 @waddnstr(%struct._win_st* %50, i8* %51, i32 %52)
  store i32 %call69, i32* %rtn, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %cond.end.65
  br label %do.body

do.body:                                          ; preds = %if.end.70
  %53 = load %struct._object*, %struct._object** %bytesobj, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %55, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp71 = icmp ne i64 %dec, 0
  br i1 %cmp71, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %do.body
  br label %if.end.75

if.else.74:                                       ; preds = %do.body
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %58(%struct._object* %59)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.74, %if.then.73
  br label %do.end

do.end:                                           ; preds = %if.end.75
  br label %if.end.76

if.end.76:                                        ; preds = %do.end, %if.end.52
  %60 = load i32, i32* %use_attr, align 4
  %cmp77 = icmp eq i32 %60, 1
  br i1 %cmp77, label %if.then.79, label %if.end.88

if.then.79:                                       ; preds = %if.end.76
  %61 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win80 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %61, i32 0, i32 1
  %62 = load %struct._win_st*, %struct._win_st** %win80, align 8
  %tobool81 = icmp ne %struct._win_st* %62, null
  br i1 %tobool81, label %cond.true.82, label %cond.false.85

cond.true.82:                                     ; preds = %if.then.79
  %63 = load i64, i64* %attr_old, align 8
  %64 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win83 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %64, i32 0, i32 1
  %65 = load %struct._win_st*, %struct._win_st** %win83, align 8
  %_attrs84 = getelementptr inbounds %struct._win_st, %struct._win_st* %65, i32 0, i32 7
  store i64 %63, i64* %_attrs84, align 8
  br label %cond.end.86

cond.false.85:                                    ; preds = %if.then.79
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.85, %cond.true.82
  %cond87 = phi i32 [ 0, %cond.true.82 ], [ -1, %cond.false.85 ]
  br label %if.end.88

if.end.88:                                        ; preds = %cond.end.86, %if.end.76
  %66 = load i32, i32* %rtn, align 4
  %67 = load i8*, i8** %funcname, align 8
  %call89 = call %struct._object* @PyCursesCheckERR(i32 %66, i8* %67)
  store %struct._object* %call89, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.88, %if.then.18, %sw.default, %if.then.15, %if.then.10, %if.then.5, %if.then
  %68 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %68
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_AddStr(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %rtn = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %strtype = alloca i32, align 4
  %strobj = alloca %struct._object*, align 8
  %bytesobj = alloca %struct._object*, align 8
  %wstr = alloca i32*, align 8
  %attr = alloca i64, align 8
  %attr_old = alloca i64, align 8
  %lattr = alloca i64, align 8
  %use_xy = alloca i32, align 4
  %use_attr = alloca i32, align 4
  %funcname = alloca i8*, align 8
  %str = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %bytesobj, align 8
  store i32* null, i32** %wstr, align 8
  store i64 0, i64* %attr, align 8
  store i64 0, i64* %attr_old, align 8
  store i32 0, i32* %use_xy, align 4
  store i32 0, i32* %use_attr, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb.2
    i64 3, label %sw.bb.7
    i64 4, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.159, i32 0, i32 0), %struct._object** %strobj)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call3 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.160, i32 0, i32 0), %struct._object** %strobj, i64* %lattr)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.2
  %3 = load i64, i64* %lattr, align 8
  store i64 %3, i64* %attr, align 8
  store i32 1, i32* %use_attr, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call8 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.161, i32 0, i32 0), i32* %y, i32* %x, %struct._object** %strobj)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %sw.bb.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %sw.bb.7
  store i32 1, i32* %use_xy, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %call13 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.162, i32 0, i32 0), i32* %y, i32* %x, %struct._object** %strobj, i64* %lattr)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %sw.bb.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %sw.bb.12
  %6 = load i64, i64* %lattr, align 8
  store i64 %6, i64* %attr, align 8
  store i32 1, i32* %use_attr, align 4
  store i32 1, i32* %use_xy, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.163, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.16, %if.end.11, %if.end.6, %if.end
  %8 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %9 = load %struct._object*, %struct._object** %strobj, align 8
  %call17 = call i32 @PyCurses_ConvertToString(%struct.PyCursesWindowObject* %8, %struct._object* %9, %struct._object** %bytesobj, i32** %wstr)
  store i32 %call17, i32* %strtype, align 4
  %10 = load i32, i32* %strtype, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %sw.epilog
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %sw.epilog
  %11 = load i32, i32* %use_attr, align 4
  %cmp20 = icmp eq i32 %11, 1
  br i1 %cmp20, label %if.then.21, label %if.end.33

if.then.21:                                       ; preds = %if.end.19
  %12 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %12, i32 0, i32 1
  %13 = load %struct._win_st*, %struct._win_st** %win, align 8
  %tobool22 = icmp ne %struct._win_st* %13, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.21
  %14 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win23 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %14, i32 0, i32 1
  %15 = load %struct._win_st*, %struct._win_st** %win23, align 8
  %_attrs = getelementptr inbounds %struct._win_st, %struct._win_st* %15, i32 0, i32 7
  %16 = load i64, i64* %_attrs, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ 0, %cond.false ]
  %conv = trunc i64 %cond to i32
  %conv24 = sext i32 %conv to i64
  store i64 %conv24, i64* %attr_old, align 8
  %17 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win25 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %17, i32 0, i32 1
  %18 = load %struct._win_st*, %struct._win_st** %win25, align 8
  %tobool26 = icmp ne %struct._win_st* %18, null
  br i1 %tobool26, label %cond.true.27, label %cond.false.30

cond.true.27:                                     ; preds = %cond.end
  %19 = load i64, i64* %attr, align 8
  %20 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win28 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %20, i32 0, i32 1
  %21 = load %struct._win_st*, %struct._win_st** %win28, align 8
  %_attrs29 = getelementptr inbounds %struct._win_st, %struct._win_st* %21, i32 0, i32 7
  store i64 %19, i64* %_attrs29, align 8
  br label %cond.end.31

cond.false.30:                                    ; preds = %cond.end
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.27
  %cond32 = phi i32 [ 0, %cond.true.27 ], [ -1, %cond.false.30 ]
  br label %if.end.33

if.end.33:                                        ; preds = %cond.end.31, %if.end.19
  %22 = load i32, i32* %strtype, align 4
  %cmp34 = icmp eq i32 %22, 2
  br i1 %cmp34, label %if.then.36, label %if.else.53

if.then.36:                                       ; preds = %if.end.33
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.164, i32 0, i32 0), i8** %funcname, align 8
  %23 = load i32, i32* %use_xy, align 4
  %cmp37 = icmp eq i32 %23, 1
  br i1 %cmp37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %if.then.36
  %24 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win40 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %24, i32 0, i32 1
  %25 = load %struct._win_st*, %struct._win_st** %win40, align 8
  %26 = load i32, i32* %y, align 4
  %27 = load i32, i32* %x, align 4
  %call41 = call i32 @wmove(%struct._win_st* %25, i32 %26, i32 %27)
  %cmp42 = icmp eq i32 %call41, -1
  br i1 %cmp42, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %if.then.39
  br label %cond.end.48

cond.false.45:                                    ; preds = %if.then.39
  %28 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win46 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %28, i32 0, i32 1
  %29 = load %struct._win_st*, %struct._win_st** %win46, align 8
  %30 = load i32*, i32** %wstr, align 8
  %call47 = call i32 @waddnwstr(%struct._win_st* %29, i32* %30, i32 -1)
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.45, %cond.true.44
  %cond49 = phi i32 [ -1, %cond.true.44 ], [ %call47, %cond.false.45 ]
  store i32 %cond49, i32* %rtn, align 4
  br label %if.end.52

if.else:                                          ; preds = %if.then.36
  %31 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win50 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %31, i32 0, i32 1
  %32 = load %struct._win_st*, %struct._win_st** %win50, align 8
  %33 = load i32*, i32** %wstr, align 8
  %call51 = call i32 @waddnwstr(%struct._win_st* %32, i32* %33, i32 -1)
  store i32 %call51, i32* %rtn, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %cond.end.48
  %34 = load i32*, i32** %wstr, align 8
  %35 = bitcast i32* %34 to i8*
  call void @PyMem_Free(i8* %35)
  br label %if.end.76

if.else.53:                                       ; preds = %if.end.33
  %36 = load %struct._object*, %struct._object** %bytesobj, align 8
  %37 = bitcast %struct._object* %36 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %37, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %str, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i8** %funcname, align 8
  %38 = load i32, i32* %use_xy, align 4
  %cmp54 = icmp eq i32 %38, 1
  br i1 %cmp54, label %if.then.56, label %if.else.67

if.then.56:                                       ; preds = %if.else.53
  %39 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win57 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %39, i32 0, i32 1
  %40 = load %struct._win_st*, %struct._win_st** %win57, align 8
  %41 = load i32, i32* %y, align 4
  %42 = load i32, i32* %x, align 4
  %call58 = call i32 @wmove(%struct._win_st* %40, i32 %41, i32 %42)
  %cmp59 = icmp eq i32 %call58, -1
  br i1 %cmp59, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %if.then.56
  br label %cond.end.65

cond.false.62:                                    ; preds = %if.then.56
  %43 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win63 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %43, i32 0, i32 1
  %44 = load %struct._win_st*, %struct._win_st** %win63, align 8
  %45 = load i8*, i8** %str, align 8
  %call64 = call i32 @waddnstr(%struct._win_st* %44, i8* %45, i32 -1)
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.62, %cond.true.61
  %cond66 = phi i32 [ -1, %cond.true.61 ], [ %call64, %cond.false.62 ]
  store i32 %cond66, i32* %rtn, align 4
  br label %if.end.70

if.else.67:                                       ; preds = %if.else.53
  %46 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win68 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %46, i32 0, i32 1
  %47 = load %struct._win_st*, %struct._win_st** %win68, align 8
  %48 = load i8*, i8** %str, align 8
  %call69 = call i32 @waddnstr(%struct._win_st* %47, i8* %48, i32 -1)
  store i32 %call69, i32* %rtn, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %cond.end.65
  br label %do.body

do.body:                                          ; preds = %if.end.70
  %49 = load %struct._object*, %struct._object** %bytesobj, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %51, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp71 = icmp ne i64 %dec, 0
  br i1 %cmp71, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %do.body
  br label %if.end.75

if.else.74:                                       ; preds = %do.body
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %54(%struct._object* %55)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.74, %if.then.73
  br label %do.end

do.end:                                           ; preds = %if.end.75
  br label %if.end.76

if.end.76:                                        ; preds = %do.end, %if.end.52
  %56 = load i32, i32* %use_attr, align 4
  %cmp77 = icmp eq i32 %56, 1
  br i1 %cmp77, label %if.then.79, label %if.end.88

if.then.79:                                       ; preds = %if.end.76
  %57 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win80 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %57, i32 0, i32 1
  %58 = load %struct._win_st*, %struct._win_st** %win80, align 8
  %tobool81 = icmp ne %struct._win_st* %58, null
  br i1 %tobool81, label %cond.true.82, label %cond.false.85

cond.true.82:                                     ; preds = %if.then.79
  %59 = load i64, i64* %attr_old, align 8
  %60 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win83 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %60, i32 0, i32 1
  %61 = load %struct._win_st*, %struct._win_st** %win83, align 8
  %_attrs84 = getelementptr inbounds %struct._win_st, %struct._win_st* %61, i32 0, i32 7
  store i64 %59, i64* %_attrs84, align 8
  br label %cond.end.86

cond.false.85:                                    ; preds = %if.then.79
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.85, %cond.true.82
  %cond87 = phi i32 [ 0, %cond.true.82 ], [ -1, %cond.false.85 ]
  br label %if.end.88

if.end.88:                                        ; preds = %cond.end.86, %if.end.76
  %62 = load i32, i32* %rtn, align 4
  %63 = load i8*, i8** %funcname, align 8
  %call89 = call %struct._object* @PyCursesCheckERR(i32 %62, i8* %63)
  store %struct._object* %call89, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.88, %if.then.18, %sw.default, %if.then.15, %if.then.10, %if.then.5, %if.then
  %64 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %64
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_AttrOff(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %lattr = alloca i64, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.165, i32 0, i32 0), i64* %lattr)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %3 = load i64, i64* %lattr, align 8
  %call1 = call i32 @wattr_off(%struct._win_st* %2, i64 %3, i8* null)
  %call2 = call %struct._object* @PyCursesCheckERR(i32 %call1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_AttrOn(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %lattr = alloca i64, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.165, i32 0, i32 0), i64* %lattr)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %3 = load i64, i64* %lattr, align 8
  %call1 = call i32 @wattr_on(%struct._win_st* %2, i64 %3, i8* null)
  %call2 = call %struct._object* @PyCursesCheckERR(i32 %call1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_AttrSet(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %lattr = alloca i64, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.165, i32 0, i32 0), i64* %lattr)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %tobool1 = icmp ne %struct._win_st* %2, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %3 = load i64, i64* %lattr, align 8
  %4 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win2 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %4, i32 0, i32 1
  %5 = load %struct._win_st*, %struct._win_st** %win2, align 8
  %_attrs = getelementptr inbounds %struct._win_st, %struct._win_st* %5, i32 0, i32 7
  store i64 %3, i64* %_attrs, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ -1, %cond.false ]
  %call3 = call %struct._object* @PyCursesCheckERR(i32 %cond, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0))
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_Bkgd(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %temp = alloca %struct._object*, align 8
  %bkgd = alloca i64, align 8
  %attr = alloca i64, align 8
  %lattr = alloca i64, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 0, i64* %attr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.166, i32 0, i32 0), %struct._object** %temp)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call3 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.167, i32 0, i32 0), %struct._object** %temp, i64* %lattr)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.2
  %3 = load i64, i64* %lattr, align 8
  store i64 %3, i64* %attr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.168, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.6, %if.end
  %5 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %6 = load %struct._object*, %struct._object** %temp, align 8
  %call7 = call i32 @PyCurses_ConvertToChtype(%struct.PyCursesWindowObject* %5, %struct._object* %6, i64* %bkgd)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %sw.epilog
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %sw.epilog
  %7 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %7, i32 0, i32 1
  %8 = load %struct._win_st*, %struct._win_st** %win, align 8
  %9 = load i64, i64* %bkgd, align 8
  %10 = load i64, i64* %attr, align 8
  %or = or i64 %9, %10
  %call11 = call i32 @wbkgd(%struct._win_st* %8, i64 %or)
  %call12 = call %struct._object* @PyCursesCheckERR(i32 %call11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0))
  store %struct._object* %call12, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %sw.default, %if.then.5, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_ChgAt(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %rtn = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %num = alloca i32, align 4
  %color = alloca i16, align 2
  %attr = alloca i64, align 8
  %lattr = alloca i64, align 8
  %use_xy = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 -1, i32* %num, align 4
  store i64 0, i64* %attr, align 8
  store i32 0, i32* %use_xy, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb.2
    i64 3, label %sw.bb.7
    i64 4, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.165, i32 0, i32 0), i64* %lattr)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %2 = load i64, i64* %lattr, align 8
  store i64 %2, i64* %attr, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call3 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.169, i32 0, i32 0), i32* %num, i64* %lattr)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.2
  %4 = load i64, i64* %lattr, align 8
  store i64 %4, i64* %attr, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %call8 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.170, i32 0, i32 0), i32* %y, i32* %x, i64* %lattr)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %sw.bb.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %sw.bb.7
  %6 = load i64, i64* %lattr, align 8
  store i64 %6, i64* %attr, align 8
  store i32 1, i32* %use_xy, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %7 = load %struct._object*, %struct._object** %args.addr, align 8
  %call13 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.171, i32 0, i32 0), i32* %y, i32* %x, i32* %num, i64* %lattr)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %sw.bb.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %sw.bb.12
  %8 = load i64, i64* %lattr, align 8
  store i64 %8, i64* %attr, align 8
  store i32 1, i32* %use_xy, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.172, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.16, %if.end.11, %if.end.6, %if.end
  %10 = load i64, i64* %attr, align 8
  %shr = lshr i64 %10, 8
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i16
  store i16 %conv, i16* %color, align 2
  %11 = load i64, i64* %attr, align 8
  %12 = load i16, i16* %color, align 2
  %conv17 = sext i16 %12 to i32
  %shl = shl i32 %conv17, 8
  %conv18 = sext i32 %shl to i64
  %sub = sub i64 %11, %conv18
  store i64 %sub, i64* %attr, align 8
  %13 = load i32, i32* %use_xy, align 4
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %sw.epilog
  %14 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %14, i32 0, i32 1
  %15 = load %struct._win_st*, %struct._win_st** %win, align 8
  %16 = load i32, i32* %y, align 4
  %17 = load i32, i32* %x, align 4
  %call21 = call i32 @wmove(%struct._win_st* %15, i32 %16, i32 %17)
  %cmp22 = icmp eq i32 %call21, -1
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.20
  br label %cond.end

cond.false:                                       ; preds = %if.then.20
  %18 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win24 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %18, i32 0, i32 1
  %19 = load %struct._win_st*, %struct._win_st** %win24, align 8
  %20 = load i32, i32* %num, align 4
  %21 = load i64, i64* %attr, align 8
  %22 = load i16, i16* %color, align 2
  %call25 = call i32 @wchgat(%struct._win_st* %19, i32 %20, i64 %21, i16 signext %22, i8* null)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %call25, %cond.false ]
  store i32 %cond, i32* %rtn, align 4
  %23 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win26 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %23, i32 0, i32 1
  %24 = load %struct._win_st*, %struct._win_st** %win26, align 8
  %25 = load i32, i32* %y, align 4
  %call27 = call i32 @wtouchln(%struct._win_st* %24, i32 %25, i32 1, i32 1)
  br label %if.end.48

if.else:                                          ; preds = %sw.epilog
  %26 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win28 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %26, i32 0, i32 1
  %27 = load %struct._win_st*, %struct._win_st** %win28, align 8
  %tobool29 = icmp ne %struct._win_st* %27, null
  br i1 %tobool29, label %cond.true.30, label %cond.false.33

cond.true.30:                                     ; preds = %if.else
  %28 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win31 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %28, i32 0, i32 1
  %29 = load %struct._win_st*, %struct._win_st** %win31, align 8
  %_cury = getelementptr inbounds %struct._win_st, %struct._win_st* %29, i32 0, i32 0
  %30 = load i16, i16* %_cury, align 2
  %conv32 = sext i16 %30 to i32
  br label %cond.end.34

cond.false.33:                                    ; preds = %if.else
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.30
  %cond35 = phi i32 [ %conv32, %cond.true.30 ], [ -1, %cond.false.33 ]
  store i32 %cond35, i32* %y, align 4
  %31 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win36 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %31, i32 0, i32 1
  %32 = load %struct._win_st*, %struct._win_st** %win36, align 8
  %tobool37 = icmp ne %struct._win_st* %32, null
  br i1 %tobool37, label %cond.true.38, label %cond.false.41

cond.true.38:                                     ; preds = %cond.end.34
  %33 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win39 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %33, i32 0, i32 1
  %34 = load %struct._win_st*, %struct._win_st** %win39, align 8
  %_curx = getelementptr inbounds %struct._win_st, %struct._win_st* %34, i32 0, i32 1
  %35 = load i16, i16* %_curx, align 2
  %conv40 = sext i16 %35 to i32
  br label %cond.end.42

cond.false.41:                                    ; preds = %cond.end.34
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.38
  %cond43 = phi i32 [ %conv40, %cond.true.38 ], [ -1, %cond.false.41 ]
  store i32 %cond43, i32* %x, align 4
  %36 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win44 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %36, i32 0, i32 1
  %37 = load %struct._win_st*, %struct._win_st** %win44, align 8
  %38 = load i32, i32* %num, align 4
  %39 = load i64, i64* %attr, align 8
  %40 = load i16, i16* %color, align 2
  %call45 = call i32 @wchgat(%struct._win_st* %37, i32 %38, i64 %39, i16 signext %40, i8* null)
  store i32 %call45, i32* %rtn, align 4
  %41 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win46 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %41, i32 0, i32 1
  %42 = load %struct._win_st*, %struct._win_st** %win46, align 8
  %43 = load i32, i32* %y, align 4
  %call47 = call i32 @wtouchln(%struct._win_st* %42, i32 %43, i32 1, i32 1)
  br label %if.end.48

if.end.48:                                        ; preds = %cond.end.42, %cond.end
  %44 = load i32, i32* %rtn, align 4
  %call49 = call %struct._object* @PyCursesCheckERR(i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0))
  store %struct._object* %call49, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.48, %sw.default, %if.then.15, %if.then.10, %if.then.5, %if.then
  %45 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %45
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_BkgdSet(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %temp = alloca %struct._object*, align 8
  %bkgd = alloca i64, align 8
  %attr = alloca i64, align 8
  %lattr = alloca i64, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 0, i64* %attr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.166, i32 0, i32 0), %struct._object** %temp)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call3 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.167, i32 0, i32 0), %struct._object** %temp, i64* %lattr)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.2
  %3 = load i64, i64* %lattr, align 8
  store i64 %3, i64* %attr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.173, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.6, %if.end
  %5 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %6 = load %struct._object*, %struct._object** %temp, align 8
  %call7 = call i32 @PyCurses_ConvertToChtype(%struct.PyCursesWindowObject* %5, %struct._object* %6, i64* %bkgd)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %sw.epilog
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %sw.epilog
  %7 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %7, i32 0, i32 1
  %8 = load %struct._win_st*, %struct._win_st** %win, align 8
  %9 = load i64, i64* %bkgd, align 8
  %10 = load i64, i64* %attr, align 8
  %or = or i64 %9, %10
  call void @wbkgdset(%struct._win_st* %8, i64 %or)
  %call11 = call %struct._object* @PyCursesCheckERR(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0))
  store %struct._object* %call11, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %sw.default, %if.then.5, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_Border(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %temp = alloca [8 x %struct._object*], align 16
  %ch = alloca [8 x i64], align 16
  %i = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr [8 x %struct._object*], [8 x %struct._object*]* %temp, i32 0, i64 %idxprom
  store %struct._object* null, %struct._object** %arrayidx, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr [8 x i64], [8 x i64]* %ch, i32 0, i64 %idxprom1
  store i64 0, i64* %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %arrayidx3 = getelementptr [8 x %struct._object*], [8 x %struct._object*]* %temp, i32 0, i64 0
  %arrayidx4 = getelementptr [8 x %struct._object*], [8 x %struct._object*]* %temp, i32 0, i64 1
  %arrayidx5 = getelementptr [8 x %struct._object*], [8 x %struct._object*]* %temp, i32 0, i64 2
  %arrayidx6 = getelementptr [8 x %struct._object*], [8 x %struct._object*]* %temp, i32 0, i64 3
  %arrayidx7 = getelementptr [8 x %struct._object*], [8 x %struct._object*]* %temp, i32 0, i64 4
  %arrayidx8 = getelementptr [8 x %struct._object*], [8 x %struct._object*]* %temp, i32 0, i64 5
  %arrayidx9 = getelementptr [8 x %struct._object*], [8 x %struct._object*]* %temp, i32 0, i64 6
  %arrayidx10 = getelementptr [8 x %struct._object*], [8 x %struct._object*]* %temp, i32 0, i64 7
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.174, i32 0, i32 0), %struct._object** %arrayidx3, %struct._object** %arrayidx4, %struct._object** %arrayidx5, %struct._object** %arrayidx6, %struct._object** %arrayidx7, %struct._object** %arrayidx8, %struct._object** %arrayidx9, %struct._object** %arrayidx10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.25, %if.end
  %5 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %5, 8
  br i1 %cmp12, label %for.body.13, label %for.end.27

for.body.13:                                      ; preds = %for.cond.11
  %6 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %6 to i64
  %arrayidx15 = getelementptr [8 x %struct._object*], [8 x %struct._object*]* %temp, i32 0, i64 %idxprom14
  %7 = load %struct._object*, %struct._object** %arrayidx15, align 8
  %cmp16 = icmp ne %struct._object* %7, null
  br i1 %cmp16, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %for.body.13
  %8 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %9 to i64
  %arrayidx18 = getelementptr [8 x %struct._object*], [8 x %struct._object*]* %temp, i32 0, i64 %idxprom17
  %10 = load %struct._object*, %struct._object** %arrayidx18, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %11 to i64
  %arrayidx20 = getelementptr [8 x i64], [8 x i64]* %ch, i32 0, i64 %idxprom19
  %call21 = call i32 @PyCurses_ConvertToChtype(%struct.PyCursesWindowObject* %8, %struct._object* %10, i64* %arrayidx20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %land.lhs.true, %for.body.13
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %12 = load i32, i32* %i, align 4
  %inc26 = add i32 %12, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond.11

for.end.27:                                       ; preds = %for.cond.11
  %13 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %13, i32 0, i32 1
  %14 = load %struct._win_st*, %struct._win_st** %win, align 8
  %arrayidx28 = getelementptr [8 x i64], [8 x i64]* %ch, i32 0, i64 0
  %15 = load i64, i64* %arrayidx28, align 8
  %arrayidx29 = getelementptr [8 x i64], [8 x i64]* %ch, i32 0, i64 1
  %16 = load i64, i64* %arrayidx29, align 8
  %arrayidx30 = getelementptr [8 x i64], [8 x i64]* %ch, i32 0, i64 2
  %17 = load i64, i64* %arrayidx30, align 8
  %arrayidx31 = getelementptr [8 x i64], [8 x i64]* %ch, i32 0, i64 3
  %18 = load i64, i64* %arrayidx31, align 8
  %arrayidx32 = getelementptr [8 x i64], [8 x i64]* %ch, i32 0, i64 4
  %19 = load i64, i64* %arrayidx32, align 8
  %arrayidx33 = getelementptr [8 x i64], [8 x i64]* %ch, i32 0, i64 5
  %20 = load i64, i64* %arrayidx33, align 8
  %arrayidx34 = getelementptr [8 x i64], [8 x i64]* %ch, i32 0, i64 6
  %21 = load i64, i64* %arrayidx34, align 8
  %arrayidx35 = getelementptr [8 x i64], [8 x i64]* %ch, i32 0, i64 7
  %22 = load i64, i64* %arrayidx35, align 8
  %call36 = call i32 @wborder(%struct._win_st* %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, i64 %22)
  %23 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc37 = add i64 %23, 1
  store i64 %inc37, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end.27, %if.then.23, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_Box(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ch1 = alloca i64, align 8
  %ch2 = alloca i64, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 0, i64* %ch1, align 8
  store i64 0, i64* %ch2, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.175, i32 0, i32 0), i64* %ch1, i64* %ch2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.default
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb
  %2 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %2, i32 0, i32 1
  %3 = load %struct._win_st*, %struct._win_st** %win, align 8
  %4 = load i64, i64* %ch1, align 8
  %5 = load i64, i64* %ch1, align 8
  %6 = load i64, i64* %ch2, align 8
  %7 = load i64, i64* %ch2, align 8
  %call2 = call i32 @wborder(%struct._win_st* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 0, i64 0, i64 0, i64 0)
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_wclear(%struct.PyCursesWindowObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  %call = call i32 @wclear(%struct._win_st* %1)
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_clearok(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %arg1 = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.176, i32 0, i32 0), i32* %arg1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %3 = load i32, i32* %arg1, align 4
  %tobool1 = icmp ne i32 %3, 0
  %call2 = call i32 @clearok(%struct._win_st* %2, i1 zeroext %tobool1)
  %call3 = call %struct._object* @PyCursesCheckERR(i32 %call2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0))
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_wclrtobot(%struct.PyCursesWindowObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  %call = call i32 @wclrtobot(%struct._win_st* %1)
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_wclrtoeol(%struct.PyCursesWindowObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  %call = call i32 @wclrtoeol(%struct._win_st* %1)
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_wcursyncup(%struct.PyCursesWindowObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  call void @wcursyncup(%struct._win_st* %1)
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_DelCh(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %rtn = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 0, label %sw.bb
    i64 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %call1 = call i32 @wdelch(%struct._win_st* %2)
  store i32 %call1, i32* %rtn, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call3 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.177, i32 0, i32 0), i32* %y, i32* %x)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb.2
  %4 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win4 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %4, i32 0, i32 1
  %5 = load %struct._win_st*, %struct._win_st** %win4, align 8
  %6 = load i32, i32* %y, align 4
  %7 = load i32, i32* %x, align 4
  %call5 = call i32 @wmove(%struct._win_st* %5, i32 %6, i32 %7)
  %cmp = icmp eq i32 %call5, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %8 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win6 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %8, i32 0, i32 1
  %9 = load %struct._win_st*, %struct._win_st** %win6, align 8
  %call7 = call i32 @wdelch(%struct._win_st* %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %call7, %cond.false ]
  store i32 %cond, i32* %rtn, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.178, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %cond.end, %sw.bb
  %11 = load i32, i32* %rtn, align 4
  %call8 = call %struct._object* @PyCursesCheckERR(i32 %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.179, i32 0, i32 0))
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_wdeleteln(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  %call = call i32 @winsdelln(%struct._win_st* %1, i32 -1)
  %call1 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.180, i32 0, i32 0))
  ret %struct._object* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_DerWin(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %win = alloca %struct._win_st*, align 8
  %nlines = alloca i32, align 4
  %ncols = alloca i32, align 4
  %begin_y = alloca i32, align 4
  %begin_x = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %nlines, align 4
  store i32 0, i32* %ncols, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 2, label %sw.bb
    i64 4, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.181, i32 0, i32 0), i32* %begin_y, i32* %begin_x)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call3 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.182, i32 0, i32 0), i32* %nlines, i32* %ncols, i32* %begin_y, i32* %begin_x)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.183, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.6, %if.end
  %4 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win7 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %4, i32 0, i32 1
  %5 = load %struct._win_st*, %struct._win_st** %win7, align 8
  %6 = load i32, i32* %nlines, align 4
  %7 = load i32, i32* %ncols, align 4
  %8 = load i32, i32* %begin_y, align 4
  %9 = load i32, i32* %begin_x, align 4
  %call8 = call %struct._win_st* @derwin(%struct._win_st* %5, i32 %6, i32 %7, i32 %8, i32 %9)
  store %struct._win_st* %call8, %struct._win_st** %win, align 8
  %10 = load %struct._win_st*, %struct._win_st** %win, align 8
  %cmp = icmp eq %struct._win_st* %10, null
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %sw.epilog
  %11 = load %struct._object*, %struct._object** @PyCursesError, align 8
  %12 = load i8*, i8** @catchall_NULL, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* %12)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %sw.epilog
  %13 = load %struct._win_st*, %struct._win_st** %win, align 8
  %call11 = call %struct._object* @PyCursesWindow_New(%struct._win_st* %13, i8* null)
  store %struct._object* %call11, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %sw.default, %if.then.5, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_EchoChar(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %temp = alloca %struct._object*, align 8
  %ch = alloca i64, align 8
  %attr = alloca i64, align 8
  %lattr = alloca i64, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 0, i64* %attr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.166, i32 0, i32 0), %struct._object** %temp)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call3 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.167, i32 0, i32 0), %struct._object** %temp, i64* %lattr)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.2
  %3 = load i64, i64* %lattr, align 8
  store i64 %3, i64* %attr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.186, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.6, %if.end
  %5 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %6 = load %struct._object*, %struct._object** %temp, align 8
  %call7 = call i32 @PyCurses_ConvertToChtype(%struct.PyCursesWindowObject* %5, %struct._object* %6, i64* %ch)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %sw.epilog
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %sw.epilog
  %7 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %7, i32 0, i32 1
  %8 = load %struct._win_st*, %struct._win_st** %win, align 8
  %_flags = getelementptr inbounds %struct._win_st, %struct._win_st* %8, i32 0, i32 6
  %9 = load i16, i16* %_flags, align 2
  %conv = sext i16 %9 to i32
  %and = and i32 %conv, 16
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.10
  %10 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win13 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %10, i32 0, i32 1
  %11 = load %struct._win_st*, %struct._win_st** %win13, align 8
  %12 = load i64, i64* %ch, align 8
  %13 = load i64, i64* %attr, align 8
  %or = or i64 %12, %13
  %call14 = call i32 @pechochar(%struct._win_st* %11, i64 %or)
  %call15 = call %struct._object* @PyCursesCheckERR(i32 %call14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.85, i32 0, i32 0))
  store %struct._object* %call15, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.10
  %14 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win16 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %14, i32 0, i32 1
  %15 = load %struct._win_st*, %struct._win_st** %win16, align 8
  %16 = load i64, i64* %ch, align 8
  %17 = load i64, i64* %attr, align 8
  %or17 = or i64 %16, %17
  %call18 = call i32 @wechochar(%struct._win_st* %15, i64 %or17)
  %call19 = call %struct._object* @PyCursesCheckERR(i32 %call18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.85, i32 0, i32 0))
  store %struct._object* %call19, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.12, %if.then.9, %sw.default, %if.then.5, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_Enclose(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.177, i32 0, i32 0), i32* %y, i32* %x)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %3 = load i32, i32* %y, align 4
  %4 = load i32, i32* %x, align 4
  %call1 = call zeroext i1 @wenclose(%struct._win_st* %2, i32 %3, i32 %4)
  %conv = zext i1 %call1 to i64
  %call2 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_werase(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  %call = call i32 @werase(%struct._win_st* %1)
  %call1 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.187, i32 0, i32 0))
  ret %struct._object* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_getbegyx(%struct.PyCursesWindowObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %arg1 = alloca i32, align 4
  %arg2 = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  %tobool = icmp ne %struct._win_st* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win1 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %2, i32 0, i32 1
  %3 = load %struct._win_st*, %struct._win_st** %win1, align 8
  %_begy = getelementptr inbounds %struct._win_st, %struct._win_st* %3, i32 0, i32 4
  %4 = load i16, i16* %_begy, align 2
  %conv = sext i16 %4 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %arg1, align 4
  %5 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win2 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %5, i32 0, i32 1
  %6 = load %struct._win_st*, %struct._win_st** %win2, align 8
  %tobool3 = icmp ne %struct._win_st* %6, null
  br i1 %tobool3, label %cond.true.4, label %cond.false.7

cond.true.4:                                      ; preds = %cond.end
  %7 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win5 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %7, i32 0, i32 1
  %8 = load %struct._win_st*, %struct._win_st** %win5, align 8
  %_begx = getelementptr inbounds %struct._win_st, %struct._win_st* %8, i32 0, i32 5
  %9 = load i16, i16* %_begx, align 2
  %conv6 = sext i16 %9 to i32
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.4
  %cond9 = phi i32 [ %conv6, %cond.true.4 ], [ -1, %cond.false.7 ]
  store i32 %cond9, i32* %arg2, align 4
  %10 = load i32, i32* %arg1, align 4
  %11 = load i32, i32* %arg2, align 4
  %call = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.188, i32 0, i32 0), i32 %10, i32 %11)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_GetBkgd(%struct.PyCursesWindowObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  %tobool = icmp ne %struct._win_st* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win1 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %2, i32 0, i32 1
  %3 = load %struct._win_st*, %struct._win_st** %win1, align 8
  %_bkgd = getelementptr inbounds %struct._win_st, %struct._win_st* %3, i32 0, i32 8
  %4 = load i64, i64* %_bkgd, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ 0, %cond.false ]
  %call = call %struct._object* @PyLong_FromLong(i64 %cond)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_GetCh(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %rtn = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %_save5 = alloca %struct._ts*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 0, label %sw.bb
    i64 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %call1 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call1, %struct._ts** %_save, align 8
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %call2 = call i32 @wgetch(%struct._win_st* %2)
  store i32 %call2, i32* %rtn, align 4
  %3 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %3)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.177, i32 0, i32 0), i32* %y, i32* %x)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb.3
  %call6 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call6, %struct._ts** %_save5, align 8
  %5 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win7 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %5, i32 0, i32 1
  %6 = load %struct._win_st*, %struct._win_st** %win7, align 8
  %7 = load i32, i32* %y, align 4
  %8 = load i32, i32* %x, align 4
  %call8 = call i32 @wmove(%struct._win_st* %6, i32 %7, i32 %8)
  %cmp = icmp eq i32 %call8, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %9 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win9 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %9, i32 0, i32 1
  %10 = load %struct._win_st*, %struct._win_st** %win9, align 8
  %call10 = call i32 @wgetch(%struct._win_st* %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %call10, %cond.false ]
  store i32 %cond, i32* %rtn, align 4
  %11 = load %struct._ts*, %struct._ts** %_save5, align 8
  call void @PyEval_RestoreThread(%struct._ts* %11)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.189, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %cond.end, %sw.bb
  %13 = load i32, i32* %rtn, align 4
  %conv = sext i32 %13 to i64
  %call11 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call11, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_GetKey(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %rtn = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %_save5 = alloca %struct._ts*, align 8
  %knp = alloca i8*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 0, label %sw.bb
    i64 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %call1 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call1, %struct._ts** %_save, align 8
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %call2 = call i32 @wgetch(%struct._win_st* %2)
  store i32 %call2, i32* %rtn, align 4
  %3 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %3)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.177, i32 0, i32 0), i32* %y, i32* %x)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb.3
  %call6 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call6, %struct._ts** %_save5, align 8
  %5 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win7 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %5, i32 0, i32 1
  %6 = load %struct._win_st*, %struct._win_st** %win7, align 8
  %7 = load i32, i32* %y, align 4
  %8 = load i32, i32* %x, align 4
  %call8 = call i32 @wmove(%struct._win_st* %6, i32 %7, i32 %8)
  %cmp = icmp eq i32 %call8, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %9 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win9 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %9, i32 0, i32 1
  %10 = load %struct._win_st*, %struct._win_st** %win9, align 8
  %call10 = call i32 @wgetch(%struct._win_st* %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %call10, %cond.false ]
  store i32 %cond, i32* %rtn, align 4
  %11 = load %struct._ts*, %struct._ts** %_save5, align 8
  call void @PyEval_RestoreThread(%struct._ts* %11)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.190, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %cond.end, %sw.bb
  %13 = load i32, i32* %rtn, align 4
  %cmp11 = icmp eq i32 %13, -1
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %sw.epilog
  %call13 = call i32 @PyErr_CheckSignals()
  %call14 = call %struct._object* @PyErr_Occurred()
  %tobool15 = icmp ne %struct._object* %call14, null
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.then.12
  %14 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.191, i32 0, i32 0))
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %sw.epilog
  %15 = load i32, i32* %rtn, align 4
  %cmp18 = icmp sle i32 %15, 255
  br i1 %cmp18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.else
  %16 = load i32, i32* %rtn, align 4
  %call20 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.192, i32 0, i32 0), i32 %16)
  store %struct._object* %call20, %struct._object** %retval
  br label %return

if.else.21:                                       ; preds = %if.else
  %17 = load i32, i32* %rtn, align 4
  %call22 = call i8* @keyname(i32 %17)
  store i8* %call22, i8** %knp, align 8
  %18 = load i8*, i8** %knp, align 8
  %cmp23 = icmp eq i8* %18, null
  br i1 %cmp23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %if.else.21
  br label %cond.end.26

cond.false.25:                                    ; preds = %if.else.21
  %19 = load i8*, i8** %knp, align 8
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.24
  %cond27 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.193, i32 0, i32 0), %cond.true.24 ], [ %19, %cond.false.25 ]
  %call28 = call %struct._object* @PyUnicode_FromString(i8* %cond27)
  store %struct._object* %call28, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end.26, %if.then.19, %if.end.17, %sw.default, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_Get_WCh(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %ct = alloca i32, align 4
  %rtn = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %_save5 = alloca %struct._ts*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 0, label %sw.bb
    i64 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %call1 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call1, %struct._ts** %_save, align 8
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %call2 = call i32 @wget_wch(%struct._win_st* %2, i32* %rtn)
  store i32 %call2, i32* %ct, align 4
  %3 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %3)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.177, i32 0, i32 0), i32* %y, i32* %x)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb.3
  %call6 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call6, %struct._ts** %_save5, align 8
  %5 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win7 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %5, i32 0, i32 1
  %6 = load %struct._win_st*, %struct._win_st** %win7, align 8
  %7 = load i32, i32* %y, align 4
  %8 = load i32, i32* %x, align 4
  %call8 = call i32 @wmove(%struct._win_st* %6, i32 %7, i32 %8)
  %cmp = icmp eq i32 %call8, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %9 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win9 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %9, i32 0, i32 1
  %10 = load %struct._win_st*, %struct._win_st** %win9, align 8
  %call10 = call i32 @wget_wch(%struct._win_st* %10, i32* %rtn)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %call10, %cond.false ]
  store i32 %cond, i32* %ct, align 4
  %11 = load %struct._ts*, %struct._ts** %_save5, align 8
  call void @PyEval_RestoreThread(%struct._ts* %11)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.194, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %cond.end, %sw.bb
  %13 = load i32, i32* %ct, align 4
  %cmp11 = icmp eq i32 %13, -1
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %sw.epilog
  %call13 = call i32 @PyErr_CheckSignals()
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %14 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.191, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %sw.epilog
  %15 = load i32, i32* %ct, align 4
  %cmp18 = icmp eq i32 %15, 256
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.17
  %16 = load i32, i32* %rtn, align 4
  %conv = zext i32 %16 to i64
  %call20 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call20, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.17
  %17 = load i32, i32* %rtn, align 4
  %call21 = call %struct._object* @PyUnicode_FromOrdinal(i32 %17)
  store %struct._object* %call21, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.19, %if.end.16, %if.then.15, %sw.default, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_getmaxyx(%struct.PyCursesWindowObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %arg1 = alloca i32, align 4
  %arg2 = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  %tobool = icmp ne %struct._win_st* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win1 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %2, i32 0, i32 1
  %3 = load %struct._win_st*, %struct._win_st** %win1, align 8
  %_maxy = getelementptr inbounds %struct._win_st, %struct._win_st* %3, i32 0, i32 2
  %4 = load i16, i16* %_maxy, align 2
  %conv = sext i16 %4 to i32
  %add = add i32 %conv, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %arg1, align 4
  %5 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win2 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %5, i32 0, i32 1
  %6 = load %struct._win_st*, %struct._win_st** %win2, align 8
  %tobool3 = icmp ne %struct._win_st* %6, null
  br i1 %tobool3, label %cond.true.4, label %cond.false.8

cond.true.4:                                      ; preds = %cond.end
  %7 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win5 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %7, i32 0, i32 1
  %8 = load %struct._win_st*, %struct._win_st** %win5, align 8
  %_maxx = getelementptr inbounds %struct._win_st, %struct._win_st* %8, i32 0, i32 3
  %9 = load i16, i16* %_maxx, align 2
  %conv6 = sext i16 %9 to i32
  %add7 = add i32 %conv6, 1
  br label %cond.end.9

cond.false.8:                                     ; preds = %cond.end
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.4
  %cond10 = phi i32 [ %add7, %cond.true.4 ], [ -1, %cond.false.8 ]
  store i32 %cond10, i32* %arg2, align 4
  %10 = load i32, i32* %arg1, align 4
  %11 = load i32, i32* %arg2, align 4
  %call = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.188, i32 0, i32 0), i32 %10, i32 %11)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_getparyx(%struct.PyCursesWindowObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %arg1 = alloca i32, align 4
  %arg2 = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  %tobool = icmp ne %struct._win_st* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win1 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %2, i32 0, i32 1
  %3 = load %struct._win_st*, %struct._win_st** %win1, align 8
  %_pary = getelementptr inbounds %struct._win_st, %struct._win_st* %3, i32 0, i32 23
  %4 = load i32, i32* %_pary, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %arg1, align 4
  %5 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win2 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %5, i32 0, i32 1
  %6 = load %struct._win_st*, %struct._win_st** %win2, align 8
  %tobool3 = icmp ne %struct._win_st* %6, null
  br i1 %tobool3, label %cond.true.4, label %cond.false.6

cond.true.4:                                      ; preds = %cond.end
  %7 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win5 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %7, i32 0, i32 1
  %8 = load %struct._win_st*, %struct._win_st** %win5, align 8
  %_parx = getelementptr inbounds %struct._win_st, %struct._win_st* %8, i32 0, i32 22
  %9 = load i32, i32* %_parx, align 4
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.end
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.4
  %cond8 = phi i32 [ %9, %cond.true.4 ], [ -1, %cond.false.6 ]
  store i32 %cond8, i32* %arg2, align 4
  %10 = load i32, i32* %arg1, align 4
  %11 = load i32, i32* %arg2, align 4
  %call = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.188, i32 0, i32 0), i32 %10, i32 %11)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_GetStr(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %n = alloca i32, align 4
  %rtn = alloca [1024 x i8], align 16
  %rtn2 = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %_save5 = alloca %struct._ts*, align 8
  %_save15 = alloca %struct._ts*, align 8
  %_save32 = alloca %struct._ts*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.3
    i64 2, label %sw.bb.10
    i64 3, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %entry
  %call1 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call1, %struct._ts** %_save, align 8
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %rtn, i32 0, i32 0
  %call2 = call i32 @wgetnstr(%struct._win_st* %2, i8* %arraydecay, i32 1023)
  store i32 %call2, i32* %rtn2, align 4
  %3 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %3)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.195, i32 0, i32 0), i32* %n)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb.3
  %call6 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call6, %struct._ts** %_save5, align 8
  %5 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win7 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %5, i32 0, i32 1
  %6 = load %struct._win_st*, %struct._win_st** %win7, align 8
  %arraydecay8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %rtn, i32 0, i32 0
  %7 = load i32, i32* %n, align 4
  %cmp = icmp sgt i32 %7, 1023
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %8 = load i32, i32* %n, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1023, %cond.true ], [ %8, %cond.false ]
  %call9 = call i32 @wgetnstr(%struct._win_st* %6, i8* %arraydecay8, i32 %cond)
  store i32 %call9, i32* %rtn2, align 4
  %9 = load %struct._ts*, %struct._ts** %_save5, align 8
  call void @PyEval_RestoreThread(%struct._ts* %9)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %10 = load %struct._object*, %struct._object** %args.addr, align 8
  %call11 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.177, i32 0, i32 0), i32* %y, i32* %x)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %sw.bb.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %sw.bb.10
  %call16 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call16, %struct._ts** %_save15, align 8
  %11 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win17 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %11, i32 0, i32 1
  %12 = load %struct._win_st*, %struct._win_st** %win17, align 8
  %13 = load i32, i32* %y, align 4
  %14 = load i32, i32* %x, align 4
  %call18 = call i32 @wmove(%struct._win_st* %12, i32 %13, i32 %14)
  %cmp19 = icmp eq i32 %call18, -1
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %if.end.14
  br label %cond.end.25

cond.false.21:                                    ; preds = %if.end.14
  %15 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win22 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %15, i32 0, i32 1
  %16 = load %struct._win_st*, %struct._win_st** %win22, align 8
  %arraydecay23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %rtn, i32 0, i32 0
  %call24 = call i32 @wgetnstr(%struct._win_st* %16, i8* %arraydecay23, i32 1023)
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.21, %cond.true.20
  %cond26 = phi i32 [ -1, %cond.true.20 ], [ %call24, %cond.false.21 ]
  store i32 %cond26, i32* %rtn2, align 4
  %17 = load %struct._ts*, %struct._ts** %_save15, align 8
  call void @PyEval_RestoreThread(%struct._ts* %17)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  %18 = load %struct._object*, %struct._object** %args.addr, align 8
  %call28 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i32 0, i32 0), i32* %y, i32* %x, i32* %n)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %sw.bb.27
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %sw.bb.27
  %call33 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call33, %struct._ts** %_save32, align 8
  %19 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win34 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %19, i32 0, i32 1
  %20 = load %struct._win_st*, %struct._win_st** %win34, align 8
  %21 = load i32, i32* %y, align 4
  %22 = load i32, i32* %x, align 4
  %call35 = call i32 @wmove(%struct._win_st* %20, i32 %21, i32 %22)
  %cmp36 = icmp eq i32 %call35, -1
  br i1 %cmp36, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %if.end.31
  br label %cond.end.47

cond.false.38:                                    ; preds = %if.end.31
  %23 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win39 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %23, i32 0, i32 1
  %24 = load %struct._win_st*, %struct._win_st** %win39, align 8
  %arraydecay40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %rtn, i32 0, i32 0
  %25 = load i32, i32* %n, align 4
  %cmp41 = icmp sgt i32 %25, 1023
  br i1 %cmp41, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.false.38
  br label %cond.end.44

cond.false.43:                                    ; preds = %cond.false.38
  %26 = load i32, i32* %n, align 4
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.42
  %cond45 = phi i32 [ 1023, %cond.true.42 ], [ %26, %cond.false.43 ]
  %call46 = call i32 @wgetnstr(%struct._win_st* %24, i8* %arraydecay40, i32 %cond45)
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end.44, %cond.true.37
  %cond48 = phi i32 [ -1, %cond.true.37 ], [ %call46, %cond.end.44 ]
  store i32 %cond48, i32* %rtn2, align 4
  %27 = load %struct._ts*, %struct._ts** %_save32, align 8
  call void @PyEval_RestoreThread(%struct._ts* %27)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %28 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.197, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %cond.end.47, %cond.end.25, %cond.end, %sw.bb
  %29 = load i32, i32* %rtn2, align 4
  %cmp49 = icmp eq i32 %29, -1
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %sw.epilog
  %arrayidx = getelementptr [1024 x i8], [1024 x i8]* %rtn, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %sw.epilog
  %arraydecay52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %rtn, i32 0, i32 0
  %call53 = call %struct._object* @PyBytes_FromString(i8* %arraydecay52)
  store %struct._object* %call53, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.51, %sw.default, %if.then.30, %if.then.13, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_getyx(%struct.PyCursesWindowObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %arg1 = alloca i32, align 4
  %arg2 = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  %tobool = icmp ne %struct._win_st* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win1 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %2, i32 0, i32 1
  %3 = load %struct._win_st*, %struct._win_st** %win1, align 8
  %_cury = getelementptr inbounds %struct._win_st, %struct._win_st* %3, i32 0, i32 0
  %4 = load i16, i16* %_cury, align 2
  %conv = sext i16 %4 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %arg1, align 4
  %5 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win2 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %5, i32 0, i32 1
  %6 = load %struct._win_st*, %struct._win_st** %win2, align 8
  %tobool3 = icmp ne %struct._win_st* %6, null
  br i1 %tobool3, label %cond.true.4, label %cond.false.7

cond.true.4:                                      ; preds = %cond.end
  %7 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win5 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %7, i32 0, i32 1
  %8 = load %struct._win_st*, %struct._win_st** %win5, align 8
  %_curx = getelementptr inbounds %struct._win_st, %struct._win_st* %8, i32 0, i32 1
  %9 = load i16, i16* %_curx, align 2
  %conv6 = sext i16 %9 to i32
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.4
  %cond9 = phi i32 [ %conv6, %cond.true.4 ], [ -1, %cond.false.7 ]
  store i32 %cond9, i32* %arg2, align 4
  %10 = load i32, i32* %arg1, align 4
  %11 = load i32, i32* %arg2, align 4
  %call = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.188, i32 0, i32 0), i32 %10, i32 %11)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_Hline(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %temp = alloca %struct._object*, align 8
  %ch = alloca i64, align 8
  %n = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %code = alloca i32, align 4
  %attr = alloca i64, align 8
  %lattr = alloca i64, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %code, align 4
  store i64 0, i64* %attr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 2, label %sw.bb
    i64 3, label %sw.bb.2
    i64 4, label %sw.bb.7
    i64 5, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.198, i32 0, i32 0), %struct._object** %temp, i32* %n)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call3 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.199, i32 0, i32 0), %struct._object** %temp, i32* %n, i64* %lattr)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.2
  %3 = load i64, i64* %lattr, align 8
  store i64 %3, i64* %attr, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call8 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.200, i32 0, i32 0), i32* %y, i32* %x, %struct._object** %temp, i32* %n)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %sw.bb.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %sw.bb.7
  %5 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %5, i32 0, i32 1
  %6 = load %struct._win_st*, %struct._win_st** %win, align 8
  %7 = load i32, i32* %y, align 4
  %8 = load i32, i32* %x, align 4
  %call12 = call i32 @wmove(%struct._win_st* %6, i32 %7, i32 %8)
  store i32 %call12, i32* %code, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %9 = load %struct._object*, %struct._object** %args.addr, align 8
  %call14 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.201, i32 0, i32 0), i32* %y, i32* %x, %struct._object** %temp, i32* %n, i64* %lattr)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %sw.bb.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %sw.bb.13
  %10 = load i64, i64* %lattr, align 8
  store i64 %10, i64* %attr, align 8
  %11 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win18 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %11, i32 0, i32 1
  %12 = load %struct._win_st*, %struct._win_st** %win18, align 8
  %13 = load i32, i32* %y, align 4
  %14 = load i32, i32* %x, align 4
  %call19 = call i32 @wmove(%struct._win_st* %12, i32 %13, i32 %14)
  store i32 %call19, i32* %code, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %15 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.202, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.17, %if.end.11, %if.end.6, %if.end
  %16 = load i32, i32* %code, align 4
  %cmp = icmp ne i32 %16, -1
  br i1 %cmp, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %sw.epilog
  %17 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %18 = load %struct._object*, %struct._object** %temp, align 8
  %call21 = call i32 @PyCurses_ConvertToChtype(%struct.PyCursesWindowObject* %17, %struct._object* %18, i64* %ch)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.then.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.then.20
  %19 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win25 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %19, i32 0, i32 1
  %20 = load %struct._win_st*, %struct._win_st** %win25, align 8
  %21 = load i64, i64* %ch, align 8
  %22 = load i64, i64* %attr, align 8
  %or = or i64 %21, %22
  %23 = load i32, i32* %n, align 4
  %call26 = call i32 @whline(%struct._win_st* %20, i64 %or, i32 %23)
  %call27 = call %struct._object* @PyCursesCheckERR(i32 %call26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0))
  store %struct._object* %call27, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %sw.epilog
  %24 = load i32, i32* %code, align 4
  %call28 = call %struct._object* @PyCursesCheckERR(i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.203, i32 0, i32 0))
  store %struct._object* %call28, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.end.24, %if.then.23, %sw.default, %if.then.16, %if.then.10, %if.then.5, %if.then
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_idcok(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %arg1 = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.176, i32 0, i32 0), i32* %arg1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %3 = load i32, i32* %arg1, align 4
  %tobool1 = icmp ne i32 %3, 0
  call void @idcok(%struct._win_st* %2, i1 zeroext %tobool1)
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_idlok(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %arg1 = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.176, i32 0, i32 0), i32* %arg1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %3 = load i32, i32* %arg1, align 4
  %tobool1 = icmp ne i32 %3, 0
  %call2 = call i32 @idlok(%struct._win_st* %2, i1 zeroext %tobool1)
  %call3 = call %struct._object* @PyCursesCheckERR(i32 %call2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0))
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_immedok(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %arg1 = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.176, i32 0, i32 0), i32* %arg1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %3 = load i32, i32* %arg1, align 4
  %tobool1 = icmp ne i32 %3, 0
  call void @immedok(%struct._win_st* %2, i1 zeroext %tobool1)
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_InCh(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %rtn = alloca i64, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 0, label %sw.bb
    i64 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %call1 = call i64 @winch(%struct._win_st* %2)
  store i64 %call1, i64* %rtn, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call3 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.177, i32 0, i32 0), i32* %y, i32* %x)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb.2
  %4 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win4 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %4, i32 0, i32 1
  %5 = load %struct._win_st*, %struct._win_st** %win4, align 8
  %6 = load i32, i32* %y, align 4
  %7 = load i32, i32* %x, align 4
  %call5 = call i32 @wmove(%struct._win_st* %5, i32 %6, i32 %7)
  %cmp = icmp eq i32 %call5, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %8 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win6 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %8, i32 0, i32 1
  %9 = load %struct._win_st*, %struct._win_st** %win6, align 8
  %call7 = call i64 @winch(%struct._win_st* %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %call7, %cond.false ]
  store i64 %cond, i64* %rtn, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.204, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %cond.end, %sw.bb
  %11 = load i64, i64* %rtn, align 8
  %call8 = call %struct._object* @PyLong_FromUnsignedLong(i64 %11)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_InsCh(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %rtn = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %use_xy = alloca i32, align 4
  %temp = alloca %struct._object*, align 8
  %ch = alloca i64, align 8
  %attr = alloca i64, align 8
  %lattr = alloca i64, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %use_xy, align 4
  store i64 0, i64* %ch, align 8
  store i64 0, i64* %attr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb.2
    i64 3, label %sw.bb.7
    i64 4, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.166, i32 0, i32 0), %struct._object** %temp)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call3 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.167, i32 0, i32 0), %struct._object** %temp, i64* %lattr)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.2
  %3 = load i64, i64* %lattr, align 8
  store i64 %3, i64* %attr, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call8 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.205, i32 0, i32 0), i32* %y, i32* %x, %struct._object** %temp)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %sw.bb.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %sw.bb.7
  store i32 1, i32* %use_xy, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %call13 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.206, i32 0, i32 0), i32* %y, i32* %x, %struct._object** %temp, i64* %lattr)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %sw.bb.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %sw.bb.12
  %6 = load i64, i64* %lattr, align 8
  store i64 %6, i64* %attr, align 8
  store i32 1, i32* %use_xy, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.207, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.16, %if.end.11, %if.end.6, %if.end
  %8 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %9 = load %struct._object*, %struct._object** %temp, align 8
  %call17 = call i32 @PyCurses_ConvertToChtype(%struct.PyCursesWindowObject* %8, %struct._object* %9, i64* %ch)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %sw.epilog
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %sw.epilog
  %10 = load i32, i32* %use_xy, align 4
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.20
  %11 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %11, i32 0, i32 1
  %12 = load %struct._win_st*, %struct._win_st** %win, align 8
  %13 = load i32, i32* %y, align 4
  %14 = load i32, i32* %x, align 4
  %call22 = call i32 @wmove(%struct._win_st* %12, i32 %13, i32 %14)
  %cmp23 = icmp eq i32 %call22, -1
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.21
  br label %cond.end

cond.false:                                       ; preds = %if.then.21
  %15 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win24 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %15, i32 0, i32 1
  %16 = load %struct._win_st*, %struct._win_st** %win24, align 8
  %17 = load i64, i64* %ch, align 8
  %18 = load i64, i64* %attr, align 8
  %or = or i64 %17, %18
  %call25 = call i32 @winsch(%struct._win_st* %16, i64 %or)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %call25, %cond.false ]
  store i32 %cond, i32* %rtn, align 4
  br label %if.end.29

if.else:                                          ; preds = %if.end.20
  %19 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win26 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %19, i32 0, i32 1
  %20 = load %struct._win_st*, %struct._win_st** %win26, align 8
  %21 = load i64, i64* %ch, align 8
  %22 = load i64, i64* %attr, align 8
  %or27 = or i64 %21, %22
  %call28 = call i32 @winsch(%struct._win_st* %20, i64 %or27)
  store i32 %call28, i32* %rtn, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %cond.end
  %23 = load i32, i32* %rtn, align 4
  %call30 = call %struct._object* @PyCursesCheckERR(i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i32 0, i32 0))
  store %struct._object* %call30, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.19, %sw.default, %if.then.15, %if.then.10, %if.then.5, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_winsdelln(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %arg1 = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.208, i32 0, i32 0), i32* %arg1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %3 = load i32, i32* %arg1, align 4
  %call1 = call i32 @winsdelln(%struct._win_st* %2, i32 %3)
  %call2 = call %struct._object* @PyCursesCheckERR(i32 %call1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.209, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_winsertln(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  %call = call i32 @winsdelln(%struct._win_st* %1, i32 1)
  %call1 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.210, i32 0, i32 0))
  ret %struct._object* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_InsNStr(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %rtn = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %n = alloca i32, align 4
  %strtype = alloca i32, align 4
  %strobj = alloca %struct._object*, align 8
  %bytesobj = alloca %struct._object*, align 8
  %wstr = alloca i32*, align 8
  %attr = alloca i64, align 8
  %attr_old = alloca i64, align 8
  %lattr = alloca i64, align 8
  %use_xy = alloca i32, align 4
  %use_attr = alloca i32, align 4
  %funcname = alloca i8*, align 8
  %str = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %bytesobj, align 8
  store i32* null, i32** %wstr, align 8
  store i64 0, i64* %attr, align 8
  store i64 0, i64* %attr_old, align 8
  store i32 0, i32* %use_xy, align 4
  store i32 0, i32* %use_attr, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 2, label %sw.bb
    i64 3, label %sw.bb.2
    i64 4, label %sw.bb.7
    i64 5, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.152, i32 0, i32 0), %struct._object** %strobj, i32* %n)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call3 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.153, i32 0, i32 0), %struct._object** %strobj, i32* %n, i64* %lattr)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.2
  %3 = load i64, i64* %lattr, align 8
  store i64 %3, i64* %attr, align 8
  store i32 1, i32* %use_attr, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call8 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.154, i32 0, i32 0), i32* %y, i32* %x, %struct._object** %strobj, i32* %n)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %sw.bb.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %sw.bb.7
  store i32 1, i32* %use_xy, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %call13 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.155, i32 0, i32 0), i32* %y, i32* %x, %struct._object** %strobj, i32* %n, i64* %lattr)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %sw.bb.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %sw.bb.12
  %6 = load i64, i64* %lattr, align 8
  store i64 %6, i64* %attr, align 8
  store i32 1, i32* %use_attr, align 4
  store i32 1, i32* %use_xy, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.211, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.16, %if.end.11, %if.end.6, %if.end
  %8 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %9 = load %struct._object*, %struct._object** %strobj, align 8
  %call17 = call i32 @PyCurses_ConvertToString(%struct.PyCursesWindowObject* %8, %struct._object* %9, %struct._object** %bytesobj, i32** %wstr)
  store i32 %call17, i32* %strtype, align 4
  %10 = load i32, i32* %strtype, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %sw.epilog
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %sw.epilog
  %11 = load i32, i32* %use_attr, align 4
  %cmp20 = icmp eq i32 %11, 1
  br i1 %cmp20, label %if.then.21, label %if.end.33

if.then.21:                                       ; preds = %if.end.19
  %12 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %12, i32 0, i32 1
  %13 = load %struct._win_st*, %struct._win_st** %win, align 8
  %tobool22 = icmp ne %struct._win_st* %13, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.21
  %14 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win23 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %14, i32 0, i32 1
  %15 = load %struct._win_st*, %struct._win_st** %win23, align 8
  %_attrs = getelementptr inbounds %struct._win_st, %struct._win_st* %15, i32 0, i32 7
  %16 = load i64, i64* %_attrs, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ 0, %cond.false ]
  %conv = trunc i64 %cond to i32
  %conv24 = sext i32 %conv to i64
  store i64 %conv24, i64* %attr_old, align 8
  %17 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win25 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %17, i32 0, i32 1
  %18 = load %struct._win_st*, %struct._win_st** %win25, align 8
  %tobool26 = icmp ne %struct._win_st* %18, null
  br i1 %tobool26, label %cond.true.27, label %cond.false.30

cond.true.27:                                     ; preds = %cond.end
  %19 = load i64, i64* %attr, align 8
  %20 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win28 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %20, i32 0, i32 1
  %21 = load %struct._win_st*, %struct._win_st** %win28, align 8
  %_attrs29 = getelementptr inbounds %struct._win_st, %struct._win_st* %21, i32 0, i32 7
  store i64 %19, i64* %_attrs29, align 8
  br label %cond.end.31

cond.false.30:                                    ; preds = %cond.end
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.27
  %cond32 = phi i32 [ 0, %cond.true.27 ], [ -1, %cond.false.30 ]
  br label %if.end.33

if.end.33:                                        ; preds = %cond.end.31, %if.end.19
  %22 = load i32, i32* %strtype, align 4
  %cmp34 = icmp eq i32 %22, 2
  br i1 %cmp34, label %if.then.36, label %if.else.53

if.then.36:                                       ; preds = %if.end.33
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.212, i32 0, i32 0), i8** %funcname, align 8
  %23 = load i32, i32* %use_xy, align 4
  %cmp37 = icmp eq i32 %23, 1
  br i1 %cmp37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %if.then.36
  %24 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win40 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %24, i32 0, i32 1
  %25 = load %struct._win_st*, %struct._win_st** %win40, align 8
  %26 = load i32, i32* %y, align 4
  %27 = load i32, i32* %x, align 4
  %call41 = call i32 @wmove(%struct._win_st* %25, i32 %26, i32 %27)
  %cmp42 = icmp eq i32 %call41, -1
  br i1 %cmp42, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %if.then.39
  br label %cond.end.48

cond.false.45:                                    ; preds = %if.then.39
  %28 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win46 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %28, i32 0, i32 1
  %29 = load %struct._win_st*, %struct._win_st** %win46, align 8
  %30 = load i32*, i32** %wstr, align 8
  %31 = load i32, i32* %n, align 4
  %call47 = call i32 @wins_nwstr(%struct._win_st* %29, i32* %30, i32 %31)
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.45, %cond.true.44
  %cond49 = phi i32 [ -1, %cond.true.44 ], [ %call47, %cond.false.45 ]
  store i32 %cond49, i32* %rtn, align 4
  br label %if.end.52

if.else:                                          ; preds = %if.then.36
  %32 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win50 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %32, i32 0, i32 1
  %33 = load %struct._win_st*, %struct._win_st** %win50, align 8
  %34 = load i32*, i32** %wstr, align 8
  %35 = load i32, i32* %n, align 4
  %call51 = call i32 @wins_nwstr(%struct._win_st* %33, i32* %34, i32 %35)
  store i32 %call51, i32* %rtn, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %cond.end.48
  %36 = load i32*, i32** %wstr, align 8
  %37 = bitcast i32* %36 to i8*
  call void @PyMem_Free(i8* %37)
  br label %if.end.76

if.else.53:                                       ; preds = %if.end.33
  %38 = load %struct._object*, %struct._object** %bytesobj, align 8
  %39 = bitcast %struct._object* %38 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %39, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %str, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), i8** %funcname, align 8
  %40 = load i32, i32* %use_xy, align 4
  %cmp54 = icmp eq i32 %40, 1
  br i1 %cmp54, label %if.then.56, label %if.else.67

if.then.56:                                       ; preds = %if.else.53
  %41 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win57 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %41, i32 0, i32 1
  %42 = load %struct._win_st*, %struct._win_st** %win57, align 8
  %43 = load i32, i32* %y, align 4
  %44 = load i32, i32* %x, align 4
  %call58 = call i32 @wmove(%struct._win_st* %42, i32 %43, i32 %44)
  %cmp59 = icmp eq i32 %call58, -1
  br i1 %cmp59, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %if.then.56
  br label %cond.end.65

cond.false.62:                                    ; preds = %if.then.56
  %45 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win63 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %45, i32 0, i32 1
  %46 = load %struct._win_st*, %struct._win_st** %win63, align 8
  %47 = load i8*, i8** %str, align 8
  %48 = load i32, i32* %n, align 4
  %call64 = call i32 @winsnstr(%struct._win_st* %46, i8* %47, i32 %48)
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.62, %cond.true.61
  %cond66 = phi i32 [ -1, %cond.true.61 ], [ %call64, %cond.false.62 ]
  store i32 %cond66, i32* %rtn, align 4
  br label %if.end.70

if.else.67:                                       ; preds = %if.else.53
  %49 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win68 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %49, i32 0, i32 1
  %50 = load %struct._win_st*, %struct._win_st** %win68, align 8
  %51 = load i8*, i8** %str, align 8
  %52 = load i32, i32* %n, align 4
  %call69 = call i32 @winsnstr(%struct._win_st* %50, i8* %51, i32 %52)
  store i32 %call69, i32* %rtn, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %cond.end.65
  br label %do.body

do.body:                                          ; preds = %if.end.70
  %53 = load %struct._object*, %struct._object** %bytesobj, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %55, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp71 = icmp ne i64 %dec, 0
  br i1 %cmp71, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %do.body
  br label %if.end.75

if.else.74:                                       ; preds = %do.body
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %58(%struct._object* %59)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.74, %if.then.73
  br label %do.end

do.end:                                           ; preds = %if.end.75
  br label %if.end.76

if.end.76:                                        ; preds = %do.end, %if.end.52
  %60 = load i32, i32* %use_attr, align 4
  %cmp77 = icmp eq i32 %60, 1
  br i1 %cmp77, label %if.then.79, label %if.end.88

if.then.79:                                       ; preds = %if.end.76
  %61 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win80 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %61, i32 0, i32 1
  %62 = load %struct._win_st*, %struct._win_st** %win80, align 8
  %tobool81 = icmp ne %struct._win_st* %62, null
  br i1 %tobool81, label %cond.true.82, label %cond.false.85

cond.true.82:                                     ; preds = %if.then.79
  %63 = load i64, i64* %attr_old, align 8
  %64 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win83 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %64, i32 0, i32 1
  %65 = load %struct._win_st*, %struct._win_st** %win83, align 8
  %_attrs84 = getelementptr inbounds %struct._win_st, %struct._win_st* %65, i32 0, i32 7
  store i64 %63, i64* %_attrs84, align 8
  br label %cond.end.86

cond.false.85:                                    ; preds = %if.then.79
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.85, %cond.true.82
  %cond87 = phi i32 [ 0, %cond.true.82 ], [ -1, %cond.false.85 ]
  br label %if.end.88

if.end.88:                                        ; preds = %cond.end.86, %if.end.76
  %66 = load i32, i32* %rtn, align 4
  %67 = load i8*, i8** %funcname, align 8
  %call89 = call %struct._object* @PyCursesCheckERR(i32 %66, i8* %67)
  store %struct._object* %call89, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.88, %if.then.18, %sw.default, %if.then.15, %if.then.10, %if.then.5, %if.then
  %68 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %68
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_InsStr(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %rtn = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %strtype = alloca i32, align 4
  %strobj = alloca %struct._object*, align 8
  %bytesobj = alloca %struct._object*, align 8
  %wstr = alloca i32*, align 8
  %attr = alloca i64, align 8
  %attr_old = alloca i64, align 8
  %lattr = alloca i64, align 8
  %use_xy = alloca i32, align 4
  %use_attr = alloca i32, align 4
  %funcname = alloca i8*, align 8
  %str = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %bytesobj, align 8
  store i32* null, i32** %wstr, align 8
  store i64 0, i64* %attr, align 8
  store i64 0, i64* %attr_old, align 8
  store i32 0, i32* %use_xy, align 4
  store i32 0, i32* %use_attr, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb.2
    i64 3, label %sw.bb.7
    i64 4, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.159, i32 0, i32 0), %struct._object** %strobj)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call3 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.160, i32 0, i32 0), %struct._object** %strobj, i64* %lattr)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.2
  %3 = load i64, i64* %lattr, align 8
  store i64 %3, i64* %attr, align 8
  store i32 1, i32* %use_attr, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call8 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.213, i32 0, i32 0), i32* %y, i32* %x, %struct._object** %strobj)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %sw.bb.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %sw.bb.7
  store i32 1, i32* %use_xy, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %call13 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.214, i32 0, i32 0), i32* %y, i32* %x, %struct._object** %strobj, i64* %lattr)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %sw.bb.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %sw.bb.12
  %6 = load i64, i64* %lattr, align 8
  store i64 %6, i64* %attr, align 8
  store i32 1, i32* %use_attr, align 4
  store i32 1, i32* %use_xy, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.215, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.16, %if.end.11, %if.end.6, %if.end
  %8 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %9 = load %struct._object*, %struct._object** %strobj, align 8
  %call17 = call i32 @PyCurses_ConvertToString(%struct.PyCursesWindowObject* %8, %struct._object* %9, %struct._object** %bytesobj, i32** %wstr)
  store i32 %call17, i32* %strtype, align 4
  %10 = load i32, i32* %strtype, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %sw.epilog
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %sw.epilog
  %11 = load i32, i32* %use_attr, align 4
  %cmp20 = icmp eq i32 %11, 1
  br i1 %cmp20, label %if.then.21, label %if.end.33

if.then.21:                                       ; preds = %if.end.19
  %12 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %12, i32 0, i32 1
  %13 = load %struct._win_st*, %struct._win_st** %win, align 8
  %tobool22 = icmp ne %struct._win_st* %13, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.21
  %14 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win23 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %14, i32 0, i32 1
  %15 = load %struct._win_st*, %struct._win_st** %win23, align 8
  %_attrs = getelementptr inbounds %struct._win_st, %struct._win_st* %15, i32 0, i32 7
  %16 = load i64, i64* %_attrs, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ 0, %cond.false ]
  %conv = trunc i64 %cond to i32
  %conv24 = sext i32 %conv to i64
  store i64 %conv24, i64* %attr_old, align 8
  %17 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win25 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %17, i32 0, i32 1
  %18 = load %struct._win_st*, %struct._win_st** %win25, align 8
  %tobool26 = icmp ne %struct._win_st* %18, null
  br i1 %tobool26, label %cond.true.27, label %cond.false.30

cond.true.27:                                     ; preds = %cond.end
  %19 = load i64, i64* %attr, align 8
  %20 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win28 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %20, i32 0, i32 1
  %21 = load %struct._win_st*, %struct._win_st** %win28, align 8
  %_attrs29 = getelementptr inbounds %struct._win_st, %struct._win_st* %21, i32 0, i32 7
  store i64 %19, i64* %_attrs29, align 8
  br label %cond.end.31

cond.false.30:                                    ; preds = %cond.end
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.27
  %cond32 = phi i32 [ 0, %cond.true.27 ], [ -1, %cond.false.30 ]
  br label %if.end.33

if.end.33:                                        ; preds = %cond.end.31, %if.end.19
  %22 = load i32, i32* %strtype, align 4
  %cmp34 = icmp eq i32 %22, 2
  br i1 %cmp34, label %if.then.36, label %if.else.53

if.then.36:                                       ; preds = %if.end.33
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.216, i32 0, i32 0), i8** %funcname, align 8
  %23 = load i32, i32* %use_xy, align 4
  %cmp37 = icmp eq i32 %23, 1
  br i1 %cmp37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %if.then.36
  %24 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win40 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %24, i32 0, i32 1
  %25 = load %struct._win_st*, %struct._win_st** %win40, align 8
  %26 = load i32, i32* %y, align 4
  %27 = load i32, i32* %x, align 4
  %call41 = call i32 @wmove(%struct._win_st* %25, i32 %26, i32 %27)
  %cmp42 = icmp eq i32 %call41, -1
  br i1 %cmp42, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %if.then.39
  br label %cond.end.48

cond.false.45:                                    ; preds = %if.then.39
  %28 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win46 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %28, i32 0, i32 1
  %29 = load %struct._win_st*, %struct._win_st** %win46, align 8
  %30 = load i32*, i32** %wstr, align 8
  %call47 = call i32 @wins_nwstr(%struct._win_st* %29, i32* %30, i32 -1)
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.45, %cond.true.44
  %cond49 = phi i32 [ -1, %cond.true.44 ], [ %call47, %cond.false.45 ]
  store i32 %cond49, i32* %rtn, align 4
  br label %if.end.52

if.else:                                          ; preds = %if.then.36
  %31 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win50 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %31, i32 0, i32 1
  %32 = load %struct._win_st*, %struct._win_st** %win50, align 8
  %33 = load i32*, i32** %wstr, align 8
  %call51 = call i32 @wins_nwstr(%struct._win_st* %32, i32* %33, i32 -1)
  store i32 %call51, i32* %rtn, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %cond.end.48
  %34 = load i32*, i32** %wstr, align 8
  %35 = bitcast i32* %34 to i8*
  call void @PyMem_Free(i8* %35)
  br label %if.end.76

if.else.53:                                       ; preds = %if.end.33
  %36 = load %struct._object*, %struct._object** %bytesobj, align 8
  %37 = bitcast %struct._object* %36 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %37, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %str, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i32 0, i32 0), i8** %funcname, align 8
  %38 = load i32, i32* %use_xy, align 4
  %cmp54 = icmp eq i32 %38, 1
  br i1 %cmp54, label %if.then.56, label %if.else.67

if.then.56:                                       ; preds = %if.else.53
  %39 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win57 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %39, i32 0, i32 1
  %40 = load %struct._win_st*, %struct._win_st** %win57, align 8
  %41 = load i32, i32* %y, align 4
  %42 = load i32, i32* %x, align 4
  %call58 = call i32 @wmove(%struct._win_st* %40, i32 %41, i32 %42)
  %cmp59 = icmp eq i32 %call58, -1
  br i1 %cmp59, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %if.then.56
  br label %cond.end.65

cond.false.62:                                    ; preds = %if.then.56
  %43 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win63 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %43, i32 0, i32 1
  %44 = load %struct._win_st*, %struct._win_st** %win63, align 8
  %45 = load i8*, i8** %str, align 8
  %call64 = call i32 @winsnstr(%struct._win_st* %44, i8* %45, i32 -1)
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.62, %cond.true.61
  %cond66 = phi i32 [ -1, %cond.true.61 ], [ %call64, %cond.false.62 ]
  store i32 %cond66, i32* %rtn, align 4
  br label %if.end.70

if.else.67:                                       ; preds = %if.else.53
  %46 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win68 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %46, i32 0, i32 1
  %47 = load %struct._win_st*, %struct._win_st** %win68, align 8
  %48 = load i8*, i8** %str, align 8
  %call69 = call i32 @winsnstr(%struct._win_st* %47, i8* %48, i32 -1)
  store i32 %call69, i32* %rtn, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %cond.end.65
  br label %do.body

do.body:                                          ; preds = %if.end.70
  %49 = load %struct._object*, %struct._object** %bytesobj, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %51, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp71 = icmp ne i64 %dec, 0
  br i1 %cmp71, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %do.body
  br label %if.end.75

if.else.74:                                       ; preds = %do.body
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %54(%struct._object* %55)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.74, %if.then.73
  br label %do.end

do.end:                                           ; preds = %if.end.75
  br label %if.end.76

if.end.76:                                        ; preds = %do.end, %if.end.52
  %56 = load i32, i32* %use_attr, align 4
  %cmp77 = icmp eq i32 %56, 1
  br i1 %cmp77, label %if.then.79, label %if.end.88

if.then.79:                                       ; preds = %if.end.76
  %57 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win80 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %57, i32 0, i32 1
  %58 = load %struct._win_st*, %struct._win_st** %win80, align 8
  %tobool81 = icmp ne %struct._win_st* %58, null
  br i1 %tobool81, label %cond.true.82, label %cond.false.85

cond.true.82:                                     ; preds = %if.then.79
  %59 = load i64, i64* %attr_old, align 8
  %60 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win83 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %60, i32 0, i32 1
  %61 = load %struct._win_st*, %struct._win_st** %win83, align 8
  %_attrs84 = getelementptr inbounds %struct._win_st, %struct._win_st* %61, i32 0, i32 7
  store i64 %59, i64* %_attrs84, align 8
  br label %cond.end.86

cond.false.85:                                    ; preds = %if.then.79
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.85, %cond.true.82
  %cond87 = phi i32 [ 0, %cond.true.82 ], [ -1, %cond.false.85 ]
  br label %if.end.88

if.end.88:                                        ; preds = %cond.end.86, %if.end.76
  %62 = load i32, i32* %rtn, align 4
  %63 = load i8*, i8** %funcname, align 8
  %call89 = call %struct._object* @PyCursesCheckERR(i32 %62, i8* %63)
  store %struct._object* %call89, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.88, %if.then.18, %sw.default, %if.then.15, %if.then.10, %if.then.5, %if.then
  %64 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %64
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_InStr(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %n = alloca i32, align 4
  %rtn = alloca [1024 x i8], align 16
  %rtn2 = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.2
    i64 2, label %sw.bb.7
    i64 3, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %rtn, i32 0, i32 0
  %call1 = call i32 @winnstr(%struct._win_st* %2, i8* %arraydecay, i32 1023)
  store i32 %call1, i32* %rtn2, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call3 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.195, i32 0, i32 0), i32* %n)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb.2
  %4 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win4 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %4, i32 0, i32 1
  %5 = load %struct._win_st*, %struct._win_st** %win4, align 8
  %arraydecay5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %rtn, i32 0, i32 0
  %6 = load i32, i32* %n, align 4
  %cmp = icmp sgt i32 %6, 1023
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %7 = load i32, i32* %n, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1023, %cond.true ], [ %7, %cond.false ]
  %call6 = call i32 @winnstr(%struct._win_st* %5, i8* %arraydecay5, i32 %cond)
  store i32 %call6, i32* %rtn2, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** %args.addr, align 8
  %call8 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.177, i32 0, i32 0), i32* %y, i32* %x)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %sw.bb.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %sw.bb.7
  %9 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win12 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %9, i32 0, i32 1
  %10 = load %struct._win_st*, %struct._win_st** %win12, align 8
  %11 = load i32, i32* %y, align 4
  %12 = load i32, i32* %x, align 4
  %call13 = call i32 @wmove(%struct._win_st* %10, i32 %11, i32 %12)
  %cmp14 = icmp eq i32 %call13, -1
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %if.end.11
  br label %cond.end.20

cond.false.16:                                    ; preds = %if.end.11
  %13 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win17 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %13, i32 0, i32 1
  %14 = load %struct._win_st*, %struct._win_st** %win17, align 8
  %arraydecay18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %rtn, i32 0, i32 0
  %call19 = call i32 @winnstr(%struct._win_st* %14, i8* %arraydecay18, i32 1023)
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.16, %cond.true.15
  %cond21 = phi i32 [ -1, %cond.true.15 ], [ %call19, %cond.false.16 ]
  store i32 %cond21, i32* %rtn2, align 4
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  %15 = load %struct._object*, %struct._object** %args.addr, align 8
  %call23 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i32 0, i32 0), i32* %y, i32* %x, i32* %n)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %sw.bb.22
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %sw.bb.22
  %16 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win27 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %16, i32 0, i32 1
  %17 = load %struct._win_st*, %struct._win_st** %win27, align 8
  %18 = load i32, i32* %y, align 4
  %19 = load i32, i32* %x, align 4
  %call28 = call i32 @wmove(%struct._win_st* %17, i32 %18, i32 %19)
  %cmp29 = icmp eq i32 %call28, -1
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %if.end.26
  br label %cond.end.40

cond.false.31:                                    ; preds = %if.end.26
  %20 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win32 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %20, i32 0, i32 1
  %21 = load %struct._win_st*, %struct._win_st** %win32, align 8
  %arraydecay33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %rtn, i32 0, i32 0
  %22 = load i32, i32* %n, align 4
  %cmp34 = icmp sgt i32 %22, 1023
  br i1 %cmp34, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.false.31
  br label %cond.end.37

cond.false.36:                                    ; preds = %cond.false.31
  %23 = load i32, i32* %n, align 4
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.35
  %cond38 = phi i32 [ 1023, %cond.true.35 ], [ %23, %cond.false.36 ]
  %call39 = call i32 @winnstr(%struct._win_st* %21, i8* %arraydecay33, i32 %cond38)
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.end.37, %cond.true.30
  %cond41 = phi i32 [ -1, %cond.true.30 ], [ %call39, %cond.end.37 ]
  store i32 %cond41, i32* %rtn2, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %24 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.217, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %cond.end.40, %cond.end.20, %cond.end, %sw.bb
  %25 = load i32, i32* %rtn2, align 4
  %cmp42 = icmp eq i32 %25, -1
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %sw.epilog
  %arrayidx = getelementptr [1024 x i8], [1024 x i8]* %rtn, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %sw.epilog
  %arraydecay45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %rtn, i32 0, i32 0
  %call46 = call %struct._object* @PyBytes_FromString(i8* %arraydecay45)
  store %struct._object* %call46, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.44, %sw.default, %if.then.25, %if.then.10, %if.then
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_Is_LineTouched(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %line = alloca i32, align 4
  %erg = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.218, i32 0, i32 0), i32* %line)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %3 = load i32, i32* %line, align 4
  %call1 = call zeroext i1 @is_linetouched(%struct._win_st* %2, i32 %3)
  %conv = zext i1 %call1 to i32
  store i32 %conv, i32* %erg, align 4
  %4 = load i32, i32* %erg, align 4
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.219, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %6 = load i32, i32* %erg, align 4
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  %7 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.else.7:                                        ; preds = %if.else
  %8 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc8 = add i64 %8, 1
  store i64 %inc8, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.7, %if.then.6, %if.then.3, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_is_wintouched(%struct.PyCursesWindowObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  %call = call zeroext i1 @is_wintouched(%struct._win_st* %1)
  %conv = zext i1 %call to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc2 = add i64 %3, 1
  store i64 %inc2, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_keypad(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %arg1 = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.176, i32 0, i32 0), i32* %arg1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %3 = load i32, i32* %arg1, align 4
  %tobool1 = icmp ne i32 %3, 0
  %call2 = call i32 @keypad(%struct._win_st* %2, i1 zeroext %tobool1)
  %call3 = call %struct._object* @PyCursesCheckERR(i32 %call2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i32 0, i32 0))
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_leaveok(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %arg1 = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.176, i32 0, i32 0), i32* %arg1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %3 = load i32, i32* %arg1, align 4
  %tobool1 = icmp ne i32 %3, 0
  %call2 = call i32 @leaveok(%struct._win_st* %2, i1 zeroext %tobool1)
  %call3 = call %struct._object* @PyCursesCheckERR(i32 %call2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i32 0, i32 0))
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_wmove(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %arg1 = alloca i32, align 4
  %arg2 = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.177, i32 0, i32 0), i32* %arg1, i32* %arg2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %3 = load i32, i32* %arg1, align 4
  %4 = load i32, i32* %arg2, align 4
  %call1 = call i32 @wmove(%struct._win_st* %2, i32 %3, i32 %4)
  %call2 = call %struct._object* @PyCursesCheckERR(i32 %call1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.203, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_mvderwin(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %arg1 = alloca i32, align 4
  %arg2 = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.177, i32 0, i32 0), i32* %arg1, i32* %arg2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %3 = load i32, i32* %arg1, align 4
  %4 = load i32, i32* %arg2, align 4
  %call1 = call i32 @mvderwin(%struct._win_st* %2, i32 %3, i32 %4)
  %call2 = call %struct._object* @PyCursesCheckERR(i32 %call1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.113, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_mvwin(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %arg1 = alloca i32, align 4
  %arg2 = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.177, i32 0, i32 0), i32* %arg1, i32* %arg2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %3 = load i32, i32* %arg1, align 4
  %4 = load i32, i32* %arg2, align 4
  %call1 = call i32 @mvwin(%struct._win_st* %2, i32 %3, i32 %4)
  %call2 = call %struct._object* @PyCursesCheckERR(i32 %call1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_nodelay(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %arg1 = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.176, i32 0, i32 0), i32* %arg1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %3 = load i32, i32* %arg1, align 4
  %tobool1 = icmp ne i32 %3, 0
  %call2 = call i32 @nodelay(%struct._win_st* %2, i1 zeroext %tobool1)
  %call3 = call %struct._object* @PyCursesCheckERR(i32 %call2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i32 0))
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_notimeout(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %arg1 = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.176, i32 0, i32 0), i32* %arg1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %3 = load i32, i32* %arg1, align 4
  %tobool1 = icmp ne i32 %3, 0
  %call2 = call i32 @notimeout(%struct._win_st* %2, i1 zeroext %tobool1)
  %call3 = call %struct._object* @PyCursesCheckERR(i32 %call2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i32 0, i32 0))
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_NoOutRefresh(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pminrow = alloca i32, align 4
  %pmincol = alloca i32, align 4
  %sminrow = alloca i32, align 4
  %smincol = alloca i32, align 4
  %smaxrow = alloca i32, align 4
  %smaxcol = alloca i32, align 4
  %rtn = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %_save12 = alloca %struct._ts*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  %_flags = getelementptr inbounds %struct._win_st, %struct._win_st* %1, i32 0, i32 6
  %2 = load i16, i16* %_flags, align 2
  %conv = sext i16 %2 to i32
  %and = and i32 %conv, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %3)
  switch i64 %call, label %sw.default [
    i64 6, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.220, i32 0, i32 0), i32* %pminrow, i32* %pmincol, i32* %sminrow, i32* %smincol, i32* %smaxrow, i32* %smaxcol)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %call4 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call4, %struct._ts** %_save, align 8
  %5 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win5 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %5, i32 0, i32 1
  %6 = load %struct._win_st*, %struct._win_st** %win5, align 8
  %7 = load i32, i32* %pminrow, align 4
  %8 = load i32, i32* %pmincol, align 4
  %9 = load i32, i32* %sminrow, align 4
  %10 = load i32, i32* %smincol, align 4
  %11 = load i32, i32* %smaxrow, align 4
  %12 = load i32, i32* %smaxcol, align 4
  %call6 = call i32 @pnoutrefresh(%struct._win_st* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12)
  store i32 %call6, i32* %rtn, align 4
  %13 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %13)
  %14 = load i32, i32* %rtn, align 4
  %call7 = call %struct._object* @PyCursesCheckERR(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.221, i32 0, i32 0))
  store %struct._object* %call7, %struct._object** %retval
  br label %return

sw.default:                                       ; preds = %if.then
  %15 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.222, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %16 = load %struct._object*, %struct._object** %args.addr, align 8
  %call8 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.223, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.else
  %call13 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call13, %struct._ts** %_save12, align 8
  %17 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win14 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %17, i32 0, i32 1
  %18 = load %struct._win_st*, %struct._win_st** %win14, align 8
  %call15 = call i32 @wnoutrefresh(%struct._win_st* %18)
  store i32 %call15, i32* %rtn, align 4
  %19 = load %struct._ts*, %struct._ts** %_save12, align 8
  call void @PyEval_RestoreThread(%struct._ts* %19)
  %20 = load i32, i32* %rtn, align 4
  %call16 = call %struct._object* @PyCursesCheckERR(i32 %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.224, i32 0, i32 0))
  store %struct._object* %call16, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %sw.default, %if.end, %if.then.3
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_Overlay(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %temp = alloca %struct.PyCursesWindowObject*, align 8
  %use_copywin = alloca i32, align 4
  %sminrow = alloca i32, align 4
  %smincol = alloca i32, align 4
  %dminrow = alloca i32, align 4
  %dmincol = alloca i32, align 4
  %dmaxrow = alloca i32, align 4
  %dmaxcol = alloca i32, align 4
  %rtn = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %use_copywin, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 7, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.225, i32 0, i32 0), %struct._typeobject* @PyCursesWindow_Type, %struct.PyCursesWindowObject** %temp)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call3 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.226, i32 0, i32 0), %struct._typeobject* @PyCursesWindow_Type, %struct.PyCursesWindowObject** %temp, i32* %sminrow, i32* %smincol, i32* %dminrow, i32* %dmincol, i32* %dmaxrow, i32* %dmaxcol)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.2
  store i32 1, i32* %use_copywin, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.227, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.6, %if.end
  %4 = load i32, i32* %use_copywin, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %sw.epilog
  %5 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %5, i32 0, i32 1
  %6 = load %struct._win_st*, %struct._win_st** %win, align 8
  %7 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %temp, align 8
  %win8 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %7, i32 0, i32 1
  %8 = load %struct._win_st*, %struct._win_st** %win8, align 8
  %9 = load i32, i32* %sminrow, align 4
  %10 = load i32, i32* %smincol, align 4
  %11 = load i32, i32* %dminrow, align 4
  %12 = load i32, i32* %dmincol, align 4
  %13 = load i32, i32* %dmaxrow, align 4
  %14 = load i32, i32* %dmaxcol, align 4
  %call9 = call i32 @copywin(%struct._win_st* %6, %struct._win_st* %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 1)
  store i32 %call9, i32* %rtn, align 4
  %15 = load i32, i32* %rtn, align 4
  %call10 = call %struct._object* @PyCursesCheckERR(i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.228, i32 0, i32 0))
  store %struct._object* %call10, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %sw.epilog
  %16 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win11 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %16, i32 0, i32 1
  %17 = load %struct._win_st*, %struct._win_st** %win11, align 8
  %18 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %temp, align 8
  %win12 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %18, i32 0, i32 1
  %19 = load %struct._win_st*, %struct._win_st** %win12, align 8
  %call13 = call i32 @overlay(%struct._win_st* %17, %struct._win_st* %19)
  store i32 %call13, i32* %rtn, align 4
  %20 = load i32, i32* %rtn, align 4
  %call14 = call %struct._object* @PyCursesCheckERR(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0))
  store %struct._object* %call14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.7, %sw.default, %if.then.5, %if.then
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_Overwrite(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %temp = alloca %struct.PyCursesWindowObject*, align 8
  %use_copywin = alloca i32, align 4
  %sminrow = alloca i32, align 4
  %smincol = alloca i32, align 4
  %dminrow = alloca i32, align 4
  %dmincol = alloca i32, align 4
  %dmaxrow = alloca i32, align 4
  %dmaxcol = alloca i32, align 4
  %rtn = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %use_copywin, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 7, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.225, i32 0, i32 0), %struct._typeobject* @PyCursesWindow_Type, %struct.PyCursesWindowObject** %temp)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call3 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.226, i32 0, i32 0), %struct._typeobject* @PyCursesWindow_Type, %struct.PyCursesWindowObject** %temp, i32* %sminrow, i32* %smincol, i32* %dminrow, i32* %dmincol, i32* %dmaxrow, i32* %dmaxcol)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.2
  store i32 1, i32* %use_copywin, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.229, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.6, %if.end
  %4 = load i32, i32* %use_copywin, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %sw.epilog
  %5 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %5, i32 0, i32 1
  %6 = load %struct._win_st*, %struct._win_st** %win, align 8
  %7 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %temp, align 8
  %win8 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %7, i32 0, i32 1
  %8 = load %struct._win_st*, %struct._win_st** %win8, align 8
  %9 = load i32, i32* %sminrow, align 4
  %10 = load i32, i32* %smincol, align 4
  %11 = load i32, i32* %dminrow, align 4
  %12 = load i32, i32* %dmincol, align 4
  %13 = load i32, i32* %dmaxrow, align 4
  %14 = load i32, i32* %dmaxcol, align 4
  %call9 = call i32 @copywin(%struct._win_st* %6, %struct._win_st* %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 0)
  store i32 %call9, i32* %rtn, align 4
  %15 = load i32, i32* %rtn, align 4
  %call10 = call %struct._object* @PyCursesCheckERR(i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.228, i32 0, i32 0))
  store %struct._object* %call10, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %sw.epilog
  %16 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win11 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %16, i32 0, i32 1
  %17 = load %struct._win_st*, %struct._win_st** %win11, align 8
  %18 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %temp, align 8
  %win12 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %18, i32 0, i32 1
  %19 = load %struct._win_st*, %struct._win_st** %win12, align 8
  %call13 = call i32 @overwrite(%struct._win_st* %17, %struct._win_st* %19)
  store i32 %call13, i32* %rtn, align 4
  %20 = load i32, i32* %rtn, align 4
  %call14 = call %struct._object* @PyCursesCheckERR(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i32 0, i32 0))
  store %struct._object* %call14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.7, %sw.default, %if.then.5, %if.then
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_PutWin(%struct.PyCursesWindowObject* %self, %struct._object* %stream) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %stream.addr = alloca %struct._object*, align 8
  %fn = alloca [100 x i8], align 16
  %fd = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %res = alloca %struct._object*, align 8
  %buf = alloca [8192 x i8], align 16
  %n = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %stream, %struct._object** %stream.addr, align 8
  store i32 -1, i32* %fd, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  store %struct._object* null, %struct._object** %res, align 8
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %fn, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.230, i32 0, i32 0)) #3
  %arraydecay1 = getelementptr inbounds [100 x i8], [100 x i8]* %fn, i32 0, i32 0
  %call2 = call i32 @mkstemp64(i8* %arraydecay1)
  store i32 %call2, i32* %fd, align 4
  %0 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %arraydecay3 = getelementptr inbounds [100 x i8], [100 x i8]* %fn, i32 0, i32 0
  %call4 = call %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object* %1, i8* %arraydecay3)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %fd, align 4
  %call5 = call i32 @_Py_set_inheritable(i32 %2, i32 0, i32* null)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  br label %exit

if.end.8:                                         ; preds = %if.end
  %3 = load i32, i32* %fd, align 4
  %call9 = call %struct._IO_FILE* @fdopen(i32 %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i32 0, i32 0)) #3
  store %struct._IO_FILE* %call9, %struct._IO_FILE** %fp, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp10 = icmp eq %struct._IO_FILE* %4, null
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %5 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %arraydecay12 = getelementptr inbounds [100 x i8], [100 x i8]* %fn, i32 0, i32 0
  %call13 = call %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object* %5, i8* %arraydecay12)
  br label %exit

if.end.14:                                        ; preds = %if.end.8
  %6 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %6, i32 0, i32 1
  %7 = load %struct._win_st*, %struct._win_st** %win, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call15 = call i32 @putwin(%struct._win_st* %7, %struct._IO_FILE* %8)
  %call16 = call %struct._object* @PyCursesCheckERR(i32 %call15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.120, i32 0, i32 0))
  store %struct._object* %call16, %struct._object** %res, align 8
  %9 = load %struct._object*, %struct._object** %res, align 8
  %cmp17 = icmp eq %struct._object* %9, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.14
  br label %exit

if.end.19:                                        ; preds = %if.end.14
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call20 = call i32 @fseek(%struct._IO_FILE* %10, i64 0, i32 0)
  br label %while.body

while.body:                                       ; preds = %if.end.19, %if.end.33
  %arraydecay21 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call22 = call i64 @fread(i8* %arraydecay21, i64 1, i64 8192, %struct._IO_FILE* %11)
  store i64 %call22, i64* %n, align 8
  %12 = load i64, i64* %n, align 8
  %cmp23 = icmp sle i64 %12, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %while.body
  br label %while.end

if.end.25:                                        ; preds = %while.body
  br label %do.body

do.body:                                          ; preds = %if.end.25
  %13 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp26 = icmp ne i64 %dec, 0
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %do.body
  br label %if.end.28

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.27
  br label %do.end

do.end:                                           ; preds = %if.end.28
  %20 = load %struct._object*, %struct._object** %stream.addr, align 8
  %arraydecay29 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %21 = load i64, i64* %n, align 8
  %call30 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %20, %struct._Py_Identifier* @PyCursesWindow_PutWin.PyId_write, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.233, i32 0, i32 0), i8* %arraydecay29, i64 %21)
  store %struct._object* %call30, %struct._object** %res, align 8
  %22 = load %struct._object*, %struct._object** %res, align 8
  %cmp31 = icmp eq %struct._object* %22, null
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %do.end
  br label %while.end

if.end.33:                                        ; preds = %do.end
  br label %while.body

while.end:                                        ; preds = %if.then.32, %if.then.24
  br label %exit

exit:                                             ; preds = %while.end, %if.then.18, %if.then.11, %if.then.7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp34 = icmp ne %struct._IO_FILE* %23, null
  br i1 %cmp34, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %exit
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call36 = call i32 @fclose(%struct._IO_FILE* %24)
  br label %if.end.42

if.else.37:                                       ; preds = %exit
  %25 = load i32, i32* %fd, align 4
  %cmp38 = icmp ne i32 %25, -1
  br i1 %cmp38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.else.37
  %26 = load i32, i32* %fd, align 4
  %call40 = call i32 @close(i32 %26)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.else.37
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.35
  %arraydecay43 = getelementptr inbounds [100 x i8], [100 x i8]* %fn, i32 0, i32 0
  %call44 = call i32 @remove(i8* %arraydecay43) #3
  %27 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_RedrawLine(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %beg = alloca i32, align 4
  %num = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.234, i32 0, i32 0), i32* %beg, i32* %num)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %3 = load i32, i32* %beg, align 4
  %4 = load i32, i32* %num, align 4
  %call1 = call i32 @wredrawln(%struct._win_st* %2, i32 %3, i32 %4)
  %call2 = call %struct._object* @PyCursesCheckERR(i32 %call1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_redrawwin(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  %2 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win1 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %2, i32 0, i32 1
  %3 = load %struct._win_st*, %struct._win_st** %win1, align 8
  %tobool = icmp ne %struct._win_st* %3, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win2 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %4, i32 0, i32 1
  %5 = load %struct._win_st*, %struct._win_st** %win2, align 8
  %_maxy = getelementptr inbounds %struct._win_st, %struct._win_st* %5, i32 0, i32 2
  %6 = load i16, i16* %_maxy, align 2
  %conv = sext i16 %6 to i32
  %add = add i32 %conv, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ -1, %cond.false ]
  %call = call i32 @wredrawln(%struct._win_st* %1, i32 0, i32 %cond)
  %call3 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0))
  ret %struct._object* %call3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_Refresh(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pminrow = alloca i32, align 4
  %pmincol = alloca i32, align 4
  %sminrow = alloca i32, align 4
  %smincol = alloca i32, align 4
  %smaxrow = alloca i32, align 4
  %smaxcol = alloca i32, align 4
  %rtn = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %_save12 = alloca %struct._ts*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  %_flags = getelementptr inbounds %struct._win_st, %struct._win_st* %1, i32 0, i32 6
  %2 = load i16, i16* %_flags, align 2
  %conv = sext i16 %2 to i32
  %and = and i32 %conv, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %3)
  switch i64 %call, label %sw.default [
    i64 6, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.220, i32 0, i32 0), i32* %pminrow, i32* %pmincol, i32* %sminrow, i32* %smincol, i32* %smaxrow, i32* %smaxcol)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %call4 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call4, %struct._ts** %_save, align 8
  %5 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win5 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %5, i32 0, i32 1
  %6 = load %struct._win_st*, %struct._win_st** %win5, align 8
  %7 = load i32, i32* %pminrow, align 4
  %8 = load i32, i32* %pmincol, align 4
  %9 = load i32, i32* %sminrow, align 4
  %10 = load i32, i32* %smincol, align 4
  %11 = load i32, i32* %smaxrow, align 4
  %12 = load i32, i32* %smaxcol, align 4
  %call6 = call i32 @prefresh(%struct._win_st* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12)
  store i32 %call6, i32* %rtn, align 4
  %13 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %13)
  %14 = load i32, i32* %rtn, align 4
  %call7 = call %struct._object* @PyCursesCheckERR(i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.235, i32 0, i32 0))
  store %struct._object* %call7, %struct._object** %retval
  br label %return

sw.default:                                       ; preds = %if.then
  %15 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.236, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %16 = load %struct._object*, %struct._object** %args.addr, align 8
  %call8 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.237, i32 0, i32 0))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.else
  %call13 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call13, %struct._ts** %_save12, align 8
  %17 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win14 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %17, i32 0, i32 1
  %18 = load %struct._win_st*, %struct._win_st** %win14, align 8
  %call15 = call i32 @wrefresh(%struct._win_st* %18)
  store i32 %call15, i32* %rtn, align 4
  %19 = load %struct._ts*, %struct._ts** %_save12, align 8
  call void @PyEval_RestoreThread(%struct._ts* %19)
  %20 = load i32, i32* %rtn, align 4
  %call16 = call %struct._object* @PyCursesCheckERR(i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.235, i32 0, i32 0))
  store %struct._object* %call16, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %sw.default, %if.end, %if.then.3
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_wresize(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %arg1 = alloca i32, align 4
  %arg2 = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.238, i32 0, i32 0), i32* %arg1, i32* %arg2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %3 = load i32, i32* %arg1, align 4
  %4 = load i32, i32* %arg2, align 4
  %call1 = call i32 @wresize(%struct._win_st* %2, i32 %3, i32 %4)
  %call2 = call %struct._object* @PyCursesCheckERR(i32 %call1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.239, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_Scroll(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %nlines = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %call1 = call i32 @wscrl(%struct._win_st* %2, i32 1)
  %call2 = call %struct._object* @PyCursesCheckERR(i32 %call1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.208, i32 0, i32 0), i32* %nlines)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb.3
  %4 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win5 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %4, i32 0, i32 1
  %5 = load %struct._win_st*, %struct._win_st** %win5, align 8
  %6 = load i32, i32* %nlines, align 4
  %call6 = call i32 @wscrl(%struct._win_st* %5, i32 %6)
  %call7 = call %struct._object* @PyCursesCheckERR(i32 %call6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0))
  store %struct._object* %call7, %struct._object** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.240, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end, %if.then, %sw.bb
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_scrollok(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %arg1 = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.176, i32 0, i32 0), i32* %arg1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %3 = load i32, i32* %arg1, align 4
  %tobool1 = icmp ne i32 %3, 0
  %call2 = call i32 @scrollok(%struct._win_st* %2, i1 zeroext %tobool1)
  %call3 = call %struct._object* @PyCursesCheckERR(i32 %call2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.126, i32 0, i32 0))
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_SetScrollRegion(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.241, i32 0, i32 0), i32* %y, i32* %x)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %3 = load i32, i32* %y, align 4
  %4 = load i32, i32* %x, align 4
  %call1 = call i32 @wsetscrreg(%struct._win_st* %2, i32 %3, i32 %4)
  %call2 = call %struct._object* @PyCursesCheckERR(i32 %call1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.242, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_wstandend(%struct.PyCursesWindowObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  %tobool = icmp ne %struct._win_st* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win1 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %2, i32 0, i32 1
  %3 = load %struct._win_st*, %struct._win_st** %win1, align 8
  %_attrs = getelementptr inbounds %struct._win_st, %struct._win_st* %3, i32 0, i32 7
  store i64 0, i64* %_attrs, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ -1, %cond.false ]
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_wstandout(%struct.PyCursesWindowObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  %tobool = icmp ne %struct._win_st* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win1 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %2, i32 0, i32 1
  %3 = load %struct._win_st*, %struct._win_st** %win1, align 8
  %_attrs = getelementptr inbounds %struct._win_st, %struct._win_st* %3, i32 0, i32 7
  store i64 65536, i64* %_attrs, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ -1, %cond.false ]
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_SubWin(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %win = alloca %struct._win_st*, align 8
  %nlines = alloca i32, align 4
  %ncols = alloca i32, align 4
  %begin_y = alloca i32, align 4
  %begin_x = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %nlines, align 4
  store i32 0, i32* %ncols, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 2, label %sw.bb
    i64 4, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.181, i32 0, i32 0), i32* %begin_y, i32* %begin_x)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call3 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.182, i32 0, i32 0), i32* %nlines, i32* %ncols, i32* %begin_y, i32* %begin_x)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.243, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.6, %if.end
  %4 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win7 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %4, i32 0, i32 1
  %5 = load %struct._win_st*, %struct._win_st** %win7, align 8
  %_flags = getelementptr inbounds %struct._win_st, %struct._win_st* %5, i32 0, i32 6
  %6 = load i16, i16* %_flags, align 2
  %conv = sext i16 %6 to i32
  %and = and i32 %conv, 16
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %sw.epilog
  %7 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win10 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %7, i32 0, i32 1
  %8 = load %struct._win_st*, %struct._win_st** %win10, align 8
  %9 = load i32, i32* %nlines, align 4
  %10 = load i32, i32* %ncols, align 4
  %11 = load i32, i32* %begin_y, align 4
  %12 = load i32, i32* %begin_x, align 4
  %call11 = call %struct._win_st* @subpad(%struct._win_st* %8, i32 %9, i32 %10, i32 %11, i32 %12)
  store %struct._win_st* %call11, %struct._win_st** %win, align 8
  br label %if.end.14

if.else:                                          ; preds = %sw.epilog
  %13 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win12 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %13, i32 0, i32 1
  %14 = load %struct._win_st*, %struct._win_st** %win12, align 8
  %15 = load i32, i32* %nlines, align 4
  %16 = load i32, i32* %ncols, align 4
  %17 = load i32, i32* %begin_y, align 4
  %18 = load i32, i32* %begin_x, align 4
  %call13 = call %struct._win_st* @subwin(%struct._win_st* %14, i32 %15, i32 %16, i32 %17, i32 %18)
  store %struct._win_st* %call13, %struct._win_st** %win, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.9
  %19 = load %struct._win_st*, %struct._win_st** %win, align 8
  %cmp = icmp eq %struct._win_st* %19, null
  br i1 %cmp, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %20 = load %struct._object*, %struct._object** @PyCursesError, align 8
  %21 = load i8*, i8** @catchall_NULL, align 8
  call void @PyErr_SetString(%struct._object* %20, i8* %21)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.14
  %22 = load %struct._win_st*, %struct._win_st** %win, align 8
  %23 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %encoding = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %23, i32 0, i32 2
  %24 = load i8*, i8** %encoding, align 8
  %call18 = call %struct._object* @PyCursesWindow_New(%struct._win_st* %22, i8* %24)
  store %struct._object* %call18, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.16, %sw.default, %if.then.5, %if.then
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_wsyncdown(%struct.PyCursesWindowObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  call void @wsyncdown(%struct._win_st* %1)
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_syncok(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %arg1 = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.176, i32 0, i32 0), i32* %arg1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %3 = load i32, i32* %arg1, align 4
  %tobool1 = icmp ne i32 %3, 0
  %call2 = call i32 @syncok(%struct._win_st* %2, i1 zeroext %tobool1)
  %call3 = call %struct._object* @PyCursesCheckERR(i32 %call2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.133, i32 0, i32 0))
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_wsyncup(%struct.PyCursesWindowObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  call void @wsyncup(%struct._win_st* %1)
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_wtimeout(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %arg1 = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.244, i32 0, i32 0), i32* %arg1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %1, i32 0, i32 1
  %2 = load %struct._win_st*, %struct._win_st** %win, align 8
  %3 = load i32, i32* %arg1, align 4
  call void @wtimeout(%struct._win_st* %2, i32 %3)
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_TouchLine(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %st = alloca i32, align 4
  %cnt = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 2, label %sw.bb
    i64 3, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.245, i32 0, i32 0), i32* %st, i32* %cnt)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %2 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %2, i32 0, i32 1
  %3 = load %struct._win_st*, %struct._win_st** %win, align 8
  %4 = load i32, i32* %st, align 4
  %5 = load i32, i32* %cnt, align 4
  %call2 = call i32 @wtouchln(%struct._win_st* %3, i32 %4, i32 %5, i32 1)
  %call3 = call %struct._object* @PyCursesCheckERR(i32 %call2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.136, i32 0, i32 0))
  store %struct._object* %call3, %struct._object** %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  %call5 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.246, i32 0, i32 0), i32* %st, i32* %cnt, i32* %val)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %sw.bb.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %sw.bb.4
  %7 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win9 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %7, i32 0, i32 1
  %8 = load %struct._win_st*, %struct._win_st** %win9, align 8
  %9 = load i32, i32* %st, align 4
  %10 = load i32, i32* %cnt, align 4
  %11 = load i32, i32* %val, align 4
  %call10 = call i32 @wtouchln(%struct._win_st* %8, i32 %9, i32 %10, i32 %11)
  %call11 = call %struct._object* @PyCursesCheckERR(i32 %call10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.136, i32 0, i32 0))
  store %struct._object* %call11, %struct._object** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.247, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end.8, %if.then.7, %if.end, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_touchwin(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  %2 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win1 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %2, i32 0, i32 1
  %3 = load %struct._win_st*, %struct._win_st** %win1, align 8
  %tobool = icmp ne %struct._win_st* %3, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win2 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %4, i32 0, i32 1
  %5 = load %struct._win_st*, %struct._win_st** %win2, align 8
  %_maxy = getelementptr inbounds %struct._win_st, %struct._win_st* %5, i32 0, i32 2
  %6 = load i16, i16* %_maxy, align 2
  %conv = sext i16 %6 to i32
  %add = add i32 %conv, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ -1, %cond.false ]
  %call = call i32 @wtouchln(%struct._win_st* %1, i32 0, i32 %cond, i32 1)
  %call3 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.137, i32 0, i32 0))
  ret %struct._object* %call3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_untouchwin(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 1
  %1 = load %struct._win_st*, %struct._win_st** %win, align 8
  %2 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win1 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %2, i32 0, i32 1
  %3 = load %struct._win_st*, %struct._win_st** %win1, align 8
  %tobool = icmp ne %struct._win_st* %3, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win2 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %4, i32 0, i32 1
  %5 = load %struct._win_st*, %struct._win_st** %win2, align 8
  %_maxy = getelementptr inbounds %struct._win_st, %struct._win_st* %5, i32 0, i32 2
  %6 = load i16, i16* %_maxy, align 2
  %conv = sext i16 %6 to i32
  %add = add i32 %conv, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ -1, %cond.false ]
  %call = call i32 @wtouchln(%struct._win_st* %1, i32 0, i32 %cond, i32 0)
  %call3 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.138, i32 0, i32 0))
  ret %struct._object* %call3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_Vline(%struct.PyCursesWindowObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %temp = alloca %struct._object*, align 8
  %ch = alloca i64, align 8
  %n = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %code = alloca i32, align 4
  %attr = alloca i64, align 8
  %lattr = alloca i64, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %code, align 4
  store i64 0, i64* %attr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 2, label %sw.bb
    i64 3, label %sw.bb.2
    i64 4, label %sw.bb.7
    i64 5, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.198, i32 0, i32 0), %struct._object** %temp, i32* %n)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call3 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.199, i32 0, i32 0), %struct._object** %temp, i32* %n, i64* %lattr)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.2
  %3 = load i64, i64* %lattr, align 8
  store i64 %3, i64* %attr, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call8 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.200, i32 0, i32 0), i32* %y, i32* %x, %struct._object** %temp, i32* %n)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %sw.bb.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %sw.bb.7
  %5 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %5, i32 0, i32 1
  %6 = load %struct._win_st*, %struct._win_st** %win, align 8
  %7 = load i32, i32* %y, align 4
  %8 = load i32, i32* %x, align 4
  %call12 = call i32 @wmove(%struct._win_st* %6, i32 %7, i32 %8)
  store i32 %call12, i32* %code, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %9 = load %struct._object*, %struct._object** %args.addr, align 8
  %call14 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.201, i32 0, i32 0), i32* %y, i32* %x, %struct._object** %temp, i32* %n, i64* %lattr)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %sw.bb.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %sw.bb.13
  %10 = load i64, i64* %lattr, align 8
  store i64 %10, i64* %attr, align 8
  %11 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win18 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %11, i32 0, i32 1
  %12 = load %struct._win_st*, %struct._win_st** %win18, align 8
  %13 = load i32, i32* %y, align 4
  %14 = load i32, i32* %x, align 4
  %call19 = call i32 @wmove(%struct._win_st* %12, i32 %13, i32 %14)
  store i32 %call19, i32* %code, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %15 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.248, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.17, %if.end.11, %if.end.6, %if.end
  %16 = load i32, i32* %code, align 4
  %cmp = icmp ne i32 %16, -1
  br i1 %cmp, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %sw.epilog
  %17 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %18 = load %struct._object*, %struct._object** %temp, align 8
  %call21 = call i32 @PyCurses_ConvertToChtype(%struct.PyCursesWindowObject* %17, %struct._object* %18, i64* %ch)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.then.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.then.20
  %19 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %win25 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %19, i32 0, i32 1
  %20 = load %struct._win_st*, %struct._win_st** %win25, align 8
  %21 = load i64, i64* %ch, align 8
  %22 = load i64, i64* %attr, align 8
  %or = or i64 %21, %22
  %23 = load i32, i32* %n, align 4
  %call26 = call i32 @wvline(%struct._win_st* %20, i64 %or, i32 %23)
  %call27 = call %struct._object* @PyCursesCheckERR(i32 %call26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.139, i32 0, i32 0))
  store %struct._object* %call27, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %sw.epilog
  %24 = load i32, i32* %code, align 4
  %call28 = call %struct._object* @PyCursesCheckERR(i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.203, i32 0, i32 0))
  store %struct._object* %call28, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.end.24, %if.then.23, %sw.default, %if.then.16, %if.then.10, %if.then.5, %if.then
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @curses_window_addch_impl(%struct.PyCursesWindowObject* %self, i32 %group_left_1, i32 %y, i32 %x, %struct._object* %ch, i32 %group_right_1, i64 %attr) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %group_left_1.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %ch.addr = alloca %struct._object*, align 8
  %group_right_1.addr = alloca i32, align 4
  %attr.addr = alloca i64, align 8
  %cwself = alloca %struct.PyCursesWindowObject*, align 8
  %coordinates_group = alloca i32, align 4
  %attr_group = alloca i32, align 4
  %rtn = alloca i32, align 4
  %type = alloca i32, align 4
  %cch = alloca i64, align 8
  %wch = alloca %struct.cchar_t, align 8
  %funcname = alloca i8*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store i32 %group_left_1, i32* %group_left_1.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store %struct._object* %ch, %struct._object** %ch.addr, align 8
  store i32 %group_right_1, i32* %group_right_1.addr, align 4
  store i64 %attr, i64* %attr.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct.PyCursesWindowObject* %0, %struct.PyCursesWindowObject** %cwself, align 8
  %1 = load i32, i32* %group_left_1.addr, align 4
  store i32 %1, i32* %coordinates_group, align 4
  %2 = load i32, i32* %group_right_1.addr, align 4
  store i32 %2, i32* %attr_group, align 4
  %3 = load i32, i32* %attr_group, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, i64* %attr.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %cwself, align 8
  %5 = load %struct._object*, %struct._object** %ch.addr, align 8
  %call = call i32 @PyCurses_ConvertToCchar_t(%struct.PyCursesWindowObject* %4, %struct._object* %5, i64* %cch, %struct.cchar_t* %wch)
  store i32 %call, i32* %type, align 4
  %6 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %if.then.1, label %if.else.12

if.then.1:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.145, i32 0, i32 0), i8** %funcname, align 8
  %7 = load i64, i64* %attr.addr, align 8
  %attr2 = getelementptr inbounds %struct.cchar_t, %struct.cchar_t* %wch, i32 0, i32 0
  store i64 %7, i64* %attr2, align 8
  %8 = load i32, i32* %coordinates_group, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.1
  %9 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %cwself, align 8
  %win = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %9, i32 0, i32 1
  %10 = load %struct._win_st*, %struct._win_st** %win, align 8
  %11 = load i32, i32* %y.addr, align 4
  %12 = load i32, i32* %x.addr, align 4
  %call5 = call i32 @wmove(%struct._win_st* %10, i32 %11, i32 %12)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.4
  br label %cond.end

cond.false:                                       ; preds = %if.then.4
  %13 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %cwself, align 8
  %win7 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %13, i32 0, i32 1
  %14 = load %struct._win_st*, %struct._win_st** %win7, align 8
  %call8 = call i32 @wadd_wch(%struct._win_st* %14, %struct.cchar_t* %wch)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %call8, %cond.false ]
  store i32 %cond, i32* %rtn, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.then.1
  %15 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %cwself, align 8
  %win9 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %15, i32 0, i32 1
  %16 = load %struct._win_st*, %struct._win_st** %win9, align 8
  %call10 = call i32 @wadd_wch(%struct._win_st* %16, %struct.cchar_t* %wch)
  store i32 %call10, i32* %rtn, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %cond.end
  br label %if.end.33

if.else.12:                                       ; preds = %if.end
  %17 = load i32, i32* %type, align 4
  %cmp13 = icmp eq i32 %17, 1
  br i1 %cmp13, label %if.then.14, label %if.else.31

if.then.14:                                       ; preds = %if.else.12
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i8** %funcname, align 8
  %18 = load i32, i32* %coordinates_group, align 4
  %tobool15 = icmp ne i32 %18, 0
  br i1 %tobool15, label %if.then.16, label %if.else.26

if.then.16:                                       ; preds = %if.then.14
  %19 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %cwself, align 8
  %win17 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %19, i32 0, i32 1
  %20 = load %struct._win_st*, %struct._win_st** %win17, align 8
  %21 = load i32, i32* %y.addr, align 4
  %22 = load i32, i32* %x.addr, align 4
  %call18 = call i32 @wmove(%struct._win_st* %20, i32 %21, i32 %22)
  %cmp19 = icmp eq i32 %call18, -1
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %if.then.16
  br label %cond.end.24

cond.false.21:                                    ; preds = %if.then.16
  %23 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %cwself, align 8
  %win22 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %23, i32 0, i32 1
  %24 = load %struct._win_st*, %struct._win_st** %win22, align 8
  %25 = load i64, i64* %cch, align 8
  %26 = load i64, i64* %attr.addr, align 8
  %or = or i64 %25, %26
  %call23 = call i32 @waddch(%struct._win_st* %24, i64 %or)
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.21, %cond.true.20
  %cond25 = phi i32 [ -1, %cond.true.20 ], [ %call23, %cond.false.21 ]
  store i32 %cond25, i32* %rtn, align 4
  br label %if.end.30

if.else.26:                                       ; preds = %if.then.14
  %27 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %cwself, align 8
  %win27 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %27, i32 0, i32 1
  %28 = load %struct._win_st*, %struct._win_st** %win27, align 8
  %29 = load i64, i64* %cch, align 8
  %30 = load i64, i64* %attr.addr, align 8
  %or28 = or i64 %29, %30
  %call29 = call i32 @waddch(%struct._win_st* %28, i64 %or28)
  store i32 %call29, i32* %rtn, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.26, %cond.end.24
  br label %if.end.32

if.else.31:                                       ; preds = %if.else.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %if.end.30
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.11
  %31 = load i32, i32* %rtn, align 4
  %32 = load i8*, i8** %funcname, align 8
  %call34 = call %struct._object* @PyCursesCheckERR(i32 %31, i8* %32)
  store %struct._object* %call34, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.else.31
  %33 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %33
}

; Function Attrs: nounwind uwtable
define internal i32 @PyCurses_ConvertToCchar_t(%struct.PyCursesWindowObject* %win, %struct._object* %obj, i64* %ch, %struct.cchar_t* %wch) #0 {
entry:
  %retval = alloca i32, align 4
  %win.addr = alloca %struct.PyCursesWindowObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %ch.addr = alloca i64*, align 8
  %wch.addr = alloca %struct.cchar_t*, align 8
  %value = alloca i64, align 8
  %buffer = alloca [2 x i32], align 4
  %overflow = alloca i32, align 4
  store %struct.PyCursesWindowObject* %win, %struct.PyCursesWindowObject** %win.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i64* %ch, i64** %ch.addr, align 8
  store %struct.cchar_t* %wch, %struct.cchar_t** %wch.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %buffer, i32 0, i32 0
  %call = call i64 @PyUnicode_AsWideChar(%struct._object* %3, i32* %arraydecay, i64 2)
  %cmp1 = icmp ne i64 %call, 1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %6, i32 0, i32 1
  %7 = load i64, i64* %length, align 8
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.146, i32 0, i32 0), i64 %7)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %8 = load %struct.cchar_t*, %struct.cchar_t** %wch.addr, align 8
  %chars = getelementptr inbounds %struct.cchar_t, %struct.cchar_t* %8, i32 0, i32 1
  %9 = bitcast [5 x i32]* %chars to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 20, i32 8, i1 false)
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %buffer, i32 0, i64 0
  %10 = load i32, i32* %arrayidx, align 4
  %11 = load %struct.cchar_t*, %struct.cchar_t** %wch.addr, align 8
  %chars4 = getelementptr inbounds %struct.cchar_t, %struct.cchar_t* %11, i32 0, i32 1
  %arrayidx5 = getelementptr [5 x i32], [5 x i32]* %chars4, i32 0, i64 0
  store i32 %10, i32* %arrayidx5, align 4
  store i32 2, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %12 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_flags7 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 19
  %14 = load i64, i64* %tp_flags7, align 8
  %and8 = and i64 %14, 134217728
  %cmp9 = icmp ne i64 %and8, 0
  br i1 %cmp9, label %land.lhs.true, label %if.else.15

land.lhs.true:                                    ; preds = %if.else
  %15 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call10 = call i64 @PyBytes_Size(%struct._object* %15)
  %cmp11 = icmp eq i64 %call10, 1
  br i1 %cmp11, label %if.then.12, label %if.else.15

if.then.12:                                       ; preds = %land.lhs.true
  %16 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call13 = call i8* @PyBytes_AsString(%struct._object* %16)
  %arrayidx14 = getelementptr i8, i8* %call13, i64 0
  %17 = load i8, i8* %arrayidx14, align 1
  %conv = zext i8 %17 to i64
  store i64 %conv, i64* %value, align 8
  br label %if.end.27

if.else.15:                                       ; preds = %land.lhs.true, %if.else
  %18 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %cmp17 = icmp eq %struct._typeobject* %19, @PyLong_Type
  br i1 %cmp17, label %if.then.19, label %if.else.23

if.then.19:                                       ; preds = %if.else.15
  %20 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call20 = call i64 @PyLong_AsLongAndOverflow(%struct._object* %20, i32* %overflow)
  store i64 %call20, i64* %value, align 8
  %21 = load i32, i32* %overflow, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.19
  %22 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.147, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.19
  br label %if.end.26

if.else.23:                                       ; preds = %if.else.15
  %23 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %24 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 1
  %26 = load i8*, i8** %tp_name, align 8
  %call25 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %23, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.148, i32 0, i32 0), i8* %26)
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.22
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.12
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27
  %27 = load i64, i64* %value, align 8
  %28 = load i64*, i64** %ch.addr, align 8
  store i64 %27, i64* %28, align 8
  %29 = load i64*, i64** %ch.addr, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %value, align 8
  %cmp29 = icmp ne i64 %30, %31
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.28
  %32 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call32 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.149, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.end.28
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then.31, %if.else.23, %if.then.21, %if.end, %if.then.2
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare i32 @wmove(%struct._win_st*, i32, i32) #1

declare i32 @wadd_wch(%struct._win_st*, %struct.cchar_t*) #1

declare i32 @waddch(%struct._win_st*, i64) #1

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
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %3 = load %struct._object*, %struct._object** @PyCursesError, align 8
  %4 = load i8*, i8** @catchall_ERR, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* %4)
  br label %if.end

if.else.3:                                        ; preds = %if.else
  %5 = load %struct._object*, %struct._object** @PyCursesError, align 8
  %6 = load i8*, i8** %fname.addr, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.150, i32 0, i32 0), i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.else.3, %if.then.2
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

declare i64 @PyUnicode_AsWideChar(%struct._object*, i32*, i64) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare i64 @PyBytes_Size(%struct._object*) #1

declare i8* @PyBytes_AsString(%struct._object*) #1

declare i64 @PyLong_AsLongAndOverflow(%struct._object*, i32*) #1

declare i64 @PyTuple_Size(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @PyCurses_ConvertToString(%struct.PyCursesWindowObject* %win, %struct._object* %obj, %struct._object** %bytes, i32** %wstr) #0 {
entry:
  %retval = alloca i32, align 4
  %win.addr = alloca %struct.PyCursesWindowObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %bytes.addr = alloca %struct._object**, align 8
  %wstr.addr = alloca i32**, align 8
  store %struct.PyCursesWindowObject* %win, %struct.PyCursesWindowObject** %win.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object** %bytes, %struct._object*** %bytes.addr, align 8
  store i32** %wstr, i32*** %wstr.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call i32* @PyUnicode_AsWideCharString(%struct._object* %3, i64* null)
  %4 = load i32**, i32*** %wstr.addr, align 8
  store i32* %call, i32** %4, align 8
  %5 = load i32**, i32*** %wstr.addr, align 8
  %6 = load i32*, i32** %5, align 8
  %cmp1 = icmp eq i32* %6, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  store i32 2, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_flags4 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19
  %9 = load i64, i64* %tp_flags4, align 8
  %and5 = and i64 %9, 134217728
  %cmp6 = icmp ne i64 %and5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.else
  %10 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %12 = load %struct._object*, %struct._object** %obj.addr, align 8
  %13 = load %struct._object**, %struct._object*** %bytes.addr, align 8
  store %struct._object* %12, %struct._object** %13, align 8
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8
  %14 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %15 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 1
  %17 = load i8*, i8** %tp_name, align 8
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.158, i32 0, i32 0), i8* %17)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.7, %if.end, %if.then.2
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @waddnwstr(%struct._win_st*, i32*, i32) #1

declare i32 @waddnstr(%struct._win_st*, i8*, i32) #1

declare i32* @PyUnicode_AsWideCharString(%struct._object*, i64*) #1

declare i32 @wattr_off(%struct._win_st*, i64, i8*) #1

declare i32 @wattr_on(%struct._win_st*, i64, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @PyCurses_ConvertToChtype(%struct.PyCursesWindowObject* %win, %struct._object* %obj, i64* %ch) #0 {
entry:
  %retval = alloca i32, align 4
  %win.addr = alloca %struct.PyCursesWindowObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %ch.addr = alloca i64*, align 8
  %value = alloca i64, align 8
  %bytes = alloca %struct._object*, align 8
  %encoding = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %long_overflow = alloca i32, align 4
  store %struct.PyCursesWindowObject* %win, %struct.PyCursesWindowObject** %win.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i64* %ch, i64** %ch.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 134217728
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call i64 @PyBytes_Size(%struct._object* %3)
  %cmp1 = icmp eq i64 %call, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call2 = call i8* @PyBytes_AsString(%struct._object* %4)
  %arrayidx = getelementptr i8, i8* %call2, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i64
  store i64 %conv, i64* %value, align 8
  br label %if.end.139

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_flags4 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 19
  %8 = load i64, i64* %tp_flags4, align 8
  %and5 = and i64 %8, 268435456
  %cmp6 = icmp ne i64 %and5, 0
  br i1 %cmp6, label %if.then.8, label %if.else.125

if.then.8:                                        ; preds = %if.else
  %9 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call9 = call i64 @PyUnicode_GetLength(%struct._object* %9)
  %cmp10 = icmp ne i64 %call9, 1
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.8
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %11 = load %struct._object*, %struct._object** %obj.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %12, i32 0, i32 1
  %13 = load i64, i64* %length, align 8
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.146, i32 0, i32 0), i64 %13)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.8
  %14 = load %struct._object*, %struct._object** %obj.addr, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %15, i32 0, i32 3
  %16 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %16, align 4
  %bf.lshr = lshr i32 %bf.load, 2
  %bf.clear = and i32 %bf.lshr, 7
  %cmp14 = icmp eq i32 %bf.clear, 1
  br i1 %cmp14, label %cond.true, label %cond.false.33

cond.true:                                        ; preds = %if.end
  %17 = load %struct._object*, %struct._object** %obj.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyASCIIObject*
  %state16 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %18, i32 0, i32 3
  %19 = bitcast %struct.anon* %state16 to i32*
  %bf.load17 = load i32, i32* %19, align 4
  %bf.lshr18 = lshr i32 %bf.load17, 5
  %bf.clear19 = and i32 %bf.lshr18, 1
  %tobool = icmp ne i32 %bf.clear19, 0
  br i1 %tobool, label %cond.true.20, label %cond.false.28

cond.true.20:                                     ; preds = %cond.true
  %20 = load %struct._object*, %struct._object** %obj.addr, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyASCIIObject*
  %state21 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %21, i32 0, i32 3
  %22 = bitcast %struct.anon* %state21 to i32*
  %bf.load22 = load i32, i32* %22, align 4
  %bf.lshr23 = lshr i32 %bf.load22, 6
  %bf.clear24 = and i32 %bf.lshr23, 1
  %tobool25 = icmp ne i32 %bf.clear24, 0
  br i1 %tobool25, label %cond.true.26, label %cond.false

cond.true.26:                                     ; preds = %cond.true.20
  %23 = load %struct._object*, %struct._object** %obj.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %24, i64 1
  %25 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end

cond.false:                                       ; preds = %cond.true.20
  %26 = load %struct._object*, %struct._object** %obj.addr, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyCompactUnicodeObject*
  %add.ptr27 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %27, i64 1
  %28 = bitcast %struct.PyCompactUnicodeObject* %add.ptr27 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.26
  %cond = phi i8* [ %25, %cond.true.26 ], [ %28, %cond.false ]
  br label %cond.end.29

cond.false.28:                                    ; preds = %cond.true
  %29 = load %struct._object*, %struct._object** %obj.addr, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %30, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %31 = load i8*, i8** %any, align 8
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.28, %cond.end
  %cond30 = phi i8* [ %cond, %cond.end ], [ %31, %cond.false.28 ]
  %arrayidx31 = getelementptr i8, i8* %cond30, i64 0
  %32 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %32 to i32
  br label %cond.end.91

cond.false.33:                                    ; preds = %if.end
  %33 = load %struct._object*, %struct._object** %obj.addr, align 8
  %34 = bitcast %struct._object* %33 to %struct.PyASCIIObject*
  %state34 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %34, i32 0, i32 3
  %35 = bitcast %struct.anon* %state34 to i32*
  %bf.load35 = load i32, i32* %35, align 4
  %bf.lshr36 = lshr i32 %bf.load35, 2
  %bf.clear37 = and i32 %bf.lshr36, 7
  %cmp38 = icmp eq i32 %bf.clear37, 2
  br i1 %cmp38, label %cond.true.40, label %cond.false.65

cond.true.40:                                     ; preds = %cond.false.33
  %36 = load %struct._object*, %struct._object** %obj.addr, align 8
  %37 = bitcast %struct._object* %36 to %struct.PyASCIIObject*
  %state41 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %37, i32 0, i32 3
  %38 = bitcast %struct.anon* %state41 to i32*
  %bf.load42 = load i32, i32* %38, align 4
  %bf.lshr43 = lshr i32 %bf.load42, 5
  %bf.clear44 = and i32 %bf.lshr43, 1
  %tobool45 = icmp ne i32 %bf.clear44, 0
  br i1 %tobool45, label %cond.true.46, label %cond.false.58

cond.true.46:                                     ; preds = %cond.true.40
  %39 = load %struct._object*, %struct._object** %obj.addr, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyASCIIObject*
  %state47 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %40, i32 0, i32 3
  %41 = bitcast %struct.anon* %state47 to i32*
  %bf.load48 = load i32, i32* %41, align 4
  %bf.lshr49 = lshr i32 %bf.load48, 6
  %bf.clear50 = and i32 %bf.lshr49, 1
  %tobool51 = icmp ne i32 %bf.clear50, 0
  br i1 %tobool51, label %cond.true.52, label %cond.false.54

cond.true.52:                                     ; preds = %cond.true.46
  %42 = load %struct._object*, %struct._object** %obj.addr, align 8
  %43 = bitcast %struct._object* %42 to %struct.PyASCIIObject*
  %add.ptr53 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %43, i64 1
  %44 = bitcast %struct.PyASCIIObject* %add.ptr53 to i8*
  br label %cond.end.56

cond.false.54:                                    ; preds = %cond.true.46
  %45 = load %struct._object*, %struct._object** %obj.addr, align 8
  %46 = bitcast %struct._object* %45 to %struct.PyCompactUnicodeObject*
  %add.ptr55 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %46, i64 1
  %47 = bitcast %struct.PyCompactUnicodeObject* %add.ptr55 to i8*
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.54, %cond.true.52
  %cond57 = phi i8* [ %44, %cond.true.52 ], [ %47, %cond.false.54 ]
  br label %cond.end.61

cond.false.58:                                    ; preds = %cond.true.40
  %48 = load %struct._object*, %struct._object** %obj.addr, align 8
  %49 = bitcast %struct._object* %48 to %struct.PyUnicodeObject*
  %data59 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %49, i32 0, i32 1
  %any60 = bitcast %union.anon* %data59 to i8**
  %50 = load i8*, i8** %any60, align 8
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.58, %cond.end.56
  %cond62 = phi i8* [ %cond57, %cond.end.56 ], [ %50, %cond.false.58 ]
  %51 = bitcast i8* %cond62 to i16*
  %arrayidx63 = getelementptr i16, i16* %51, i64 0
  %52 = load i16, i16* %arrayidx63, align 2
  %conv64 = zext i16 %52 to i32
  br label %cond.end.89

cond.false.65:                                    ; preds = %cond.false.33
  %53 = load %struct._object*, %struct._object** %obj.addr, align 8
  %54 = bitcast %struct._object* %53 to %struct.PyASCIIObject*
  %state66 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %54, i32 0, i32 3
  %55 = bitcast %struct.anon* %state66 to i32*
  %bf.load67 = load i32, i32* %55, align 4
  %bf.lshr68 = lshr i32 %bf.load67, 5
  %bf.clear69 = and i32 %bf.lshr68, 1
  %tobool70 = icmp ne i32 %bf.clear69, 0
  br i1 %tobool70, label %cond.true.71, label %cond.false.83

cond.true.71:                                     ; preds = %cond.false.65
  %56 = load %struct._object*, %struct._object** %obj.addr, align 8
  %57 = bitcast %struct._object* %56 to %struct.PyASCIIObject*
  %state72 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %57, i32 0, i32 3
  %58 = bitcast %struct.anon* %state72 to i32*
  %bf.load73 = load i32, i32* %58, align 4
  %bf.lshr74 = lshr i32 %bf.load73, 6
  %bf.clear75 = and i32 %bf.lshr74, 1
  %tobool76 = icmp ne i32 %bf.clear75, 0
  br i1 %tobool76, label %cond.true.77, label %cond.false.79

cond.true.77:                                     ; preds = %cond.true.71
  %59 = load %struct._object*, %struct._object** %obj.addr, align 8
  %60 = bitcast %struct._object* %59 to %struct.PyASCIIObject*
  %add.ptr78 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %60, i64 1
  %61 = bitcast %struct.PyASCIIObject* %add.ptr78 to i8*
  br label %cond.end.81

cond.false.79:                                    ; preds = %cond.true.71
  %62 = load %struct._object*, %struct._object** %obj.addr, align 8
  %63 = bitcast %struct._object* %62 to %struct.PyCompactUnicodeObject*
  %add.ptr80 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %63, i64 1
  %64 = bitcast %struct.PyCompactUnicodeObject* %add.ptr80 to i8*
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.79, %cond.true.77
  %cond82 = phi i8* [ %61, %cond.true.77 ], [ %64, %cond.false.79 ]
  br label %cond.end.86

cond.false.83:                                    ; preds = %cond.false.65
  %65 = load %struct._object*, %struct._object** %obj.addr, align 8
  %66 = bitcast %struct._object* %65 to %struct.PyUnicodeObject*
  %data84 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %66, i32 0, i32 1
  %any85 = bitcast %union.anon* %data84 to i8**
  %67 = load i8*, i8** %any85, align 8
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.83, %cond.end.81
  %cond87 = phi i8* [ %cond82, %cond.end.81 ], [ %67, %cond.false.83 ]
  %68 = bitcast i8* %cond87 to i32*
  %arrayidx88 = getelementptr i32, i32* %68, i64 0
  %69 = load i32, i32* %arrayidx88, align 4
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.end.86, %cond.end.61
  %cond90 = phi i32 [ %conv64, %cond.end.61 ], [ %69, %cond.end.86 ]
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.end.89, %cond.end.29
  %cond92 = phi i32 [ %conv32, %cond.end.29 ], [ %cond90, %cond.end.89 ]
  %conv93 = zext i32 %cond92 to i64
  store i64 %conv93, i64* %value, align 8
  %70 = load i64, i64* %value, align 8
  %cmp94 = icmp slt i64 128, %70
  br i1 %cmp94, label %if.then.96, label %if.end.124

if.then.96:                                       ; preds = %cond.end.91
  %71 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %win.addr, align 8
  %tobool97 = icmp ne %struct.PyCursesWindowObject* %71, null
  br i1 %tobool97, label %if.then.98, label %if.else.100

if.then.98:                                       ; preds = %if.then.96
  %72 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %win.addr, align 8
  %encoding99 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %72, i32 0, i32 2
  %73 = load i8*, i8** %encoding99, align 8
  store i8* %73, i8** %encoding, align 8
  br label %if.end.101

if.else.100:                                      ; preds = %if.then.96
  %74 = load i8*, i8** @screen_encoding, align 8
  store i8* %74, i8** %encoding, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.100, %if.then.98
  %75 = load %struct._object*, %struct._object** %obj.addr, align 8
  %76 = load i8*, i8** %encoding, align 8
  %call102 = call %struct._object* @PyUnicode_AsEncodedObject(%struct._object* %75, i8* %76, i8* null)
  store %struct._object* %call102, %struct._object** %bytes, align 8
  %77 = load %struct._object*, %struct._object** %bytes, align 8
  %cmp103 = icmp eq %struct._object* %77, null
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.end.101
  store i32 0, i32* %retval
  br label %return

if.end.106:                                       ; preds = %if.end.101
  %78 = load %struct._object*, %struct._object** %bytes, align 8
  %79 = bitcast %struct._object* %78 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %79, i32 0, i32 1
  %80 = load i64, i64* %ob_size, align 8
  %cmp107 = icmp eq i64 %80, 1
  br i1 %cmp107, label %if.then.109, label %if.else.112

if.then.109:                                      ; preds = %if.end.106
  %81 = load %struct._object*, %struct._object** %bytes, align 8
  %82 = bitcast %struct._object* %81 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %82, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %arrayidx110 = getelementptr i8, i8* %arraydecay, i64 0
  %83 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %83 to i64
  store i64 %conv111, i64* %value, align 8
  br label %if.end.113

if.else.112:                                      ; preds = %if.end.106
  store i64 -1, i64* %value, align 8
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.112, %if.then.109
  br label %do.body

do.body:                                          ; preds = %if.end.113
  %84 = load %struct._object*, %struct._object** %bytes, align 8
  store %struct._object* %84, %struct._object** %_py_decref_tmp, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0
  %86 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %86, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp114 = icmp ne i64 %dec, 0
  br i1 %cmp114, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %do.body
  br label %if.end.119

if.else.117:                                      ; preds = %do.body
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type118 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type118, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %89(%struct._object* %90)
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.117, %if.then.116
  br label %do.end

do.end:                                           ; preds = %if.end.119
  %91 = load i64, i64* %value, align 8
  %cmp120 = icmp slt i64 %91, 0
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %do.end
  br label %overflow

if.end.123:                                       ; preds = %do.end
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %cond.end.91
  br label %if.end.138

if.else.125:                                      ; preds = %if.else
  %92 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type126 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 1
  %93 = load %struct._typeobject*, %struct._typeobject** %ob_type126, align 8
  %cmp127 = icmp eq %struct._typeobject* %93, @PyLong_Type
  br i1 %cmp127, label %if.then.129, label %if.else.134

if.then.129:                                      ; preds = %if.else.125
  %94 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call130 = call i64 @PyLong_AsLongAndOverflow(%struct._object* %94, i32* %long_overflow)
  store i64 %call130, i64* %value, align 8
  %95 = load i32, i32* %long_overflow, align 4
  %tobool131 = icmp ne i32 %95, 0
  br i1 %tobool131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.then.129
  br label %overflow

if.end.133:                                       ; preds = %if.then.129
  br label %if.end.137

if.else.134:                                      ; preds = %if.else.125
  %96 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %97 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type135 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 1
  %98 = load %struct._typeobject*, %struct._typeobject** %ob_type135, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %98, i32 0, i32 1
  %99 = load i8*, i8** %tp_name, align 8
  %call136 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %96, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.148, i32 0, i32 0), i8* %99)
  store i32 0, i32* %retval
  br label %return

if.end.137:                                       ; preds = %if.end.133
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.end.124
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.then
  %100 = load i64, i64* %value, align 8
  %101 = load i64*, i64** %ch.addr, align 8
  store i64 %100, i64* %101, align 8
  %102 = load i64*, i64** %ch.addr, align 8
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %value, align 8
  %cmp140 = icmp ne i64 %103, %104
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.139
  br label %overflow

if.end.143:                                       ; preds = %if.end.139
  store i32 1, i32* %retval
  br label %return

overflow:                                         ; preds = %if.then.142, %if.then.132, %if.then.122
  %105 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.149, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %overflow, %if.end.143, %if.else.134, %if.then.105, %if.then.12
  %106 = load i32, i32* %retval
  ret i32 %106
}

declare i32 @wbkgd(%struct._win_st*, i64) #1

declare i64 @PyUnicode_GetLength(%struct._object*) #1

declare %struct._object* @PyUnicode_AsEncodedObject(%struct._object*, i8*, i8*) #1

declare i32 @wchgat(%struct._win_st*, i32, i64, i16 signext, i8*) #1

declare i32 @wtouchln(%struct._win_st*, i32, i32, i32) #1

declare void @wbkgdset(%struct._win_st*, i64) #1

declare i32 @wborder(%struct._win_st*, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare i32 @wclear(%struct._win_st*) #1

declare i32 @clearok(%struct._win_st*, i1 zeroext) #1

declare i32 @wclrtobot(%struct._win_st*) #1

declare i32 @wclrtoeol(%struct._win_st*) #1

declare void @wcursyncup(%struct._win_st*) #1

declare i32 @wdelch(%struct._win_st*) #1

declare i32 @winsdelln(%struct._win_st*, i32) #1

declare %struct._win_st* @derwin(%struct._win_st*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_New(%struct._win_st* %win, i8* %encoding) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %win.addr = alloca %struct._win_st*, align 8
  %encoding.addr = alloca i8*, align 8
  %wo = alloca %struct.PyCursesWindowObject*, align 8
  %codeset = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._win_st* %win, %struct._win_st** %win.addr, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  %0 = load i8*, i8** %encoding.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %call = call i8* @nl_langinfo(i32 14) #3
  store i8* %call, i8** %codeset, align 8
  %1 = load i8*, i8** %codeset, align 8
  %cmp1 = icmp ne i8* %1, null
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load i8*, i8** %codeset, align 8
  %arrayidx = getelementptr i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true
  %4 = load i8*, i8** %codeset, align 8
  store i8* %4, i8** %encoding.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %land.lhs.true, %if.then
  %5 = load i8*, i8** %encoding.addr, align 8
  %cmp5 = icmp eq i8* %5, null
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.185, i32 0, i32 0), i8** %encoding.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %6 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyCursesWindow_Type, i32 0, i32 2), align 8
  %call10 = call i8* @PyObject_Malloc(i64 %6)
  %7 = bitcast i8* %call10 to %struct._object*
  %call11 = call %struct._object* @PyObject_Init(%struct._object* %7, %struct._typeobject* @PyCursesWindow_Type)
  %8 = bitcast %struct._object* %call11 to %struct.PyCursesWindowObject*
  store %struct.PyCursesWindowObject* %8, %struct.PyCursesWindowObject** %wo, align 8
  %9 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %wo, align 8
  %cmp12 = icmp eq %struct.PyCursesWindowObject* %9, null
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.9
  %10 = load %struct._win_st*, %struct._win_st** %win.addr, align 8
  %11 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %wo, align 8
  %win16 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %11, i32 0, i32 1
  store %struct._win_st* %10, %struct._win_st** %win16, align 8
  %12 = load i8*, i8** %encoding.addr, align 8
  %call17 = call i8* @_PyMem_Strdup(i8* %12)
  %13 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %wo, align 8
  %encoding18 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %13, i32 0, i32 2
  store i8* %call17, i8** %encoding18, align 8
  %14 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %wo, align 8
  %encoding19 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %14, i32 0, i32 2
  %15 = load i8*, i8** %encoding19, align 8
  %cmp20 = icmp eq i8* %15, null
  br i1 %cmp20, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %if.end.15
  br label %do.body

do.body:                                          ; preds = %if.then.22
  %16 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %wo, align 8
  %17 = bitcast %struct.PyCursesWindowObject* %16 to %struct._object*
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp23 = icmp ne i64 %dec, 0
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %do.body
  br label %if.end.26

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.25
  br label %do.end

do.end:                                           ; preds = %if.end.26
  %call27 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.28:                                        ; preds = %if.end.15
  %24 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %wo, align 8
  %25 = bitcast %struct.PyCursesWindowObject* %24 to %struct._object*
  store %struct._object* %25, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.28, %do.end, %if.then.14
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) #4

declare %struct._object* @PyObject_Init(%struct._object*, %struct._typeobject*) #1

declare i8* @PyObject_Malloc(i64) #1

declare i8* @_PyMem_Strdup(i8*) #1

declare i32 @pechochar(%struct._win_st*, i64) #1

declare i32 @wechochar(%struct._win_st*, i64) #1

declare zeroext i1 @wenclose(%struct._win_st*, i32, i32) #1

declare i32 @werase(%struct._win_st*) #1

declare %struct._object* @_Py_BuildValue_SizeT(i8*, ...) #1

declare %struct._ts* @PyEval_SaveThread() #1

declare i32 @wgetch(%struct._win_st*) #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

declare i32 @PyErr_CheckSignals() #1

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare i32 @wget_wch(%struct._win_st*, i32*) #1

declare %struct._object* @PyUnicode_FromOrdinal(i32) #1

declare i32 @wgetnstr(%struct._win_st*, i8*, i32) #1

declare i32 @whline(%struct._win_st*, i64, i32) #1

declare void @idcok(%struct._win_st*, i1 zeroext) #1

declare i32 @idlok(%struct._win_st*, i1 zeroext) #1

declare void @immedok(%struct._win_st*, i1 zeroext) #1

declare i64 @winch(%struct._win_st*) #1

declare %struct._object* @PyLong_FromUnsignedLong(i64) #1

declare i32 @winsch(%struct._win_st*, i64) #1

declare i32 @wins_nwstr(%struct._win_st*, i32*, i32) #1

declare i32 @winsnstr(%struct._win_st*, i8*, i32) #1

declare i32 @winnstr(%struct._win_st*, i8*, i32) #1

declare zeroext i1 @is_linetouched(%struct._win_st*, i32) #1

declare zeroext i1 @is_wintouched(%struct._win_st*) #1

declare i32 @keypad(%struct._win_st*, i1 zeroext) #1

declare i32 @leaveok(%struct._win_st*, i1 zeroext) #1

declare i32 @mvderwin(%struct._win_st*, i32, i32) #1

declare i32 @mvwin(%struct._win_st*, i32, i32) #1

declare i32 @nodelay(%struct._win_st*, i1 zeroext) #1

declare i32 @notimeout(%struct._win_st*, i1 zeroext) #1

declare i32 @pnoutrefresh(%struct._win_st*, i32, i32, i32, i32, i32, i32) #1

declare i32 @wnoutrefresh(%struct._win_st*) #1

declare i32 @copywin(%struct._win_st*, %struct._win_st*, i32, i32, i32, i32, i32, i32, i32) #1

declare i32 @overlay(%struct._win_st*, %struct._win_st*) #1

declare i32 @overwrite(%struct._win_st*, %struct._win_st*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare i32 @mkstemp64(i8*) #1

declare %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object*, i8*) #1

declare i32 @_Py_set_inheritable(i32, i32, i32*) #1

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #4

declare i32 @putwin(%struct._win_st*, %struct._IO_FILE*) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare %struct._object* @_PyObject_CallMethodId_SizeT(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @close(i32) #1

; Function Attrs: nounwind
declare i32 @remove(i8*) #4

declare i32 @wredrawln(%struct._win_st*, i32, i32) #1

declare i32 @prefresh(%struct._win_st*, i32, i32, i32, i32, i32, i32) #1

declare i32 @wrefresh(%struct._win_st*) #1

declare i32 @wresize(%struct._win_st*, i32, i32) #1

declare i32 @wscrl(%struct._win_st*, i32) #1

declare i32 @scrollok(%struct._win_st*, i1 zeroext) #1

declare i32 @wsetscrreg(%struct._win_st*, i32, i32) #1

declare %struct._win_st* @subpad(%struct._win_st*, i32, i32, i32, i32) #1

declare %struct._win_st* @subwin(%struct._win_st*, i32, i32, i32, i32) #1

declare void @wsyncdown(%struct._win_st*) #1

declare i32 @syncok(%struct._win_st*, i1 zeroext) #1

declare void @wsyncup(%struct._win_st*) #1

declare void @wtimeout(%struct._win_st*, i32) #1

declare i32 @wvline(%struct._win_st*, i64, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCursesWindow_get_encoding(%struct.PyCursesWindowObject* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %encoding = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %0, i32 0, i32 2
  %1 = load i8*, i8** %encoding, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @PyCursesWindow_set_encoding(%struct.PyCursesWindowObject* %self, %struct._object* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %value.addr = alloca %struct._object*, align 8
  %ascii = alloca %struct._object*, align 8
  %encoding = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.251, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 268435456
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.252, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call %struct._object* @PyUnicode_AsASCIIString(%struct._object* %6)
  store %struct._object* %call, %struct._object** %ascii, align 8
  %7 = load %struct._object*, %struct._object** %ascii, align 8
  %cmp4 = icmp eq %struct._object* %7, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** %ascii, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %9, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %call7 = call i8* @_PyMem_Strdup(i8* %arraydecay)
  store i8* %call7, i8** %encoding, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %10 = load %struct._object*, %struct._object** %ascii, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %17 = load i8*, i8** %encoding, align 8
  %cmp12 = icmp eq i8* %17, null
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %call14 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %do.end
  %18 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %encoding16 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %18, i32 0, i32 2
  %19 = load i8*, i8** %encoding16, align 8
  call void @PyMem_Free(i8* %19)
  %20 = load i8*, i8** %encoding, align 8
  %21 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %self.addr, align 8
  %encoding17 = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %21, i32 0, i32 2
  store i8* %20, i8** %encoding17, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.13, %if.then.5, %if.then.2, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare %struct._object* @PyUnicode_AsASCIIString(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_baudrate(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @baudrate()
  %conv = sext i32 %call to i64
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_beep(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @beep()
  %call1 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.258, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_can_change_color(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @can_change_color()
  %conv = zext i1 %call to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc5 = add i64 %3, 1
  store i64 %inc5, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_cbreak(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %flag = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %flag, align 4
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %2)
  switch i64 %call, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %if.end
  %call1 = call i32 @cbreak()
  %call2 = call %struct._object* @PyCursesCheckERR(i32 %call1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.260, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

sw.bb.3:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.176, i32 0, i32 0), i32* %flag)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.3
  %4 = load i32, i32* %flag, align 4
  %tobool7 = icmp ne i32 %4, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  %call9 = call i32 @cbreak()
  %call10 = call %struct._object* @PyCursesCheckERR(i32 %call9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.260, i32 0, i32 0))
  store %struct._object* %call10, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.6
  %call11 = call i32 @nocbreak()
  %call12 = call %struct._object* @PyCursesCheckERR(i32 %call11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.260, i32 0, i32 0))
  store %struct._object* %call12, %struct._object** %retval
  br label %return

sw.default:                                       ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.330, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.default, %if.else, %if.then.8, %if.then.5, %sw.bb, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_Color_Content(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %color = alloca i16, align 2
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @initialisedcolors, align 4
  %cmp1 = icmp ne i32 %2, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.255, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.331, i32 0, i32 0), i16* %color)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.3
  %5 = load i16, i16* %color, align 2
  %call6 = call i32 @color_content(i16 signext %5, i16* %r, i16* %g, i16* %b)
  %cmp7 = icmp ne i32 %call6, -1
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.5
  %6 = load i16, i16* %r, align 2
  %conv = sext i16 %6 to i32
  %7 = load i16, i16* %g, align 2
  %conv9 = sext i16 %7 to i32
  %8 = load i16, i16* %b, align 2
  %conv10 = sext i16 %8 to i32
  %call11 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.332, i32 0, i32 0), i32 %conv, i32 %conv9, i32 %conv10)
  store %struct._object* %call11, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.5
  %9 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.333, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.8, %if.then.4, %if.then.2, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_color_pair(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %n = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @initialisedcolors, align 4
  %cmp1 = icmp ne i32 %2, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.255, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.334, i32 0, i32 0), i32* %n)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.3
  %5 = load i32, i32* %n, align 4
  %shl = shl i32 %5, 8
  %conv = sext i32 %shl to i64
  %call6 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then.2, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_Curs_Set(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %vis = alloca i32, align 4
  %erg = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.335, i32 0, i32 0), i32* %vis)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %vis, align 4
  %call3 = call i32 @curs_set(i32 %3)
  store i32 %call3, i32* %erg, align 4
  %4 = load i32, i32* %erg, align 4
  %cmp4 = icmp eq i32 %4, -1
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.2
  %5 = load i32, i32* %erg, align 4
  %call6 = call %struct._object* @PyCursesCheckERR(i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.263, i32 0, i32 0))
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.2
  %6 = load i32, i32* %erg, align 4
  %conv = sext i32 %6 to i64
  %call8 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5, %if.then.1, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_def_prog_mode(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @def_prog_mode()
  %call1 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.264, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_def_shell_mode(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @def_shell_mode()
  %call1 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.265, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_Delay_Output(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ms = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.336, i32 0, i32 0), i32* %ms)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %ms, align 4
  %call3 = call i32 @delay_output(i32 %3)
  %call4 = call %struct._object* @PyCursesCheckERR(i32 %call3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.266, i32 0, i32 0))
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_doupdate(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @doupdate()
  %call1 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.267, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_echo(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %flag = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %flag, align 4
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %2)
  switch i64 %call, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %if.end
  %call1 = call i32 @echo()
  %call2 = call %struct._object* @PyCursesCheckERR(i32 %call1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.268, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

sw.bb.3:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.176, i32 0, i32 0), i32* %flag)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.3
  %4 = load i32, i32* %flag, align 4
  %tobool7 = icmp ne i32 %4, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  %call9 = call i32 @echo()
  %call10 = call %struct._object* @PyCursesCheckERR(i32 %call9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.268, i32 0, i32 0))
  store %struct._object* %call10, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.6
  %call11 = call i32 @noecho()
  %call12 = call %struct._object* @PyCursesCheckERR(i32 %call11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.268, i32 0, i32 0))
  store %struct._object* %call12, %struct._object** %retval
  br label %return

sw.default:                                       ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.337, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.default, %if.else, %if.then.8, %if.then.5, %sw.bb, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_endwin(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @endwin()
  %call1 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.269, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_EraseChar(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %ch = alloca i8, align 1
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call signext i8 @erasechar()
  store i8 %call, i8* %ch, align 1
  %call1 = call %struct._object* @PyBytes_FromStringAndSize(i8* %ch, i64 1)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_filter(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  call void @filter()
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_flash(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @flash()
  %call1 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.272, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_flushinp(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @flushinp()
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_GetMouse(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %rtn = alloca i32, align 4
  %event = alloca %struct.MEVENT, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @getmouse(%struct.MEVENT* %event)
  store i32 %call, i32* %rtn, align 4
  %2 = load i32, i32* %rtn, align 4
  %cmp1 = icmp eq i32 %2, -1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.338, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %id = getelementptr inbounds %struct.MEVENT, %struct.MEVENT* %event, i32 0, i32 0
  %4 = load i16, i16* %id, align 2
  %conv = sext i16 %4 to i32
  %x = getelementptr inbounds %struct.MEVENT, %struct.MEVENT* %event, i32 0, i32 1
  %5 = load i32, i32* %x, align 4
  %y = getelementptr inbounds %struct.MEVENT, %struct.MEVENT* %event, i32 0, i32 2
  %6 = load i32, i32* %y, align 4
  %z = getelementptr inbounds %struct.MEVENT, %struct.MEVENT* %event, i32 0, i32 3
  %7 = load i32, i32* %z, align 4
  %bstate = getelementptr inbounds %struct.MEVENT, %struct.MEVENT* %event, i32 0, i32 4
  %8 = load i64, i64* %bstate, align 8
  %call4 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.339, i32 0, i32 0), i32 %conv, i32 %5, i32 %6, i32 %7, i64 %8)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_UngetMouse(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %event = alloca %struct.MEVENT, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %id = getelementptr inbounds %struct.MEVENT, %struct.MEVENT* %event, i32 0, i32 0
  %x = getelementptr inbounds %struct.MEVENT, %struct.MEVENT* %event, i32 0, i32 1
  %y = getelementptr inbounds %struct.MEVENT, %struct.MEVENT* %event, i32 0, i32 2
  %z = getelementptr inbounds %struct.MEVENT, %struct.MEVENT* %event, i32 0, i32 3
  %bstate = getelementptr inbounds %struct.MEVENT, %struct.MEVENT* %event, i32 0, i32 4
  %3 = bitcast i64* %bstate to i32*
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.340, i32 0, i32 0), i16* %id, i32* %x, i32* %y, i32* %z, i32* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %call3 = call i32 @ungetmouse(%struct.MEVENT* %event)
  %call4 = call %struct._object* @PyCursesCheckERR(i32 %call3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.275, i32 0, i32 0))
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_getsyx(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i32 0, i32* %x, align 4
  store i32 0, i32* %y, align 4
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load %struct._win_st*, %struct._win_st** @newscr, align 8
  %tobool = icmp ne %struct._win_st* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.15

if.then.1:                                        ; preds = %do.body
  %3 = load %struct._win_st*, %struct._win_st** @newscr, align 8
  %tobool2 = icmp ne %struct._win_st* %3, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1
  %4 = load %struct._win_st*, %struct._win_st** @newscr, align 8
  %_leaveok = getelementptr inbounds %struct._win_st, %struct._win_st* %4, i32 0, i32 11
  %5 = load i8, i8* %_leaveok, align 1
  %tobool3 = trunc i8 %5 to i1
  br i1 %tobool3, label %if.then.4, label %if.else

cond.false:                                       ; preds = %if.then.1
  br i1 false, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %cond.false, %cond.true
  store i32 -1, i32* %x, align 4
  store i32 -1, i32* %y, align 4
  br label %if.end.14

if.else:                                          ; preds = %cond.false, %cond.true
  %6 = load %struct._win_st*, %struct._win_st** @newscr, align 8
  %tobool5 = icmp ne %struct._win_st* %6, null
  br i1 %tobool5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %if.else
  %7 = load %struct._win_st*, %struct._win_st** @newscr, align 8
  %_cury = getelementptr inbounds %struct._win_st, %struct._win_st* %7, i32 0, i32 0
  %8 = load i16, i16* %_cury, align 2
  %conv = sext i16 %8 to i32
  br label %cond.end

cond.false.7:                                     ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false.7, %cond.true.6
  %cond = phi i32 [ %conv, %cond.true.6 ], [ -1, %cond.false.7 ]
  store i32 %cond, i32* %y, align 4
  %9 = load %struct._win_st*, %struct._win_st** @newscr, align 8
  %tobool8 = icmp ne %struct._win_st* %9, null
  br i1 %tobool8, label %cond.true.9, label %cond.false.11

cond.true.9:                                      ; preds = %cond.end
  %10 = load %struct._win_st*, %struct._win_st** @newscr, align 8
  %_curx = getelementptr inbounds %struct._win_st, %struct._win_st* %10, i32 0, i32 1
  %11 = load i16, i16* %_curx, align 2
  %conv10 = sext i16 %11 to i32
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.9
  %cond13 = phi i32 [ %conv10, %cond.true.9 ], [ -1, %cond.false.11 ]
  store i32 %cond13, i32* %x, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %cond.end.12, %if.then.4
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.15
  %12 = load i32, i32* %y, align 4
  %13 = load i32, i32* %x, align 4
  %call = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.341, i32 0, i32 0), i32 %12, i32 %13)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_GetWin(%struct.PyCursesWindowObject* %self, %struct._object* %stream) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyCursesWindowObject*, align 8
  %stream.addr = alloca %struct._object*, align 8
  %fn = alloca [100 x i8], align 16
  %fd = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %data = alloca %struct._object*, align 8
  %datalen = alloca i64, align 8
  %win = alloca %struct._win_st*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp36 = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  store %struct.PyCursesWindowObject* %self, %struct.PyCursesWindowObject** %self.addr, align 8
  store %struct._object* %stream, %struct._object** %stream.addr, align 8
  store i32 -1, i32* %fd, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  store %struct._object* null, %struct._object** %res, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %fn, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.343, i32 0, i32 0)) #3
  %arraydecay1 = getelementptr inbounds [100 x i8], [100 x i8]* %fn, i32 0, i32 0
  %call2 = call i32 @mkstemp64(i8* %arraydecay1)
  store i32 %call2, i32* %fd, align 4
  %2 = load i32, i32* %fd, align 4
  %cmp3 = icmp slt i32 %2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %arraydecay5 = getelementptr inbounds [100 x i8], [100 x i8]* %fn, i32 0, i32 0
  %call6 = call %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object* %3, i8* %arraydecay5)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %4 = load i32, i32* %fd, align 4
  %call8 = call i32 @_Py_set_inheritable(i32 %4, i32 0, i32* null)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  br label %error

if.end.11:                                        ; preds = %if.end.7
  %5 = load i32, i32* %fd, align 4
  %call12 = call %struct._IO_FILE* @fdopen(i32 %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i32 0, i32 0)) #3
  store %struct._IO_FILE* %call12, %struct._IO_FILE** %fp, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp13 = icmp eq %struct._IO_FILE* %6, null
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.11
  %7 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %arraydecay15 = getelementptr inbounds [100 x i8], [100 x i8]* %fn, i32 0, i32 0
  %call16 = call %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object* %7, i8* %arraydecay15)
  br label %error

if.end.17:                                        ; preds = %if.end.11
  %8 = load %struct._object*, %struct._object** %stream.addr, align 8
  %call18 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %8, %struct._Py_Identifier* @PyCurses_GetWin.PyId_read, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.193, i32 0, i32 0))
  store %struct._object* %call18, %struct._object** %data, align 8
  %9 = load %struct._object*, %struct._object** %data, align 8
  %cmp19 = icmp eq %struct._object* %9, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  br label %error

if.end.21:                                        ; preds = %if.end.17
  %10 = load %struct._object*, %struct._object** %data, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 19
  %12 = load i64, i64* %tp_flags, align 8
  %and = and i64 %12, 134217728
  %cmp22 = icmp ne i64 %and, 0
  br i1 %cmp22, label %if.end.30, label %if.then.23

if.then.23:                                       ; preds = %if.end.21
  %13 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %14 = load %struct._object*, %struct._object** %data, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 1
  %16 = load i8*, i8** %tp_name, align 8
  %call25 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.344, i32 0, i32 0), i8* %16)
  br label %do.body

do.body:                                          ; preds = %if.then.23
  %17 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp26 = icmp ne i64 %dec, 0
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %do.body
  br label %if.end.29

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.27
  br label %do.end

do.end:                                           ; preds = %if.end.29
  br label %error

if.end.30:                                        ; preds = %if.end.21
  %24 = load %struct._object*, %struct._object** %data, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %25, i32 0, i32 1
  %26 = load i64, i64* %ob_size, align 8
  store i64 %26, i64* %datalen, align 8
  %27 = load %struct._object*, %struct._object** %data, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %28, i32 0, i32 2
  %arraydecay31 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %29 = load i64, i64* %datalen, align 8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call32 = call i64 @fwrite(i8* %arraydecay31, i64 1, i64 %29, %struct._IO_FILE* %30)
  %31 = load i64, i64* %datalen, align 8
  %cmp33 = icmp ne i64 %call32, %31
  br i1 %cmp33, label %if.then.34, label %if.end.48

if.then.34:                                       ; preds = %if.end.30
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  %32 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp36, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt37, align 8
  %dec38 = add i64 %34, -1
  store i64 %dec38, i64* %ob_refcnt37, align 8
  %cmp39 = icmp ne i64 %dec38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.35
  br label %if.end.44

if.else.41:                                       ; preds = %do.body.35
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  call void %37(%struct._object* %38)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %39 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %arraydecay46 = getelementptr inbounds [100 x i8], [100 x i8]* %fn, i32 0, i32 0
  %call47 = call %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object* %39, i8* %arraydecay46)
  br label %error

if.end.48:                                        ; preds = %if.end.30
  br label %do.body.49

do.body.49:                                       ; preds = %if.end.48
  %40 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp50, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt51, align 8
  %dec52 = add i64 %42, -1
  store i64 %dec52, i64* %ob_refcnt51, align 8
  %cmp53 = icmp ne i64 %dec52, 0
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.49
  br label %if.end.58

if.else.55:                                       ; preds = %do.body.49
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  call void %45(%struct._object* %46)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call60 = call i32 @fseek(%struct._IO_FILE* %47, i64 0, i32 0)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call61 = call %struct._win_st* @getwin(%struct._IO_FILE* %48)
  store %struct._win_st* %call61, %struct._win_st** %win, align 8
  %49 = load %struct._win_st*, %struct._win_st** %win, align 8
  %cmp62 = icmp eq %struct._win_st* %49, null
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %do.end.59
  %50 = load %struct._object*, %struct._object** @PyCursesError, align 8
  %51 = load i8*, i8** @catchall_NULL, align 8
  call void @PyErr_SetString(%struct._object* %50, i8* %51)
  br label %error

if.end.64:                                        ; preds = %do.end.59
  %52 = load %struct._win_st*, %struct._win_st** %win, align 8
  %call65 = call %struct._object* @PyCursesWindow_New(%struct._win_st* %52, i8* null)
  store %struct._object* %call65, %struct._object** %res, align 8
  br label %error

error:                                            ; preds = %if.end.64, %if.then.63, %do.end.45, %do.end, %if.then.20, %if.then.14, %if.then.10
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp66 = icmp ne %struct._IO_FILE* %53, null
  br i1 %cmp66, label %if.then.67, label %if.else.69

if.then.67:                                       ; preds = %error
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call68 = call i32 @fclose(%struct._IO_FILE* %54)
  br label %if.end.74

if.else.69:                                       ; preds = %error
  %55 = load i32, i32* %fd, align 4
  %cmp70 = icmp ne i32 %55, -1
  br i1 %cmp70, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.else.69
  %56 = load i32, i32* %fd, align 4
  %call72 = call i32 @close(i32 %56)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.else.69
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.67
  %arraydecay75 = getelementptr inbounds [100 x i8], [100 x i8]* %fn, i32 0, i32 0
  %call76 = call i32 @remove(i8* %arraydecay75) #3
  %57 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %57, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.74, %if.then.4, %if.then
  %58 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %58
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_has_colors(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @has_colors()
  %conv = zext i1 %call to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc5 = add i64 %3, 1
  store i64 %inc5, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_has_ic(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @has_ic()
  %conv = zext i1 %call to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc5 = add i64 %3, 1
  store i64 %inc5, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_has_il(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @has_il()
  %conv = zext i1 %call to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc5 = add i64 %3, 1
  store i64 %inc5, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_has_key(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ch = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.345, i32 0, i32 0), i32* %ch)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %ch, align 4
  %call3 = call i32 @has_key(i32 %3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.2
  %4 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %5 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc7 = add i64 %5, 1
  store i64 %inc7, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then.1, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_HalfDelay(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %tenths = alloca i8, align 1
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.346, i32 0, i32 0), i8* %tenths)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i8, i8* %tenths, align 1
  %conv = zext i8 %3 to i32
  %call3 = call i32 @halfdelay(i32 %conv)
  %call4 = call %struct._object* @PyCursesCheckERR(i32 %call3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.282, i32 0, i32 0))
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_Init_Color(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %color = alloca i16, align 2
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @initialisedcolors, align 4
  %cmp1 = icmp ne i32 %2, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.255, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %4)
  switch i64 %call, label %sw.default [
    i64 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.347, i32 0, i32 0), i16* %color, i16* %r, i16* %g, i16* %b)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.348, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.6
  %7 = load i16, i16* %color, align 2
  %8 = load i16, i16* %r, align 2
  %9 = load i16, i16* %g, align 2
  %10 = load i16, i16* %b, align 2
  %call7 = call i32 @init_color(i16 signext %7, i16 signext %8, i16 signext %9, i16 signext %10)
  %call8 = call %struct._object* @PyCursesCheckERR(i32 %call7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.283, i32 0, i32 0))
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then.5, %if.then.2, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_Init_Pair(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pair = alloca i16, align 2
  %f = alloca i16, align 2
  %b = alloca i16, align 2
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @initialisedcolors, align 4
  %cmp1 = icmp ne i32 %2, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.255, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %4)
  %cmp4 = icmp ne i64 %call, 3
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.349, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** %args.addr, align 8
  %call7 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.350, i32 0, i32 0), i16* %pair, i16* %f, i16* %b)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.6
  %7 = load i16, i16* %pair, align 2
  %8 = load i16, i16* %f, align 2
  %9 = load i16, i16* %b, align 2
  %call10 = call i32 @init_pair(i16 signext %7, i16 signext %8, i16 signext %9)
  %call11 = call %struct._object* @PyCursesCheckERR(i32 %call10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.284, i32 0, i32 0))
  store %struct._object* %call11, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then.5, %if.then.2, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_InitScr(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %win = alloca %struct._win_st*, align 8
  %winobj = alloca %struct.PyCursesWindowObject*, align 8
  %o = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %o17 = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  %o38 = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  %o59 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  %o80 = alloca %struct._object*, align 8
  %_py_decref_tmp88 = alloca %struct._object*, align 8
  %o101 = alloca %struct._object*, align 8
  %_py_decref_tmp109 = alloca %struct._object*, align 8
  %o122 = alloca %struct._object*, align 8
  %_py_decref_tmp130 = alloca %struct._object*, align 8
  %o143 = alloca %struct._object*, align 8
  %_py_decref_tmp151 = alloca %struct._object*, align 8
  %o164 = alloca %struct._object*, align 8
  %_py_decref_tmp172 = alloca %struct._object*, align 8
  %o185 = alloca %struct._object*, align 8
  %_py_decref_tmp193 = alloca %struct._object*, align 8
  %o206 = alloca %struct._object*, align 8
  %_py_decref_tmp214 = alloca %struct._object*, align 8
  %o227 = alloca %struct._object*, align 8
  %_py_decref_tmp235 = alloca %struct._object*, align 8
  %o248 = alloca %struct._object*, align 8
  %_py_decref_tmp256 = alloca %struct._object*, align 8
  %o269 = alloca %struct._object*, align 8
  %_py_decref_tmp277 = alloca %struct._object*, align 8
  %o290 = alloca %struct._object*, align 8
  %_py_decref_tmp298 = alloca %struct._object*, align 8
  %o311 = alloca %struct._object*, align 8
  %_py_decref_tmp319 = alloca %struct._object*, align 8
  %o332 = alloca %struct._object*, align 8
  %_py_decref_tmp340 = alloca %struct._object*, align 8
  %o353 = alloca %struct._object*, align 8
  %_py_decref_tmp361 = alloca %struct._object*, align 8
  %o374 = alloca %struct._object*, align 8
  %_py_decref_tmp382 = alloca %struct._object*, align 8
  %o395 = alloca %struct._object*, align 8
  %_py_decref_tmp403 = alloca %struct._object*, align 8
  %o416 = alloca %struct._object*, align 8
  %_py_decref_tmp424 = alloca %struct._object*, align 8
  %o437 = alloca %struct._object*, align 8
  %_py_decref_tmp445 = alloca %struct._object*, align 8
  %o458 = alloca %struct._object*, align 8
  %_py_decref_tmp466 = alloca %struct._object*, align 8
  %o479 = alloca %struct._object*, align 8
  %_py_decref_tmp487 = alloca %struct._object*, align 8
  %o500 = alloca %struct._object*, align 8
  %_py_decref_tmp508 = alloca %struct._object*, align 8
  %o521 = alloca %struct._object*, align 8
  %_py_decref_tmp529 = alloca %struct._object*, align 8
  %o542 = alloca %struct._object*, align 8
  %_py_decref_tmp550 = alloca %struct._object*, align 8
  %o563 = alloca %struct._object*, align 8
  %_py_decref_tmp571 = alloca %struct._object*, align 8
  %o584 = alloca %struct._object*, align 8
  %_py_decref_tmp592 = alloca %struct._object*, align 8
  %o605 = alloca %struct._object*, align 8
  %_py_decref_tmp613 = alloca %struct._object*, align 8
  %o626 = alloca %struct._object*, align 8
  %_py_decref_tmp634 = alloca %struct._object*, align 8
  %o647 = alloca %struct._object*, align 8
  %_py_decref_tmp655 = alloca %struct._object*, align 8
  %o668 = alloca %struct._object*, align 8
  %_py_decref_tmp676 = alloca %struct._object*, align 8
  %o689 = alloca %struct._object*, align 8
  %_py_decref_tmp697 = alloca %struct._object*, align 8
  %o710 = alloca %struct._object*, align 8
  %_py_decref_tmp718 = alloca %struct._object*, align 8
  %o731 = alloca %struct._object*, align 8
  %_py_decref_tmp739 = alloca %struct._object*, align 8
  %o752 = alloca %struct._object*, align 8
  %_py_decref_tmp760 = alloca %struct._object*, align 8
  %o773 = alloca %struct._object*, align 8
  %_py_decref_tmp781 = alloca %struct._object*, align 8
  %o794 = alloca %struct._object*, align 8
  %_py_decref_tmp802 = alloca %struct._object*, align 8
  %o815 = alloca %struct._object*, align 8
  %_py_decref_tmp823 = alloca %struct._object*, align 8
  %o836 = alloca %struct._object*, align 8
  %_py_decref_tmp844 = alloca %struct._object*, align 8
  %o857 = alloca %struct._object*, align 8
  %_py_decref_tmp865 = alloca %struct._object*, align 8
  %o878 = alloca %struct._object*, align 8
  %_py_decref_tmp886 = alloca %struct._object*, align 8
  %o899 = alloca %struct._object*, align 8
  %_py_decref_tmp908 = alloca %struct._object*, align 8
  %o922 = alloca %struct._object*, align 8
  %_py_decref_tmp932 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._win_st*, %struct._win_st** @stdscr, align 8
  %call = call i32 @wrefresh(%struct._win_st* %1)
  %2 = load %struct._win_st*, %struct._win_st** @stdscr, align 8
  %call1 = call %struct._object* @PyCursesWindow_New(%struct._win_st* %2, i8* null)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call %struct._win_st* @initscr()
  store %struct._win_st* %call2, %struct._win_st** %win, align 8
  %3 = load %struct._win_st*, %struct._win_st** %win, align 8
  %cmp3 = icmp eq %struct._win_st* %3, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyCursesError, align 8
  %5 = load i8*, i8** @catchall_NULL, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* %5)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  store i32 1, i32* @initialised_setupterm, align 4
  store i32 1, i32* @initialised, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %6 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 108), align 8
  %call6 = call %struct._object* @PyLong_FromLong(i64 %6)
  store %struct._object* %call6, %struct._object** %o, align 8
  %7 = load %struct._object*, %struct._object** %o, align 8
  %tobool = icmp ne %struct._object* %7, null
  br i1 %tobool, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %do.body
  %8 = load %struct._object*, %struct._object** @ModDict, align 8
  %9 = load %struct._object*, %struct._object** %o, align 8
  %call7 = call i32 @PyDict_SetItemString(%struct._object* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.351, i32 0, i32 0), %struct._object* %9)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %land.lhs.true
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %10 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body.10
  br label %if.end.13

if.else:                                          ; preds = %do.body.10
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  br label %if.end.14

if.end.14:                                        ; preds = %do.end, %land.lhs.true, %do.body
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %17 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 109), align 8
  %call18 = call %struct._object* @PyLong_FromLong(i64 %17)
  store %struct._object* %call18, %struct._object** %o17, align 8
  %18 = load %struct._object*, %struct._object** %o17, align 8
  %tobool19 = icmp ne %struct._object* %18, null
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.35

land.lhs.true.20:                                 ; preds = %do.body.16
  %19 = load %struct._object*, %struct._object** @ModDict, align 8
  %20 = load %struct._object*, %struct._object** %o17, align 8
  %call21 = call i32 @PyDict_SetItemString(%struct._object* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.352, i32 0, i32 0), %struct._object* %20)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.end.35

if.then.23:                                       ; preds = %land.lhs.true.20
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  %21 = load %struct._object*, %struct._object** %o17, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp25, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %23, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.24
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %26(%struct._object* %27)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %if.end.35

if.end.35:                                        ; preds = %do.end.34, %land.lhs.true.20, %do.body.16
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  br label %do.body.37

do.body.37:                                       ; preds = %do.end.36
  %28 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 107), align 8
  %call39 = call %struct._object* @PyLong_FromLong(i64 %28)
  store %struct._object* %call39, %struct._object** %o38, align 8
  %29 = load %struct._object*, %struct._object** %o38, align 8
  %tobool40 = icmp ne %struct._object* %29, null
  br i1 %tobool40, label %land.lhs.true.41, label %if.end.56

land.lhs.true.41:                                 ; preds = %do.body.37
  %30 = load %struct._object*, %struct._object** @ModDict, align 8
  %31 = load %struct._object*, %struct._object** %o38, align 8
  %call42 = call i32 @PyDict_SetItemString(%struct._object* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.353, i32 0, i32 0), %struct._object* %31)
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then.44, label %if.end.56

if.then.44:                                       ; preds = %land.lhs.true.41
  br label %do.body.45

do.body.45:                                       ; preds = %if.then.44
  %32 = load %struct._object*, %struct._object** %o38, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp46, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt47, align 8
  %dec48 = add i64 %34, -1
  store i64 %dec48, i64* %ob_refcnt47, align 8
  %cmp49 = icmp ne i64 %dec48, 0
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.45
  br label %if.end.54

if.else.51:                                       ; preds = %do.body.45
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  call void %37(%struct._object* %38)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  br label %if.end.56

if.end.56:                                        ; preds = %do.end.55, %land.lhs.true.41, %do.body.37
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  br label %do.body.58

do.body.58:                                       ; preds = %do.end.57
  %39 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 106), align 8
  %call60 = call %struct._object* @PyLong_FromLong(i64 %39)
  store %struct._object* %call60, %struct._object** %o59, align 8
  %40 = load %struct._object*, %struct._object** %o59, align 8
  %tobool61 = icmp ne %struct._object* %40, null
  br i1 %tobool61, label %land.lhs.true.62, label %if.end.77

land.lhs.true.62:                                 ; preds = %do.body.58
  %41 = load %struct._object*, %struct._object** @ModDict, align 8
  %42 = load %struct._object*, %struct._object** %o59, align 8
  %call63 = call i32 @PyDict_SetItemString(%struct._object* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.354, i32 0, i32 0), %struct._object* %42)
  %cmp64 = icmp eq i32 %call63, 0
  br i1 %cmp64, label %if.then.65, label %if.end.77

if.then.65:                                       ; preds = %land.lhs.true.62
  br label %do.body.66

do.body.66:                                       ; preds = %if.then.65
  %43 = load %struct._object*, %struct._object** %o59, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp67, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt68, align 8
  %dec69 = add i64 %45, -1
  store i64 %dec69, i64* %ob_refcnt68, align 8
  %cmp70 = icmp ne i64 %dec69, 0
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %do.body.66
  br label %if.end.75

if.else.72:                                       ; preds = %do.body.66
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  call void %48(%struct._object* %49)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %if.end.77

if.end.77:                                        ; preds = %do.end.76, %land.lhs.true.62, %do.body.58
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  br label %do.body.79

do.body.79:                                       ; preds = %do.end.78
  %50 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 116), align 8
  %call81 = call %struct._object* @PyLong_FromLong(i64 %50)
  store %struct._object* %call81, %struct._object** %o80, align 8
  %51 = load %struct._object*, %struct._object** %o80, align 8
  %tobool82 = icmp ne %struct._object* %51, null
  br i1 %tobool82, label %land.lhs.true.83, label %if.end.98

land.lhs.true.83:                                 ; preds = %do.body.79
  %52 = load %struct._object*, %struct._object** @ModDict, align 8
  %53 = load %struct._object*, %struct._object** %o80, align 8
  %call84 = call i32 @PyDict_SetItemString(%struct._object* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.355, i32 0, i32 0), %struct._object* %53)
  %cmp85 = icmp eq i32 %call84, 0
  br i1 %cmp85, label %if.then.86, label %if.end.98

if.then.86:                                       ; preds = %land.lhs.true.83
  br label %do.body.87

do.body.87:                                       ; preds = %if.then.86
  %54 = load %struct._object*, %struct._object** %o80, align 8
  store %struct._object* %54, %struct._object** %_py_decref_tmp88, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  %ob_refcnt89 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt89, align 8
  %dec90 = add i64 %56, -1
  store i64 %dec90, i64* %ob_refcnt89, align 8
  %cmp91 = icmp ne i64 %dec90, 0
  br i1 %cmp91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %do.body.87
  br label %if.end.96

if.else.93:                                       ; preds = %do.body.87
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  %ob_type94 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type94, align 8
  %tp_dealloc95 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc95, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  call void %59(%struct._object* %60)
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.93, %if.then.92
  br label %do.end.97

do.end.97:                                        ; preds = %if.end.96
  br label %if.end.98

if.end.98:                                        ; preds = %do.end.97, %land.lhs.true.83, %do.body.79
  br label %do.end.99

do.end.99:                                        ; preds = %if.end.98
  br label %do.body.100

do.body.100:                                      ; preds = %do.end.99
  %61 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 117), align 8
  %call102 = call %struct._object* @PyLong_FromLong(i64 %61)
  store %struct._object* %call102, %struct._object** %o101, align 8
  %62 = load %struct._object*, %struct._object** %o101, align 8
  %tobool103 = icmp ne %struct._object* %62, null
  br i1 %tobool103, label %land.lhs.true.104, label %if.end.119

land.lhs.true.104:                                ; preds = %do.body.100
  %63 = load %struct._object*, %struct._object** @ModDict, align 8
  %64 = load %struct._object*, %struct._object** %o101, align 8
  %call105 = call i32 @PyDict_SetItemString(%struct._object* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.356, i32 0, i32 0), %struct._object* %64)
  %cmp106 = icmp eq i32 %call105, 0
  br i1 %cmp106, label %if.then.107, label %if.end.119

if.then.107:                                      ; preds = %land.lhs.true.104
  br label %do.body.108

do.body.108:                                      ; preds = %if.then.107
  %65 = load %struct._object*, %struct._object** %o101, align 8
  store %struct._object* %65, %struct._object** %_py_decref_tmp109, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_refcnt110 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0
  %67 = load i64, i64* %ob_refcnt110, align 8
  %dec111 = add i64 %67, -1
  store i64 %dec111, i64* %ob_refcnt110, align 8
  %cmp112 = icmp ne i64 %dec111, 0
  br i1 %cmp112, label %if.then.113, label %if.else.114

if.then.113:                                      ; preds = %do.body.108
  br label %if.end.117

if.else.114:                                      ; preds = %do.body.108
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_type115 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type115, align 8
  %tp_dealloc116 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc116, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  call void %70(%struct._object* %71)
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.114, %if.then.113
  br label %do.end.118

do.end.118:                                       ; preds = %if.end.117
  br label %if.end.119

if.end.119:                                       ; preds = %do.end.118, %land.lhs.true.104, %do.body.100
  br label %do.end.120

do.end.120:                                       ; preds = %if.end.119
  br label %do.body.121

do.body.121:                                      ; preds = %do.end.120
  %72 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 118), align 8
  %call123 = call %struct._object* @PyLong_FromLong(i64 %72)
  store %struct._object* %call123, %struct._object** %o122, align 8
  %73 = load %struct._object*, %struct._object** %o122, align 8
  %tobool124 = icmp ne %struct._object* %73, null
  br i1 %tobool124, label %land.lhs.true.125, label %if.end.140

land.lhs.true.125:                                ; preds = %do.body.121
  %74 = load %struct._object*, %struct._object** @ModDict, align 8
  %75 = load %struct._object*, %struct._object** %o122, align 8
  %call126 = call i32 @PyDict_SetItemString(%struct._object* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.357, i32 0, i32 0), %struct._object* %75)
  %cmp127 = icmp eq i32 %call126, 0
  br i1 %cmp127, label %if.then.128, label %if.end.140

if.then.128:                                      ; preds = %land.lhs.true.125
  br label %do.body.129

do.body.129:                                      ; preds = %if.then.128
  %76 = load %struct._object*, %struct._object** %o122, align 8
  store %struct._object* %76, %struct._object** %_py_decref_tmp130, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp130, align 8
  %ob_refcnt131 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 0
  %78 = load i64, i64* %ob_refcnt131, align 8
  %dec132 = add i64 %78, -1
  store i64 %dec132, i64* %ob_refcnt131, align 8
  %cmp133 = icmp ne i64 %dec132, 0
  br i1 %cmp133, label %if.then.134, label %if.else.135

if.then.134:                                      ; preds = %do.body.129
  br label %if.end.138

if.else.135:                                      ; preds = %do.body.129
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp130, align 8
  %ob_type136 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 1
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type136, align 8
  %tp_dealloc137 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i32 0, i32 4
  %81 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc137, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp130, align 8
  call void %81(%struct._object* %82)
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.135, %if.then.134
  br label %do.end.139

do.end.139:                                       ; preds = %if.end.138
  br label %if.end.140

if.end.140:                                       ; preds = %do.end.139, %land.lhs.true.125, %do.body.121
  br label %do.end.141

do.end.141:                                       ; preds = %if.end.140
  br label %do.body.142

do.body.142:                                      ; preds = %do.end.141
  %83 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 119), align 8
  %call144 = call %struct._object* @PyLong_FromLong(i64 %83)
  store %struct._object* %call144, %struct._object** %o143, align 8
  %84 = load %struct._object*, %struct._object** %o143, align 8
  %tobool145 = icmp ne %struct._object* %84, null
  br i1 %tobool145, label %land.lhs.true.146, label %if.end.161

land.lhs.true.146:                                ; preds = %do.body.142
  %85 = load %struct._object*, %struct._object** @ModDict, align 8
  %86 = load %struct._object*, %struct._object** %o143, align 8
  %call147 = call i32 @PyDict_SetItemString(%struct._object* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.358, i32 0, i32 0), %struct._object* %86)
  %cmp148 = icmp eq i32 %call147, 0
  br i1 %cmp148, label %if.then.149, label %if.end.161

if.then.149:                                      ; preds = %land.lhs.true.146
  br label %do.body.150

do.body.150:                                      ; preds = %if.then.149
  %87 = load %struct._object*, %struct._object** %o143, align 8
  store %struct._object* %87, %struct._object** %_py_decref_tmp151, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp151, align 8
  %ob_refcnt152 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 0
  %89 = load i64, i64* %ob_refcnt152, align 8
  %dec153 = add i64 %89, -1
  store i64 %dec153, i64* %ob_refcnt152, align 8
  %cmp154 = icmp ne i64 %dec153, 0
  br i1 %cmp154, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %do.body.150
  br label %if.end.159

if.else.156:                                      ; preds = %do.body.150
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp151, align 8
  %ob_type157 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 1
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type157, align 8
  %tp_dealloc158 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %91, i32 0, i32 4
  %92 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc158, align 8
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp151, align 8
  call void %92(%struct._object* %93)
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.156, %if.then.155
  br label %do.end.160

do.end.160:                                       ; preds = %if.end.159
  br label %if.end.161

if.end.161:                                       ; preds = %do.end.160, %land.lhs.true.146, %do.body.142
  br label %do.end.162

do.end.162:                                       ; preds = %if.end.161
  br label %do.body.163

do.body.163:                                      ; preds = %do.end.162
  %94 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 113), align 8
  %call165 = call %struct._object* @PyLong_FromLong(i64 %94)
  store %struct._object* %call165, %struct._object** %o164, align 8
  %95 = load %struct._object*, %struct._object** %o164, align 8
  %tobool166 = icmp ne %struct._object* %95, null
  br i1 %tobool166, label %land.lhs.true.167, label %if.end.182

land.lhs.true.167:                                ; preds = %do.body.163
  %96 = load %struct._object*, %struct._object** @ModDict, align 8
  %97 = load %struct._object*, %struct._object** %o164, align 8
  %call168 = call i32 @PyDict_SetItemString(%struct._object* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.359, i32 0, i32 0), %struct._object* %97)
  %cmp169 = icmp eq i32 %call168, 0
  br i1 %cmp169, label %if.then.170, label %if.end.182

if.then.170:                                      ; preds = %land.lhs.true.167
  br label %do.body.171

do.body.171:                                      ; preds = %if.then.170
  %98 = load %struct._object*, %struct._object** %o164, align 8
  store %struct._object* %98, %struct._object** %_py_decref_tmp172, align 8
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp172, align 8
  %ob_refcnt173 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 0
  %100 = load i64, i64* %ob_refcnt173, align 8
  %dec174 = add i64 %100, -1
  store i64 %dec174, i64* %ob_refcnt173, align 8
  %cmp175 = icmp ne i64 %dec174, 0
  br i1 %cmp175, label %if.then.176, label %if.else.177

if.then.176:                                      ; preds = %do.body.171
  br label %if.end.180

if.else.177:                                      ; preds = %do.body.171
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp172, align 8
  %ob_type178 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 1
  %102 = load %struct._typeobject*, %struct._typeobject** %ob_type178, align 8
  %tp_dealloc179 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %102, i32 0, i32 4
  %103 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc179, align 8
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp172, align 8
  call void %103(%struct._object* %104)
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.177, %if.then.176
  br label %do.end.181

do.end.181:                                       ; preds = %if.end.180
  br label %if.end.182

if.end.182:                                       ; preds = %do.end.181, %land.lhs.true.167, %do.body.163
  br label %do.end.183

do.end.183:                                       ; preds = %if.end.182
  br label %do.body.184

do.body.184:                                      ; preds = %do.end.183
  %105 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 120), align 8
  %call186 = call %struct._object* @PyLong_FromLong(i64 %105)
  store %struct._object* %call186, %struct._object** %o185, align 8
  %106 = load %struct._object*, %struct._object** %o185, align 8
  %tobool187 = icmp ne %struct._object* %106, null
  br i1 %tobool187, label %land.lhs.true.188, label %if.end.203

land.lhs.true.188:                                ; preds = %do.body.184
  %107 = load %struct._object*, %struct._object** @ModDict, align 8
  %108 = load %struct._object*, %struct._object** %o185, align 8
  %call189 = call i32 @PyDict_SetItemString(%struct._object* %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.360, i32 0, i32 0), %struct._object* %108)
  %cmp190 = icmp eq i32 %call189, 0
  br i1 %cmp190, label %if.then.191, label %if.end.203

if.then.191:                                      ; preds = %land.lhs.true.188
  br label %do.body.192

do.body.192:                                      ; preds = %if.then.191
  %109 = load %struct._object*, %struct._object** %o185, align 8
  store %struct._object* %109, %struct._object** %_py_decref_tmp193, align 8
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp193, align 8
  %ob_refcnt194 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 0
  %111 = load i64, i64* %ob_refcnt194, align 8
  %dec195 = add i64 %111, -1
  store i64 %dec195, i64* %ob_refcnt194, align 8
  %cmp196 = icmp ne i64 %dec195, 0
  br i1 %cmp196, label %if.then.197, label %if.else.198

if.then.197:                                      ; preds = %do.body.192
  br label %if.end.201

if.else.198:                                      ; preds = %do.body.192
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp193, align 8
  %ob_type199 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 1
  %113 = load %struct._typeobject*, %struct._typeobject** %ob_type199, align 8
  %tp_dealloc200 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %113, i32 0, i32 4
  %114 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc200, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp193, align 8
  call void %114(%struct._object* %115)
  br label %if.end.201

if.end.201:                                       ; preds = %if.else.198, %if.then.197
  br label %do.end.202

do.end.202:                                       ; preds = %if.end.201
  br label %if.end.203

if.end.203:                                       ; preds = %do.end.202, %land.lhs.true.188, %do.body.184
  br label %do.end.204

do.end.204:                                       ; preds = %if.end.203
  br label %do.body.205

do.body.205:                                      ; preds = %do.end.204
  %116 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 110), align 8
  %call207 = call %struct._object* @PyLong_FromLong(i64 %116)
  store %struct._object* %call207, %struct._object** %o206, align 8
  %117 = load %struct._object*, %struct._object** %o206, align 8
  %tobool208 = icmp ne %struct._object* %117, null
  br i1 %tobool208, label %land.lhs.true.209, label %if.end.224

land.lhs.true.209:                                ; preds = %do.body.205
  %118 = load %struct._object*, %struct._object** @ModDict, align 8
  %119 = load %struct._object*, %struct._object** %o206, align 8
  %call210 = call i32 @PyDict_SetItemString(%struct._object* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.361, i32 0, i32 0), %struct._object* %119)
  %cmp211 = icmp eq i32 %call210, 0
  br i1 %cmp211, label %if.then.212, label %if.end.224

if.then.212:                                      ; preds = %land.lhs.true.209
  br label %do.body.213

do.body.213:                                      ; preds = %if.then.212
  %120 = load %struct._object*, %struct._object** %o206, align 8
  store %struct._object* %120, %struct._object** %_py_decref_tmp214, align 8
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp214, align 8
  %ob_refcnt215 = getelementptr inbounds %struct._object, %struct._object* %121, i32 0, i32 0
  %122 = load i64, i64* %ob_refcnt215, align 8
  %dec216 = add i64 %122, -1
  store i64 %dec216, i64* %ob_refcnt215, align 8
  %cmp217 = icmp ne i64 %dec216, 0
  br i1 %cmp217, label %if.then.218, label %if.else.219

if.then.218:                                      ; preds = %do.body.213
  br label %if.end.222

if.else.219:                                      ; preds = %do.body.213
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp214, align 8
  %ob_type220 = getelementptr inbounds %struct._object, %struct._object* %123, i32 0, i32 1
  %124 = load %struct._typeobject*, %struct._typeobject** %ob_type220, align 8
  %tp_dealloc221 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %124, i32 0, i32 4
  %125 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc221, align 8
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp214, align 8
  call void %125(%struct._object* %126)
  br label %if.end.222

if.end.222:                                       ; preds = %if.else.219, %if.then.218
  br label %do.end.223

do.end.223:                                       ; preds = %if.end.222
  br label %if.end.224

if.end.224:                                       ; preds = %do.end.223, %land.lhs.true.209, %do.body.205
  br label %do.end.225

do.end.225:                                       ; preds = %if.end.224
  br label %do.body.226

do.body.226:                                      ; preds = %do.end.225
  %127 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 111), align 8
  %call228 = call %struct._object* @PyLong_FromLong(i64 %127)
  store %struct._object* %call228, %struct._object** %o227, align 8
  %128 = load %struct._object*, %struct._object** %o227, align 8
  %tobool229 = icmp ne %struct._object* %128, null
  br i1 %tobool229, label %land.lhs.true.230, label %if.end.245

land.lhs.true.230:                                ; preds = %do.body.226
  %129 = load %struct._object*, %struct._object** @ModDict, align 8
  %130 = load %struct._object*, %struct._object** %o227, align 8
  %call231 = call i32 @PyDict_SetItemString(%struct._object* %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.362, i32 0, i32 0), %struct._object* %130)
  %cmp232 = icmp eq i32 %call231, 0
  br i1 %cmp232, label %if.then.233, label %if.end.245

if.then.233:                                      ; preds = %land.lhs.true.230
  br label %do.body.234

do.body.234:                                      ; preds = %if.then.233
  %131 = load %struct._object*, %struct._object** %o227, align 8
  store %struct._object* %131, %struct._object** %_py_decref_tmp235, align 8
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp235, align 8
  %ob_refcnt236 = getelementptr inbounds %struct._object, %struct._object* %132, i32 0, i32 0
  %133 = load i64, i64* %ob_refcnt236, align 8
  %dec237 = add i64 %133, -1
  store i64 %dec237, i64* %ob_refcnt236, align 8
  %cmp238 = icmp ne i64 %dec237, 0
  br i1 %cmp238, label %if.then.239, label %if.else.240

if.then.239:                                      ; preds = %do.body.234
  br label %if.end.243

if.else.240:                                      ; preds = %do.body.234
  %134 = load %struct._object*, %struct._object** %_py_decref_tmp235, align 8
  %ob_type241 = getelementptr inbounds %struct._object, %struct._object* %134, i32 0, i32 1
  %135 = load %struct._typeobject*, %struct._typeobject** %ob_type241, align 8
  %tp_dealloc242 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %135, i32 0, i32 4
  %136 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc242, align 8
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp235, align 8
  call void %136(%struct._object* %137)
  br label %if.end.243

if.end.243:                                       ; preds = %if.else.240, %if.then.239
  br label %do.end.244

do.end.244:                                       ; preds = %if.end.243
  br label %if.end.245

if.end.245:                                       ; preds = %do.end.244, %land.lhs.true.230, %do.body.226
  br label %do.end.246

do.end.246:                                       ; preds = %if.end.245
  br label %do.body.247

do.body.247:                                      ; preds = %do.end.246
  %138 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 115), align 8
  %call249 = call %struct._object* @PyLong_FromLong(i64 %138)
  store %struct._object* %call249, %struct._object** %o248, align 8
  %139 = load %struct._object*, %struct._object** %o248, align 8
  %tobool250 = icmp ne %struct._object* %139, null
  br i1 %tobool250, label %land.lhs.true.251, label %if.end.266

land.lhs.true.251:                                ; preds = %do.body.247
  %140 = load %struct._object*, %struct._object** @ModDict, align 8
  %141 = load %struct._object*, %struct._object** %o248, align 8
  %call252 = call i32 @PyDict_SetItemString(%struct._object* %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.363, i32 0, i32 0), %struct._object* %141)
  %cmp253 = icmp eq i32 %call252, 0
  br i1 %cmp253, label %if.then.254, label %if.end.266

if.then.254:                                      ; preds = %land.lhs.true.251
  br label %do.body.255

do.body.255:                                      ; preds = %if.then.254
  %142 = load %struct._object*, %struct._object** %o248, align 8
  store %struct._object* %142, %struct._object** %_py_decref_tmp256, align 8
  %143 = load %struct._object*, %struct._object** %_py_decref_tmp256, align 8
  %ob_refcnt257 = getelementptr inbounds %struct._object, %struct._object* %143, i32 0, i32 0
  %144 = load i64, i64* %ob_refcnt257, align 8
  %dec258 = add i64 %144, -1
  store i64 %dec258, i64* %ob_refcnt257, align 8
  %cmp259 = icmp ne i64 %dec258, 0
  br i1 %cmp259, label %if.then.260, label %if.else.261

if.then.260:                                      ; preds = %do.body.255
  br label %if.end.264

if.else.261:                                      ; preds = %do.body.255
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp256, align 8
  %ob_type262 = getelementptr inbounds %struct._object, %struct._object* %145, i32 0, i32 1
  %146 = load %struct._typeobject*, %struct._typeobject** %ob_type262, align 8
  %tp_dealloc263 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %146, i32 0, i32 4
  %147 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc263, align 8
  %148 = load %struct._object*, %struct._object** %_py_decref_tmp256, align 8
  call void %147(%struct._object* %148)
  br label %if.end.264

if.end.264:                                       ; preds = %if.else.261, %if.then.260
  br label %do.end.265

do.end.265:                                       ; preds = %if.end.264
  br label %if.end.266

if.end.266:                                       ; preds = %do.end.265, %land.lhs.true.251, %do.body.247
  br label %do.end.267

do.end.267:                                       ; preds = %if.end.266
  br label %do.body.268

do.body.268:                                      ; preds = %do.end.267
  %149 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 96), align 8
  %call270 = call %struct._object* @PyLong_FromLong(i64 %149)
  store %struct._object* %call270, %struct._object** %o269, align 8
  %150 = load %struct._object*, %struct._object** %o269, align 8
  %tobool271 = icmp ne %struct._object* %150, null
  br i1 %tobool271, label %land.lhs.true.272, label %if.end.287

land.lhs.true.272:                                ; preds = %do.body.268
  %151 = load %struct._object*, %struct._object** @ModDict, align 8
  %152 = load %struct._object*, %struct._object** %o269, align 8
  %call273 = call i32 @PyDict_SetItemString(%struct._object* %151, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.364, i32 0, i32 0), %struct._object* %152)
  %cmp274 = icmp eq i32 %call273, 0
  br i1 %cmp274, label %if.then.275, label %if.end.287

if.then.275:                                      ; preds = %land.lhs.true.272
  br label %do.body.276

do.body.276:                                      ; preds = %if.then.275
  %153 = load %struct._object*, %struct._object** %o269, align 8
  store %struct._object* %153, %struct._object** %_py_decref_tmp277, align 8
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp277, align 8
  %ob_refcnt278 = getelementptr inbounds %struct._object, %struct._object* %154, i32 0, i32 0
  %155 = load i64, i64* %ob_refcnt278, align 8
  %dec279 = add i64 %155, -1
  store i64 %dec279, i64* %ob_refcnt278, align 8
  %cmp280 = icmp ne i64 %dec279, 0
  br i1 %cmp280, label %if.then.281, label %if.else.282

if.then.281:                                      ; preds = %do.body.276
  br label %if.end.285

if.else.282:                                      ; preds = %do.body.276
  %156 = load %struct._object*, %struct._object** %_py_decref_tmp277, align 8
  %ob_type283 = getelementptr inbounds %struct._object, %struct._object* %156, i32 0, i32 1
  %157 = load %struct._typeobject*, %struct._typeobject** %ob_type283, align 8
  %tp_dealloc284 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %157, i32 0, i32 4
  %158 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc284, align 8
  %159 = load %struct._object*, %struct._object** %_py_decref_tmp277, align 8
  call void %158(%struct._object* %159)
  br label %if.end.285

if.end.285:                                       ; preds = %if.else.282, %if.then.281
  br label %do.end.286

do.end.286:                                       ; preds = %if.end.285
  br label %if.end.287

if.end.287:                                       ; preds = %do.end.286, %land.lhs.true.272, %do.body.268
  br label %do.end.288

do.end.288:                                       ; preds = %if.end.287
  br label %do.body.289

do.body.289:                                      ; preds = %do.end.288
  %160 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 97), align 8
  %call291 = call %struct._object* @PyLong_FromLong(i64 %160)
  store %struct._object* %call291, %struct._object** %o290, align 8
  %161 = load %struct._object*, %struct._object** %o290, align 8
  %tobool292 = icmp ne %struct._object* %161, null
  br i1 %tobool292, label %land.lhs.true.293, label %if.end.308

land.lhs.true.293:                                ; preds = %do.body.289
  %162 = load %struct._object*, %struct._object** @ModDict, align 8
  %163 = load %struct._object*, %struct._object** %o290, align 8
  %call294 = call i32 @PyDict_SetItemString(%struct._object* %162, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.365, i32 0, i32 0), %struct._object* %163)
  %cmp295 = icmp eq i32 %call294, 0
  br i1 %cmp295, label %if.then.296, label %if.end.308

if.then.296:                                      ; preds = %land.lhs.true.293
  br label %do.body.297

do.body.297:                                      ; preds = %if.then.296
  %164 = load %struct._object*, %struct._object** %o290, align 8
  store %struct._object* %164, %struct._object** %_py_decref_tmp298, align 8
  %165 = load %struct._object*, %struct._object** %_py_decref_tmp298, align 8
  %ob_refcnt299 = getelementptr inbounds %struct._object, %struct._object* %165, i32 0, i32 0
  %166 = load i64, i64* %ob_refcnt299, align 8
  %dec300 = add i64 %166, -1
  store i64 %dec300, i64* %ob_refcnt299, align 8
  %cmp301 = icmp ne i64 %dec300, 0
  br i1 %cmp301, label %if.then.302, label %if.else.303

if.then.302:                                      ; preds = %do.body.297
  br label %if.end.306

if.else.303:                                      ; preds = %do.body.297
  %167 = load %struct._object*, %struct._object** %_py_decref_tmp298, align 8
  %ob_type304 = getelementptr inbounds %struct._object, %struct._object* %167, i32 0, i32 1
  %168 = load %struct._typeobject*, %struct._typeobject** %ob_type304, align 8
  %tp_dealloc305 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %168, i32 0, i32 4
  %169 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc305, align 8
  %170 = load %struct._object*, %struct._object** %_py_decref_tmp298, align 8
  call void %169(%struct._object* %170)
  br label %if.end.306

if.end.306:                                       ; preds = %if.else.303, %if.then.302
  br label %do.end.307

do.end.307:                                       ; preds = %if.end.306
  br label %if.end.308

if.end.308:                                       ; preds = %do.end.307, %land.lhs.true.293, %do.body.289
  br label %do.end.309

do.end.309:                                       ; preds = %if.end.308
  br label %do.body.310

do.body.310:                                      ; preds = %do.end.309
  %171 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 102), align 8
  %call312 = call %struct._object* @PyLong_FromLong(i64 %171)
  store %struct._object* %call312, %struct._object** %o311, align 8
  %172 = load %struct._object*, %struct._object** %o311, align 8
  %tobool313 = icmp ne %struct._object* %172, null
  br i1 %tobool313, label %land.lhs.true.314, label %if.end.329

land.lhs.true.314:                                ; preds = %do.body.310
  %173 = load %struct._object*, %struct._object** @ModDict, align 8
  %174 = load %struct._object*, %struct._object** %o311, align 8
  %call315 = call i32 @PyDict_SetItemString(%struct._object* %173, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.366, i32 0, i32 0), %struct._object* %174)
  %cmp316 = icmp eq i32 %call315, 0
  br i1 %cmp316, label %if.then.317, label %if.end.329

if.then.317:                                      ; preds = %land.lhs.true.314
  br label %do.body.318

do.body.318:                                      ; preds = %if.then.317
  %175 = load %struct._object*, %struct._object** %o311, align 8
  store %struct._object* %175, %struct._object** %_py_decref_tmp319, align 8
  %176 = load %struct._object*, %struct._object** %_py_decref_tmp319, align 8
  %ob_refcnt320 = getelementptr inbounds %struct._object, %struct._object* %176, i32 0, i32 0
  %177 = load i64, i64* %ob_refcnt320, align 8
  %dec321 = add i64 %177, -1
  store i64 %dec321, i64* %ob_refcnt320, align 8
  %cmp322 = icmp ne i64 %dec321, 0
  br i1 %cmp322, label %if.then.323, label %if.else.324

if.then.323:                                      ; preds = %do.body.318
  br label %if.end.327

if.else.324:                                      ; preds = %do.body.318
  %178 = load %struct._object*, %struct._object** %_py_decref_tmp319, align 8
  %ob_type325 = getelementptr inbounds %struct._object, %struct._object* %178, i32 0, i32 1
  %179 = load %struct._typeobject*, %struct._typeobject** %ob_type325, align 8
  %tp_dealloc326 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %179, i32 0, i32 4
  %180 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc326, align 8
  %181 = load %struct._object*, %struct._object** %_py_decref_tmp319, align 8
  call void %180(%struct._object* %181)
  br label %if.end.327

if.end.327:                                       ; preds = %if.else.324, %if.then.323
  br label %do.end.328

do.end.328:                                       ; preds = %if.end.327
  br label %if.end.329

if.end.329:                                       ; preds = %do.end.328, %land.lhs.true.314, %do.body.310
  br label %do.end.330

do.end.330:                                       ; preds = %if.end.329
  br label %do.body.331

do.body.331:                                      ; preds = %do.end.330
  %182 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 103), align 8
  %call333 = call %struct._object* @PyLong_FromLong(i64 %182)
  store %struct._object* %call333, %struct._object** %o332, align 8
  %183 = load %struct._object*, %struct._object** %o332, align 8
  %tobool334 = icmp ne %struct._object* %183, null
  br i1 %tobool334, label %land.lhs.true.335, label %if.end.350

land.lhs.true.335:                                ; preds = %do.body.331
  %184 = load %struct._object*, %struct._object** @ModDict, align 8
  %185 = load %struct._object*, %struct._object** %o332, align 8
  %call336 = call i32 @PyDict_SetItemString(%struct._object* %184, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.367, i32 0, i32 0), %struct._object* %185)
  %cmp337 = icmp eq i32 %call336, 0
  br i1 %cmp337, label %if.then.338, label %if.end.350

if.then.338:                                      ; preds = %land.lhs.true.335
  br label %do.body.339

do.body.339:                                      ; preds = %if.then.338
  %186 = load %struct._object*, %struct._object** %o332, align 8
  store %struct._object* %186, %struct._object** %_py_decref_tmp340, align 8
  %187 = load %struct._object*, %struct._object** %_py_decref_tmp340, align 8
  %ob_refcnt341 = getelementptr inbounds %struct._object, %struct._object* %187, i32 0, i32 0
  %188 = load i64, i64* %ob_refcnt341, align 8
  %dec342 = add i64 %188, -1
  store i64 %dec342, i64* %ob_refcnt341, align 8
  %cmp343 = icmp ne i64 %dec342, 0
  br i1 %cmp343, label %if.then.344, label %if.else.345

if.then.344:                                      ; preds = %do.body.339
  br label %if.end.348

if.else.345:                                      ; preds = %do.body.339
  %189 = load %struct._object*, %struct._object** %_py_decref_tmp340, align 8
  %ob_type346 = getelementptr inbounds %struct._object, %struct._object* %189, i32 0, i32 1
  %190 = load %struct._typeobject*, %struct._typeobject** %ob_type346, align 8
  %tp_dealloc347 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %190, i32 0, i32 4
  %191 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc347, align 8
  %192 = load %struct._object*, %struct._object** %_py_decref_tmp340, align 8
  call void %191(%struct._object* %192)
  br label %if.end.348

if.end.348:                                       ; preds = %if.else.345, %if.then.344
  br label %do.end.349

do.end.349:                                       ; preds = %if.end.348
  br label %if.end.350

if.end.350:                                       ; preds = %do.end.349, %land.lhs.true.335, %do.body.331
  br label %do.end.351

do.end.351:                                       ; preds = %if.end.350
  br label %do.body.352

do.body.352:                                      ; preds = %do.end.351
  %193 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 126), align 8
  %call354 = call %struct._object* @PyLong_FromLong(i64 %193)
  store %struct._object* %call354, %struct._object** %o353, align 8
  %194 = load %struct._object*, %struct._object** %o353, align 8
  %tobool355 = icmp ne %struct._object* %194, null
  br i1 %tobool355, label %land.lhs.true.356, label %if.end.371

land.lhs.true.356:                                ; preds = %do.body.352
  %195 = load %struct._object*, %struct._object** @ModDict, align 8
  %196 = load %struct._object*, %struct._object** %o353, align 8
  %call357 = call i32 @PyDict_SetItemString(%struct._object* %195, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.368, i32 0, i32 0), %struct._object* %196)
  %cmp358 = icmp eq i32 %call357, 0
  br i1 %cmp358, label %if.then.359, label %if.end.371

if.then.359:                                      ; preds = %land.lhs.true.356
  br label %do.body.360

do.body.360:                                      ; preds = %if.then.359
  %197 = load %struct._object*, %struct._object** %o353, align 8
  store %struct._object* %197, %struct._object** %_py_decref_tmp361, align 8
  %198 = load %struct._object*, %struct._object** %_py_decref_tmp361, align 8
  %ob_refcnt362 = getelementptr inbounds %struct._object, %struct._object* %198, i32 0, i32 0
  %199 = load i64, i64* %ob_refcnt362, align 8
  %dec363 = add i64 %199, -1
  store i64 %dec363, i64* %ob_refcnt362, align 8
  %cmp364 = icmp ne i64 %dec363, 0
  br i1 %cmp364, label %if.then.365, label %if.else.366

if.then.365:                                      ; preds = %do.body.360
  br label %if.end.369

if.else.366:                                      ; preds = %do.body.360
  %200 = load %struct._object*, %struct._object** %_py_decref_tmp361, align 8
  %ob_type367 = getelementptr inbounds %struct._object, %struct._object* %200, i32 0, i32 1
  %201 = load %struct._typeobject*, %struct._typeobject** %ob_type367, align 8
  %tp_dealloc368 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %201, i32 0, i32 4
  %202 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc368, align 8
  %203 = load %struct._object*, %struct._object** %_py_decref_tmp361, align 8
  call void %202(%struct._object* %203)
  br label %if.end.369

if.end.369:                                       ; preds = %if.else.366, %if.then.365
  br label %do.end.370

do.end.370:                                       ; preds = %if.end.369
  br label %if.end.371

if.end.371:                                       ; preds = %do.end.370, %land.lhs.true.356, %do.body.352
  br label %do.end.372

do.end.372:                                       ; preds = %if.end.371
  br label %do.body.373

do.body.373:                                      ; preds = %do.end.372
  %204 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 44), align 8
  %call375 = call %struct._object* @PyLong_FromLong(i64 %204)
  store %struct._object* %call375, %struct._object** %o374, align 8
  %205 = load %struct._object*, %struct._object** %o374, align 8
  %tobool376 = icmp ne %struct._object* %205, null
  br i1 %tobool376, label %land.lhs.true.377, label %if.end.392

land.lhs.true.377:                                ; preds = %do.body.373
  %206 = load %struct._object*, %struct._object** @ModDict, align 8
  %207 = load %struct._object*, %struct._object** %o374, align 8
  %call378 = call i32 @PyDict_SetItemString(%struct._object* %206, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.369, i32 0, i32 0), %struct._object* %207)
  %cmp379 = icmp eq i32 %call378, 0
  br i1 %cmp379, label %if.then.380, label %if.end.392

if.then.380:                                      ; preds = %land.lhs.true.377
  br label %do.body.381

do.body.381:                                      ; preds = %if.then.380
  %208 = load %struct._object*, %struct._object** %o374, align 8
  store %struct._object* %208, %struct._object** %_py_decref_tmp382, align 8
  %209 = load %struct._object*, %struct._object** %_py_decref_tmp382, align 8
  %ob_refcnt383 = getelementptr inbounds %struct._object, %struct._object* %209, i32 0, i32 0
  %210 = load i64, i64* %ob_refcnt383, align 8
  %dec384 = add i64 %210, -1
  store i64 %dec384, i64* %ob_refcnt383, align 8
  %cmp385 = icmp ne i64 %dec384, 0
  br i1 %cmp385, label %if.then.386, label %if.else.387

if.then.386:                                      ; preds = %do.body.381
  br label %if.end.390

if.else.387:                                      ; preds = %do.body.381
  %211 = load %struct._object*, %struct._object** %_py_decref_tmp382, align 8
  %ob_type388 = getelementptr inbounds %struct._object, %struct._object* %211, i32 0, i32 1
  %212 = load %struct._typeobject*, %struct._typeobject** %ob_type388, align 8
  %tp_dealloc389 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %212, i32 0, i32 4
  %213 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc389, align 8
  %214 = load %struct._object*, %struct._object** %_py_decref_tmp382, align 8
  call void %213(%struct._object* %214)
  br label %if.end.390

if.end.390:                                       ; preds = %if.else.387, %if.then.386
  br label %do.end.391

do.end.391:                                       ; preds = %if.end.390
  br label %if.end.392

if.end.392:                                       ; preds = %do.end.391, %land.lhs.true.377, %do.body.373
  br label %do.end.393

do.end.393:                                       ; preds = %if.end.392
  br label %do.body.394

do.body.394:                                      ; preds = %do.end.393
  %215 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 43), align 8
  %call396 = call %struct._object* @PyLong_FromLong(i64 %215)
  store %struct._object* %call396, %struct._object** %o395, align 8
  %216 = load %struct._object*, %struct._object** %o395, align 8
  %tobool397 = icmp ne %struct._object* %216, null
  br i1 %tobool397, label %land.lhs.true.398, label %if.end.413

land.lhs.true.398:                                ; preds = %do.body.394
  %217 = load %struct._object*, %struct._object** @ModDict, align 8
  %218 = load %struct._object*, %struct._object** %o395, align 8
  %call399 = call i32 @PyDict_SetItemString(%struct._object* %217, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.370, i32 0, i32 0), %struct._object* %218)
  %cmp400 = icmp eq i32 %call399, 0
  br i1 %cmp400, label %if.then.401, label %if.end.413

if.then.401:                                      ; preds = %land.lhs.true.398
  br label %do.body.402

do.body.402:                                      ; preds = %if.then.401
  %219 = load %struct._object*, %struct._object** %o395, align 8
  store %struct._object* %219, %struct._object** %_py_decref_tmp403, align 8
  %220 = load %struct._object*, %struct._object** %_py_decref_tmp403, align 8
  %ob_refcnt404 = getelementptr inbounds %struct._object, %struct._object* %220, i32 0, i32 0
  %221 = load i64, i64* %ob_refcnt404, align 8
  %dec405 = add i64 %221, -1
  store i64 %dec405, i64* %ob_refcnt404, align 8
  %cmp406 = icmp ne i64 %dec405, 0
  br i1 %cmp406, label %if.then.407, label %if.else.408

if.then.407:                                      ; preds = %do.body.402
  br label %if.end.411

if.else.408:                                      ; preds = %do.body.402
  %222 = load %struct._object*, %struct._object** %_py_decref_tmp403, align 8
  %ob_type409 = getelementptr inbounds %struct._object, %struct._object* %222, i32 0, i32 1
  %223 = load %struct._typeobject*, %struct._typeobject** %ob_type409, align 8
  %tp_dealloc410 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %223, i32 0, i32 4
  %224 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc410, align 8
  %225 = load %struct._object*, %struct._object** %_py_decref_tmp403, align 8
  call void %224(%struct._object* %225)
  br label %if.end.411

if.end.411:                                       ; preds = %if.else.408, %if.then.407
  br label %do.end.412

do.end.412:                                       ; preds = %if.end.411
  br label %if.end.413

if.end.413:                                       ; preds = %do.end.412, %land.lhs.true.398, %do.body.394
  br label %do.end.414

do.end.414:                                       ; preds = %if.end.413
  br label %do.body.415

do.body.415:                                      ; preds = %do.end.414
  %226 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 46), align 8
  %call417 = call %struct._object* @PyLong_FromLong(i64 %226)
  store %struct._object* %call417, %struct._object** %o416, align 8
  %227 = load %struct._object*, %struct._object** %o416, align 8
  %tobool418 = icmp ne %struct._object* %227, null
  br i1 %tobool418, label %land.lhs.true.419, label %if.end.434

land.lhs.true.419:                                ; preds = %do.body.415
  %228 = load %struct._object*, %struct._object** @ModDict, align 8
  %229 = load %struct._object*, %struct._object** %o416, align 8
  %call420 = call i32 @PyDict_SetItemString(%struct._object* %228, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.371, i32 0, i32 0), %struct._object* %229)
  %cmp421 = icmp eq i32 %call420, 0
  br i1 %cmp421, label %if.then.422, label %if.end.434

if.then.422:                                      ; preds = %land.lhs.true.419
  br label %do.body.423

do.body.423:                                      ; preds = %if.then.422
  %230 = load %struct._object*, %struct._object** %o416, align 8
  store %struct._object* %230, %struct._object** %_py_decref_tmp424, align 8
  %231 = load %struct._object*, %struct._object** %_py_decref_tmp424, align 8
  %ob_refcnt425 = getelementptr inbounds %struct._object, %struct._object* %231, i32 0, i32 0
  %232 = load i64, i64* %ob_refcnt425, align 8
  %dec426 = add i64 %232, -1
  store i64 %dec426, i64* %ob_refcnt425, align 8
  %cmp427 = icmp ne i64 %dec426, 0
  br i1 %cmp427, label %if.then.428, label %if.else.429

if.then.428:                                      ; preds = %do.body.423
  br label %if.end.432

if.else.429:                                      ; preds = %do.body.423
  %233 = load %struct._object*, %struct._object** %_py_decref_tmp424, align 8
  %ob_type430 = getelementptr inbounds %struct._object, %struct._object* %233, i32 0, i32 1
  %234 = load %struct._typeobject*, %struct._typeobject** %ob_type430, align 8
  %tp_dealloc431 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %234, i32 0, i32 4
  %235 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc431, align 8
  %236 = load %struct._object*, %struct._object** %_py_decref_tmp424, align 8
  call void %235(%struct._object* %236)
  br label %if.end.432

if.end.432:                                       ; preds = %if.else.429, %if.then.428
  br label %do.end.433

do.end.433:                                       ; preds = %if.end.432
  br label %if.end.434

if.end.434:                                       ; preds = %do.end.433, %land.lhs.true.419, %do.body.415
  br label %do.end.435

do.end.435:                                       ; preds = %if.end.434
  br label %do.body.436

do.body.436:                                      ; preds = %do.end.435
  %237 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 45), align 8
  %call438 = call %struct._object* @PyLong_FromLong(i64 %237)
  store %struct._object* %call438, %struct._object** %o437, align 8
  %238 = load %struct._object*, %struct._object** %o437, align 8
  %tobool439 = icmp ne %struct._object* %238, null
  br i1 %tobool439, label %land.lhs.true.440, label %if.end.455

land.lhs.true.440:                                ; preds = %do.body.436
  %239 = load %struct._object*, %struct._object** @ModDict, align 8
  %240 = load %struct._object*, %struct._object** %o437, align 8
  %call441 = call i32 @PyDict_SetItemString(%struct._object* %239, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.372, i32 0, i32 0), %struct._object* %240)
  %cmp442 = icmp eq i32 %call441, 0
  br i1 %cmp442, label %if.then.443, label %if.end.455

if.then.443:                                      ; preds = %land.lhs.true.440
  br label %do.body.444

do.body.444:                                      ; preds = %if.then.443
  %241 = load %struct._object*, %struct._object** %o437, align 8
  store %struct._object* %241, %struct._object** %_py_decref_tmp445, align 8
  %242 = load %struct._object*, %struct._object** %_py_decref_tmp445, align 8
  %ob_refcnt446 = getelementptr inbounds %struct._object, %struct._object* %242, i32 0, i32 0
  %243 = load i64, i64* %ob_refcnt446, align 8
  %dec447 = add i64 %243, -1
  store i64 %dec447, i64* %ob_refcnt446, align 8
  %cmp448 = icmp ne i64 %dec447, 0
  br i1 %cmp448, label %if.then.449, label %if.else.450

if.then.449:                                      ; preds = %do.body.444
  br label %if.end.453

if.else.450:                                      ; preds = %do.body.444
  %244 = load %struct._object*, %struct._object** %_py_decref_tmp445, align 8
  %ob_type451 = getelementptr inbounds %struct._object, %struct._object* %244, i32 0, i32 1
  %245 = load %struct._typeobject*, %struct._typeobject** %ob_type451, align 8
  %tp_dealloc452 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %245, i32 0, i32 4
  %246 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc452, align 8
  %247 = load %struct._object*, %struct._object** %_py_decref_tmp445, align 8
  call void %246(%struct._object* %247)
  br label %if.end.453

if.end.453:                                       ; preds = %if.else.450, %if.then.449
  br label %do.end.454

do.end.454:                                       ; preds = %if.end.453
  br label %if.end.455

if.end.455:                                       ; preds = %do.end.454, %land.lhs.true.440, %do.body.436
  br label %do.end.456

do.end.456:                                       ; preds = %if.end.455
  br label %do.body.457

do.body.457:                                      ; preds = %do.end.456
  %248 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 104), align 8
  %call459 = call %struct._object* @PyLong_FromLong(i64 %248)
  store %struct._object* %call459, %struct._object** %o458, align 8
  %249 = load %struct._object*, %struct._object** %o458, align 8
  %tobool460 = icmp ne %struct._object* %249, null
  br i1 %tobool460, label %land.lhs.true.461, label %if.end.476

land.lhs.true.461:                                ; preds = %do.body.457
  %250 = load %struct._object*, %struct._object** @ModDict, align 8
  %251 = load %struct._object*, %struct._object** %o458, align 8
  %call462 = call i32 @PyDict_SetItemString(%struct._object* %250, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.373, i32 0, i32 0), %struct._object* %251)
  %cmp463 = icmp eq i32 %call462, 0
  br i1 %cmp463, label %if.then.464, label %if.end.476

if.then.464:                                      ; preds = %land.lhs.true.461
  br label %do.body.465

do.body.465:                                      ; preds = %if.then.464
  %252 = load %struct._object*, %struct._object** %o458, align 8
  store %struct._object* %252, %struct._object** %_py_decref_tmp466, align 8
  %253 = load %struct._object*, %struct._object** %_py_decref_tmp466, align 8
  %ob_refcnt467 = getelementptr inbounds %struct._object, %struct._object* %253, i32 0, i32 0
  %254 = load i64, i64* %ob_refcnt467, align 8
  %dec468 = add i64 %254, -1
  store i64 %dec468, i64* %ob_refcnt467, align 8
  %cmp469 = icmp ne i64 %dec468, 0
  br i1 %cmp469, label %if.then.470, label %if.else.471

if.then.470:                                      ; preds = %do.body.465
  br label %if.end.474

if.else.471:                                      ; preds = %do.body.465
  %255 = load %struct._object*, %struct._object** %_py_decref_tmp466, align 8
  %ob_type472 = getelementptr inbounds %struct._object, %struct._object* %255, i32 0, i32 1
  %256 = load %struct._typeobject*, %struct._typeobject** %ob_type472, align 8
  %tp_dealloc473 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %256, i32 0, i32 4
  %257 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc473, align 8
  %258 = load %struct._object*, %struct._object** %_py_decref_tmp466, align 8
  call void %257(%struct._object* %258)
  br label %if.end.474

if.end.474:                                       ; preds = %if.else.471, %if.then.470
  br label %do.end.475

do.end.475:                                       ; preds = %if.end.474
  br label %if.end.476

if.end.476:                                       ; preds = %do.end.475, %land.lhs.true.461, %do.body.457
  br label %do.end.477

do.end.477:                                       ; preds = %if.end.476
  br label %do.body.478

do.body.478:                                      ; preds = %do.end.477
  %259 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 105), align 8
  %call480 = call %struct._object* @PyLong_FromLong(i64 %259)
  store %struct._object* %call480, %struct._object** %o479, align 8
  %260 = load %struct._object*, %struct._object** %o479, align 8
  %tobool481 = icmp ne %struct._object* %260, null
  br i1 %tobool481, label %land.lhs.true.482, label %if.end.497

land.lhs.true.482:                                ; preds = %do.body.478
  %261 = load %struct._object*, %struct._object** @ModDict, align 8
  %262 = load %struct._object*, %struct._object** %o479, align 8
  %call483 = call i32 @PyDict_SetItemString(%struct._object* %261, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.374, i32 0, i32 0), %struct._object* %262)
  %cmp484 = icmp eq i32 %call483, 0
  br i1 %cmp484, label %if.then.485, label %if.end.497

if.then.485:                                      ; preds = %land.lhs.true.482
  br label %do.body.486

do.body.486:                                      ; preds = %if.then.485
  %263 = load %struct._object*, %struct._object** %o479, align 8
  store %struct._object* %263, %struct._object** %_py_decref_tmp487, align 8
  %264 = load %struct._object*, %struct._object** %_py_decref_tmp487, align 8
  %ob_refcnt488 = getelementptr inbounds %struct._object, %struct._object* %264, i32 0, i32 0
  %265 = load i64, i64* %ob_refcnt488, align 8
  %dec489 = add i64 %265, -1
  store i64 %dec489, i64* %ob_refcnt488, align 8
  %cmp490 = icmp ne i64 %dec489, 0
  br i1 %cmp490, label %if.then.491, label %if.else.492

if.then.491:                                      ; preds = %do.body.486
  br label %if.end.495

if.else.492:                                      ; preds = %do.body.486
  %266 = load %struct._object*, %struct._object** %_py_decref_tmp487, align 8
  %ob_type493 = getelementptr inbounds %struct._object, %struct._object* %266, i32 0, i32 1
  %267 = load %struct._typeobject*, %struct._typeobject** %ob_type493, align 8
  %tp_dealloc494 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %267, i32 0, i32 4
  %268 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc494, align 8
  %269 = load %struct._object*, %struct._object** %_py_decref_tmp487, align 8
  call void %268(%struct._object* %269)
  br label %if.end.495

if.end.495:                                       ; preds = %if.else.492, %if.then.491
  br label %do.end.496

do.end.496:                                       ; preds = %if.end.495
  br label %if.end.497

if.end.497:                                       ; preds = %do.end.496, %land.lhs.true.482, %do.body.478
  br label %do.end.498

do.end.498:                                       ; preds = %if.end.497
  br label %do.body.499

do.body.499:                                      ; preds = %do.end.498
  %270 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 48), align 8
  %call501 = call %struct._object* @PyLong_FromLong(i64 %270)
  store %struct._object* %call501, %struct._object** %o500, align 8
  %271 = load %struct._object*, %struct._object** %o500, align 8
  %tobool502 = icmp ne %struct._object* %271, null
  br i1 %tobool502, label %land.lhs.true.503, label %if.end.518

land.lhs.true.503:                                ; preds = %do.body.499
  %272 = load %struct._object*, %struct._object** @ModDict, align 8
  %273 = load %struct._object*, %struct._object** %o500, align 8
  %call504 = call i32 @PyDict_SetItemString(%struct._object* %272, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.375, i32 0, i32 0), %struct._object* %273)
  %cmp505 = icmp eq i32 %call504, 0
  br i1 %cmp505, label %if.then.506, label %if.end.518

if.then.506:                                      ; preds = %land.lhs.true.503
  br label %do.body.507

do.body.507:                                      ; preds = %if.then.506
  %274 = load %struct._object*, %struct._object** %o500, align 8
  store %struct._object* %274, %struct._object** %_py_decref_tmp508, align 8
  %275 = load %struct._object*, %struct._object** %_py_decref_tmp508, align 8
  %ob_refcnt509 = getelementptr inbounds %struct._object, %struct._object* %275, i32 0, i32 0
  %276 = load i64, i64* %ob_refcnt509, align 8
  %dec510 = add i64 %276, -1
  store i64 %dec510, i64* %ob_refcnt509, align 8
  %cmp511 = icmp ne i64 %dec510, 0
  br i1 %cmp511, label %if.then.512, label %if.else.513

if.then.512:                                      ; preds = %do.body.507
  br label %if.end.516

if.else.513:                                      ; preds = %do.body.507
  %277 = load %struct._object*, %struct._object** %_py_decref_tmp508, align 8
  %ob_type514 = getelementptr inbounds %struct._object, %struct._object* %277, i32 0, i32 1
  %278 = load %struct._typeobject*, %struct._typeobject** %ob_type514, align 8
  %tp_dealloc515 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %278, i32 0, i32 4
  %279 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc515, align 8
  %280 = load %struct._object*, %struct._object** %_py_decref_tmp508, align 8
  call void %279(%struct._object* %280)
  br label %if.end.516

if.end.516:                                       ; preds = %if.else.513, %if.then.512
  br label %do.end.517

do.end.517:                                       ; preds = %if.end.516
  br label %if.end.518

if.end.518:                                       ; preds = %do.end.517, %land.lhs.true.503, %do.body.499
  br label %do.end.519

do.end.519:                                       ; preds = %if.end.518
  br label %do.body.520

do.body.520:                                      ; preds = %do.end.519
  %281 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 108), align 8
  %call522 = call %struct._object* @PyLong_FromLong(i64 %281)
  store %struct._object* %call522, %struct._object** %o521, align 8
  %282 = load %struct._object*, %struct._object** %o521, align 8
  %tobool523 = icmp ne %struct._object* %282, null
  br i1 %tobool523, label %land.lhs.true.524, label %if.end.539

land.lhs.true.524:                                ; preds = %do.body.520
  %283 = load %struct._object*, %struct._object** @ModDict, align 8
  %284 = load %struct._object*, %struct._object** %o521, align 8
  %call525 = call i32 @PyDict_SetItemString(%struct._object* %283, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.376, i32 0, i32 0), %struct._object* %284)
  %cmp526 = icmp eq i32 %call525, 0
  br i1 %cmp526, label %if.then.527, label %if.end.539

if.then.527:                                      ; preds = %land.lhs.true.524
  br label %do.body.528

do.body.528:                                      ; preds = %if.then.527
  %285 = load %struct._object*, %struct._object** %o521, align 8
  store %struct._object* %285, %struct._object** %_py_decref_tmp529, align 8
  %286 = load %struct._object*, %struct._object** %_py_decref_tmp529, align 8
  %ob_refcnt530 = getelementptr inbounds %struct._object, %struct._object* %286, i32 0, i32 0
  %287 = load i64, i64* %ob_refcnt530, align 8
  %dec531 = add i64 %287, -1
  store i64 %dec531, i64* %ob_refcnt530, align 8
  %cmp532 = icmp ne i64 %dec531, 0
  br i1 %cmp532, label %if.then.533, label %if.else.534

if.then.533:                                      ; preds = %do.body.528
  br label %if.end.537

if.else.534:                                      ; preds = %do.body.528
  %288 = load %struct._object*, %struct._object** %_py_decref_tmp529, align 8
  %ob_type535 = getelementptr inbounds %struct._object, %struct._object* %288, i32 0, i32 1
  %289 = load %struct._typeobject*, %struct._typeobject** %ob_type535, align 8
  %tp_dealloc536 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %289, i32 0, i32 4
  %290 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc536, align 8
  %291 = load %struct._object*, %struct._object** %_py_decref_tmp529, align 8
  call void %290(%struct._object* %291)
  br label %if.end.537

if.end.537:                                       ; preds = %if.else.534, %if.then.533
  br label %do.end.538

do.end.538:                                       ; preds = %if.end.537
  br label %if.end.539

if.end.539:                                       ; preds = %do.end.538, %land.lhs.true.524, %do.body.520
  br label %do.end.540

do.end.540:                                       ; preds = %if.end.539
  br label %do.body.541

do.body.541:                                      ; preds = %do.end.540
  %292 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 109), align 8
  %call543 = call %struct._object* @PyLong_FromLong(i64 %292)
  store %struct._object* %call543, %struct._object** %o542, align 8
  %293 = load %struct._object*, %struct._object** %o542, align 8
  %tobool544 = icmp ne %struct._object* %293, null
  br i1 %tobool544, label %land.lhs.true.545, label %if.end.560

land.lhs.true.545:                                ; preds = %do.body.541
  %294 = load %struct._object*, %struct._object** @ModDict, align 8
  %295 = load %struct._object*, %struct._object** %o542, align 8
  %call546 = call i32 @PyDict_SetItemString(%struct._object* %294, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.377, i32 0, i32 0), %struct._object* %295)
  %cmp547 = icmp eq i32 %call546, 0
  br i1 %cmp547, label %if.then.548, label %if.end.560

if.then.548:                                      ; preds = %land.lhs.true.545
  br label %do.body.549

do.body.549:                                      ; preds = %if.then.548
  %296 = load %struct._object*, %struct._object** %o542, align 8
  store %struct._object* %296, %struct._object** %_py_decref_tmp550, align 8
  %297 = load %struct._object*, %struct._object** %_py_decref_tmp550, align 8
  %ob_refcnt551 = getelementptr inbounds %struct._object, %struct._object* %297, i32 0, i32 0
  %298 = load i64, i64* %ob_refcnt551, align 8
  %dec552 = add i64 %298, -1
  store i64 %dec552, i64* %ob_refcnt551, align 8
  %cmp553 = icmp ne i64 %dec552, 0
  br i1 %cmp553, label %if.then.554, label %if.else.555

if.then.554:                                      ; preds = %do.body.549
  br label %if.end.558

if.else.555:                                      ; preds = %do.body.549
  %299 = load %struct._object*, %struct._object** %_py_decref_tmp550, align 8
  %ob_type556 = getelementptr inbounds %struct._object, %struct._object* %299, i32 0, i32 1
  %300 = load %struct._typeobject*, %struct._typeobject** %ob_type556, align 8
  %tp_dealloc557 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %300, i32 0, i32 4
  %301 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc557, align 8
  %302 = load %struct._object*, %struct._object** %_py_decref_tmp550, align 8
  call void %301(%struct._object* %302)
  br label %if.end.558

if.end.558:                                       ; preds = %if.else.555, %if.then.554
  br label %do.end.559

do.end.559:                                       ; preds = %if.end.558
  br label %if.end.560

if.end.560:                                       ; preds = %do.end.559, %land.lhs.true.545, %do.body.541
  br label %do.end.561

do.end.561:                                       ; preds = %if.end.560
  br label %do.body.562

do.body.562:                                      ; preds = %do.end.561
  %303 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 107), align 8
  %call564 = call %struct._object* @PyLong_FromLong(i64 %303)
  store %struct._object* %call564, %struct._object** %o563, align 8
  %304 = load %struct._object*, %struct._object** %o563, align 8
  %tobool565 = icmp ne %struct._object* %304, null
  br i1 %tobool565, label %land.lhs.true.566, label %if.end.581

land.lhs.true.566:                                ; preds = %do.body.562
  %305 = load %struct._object*, %struct._object** @ModDict, align 8
  %306 = load %struct._object*, %struct._object** %o563, align 8
  %call567 = call i32 @PyDict_SetItemString(%struct._object* %305, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.378, i32 0, i32 0), %struct._object* %306)
  %cmp568 = icmp eq i32 %call567, 0
  br i1 %cmp568, label %if.then.569, label %if.end.581

if.then.569:                                      ; preds = %land.lhs.true.566
  br label %do.body.570

do.body.570:                                      ; preds = %if.then.569
  %307 = load %struct._object*, %struct._object** %o563, align 8
  store %struct._object* %307, %struct._object** %_py_decref_tmp571, align 8
  %308 = load %struct._object*, %struct._object** %_py_decref_tmp571, align 8
  %ob_refcnt572 = getelementptr inbounds %struct._object, %struct._object* %308, i32 0, i32 0
  %309 = load i64, i64* %ob_refcnt572, align 8
  %dec573 = add i64 %309, -1
  store i64 %dec573, i64* %ob_refcnt572, align 8
  %cmp574 = icmp ne i64 %dec573, 0
  br i1 %cmp574, label %if.then.575, label %if.else.576

if.then.575:                                      ; preds = %do.body.570
  br label %if.end.579

if.else.576:                                      ; preds = %do.body.570
  %310 = load %struct._object*, %struct._object** %_py_decref_tmp571, align 8
  %ob_type577 = getelementptr inbounds %struct._object, %struct._object* %310, i32 0, i32 1
  %311 = load %struct._typeobject*, %struct._typeobject** %ob_type577, align 8
  %tp_dealloc578 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %311, i32 0, i32 4
  %312 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc578, align 8
  %313 = load %struct._object*, %struct._object** %_py_decref_tmp571, align 8
  call void %312(%struct._object* %313)
  br label %if.end.579

if.end.579:                                       ; preds = %if.else.576, %if.then.575
  br label %do.end.580

do.end.580:                                       ; preds = %if.end.579
  br label %if.end.581

if.end.581:                                       ; preds = %do.end.580, %land.lhs.true.566, %do.body.562
  br label %do.end.582

do.end.582:                                       ; preds = %if.end.581
  br label %do.body.583

do.body.583:                                      ; preds = %do.end.582
  %314 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 106), align 8
  %call585 = call %struct._object* @PyLong_FromLong(i64 %314)
  store %struct._object* %call585, %struct._object** %o584, align 8
  %315 = load %struct._object*, %struct._object** %o584, align 8
  %tobool586 = icmp ne %struct._object* %315, null
  br i1 %tobool586, label %land.lhs.true.587, label %if.end.602

land.lhs.true.587:                                ; preds = %do.body.583
  %316 = load %struct._object*, %struct._object** @ModDict, align 8
  %317 = load %struct._object*, %struct._object** %o584, align 8
  %call588 = call i32 @PyDict_SetItemString(%struct._object* %316, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.379, i32 0, i32 0), %struct._object* %317)
  %cmp589 = icmp eq i32 %call588, 0
  br i1 %cmp589, label %if.then.590, label %if.end.602

if.then.590:                                      ; preds = %land.lhs.true.587
  br label %do.body.591

do.body.591:                                      ; preds = %if.then.590
  %318 = load %struct._object*, %struct._object** %o584, align 8
  store %struct._object* %318, %struct._object** %_py_decref_tmp592, align 8
  %319 = load %struct._object*, %struct._object** %_py_decref_tmp592, align 8
  %ob_refcnt593 = getelementptr inbounds %struct._object, %struct._object* %319, i32 0, i32 0
  %320 = load i64, i64* %ob_refcnt593, align 8
  %dec594 = add i64 %320, -1
  store i64 %dec594, i64* %ob_refcnt593, align 8
  %cmp595 = icmp ne i64 %dec594, 0
  br i1 %cmp595, label %if.then.596, label %if.else.597

if.then.596:                                      ; preds = %do.body.591
  br label %if.end.600

if.else.597:                                      ; preds = %do.body.591
  %321 = load %struct._object*, %struct._object** %_py_decref_tmp592, align 8
  %ob_type598 = getelementptr inbounds %struct._object, %struct._object* %321, i32 0, i32 1
  %322 = load %struct._typeobject*, %struct._typeobject** %ob_type598, align 8
  %tp_dealloc599 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %322, i32 0, i32 4
  %323 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc599, align 8
  %324 = load %struct._object*, %struct._object** %_py_decref_tmp592, align 8
  call void %323(%struct._object* %324)
  br label %if.end.600

if.end.600:                                       ; preds = %if.else.597, %if.then.596
  br label %do.end.601

do.end.601:                                       ; preds = %if.end.600
  br label %if.end.602

if.end.602:                                       ; preds = %do.end.601, %land.lhs.true.587, %do.body.583
  br label %do.end.603

do.end.603:                                       ; preds = %if.end.602
  br label %do.body.604

do.body.604:                                      ; preds = %do.end.603
  %325 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 117), align 8
  %call606 = call %struct._object* @PyLong_FromLong(i64 %325)
  store %struct._object* %call606, %struct._object** %o605, align 8
  %326 = load %struct._object*, %struct._object** %o605, align 8
  %tobool607 = icmp ne %struct._object* %326, null
  br i1 %tobool607, label %land.lhs.true.608, label %if.end.623

land.lhs.true.608:                                ; preds = %do.body.604
  %327 = load %struct._object*, %struct._object** @ModDict, align 8
  %328 = load %struct._object*, %struct._object** %o605, align 8
  %call609 = call i32 @PyDict_SetItemString(%struct._object* %327, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.380, i32 0, i32 0), %struct._object* %328)
  %cmp610 = icmp eq i32 %call609, 0
  br i1 %cmp610, label %if.then.611, label %if.end.623

if.then.611:                                      ; preds = %land.lhs.true.608
  br label %do.body.612

do.body.612:                                      ; preds = %if.then.611
  %329 = load %struct._object*, %struct._object** %o605, align 8
  store %struct._object* %329, %struct._object** %_py_decref_tmp613, align 8
  %330 = load %struct._object*, %struct._object** %_py_decref_tmp613, align 8
  %ob_refcnt614 = getelementptr inbounds %struct._object, %struct._object* %330, i32 0, i32 0
  %331 = load i64, i64* %ob_refcnt614, align 8
  %dec615 = add i64 %331, -1
  store i64 %dec615, i64* %ob_refcnt614, align 8
  %cmp616 = icmp ne i64 %dec615, 0
  br i1 %cmp616, label %if.then.617, label %if.else.618

if.then.617:                                      ; preds = %do.body.612
  br label %if.end.621

if.else.618:                                      ; preds = %do.body.612
  %332 = load %struct._object*, %struct._object** %_py_decref_tmp613, align 8
  %ob_type619 = getelementptr inbounds %struct._object, %struct._object* %332, i32 0, i32 1
  %333 = load %struct._typeobject*, %struct._typeobject** %ob_type619, align 8
  %tp_dealloc620 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %333, i32 0, i32 4
  %334 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc620, align 8
  %335 = load %struct._object*, %struct._object** %_py_decref_tmp613, align 8
  call void %334(%struct._object* %335)
  br label %if.end.621

if.end.621:                                       ; preds = %if.else.618, %if.then.617
  br label %do.end.622

do.end.622:                                       ; preds = %if.end.621
  br label %if.end.623

if.end.623:                                       ; preds = %do.end.622, %land.lhs.true.608, %do.body.604
  br label %do.end.624

do.end.624:                                       ; preds = %if.end.623
  br label %do.body.625

do.body.625:                                      ; preds = %do.end.624
  %336 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 116), align 8
  %call627 = call %struct._object* @PyLong_FromLong(i64 %336)
  store %struct._object* %call627, %struct._object** %o626, align 8
  %337 = load %struct._object*, %struct._object** %o626, align 8
  %tobool628 = icmp ne %struct._object* %337, null
  br i1 %tobool628, label %land.lhs.true.629, label %if.end.644

land.lhs.true.629:                                ; preds = %do.body.625
  %338 = load %struct._object*, %struct._object** @ModDict, align 8
  %339 = load %struct._object*, %struct._object** %o626, align 8
  %call630 = call i32 @PyDict_SetItemString(%struct._object* %338, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.381, i32 0, i32 0), %struct._object* %339)
  %cmp631 = icmp eq i32 %call630, 0
  br i1 %cmp631, label %if.then.632, label %if.end.644

if.then.632:                                      ; preds = %land.lhs.true.629
  br label %do.body.633

do.body.633:                                      ; preds = %if.then.632
  %340 = load %struct._object*, %struct._object** %o626, align 8
  store %struct._object* %340, %struct._object** %_py_decref_tmp634, align 8
  %341 = load %struct._object*, %struct._object** %_py_decref_tmp634, align 8
  %ob_refcnt635 = getelementptr inbounds %struct._object, %struct._object* %341, i32 0, i32 0
  %342 = load i64, i64* %ob_refcnt635, align 8
  %dec636 = add i64 %342, -1
  store i64 %dec636, i64* %ob_refcnt635, align 8
  %cmp637 = icmp ne i64 %dec636, 0
  br i1 %cmp637, label %if.then.638, label %if.else.639

if.then.638:                                      ; preds = %do.body.633
  br label %if.end.642

if.else.639:                                      ; preds = %do.body.633
  %343 = load %struct._object*, %struct._object** %_py_decref_tmp634, align 8
  %ob_type640 = getelementptr inbounds %struct._object, %struct._object* %343, i32 0, i32 1
  %344 = load %struct._typeobject*, %struct._typeobject** %ob_type640, align 8
  %tp_dealloc641 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %344, i32 0, i32 4
  %345 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc641, align 8
  %346 = load %struct._object*, %struct._object** %_py_decref_tmp634, align 8
  call void %345(%struct._object* %346)
  br label %if.end.642

if.end.642:                                       ; preds = %if.else.639, %if.then.638
  br label %do.end.643

do.end.643:                                       ; preds = %if.end.642
  br label %if.end.644

if.end.644:                                       ; preds = %do.end.643, %land.lhs.true.629, %do.body.625
  br label %do.end.645

do.end.645:                                       ; preds = %if.end.644
  br label %do.body.646

do.body.646:                                      ; preds = %do.end.645
  %347 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 118), align 8
  %call648 = call %struct._object* @PyLong_FromLong(i64 %347)
  store %struct._object* %call648, %struct._object** %o647, align 8
  %348 = load %struct._object*, %struct._object** %o647, align 8
  %tobool649 = icmp ne %struct._object* %348, null
  br i1 %tobool649, label %land.lhs.true.650, label %if.end.665

land.lhs.true.650:                                ; preds = %do.body.646
  %349 = load %struct._object*, %struct._object** @ModDict, align 8
  %350 = load %struct._object*, %struct._object** %o647, align 8
  %call651 = call i32 @PyDict_SetItemString(%struct._object* %349, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.382, i32 0, i32 0), %struct._object* %350)
  %cmp652 = icmp eq i32 %call651, 0
  br i1 %cmp652, label %if.then.653, label %if.end.665

if.then.653:                                      ; preds = %land.lhs.true.650
  br label %do.body.654

do.body.654:                                      ; preds = %if.then.653
  %351 = load %struct._object*, %struct._object** %o647, align 8
  store %struct._object* %351, %struct._object** %_py_decref_tmp655, align 8
  %352 = load %struct._object*, %struct._object** %_py_decref_tmp655, align 8
  %ob_refcnt656 = getelementptr inbounds %struct._object, %struct._object* %352, i32 0, i32 0
  %353 = load i64, i64* %ob_refcnt656, align 8
  %dec657 = add i64 %353, -1
  store i64 %dec657, i64* %ob_refcnt656, align 8
  %cmp658 = icmp ne i64 %dec657, 0
  br i1 %cmp658, label %if.then.659, label %if.else.660

if.then.659:                                      ; preds = %do.body.654
  br label %if.end.663

if.else.660:                                      ; preds = %do.body.654
  %354 = load %struct._object*, %struct._object** %_py_decref_tmp655, align 8
  %ob_type661 = getelementptr inbounds %struct._object, %struct._object* %354, i32 0, i32 1
  %355 = load %struct._typeobject*, %struct._typeobject** %ob_type661, align 8
  %tp_dealloc662 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %355, i32 0, i32 4
  %356 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc662, align 8
  %357 = load %struct._object*, %struct._object** %_py_decref_tmp655, align 8
  call void %356(%struct._object* %357)
  br label %if.end.663

if.end.663:                                       ; preds = %if.else.660, %if.then.659
  br label %do.end.664

do.end.664:                                       ; preds = %if.end.663
  br label %if.end.665

if.end.665:                                       ; preds = %do.end.664, %land.lhs.true.650, %do.body.646
  br label %do.end.666

do.end.666:                                       ; preds = %if.end.665
  br label %do.body.667

do.body.667:                                      ; preds = %do.end.666
  %358 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 119), align 8
  %call669 = call %struct._object* @PyLong_FromLong(i64 %358)
  store %struct._object* %call669, %struct._object** %o668, align 8
  %359 = load %struct._object*, %struct._object** %o668, align 8
  %tobool670 = icmp ne %struct._object* %359, null
  br i1 %tobool670, label %land.lhs.true.671, label %if.end.686

land.lhs.true.671:                                ; preds = %do.body.667
  %360 = load %struct._object*, %struct._object** @ModDict, align 8
  %361 = load %struct._object*, %struct._object** %o668, align 8
  %call672 = call i32 @PyDict_SetItemString(%struct._object* %360, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.383, i32 0, i32 0), %struct._object* %361)
  %cmp673 = icmp eq i32 %call672, 0
  br i1 %cmp673, label %if.then.674, label %if.end.686

if.then.674:                                      ; preds = %land.lhs.true.671
  br label %do.body.675

do.body.675:                                      ; preds = %if.then.674
  %362 = load %struct._object*, %struct._object** %o668, align 8
  store %struct._object* %362, %struct._object** %_py_decref_tmp676, align 8
  %363 = load %struct._object*, %struct._object** %_py_decref_tmp676, align 8
  %ob_refcnt677 = getelementptr inbounds %struct._object, %struct._object* %363, i32 0, i32 0
  %364 = load i64, i64* %ob_refcnt677, align 8
  %dec678 = add i64 %364, -1
  store i64 %dec678, i64* %ob_refcnt677, align 8
  %cmp679 = icmp ne i64 %dec678, 0
  br i1 %cmp679, label %if.then.680, label %if.else.681

if.then.680:                                      ; preds = %do.body.675
  br label %if.end.684

if.else.681:                                      ; preds = %do.body.675
  %365 = load %struct._object*, %struct._object** %_py_decref_tmp676, align 8
  %ob_type682 = getelementptr inbounds %struct._object, %struct._object* %365, i32 0, i32 1
  %366 = load %struct._typeobject*, %struct._typeobject** %ob_type682, align 8
  %tp_dealloc683 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %366, i32 0, i32 4
  %367 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc683, align 8
  %368 = load %struct._object*, %struct._object** %_py_decref_tmp676, align 8
  call void %367(%struct._object* %368)
  br label %if.end.684

if.end.684:                                       ; preds = %if.else.681, %if.then.680
  br label %do.end.685

do.end.685:                                       ; preds = %if.end.684
  br label %if.end.686

if.end.686:                                       ; preds = %do.end.685, %land.lhs.true.671, %do.body.667
  br label %do.end.687

do.end.687:                                       ; preds = %if.end.686
  br label %do.body.688

do.body.688:                                      ; preds = %do.end.687
  %369 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 113), align 8
  %call690 = call %struct._object* @PyLong_FromLong(i64 %369)
  store %struct._object* %call690, %struct._object** %o689, align 8
  %370 = load %struct._object*, %struct._object** %o689, align 8
  %tobool691 = icmp ne %struct._object* %370, null
  br i1 %tobool691, label %land.lhs.true.692, label %if.end.707

land.lhs.true.692:                                ; preds = %do.body.688
  %371 = load %struct._object*, %struct._object** @ModDict, align 8
  %372 = load %struct._object*, %struct._object** %o689, align 8
  %call693 = call i32 @PyDict_SetItemString(%struct._object* %371, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.384, i32 0, i32 0), %struct._object* %372)
  %cmp694 = icmp eq i32 %call693, 0
  br i1 %cmp694, label %if.then.695, label %if.end.707

if.then.695:                                      ; preds = %land.lhs.true.692
  br label %do.body.696

do.body.696:                                      ; preds = %if.then.695
  %373 = load %struct._object*, %struct._object** %o689, align 8
  store %struct._object* %373, %struct._object** %_py_decref_tmp697, align 8
  %374 = load %struct._object*, %struct._object** %_py_decref_tmp697, align 8
  %ob_refcnt698 = getelementptr inbounds %struct._object, %struct._object* %374, i32 0, i32 0
  %375 = load i64, i64* %ob_refcnt698, align 8
  %dec699 = add i64 %375, -1
  store i64 %dec699, i64* %ob_refcnt698, align 8
  %cmp700 = icmp ne i64 %dec699, 0
  br i1 %cmp700, label %if.then.701, label %if.else.702

if.then.701:                                      ; preds = %do.body.696
  br label %if.end.705

if.else.702:                                      ; preds = %do.body.696
  %376 = load %struct._object*, %struct._object** %_py_decref_tmp697, align 8
  %ob_type703 = getelementptr inbounds %struct._object, %struct._object* %376, i32 0, i32 1
  %377 = load %struct._typeobject*, %struct._typeobject** %ob_type703, align 8
  %tp_dealloc704 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %377, i32 0, i32 4
  %378 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc704, align 8
  %379 = load %struct._object*, %struct._object** %_py_decref_tmp697, align 8
  call void %378(%struct._object* %379)
  br label %if.end.705

if.end.705:                                       ; preds = %if.else.702, %if.then.701
  br label %do.end.706

do.end.706:                                       ; preds = %if.end.705
  br label %if.end.707

if.end.707:                                       ; preds = %do.end.706, %land.lhs.true.692, %do.body.688
  br label %do.end.708

do.end.708:                                       ; preds = %if.end.707
  br label %do.body.709

do.body.709:                                      ; preds = %do.end.708
  %380 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 120), align 8
  %call711 = call %struct._object* @PyLong_FromLong(i64 %380)
  store %struct._object* %call711, %struct._object** %o710, align 8
  %381 = load %struct._object*, %struct._object** %o710, align 8
  %tobool712 = icmp ne %struct._object* %381, null
  br i1 %tobool712, label %land.lhs.true.713, label %if.end.728

land.lhs.true.713:                                ; preds = %do.body.709
  %382 = load %struct._object*, %struct._object** @ModDict, align 8
  %383 = load %struct._object*, %struct._object** %o710, align 8
  %call714 = call i32 @PyDict_SetItemString(%struct._object* %382, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.385, i32 0, i32 0), %struct._object* %383)
  %cmp715 = icmp eq i32 %call714, 0
  br i1 %cmp715, label %if.then.716, label %if.end.728

if.then.716:                                      ; preds = %land.lhs.true.713
  br label %do.body.717

do.body.717:                                      ; preds = %if.then.716
  %384 = load %struct._object*, %struct._object** %o710, align 8
  store %struct._object* %384, %struct._object** %_py_decref_tmp718, align 8
  %385 = load %struct._object*, %struct._object** %_py_decref_tmp718, align 8
  %ob_refcnt719 = getelementptr inbounds %struct._object, %struct._object* %385, i32 0, i32 0
  %386 = load i64, i64* %ob_refcnt719, align 8
  %dec720 = add i64 %386, -1
  store i64 %dec720, i64* %ob_refcnt719, align 8
  %cmp721 = icmp ne i64 %dec720, 0
  br i1 %cmp721, label %if.then.722, label %if.else.723

if.then.722:                                      ; preds = %do.body.717
  br label %if.end.726

if.else.723:                                      ; preds = %do.body.717
  %387 = load %struct._object*, %struct._object** %_py_decref_tmp718, align 8
  %ob_type724 = getelementptr inbounds %struct._object, %struct._object* %387, i32 0, i32 1
  %388 = load %struct._typeobject*, %struct._typeobject** %ob_type724, align 8
  %tp_dealloc725 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %388, i32 0, i32 4
  %389 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc725, align 8
  %390 = load %struct._object*, %struct._object** %_py_decref_tmp718, align 8
  call void %389(%struct._object* %390)
  br label %if.end.726

if.end.726:                                       ; preds = %if.else.723, %if.then.722
  br label %do.end.727

do.end.727:                                       ; preds = %if.end.726
  br label %if.end.728

if.end.728:                                       ; preds = %do.end.727, %land.lhs.true.713, %do.body.709
  br label %do.end.729

do.end.729:                                       ; preds = %if.end.728
  br label %do.body.730

do.body.730:                                      ; preds = %do.end.729
  %391 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 110), align 8
  %call732 = call %struct._object* @PyLong_FromLong(i64 %391)
  store %struct._object* %call732, %struct._object** %o731, align 8
  %392 = load %struct._object*, %struct._object** %o731, align 8
  %tobool733 = icmp ne %struct._object* %392, null
  br i1 %tobool733, label %land.lhs.true.734, label %if.end.749

land.lhs.true.734:                                ; preds = %do.body.730
  %393 = load %struct._object*, %struct._object** @ModDict, align 8
  %394 = load %struct._object*, %struct._object** %o731, align 8
  %call735 = call i32 @PyDict_SetItemString(%struct._object* %393, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.386, i32 0, i32 0), %struct._object* %394)
  %cmp736 = icmp eq i32 %call735, 0
  br i1 %cmp736, label %if.then.737, label %if.end.749

if.then.737:                                      ; preds = %land.lhs.true.734
  br label %do.body.738

do.body.738:                                      ; preds = %if.then.737
  %395 = load %struct._object*, %struct._object** %o731, align 8
  store %struct._object* %395, %struct._object** %_py_decref_tmp739, align 8
  %396 = load %struct._object*, %struct._object** %_py_decref_tmp739, align 8
  %ob_refcnt740 = getelementptr inbounds %struct._object, %struct._object* %396, i32 0, i32 0
  %397 = load i64, i64* %ob_refcnt740, align 8
  %dec741 = add i64 %397, -1
  store i64 %dec741, i64* %ob_refcnt740, align 8
  %cmp742 = icmp ne i64 %dec741, 0
  br i1 %cmp742, label %if.then.743, label %if.else.744

if.then.743:                                      ; preds = %do.body.738
  br label %if.end.747

if.else.744:                                      ; preds = %do.body.738
  %398 = load %struct._object*, %struct._object** %_py_decref_tmp739, align 8
  %ob_type745 = getelementptr inbounds %struct._object, %struct._object* %398, i32 0, i32 1
  %399 = load %struct._typeobject*, %struct._typeobject** %ob_type745, align 8
  %tp_dealloc746 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %399, i32 0, i32 4
  %400 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc746, align 8
  %401 = load %struct._object*, %struct._object** %_py_decref_tmp739, align 8
  call void %400(%struct._object* %401)
  br label %if.end.747

if.end.747:                                       ; preds = %if.else.744, %if.then.743
  br label %do.end.748

do.end.748:                                       ; preds = %if.end.747
  br label %if.end.749

if.end.749:                                       ; preds = %do.end.748, %land.lhs.true.734, %do.body.730
  br label %do.end.750

do.end.750:                                       ; preds = %if.end.749
  br label %do.body.751

do.body.751:                                      ; preds = %do.end.750
  %402 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 112), align 8
  %call753 = call %struct._object* @PyLong_FromLong(i64 %402)
  store %struct._object* %call753, %struct._object** %o752, align 8
  %403 = load %struct._object*, %struct._object** %o752, align 8
  %tobool754 = icmp ne %struct._object* %403, null
  br i1 %tobool754, label %land.lhs.true.755, label %if.end.770

land.lhs.true.755:                                ; preds = %do.body.751
  %404 = load %struct._object*, %struct._object** @ModDict, align 8
  %405 = load %struct._object*, %struct._object** %o752, align 8
  %call756 = call i32 @PyDict_SetItemString(%struct._object* %404, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.387, i32 0, i32 0), %struct._object* %405)
  %cmp757 = icmp eq i32 %call756, 0
  br i1 %cmp757, label %if.then.758, label %if.end.770

if.then.758:                                      ; preds = %land.lhs.true.755
  br label %do.body.759

do.body.759:                                      ; preds = %if.then.758
  %406 = load %struct._object*, %struct._object** %o752, align 8
  store %struct._object* %406, %struct._object** %_py_decref_tmp760, align 8
  %407 = load %struct._object*, %struct._object** %_py_decref_tmp760, align 8
  %ob_refcnt761 = getelementptr inbounds %struct._object, %struct._object* %407, i32 0, i32 0
  %408 = load i64, i64* %ob_refcnt761, align 8
  %dec762 = add i64 %408, -1
  store i64 %dec762, i64* %ob_refcnt761, align 8
  %cmp763 = icmp ne i64 %dec762, 0
  br i1 %cmp763, label %if.then.764, label %if.else.765

if.then.764:                                      ; preds = %do.body.759
  br label %if.end.768

if.else.765:                                      ; preds = %do.body.759
  %409 = load %struct._object*, %struct._object** %_py_decref_tmp760, align 8
  %ob_type766 = getelementptr inbounds %struct._object, %struct._object* %409, i32 0, i32 1
  %410 = load %struct._typeobject*, %struct._typeobject** %ob_type766, align 8
  %tp_dealloc767 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %410, i32 0, i32 4
  %411 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc767, align 8
  %412 = load %struct._object*, %struct._object** %_py_decref_tmp760, align 8
  call void %411(%struct._object* %412)
  br label %if.end.768

if.end.768:                                       ; preds = %if.else.765, %if.then.764
  br label %do.end.769

do.end.769:                                       ; preds = %if.end.768
  br label %if.end.770

if.end.770:                                       ; preds = %do.end.769, %land.lhs.true.755, %do.body.751
  br label %do.end.771

do.end.771:                                       ; preds = %if.end.770
  br label %do.body.772

do.body.772:                                      ; preds = %do.end.771
  %413 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 114), align 8
  %call774 = call %struct._object* @PyLong_FromLong(i64 %413)
  store %struct._object* %call774, %struct._object** %o773, align 8
  %414 = load %struct._object*, %struct._object** %o773, align 8
  %tobool775 = icmp ne %struct._object* %414, null
  br i1 %tobool775, label %land.lhs.true.776, label %if.end.791

land.lhs.true.776:                                ; preds = %do.body.772
  %415 = load %struct._object*, %struct._object** @ModDict, align 8
  %416 = load %struct._object*, %struct._object** %o773, align 8
  %call777 = call i32 @PyDict_SetItemString(%struct._object* %415, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.388, i32 0, i32 0), %struct._object* %416)
  %cmp778 = icmp eq i32 %call777, 0
  br i1 %cmp778, label %if.then.779, label %if.end.791

if.then.779:                                      ; preds = %land.lhs.true.776
  br label %do.body.780

do.body.780:                                      ; preds = %if.then.779
  %417 = load %struct._object*, %struct._object** %o773, align 8
  store %struct._object* %417, %struct._object** %_py_decref_tmp781, align 8
  %418 = load %struct._object*, %struct._object** %_py_decref_tmp781, align 8
  %ob_refcnt782 = getelementptr inbounds %struct._object, %struct._object* %418, i32 0, i32 0
  %419 = load i64, i64* %ob_refcnt782, align 8
  %dec783 = add i64 %419, -1
  store i64 %dec783, i64* %ob_refcnt782, align 8
  %cmp784 = icmp ne i64 %dec783, 0
  br i1 %cmp784, label %if.then.785, label %if.else.786

if.then.785:                                      ; preds = %do.body.780
  br label %if.end.789

if.else.786:                                      ; preds = %do.body.780
  %420 = load %struct._object*, %struct._object** %_py_decref_tmp781, align 8
  %ob_type787 = getelementptr inbounds %struct._object, %struct._object* %420, i32 0, i32 1
  %421 = load %struct._typeobject*, %struct._typeobject** %ob_type787, align 8
  %tp_dealloc788 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %421, i32 0, i32 4
  %422 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc788, align 8
  %423 = load %struct._object*, %struct._object** %_py_decref_tmp781, align 8
  call void %422(%struct._object* %423)
  br label %if.end.789

if.end.789:                                       ; preds = %if.else.786, %if.then.785
  br label %do.end.790

do.end.790:                                       ; preds = %if.end.789
  br label %if.end.791

if.end.791:                                       ; preds = %do.end.790, %land.lhs.true.776, %do.body.772
  br label %do.end.792

do.end.792:                                       ; preds = %if.end.791
  br label %do.body.793

do.body.793:                                      ; preds = %do.end.792
  %424 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 121), align 8
  %call795 = call %struct._object* @PyLong_FromLong(i64 %424)
  store %struct._object* %call795, %struct._object** %o794, align 8
  %425 = load %struct._object*, %struct._object** %o794, align 8
  %tobool796 = icmp ne %struct._object* %425, null
  br i1 %tobool796, label %land.lhs.true.797, label %if.end.812

land.lhs.true.797:                                ; preds = %do.body.793
  %426 = load %struct._object*, %struct._object** @ModDict, align 8
  %427 = load %struct._object*, %struct._object** %o794, align 8
  %call798 = call i32 @PyDict_SetItemString(%struct._object* %426, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.389, i32 0, i32 0), %struct._object* %427)
  %cmp799 = icmp eq i32 %call798, 0
  br i1 %cmp799, label %if.then.800, label %if.end.812

if.then.800:                                      ; preds = %land.lhs.true.797
  br label %do.body.801

do.body.801:                                      ; preds = %if.then.800
  %428 = load %struct._object*, %struct._object** %o794, align 8
  store %struct._object* %428, %struct._object** %_py_decref_tmp802, align 8
  %429 = load %struct._object*, %struct._object** %_py_decref_tmp802, align 8
  %ob_refcnt803 = getelementptr inbounds %struct._object, %struct._object* %429, i32 0, i32 0
  %430 = load i64, i64* %ob_refcnt803, align 8
  %dec804 = add i64 %430, -1
  store i64 %dec804, i64* %ob_refcnt803, align 8
  %cmp805 = icmp ne i64 %dec804, 0
  br i1 %cmp805, label %if.then.806, label %if.else.807

if.then.806:                                      ; preds = %do.body.801
  br label %if.end.810

if.else.807:                                      ; preds = %do.body.801
  %431 = load %struct._object*, %struct._object** %_py_decref_tmp802, align 8
  %ob_type808 = getelementptr inbounds %struct._object, %struct._object* %431, i32 0, i32 1
  %432 = load %struct._typeobject*, %struct._typeobject** %ob_type808, align 8
  %tp_dealloc809 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %432, i32 0, i32 4
  %433 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc809, align 8
  %434 = load %struct._object*, %struct._object** %_py_decref_tmp802, align 8
  call void %433(%struct._object* %434)
  br label %if.end.810

if.end.810:                                       ; preds = %if.else.807, %if.then.806
  br label %do.end.811

do.end.811:                                       ; preds = %if.end.810
  br label %if.end.812

if.end.812:                                       ; preds = %do.end.811, %land.lhs.true.797, %do.body.793
  br label %do.end.813

do.end.813:                                       ; preds = %if.end.812
  br label %do.body.814

do.body.814:                                      ; preds = %do.end.813
  %435 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 122), align 8
  %call816 = call %struct._object* @PyLong_FromLong(i64 %435)
  store %struct._object* %call816, %struct._object** %o815, align 8
  %436 = load %struct._object*, %struct._object** %o815, align 8
  %tobool817 = icmp ne %struct._object* %436, null
  br i1 %tobool817, label %land.lhs.true.818, label %if.end.833

land.lhs.true.818:                                ; preds = %do.body.814
  %437 = load %struct._object*, %struct._object** @ModDict, align 8
  %438 = load %struct._object*, %struct._object** %o815, align 8
  %call819 = call i32 @PyDict_SetItemString(%struct._object* %437, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.390, i32 0, i32 0), %struct._object* %438)
  %cmp820 = icmp eq i32 %call819, 0
  br i1 %cmp820, label %if.then.821, label %if.end.833

if.then.821:                                      ; preds = %land.lhs.true.818
  br label %do.body.822

do.body.822:                                      ; preds = %if.then.821
  %439 = load %struct._object*, %struct._object** %o815, align 8
  store %struct._object* %439, %struct._object** %_py_decref_tmp823, align 8
  %440 = load %struct._object*, %struct._object** %_py_decref_tmp823, align 8
  %ob_refcnt824 = getelementptr inbounds %struct._object, %struct._object* %440, i32 0, i32 0
  %441 = load i64, i64* %ob_refcnt824, align 8
  %dec825 = add i64 %441, -1
  store i64 %dec825, i64* %ob_refcnt824, align 8
  %cmp826 = icmp ne i64 %dec825, 0
  br i1 %cmp826, label %if.then.827, label %if.else.828

if.then.827:                                      ; preds = %do.body.822
  br label %if.end.831

if.else.828:                                      ; preds = %do.body.822
  %442 = load %struct._object*, %struct._object** %_py_decref_tmp823, align 8
  %ob_type829 = getelementptr inbounds %struct._object, %struct._object* %442, i32 0, i32 1
  %443 = load %struct._typeobject*, %struct._typeobject** %ob_type829, align 8
  %tp_dealloc830 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %443, i32 0, i32 4
  %444 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc830, align 8
  %445 = load %struct._object*, %struct._object** %_py_decref_tmp823, align 8
  call void %444(%struct._object* %445)
  br label %if.end.831

if.end.831:                                       ; preds = %if.else.828, %if.then.827
  br label %do.end.832

do.end.832:                                       ; preds = %if.end.831
  br label %if.end.833

if.end.833:                                       ; preds = %do.end.832, %land.lhs.true.818, %do.body.814
  br label %do.end.834

do.end.834:                                       ; preds = %if.end.833
  br label %do.body.835

do.body.835:                                      ; preds = %do.end.834
  %446 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 123), align 8
  %call837 = call %struct._object* @PyLong_FromLong(i64 %446)
  store %struct._object* %call837, %struct._object** %o836, align 8
  %447 = load %struct._object*, %struct._object** %o836, align 8
  %tobool838 = icmp ne %struct._object* %447, null
  br i1 %tobool838, label %land.lhs.true.839, label %if.end.854

land.lhs.true.839:                                ; preds = %do.body.835
  %448 = load %struct._object*, %struct._object** @ModDict, align 8
  %449 = load %struct._object*, %struct._object** %o836, align 8
  %call840 = call i32 @PyDict_SetItemString(%struct._object* %448, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.391, i32 0, i32 0), %struct._object* %449)
  %cmp841 = icmp eq i32 %call840, 0
  br i1 %cmp841, label %if.then.842, label %if.end.854

if.then.842:                                      ; preds = %land.lhs.true.839
  br label %do.body.843

do.body.843:                                      ; preds = %if.then.842
  %450 = load %struct._object*, %struct._object** %o836, align 8
  store %struct._object* %450, %struct._object** %_py_decref_tmp844, align 8
  %451 = load %struct._object*, %struct._object** %_py_decref_tmp844, align 8
  %ob_refcnt845 = getelementptr inbounds %struct._object, %struct._object* %451, i32 0, i32 0
  %452 = load i64, i64* %ob_refcnt845, align 8
  %dec846 = add i64 %452, -1
  store i64 %dec846, i64* %ob_refcnt845, align 8
  %cmp847 = icmp ne i64 %dec846, 0
  br i1 %cmp847, label %if.then.848, label %if.else.849

if.then.848:                                      ; preds = %do.body.843
  br label %if.end.852

if.else.849:                                      ; preds = %do.body.843
  %453 = load %struct._object*, %struct._object** %_py_decref_tmp844, align 8
  %ob_type850 = getelementptr inbounds %struct._object, %struct._object* %453, i32 0, i32 1
  %454 = load %struct._typeobject*, %struct._typeobject** %ob_type850, align 8
  %tp_dealloc851 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %454, i32 0, i32 4
  %455 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc851, align 8
  %456 = load %struct._object*, %struct._object** %_py_decref_tmp844, align 8
  call void %455(%struct._object* %456)
  br label %if.end.852

if.end.852:                                       ; preds = %if.else.849, %if.then.848
  br label %do.end.853

do.end.853:                                       ; preds = %if.end.852
  br label %if.end.854

if.end.854:                                       ; preds = %do.end.853, %land.lhs.true.839, %do.body.835
  br label %do.end.855

do.end.855:                                       ; preds = %if.end.854
  br label %do.body.856

do.body.856:                                      ; preds = %do.end.855
  %457 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 124), align 8
  %call858 = call %struct._object* @PyLong_FromLong(i64 %457)
  store %struct._object* %call858, %struct._object** %o857, align 8
  %458 = load %struct._object*, %struct._object** %o857, align 8
  %tobool859 = icmp ne %struct._object* %458, null
  br i1 %tobool859, label %land.lhs.true.860, label %if.end.875

land.lhs.true.860:                                ; preds = %do.body.856
  %459 = load %struct._object*, %struct._object** @ModDict, align 8
  %460 = load %struct._object*, %struct._object** %o857, align 8
  %call861 = call i32 @PyDict_SetItemString(%struct._object* %459, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.392, i32 0, i32 0), %struct._object* %460)
  %cmp862 = icmp eq i32 %call861, 0
  br i1 %cmp862, label %if.then.863, label %if.end.875

if.then.863:                                      ; preds = %land.lhs.true.860
  br label %do.body.864

do.body.864:                                      ; preds = %if.then.863
  %461 = load %struct._object*, %struct._object** %o857, align 8
  store %struct._object* %461, %struct._object** %_py_decref_tmp865, align 8
  %462 = load %struct._object*, %struct._object** %_py_decref_tmp865, align 8
  %ob_refcnt866 = getelementptr inbounds %struct._object, %struct._object* %462, i32 0, i32 0
  %463 = load i64, i64* %ob_refcnt866, align 8
  %dec867 = add i64 %463, -1
  store i64 %dec867, i64* %ob_refcnt866, align 8
  %cmp868 = icmp ne i64 %dec867, 0
  br i1 %cmp868, label %if.then.869, label %if.else.870

if.then.869:                                      ; preds = %do.body.864
  br label %if.end.873

if.else.870:                                      ; preds = %do.body.864
  %464 = load %struct._object*, %struct._object** %_py_decref_tmp865, align 8
  %ob_type871 = getelementptr inbounds %struct._object, %struct._object* %464, i32 0, i32 1
  %465 = load %struct._typeobject*, %struct._typeobject** %ob_type871, align 8
  %tp_dealloc872 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %465, i32 0, i32 4
  %466 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc872, align 8
  %467 = load %struct._object*, %struct._object** %_py_decref_tmp865, align 8
  call void %466(%struct._object* %467)
  br label %if.end.873

if.end.873:                                       ; preds = %if.else.870, %if.then.869
  br label %do.end.874

do.end.874:                                       ; preds = %if.end.873
  br label %if.end.875

if.end.875:                                       ; preds = %do.end.874, %land.lhs.true.860, %do.body.856
  br label %do.end.876

do.end.876:                                       ; preds = %if.end.875
  br label %do.body.877

do.body.877:                                      ; preds = %do.end.876
  %468 = load i64, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @acs_map, i32 0, i64 125), align 8
  %call879 = call %struct._object* @PyLong_FromLong(i64 %468)
  store %struct._object* %call879, %struct._object** %o878, align 8
  %469 = load %struct._object*, %struct._object** %o878, align 8
  %tobool880 = icmp ne %struct._object* %469, null
  br i1 %tobool880, label %land.lhs.true.881, label %if.end.896

land.lhs.true.881:                                ; preds = %do.body.877
  %470 = load %struct._object*, %struct._object** @ModDict, align 8
  %471 = load %struct._object*, %struct._object** %o878, align 8
  %call882 = call i32 @PyDict_SetItemString(%struct._object* %470, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.393, i32 0, i32 0), %struct._object* %471)
  %cmp883 = icmp eq i32 %call882, 0
  br i1 %cmp883, label %if.then.884, label %if.end.896

if.then.884:                                      ; preds = %land.lhs.true.881
  br label %do.body.885

do.body.885:                                      ; preds = %if.then.884
  %472 = load %struct._object*, %struct._object** %o878, align 8
  store %struct._object* %472, %struct._object** %_py_decref_tmp886, align 8
  %473 = load %struct._object*, %struct._object** %_py_decref_tmp886, align 8
  %ob_refcnt887 = getelementptr inbounds %struct._object, %struct._object* %473, i32 0, i32 0
  %474 = load i64, i64* %ob_refcnt887, align 8
  %dec888 = add i64 %474, -1
  store i64 %dec888, i64* %ob_refcnt887, align 8
  %cmp889 = icmp ne i64 %dec888, 0
  br i1 %cmp889, label %if.then.890, label %if.else.891

if.then.890:                                      ; preds = %do.body.885
  br label %if.end.894

if.else.891:                                      ; preds = %do.body.885
  %475 = load %struct._object*, %struct._object** %_py_decref_tmp886, align 8
  %ob_type892 = getelementptr inbounds %struct._object, %struct._object* %475, i32 0, i32 1
  %476 = load %struct._typeobject*, %struct._typeobject** %ob_type892, align 8
  %tp_dealloc893 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %476, i32 0, i32 4
  %477 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc893, align 8
  %478 = load %struct._object*, %struct._object** %_py_decref_tmp886, align 8
  call void %477(%struct._object* %478)
  br label %if.end.894

if.end.894:                                       ; preds = %if.else.891, %if.then.890
  br label %do.end.895

do.end.895:                                       ; preds = %if.end.894
  br label %if.end.896

if.end.896:                                       ; preds = %do.end.895, %land.lhs.true.881, %do.body.877
  br label %do.end.897

do.end.897:                                       ; preds = %if.end.896
  br label %do.body.898

do.body.898:                                      ; preds = %do.end.897
  %479 = load i32, i32* @LINES, align 4
  %conv = sext i32 %479 to i64
  %call900 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call900, %struct._object** %o899, align 8
  %480 = load %struct._object*, %struct._object** %o899, align 8
  %tobool901 = icmp ne %struct._object* %480, null
  br i1 %tobool901, label %land.lhs.true.902, label %if.end.919

land.lhs.true.902:                                ; preds = %do.body.898
  %481 = load %struct._object*, %struct._object** @ModDict, align 8
  %482 = load %struct._object*, %struct._object** %o899, align 8
  %call903 = call i32 @PyDict_SetItemString(%struct._object* %481, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.394, i32 0, i32 0), %struct._object* %482)
  %cmp904 = icmp eq i32 %call903, 0
  br i1 %cmp904, label %if.then.906, label %if.end.919

if.then.906:                                      ; preds = %land.lhs.true.902
  br label %do.body.907

do.body.907:                                      ; preds = %if.then.906
  %483 = load %struct._object*, %struct._object** %o899, align 8
  store %struct._object* %483, %struct._object** %_py_decref_tmp908, align 8
  %484 = load %struct._object*, %struct._object** %_py_decref_tmp908, align 8
  %ob_refcnt909 = getelementptr inbounds %struct._object, %struct._object* %484, i32 0, i32 0
  %485 = load i64, i64* %ob_refcnt909, align 8
  %dec910 = add i64 %485, -1
  store i64 %dec910, i64* %ob_refcnt909, align 8
  %cmp911 = icmp ne i64 %dec910, 0
  br i1 %cmp911, label %if.then.913, label %if.else.914

if.then.913:                                      ; preds = %do.body.907
  br label %if.end.917

if.else.914:                                      ; preds = %do.body.907
  %486 = load %struct._object*, %struct._object** %_py_decref_tmp908, align 8
  %ob_type915 = getelementptr inbounds %struct._object, %struct._object* %486, i32 0, i32 1
  %487 = load %struct._typeobject*, %struct._typeobject** %ob_type915, align 8
  %tp_dealloc916 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %487, i32 0, i32 4
  %488 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc916, align 8
  %489 = load %struct._object*, %struct._object** %_py_decref_tmp908, align 8
  call void %488(%struct._object* %489)
  br label %if.end.917

if.end.917:                                       ; preds = %if.else.914, %if.then.913
  br label %do.end.918

do.end.918:                                       ; preds = %if.end.917
  br label %if.end.919

if.end.919:                                       ; preds = %do.end.918, %land.lhs.true.902, %do.body.898
  br label %do.end.920

do.end.920:                                       ; preds = %if.end.919
  br label %do.body.921

do.body.921:                                      ; preds = %do.end.920
  %490 = load i32, i32* @COLS, align 4
  %conv923 = sext i32 %490 to i64
  %call924 = call %struct._object* @PyLong_FromLong(i64 %conv923)
  store %struct._object* %call924, %struct._object** %o922, align 8
  %491 = load %struct._object*, %struct._object** %o922, align 8
  %tobool925 = icmp ne %struct._object* %491, null
  br i1 %tobool925, label %land.lhs.true.926, label %if.end.943

land.lhs.true.926:                                ; preds = %do.body.921
  %492 = load %struct._object*, %struct._object** @ModDict, align 8
  %493 = load %struct._object*, %struct._object** %o922, align 8
  %call927 = call i32 @PyDict_SetItemString(%struct._object* %492, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.395, i32 0, i32 0), %struct._object* %493)
  %cmp928 = icmp eq i32 %call927, 0
  br i1 %cmp928, label %if.then.930, label %if.end.943

if.then.930:                                      ; preds = %land.lhs.true.926
  br label %do.body.931

do.body.931:                                      ; preds = %if.then.930
  %494 = load %struct._object*, %struct._object** %o922, align 8
  store %struct._object* %494, %struct._object** %_py_decref_tmp932, align 8
  %495 = load %struct._object*, %struct._object** %_py_decref_tmp932, align 8
  %ob_refcnt933 = getelementptr inbounds %struct._object, %struct._object* %495, i32 0, i32 0
  %496 = load i64, i64* %ob_refcnt933, align 8
  %dec934 = add i64 %496, -1
  store i64 %dec934, i64* %ob_refcnt933, align 8
  %cmp935 = icmp ne i64 %dec934, 0
  br i1 %cmp935, label %if.then.937, label %if.else.938

if.then.937:                                      ; preds = %do.body.931
  br label %if.end.941

if.else.938:                                      ; preds = %do.body.931
  %497 = load %struct._object*, %struct._object** %_py_decref_tmp932, align 8
  %ob_type939 = getelementptr inbounds %struct._object, %struct._object* %497, i32 0, i32 1
  %498 = load %struct._typeobject*, %struct._typeobject** %ob_type939, align 8
  %tp_dealloc940 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %498, i32 0, i32 4
  %499 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc940, align 8
  %500 = load %struct._object*, %struct._object** %_py_decref_tmp932, align 8
  call void %499(%struct._object* %500)
  br label %if.end.941

if.end.941:                                       ; preds = %if.else.938, %if.then.937
  br label %do.end.942

do.end.942:                                       ; preds = %if.end.941
  br label %if.end.943

if.end.943:                                       ; preds = %do.end.942, %land.lhs.true.926, %do.body.921
  br label %do.end.944

do.end.944:                                       ; preds = %if.end.943
  %501 = load %struct._win_st*, %struct._win_st** %win, align 8
  %call945 = call %struct._object* @PyCursesWindow_New(%struct._win_st* %501, i8* null)
  %502 = bitcast %struct._object* %call945 to %struct.PyCursesWindowObject*
  store %struct.PyCursesWindowObject* %502, %struct.PyCursesWindowObject** %winobj, align 8
  %503 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %winobj, align 8
  %encoding = getelementptr inbounds %struct.PyCursesWindowObject, %struct.PyCursesWindowObject* %503, i32 0, i32 2
  %504 = load i8*, i8** %encoding, align 8
  store i8* %504, i8** @screen_encoding, align 8
  %505 = load %struct.PyCursesWindowObject*, %struct.PyCursesWindowObject** %winobj, align 8
  %506 = bitcast %struct.PyCursesWindowObject* %505 to %struct._object*
  store %struct._object* %506, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.944, %if.then.4, %if.then
  %507 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %507
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_IntrFlush(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ch = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %2)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.396, i32 0, i32 0), i32* %ch)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.397, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.3
  %5 = load i32, i32* %ch, align 4
  %tobool4 = icmp ne i32 %5, 0
  %call5 = call i32 @intrflush(%struct._win_st* null, i1 zeroext %tobool4)
  %call6 = call %struct._object* @PyCursesCheckERR(i32 %call5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.286, i32 0, i32 0))
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then.2, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_isendwin(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @isendwin()
  %conv = zext i1 %call to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc5 = add i64 %3, 1
  store i64 %inc5, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_Is_Term_Resized(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %lines = alloca i32, align 4
  %columns = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.398, i32 0, i32 0), i32* %lines, i32* %columns)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %lines, align 4
  %4 = load i32, i32* %columns, align 4
  %call3 = call zeroext i1 @is_term_resized(i32 %3, i32 %4)
  %conv = zext i1 %call3 to i32
  store i32 %conv, i32* %result, align 4
  %5 = load i32, i32* %result, align 4
  %cmp4 = icmp eq i32 %5, 1
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.2
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.2
  %7 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc7 = add i64 %7, 1
  store i64 %inc7, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.6, %if.then.1, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_KeyName(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %knp = alloca i8*, align 8
  %ch = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.345, i32 0, i32 0), i32* %ch)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %ch, align 4
  %cmp3 = icmp slt i32 %3, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.399, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  %5 = load i32, i32* %ch, align 4
  %call6 = call i8* @keyname(i32 %5)
  store i8* %call6, i8** %knp, align 8
  %6 = load i8*, i8** %knp, align 8
  %cmp7 = icmp eq i8* %6, null
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  %7 = load i8*, i8** %knp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.193, i32 0, i32 0), %cond.true ], [ %7, %cond.false ]
  %call8 = call %struct._object* @PyBytes_FromString(i8* %cond)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.4, %if.then.1, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_KillChar(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %ch = alloca i8, align 1
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call signext i8 @killchar()
  store i8 %call, i8* %ch, align 1
  %call1 = call %struct._object* @PyBytes_FromStringAndSize(i8* %ch, i64 1)
  ret %struct._object* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_longname(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i8* @longname()
  %call1 = call %struct._object* @PyBytes_FromString(i8* %call)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_Meta(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ch = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %2)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.396, i32 0, i32 0), i32* %ch)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.400, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.3
  %5 = load %struct._win_st*, %struct._win_st** @stdscr, align 8
  %6 = load i32, i32* %ch, align 4
  %tobool4 = icmp ne i32 %6, 0
  %call5 = call i32 @meta(%struct._win_st* %5, i1 zeroext %tobool4)
  %call6 = call %struct._object* @PyCursesCheckERR(i32 %call5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.292, i32 0, i32 0))
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then.2, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_MouseInterval(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %interval = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.401, i32 0, i32 0), i32* %interval)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %interval, align 4
  %call3 = call i32 @mouseinterval(i32 %3)
  %call4 = call %struct._object* @PyCursesCheckERR(i32 %call3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.293, i32 0, i32 0))
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_MouseMask(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %newmask = alloca i32, align 4
  %oldmask = alloca i64, align 8
  %availmask = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.402, i32 0, i32 0), i32* %newmask)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %newmask, align 4
  %conv = sext i32 %3 to i64
  %call3 = call i64 @mousemask(i64 %conv, i64* %oldmask)
  store i64 %call3, i64* %availmask, align 8
  %4 = load i64, i64* %availmask, align 8
  %5 = load i64, i64* %oldmask, align 8
  %call4 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.403, i32 0, i32 0), i64 %4, i64 %5)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_Napms(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ms = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.404, i32 0, i32 0), i32* %ms)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %ms, align 4
  %call3 = call i32 @napms(i32 %3)
  %call4 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.345, i32 0, i32 0), i32 %call3)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_NewPad(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %win = alloca %struct._win_st*, align 8
  %nlines = alloca i32, align 4
  %ncols = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.405, i32 0, i32 0), i32* %nlines, i32* %ncols)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %nlines, align 4
  %4 = load i32, i32* %ncols, align 4
  %call3 = call %struct._win_st* @newpad(i32 %3, i32 %4)
  store %struct._win_st* %call3, %struct._win_st** %win, align 8
  %5 = load %struct._win_st*, %struct._win_st** %win, align 8
  %cmp4 = icmp eq %struct._win_st* %5, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.2
  %6 = load %struct._object*, %struct._object** @PyCursesError, align 8
  %7 = load i8*, i8** @catchall_NULL, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* %7)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %8 = load %struct._win_st*, %struct._win_st** %win, align 8
  %call7 = call %struct._object* @PyCursesWindow_New(%struct._win_st* %8, i8* null)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then.1, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_NewWindow(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %win = alloca %struct._win_st*, align 8
  %nlines = alloca i32, align 4
  %ncols = alloca i32, align 4
  %begin_y = alloca i32, align 4
  %begin_x = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %begin_y, align 4
  store i32 0, i32* %begin_x, align 4
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %2)
  switch i64 %call, label %sw.default [
    i64 2, label %sw.bb
    i64 4, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.405, i32 0, i32 0), i32* %nlines, i32* %ncols)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call5 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.182, i32 0, i32 0), i32* %nlines, i32* %ncols, i32* %begin_y, i32* %begin_x)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %sw.bb.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %sw.bb.4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.406, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.8, %if.end.3
  %6 = load i32, i32* %nlines, align 4
  %7 = load i32, i32* %ncols, align 4
  %8 = load i32, i32* %begin_y, align 4
  %9 = load i32, i32* %begin_x, align 4
  %call9 = call %struct._win_st* @newwin(i32 %6, i32 %7, i32 %8, i32 %9)
  store %struct._win_st* %call9, %struct._win_st** %win, align 8
  %10 = load %struct._win_st*, %struct._win_st** %win, align 8
  %cmp10 = icmp eq %struct._win_st* %10, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %sw.epilog
  %11 = load %struct._object*, %struct._object** @PyCursesError, align 8
  %12 = load i8*, i8** @catchall_NULL, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* %12)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %sw.epilog
  %13 = load %struct._win_st*, %struct._win_st** %win, align 8
  %call13 = call %struct._object* @PyCursesWindow_New(%struct._win_st* %13, i8* null)
  store %struct._object* %call13, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %sw.default, %if.then.7, %if.then.2, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_nl(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %flag = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %flag, align 4
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %2)
  switch i64 %call, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %if.end
  %call1 = call i32 @nl()
  %call2 = call %struct._object* @PyCursesCheckERR(i32 %call1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.298, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

sw.bb.3:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.176, i32 0, i32 0), i32* %flag)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.3
  %4 = load i32, i32* %flag, align 4
  %tobool7 = icmp ne i32 %4, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  %call9 = call i32 @nl()
  %call10 = call %struct._object* @PyCursesCheckERR(i32 %call9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.298, i32 0, i32 0))
  store %struct._object* %call10, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.6
  %call11 = call i32 @nonl()
  %call12 = call %struct._object* @PyCursesCheckERR(i32 %call11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.298, i32 0, i32 0))
  store %struct._object* %call12, %struct._object** %retval
  br label %return

sw.default:                                       ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.407, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.default, %if.else, %if.then.8, %if.then.5, %sw.bb, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_nocbreak(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @nocbreak()
  %call1 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.299, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_noecho(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @noecho()
  %call1 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.300, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_nonl(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @nonl()
  %call1 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.301, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_noqiflush(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @noqiflush()
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_noraw(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @noraw()
  %call1 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.303, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_Pair_Content(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pair = alloca i16, align 2
  %f = alloca i16, align 2
  %b = alloca i16, align 2
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @initialisedcolors, align 4
  %cmp1 = icmp ne i32 %2, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.255, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %4)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.408, i32 0, i32 0), i16* %pair)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.409, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.6
  %7 = load i16, i16* %pair, align 2
  %call7 = call i32 @pair_content(i16 signext %7, i16* %f, i16* %b)
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %sw.epilog
  %8 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.410, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %sw.epilog
  %9 = load i16, i16* %f, align 2
  %conv = sext i16 %9 to i32
  %10 = load i16, i16* %b, align 2
  %conv11 = sext i16 %10 to i32
  %call12 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.341, i32 0, i32 0), i32 %conv, i32 %conv11)
  store %struct._object* %call12, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %sw.default, %if.then.5, %if.then.2, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_pair_number(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %n = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @initialisedcolors, align 4
  %cmp1 = icmp ne i32 %2, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.255, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %4)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.411, i32 0, i32 0), i32* %n)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.412, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.6
  %7 = load i32, i32* %n, align 4
  %conv = sext i32 %7 to i64
  %and = and i64 %conv, 65280
  %shr = lshr i64 %and, 8
  %call7 = call %struct._object* @PyLong_FromLong(i64 %shr)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then.5, %if.then.2, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_Putp(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.413, i32 0, i32 0), i8** %str)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str, align 8
  %call1 = call i32 @putp(i8* %1)
  %call2 = call %struct._object* @PyCursesCheckERR(i32 %call1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.306, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_QiFlush(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %flag = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %flag, align 4
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %2)
  switch i64 %call, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %if.end
  call void @qiflush()
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

sw.bb.1:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call2 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.176, i32 0, i32 0), i32* %flag)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %sw.bb.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %sw.bb.1
  %5 = load i32, i32* %flag, align 4
  %tobool5 = icmp ne i32 %5, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.4
  call void @qiflush()
  br label %if.end.7

if.else:                                          ; preds = %if.end.4
  call void @noqiflush()
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc8 = add i64 %6, 1
  store i64 %inc8, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

sw.default:                                       ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.414, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end.7, %if.then.3, %sw.bb, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_raw(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %flag = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %flag, align 4
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %2)
  switch i64 %call, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %if.end
  %call1 = call i32 @raw()
  %call2 = call %struct._object* @PyCursesCheckERR(i32 %call1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.308, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %retval
  br label %return

sw.bb.3:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.176, i32 0, i32 0), i32* %flag)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %sw.bb.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb.3
  %4 = load i32, i32* %flag, align 4
  %tobool7 = icmp ne i32 %4, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  %call9 = call i32 @raw()
  %call10 = call %struct._object* @PyCursesCheckERR(i32 %call9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.308, i32 0, i32 0))
  store %struct._object* %call10, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.6
  %call11 = call i32 @noraw()
  %call12 = call %struct._object* @PyCursesCheckERR(i32 %call11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.308, i32 0, i32 0))
  store %struct._object* %call12, %struct._object** %retval
  br label %return

sw.default:                                       ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.415, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.default, %if.else, %if.then.8, %if.then.5, %sw.bb, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_reset_prog_mode(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @reset_prog_mode()
  %call1 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.309, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_reset_shell_mode(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @reset_shell_mode()
  %call1 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.310, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_resetty(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @resetty()
  %call1 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.311, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_ResizeTerm(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %lines = alloca i32, align 4
  %columns = alloca i32, align 4
  %result = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.416, i32 0, i32 0), i32* %lines, i32* %columns)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %lines, align 4
  %4 = load i32, i32* %columns, align 4
  %call3 = call i32 @resizeterm(i32 %3, i32 %4)
  %call4 = call %struct._object* @PyCursesCheckERR(i32 %call3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.312, i32 0, i32 0))
  store %struct._object* %call4, %struct._object** %result, align 8
  %5 = load %struct._object*, %struct._object** %result, align 8
  %tobool5 = icmp ne %struct._object* %5, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.2
  %call8 = call i32 @update_lines_cols()
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %6 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then.6, %if.then.1, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_Resize_Term(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %lines = alloca i32, align 4
  %columns = alloca i32, align 4
  %result = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.418, i32 0, i32 0), i32* %lines, i32* %columns)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %lines, align 4
  %4 = load i32, i32* %columns, align 4
  %call3 = call i32 @resize_term(i32 %3, i32 %4)
  %call4 = call %struct._object* @PyCursesCheckERR(i32 %call3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.313, i32 0, i32 0))
  store %struct._object* %call4, %struct._object** %result, align 8
  %5 = load %struct._object*, %struct._object** %result, align 8
  %tobool5 = icmp ne %struct._object* %5, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.2
  %call8 = call i32 @update_lines_cols()
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %6 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then.6, %if.then.1, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_savetty(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @savetty()
  %call1 = call %struct._object* @PyCursesCheckERR(i32 %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.314, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_setsyx(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %2)
  %cmp1 = icmp ne i64 %call, 2
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.419, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call4 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.420, i32 0, i32 0), i32* %y, i32* %x)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %5 = load %struct._win_st*, %struct._win_st** @newscr, align 8
  %tobool7 = icmp ne %struct._win_st* %5, null
  br i1 %tobool7, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %do.body
  %6 = load i32, i32* %y, align 4
  %cmp9 = icmp eq i32 %6, -1
  br i1 %cmp9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.8
  %7 = load i32, i32* %x, align 4
  %cmp10 = icmp eq i32 %7, -1
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %land.lhs.true
  %8 = load %struct._win_st*, %struct._win_st** @newscr, align 8
  %call12 = call i32 @leaveok(%struct._win_st* %8, i1 zeroext true)
  br label %if.end.15

if.else:                                          ; preds = %land.lhs.true, %if.then.8
  %9 = load %struct._win_st*, %struct._win_st** @newscr, align 8
  %call13 = call i32 @leaveok(%struct._win_st* %9, i1 zeroext false)
  %10 = load %struct._win_st*, %struct._win_st** @newscr, align 8
  %11 = load i32, i32* %y, align 4
  %12 = load i32, i32* %x, align 4
  %call14 = call i32 @wmove(%struct._win_st* %10, i32 %11, i32 %12)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.11
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.5, %if.then.2, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_setupterm(%struct._object* %self, %struct._object* %args, %struct._object* %keywds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %keywds.addr = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  %err = alloca i32, align 4
  %termstr = alloca i8*, align 8
  %sys_stdout = alloca %struct._object*, align 8
  %s = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %keywds, %struct._object** %keywds.addr, align 8
  store i32 -1, i32* %fd, align 4
  store i8* null, i8** %termstr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %keywds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.423, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @PyCurses_setupterm.kwlist, i32 0, i32 0), i8** %termstr, i32* %fd)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %fd, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then.1, label %if.end.11

if.then.1:                                        ; preds = %if.end
  %call2 = call %struct._object* @PySys_GetObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.424, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %sys_stdout, align 8
  %3 = load %struct._object*, %struct._object** %sys_stdout, align 8
  %cmp3 = icmp eq %struct._object* %3, null
  br i1 %cmp3, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.1
  %4 = load %struct._object*, %struct._object** %sys_stdout, align 8
  %cmp4 = icmp eq %struct._object* %4, @_Py_NoneStruct
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.then.1
  %5 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.425, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %sys_stdout, align 8
  %call7 = call i32 @PyObject_AsFileDescriptor(%struct._object* %6)
  store i32 %call7, i32* %fd, align 4
  %7 = load i32, i32* %fd, align 4
  %cmp8 = icmp eq i32 %7, -1
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %8 = load i32, i32* @initialised_setupterm, align 4
  %tobool12 = icmp ne i32 %8, 0
  br i1 %tobool12, label %if.end.22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.11
  %9 = load i8*, i8** %termstr, align 8
  %10 = load i32, i32* %fd, align 4
  %call13 = call i32 @setupterm(i8* %9, i32 %10, i32* %err)
  %cmp14 = icmp eq i32 %call13, -1
  br i1 %cmp14, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.426, i32 0, i32 0), i8** %s, align 8
  %11 = load i32, i32* %err, align 4
  %cmp16 = icmp eq i32 %11, 0
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.15
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.427, i32 0, i32 0), i8** %s, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.then.15
  %12 = load i32, i32* %err, align 4
  %cmp18 = icmp eq i32 %12, -1
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.else
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.428, i32 0, i32 0), i8** %s, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.17
  %13 = load %struct._object*, %struct._object** @PyCursesError, align 8
  %14 = load i8*, i8** %s, align 8
  call void @PyErr_SetString(%struct._object* %13, i8* %14)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true, %if.end.11
  store i32 1, i32* @initialised_setupterm, align 4
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.end.21, %if.then.9, %if.then.5, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_Start_Color(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %code = alloca i32, align 4
  %c = alloca %struct._object*, align 8
  %cp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @start_color()
  store i32 %call, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %cmp1 = icmp ne i32 %2, -1
  br i1 %cmp1, label %if.then.2, label %if.else.32

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* @initialisedcolors, align 4
  %3 = load i32, i32* @COLORS, align 4
  %conv = sext i32 %3 to i64
  %call3 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call3, %struct._object** %c, align 8
  %4 = load %struct._object*, %struct._object** %c, align 8
  %cmp4 = icmp eq %struct._object* %4, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.2
  %5 = load %struct._object*, %struct._object** @ModDict, align 8
  %6 = load %struct._object*, %struct._object** %c, align 8
  %call8 = call i32 @PyDict_SetItemString(%struct._object* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.429, i32 0, i32 0), %struct._object* %6)
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %7 = load %struct._object*, %struct._object** %c, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.12
  %14 = load i32, i32* @COLOR_PAIRS, align 4
  %conv13 = sext i32 %14 to i64
  %call14 = call %struct._object* @PyLong_FromLong(i64 %conv13)
  store %struct._object* %call14, %struct._object** %cp, align 8
  %15 = load %struct._object*, %struct._object** %cp, align 8
  %cmp15 = icmp eq %struct._object* %15, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %do.end
  %16 = load %struct._object*, %struct._object** @ModDict, align 8
  %17 = load %struct._object*, %struct._object** %cp, align 8
  %call19 = call i32 @PyDict_SetItemString(%struct._object* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.430, i32 0, i32 0), %struct._object* %17)
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.18
  %18 = load %struct._object*, %struct._object** %cp, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp21, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt22, align 8
  %dec23 = add i64 %20, -1
  store i64 %dec23, i64* %ob_refcnt22, align 8
  %cmp24 = icmp ne i64 %dec23, 0
  br i1 %cmp24, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.20
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.20
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  call void %23(%struct._object* %24)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %25 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.else.32:                                       ; preds = %if.end
  %26 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.431, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.32, %do.end.31, %if.then.17, %if.then.6, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_termattrs(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i64 @termattrs()
  %call1 = call %struct._object* @PyLong_FromLong(i64 %call)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_termname(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i8* @termname()
  %call1 = call %struct._object* @PyBytes_FromString(i8* %call)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_tigetflag(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %capname = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised_setupterm, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.253, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.432, i32 0, i32 0), i8** %capname)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i8*, i8** %capname, align 8
  %call3 = call i32 @tigetflag(i8* %3)
  %conv = sext i32 %call3 to i64
  %call4 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_tigetnum(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %capname = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised_setupterm, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.253, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.432, i32 0, i32 0), i8** %capname)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i8*, i8** %capname, align 8
  %call3 = call i32 @tigetnum(i8* %3)
  %conv = sext i32 %call3 to i64
  %call4 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_tigetstr(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %capname = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised_setupterm, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.253, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.432, i32 0, i32 0), i8** %capname)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i8*, i8** %capname, align 8
  %call3 = call i8* @tigetstr(i8* %3)
  store i8* %call3, i8** %capname, align 8
  %4 = load i8*, i8** %capname, align 8
  %cmp4 = icmp eq i8* %4, null
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.2
  %5 = load i8*, i8** %capname, align 8
  %cmp5 = icmp eq i8* %5, inttoptr (i64 -1 to i8*)
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.end.2
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false
  %7 = load i8*, i8** %capname, align 8
  %call8 = call %struct._object* @PyBytes_FromString(i8* %7)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.1, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_tparm(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %fmt = alloca i8*, align 8
  %result = alloca i8*, align 8
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %i4 = alloca i32, align 4
  %i5 = alloca i32, align 4
  %i6 = alloca i32, align 4
  %i7 = alloca i32, align 4
  %i8 = alloca i32, align 4
  %i9 = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %result, align 8
  store i32 0, i32* %i1, align 4
  store i32 0, i32* %i2, align 4
  store i32 0, i32* %i3, align 4
  store i32 0, i32* %i4, align 4
  store i32 0, i32* %i5, align 4
  store i32 0, i32* %i6, align 4
  store i32 0, i32* %i7, align 4
  store i32 0, i32* %i8, align 4
  store i32 0, i32* %i9, align 4
  %0 = load i32, i32* @initialised_setupterm, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.253, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.433, i32 0, i32 0), i8** %fmt, i32* %i1, i32* %i2, i32* %i3, i32* %i4, i32* %i5, i32* %i6, i32* %i7, i32* %i8, i32* %i9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i8*, i8** %fmt, align 8
  %4 = load i32, i32* %i1, align 4
  %5 = load i32, i32* %i2, align 4
  %6 = load i32, i32* %i3, align 4
  %7 = load i32, i32* %i4, align 4
  %8 = load i32, i32* %i5, align 4
  %9 = load i32, i32* %i6, align 4
  %10 = load i32, i32* %i7, align 4
  %11 = load i32, i32* %i8, align 4
  %12 = load i32, i32* %i9, align 4
  %call3 = call i8* (i8*, ...) @tparm(i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12)
  store i8* %call3, i8** %result, align 8
  %13 = load i8*, i8** %result, align 8
  %tobool4 = icmp ne i8* %13, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.2
  %14 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.434, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %15 = load i8*, i8** %result, align 8
  %call7 = call %struct._object* @PyBytes_FromString(i8* %15)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then.1, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_TypeAhead(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %fd = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.435, i32 0, i32 0), i32* %fd)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %fd, align 4
  %call3 = call i32 @typeahead(i32 %3)
  %call4 = call %struct._object* @PyCursesCheckERR(i32 %call3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.324, i32 0, i32 0))
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_UnCtrl(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %temp = alloca %struct._object*, align 8
  %ch = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.166, i32 0, i32 0), %struct._object** %temp)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %temp, align 8
  %call3 = call i32 @PyCurses_ConvertToChtype(%struct.PyCursesWindowObject* null, %struct._object* %3, i64* %ch)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %4 = load i64, i64* %ch, align 8
  %call7 = call i8* @unctrl(i64 %4)
  %call8 = call %struct._object* @PyBytes_FromString(i8* %call7)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then.1, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_UngetCh(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %temp = alloca %struct._object*, align 8
  %ch = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.166, i32 0, i32 0), %struct._object** %temp)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %temp, align 8
  %call3 = call i32 @PyCurses_ConvertToChtype(%struct.PyCursesWindowObject* null, %struct._object* %3, i64* %ch)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %4 = load i64, i64* %ch, align 8
  %conv = trunc i64 %4 to i32
  %call7 = call i32 @ungetch(i32 %conv)
  %call8 = call %struct._object* @PyCursesCheckERR(i32 %call7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.326, i32 0, i32 0))
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then.1, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_Unget_Wch(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %wch = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.436, i32 0, i32 0), %struct._object** %obj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %obj, align 8
  %call3 = call i32 @PyCurses_ConvertToWchar_t(%struct._object* %3, i32* %wch)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %4 = load i32, i32* %wch, align 4
  %call7 = call i32 @unget_wch(i32 %4)
  %call8 = call %struct._object* @PyCursesCheckERR(i32 %call7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.327, i32 0, i32 0))
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then.1, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_Use_Env(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %flag = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PyTuple_Size(%struct._object* %0)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.396, i32 0, i32 0), i32* %flag)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.438, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end
  %3 = load i32, i32* %flag, align 4
  %tobool2 = icmp ne i32 %3, 0
  call void @use_env(i1 zeroext %tobool2)
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @PyCurses_Use_Default_Colors(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %code = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i32, i32* @initialised, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @initialisedcolors, align 4
  %cmp1 = icmp ne i32 %2, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.255, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call = call i32 @use_default_colors()
  store i32 %call, i32* %code, align 4
  %4 = load i32, i32* %code, align 4
  %cmp4 = icmp ne i32 %4, -1
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** @PyCursesError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.439, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.5, %if.then.2, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

declare i32 @baudrate() #1

declare i32 @beep() #1

declare zeroext i1 @can_change_color() #1

declare i32 @cbreak() #1

declare i32 @nocbreak() #1

declare i32 @color_content(i16 signext, i16*, i16*, i16*) #1

declare i32 @curs_set(i32) #1

declare i32 @def_prog_mode() #1

declare i32 @def_shell_mode() #1

declare i32 @delay_output(i32) #1

declare i32 @doupdate() #1

declare i32 @echo() #1

declare i32 @noecho() #1

declare i32 @endwin() #1

declare signext i8 @erasechar() #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare void @filter() #1

declare i32 @flash() #1

declare i32 @flushinp() #1

declare i32 @getmouse(%struct.MEVENT*) #1

declare i32 @ungetmouse(%struct.MEVENT*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare %struct._win_st* @getwin(%struct._IO_FILE*) #1

declare zeroext i1 @has_colors() #1

declare zeroext i1 @has_ic() #1

declare zeroext i1 @has_il() #1

declare i32 @has_key(i32) #1

declare i32 @halfdelay(i32) #1

declare i32 @init_color(i16 signext, i16 signext, i16 signext, i16 signext) #1

declare i32 @init_pair(i16 signext, i16 signext, i16 signext) #1

declare %struct._win_st* @initscr() #1

declare i32 @intrflush(%struct._win_st*, i1 zeroext) #1

declare zeroext i1 @isendwin() #1

declare zeroext i1 @is_term_resized(i32, i32) #1

declare signext i8 @killchar() #1

declare i8* @longname() #1

declare i32 @meta(%struct._win_st*, i1 zeroext) #1

declare i32 @mouseinterval(i32) #1

declare i64 @mousemask(i64, i64*) #1

declare i32 @napms(i32) #1

declare %struct._win_st* @newpad(i32, i32) #1

declare %struct._win_st* @newwin(i32, i32, i32, i32) #1

declare i32 @nl() #1

declare i32 @nonl() #1

declare void @noqiflush() #1

declare i32 @noraw() #1

declare i32 @pair_content(i16 signext, i16*, i16*) #1

declare i32 @putp(i8*) #1

declare void @qiflush() #1

declare i32 @raw() #1

declare i32 @reset_prog_mode() #1

declare i32 @reset_shell_mode() #1

declare i32 @resetty() #1

declare i32 @resizeterm(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @update_lines_cols() #0 {
entry:
  %retval = alloca i32, align 4
  %o = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  %_py_decref_tmp52 = alloca %struct._object*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  %_py_decref_tmp81 = alloca %struct._object*, align 8
  %_py_decref_tmp97 = alloca %struct._object*, align 8
  %_py_decref_tmp109 = alloca %struct._object*, align 8
  %_py_decref_tmp125 = alloca %struct._object*, align 8
  %_py_decref_tmp137 = alloca %struct._object*, align 8
  %_py_decref_tmp150 = alloca %struct._object*, align 8
  %_py_decref_tmp162 = alloca %struct._object*, align 8
  %call = call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.417, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @LINES, align 4
  %conv = sext i32 %1 to i64
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call1, %struct._object** %o, align 8
  %2 = load %struct._object*, %struct._object** %o, align 8
  %tobool2 = icmp ne %struct._object* %2, null
  br i1 %tobool2, label %if.end.7, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %3 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %m, align 8
  %11 = load %struct._object*, %struct._object** %o, align 8
  %call8 = call i32 @_PyObject_SetAttrId(%struct._object* %10, %struct._Py_Identifier* @update_lines_cols.PyId_LINES, %struct._object* %11)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.35

if.then.10:                                       ; preds = %if.end.7
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %12 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp12, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt13, align 8
  %dec14 = add i64 %14, -1
  store i64 %dec14, i64* %ob_refcnt13, align 8
  %cmp15 = icmp ne i64 %dec14, 0
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.11
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.11
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  call void %17(%struct._object* %18)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %19 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp24, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt25, align 8
  %dec26 = add i64 %21, -1
  store i64 %dec26, i64* %ob_refcnt25, align 8
  %cmp27 = icmp ne i64 %dec26, 0
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.23
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.23
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  call void %24(%struct._object* %25)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.7
  %26 = load %struct._object*, %struct._object** @ModDict, align 8
  %27 = load %struct._object*, %struct._object** getelementptr inbounds (%struct._Py_Identifier, %struct._Py_Identifier* @update_lines_cols.PyId_LINES, i32 0, i32 2), align 8
  %28 = load %struct._object*, %struct._object** %o, align 8
  %call36 = call i32 @PyDict_SetItem(%struct._object* %26, %struct._object* %27, %struct._object* %28)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.63

if.then.38:                                       ; preds = %if.end.35
  br label %do.body.39

do.body.39:                                       ; preds = %if.then.38
  %29 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp40, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt41, align 8
  %dec42 = add i64 %31, -1
  store i64 %dec42, i64* %ob_refcnt41, align 8
  %cmp43 = icmp ne i64 %dec42, 0
  br i1 %cmp43, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.39
  br label %if.end.49

if.else.46:                                       ; preds = %do.body.39
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  call void %34(%struct._object* %35)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %do.body.51

do.body.51:                                       ; preds = %do.end.50
  %36 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp52, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt53, align 8
  %dec54 = add i64 %38, -1
  store i64 %dec54, i64* %ob_refcnt53, align 8
  %cmp55 = icmp ne i64 %dec54, 0
  br i1 %cmp55, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %do.body.51
  br label %if.end.61

if.else.58:                                       ; preds = %do.body.51
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8
  call void %41(%struct._object* %42)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  store i32 0, i32* %retval
  br label %return

if.end.63:                                        ; preds = %if.end.35
  br label %do.body.64

do.body.64:                                       ; preds = %if.end.63
  %43 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp65, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt66, align 8
  %dec67 = add i64 %45, -1
  store i64 %dec67, i64* %ob_refcnt66, align 8
  %cmp68 = icmp ne i64 %dec67, 0
  br i1 %cmp68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.64
  br label %if.end.74

if.else.71:                                       ; preds = %do.body.64
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc73, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  call void %48(%struct._object* %49)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.70
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  %50 = load i32, i32* @COLS, align 4
  %conv76 = sext i32 %50 to i64
  %call77 = call %struct._object* @PyLong_FromLong(i64 %conv76)
  store %struct._object* %call77, %struct._object** %o, align 8
  %51 = load %struct._object*, %struct._object** %o, align 8
  %tobool78 = icmp ne %struct._object* %51, null
  br i1 %tobool78, label %if.end.92, label %if.then.79

if.then.79:                                       ; preds = %do.end.75
  br label %do.body.80

do.body.80:                                       ; preds = %if.then.79
  %52 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp81, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_refcnt82 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt82, align 8
  %dec83 = add i64 %54, -1
  store i64 %dec83, i64* %ob_refcnt82, align 8
  %cmp84 = icmp ne i64 %dec83, 0
  br i1 %cmp84, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %do.body.80
  br label %if.end.90

if.else.87:                                       ; preds = %do.body.80
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_type88 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type88, align 8
  %tp_dealloc89 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc89, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  call void %57(%struct._object* %58)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.87, %if.then.86
  br label %do.end.91

do.end.91:                                        ; preds = %if.end.90
  store i32 0, i32* %retval
  br label %return

if.end.92:                                        ; preds = %do.end.75
  %59 = load %struct._object*, %struct._object** %m, align 8
  %60 = load %struct._object*, %struct._object** %o, align 8
  %call93 = call i32 @_PyObject_SetAttrId(%struct._object* %59, %struct._Py_Identifier* @update_lines_cols.PyId_COLS, %struct._object* %60)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then.95, label %if.end.120

if.then.95:                                       ; preds = %if.end.92
  br label %do.body.96

do.body.96:                                       ; preds = %if.then.95
  %61 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp97, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp97, align 8
  %ob_refcnt98 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt98, align 8
  %dec99 = add i64 %63, -1
  store i64 %dec99, i64* %ob_refcnt98, align 8
  %cmp100 = icmp ne i64 %dec99, 0
  br i1 %cmp100, label %if.then.102, label %if.else.103

if.then.102:                                      ; preds = %do.body.96
  br label %if.end.106

if.else.103:                                      ; preds = %do.body.96
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp97, align 8
  %ob_type104 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type104, align 8
  %tp_dealloc105 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc105, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp97, align 8
  call void %66(%struct._object* %67)
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.103, %if.then.102
  br label %do.end.107

do.end.107:                                       ; preds = %if.end.106
  br label %do.body.108

do.body.108:                                      ; preds = %do.end.107
  %68 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %68, %struct._object** %_py_decref_tmp109, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_refcnt110 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0
  %70 = load i64, i64* %ob_refcnt110, align 8
  %dec111 = add i64 %70, -1
  store i64 %dec111, i64* %ob_refcnt110, align 8
  %cmp112 = icmp ne i64 %dec111, 0
  br i1 %cmp112, label %if.then.114, label %if.else.115

if.then.114:                                      ; preds = %do.body.108
  br label %if.end.118

if.else.115:                                      ; preds = %do.body.108
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_type116 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type116, align 8
  %tp_dealloc117 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc117, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  call void %73(%struct._object* %74)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.115, %if.then.114
  br label %do.end.119

do.end.119:                                       ; preds = %if.end.118
  store i32 0, i32* %retval
  br label %return

if.end.120:                                       ; preds = %if.end.92
  %75 = load %struct._object*, %struct._object** @ModDict, align 8
  %76 = load %struct._object*, %struct._object** getelementptr inbounds (%struct._Py_Identifier, %struct._Py_Identifier* @update_lines_cols.PyId_COLS, i32 0, i32 2), align 8
  %77 = load %struct._object*, %struct._object** %o, align 8
  %call121 = call i32 @PyDict_SetItem(%struct._object* %75, %struct._object* %76, %struct._object* %77)
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.then.123, label %if.end.148

if.then.123:                                      ; preds = %if.end.120
  br label %do.body.124

do.body.124:                                      ; preds = %if.then.123
  %78 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %78, %struct._object** %_py_decref_tmp125, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8
  %ob_refcnt126 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 0
  %80 = load i64, i64* %ob_refcnt126, align 8
  %dec127 = add i64 %80, -1
  store i64 %dec127, i64* %ob_refcnt126, align 8
  %cmp128 = icmp ne i64 %dec127, 0
  br i1 %cmp128, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %do.body.124
  br label %if.end.134

if.else.131:                                      ; preds = %do.body.124
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8
  %ob_type132 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 1
  %82 = load %struct._typeobject*, %struct._typeobject** %ob_type132, align 8
  %tp_dealloc133 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %82, i32 0, i32 4
  %83 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc133, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8
  call void %83(%struct._object* %84)
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.131, %if.then.130
  br label %do.end.135

do.end.135:                                       ; preds = %if.end.134
  br label %do.body.136

do.body.136:                                      ; preds = %do.end.135
  %85 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %85, %struct._object** %_py_decref_tmp137, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_refcnt138 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 0
  %87 = load i64, i64* %ob_refcnt138, align 8
  %dec139 = add i64 %87, -1
  store i64 %dec139, i64* %ob_refcnt138, align 8
  %cmp140 = icmp ne i64 %dec139, 0
  br i1 %cmp140, label %if.then.142, label %if.else.143

if.then.142:                                      ; preds = %do.body.136
  br label %if.end.146

if.else.143:                                      ; preds = %do.body.136
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_type144 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 1
  %89 = load %struct._typeobject*, %struct._typeobject** %ob_type144, align 8
  %tp_dealloc145 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %89, i32 0, i32 4
  %90 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc145, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  call void %90(%struct._object* %91)
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.143, %if.then.142
  br label %do.end.147

do.end.147:                                       ; preds = %if.end.146
  store i32 0, i32* %retval
  br label %return

if.end.148:                                       ; preds = %if.end.120
  br label %do.body.149

do.body.149:                                      ; preds = %if.end.148
  %92 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %92, %struct._object** %_py_decref_tmp150, align 8
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  %ob_refcnt151 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 0
  %94 = load i64, i64* %ob_refcnt151, align 8
  %dec152 = add i64 %94, -1
  store i64 %dec152, i64* %ob_refcnt151, align 8
  %cmp153 = icmp ne i64 %dec152, 0
  br i1 %cmp153, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %do.body.149
  br label %if.end.159

if.else.156:                                      ; preds = %do.body.149
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  %ob_type157 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 1
  %96 = load %struct._typeobject*, %struct._typeobject** %ob_type157, align 8
  %tp_dealloc158 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %96, i32 0, i32 4
  %97 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc158, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  call void %97(%struct._object* %98)
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.156, %if.then.155
  br label %do.end.160

do.end.160:                                       ; preds = %if.end.159
  br label %do.body.161

do.body.161:                                      ; preds = %do.end.160
  %99 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %99, %struct._object** %_py_decref_tmp162, align 8
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp162, align 8
  %ob_refcnt163 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 0
  %101 = load i64, i64* %ob_refcnt163, align 8
  %dec164 = add i64 %101, -1
  store i64 %dec164, i64* %ob_refcnt163, align 8
  %cmp165 = icmp ne i64 %dec164, 0
  br i1 %cmp165, label %if.then.167, label %if.else.168

if.then.167:                                      ; preds = %do.body.161
  br label %if.end.171

if.else.168:                                      ; preds = %do.body.161
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp162, align 8
  %ob_type169 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 1
  %103 = load %struct._typeobject*, %struct._typeobject** %ob_type169, align 8
  %tp_dealloc170 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %103, i32 0, i32 4
  %104 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc170, align 8
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp162, align 8
  call void %104(%struct._object* %105)
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.168, %if.then.167
  br label %do.end.172

do.end.172:                                       ; preds = %if.end.171
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.172, %do.end.147, %do.end.119, %do.end.91, %do.end.62, %do.end.34, %do.end, %if.then
  %106 = load i32, i32* %retval
  ret i32 %106
}

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #1

declare i32 @_PyObject_SetAttrId(%struct._object*, %struct._Py_Identifier*, %struct._object*) #1

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

declare i32 @resize_term(i32, i32) #1

declare i32 @savetty() #1

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare %struct._object* @PySys_GetObject(i8*) #1

declare i32 @PyObject_AsFileDescriptor(%struct._object*) #1

declare i32 @setupterm(i8*, i32, i32*) #1

declare i32 @start_color() #1

declare i64 @termattrs() #1

declare i8* @termname() #1

declare i32 @tigetflag(i8*) #1

declare i32 @tigetnum(i8*) #1

declare i8* @tigetstr(i8*) #1

declare i8* @tparm(i8*, ...) #1

declare i32 @typeahead(i32) #1

declare i8* @unctrl(i64) #1

declare i32 @ungetch(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @PyCurses_ConvertToWchar_t(%struct._object* %obj, i32* %wch) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %wch.addr = alloca i32*, align 8
  %buffer = alloca [2 x i32], align 4
  %value = alloca i64, align 8
  %overflow = alloca i32, align 4
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i32* %wch, i32** %wch.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %buffer, i32 0, i32 0
  %call = call i64 @PyUnicode_AsWideChar(%struct._object* %3, i32* %arraydecay, i64 2)
  %cmp1 = icmp ne i64 %call, 1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %6, i32 0, i32 1
  %7 = load i64, i64* %length, align 8
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.146, i32 0, i32 0), i64 %7)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %buffer, i32 0, i64 0
  %8 = load i32, i32* %arrayidx, align 4
  %9 = load i32*, i32** %wch.addr, align 8
  store i32 %8, i32* %9, align 4
  store i32 2, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %10 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %cmp5 = icmp eq %struct._typeobject* %11, @PyLong_Type
  br i1 %cmp5, label %if.then.6, label %if.else.16

if.then.6:                                        ; preds = %if.else
  %12 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call7 = call i64 @PyLong_AsLongAndOverflow(%struct._object* %12, i32* %overflow)
  store i64 %call7, i64* %value, align 8
  %13 = load i32, i32* %overflow, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.6
  %14 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.147, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.6
  %15 = load i64, i64* %value, align 8
  %conv = trunc i64 %15 to i32
  %16 = load i32*, i32** %wch.addr, align 8
  store i32 %conv, i32* %16, align 4
  %17 = load i32*, i32** %wch.addr, align 8
  %18 = load i32, i32* %17, align 4
  %conv10 = sext i32 %18 to i64
  %19 = load i64, i64* %value, align 8
  %cmp11 = icmp ne i64 %conv10, %19
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.9
  %20 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call14 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.437, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.9
  store i32 1, i32* %retval
  br label %return

if.else.16:                                       ; preds = %if.else
  %21 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %22 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 1
  %24 = load i8*, i8** %tp_name, align 8
  %call18 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %21, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.148, i32 0, i32 0), i8* %24)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.16, %if.end.15, %if.then.13, %if.then.8, %if.end, %if.then.2
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i32 @unget_wch(i32) #1

declare void @use_env(i1 zeroext) #1

declare i32 @use_default_colors() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
