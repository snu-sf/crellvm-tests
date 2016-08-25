; ModuleID = './nismodule.bc'
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
%struct.nis_map = type { i8*, i8*, i32 }
%struct.nisresp_maplist = type { i32, %struct.nismaplist* }
%struct.nismaplist = type { i8*, %struct.nismaplist* }
%struct.timeval = type { i64, i64 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.ypall_callback = type { i32 (i32, i8*, i32, i8*, i32, i8*)*, i8* }
%struct.ypcallback_data = type { %struct._object*, i32, %struct._ts* }
%struct.CLIENT = type { %struct.AUTH*, %struct.clnt_ops*, i8* }
%struct.AUTH = type { %struct.opaque_auth, %struct.opaque_auth, %union.des_block, %struct.auth_ops*, i8* }
%struct.opaque_auth = type { i32, i8*, i32 }
%union.des_block = type { %struct.anon }
%struct.anon = type { i32, i32 }
%struct.auth_ops = type { void (%struct.AUTH*)*, i32 (%struct.AUTH*, %struct.XDR*)*, i32 (%struct.AUTH*, %struct.opaque_auth*)*, i32 (%struct.AUTH*)*, void (%struct.AUTH*)* }
%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }
%struct.clnt_ops = type { i32 (%struct.CLIENT*, i64, i32 (%struct.XDR*, i8*, ...)*, i8*, i32 (%struct.XDR*, i8*, ...)*, i8*, %struct.timeval*)*, void ()*, void (%struct.CLIENT*, %struct.rpc_err*)*, i32 (%struct.CLIENT*, i32 (%struct.XDR*, i8*, ...)*, i8*)*, void (%struct.CLIENT*)*, i32 (%struct.CLIENT*, i32, i8*)* }
%struct.rpc_err = type { i32, %union.anon }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i64, i64 }

@nismodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @nis__doc__, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([5 x %struct.PyMethodDef], [5 x %struct.PyMethodDef]* @nis_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [10 x i8] c"nis.error\00", align 1
@NisError = internal global %struct._object* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"nis\00", align 1
@nis__doc__ = internal global [56 x i8] c"This module contains functions for accessing NIS maps.\0A\00", align 16
@nis_methods = internal global [5 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @nis_match to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([213 x i8], [213 x i8]* @match__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @nis_cat to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([155 x i8], [155 x i8]* @cat__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @nis_maps to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([159 x i8], [159 x i8]* @maps__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @nis_get_default_domain to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @get_default_domain__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@match__doc__ = internal global [213 x i8] c"match(key, map, domain = defaultdomain)\0ACorresponds to the C library yp_match() call, returning the value of\0Akey in the given map. Optionally domain can be specified but it\0Adefaults to the system default domain.\0A\00", align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@cat__doc__ = internal global [155 x i8] c"cat(map, domain = defaultdomain)\0AReturns the entire map as a dictionary. Optionally domain can be\0Aspecified but it defaults to the system default domain.\0A\00", align 16
@.str.5 = private unnamed_addr constant [5 x i8] c"maps\00", align 1
@maps__doc__ = internal global [159 x i8] c"maps(domain = defaultdomain)\0AReturns an array of all available NIS maps within a domain. If domain\0Ais not specified it defaults to the system default domain.\0A\00", align 16
@.str.6 = private unnamed_addr constant [19 x i8] c"get_default_domain\00", align 1
@get_default_domain__doc__ = internal global [122 x i8] c"get_default_domain() -> str\0ACorresponds to the C library yp_get_default_domain() call, returning\0Athe default NIS domain.\0A\00", align 16
@nis_match.kwlist = internal global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* null], align 16
@.str.7 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Us|s:match\00", align 1
@aliases = internal global [9 x %struct.nis_map] [%struct.nis_map { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 0 }, %struct.nis_map { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i32 0 }, %struct.nis_map { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i32 0 }, %struct.nis_map { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i32 0 }, %struct.nis_map { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), i32 0 }, %struct.nis_map { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i32 0 }, %struct.nis_map { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i32 1 }, %struct.nis_map { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i32 0 }, %struct.nis_map zeroinitializer], align 16
@.str.11 = private unnamed_addr constant [7 x i8] c"passwd\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"passwd.byname\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"group.byname\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"networks\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"networks.byaddr\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"hosts\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"hosts.byname\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"protocols\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"protocols.bynumber\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"services\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"services.byname\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"aliases\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"mail.aliases\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"ethers\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"ethers.byname\00", align 1
@nis_cat.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* null], align 16
@.str.27 = private unnamed_addr constant [8 x i8] c"s|s:cat\00", align 1
@nis_maps.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* null], align 16
@.str.28 = private unnamed_addr constant [8 x i8] c"|s:maps\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"No NIS master found for any map\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@nisproc_maplist_2.res = internal global %struct.nisresp_maplist zeroinitializer, align 8
@TIMEOUT = internal global %struct.timeval { i64 25, i64 0 }, align 8

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_nis() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @nismodule, i32 1013)
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
  %call2 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), %struct._object* null, %struct._object* null)
  store %struct._object* %call2, %struct._object** @NisError, align 8
  %2 = load %struct._object*, %struct._object** @NisError, align 8
  %cmp3 = icmp ne %struct._object* %2, null
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %d, align 8
  %4 = load %struct._object*, %struct._object** @NisError, align 8
  %call5 = call i32 @PyDict_SetItemString(%struct._object* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._object* %4)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %5 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare %struct._object* @PyModule_GetDict(%struct._object*) #1

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @nis_match(%struct._object* %self, %struct._object* %args, %struct._object* %kwdict) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwdict.addr = alloca %struct._object*, align 8
  %match = alloca i8*, align 8
  %domain = alloca i8*, align 8
  %keylen = alloca i64, align 8
  %len = alloca i32, align 4
  %key = alloca i8*, align 8
  %map = alloca i8*, align 8
  %err = alloca i32, align 4
  %ukey = alloca %struct._object*, align 8
  %bkey = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %fix = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwdict, %struct._object** %kwdict.addr, align 8
  store i8* null, i8** %domain, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwdict.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @nis_match.kwlist, i32 0, i32 0), %struct._object** %ukey, i8** %map, i8** %domain)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %ukey, align 8
  %call1 = call %struct._object* @PyUnicode_EncodeFSDefault(%struct._object* %2)
  store %struct._object* %call1, %struct._object** %bkey, align 8
  %cmp = icmp eq %struct._object* %call1, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %bkey, align 8
  %call4 = call i32 @PyBytes_AsStringAndSize(%struct._object* %3, i8** %key, i64* %keylen)
  %cmp5 = icmp eq i32 %call4, -1
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %4 = load %struct._object*, %struct._object** %bkey, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.3
  %11 = load i8*, i8** %domain, align 8
  %tobool11 = icmp ne i8* %11, null
  br i1 %tobool11, label %if.end.27, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.10
  %call12 = call i32 @yp_get_default_domain(i8** %domain) #4
  store i32 %call12, i32* %err, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.27

