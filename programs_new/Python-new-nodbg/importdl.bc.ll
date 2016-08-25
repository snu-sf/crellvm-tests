; ModuleID = './importdl.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }

@.str = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"dynamic module does not define init function (PyInit_%s)\00", align 1
@_Py_PackageContext = external global i8*, align 8
@PyExc_SystemError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"initialization of %s raised unreported exception\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"initialization of %s did not return an extension module\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"__file__\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @_PyImport_LoadDynamicModule(%struct._object* %name, %struct._object* %path, %struct._IO_FILE* %fp) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %path.addr = alloca %struct._object*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %m = alloca %struct._object*, align 8
  %pathbytes = alloca %struct._object*, align 8
  %nameascii = alloca %struct._object*, align 8
  %namestr = alloca i8*, align 8
  %lastdot = alloca i8*, align 8
  %shortname = alloca i8*, align 8
  %packagecontext = alloca i8*, align 8
  %oldcontext = alloca i8*, align 8
  %p0 = alloca void ()*, align 8
  %p = alloca %struct._object* ()*, align 8
  %def = alloca %struct.PyModuleDef*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %msg = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %_py_decref_tmp72 = alloca %struct._object*, align 8
  %_py_decref_tmp83 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp97 = alloca %struct._object*, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store %struct._object* %path, %struct._object** %path.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct._object* null, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %name.addr, align 8
  %1 = load %struct._object*, %struct._object** %path.addr, align 8
  %call = call %struct._object* @_PyImport_FindExtensionObject(%struct._object* %0, %struct._object* %1)
  store %struct._object* %call, %struct._object** %m, align 8
  %2 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %m, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %5, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %name.addr, align 8
  %call1 = call %struct._object* @PyUnicode_AsEncodedString(%struct._object* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* null)
  store %struct._object* %call1, %struct._object** %nameascii, align 8
  %7 = load %struct._object*, %struct._object** %nameascii, align 8
  %cmp2 = icmp eq %struct._object* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %nameascii, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %9, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %namestr, align 8
  %10 = load i8*, i8** %namestr, align 8
  %cmp5 = icmp eq i8* %10, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  br label %error

if.end.7:                                         ; preds = %if.end.4
  %11 = load i8*, i8** %namestr, align 8
  %call8 = call i8* @strrchr(i8* %11, i32 46) #3
  store i8* %call8, i8** %lastdot, align 8
  %12 = load i8*, i8** %lastdot, align 8
  %cmp9 = icmp eq i8* %12, null
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.7
  store i8* null, i8** %packagecontext, align 8
  %13 = load i8*, i8** %namestr, align 8
  store i8* %13, i8** %shortname, align 8
  br label %if.end.11

if.else:                                          ; preds = %if.end.7
  %14 = load i8*, i8** %namestr, align 8
  store i8* %14, i8** %packagecontext, align 8
  %15 = load i8*, i8** %lastdot, align 8
  %add.ptr = getelementptr i8, i8* %15, i64 1
  store i8* %add.ptr, i8** %shortname, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %16 = load %struct._object*, %struct._object** %path.addr, align 8
  %call12 = call %struct._object* @PyUnicode_EncodeFSDefault(%struct._object* %16)
  store %struct._object* %call12, %struct._object** %pathbytes, align 8
  %17 = load %struct._object*, %struct._object** %pathbytes, align 8
  %cmp13 = icmp eq %struct._object* %17, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  br label %error

if.end.15:                                        ; preds = %if.end.11
  %18 = load i8*, i8** %shortname, align 8
  %19 = load %struct._object*, %struct._object** %pathbytes, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyBytesObject*
  %ob_sval16 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %20, i32 0, i32 2
  %arraydecay17 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval16, i32 0, i32 0
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call18 = call void ()* @_PyImport_GetDynLoadFunc(i8* %18, i8* %arraydecay17, %struct._IO_FILE* %21)
  store void ()* %call18, void ()** %p0, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.15
  %22 = load %struct._object*, %struct._object** %pathbytes, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt19, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %ob_refcnt19, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body
  br label %if.end.23

if.else.22:                                       ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %27(%struct._object* %28)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.21
  br label %do.end

