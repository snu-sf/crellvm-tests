; ModuleID = './grpmodule.bc'
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
%struct.PyStructSequence_Desc = type { i8*, i8*, %struct.PyStructSequence_Field*, i32 }
%struct.PyStructSequence_Field = type { i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

@grpmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([525 x i8], [525 x i8]* @grp__doc__, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @grp_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@initialized = internal global i32 0, align 4
@StructGrpType = internal global %struct._typeobject zeroinitializer, align 8
@struct_group_type_desc = internal global %struct.PyStructSequence_Desc { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([195 x i8], [195 x i8]* @struct_group__doc__, i32 0, i32 0), %struct.PyStructSequence_Field* getelementptr inbounds ([5 x %struct.PyStructSequence_Field], [5 x %struct.PyStructSequence_Field]* @struct_group_type_fields, i32 0, i32 0), i32 4 }, align 8
@.str = private unnamed_addr constant [13 x i8] c"struct_group\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"grp\00", align 1
@grp__doc__ = internal global [525 x i8] c"Access to the Unix group database.\0A\0AGroup entries are reported as 4-tuples containing the following fields\0Afrom the group database, in order:\0A\0A  name   - name of the group\0A  passwd - group password (encrypted); often empty\0A  gid    - numeric ID of the group\0A  mem    - list of members\0A\0AThe gid is an integer, name and password are strings.  (Note that most\0Ausers are not explicitly listed as members of the groups they are in\0Aaccording to the password database.  Check both databases to get\0Acomplete membership information.)\00", align 16
@grp_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @grp_getgrgid, i32 8, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.3, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @grp_getgrnam, i32 1, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.5, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @grp_getgrall, i32 4, i8* getelementptr inbounds ([230 x i8], [230 x i8]* @.str.7, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"getgrgid\00", align 1
@.str.3 = private unnamed_addr constant [123 x i8] c"getgrgid(id) -> tuple\0AReturn the group database entry for the given numeric group ID.  If\0Aid is not valid, raise KeyError.\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"getgrnam\00", align 1
@.str.5 = private unnamed_addr constant [121 x i8] c"getgrnam(name) -> tuple\0AReturn the group database entry for the given group name.  If\0Aname is not valid, raise KeyError.\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"getgrall\00", align 1
@.str.7 = private unnamed_addr constant [230 x i8] c"getgrall() -> list of tuples\0AReturn a list of all available group entries, in arbitrary order.\0AAn entry whose name starts with '+' or '-' represents an instruction\0Ato use YP/NIS and may not be accessible via getgrnam or getgrgid.\00", align 1
@PyExc_KeyError = external global %struct._object*, align 8
@.str.8 = private unnamed_addr constant [30 x i8] c"getgrgid(): gid not found: %S\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"U:getgrnam\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"getgrnam(): name not found: %s\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"grp.struct_group\00", align 1
@struct_group__doc__ = internal global [195 x i8] c"grp.struct_group: Results from getgr*() routines.\0A\0AThis object may be accessed either as a tuple of\0A  (gr_name,gr_passwd,gr_gid,gr_mem)\0Aor via the object attributes as named in the above tuple.\0A\00", align 16
@struct_group_type_fields = internal global [5 x %struct.PyStructSequence_Field] [%struct.PyStructSequence_Field { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0) }, %struct.PyStructSequence_Field zeroinitializer], align 16
@.str.12 = private unnamed_addr constant [8 x i8] c"gr_name\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"group name\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"gr_passwd\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"gr_gid\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"group id\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"gr_mem\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"group members\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_grp() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @grpmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call %struct._object* @PyModule_GetDict(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %d, align 8
  %2 = load i32, i32* @initialized, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end.7, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call3 = call i32 @PyStructSequence_InitType2(%struct._typeobject* @StructGrpType, %struct.PyStructSequence_Desc* @struct_group_type_desc)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %3 = load %struct._object*, %struct._object** %d, align 8
  %call8 = call i32 @PyDict_SetItemString(%struct._object* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructGrpType, i32 0, i32 0, i32 0))
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  store i32 1, i32* @initialized, align 4
  %4 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then.5, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare %struct._object* @PyModule_GetDict(%struct._object*) #1

declare i32 @PyStructSequence_InitType2(%struct._typeobject*, %struct.PyStructSequence_Desc*) #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @grp_getgrgid(%struct._object* %self, %struct._object* %pyo_id) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %pyo_id.addr = alloca %struct._object*, align 8
  %py_int_id = alloca %struct._object*, align 8
  %gid = alloca i32, align 4
  %p = alloca %struct.group*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp8 = alloca %struct._object*, align 8
  %gid_obj = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %pyo_id, %struct._object** %pyo_id.addr, align 8
  %0 = load %struct._object*, %struct._object** %pyo_id.addr, align 8
  %call = call %struct._object* @PyNumber_Long(%struct._object* %0)
  store %struct._object* %call, %struct._object** %py_int_id, align 8
  %1 = load %struct._object*, %struct._object** %py_int_id, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %py_int_id, align 8
  %3 = bitcast i32* %gid to i8*
  %call1 = call i32 @_Py_Gid_Converter(%struct._object* %2, i8* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.6, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %4 = load %struct._object*, %struct._object** %py_int_id, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end.5

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  br label %do.body.7

do.body.7:                                        ; preds = %if.end.6
  %11 = load %struct._object*, %struct._object** %py_int_id, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp8, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp8, align 8
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt9, align 8
  %dec10 = add i64 %13, -1
  store i64 %dec10, i64* %ob_refcnt9, align 8
  %cmp11 = icmp ne i64 %dec10, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %do.body.7
  br label %if.end.16

if.else.13:                                       ; preds = %do.body.7
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp8, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_dealloc15 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc15, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp8, align 8
  call void %16(%struct._object* %17)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.13, %if.then.12
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %18 = load i32, i32* %gid, align 4
  %call18 = call %struct.group* @getgrgid(i32 %18)
  store %struct.group* %call18, %struct.group** %p, align 8
  %cmp19 = icmp eq %struct.group* %call18, null
  br i1 %cmp19, label %if.then.20, label %if.end.37

if.then.20:                                       ; preds = %do.end.17
  %19 = load i32, i32* %gid, align 4
  %call21 = call %struct._object* @_PyLong_FromGid(i32 %19)
  store %struct._object* %call21, %struct._object** %gid_obj, align 8
  %20 = load %struct._object*, %struct._object** %gid_obj, align 8
  %cmp22 = icmp eq %struct._object* %20, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.then.20
  %21 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8
  %22 = load %struct._object*, %struct._object** %gid_obj, align 8
  %call25 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), %struct._object* %22)
  br label %do.body.26