if.then.14:                                       ; preds = %land.lhs.true
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %12 = load %struct._object*, %struct._object** %bkey, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp16, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %14, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.15
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %17(%struct._object* %18)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %19 = load i32, i32* %err, align 4
  %call26 = call %struct._object* @nis_error(i32 %19)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %land.lhs.true, %if.end.10
  %20 = load i8*, i8** %map, align 8
  %call28 = call i8* @nis_mapname(i8* %20, i32* %fix)
  store i8* %call28, i8** %map, align 8
  %21 = load i32, i32* %fix, align 4
  %tobool29 = icmp ne i32 %21, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  %22 = load i64, i64* %keylen, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %keylen, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.27
  %call32 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call32, %struct._ts** %_save, align 8
  %23 = load i8*, i8** %domain, align 8
  %24 = load i8*, i8** %map, align 8
  %25 = load i8*, i8** %key, align 8
  %26 = load i64, i64* %keylen, align 8
  %conv = trunc i64 %26 to i32
  %call33 = call i32 @yp_match(i8* %23, i8* %24, i8* %25, i32 %conv, i8** %match, i32* %len) #4
  store i32 %call33, i32* %err, align 4
  %27 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %27)
  br label %do.body.34

do.body.34:                                       ; preds = %if.end.31
  %28 = load %struct._object*, %struct._object** %bkey, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp35, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %30, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.34
  br label %if.end.44

if.else.41:                                       ; preds = %do.body.34
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %33(%struct._object* %34)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %35 = load i32, i32* %fix, align 4
  %tobool46 = icmp ne i32 %35, 0
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %do.end.45
  %36 = load i32, i32* %len, align 4
  %dec48 = add i32 %36, -1
  store i32 %dec48, i32* %len, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %do.end.45
  %37 = load i32, i32* %err, align 4
  %cmp50 = icmp ne i32 %37, 0
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.end.49
  %38 = load i32, i32* %err, align 4
  %call53 = call %struct._object* @nis_error(i32 %38)
  store %struct._object* %call53, %struct._object** %retval
  br label %return

if.end.54:                                        ; preds = %if.end.49
  %39 = load i8*, i8** %match, align 8
  %40 = load i32, i32* %len, align 4
  %conv55 = sext i32 %40 to i64
  %call56 = call %struct._object* @PyUnicode_DecodeFSDefaultAndSize(i8* %39, i64 %conv55)
  store %struct._object* %call56, %struct._object** %res, align 8
  %41 = load i8*, i8** %match, align 8
  call void @free(i8* %41) #4
  %42 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %42, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.54, %if.then.52, %do.end.25, %do.end, %if.then.2, %if.then
  %43 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %43
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nis_cat(%struct._object* %self, %struct._object* %args, %struct._object* %kwdict) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwdict.addr = alloca %struct._object*, align 8
  %domain = alloca i8*, align 8
  %map = alloca i8*, align 8
  %cb = alloca %struct.ypall_callback, align 8
  %data = alloca %struct.ypcallback_data, align 8
  %dict = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwdict, %struct._object** %kwdict.addr, align 8
  store i8* null, i8** %domain, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwdict.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @nis_cat.kwlist, i32 0, i32 0), i8** %map, i8** %domain)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %domain, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.end.5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call2 = call i32 @yp_get_default_domain(i8** %domain) #4
  store i32 %call2, i32* %err, align 4
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %land.lhs.true
  %3 = load i32, i32* %err, align 4
  %call4 = call %struct._object* @nis_error(i32 %3)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %call6 = call %struct._object* @PyDict_New()
  store %struct._object* %call6, %struct._object** %dict, align 8
  %4 = load %struct._object*, %struct._object** %dict, align 8
  %cmp7 = icmp eq %struct._object* %4, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %foreach = getelementptr inbounds %struct.ypall_callback, %struct.ypall_callback* %cb, i32 0, i32 0
  store i32 (i32, i8*, i32, i8*, i32, i8*)* bitcast (i32 (i32, i8*, i32, i8*, i32, %struct.ypcallback_data*)* @nis_foreach to i32 (i32, i8*, i32, i8*, i32, i8*)*), i32 (i32, i8*, i32, i8*, i32, i8*)** %foreach, align 8
  %5 = load %struct._object*, %struct._object** %dict, align 8
  %dict10 = getelementptr inbounds %struct.ypcallback_data, %struct.ypcallback_data* %data, i32 0, i32 0
  store %struct._object* %5, %struct._object** %dict10, align 8
  %6 = load i8*, i8** %map, align 8
  %fix = getelementptr inbounds %struct.ypcallback_data, %struct.ypcallback_data* %data, i32 0, i32 1
  %call11 = call i8* @nis_mapname(i8* %6, i32* %fix)
  store i8* %call11, i8** %map, align 8
  %7 = bitcast %struct.ypcallback_data* %data to i8*
  %data12 = getelementptr inbounds %struct.ypall_callback, %struct.ypall_callback* %cb, i32 0, i32 1
  store i8* %7, i8** %data12, align 8
  %call13 = call %struct._ts* @PyEval_SaveThread()
  %state = getelementptr inbounds %struct.ypcallback_data, %struct.ypcallback_data* %data, i32 0, i32 2
  store %struct._ts* %call13, %struct._ts** %state, align 8
  %8 = load i8*, i8** %domain, align 8
  %9 = load i8*, i8** %map, align 8
  %call14 = call i32 @yp_all(i8* %8, i8* %9, %struct.ypall_callback* %cb) #4
  store i32 %call14, i32* %err, align 4
  %state15 = getelementptr inbounds %struct.ypcallback_data, %struct.ypcallback_data* %data, i32 0, i32 2
  %10 = load %struct._ts*, %struct._ts** %state15, align 8
  call void @PyEval_RestoreThread(%struct._ts* %10)
  %11 = load i32, i32* %err, align 4
  %cmp16 = icmp ne i32 %11, 0
  br i1 %cmp16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end.9
  br label %do.body