do.end:                                           ; preds = %if.end.23
  %29 = load void ()*, void ()** %p0, align 8
  %30 = bitcast void ()* %29 to %struct._object* ()*
  store %struct._object* ()* %30, %struct._object* ()** %p, align 8
  %call24 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call24, null
  br i1 %tobool, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %do.end
  br label %error

if.end.26:                                        ; preds = %do.end
  %31 = load %struct._object* ()*, %struct._object* ()** %p, align 8
  %cmp27 = icmp eq %struct._object* ()* %31, null
  br i1 %cmp27, label %if.then.28, label %if.end.45

if.then.28:                                       ; preds = %if.end.26
  %32 = load i8*, i8** %shortname, align 8
  %call29 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i8* %32)
  store %struct._object* %call29, %struct._object** %msg, align 8
  %33 = load %struct._object*, %struct._object** %msg, align 8
  %cmp30 = icmp eq %struct._object* %33, null
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.28
  br label %error

if.end.32:                                        ; preds = %if.then.28
  %34 = load %struct._object*, %struct._object** %msg, align 8
  %35 = load %struct._object*, %struct._object** %name.addr, align 8
  %36 = load %struct._object*, %struct._object** %path.addr, align 8
  %call33 = call %struct._object* @PyErr_SetImportError(%struct._object* %34, %struct._object* %35, %struct._object* %36)
  br label %do.body.34

do.body.34:                                       ; preds = %if.end.32
  %37 = load %struct._object*, %struct._object** %msg, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp35, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %39, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.34
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %42(%struct._object* %43)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %error

if.end.45:                                        ; preds = %if.end.26
  %44 = load i8*, i8** @_Py_PackageContext, align 8
  store i8* %44, i8** %oldcontext, align 8
  %45 = load i8*, i8** %packagecontext, align 8
  store i8* %45, i8** @_Py_PackageContext, align 8
  %46 = load %struct._object* ()*, %struct._object* ()** %p, align 8
  %call46 = call %struct._object* %46()
  store %struct._object* %call46, %struct._object** %m, align 8
  %47 = load i8*, i8** %oldcontext, align 8
  store i8* %47, i8** @_Py_PackageContext, align 8
  %48 = load %struct._object*, %struct._object** %m, align 8
  %cmp47 = icmp eq %struct._object* %48, null
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.45
  br label %error

if.end.49:                                        ; preds = %if.end.45
  %call50 = call %struct._object* @PyErr_Occurred()
  %tobool51 = icmp ne %struct._object* %call50, null
  br i1 %tobool51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.end.49
  %49 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %50 = load i8*, i8** %shortname, align 8
  %call53 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %49, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0), i8* %50)
  br label %error

if.end.54:                                        ; preds = %if.end.49
  %51 = load %struct._object*, %struct._object** %m, align 8
  %call55 = call %struct.PyModuleDef* @PyModule_GetDef(%struct._object* %51)
  store %struct.PyModuleDef* %call55, %struct.PyModuleDef** %def, align 8
  %52 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def, align 8
  %cmp56 = icmp eq %struct.PyModuleDef* %52, null
  br i1 %cmp56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.54
  %53 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %54 = load i8*, i8** %shortname, align 8
  %call58 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %53, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i32 0, i32 0), i8* %54)
  br label %error

if.end.59:                                        ; preds = %if.end.54
  %55 = load %struct._object* ()*, %struct._object* ()** %p, align 8
  %56 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def, align 8
  %m_base = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %56, i32 0, i32 0
  %m_init = getelementptr inbounds %struct.PyModuleDef_Base, %struct.PyModuleDef_Base* %m_base, i32 0, i32 1
  store %struct._object* ()* %55, %struct._object* ()** %m_init, align 8
  %57 = load %struct._object*, %struct._object** %m, align 8
  %58 = load %struct._object*, %struct._object** %path.addr, align 8
  %call60 = call i32 @PyModule_AddObject(%struct._object* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), %struct._object* %58)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %if.end.59
  call void @PyErr_Clear()
  br label %if.end.66