do.body.26:                                       ; preds = %if.end.24
  %23 = load %struct._object*, %struct._object** %gid_obj, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp27, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %25, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.26
  br label %if.end.35

if.else.32:                                       ; preds = %do.body.26
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %28(%struct._object* %29)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %do.end.17
  %30 = load %struct.group*, %struct.group** %p, align 8
  %call38 = call %struct._object* @mkgrent(%struct.group* %30)
  store %struct._object* %call38, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.37, %do.end.36, %if.then.23, %do.end, %if.then
  %31 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %31
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @grp_getgrnam(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %p = alloca %struct.group*, align 8
  %arg = alloca %struct._object*, align 8
  %bytes = alloca %struct._object*, align 8
  %retval1 = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %retval1, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), %struct._object** %arg)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %arg, align 8
  %call2 = call %struct._object* @PyUnicode_EncodeFSDefault(%struct._object* %1)
  store %struct._object* %call2, %struct._object** %bytes, align 8
  %cmp = icmp eq %struct._object* %call2, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %bytes, align 8
  %call5 = call i32 @PyBytes_AsStringAndSize(%struct._object* %2, i8** %name, i64* null)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  br label %out

if.end.8:                                         ; preds = %if.end.4
  %3 = load i8*, i8** %name, align 8
  %call9 = call %struct.group* @getgrnam(i8* %3)
  store %struct.group* %call9, %struct.group** %p, align 8
  %cmp10 = icmp eq %struct.group* %call9, null
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.8
  %4 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8
  %5 = load i8*, i8** %name, align 8
  %call12 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), i8* %5)
  br label %out