do.body:                                          ; preds = %if.then.17
  %12 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp18 = icmp ne i64 %dec, 0
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %do.body
  br label %if.end.20

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  br label %do.end

do.end:                                           ; preds = %if.end.20
  %19 = load i32, i32* %err, align 4
  %call21 = call %struct._object* @nis_error(i32 %19)
  store %struct._object* %call21, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.9
  %20 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %20, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.22, %do.end, %if.then.8, %if.then.3, %if.then
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nis_maps(%struct._object* %self, %struct._object* %args, %struct._object* %kwdict) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwdict.addr = alloca %struct._object*, align 8
  %domain = alloca i8*, align 8
  %maps = alloca %struct.nismaplist*, align 8
  %list = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %str = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwdict, %struct._object** %kwdict.addr, align 8
  store i8* null, i8** %domain, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwdict.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @nis_maps.kwlist, i32 0, i32 0), i8** %domain)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %domain, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.end.5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call2 = call i32 @yp_get_default_domain(i8** %domain) #4
  store i32 %call2, i32* %err, align 4
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %land.lhs.true
  %3 = load i32, i32* %err, align 4
  %call4 = call %struct._object* @nis_error(i32 %3)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %4 = load i8*, i8** %domain, align 8
  %call6 = call %struct.nismaplist* @nis_maplist(i8* %4)
  store %struct.nismaplist* %call6, %struct.nismaplist** %maps, align 8
  %cmp7 = icmp eq %struct.nismaplist* %call6, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %call10 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call10, %struct._object** %list, align 8
  %cmp11 = icmp eq %struct._object* %call10, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %5 = load %struct.nismaplist*, %struct.nismaplist** %maps, align 8
  %tobool14 = icmp ne %struct.nismaplist* %5, null
  br i1 %tobool14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.nismaplist*, %struct.nismaplist** %maps, align 8
  %map = getelementptr inbounds %struct.nismaplist, %struct.nismaplist* %6, i32 0, i32 0
  %7 = load i8*, i8** %map, align 8
  %call15 = call %struct._object* @PyUnicode_FromString(i8* %7)
  store %struct._object* %call15, %struct._object** %str, align 8
  %8 = load %struct._object*, %struct._object** %str, align 8
  %tobool16 = icmp ne %struct._object* %8, null
  br i1 %tobool16, label %lor.lhs.false, label %if.then.19

lor.lhs.false:                                    ; preds = %for.body
  %9 = load %struct._object*, %struct._object** %list, align 8
  %10 = load %struct._object*, %struct._object** %str, align 8
  %call17 = call i32 @PyList_Append(%struct._object* %9, %struct._object* %10)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %lor.lhs.false, %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.19
  %11 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %do.body
  br label %if.end.22

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  br label %do.end

do.end:                                           ; preds = %if.end.22
  store %struct._object* null, %struct._object** %list, align 8
  br label %for.end

if.end.23:                                        ; preds = %lor.lhs.false
  br label %do.body.24

do.body.24:                                       ; preds = %if.end.23
  %18 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp25, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %20, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.24
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %23(%struct._object* %24)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %for.inc

for.inc:                                          ; preds = %do.end.34
  %25 = load %struct.nismaplist*, %struct.nismaplist** %maps, align 8
  %next = getelementptr inbounds %struct.nismaplist, %struct.nismaplist* %25, i32 0, i32 1
  %26 = load %struct.nismaplist*, %struct.nismaplist** %next, align 8
  store %struct.nismaplist* %26, %struct.nismaplist** %maps, align 8
  br label %for.cond

