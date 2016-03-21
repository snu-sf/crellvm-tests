; ModuleID = 'irs-onlybc/fileutils.bc'
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
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@_Py_open_cloexec_works = global i32 -1, align 4
@_Py_NoneStruct = external global %struct._object, align 8
@force_ascii = internal global i32 -1, align 4
@PyExc_OSError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"646\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ansi-x3.4-1968\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"ansi-x3-4-1968\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ansi-x3.4-1986\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"cp367\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"csascii\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"ibm367\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"iso646-us\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"iso-646.irv-1991\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"iso-ir-6\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"us\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"us-ascii\00", align 1
@check_force_ascii.ascii_aliases = private unnamed_addr constant [14 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* null], align 16
@.str.13 = private unnamed_addr constant [2 x i8] c"C\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_device_encoding(i32 %fd) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %fd.addr = alloca i32, align 4
  %codeset = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !1077
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !703, metadata !1081), !dbg !1082
  %0 = load i32, i32* %fd.addr, align 4, !dbg !1083, !tbaa !1077
  %call = call i32 @isatty(i32 %0) #3, !dbg !1085
  %tobool = icmp ne i32 %call, 0, !dbg !1085
  br i1 %tobool, label %if.end, label %if.then, !dbg !1086

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1087, !tbaa !1089
  %inc = add i64 %1, 1, !dbg !1087
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1087, !tbaa !1089
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1093
  br label %return, !dbg !1093

if.end:                                           ; preds = %entry
  %2 = bitcast i8** %codeset to i8*, !dbg !1094
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1094
  call void @llvm.dbg.declare(metadata i8** %codeset, metadata !704, metadata !1081), !dbg !1095
  %call1 = call i8* @nl_langinfo(i32 14) #3, !dbg !1096
  store i8* %call1, i8** %codeset, align 8, !dbg !1095, !tbaa !1097
  %3 = load i8*, i8** %codeset, align 8, !dbg !1098, !tbaa !1097
  %cmp = icmp ne i8* %3, null, !dbg !1100
  br i1 %cmp, label %land.lhs.true, label %if.end.6, !dbg !1101

land.lhs.true:                                    ; preds = %if.end
  %4 = load i8*, i8** %codeset, align 8, !dbg !1102, !tbaa !1097
  %arrayidx = getelementptr i8, i8* %4, i64 0, !dbg !1102
  %5 = load i8, i8* %arrayidx, align 1, !dbg !1102, !tbaa !1104
  %conv = sext i8 %5 to i32, !dbg !1102
  %cmp2 = icmp ne i32 %conv, 0, !dbg !1105
  br i1 %cmp2, label %if.then.4, label %if.end.6, !dbg !1106

if.then.4:                                        ; preds = %land.lhs.true
  %6 = load i8*, i8** %codeset, align 8, !dbg !1107, !tbaa !1097
  %call5 = call %struct._object* @PyUnicode_FromString(i8* %6), !dbg !1108
  store %struct._object* %call5, %struct._object** %retval, !dbg !1109
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1109

if.end.6:                                         ; preds = %land.lhs.true, %if.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !1110
  br label %cleanup, !dbg !1110

cleanup:                                          ; preds = %if.end.6, %if.then.4
  %7 = bitcast i8** %codeset to i8*, !dbg !1111
  call void @llvm.lifetime.end(i64 8, i8* %7) #3, !dbg !1111
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1113, !tbaa !1089
  %inc7 = add i64 %8, 1, !dbg !1113
  store i64 %inc7, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1113, !tbaa !1089
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1114
  br label %return, !dbg !1114

return:                                           ; preds = %cleanup.cont, %cleanup, %if.then
  %9 = load %struct._object*, %struct._object** %retval, !dbg !1115
  ret %struct._object* %9, !dbg !1115

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @isatty(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) #2

declare %struct._object* @PyUnicode_FromString(i8*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define i32* @_Py_char2wchar(i8* %arg, i64* %size) #0 {
entry:
  %retval = alloca i32*, align 8
  %arg.addr = alloca i8*, align 8
  %size.addr = alloca i64*, align 8
  %res = alloca i32*, align 8
  %argsize = alloca i64, align 8
  %count = alloca i64, align 8
  %in = alloca i8*, align 8
  %out = alloca i32*, align 8
  %mbs = alloca %struct.__mbstate_t, align 4
  %cleanup.dest.slot = alloca i32
  %tmp = alloca i32*, align 8
  %converted = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !711, metadata !1081), !dbg !1116
  store i64* %size, i64** %size.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i64** %size.addr, metadata !712, metadata !1081), !dbg !1117
  %0 = bitcast i32** %res to i8*, !dbg !1118
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1118
  call void @llvm.dbg.declare(metadata i32** %res, metadata !713, metadata !1081), !dbg !1119
  %1 = bitcast i64* %argsize to i8*, !dbg !1120
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1120
  call void @llvm.dbg.declare(metadata i64* %argsize, metadata !714, metadata !1081), !dbg !1121
  %2 = bitcast i64* %count to i8*, !dbg !1122
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1122
  call void @llvm.dbg.declare(metadata i64* %count, metadata !715, metadata !1081), !dbg !1123
  %3 = bitcast i8** %in to i8*, !dbg !1124
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1124
  call void @llvm.dbg.declare(metadata i8** %in, metadata !716, metadata !1081), !dbg !1125
  %4 = bitcast i32** %out to i8*, !dbg !1126
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !1126
  call void @llvm.dbg.declare(metadata i32** %out, metadata !717, metadata !1081), !dbg !1127
  %5 = bitcast %struct.__mbstate_t* %mbs to i8*, !dbg !1128
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !1128
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %mbs, metadata !718, metadata !1081), !dbg !1129
  %6 = load i32, i32* @force_ascii, align 4, !dbg !1130, !tbaa !1077
  %cmp = icmp eq i32 %6, -1, !dbg !1132
  br i1 %cmp, label %if.then, label %if.end, !dbg !1133

if.then:                                          ; preds = %entry
  %call = call i32 @check_force_ascii(), !dbg !1134
  store i32 %call, i32* @force_ascii, align 4, !dbg !1135, !tbaa !1077
  br label %if.end, !dbg !1136

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* @force_ascii, align 4, !dbg !1137, !tbaa !1077
  %tobool = icmp ne i32 %7, 0, !dbg !1137
  br i1 %tobool, label %if.then.1, label %if.end.6, !dbg !1139

if.then.1:                                        ; preds = %if.end
  %8 = load i8*, i8** %arg.addr, align 8, !dbg !1140, !tbaa !1097
  %9 = load i64*, i64** %size.addr, align 8, !dbg !1142, !tbaa !1097
  %call2 = call i32* @decode_ascii_surrogateescape(i8* %8, i64* %9), !dbg !1143
  store i32* %call2, i32** %res, align 8, !dbg !1144, !tbaa !1097
  %10 = load i32*, i32** %res, align 8, !dbg !1145, !tbaa !1097
  %cmp3 = icmp eq i32* %10, null, !dbg !1147
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !1148

if.then.4:                                        ; preds = %if.then.1
  br label %oom, !dbg !1149

if.end.5:                                         ; preds = %if.then.1
  %11 = load i32*, i32** %res, align 8, !dbg !1150, !tbaa !1097
  store i32* %11, i32** %retval, !dbg !1151
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.84, !dbg !1151

if.end.6:                                         ; preds = %if.end
  %12 = load i8*, i8** %arg.addr, align 8, !dbg !1152, !tbaa !1097
  %call7 = call i64 @mbstowcs(i32* null, i8* %12, i64 0) #3, !dbg !1153
  store i64 %call7, i64* %argsize, align 8, !dbg !1154, !tbaa !1155
  %13 = load i64, i64* %argsize, align 8, !dbg !1156, !tbaa !1155
  %cmp8 = icmp ne i64 %13, -1, !dbg !1157
  br i1 %cmp8, label %if.then.9, label %if.end.30, !dbg !1158

if.then.9:                                        ; preds = %if.end.6
  %14 = load i64, i64* %argsize, align 8, !dbg !1159, !tbaa !1155
  %add = add i64 %14, 1, !dbg !1160
  %mul = mul i64 %add, 4, !dbg !1161
  %call10 = call i8* @PyMem_RawMalloc(i64 %mul), !dbg !1162
  %15 = bitcast i8* %call10 to i32*, !dbg !1163
  store i32* %15, i32** %res, align 8, !dbg !1164, !tbaa !1097
  %16 = load i32*, i32** %res, align 8, !dbg !1165, !tbaa !1097
  %tobool11 = icmp ne i32* %16, null, !dbg !1165
  br i1 %tobool11, label %if.end.13, label %if.then.12, !dbg !1167

if.then.12:                                       ; preds = %if.then.9
  br label %oom, !dbg !1168

if.end.13:                                        ; preds = %if.then.9
  %17 = load i32*, i32** %res, align 8, !dbg !1169, !tbaa !1097
  %18 = load i8*, i8** %arg.addr, align 8, !dbg !1170, !tbaa !1097
  %19 = load i64, i64* %argsize, align 8, !dbg !1171, !tbaa !1155
  %add14 = add i64 %19, 1, !dbg !1172
  %call15 = call i64 @mbstowcs(i32* %17, i8* %18, i64 %add14) #3, !dbg !1173
  store i64 %call15, i64* %count, align 8, !dbg !1174, !tbaa !1155
  %20 = load i64, i64* %count, align 8, !dbg !1175, !tbaa !1155
  %cmp16 = icmp ne i64 %20, -1, !dbg !1176
  br i1 %cmp16, label %if.then.17, label %if.end.29, !dbg !1177

if.then.17:                                       ; preds = %if.end.13
  %21 = bitcast i32** %tmp to i8*, !dbg !1178
  call void @llvm.lifetime.start(i64 8, i8* %21) #3, !dbg !1178
  call void @llvm.dbg.declare(metadata i32** %tmp, metadata !733, metadata !1081), !dbg !1179
  %22 = load i32*, i32** %res, align 8, !dbg !1180, !tbaa !1097
  store i32* %22, i32** %tmp, align 8, !dbg !1182, !tbaa !1097
  br label %for.cond, !dbg !1183

for.cond:                                         ; preds = %for.inc, %if.then.17
  %23 = load i32*, i32** %tmp, align 8, !dbg !1184, !tbaa !1097
  %24 = load i32, i32* %23, align 4, !dbg !1188, !tbaa !1077
  %cmp18 = icmp ne i32 %24, 0, !dbg !1189
  br i1 %cmp18, label %land.rhs, label %land.end.22, !dbg !1190

land.rhs:                                         ; preds = %for.cond
  %25 = load i32*, i32** %tmp, align 8, !dbg !1191, !tbaa !1097
  %26 = load i32, i32* %25, align 4, !dbg !1192, !tbaa !1077
  %cmp19 = icmp sle i32 55296, %26, !dbg !1193
  br i1 %cmp19, label %land.rhs.20, label %land.end, !dbg !1194

land.rhs.20:                                      ; preds = %land.rhs
  %27 = load i32*, i32** %tmp, align 8, !dbg !1195, !tbaa !1097
  %28 = load i32, i32* %27, align 4, !dbg !1196, !tbaa !1077
  %cmp21 = icmp sle i32 %28, 57343, !dbg !1197
  br label %land.end

land.end:                                         ; preds = %land.rhs.20, %land.rhs
  %29 = phi i1 [ false, %land.rhs ], [ %cmp21, %land.rhs.20 ]
  %lnot = xor i1 %29, true, !dbg !1198
  br label %land.end.22

land.end.22:                                      ; preds = %land.end, %for.cond
  %30 = phi i1 [ false, %for.cond ], [ %lnot, %land.end ]
  br i1 %30, label %for.body, label %for.end, !dbg !1200

for.body:                                         ; preds = %land.end.22
  br label %for.inc, !dbg !1202

for.inc:                                          ; preds = %for.body
  %31 = load i32*, i32** %tmp, align 8, !dbg !1204, !tbaa !1097
  %incdec.ptr = getelementptr i32, i32* %31, i32 1, !dbg !1204
  store i32* %incdec.ptr, i32** %tmp, align 8, !dbg !1204, !tbaa !1097
  br label %for.cond, !dbg !1205

for.end:                                          ; preds = %land.end.22
  %32 = load i32*, i32** %tmp, align 8, !dbg !1206, !tbaa !1097
  %33 = load i32, i32* %32, align 4, !dbg !1208, !tbaa !1077
  %cmp23 = icmp eq i32 %33, 0, !dbg !1209
  br i1 %cmp23, label %if.then.24, label %if.end.28, !dbg !1210

if.then.24:                                       ; preds = %for.end
  %34 = load i64*, i64** %size.addr, align 8, !dbg !1211, !tbaa !1097
  %cmp25 = icmp ne i64* %34, null, !dbg !1214
  br i1 %cmp25, label %if.then.26, label %if.end.27, !dbg !1215

if.then.26:                                       ; preds = %if.then.24
  %35 = load i64, i64* %count, align 8, !dbg !1216, !tbaa !1155
  %36 = load i64*, i64** %size.addr, align 8, !dbg !1217, !tbaa !1097
  store i64 %35, i64* %36, align 8, !dbg !1218, !tbaa !1155
  br label %if.end.27, !dbg !1219

if.end.27:                                        ; preds = %if.then.26, %if.then.24
  %37 = load i32*, i32** %res, align 8, !dbg !1220, !tbaa !1097
  store i32* %37, i32** %retval, !dbg !1221
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1221

if.end.28:                                        ; preds = %for.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !1222
  br label %cleanup, !dbg !1222

cleanup:                                          ; preds = %if.end.28, %if.end.27
  %38 = bitcast i32** %tmp to i8*, !dbg !1223
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !1223
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.84 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.29, !dbg !1225

if.end.29:                                        ; preds = %cleanup.cont, %if.end.13
  %39 = load i32*, i32** %res, align 8, !dbg !1226, !tbaa !1097
  %40 = bitcast i32* %39 to i8*, !dbg !1226
  call void @PyMem_RawFree(i8* %40), !dbg !1227
  br label %if.end.30, !dbg !1228

if.end.30:                                        ; preds = %if.end.29, %if.end.6
  %41 = load i8*, i8** %arg.addr, align 8, !dbg !1229, !tbaa !1097
  %call31 = call i64 @strlen(i8* %41) #8, !dbg !1230
  %add32 = add i64 %call31, 1, !dbg !1231
  store i64 %add32, i64* %argsize, align 8, !dbg !1232, !tbaa !1155
  %42 = load i64, i64* %argsize, align 8, !dbg !1233, !tbaa !1155
  %mul33 = mul i64 %42, 4, !dbg !1234
  %call34 = call i8* @PyMem_RawMalloc(i64 %mul33), !dbg !1235
  %43 = bitcast i8* %call34 to i32*, !dbg !1236
  store i32* %43, i32** %res, align 8, !dbg !1237, !tbaa !1097
  %44 = load i32*, i32** %res, align 8, !dbg !1238, !tbaa !1097
  %tobool35 = icmp ne i32* %44, null, !dbg !1238
  br i1 %tobool35, label %if.end.37, label %if.then.36, !dbg !1240

if.then.36:                                       ; preds = %if.end.30
  br label %oom, !dbg !1241

if.end.37:                                        ; preds = %if.end.30
  %45 = load i8*, i8** %arg.addr, align 8, !dbg !1242, !tbaa !1097
  store i8* %45, i8** %in, align 8, !dbg !1243, !tbaa !1097
  %46 = load i32*, i32** %res, align 8, !dbg !1244, !tbaa !1097
  store i32* %46, i32** %out, align 8, !dbg !1245, !tbaa !1097
  %47 = bitcast %struct.__mbstate_t* %mbs to i8*, !dbg !1246
  call void @llvm.memset.p0i8.i64(i8* %47, i8 0, i64 8, i32 4, i1 false), !dbg !1246
  br label %while.cond, !dbg !1247

while.cond:                                       ; preds = %cleanup.cont.74, %cleanup.72, %if.end.37
  %48 = load i64, i64* %argsize, align 8, !dbg !1248, !tbaa !1155
  %tobool38 = icmp ne i64 %48, 0, !dbg !1247
  br i1 %tobool38, label %while.body, label %while.end.75, !dbg !1247

while.body:                                       ; preds = %while.cond
  %49 = bitcast i64* %converted to i8*, !dbg !1251
  call void @llvm.lifetime.start(i64 8, i8* %49) #3, !dbg !1251
  call void @llvm.dbg.declare(metadata i64* %converted, metadata !738, metadata !1081), !dbg !1252
  %50 = load i32*, i32** %out, align 8, !dbg !1253, !tbaa !1097
  %51 = load i8*, i8** %in, align 8, !dbg !1254, !tbaa !1097
  %52 = load i64, i64* %argsize, align 8, !dbg !1255, !tbaa !1155
  %call40 = call i64 @mbrtowc(i32* %50, i8* %51, i64 %52, %struct.__mbstate_t* %mbs) #3, !dbg !1256
  store i64 %call40, i64* %converted, align 8, !dbg !1252, !tbaa !1155
  %53 = load i64, i64* %converted, align 8, !dbg !1257, !tbaa !1155
  %cmp41 = icmp eq i64 %53, 0, !dbg !1259
  br i1 %cmp41, label %if.then.42, label %if.end.43, !dbg !1260

if.then.42:                                       ; preds = %while.body
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.72, !dbg !1261

if.end.43:                                        ; preds = %while.body
  %54 = load i64, i64* %converted, align 8, !dbg !1262, !tbaa !1155
  %cmp44 = icmp eq i64 %54, -2, !dbg !1264
  br i1 %cmp44, label %if.then.45, label %if.end.49, !dbg !1265

if.then.45:                                       ; preds = %if.end.43
  %55 = load i32*, i32** %res, align 8, !dbg !1266, !tbaa !1097
  %56 = bitcast i32* %55 to i8*, !dbg !1266
  call void @PyMem_RawFree(i8* %56), !dbg !1268
  %57 = load i64*, i64** %size.addr, align 8, !dbg !1269, !tbaa !1097
  %cmp46 = icmp ne i64* %57, null, !dbg !1271
  br i1 %cmp46, label %if.then.47, label %if.end.48, !dbg !1272

if.then.47:                                       ; preds = %if.then.45
  %58 = load i64*, i64** %size.addr, align 8, !dbg !1273, !tbaa !1097
  store i64 -2, i64* %58, align 8, !dbg !1274, !tbaa !1155
  br label %if.end.48, !dbg !1275

if.end.48:                                        ; preds = %if.then.47, %if.then.45
  store i32* null, i32** %retval, !dbg !1276
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.72, !dbg !1276

if.end.49:                                        ; preds = %if.end.43
  %59 = load i64, i64* %converted, align 8, !dbg !1277, !tbaa !1155
  %cmp50 = icmp eq i64 %59, -1, !dbg !1279
  br i1 %cmp50, label %if.then.51, label %if.end.55, !dbg !1280

if.then.51:                                       ; preds = %if.end.49
  %60 = load i8*, i8** %in, align 8, !dbg !1281, !tbaa !1097
  %incdec.ptr52 = getelementptr i8, i8* %60, i32 1, !dbg !1281
  store i8* %incdec.ptr52, i8** %in, align 8, !dbg !1281, !tbaa !1097
  %61 = load i8, i8* %60, align 1, !dbg !1283, !tbaa !1104
  %conv = zext i8 %61 to i32, !dbg !1283
  %add53 = add i32 56320, %conv, !dbg !1284
  %62 = load i32*, i32** %out, align 8, !dbg !1285, !tbaa !1097
  %incdec.ptr54 = getelementptr i32, i32* %62, i32 1, !dbg !1285
  store i32* %incdec.ptr54, i32** %out, align 8, !dbg !1285, !tbaa !1097
  store i32 %add53, i32* %62, align 4, !dbg !1286, !tbaa !1077
  %63 = load i64, i64* %argsize, align 8, !dbg !1287, !tbaa !1155
  %dec = add i64 %63, -1, !dbg !1287
  store i64 %dec, i64* %argsize, align 8, !dbg !1287, !tbaa !1155
  %64 = bitcast %struct.__mbstate_t* %mbs to i8*, !dbg !1288
  call void @llvm.memset.p0i8.i64(i8* %64, i8 0, i64 8, i32 4, i1 false), !dbg !1288
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.72, !dbg !1289

if.end.55:                                        ; preds = %if.end.49
  %65 = load i32*, i32** %out, align 8, !dbg !1290, !tbaa !1097
  %66 = load i32, i32* %65, align 4, !dbg !1292, !tbaa !1077
  %cmp56 = icmp sle i32 55296, %66, !dbg !1293
  br i1 %cmp56, label %land.lhs.true, label %if.end.69, !dbg !1294

land.lhs.true:                                    ; preds = %if.end.55
  %67 = load i32*, i32** %out, align 8, !dbg !1295, !tbaa !1097
  %68 = load i32, i32* %67, align 4, !dbg !1297, !tbaa !1077
  %cmp58 = icmp sle i32 %68, 57343, !dbg !1298
  br i1 %cmp58, label %if.then.60, label %if.end.69, !dbg !1299

if.then.60:                                       ; preds = %land.lhs.true
  %69 = load i64, i64* %converted, align 8, !dbg !1300, !tbaa !1155
  %70 = load i64, i64* %argsize, align 8, !dbg !1302, !tbaa !1155
  %sub = sub i64 %70, %69, !dbg !1302
  store i64 %sub, i64* %argsize, align 8, !dbg !1302, !tbaa !1155
  br label %while.cond.61, !dbg !1303

while.cond.61:                                    ; preds = %while.body.64, %if.then.60
  %71 = load i64, i64* %converted, align 8, !dbg !1304, !tbaa !1155
  %dec62 = add i64 %71, -1, !dbg !1304
  store i64 %dec62, i64* %converted, align 8, !dbg !1304, !tbaa !1155
  %tobool63 = icmp ne i64 %71, 0, !dbg !1303
  br i1 %tobool63, label %while.body.64, label %while.end, !dbg !1303

while.body.64:                                    ; preds = %while.cond.61
  %72 = load i8*, i8** %in, align 8, !dbg !1307, !tbaa !1097
  %incdec.ptr65 = getelementptr i8, i8* %72, i32 1, !dbg !1307
  store i8* %incdec.ptr65, i8** %in, align 8, !dbg !1307, !tbaa !1097
  %73 = load i8, i8* %72, align 1, !dbg !1308, !tbaa !1104
  %conv66 = zext i8 %73 to i32, !dbg !1308
  %add67 = add i32 56320, %conv66, !dbg !1309
  %74 = load i32*, i32** %out, align 8, !dbg !1310, !tbaa !1097
  %incdec.ptr68 = getelementptr i32, i32* %74, i32 1, !dbg !1310
  store i32* %incdec.ptr68, i32** %out, align 8, !dbg !1310, !tbaa !1097
  store i32 %add67, i32* %74, align 4, !dbg !1311, !tbaa !1077
  br label %while.cond.61, !dbg !1303

while.end:                                        ; preds = %while.cond.61
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.72, !dbg !1312

if.end.69:                                        ; preds = %land.lhs.true, %if.end.55
  %75 = load i64, i64* %converted, align 8, !dbg !1313, !tbaa !1155
  %76 = load i8*, i8** %in, align 8, !dbg !1314, !tbaa !1097
  %add.ptr = getelementptr i8, i8* %76, i64 %75, !dbg !1314
  store i8* %add.ptr, i8** %in, align 8, !dbg !1314, !tbaa !1097
  %77 = load i64, i64* %converted, align 8, !dbg !1315, !tbaa !1155
  %78 = load i64, i64* %argsize, align 8, !dbg !1316, !tbaa !1155
  %sub70 = sub i64 %78, %77, !dbg !1316
  store i64 %sub70, i64* %argsize, align 8, !dbg !1316, !tbaa !1155
  %79 = load i32*, i32** %out, align 8, !dbg !1317, !tbaa !1097
  %incdec.ptr71 = getelementptr i32, i32* %79, i32 1, !dbg !1317
  store i32* %incdec.ptr71, i32** %out, align 8, !dbg !1317, !tbaa !1097
  store i32 0, i32* %cleanup.dest.slot, !dbg !1318
  br label %cleanup.72, !dbg !1318

cleanup.72:                                       ; preds = %if.end.69, %while.end, %if.then.51, %if.end.48, %if.then.42
  %80 = bitcast i64* %converted to i8*, !dbg !1319
  call void @llvm.lifetime.end(i64 8, i8* %80) #3, !dbg !1319
  %cleanup.dest.73 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.73, label %cleanup.84 [
    i32 0, label %cleanup.cont.74
    i32 7, label %while.end.75
    i32 6, label %while.cond
  ]

cleanup.cont.74:                                  ; preds = %cleanup.72
  br label %while.cond, !dbg !1247

while.end.75:                                     ; preds = %cleanup.72, %while.cond
  %81 = load i64*, i64** %size.addr, align 8, !dbg !1320, !tbaa !1097
  %cmp76 = icmp ne i64* %81, null, !dbg !1322
  br i1 %cmp76, label %if.then.78, label %if.end.79, !dbg !1323

if.then.78:                                       ; preds = %while.end.75
  %82 = load i32*, i32** %out, align 8, !dbg !1324, !tbaa !1097
  %83 = load i32*, i32** %res, align 8, !dbg !1325, !tbaa !1097
  %sub.ptr.lhs.cast = ptrtoint i32* %82 to i64, !dbg !1326
  %sub.ptr.rhs.cast = ptrtoint i32* %83 to i64, !dbg !1326
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1326
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4, !dbg !1326
  %84 = load i64*, i64** %size.addr, align 8, !dbg !1327, !tbaa !1097
  store i64 %sub.ptr.div, i64* %84, align 8, !dbg !1328, !tbaa !1155
  br label %if.end.79, !dbg !1329

if.end.79:                                        ; preds = %if.then.78, %while.end.75
  %85 = load i32*, i32** %res, align 8, !dbg !1330, !tbaa !1097
  store i32* %85, i32** %retval, !dbg !1331
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.84, !dbg !1331

oom:                                              ; preds = %if.then.36, %if.then.12, %if.then.4
  %86 = load i64*, i64** %size.addr, align 8, !dbg !1332, !tbaa !1097
  %cmp80 = icmp ne i64* %86, null, !dbg !1334
  br i1 %cmp80, label %if.then.82, label %if.end.83, !dbg !1335

if.then.82:                                       ; preds = %oom
  %87 = load i64*, i64** %size.addr, align 8, !dbg !1336, !tbaa !1097
  store i64 -1, i64* %87, align 8, !dbg !1337, !tbaa !1155
  br label %if.end.83, !dbg !1338

if.end.83:                                        ; preds = %if.then.82, %oom
  store i32* null, i32** %retval, !dbg !1339
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.84, !dbg !1339

cleanup.84:                                       ; preds = %if.end.83, %if.end.79, %cleanup.72, %cleanup, %if.end.5
  %88 = bitcast %struct.__mbstate_t* %mbs to i8*, !dbg !1340
  call void @llvm.lifetime.end(i64 8, i8* %88) #3, !dbg !1340
  %89 = bitcast i32** %out to i8*, !dbg !1340
  call void @llvm.lifetime.end(i64 8, i8* %89) #3, !dbg !1340
  %90 = bitcast i8** %in to i8*, !dbg !1340
  call void @llvm.lifetime.end(i64 8, i8* %90) #3, !dbg !1340
  %91 = bitcast i64* %count to i8*, !dbg !1340
  call void @llvm.lifetime.end(i64 8, i8* %91) #3, !dbg !1340
  %92 = bitcast i64* %argsize to i8*, !dbg !1340
  call void @llvm.lifetime.end(i64 8, i8* %92) #3, !dbg !1340
  %93 = bitcast i32** %res to i8*, !dbg !1340
  call void @llvm.lifetime.end(i64 8, i8* %93) #3, !dbg !1340
  %94 = load i32*, i32** %retval, !dbg !1340
  ret i32* %94, !dbg !1340
}

; Function Attrs: nounwind uwtable
define internal i32 @check_force_ascii() #0 {
entry:
  %retval = alloca i32, align 4
  %loc = alloca i8*, align 8
  %codeset = alloca i8*, align 8
  %alias = alloca i8**, align 8
  %encoding = alloca [100 x i8], align 16
  %is_ascii = alloca i32, align 4
  %i = alloca i32, align 4
  %ascii_aliases = alloca [14 x i8*], align 16
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__s1_len59 = alloca i64, align 8
  %__s2_len61 = alloca i64, align 8
  %tmp62 = alloca i32, align 4
  %ch = alloca i8, align 1
  %wch = alloca i32, align 4
  %res = alloca i64, align 8
  %0 = bitcast i8** %loc to i8*, !dbg !1341
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1341
  call void @llvm.dbg.declare(metadata i8** %loc, metadata !969, metadata !1081), !dbg !1342
  %1 = bitcast i8** %codeset to i8*, !dbg !1343
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1343
  call void @llvm.dbg.declare(metadata i8** %codeset, metadata !970, metadata !1081), !dbg !1344
  %2 = bitcast i8*** %alias to i8*, !dbg !1343
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1343
  call void @llvm.dbg.declare(metadata i8*** %alias, metadata !971, metadata !1081), !dbg !1345
  %3 = bitcast [100 x i8]* %encoding to i8*, !dbg !1346
  call void @llvm.lifetime.start(i64 100, i8* %3) #3, !dbg !1346
  call void @llvm.dbg.declare(metadata [100 x i8]* %encoding, metadata !973, metadata !1081), !dbg !1347
  %4 = bitcast i32* %is_ascii to i8*, !dbg !1348
  call void @llvm.lifetime.start(i64 4, i8* %4) #3, !dbg !1348
  call void @llvm.dbg.declare(metadata i32* %is_ascii, metadata !977, metadata !1081), !dbg !1349
  %5 = bitcast i32* %i to i8*, !dbg !1350
  call void @llvm.lifetime.start(i64 4, i8* %5) #3, !dbg !1350
  call void @llvm.dbg.declare(metadata i32* %i, metadata !978, metadata !1081), !dbg !1351
  %6 = bitcast [14 x i8*]* %ascii_aliases to i8*, !dbg !1352
  call void @llvm.lifetime.start(i64 112, i8* %6) #3, !dbg !1352
  call void @llvm.dbg.declare(metadata [14 x i8*]* %ascii_aliases, metadata !979, metadata !1081), !dbg !1353
  %7 = bitcast [14 x i8*]* %ascii_aliases to i8*, !dbg !1353
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([14 x i8*]* @check_force_ascii.ascii_aliases to i8*), i64 112, i32 16, i1 false), !dbg !1353
  %call = call i8* @setlocale(i32 0, i8* null) #3, !dbg !1354
  store i8* %call, i8** %loc, align 8, !dbg !1355, !tbaa !1097
  %8 = load i8*, i8** %loc, align 8, !dbg !1356, !tbaa !1097
  %cmp = icmp eq i8* %8, null, !dbg !1358
  br i1 %cmp, label %if.then, label %if.end, !dbg !1359

if.then:                                          ; preds = %entry
  br label %error, !dbg !1360

if.end:                                           ; preds = %entry
  %9 = bitcast i64* %__s1_len to i8*, !dbg !1361
  call void @llvm.lifetime.start(i64 8, i8* %9) #3, !dbg !1361
  call void @llvm.dbg.declare(metadata i64* %__s1_len, metadata !983, metadata !1081), !dbg !1362
  %10 = bitcast i64* %__s2_len to i8*, !dbg !1361
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !1361
  call void @llvm.dbg.declare(metadata i64* %__s2_len, metadata !986, metadata !1081), !dbg !1363
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.13 to i64)), i64 1), label %land.lhs.true, label %cond.false, !dbg !1364

land.lhs.true:                                    ; preds = %if.end
  store i64 1, i64* %__s2_len, align 8, !dbg !1365, !tbaa !1155
  %11 = load i64, i64* %__s2_len, align 8, !dbg !1367, !tbaa !1155
  %cmp1 = icmp ult i64 %11, 4, !dbg !1368
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !1369

cond.true:                                        ; preds = %land.lhs.true
  %12 = bitcast i8** %__s1 to i8*, !dbg !1370
  call void @llvm.lifetime.start(i64 8, i8* %12) #3, !dbg !1370
  call void @llvm.dbg.declare(metadata i8** %__s1, metadata !987, metadata !1081), !dbg !1372
  %13 = load i8*, i8** %loc, align 8, !dbg !1373, !tbaa !1097
  store i8* %13, i8** %__s1, align 8, !dbg !1372, !tbaa !1097
  %14 = bitcast i32* %__result to i8*, !dbg !1374
  call void @llvm.lifetime.start(i64 4, i8* %14) #3, !dbg !1374
  call void @llvm.dbg.declare(metadata i32* %__result, metadata !989, metadata !1081), !dbg !1375
  %15 = load i8*, i8** %__s1, align 8, !dbg !1376, !tbaa !1097
  %arrayidx = getelementptr i8, i8* %15, i64 0, !dbg !1376
  %16 = load i8, i8* %arrayidx, align 1, !dbg !1376, !tbaa !1104
  %conv = zext i8 %16 to i32, !dbg !1376
  %17 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), align 1, !dbg !1377, !tbaa !1104
  %conv4 = zext i8 %17 to i32, !dbg !1377
  %sub = sub i32 %conv, %conv4, !dbg !1378
  store i32 %sub, i32* %__result, align 4, !dbg !1375, !tbaa !1077
  %18 = load i64, i64* %__s2_len, align 8, !dbg !1379, !tbaa !1155
  %cmp5 = icmp ugt i64 %18, 0, !dbg !1381
  br i1 %cmp5, label %land.lhs.true.7, label %if.end.37, !dbg !1382

land.lhs.true.7:                                  ; preds = %cond.true
  %19 = load i32, i32* %__result, align 4, !dbg !1383, !tbaa !1077
  %cmp8 = icmp eq i32 %19, 0, !dbg !1385
  br i1 %cmp8, label %if.then.10, label %if.end.37, !dbg !1386

if.then.10:                                       ; preds = %land.lhs.true.7
  %20 = load i8*, i8** %__s1, align 8, !dbg !1387, !tbaa !1097
  %arrayidx11 = getelementptr i8, i8* %20, i64 1, !dbg !1387
  %21 = load i8, i8* %arrayidx11, align 1, !dbg !1387, !tbaa !1104
  %conv12 = zext i8 %21 to i32, !dbg !1387
  %22 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i64 1), align 1, !dbg !1390, !tbaa !1104
  %conv13 = zext i8 %22 to i32, !dbg !1390
  %sub14 = sub i32 %conv12, %conv13, !dbg !1391
  store i32 %sub14, i32* %__result, align 4, !dbg !1392, !tbaa !1077
  %23 = load i64, i64* %__s2_len, align 8, !dbg !1393, !tbaa !1155
  %cmp15 = icmp ugt i64 %23, 1, !dbg !1395
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.36, !dbg !1396