if.end.13:                                        ; preds = %if.end.8
  %6 = load %struct.group*, %struct.group** %p, align 8
  %call14 = call %struct._object* @mkgrent(%struct.group* %6)
  store %struct._object* %call14, %struct._object** %retval1, align 8
  br label %out

out:                                              ; preds = %if.end.13, %if.then.11, %if.then.7
  br label %do.body

do.body:                                          ; preds = %out
  %7 = load %struct._object*, %struct._object** %bytes, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.17
  %14 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @grp_getgrall(%struct._object* %self, %struct._object* %ignore) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %ignore.addr = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %p = alloca %struct.group*, align 8
  %v = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp17 = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %ignore, %struct._object** %ignore.addr, align 8
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** %d, align 8
  %cmp = icmp eq %struct._object* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @setgrent()
  br label %while.cond

while.cond:                                       ; preds = %do.end.38, %if.end
  %call1 = call %struct.group* @getgrent()
  store %struct.group* %call1, %struct.group** %p, align 8
  %cmp2 = icmp ne %struct.group* %call1, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load %struct.group*, %struct.group** %p, align 8
  %call3 = call %struct._object* @mkgrent(%struct.group* %0)
  store %struct._object* %call3, %struct._object** %v, align 8
  %1 = load %struct._object*, %struct._object** %v, align 8
  %cmp4 = icmp eq %struct._object* %1, null
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %2 = load %struct._object*, %struct._object** %d, align 8
  %3 = load %struct._object*, %struct._object** %v, align 8
  %call5 = call i32 @PyList_Append(%struct._object* %2, %struct._object* %3)
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.27

if.then.7:                                        ; preds = %lor.lhs.false, %while.body
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %4 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp8 = icmp ne %struct._object* %5, null
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %do.body
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body.10
  br label %if.end.13

if.else:                                          ; preds = %do.body.10
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
  br label %if.end.14

if.end.14:                                        ; preds = %do.end, %do.body
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %13 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp17, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt18, align 8
  %dec19 = add i64 %15, -1
  store i64 %dec19, i64* %ob_refcnt18, align 8
  %cmp20 = icmp ne i64 %dec19, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.16
  br label %if.end.25

if.else.22:                                       ; preds = %do.body.16
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  call void %18(%struct._object* %19)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  call void @endgrent()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %lor.lhs.false
  br label %do.body.28

do.body.28:                                       ; preds = %if.end.27
  %20 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp29, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %22, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.28
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.28
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %25(%struct._object* %26)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @endgrent()
  %27 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %while.end, %do.end.26, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

declare %struct._object* @PyNumber_Long(%struct._object*) #1

declare i32 @_Py_Gid_Converter(%struct._object*, i8*) #1

declare %struct.group* @getgrgid(i32) #1

declare %struct._object* @_PyLong_FromGid(i32) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @mkgrent(%struct.group* %p) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca %struct.group*, align 8
  %setIndex = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  %w = alloca %struct._object*, align 8
  %member = alloca i8**, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %x = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_decref_tmp42 = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  %_py_decref_tmp92 = alloca %struct._object*, align 8
  store %struct.group* %p, %struct.group** %p.addr, align 8
  store i32 0, i32* %setIndex, align 4
  %call = call %struct._object* @PyStructSequence_New(%struct._typeobject* @StructGrpType)
  store %struct._object* %call, %struct._object** %v, align 8
  %0 = load %struct._object*, %struct._object** %v, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call1, %struct._object** %w, align 8
  %cmp2 = icmp eq %struct._object* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %1 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %1, %struct._object** %_py_decref_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 4
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %6(%struct._object* %7)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %8 = load %struct.group*, %struct.group** %p.addr, align 8
  %gr_mem = getelementptr inbounds %struct.group, %struct.group* %8, i32 0, i32 3
  %9 = load i8**, i8*** %gr_mem, align 8
  store i8** %9, i8*** %member, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %10 = load i8**, i8*** %member, align 8
  %11 = load i8*, i8** %10, align 8
  %cmp8 = icmp ne i8* %11, null
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8**, i8*** %member, align 8
  %13 = load i8*, i8** %12, align 8
  %call9 = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %13)
  store %struct._object* %call9, %struct._object** %x, align 8
  %14 = load %struct._object*, %struct._object** %x, align 8
  %cmp10 = icmp eq %struct._object* %14, null
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %15 = load %struct._object*, %struct._object** %w, align 8
  %16 = load %struct._object*, %struct._object** %x, align 8
  %call11 = call i32 @PyList_Append(%struct._object* %15, %struct._object* %16)
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.52