for.end:                                          ; preds = %do.end, %for.cond
  %27 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.12, %if.then.8, %if.then.3, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @nis_get_default_domain(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %domain = alloca i8*, align 8
  %err = alloca i32, align 4
  %res = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call i32 @yp_get_default_domain(i8** %domain) #4
  store i32 %call, i32* %err, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %err, align 4
  %call1 = call %struct._object* @nis_error(i32 %0)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %domain, align 8
  %2 = load i8*, i8** %domain, align 8
  %call2 = call i64 @strlen(i8* %2) #5
  %call3 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %1, i64 %call2)
  store %struct._object* %call3, %struct._object** %res, align 8
  %3 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare %struct._object* @PyUnicode_EncodeFSDefault(%struct._object*) #1

declare i32 @PyBytes_AsStringAndSize(%struct._object*, i8**, i64*) #1

; Function Attrs: nounwind
declare i32 @yp_get_default_domain(i8**) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @nis_error(i32 %err) #0 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, i32* %err.addr, align 4
  %0 = load %struct._object*, %struct._object** @NisError, align 8
  %1 = load i32, i32* %err.addr, align 4
  %call = call i8* @yperr_string(i32 %1) #4
  call void @PyErr_SetString(%struct._object* %0, i8* %call)
  ret %struct._object* null
}

; Function Attrs: nounwind uwtable
define internal i8* @nis_mapname(i8* %map, i32* %pfix) #0 {
entry:
  %retval = alloca i8*, align 8
  %map.addr = alloca i8*, align 8
  %pfix.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i8* %map, i8** %map.addr, align 8
  store i32* %pfix, i32** %pfix.addr, align 8
  %0 = load i32*, i32** %pfix.addr, align 8
  store i32 0, i32* %0, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr [9 x %struct.nis_map], [9 x %struct.nis_map]* @aliases, i32 0, i64 %idxprom
  %alias = getelementptr inbounds %struct.nis_map, %struct.nis_map* %arrayidx, i32 0, i32 0
  %2 = load i8*, i8** %alias, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr [9 x %struct.nis_map], [9 x %struct.nis_map]* @aliases, i32 0, i64 %idxprom1
  %alias3 = getelementptr inbounds %struct.nis_map, %struct.nis_map* %arrayidx2, i32 0, i32 0
  %4 = load i8*, i8** %alias3, align 8
  %5 = load i8*, i8** %map.addr, align 8
  %call = call i32 @strcmp(i8* %4, i8* %5) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr [9 x %struct.nis_map], [9 x %struct.nis_map]* @aliases, i32 0, i64 %idxprom4
  %fix = getelementptr inbounds %struct.nis_map, %struct.nis_map* %arrayidx5, i32 0, i32 2
  %7 = load i32, i32* %fix, align 4
  %8 = load i32*, i32** %pfix.addr, align 8
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr [9 x %struct.nis_map], [9 x %struct.nis_map]* @aliases, i32 0, i64 %idxprom6
  %map8 = getelementptr inbounds %struct.nis_map, %struct.nis_map* %arrayidx7, i32 0, i32 1
  %10 = load i8*, i8** %map8, align 8
  store i8* %10, i8** %retval
  br label %return

if.end:                                           ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr [9 x %struct.nis_map], [9 x %struct.nis_map]* @aliases, i32 0, i64 %idxprom9
  %map11 = getelementptr inbounds %struct.nis_map, %struct.nis_map* %arrayidx10, i32 0, i32 1
  %12 = load i8*, i8** %map11, align 8
  %13 = load i8*, i8** %map.addr, align 8
  %call12 = call i32 @strcmp(i8* %12, i8* %13) #5
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.21, label %if.then.14

if.then.14:                                       ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr [9 x %struct.nis_map], [9 x %struct.nis_map]* @aliases, i32 0, i64 %idxprom15
  %fix17 = getelementptr inbounds %struct.nis_map, %struct.nis_map* %arrayidx16, i32 0, i32 2
  %15 = load i32, i32* %fix17, align 4
  %16 = load i32*, i32** %pfix.addr, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr [9 x %struct.nis_map], [9 x %struct.nis_map]* @aliases, i32 0, i64 %idxprom18
  %map20 = getelementptr inbounds %struct.nis_map, %struct.nis_map* %arrayidx19, i32 0, i32 1
  %18 = load i8*, i8** %map20, align 8
  store i8* %18, i8** %retval
  br label %return

if.end.21:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %19 = load i32, i32* %i, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i8*, i8** %map.addr, align 8
  store i8* %20, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.14, %if.then
  %21 = load i8*, i8** %retval
  ret i8* %21
}

declare %struct._ts* @PyEval_SaveThread() #1

; Function Attrs: nounwind
declare i32 @yp_match(i8*, i8*, i8*, i32, i8**, i32*) #2

declare void @PyEval_RestoreThread(%struct._ts*) #1