if.else.63:                                       ; preds = %if.end.59
  %59 = load %struct._object*, %struct._object** %path.addr, align 8
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt64, align 8
  %inc65 = add i64 %60, 1
  store i64 %inc65, i64* %ob_refcnt64, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.63, %if.then.62
  %61 = load %struct._object*, %struct._object** %m, align 8
  %62 = load %struct._object*, %struct._object** %name.addr, align 8
  %63 = load %struct._object*, %struct._object** %path.addr, align 8
  %call67 = call i32 @_PyImport_FixupExtensionObject(%struct._object* %61, %struct._object* %62, %struct._object* %63)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.66
  br label %error

if.end.70:                                        ; preds = %if.end.66
  br label %do.body.71

do.body.71:                                       ; preds = %if.end.70
  %64 = load %struct._object*, %struct._object** %nameascii, align 8
  store %struct._object* %64, %struct._object** %_py_decref_tmp72, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  %ob_refcnt73 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0
  %66 = load i64, i64* %ob_refcnt73, align 8
  %dec74 = add i64 %66, -1
  store i64 %dec74, i64* %ob_refcnt73, align 8
  %cmp75 = icmp ne i64 %dec74, 0
  br i1 %cmp75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %do.body.71
  br label %if.end.80

if.else.77:                                       ; preds = %do.body.71
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  %ob_type78 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type78, align 8
  %tp_dealloc79 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc79, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  call void %69(%struct._object* %70)
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.77, %if.then.76
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  %71 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %71, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.69, %if.then.57, %if.then.52, %if.then.48, %do.end.44, %if.then.31, %if.then.25, %if.then.14, %if.then.6
  br label %do.body.82

do.body.82:                                       ; preds = %error
  %72 = load %struct._object*, %struct._object** %nameascii, align 8
  store %struct._object* %72, %struct._object** %_py_decref_tmp83, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  %ob_refcnt84 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt84, align 8
  %dec85 = add i64 %74, -1
  store i64 %dec85, i64* %ob_refcnt84, align 8
  %cmp86 = icmp ne i64 %dec85, 0
  br i1 %cmp86, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %do.body.82
  br label %if.end.91

if.else.88:                                       ; preds = %do.body.82
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8
  %tp_dealloc90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc90, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  call void %77(%struct._object* %78)
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  br label %do.body.93

do.body.93:                                       ; preds = %do.end.92
  %79 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %79, %struct._object** %_py_xdecref_tmp, align 8
  %80 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp94 = icmp ne %struct._object* %80, null
  br i1 %cmp94, label %if.then.95, label %if.end.107

if.then.95:                                       ; preds = %do.body.93
  br label %do.body.96

do.body.96:                                       ; preds = %if.then.95
  %81 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %81, %struct._object** %_py_decref_tmp97, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp97, align 8
  %ob_refcnt98 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0
  %83 = load i64, i64* %ob_refcnt98, align 8
  %dec99 = add i64 %83, -1
  store i64 %dec99, i64* %ob_refcnt98, align 8
  %cmp100 = icmp ne i64 %dec99, 0
  br i1 %cmp100, label %if.then.101, label %if.else.102

if.then.101:                                      ; preds = %do.body.96
  br label %if.end.105

if.else.102:                                      ; preds = %do.body.96
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp97, align 8
  %ob_type103 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type103, align 8
  %tp_dealloc104 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc104, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp97, align 8
  call void %86(%struct._object* %87)
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.102, %if.then.101
  br label %do.end.106

do.end.106:                                       ; preds = %if.end.105
  br label %if.end.107

if.end.107:                                       ; preds = %do.end.106, %do.body.93
  br label %do.end.108

do.end.108:                                       ; preds = %if.end.107
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.108, %do.end.81, %if.then.3, %if.then
  %88 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %88
}

declare %struct._object* @_PyImport_FindExtensionObject(%struct._object*, %struct._object*) #1

declare %struct._object* @PyUnicode_AsEncodedString(%struct._object*, i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

declare %struct._object* @PyUnicode_EncodeFSDefault(%struct._object*) #1

declare void ()* @_PyImport_GetDynLoadFunc(i8*, i8*, %struct._IO_FILE*) #1

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare %struct._object* @PyErr_SetImportError(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare %struct.PyModuleDef* @PyModule_GetDef(%struct._object*) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare void @PyErr_Clear() #1

declare i32 @_PyImport_FixupExtensionObject(%struct._object*, %struct._object*, %struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