if.then.13:                                       ; preds = %lor.lhs.false, %for.body
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  %17 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %17, %struct._object** %_py_xdecref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp15 = icmp ne %struct._object* %18, null
  br i1 %cmp15, label %if.then.16, label %if.end.28

if.then.16:                                       ; preds = %do.body.14
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp18, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %21, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %24(%struct._object* %25)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %if.end.28

if.end.28:                                        ; preds = %do.end.27, %do.body.14
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %do.body.30

do.body.30:                                       ; preds = %do.end.29
  %26 = load %struct._object*, %struct._object** %w, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp31, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %28, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %31(%struct._object* %32)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  %33 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp42, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt43, align 8
  %dec44 = add i64 %35, -1
  store i64 %dec44, i64* %ob_refcnt43, align 8
  %cmp45 = icmp ne i64 %dec44, 0
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %do.body.41
  br label %if.end.50

if.else.47:                                       ; preds = %do.body.41
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  call void %38(%struct._object* %39)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.52:                                        ; preds = %lor.lhs.false
  br label %do.body.53

do.body.53:                                       ; preds = %if.end.52
  %40 = load %struct._object*, %struct._object** %x, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp54, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt55, align 8
  %dec56 = add i64 %42, -1
  store i64 %dec56, i64* %ob_refcnt55, align 8
  %cmp57 = icmp ne i64 %dec56, 0
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62

if.else.59:                                       ; preds = %do.body.53
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  call void %45(%struct._object* %46)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  br label %for.inc

for.inc:                                          ; preds = %do.end.63
  %47 = load i8**, i8*** %member, align 8
  %incdec.ptr = getelementptr i8*, i8** %47, i32 1
  store i8** %incdec.ptr, i8*** %member, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load %struct.group*, %struct.group** %p.addr, align 8
  %gr_name = getelementptr inbounds %struct.group, %struct.group* %48, i32 0, i32 0
  %49 = load i8*, i8** %gr_name, align 8
  %call64 = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %49)
  %50 = load i32, i32* %setIndex, align 4
  %inc = add i32 %50, 1
  store i32 %inc, i32* %setIndex, align 4
  %idxprom = sext i32 %50 to i64
  %51 = load %struct._object*, %struct._object** %v, align 8
  %52 = bitcast %struct._object* %51 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %52, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom
  store %struct._object* %call64, %struct._object** %arrayidx, align 8
  %53 = load %struct.group*, %struct.group** %p.addr, align 8
  %gr_passwd = getelementptr inbounds %struct.group, %struct.group* %53, i32 0, i32 1
  %54 = load i8*, i8** %gr_passwd, align 8
  %tobool = icmp ne i8* %54, null
  br i1 %tobool, label %if.then.65, label %if.else.72

if.then.65:                                       ; preds = %for.end
  %55 = load %struct.group*, %struct.group** %p.addr, align 8
  %gr_passwd66 = getelementptr inbounds %struct.group, %struct.group* %55, i32 0, i32 1
  %56 = load i8*, i8** %gr_passwd66, align 8
  %call67 = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %56)
  %57 = load i32, i32* %setIndex, align 4
  %inc68 = add i32 %57, 1
  store i32 %inc68, i32* %setIndex, align 4
  %idxprom69 = sext i32 %57 to i64
  %58 = load %struct._object*, %struct._object** %v, align 8
  %59 = bitcast %struct._object* %58 to %struct.PyTupleObject*
  %ob_item70 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %59, i32 0, i32 1
  %arrayidx71 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item70, i32 0, i64 %idxprom69
  store %struct._object* %call67, %struct._object** %arrayidx71, align 8
  br label %if.end.78