declare %struct._object* @PyUnicode_DecodeFSDefaultAndSize(i8*, i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind
declare i8* @yperr_string(i32) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare %struct._object* @PyDict_New() #1

; Function Attrs: nounwind uwtable
define internal i32 @nis_foreach(i32 %instatus, i8* %inkey, i32 %inkeylen, i8* %inval, i32 %invallen, %struct.ypcallback_data* %indata) #0 {
entry:
  %retval = alloca i32, align 4
  %instatus.addr = alloca i32, align 4
  %inkey.addr = alloca i8*, align 8
  %inkeylen.addr = alloca i32, align 4
  %inval.addr = alloca i8*, align 8
  %invallen.addr = alloca i32, align 4
  %indata.addr = alloca %struct.ypcallback_data*, align 8
  %key = alloca %struct._object*, align 8
  %val = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp39 = alloca %struct._object*, align 8
  %_py_decref_tmp44 = alloca %struct._object*, align 8
  %_py_decref_tmp62 = alloca %struct._object*, align 8
  %_py_decref_tmp74 = alloca %struct._object*, align 8
  store i32 %instatus, i32* %instatus.addr, align 4
  store i8* %inkey, i8** %inkey.addr, align 8
  store i32 %inkeylen, i32* %inkeylen.addr, align 4
  store i8* %inval, i8** %inval.addr, align 8
  store i32 %invallen, i32* %invallen.addr, align 4
  store %struct.ypcallback_data* %indata, %struct.ypcallback_data** %indata.addr, align 8
  %0 = load i32, i32* %instatus.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end.95

if.then:                                          ; preds = %entry
  %1 = load %struct.ypcallback_data*, %struct.ypcallback_data** %indata.addr, align 8
  %state = getelementptr inbounds %struct.ypcallback_data, %struct.ypcallback_data* %1, i32 0, i32 2
  %2 = load %struct._ts*, %struct._ts** %state, align 8
  call void @PyEval_RestoreThread(%struct._ts* %2)
  %3 = load %struct.ypcallback_data*, %struct.ypcallback_data** %indata.addr, align 8
  %fix = getelementptr inbounds %struct.ypcallback_data, %struct.ypcallback_data* %3, i32 0, i32 1
  %4 = load i32, i32* %fix, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.1, label %if.end.18

if.then.1:                                        ; preds = %if.then
  %5 = load i32, i32* %inkeylen.addr, align 4
  %cmp2 = icmp sgt i32 %5, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.1
  %6 = load i32, i32* %inkeylen.addr, align 4
  %sub = sub i32 %6, 1
  %idxprom = sext i32 %sub to i64
  %7 = load i8*, i8** %inkey.addr, align 8
  %arrayidx = getelementptr i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  %9 = load i32, i32* %inkeylen.addr, align 4
  %dec = add i32 %9, -1
  store i32 %dec, i32* %inkeylen.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true, %if.then.1
  %10 = load i32, i32* %invallen.addr, align 4
  %cmp6 = icmp sgt i32 %10, 0
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.17

land.lhs.true.8:                                  ; preds = %if.end
  %11 = load i32, i32* %invallen.addr, align 4
  %sub9 = sub i32 %11, 1
  %idxprom10 = sext i32 %sub9 to i64
  %12 = load i8*, i8** %inval.addr, align 8
  %arrayidx11 = getelementptr i8, i8* %12, i64 %idxprom10
  %13 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %13 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %land.lhs.true.8
  %14 = load i32, i32* %invallen.addr, align 4
  %dec16 = add i32 %14, -1
  store i32 %dec16, i32* %invallen.addr, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %land.lhs.true.8, %if.end
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then
  %15 = load i8*, i8** %inkey.addr, align 8
  %16 = load i32, i32* %inkeylen.addr, align 4
  %conv19 = sext i32 %16 to i64
  %call = call %struct._object* @PyUnicode_DecodeFSDefaultAndSize(i8* %15, i64 %conv19)
  store %struct._object* %call, %struct._object** %key, align 8
  %17 = load i8*, i8** %inval.addr, align 8
  %18 = load i32, i32* %invallen.addr, align 4
  %conv20 = sext i32 %18 to i64
  %call21 = call %struct._object* @PyUnicode_DecodeFSDefaultAndSize(i8* %17, i64 %conv20)
  store %struct._object* %call21, %struct._object** %val, align 8
  %19 = load %struct._object*, %struct._object** %key, align 8
  %cmp22 = icmp eq %struct._object* %19, null
  br i1 %cmp22, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.18
  %20 = load %struct._object*, %struct._object** %val, align 8
  %cmp24 = icmp eq %struct._object* %20, null
  br i1 %cmp24, label %if.then.26, label %if.end.59

if.then.26:                                       ; preds = %lor.lhs.false, %if.end.18
  call void @PyErr_Clear()
  br label %do.body

do.body:                                          ; preds = %if.then.26
  %21 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %21, %struct._object** %_py_xdecref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp27 = icmp ne %struct._object* %22, null
  br i1 %cmp27, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %do.body
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.29
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt, align 8
  %dec31 = add i64 %25, -1
  store i64 %dec31, i64* %ob_refcnt, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %do.body.30
  br label %if.end.35

if.else:                                          ; preds = %do.body.30
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %28(%struct._object* %29)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.then.34
  br label %do.end

do.end:                                           ; preds = %if.end.35
  br label %if.end.36

if.end.36:                                        ; preds = %do.end, %do.body
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %do.body.38

do.body.38:                                       ; preds = %do.end.37
  %30 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %30, %struct._object** %_py_xdecref_tmp39, align 8
  %31 = load %struct._object*, %struct._object** %_py_xdecref_tmp39, align 8
  %cmp40 = icmp ne %struct._object* %31, null
  br i1 %cmp40, label %if.then.42, label %if.end.55

if.then.42:                                       ; preds = %do.body.38
  br label %do.body.43

do.body.43:                                       ; preds = %if.then.42
  %32 = load %struct._object*, %struct._object** %_py_xdecref_tmp39, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp44, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt45, align 8
  %dec46 = add i64 %34, -1
  store i64 %dec46, i64* %ob_refcnt45, align 8
  %cmp47 = icmp ne i64 %dec46, 0
  br i1 %cmp47, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.43
  br label %if.end.53

if.else.50:                                       ; preds = %do.body.43
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  call void %37(%struct._object* %38)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %do.body.38
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  %call57 = call %struct._ts* @PyEval_SaveThread()
  %39 = load %struct.ypcallback_data*, %struct.ypcallback_data** %indata.addr, align 8
  %state58 = getelementptr inbounds %struct.ypcallback_data, %struct.ypcallback_data* %39, i32 0, i32 2
  store %struct._ts* %call57, %struct._ts** %state58, align 8
  store i32 1, i32* %retval
  br label %return

if.end.59:                                        ; preds = %lor.lhs.false
  %40 = load %struct.ypcallback_data*, %struct.ypcallback_data** %indata.addr, align 8
  %dict = getelementptr inbounds %struct.ypcallback_data, %struct.ypcallback_data* %40, i32 0, i32 0
  %41 = load %struct._object*, %struct._object** %dict, align 8
  %42 = load %struct._object*, %struct._object** %key, align 8
  %43 = load %struct._object*, %struct._object** %val, align 8
  %call60 = call i32 @PyDict_SetItem(%struct._object* %41, %struct._object* %42, %struct._object* %43)
  store i32 %call60, i32* %err, align 4
  br label %do.body.61

do.body.61:                                       ; preds = %if.end.59
  %44 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp62, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt63, align 8
  %dec64 = add i64 %46, -1
  store i64 %dec64, i64* %ob_refcnt63, align 8
  %cmp65 = icmp ne i64 %dec64, 0
  br i1 %cmp65, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %do.body.61
  br label %if.end.71

if.else.68:                                       ; preds = %do.body.61
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8
  %tp_dealloc70 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc70, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  call void %49(%struct._object* %50)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.68, %if.then.67
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  br label %do.body.73

do.body.73:                                       ; preds = %do.end.72
  %51 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %51, %struct._object** %_py_decref_tmp74, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt75, align 8
  %dec76 = add i64 %53, -1
  store i64 %dec76, i64* %ob_refcnt75, align 8
  %cmp77 = icmp ne i64 %dec76, 0
  br i1 %cmp77, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %do.body.73
  br label %if.end.83

if.else.80:                                       ; preds = %do.body.73
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  call void %56(%struct._object* %57)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.79
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  %58 = load i32, i32* %err, align 4
  %cmp85 = icmp ne i32 %58, 0
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %do.end.84
  call void @PyErr_Clear()
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %do.end.84
  %call89 = call %struct._ts* @PyEval_SaveThread()
  %59 = load %struct.ypcallback_data*, %struct.ypcallback_data** %indata.addr, align 8
  %state90 = getelementptr inbounds %struct.ypcallback_data, %struct.ypcallback_data* %59, i32 0, i32 2
  store %struct._ts* %call89, %struct._ts** %state90, align 8
  %60 = load i32, i32* %err, align 4
  %cmp91 = icmp ne i32 %60, 0
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.88
  store i32 1, i32* %retval
  br label %return

if.end.94:                                        ; preds = %if.end.88
  store i32 0, i32* %retval
  br label %return

if.end.95:                                        ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.95, %if.end.94, %if.then.93, %do.end.56
  %61 = load i32, i32* %retval
  ret i32 %61
}