land.lhs.true.17:                                 ; preds = %if.then.10
  %24 = load i32, i32* %__result, align 4, !dbg !1397, !tbaa !1077
  %cmp18 = icmp eq i32 %24, 0, !dbg !1399
  br i1 %cmp18, label %if.then.20, label %if.end.36, !dbg !1400

if.then.20:                                       ; preds = %land.lhs.true.17
  %25 = load i8*, i8** %__s1, align 8, !dbg !1401, !tbaa !1097
  %arrayidx21 = getelementptr i8, i8* %25, i64 2, !dbg !1401
  %26 = load i8, i8* %arrayidx21, align 1, !dbg !1401, !tbaa !1104
  %conv22 = zext i8 %26 to i32, !dbg !1401
  %27 = load i8, i8* getelementptr (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i64 2), align 1, !dbg !1404, !tbaa !1104
  %conv23 = zext i8 %27 to i32, !dbg !1404
  %sub24 = sub i32 %conv22, %conv23, !dbg !1405
  store i32 %sub24, i32* %__result, align 4, !dbg !1406, !tbaa !1077
  %28 = load i64, i64* %__s2_len, align 8, !dbg !1407, !tbaa !1155
  %cmp25 = icmp ugt i64 %28, 2, !dbg !1409
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.35, !dbg !1410

land.lhs.true.27:                                 ; preds = %if.then.20
  %29 = load i32, i32* %__result, align 4, !dbg !1411, !tbaa !1077
  %cmp28 = icmp eq i32 %29, 0, !dbg !1413
  br i1 %cmp28, label %if.then.30, label %if.end.35, !dbg !1414

if.then.30:                                       ; preds = %land.lhs.true.27
  %30 = load i8*, i8** %__s1, align 8, !dbg !1415, !tbaa !1097
  %arrayidx31 = getelementptr i8, i8* %30, i64 3, !dbg !1415
  %31 = load i8, i8* %arrayidx31, align 1, !dbg !1415, !tbaa !1104
  %conv32 = zext i8 %31 to i32, !dbg !1415
  %32 = load i8, i8* getelementptr (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i64 3), align 1, !dbg !1417, !tbaa !1104
  %conv33 = zext i8 %32 to i32, !dbg !1417
  %sub34 = sub i32 %conv32, %conv33, !dbg !1418
  store i32 %sub34, i32* %__result, align 4, !dbg !1419, !tbaa !1077
  br label %if.end.35, !dbg !1420

if.end.35:                                        ; preds = %if.then.30, %land.lhs.true.27, %if.then.20
  br label %if.end.36, !dbg !1421

if.end.36:                                        ; preds = %if.end.35, %land.lhs.true.17, %if.then.10
  br label %if.end.37, !dbg !1425

if.end.37:                                        ; preds = %if.end.36, %land.lhs.true.7, %cond.true
  %33 = load i32, i32* %__result, align 4, !dbg !1429, !tbaa !1077
  store i32 %33, i32* %tmp38, !dbg !1433, !tbaa !1077
  %34 = bitcast i32* %__result to i8*, !dbg !1434
  call void @llvm.lifetime.end(i64 4, i8* %34) #3, !dbg !1434
  %35 = bitcast i8** %__s1 to i8*, !dbg !1434
  call void @llvm.lifetime.end(i64 8, i8* %35) #3, !dbg !1434
  %36 = load i32, i32* %tmp38, !dbg !1435, !tbaa !1077
  br label %cond.end, !dbg !1369

cond.false:                                       ; preds = %land.lhs.true, %if.end
  %37 = load i8*, i8** %loc, align 8, !dbg !1436, !tbaa !1097
  %call39 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #3, !dbg !1439
  br label %cond.end, !dbg !1369

cond.end:                                         ; preds = %cond.false, %if.end.37
  %cond = phi i32 [ %36, %if.end.37 ], [ %call39, %cond.false ], !dbg !1369
  store i32 %cond, i32* %tmp, !dbg !1440, !tbaa !1077
  %38 = bitcast i64* %__s2_len to i8*, !dbg !1443
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !1443
  %39 = bitcast i64* %__s1_len to i8*, !dbg !1443
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !1443
  %40 = load i32, i32* %tmp, !dbg !1444, !tbaa !1077
  %cmp40 = icmp ne i32 %40, 0, !dbg !1445
  br i1 %cmp40, label %if.then.42, label %if.end.43, !dbg !1446

if.then.42:                                       ; preds = %cond.end
  store i32 0, i32* %retval, !dbg !1447
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.89, !dbg !1447

if.end.43:                                        ; preds = %cond.end
  %call44 = call i8* @nl_langinfo(i32 14) #3, !dbg !1449
  store i8* %call44, i8** %codeset, align 8, !dbg !1450, !tbaa !1097
  %41 = load i8*, i8** %codeset, align 8, !dbg !1451, !tbaa !1097
  %tobool = icmp ne i8* %41, null, !dbg !1451
  br i1 %tobool, label %lor.lhs.false, label %if.then.49, !dbg !1453

lor.lhs.false:                                    ; preds = %if.end.43
  %42 = load i8*, i8** %codeset, align 8, !dbg !1454, !tbaa !1097
  %arrayidx45 = getelementptr i8, i8* %42, i64 0, !dbg !1454
  %43 = load i8, i8* %arrayidx45, align 1, !dbg !1454, !tbaa !1104
  %conv46 = sext i8 %43 to i32, !dbg !1454
  %cmp47 = icmp eq i32 %conv46, 0, !dbg !1456
  br i1 %cmp47, label %if.then.49, label %if.end.50, !dbg !1457

if.then.49:                                       ; preds = %lor.lhs.false, %if.end.43
  br label %error, !dbg !1458

if.end.50:                                        ; preds = %lor.lhs.false
  %44 = load i8*, i8** %codeset, align 8, !dbg !1460, !tbaa !1097
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %encoding, i32 0, i32 0, !dbg !1462
  %call51 = call i32 @_Py_normalize_encoding(i8* %44, i8* %arraydecay, i64 100), !dbg !1463
  %tobool52 = icmp ne i32 %call51, 0, !dbg !1463
  br i1 %tobool52, label %if.end.54, label %if.then.53, !dbg !1464

if.then.53:                                       ; preds = %if.end.50
  br label %error, !dbg !1465

if.end.54:                                        ; preds = %if.end.50
  store i32 0, i32* %is_ascii, align 4, !dbg !1466, !tbaa !1077
  %arraydecay55 = getelementptr inbounds [14 x i8*], [14 x i8*]* %ascii_aliases, i32 0, i32 0, !dbg !1467
  store i8** %arraydecay55, i8*** %alias, align 8, !dbg !1468, !tbaa !1097
  br label %for.cond, !dbg !1469

for.cond:                                         ; preds = %for.inc, %if.end.54
  %45 = load i8**, i8*** %alias, align 8, !dbg !1470, !tbaa !1097
  %46 = load i8*, i8** %45, align 8, !dbg !1473, !tbaa !1097
  %cmp56 = icmp ne i8* %46, null, !dbg !1474
  br i1 %cmp56, label %for.body, label %for.end, !dbg !1475

for.body:                                         ; preds = %for.cond
  %47 = bitcast i64* %__s1_len59 to i8*, !dbg !1476
  call void @llvm.lifetime.start(i64 8, i8* %47) #3, !dbg !1476
  call void @llvm.dbg.declare(metadata i64* %__s1_len59, metadata !990, metadata !1081), !dbg !1477
  %48 = bitcast i64* %__s2_len61 to i8*, !dbg !1476
  call void @llvm.lifetime.start(i64 8, i8* %48) #3, !dbg !1476
  call void @llvm.dbg.declare(metadata i64* %__s2_len61, metadata !996, metadata !1081), !dbg !1478
  %arraydecay63 = getelementptr inbounds [100 x i8], [100 x i8]* %encoding, i32 0, i32 0, !dbg !1479
  %49 = load i8**, i8*** %alias, align 8, !dbg !1480, !tbaa !1097
  %50 = load i8*, i8** %49, align 8, !dbg !1481, !tbaa !1097
  %call64 = call i32 @strcmp(i8* %arraydecay63, i8* %50) #3, !dbg !1482
  store i32 %call64, i32* %tmp62, !dbg !1476, !tbaa !1077
  %51 = bitcast i64* %__s2_len61 to i8*, !dbg !1483
  call void @llvm.lifetime.end(i64 8, i8* %51) #3, !dbg !1483
  %52 = bitcast i64* %__s1_len59 to i8*, !dbg !1483
  call void @llvm.lifetime.end(i64 8, i8* %52) #3, !dbg !1483
  %53 = load i32, i32* %tmp62, !dbg !1484, !tbaa !1077
  %cmp65 = icmp eq i32 %53, 0, !dbg !1485
  br i1 %cmp65, label %if.then.67, label %if.end.68, !dbg !1486

if.then.67:                                       ; preds = %for.body
  store i32 1, i32* %is_ascii, align 4, !dbg !1487, !tbaa !1077
  br label %for.end, !dbg !1489

if.end.68:                                        ; preds = %for.body
  br label %for.inc, !dbg !1490

for.inc:                                          ; preds = %if.end.68
  %54 = load i8**, i8*** %alias, align 8, !dbg !1491, !tbaa !1097
  %incdec.ptr = getelementptr i8*, i8** %54, i32 1, !dbg !1491
  store i8** %incdec.ptr, i8*** %alias, align 8, !dbg !1491, !tbaa !1097
  br label %for.cond, !dbg !1492

for.end:                                          ; preds = %if.then.67, %for.cond
  %55 = load i32, i32* %is_ascii, align 4, !dbg !1493, !tbaa !1077
  %tobool69 = icmp ne i32 %55, 0, !dbg !1493
  br i1 %tobool69, label %if.end.71, label %if.then.70, !dbg !1495

if.then.70:                                       ; preds = %for.end
  store i32 0, i32* %retval, !dbg !1496
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.89, !dbg !1496

if.end.71:                                        ; preds = %for.end
  store i32 128, i32* %i, align 4, !dbg !1498, !tbaa !1077
  br label %for.cond.72, !dbg !1499

for.cond.72:                                      ; preds = %for.inc.87, %if.end.71
  %56 = load i32, i32* %i, align 4, !dbg !1500, !tbaa !1077
  %cmp73 = icmp ult i32 %56, 255, !dbg !1503
  br i1 %cmp73, label %for.body.75, label %for.end.88, !dbg !1504

for.body.75:                                      ; preds = %for.cond.72
  call void @llvm.lifetime.start(i64 1, i8* %ch) #3, !dbg !1505
  call void @llvm.dbg.declare(metadata i8* %ch, metadata !997, metadata !1081), !dbg !1506
  %57 = bitcast i32* %wch to i8*, !dbg !1507
  call void @llvm.lifetime.start(i64 4, i8* %57) #3, !dbg !1507
  call void @llvm.dbg.declare(metadata i32* %wch, metadata !1001, metadata !1081), !dbg !1508
  %58 = bitcast i64* %res to i8*, !dbg !1509
  call void @llvm.lifetime.start(i64 8, i8* %58) #3, !dbg !1509
  call void @llvm.dbg.declare(metadata i64* %res, metadata !1002, metadata !1081), !dbg !1510
  %59 = load i32, i32* %i, align 4, !dbg !1511, !tbaa !1077
  %conv79 = trunc i32 %59 to i8, !dbg !1512
  store i8 %conv79, i8* %ch, align 1, !dbg !1513, !tbaa !1104
  %call80 = call i64 @mbstowcs(i32* %wch, i8* %ch, i64 1) #3, !dbg !1514
  store i64 %call80, i64* %res, align 8, !dbg !1515, !tbaa !1155
  %60 = load i64, i64* %res, align 8, !dbg !1516, !tbaa !1155
  %cmp81 = icmp ne i64 %60, -1, !dbg !1518
  br i1 %cmp81, label %if.then.83, label %if.end.84, !dbg !1519

if.then.83:                                       ; preds = %for.body.75
  store i32 1, i32* %retval, !dbg !1520
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1520

if.end.84:                                        ; preds = %for.body.75
  store i32 0, i32* %cleanup.dest.slot, !dbg !1522
  br label %cleanup, !dbg !1522

cleanup:                                          ; preds = %if.end.84, %if.then.83
  %61 = bitcast i64* %res to i8*, !dbg !1523
  call void @llvm.lifetime.end(i64 8, i8* %61) #3, !dbg !1523
  %62 = bitcast i32* %wch to i8*, !dbg !1523
  call void @llvm.lifetime.end(i64 4, i8* %62) #3, !dbg !1523
  call void @llvm.lifetime.end(i64 1, i8* %ch) #3, !dbg !1523
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.89 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.87, !dbg !1524

for.inc.87:                                       ; preds = %cleanup.cont
  %63 = load i32, i32* %i, align 4, !dbg !1525, !tbaa !1077
  %inc = add i32 %63, 1, !dbg !1525
  store i32 %inc, i32* %i, align 4, !dbg !1525, !tbaa !1077
  br label %for.cond.72, !dbg !1526

for.end.88:                                       ; preds = %for.cond.72
  store i32 0, i32* %retval, !dbg !1527
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.89, !dbg !1527

error:                                            ; preds = %if.then.53, %if.then.49, %if.then
  store i32 1, i32* %retval, !dbg !1528
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.89, !dbg !1528

cleanup.89:                                       ; preds = %error, %for.end.88, %cleanup, %if.then.70, %if.then.42
  %64 = bitcast [14 x i8*]* %ascii_aliases to i8*, !dbg !1529
  call void @llvm.lifetime.end(i64 112, i8* %64) #3, !dbg !1529
  %65 = bitcast i32* %i to i8*, !dbg !1529
  call void @llvm.lifetime.end(i64 4, i8* %65) #3, !dbg !1529
  %66 = bitcast i32* %is_ascii to i8*, !dbg !1529
  call void @llvm.lifetime.end(i64 4, i8* %66) #3, !dbg !1529
  %67 = bitcast [100 x i8]* %encoding to i8*, !dbg !1529
  call void @llvm.lifetime.end(i64 100, i8* %67) #3, !dbg !1529
  %68 = bitcast i8*** %alias to i8*, !dbg !1529
  call void @llvm.lifetime.end(i64 8, i8* %68) #3, !dbg !1529
  %69 = bitcast i8** %codeset to i8*, !dbg !1529
  call void @llvm.lifetime.end(i64 8, i8* %69) #3, !dbg !1529
  %70 = bitcast i8** %loc to i8*, !dbg !1529
  call void @llvm.lifetime.end(i64 8, i8* %70) #3, !dbg !1529
  %71 = load i32, i32* %retval, !dbg !1529
  ret i32 %71, !dbg !1529
}

; Function Attrs: nounwind uwtable
define internal i32* @decode_ascii_surrogateescape(i8* %arg, i64* %size) #0 {
entry:
  %retval = alloca i32*, align 8
  %arg.addr = alloca i8*, align 8
  %size.addr = alloca i64*, align 8
  %res = alloca i32*, align 8
  %in = alloca i8*, align 8
  %out = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1005, metadata !1081), !dbg !1530
  store i64* %size, i64** %size.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i64** %size.addr, metadata !1006, metadata !1081), !dbg !1531
  %0 = bitcast i32** %res to i8*, !dbg !1532
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1532
  call void @llvm.dbg.declare(metadata i32** %res, metadata !1007, metadata !1081), !dbg !1533
  %1 = bitcast i8** %in to i8*, !dbg !1534
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1534
  call void @llvm.dbg.declare(metadata i8** %in, metadata !1008, metadata !1081), !dbg !1535
  %2 = bitcast i32** %out to i8*, !dbg !1536
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1536
  call void @llvm.dbg.declare(metadata i32** %out, metadata !1009, metadata !1081), !dbg !1537
  %3 = load i8*, i8** %arg.addr, align 8, !dbg !1538, !tbaa !1097
  %call = call i64 @strlen(i8* %3) #8, !dbg !1539
  %add = add i64 %call, 1, !dbg !1540
  %mul = mul i64 %add, 4, !dbg !1541
  %call1 = call i8* @PyMem_RawMalloc(i64 %mul), !dbg !1542
  %4 = bitcast i8* %call1 to i32*, !dbg !1542
  store i32* %4, i32** %res, align 8, !dbg !1543, !tbaa !1097
  %5 = load i32*, i32** %res, align 8, !dbg !1544, !tbaa !1097
  %tobool = icmp ne i32* %5, null, !dbg !1544
  br i1 %tobool, label %if.end, label %if.then, !dbg !1546

if.then:                                          ; preds = %entry
  store i32* null, i32** %retval, !dbg !1547
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1547

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !1548, !tbaa !1097
  store i8* %6, i8** %in, align 8, !dbg !1549, !tbaa !1097
  %7 = load i32*, i32** %res, align 8, !dbg !1550, !tbaa !1097
  store i32* %7, i32** %out, align 8, !dbg !1551, !tbaa !1097
  br label %while.cond, !dbg !1552

while.cond:                                       ; preds = %if.end.11, %if.end
  %8 = load i8*, i8** %in, align 8, !dbg !1553, !tbaa !1097
  %9 = load i8, i8* %8, align 1, !dbg !1556, !tbaa !1104
  %tobool2 = icmp ne i8 %9, 0, !dbg !1552
  br i1 %tobool2, label %while.body, label %while.end, !dbg !1552

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %in, align 8, !dbg !1557, !tbaa !1097
  %11 = load i8, i8* %10, align 1, !dbg !1559, !tbaa !1104
  %conv = zext i8 %11 to i32, !dbg !1559
  %cmp = icmp slt i32 %conv, 128, !dbg !1560
  br i1 %cmp, label %if.then.4, label %if.else, !dbg !1561

if.then.4:                                        ; preds = %while.body
  %12 = load i8*, i8** %in, align 8, !dbg !1562, !tbaa !1097
  %incdec.ptr = getelementptr i8, i8* %12, i32 1, !dbg !1562
  store i8* %incdec.ptr, i8** %in, align 8, !dbg !1562, !tbaa !1097
  %13 = load i8, i8* %12, align 1, !dbg !1563, !tbaa !1104
  %conv5 = zext i8 %13 to i32, !dbg !1563
  %14 = load i32*, i32** %out, align 8, !dbg !1564, !tbaa !1097
  %incdec.ptr6 = getelementptr i32, i32* %14, i32 1, !dbg !1564
  store i32* %incdec.ptr6, i32** %out, align 8, !dbg !1564, !tbaa !1097
  store i32 %conv5, i32* %14, align 4, !dbg !1565, !tbaa !1077
  br label %if.end.11, !dbg !1566

if.else:                                          ; preds = %while.body
  %15 = load i8*, i8** %in, align 8, !dbg !1567, !tbaa !1097
  %incdec.ptr7 = getelementptr i8, i8* %15, i32 1, !dbg !1567
  store i8* %incdec.ptr7, i8** %in, align 8, !dbg !1567, !tbaa !1097
  %16 = load i8, i8* %15, align 1, !dbg !1568, !tbaa !1104
  %conv8 = zext i8 %16 to i32, !dbg !1568
  %add9 = add i32 56320, %conv8, !dbg !1569
  %17 = load i32*, i32** %out, align 8, !dbg !1570, !tbaa !1097
  %incdec.ptr10 = getelementptr i32, i32* %17, i32 1, !dbg !1570
  store i32* %incdec.ptr10, i32** %out, align 8, !dbg !1570, !tbaa !1097
  store i32 %add9, i32* %17, align 4, !dbg !1571, !tbaa !1077
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.4
  br label %while.cond, !dbg !1552

while.end:                                        ; preds = %while.cond
  %18 = load i32*, i32** %out, align 8, !dbg !1572, !tbaa !1097
  store i32 0, i32* %18, align 4, !dbg !1573, !tbaa !1077
  %19 = load i64*, i64** %size.addr, align 8, !dbg !1574, !tbaa !1097
  %cmp12 = icmp ne i64* %19, null, !dbg !1576
  br i1 %cmp12, label %if.then.14, label %if.end.15, !dbg !1577

if.then.14:                                       ; preds = %while.end
  %20 = load i32*, i32** %out, align 8, !dbg !1578, !tbaa !1097
  %21 = load i32*, i32** %res, align 8, !dbg !1579, !tbaa !1097
  %sub.ptr.lhs.cast = ptrtoint i32* %20 to i64, !dbg !1580
  %sub.ptr.rhs.cast = ptrtoint i32* %21 to i64, !dbg !1580
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1580
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4, !dbg !1580
  %22 = load i64*, i64** %size.addr, align 8, !dbg !1581, !tbaa !1097
  store i64 %sub.ptr.div, i64* %22, align 8, !dbg !1582, !tbaa !1155
  br label %if.end.15, !dbg !1583

if.end.15:                                        ; preds = %if.then.14, %while.end
  %23 = load i32*, i32** %res, align 8, !dbg !1584, !tbaa !1097
  store i32* %23, i32** %retval, !dbg !1585
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1585

cleanup:                                          ; preds = %if.end.15, %if.then
  %24 = bitcast i32** %out to i8*, !dbg !1586
  call void @llvm.lifetime.end(i64 8, i8* %24) #3, !dbg !1586
  %25 = bitcast i8** %in to i8*, !dbg !1586
  call void @llvm.lifetime.end(i64 8, i8* %25) #3, !dbg !1586
  %26 = bitcast i32** %res to i8*, !dbg !1586
  call void @llvm.lifetime.end(i64 8, i8* %26) #3, !dbg !1586
  %27 = load i32*, i32** %retval, !dbg !1586
  ret i32* %27, !dbg !1586
}

; Function Attrs: nounwind
declare i64 @mbstowcs(i32*, i8*, i64) #2

declare i8* @PyMem_RawMalloc(i64) #4

declare void @PyMem_RawFree(i8*) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) #2

; Function Attrs: nounwind uwtable
define i8* @_Py_wchar2char(i32* %text, i64* %error_pos) #0 {
entry:
  %retval = alloca i8*, align 8
  %text.addr = alloca i32*, align 8
  %error_pos.addr = alloca i64*, align 8
  %len = alloca i64, align 8
  %result = alloca i8*, align 8
  %bytes = alloca i8*, align 8
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  %converted = alloca i64, align 8
  %c = alloca i32, align 4
  %buf = alloca [2 x i32], align 4
  %cleanup.dest.slot = alloca i32
  store i32* %text, i32** %text.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i32** %text.addr, metadata !746, metadata !1081), !dbg !1587
  store i64* %error_pos, i64** %error_pos.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i64** %error_pos.addr, metadata !747, metadata !1081), !dbg !1588
  %0 = bitcast i64* %len to i8*, !dbg !1589
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1589
  call void @llvm.dbg.declare(metadata i64* %len, metadata !748, metadata !1081), !dbg !1590
  %1 = load i32*, i32** %text.addr, align 8, !dbg !1591, !tbaa !1097
  %call = call i64 @wcslen(i32* %1) #8, !dbg !1592
  store i64 %call, i64* %len, align 8, !dbg !1590, !tbaa !1155
  %2 = bitcast i8** %result to i8*, !dbg !1593
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1593
  call void @llvm.dbg.declare(metadata i8** %result, metadata !750, metadata !1081), !dbg !1594
  store i8* null, i8** %result, align 8, !dbg !1594, !tbaa !1097
  %3 = bitcast i8** %bytes to i8*, !dbg !1593
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1593
  call void @llvm.dbg.declare(metadata i8** %bytes, metadata !751, metadata !1081), !dbg !1595
  store i8* null, i8** %bytes, align 8, !dbg !1595, !tbaa !1097
  %4 = bitcast i64* %i to i8*, !dbg !1596
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !1596
  call void @llvm.dbg.declare(metadata i64* %i, metadata !752, metadata !1081), !dbg !1597
  %5 = bitcast i64* %size to i8*, !dbg !1596
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !1596
  call void @llvm.dbg.declare(metadata i64* %size, metadata !753, metadata !1081), !dbg !1598
  %6 = bitcast i64* %converted to i8*, !dbg !1596
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !1596
  call void @llvm.dbg.declare(metadata i64* %converted, metadata !754, metadata !1081), !dbg !1599
  %7 = bitcast i32* %c to i8*, !dbg !1600
  call void @llvm.lifetime.start(i64 4, i8* %7) #3, !dbg !1600
  call void @llvm.dbg.declare(metadata i32* %c, metadata !755, metadata !1081), !dbg !1601
  %8 = bitcast [2 x i32]* %buf to i8*, !dbg !1600
  call void @llvm.lifetime.start(i64 8, i8* %8) #3, !dbg !1600
  call void @llvm.dbg.declare(metadata [2 x i32]* %buf, metadata !756, metadata !1081), !dbg !1602
  %9 = load i32, i32* @force_ascii, align 4, !dbg !1603, !tbaa !1077
  %cmp = icmp eq i32 %9, -1, !dbg !1605
  br i1 %cmp, label %if.then, label %if.end, !dbg !1606

if.then:                                          ; preds = %entry
  %call1 = call i32 @check_force_ascii(), !dbg !1607
  store i32 %call1, i32* @force_ascii, align 4, !dbg !1608, !tbaa !1077
  br label %if.end, !dbg !1609

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* @force_ascii, align 4, !dbg !1610, !tbaa !1077
  %tobool = icmp ne i32 %10, 0, !dbg !1610
  br i1 %tobool, label %if.then.2, label %if.end.4, !dbg !1612

if.then.2:                                        ; preds = %if.end
  %11 = load i32*, i32** %text.addr, align 8, !dbg !1613, !tbaa !1097
  %12 = load i64*, i64** %error_pos.addr, align 8, !dbg !1614, !tbaa !1097
  %call3 = call i8* @encode_ascii_surrogateescape(i32* %11, i64* %12), !dbg !1615
  store i8* %call3, i8** %retval, !dbg !1616
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1616

if.end.4:                                         ; preds = %if.end
  store i64 0, i64* %size, align 8, !dbg !1617, !tbaa !1155
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %buf, i32 0, i64 1, !dbg !1618
  store i32 0, i32* %arrayidx, align 4, !dbg !1619, !tbaa !1077
  br label %while.cond, !dbg !1620

while.cond:                                       ; preds = %if.end.56, %if.end.4
  br label %while.body, !dbg !1621

while.body:                                       ; preds = %while.cond
  store i64 0, i64* %i, align 8, !dbg !1624, !tbaa !1155
  br label %for.cond, !dbg !1627

for.cond:                                         ; preds = %for.inc, %while.body
  %13 = load i64, i64* %i, align 8, !dbg !1628, !tbaa !1155
  %14 = load i64, i64* %len, align 8, !dbg !1632, !tbaa !1155
  %cmp5 = icmp ult i64 %13, %14, !dbg !1633
  br i1 %cmp5, label %for.body, label %for.end, !dbg !1634

for.body:                                         ; preds = %for.cond
  %15 = load i64, i64* %i, align 8, !dbg !1635, !tbaa !1155
  %16 = load i32*, i32** %text.addr, align 8, !dbg !1637, !tbaa !1097
  %arrayidx6 = getelementptr i32, i32* %16, i64 %15, !dbg !1637
  %17 = load i32, i32* %arrayidx6, align 4, !dbg !1637, !tbaa !1077
  store i32 %17, i32* %c, align 4, !dbg !1638, !tbaa !1077
  %18 = load i32, i32* %c, align 4, !dbg !1639, !tbaa !1077
  %cmp7 = icmp sge i32 %18, 56448, !dbg !1641
  br i1 %cmp7, label %land.lhs.true, label %if.else.13, !dbg !1642

land.lhs.true:                                    ; preds = %for.body
  %19 = load i32, i32* %c, align 4, !dbg !1643, !tbaa !1077
  %cmp8 = icmp sle i32 %19, 56575, !dbg !1645
  br i1 %cmp8, label %if.then.9, label %if.else.13, !dbg !1646

if.then.9:                                        ; preds = %land.lhs.true
  %20 = load i8*, i8** %bytes, align 8, !dbg !1647, !tbaa !1097
  %cmp10 = icmp ne i8* %20, null, !dbg !1650
  br i1 %cmp10, label %if.then.11, label %if.else, !dbg !1651

if.then.11:                                       ; preds = %if.then.9
  %21 = load i32, i32* %c, align 4, !dbg !1652, !tbaa !1077
  %sub = sub i32 %21, 56320, !dbg !1654
  %conv = trunc i32 %sub to i8, !dbg !1652
  %22 = load i8*, i8** %bytes, align 8, !dbg !1655, !tbaa !1097
  %incdec.ptr = getelementptr i8, i8* %22, i32 1, !dbg !1655
  store i8* %incdec.ptr, i8** %bytes, align 8, !dbg !1655, !tbaa !1097
  store i8 %conv, i8* %22, align 1, !dbg !1656, !tbaa !1104
  %23 = load i64, i64* %size, align 8, !dbg !1657, !tbaa !1155
  %dec = add i64 %23, -1, !dbg !1657
  store i64 %dec, i64* %size, align 8, !dbg !1657, !tbaa !1155
  br label %if.end.12, !dbg !1658

if.else:                                          ; preds = %if.then.9
  %24 = load i64, i64* %size, align 8, !dbg !1659, !tbaa !1155
  %inc = add i64 %24, 1, !dbg !1659
  store i64 %inc, i64* %size, align 8, !dbg !1659, !tbaa !1155
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  br label %for.inc, !dbg !1660

if.else.13:                                       ; preds = %land.lhs.true, %for.body
  %25 = load i32, i32* %c, align 4, !dbg !1661, !tbaa !1077
  %arrayidx14 = getelementptr [2 x i32], [2 x i32]* %buf, i32 0, i64 0, !dbg !1663
  store i32 %25, i32* %arrayidx14, align 4, !dbg !1664, !tbaa !1077
  %26 = load i8*, i8** %bytes, align 8, !dbg !1665, !tbaa !1097
  %cmp15 = icmp ne i8* %26, null, !dbg !1667
  br i1 %cmp15, label %if.then.17, label %if.else.19, !dbg !1668

if.then.17:                                       ; preds = %if.else.13
  %27 = load i8*, i8** %bytes, align 8, !dbg !1669, !tbaa !1097
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %buf, i32 0, i32 0, !dbg !1670
  %28 = load i64, i64* %size, align 8, !dbg !1671, !tbaa !1155
  %call18 = call i64 @wcstombs(i8* %27, i32* %arraydecay, i64 %28) #3, !dbg !1672
  store i64 %call18, i64* %converted, align 8, !dbg !1673, !tbaa !1155
  br label %if.end.22, !dbg !1674

if.else.19:                                       ; preds = %if.else.13
  %arraydecay20 = getelementptr inbounds [2 x i32], [2 x i32]* %buf, i32 0, i32 0, !dbg !1675
  %call21 = call i64 @wcstombs(i8* null, i32* %arraydecay20, i64 0) #3, !dbg !1676
  store i64 %call21, i64* %converted, align 8, !dbg !1677, !tbaa !1155
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.17
  %29 = load i64, i64* %converted, align 8, !dbg !1678, !tbaa !1155
  %cmp23 = icmp eq i64 %29, -1, !dbg !1680
  br i1 %cmp23, label %if.then.25, label %if.end.34, !dbg !1681

if.then.25:                                       ; preds = %if.end.22
  %30 = load i8*, i8** %result, align 8, !dbg !1682, !tbaa !1097
  %cmp26 = icmp ne i8* %30, null, !dbg !1685
  br i1 %cmp26, label %if.then.28, label %if.end.29, !dbg !1686

if.then.28:                                       ; preds = %if.then.25
  %31 = load i8*, i8** %result, align 8, !dbg !1687, !tbaa !1097
  call void @PyMem_Free(i8* %31), !dbg !1688
  br label %if.end.29, !dbg !1688

if.end.29:                                        ; preds = %if.then.28, %if.then.25
  %32 = load i64*, i64** %error_pos.addr, align 8, !dbg !1689, !tbaa !1097
  %cmp30 = icmp ne i64* %32, null, !dbg !1691
  br i1 %cmp30, label %if.then.32, label %if.end.33, !dbg !1692

if.then.32:                                       ; preds = %if.end.29
  %33 = load i64, i64* %i, align 8, !dbg !1693, !tbaa !1155
  %34 = load i64*, i64** %error_pos.addr, align 8, !dbg !1694, !tbaa !1097
  store i64 %33, i64* %34, align 8, !dbg !1695, !tbaa !1155
  br label %if.end.33, !dbg !1696

if.end.33:                                        ; preds = %if.then.32, %if.end.29
  store i8* null, i8** %retval, !dbg !1697
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1697

if.end.34:                                        ; preds = %if.end.22
  %35 = load i8*, i8** %bytes, align 8, !dbg !1698, !tbaa !1097
  %cmp35 = icmp ne i8* %35, null, !dbg !1700
  br i1 %cmp35, label %if.then.37, label %if.else.39, !dbg !1701

if.then.37:                                       ; preds = %if.end.34
  %36 = load i64, i64* %converted, align 8, !dbg !1702, !tbaa !1155
  %37 = load i8*, i8** %bytes, align 8, !dbg !1704, !tbaa !1097
  %add.ptr = getelementptr i8, i8* %37, i64 %36, !dbg !1704
  store i8* %add.ptr, i8** %bytes, align 8, !dbg !1704, !tbaa !1097
  %38 = load i64, i64* %converted, align 8, !dbg !1705, !tbaa !1155
  %39 = load i64, i64* %size, align 8, !dbg !1706, !tbaa !1155
  %sub38 = sub i64 %39, %38, !dbg !1706
  store i64 %sub38, i64* %size, align 8, !dbg !1706, !tbaa !1155
  br label %if.end.40, !dbg !1707

if.else.39:                                       ; preds = %if.end.34
  %40 = load i64, i64* %converted, align 8, !dbg !1708, !tbaa !1155
  %41 = load i64, i64* %size, align 8, !dbg !1709, !tbaa !1155
  %add = add i64 %41, %40, !dbg !1709
  store i64 %add, i64* %size, align 8, !dbg !1709, !tbaa !1155
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.39, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40
  br label %for.inc, !dbg !1710

for.inc:                                          ; preds = %if.end.41, %if.end.12
  %42 = load i64, i64* %i, align 8, !dbg !1711, !tbaa !1155
  %inc42 = add i64 %42, 1, !dbg !1711
  store i64 %inc42, i64* %i, align 8, !dbg !1711, !tbaa !1155
  br label %for.cond, !dbg !1712