if.else.72:                                       ; preds = %for.end
  %60 = load i32, i32* %setIndex, align 4
  %inc73 = add i32 %60, 1
  store i32 %inc73, i32* %setIndex, align 4
  %idxprom74 = sext i32 %60 to i64
  %61 = load %struct._object*, %struct._object** %v, align 8
  %62 = bitcast %struct._object* %61 to %struct.PyTupleObject*
  %ob_item75 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %62, i32 0, i32 1
  %arrayidx76 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item75, i32 0, i64 %idxprom74
  store %struct._object* @_Py_NoneStruct, %struct._object** %arrayidx76, align 8
  %63 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc77 = add i64 %63, 1
  store i64 %inc77, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.72, %if.then.65
  %64 = load %struct.group*, %struct.group** %p.addr, align 8
  %gr_gid = getelementptr inbounds %struct.group, %struct.group* %64, i32 0, i32 2
  %65 = load i32, i32* %gr_gid, align 4
  %call79 = call %struct._object* @_PyLong_FromGid(i32 %65)
  %66 = load i32, i32* %setIndex, align 4
  %inc80 = add i32 %66, 1
  store i32 %inc80, i32* %setIndex, align 4
  %idxprom81 = sext i32 %66 to i64
  %67 = load %struct._object*, %struct._object** %v, align 8
  %68 = bitcast %struct._object* %67 to %struct.PyTupleObject*
  %ob_item82 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %68, i32 0, i32 1
  %arrayidx83 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item82, i32 0, i64 %idxprom81
  store %struct._object* %call79, %struct._object** %arrayidx83, align 8
  %69 = load %struct._object*, %struct._object** %w, align 8
  %70 = load i32, i32* %setIndex, align 4
  %inc84 = add i32 %70, 1
  store i32 %inc84, i32* %setIndex, align 4
  %idxprom85 = sext i32 %70 to i64
  %71 = load %struct._object*, %struct._object** %v, align 8
  %72 = bitcast %struct._object* %71 to %struct.PyTupleObject*
  %ob_item86 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %72, i32 0, i32 1
  %arrayidx87 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item86, i32 0, i64 %idxprom85
  store %struct._object* %69, %struct._object** %arrayidx87, align 8
  %call88 = call %struct._object* @PyErr_Occurred()
  %tobool89 = icmp ne %struct._object* %call88, null
  br i1 %tobool89, label %if.then.90, label %if.end.102

if.then.90:                                       ; preds = %if.end.78
  br label %do.body.91

do.body.91:                                       ; preds = %if.then.90
  %73 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %73, %struct._object** %_py_decref_tmp92, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  %ob_refcnt93 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0
  %75 = load i64, i64* %ob_refcnt93, align 8
  %dec94 = add i64 %75, -1
  store i64 %dec94, i64* %ob_refcnt93, align 8
  %cmp95 = icmp ne i64 %dec94, 0
  br i1 %cmp95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %do.body.91
  br label %if.end.100

if.else.97:                                       ; preds = %do.body.91
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  %ob_type98 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type98, align 8
  %tp_dealloc99 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 4
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc99, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  call void %78(%struct._object* %79)
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.97, %if.then.96
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.102:                                       ; preds = %if.end.78
  %80 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %80, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.102, %do.end.101, %do.end.51, %do.end, %if.then
  %81 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %81
}

declare %struct._object* @PyStructSequence_New(%struct._typeobject*) #1

declare %struct._object* @PyList_New(i64) #1

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare %struct._object* @PyUnicode_EncodeFSDefault(%struct._object*) #1

declare i32 @PyBytes_AsStringAndSize(%struct._object*, i8**, i64*) #1

declare %struct.group* @getgrnam(i8*) #1

declare void @setgrent() #1

declare %struct.group* @getgrent() #1

declare void @endgrent() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