; Function Attrs: nounwind
declare i32 @yp_all(i8*, i8*, %struct.ypall_callback*) #2

declare void @PyErr_Clear() #1

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct.nismaplist* @nis_maplist(i8* %dom) #0 {
entry:
  %retval = alloca %struct.nismaplist*, align 8
  %dom.addr = alloca i8*, align 8
  %list = alloca %struct.nisresp_maplist*, align 8
  %cl = alloca %struct.CLIENT*, align 8
  %server = alloca i8*, align 8
  %mapi = alloca i32, align 4
  store i8* %dom, i8** %dom.addr, align 8
  store i8* null, i8** %server, align 8
  store i32 0, i32* %mapi, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %server, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* %mapi, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr [9 x %struct.nis_map], [9 x %struct.nis_map]* @aliases, i32 0, i64 %idxprom
  %map = getelementptr inbounds %struct.nis_map, %struct.nis_map* %arrayidx, i32 0, i32 1
  %2 = load i8*, i8** %map, align 8
  %cmp = icmp ne i8* %2, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** %dom.addr, align 8
  %5 = load i32, i32* %mapi, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr [9 x %struct.nis_map], [9 x %struct.nis_map]* @aliases, i32 0, i64 %idxprom1
  %map3 = getelementptr inbounds %struct.nis_map, %struct.nis_map* %arrayidx2, i32 0, i32 1
  %6 = load i8*, i8** %map3, align 8
  %call = call i32 @yp_master(i8* %4, i8* %6, i8** %server) #4
  %7 = load i32, i32* %mapi, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %mapi, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load i8*, i8** %server, align 8
  %tobool4 = icmp ne i8* %8, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %9 = load %struct._object*, %struct._object** @NisError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i32 0, i32 0))
  store %struct.nismaplist* null, %struct.nismaplist** %retval
  br label %return

if.end:                                           ; preds = %while.end
  %10 = load i8*, i8** %server, align 8
  %call5 = call %struct.CLIENT* @clnt_create(i8* %10, i64 100004, i64 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0)) #4
  store %struct.CLIENT* %call5, %struct.CLIENT** %cl, align 8
  %11 = load %struct.CLIENT*, %struct.CLIENT** %cl, align 8
  %cmp6 = icmp eq %struct.CLIENT* %11, null
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %12 = load %struct._object*, %struct._object** @NisError, align 8
  %13 = load i8*, i8** %server, align 8
  %call8 = call i8* @clnt_spcreateerror(i8* %13) #4
  call void @PyErr_SetString(%struct._object* %12, i8* %call8)
  br label %finally