for.end:                                          ; preds = %for.cond
  %43 = load i8*, i8** %result, align 8, !dbg !1713, !tbaa !1097
  %cmp43 = icmp ne i8* %43, null, !dbg !1715
  br i1 %cmp43, label %if.then.45, label %if.end.46, !dbg !1716

if.then.45:                                       ; preds = %for.end
  %44 = load i8*, i8** %bytes, align 8, !dbg !1717, !tbaa !1097
  store i8 0, i8* %44, align 1, !dbg !1719, !tbaa !1104
  br label %while.end, !dbg !1720

if.end.46:                                        ; preds = %for.end
  %45 = load i64, i64* %size, align 8, !dbg !1721, !tbaa !1155
  %add47 = add i64 %45, 1, !dbg !1721
  store i64 %add47, i64* %size, align 8, !dbg !1721, !tbaa !1155
  %46 = load i64, i64* %size, align 8, !dbg !1722, !tbaa !1155
  %call48 = call i8* @PyMem_Malloc(i64 %46), !dbg !1723
  store i8* %call48, i8** %result, align 8, !dbg !1724, !tbaa !1097
  %47 = load i8*, i8** %result, align 8, !dbg !1725, !tbaa !1097
  %cmp49 = icmp eq i8* %47, null, !dbg !1727
  br i1 %cmp49, label %if.then.51, label %if.end.56, !dbg !1728

if.then.51:                                       ; preds = %if.end.46
  %48 = load i64*, i64** %error_pos.addr, align 8, !dbg !1729, !tbaa !1097
  %cmp52 = icmp ne i64* %48, null, !dbg !1732
  br i1 %cmp52, label %if.then.54, label %if.end.55, !dbg !1733

if.then.54:                                       ; preds = %if.then.51
  %49 = load i64*, i64** %error_pos.addr, align 8, !dbg !1734, !tbaa !1097
  store i64 -1, i64* %49, align 8, !dbg !1735, !tbaa !1155
  br label %if.end.55, !dbg !1736

if.end.55:                                        ; preds = %if.then.54, %if.then.51
  store i8* null, i8** %retval, !dbg !1737
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1737

if.end.56:                                        ; preds = %if.end.46
  %50 = load i8*, i8** %result, align 8, !dbg !1738, !tbaa !1097
  store i8* %50, i8** %bytes, align 8, !dbg !1739, !tbaa !1097
  br label %while.cond, !dbg !1620

while.end:                                        ; preds = %if.then.45
  %51 = load i8*, i8** %result, align 8, !dbg !1740, !tbaa !1097
  store i8* %51, i8** %retval, !dbg !1741
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1741

cleanup:                                          ; preds = %while.end, %if.end.55, %if.end.33, %if.then.2
  %52 = bitcast [2 x i32]* %buf to i8*, !dbg !1742
  call void @llvm.lifetime.end(i64 8, i8* %52) #3, !dbg !1742
  %53 = bitcast i32* %c to i8*, !dbg !1742
  call void @llvm.lifetime.end(i64 4, i8* %53) #3, !dbg !1742
  %54 = bitcast i64* %converted to i8*, !dbg !1742
  call void @llvm.lifetime.end(i64 8, i8* %54) #3, !dbg !1742
  %55 = bitcast i64* %size to i8*, !dbg !1742
  call void @llvm.lifetime.end(i64 8, i8* %55) #3, !dbg !1742
  %56 = bitcast i64* %i to i8*, !dbg !1742
  call void @llvm.lifetime.end(i64 8, i8* %56) #3, !dbg !1742
  %57 = bitcast i8** %bytes to i8*, !dbg !1742
  call void @llvm.lifetime.end(i64 8, i8* %57) #3, !dbg !1742
  %58 = bitcast i8** %result to i8*, !dbg !1742
  call void @llvm.lifetime.end(i64 8, i8* %58) #3, !dbg !1742
  %59 = bitcast i64* %len to i8*, !dbg !1742
  call void @llvm.lifetime.end(i64 8, i8* %59) #3, !dbg !1742
  %60 = load i8*, i8** %retval, !dbg !1742
  ret i8* %60, !dbg !1742
}

; Function Attrs: nounwind readonly
declare i64 @wcslen(i32*) #5

; Function Attrs: nounwind uwtable
define internal i8* @encode_ascii_surrogateescape(i32* %text, i64* %error_pos) #0 {
entry:
  %retval = alloca i8*, align 8
  %text.addr = alloca i32*, align 8
  %error_pos.addr = alloca i64*, align 8
  %result = alloca i8*, align 8
  %out = alloca i8*, align 8
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  %ch = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32* %text, i32** %text.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i32** %text.addr, metadata !1012, metadata !1081), !dbg !1743
  store i64* %error_pos, i64** %error_pos.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i64** %error_pos.addr, metadata !1013, metadata !1081), !dbg !1744
  %0 = bitcast i8** %result to i8*, !dbg !1745
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1745
  call void @llvm.dbg.declare(metadata i8** %result, metadata !1014, metadata !1081), !dbg !1746
  store i8* null, i8** %result, align 8, !dbg !1746, !tbaa !1097
  %1 = bitcast i8** %out to i8*, !dbg !1745
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1745
  call void @llvm.dbg.declare(metadata i8** %out, metadata !1015, metadata !1081), !dbg !1747
  %2 = bitcast i64* %len to i8*, !dbg !1748
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1748
  call void @llvm.dbg.declare(metadata i64* %len, metadata !1016, metadata !1081), !dbg !1749
  %3 = bitcast i64* %i to i8*, !dbg !1748
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1748
  call void @llvm.dbg.declare(metadata i64* %i, metadata !1017, metadata !1081), !dbg !1750
  %4 = bitcast i32* %ch to i8*, !dbg !1751
  call void @llvm.lifetime.start(i64 4, i8* %4) #3, !dbg !1751
  call void @llvm.dbg.declare(metadata i32* %ch, metadata !1018, metadata !1081), !dbg !1752
  %5 = load i64*, i64** %error_pos.addr, align 8, !dbg !1753, !tbaa !1097
  %cmp = icmp ne i64* %5, null, !dbg !1755
  br i1 %cmp, label %if.then, label %if.end, !dbg !1756

if.then:                                          ; preds = %entry
  %6 = load i64*, i64** %error_pos.addr, align 8, !dbg !1757, !tbaa !1097
  store i64 -1, i64* %6, align 8, !dbg !1758, !tbaa !1155
  br label %if.end, !dbg !1759

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32*, i32** %text.addr, align 8, !dbg !1760, !tbaa !1097
  %call = call i64 @wcslen(i32* %7) #8, !dbg !1761
  store i64 %call, i64* %len, align 8, !dbg !1762, !tbaa !1155
  %8 = load i64, i64* %len, align 8, !dbg !1763, !tbaa !1155
  %add = add i64 %8, 1, !dbg !1764
  %call1 = call i8* @PyMem_Malloc(i64 %add), !dbg !1765
  store i8* %call1, i8** %result, align 8, !dbg !1766, !tbaa !1097
  %9 = load i8*, i8** %result, align 8, !dbg !1767, !tbaa !1097
  %cmp2 = icmp eq i8* %9, null, !dbg !1769
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1770

if.then.3:                                        ; preds = %if.end
  store i8* null, i8** %retval, !dbg !1771
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1771

if.end.4:                                         ; preds = %if.end
  %10 = load i8*, i8** %result, align 8, !dbg !1772, !tbaa !1097
  store i8* %10, i8** %out, align 8, !dbg !1773, !tbaa !1097
  store i64 0, i64* %i, align 8, !dbg !1774, !tbaa !1155
  br label %for.cond, !dbg !1776

for.cond:                                         ; preds = %for.inc, %if.end.4
  %11 = load i64, i64* %i, align 8, !dbg !1777, !tbaa !1155
  %12 = load i64, i64* %len, align 8, !dbg !1781, !tbaa !1155
  %cmp5 = icmp ult i64 %11, %12, !dbg !1782
  br i1 %cmp5, label %for.body, label %for.end, !dbg !1783

for.body:                                         ; preds = %for.cond
  %13 = load i64, i64* %i, align 8, !dbg !1784, !tbaa !1155
  %14 = load i32*, i32** %text.addr, align 8, !dbg !1786, !tbaa !1097
  %arrayidx = getelementptr i32, i32* %14, i64 %13, !dbg !1786
  %15 = load i32, i32* %arrayidx, align 4, !dbg !1786, !tbaa !1077
  store i32 %15, i32* %ch, align 4, !dbg !1787, !tbaa !1077
  %16 = load i32, i32* %ch, align 4, !dbg !1788, !tbaa !1077
  %cmp6 = icmp sle i32 %16, 127, !dbg !1790
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !1791

if.then.7:                                        ; preds = %for.body
  %17 = load i32, i32* %ch, align 4, !dbg !1792, !tbaa !1077
  %conv = trunc i32 %17 to i8, !dbg !1794
  %18 = load i8*, i8** %out, align 8, !dbg !1795, !tbaa !1097
  %incdec.ptr = getelementptr i8, i8* %18, i32 1, !dbg !1795
  store i8* %incdec.ptr, i8** %out, align 8, !dbg !1795, !tbaa !1097
  store i8 %conv, i8* %18, align 1, !dbg !1796, !tbaa !1104
  br label %if.end.21, !dbg !1797

if.else:                                          ; preds = %for.body
  %19 = load i32, i32* %ch, align 4, !dbg !1798, !tbaa !1077
  %cmp8 = icmp sle i32 56448, %19, !dbg !1800
  br i1 %cmp8, label %land.lhs.true, label %if.else.15, !dbg !1801

land.lhs.true:                                    ; preds = %if.else
  %20 = load i32, i32* %ch, align 4, !dbg !1802, !tbaa !1077
  %cmp10 = icmp sle i32 %20, 56575, !dbg !1804
  br i1 %cmp10, label %if.then.12, label %if.else.15, !dbg !1805

if.then.12:                                       ; preds = %land.lhs.true
  %21 = load i32, i32* %ch, align 4, !dbg !1806, !tbaa !1077
  %sub = sub i32 %21, 56320, !dbg !1808
  %conv13 = trunc i32 %sub to i8, !dbg !1809
  %22 = load i8*, i8** %out, align 8, !dbg !1810, !tbaa !1097
  %incdec.ptr14 = getelementptr i8, i8* %22, i32 1, !dbg !1810
  store i8* %incdec.ptr14, i8** %out, align 8, !dbg !1810, !tbaa !1097
  store i8 %conv13, i8* %22, align 1, !dbg !1811, !tbaa !1104
  br label %if.end.20, !dbg !1812

if.else.15:                                       ; preds = %land.lhs.true, %if.else
  %23 = load i64*, i64** %error_pos.addr, align 8, !dbg !1813, !tbaa !1097
  %cmp16 = icmp ne i64* %23, null, !dbg !1816
  br i1 %cmp16, label %if.then.18, label %if.end.19, !dbg !1817

if.then.18:                                       ; preds = %if.else.15
  %24 = load i64, i64* %i, align 8, !dbg !1818, !tbaa !1155
  %25 = load i64*, i64** %error_pos.addr, align 8, !dbg !1819, !tbaa !1097
  store i64 %24, i64* %25, align 8, !dbg !1820, !tbaa !1155
  br label %if.end.19, !dbg !1821

if.end.19:                                        ; preds = %if.then.18, %if.else.15
  %26 = load i8*, i8** %result, align 8, !dbg !1822, !tbaa !1097
  call void @PyMem_Free(i8* %26), !dbg !1823
  store i8* null, i8** %retval, !dbg !1824
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1824

if.end.20:                                        ; preds = %if.then.12
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.7
  br label %for.inc, !dbg !1825

for.inc:                                          ; preds = %if.end.21
  %27 = load i64, i64* %i, align 8, !dbg !1826, !tbaa !1155
  %inc = add i64 %27, 1, !dbg !1826
  store i64 %inc, i64* %i, align 8, !dbg !1826, !tbaa !1155
  br label %for.cond, !dbg !1827

for.end:                                          ; preds = %for.cond
  %28 = load i8*, i8** %out, align 8, !dbg !1828, !tbaa !1097
  store i8 0, i8* %28, align 1, !dbg !1829, !tbaa !1104
  %29 = load i8*, i8** %result, align 8, !dbg !1830, !tbaa !1097
  store i8* %29, i8** %retval, !dbg !1831
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1831

cleanup:                                          ; preds = %for.end, %if.end.19, %if.then.3
  %30 = bitcast i32* %ch to i8*, !dbg !1832
  call void @llvm.lifetime.end(i64 4, i8* %30) #3, !dbg !1832
  %31 = bitcast i64* %i to i8*, !dbg !1832
  call void @llvm.lifetime.end(i64 8, i8* %31) #3, !dbg !1832
  %32 = bitcast i64* %len to i8*, !dbg !1832
  call void @llvm.lifetime.end(i64 8, i8* %32) #3, !dbg !1832
  %33 = bitcast i8** %out to i8*, !dbg !1832
  call void @llvm.lifetime.end(i64 8, i8* %33) #3, !dbg !1832
  %34 = bitcast i8** %result to i8*, !dbg !1832
  call void @llvm.lifetime.end(i64 8, i8* %34) #3, !dbg !1832
  %35 = load i8*, i8** %retval, !dbg !1832
  ret i8* %35, !dbg !1832
}

; Function Attrs: nounwind
declare i64 @wcstombs(i8*, i32*, i64) #2

declare void @PyMem_Free(i8*) #4

declare i8* @PyMem_Malloc(i64) #4

; Function Attrs: nounwind uwtable
define i32 @_Py_wstat(i32* %path, %struct.stat* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i32*, align 8
  %buf.addr = alloca %struct.stat*, align 8
  %err = alloca i32, align 4
  %fname = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i32* %path, i32** %path.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i32** %path.addr, metadata !801, metadata !1081), !dbg !1833
  store %struct.stat* %buf, %struct.stat** %buf.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata %struct.stat** %buf.addr, metadata !802, metadata !1081), !dbg !1834
  %0 = bitcast i32* %err to i8*, !dbg !1835
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !1835
  call void @llvm.dbg.declare(metadata i32* %err, metadata !803, metadata !1081), !dbg !1836
  %1 = bitcast i8** %fname to i8*, !dbg !1837
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1837
  call void @llvm.dbg.declare(metadata i8** %fname, metadata !804, metadata !1081), !dbg !1838
  %2 = load i32*, i32** %path.addr, align 8, !dbg !1839, !tbaa !1097
  %call = call i8* @_Py_wchar2char(i32* %2, i64* null), !dbg !1840
  store i8* %call, i8** %fname, align 8, !dbg !1841, !tbaa !1097
  %3 = load i8*, i8** %fname, align 8, !dbg !1842, !tbaa !1097
  %cmp = icmp eq i8* %3, null, !dbg !1844
  br i1 %cmp, label %if.then, label %if.end, !dbg !1845

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #1, !dbg !1846
  store i32 22, i32* %call1, align 4, !dbg !1848, !tbaa !1077
  store i32 -1, i32* %retval, !dbg !1849
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1849

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %fname, align 8, !dbg !1850, !tbaa !1097
  %5 = load %struct.stat*, %struct.stat** %buf.addr, align 8, !dbg !1851, !tbaa !1097
  %call2 = call i32 bitcast (i32 (i8*, %struct.stat64*)* @stat64 to i32 (i8*, %struct.stat*)*)(i8* %4, %struct.stat* %5) #3, !dbg !1852
  store i32 %call2, i32* %err, align 4, !dbg !1853, !tbaa !1077
  %6 = load i8*, i8** %fname, align 8, !dbg !1854, !tbaa !1097
  call void @PyMem_Free(i8* %6), !dbg !1855
  %7 = load i32, i32* %err, align 4, !dbg !1856, !tbaa !1077
  store i32 %7, i32* %retval, !dbg !1857
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1857

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast i8** %fname to i8*, !dbg !1858
  call void @llvm.lifetime.end(i64 8, i8* %8) #3, !dbg !1858
  %9 = bitcast i32* %err to i8*, !dbg !1858
  call void @llvm.lifetime.end(i64 4, i8* %9) #3, !dbg !1858
  %10 = load i32, i32* %retval, !dbg !1858
  ret i32 %10, !dbg !1858
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind uwtable
define i32 @_Py_stat(%struct._object* %path, %struct.stat* %statbuf) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca %struct._object*, align 8
  %statbuf.addr = alloca %struct.stat*, align 8
  %ret = alloca i32, align 4
  %bytes = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %path, %struct._object** %path.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata %struct._object** %path.addr, metadata !809, metadata !1081), !dbg !1859
  store %struct.stat* %statbuf, %struct.stat** %statbuf.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata %struct.stat** %statbuf.addr, metadata !810, metadata !1081), !dbg !1860
  %0 = bitcast i32* %ret to i8*, !dbg !1861
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !1861
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !811, metadata !1081), !dbg !1862
  %1 = bitcast %struct._object** %bytes to i8*, !dbg !1863
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1863
  call void @llvm.dbg.declare(metadata %struct._object** %bytes, metadata !812, metadata !1081), !dbg !1864
  %2 = load %struct._object*, %struct._object** %path.addr, align 8, !dbg !1865, !tbaa !1097
  %call = call %struct._object* @PyUnicode_EncodeFSDefault(%struct._object* %2), !dbg !1866
  store %struct._object* %call, %struct._object** %bytes, align 8, !dbg !1864, !tbaa !1097
  %3 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !1867, !tbaa !1097
  %cmp = icmp eq %struct._object* %3, null, !dbg !1869
  br i1 %cmp, label %if.then, label %if.end, !dbg !1870

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval, !dbg !1871
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1871

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !1872, !tbaa !1097
  %5 = bitcast %struct._object* %4 to %struct.PyBytesObject*, !dbg !1873
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %5, i32 0, i32 2, !dbg !1874
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !1875
  %6 = load %struct.stat*, %struct.stat** %statbuf.addr, align 8, !dbg !1876, !tbaa !1097
  %call1 = call i32 bitcast (i32 (i8*, %struct.stat64*)* @stat64 to i32 (i8*, %struct.stat*)*)(i8* %arraydecay, %struct.stat* %6) #3, !dbg !1877
  store i32 %call1, i32* %ret, align 4, !dbg !1878, !tbaa !1077
  br label %do.body, !dbg !1879

do.body:                                          ; preds = %if.end
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1880
  call void @llvm.lifetime.start(i64 8, i8* %7) #3, !dbg !1880
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !813, metadata !1081), !dbg !1882
  %8 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !1883, !tbaa !1097
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !1882, !tbaa !1097
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1884, !tbaa !1097
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !1886
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !1887, !tbaa !1089
  %dec = add i64 %10, -1, !dbg !1887
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1887, !tbaa !1089
  %cmp2 = icmp ne i64 %dec, 0, !dbg !1888
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1889

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !1890

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1892, !tbaa !1097
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !1894
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1894, !tbaa !1895
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !1896
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1896, !tbaa !1897
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1900, !tbaa !1097
  call void %13(%struct._object* %14), !dbg !1901
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1902
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !1902
  br label %do.cond, !dbg !1904

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !1905

do.end:                                           ; preds = %do.cond
  %16 = load i32, i32* %ret, align 4, !dbg !1907, !tbaa !1077
  store i32 %16, i32* %retval, !dbg !1908
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1908

cleanup:                                          ; preds = %do.end, %if.then
  %17 = bitcast %struct._object** %bytes to i8*, !dbg !1909
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !1909
  %18 = bitcast i32* %ret to i8*, !dbg !1909
  call void @llvm.lifetime.end(i64 4, i8* %18) #3, !dbg !1909
  %19 = load i32, i32* %retval, !dbg !1909
  ret i32 %19, !dbg !1909
}

declare %struct._object* @PyUnicode_EncodeFSDefault(%struct._object*) #4

; Function Attrs: nounwind uwtable
define i32 @_Py_get_inheritable(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !1077
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !819, metadata !1081), !dbg !1910
  %0 = load i32, i32* %fd.addr, align 4, !dbg !1911, !tbaa !1077
  %call = call i32 @get_inheritable(i32 %0, i32 1), !dbg !1912
  ret i32 %call, !dbg !1913
}

; Function Attrs: nounwind uwtable
define internal i32 @get_inheritable(i32 %fd, i32 %raise) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %raise.addr = alloca i32, align 4
  %flags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !1077
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !1050, metadata !1081), !dbg !1914
  store i32 %raise, i32* %raise.addr, align 4, !tbaa !1077
  call void @llvm.dbg.declare(metadata i32* %raise.addr, metadata !1051, metadata !1081), !dbg !1915
  %0 = bitcast i32* %flags to i8*, !dbg !1916
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !1916
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !1052, metadata !1081), !dbg !1917
  %1 = load i32, i32* %fd.addr, align 4, !dbg !1918, !tbaa !1077
  %call = call i32 (i32, i32, ...) @fcntl(i32 %1, i32 1, i32 0), !dbg !1919
  store i32 %call, i32* %flags, align 4, !dbg !1920, !tbaa !1077
  %2 = load i32, i32* %flags, align 4, !dbg !1921, !tbaa !1077
  %cmp = icmp eq i32 %2, -1, !dbg !1923
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !1924

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %raise.addr, align 4, !dbg !1925, !tbaa !1077
  %tobool = icmp ne i32 %3, 0, !dbg !1925
  br i1 %tobool, label %if.then.1, label %if.end, !dbg !1928

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !1929, !tbaa !1097
  %call2 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %4), !dbg !1930
  br label %if.end, !dbg !1930

if.end:                                           ; preds = %if.then.1, %if.then
  store i32 -1, i32* %retval, !dbg !1931
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1931

if.end.3:                                         ; preds = %entry
  %5 = load i32, i32* %flags, align 4, !dbg !1932, !tbaa !1077
  %and = and i32 %5, 1, !dbg !1933
  %tobool4 = icmp ne i32 %and, 0, !dbg !1934
  %lnot = xor i1 %tobool4, true, !dbg !1934
  %lnot.ext = zext i1 %lnot to i32, !dbg !1934
  store i32 %lnot.ext, i32* %retval, !dbg !1935
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1935

cleanup:                                          ; preds = %if.end.3, %if.end
  %6 = bitcast i32* %flags to i8*, !dbg !1936
  call void @llvm.lifetime.end(i64 4, i8* %6) #3, !dbg !1936
  %7 = load i32, i32* %retval, !dbg !1936
  ret i32 %7, !dbg !1936
}

; Function Attrs: nounwind uwtable
define i32 @_Py_set_inheritable(i32 %fd, i32 %inheritable, i32* %atomic_flag_works) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %inheritable.addr = alloca i32, align 4
  %atomic_flag_works.addr = alloca i32*, align 8
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !1077
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !825, metadata !1081), !dbg !1937
  store i32 %inheritable, i32* %inheritable.addr, align 4, !tbaa !1077
  call void @llvm.dbg.declare(metadata i32* %inheritable.addr, metadata !826, metadata !1081), !dbg !1938
  store i32* %atomic_flag_works, i32** %atomic_flag_works.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i32** %atomic_flag_works.addr, metadata !827, metadata !1081), !dbg !1939
  %0 = load i32, i32* %fd.addr, align 4, !dbg !1940, !tbaa !1077
  %1 = load i32, i32* %inheritable.addr, align 4, !dbg !1941, !tbaa !1077
  %2 = load i32*, i32** %atomic_flag_works.addr, align 8, !dbg !1942, !tbaa !1097
  %call = call i32 @set_inheritable(i32 %0, i32 %1, i32 1, i32* %2), !dbg !1943
  ret i32 %call, !dbg !1944
}

; Function Attrs: nounwind uwtable
define internal i32 @set_inheritable(i32 %fd, i32 %inheritable, i32 %raise, i32* %atomic_flag_works) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %inheritable.addr = alloca i32, align 4
  %raise.addr = alloca i32, align 4
  %atomic_flag_works.addr = alloca i32*, align 8
  %request = alloca i32, align 4
  %err = alloca i32, align 4
  %inheritable3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !1077
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !1057, metadata !1081), !dbg !1945
  store i32 %inheritable, i32* %inheritable.addr, align 4, !tbaa !1077
  call void @llvm.dbg.declare(metadata i32* %inheritable.addr, metadata !1058, metadata !1081), !dbg !1946
  store i32 %raise, i32* %raise.addr, align 4, !tbaa !1077
  call void @llvm.dbg.declare(metadata i32* %raise.addr, metadata !1059, metadata !1081), !dbg !1947
  store i32* %atomic_flag_works, i32** %atomic_flag_works.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i32** %atomic_flag_works.addr, metadata !1060, metadata !1081), !dbg !1948
  %0 = bitcast i32* %request to i8*, !dbg !1949
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !1949
  call void @llvm.dbg.declare(metadata i32* %request, metadata !1061, metadata !1081), !dbg !1950
  %1 = bitcast i32* %err to i8*, !dbg !1951
  call void @llvm.lifetime.start(i64 4, i8* %1) #3, !dbg !1951
  call void @llvm.dbg.declare(metadata i32* %err, metadata !1062, metadata !1081), !dbg !1952
  %2 = load i32*, i32** %atomic_flag_works.addr, align 8, !dbg !1953, !tbaa !1097
  %cmp = icmp ne i32* %2, null, !dbg !1954
  br i1 %cmp, label %land.lhs.true, label %if.end.11, !dbg !1955

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %inheritable.addr, align 4, !dbg !1956, !tbaa !1077
  %tobool = icmp ne i32 %3, 0, !dbg !1956
  br i1 %tobool, label %if.end.11, label %if.then, !dbg !1958

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32*, i32** %atomic_flag_works.addr, align 8, !dbg !1959, !tbaa !1097
  %5 = load i32, i32* %4, align 4, !dbg !1960, !tbaa !1077
  %cmp1 = icmp eq i32 %5, -1, !dbg !1961
  br i1 %cmp1, label %if.then.2, label %if.end.7, !dbg !1962

if.then.2:                                        ; preds = %if.then
  %6 = bitcast i32* %inheritable3 to i8*, !dbg !1963
  call void @llvm.lifetime.start(i64 4, i8* %6) #3, !dbg !1963
  call void @llvm.dbg.declare(metadata i32* %inheritable3, metadata !1063, metadata !1081), !dbg !1964
  %7 = load i32, i32* %fd.addr, align 4, !dbg !1965, !tbaa !1077
  %8 = load i32, i32* %raise.addr, align 4, !dbg !1966, !tbaa !1077
  %call = call i32 @get_inheritable(i32 %7, i32 %8), !dbg !1967
  store i32 %call, i32* %inheritable3, align 4, !dbg !1964, !tbaa !1077
  %9 = load i32, i32* %inheritable3, align 4, !dbg !1968, !tbaa !1077
  %cmp4 = icmp eq i32 %9, -1, !dbg !1970
  br i1 %cmp4, label %if.then.5, label %if.end, !dbg !1971

if.then.5:                                        ; preds = %if.then.2
  store i32 -1, i32* %retval, !dbg !1972
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1972

if.end:                                           ; preds = %if.then.2
  %10 = load i32, i32* %inheritable3, align 4, !dbg !1973, !tbaa !1077
  %tobool6 = icmp ne i32 %10, 0, !dbg !1974
  %lnot = xor i1 %tobool6, true, !dbg !1974
  %lnot.ext = zext i1 %lnot to i32, !dbg !1974
  %11 = load i32*, i32** %atomic_flag_works.addr, align 8, !dbg !1975, !tbaa !1097
  store i32 %lnot.ext, i32* %11, align 4, !dbg !1976, !tbaa !1077
  store i32 0, i32* %cleanup.dest.slot, !dbg !1977
  br label %cleanup, !dbg !1977

cleanup:                                          ; preds = %if.end, %if.then.5
  %12 = bitcast i32* %inheritable3 to i8*, !dbg !1978
  call void @llvm.lifetime.end(i64 4, i8* %12) #3, !dbg !1978
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.23 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.7, !dbg !1980

if.end.7:                                         ; preds = %cleanup.cont, %if.then
  %13 = load i32*, i32** %atomic_flag_works.addr, align 8, !dbg !1981, !tbaa !1097
  %14 = load i32, i32* %13, align 4, !dbg !1983, !tbaa !1077
  %tobool8 = icmp ne i32 %14, 0, !dbg !1983
  br i1 %tobool8, label %if.then.9, label %if.end.10, !dbg !1984

if.then.9:                                        ; preds = %if.end.7
  store i32 0, i32* %retval, !dbg !1985
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23, !dbg !1985

if.end.10:                                        ; preds = %if.end.7
  br label %if.end.11, !dbg !1986

if.end.11:                                        ; preds = %if.end.10, %land.lhs.true, %entry
  %15 = load i32, i32* %inheritable.addr, align 4, !dbg !1987, !tbaa !1077
  %tobool12 = icmp ne i32 %15, 0, !dbg !1987
  br i1 %tobool12, label %if.then.13, label %if.else, !dbg !1989

if.then.13:                                       ; preds = %if.end.11
  store i32 21584, i32* %request, align 4, !dbg !1990, !tbaa !1077
  br label %if.end.14, !dbg !1991

if.else:                                          ; preds = %if.end.11
  store i32 21585, i32* %request, align 4, !dbg !1992, !tbaa !1077
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  %16 = load i32, i32* %fd.addr, align 4, !dbg !1993, !tbaa !1077
  %17 = load i32, i32* %request, align 4, !dbg !1994, !tbaa !1077
  %conv = sext i32 %17 to i64, !dbg !1994
  %call15 = call i32 (i32, i64, ...) @ioctl(i32 %16, i64 %conv, i8* null) #3, !dbg !1995
  store i32 %call15, i32* %err, align 4, !dbg !1996, !tbaa !1077
  %18 = load i32, i32* %err, align 4, !dbg !1997, !tbaa !1077
  %tobool16 = icmp ne i32 %18, 0, !dbg !1997
  br i1 %tobool16, label %if.then.17, label %if.end.22, !dbg !1999

if.then.17:                                       ; preds = %if.end.14
  %19 = load i32, i32* %raise.addr, align 4, !dbg !2000, !tbaa !1077
  %tobool18 = icmp ne i32 %19, 0, !dbg !2000
  br i1 %tobool18, label %if.then.19, label %if.end.21, !dbg !2003

if.then.19:                                       ; preds = %if.then.17
  %20 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !2004, !tbaa !1097
  %call20 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %20), !dbg !2005
  br label %if.end.21, !dbg !2005

if.end.21:                                        ; preds = %if.then.19, %if.then.17
  store i32 -1, i32* %retval, !dbg !2006
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23, !dbg !2006

if.end.22:                                        ; preds = %if.end.14
  store i32 0, i32* %retval, !dbg !2007
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23, !dbg !2007

cleanup.23:                                       ; preds = %if.end.22, %if.end.21, %if.then.9, %cleanup
  %21 = bitcast i32* %err to i8*, !dbg !2008
  call void @llvm.lifetime.end(i64 4, i8* %21) #3, !dbg !2008
  %22 = bitcast i32* %request to i8*, !dbg !2008
  call void @llvm.lifetime.end(i64 4, i8* %22) #3, !dbg !2008
  %23 = load i32, i32* %retval, !dbg !2008
  ret i32 %23, !dbg !2008
}

; Function Attrs: nounwind uwtable
define i32 @_Py_open(i8* %pathname, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %pathname.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  %atomic_flag_works = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %pathname, i8** %pathname.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !832, metadata !1081), !dbg !2009
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !1077
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !833, metadata !1081), !dbg !2010
  %0 = bitcast i32* %fd to i8*, !dbg !2011
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !2011
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !834, metadata !1081), !dbg !2012
  %1 = bitcast i32** %atomic_flag_works to i8*, !dbg !2013
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2013
  call void @llvm.dbg.declare(metadata i32** %atomic_flag_works, metadata !835, metadata !1081), !dbg !2014
  store i32* @_Py_open_cloexec_works, i32** %atomic_flag_works, align 8, !dbg !2015, !tbaa !1097
  %2 = load i32, i32* %flags.addr, align 4, !dbg !2016, !tbaa !1077
  %or = or i32 %2, 524288, !dbg !2016
  store i32 %or, i32* %flags.addr, align 4, !dbg !2016, !tbaa !1077
  %3 = load i8*, i8** %pathname.addr, align 8, !dbg !2017, !tbaa !1097
  %4 = load i32, i32* %flags.addr, align 4, !dbg !2018, !tbaa !1077
  %call = call i32 (i8*, i32, ...) @open64(i8* %3, i32 %4), !dbg !2019
  store i32 %call, i32* %fd, align 4, !dbg !2020, !tbaa !1077
  %5 = load i32, i32* %fd, align 4, !dbg !2021, !tbaa !1077
  %cmp = icmp slt i32 %5, 0, !dbg !2023
  br i1 %cmp, label %if.then, label %if.end, !dbg !2024

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %fd, align 4, !dbg !2025, !tbaa !1077
  store i32 %6, i32* %retval, !dbg !2026
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2026

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %fd, align 4, !dbg !2027, !tbaa !1077
  %8 = load i32*, i32** %atomic_flag_works, align 8, !dbg !2029, !tbaa !1097
  %call1 = call i32 @set_inheritable(i32 %7, i32 0, i32 0, i32* %8), !dbg !2030
  %cmp2 = icmp slt i32 %call1, 0, !dbg !2031
  br i1 %cmp2, label %if.then.3, label %if.end.5, !dbg !2032

if.then.3:                                        ; preds = %if.end
  %9 = load i32, i32* %fd, align 4, !dbg !2033, !tbaa !1077
  %call4 = call i32 @close(i32 %9), !dbg !2035
  store i32 -1, i32* %retval, !dbg !2036
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2036

if.end.5:                                         ; preds = %if.end
  %10 = load i32, i32* %fd, align 4, !dbg !2037, !tbaa !1077
  store i32 %10, i32* %retval, !dbg !2038
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2038

cleanup:                                          ; preds = %if.end.5, %if.then.3, %if.then
  %11 = bitcast i32** %atomic_flag_works to i8*, !dbg !2039
  call void @llvm.lifetime.end(i64 8, i8* %11) #3, !dbg !2039
  %12 = bitcast i32* %fd to i8*, !dbg !2039
  call void @llvm.lifetime.end(i64 4, i8* %12) #3, !dbg !2039
  %13 = load i32, i32* %retval, !dbg !2039
  ret i32 %13, !dbg !2039
}

declare i32 @open64(i8*, i32, ...) #4