if.end.9:                                         ; preds = %if.end
  %14 = load %struct.CLIENT*, %struct.CLIENT** %cl, align 8
  %call10 = call %struct.nisresp_maplist* @nisproc_maplist_2(i8** %dom.addr, %struct.CLIENT* %14)
  store %struct.nisresp_maplist* %call10, %struct.nisresp_maplist** %list, align 8
  %15 = load %struct.CLIENT*, %struct.CLIENT** %cl, align 8
  %cl_ops = getelementptr inbounds %struct.CLIENT, %struct.CLIENT* %15, i32 0, i32 1
  %16 = load %struct.clnt_ops*, %struct.clnt_ops** %cl_ops, align 8
  %cl_destroy = getelementptr inbounds %struct.clnt_ops, %struct.clnt_ops* %16, i32 0, i32 4
  %17 = load void (%struct.CLIENT*)*, void (%struct.CLIENT*)** %cl_destroy, align 8
  %18 = load %struct.CLIENT*, %struct.CLIENT** %cl, align 8
  call void %17(%struct.CLIENT* %18)
  %19 = load %struct.nisresp_maplist*, %struct.nisresp_maplist** %list, align 8
  %cmp11 = icmp eq %struct.nisresp_maplist* %19, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  br label %finally

if.end.13:                                        ; preds = %if.end.9
  %20 = load %struct.nisresp_maplist*, %struct.nisresp_maplist** %list, align 8
  %stat = getelementptr inbounds %struct.nisresp_maplist, %struct.nisresp_maplist* %20, i32 0, i32 0
  %21 = load i32, i32* %stat, align 4
  %cmp14 = icmp ne i32 %21, 1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  br label %finally

if.end.16:                                        ; preds = %if.end.13
  %22 = load i8*, i8** %server, align 8
  call void @free(i8* %22) #4
  %23 = load %struct.nisresp_maplist*, %struct.nisresp_maplist** %list, align 8
  %maps = getelementptr inbounds %struct.nisresp_maplist, %struct.nisresp_maplist* %23, i32 0, i32 1
  %24 = load %struct.nismaplist*, %struct.nismaplist** %maps, align 8
  store %struct.nismaplist* %24, %struct.nismaplist** %retval
  br label %return

finally:                                          ; preds = %if.then.15, %if.then.12, %if.then.7
  %25 = load i8*, i8** %server, align 8
  call void @free(i8* %25) #4
  store %struct.nismaplist* null, %struct.nismaplist** %retval
  br label %return

return:                                           ; preds = %finally, %if.end.16, %if.then
  %26 = load %struct.nismaplist*, %struct.nismaplist** %retval
  ret %struct.nismaplist* %26
}

declare %struct._object* @PyList_New(i64) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind
declare i32 @yp_master(i8*, i8*, i8**) #2

; Function Attrs: nounwind
declare %struct.CLIENT* @clnt_create(i8*, i64, i64, i8*) #2