declare i32 @close(i32) #4

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @_Py_wfopen(i32* %path, i32* %mode) #0 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %path.addr = alloca i32*, align 8
  %mode.addr = alloca i32*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %cpath = alloca i8*, align 8
  %cmode = alloca [10 x i8], align 1
  %r = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i32* %path, i32** %path.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i32** %path.addr, metadata !840, metadata !1081), !dbg !2040
  store i32* %mode, i32** %mode.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i32** %mode.addr, metadata !841, metadata !1081), !dbg !2041
  %0 = bitcast %struct._IO_FILE** %f to i8*, !dbg !2042
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2042
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %f, metadata !842, metadata !1081), !dbg !2043
  %1 = bitcast i8** %cpath to i8*, !dbg !2044
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2044
  call void @llvm.dbg.declare(metadata i8** %cpath, metadata !843, metadata !1081), !dbg !2045
  %2 = bitcast [10 x i8]* %cmode to i8*, !dbg !2046
  call void @llvm.lifetime.start(i64 10, i8* %2) #3, !dbg !2046
  call void @llvm.dbg.declare(metadata [10 x i8]* %cmode, metadata !844, metadata !1081), !dbg !2047
  %3 = bitcast i64* %r to i8*, !dbg !2048
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !2048
  call void @llvm.dbg.declare(metadata i64* %r, metadata !848, metadata !1081), !dbg !2049
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %cmode, i32 0, i32 0, !dbg !2050
  %4 = load i32*, i32** %mode.addr, align 8, !dbg !2051, !tbaa !1097
  %call = call i64 @wcstombs(i8* %arraydecay, i32* %4, i64 10) #3, !dbg !2052
  store i64 %call, i64* %r, align 8, !dbg !2053, !tbaa !1155
  %5 = load i64, i64* %r, align 8, !dbg !2054, !tbaa !1155
  %cmp = icmp eq i64 %5, -1, !dbg !2056
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2057

lor.lhs.false:                                    ; preds = %entry
  %6 = load i64, i64* %r, align 8, !dbg !2058, !tbaa !1155
  %cmp1 = icmp uge i64 %6, 10, !dbg !2060
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2061

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call2 = call i32* @__errno_location() #1, !dbg !2062
  store i32 22, i32* %call2, align 4, !dbg !2064, !tbaa !1077
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval, !dbg !2065
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2065

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i32*, i32** %path.addr, align 8, !dbg !2066, !tbaa !1097
  %call3 = call i8* @_Py_wchar2char(i32* %7, i64* null), !dbg !2067
  store i8* %call3, i8** %cpath, align 8, !dbg !2068, !tbaa !1097
  %8 = load i8*, i8** %cpath, align 8, !dbg !2069, !tbaa !1097
  %cmp4 = icmp eq i8* %8, null, !dbg !2071
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !2072

if.then.5:                                        ; preds = %if.end
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval, !dbg !2073
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2073

if.end.6:                                         ; preds = %if.end
  %9 = load i8*, i8** %cpath, align 8, !dbg !2074, !tbaa !1097
  %arraydecay7 = getelementptr inbounds [10 x i8], [10 x i8]* %cmode, i32 0, i32 0, !dbg !2075
  %call8 = call %struct._IO_FILE* @fopen64(i8* %9, i8* %arraydecay7), !dbg !2076
  store %struct._IO_FILE* %call8, %struct._IO_FILE** %f, align 8, !dbg !2077, !tbaa !1097
  %10 = load i8*, i8** %cpath, align 8, !dbg !2078, !tbaa !1097
  call void @PyMem_Free(i8* %10), !dbg !2079
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !2080, !tbaa !1097
  %cmp9 = icmp eq %struct._IO_FILE* %11, null, !dbg !2082
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !2083

if.then.10:                                       ; preds = %if.end.6
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval, !dbg !2084
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2084

if.end.11:                                        ; preds = %if.end.6
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !2085, !tbaa !1097
  %call12 = call i32 @fileno(%struct._IO_FILE* %12) #3, !dbg !2087
  %call13 = call i32 @make_non_inheritable(i32 %call12), !dbg !2088
  %cmp14 = icmp slt i32 %call13, 0, !dbg !2089
  br i1 %cmp14, label %if.then.15, label %if.end.17, !dbg !2090

if.then.15:                                       ; preds = %if.end.11
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !2091, !tbaa !1097
  %call16 = call i32 @fclose(%struct._IO_FILE* %13), !dbg !2093
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval, !dbg !2094
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2094

if.end.17:                                        ; preds = %if.end.11
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !2095, !tbaa !1097
  store %struct._IO_FILE* %14, %struct._IO_FILE** %retval, !dbg !2096
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2096

cleanup:                                          ; preds = %if.end.17, %if.then.15, %if.then.10, %if.then.5, %if.then
  %15 = bitcast i64* %r to i8*, !dbg !2097
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !2097
  %16 = bitcast [10 x i8]* %cmode to i8*, !dbg !2097
  call void @llvm.lifetime.end(i64 10, i8* %16) #3, !dbg !2097
  %17 = bitcast i8** %cpath to i8*, !dbg !2097
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !2097
  %18 = bitcast %struct._IO_FILE** %f to i8*, !dbg !2097
  call void @llvm.lifetime.end(i64 8, i8* %18) #3, !dbg !2097
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %retval, !dbg !2097
  ret %struct._IO_FILE* %19, !dbg !2097
}

declare %struct._IO_FILE* @fopen64(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @make_non_inheritable(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !1077
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !1070, metadata !1081), !dbg !2098
  %0 = load i32, i32* %fd.addr, align 4, !dbg !2099, !tbaa !1077
  %call = call i32 @set_inheritable(i32 %0, i32 0, i32 0, i32* null), !dbg !2100
  ret i32 %call, !dbg !2101
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @_Py_fopen(i8* %pathname, i8* %mode) #0 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %pathname.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %pathname, i8** %pathname.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !853, metadata !1081), !dbg !2102
  store i8* %mode, i8** %mode.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i8** %mode.addr, metadata !854, metadata !1081), !dbg !2103
  %0 = bitcast %struct._IO_FILE** %f to i8*, !dbg !2104
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2104
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %f, metadata !855, metadata !1081), !dbg !2105
  %1 = load i8*, i8** %pathname.addr, align 8, !dbg !2106, !tbaa !1097
  %2 = load i8*, i8** %mode.addr, align 8, !dbg !2107, !tbaa !1097
  %call = call %struct._IO_FILE* @fopen64(i8* %1, i8* %2), !dbg !2108
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8, !dbg !2105, !tbaa !1097
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !2109, !tbaa !1097
  %cmp = icmp eq %struct._IO_FILE* %3, null, !dbg !2111
  br i1 %cmp, label %if.then, label %if.end, !dbg !2112

if.then:                                          ; preds = %entry
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval, !dbg !2113
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2113

if.end:                                           ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !2114, !tbaa !1097
  %call1 = call i32 @fileno(%struct._IO_FILE* %4) #3, !dbg !2116
  %call2 = call i32 @make_non_inheritable(i32 %call1), !dbg !2117
  %cmp3 = icmp slt i32 %call2, 0, !dbg !2118
  br i1 %cmp3, label %if.then.4, label %if.end.6, !dbg !2119

if.then.4:                                        ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !2120, !tbaa !1097
  %call5 = call i32 @fclose(%struct._IO_FILE* %5), !dbg !2122
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval, !dbg !2123
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2123

if.end.6:                                         ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !2124, !tbaa !1097
  store %struct._IO_FILE* %6, %struct._IO_FILE** %retval, !dbg !2125
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2125

cleanup:                                          ; preds = %if.end.6, %if.then.4, %if.then
  %7 = bitcast %struct._IO_FILE** %f to i8*, !dbg !2126
  call void @llvm.lifetime.end(i64 8, i8* %7) #3, !dbg !2126
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %retval, !dbg !2126
  ret %struct._IO_FILE* %8, !dbg !2126
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @_Py_fopen_obj(%struct._object* %path, i8* %mode) #0 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %path.addr = alloca %struct._object*, align 8
  %mode.addr = alloca i8*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %bytes = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %path, %struct._object** %path.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata %struct._object** %path.addr, metadata !860, metadata !1081), !dbg !2127
  store i8* %mode, i8** %mode.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i8** %mode.addr, metadata !861, metadata !1081), !dbg !2128
  %0 = bitcast %struct._IO_FILE** %f to i8*, !dbg !2129
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2129
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %f, metadata !862, metadata !1081), !dbg !2130
  %1 = bitcast %struct._object** %bytes to i8*, !dbg !2131
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2131
  call void @llvm.dbg.declare(metadata %struct._object** %bytes, metadata !863, metadata !1081), !dbg !2132
  %2 = load %struct._object*, %struct._object** %path.addr, align 8, !dbg !2133, !tbaa !1097
  %3 = bitcast %struct._object** %bytes to i8*, !dbg !2135
  %call = call i32 @PyUnicode_FSConverter(%struct._object* %2, i8* %3), !dbg !2136
  %tobool = icmp ne i32 %call, 0, !dbg !2136
  br i1 %tobool, label %if.end, label %if.then, !dbg !2137

if.then:                                          ; preds = %entry
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval, !dbg !2138
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2138

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !2139, !tbaa !1097
  %5 = bitcast %struct._object* %4 to %struct.PyBytesObject*, !dbg !2140
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %5, i32 0, i32 2, !dbg !2141
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !2142
  %6 = load i8*, i8** %mode.addr, align 8, !dbg !2143, !tbaa !1097
  %call1 = call %struct._IO_FILE* @fopen64(i8* %arraydecay, i8* %6), !dbg !2144
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %f, align 8, !dbg !2145, !tbaa !1097
  br label %do.body, !dbg !2146

do.body:                                          ; preds = %if.end
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2147
  call void @llvm.lifetime.start(i64 8, i8* %7) #3, !dbg !2147
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !864, metadata !1081), !dbg !2149
  %8 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !2150, !tbaa !1097
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !2149, !tbaa !1097
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2151, !tbaa !1097
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !2153
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !2154, !tbaa !1089
  %dec = add i64 %10, -1, !dbg !2154
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2154, !tbaa !1089
  %cmp = icmp ne i64 %dec, 0, !dbg !2155
  br i1 %cmp, label %if.then.2, label %if.else, !dbg !2156

if.then.2:                                        ; preds = %do.body
  br label %if.end.3, !dbg !2157

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2159, !tbaa !1097
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !2161
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2161, !tbaa !1895
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !2162
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2162, !tbaa !1897
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2163, !tbaa !1097
  call void %13(%struct._object* %14), !dbg !2164
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2165
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !2165
  br label %do.cond, !dbg !2167

do.cond:                                          ; preds = %if.end.3
  br label %do.end, !dbg !2168

do.end:                                           ; preds = %do.cond
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !2170, !tbaa !1097
  %cmp4 = icmp eq %struct._IO_FILE* %16, null, !dbg !2172
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !2173

if.then.5:                                        ; preds = %do.end
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval, !dbg !2174
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2174

if.end.6:                                         ; preds = %do.end
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !2175, !tbaa !1097
  %call7 = call i32 @fileno(%struct._IO_FILE* %17) #3, !dbg !2177
  %call8 = call i32 @make_non_inheritable(i32 %call7), !dbg !2178
  %cmp9 = icmp slt i32 %call8, 0, !dbg !2179
  br i1 %cmp9, label %if.then.10, label %if.end.12, !dbg !2180

if.then.10:                                       ; preds = %if.end.6
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !2181, !tbaa !1097
  %call11 = call i32 @fclose(%struct._IO_FILE* %18), !dbg !2183
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval, !dbg !2184
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2184

if.end.12:                                        ; preds = %if.end.6
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !2185, !tbaa !1097
  store %struct._IO_FILE* %19, %struct._IO_FILE** %retval, !dbg !2186
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2186

cleanup:                                          ; preds = %if.end.12, %if.then.10, %if.then.5, %if.then
  %20 = bitcast %struct._object** %bytes to i8*, !dbg !2187
  call void @llvm.lifetime.end(i64 8, i8* %20) #3, !dbg !2187
  %21 = bitcast %struct._IO_FILE** %f to i8*, !dbg !2187
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !2187
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %retval, !dbg !2187
  ret %struct._IO_FILE* %22, !dbg !2187
}

declare i32 @PyUnicode_FSConverter(%struct._object*, i8*) #4

; Function Attrs: nounwind uwtable
define i32 @_Py_wreadlink(i32* %path, i32* %buf, i64 %bufsiz) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i32*, align 8
  %buf.addr = alloca i32*, align 8
  %bufsiz.addr = alloca i64, align 8
  %cpath = alloca i8*, align 8
  %cbuf = alloca [4096 x i8], align 16
  %wbuf = alloca i32*, align 8
  %res = alloca i32, align 4
  %r1 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i32* %path, i32** %path.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i32** %path.addr, metadata !870, metadata !1081), !dbg !2188
  store i32* %buf, i32** %buf.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i32** %buf.addr, metadata !871, metadata !1081), !dbg !2189
  store i64 %bufsiz, i64* %bufsiz.addr, align 8, !tbaa !1155
  call void @llvm.dbg.declare(metadata i64* %bufsiz.addr, metadata !872, metadata !1081), !dbg !2190
  %0 = bitcast i8** %cpath to i8*, !dbg !2191
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2191
  call void @llvm.dbg.declare(metadata i8** %cpath, metadata !873, metadata !1081), !dbg !2192
  %1 = bitcast [4096 x i8]* %cbuf to i8*, !dbg !2193
  call void @llvm.lifetime.start(i64 4096, i8* %1) #3, !dbg !2193
  call void @llvm.dbg.declare(metadata [4096 x i8]* %cbuf, metadata !874, metadata !1081), !dbg !2194
  %2 = bitcast i32** %wbuf to i8*, !dbg !2195
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2195
  call void @llvm.dbg.declare(metadata i32** %wbuf, metadata !878, metadata !1081), !dbg !2196
  %3 = bitcast i32* %res to i8*, !dbg !2197
  call void @llvm.lifetime.start(i64 4, i8* %3) #3, !dbg !2197
  call void @llvm.dbg.declare(metadata i32* %res, metadata !879, metadata !1081), !dbg !2198
  %4 = bitcast i64* %r1 to i8*, !dbg !2199
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !2199
  call void @llvm.dbg.declare(metadata i64* %r1, metadata !880, metadata !1081), !dbg !2200
  %5 = load i32*, i32** %path.addr, align 8, !dbg !2201, !tbaa !1097
  %call = call i8* @_Py_wchar2char(i32* %5, i64* null), !dbg !2202
  store i8* %call, i8** %cpath, align 8, !dbg !2203, !tbaa !1097
  %6 = load i8*, i8** %cpath, align 8, !dbg !2204, !tbaa !1097
  %cmp = icmp eq i8* %6, null, !dbg !2206
  br i1 %cmp, label %if.then, label %if.end, !dbg !2207

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #1, !dbg !2208
  store i32 22, i32* %call1, align 4, !dbg !2210, !tbaa !1077
  store i32 -1, i32* %retval, !dbg !2211
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2211

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %cpath, align 8, !dbg !2212, !tbaa !1097
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %cbuf, i32 0, i32 0, !dbg !2213
  %call2 = call i64 @readlink(i8* %7, i8* %arraydecay, i64 4096) #3, !dbg !2214
  %conv = trunc i64 %call2 to i32, !dbg !2215
  store i32 %conv, i32* %res, align 4, !dbg !2216, !tbaa !1077
  %8 = load i8*, i8** %cpath, align 8, !dbg !2217, !tbaa !1097
  call void @PyMem_Free(i8* %8), !dbg !2218
  %9 = load i32, i32* %res, align 4, !dbg !2219, !tbaa !1077
  %cmp3 = icmp eq i32 %9, -1, !dbg !2221
  br i1 %cmp3, label %if.then.5, label %if.end.6, !dbg !2222

if.then.5:                                        ; preds = %if.end
  store i32 -1, i32* %retval, !dbg !2223
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2223

if.end.6:                                         ; preds = %if.end
  %10 = load i32, i32* %res, align 4, !dbg !2224, !tbaa !1077
  %conv7 = sext i32 %10 to i64, !dbg !2224
  %cmp8 = icmp eq i64 %conv7, 4096, !dbg !2226
  br i1 %cmp8, label %if.then.10, label %if.end.12, !dbg !2227

if.then.10:                                       ; preds = %if.end.6
  %call11 = call i32* @__errno_location() #1, !dbg !2228
  store i32 22, i32* %call11, align 4, !dbg !2230, !tbaa !1077
  store i32 -1, i32* %retval, !dbg !2231
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2231

if.end.12:                                        ; preds = %if.end.6
  %11 = load i32, i32* %res, align 4, !dbg !2232, !tbaa !1077
  %idxprom = sext i32 %11 to i64, !dbg !2233
  %arrayidx = getelementptr [4096 x i8], [4096 x i8]* %cbuf, i32 0, i64 %idxprom, !dbg !2233
  store i8 0, i8* %arrayidx, align 1, !dbg !2234, !tbaa !1104
  %arraydecay13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cbuf, i32 0, i32 0, !dbg !2235
  %call14 = call i32* @_Py_char2wchar(i8* %arraydecay13, i64* %r1), !dbg !2236
  store i32* %call14, i32** %wbuf, align 8, !dbg !2237, !tbaa !1097
  %12 = load i32*, i32** %wbuf, align 8, !dbg !2238, !tbaa !1097
  %cmp15 = icmp eq i32* %12, null, !dbg !2240
  br i1 %cmp15, label %if.then.17, label %if.end.19, !dbg !2241

if.then.17:                                       ; preds = %if.end.12
  %call18 = call i32* @__errno_location() #1, !dbg !2242
  store i32 22, i32* %call18, align 4, !dbg !2244, !tbaa !1077
  store i32 -1, i32* %retval, !dbg !2245
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2245

if.end.19:                                        ; preds = %if.end.12
  %13 = load i64, i64* %bufsiz.addr, align 8, !dbg !2246, !tbaa !1155
  %14 = load i64, i64* %r1, align 8, !dbg !2248, !tbaa !1155
  %cmp20 = icmp ule i64 %13, %14, !dbg !2249
  br i1 %cmp20, label %if.then.22, label %if.end.24, !dbg !2250

if.then.22:                                       ; preds = %if.end.19
  %15 = load i32*, i32** %wbuf, align 8, !dbg !2251, !tbaa !1097
  %16 = bitcast i32* %15 to i8*, !dbg !2251
  call void @PyMem_RawFree(i8* %16), !dbg !2253
  %call23 = call i32* @__errno_location() #1, !dbg !2254
  store i32 22, i32* %call23, align 4, !dbg !2255, !tbaa !1077
  store i32 -1, i32* %retval, !dbg !2256
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2256

if.end.24:                                        ; preds = %if.end.19
  %17 = load i32*, i32** %buf.addr, align 8, !dbg !2257, !tbaa !1097
  %18 = load i32*, i32** %wbuf, align 8, !dbg !2258, !tbaa !1097
  %19 = load i64, i64* %bufsiz.addr, align 8, !dbg !2259, !tbaa !1155
  %call25 = call i32* @wcsncpy(i32* %17, i32* %18, i64 %19) #3, !dbg !2260
  %20 = load i32*, i32** %wbuf, align 8, !dbg !2261, !tbaa !1097
  %21 = bitcast i32* %20 to i8*, !dbg !2261
  call void @PyMem_RawFree(i8* %21), !dbg !2262
  %22 = load i64, i64* %r1, align 8, !dbg !2263, !tbaa !1155
  %conv26 = trunc i64 %22 to i32, !dbg !2264
  store i32 %conv26, i32* %retval, !dbg !2265
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2265

cleanup:                                          ; preds = %if.end.24, %if.then.22, %if.then.17, %if.then.10, %if.then.5, %if.then
  %23 = bitcast i64* %r1 to i8*, !dbg !2266
  call void @llvm.lifetime.end(i64 8, i8* %23) #3, !dbg !2266
  %24 = bitcast i32* %res to i8*, !dbg !2266
  call void @llvm.lifetime.end(i64 4, i8* %24) #3, !dbg !2266
  %25 = bitcast i32** %wbuf to i8*, !dbg !2266
  call void @llvm.lifetime.end(i64 8, i8* %25) #3, !dbg !2266
  %26 = bitcast [4096 x i8]* %cbuf to i8*, !dbg !2266
  call void @llvm.lifetime.end(i64 4096, i8* %26) #3, !dbg !2266
  %27 = bitcast i8** %cpath to i8*, !dbg !2266
  call void @llvm.lifetime.end(i64 8, i8* %27) #3, !dbg !2266
  %28 = load i32, i32* %retval, !dbg !2266
  ret i32 %28, !dbg !2266
}

; Function Attrs: nounwind
declare i64 @readlink(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i32* @wcsncpy(i32*, i32*, i64) #2

; Function Attrs: nounwind uwtable
define i32* @_Py_wrealpath(i32* %path, i32* %resolved_path, i64 %resolved_path_size) #0 {
entry:
  %retval = alloca i32*, align 8
  %path.addr = alloca i32*, align 8
  %resolved_path.addr = alloca i32*, align 8
  %resolved_path_size.addr = alloca i64, align 8
  %cpath = alloca i8*, align 8
  %cresolved_path = alloca [4096 x i8], align 16
  %wresolved_path = alloca i32*, align 8
  %res = alloca i8*, align 8
  %r = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i32* %path, i32** %path.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i32** %path.addr, metadata !885, metadata !1081), !dbg !2267
  store i32* %resolved_path, i32** %resolved_path.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i32** %resolved_path.addr, metadata !886, metadata !1081), !dbg !2268
  store i64 %resolved_path_size, i64* %resolved_path_size.addr, align 8, !tbaa !1155
  call void @llvm.dbg.declare(metadata i64* %resolved_path_size.addr, metadata !887, metadata !1081), !dbg !2269
  %0 = bitcast i8** %cpath to i8*, !dbg !2270
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2270
  call void @llvm.dbg.declare(metadata i8** %cpath, metadata !888, metadata !1081), !dbg !2271
  %1 = bitcast [4096 x i8]* %cresolved_path to i8*, !dbg !2272
  call void @llvm.lifetime.start(i64 4096, i8* %1) #3, !dbg !2272
  call void @llvm.dbg.declare(metadata [4096 x i8]* %cresolved_path, metadata !889, metadata !1081), !dbg !2273
  %2 = bitcast i32** %wresolved_path to i8*, !dbg !2274
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2274
  call void @llvm.dbg.declare(metadata i32** %wresolved_path, metadata !890, metadata !1081), !dbg !2275
  %3 = bitcast i8** %res to i8*, !dbg !2276
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !2276
  call void @llvm.dbg.declare(metadata i8** %res, metadata !891, metadata !1081), !dbg !2277
  %4 = bitcast i64* %r to i8*, !dbg !2278
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !2278
  call void @llvm.dbg.declare(metadata i64* %r, metadata !892, metadata !1081), !dbg !2279
  %5 = load i32*, i32** %path.addr, align 8, !dbg !2280, !tbaa !1097
  %call = call i8* @_Py_wchar2char(i32* %5, i64* null), !dbg !2281
  store i8* %call, i8** %cpath, align 8, !dbg !2282, !tbaa !1097
  %6 = load i8*, i8** %cpath, align 8, !dbg !2283, !tbaa !1097
  %cmp = icmp eq i8* %6, null, !dbg !2285
  br i1 %cmp, label %if.then, label %if.end, !dbg !2286

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #1, !dbg !2287
  store i32 22, i32* %call1, align 4, !dbg !2289, !tbaa !1077
  store i32* null, i32** %retval, !dbg !2290
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2290

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %cpath, align 8, !dbg !2291, !tbaa !1097
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %cresolved_path, i32 0, i32 0, !dbg !2292
  %call2 = call i8* @realpath(i8* %7, i8* %arraydecay) #3, !dbg !2293
  store i8* %call2, i8** %res, align 8, !dbg !2294, !tbaa !1097
  %8 = load i8*, i8** %cpath, align 8, !dbg !2295, !tbaa !1097
  call void @PyMem_Free(i8* %8), !dbg !2296
  %9 = load i8*, i8** %res, align 8, !dbg !2297, !tbaa !1097
  %cmp3 = icmp eq i8* %9, null, !dbg !2299
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !2300

if.then.4:                                        ; preds = %if.end
  store i32* null, i32** %retval, !dbg !2301
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2301

if.end.5:                                         ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cresolved_path, i32 0, i32 0, !dbg !2302
  %call7 = call i32* @_Py_char2wchar(i8* %arraydecay6, i64* %r), !dbg !2303
  store i32* %call7, i32** %wresolved_path, align 8, !dbg !2304, !tbaa !1097
  %10 = load i32*, i32** %wresolved_path, align 8, !dbg !2305, !tbaa !1097
  %cmp8 = icmp eq i32* %10, null, !dbg !2307
  br i1 %cmp8, label %if.then.9, label %if.end.11, !dbg !2308

if.then.9:                                        ; preds = %if.end.5
  %call10 = call i32* @__errno_location() #1, !dbg !2309
  store i32 22, i32* %call10, align 4, !dbg !2311, !tbaa !1077
  store i32* null, i32** %retval, !dbg !2312
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2312

if.end.11:                                        ; preds = %if.end.5
  %11 = load i64, i64* %resolved_path_size.addr, align 8, !dbg !2313, !tbaa !1155
  %12 = load i64, i64* %r, align 8, !dbg !2315, !tbaa !1155
  %cmp12 = icmp ule i64 %11, %12, !dbg !2316
  br i1 %cmp12, label %if.then.13, label %if.end.15, !dbg !2317

if.then.13:                                       ; preds = %if.end.11
  %13 = load i32*, i32** %wresolved_path, align 8, !dbg !2318, !tbaa !1097
  %14 = bitcast i32* %13 to i8*, !dbg !2318
  call void @PyMem_RawFree(i8* %14), !dbg !2320
  %call14 = call i32* @__errno_location() #1, !dbg !2321
  store i32 22, i32* %call14, align 4, !dbg !2322, !tbaa !1077
  store i32* null, i32** %retval, !dbg !2323
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2323

if.end.15:                                        ; preds = %if.end.11
  %15 = load i32*, i32** %resolved_path.addr, align 8, !dbg !2324, !tbaa !1097
  %16 = load i32*, i32** %wresolved_path, align 8, !dbg !2325, !tbaa !1097
  %17 = load i64, i64* %resolved_path_size.addr, align 8, !dbg !2326, !tbaa !1155
  %call16 = call i32* @wcsncpy(i32* %15, i32* %16, i64 %17) #3, !dbg !2327
  %18 = load i32*, i32** %wresolved_path, align 8, !dbg !2328, !tbaa !1097
  %19 = bitcast i32* %18 to i8*, !dbg !2328
  call void @PyMem_RawFree(i8* %19), !dbg !2329
  %20 = load i32*, i32** %resolved_path.addr, align 8, !dbg !2330, !tbaa !1097
  store i32* %20, i32** %retval, !dbg !2331
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2331

cleanup:                                          ; preds = %if.end.15, %if.then.13, %if.then.9, %if.then.4, %if.then
  %21 = bitcast i64* %r to i8*, !dbg !2332
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !2332
  %22 = bitcast i8** %res to i8*, !dbg !2332
  call void @llvm.lifetime.end(i64 8, i8* %22) #3, !dbg !2332
  %23 = bitcast i32** %wresolved_path to i8*, !dbg !2332
  call void @llvm.lifetime.end(i64 8, i8* %23) #3, !dbg !2332
  %24 = bitcast [4096 x i8]* %cresolved_path to i8*, !dbg !2332
  call void @llvm.lifetime.end(i64 4096, i8* %24) #3, !dbg !2332
  %25 = bitcast i8** %cpath to i8*, !dbg !2332
  call void @llvm.lifetime.end(i64 8, i8* %25) #3, !dbg !2332
  %26 = load i32*, i32** %retval, !dbg !2332
  ret i32* %26, !dbg !2332
}

; Function Attrs: nounwind
declare i8* @realpath(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32* @_Py_wgetcwd(i32* %buf, i64 %size) #0 {
entry:
  %retval = alloca i32*, align 8
  %buf.addr = alloca i32*, align 8
  %size.addr = alloca i64, align 8
  %fname = alloca [4096 x i8], align 16
  %wname = alloca i32*, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i32* %buf, i32** %buf.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i32** %buf.addr, metadata !897, metadata !1081), !dbg !2333
  store i64 %size, i64* %size.addr, align 8, !tbaa !1155
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !898, metadata !1081), !dbg !2334
  %0 = bitcast [4096 x i8]* %fname to i8*, !dbg !2335
  call void @llvm.lifetime.start(i64 4096, i8* %0) #3, !dbg !2335
  call void @llvm.dbg.declare(metadata [4096 x i8]* %fname, metadata !899, metadata !1081), !dbg !2336
  %1 = bitcast i32** %wname to i8*, !dbg !2337
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2337
  call void @llvm.dbg.declare(metadata i32** %wname, metadata !900, metadata !1081), !dbg !2338
  %2 = bitcast i64* %len to i8*, !dbg !2339
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2339
  call void @llvm.dbg.declare(metadata i64* %len, metadata !901, metadata !1081), !dbg !2340
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0, !dbg !2341
  %call = call i8* @getcwd(i8* %arraydecay, i64 4096) #3, !dbg !2343
  %cmp = icmp eq i8* %call, null, !dbg !2344
  br i1 %cmp, label %if.then, label %if.end, !dbg !2345

if.then:                                          ; preds = %entry
  store i32* null, i32** %retval, !dbg !2346
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2346

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0, !dbg !2347
  %call2 = call i32* @_Py_char2wchar(i8* %arraydecay1, i64* %len), !dbg !2348
  store i32* %call2, i32** %wname, align 8, !dbg !2349, !tbaa !1097
  %3 = load i32*, i32** %wname, align 8, !dbg !2350, !tbaa !1097
  %cmp3 = icmp eq i32* %3, null, !dbg !2352
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !2353

if.then.4:                                        ; preds = %if.end
  store i32* null, i32** %retval, !dbg !2354
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2354

if.end.5:                                         ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2355, !tbaa !1155
  %5 = load i64, i64* %len, align 8, !dbg !2357, !tbaa !1155
  %cmp6 = icmp ule i64 %4, %5, !dbg !2358
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !2359

if.then.7:                                        ; preds = %if.end.5
  %6 = load i32*, i32** %wname, align 8, !dbg !2360, !tbaa !1097
  %7 = bitcast i32* %6 to i8*, !dbg !2360
  call void @PyMem_RawFree(i8* %7), !dbg !2362
  store i32* null, i32** %retval, !dbg !2363
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2363

if.end.8:                                         ; preds = %if.end.5
  %8 = load i32*, i32** %buf.addr, align 8, !dbg !2364, !tbaa !1097
  %9 = load i32*, i32** %wname, align 8, !dbg !2365, !tbaa !1097
  %10 = load i64, i64* %size.addr, align 8, !dbg !2366, !tbaa !1155
  %call9 = call i32* @wcsncpy(i32* %8, i32* %9, i64 %10) #3, !dbg !2367
  %11 = load i32*, i32** %wname, align 8, !dbg !2368, !tbaa !1097
  %12 = bitcast i32* %11 to i8*, !dbg !2368
  call void @PyMem_RawFree(i8* %12), !dbg !2369
  %13 = load i32*, i32** %buf.addr, align 8, !dbg !2370, !tbaa !1097
  store i32* %13, i32** %retval, !dbg !2371
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2371

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then.4, %if.then
  %14 = bitcast i64* %len to i8*, !dbg !2372
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !2372
  %15 = bitcast i32** %wname to i8*, !dbg !2372
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !2372
  %16 = bitcast [4096 x i8]* %fname to i8*, !dbg !2372
  call void @llvm.lifetime.end(i64 4096, i8* %16) #3, !dbg !2372
  %17 = load i32*, i32** %retval, !dbg !2372
  ret i32* %17, !dbg !2372
}

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @_Py_dup(i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !1077
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !904, metadata !1081), !dbg !2373
  %0 = bitcast %struct._ts** %_save to i8*, !dbg !2374
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2374
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !905, metadata !1081), !dbg !2375
  %call = call %struct._ts* @PyEval_SaveThread(), !dbg !2376
  store %struct._ts* %call, %struct._ts** %_save, align 8, !dbg !2377, !tbaa !1097
  %1 = load i32, i32* %fd.addr, align 4, !dbg !2378, !tbaa !1077
  %call1 = call i32 (i32, i32, ...) @fcntl(i32 %1, i32 1030, i32 0), !dbg !2379
  store i32 %call1, i32* %fd.addr, align 4, !dbg !2380, !tbaa !1077
  %2 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2381, !tbaa !1097
  call void @PyEval_RestoreThread(%struct._ts* %2), !dbg !2382
  %3 = bitcast %struct._ts** %_save to i8*, !dbg !2383
  call void @llvm.lifetime.end(i64 8, i8* %3) #3, !dbg !2383
  %4 = load i32, i32* %fd.addr, align 4, !dbg !2384, !tbaa !1077
  %cmp = icmp slt i32 %4, 0, !dbg !2386
  br i1 %cmp, label %if.then, label %if.end, !dbg !2387

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !2388, !tbaa !1097
  %call2 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %5), !dbg !2390
  store i32 -1, i32* %retval, !dbg !2391
  br label %return, !dbg !2391

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %fd.addr, align 4, !dbg !2392, !tbaa !1077
  store i32 %6, i32* %retval, !dbg !2393
  br label %return, !dbg !2393

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, !dbg !2394
  ret i32 %7, !dbg !2394
}

declare %struct._ts* @PyEval_SaveThread() #4

declare i32 @fcntl(i32, i32, ...) #4

declare void @PyEval_RestoreThread(%struct._ts*) #4

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #2

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #2

declare i32 @_Py_normalize_encoding(i8*, i8*, i64) #4

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @stat64(i8* nonnull %__path, %struct.stat64* nonnull %__statbuf) #7 {
entry:
  %__path.addr = alloca i8*, align 8
  %__statbuf.addr = alloca %struct.stat64*, align 8
  store i8* %__path, i8** %__path.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata i8** %__path.addr, metadata !1044, metadata !1081), !dbg !2395
  store %struct.stat64* %__statbuf, %struct.stat64** %__statbuf.addr, align 8, !tbaa !1097
  call void @llvm.dbg.declare(metadata %struct.stat64** %__statbuf.addr, metadata !1045, metadata !1081), !dbg !2396
  %0 = load i8*, i8** %__path.addr, align 8, !dbg !2397, !tbaa !1097
  %1 = load %struct.stat64*, %struct.stat64** %__statbuf.addr, align 8, !dbg !2398, !tbaa !1097
  %call = call i32 @__xstat64(i32 1, i8* %0, %struct.stat64* %1) #3, !dbg !2399
  ret i32 %call, !dbg !2400
}