; Function Attrs: nounwind
declare i8* @clnt_spcreateerror(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.nisresp_maplist* @nisproc_maplist_2(i8** %argp, %struct.CLIENT* %clnt) #0 {
entry:
  %retval = alloca %struct.nisresp_maplist*, align 8
  %argp.addr = alloca i8**, align 8
  %clnt.addr = alloca %struct.CLIENT*, align 8
  store i8** %argp, i8*** %argp.addr, align 8
  store %struct.CLIENT* %clnt, %struct.CLIENT** %clnt.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.nisresp_maplist* @nisproc_maplist_2.res to i8*), i8 0, i64 16, i32 8, i1 false)
  %0 = load %struct.CLIENT*, %struct.CLIENT** %clnt.addr, align 8
  %cl_ops = getelementptr inbounds %struct.CLIENT, %struct.CLIENT* %0, i32 0, i32 1
  %1 = load %struct.clnt_ops*, %struct.clnt_ops** %cl_ops, align 8
  %cl_call = getelementptr inbounds %struct.clnt_ops, %struct.clnt_ops* %1, i32 0, i32 0
  %2 = load i32 (%struct.CLIENT*, i64, i32 (%struct.XDR*, i8*, ...)*, i8*, i32 (%struct.XDR*, i8*, ...)*, i8*, %struct.timeval*)*, i32 (%struct.CLIENT*, i64, i32 (%struct.XDR*, i8*, ...)*, i8*, i32 (%struct.XDR*, i8*, ...)*, i8*, %struct.timeval*)** %cl_call, align 8
  %3 = load %struct.CLIENT*, %struct.CLIENT** %clnt.addr, align 8
  %4 = load i8**, i8*** %argp.addr, align 8
  %5 = bitcast i8** %4 to i8*
  %call = call i32 %2(%struct.CLIENT* %3, i64 11, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, i8**)* @nis_xdr_domainname to i32 (%struct.XDR*, i8*, ...)*), i8* %5, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.nisresp_maplist*)* @nis_xdr_ypresp_maplist to i32 (%struct.XDR*, i8*, ...)*), i8* bitcast (%struct.nisresp_maplist* @nisproc_maplist_2.res to i8*), %struct.timeval* byval align 8 @TIMEOUT)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.nisresp_maplist* null, %struct.nisresp_maplist** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct.nisresp_maplist* @nisproc_maplist_2.res, %struct.nisresp_maplist** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct.nisresp_maplist*, %struct.nisresp_maplist** %retval
  ret %struct.nisresp_maplist* %6
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal i32 @nis_xdr_domainname(%struct.XDR* %xdrs, i8** %objp) #0 {
entry:
  %retval = alloca i32, align 4
  %xdrs.addr = alloca %struct.XDR*, align 8
  %objp.addr = alloca i8**, align 8
  store %struct.XDR* %xdrs, %struct.XDR** %xdrs.addr, align 8
  store i8** %objp, i8*** %objp.addr, align 8
  %0 = load %struct.XDR*, %struct.XDR** %xdrs.addr, align 8
  %1 = load i8**, i8*** %objp.addr, align 8
  %call = call i32 @xdr_string(%struct.XDR* %0, i8** %1, i32 64) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
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
define internal i32 @nis_xdr_ypresp_maplist(%struct.XDR* %xdrs, %struct.nisresp_maplist* %objp) #0 {
entry:
  %retval = alloca i32, align 4
  %xdrs.addr = alloca %struct.XDR*, align 8
  %objp.addr = alloca %struct.nisresp_maplist*, align 8
  store %struct.XDR* %xdrs, %struct.XDR** %xdrs.addr, align 8
  store %struct.nisresp_maplist* %objp, %struct.nisresp_maplist** %objp.addr, align 8
  %0 = load %struct.XDR*, %struct.XDR** %xdrs.addr, align 8
  %1 = load %struct.nisresp_maplist*, %struct.nisresp_maplist** %objp.addr, align 8
  %stat = getelementptr inbounds %struct.nisresp_maplist, %struct.nisresp_maplist* %1, i32 0, i32 0
  %call = call i32 @nis_xdr_ypstat(%struct.XDR* %0, i32* %stat)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.XDR*, %struct.XDR** %xdrs.addr, align 8
  %3 = load %struct.nisresp_maplist*, %struct.nisresp_maplist** %objp.addr, align 8
  %maps = getelementptr inbounds %struct.nisresp_maplist, %struct.nisresp_maplist* %3, i32 0, i32 1
  %4 = bitcast %struct.nismaplist** %maps to i8**
  %call1 = call i32 @xdr_pointer(%struct.XDR* %2, i8** %4, i32 16, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.nismaplist*)* @nis_xdr_ypmaplist to i32 (%struct.XDR*, i8*, ...)*)) #4
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind
declare i32 @xdr_string(%struct.XDR*, i8**, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @nis_xdr_ypstat(%struct.XDR* %xdrs, i32* %objp) #0 {
entry:
  %retval = alloca i32, align 4
  %xdrs.addr = alloca %struct.XDR*, align 8
  %objp.addr = alloca i32*, align 8
  store %struct.XDR* %xdrs, %struct.XDR** %xdrs.addr, align 8
  store i32* %objp, i32** %objp.addr, align 8
  %0 = load %struct.XDR*, %struct.XDR** %xdrs.addr, align 8
  %1 = load i32*, i32** %objp.addr, align 8
  %call = call i32 @xdr_enum(%struct.XDR* %0, i32* %1) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind
declare i32 @xdr_pointer(%struct.XDR*, i8**, i32, i32 (%struct.XDR*, i8*, ...)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @nis_xdr_ypmaplist(%struct.XDR* %xdrs, %struct.nismaplist* %objp) #0 {
entry:
  %retval = alloca i32, align 4
  %xdrs.addr = alloca %struct.XDR*, align 8
  %objp.addr = alloca %struct.nismaplist*, align 8
  store %struct.XDR* %xdrs, %struct.XDR** %xdrs.addr, align 8
  store %struct.nismaplist* %objp, %struct.nismaplist** %objp.addr, align 8
  %0 = load %struct.XDR*, %struct.XDR** %xdrs.addr, align 8
  %1 = load %struct.nismaplist*, %struct.nismaplist** %objp.addr, align 8
  %map = getelementptr inbounds %struct.nismaplist, %struct.nismaplist* %1, i32 0, i32 0
  %call = call i32 @nis_xdr_mapname(%struct.XDR* %0, i8** %map)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.XDR*, %struct.XDR** %xdrs.addr, align 8
  %3 = load %struct.nismaplist*, %struct.nismaplist** %objp.addr, align 8
  %next = getelementptr inbounds %struct.nismaplist, %struct.nismaplist* %3, i32 0, i32 1
  %4 = bitcast %struct.nismaplist** %next to i8**
  %call1 = call i32 @xdr_pointer(%struct.XDR* %2, i8** %4, i32 16, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.nismaplist*)* @nis_xdr_ypmaplist to i32 (%struct.XDR*, i8*, ...)*)) #4
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind
declare i32 @xdr_enum(%struct.XDR*, i32*) #2

; Function Attrs: nounwind uwtable
define internal i32 @nis_xdr_mapname(%struct.XDR* %xdrs, i8** %objp) #0 {
entry:
  %retval = alloca i32, align 4
  %xdrs.addr = alloca %struct.XDR*, align 8
  %objp.addr = alloca i8**, align 8
  store %struct.XDR* %xdrs, %struct.XDR** %xdrs.addr, align 8
  store i8** %objp, i8*** %objp.addr, align 8
  %0 = load %struct.XDR*, %struct.XDR** %xdrs.addr, align 8
  %1 = load i8**, i8*** %objp.addr, align 8
  %call = call i32 @xdr_string(%struct.XDR* %0, i8** %1, i32 64) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