; Function Attrs: nounwind
declare i32 @__xstat64(i32, i8*, %struct.stat64*) #2

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1074, !1075}
!llvm.ident = !{!1076}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !341, subprograms: !697, globals: !1071)
!1 = !DIFile(filename: "fileutils.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 41, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340}
!6 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!7 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!8 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!9 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!10 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!11 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!12 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!13 = !DIEnumerator(name: "DAY_1", value: 131079)
!14 = !DIEnumerator(name: "DAY_2", value: 131080)
!15 = !DIEnumerator(name: "DAY_3", value: 131081)
!16 = !DIEnumerator(name: "DAY_4", value: 131082)
!17 = !DIEnumerator(name: "DAY_5", value: 131083)
!18 = !DIEnumerator(name: "DAY_6", value: 131084)
!19 = !DIEnumerator(name: "DAY_7", value: 131085)
!20 = !DIEnumerator(name: "ABMON_1", value: 131086)
!21 = !DIEnumerator(name: "ABMON_2", value: 131087)
!22 = !DIEnumerator(name: "ABMON_3", value: 131088)
!23 = !DIEnumerator(name: "ABMON_4", value: 131089)
!24 = !DIEnumerator(name: "ABMON_5", value: 131090)
!25 = !DIEnumerator(name: "ABMON_6", value: 131091)
!26 = !DIEnumerator(name: "ABMON_7", value: 131092)
!27 = !DIEnumerator(name: "ABMON_8", value: 131093)
!28 = !DIEnumerator(name: "ABMON_9", value: 131094)
!29 = !DIEnumerator(name: "ABMON_10", value: 131095)
!30 = !DIEnumerator(name: "ABMON_11", value: 131096)
!31 = !DIEnumerator(name: "ABMON_12", value: 131097)
!32 = !DIEnumerator(name: "MON_1", value: 131098)
!33 = !DIEnumerator(name: "MON_2", value: 131099)
!34 = !DIEnumerator(name: "MON_3", value: 131100)
!35 = !DIEnumerator(name: "MON_4", value: 131101)
!36 = !DIEnumerator(name: "MON_5", value: 131102)
!37 = !DIEnumerator(name: "MON_6", value: 131103)
!38 = !DIEnumerator(name: "MON_7", value: 131104)
!39 = !DIEnumerator(name: "MON_8", value: 131105)
!40 = !DIEnumerator(name: "MON_9", value: 131106)
!41 = !DIEnumerator(name: "MON_10", value: 131107)
!42 = !DIEnumerator(name: "MON_11", value: 131108)
!43 = !DIEnumerator(name: "MON_12", value: 131109)
!44 = !DIEnumerator(name: "AM_STR", value: 131110)
!45 = !DIEnumerator(name: "PM_STR", value: 131111)
!46 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!47 = !DIEnumerator(name: "D_FMT", value: 131113)
!48 = !DIEnumerator(name: "T_FMT", value: 131114)
!49 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!50 = !DIEnumerator(name: "ERA", value: 131116)
!51 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!52 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!53 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!54 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!55 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!56 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!57 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!58 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!59 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!60 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!61 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!62 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!63 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!64 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!65 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!66 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!67 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!68 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!69 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!70 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!71 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!72 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!73 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!74 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!75 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!76 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!77 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!78 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!79 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!80 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!81 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!82 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!83 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!84 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!85 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!86 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!87 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!88 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!89 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!90 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!91 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!92 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!93 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!94 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!95 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!96 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!97 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!98 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!99 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!100 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!101 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!102 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!103 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!104 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!105 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!106 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!107 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!108 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!109 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!110 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!111 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!112 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!113 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!114 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!115 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!116 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!117 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!118 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!119 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!120 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!121 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!122 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!123 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!124 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!125 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!126 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!127 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!128 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!129 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!130 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!131 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!132 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!133 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!134 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!135 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!136 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!137 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!138 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!139 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!140 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!141 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!142 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!143 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!144 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!145 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!146 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!147 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!148 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!149 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!150 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!151 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!152 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!153 = !DIEnumerator(name: "CODESET", value: 14)
!154 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!155 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!156 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!157 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!158 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!159 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!160 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!161 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!162 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!163 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!164 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!165 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!166 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!167 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!168 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!169 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!170 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!171 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!172 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!173 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!174 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!175 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!176 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!177 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!178 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!179 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!180 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!181 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!182 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!183 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!184 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!185 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!186 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!187 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!188 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!189 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!190 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!191 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!192 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!193 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!194 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!195 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!196 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!197 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!198 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!199 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!200 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!201 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!202 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!203 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!204 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!205 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!206 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!207 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!208 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!209 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!210 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!211 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!212 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!213 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!214 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!215 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!216 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!217 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!218 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!219 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!220 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!221 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!222 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!223 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!224 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!225 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!226 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!227 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!228 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!229 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!230 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!231 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!232 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!233 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!234 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!235 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!236 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!237 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!238 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!239 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!240 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!241 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!242 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!243 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!244 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!245 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!246 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!247 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!248 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!249 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!250 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!251 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!252 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!253 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!254 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!255 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!256 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!257 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!258 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!259 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!260 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!261 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!262 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!263 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!264 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!265 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!266 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!267 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!268 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!269 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!270 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!271 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!272 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!273 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!274 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!275 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!276 = !DIEnumerator(name: "THOUSEP", value: 65537)
!277 = !DIEnumerator(name: "__GROUPING", value: 65538)
!278 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!279 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!280 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!281 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!282 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!283 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!284 = !DIEnumerator(name: "__YESSTR", value: 327682)
!285 = !DIEnumerator(name: "__NOSTR", value: 327683)
!286 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!287 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!288 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!289 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!290 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!291 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!292 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!293 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!294 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!295 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!296 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!297 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!298 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!299 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!300 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!301 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!302 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!303 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!304 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!305 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!306 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!307 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!308 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!309 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!310 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!311 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!312 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!313 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!314 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!315 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!316 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!317 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!318 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!319 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!320 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!321 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!322 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!323 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!324 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!325 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!326 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!327 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!328 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!329 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!330 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!331 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!332 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!333 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!334 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!335 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!336 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!337 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!338 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!339 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!340 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!341 = !{!342, !427, !432, !681, !683, !389, !685, !381, !693, !695, !366, !684, !368}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !344, line: 109, baseType: !345)
!344 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!345 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !344, line: 105, size: 128, align: 64, elements: !346)
!346 = !{!347, !355}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !345, file: !344, line: 107, baseType: !348, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !349, line: 177, baseType: !350)
!349 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !351, line: 102, baseType: !352)
!351 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !353, line: 181, baseType: !354)
!353 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!354 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !345, file: !344, line: 108, baseType: !356, size: 64, align: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!357 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !344, line: 334, size: 3200, align: 64, elements: !358)
!358 = !{!359, !365, !369, !370, !371, !376, !440, !445, !450, !451, !456, !508, !539, !551, !557, !558, !559, !561, !563, !594, !595, !596, !605, !606, !611, !612, !614, !616, !626, !629, !647, !648, !649, !651, !653, !654, !656, !661, !666, !671, !672, !673, !674, !675, !676, !677, !678, !680}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !357, file: !344, line: 335, baseType: !360, size: 192, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !344, line: 114, baseType: !361)
!361 = !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 111, size: 192, align: 64, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !361, file: !344, line: 112, baseType: !343, size: 128, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !361, file: !344, line: 113, baseType: !348, size: 64, align: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !357, file: !344, line: 336, baseType: !366, size: 64, align: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!368 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !357, file: !344, line: 337, baseType: !348, size: 64, align: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !357, file: !344, line: 337, baseType: !348, size: 64, align: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !357, file: !344, line: 341, baseType: !372, size: 64, align: 64, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !344, line: 308, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !342}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !357, file: !344, line: 342, baseType: !377, size: 64, align: 64, offset: 448)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !344, line: 314, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!381, !342, !382, !381}
!381 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !351, line: 48, baseType: !384)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !385, line: 246, size: 1728, align: 64, elements: !386)
!385 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!386 = !{!387, !388, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !408, !409, !410, !411, !413, !415, !417, !421, !424, !426, !428, !429, !430, !431, !435, !436}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !384, file: !385, line: 247, baseType: !381, size: 32, align: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !384, file: !385, line: 252, baseType: !389, size: 64, align: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !384, file: !385, line: 253, baseType: !389, size: 64, align: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !384, file: !385, line: 254, baseType: !389, size: 64, align: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !384, file: !385, line: 255, baseType: !389, size: 64, align: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !384, file: !385, line: 256, baseType: !389, size: 64, align: 64, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !384, file: !385, line: 257, baseType: !389, size: 64, align: 64, offset: 384)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !384, file: !385, line: 258, baseType: !389, size: 64, align: 64, offset: 448)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !384, file: !385, line: 259, baseType: !389, size: 64, align: 64, offset: 512)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !384, file: !385, line: 261, baseType: !389, size: 64, align: 64, offset: 576)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !384, file: !385, line: 262, baseType: !389, size: 64, align: 64, offset: 640)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !384, file: !385, line: 263, baseType: !389, size: 64, align: 64, offset: 704)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !384, file: !385, line: 265, baseType: !401, size: 64, align: 64, offset: 768)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !385, line: 161, size: 192, align: 64, elements: !403)
!403 = !{!404, !405, !407}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !402, file: !385, line: 162, baseType: !401, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !402, file: !385, line: 163, baseType: !406, size: 64, align: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !402, file: !385, line: 167, baseType: !381, size: 32, align: 32, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !384, file: !385, line: 267, baseType: !406, size: 64, align: 64, offset: 832)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !384, file: !385, line: 269, baseType: !381, size: 32, align: 32, offset: 896)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !384, file: !385, line: 273, baseType: !381, size: 32, align: 32, offset: 928)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !384, file: !385, line: 275, baseType: !412, size: 64, align: 64, offset: 960)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !353, line: 140, baseType: !354)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !384, file: !385, line: 279, baseType: !414, size: 16, align: 16, offset: 1024)
!414 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !384, file: !385, line: 280, baseType: !416, size: 8, align: 8, offset: 1040)
!416 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !384, file: !385, line: 281, baseType: !418, size: 8, align: 8, offset: 1048)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 8, align: 8, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 1)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !384, file: !385, line: 285, baseType: !422, size: 64, align: 64, offset: 1088)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !385, line: 155, baseType: null)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !384, file: !385, line: 294, baseType: !425, size: 64, align: 64, offset: 1152)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !353, line: 141, baseType: !354)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !384, file: !385, line: 303, baseType: !427, size: 64, align: 64, offset: 1216)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !384, file: !385, line: 304, baseType: !427, size: 64, align: 64, offset: 1280)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !384, file: !385, line: 305, baseType: !427, size: 64, align: 64, offset: 1344)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !384, file: !385, line: 306, baseType: !427, size: 64, align: 64, offset: 1408)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !384, file: !385, line: 307, baseType: !432, size: 64, align: 64, offset: 1472)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !433, line: 62, baseType: !434)
!433 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!434 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !384, file: !385, line: 309, baseType: !381, size: 32, align: 32, offset: 1536)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !384, file: !385, line: 311, baseType: !437, size: 160, align: 8, offset: 1568)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 160, align: 8, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 20)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !357, file: !344, line: 343, baseType: !441, size: 64, align: 64, offset: 512)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !344, line: 316, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64, align: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!342, !342, !389}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !357, file: !344, line: 344, baseType: !446, size: 64, align: 64, offset: 576)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !344, line: 318, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, align: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!381, !342, !389, !342}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !357, file: !344, line: 345, baseType: !427, size: 64, align: 64, offset: 640)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !357, file: !344, line: 346, baseType: !452, size: 64, align: 64, offset: 704)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !344, line: 320, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!342, !342}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !357, file: !344, line: 350, baseType: !457, size: 64, align: 64, offset: 768)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !344, line: 278, baseType: !459)
!459 = !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 236, size: 2176, align: 64, elements: !460)
!460 = !{!461, !466, !467, !468, !469, !470, !475, !477, !478, !479, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !459, file: !344, line: 241, baseType: !462, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !344, line: 166, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!342, !342, !342}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !459, file: !344, line: 242, baseType: !462, size: 64, align: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !459, file: !344, line: 243, baseType: !462, size: 64, align: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !459, file: !344, line: 244, baseType: !462, size: 64, align: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !459, file: !344, line: 245, baseType: !462, size: 64, align: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !459, file: !344, line: 246, baseType: !471, size: 64, align: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !344, line: 167, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, align: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!342, !342, !342, !342}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !459, file: !344, line: 247, baseType: !476, size: 64, align: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !344, line: 165, baseType: !453)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !459, file: !344, line: 248, baseType: !476, size: 64, align: 64, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !459, file: !344, line: 249, baseType: !476, size: 64, align: 64, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !459, file: !344, line: 250, baseType: !480, size: 64, align: 64, offset: 576)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !344, line: 168, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!381, !342}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !459, file: !344, line: 251, baseType: !476, size: 64, align: 64, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !459, file: !344, line: 252, baseType: !462, size: 64, align: 64, offset: 704)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !459, file: !344, line: 253, baseType: !462, size: 64, align: 64, offset: 768)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !459, file: !344, line: 254, baseType: !462, size: 64, align: 64, offset: 832)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !459, file: !344, line: 255, baseType: !462, size: 64, align: 64, offset: 896)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !459, file: !344, line: 256, baseType: !462, size: 64, align: 64, offset: 960)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !459, file: !344, line: 257, baseType: !476, size: 64, align: 64, offset: 1024)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !459, file: !344, line: 258, baseType: !427, size: 64, align: 64, offset: 1088)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !459, file: !344, line: 259, baseType: !476, size: 64, align: 64, offset: 1152)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !459, file: !344, line: 261, baseType: !462, size: 64, align: 64, offset: 1216)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !459, file: !344, line: 262, baseType: !462, size: 64, align: 64, offset: 1280)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !459, file: !344, line: 263, baseType: !462, size: 64, align: 64, offset: 1344)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !459, file: !344, line: 264, baseType: !462, size: 64, align: 64, offset: 1408)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !459, file: !344, line: 265, baseType: !471, size: 64, align: 64, offset: 1472)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !459, file: !344, line: 266, baseType: !462, size: 64, align: 64, offset: 1536)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !459, file: !344, line: 267, baseType: !462, size: 64, align: 64, offset: 1600)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !459, file: !344, line: 268, baseType: !462, size: 64, align: 64, offset: 1664)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !459, file: !344, line: 269, baseType: !462, size: 64, align: 64, offset: 1728)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !459, file: !344, line: 270, baseType: !462, size: 64, align: 64, offset: 1792)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !459, file: !344, line: 272, baseType: !462, size: 64, align: 64, offset: 1856)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !459, file: !344, line: 273, baseType: !462, size: 64, align: 64, offset: 1920)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !459, file: !344, line: 274, baseType: !462, size: 64, align: 64, offset: 1984)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !459, file: !344, line: 275, baseType: !462, size: 64, align: 64, offset: 2048)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !459, file: !344, line: 277, baseType: !476, size: 64, align: 64, offset: 2112)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !357, file: !344, line: 351, baseType: !509, size: 64, align: 64, offset: 832)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !344, line: 292, baseType: !511)
!511 = !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 280, size: 640, align: 64, elements: !512)
!512 = !{!513, !518, !519, !524, !525, !526, !531, !532, !537, !538}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !511, file: !344, line: 281, baseType: !514, size: 64, align: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !344, line: 169, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64, align: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!348, !342}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !511, file: !344, line: 282, baseType: !462, size: 64, align: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !511, file: !344, line: 283, baseType: !520, size: 64, align: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !344, line: 170, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64, align: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!342, !342, !348}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !511, file: !344, line: 284, baseType: !520, size: 64, align: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !511, file: !344, line: 285, baseType: !427, size: 64, align: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !511, file: !344, line: 286, baseType: !527, size: 64, align: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !344, line: 172, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64, align: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!381, !342, !348, !342}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !511, file: !344, line: 287, baseType: !427, size: 64, align: 64, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !511, file: !344, line: 288, baseType: !533, size: 64, align: 64, offset: 448)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !344, line: 231, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64, align: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!381, !342, !342}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !511, file: !344, line: 290, baseType: !462, size: 64, align: 64, offset: 512)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !511, file: !344, line: 291, baseType: !520, size: 64, align: 64, offset: 576)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !357, file: !344, line: 352, baseType: !540, size: 64, align: 64, offset: 896)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64, align: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !344, line: 298, baseType: !542)
!542 = !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 294, size: 192, align: 64, elements: !543)
!543 = !{!544, !545, !546}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !542, file: !344, line: 295, baseType: !514, size: 64, align: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !542, file: !344, line: 296, baseType: !462, size: 64, align: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !542, file: !344, line: 297, baseType: !547, size: 64, align: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !344, line: 174, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64, align: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!381, !342, !342, !342}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !357, file: !344, line: 356, baseType: !552, size: 64, align: 64, offset: 960)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !344, line: 321, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64, align: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!556, !342}
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !349, line: 186, baseType: !348)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !357, file: !344, line: 357, baseType: !471, size: 64, align: 64, offset: 1024)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !357, file: !344, line: 358, baseType: !452, size: 64, align: 64, offset: 1088)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !357, file: !344, line: 359, baseType: !560, size: 64, align: 64, offset: 1152)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !344, line: 317, baseType: !463)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !357, file: !344, line: 360, baseType: !562, size: 64, align: 64, offset: 1216)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !344, line: 319, baseType: !548)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !357, file: !344, line: 363, baseType: !564, size: 64, align: 64, offset: 1280)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64, align: 64)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !344, line: 304, baseType: !566)
!566 = !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 301, size: 128, align: 64, elements: !567)
!567 = !{!568, !589}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !566, file: !344, line: 302, baseType: !569, size: 64, align: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !344, line: 193, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64, align: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!381, !342, !573, !381}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64, align: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !344, line: 191, baseType: !575)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !344, line: 178, size: 640, align: 64, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !586, !587, !588}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !575, file: !344, line: 179, baseType: !427, size: 64, align: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !575, file: !344, line: 180, baseType: !342, size: 64, align: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !575, file: !344, line: 181, baseType: !348, size: 64, align: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !575, file: !344, line: 182, baseType: !348, size: 64, align: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !575, file: !344, line: 184, baseType: !381, size: 32, align: 32, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !575, file: !344, line: 185, baseType: !381, size: 32, align: 32, offset: 288)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !575, file: !344, line: 186, baseType: !389, size: 64, align: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !575, file: !344, line: 187, baseType: !585, size: 64, align: 64, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !575, file: !344, line: 188, baseType: !585, size: 64, align: 64, offset: 448)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !575, file: !344, line: 189, baseType: !585, size: 64, align: 64, offset: 512)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !575, file: !344, line: 190, baseType: !427, size: 64, align: 64, offset: 576)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !566, file: !344, line: 303, baseType: !590, size: 64, align: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !344, line: 194, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64, align: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !342, !573}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !357, file: !344, line: 366, baseType: !434, size: 64, align: 64, offset: 1344)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !357, file: !344, line: 368, baseType: !366, size: 64, align: 64, offset: 1408)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !357, file: !344, line: 372, baseType: !597, size: 64, align: 64, offset: 1472)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !344, line: 233, baseType: !598)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64, align: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!381, !342, !601, !427}
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !344, line: 232, baseType: !602)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64, align: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!381, !342, !427}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !357, file: !344, line: 375, baseType: !480, size: 64, align: 64, offset: 1536)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !357, file: !344, line: 379, baseType: !607, size: 64, align: 64, offset: 1600)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !344, line: 322, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64, align: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!342, !342, !342, !381}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !357, file: !344, line: 382, baseType: !348, size: 64, align: 64, offset: 1664)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !357, file: !344, line: 385, baseType: !613, size: 64, align: 64, offset: 1728)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !344, line: 323, baseType: !453)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !357, file: !344, line: 386, baseType: !615, size: 64, align: 64, offset: 1792)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !344, line: 324, baseType: !453)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !357, file: !344, line: 389, baseType: !617, size: 64, align: 64, offset: 1856)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64, align: 64)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !619, line: 40, size: 256, align: 64, elements: !620)
!619 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!620 = !{!621, !622, !624, !625}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !618, file: !619, line: 41, baseType: !366, size: 64, align: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !618, file: !619, line: 42, baseType: !623, size: 64, align: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !619, line: 18, baseType: !463)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !618, file: !619, line: 43, baseType: !381, size: 32, align: 32, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !618, file: !619, line: 45, baseType: !366, size: 64, align: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !357, file: !344, line: 390, baseType: !627, size: 64, align: 64, offset: 1920)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64, align: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !344, line: 390, flags: DIFlagFwdDecl)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !357, file: !344, line: 391, baseType: !630, size: 64, align: 64, offset: 1984)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64, align: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !632, line: 11, size: 320, align: 64, elements: !633)
!632 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!633 = !{!634, !635, !640, !645, !646}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !631, file: !632, line: 12, baseType: !389, size: 64, align: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !631, file: !632, line: 13, baseType: !636, size: 64, align: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !632, line: 8, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64, align: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!342, !342, !427}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !631, file: !632, line: 14, baseType: !641, size: 64, align: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !632, line: 9, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64, align: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!381, !342, !342, !427}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !631, file: !632, line: 15, baseType: !389, size: 64, align: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !631, file: !632, line: 16, baseType: !427, size: 64, align: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !357, file: !344, line: 392, baseType: !356, size: 64, align: 64, offset: 2048)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !357, file: !344, line: 393, baseType: !342, size: 64, align: 64, offset: 2112)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !357, file: !344, line: 394, baseType: !650, size: 64, align: 64, offset: 2176)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !344, line: 325, baseType: !472)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !357, file: !344, line: 395, baseType: !652, size: 64, align: 64, offset: 2240)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !344, line: 326, baseType: !548)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !357, file: !344, line: 396, baseType: !348, size: 64, align: 64, offset: 2304)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !357, file: !344, line: 397, baseType: !655, size: 64, align: 64, offset: 2368)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !344, line: 327, baseType: !548)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !357, file: !344, line: 398, baseType: !657, size: 64, align: 64, offset: 2432)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !344, line: 329, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64, align: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!342, !356, !348}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !357, file: !344, line: 399, baseType: !662, size: 64, align: 64, offset: 2496)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !344, line: 328, baseType: !663)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64, align: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!342, !356, !342, !342}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !357, file: !344, line: 400, baseType: !667, size: 64, align: 64, offset: 2560)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !344, line: 307, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64, align: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !427}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !357, file: !344, line: 401, baseType: !480, size: 64, align: 64, offset: 2624)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !357, file: !344, line: 402, baseType: !342, size: 64, align: 64, offset: 2688)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !357, file: !344, line: 403, baseType: !342, size: 64, align: 64, offset: 2752)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !357, file: !344, line: 404, baseType: !342, size: 64, align: 64, offset: 2816)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !357, file: !344, line: 405, baseType: !342, size: 64, align: 64, offset: 2880)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !357, file: !344, line: 406, baseType: !342, size: 64, align: 64, offset: 2944)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !357, file: !344, line: 407, baseType: !372, size: 64, align: 64, offset: 3008)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !357, file: !344, line: 410, baseType: !679, size: 32, align: 32, offset: 3072)
!679 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !357, file: !344, line: 412, baseType: !372, size: 64, align: 64, offset: 3136)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64, align: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !433, line: 90, baseType: !381)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64, align: 64)
!684 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64, align: 64)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !687, line: 41, baseType: !688)
!687 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!688 = !DICompositeType(tag: DW_TAG_structure_type, file: !687, line: 31, size: 320, align: 64, elements: !689)
!689 = !{!690, !691, !692}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !688, file: !687, line: 32, baseType: !360, size: 192, align: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !688, file: !687, line: 33, baseType: !556, size: 64, align: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !688, file: !687, line: 34, baseType: !418, size: 8, align: 8, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64, align: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64, align: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !684)
!697 = !{!698, !706, !740, !760, !805, !815, !820, !828, !836, !849, !856, !866, !881, !893, !902, !965, !1003, !1010, !1019, !1046, !1053, !1068}
!698 = !DISubprogram(name: "_Py_device_encoding", scope: !699, file: !699, line: 37, type: !700, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i32)* @_Py_device_encoding, variables: !702)
!699 = !DIFile(filename: "Python/fileutils.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!700 = !DISubroutineType(types: !701)
!701 = !{!342, !381}
!702 = !{!703, !704}
!703 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !698, file: !699, line: 37, type: !381)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codeset", scope: !705, file: !699, line: 58, type: !389)
!705 = distinct !DILexicalBlock(scope: !698, file: !699, line: 57, column: 5)
!706 = !DISubprogram(name: "_Py_char2wchar", scope: !699, file: !699, line: 261, type: !707, isLocal: false, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, function: i32* (i8*, i64*)* @_Py_char2wchar, variables: !710)
!707 = !DISubroutineType(types: !708)
!708 = !{!681, !366, !709}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !733, !738}
!711 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !706, file: !699, line: 261, type: !366)
!712 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !706, file: !699, line: 261, type: !709)
!713 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !706, file: !699, line: 274, type: !681)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argsize", scope: !706, file: !699, line: 275, type: !432)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !706, file: !699, line: 276, type: !432)
!716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in", scope: !706, file: !699, line: 278, type: !683)
!717 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out", scope: !706, file: !699, line: 279, type: !681)
!718 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mbs", scope: !706, file: !699, line: 280, type: !719)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !720, line: 106, baseType: !721)
!720 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !720, line: 94, baseType: !722)
!722 = !DICompositeType(tag: DW_TAG_structure_type, file: !720, line: 82, size: 64, align: 32, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !722, file: !720, line: 84, baseType: !381, size: 32, align: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !722, file: !720, line: 93, baseType: !726, size: 32, align: 32, offset: 32)
!726 = !DICompositeType(tag: DW_TAG_union_type, scope: !722, file: !720, line: 85, size: 32, align: 32, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !726, file: !720, line: 88, baseType: !679, size: 32, align: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !726, file: !720, line: 92, baseType: !730, size: 32, align: 8)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 32, align: 8, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 4)
!733 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !734, file: !699, line: 311, type: !681)
!734 = distinct !DILexicalBlock(scope: !735, file: !699, line: 310, column: 34)
!735 = distinct !DILexicalBlock(scope: !736, file: !699, line: 310, column: 13)
!736 = distinct !DILexicalBlock(scope: !737, file: !699, line: 305, column: 32)
!737 = distinct !DILexicalBlock(scope: !706, file: !699, line: 305, column: 9)
!738 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "converted", scope: !739, file: !699, line: 339, type: !432)
!739 = distinct !DILexicalBlock(scope: !706, file: !699, line: 338, column: 21)
!740 = !DISubprogram(name: "_Py_wchar2char", scope: !699, file: !699, line: 404, type: !741, isLocal: false, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32*, i64*)* @_Py_wchar2char, variables: !745)
!741 = !DISubroutineType(types: !742)
!742 = !{!389, !743, !709}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64, align: 64)
!744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!745 = !{!746, !747, !748, !750, !751, !752, !753, !754, !755, !756}
!746 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "text", arg: 1, scope: !740, file: !699, line: 404, type: !743)
!747 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "error_pos", arg: 2, scope: !740, file: !699, line: 404, type: !709)
!748 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !740, file: !699, line: 437, type: !749)
!749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!750 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !740, file: !699, line: 438, type: !389)
!751 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !740, file: !699, line: 438, type: !389)
!752 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !740, file: !699, line: 439, type: !432)
!753 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !740, file: !699, line: 439, type: !432)
!754 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "converted", scope: !740, file: !699, line: 439, type: !432)
!755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !740, file: !699, line: 440, type: !682)
!756 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !740, file: !699, line: 440, type: !757)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 64, align: 32, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 2)
!760 = !DISubprogram(name: "_Py_wstat", scope: !699, file: !699, line: 519, type: !761, isLocal: false, isDefinition: true, scopeLine: 520, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, %struct.stat*)* @_Py_wstat, variables: !800)
!761 = !DISubroutineType(types: !762)
!762 = !{!381, !743, !763}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64, align: 64)
!764 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !765, line: 46, size: 1152, align: 64, elements: !766)
!765 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!766 = !{!767, !769, !771, !773, !775, !777, !779, !780, !781, !782, !784, !786, !794, !795, !796}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !764, file: !765, line: 48, baseType: !768, size: 64, align: 64)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !353, line: 133, baseType: !434)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !764, file: !765, line: 53, baseType: !770, size: 64, align: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !353, line: 136, baseType: !434)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !764, file: !765, line: 61, baseType: !772, size: 64, align: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !353, line: 139, baseType: !434)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !764, file: !765, line: 62, baseType: !774, size: 32, align: 32, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !353, line: 138, baseType: !679)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !764, file: !765, line: 64, baseType: !776, size: 32, align: 32, offset: 224)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !353, line: 134, baseType: !679)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !764, file: !765, line: 65, baseType: !778, size: 32, align: 32, offset: 256)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !353, line: 135, baseType: !679)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !764, file: !765, line: 67, baseType: !381, size: 32, align: 32, offset: 288)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !764, file: !765, line: 69, baseType: !768, size: 64, align: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !764, file: !765, line: 74, baseType: !412, size: 64, align: 64, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !764, file: !765, line: 78, baseType: !783, size: 64, align: 64, offset: 448)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !353, line: 162, baseType: !354)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !764, file: !765, line: 80, baseType: !785, size: 64, align: 64, offset: 512)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !353, line: 167, baseType: !354)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !764, file: !765, line: 91, baseType: !787, size: 128, align: 64, offset: 576)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !788, line: 120, size: 128, align: 64, elements: !789)
!788 = !DIFile(filename: "/usr/include/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!789 = !{!790, !792}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !787, file: !788, line: 122, baseType: !791, size: 64, align: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !353, line: 148, baseType: !354)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !787, file: !788, line: 123, baseType: !793, size: 64, align: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !353, line: 184, baseType: !354)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !764, file: !765, line: 92, baseType: !787, size: 128, align: 64, offset: 704)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !764, file: !765, line: 93, baseType: !787, size: 128, align: 64, offset: 832)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !764, file: !765, line: 106, baseType: !797, size: 192, align: 64, offset: 960)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 192, align: 64, elements: !798)
!798 = !{!799}
!799 = !DISubrange(count: 3)
!800 = !{!801, !802, !803, !804}
!801 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 1, scope: !760, file: !699, line: 519, type: !743)
!802 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 2, scope: !760, file: !699, line: 519, type: !763)
!803 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !760, file: !699, line: 521, type: !381)
!804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fname", scope: !760, file: !699, line: 522, type: !389)
!805 = !DISubprogram(name: "_Py_stat", scope: !699, file: !699, line: 543, type: !806, isLocal: false, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct.stat*)* @_Py_stat, variables: !808)
!806 = !DISubroutineType(types: !807)
!807 = !{!381, !342, !763}
!808 = !{!809, !810, !811, !812, !813}
!809 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 1, scope: !805, file: !699, line: 543, type: !342)
!810 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "statbuf", arg: 2, scope: !805, file: !699, line: 543, type: !763)
!811 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !805, file: !699, line: 558, type: !381)
!812 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !805, file: !699, line: 559, type: !342)
!813 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !814, file: !699, line: 563, type: !342)
!814 = distinct !DILexicalBlock(scope: !805, file: !699, line: 563, column: 8)
!815 = !DISubprogram(name: "_Py_get_inheritable", scope: !699, file: !699, line: 614, type: !816, isLocal: false, isDefinition: true, scopeLine: 615, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @_Py_get_inheritable, variables: !818)
!816 = !DISubroutineType(types: !817)
!817 = !{!381, !381}
!818 = !{!819}
!819 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !815, file: !699, line: 614, type: !381)
!820 = !DISubprogram(name: "_Py_set_inheritable", scope: !699, file: !699, line: 735, type: !821, isLocal: false, isDefinition: true, scopeLine: 736, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32, i32*)* @_Py_set_inheritable, variables: !824)
!821 = !DISubroutineType(types: !822)
!822 = !{!381, !381, !381, !823}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!824 = !{!825, !826, !827}
!825 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !820, file: !699, line: 735, type: !381)
!826 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inheritable", arg: 2, scope: !820, file: !699, line: 735, type: !381)
!827 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atomic_flag_works", arg: 3, scope: !820, file: !699, line: 735, type: !823)
!828 = !DISubprogram(name: "_Py_open", scope: !699, file: !699, line: 743, type: !829, isLocal: false, isDefinition: true, scopeLine: 744, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32)* @_Py_open, variables: !831)
!829 = !DISubroutineType(types: !830)
!830 = !{!381, !366, !381}
!831 = !{!832, !833, !834, !835}
!832 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pathname", arg: 1, scope: !828, file: !699, line: 743, type: !366)
!833 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 2, scope: !828, file: !699, line: 743, type: !381)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !828, file: !699, line: 745, type: !381)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_flag_works", scope: !828, file: !699, line: 752, type: !823)
!836 = !DISubprogram(name: "_Py_wfopen", scope: !699, file: !699, line: 775, type: !837, isLocal: false, isDefinition: true, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IO_FILE* (i32*, i32*)* @_Py_wfopen, variables: !839)
!837 = !DISubroutineType(types: !838)
!838 = !{!382, !743, !743}
!839 = !{!840, !841, !842, !843, !844, !848}
!840 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 1, scope: !836, file: !699, line: 775, type: !743)
!841 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 2, scope: !836, file: !699, line: 775, type: !743)
!842 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !836, file: !699, line: 777, type: !382)
!843 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cpath", scope: !836, file: !699, line: 779, type: !389)
!844 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmode", scope: !836, file: !699, line: 780, type: !845)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 80, align: 8, elements: !846)
!846 = !{!847}
!847 = !DISubrange(count: 10)
!848 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !836, file: !699, line: 781, type: !432)
!849 = !DISubprogram(name: "_Py_fopen", scope: !699, file: !699, line: 806, type: !850, isLocal: false, isDefinition: true, scopeLine: 807, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IO_FILE* (i8*, i8*)* @_Py_fopen, variables: !852)
!850 = !DISubroutineType(types: !851)
!851 = !{!382, !366, !366}
!852 = !{!853, !854, !855}
!853 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pathname", arg: 1, scope: !849, file: !699, line: 806, type: !366)
!854 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 2, scope: !849, file: !699, line: 806, type: !366)
!855 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !849, file: !699, line: 808, type: !382)
!856 = !DISubprogram(name: "_Py_fopen_obj", scope: !699, file: !699, line: 825, type: !857, isLocal: false, isDefinition: true, scopeLine: 826, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IO_FILE* (%struct._object*, i8*)* @_Py_fopen_obj, variables: !859)
!857 = !DISubroutineType(types: !858)
!858 = !{!382, !342, !366}
!859 = !{!860, !861, !862, !863, !864}
!860 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 1, scope: !856, file: !699, line: 825, type: !342)
!861 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 2, scope: !856, file: !699, line: 825, type: !366)
!862 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !856, file: !699, line: 827, type: !382)
!863 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !856, file: !699, line: 849, type: !342)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !865, file: !699, line: 853, type: !342)
!865 = distinct !DILexicalBlock(scope: !856, file: !699, line: 853, column: 8)
!866 = !DISubprogram(name: "_Py_wreadlink", scope: !699, file: !699, line: 870, type: !867, isLocal: false, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, i32*, i64)* @_Py_wreadlink, variables: !869)
!867 = !DISubroutineType(types: !868)
!868 = !{!381, !743, !681, !432}
!869 = !{!870, !871, !872, !873, !874, !878, !879, !880}
!870 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 1, scope: !866, file: !699, line: 870, type: !743)
!871 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 2, scope: !866, file: !699, line: 870, type: !681)
!872 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bufsiz", arg: 3, scope: !866, file: !699, line: 870, type: !432)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cpath", scope: !866, file: !699, line: 872, type: !389)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cbuf", scope: !866, file: !699, line: 873, type: !875)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 32768, align: 8, elements: !876)
!876 = !{!877}
!877 = !DISubrange(count: 4096)
!878 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wbuf", scope: !866, file: !699, line: 874, type: !681)
!879 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !866, file: !699, line: 875, type: !381)
!880 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r1", scope: !866, file: !699, line: 876, type: !432)
!881 = !DISubprogram(name: "_Py_wrealpath", scope: !699, file: !699, line: 915, type: !882, isLocal: false, isDefinition: true, scopeLine: 917, flags: DIFlagPrototyped, isOptimized: true, function: i32* (i32*, i32*, i64)* @_Py_wrealpath, variables: !884)
!882 = !DISubroutineType(types: !883)
!883 = !{!681, !743, !681, !432}
!884 = !{!885, !886, !887, !888, !889, !890, !891, !892}
!885 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 1, scope: !881, file: !699, line: 915, type: !743)
!886 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "resolved_path", arg: 2, scope: !881, file: !699, line: 916, type: !681)
!887 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "resolved_path_size", arg: 3, scope: !881, file: !699, line: 916, type: !432)
!888 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cpath", scope: !881, file: !699, line: 918, type: !389)
!889 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cresolved_path", scope: !881, file: !699, line: 919, type: !875)
!890 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wresolved_path", scope: !881, file: !699, line: 920, type: !681)
!891 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !881, file: !699, line: 921, type: !389)
!892 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !881, file: !699, line: 922, type: !432)
!893 = !DISubprogram(name: "_Py_wgetcwd", scope: !699, file: !699, line: 954, type: !894, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, function: i32* (i32*, i64)* @_Py_wgetcwd, variables: !896)
!894 = !DISubroutineType(types: !895)
!895 = !{!681, !681, !432}
!896 = !{!897, !898, !899, !900, !901}
!897 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !893, file: !699, line: 954, type: !681)
!898 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !893, file: !699, line: 954, type: !432)
!899 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fname", scope: !893, file: !699, line: 960, type: !875)
!900 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wname", scope: !893, file: !699, line: 961, type: !681)
!901 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !893, file: !699, line: 962, type: !432)
!902 = !DISubprogram(name: "_Py_dup", scope: !699, file: !699, line: 985, type: !816, isLocal: false, isDefinition: true, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @_Py_dup, variables: !903)
!903 = !{!904, !905}
!904 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !902, file: !699, line: 985, type: !381)
!905 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !906, file: !699, line: 1023, type: !907)
!906 = distinct !DILexicalBlock(scope: !902, file: !699, line: 1023, column: 5)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64, align: 64)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !909, line: 139, baseType: !910)
!909 = !DIFile(filename: "Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !909, line: 69, size: 1536, align: 64, elements: !911)
!911 = !{!912, !914, !915, !935, !938, !939, !940, !941, !942, !943, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !910, file: !909, line: 72, baseType: !913, size: 64, align: 64)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64, align: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !910, file: !909, line: 73, baseType: !913, size: 64, align: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !910, file: !909, line: 74, baseType: !916, size: 64, align: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64, align: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !909, line: 44, baseType: !918)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !909, line: 19, size: 832, align: 64, elements: !919)
!919 = !{!920, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !918, file: !909, line: 21, baseType: !921, size: 64, align: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64, align: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !918, file: !909, line: 22, baseType: !913, size: 64, align: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !918, file: !909, line: 24, baseType: !342, size: 64, align: 64, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !918, file: !909, line: 25, baseType: !342, size: 64, align: 64, offset: 192)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !918, file: !909, line: 26, baseType: !342, size: 64, align: 64, offset: 256)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !918, file: !909, line: 27, baseType: !342, size: 64, align: 64, offset: 320)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !918, file: !909, line: 28, baseType: !342, size: 64, align: 64, offset: 384)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !918, file: !909, line: 30, baseType: !342, size: 64, align: 64, offset: 448)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !918, file: !909, line: 31, baseType: !342, size: 64, align: 64, offset: 512)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !918, file: !909, line: 32, baseType: !342, size: 64, align: 64, offset: 576)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !918, file: !909, line: 33, baseType: !381, size: 32, align: 32, offset: 640)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !918, file: !909, line: 34, baseType: !381, size: 32, align: 32, offset: 672)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !918, file: !909, line: 37, baseType: !381, size: 32, align: 32, offset: 704)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !918, file: !909, line: 43, baseType: !342, size: 64, align: 64, offset: 768)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !910, file: !909, line: 76, baseType: !936, size: 64, align: 64, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64, align: 64)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !909, line: 50, flags: DIFlagFwdDecl)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !910, file: !909, line: 77, baseType: !381, size: 32, align: 32, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !910, file: !909, line: 78, baseType: !368, size: 8, align: 8, offset: 288)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !910, file: !909, line: 80, baseType: !368, size: 8, align: 8, offset: 296)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !910, file: !909, line: 85, baseType: !381, size: 32, align: 32, offset: 320)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !910, file: !909, line: 86, baseType: !381, size: 32, align: 32, offset: 352)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !910, file: !909, line: 88, baseType: !944, size: 64, align: 64, offset: 384)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !909, line: 54, baseType: !945)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64, align: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!381, !342, !936, !381, !342}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !910, file: !909, line: 89, baseType: !944, size: 64, align: 64, offset: 448)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !910, file: !909, line: 90, baseType: !342, size: 64, align: 64, offset: 512)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !910, file: !909, line: 91, baseType: !342, size: 64, align: 64, offset: 576)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !910, file: !909, line: 93, baseType: !342, size: 64, align: 64, offset: 640)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !910, file: !909, line: 94, baseType: !342, size: 64, align: 64, offset: 704)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !910, file: !909, line: 95, baseType: !342, size: 64, align: 64, offset: 768)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !910, file: !909, line: 97, baseType: !342, size: 64, align: 64, offset: 832)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !910, file: !909, line: 98, baseType: !342, size: 64, align: 64, offset: 896)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !910, file: !909, line: 99, baseType: !342, size: 64, align: 64, offset: 960)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !910, file: !909, line: 101, baseType: !342, size: 64, align: 64, offset: 1024)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !910, file: !909, line: 103, baseType: !381, size: 32, align: 32, offset: 1088)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !910, file: !909, line: 105, baseType: !342, size: 64, align: 64, offset: 1152)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !910, file: !909, line: 106, baseType: !354, size: 64, align: 64, offset: 1216)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !910, file: !909, line: 108, baseType: !381, size: 32, align: 32, offset: 1280)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !910, file: !909, line: 109, baseType: !342, size: 64, align: 64, offset: 1344)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !910, file: !909, line: 134, baseType: !668, size: 64, align: 64, offset: 1408)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !910, file: !909, line: 135, baseType: !427, size: 64, align: 64, offset: 1472)
!965 = !DISubprogram(name: "check_force_ascii", scope: !699, file: !699, line: 95, type: !966, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @check_force_ascii, variables: !968)
!966 = !DISubroutineType(types: !967)
!967 = !{!381}
!968 = !{!969, !970, !971, !973, !977, !978, !979, !983, !986, !987, !989, !990, !996, !997, !1001, !1002}
!969 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "loc", scope: !965, file: !699, line: 97, type: !389)
!970 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codeset", scope: !965, file: !699, line: 99, type: !389)
!971 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alias", scope: !965, file: !699, line: 99, type: !972)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!973 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "encoding", scope: !965, file: !699, line: 100, type: !974)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 800, align: 8, elements: !975)
!975 = !{!976}
!976 = !DISubrange(count: 100)
!977 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "is_ascii", scope: !965, file: !699, line: 101, type: !381)
!978 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !965, file: !699, line: 102, type: !679)
!979 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ascii_aliases", scope: !965, file: !699, line: 103, type: !980)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 896, align: 64, elements: !981)
!981 = !{!982}
!982 = !DISubrange(count: 14)
!983 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !984, file: !699, line: 124, type: !432)
!984 = distinct !DILexicalBlock(scope: !985, file: !699, line: 124, column: 24)
!985 = distinct !DILexicalBlock(scope: !965, file: !699, line: 124, column: 9)
!986 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !984, file: !699, line: 124, type: !432)
!987 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !988, file: !699, line: 124, type: !695)
!988 = distinct !DILexicalBlock(scope: !984, file: !699, line: 124, column: 1492)
!989 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !988, file: !699, line: 124, type: !381)
!990 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !991, file: !699, line: 140, type: !432)
!991 = distinct !DILexicalBlock(scope: !992, file: !699, line: 140, column: 28)
!992 = distinct !DILexicalBlock(scope: !993, file: !699, line: 140, column: 13)
!993 = distinct !DILexicalBlock(scope: !994, file: !699, line: 139, column: 62)
!994 = distinct !DILexicalBlock(scope: !995, file: !699, line: 139, column: 5)
!995 = distinct !DILexicalBlock(scope: !965, file: !699, line: 139, column: 5)
!996 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !991, file: !699, line: 140, type: !432)
!997 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !998, file: !699, line: 151, type: !684)
!998 = distinct !DILexicalBlock(scope: !999, file: !699, line: 150, column: 31)
!999 = distinct !DILexicalBlock(scope: !1000, file: !699, line: 150, column: 5)
!1000 = distinct !DILexicalBlock(scope: !965, file: !699, line: 150, column: 5)
!1001 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wch", scope: !998, file: !699, line: 152, type: !682)
!1002 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !998, file: !699, line: 153, type: !432)
!1003 = !DISubprogram(name: "decode_ascii_surrogateescape", scope: !699, file: !699, line: 218, type: !707, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: i32* (i8*, i64*)* @decode_ascii_surrogateescape, variables: !1004)
!1004 = !{!1005, !1006, !1007, !1008, !1009}
!1005 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !1003, file: !699, line: 218, type: !366)
!1006 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !1003, file: !699, line: 218, type: !709)
!1007 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !1003, file: !699, line: 220, type: !681)
!1008 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in", scope: !1003, file: !699, line: 221, type: !683)
!1009 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out", scope: !1003, file: !699, line: 222, type: !681)
!1010 = !DISubprogram(name: "encode_ascii_surrogateescape", scope: !699, file: !699, line: 177, type: !741, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32*, i64*)* @encode_ascii_surrogateescape, variables: !1011)
!1011 = !{!1012, !1013, !1014, !1015, !1016, !1017, !1018}
!1012 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "text", arg: 1, scope: !1010, file: !699, line: 177, type: !743)
!1013 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "error_pos", arg: 2, scope: !1010, file: !699, line: 177, type: !709)
!1014 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !1010, file: !699, line: 179, type: !389)
!1015 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out", scope: !1010, file: !699, line: 179, type: !389)
!1016 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !1010, file: !699, line: 180, type: !432)
!1017 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1010, file: !699, line: 180, type: !432)
!1018 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !1010, file: !699, line: 181, type: !682)
!1019 = !DISubprogram(name: "stat64", scope: !1020, file: !1020, line: 503, type: !1021, isLocal: false, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct.stat64*)* @stat64, variables: !1043)
!1020 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!381, !366, !1023}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64, align: 64)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !765, line: 119, size: 1152, align: 64, elements: !1025)
!1025 = !{!1026, !1027, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1039, !1040, !1041, !1042}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1024, file: !765, line: 121, baseType: !768, size: 64, align: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1024, file: !765, line: 123, baseType: !1028, size: 64, align: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !353, line: 137, baseType: !434)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1024, file: !765, line: 124, baseType: !772, size: 64, align: 64, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1024, file: !765, line: 125, baseType: !774, size: 32, align: 32, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1024, file: !765, line: 132, baseType: !776, size: 32, align: 32, offset: 224)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1024, file: !765, line: 133, baseType: !778, size: 32, align: 32, offset: 256)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1024, file: !765, line: 135, baseType: !381, size: 32, align: 32, offset: 288)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1024, file: !765, line: 136, baseType: !768, size: 64, align: 64, offset: 320)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1024, file: !765, line: 137, baseType: !412, size: 64, align: 64, offset: 384)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1024, file: !765, line: 143, baseType: !783, size: 64, align: 64, offset: 448)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1024, file: !765, line: 144, baseType: !1038, size: 64, align: 64, offset: 512)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !353, line: 168, baseType: !354)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1024, file: !765, line: 152, baseType: !787, size: 128, align: 64, offset: 576)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1024, file: !765, line: 153, baseType: !787, size: 128, align: 64, offset: 704)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1024, file: !765, line: 154, baseType: !787, size: 128, align: 64, offset: 832)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !1024, file: !765, line: 164, baseType: !797, size: 192, align: 64, offset: 960)
!1043 = !{!1044, !1045}
!1044 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__path", arg: 1, scope: !1019, file: !1020, line: 503, type: !366)
!1045 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__statbuf", arg: 2, scope: !1019, file: !1020, line: 503, type: !1023)
!1046 = !DISubprogram(name: "get_inheritable", scope: !699, file: !699, line: 571, type: !1047, isLocal: true, isDefinition: true, scopeLine: 572, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @get_inheritable, variables: !1049)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!381, !381, !381}
!1049 = !{!1050, !1051, !1052}
!1050 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !1046, file: !699, line: 571, type: !381)
!1051 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "raise", arg: 2, scope: !1046, file: !699, line: 571, type: !381)
!1052 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flags", scope: !1046, file: !699, line: 598, type: !381)
!1053 = !DISubprogram(name: "set_inheritable", scope: !699, file: !699, line: 620, type: !1054, isLocal: true, isDefinition: true, scopeLine: 621, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32, i32, i32*)* @set_inheritable, variables: !1056)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!381, !381, !381, !381, !823}
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1062, !1063}
!1057 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !1053, file: !699, line: 620, type: !381)
!1058 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inheritable", arg: 2, scope: !1053, file: !699, line: 620, type: !381)
!1059 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "raise", arg: 3, scope: !1053, file: !699, line: 620, type: !381)
!1060 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atomic_flag_works", arg: 4, scope: !1053, file: !699, line: 620, type: !823)
!1061 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "request", scope: !1053, file: !699, line: 626, type: !381)
!1062 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !1053, file: !699, line: 627, type: !381)
!1063 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inheritable", scope: !1064, file: !699, line: 639, type: !381)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !699, line: 638, column: 39)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !699, line: 638, column: 13)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !699, line: 637, column: 58)
!1067 = distinct !DILexicalBlock(scope: !1053, file: !699, line: 637, column: 9)
!1068 = !DISubprogram(name: "make_non_inheritable", scope: !699, file: !699, line: 712, type: !816, isLocal: true, isDefinition: true, scopeLine: 713, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @make_non_inheritable, variables: !1069)
!1069 = !{!1070}
!1070 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !1068, file: !699, line: 712, type: !381)
!1071 = !{!1072, !1073}
!1072 = !DIGlobalVariable(name: "_Py_open_cloexec_works", scope: !0, file: !699, line: 33, type: !381, isLocal: false, isDefinition: true, variable: i32* @_Py_open_cloexec_works)
!1073 = !DIGlobalVariable(name: "force_ascii", scope: !0, file: !699, line: 92, type: !381, isLocal: true, isDefinition: true, variable: i32* @force_ascii)
!1074 = !{i32 2, !"Dwarf Version", i32 4}
!1075 = !{i32 2, !"Debug Info Version", i32 3}
!1076 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!1077 = !{!1078, !1078, i64 0}
!1078 = !{!"int", !1079, i64 0}
!1079 = !{!"omnipotent char", !1080, i64 0}
!1080 = !{!"Simple C/C++ TBAA"}
!1081 = !DIExpression()
!1082 = !DILocation(line: 37, column: 25, scope: !698)
!1083 = !DILocation(line: 42, column: 25, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !698, file: !699, line: 42, column: 9)
!1085 = !DILocation(line: 42, column: 18, scope: !1084)
!1086 = !DILocation(line: 42, column: 9, scope: !698)
!1087 = !DILocation(line: 43, column: 62, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !699, line: 42, column: 30)
!1089 = !{!1090, !1091, i64 0}
!1090 = !{!"_object", !1091, i64 0, !1092, i64 8}
!1091 = !{!"long", !1079, i64 0}
!1092 = !{!"any pointer", !1079, i64 0}
!1093 = !DILocation(line: 43, column: 9, scope: !1088)
!1094 = !DILocation(line: 58, column: 9, scope: !705)
!1095 = !DILocation(line: 58, column: 15, scope: !705)
!1096 = !DILocation(line: 58, column: 25, scope: !705)
!1097 = !{!1092, !1092, i64 0}
!1098 = !DILocation(line: 59, column: 13, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !705, file: !699, line: 59, column: 13)
!1100 = !DILocation(line: 59, column: 21, scope: !1099)
!1101 = !DILocation(line: 59, column: 35, scope: !1099)
!1102 = !DILocation(line: 59, column: 38, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1099, file: !699, discriminator: 1)
!1104 = !{!1079, !1079, i64 0}
!1105 = !DILocation(line: 59, column: 49, scope: !1099)
!1106 = !DILocation(line: 59, column: 13, scope: !705)
!1107 = !DILocation(line: 60, column: 41, scope: !1099)
!1108 = !DILocation(line: 60, column: 20, scope: !1099)
!1109 = !DILocation(line: 60, column: 13, scope: !1099)
!1110 = !DILocation(line: 61, column: 5, scope: !698)
!1111 = !DILocation(line: 61, column: 5, scope: !1112)
!1112 = !DILexicalBlockFile(scope: !698, file: !699, discriminator: 1)
!1113 = !DILocation(line: 63, column: 58, scope: !698)
!1114 = !DILocation(line: 63, column: 5, scope: !698)
!1115 = !DILocation(line: 64, column: 1, scope: !698)
!1116 = !DILocation(line: 261, column: 28, scope: !706)
!1117 = !DILocation(line: 261, column: 41, scope: !706)
!1118 = !DILocation(line: 274, column: 5, scope: !706)
!1119 = !DILocation(line: 274, column: 14, scope: !706)
!1120 = !DILocation(line: 275, column: 5, scope: !706)
!1121 = !DILocation(line: 275, column: 12, scope: !706)
!1122 = !DILocation(line: 276, column: 5, scope: !706)
!1123 = !DILocation(line: 276, column: 12, scope: !706)
!1124 = !DILocation(line: 278, column: 5, scope: !706)
!1125 = !DILocation(line: 278, column: 20, scope: !706)
!1126 = !DILocation(line: 279, column: 5, scope: !706)
!1127 = !DILocation(line: 279, column: 14, scope: !706)
!1128 = !DILocation(line: 280, column: 5, scope: !706)
!1129 = !DILocation(line: 280, column: 15, scope: !706)
!1130 = !DILocation(line: 284, column: 9, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !706, file: !699, line: 284, column: 9)
!1132 = !DILocation(line: 284, column: 21, scope: !1131)
!1133 = !DILocation(line: 284, column: 9, scope: !706)
!1134 = !DILocation(line: 285, column: 23, scope: !1131)
!1135 = !DILocation(line: 285, column: 21, scope: !1131)
!1136 = !DILocation(line: 285, column: 9, scope: !1131)
!1137 = !DILocation(line: 287, column: 9, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !706, file: !699, line: 287, column: 9)
!1139 = !DILocation(line: 287, column: 9, scope: !706)
!1140 = !DILocation(line: 289, column: 44, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1138, file: !699, line: 287, column: 22)
!1142 = !DILocation(line: 289, column: 49, scope: !1141)
!1143 = !DILocation(line: 289, column: 15, scope: !1141)
!1144 = !DILocation(line: 289, column: 13, scope: !1141)
!1145 = !DILocation(line: 290, column: 13, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1141, file: !699, line: 290, column: 13)
!1147 = !DILocation(line: 290, column: 17, scope: !1146)
!1148 = !DILocation(line: 290, column: 13, scope: !1141)
!1149 = !DILocation(line: 291, column: 13, scope: !1146)
!1150 = !DILocation(line: 292, column: 16, scope: !1141)
!1151 = !DILocation(line: 292, column: 9, scope: !1141)
!1152 = !DILocation(line: 303, column: 36, scope: !706)
!1153 = !DILocation(line: 303, column: 15, scope: !706)
!1154 = !DILocation(line: 303, column: 13, scope: !706)
!1155 = !{!1091, !1091, i64 0}
!1156 = !DILocation(line: 305, column: 9, scope: !737)
!1157 = !DILocation(line: 305, column: 17, scope: !737)
!1158 = !DILocation(line: 305, column: 9, scope: !706)
!1159 = !DILocation(line: 306, column: 43, scope: !736)
!1160 = !DILocation(line: 306, column: 50, scope: !736)
!1161 = !DILocation(line: 306, column: 53, scope: !736)
!1162 = !DILocation(line: 306, column: 26, scope: !736)
!1163 = !DILocation(line: 306, column: 15, scope: !736)
!1164 = !DILocation(line: 306, column: 13, scope: !736)
!1165 = !DILocation(line: 307, column: 14, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !736, file: !699, line: 307, column: 13)
!1167 = !DILocation(line: 307, column: 13, scope: !736)
!1168 = !DILocation(line: 308, column: 13, scope: !1166)
!1169 = !DILocation(line: 309, column: 26, scope: !736)
!1170 = !DILocation(line: 309, column: 31, scope: !736)
!1171 = !DILocation(line: 309, column: 36, scope: !736)
!1172 = !DILocation(line: 309, column: 43, scope: !736)
!1173 = !DILocation(line: 309, column: 17, scope: !736)
!1174 = !DILocation(line: 309, column: 15, scope: !736)
!1175 = !DILocation(line: 310, column: 13, scope: !735)
!1176 = !DILocation(line: 310, column: 19, scope: !735)
!1177 = !DILocation(line: 310, column: 13, scope: !736)
!1178 = !DILocation(line: 311, column: 13, scope: !734)
!1179 = !DILocation(line: 311, column: 22, scope: !734)
!1180 = !DILocation(line: 314, column: 24, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !734, file: !699, line: 314, column: 13)
!1182 = !DILocation(line: 314, column: 22, scope: !1181)
!1183 = !DILocation(line: 314, column: 18, scope: !1181)
!1184 = !DILocation(line: 314, column: 30, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1186, file: !699, discriminator: 4)
!1186 = !DILexicalBlockFile(scope: !1187, file: !699, discriminator: 1)
!1187 = distinct !DILexicalBlock(scope: !1181, file: !699, line: 314, column: 13)
!1188 = !DILocation(line: 314, column: 29, scope: !1187)
!1189 = !DILocation(line: 314, column: 34, scope: !1187)
!1190 = !DILocation(line: 314, column: 39, scope: !1187)
!1191 = !DILocation(line: 315, column: 40, scope: !1187)
!1192 = !DILocation(line: 315, column: 39, scope: !1187)
!1193 = !DILocation(line: 315, column: 35, scope: !1187)
!1194 = !DILocation(line: 315, column: 45, scope: !1187)
!1195 = !DILocation(line: 315, column: 50, scope: !1186)
!1196 = !DILocation(line: 315, column: 49, scope: !1187)
!1197 = !DILocation(line: 315, column: 55, scope: !1187)
!1198 = !DILocation(line: 315, column: 26, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !1187, file: !699, discriminator: 2)
!1200 = !DILocation(line: 314, column: 13, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !1181, file: !699, discriminator: 2)
!1202 = !DILocation(line: 314, column: 13, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1181, file: !699, discriminator: 3)
!1204 = !DILocation(line: 315, column: 70, scope: !1187)
!1205 = !DILocation(line: 314, column: 13, scope: !1187)
!1206 = !DILocation(line: 317, column: 18, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !734, file: !699, line: 317, column: 17)
!1208 = !DILocation(line: 317, column: 17, scope: !1207)
!1209 = !DILocation(line: 317, column: 22, scope: !1207)
!1210 = !DILocation(line: 317, column: 17, scope: !734)
!1211 = !DILocation(line: 318, column: 21, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !699, line: 318, column: 21)
!1213 = distinct !DILexicalBlock(scope: !1207, file: !699, line: 317, column: 28)
!1214 = !DILocation(line: 318, column: 26, scope: !1212)
!1215 = !DILocation(line: 318, column: 21, scope: !1213)
!1216 = !DILocation(line: 319, column: 29, scope: !1212)
!1217 = !DILocation(line: 319, column: 22, scope: !1212)
!1218 = !DILocation(line: 319, column: 27, scope: !1212)
!1219 = !DILocation(line: 319, column: 21, scope: !1212)
!1220 = !DILocation(line: 320, column: 24, scope: !1213)
!1221 = !DILocation(line: 320, column: 17, scope: !1213)
!1222 = !DILocation(line: 322, column: 9, scope: !735)
!1223 = !DILocation(line: 322, column: 9, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !735, file: !699, discriminator: 1)
!1225 = !DILocation(line: 322, column: 9, scope: !734)
!1226 = !DILocation(line: 323, column: 23, scope: !736)
!1227 = !DILocation(line: 323, column: 9, scope: !736)
!1228 = !DILocation(line: 324, column: 5, scope: !736)
!1229 = !DILocation(line: 331, column: 22, scope: !706)
!1230 = !DILocation(line: 331, column: 15, scope: !706)
!1231 = !DILocation(line: 331, column: 27, scope: !706)
!1232 = !DILocation(line: 331, column: 13, scope: !706)
!1233 = !DILocation(line: 332, column: 37, scope: !706)
!1234 = !DILocation(line: 332, column: 44, scope: !706)
!1235 = !DILocation(line: 332, column: 21, scope: !706)
!1236 = !DILocation(line: 332, column: 11, scope: !706)
!1237 = !DILocation(line: 332, column: 9, scope: !706)
!1238 = !DILocation(line: 333, column: 10, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !706, file: !699, line: 333, column: 9)
!1240 = !DILocation(line: 333, column: 9, scope: !706)
!1241 = !DILocation(line: 334, column: 9, scope: !1239)
!1242 = !DILocation(line: 335, column: 26, scope: !706)
!1243 = !DILocation(line: 335, column: 8, scope: !706)
!1244 = !DILocation(line: 336, column: 11, scope: !706)
!1245 = !DILocation(line: 336, column: 9, scope: !706)
!1246 = !DILocation(line: 337, column: 5, scope: !706)
!1247 = !DILocation(line: 338, column: 5, scope: !706)
!1248 = !DILocation(line: 338, column: 12, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !1250, file: !699, discriminator: 2)
!1250 = !DILexicalBlockFile(scope: !706, file: !699, discriminator: 1)
!1251 = !DILocation(line: 339, column: 9, scope: !739)
!1252 = !DILocation(line: 339, column: 16, scope: !739)
!1253 = !DILocation(line: 339, column: 36, scope: !739)
!1254 = !DILocation(line: 339, column: 48, scope: !739)
!1255 = !DILocation(line: 339, column: 52, scope: !739)
!1256 = !DILocation(line: 339, column: 28, scope: !739)
!1257 = !DILocation(line: 340, column: 13, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !739, file: !699, line: 340, column: 13)
!1259 = !DILocation(line: 340, column: 23, scope: !1258)
!1260 = !DILocation(line: 340, column: 13, scope: !739)
!1261 = !DILocation(line: 342, column: 13, scope: !1258)
!1262 = !DILocation(line: 343, column: 13, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !739, file: !699, line: 343, column: 13)
!1264 = !DILocation(line: 343, column: 23, scope: !1263)
!1265 = !DILocation(line: 343, column: 13, scope: !739)
!1266 = !DILocation(line: 348, column: 27, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1263, file: !699, line: 343, column: 38)
!1268 = !DILocation(line: 348, column: 13, scope: !1267)
!1269 = !DILocation(line: 349, column: 17, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1267, file: !699, line: 349, column: 17)
!1271 = !DILocation(line: 349, column: 22, scope: !1270)
!1272 = !DILocation(line: 349, column: 17, scope: !1267)
!1273 = !DILocation(line: 350, column: 18, scope: !1270)
!1274 = !DILocation(line: 350, column: 23, scope: !1270)
!1275 = !DILocation(line: 350, column: 17, scope: !1270)
!1276 = !DILocation(line: 351, column: 13, scope: !1267)
!1277 = !DILocation(line: 353, column: 13, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !739, file: !699, line: 353, column: 13)
!1279 = !DILocation(line: 353, column: 23, scope: !1278)
!1280 = !DILocation(line: 353, column: 13, scope: !739)
!1281 = !DILocation(line: 356, column: 34, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1278, file: !699, line: 353, column: 38)
!1283 = !DILocation(line: 356, column: 31, scope: !1282)
!1284 = !DILocation(line: 356, column: 29, scope: !1282)
!1285 = !DILocation(line: 356, column: 17, scope: !1282)
!1286 = !DILocation(line: 356, column: 20, scope: !1282)
!1287 = !DILocation(line: 357, column: 20, scope: !1282)
!1288 = !DILocation(line: 358, column: 13, scope: !1282)
!1289 = !DILocation(line: 359, column: 13, scope: !1282)
!1290 = !DILocation(line: 361, column: 26, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !739, file: !699, line: 361, column: 13)
!1292 = !DILocation(line: 361, column: 25, scope: !1291)
!1293 = !DILocation(line: 361, column: 21, scope: !1291)
!1294 = !DILocation(line: 361, column: 31, scope: !1291)
!1295 = !DILocation(line: 361, column: 36, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1291, file: !699, discriminator: 1)
!1297 = !DILocation(line: 361, column: 35, scope: !1291)
!1298 = !DILocation(line: 361, column: 41, scope: !1291)
!1299 = !DILocation(line: 361, column: 13, scope: !739)
!1300 = !DILocation(line: 364, column: 24, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1291, file: !699, line: 361, column: 53)
!1302 = !DILocation(line: 364, column: 21, scope: !1301)
!1303 = !DILocation(line: 365, column: 13, scope: !1301)
!1304 = !DILocation(line: 365, column: 29, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1306, file: !699, discriminator: 2)
!1306 = !DILexicalBlockFile(scope: !1301, file: !699, discriminator: 1)
!1307 = !DILocation(line: 366, column: 38, scope: !1301)
!1308 = !DILocation(line: 366, column: 35, scope: !1301)
!1309 = !DILocation(line: 366, column: 33, scope: !1301)
!1310 = !DILocation(line: 366, column: 21, scope: !1301)
!1311 = !DILocation(line: 366, column: 24, scope: !1301)
!1312 = !DILocation(line: 367, column: 13, scope: !1301)
!1313 = !DILocation(line: 370, column: 15, scope: !739)
!1314 = !DILocation(line: 370, column: 12, scope: !739)
!1315 = !DILocation(line: 371, column: 20, scope: !739)
!1316 = !DILocation(line: 371, column: 17, scope: !739)
!1317 = !DILocation(line: 372, column: 12, scope: !739)
!1318 = !DILocation(line: 373, column: 5, scope: !706)
!1319 = !DILocation(line: 373, column: 5, scope: !1250)
!1320 = !DILocation(line: 374, column: 9, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !706, file: !699, line: 374, column: 9)
!1322 = !DILocation(line: 374, column: 14, scope: !1321)
!1323 = !DILocation(line: 374, column: 9, scope: !706)
!1324 = !DILocation(line: 375, column: 17, scope: !1321)
!1325 = !DILocation(line: 375, column: 23, scope: !1321)
!1326 = !DILocation(line: 375, column: 21, scope: !1321)
!1327 = !DILocation(line: 375, column: 10, scope: !1321)
!1328 = !DILocation(line: 375, column: 15, scope: !1321)
!1329 = !DILocation(line: 375, column: 9, scope: !1321)
!1330 = !DILocation(line: 384, column: 12, scope: !706)
!1331 = !DILocation(line: 384, column: 5, scope: !706)
!1332 = !DILocation(line: 386, column: 9, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !706, file: !699, line: 386, column: 9)
!1334 = !DILocation(line: 386, column: 14, scope: !1333)
!1335 = !DILocation(line: 386, column: 9, scope: !706)
!1336 = !DILocation(line: 387, column: 10, scope: !1333)
!1337 = !DILocation(line: 387, column: 15, scope: !1333)
!1338 = !DILocation(line: 387, column: 9, scope: !1333)
!1339 = !DILocation(line: 388, column: 5, scope: !706)
!1340 = !DILocation(line: 390, column: 1, scope: !706)
!1341 = !DILocation(line: 97, column: 5, scope: !965)
!1342 = !DILocation(line: 97, column: 11, scope: !965)
!1343 = !DILocation(line: 99, column: 5, scope: !965)
!1344 = !DILocation(line: 99, column: 11, scope: !965)
!1345 = !DILocation(line: 99, column: 22, scope: !965)
!1346 = !DILocation(line: 100, column: 5, scope: !965)
!1347 = !DILocation(line: 100, column: 10, scope: !965)
!1348 = !DILocation(line: 101, column: 5, scope: !965)
!1349 = !DILocation(line: 101, column: 9, scope: !965)
!1350 = !DILocation(line: 102, column: 5, scope: !965)
!1351 = !DILocation(line: 102, column: 18, scope: !965)
!1352 = !DILocation(line: 103, column: 5, scope: !965)
!1353 = !DILocation(line: 103, column: 11, scope: !965)
!1354 = !DILocation(line: 121, column: 11, scope: !965)
!1355 = !DILocation(line: 121, column: 9, scope: !965)
!1356 = !DILocation(line: 122, column: 9, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !965, file: !699, line: 122, column: 9)
!1358 = !DILocation(line: 122, column: 13, scope: !1357)
!1359 = !DILocation(line: 122, column: 9, scope: !965)
!1360 = !DILocation(line: 123, column: 9, scope: !1357)
!1361 = !DILocation(line: 124, column: 26, scope: !984)
!1362 = !DILocation(line: 124, column: 33, scope: !984)
!1363 = !DILocation(line: 124, column: 43, scope: !984)
!1364 = !DILocation(line: 124, column: 1297, scope: !984)
!1365 = !DILocation(line: 124, column: 1310, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !984, file: !699, discriminator: 1)
!1367 = !DILocation(line: 124, column: 1326, scope: !984)
!1368 = !DILocation(line: 124, column: 1335, scope: !984)
!1369 = !DILocation(line: 124, column: 1196, scope: !984)
!1370 = !DILocation(line: 124, column: 1494, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !988, file: !699, discriminator: 3)
!1372 = !DILocation(line: 124, column: 1515, scope: !988)
!1373 = !DILocation(line: 124, column: 1562, scope: !988)
!1374 = !DILocation(line: 124, column: 1568, scope: !988)
!1375 = !DILocation(line: 124, column: 1581, scope: !988)
!1376 = !DILocation(line: 124, column: 1592, scope: !988)
!1377 = !DILocation(line: 124, column: 1602, scope: !988)
!1378 = !DILocation(line: 124, column: 1600, scope: !988)
!1379 = !DILocation(line: 124, column: 1657, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !988, file: !699, line: 124, column: 1657)
!1381 = !DILocation(line: 124, column: 1666, scope: !1380)
!1382 = !DILocation(line: 124, column: 1670, scope: !1380)
!1383 = !DILocation(line: 124, column: 1673, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !1380, file: !699, discriminator: 5)
!1385 = !DILocation(line: 124, column: 1682, scope: !1380)
!1386 = !DILocation(line: 124, column: 1657, scope: !988)
!1387 = !DILocation(line: 124, column: 1702, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !1389, file: !699, discriminator: 7)
!1389 = distinct !DILexicalBlock(scope: !1380, file: !699, line: 124, column: 1688)
!1390 = !DILocation(line: 124, column: 1712, scope: !1389)
!1391 = !DILocation(line: 124, column: 1710, scope: !1389)
!1392 = !DILocation(line: 124, column: 1699, scope: !1389)
!1393 = !DILocation(line: 124, column: 1768, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1389, file: !699, line: 124, column: 1768)
!1395 = !DILocation(line: 124, column: 1777, scope: !1394)
!1396 = !DILocation(line: 124, column: 1781, scope: !1394)
!1397 = !DILocation(line: 124, column: 1784, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !1394, file: !699, discriminator: 9)
!1399 = !DILocation(line: 124, column: 1793, scope: !1394)
!1400 = !DILocation(line: 124, column: 1768, scope: !1389)
!1401 = !DILocation(line: 124, column: 1813, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !1403, file: !699, discriminator: 11)
!1403 = distinct !DILexicalBlock(scope: !1394, file: !699, line: 124, column: 1799)
!1404 = !DILocation(line: 124, column: 1823, scope: !1403)
!1405 = !DILocation(line: 124, column: 1821, scope: !1403)
!1406 = !DILocation(line: 124, column: 1810, scope: !1403)
!1407 = !DILocation(line: 124, column: 1879, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1403, file: !699, line: 124, column: 1879)
!1409 = !DILocation(line: 124, column: 1888, scope: !1408)
!1410 = !DILocation(line: 124, column: 1892, scope: !1408)
!1411 = !DILocation(line: 124, column: 1895, scope: !1412)
!1412 = !DILexicalBlockFile(scope: !1408, file: !699, discriminator: 13)
!1413 = !DILocation(line: 124, column: 1904, scope: !1408)
!1414 = !DILocation(line: 124, column: 1879, scope: !1403)
!1415 = !DILocation(line: 124, column: 1922, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1408, file: !699, discriminator: 15)
!1417 = !DILocation(line: 124, column: 1932, scope: !1408)
!1418 = !DILocation(line: 124, column: 1930, scope: !1408)
!1419 = !DILocation(line: 124, column: 1919, scope: !1408)
!1420 = !DILocation(line: 124, column: 1910, scope: !1408)
!1421 = !DILocation(line: 124, column: 1984, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1423, file: !699, discriminator: 17)
!1423 = !DILexicalBlockFile(scope: !1424, file: !699, discriminator: 16)
!1424 = !DILexicalBlockFile(scope: !1403, file: !699, discriminator: 14)
!1425 = !DILocation(line: 124, column: 1986, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1427, file: !699, discriminator: 18)
!1427 = !DILexicalBlockFile(scope: !1428, file: !699, discriminator: 12)
!1428 = !DILexicalBlockFile(scope: !1389, file: !699, discriminator: 10)
!1429 = !DILocation(line: 124, column: 1988, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !1431, file: !699, discriminator: 19)
!1431 = !DILexicalBlockFile(scope: !1432, file: !699, discriminator: 8)
!1432 = !DILexicalBlockFile(scope: !988, file: !699, discriminator: 6)
!1433 = !DILocation(line: 124, column: 1685, scope: !1380)
!1434 = !DILocation(line: 124, column: 1998, scope: !984)
!1435 = !DILocation(line: 124, column: 1998, scope: !988)
!1436 = !DILocation(line: 124, column: 2023, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1438, file: !699, discriminator: 4)
!1438 = !DILexicalBlockFile(scope: !984, file: !699, discriminator: 2)
!1439 = !DILocation(line: 124, column: 2005, scope: !984)
!1440 = !DILocation(line: 124, column: 26, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1442, file: !699, discriminator: 21)
!1442 = !DILexicalBlockFile(scope: !984, file: !699, discriminator: 20)
!1443 = !DILocation(line: 124, column: 2037, scope: !985)
!1444 = !DILocation(line: 124, column: 2037, scope: !984)
!1445 = !DILocation(line: 124, column: 2040, scope: !985)
!1446 = !DILocation(line: 124, column: 9, scope: !965)
!1447 = !DILocation(line: 126, column: 9, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !985, file: !699, line: 124, column: 2046)
!1449 = !DILocation(line: 130, column: 15, scope: !965)
!1450 = !DILocation(line: 130, column: 13, scope: !965)
!1451 = !DILocation(line: 131, column: 10, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !965, file: !699, line: 131, column: 9)
!1453 = !DILocation(line: 131, column: 18, scope: !1452)
!1454 = !DILocation(line: 131, column: 21, scope: !1455)
!1455 = !DILexicalBlockFile(scope: !1452, file: !699, discriminator: 1)
!1456 = !DILocation(line: 131, column: 32, scope: !1452)
!1457 = !DILocation(line: 131, column: 9, scope: !965)
!1458 = !DILocation(line: 133, column: 9, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1452, file: !699, line: 131, column: 41)
!1460 = !DILocation(line: 135, column: 33, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !965, file: !699, line: 135, column: 9)
!1462 = !DILocation(line: 135, column: 42, scope: !1461)
!1463 = !DILocation(line: 135, column: 10, scope: !1461)
!1464 = !DILocation(line: 135, column: 9, scope: !965)
!1465 = !DILocation(line: 136, column: 9, scope: !1461)
!1466 = !DILocation(line: 138, column: 14, scope: !965)
!1467 = !DILocation(line: 139, column: 16, scope: !995)
!1468 = !DILocation(line: 139, column: 15, scope: !995)
!1469 = !DILocation(line: 139, column: 10, scope: !995)
!1470 = !DILocation(line: 139, column: 32, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !1472, file: !699, discriminator: 2)
!1472 = !DILexicalBlockFile(scope: !994, file: !699, discriminator: 1)
!1473 = !DILocation(line: 139, column: 31, scope: !994)
!1474 = !DILocation(line: 139, column: 38, scope: !994)
!1475 = !DILocation(line: 139, column: 5, scope: !995)
!1476 = !DILocation(line: 140, column: 30, scope: !991)
!1477 = !DILocation(line: 140, column: 37, scope: !991)
!1478 = !DILocation(line: 140, column: 47, scope: !991)
!1479 = !DILocation(line: 140, column: 2179, scope: !991)
!1480 = !DILocation(line: 140, column: 2190, scope: !991)
!1481 = !DILocation(line: 140, column: 2189, scope: !991)
!1482 = !DILocation(line: 140, column: 2161, scope: !991)
!1483 = !DILocation(line: 140, column: 2201, scope: !992)
!1484 = !DILocation(line: 140, column: 2201, scope: !991)
!1485 = !DILocation(line: 140, column: 2204, scope: !992)
!1486 = !DILocation(line: 140, column: 13, scope: !993)
!1487 = !DILocation(line: 141, column: 22, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !992, file: !699, line: 140, column: 2210)
!1489 = !DILocation(line: 142, column: 13, scope: !1488)
!1490 = !DILocation(line: 144, column: 5, scope: !993)
!1491 = !DILocation(line: 139, column: 58, scope: !994)
!1492 = !DILocation(line: 139, column: 5, scope: !994)
!1493 = !DILocation(line: 145, column: 10, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !965, file: !699, line: 145, column: 9)
!1495 = !DILocation(line: 145, column: 9, scope: !965)
!1496 = !DILocation(line: 147, column: 9, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1494, file: !699, line: 145, column: 20)
!1498 = !DILocation(line: 150, column: 11, scope: !1000)
!1499 = !DILocation(line: 150, column: 10, scope: !1000)
!1500 = !DILocation(line: 150, column: 18, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1502, file: !699, discriminator: 2)
!1502 = !DILexicalBlockFile(scope: !999, file: !699, discriminator: 1)
!1503 = !DILocation(line: 150, column: 19, scope: !999)
!1504 = !DILocation(line: 150, column: 5, scope: !1000)
!1505 = !DILocation(line: 151, column: 9, scope: !998)
!1506 = !DILocation(line: 151, column: 23, scope: !998)
!1507 = !DILocation(line: 152, column: 9, scope: !998)
!1508 = !DILocation(line: 152, column: 17, scope: !998)
!1509 = !DILocation(line: 153, column: 9, scope: !998)
!1510 = !DILocation(line: 153, column: 16, scope: !998)
!1511 = !DILocation(line: 155, column: 29, scope: !998)
!1512 = !DILocation(line: 155, column: 14, scope: !998)
!1513 = !DILocation(line: 155, column: 12, scope: !998)
!1514 = !DILocation(line: 156, column: 15, scope: !998)
!1515 = !DILocation(line: 156, column: 13, scope: !998)
!1516 = !DILocation(line: 157, column: 13, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !998, file: !699, line: 157, column: 13)
!1518 = !DILocation(line: 157, column: 17, scope: !1517)
!1519 = !DILocation(line: 157, column: 13, scope: !998)
!1520 = !DILocation(line: 160, column: 13, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1517, file: !699, line: 157, column: 32)
!1522 = !DILocation(line: 162, column: 5, scope: !999)
!1523 = !DILocation(line: 162, column: 5, scope: !1502)
!1524 = !DILocation(line: 162, column: 5, scope: !998)
!1525 = !DILocation(line: 150, column: 27, scope: !999)
!1526 = !DILocation(line: 150, column: 5, scope: !999)
!1527 = !DILocation(line: 165, column: 5, scope: !965)
!1528 = !DILocation(line: 173, column: 5, scope: !965)
!1529 = !DILocation(line: 174, column: 1, scope: !965)
!1530 = !DILocation(line: 218, column: 42, scope: !1003)
!1531 = !DILocation(line: 218, column: 55, scope: !1003)
!1532 = !DILocation(line: 220, column: 5, scope: !1003)
!1533 = !DILocation(line: 220, column: 14, scope: !1003)
!1534 = !DILocation(line: 221, column: 5, scope: !1003)
!1535 = !DILocation(line: 221, column: 20, scope: !1003)
!1536 = !DILocation(line: 222, column: 5, scope: !1003)
!1537 = !DILocation(line: 222, column: 14, scope: !1003)
!1538 = !DILocation(line: 224, column: 35, scope: !1003)
!1539 = !DILocation(line: 224, column: 28, scope: !1003)
!1540 = !DILocation(line: 224, column: 39, scope: !1003)
!1541 = !DILocation(line: 224, column: 42, scope: !1003)
!1542 = !DILocation(line: 224, column: 11, scope: !1003)
!1543 = !DILocation(line: 224, column: 9, scope: !1003)
!1544 = !DILocation(line: 225, column: 10, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1003, file: !699, line: 225, column: 9)
!1546 = !DILocation(line: 225, column: 9, scope: !1003)
!1547 = !DILocation(line: 226, column: 9, scope: !1545)
!1548 = !DILocation(line: 228, column: 26, scope: !1003)
!1549 = !DILocation(line: 228, column: 8, scope: !1003)
!1550 = !DILocation(line: 229, column: 11, scope: !1003)
!1551 = !DILocation(line: 229, column: 9, scope: !1003)
!1552 = !DILocation(line: 230, column: 5, scope: !1003)
!1553 = !DILocation(line: 230, column: 12, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1555, file: !699, discriminator: 2)
!1555 = !DILexicalBlockFile(scope: !1003, file: !699, discriminator: 1)
!1556 = !DILocation(line: 230, column: 11, scope: !1003)
!1557 = !DILocation(line: 231, column: 13, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1003, file: !699, line: 231, column: 12)
!1559 = !DILocation(line: 231, column: 12, scope: !1558)
!1560 = !DILocation(line: 231, column: 16, scope: !1558)
!1561 = !DILocation(line: 231, column: 12, scope: !1003)
!1562 = !DILocation(line: 232, column: 25, scope: !1558)
!1563 = !DILocation(line: 232, column: 22, scope: !1558)
!1564 = !DILocation(line: 232, column: 17, scope: !1558)
!1565 = !DILocation(line: 232, column: 20, scope: !1558)
!1566 = !DILocation(line: 232, column: 13, scope: !1558)
!1567 = !DILocation(line: 234, column: 34, scope: !1558)
!1568 = !DILocation(line: 234, column: 31, scope: !1558)
!1569 = !DILocation(line: 234, column: 29, scope: !1558)
!1570 = !DILocation(line: 234, column: 17, scope: !1558)
!1571 = !DILocation(line: 234, column: 20, scope: !1558)
!1572 = !DILocation(line: 235, column: 6, scope: !1003)
!1573 = !DILocation(line: 235, column: 10, scope: !1003)
!1574 = !DILocation(line: 236, column: 9, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1003, file: !699, line: 236, column: 9)
!1576 = !DILocation(line: 236, column: 14, scope: !1575)
!1577 = !DILocation(line: 236, column: 9, scope: !1003)
!1578 = !DILocation(line: 237, column: 17, scope: !1575)
!1579 = !DILocation(line: 237, column: 23, scope: !1575)
!1580 = !DILocation(line: 237, column: 21, scope: !1575)
!1581 = !DILocation(line: 237, column: 10, scope: !1575)
!1582 = !DILocation(line: 237, column: 15, scope: !1575)
!1583 = !DILocation(line: 237, column: 9, scope: !1575)
!1584 = !DILocation(line: 238, column: 12, scope: !1003)
!1585 = !DILocation(line: 238, column: 5, scope: !1003)
!1586 = !DILocation(line: 239, column: 1, scope: !1003)
!1587 = !DILocation(line: 404, column: 31, scope: !740)
!1588 = !DILocation(line: 404, column: 45, scope: !740)
!1589 = !DILocation(line: 437, column: 5, scope: !740)
!1590 = !DILocation(line: 437, column: 18, scope: !740)
!1591 = !DILocation(line: 437, column: 31, scope: !740)
!1592 = !DILocation(line: 437, column: 24, scope: !740)
!1593 = !DILocation(line: 438, column: 5, scope: !740)
!1594 = !DILocation(line: 438, column: 11, scope: !740)
!1595 = !DILocation(line: 438, column: 33, scope: !740)
!1596 = !DILocation(line: 439, column: 5, scope: !740)
!1597 = !DILocation(line: 439, column: 12, scope: !740)
!1598 = !DILocation(line: 439, column: 15, scope: !740)
!1599 = !DILocation(line: 439, column: 21, scope: !740)
!1600 = !DILocation(line: 440, column: 5, scope: !740)
!1601 = !DILocation(line: 440, column: 13, scope: !740)
!1602 = !DILocation(line: 440, column: 16, scope: !740)
!1603 = !DILocation(line: 443, column: 9, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !740, file: !699, line: 443, column: 9)
!1605 = !DILocation(line: 443, column: 21, scope: !1604)
!1606 = !DILocation(line: 443, column: 9, scope: !740)
!1607 = !DILocation(line: 444, column: 23, scope: !1604)
!1608 = !DILocation(line: 444, column: 21, scope: !1604)
!1609 = !DILocation(line: 444, column: 9, scope: !1604)
!1610 = !DILocation(line: 446, column: 9, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !740, file: !699, line: 446, column: 9)
!1612 = !DILocation(line: 446, column: 9, scope: !740)
!1613 = !DILocation(line: 447, column: 45, scope: !1611)
!1614 = !DILocation(line: 447, column: 51, scope: !1611)
!1615 = !DILocation(line: 447, column: 16, scope: !1611)
!1616 = !DILocation(line: 447, column: 9, scope: !1611)
!1617 = !DILocation(line: 453, column: 10, scope: !740)
!1618 = !DILocation(line: 454, column: 5, scope: !740)
!1619 = !DILocation(line: 454, column: 12, scope: !740)
!1620 = !DILocation(line: 455, column: 5, scope: !740)
!1621 = !DILocation(line: 455, column: 5, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1623, file: !699, discriminator: 2)
!1623 = !DILexicalBlockFile(scope: !740, file: !699, discriminator: 1)
!1624 = !DILocation(line: 456, column: 15, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !699, line: 456, column: 9)
!1626 = distinct !DILexicalBlock(scope: !740, file: !699, line: 455, column: 15)
!1627 = !DILocation(line: 456, column: 14, scope: !1625)
!1628 = !DILocation(line: 456, column: 19, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1630, file: !699, discriminator: 2)
!1630 = !DILexicalBlockFile(scope: !1631, file: !699, discriminator: 1)
!1631 = distinct !DILexicalBlock(scope: !1625, file: !699, line: 456, column: 9)
!1632 = !DILocation(line: 456, column: 23, scope: !1631)
!1633 = !DILocation(line: 456, column: 21, scope: !1631)
!1634 = !DILocation(line: 456, column: 9, scope: !1625)
!1635 = !DILocation(line: 457, column: 22, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1631, file: !699, line: 456, column: 33)
!1637 = !DILocation(line: 457, column: 17, scope: !1636)
!1638 = !DILocation(line: 457, column: 15, scope: !1636)
!1639 = !DILocation(line: 458, column: 17, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1636, file: !699, line: 458, column: 17)
!1641 = !DILocation(line: 458, column: 19, scope: !1640)
!1642 = !DILocation(line: 458, column: 29, scope: !1640)
!1643 = !DILocation(line: 458, column: 32, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1640, file: !699, discriminator: 1)
!1645 = !DILocation(line: 458, column: 34, scope: !1640)
!1646 = !DILocation(line: 458, column: 17, scope: !1636)
!1647 = !DILocation(line: 460, column: 21, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !699, line: 460, column: 21)
!1649 = distinct !DILexicalBlock(scope: !1640, file: !699, line: 458, column: 45)
!1650 = !DILocation(line: 460, column: 27, scope: !1648)
!1651 = !DILocation(line: 460, column: 21, scope: !1649)
!1652 = !DILocation(line: 461, column: 32, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1648, file: !699, line: 460, column: 42)
!1654 = !DILocation(line: 461, column: 34, scope: !1653)
!1655 = !DILocation(line: 461, column: 27, scope: !1653)
!1656 = !DILocation(line: 461, column: 30, scope: !1653)
!1657 = !DILocation(line: 462, column: 25, scope: !1653)
!1658 = !DILocation(line: 463, column: 17, scope: !1653)
!1659 = !DILocation(line: 465, column: 25, scope: !1648)
!1660 = !DILocation(line: 466, column: 17, scope: !1649)
!1661 = !DILocation(line: 469, column: 26, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1640, file: !699, line: 468, column: 18)
!1663 = !DILocation(line: 469, column: 17, scope: !1662)
!1664 = !DILocation(line: 469, column: 24, scope: !1662)
!1665 = !DILocation(line: 470, column: 21, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1662, file: !699, line: 470, column: 21)
!1667 = !DILocation(line: 470, column: 27, scope: !1666)
!1668 = !DILocation(line: 470, column: 21, scope: !1662)
!1669 = !DILocation(line: 471, column: 42, scope: !1666)
!1670 = !DILocation(line: 471, column: 49, scope: !1666)
!1671 = !DILocation(line: 471, column: 54, scope: !1666)
!1672 = !DILocation(line: 471, column: 33, scope: !1666)
!1673 = !DILocation(line: 471, column: 31, scope: !1666)
!1674 = !DILocation(line: 471, column: 21, scope: !1666)
!1675 = !DILocation(line: 473, column: 54, scope: !1666)
!1676 = !DILocation(line: 473, column: 33, scope: !1666)
!1677 = !DILocation(line: 473, column: 31, scope: !1666)
!1678 = !DILocation(line: 474, column: 21, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1662, file: !699, line: 474, column: 21)
!1680 = !DILocation(line: 474, column: 31, scope: !1679)
!1681 = !DILocation(line: 474, column: 21, scope: !1662)
!1682 = !DILocation(line: 475, column: 25, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !699, line: 475, column: 25)
!1684 = distinct !DILexicalBlock(scope: !1679, file: !699, line: 474, column: 46)
!1685 = !DILocation(line: 475, column: 32, scope: !1683)
!1686 = !DILocation(line: 475, column: 25, scope: !1684)
!1687 = !DILocation(line: 476, column: 36, scope: !1683)
!1688 = !DILocation(line: 476, column: 25, scope: !1683)
!1689 = !DILocation(line: 477, column: 25, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1684, file: !699, line: 477, column: 25)
!1691 = !DILocation(line: 477, column: 35, scope: !1690)
!1692 = !DILocation(line: 477, column: 25, scope: !1684)
!1693 = !DILocation(line: 478, column: 38, scope: !1690)
!1694 = !DILocation(line: 478, column: 26, scope: !1690)
!1695 = !DILocation(line: 478, column: 36, scope: !1690)
!1696 = !DILocation(line: 478, column: 25, scope: !1690)
!1697 = !DILocation(line: 479, column: 21, scope: !1684)
!1698 = !DILocation(line: 481, column: 21, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1662, file: !699, line: 481, column: 21)
!1700 = !DILocation(line: 481, column: 27, scope: !1699)
!1701 = !DILocation(line: 481, column: 21, scope: !1662)
!1702 = !DILocation(line: 482, column: 30, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1699, file: !699, line: 481, column: 42)
!1704 = !DILocation(line: 482, column: 27, scope: !1703)
!1705 = !DILocation(line: 483, column: 29, scope: !1703)
!1706 = !DILocation(line: 483, column: 26, scope: !1703)
!1707 = !DILocation(line: 484, column: 17, scope: !1703)
!1708 = !DILocation(line: 486, column: 29, scope: !1699)
!1709 = !DILocation(line: 486, column: 26, scope: !1699)
!1710 = !DILocation(line: 488, column: 9, scope: !1636)
!1711 = !DILocation(line: 456, column: 29, scope: !1631)
!1712 = !DILocation(line: 456, column: 9, scope: !1631)
!1713 = !DILocation(line: 489, column: 13, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1626, file: !699, line: 489, column: 13)
!1715 = !DILocation(line: 489, column: 20, scope: !1714)
!1716 = !DILocation(line: 489, column: 13, scope: !1626)
!1717 = !DILocation(line: 490, column: 14, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1714, file: !699, line: 489, column: 35)
!1719 = !DILocation(line: 490, column: 20, scope: !1718)
!1720 = !DILocation(line: 491, column: 13, scope: !1718)
!1721 = !DILocation(line: 494, column: 14, scope: !1626)
!1722 = !DILocation(line: 495, column: 31, scope: !1626)
!1723 = !DILocation(line: 495, column: 18, scope: !1626)
!1724 = !DILocation(line: 495, column: 16, scope: !1626)
!1725 = !DILocation(line: 496, column: 13, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1626, file: !699, line: 496, column: 13)
!1727 = !DILocation(line: 496, column: 20, scope: !1726)
!1728 = !DILocation(line: 496, column: 13, scope: !1626)
!1729 = !DILocation(line: 497, column: 17, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !699, line: 497, column: 17)
!1731 = distinct !DILexicalBlock(scope: !1726, file: !699, line: 496, column: 35)
!1732 = !DILocation(line: 497, column: 27, scope: !1730)
!1733 = !DILocation(line: 497, column: 17, scope: !1731)
!1734 = !DILocation(line: 498, column: 18, scope: !1730)
!1735 = !DILocation(line: 498, column: 28, scope: !1730)
!1736 = !DILocation(line: 498, column: 17, scope: !1730)
!1737 = !DILocation(line: 499, column: 13, scope: !1731)
!1738 = !DILocation(line: 501, column: 17, scope: !1626)
!1739 = !DILocation(line: 501, column: 15, scope: !1626)
!1740 = !DILocation(line: 503, column: 12, scope: !740)
!1741 = !DILocation(line: 503, column: 5, scope: !740)
!1742 = !DILocation(line: 505, column: 1, scope: !740)
!1743 = !DILocation(line: 177, column: 45, scope: !1010)
!1744 = !DILocation(line: 177, column: 59, scope: !1010)
!1745 = !DILocation(line: 179, column: 5, scope: !1010)
!1746 = !DILocation(line: 179, column: 11, scope: !1010)
!1747 = !DILocation(line: 179, column: 33, scope: !1010)
!1748 = !DILocation(line: 180, column: 5, scope: !1010)
!1749 = !DILocation(line: 180, column: 12, scope: !1010)
!1750 = !DILocation(line: 180, column: 17, scope: !1010)
!1751 = !DILocation(line: 181, column: 5, scope: !1010)
!1752 = !DILocation(line: 181, column: 13, scope: !1010)
!1753 = !DILocation(line: 183, column: 9, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1010, file: !699, line: 183, column: 9)
!1755 = !DILocation(line: 183, column: 19, scope: !1754)
!1756 = !DILocation(line: 183, column: 9, scope: !1010)
!1757 = !DILocation(line: 184, column: 10, scope: !1754)
!1758 = !DILocation(line: 184, column: 20, scope: !1754)
!1759 = !DILocation(line: 184, column: 9, scope: !1754)
!1760 = !DILocation(line: 186, column: 18, scope: !1010)
!1761 = !DILocation(line: 186, column: 11, scope: !1010)
!1762 = !DILocation(line: 186, column: 9, scope: !1010)
!1763 = !DILocation(line: 188, column: 27, scope: !1010)
!1764 = !DILocation(line: 188, column: 31, scope: !1010)
!1765 = !DILocation(line: 188, column: 14, scope: !1010)
!1766 = !DILocation(line: 188, column: 12, scope: !1010)
!1767 = !DILocation(line: 189, column: 9, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1010, file: !699, line: 189, column: 9)
!1769 = !DILocation(line: 189, column: 16, scope: !1768)
!1770 = !DILocation(line: 189, column: 9, scope: !1010)
!1771 = !DILocation(line: 190, column: 9, scope: !1768)
!1772 = !DILocation(line: 192, column: 11, scope: !1010)
!1773 = !DILocation(line: 192, column: 9, scope: !1010)
!1774 = !DILocation(line: 193, column: 11, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1010, file: !699, line: 193, column: 5)
!1776 = !DILocation(line: 193, column: 10, scope: !1775)
!1777 = !DILocation(line: 193, column: 15, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1779, file: !699, discriminator: 2)
!1779 = !DILexicalBlockFile(scope: !1780, file: !699, discriminator: 1)
!1780 = distinct !DILexicalBlock(scope: !1775, file: !699, line: 193, column: 5)
!1781 = !DILocation(line: 193, column: 17, scope: !1780)
!1782 = !DILocation(line: 193, column: 16, scope: !1780)
!1783 = !DILocation(line: 193, column: 5, scope: !1775)
!1784 = !DILocation(line: 194, column: 19, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1780, file: !699, line: 193, column: 27)
!1786 = !DILocation(line: 194, column: 14, scope: !1785)
!1787 = !DILocation(line: 194, column: 12, scope: !1785)
!1788 = !DILocation(line: 196, column: 13, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1785, file: !699, line: 196, column: 13)
!1790 = !DILocation(line: 196, column: 16, scope: !1789)
!1791 = !DILocation(line: 196, column: 13, scope: !1785)
!1792 = !DILocation(line: 198, column: 28, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1789, file: !699, line: 196, column: 25)
!1794 = !DILocation(line: 198, column: 22, scope: !1793)
!1795 = !DILocation(line: 198, column: 17, scope: !1793)
!1796 = !DILocation(line: 198, column: 20, scope: !1793)
!1797 = !DILocation(line: 199, column: 9, scope: !1793)
!1798 = !DILocation(line: 200, column: 28, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1789, file: !699, line: 200, column: 18)
!1800 = !DILocation(line: 200, column: 25, scope: !1799)
!1801 = !DILocation(line: 200, column: 31, scope: !1799)
!1802 = !DILocation(line: 200, column: 34, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1799, file: !699, discriminator: 1)
!1804 = !DILocation(line: 200, column: 37, scope: !1799)
!1805 = !DILocation(line: 200, column: 18, scope: !1789)
!1806 = !DILocation(line: 202, column: 29, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1799, file: !699, line: 200, column: 48)
!1808 = !DILocation(line: 202, column: 32, scope: !1807)
!1809 = !DILocation(line: 202, column: 22, scope: !1807)
!1810 = !DILocation(line: 202, column: 17, scope: !1807)
!1811 = !DILocation(line: 202, column: 20, scope: !1807)
!1812 = !DILocation(line: 203, column: 9, scope: !1807)
!1813 = !DILocation(line: 205, column: 17, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !699, line: 205, column: 17)
!1815 = distinct !DILexicalBlock(scope: !1799, file: !699, line: 204, column: 14)
!1816 = !DILocation(line: 205, column: 27, scope: !1814)
!1817 = !DILocation(line: 205, column: 17, scope: !1815)
!1818 = !DILocation(line: 206, column: 30, scope: !1814)
!1819 = !DILocation(line: 206, column: 18, scope: !1814)
!1820 = !DILocation(line: 206, column: 28, scope: !1814)
!1821 = !DILocation(line: 206, column: 17, scope: !1814)
!1822 = !DILocation(line: 207, column: 24, scope: !1815)
!1823 = !DILocation(line: 207, column: 13, scope: !1815)
!1824 = !DILocation(line: 208, column: 13, scope: !1815)
!1825 = !DILocation(line: 210, column: 5, scope: !1785)
!1826 = !DILocation(line: 193, column: 23, scope: !1780)
!1827 = !DILocation(line: 193, column: 5, scope: !1780)
!1828 = !DILocation(line: 211, column: 6, scope: !1010)
!1829 = !DILocation(line: 211, column: 10, scope: !1010)
!1830 = !DILocation(line: 212, column: 12, scope: !1010)
!1831 = !DILocation(line: 212, column: 5, scope: !1010)
!1832 = !DILocation(line: 213, column: 1, scope: !1010)
!1833 = !DILocation(line: 519, column: 26, scope: !760)
!1834 = !DILocation(line: 519, column: 45, scope: !760)
!1835 = !DILocation(line: 521, column: 5, scope: !760)
!1836 = !DILocation(line: 521, column: 9, scope: !760)
!1837 = !DILocation(line: 522, column: 5, scope: !760)
!1838 = !DILocation(line: 522, column: 11, scope: !760)
!1839 = !DILocation(line: 523, column: 28, scope: !760)
!1840 = !DILocation(line: 523, column: 13, scope: !760)
!1841 = !DILocation(line: 523, column: 11, scope: !760)
!1842 = !DILocation(line: 524, column: 9, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !760, file: !699, line: 524, column: 9)
!1844 = !DILocation(line: 524, column: 15, scope: !1843)
!1845 = !DILocation(line: 524, column: 9, scope: !760)
!1846 = !DILocation(line: 525, column: 11, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1843, file: !699, line: 524, column: 30)
!1848 = !DILocation(line: 525, column: 32, scope: !1847)
!1849 = !DILocation(line: 526, column: 9, scope: !1847)
!1850 = !DILocation(line: 528, column: 16, scope: !760)
!1851 = !DILocation(line: 528, column: 23, scope: !760)
!1852 = !DILocation(line: 528, column: 11, scope: !760)
!1853 = !DILocation(line: 528, column: 9, scope: !760)
!1854 = !DILocation(line: 529, column: 16, scope: !760)
!1855 = !DILocation(line: 529, column: 5, scope: !760)
!1856 = !DILocation(line: 530, column: 12, scope: !760)
!1857 = !DILocation(line: 530, column: 5, scope: !760)
!1858 = !DILocation(line: 531, column: 1, scope: !760)
!1859 = !DILocation(line: 543, column: 20, scope: !805)
!1860 = !DILocation(line: 543, column: 39, scope: !805)
!1861 = !DILocation(line: 558, column: 5, scope: !805)
!1862 = !DILocation(line: 558, column: 9, scope: !805)
!1863 = !DILocation(line: 559, column: 5, scope: !805)
!1864 = !DILocation(line: 559, column: 15, scope: !805)
!1865 = !DILocation(line: 559, column: 49, scope: !805)
!1866 = !DILocation(line: 559, column: 23, scope: !805)
!1867 = !DILocation(line: 560, column: 9, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !805, file: !699, line: 560, column: 9)
!1869 = !DILocation(line: 560, column: 15, scope: !1868)
!1870 = !DILocation(line: 560, column: 9, scope: !805)
!1871 = !DILocation(line: 561, column: 9, scope: !1868)
!1872 = !DILocation(line: 562, column: 51, scope: !805)
!1873 = !DILocation(line: 562, column: 33, scope: !805)
!1874 = !DILocation(line: 562, column: 60, scope: !805)
!1875 = !DILocation(line: 562, column: 31, scope: !805)
!1876 = !DILocation(line: 562, column: 71, scope: !805)
!1877 = !DILocation(line: 562, column: 11, scope: !805)
!1878 = !DILocation(line: 562, column: 9, scope: !805)
!1879 = !DILocation(line: 563, column: 5, scope: !805)
!1880 = !DILocation(line: 563, column: 10, scope: !1881)
!1881 = !DILexicalBlockFile(scope: !814, file: !699, discriminator: 1)
!1882 = !DILocation(line: 563, column: 20, scope: !814)
!1883 = !DILocation(line: 563, column: 50, scope: !814)
!1884 = !DILocation(line: 563, column: 66, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !814, file: !699, line: 563, column: 63)
!1886 = !DILocation(line: 563, column: 83, scope: !1885)
!1887 = !DILocation(line: 563, column: 63, scope: !1885)
!1888 = !DILocation(line: 563, column: 93, scope: !1885)
!1889 = !DILocation(line: 563, column: 63, scope: !814)
!1890 = !DILocation(line: 563, column: 63, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !814, file: !699, discriminator: 2)
!1892 = !DILocation(line: 563, column: 124, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !1885, file: !699, discriminator: 3)
!1894 = !DILocation(line: 563, column: 142, scope: !1885)
!1895 = !{!1090, !1092, i64 8}
!1896 = !DILocation(line: 563, column: 152, scope: !1885)
!1897 = !{!1898, !1092, i64 48}
!1898 = !{!"_typeobject", !1899, i64 0, !1092, i64 24, !1091, i64 32, !1091, i64 40, !1092, i64 48, !1092, i64 56, !1092, i64 64, !1092, i64 72, !1092, i64 80, !1092, i64 88, !1092, i64 96, !1092, i64 104, !1092, i64 112, !1092, i64 120, !1092, i64 128, !1092, i64 136, !1092, i64 144, !1092, i64 152, !1092, i64 160, !1091, i64 168, !1092, i64 176, !1092, i64 184, !1092, i64 192, !1092, i64 200, !1091, i64 208, !1092, i64 216, !1092, i64 224, !1092, i64 232, !1092, i64 240, !1092, i64 248, !1092, i64 256, !1092, i64 264, !1092, i64 272, !1092, i64 280, !1091, i64 288, !1092, i64 296, !1092, i64 304, !1092, i64 312, !1092, i64 320, !1092, i64 328, !1092, i64 336, !1092, i64 344, !1092, i64 352, !1092, i64 360, !1092, i64 368, !1092, i64 376, !1078, i64 384, !1092, i64 392}
!1899 = !{!"", !1090, i64 0, !1091, i64 16}
!1900 = !DILocation(line: 563, column: 177, scope: !1885)
!1901 = !DILocation(line: 563, column: 108, scope: !1885)
!1902 = !DILocation(line: 563, column: 196, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !805, file: !699, discriminator: 4)
!1904 = !DILocation(line: 563, column: 196, scope: !814)
!1905 = !DILocation(line: 563, column: 196, scope: !1906)
!1906 = !DILexicalBlockFile(scope: !814, file: !699, discriminator: 5)
!1907 = !DILocation(line: 564, column: 12, scope: !805)
!1908 = !DILocation(line: 564, column: 5, scope: !805)
!1909 = !DILocation(line: 566, column: 1, scope: !805)
!1910 = !DILocation(line: 614, column: 25, scope: !815)
!1911 = !DILocation(line: 616, column: 28, scope: !815)
!1912 = !DILocation(line: 616, column: 12, scope: !815)
!1913 = !DILocation(line: 616, column: 5, scope: !815)
!1914 = !DILocation(line: 571, column: 21, scope: !1046)
!1915 = !DILocation(line: 571, column: 29, scope: !1046)
!1916 = !DILocation(line: 598, column: 5, scope: !1046)
!1917 = !DILocation(line: 598, column: 9, scope: !1046)
!1918 = !DILocation(line: 600, column: 19, scope: !1046)
!1919 = !DILocation(line: 600, column: 13, scope: !1046)
!1920 = !DILocation(line: 600, column: 11, scope: !1046)
!1921 = !DILocation(line: 601, column: 9, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1046, file: !699, line: 601, column: 9)
!1923 = !DILocation(line: 601, column: 15, scope: !1922)
!1924 = !DILocation(line: 601, column: 9, scope: !1046)
!1925 = !DILocation(line: 602, column: 13, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !699, line: 602, column: 13)
!1927 = distinct !DILexicalBlock(scope: !1922, file: !699, line: 601, column: 22)
!1928 = !DILocation(line: 602, column: 13, scope: !1927)
!1929 = !DILocation(line: 603, column: 32, scope: !1926)
!1930 = !DILocation(line: 603, column: 13, scope: !1926)
!1931 = !DILocation(line: 604, column: 9, scope: !1927)
!1932 = !DILocation(line: 606, column: 14, scope: !1046)
!1933 = !DILocation(line: 606, column: 20, scope: !1046)
!1934 = !DILocation(line: 606, column: 12, scope: !1046)
!1935 = !DILocation(line: 606, column: 5, scope: !1046)
!1936 = !DILocation(line: 608, column: 1, scope: !1046)
!1937 = !DILocation(line: 735, column: 25, scope: !820)
!1938 = !DILocation(line: 735, column: 33, scope: !820)
!1939 = !DILocation(line: 735, column: 51, scope: !820)
!1940 = !DILocation(line: 737, column: 28, scope: !820)
!1941 = !DILocation(line: 737, column: 32, scope: !820)
!1942 = !DILocation(line: 737, column: 48, scope: !820)
!1943 = !DILocation(line: 737, column: 12, scope: !820)
!1944 = !DILocation(line: 737, column: 5, scope: !820)
!1945 = !DILocation(line: 620, column: 21, scope: !1053)
!1946 = !DILocation(line: 620, column: 29, scope: !1053)
!1947 = !DILocation(line: 620, column: 46, scope: !1053)
!1948 = !DILocation(line: 620, column: 58, scope: !1053)
!1949 = !DILocation(line: 626, column: 5, scope: !1053)
!1950 = !DILocation(line: 626, column: 9, scope: !1053)
!1951 = !DILocation(line: 627, column: 5, scope: !1053)
!1952 = !DILocation(line: 627, column: 9, scope: !1053)
!1953 = !DILocation(line: 637, column: 9, scope: !1067)
!1954 = !DILocation(line: 637, column: 27, scope: !1067)
!1955 = !DILocation(line: 637, column: 41, scope: !1067)
!1956 = !DILocation(line: 637, column: 45, scope: !1957)
!1957 = !DILexicalBlockFile(scope: !1067, file: !699, discriminator: 1)
!1958 = !DILocation(line: 637, column: 9, scope: !1053)
!1959 = !DILocation(line: 638, column: 14, scope: !1065)
!1960 = !DILocation(line: 638, column: 13, scope: !1065)
!1961 = !DILocation(line: 638, column: 32, scope: !1065)
!1962 = !DILocation(line: 638, column: 13, scope: !1066)
!1963 = !DILocation(line: 639, column: 13, scope: !1064)
!1964 = !DILocation(line: 639, column: 17, scope: !1064)
!1965 = !DILocation(line: 639, column: 47, scope: !1064)
!1966 = !DILocation(line: 639, column: 51, scope: !1064)
!1967 = !DILocation(line: 639, column: 31, scope: !1064)
!1968 = !DILocation(line: 640, column: 17, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1064, file: !699, line: 640, column: 17)
!1970 = !DILocation(line: 640, column: 29, scope: !1969)
!1971 = !DILocation(line: 640, column: 17, scope: !1064)
!1972 = !DILocation(line: 641, column: 17, scope: !1969)
!1973 = !DILocation(line: 642, column: 35, scope: !1064)
!1974 = !DILocation(line: 642, column: 34, scope: !1064)
!1975 = !DILocation(line: 642, column: 14, scope: !1064)
!1976 = !DILocation(line: 642, column: 32, scope: !1064)
!1977 = !DILocation(line: 643, column: 9, scope: !1065)
!1978 = !DILocation(line: 643, column: 9, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !1065, file: !699, discriminator: 1)
!1980 = !DILocation(line: 643, column: 9, scope: !1064)
!1981 = !DILocation(line: 645, column: 14, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1066, file: !699, line: 645, column: 13)
!1983 = !DILocation(line: 645, column: 13, scope: !1982)
!1984 = !DILocation(line: 645, column: 13, scope: !1066)
!1985 = !DILocation(line: 646, column: 13, scope: !1982)
!1986 = !DILocation(line: 647, column: 5, scope: !1066)
!1987 = !DILocation(line: 675, column: 9, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1053, file: !699, line: 675, column: 9)
!1989 = !DILocation(line: 675, column: 9, scope: !1053)
!1990 = !DILocation(line: 676, column: 17, scope: !1988)
!1991 = !DILocation(line: 676, column: 9, scope: !1988)
!1992 = !DILocation(line: 678, column: 17, scope: !1988)
!1993 = !DILocation(line: 679, column: 17, scope: !1053)
!1994 = !DILocation(line: 679, column: 21, scope: !1053)
!1995 = !DILocation(line: 679, column: 11, scope: !1053)
!1996 = !DILocation(line: 679, column: 9, scope: !1053)
!1997 = !DILocation(line: 680, column: 9, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1053, file: !699, line: 680, column: 9)
!1999 = !DILocation(line: 680, column: 9, scope: !1053)
!2000 = !DILocation(line: 681, column: 13, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !699, line: 681, column: 13)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !699, line: 680, column: 14)
!2003 = !DILocation(line: 681, column: 13, scope: !2002)
!2004 = !DILocation(line: 682, column: 32, scope: !2001)
!2005 = !DILocation(line: 682, column: 13, scope: !2001)
!2006 = !DILocation(line: 683, column: 9, scope: !2002)
!2007 = !DILocation(line: 685, column: 5, scope: !1053)
!2008 = !DILocation(line: 707, column: 1, scope: !1053)
!2009 = !DILocation(line: 743, column: 22, scope: !828)
!2010 = !DILocation(line: 743, column: 36, scope: !828)
!2011 = !DILocation(line: 745, column: 5, scope: !828)
!2012 = !DILocation(line: 745, column: 9, scope: !828)
!2013 = !DILocation(line: 752, column: 5, scope: !828)
!2014 = !DILocation(line: 752, column: 10, scope: !828)
!2015 = !DILocation(line: 754, column: 23, scope: !828)
!2016 = !DILocation(line: 755, column: 11, scope: !828)
!2017 = !DILocation(line: 759, column: 15, scope: !828)
!2018 = !DILocation(line: 759, column: 25, scope: !828)
!2019 = !DILocation(line: 759, column: 10, scope: !828)
!2020 = !DILocation(line: 759, column: 8, scope: !828)
!2021 = !DILocation(line: 760, column: 9, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !828, file: !699, line: 760, column: 9)
!2023 = !DILocation(line: 760, column: 12, scope: !2022)
!2024 = !DILocation(line: 760, column: 9, scope: !828)
!2025 = !DILocation(line: 761, column: 16, scope: !2022)
!2026 = !DILocation(line: 761, column: 9, scope: !2022)
!2027 = !DILocation(line: 763, column: 25, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !828, file: !699, line: 763, column: 9)
!2029 = !DILocation(line: 763, column: 35, scope: !2028)
!2030 = !DILocation(line: 763, column: 9, scope: !2028)
!2031 = !DILocation(line: 763, column: 54, scope: !2028)
!2032 = !DILocation(line: 763, column: 9, scope: !828)
!2033 = !DILocation(line: 764, column: 15, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2028, file: !699, line: 763, column: 59)
!2035 = !DILocation(line: 764, column: 9, scope: !2034)
!2036 = !DILocation(line: 765, column: 9, scope: !2034)
!2037 = !DILocation(line: 768, column: 12, scope: !828)
!2038 = !DILocation(line: 768, column: 5, scope: !828)
!2039 = !DILocation(line: 769, column: 1, scope: !828)
!2040 = !DILocation(line: 775, column: 27, scope: !836)
!2041 = !DILocation(line: 775, column: 48, scope: !836)
!2042 = !DILocation(line: 777, column: 5, scope: !836)
!2043 = !DILocation(line: 777, column: 11, scope: !836)
!2044 = !DILocation(line: 779, column: 5, scope: !836)
!2045 = !DILocation(line: 779, column: 11, scope: !836)
!2046 = !DILocation(line: 780, column: 5, scope: !836)
!2047 = !DILocation(line: 780, column: 10, scope: !836)
!2048 = !DILocation(line: 781, column: 5, scope: !836)
!2049 = !DILocation(line: 781, column: 12, scope: !836)
!2050 = !DILocation(line: 782, column: 18, scope: !836)
!2051 = !DILocation(line: 782, column: 25, scope: !836)
!2052 = !DILocation(line: 782, column: 9, scope: !836)
!2053 = !DILocation(line: 782, column: 7, scope: !836)
!2054 = !DILocation(line: 783, column: 9, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !836, file: !699, line: 783, column: 9)
!2056 = !DILocation(line: 783, column: 11, scope: !2055)
!2057 = !DILocation(line: 783, column: 25, scope: !2055)
!2058 = !DILocation(line: 783, column: 28, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !2055, file: !699, discriminator: 1)
!2060 = !DILocation(line: 783, column: 30, scope: !2055)
!2061 = !DILocation(line: 783, column: 9, scope: !836)
!2062 = !DILocation(line: 784, column: 11, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2055, file: !699, line: 783, column: 37)
!2064 = !DILocation(line: 784, column: 32, scope: !2063)
!2065 = !DILocation(line: 785, column: 9, scope: !2063)
!2066 = !DILocation(line: 787, column: 28, scope: !836)
!2067 = !DILocation(line: 787, column: 13, scope: !836)
!2068 = !DILocation(line: 787, column: 11, scope: !836)
!2069 = !DILocation(line: 788, column: 9, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !836, file: !699, line: 788, column: 9)
!2071 = !DILocation(line: 788, column: 15, scope: !2070)
!2072 = !DILocation(line: 788, column: 9, scope: !836)
!2073 = !DILocation(line: 789, column: 9, scope: !2070)
!2074 = !DILocation(line: 790, column: 15, scope: !836)
!2075 = !DILocation(line: 790, column: 22, scope: !836)
!2076 = !DILocation(line: 790, column: 9, scope: !836)
!2077 = !DILocation(line: 790, column: 7, scope: !836)
!2078 = !DILocation(line: 791, column: 16, scope: !836)
!2079 = !DILocation(line: 791, column: 5, scope: !836)
!2080 = !DILocation(line: 795, column: 9, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !836, file: !699, line: 795, column: 9)
!2082 = !DILocation(line: 795, column: 11, scope: !2081)
!2083 = !DILocation(line: 795, column: 9, scope: !836)
!2084 = !DILocation(line: 796, column: 9, scope: !2081)
!2085 = !DILocation(line: 797, column: 37, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !836, file: !699, line: 797, column: 9)
!2087 = !DILocation(line: 797, column: 30, scope: !2086)
!2088 = !DILocation(line: 797, column: 9, scope: !2086)
!2089 = !DILocation(line: 797, column: 41, scope: !2086)
!2090 = !DILocation(line: 797, column: 9, scope: !836)
!2091 = !DILocation(line: 798, column: 16, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2086, file: !699, line: 797, column: 46)
!2093 = !DILocation(line: 798, column: 9, scope: !2092)
!2094 = !DILocation(line: 799, column: 9, scope: !2092)
!2095 = !DILocation(line: 801, column: 12, scope: !836)
!2096 = !DILocation(line: 801, column: 5, scope: !836)
!2097 = !DILocation(line: 802, column: 1, scope: !836)
!2098 = !DILocation(line: 712, column: 26, scope: !1068)
!2099 = !DILocation(line: 714, column: 28, scope: !1068)
!2100 = !DILocation(line: 714, column: 12, scope: !1068)
!2101 = !DILocation(line: 714, column: 5, scope: !1068)
!2102 = !DILocation(line: 806, column: 23, scope: !849)
!2103 = !DILocation(line: 806, column: 45, scope: !849)
!2104 = !DILocation(line: 808, column: 5, scope: !849)
!2105 = !DILocation(line: 808, column: 11, scope: !849)
!2106 = !DILocation(line: 808, column: 21, scope: !849)
!2107 = !DILocation(line: 808, column: 31, scope: !849)
!2108 = !DILocation(line: 808, column: 15, scope: !849)
!2109 = !DILocation(line: 809, column: 9, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !849, file: !699, line: 809, column: 9)
!2111 = !DILocation(line: 809, column: 11, scope: !2110)
!2112 = !DILocation(line: 809, column: 9, scope: !849)
!2113 = !DILocation(line: 810, column: 9, scope: !2110)
!2114 = !DILocation(line: 811, column: 37, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !849, file: !699, line: 811, column: 9)
!2116 = !DILocation(line: 811, column: 30, scope: !2115)
!2117 = !DILocation(line: 811, column: 9, scope: !2115)
!2118 = !DILocation(line: 811, column: 41, scope: !2115)
!2119 = !DILocation(line: 811, column: 9, scope: !849)
!2120 = !DILocation(line: 812, column: 16, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2115, file: !699, line: 811, column: 46)
!2122 = !DILocation(line: 812, column: 9, scope: !2121)
!2123 = !DILocation(line: 813, column: 9, scope: !2121)
!2124 = !DILocation(line: 815, column: 12, scope: !849)
!2125 = !DILocation(line: 815, column: 5, scope: !849)
!2126 = !DILocation(line: 816, column: 1, scope: !849)
!2127 = !DILocation(line: 825, column: 25, scope: !856)
!2128 = !DILocation(line: 825, column: 43, scope: !856)
!2129 = !DILocation(line: 827, column: 5, scope: !856)
!2130 = !DILocation(line: 827, column: 11, scope: !856)
!2131 = !DILocation(line: 849, column: 5, scope: !856)
!2132 = !DILocation(line: 849, column: 15, scope: !856)
!2133 = !DILocation(line: 850, column: 32, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !856, file: !699, line: 850, column: 9)
!2135 = !DILocation(line: 850, column: 38, scope: !2134)
!2136 = !DILocation(line: 850, column: 10, scope: !2134)
!2137 = !DILocation(line: 850, column: 9, scope: !856)
!2138 = !DILocation(line: 851, column: 9, scope: !2134)
!2139 = !DILocation(line: 852, column: 50, scope: !856)
!2140 = !DILocation(line: 852, column: 32, scope: !856)
!2141 = !DILocation(line: 852, column: 59, scope: !856)
!2142 = !DILocation(line: 852, column: 30, scope: !856)
!2143 = !DILocation(line: 852, column: 70, scope: !856)
!2144 = !DILocation(line: 852, column: 9, scope: !856)
!2145 = !DILocation(line: 852, column: 7, scope: !856)
!2146 = !DILocation(line: 853, column: 5, scope: !856)
!2147 = !DILocation(line: 853, column: 10, scope: !2148)
!2148 = !DILexicalBlockFile(scope: !865, file: !699, discriminator: 1)
!2149 = !DILocation(line: 853, column: 20, scope: !865)
!2150 = !DILocation(line: 853, column: 50, scope: !865)
!2151 = !DILocation(line: 853, column: 66, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !865, file: !699, line: 853, column: 63)
!2153 = !DILocation(line: 853, column: 83, scope: !2152)
!2154 = !DILocation(line: 853, column: 63, scope: !2152)
!2155 = !DILocation(line: 853, column: 93, scope: !2152)
!2156 = !DILocation(line: 853, column: 63, scope: !865)
!2157 = !DILocation(line: 853, column: 63, scope: !2158)
!2158 = !DILexicalBlockFile(scope: !865, file: !699, discriminator: 2)
!2159 = !DILocation(line: 853, column: 124, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !2152, file: !699, discriminator: 3)
!2161 = !DILocation(line: 853, column: 142, scope: !2152)
!2162 = !DILocation(line: 853, column: 152, scope: !2152)
!2163 = !DILocation(line: 853, column: 177, scope: !2152)
!2164 = !DILocation(line: 853, column: 108, scope: !2152)
!2165 = !DILocation(line: 853, column: 196, scope: !2166)
!2166 = !DILexicalBlockFile(scope: !856, file: !699, discriminator: 4)
!2167 = !DILocation(line: 853, column: 196, scope: !865)
!2168 = !DILocation(line: 853, column: 196, scope: !2169)
!2169 = !DILexicalBlockFile(scope: !865, file: !699, discriminator: 5)
!2170 = !DILocation(line: 855, column: 9, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !856, file: !699, line: 855, column: 9)
!2172 = !DILocation(line: 855, column: 11, scope: !2171)
!2173 = !DILocation(line: 855, column: 9, scope: !856)
!2174 = !DILocation(line: 856, column: 9, scope: !2171)
!2175 = !DILocation(line: 857, column: 37, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !856, file: !699, line: 857, column: 9)
!2177 = !DILocation(line: 857, column: 30, scope: !2176)
!2178 = !DILocation(line: 857, column: 9, scope: !2176)
!2179 = !DILocation(line: 857, column: 41, scope: !2176)
!2180 = !DILocation(line: 857, column: 9, scope: !856)
!2181 = !DILocation(line: 858, column: 16, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2176, file: !699, line: 857, column: 46)
!2183 = !DILocation(line: 858, column: 9, scope: !2182)
!2184 = !DILocation(line: 859, column: 9, scope: !2182)
!2185 = !DILocation(line: 861, column: 12, scope: !856)
!2186 = !DILocation(line: 861, column: 5, scope: !856)
!2187 = !DILocation(line: 862, column: 1, scope: !856)
!2188 = !DILocation(line: 870, column: 30, scope: !866)
!2189 = !DILocation(line: 870, column: 45, scope: !866)
!2190 = !DILocation(line: 870, column: 57, scope: !866)
!2191 = !DILocation(line: 872, column: 5, scope: !866)
!2192 = !DILocation(line: 872, column: 11, scope: !866)
!2193 = !DILocation(line: 873, column: 5, scope: !866)
!2194 = !DILocation(line: 873, column: 10, scope: !866)
!2195 = !DILocation(line: 874, column: 5, scope: !866)
!2196 = !DILocation(line: 874, column: 14, scope: !866)
!2197 = !DILocation(line: 875, column: 5, scope: !866)
!2198 = !DILocation(line: 875, column: 9, scope: !866)
!2199 = !DILocation(line: 876, column: 5, scope: !866)
!2200 = !DILocation(line: 876, column: 12, scope: !866)
!2201 = !DILocation(line: 878, column: 28, scope: !866)
!2202 = !DILocation(line: 878, column: 13, scope: !866)
!2203 = !DILocation(line: 878, column: 11, scope: !866)
!2204 = !DILocation(line: 879, column: 9, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !866, file: !699, line: 879, column: 9)
!2206 = !DILocation(line: 879, column: 15, scope: !2205)
!2207 = !DILocation(line: 879, column: 9, scope: !866)
!2208 = !DILocation(line: 880, column: 11, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2205, file: !699, line: 879, column: 30)
!2210 = !DILocation(line: 880, column: 32, scope: !2209)
!2211 = !DILocation(line: 881, column: 9, scope: !2209)
!2212 = !DILocation(line: 883, column: 25, scope: !866)
!2213 = !DILocation(line: 883, column: 32, scope: !866)
!2214 = !DILocation(line: 883, column: 16, scope: !866)
!2215 = !DILocation(line: 883, column: 11, scope: !866)
!2216 = !DILocation(line: 883, column: 9, scope: !866)
!2217 = !DILocation(line: 884, column: 16, scope: !866)
!2218 = !DILocation(line: 884, column: 5, scope: !866)
!2219 = !DILocation(line: 885, column: 9, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !866, file: !699, line: 885, column: 9)
!2221 = !DILocation(line: 885, column: 13, scope: !2220)
!2222 = !DILocation(line: 885, column: 9, scope: !866)
!2223 = !DILocation(line: 886, column: 9, scope: !2220)
!2224 = !DILocation(line: 887, column: 9, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !866, file: !699, line: 887, column: 9)
!2226 = !DILocation(line: 887, column: 13, scope: !2225)
!2227 = !DILocation(line: 887, column: 9, scope: !866)
!2228 = !DILocation(line: 888, column: 11, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2225, file: !699, line: 887, column: 148)
!2230 = !DILocation(line: 888, column: 32, scope: !2229)
!2231 = !DILocation(line: 889, column: 9, scope: !2229)
!2232 = !DILocation(line: 891, column: 10, scope: !866)
!2233 = !DILocation(line: 891, column: 5, scope: !866)
!2234 = !DILocation(line: 891, column: 15, scope: !866)
!2235 = !DILocation(line: 892, column: 27, scope: !866)
!2236 = !DILocation(line: 892, column: 12, scope: !866)
!2237 = !DILocation(line: 892, column: 10, scope: !866)
!2238 = !DILocation(line: 893, column: 9, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !866, file: !699, line: 893, column: 9)
!2240 = !DILocation(line: 893, column: 14, scope: !2239)
!2241 = !DILocation(line: 893, column: 9, scope: !866)
!2242 = !DILocation(line: 894, column: 11, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2239, file: !699, line: 893, column: 29)
!2244 = !DILocation(line: 894, column: 32, scope: !2243)
!2245 = !DILocation(line: 895, column: 9, scope: !2243)
!2246 = !DILocation(line: 897, column: 9, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !866, file: !699, line: 897, column: 9)
!2248 = !DILocation(line: 897, column: 19, scope: !2247)
!2249 = !DILocation(line: 897, column: 16, scope: !2247)
!2250 = !DILocation(line: 897, column: 9, scope: !866)
!2251 = !DILocation(line: 898, column: 23, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2247, file: !699, line: 897, column: 23)
!2253 = !DILocation(line: 898, column: 9, scope: !2252)
!2254 = !DILocation(line: 899, column: 11, scope: !2252)
!2255 = !DILocation(line: 899, column: 32, scope: !2252)
!2256 = !DILocation(line: 900, column: 9, scope: !2252)
!2257 = !DILocation(line: 902, column: 13, scope: !866)
!2258 = !DILocation(line: 902, column: 18, scope: !866)
!2259 = !DILocation(line: 902, column: 24, scope: !866)
!2260 = !DILocation(line: 902, column: 5, scope: !866)
!2261 = !DILocation(line: 903, column: 19, scope: !866)
!2262 = !DILocation(line: 903, column: 5, scope: !866)
!2263 = !DILocation(line: 904, column: 17, scope: !866)
!2264 = !DILocation(line: 904, column: 12, scope: !866)
!2265 = !DILocation(line: 904, column: 5, scope: !866)
!2266 = !DILocation(line: 905, column: 1, scope: !866)
!2267 = !DILocation(line: 915, column: 30, scope: !881)
!2268 = !DILocation(line: 916, column: 24, scope: !881)
!2269 = !DILocation(line: 916, column: 46, scope: !881)
!2270 = !DILocation(line: 918, column: 5, scope: !881)
!2271 = !DILocation(line: 918, column: 11, scope: !881)
!2272 = !DILocation(line: 919, column: 5, scope: !881)
!2273 = !DILocation(line: 919, column: 10, scope: !881)
!2274 = !DILocation(line: 920, column: 5, scope: !881)
!2275 = !DILocation(line: 920, column: 14, scope: !881)
!2276 = !DILocation(line: 921, column: 5, scope: !881)
!2277 = !DILocation(line: 921, column: 11, scope: !881)
!2278 = !DILocation(line: 922, column: 5, scope: !881)
!2279 = !DILocation(line: 922, column: 12, scope: !881)
!2280 = !DILocation(line: 923, column: 28, scope: !881)
!2281 = !DILocation(line: 923, column: 13, scope: !881)
!2282 = !DILocation(line: 923, column: 11, scope: !881)
!2283 = !DILocation(line: 924, column: 9, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !881, file: !699, line: 924, column: 9)
!2285 = !DILocation(line: 924, column: 15, scope: !2284)
!2286 = !DILocation(line: 924, column: 9, scope: !881)
!2287 = !DILocation(line: 925, column: 11, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2284, file: !699, line: 924, column: 30)
!2289 = !DILocation(line: 925, column: 32, scope: !2288)
!2290 = !DILocation(line: 926, column: 9, scope: !2288)
!2291 = !DILocation(line: 928, column: 20, scope: !881)
!2292 = !DILocation(line: 928, column: 27, scope: !881)
!2293 = !DILocation(line: 928, column: 11, scope: !881)
!2294 = !DILocation(line: 928, column: 9, scope: !881)
!2295 = !DILocation(line: 929, column: 16, scope: !881)
!2296 = !DILocation(line: 929, column: 5, scope: !881)
!2297 = !DILocation(line: 930, column: 9, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !881, file: !699, line: 930, column: 9)
!2299 = !DILocation(line: 930, column: 13, scope: !2298)
!2300 = !DILocation(line: 930, column: 9, scope: !881)
!2301 = !DILocation(line: 931, column: 9, scope: !2298)
!2302 = !DILocation(line: 933, column: 37, scope: !881)
!2303 = !DILocation(line: 933, column: 22, scope: !881)
!2304 = !DILocation(line: 933, column: 20, scope: !881)
!2305 = !DILocation(line: 934, column: 9, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !881, file: !699, line: 934, column: 9)
!2307 = !DILocation(line: 934, column: 24, scope: !2306)
!2308 = !DILocation(line: 934, column: 9, scope: !881)
!2309 = !DILocation(line: 935, column: 11, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2306, file: !699, line: 934, column: 39)
!2311 = !DILocation(line: 935, column: 32, scope: !2310)
!2312 = !DILocation(line: 936, column: 9, scope: !2310)
!2313 = !DILocation(line: 938, column: 9, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !881, file: !699, line: 938, column: 9)
!2315 = !DILocation(line: 938, column: 31, scope: !2314)
!2316 = !DILocation(line: 938, column: 28, scope: !2314)
!2317 = !DILocation(line: 938, column: 9, scope: !881)
!2318 = !DILocation(line: 939, column: 23, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2314, file: !699, line: 938, column: 34)
!2320 = !DILocation(line: 939, column: 9, scope: !2319)
!2321 = !DILocation(line: 940, column: 11, scope: !2319)
!2322 = !DILocation(line: 940, column: 32, scope: !2319)
!2323 = !DILocation(line: 941, column: 9, scope: !2319)
!2324 = !DILocation(line: 943, column: 13, scope: !881)
!2325 = !DILocation(line: 943, column: 28, scope: !881)
!2326 = !DILocation(line: 943, column: 44, scope: !881)
!2327 = !DILocation(line: 943, column: 5, scope: !881)
!2328 = !DILocation(line: 944, column: 19, scope: !881)
!2329 = !DILocation(line: 944, column: 5, scope: !881)
!2330 = !DILocation(line: 945, column: 12, scope: !881)
!2331 = !DILocation(line: 945, column: 5, scope: !881)
!2332 = !DILocation(line: 946, column: 1, scope: !881)
!2333 = !DILocation(line: 954, column: 22, scope: !893)
!2334 = !DILocation(line: 954, column: 34, scope: !893)
!2335 = !DILocation(line: 960, column: 5, scope: !893)
!2336 = !DILocation(line: 960, column: 10, scope: !893)
!2337 = !DILocation(line: 961, column: 5, scope: !893)
!2338 = !DILocation(line: 961, column: 14, scope: !893)
!2339 = !DILocation(line: 962, column: 5, scope: !893)
!2340 = !DILocation(line: 962, column: 12, scope: !893)
!2341 = !DILocation(line: 964, column: 16, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !893, file: !699, line: 964, column: 9)
!2343 = !DILocation(line: 964, column: 9, scope: !2342)
!2344 = !DILocation(line: 964, column: 159, scope: !2342)
!2345 = !DILocation(line: 964, column: 9, scope: !893)
!2346 = !DILocation(line: 965, column: 9, scope: !2342)
!2347 = !DILocation(line: 966, column: 28, scope: !893)
!2348 = !DILocation(line: 966, column: 13, scope: !893)
!2349 = !DILocation(line: 966, column: 11, scope: !893)
!2350 = !DILocation(line: 967, column: 9, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !893, file: !699, line: 967, column: 9)
!2352 = !DILocation(line: 967, column: 15, scope: !2351)
!2353 = !DILocation(line: 967, column: 9, scope: !893)
!2354 = !DILocation(line: 968, column: 9, scope: !2351)
!2355 = !DILocation(line: 969, column: 9, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !893, file: !699, line: 969, column: 9)
!2357 = !DILocation(line: 969, column: 17, scope: !2356)
!2358 = !DILocation(line: 969, column: 14, scope: !2356)
!2359 = !DILocation(line: 969, column: 9, scope: !893)
!2360 = !DILocation(line: 970, column: 23, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2356, file: !699, line: 969, column: 22)
!2362 = !DILocation(line: 970, column: 9, scope: !2361)
!2363 = !DILocation(line: 971, column: 9, scope: !2361)
!2364 = !DILocation(line: 973, column: 13, scope: !893)
!2365 = !DILocation(line: 973, column: 18, scope: !893)
!2366 = !DILocation(line: 973, column: 25, scope: !893)
!2367 = !DILocation(line: 973, column: 5, scope: !893)
!2368 = !DILocation(line: 974, column: 19, scope: !893)
!2369 = !DILocation(line: 974, column: 5, scope: !893)
!2370 = !DILocation(line: 975, column: 12, scope: !893)
!2371 = !DILocation(line: 975, column: 5, scope: !893)
!2372 = !DILocation(line: 977, column: 1, scope: !893)
!2373 = !DILocation(line: 985, column: 13, scope: !902)
!2374 = !DILocation(line: 1023, column: 7, scope: !906)
!2375 = !DILocation(line: 1023, column: 22, scope: !906)
!2376 = !DILocation(line: 1023, column: 37, scope: !906)
!2377 = !DILocation(line: 1023, column: 35, scope: !906)
!2378 = !DILocation(line: 1024, column: 16, scope: !906)
!2379 = !DILocation(line: 1024, column: 10, scope: !906)
!2380 = !DILocation(line: 1024, column: 8, scope: !906)
!2381 = !DILocation(line: 1025, column: 26, scope: !906)
!2382 = !DILocation(line: 1025, column: 5, scope: !906)
!2383 = !DILocation(line: 1025, column: 34, scope: !902)
!2384 = !DILocation(line: 1026, column: 9, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !902, file: !699, line: 1026, column: 9)
!2386 = !DILocation(line: 1026, column: 12, scope: !2385)
!2387 = !DILocation(line: 1026, column: 9, scope: !902)
!2388 = !DILocation(line: 1027, column: 28, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2385, file: !699, line: 1026, column: 17)
!2390 = !DILocation(line: 1027, column: 9, scope: !2389)
!2391 = !DILocation(line: 1028, column: 9, scope: !2389)
!2392 = !DILocation(line: 1045, column: 12, scope: !902)
!2393 = !DILocation(line: 1045, column: 5, scope: !902)
!2394 = !DILocation(line: 1046, column: 1, scope: !902)
!2395 = !DILocation(line: 503, column: 52, scope: !1019)
!2396 = !DILocation(line: 503, column: 75, scope: !1019)
!2397 = !DILocation(line: 505, column: 24, scope: !1019)
!2398 = !DILocation(line: 505, column: 32, scope: !1019)
!2399 = !DILocation(line: 505, column: 10, scope: !1019)
!2400 = !DILocation(line: 505, column: 3, scope: !1019)
