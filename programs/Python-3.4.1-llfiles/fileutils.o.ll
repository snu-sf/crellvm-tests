; ModuleID = 'fileutils.o.bc'
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
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque

@_Py_open_cloexec_works = global i32 -1, align 4
@_Py_NoneStruct = external global %struct._object, align 8
@force_ascii = internal unnamed_addr global i32 -1, align 4
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

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_device_encoding(i32 %fd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !702, metadata !1076), !dbg !1077
  %call = tail call i32 @isatty(i32 %fd) #3, !dbg !1078
  %tobool = icmp eq i32 %call, 0, !dbg !1078
  br i1 %tobool, label %if.then, label %if.end, !dbg !1080

if.then:                                          ; preds = %entry
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1081, !tbaa !1083
  %inc = add i64 %0, 1, !dbg !1081
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1081, !tbaa !1083
  br label %return, !dbg !1081

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @nl_langinfo(i32 14) #3, !dbg !1089
  tail call void @llvm.dbg.value(metadata i8* %call1, i64 0, metadata !703, metadata !1076), !dbg !1090
  %cmp = icmp eq i8* %call1, null, !dbg !1091
  br i1 %cmp, label %cleanup.cont, label %land.lhs.true, !dbg !1093

land.lhs.true:                                    ; preds = %if.end
  %1 = load i8, i8* %call1, align 1, !dbg !1094, !tbaa !1096
  %cmp2 = icmp eq i8 %1, 0, !dbg !1097
  br i1 %cmp2, label %cleanup.cont, label %cleanup, !dbg !1098

cleanup:                                          ; preds = %land.lhs.true
  %call5 = tail call %struct._object* @PyUnicode_FromString(i8* %call1) #3, !dbg !1099
  br label %return

cleanup.cont:                                     ; preds = %land.lhs.true, %if.end
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1100, !tbaa !1083
  %inc7 = add i64 %2, 1, !dbg !1100
  store i64 %inc7, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1100, !tbaa !1083
  br label %return, !dbg !1100

return:                                           ; preds = %cleanup, %cleanup.cont, %if.then
  %retval.1 = phi %struct._object* [ @_Py_NoneStruct, %cleanup.cont ], [ %call5, %cleanup ], [ @_Py_NoneStruct, %if.then ]
  ret %struct._object* %retval.1, !dbg !1101
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
  %mbs = alloca i64, align 8
  %tmpcast = bitcast i64* %mbs to %struct.__mbstate_t*
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !710, metadata !1076), !dbg !1102
  tail call void @llvm.dbg.value(metadata i64* %size, i64 0, metadata !711, metadata !1076), !dbg !1103
  %0 = bitcast i64* %mbs to i8*, !dbg !1104
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1104
  %1 = load i32, i32* @force_ascii, align 4, !dbg !1105, !tbaa !1107
  %cmp = icmp eq i32 %1, -1, !dbg !1109
  br i1 %cmp, label %if.then, label %if.end, !dbg !1110

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @check_force_ascii(), !dbg !1111
  store i32 %call, i32* @force_ascii, align 4, !dbg !1112, !tbaa !1107
  br label %if.end, !dbg !1113

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 [ %call, %if.then ], [ %1, %entry ], !dbg !1114
  %tobool = icmp eq i32 %2, 0, !dbg !1114
  br i1 %tobool, label %if.end.6, label %if.then.1, !dbg !1116

if.then.1:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !1004, metadata !1076) #3, !dbg !1117
  tail call void @llvm.dbg.value(metadata i64* %size, i64 0, metadata !1005, metadata !1076) #3, !dbg !1120
  %call.i = tail call i64 @strlen(i8* %arg) #7, !dbg !1121
  %add.i = shl i64 %call.i, 2, !dbg !1122
  %mul.i = add i64 %add.i, 4, !dbg !1122
  %call1.i = tail call i8* @PyMem_RawMalloc(i64 %mul.i) #3, !dbg !1123
  %3 = bitcast i8* %call1.i to i32*, !dbg !1123
  tail call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !1006, metadata !1076) #3, !dbg !1124
  %tobool.i = icmp eq i8* %call1.i, null, !dbg !1125
  br i1 %tobool.i, label %oom, label %while.cond.preheader.i, !dbg !1127

while.cond.preheader.i:                           ; preds = %if.then.1
  %4 = load i8, i8* %arg, align 1, !dbg !1128, !tbaa !1096
  %tobool2.31.i = icmp eq i8 %4, 0, !dbg !1129
  br i1 %tobool2.31.i, label %while.end.i, label %while.body.i.preheader, !dbg !1129

while.body.i.preheader:                           ; preds = %while.cond.preheader.i
  br label %while.body.i, !dbg !1130

while.body.i:                                     ; preds = %while.body.i.preheader, %while.body.i
  %5 = phi i8 [ %6, %while.body.i ], [ %4, %while.body.i.preheader ], !dbg !1132
  %out.033.i = phi i32* [ %out.0.be.i, %while.body.i ], [ %3, %while.body.i.preheader ], !dbg !1132
  %in.032.i = phi i8* [ %incdec.ptr.i, %while.body.i ], [ %arg, %while.body.i.preheader ], !dbg !1132
  %conv.i = zext i8 %5 to i32, !dbg !1130
  %cmp.i = icmp sgt i8 %5, -1, !dbg !1133
  %incdec.ptr.i = getelementptr i8, i8* %in.032.i, i64 1, !dbg !1134
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, i64 0, metadata !1007, metadata !1076) #3, !dbg !1135
  %add9.i = or i32 %conv.i, 56320, !dbg !1136
  %conv.add9.i = select i1 %cmp.i, i32 %conv.i, i32 %add9.i, !dbg !1137
  %out.0.be.i = getelementptr i32, i32* %out.033.i, i64 1, !dbg !1138
  store i32 %conv.add9.i, i32* %out.033.i, align 4, !dbg !1139, !tbaa !1107
  %6 = load i8, i8* %incdec.ptr.i, align 1, !dbg !1128, !tbaa !1096
  %tobool2.i = icmp eq i8 %6, 0, !dbg !1129
  br i1 %tobool2.i, label %while.end.i.loopexit, label %while.body.i, !dbg !1129

while.end.i.loopexit:                             ; preds = %while.body.i
  %out.0.be.i.lcssa = phi i32* [ %out.0.be.i, %while.body.i ]
  br label %while.end.i, !dbg !1140

while.end.i:                                      ; preds = %while.end.i.loopexit, %while.cond.preheader.i
  %out.0.lcssa.i = phi i32* [ %3, %while.cond.preheader.i ], [ %out.0.be.i.lcssa, %while.end.i.loopexit ], !dbg !1132
  store i32 0, i32* %out.0.lcssa.i, align 4, !dbg !1140, !tbaa !1107
  %cmp12.i = icmp eq i64* %size, null, !dbg !1141
  br i1 %cmp12.i, label %cleanup.84, label %if.then.14.i, !dbg !1143

if.then.14.i:                                     ; preds = %while.end.i
  %sub.ptr.lhs.cast.i = ptrtoint i32* %out.0.lcssa.i to i64, !dbg !1144
  %sub.ptr.rhs.cast.i = ptrtoint i8* %call1.i to i64, !dbg !1144
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !1144
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 2, !dbg !1144
  store i64 %sub.ptr.div.i, i64* %size, align 8, !dbg !1145, !tbaa !1146
  br label %cleanup.84, !dbg !1147

if.end.6:                                         ; preds = %if.end
  %call7 = tail call i64 @mbstowcs(i32* null, i8* %arg, i64 0) #3, !dbg !1148
  tail call void @llvm.dbg.value(metadata i64 %call7, i64 0, metadata !713, metadata !1076), !dbg !1149
  %cmp8 = icmp eq i64 %call7, -1, !dbg !1150
  br i1 %cmp8, label %if.end.30, label %if.then.9, !dbg !1151

if.then.9:                                        ; preds = %if.end.6
  %add = add i64 %call7, 1, !dbg !1152
  %mul = shl i64 %add, 2, !dbg !1153
  %call10 = tail call i8* @PyMem_RawMalloc(i64 %mul) #3, !dbg !1154
  %7 = bitcast i8* %call10 to i32*, !dbg !1155
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !712, metadata !1076), !dbg !1156
  %tobool11 = icmp eq i8* %call10, null, !dbg !1157
  br i1 %tobool11, label %oom, label %if.end.13, !dbg !1159

if.end.13:                                        ; preds = %if.then.9
  %call15 = tail call i64 @mbstowcs(i32* %7, i8* %arg, i64 %add) #3, !dbg !1160
  tail call void @llvm.dbg.value(metadata i64 %call15, i64 0, metadata !714, metadata !1076), !dbg !1161
  %cmp16 = icmp eq i64 %call15, -1, !dbg !1162
  br i1 %cmp16, label %if.end.29, label %for.cond.preheader, !dbg !1163

for.cond.preheader:                               ; preds = %if.end.13
  %8 = load i32, i32* %7, align 4, !dbg !1164, !tbaa !1107
  %cmp18.166 = icmp eq i32 %8, 0, !dbg !1167
  br i1 %cmp18.166, label %if.then.24, label %land.rhs.preheader, !dbg !1168

land.rhs.preheader:                               ; preds = %for.cond.preheader
  br label %land.rhs, !dbg !1169

land.rhs:                                         ; preds = %land.rhs.preheader, %for.inc
  %.pr = phi i32 [ %11, %for.inc ], [ %8, %land.rhs.preheader ], !dbg !1170
  %tmp.0167 = phi i32* [ %incdec.ptr, %for.inc ], [ %7, %land.rhs.preheader ]
  %9 = and i32 %.pr, -2048, !dbg !1169
  %10 = icmp eq i32 %9, 55296, !dbg !1169
  br i1 %10, label %if.end.29.loopexit, label %for.inc, !dbg !1172

for.inc:                                          ; preds = %land.rhs
  %incdec.ptr = getelementptr i32, i32* %tmp.0167, i64 1, !dbg !1174
  tail call void @llvm.dbg.value(metadata i32* %incdec.ptr, i64 0, metadata !732, metadata !1076), !dbg !1175
  %11 = load i32, i32* %incdec.ptr, align 4, !dbg !1164, !tbaa !1107
  %cmp18 = icmp eq i32 %11, 0, !dbg !1167
  br i1 %cmp18, label %if.then.24.loopexit, label %land.rhs, !dbg !1168

if.then.24.loopexit:                              ; preds = %for.inc
  br label %if.then.24, !dbg !1176

if.then.24:                                       ; preds = %if.then.24.loopexit, %for.cond.preheader
  %cmp25 = icmp eq i64* %size, null, !dbg !1176
  br i1 %cmp25, label %cleanup.84, label %if.then.26, !dbg !1179

if.then.26:                                       ; preds = %if.then.24
  store i64 %call15, i64* %size, align 8, !dbg !1180, !tbaa !1146
  br label %cleanup.84

if.end.29.loopexit:                               ; preds = %land.rhs
  br label %if.end.29, !dbg !1181

if.end.29:                                        ; preds = %if.end.29.loopexit, %if.end.13
  tail call void @PyMem_RawFree(i8* %call10) #3, !dbg !1181
  br label %if.end.30, !dbg !1182

if.end.30:                                        ; preds = %if.end.6, %if.end.29
  %call31 = tail call i64 @strlen(i8* %arg) #7, !dbg !1183
  %add32 = add i64 %call31, 1, !dbg !1184
  tail call void @llvm.dbg.value(metadata i64 %add32, i64 0, metadata !713, metadata !1076), !dbg !1149
  %mul33 = shl i64 %add32, 2, !dbg !1185
  %call34 = tail call i8* @PyMem_RawMalloc(i64 %mul33) #3, !dbg !1186
  %12 = bitcast i8* %call34 to i32*, !dbg !1187
  tail call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !712, metadata !1076), !dbg !1156
  %tobool35 = icmp eq i8* %call34, null, !dbg !1188
  br i1 %tobool35, label %oom, label %if.end.37, !dbg !1190

if.end.37:                                        ; preds = %if.end.30
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !715, metadata !1076), !dbg !1191
  tail call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !716, metadata !1076), !dbg !1192
  store i64 0, i64* %mbs, align 8, !dbg !1193
  %tobool38.160 = icmp eq i64 %add32, 0, !dbg !1194
  br i1 %tobool38.160, label %while.end.75, label %while.body.preheader, !dbg !1194

while.body.preheader:                             ; preds = %if.end.37
  br label %while.body

while.cond.61.while.cond.loopexit_crit_edge.loopexit.unr-lcssa: ; preds = %while.body.64
  br label %while.cond.61.while.cond.loopexit_crit_edge.loopexit, !dbg !1195

while.cond.61.while.cond.loopexit_crit_edge.loopexit: ; preds = %while.body.64.preheader.split, %while.cond.61.while.cond.loopexit_crit_edge.loopexit.unr-lcssa
  br label %while.cond.61.while.cond.loopexit_crit_edge, !dbg !1195

while.cond.61.while.cond.loopexit_crit_edge:      ; preds = %while.cond.61.while.cond.loopexit_crit_edge.loopexit, %middle.block
  %scevgep171 = getelementptr i8, i8* %in.0162, i64 %call40, !dbg !1195
  br label %while.cond.backedge, !dbg !1195

while.body:                                       ; preds = %while.body.preheader, %while.cond.backedge
  %out.0163 = phi i32* [ %out.0.be, %while.cond.backedge ], [ %12, %while.body.preheader ]
  %in.0162 = phi i8* [ %in.0.be, %while.cond.backedge ], [ %arg, %while.body.preheader ]
  %argsize.0161 = phi i64 [ %argsize.0.be, %while.cond.backedge ], [ %add32, %while.body.preheader ]
  %out.0163172 = bitcast i32* %out.0163 to i8*
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %tmpcast, i64 0, metadata !717, metadata !1076), !dbg !1198
  %call40 = call i64 @mbrtowc(i32* %out.0163, i8* %in.0162, i64 %argsize.0161, %struct.__mbstate_t* %tmpcast) #3, !dbg !1199
  call void @llvm.dbg.value(metadata i64 %call40, i64 0, metadata !737, metadata !1076), !dbg !1200
  switch i64 %call40, label %if.end.55 [
    i64 0, label %while.end.75.loopexit
    i64 -2, label %if.then.45
    i64 -1, label %if.then.51
  ], !dbg !1201

if.then.45:                                       ; preds = %while.body
  call void @PyMem_RawFree(i8* %call34) #3, !dbg !1202
  %cmp46 = icmp eq i64* %size, null, !dbg !1205
  br i1 %cmp46, label %cleanup.84, label %if.then.47, !dbg !1207

if.then.47:                                       ; preds = %if.then.45
  store i64 -2, i64* %size, align 8, !dbg !1208, !tbaa !1146
  br label %cleanup.84, !dbg !1209

if.then.51:                                       ; preds = %while.body
  %incdec.ptr52 = getelementptr i8, i8* %in.0162, i64 1, !dbg !1210
  call void @llvm.dbg.value(metadata i8* %incdec.ptr52, i64 0, metadata !715, metadata !1076), !dbg !1191
  %13 = load i8, i8* %in.0162, align 1, !dbg !1213, !tbaa !1096
  %conv = zext i8 %13 to i32, !dbg !1213
  %add53 = or i32 %conv, 56320, !dbg !1214
  %incdec.ptr54 = getelementptr i32, i32* %out.0163, i64 1, !dbg !1215
  call void @llvm.dbg.value(metadata i32* %incdec.ptr54, i64 0, metadata !716, metadata !1076), !dbg !1192
  store i32 %add53, i32* %out.0163, align 4, !dbg !1216, !tbaa !1107
  %dec = add i64 %argsize.0161, -1, !dbg !1217
  call void @llvm.dbg.value(metadata i64 %dec, i64 0, metadata !713, metadata !1076), !dbg !1149
  store i64 0, i64* %mbs, align 8, !dbg !1218
  br label %while.cond.backedge, !dbg !1219

while.cond.backedge:                              ; preds = %if.then.60, %while.cond.61.while.cond.loopexit_crit_edge, %if.then.51, %if.end.69
  %argsize.0.be = phi i64 [ %sub70, %if.end.69 ], [ %dec, %if.then.51 ], [ %sub, %while.cond.61.while.cond.loopexit_crit_edge ], [ %sub, %if.then.60 ]
  %in.0.be = phi i8* [ %add.ptr, %if.end.69 ], [ %incdec.ptr52, %if.then.51 ], [ %scevgep171, %while.cond.61.while.cond.loopexit_crit_edge ], [ %in.0162, %if.then.60 ]
  %out.0.be = phi i32* [ %incdec.ptr71, %if.end.69 ], [ %incdec.ptr54, %if.then.51 ], [ %scevgep, %while.cond.61.while.cond.loopexit_crit_edge ], [ %out.0163, %if.then.60 ]
  %tobool38 = icmp eq i64 %argsize.0.be, 0, !dbg !1194
  br i1 %tobool38, label %while.end.75.loopexit, label %while.body, !dbg !1194

if.end.55:                                        ; preds = %while.body
  %14 = load i32, i32* %out.0163, align 4, !dbg !1220, !tbaa !1107
  %15 = and i32 %14, -2048, !dbg !1220
  %16 = icmp eq i32 %15, 55296, !dbg !1220
  br i1 %16, label %if.then.60, label %if.end.69, !dbg !1220

if.then.60:                                       ; preds = %if.end.55
  %sub = sub i64 %argsize.0161, %call40, !dbg !1221
  call void @llvm.dbg.value(metadata i64 %sub, i64 0, metadata !713, metadata !1076), !dbg !1149
  %tobool63.155 = icmp eq i64 %call40, 0, !dbg !1195
  br i1 %tobool63.155, label %while.cond.backedge, label %while.body.64.lr.ph, !dbg !1195

while.body.64.lr.ph:                              ; preds = %if.then.60
  %scevgep = getelementptr i32, i32* %out.0163, i64 %call40, !dbg !1195
  %n.vec = and i64 %call40, -8
  %cmp.zero = icmp eq i64 %n.vec, 0
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck, !dbg !1195

vector.memcheck:                                  ; preds = %while.body.64.lr.ph
  %scevgep173 = getelementptr i32, i32* %out.0163, i64 -1, !dbg !1195
  %scevgep174 = getelementptr i32, i32* %scevgep173, i64 %call40, !dbg !1195
  %scevgep174175 = bitcast i32* %scevgep174 to i8*
  %scevgep176 = getelementptr i8, i8* %in.0162, i64 -1, !dbg !1195
  %scevgep177 = getelementptr i8, i8* %scevgep176, i64 %call40, !dbg !1195
  %bound0 = icmp ule i8* %out.0163172, %scevgep177, !dbg !1195
  %bound1 = icmp ule i8* %in.0162, %scevgep174175, !dbg !1195
  %memcheck.conflict = and i1 %bound0, %bound1, !dbg !1195
  %ind.end = sub i64 %call40, %n.vec, !dbg !1195
  %ptr.ind.end = getelementptr i32, i32* %out.0163, i64 %n.vec, !dbg !1195
  %ptr.ind.end182 = getelementptr i8, i8* %in.0162, i64 %n.vec, !dbg !1195
  br i1 %memcheck.conflict, label %middle.block, label %vector.body.preheader, !dbg !1195

vector.body.preheader:                            ; preds = %vector.memcheck
  %17 = add i64 %call40, -8
  %18 = lshr i64 %17, 3
  %19 = and i64 %18, 1
  %lcmp.mod = icmp eq i64 %19, 0
  br i1 %lcmp.mod, label %vector.body.prol, label %vector.body.preheader.split

vector.body.prol:                                 ; preds = %vector.body.preheader
  %20 = bitcast i8* %in.0162 to <4 x i8>*, !dbg !1222
  %wide.load.prol = load <4 x i8>, <4 x i8>* %20, align 1, !dbg !1222, !tbaa !1096
  %21 = getelementptr i8, i8* %in.0162, i64 4, !dbg !1222
  %22 = bitcast i8* %21 to <4 x i8>*, !dbg !1222
  %wide.load216.prol = load <4 x i8>, <4 x i8>* %22, align 1, !dbg !1222, !tbaa !1096
  %23 = zext <4 x i8> %wide.load.prol to <4 x i32>, !dbg !1222
  %24 = zext <4 x i8> %wide.load216.prol to <4 x i32>, !dbg !1222
  %25 = or <4 x i32> %23, <i32 56320, i32 56320, i32 56320, i32 56320>, !dbg !1223
  %26 = or <4 x i32> %24, <i32 56320, i32 56320, i32 56320, i32 56320>, !dbg !1223
  %27 = bitcast i32* %out.0163 to <4 x i32>*, !dbg !1224
  store <4 x i32> %25, <4 x i32>* %27, align 4, !dbg !1224, !tbaa !1107
  %28 = getelementptr i32, i32* %out.0163, i64 4, !dbg !1224
  %29 = bitcast i32* %28 to <4 x i32>*, !dbg !1224
  store <4 x i32> %26, <4 x i32>* %29, align 4, !dbg !1224, !tbaa !1107
  br label %vector.body.preheader.split

vector.body.preheader.split:                      ; preds = %vector.body.prol, %vector.body.preheader
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ 8, %vector.body.prol ]
  %30 = icmp eq i64 %18, 0
  br i1 %30, label %middle.block.loopexit, label %vector.body.preheader.split.split

vector.body.preheader.split.split:                ; preds = %vector.body.preheader.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.split.split
  %index = phi i64 [ %index.unr, %vector.body.preheader.split.split ], [ %index.next.1, %vector.body ]
  %next.gep = getelementptr i32, i32* %out.0163, i64 %index
  %next.gep200 = getelementptr i8, i8* %in.0162, i64 %index
  %31 = bitcast i8* %next.gep200 to <4 x i8>*, !dbg !1222
  %wide.load = load <4 x i8>, <4 x i8>* %31, align 1, !dbg !1222, !tbaa !1096
  %32 = getelementptr i8, i8* %next.gep200, i64 4, !dbg !1222
  %33 = bitcast i8* %32 to <4 x i8>*, !dbg !1222
  %wide.load216 = load <4 x i8>, <4 x i8>* %33, align 1, !dbg !1222, !tbaa !1096
  %34 = zext <4 x i8> %wide.load to <4 x i32>, !dbg !1222
  %35 = zext <4 x i8> %wide.load216 to <4 x i32>, !dbg !1222
  %36 = or <4 x i32> %34, <i32 56320, i32 56320, i32 56320, i32 56320>, !dbg !1223
  %37 = or <4 x i32> %35, <i32 56320, i32 56320, i32 56320, i32 56320>, !dbg !1223
  %38 = bitcast i32* %next.gep to <4 x i32>*, !dbg !1224
  store <4 x i32> %36, <4 x i32>* %38, align 4, !dbg !1224, !tbaa !1107
  %39 = getelementptr i32, i32* %next.gep, i64 4, !dbg !1224
  %40 = bitcast i32* %39 to <4 x i32>*, !dbg !1224
  store <4 x i32> %37, <4 x i32>* %40, align 4, !dbg !1224, !tbaa !1107
  %index.next = add i64 %index, 8
  %next.gep.1 = getelementptr i32, i32* %out.0163, i64 %index.next
  %next.gep200.1 = getelementptr i8, i8* %in.0162, i64 %index.next
  %41 = bitcast i8* %next.gep200.1 to <4 x i8>*, !dbg !1222
  %wide.load.1 = load <4 x i8>, <4 x i8>* %41, align 1, !dbg !1222, !tbaa !1096
  %42 = getelementptr i8, i8* %next.gep200.1, i64 4, !dbg !1222
  %43 = bitcast i8* %42 to <4 x i8>*, !dbg !1222
  %wide.load216.1 = load <4 x i8>, <4 x i8>* %43, align 1, !dbg !1222, !tbaa !1096
  %44 = zext <4 x i8> %wide.load.1 to <4 x i32>, !dbg !1222
  %45 = zext <4 x i8> %wide.load216.1 to <4 x i32>, !dbg !1222
  %46 = or <4 x i32> %44, <i32 56320, i32 56320, i32 56320, i32 56320>, !dbg !1223
  %47 = or <4 x i32> %45, <i32 56320, i32 56320, i32 56320, i32 56320>, !dbg !1223
  %48 = bitcast i32* %next.gep.1 to <4 x i32>*, !dbg !1224
  store <4 x i32> %46, <4 x i32>* %48, align 4, !dbg !1224, !tbaa !1107
  %49 = getelementptr i32, i32* %next.gep.1, i64 4, !dbg !1224
  %50 = bitcast i32* %49 to <4 x i32>*, !dbg !1224
  store <4 x i32> %47, <4 x i32>* %50, align 4, !dbg !1224, !tbaa !1107
  %index.next.1 = add i64 %index, 16
  %51 = icmp eq i64 %index.next.1, %n.vec
  br i1 %51, label %middle.block.loopexit.unr-lcssa, label %vector.body, !llvm.loop !1225

middle.block.loopexit.unr-lcssa:                  ; preds = %vector.body
  br label %middle.block.loopexit

middle.block.loopexit:                            ; preds = %vector.body.preheader.split, %middle.block.loopexit.unr-lcssa
  br label %middle.block

middle.block:                                     ; preds = %middle.block.loopexit, %vector.memcheck, %while.body.64.lr.ph
  %resume.val = phi i64 [ %call40, %while.body.64.lr.ph ], [ %call40, %vector.memcheck ], [ %ind.end, %middle.block.loopexit ]
  %resume.val178 = phi i32* [ %out.0163, %while.body.64.lr.ph ], [ %out.0163, %vector.memcheck ], [ %ptr.ind.end, %middle.block.loopexit ]
  %resume.val180 = phi i8* [ %in.0162, %while.body.64.lr.ph ], [ %in.0162, %vector.memcheck ], [ %ptr.ind.end182, %middle.block.loopexit ]
  %new.indc.resume.val = phi i64 [ 0, %while.body.64.lr.ph ], [ 0, %vector.memcheck ], [ %n.vec, %middle.block.loopexit ]
  %cmp.n = icmp eq i64 %call40, %new.indc.resume.val
  br i1 %cmp.n, label %while.cond.61.while.cond.loopexit_crit_edge, label %while.body.64.preheader, !dbg !1195

while.body.64.preheader:                          ; preds = %middle.block
  %52 = add i64 %resume.val, -1, !dbg !1228
  %xtraiter217 = and i64 %resume.val, 3, !dbg !1228
  %lcmp.mod218 = icmp eq i64 %xtraiter217, 0, !dbg !1228
  br i1 %lcmp.mod218, label %while.body.64.preheader.split, label %while.body.64.prol.preheader, !dbg !1228

while.body.64.prol.preheader:                     ; preds = %while.body.64.preheader
  br label %while.body.64.prol, !dbg !1228

while.body.64.prol:                               ; preds = %while.body.64.prol, %while.body.64.prol.preheader
  %converted.0158.prol = phi i64 [ %dec62.prol, %while.body.64.prol ], [ %resume.val, %while.body.64.prol.preheader ]
  %out.1157.prol = phi i32* [ %incdec.ptr68.prol, %while.body.64.prol ], [ %resume.val178, %while.body.64.prol.preheader ]
  %in.1156.prol = phi i8* [ %incdec.ptr65.prol, %while.body.64.prol ], [ %resume.val180, %while.body.64.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %while.body.64.prol ], [ %xtraiter217, %while.body.64.prol.preheader ]
  %dec62.prol = add i64 %converted.0158.prol, -1, !dbg !1228
  %incdec.ptr65.prol = getelementptr i8, i8* %in.1156.prol, i64 1, !dbg !1231
  call void @llvm.dbg.value(metadata i8* %incdec.ptr65.prol, i64 0, metadata !715, metadata !1076), !dbg !1191
  %53 = load i8, i8* %in.1156.prol, align 1, !dbg !1222, !tbaa !1096
  %conv66.prol = zext i8 %53 to i32, !dbg !1222
  %add67.prol = or i32 %conv66.prol, 56320, !dbg !1223
  %incdec.ptr68.prol = getelementptr i32, i32* %out.1157.prol, i64 1, !dbg !1232
  call void @llvm.dbg.value(metadata i32* %incdec.ptr68.prol, i64 0, metadata !716, metadata !1076), !dbg !1192
  store i32 %add67.prol, i32* %out.1157.prol, align 4, !dbg !1224, !tbaa !1107
  call void @llvm.dbg.value(metadata i64 %dec62.prol, i64 0, metadata !737, metadata !1076), !dbg !1200
  %prol.iter.sub = add i64 %prol.iter, -1, !dbg !1195
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0, !dbg !1195
  br i1 %prol.iter.cmp, label %while.body.64.preheader.split.loopexit, label %while.body.64.prol, !dbg !1195, !llvm.loop !1233

while.body.64.preheader.split.loopexit:           ; preds = %while.body.64.prol
  %incdec.ptr68.prol.lcssa = phi i32* [ %incdec.ptr68.prol, %while.body.64.prol ]
  %incdec.ptr65.prol.lcssa = phi i8* [ %incdec.ptr65.prol, %while.body.64.prol ]
  %dec62.prol.lcssa = phi i64 [ %dec62.prol, %while.body.64.prol ]
  br label %while.body.64.preheader.split, !dbg !1228

while.body.64.preheader.split:                    ; preds = %while.body.64.preheader, %while.body.64.preheader.split.loopexit
  %converted.0158.unr = phi i64 [ %resume.val, %while.body.64.preheader ], [ %dec62.prol.lcssa, %while.body.64.preheader.split.loopexit ]
  %out.1157.unr = phi i32* [ %resume.val178, %while.body.64.preheader ], [ %incdec.ptr68.prol.lcssa, %while.body.64.preheader.split.loopexit ]
  %in.1156.unr = phi i8* [ %resume.val180, %while.body.64.preheader ], [ %incdec.ptr65.prol.lcssa, %while.body.64.preheader.split.loopexit ]
  %54 = icmp ult i64 %52, 3, !dbg !1228
  br i1 %54, label %while.cond.61.while.cond.loopexit_crit_edge.loopexit, label %while.body.64.preheader.split.split, !dbg !1228

while.body.64.preheader.split.split:              ; preds = %while.body.64.preheader.split
  br label %while.body.64, !dbg !1228

while.body.64:                                    ; preds = %while.body.64, %while.body.64.preheader.split.split
  %converted.0158 = phi i64 [ %converted.0158.unr, %while.body.64.preheader.split.split ], [ %dec62.3, %while.body.64 ]
  %out.1157 = phi i32* [ %out.1157.unr, %while.body.64.preheader.split.split ], [ %incdec.ptr68.3, %while.body.64 ]
  %in.1156 = phi i8* [ %in.1156.unr, %while.body.64.preheader.split.split ], [ %incdec.ptr65.3, %while.body.64 ]
  %incdec.ptr65 = getelementptr i8, i8* %in.1156, i64 1, !dbg !1231
  call void @llvm.dbg.value(metadata i8* %incdec.ptr65, i64 0, metadata !715, metadata !1076), !dbg !1191
  %55 = load i8, i8* %in.1156, align 1, !dbg !1222, !tbaa !1096
  %conv66 = zext i8 %55 to i32, !dbg !1222
  %add67 = or i32 %conv66, 56320, !dbg !1223
  %incdec.ptr68 = getelementptr i32, i32* %out.1157, i64 1, !dbg !1232
  call void @llvm.dbg.value(metadata i32* %incdec.ptr68, i64 0, metadata !716, metadata !1076), !dbg !1192
  store i32 %add67, i32* %out.1157, align 4, !dbg !1224, !tbaa !1107
  %incdec.ptr65.1 = getelementptr i8, i8* %in.1156, i64 2, !dbg !1231
  call void @llvm.dbg.value(metadata i8* %incdec.ptr65, i64 0, metadata !715, metadata !1076), !dbg !1191
  %56 = load i8, i8* %incdec.ptr65, align 1, !dbg !1222, !tbaa !1096
  %conv66.1 = zext i8 %56 to i32, !dbg !1222
  %add67.1 = or i32 %conv66.1, 56320, !dbg !1223
  %incdec.ptr68.1 = getelementptr i32, i32* %out.1157, i64 2, !dbg !1232
  call void @llvm.dbg.value(metadata i32* %incdec.ptr68, i64 0, metadata !716, metadata !1076), !dbg !1192
  store i32 %add67.1, i32* %incdec.ptr68, align 4, !dbg !1224, !tbaa !1107
  %incdec.ptr65.2 = getelementptr i8, i8* %in.1156, i64 3, !dbg !1231
  call void @llvm.dbg.value(metadata i8* %incdec.ptr65, i64 0, metadata !715, metadata !1076), !dbg !1191
  %57 = load i8, i8* %incdec.ptr65.1, align 1, !dbg !1222, !tbaa !1096
  %conv66.2 = zext i8 %57 to i32, !dbg !1222
  %add67.2 = or i32 %conv66.2, 56320, !dbg !1223
  %incdec.ptr68.2 = getelementptr i32, i32* %out.1157, i64 3, !dbg !1232
  call void @llvm.dbg.value(metadata i32* %incdec.ptr68, i64 0, metadata !716, metadata !1076), !dbg !1192
  store i32 %add67.2, i32* %incdec.ptr68.1, align 4, !dbg !1224, !tbaa !1107
  %dec62.3 = add i64 %converted.0158, -4, !dbg !1228
  %incdec.ptr65.3 = getelementptr i8, i8* %in.1156, i64 4, !dbg !1231
  call void @llvm.dbg.value(metadata i8* %incdec.ptr65, i64 0, metadata !715, metadata !1076), !dbg !1191
  %58 = load i8, i8* %incdec.ptr65.2, align 1, !dbg !1222, !tbaa !1096
  %conv66.3 = zext i8 %58 to i32, !dbg !1222
  %add67.3 = or i32 %conv66.3, 56320, !dbg !1223
  %incdec.ptr68.3 = getelementptr i32, i32* %out.1157, i64 4, !dbg !1232
  call void @llvm.dbg.value(metadata i32* %incdec.ptr68, i64 0, metadata !716, metadata !1076), !dbg !1192
  store i32 %add67.3, i32* %incdec.ptr68.2, align 4, !dbg !1224, !tbaa !1107
  %tobool63.3 = icmp eq i64 %dec62.3, 0, !dbg !1195
  br i1 %tobool63.3, label %while.cond.61.while.cond.loopexit_crit_edge.loopexit.unr-lcssa, label %while.body.64, !dbg !1195, !llvm.loop !1235

if.end.69:                                        ; preds = %if.end.55
  %add.ptr = getelementptr i8, i8* %in.0162, i64 %call40, !dbg !1236
  call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !715, metadata !1076), !dbg !1191
  %sub70 = sub i64 %argsize.0161, %call40, !dbg !1237
  call void @llvm.dbg.value(metadata i64 %sub70, i64 0, metadata !713, metadata !1076), !dbg !1149
  %incdec.ptr71 = getelementptr i32, i32* %out.0163, i64 1, !dbg !1238
  call void @llvm.dbg.value(metadata i32* %incdec.ptr71, i64 0, metadata !716, metadata !1076), !dbg !1192
  br label %while.cond.backedge, !dbg !1239

while.end.75.loopexit:                            ; preds = %while.body, %while.cond.backedge
  %out.0.lcssa.ph = phi i32* [ %out.0.be, %while.cond.backedge ], [ %out.0163, %while.body ]
  br label %while.end.75, !dbg !1240

while.end.75:                                     ; preds = %while.end.75.loopexit, %if.end.37
  %out.0.lcssa = phi i32* [ %12, %if.end.37 ], [ %out.0.lcssa.ph, %while.end.75.loopexit ]
  %cmp76 = icmp eq i64* %size, null, !dbg !1240
  br i1 %cmp76, label %cleanup.84, label %if.then.78, !dbg !1242

if.then.78:                                       ; preds = %while.end.75
  %sub.ptr.lhs.cast = ptrtoint i32* %out.0.lcssa to i64, !dbg !1243
  %sub.ptr.rhs.cast = ptrtoint i8* %call34 to i64, !dbg !1243
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1243
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2, !dbg !1243
  store i64 %sub.ptr.div, i64* %size, align 8, !dbg !1244, !tbaa !1146
  br label %cleanup.84, !dbg !1245

oom:                                              ; preds = %if.then.1, %if.then.9, %if.end.30
  %cmp80 = icmp eq i64* %size, null, !dbg !1246
  br i1 %cmp80, label %cleanup.84, label %if.then.82, !dbg !1248

if.then.82:                                       ; preds = %oom
  store i64 -1, i64* %size, align 8, !dbg !1249, !tbaa !1146
  br label %cleanup.84, !dbg !1250

cleanup.84:                                       ; preds = %if.then.14.i, %while.end.i, %if.then.47, %if.then.45, %if.then.24, %if.then.82, %oom, %if.then.78, %while.end.75, %if.then.26
  %retval.5 = phi i32* [ %7, %if.then.26 ], [ %12, %while.end.75 ], [ %12, %if.then.78 ], [ null, %oom ], [ null, %if.then.82 ], [ %7, %if.then.24 ], [ null, %if.then.45 ], [ null, %if.then.47 ], [ %3, %while.end.i ], [ %3, %if.then.14.i ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #3, !dbg !1251
  ret i32* %retval.5, !dbg !1251
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @check_force_ascii() #0 {
entry:
  %encoding = alloca [100 x i8], align 16
  %ascii_aliases = alloca [14 x i8*], align 16
  %ch = alloca i8, align 1
  %wch = alloca i32, align 4
  %0 = getelementptr inbounds [100 x i8], [100 x i8]* %encoding, i64 0, i64 0, !dbg !1252
  call void @llvm.lifetime.start(i64 100, i8* %0) #3, !dbg !1252
  tail call void @llvm.dbg.declare(metadata [100 x i8]* %encoding, metadata !972, metadata !1076), !dbg !1253
  %1 = bitcast [14 x i8*]* %ascii_aliases to i8*, !dbg !1254
  call void @llvm.lifetime.start(i64 112, i8* %1) #3, !dbg !1254
  tail call void @llvm.dbg.declare(metadata [14 x i8*]* %ascii_aliases, metadata !978, metadata !1076), !dbg !1255
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([14 x i8*]* @check_force_ascii.ascii_aliases to i8*), i64 112, i32 16, i1 false), !dbg !1255
  %call = tail call i8* @setlocale(i32 0, i8* null) #3, !dbg !1256
  tail call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !968, metadata !1076), !dbg !1257
  %cmp = icmp eq i8* %call, null, !dbg !1258
  br i1 %cmp, label %cleanup.89, label %cond.true, !dbg !1260

cond.true:                                        ; preds = %entry
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !985, metadata !1076), !dbg !1261
  tail call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !986, metadata !1076), !dbg !1262
  %2 = load i8, i8* %call, align 1, !dbg !1262, !tbaa !1096
  %cmp8 = icmp eq i8 %2, 67, !dbg !1264
  br i1 %cmp8, label %cond.end, label %cleanup.89, !dbg !1267

cond.end:                                         ; preds = %cond.true
  %arrayidx11 = getelementptr i8, i8* %call, i64 1, !dbg !1268
  %3 = load i8, i8* %arrayidx11, align 1, !dbg !1268, !tbaa !1096
  %cmp40 = icmp eq i8 %3, 0, !dbg !1271
  br i1 %cmp40, label %if.end.43, label %cleanup.89, !dbg !1272

if.end.43:                                        ; preds = %cond.end
  %call44 = tail call i8* @nl_langinfo(i32 14) #3, !dbg !1273
  tail call void @llvm.dbg.value(metadata i8* %call44, i64 0, metadata !969, metadata !1076), !dbg !1274
  %tobool = icmp eq i8* %call44, null, !dbg !1275
  br i1 %tobool, label %cleanup.89, label %lor.lhs.false, !dbg !1277

lor.lhs.false:                                    ; preds = %if.end.43
  %4 = load i8, i8* %call44, align 1, !dbg !1278, !tbaa !1096
  %cmp47 = icmp eq i8 %4, 0, !dbg !1280
  br i1 %cmp47, label %cleanup.89, label %if.end.50, !dbg !1281

if.end.50:                                        ; preds = %lor.lhs.false
  %call51 = call i32 @_Py_normalize_encoding(i8* %call44, i8* %0, i64 100) #3, !dbg !1282
  %tobool52 = icmp eq i32 %call51, 0, !dbg !1282
  br i1 %tobool52, label %cleanup.89, label %for.body.lr.ph, !dbg !1284

for.body.lr.ph:                                   ; preds = %if.end.50
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !976, metadata !1076), !dbg !1285
  call void @llvm.dbg.value(metadata i8** %arraydecay55, i64 0, metadata !970, metadata !1076), !dbg !1286
  %arraydecay55 = getelementptr inbounds [14 x i8*], [14 x i8*]* %ascii_aliases, i64 0, i64 0, !dbg !1287
  br label %for.body, !dbg !1288

for.cond:                                         ; preds = %for.body
  %5 = load i8*, i8** %incdec.ptr, align 8, !dbg !1289, !tbaa !1290
  %cmp56 = icmp eq i8* %5, null, !dbg !1291
  br i1 %cmp56, label %cleanup.89.loopexit135, label %for.body, !dbg !1288

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %6 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %for.body.lr.ph ], [ %5, %for.cond ]
  %alias.0132 = phi i8** [ %arraydecay55, %for.body.lr.ph ], [ %incdec.ptr, %for.cond ]
  %call64 = call i32 @strcmp(i8* %0, i8* %6) #3, !dbg !1292
  %cmp65 = icmp eq i32 %call64, 0, !dbg !1293
  %incdec.ptr = getelementptr i8*, i8** %alias.0132, i64 1, !dbg !1294
  call void @llvm.dbg.value(metadata i8** %incdec.ptr, i64 0, metadata !970, metadata !1076), !dbg !1286
  br i1 %cmp65, label %for.cond.72.preheader, label %for.cond, !dbg !1295

for.cond.72.preheader:                            ; preds = %for.body
  %7 = bitcast i32* %wch to i8*, !dbg !1296
  br label %for.body.75, !dbg !1297

for.cond.72:                                      ; preds = %for.body.75
  %cmp73 = icmp ult i32 %inc, 255, !dbg !1298
  br i1 %cmp73, label %for.body.75, label %cleanup.89.loopexit, !dbg !1297

for.body.75:                                      ; preds = %for.cond.72.preheader, %for.cond.72
  %i.0130 = phi i32 [ 128, %for.cond.72.preheader ], [ %inc, %for.cond.72 ]
  call void @llvm.dbg.value(metadata i8* %ch, i64 0, metadata !996, metadata !1076), !dbg !1299
  call void @llvm.lifetime.start(i64 1, i8* nonnull %ch) #3, !dbg !1300
  call void @llvm.lifetime.start(i64 4, i8* %7) #3, !dbg !1296
  %conv79 = trunc i32 %i.0130 to i8, !dbg !1301
  call void @llvm.dbg.value(metadata i8 %conv79, i64 0, metadata !996, metadata !1076), !dbg !1299
  store i8 %conv79, i8* %ch, align 1, !dbg !1302, !tbaa !1096
  call void @llvm.dbg.value(metadata i8* %ch, i64 0, metadata !996, metadata !1076), !dbg !1299
  call void @llvm.dbg.value(metadata i32* %wch, i64 0, metadata !1000, metadata !1076), !dbg !1303
  %call80 = call i64 @mbstowcs(i32* nonnull %wch, i8* nonnull %ch, i64 1) #3, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %call80, i64 0, metadata !1001, metadata !1076), !dbg !1305
  %cmp81 = icmp eq i64 %call80, -1, !dbg !1306
  call void @llvm.lifetime.end(i64 4, i8* %7) #3, !dbg !1308
  call void @llvm.dbg.value(metadata i8* %ch, i64 0, metadata !996, metadata !1076), !dbg !1299
  call void @llvm.lifetime.end(i64 1, i8* nonnull %ch) #3, !dbg !1308
  %inc = add nuw nsw i32 %i.0130, 1, !dbg !1310
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !977, metadata !1076), !dbg !1311
  br i1 %cmp81, label %for.cond.72, label %cleanup.89.loopexit

cleanup.89.loopexit:                              ; preds = %for.body.75, %for.cond.72
  %retval.2.ph = phi i32 [ 1, %for.body.75 ], [ 0, %for.cond.72 ]
  br label %cleanup.89, !dbg !1312

cleanup.89.loopexit135:                           ; preds = %for.cond
  br label %cleanup.89, !dbg !1312

cleanup.89:                                       ; preds = %cleanup.89.loopexit135, %cleanup.89.loopexit, %cond.true, %entry, %lor.lhs.false, %if.end.43, %if.end.50, %cond.end
  %retval.2 = phi i32 [ 0, %cond.end ], [ 1, %if.end.50 ], [ 1, %if.end.43 ], [ 1, %lor.lhs.false ], [ 1, %entry ], [ 0, %cond.true ], [ %retval.2.ph, %cleanup.89.loopexit ], [ 0, %cleanup.89.loopexit135 ]
  call void @llvm.lifetime.end(i64 112, i8* %1) #3, !dbg !1312
  call void @llvm.lifetime.end(i64 100, i8* %0) #3, !dbg !1312
  ret i32 %retval.2, !dbg !1312
}

; Function Attrs: nounwind
declare i64 @mbstowcs(i32*, i8*, i64) #2

declare i8* @PyMem_RawMalloc(i64) #4

declare void @PyMem_RawFree(i8*) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) #2

; Function Attrs: nounwind uwtable
define i8* @_Py_wchar2char(i32* %text, i64* %error_pos) #0 {
entry:
  %buf = alloca [2 x i32], align 4
  tail call void @llvm.dbg.value(metadata i32* %text, i64 0, metadata !745, metadata !1076), !dbg !1313
  tail call void @llvm.dbg.value(metadata i64* %error_pos, i64 0, metadata !746, metadata !1076), !dbg !1314
  %call = tail call i64 @wcslen(i32* %text) #7, !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !747, metadata !1076), !dbg !1316
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !749, metadata !1076), !dbg !1317
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !750, metadata !1076), !dbg !1318
  %0 = bitcast [2 x i32]* %buf to i8*, !dbg !1319
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1319
  tail call void @llvm.dbg.declare(metadata [2 x i32]* %buf, metadata !755, metadata !1076), !dbg !1320
  %1 = load i32, i32* @force_ascii, align 4, !dbg !1321, !tbaa !1107
  %cmp = icmp eq i32 %1, -1, !dbg !1323
  br i1 %cmp, label %if.then, label %if.end, !dbg !1324

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @check_force_ascii(), !dbg !1325
  store i32 %call1, i32* @force_ascii, align 4, !dbg !1326, !tbaa !1107
  br label %if.end, !dbg !1327

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 [ %call1, %if.then ], [ %1, %entry ], !dbg !1328
  %tobool = icmp eq i32 %2, 0, !dbg !1328
  br i1 %tobool, label %if.end.4, label %if.then.2, !dbg !1330

if.then.2:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata i32* %text, i64 0, metadata !1011, metadata !1076) #3, !dbg !1331
  tail call void @llvm.dbg.value(metadata i64* %error_pos, i64 0, metadata !1012, metadata !1076) #3, !dbg !1333
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1013, metadata !1076) #3, !dbg !1334
  %cmp.i = icmp ne i64* %error_pos, null, !dbg !1335
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !1337

if.then.i:                                        ; preds = %if.then.2
  store i64 -1, i64* %error_pos, align 8, !dbg !1338, !tbaa !1146
  br label %if.end.i, !dbg !1339

if.end.i:                                         ; preds = %if.then.i, %if.then.2
  %call.i = tail call i64 @wcslen(i32* %text) #7, !dbg !1340
  tail call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !1015, metadata !1076) #3, !dbg !1341
  %add.i = add i64 %call.i, 1, !dbg !1342
  %call1.i = tail call i8* @PyMem_Malloc(i64 %add.i) #3, !dbg !1343
  tail call void @llvm.dbg.value(metadata i8* %call1.i, i64 0, metadata !1013, metadata !1076) #3, !dbg !1334
  %cmp2.i = icmp eq i8* %call1.i, null, !dbg !1344
  br i1 %cmp2.i, label %cleanup, label %for.cond.preheader.i, !dbg !1346

for.cond.preheader.i:                             ; preds = %if.end.i
  %cmp5.50.i = icmp eq i64 %call.i, 0, !dbg !1347
  br i1 %cmp5.50.i, label %for.end.i, label %for.body.i.preheader, !dbg !1350

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  br label %for.body.i, !dbg !1351

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %i.052.i = phi i64 [ %inc.i, %for.inc.i ], [ 0, %for.body.i.preheader ], !dbg !1353
  %out.051.i = phi i8* [ %out.1.i, %for.inc.i ], [ %call1.i, %for.body.i.preheader ], !dbg !1353
  %arrayidx.i = getelementptr i32, i32* %text, i64 %i.052.i, !dbg !1351
  %3 = load i32, i32* %arrayidx.i, align 4, !dbg !1351, !tbaa !1107
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1017, metadata !1076) #3, !dbg !1354
  %cmp6.i = icmp slt i32 %3, 128, !dbg !1355
  %4 = and i32 %3, -128, !dbg !1353
  %5 = icmp eq i32 %4, 56448, !dbg !1357
  %or.cond.i = or i1 %cmp6.i, %5, !dbg !1359
  br i1 %or.cond.i, label %for.inc.i, label %if.else.15.i, !dbg !1359

if.else.15.i:                                     ; preds = %for.body.i
  %i.052.i.lcssa = phi i64 [ %i.052.i, %for.body.i ]
  br i1 %cmp.i, label %if.then.18.i, label %if.end.19.i, !dbg !1360

if.then.18.i:                                     ; preds = %if.else.15.i
  store i64 %i.052.i.lcssa, i64* %error_pos, align 8, !dbg !1362, !tbaa !1146
  br label %if.end.19.i, !dbg !1364

if.end.19.i:                                      ; preds = %if.then.18.i, %if.else.15.i
  tail call void @PyMem_Free(i8* %call1.i) #3, !dbg !1365
  br label %cleanup, !dbg !1366

for.inc.i:                                        ; preds = %for.body.i
  %out.1.i = getelementptr i8, i8* %out.051.i, i64 1, !dbg !1367
  %storemerge.i = trunc i32 %3 to i8, !dbg !1369
  store i8 %storemerge.i, i8* %out.051.i, align 1, !dbg !1371, !tbaa !1096
  %inc.i = add nuw i64 %i.052.i, 1, !dbg !1372
  tail call void @llvm.dbg.value(metadata i64 %inc.i, i64 0, metadata !1016, metadata !1076) #3, !dbg !1373
  %cmp5.i = icmp ult i64 %inc.i, %call.i, !dbg !1347
  br i1 %cmp5.i, label %for.body.i, label %for.end.i.loopexit, !dbg !1350

for.end.i.loopexit:                               ; preds = %for.inc.i
  %out.1.i.lcssa = phi i8* [ %out.1.i, %for.inc.i ]
  br label %for.end.i, !dbg !1374

for.end.i:                                        ; preds = %for.end.i.loopexit, %for.cond.preheader.i
  %out.0.lcssa.i = phi i8* [ %call1.i, %for.cond.preheader.i ], [ %out.1.i.lcssa, %for.end.i.loopexit ], !dbg !1353
  store i8 0, i8* %out.0.lcssa.i, align 1, !dbg !1374, !tbaa !1096
  br label %cleanup, !dbg !1375

if.end.4:                                         ; preds = %if.end
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !752, metadata !1076), !dbg !1376
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %buf, i64 0, i64 1, !dbg !1377
  store i32 0, i32* %arrayidx, align 4, !dbg !1378, !tbaa !1107
  %cmp5.109 = icmp eq i64 %call, 0, !dbg !1379
  %arrayidx14 = getelementptr [2 x i32], [2 x i32]* %buf, i64 0, i64 0, !dbg !1383
  br i1 %cmp5.109, label %for.end.preheader, label %for.body.lr.ph.us.preheader, !dbg !1387

for.body.lr.ph.us.preheader:                      ; preds = %if.end.4
  br label %for.body.lr.ph.us, !dbg !1388

for.end.preheader:                                ; preds = %if.end.4
  br label %for.end, !dbg !1388

for.end.us:                                       ; preds = %for.inc.us
  %size.2.us.lcssa = phi i64 [ %size.2.us, %for.inc.us ]
  %bytes.2.us.lcssa = phi i8* [ %bytes.2.us, %for.inc.us ]
  %cmp43.us = icmp eq i8* %result.0.us, null, !dbg !1389
  br i1 %cmp43.us, label %if.end.46.us, label %if.then.45.loopexit141, !dbg !1391

if.end.46.us:                                     ; preds = %for.end.us
  %add47.us = add i64 %size.2.us.lcssa, 1, !dbg !1392
  call void @llvm.dbg.value(metadata i64 %add47.us, i64 0, metadata !752, metadata !1076), !dbg !1376
  %call48.us = call i8* @PyMem_Malloc(i64 %add47.us) #3, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %call48.us, i64 0, metadata !749, metadata !1076), !dbg !1317
  %cmp49.us = icmp eq i8* %call48.us, null, !dbg !1394
  br i1 %cmp49.us, label %if.then.51.loopexit142, label %for.body.lr.ph.us, !dbg !1396

for.body.us:                                      ; preds = %for.body.lr.ph.us, %for.inc.us
  %size.1113.us = phi i64 [ %size.0.us, %for.body.lr.ph.us ], [ %size.2.us, %for.inc.us ]
  %i.0111.us = phi i64 [ 0, %for.body.lr.ph.us ], [ %inc42.us, %for.inc.us ]
  %bytes.1110.us = phi i8* [ %result.0.us, %for.body.lr.ph.us ], [ %bytes.2.us, %for.inc.us ]
  %arrayidx6.us = getelementptr i32, i32* %text, i64 %i.0111.us, !dbg !1397
  %6 = load i32, i32* %arrayidx6.us, align 4, !dbg !1397, !tbaa !1107
  call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !754, metadata !1076), !dbg !1398
  %7 = and i32 %6, -128, !dbg !1399
  %8 = icmp eq i32 %7, 56448, !dbg !1399
  br i1 %8, label %if.then.9.us, label %if.else.13.us, !dbg !1399

if.else.13.us:                                    ; preds = %for.body.us
  store i32 %6, i32* %arrayidx14, align 4, !dbg !1400, !tbaa !1107
  %cmp15.us = icmp ne i8* %bytes.1110.us, null, !dbg !1401
  br i1 %cmp15.us, label %if.then.17.us, label %if.else.19.us, !dbg !1403

if.else.19.us:                                    ; preds = %if.else.13.us
  %call21.us = call i64 @wcstombs(i8* null, i32* %arrayidx14, i64 0) #3, !dbg !1404
  call void @llvm.dbg.value(metadata i64 %call21.us, i64 0, metadata !753, metadata !1076), !dbg !1405
  br label %if.end.22.us

if.then.17.us:                                    ; preds = %if.else.13.us
  %call18.us = call i64 @wcstombs(i8* %bytes.1110.us, i32* %arrayidx14, i64 %size.1113.us) #3, !dbg !1406
  call void @llvm.dbg.value(metadata i64 %call18.us, i64 0, metadata !753, metadata !1076), !dbg !1405
  br label %if.end.22.us, !dbg !1407

if.end.22.us:                                     ; preds = %if.then.17.us, %if.else.19.us
  %converted.0.us = phi i64 [ %call18.us, %if.then.17.us ], [ %call21.us, %if.else.19.us ]
  %cmp23.us = icmp eq i64 %converted.0.us, -1, !dbg !1408
  br i1 %cmp23.us, label %if.then.25, label %if.end.34.us, !dbg !1410

if.end.34.us:                                     ; preds = %if.end.22.us
  br i1 %cmp15.us, label %if.then.37.us, label %if.else.39.us, !dbg !1411

if.else.39.us:                                    ; preds = %if.end.34.us
  %add.us = add i64 %converted.0.us, %size.1113.us, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %add.us, i64 0, metadata !752, metadata !1076), !dbg !1376
  br label %for.inc.us

if.then.37.us:                                    ; preds = %if.end.34.us
  %add.ptr.us = getelementptr i8, i8* %bytes.1110.us, i64 %converted.0.us, !dbg !1414
  call void @llvm.dbg.value(metadata i8* %add.ptr.us, i64 0, metadata !750, metadata !1076), !dbg !1318
  %sub38.us = sub i64 %size.1113.us, %converted.0.us, !dbg !1416
  call void @llvm.dbg.value(metadata i64 %sub38.us, i64 0, metadata !752, metadata !1076), !dbg !1376
  br label %for.inc.us, !dbg !1417

if.then.9.us:                                     ; preds = %for.body.us
  %cmp10.us = icmp eq i8* %bytes.1110.us, null, !dbg !1418
  br i1 %cmp10.us, label %if.else.us, label %if.then.11.us, !dbg !1421

if.then.11.us:                                    ; preds = %if.then.9.us
  %conv.us = trunc i32 %6 to i8, !dbg !1422
  %incdec.ptr.us = getelementptr i8, i8* %bytes.1110.us, i64 1, !dbg !1424
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.us, i64 0, metadata !750, metadata !1076), !dbg !1318
  store i8 %conv.us, i8* %bytes.1110.us, align 1, !dbg !1425, !tbaa !1096
  %dec.us = add i64 %size.1113.us, -1, !dbg !1426
  call void @llvm.dbg.value(metadata i64 %dec.us, i64 0, metadata !752, metadata !1076), !dbg !1376
  br label %for.inc.us, !dbg !1427

if.else.us:                                       ; preds = %if.then.9.us
  %inc.us = add i64 %size.1113.us, 1, !dbg !1428
  call void @llvm.dbg.value(metadata i64 %inc.us, i64 0, metadata !752, metadata !1076), !dbg !1376
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.else.us, %if.then.11.us, %if.then.37.us, %if.else.39.us
  %bytes.2.us = phi i8* [ %incdec.ptr.us, %if.then.11.us ], [ null, %if.else.us ], [ %add.ptr.us, %if.then.37.us ], [ null, %if.else.39.us ]
  %size.2.us = phi i64 [ %dec.us, %if.then.11.us ], [ %inc.us, %if.else.us ], [ %sub38.us, %if.then.37.us ], [ %add.us, %if.else.39.us ]
  %inc42.us = add nuw i64 %i.0111.us, 1, !dbg !1429
  call void @llvm.dbg.value(metadata i64 %inc42.us, i64 0, metadata !751, metadata !1076), !dbg !1388
  %cmp5.us = icmp ult i64 %inc42.us, %call, !dbg !1379
  br i1 %cmp5.us, label %for.body.us, label %for.end.us, !dbg !1387

for.body.lr.ph.us:                                ; preds = %for.body.lr.ph.us.preheader, %if.end.46.us
  %result.0.us = phi i8* [ %call48.us, %if.end.46.us ], [ null, %for.body.lr.ph.us.preheader ]
  %size.0.us = phi i64 [ %add47.us, %if.end.46.us ], [ 0, %for.body.lr.ph.us.preheader ]
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !751, metadata !1076), !dbg !1388
  br label %for.body.us, !dbg !1387

if.then.25:                                       ; preds = %if.end.22.us
  %result.0.us.lcssa = phi i8* [ %result.0.us, %if.end.22.us ]
  %i.0111.us.lcssa = phi i64 [ %i.0111.us, %if.end.22.us ]
  %cmp26 = icmp eq i8* %result.0.us.lcssa, null, !dbg !1430
  br i1 %cmp26, label %if.end.29, label %if.then.28, !dbg !1433

if.then.28:                                       ; preds = %if.then.25
  call void @PyMem_Free(i8* %result.0.us.lcssa) #3, !dbg !1434
  br label %if.end.29, !dbg !1434

if.end.29:                                        ; preds = %if.then.25, %if.then.28
  %cmp30 = icmp eq i64* %error_pos, null, !dbg !1435
  br i1 %cmp30, label %cleanup, label %if.then.32, !dbg !1437

if.then.32:                                       ; preds = %if.end.29
  store i64 %i.0111.us.lcssa, i64* %error_pos, align 8, !dbg !1438, !tbaa !1146
  br label %cleanup, !dbg !1439

for.end:                                          ; preds = %for.end.preheader, %if.end.46
  %result.0 = phi i8* [ %call48, %if.end.46 ], [ null, %for.end.preheader ]
  %size.0 = phi i64 [ %add47, %if.end.46 ], [ 0, %for.end.preheader ]
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !751, metadata !1076), !dbg !1388
  %cmp43 = icmp eq i8* %result.0, null, !dbg !1389
  br i1 %cmp43, label %if.end.46, label %if.then.45.loopexit, !dbg !1391

if.then.45.loopexit:                              ; preds = %for.end
  %result.0.lcssa150 = phi i8* [ %result.0, %for.end ]
  br label %if.then.45, !dbg !1440

if.then.45.loopexit141:                           ; preds = %for.end.us
  %result.0.us.lcssa154 = phi i8* [ %result.0.us, %for.end.us ]
  %bytes.2.us.lcssa.lcssa = phi i8* [ %bytes.2.us.lcssa, %for.end.us ]
  br label %if.then.45, !dbg !1440

if.then.45:                                       ; preds = %if.then.45.loopexit141, %if.then.45.loopexit
  %result.0.lcssa = phi i8* [ %result.0.lcssa150, %if.then.45.loopexit ], [ %result.0.us.lcssa154, %if.then.45.loopexit141 ]
  %bytes.1.lcssa.lcssa = phi i8* [ %result.0.lcssa150, %if.then.45.loopexit ], [ %bytes.2.us.lcssa.lcssa, %if.then.45.loopexit141 ]
  store i8 0, i8* %bytes.1.lcssa.lcssa, align 1, !dbg !1440, !tbaa !1096
  br label %cleanup, !dbg !1442

if.end.46:                                        ; preds = %for.end
  %add47 = add i64 %size.0, 1, !dbg !1392
  call void @llvm.dbg.value(metadata i64 %add47, i64 0, metadata !752, metadata !1076), !dbg !1376
  %call48 = call i8* @PyMem_Malloc(i64 %add47) #3, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %call48, i64 0, metadata !749, metadata !1076), !dbg !1317
  %cmp49 = icmp eq i8* %call48, null, !dbg !1394
  br i1 %cmp49, label %if.then.51.loopexit, label %for.end, !dbg !1396

if.then.51.loopexit:                              ; preds = %if.end.46
  br label %if.then.51, !dbg !1443

if.then.51.loopexit142:                           ; preds = %if.end.46.us
  br label %if.then.51, !dbg !1443

if.then.51:                                       ; preds = %if.then.51.loopexit142, %if.then.51.loopexit
  %cmp52 = icmp eq i64* %error_pos, null, !dbg !1443
  br i1 %cmp52, label %cleanup, label %if.then.54, !dbg !1446

if.then.54:                                       ; preds = %if.then.51
  store i64 -1, i64* %error_pos, align 8, !dbg !1447, !tbaa !1146
  br label %cleanup, !dbg !1448

cleanup:                                          ; preds = %for.end.i, %if.end.19.i, %if.end.i, %if.then.54, %if.then.51, %if.then.32, %if.end.29, %if.then.45
  %retval.0 = phi i8* [ %result.0.lcssa, %if.then.45 ], [ null, %if.end.29 ], [ null, %if.then.32 ], [ null, %if.then.51 ], [ null, %if.then.54 ], [ null, %if.end.19.i ], [ %call1.i, %for.end.i ], [ null, %if.end.i ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #3, !dbg !1449
  ret i8* %retval.0, !dbg !1449
}

; Function Attrs: nounwind readonly
declare i64 @wcslen(i32*) #5

; Function Attrs: nounwind
declare i64 @wcstombs(i8*, i32*, i64) #2

declare void @PyMem_Free(i8*) #4

declare i8* @PyMem_Malloc(i64) #4

; Function Attrs: nounwind uwtable
define i32 @_Py_wstat(i32* %path, %struct.stat* %buf) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32* %path, i64 0, metadata !800, metadata !1076), !dbg !1450
  tail call void @llvm.dbg.value(metadata %struct.stat* %buf, i64 0, metadata !801, metadata !1076), !dbg !1451
  %call = tail call i8* @_Py_wchar2char(i32* %path, i64* null), !dbg !1452
  tail call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !803, metadata !1076), !dbg !1453
  %cmp = icmp eq i8* %call, null, !dbg !1454
  br i1 %cmp, label %if.then, label %if.end, !dbg !1456

if.then:                                          ; preds = %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !1457
  store i32 22, i32* %call1, align 4, !dbg !1459, !tbaa !1107
  br label %cleanup, !dbg !1460

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.stat* %buf to %struct.stat64*, !dbg !1461
  tail call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !1043, metadata !1076) #3, !dbg !1462
  tail call void @llvm.dbg.value(metadata %struct.stat64* %0, i64 0, metadata !1044, metadata !1076) #3, !dbg !1462
  %call.i = tail call i32 @__xstat64(i32 1, i8* nonnull %call, %struct.stat64* nonnull %0) #3, !dbg !1464
  tail call void @llvm.dbg.value(metadata i32 %call.i, i64 0, metadata !802, metadata !1076), !dbg !1465
  tail call void @PyMem_Free(i8* %call) #3, !dbg !1466
  br label %cleanup, !dbg !1467

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %call.i, %if.end ]
  ret i32 %retval.0, !dbg !1468
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind uwtable
define i32 @_Py_stat(%struct._object* %path, %struct.stat* %statbuf) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %path, i64 0, metadata !808, metadata !1076), !dbg !1469
  tail call void @llvm.dbg.value(metadata %struct.stat* %statbuf, i64 0, metadata !809, metadata !1076), !dbg !1470
  %call = tail call %struct._object* @PyUnicode_EncodeFSDefault(%struct._object* %path) #3, !dbg !1471
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !811, metadata !1076), !dbg !1472
  %cmp = icmp eq %struct._object* %call, null, !dbg !1473
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1475

if.end:                                           ; preds = %entry
  %ob_sval = getelementptr inbounds %struct._object, %struct._object* %call, i64 2, !dbg !1476
  %arraydecay = bitcast %struct._object* %ob_sval to i8*, !dbg !1476
  %0 = bitcast %struct.stat* %statbuf to %struct.stat64*, !dbg !1477
  tail call void @llvm.dbg.value(metadata i8* %arraydecay, i64 0, metadata !1043, metadata !1076) #3, !dbg !1478
  tail call void @llvm.dbg.value(metadata %struct.stat64* %0, i64 0, metadata !1044, metadata !1076) #3, !dbg !1478
  %call.i = tail call i32 @__xstat64(i32 1, i8* nonnull %arraydecay, %struct.stat64* nonnull %0) #3, !dbg !1480
  tail call void @llvm.dbg.value(metadata i32 %call.i, i64 0, metadata !810, metadata !1076), !dbg !1481
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !812, metadata !1076), !dbg !1482
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1484
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1484, !tbaa !1083
  %dec = add i64 %1, -1, !dbg !1484
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1484, !tbaa !1083
  %cmp2 = icmp eq i64 %dec, 0, !dbg !1484
  br i1 %cmp2, label %if.else, label %cleanup, !dbg !1486

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1487
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1487, !tbaa !1489
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1487
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1487, !tbaa !1490
  tail call void %3(%struct._object* %call) #3, !dbg !1487
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %entry
  %retval.0 = phi i32 [ -2, %entry ], [ %call.i, %if.end ], [ %call.i, %if.else ]
  ret i32 %retval.0, !dbg !1493
}

declare %struct._object* @PyUnicode_EncodeFSDefault(%struct._object*) #4

; Function Attrs: nounwind uwtable
define i32 @_Py_get_inheritable(i32 %fd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !818, metadata !1076), !dbg !1494
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !1049, metadata !1076) #3, !dbg !1495
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1050, metadata !1076) #3, !dbg !1497
  %call.i = tail call i32 (i32, i32, ...) @fcntl(i32 %fd, i32 1, i32 0) #3, !dbg !1498
  tail call void @llvm.dbg.value(metadata i32 %call.i, i64 0, metadata !1051, metadata !1076) #3, !dbg !1499
  %cmp.i = icmp eq i32 %call.i, -1, !dbg !1500
  br i1 %cmp.i, label %if.then.i, label %if.end.3.i, !dbg !1502

if.then.i:                                        ; preds = %entry
  %0 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !1503, !tbaa !1290
  %call2.i = tail call %struct._object* @PyErr_SetFromErrno(%struct._object* %0) #3, !dbg !1506
  br label %get_inheritable.exit, !dbg !1506

if.end.3.i:                                       ; preds = %entry
  %and.i = and i32 %call.i, 1, !dbg !1507
  %1 = xor i32 %and.i, 1, !dbg !1508
  br label %get_inheritable.exit, !dbg !1509

get_inheritable.exit:                             ; preds = %if.then.i, %if.end.3.i
  %retval.0.i = phi i32 [ %1, %if.end.3.i ], [ -1, %if.then.i ], !dbg !1510
  ret i32 %retval.0.i, !dbg !1511
}

; Function Attrs: nounwind uwtable
define i32 @_Py_set_inheritable(i32 %fd, i32 %inheritable, i32* %atomic_flag_works) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !824, metadata !1076), !dbg !1512
  tail call void @llvm.dbg.value(metadata i32 %inheritable, i64 0, metadata !825, metadata !1076), !dbg !1513
  tail call void @llvm.dbg.value(metadata i32* %atomic_flag_works, i64 0, metadata !826, metadata !1076), !dbg !1514
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !1056, metadata !1076) #3, !dbg !1515
  tail call void @llvm.dbg.value(metadata i32 %inheritable, i64 0, metadata !1057, metadata !1076) #3, !dbg !1517
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1058, metadata !1076) #3, !dbg !1518
  tail call void @llvm.dbg.value(metadata i32* %atomic_flag_works, i64 0, metadata !1059, metadata !1076) #3, !dbg !1519
  %cmp.i = icmp eq i32* %atomic_flag_works, null, !dbg !1520
  %tobool.i = icmp ne i32 %inheritable, 0, !dbg !1521
  %or.cond.i = or i1 %tobool.i, %cmp.i, !dbg !1523
  br i1 %or.cond.i, label %if.end.11.i, label %if.then.i, !dbg !1523

if.then.i:                                        ; preds = %entry
  %0 = load i32, i32* %atomic_flag_works, align 4, !dbg !1524, !tbaa !1107
  %cmp1.i = icmp eq i32 %0, -1, !dbg !1525
  br i1 %cmp1.i, label %if.then.2.i, label %if.end.7.i, !dbg !1526

if.then.2.i:                                      ; preds = %if.then.i
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !1049, metadata !1076) #3, !dbg !1527
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1050, metadata !1076) #3, !dbg !1529
  %call.i.i = tail call i32 (i32, i32, ...) @fcntl(i32 %fd, i32 1, i32 0) #3, !dbg !1530
  tail call void @llvm.dbg.value(metadata i32 %call.i.i, i64 0, metadata !1051, metadata !1076) #3, !dbg !1531
  %cmp.i.i = icmp eq i32 %call.i.i, -1, !dbg !1532
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i, !dbg !1533

if.then.i.i:                                      ; preds = %if.then.2.i
  %1 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !1534, !tbaa !1290
  %call2.i.i = tail call %struct._object* @PyErr_SetFromErrno(%struct._object* %1) #3, !dbg !1535
  br label %set_inheritable.exit, !dbg !1535

if.end.i:                                         ; preds = %if.then.2.i
  %and.i.i = and i32 %call.i.i, 1, !dbg !1536
  store i32 %and.i.i, i32* %atomic_flag_works, align 4, !dbg !1537, !tbaa !1107
  br label %if.end.7.i, !dbg !1538

if.end.7.i:                                       ; preds = %if.end.i, %if.then.i
  %2 = phi i32 [ %and.i.i, %if.end.i ], [ %0, %if.then.i ], !dbg !1539
  %tobool8.i = icmp eq i32 %2, 0, !dbg !1539
  br i1 %tobool8.i, label %if.end.11.i, label %set_inheritable.exit, !dbg !1541

if.end.11.i:                                      ; preds = %if.end.7.i, %entry
  %..i = select i1 %tobool.i, i64 21584, i64 21585, !dbg !1542
  %call15.i = tail call i32 (i32, i64, ...) @ioctl(i32 %fd, i64 %..i, i8* null) #3, !dbg !1544
  tail call void @llvm.dbg.value(metadata i32 %call15.i, i64 0, metadata !1061, metadata !1076) #3, !dbg !1545
  %tobool16.i = icmp eq i32 %call15.i, 0, !dbg !1546
  br i1 %tobool16.i, label %set_inheritable.exit, label %if.then.17.i, !dbg !1548

if.then.17.i:                                     ; preds = %if.end.11.i
  %3 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !1549, !tbaa !1290
  %call20.i = tail call %struct._object* @PyErr_SetFromErrno(%struct._object* %3) #3, !dbg !1552
  br label %set_inheritable.exit, !dbg !1552

set_inheritable.exit:                             ; preds = %if.then.i.i, %if.end.7.i, %if.end.11.i, %if.then.17.i
  %retval.1.i = phi i32 [ 0, %if.end.7.i ], [ -1, %if.then.17.i ], [ 0, %if.end.11.i ], [ -1, %if.then.i.i ], !dbg !1538
  ret i32 %retval.1.i, !dbg !1553
}

; Function Attrs: nounwind uwtable
define i32 @_Py_open(i8* nocapture readonly %pathname, i32 %flags) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %pathname, i64 0, metadata !831, metadata !1076), !dbg !1554
  tail call void @llvm.dbg.value(metadata i32 %flags, i64 0, metadata !832, metadata !1076), !dbg !1555
  tail call void @llvm.dbg.value(metadata i32* @_Py_open_cloexec_works, i64 0, metadata !834, metadata !1076), !dbg !1556
  %or = or i32 %flags, 524288, !dbg !1557
  tail call void @llvm.dbg.value(metadata i32 %or, i64 0, metadata !832, metadata !1076), !dbg !1555
  %call = tail call i32 (i8*, i32, ...) @open64(i8* %pathname, i32 %or) #3, !dbg !1558
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !833, metadata !1076), !dbg !1559
  %cmp = icmp slt i32 %call, 0, !dbg !1560
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1562

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !1056, metadata !1076) #3, !dbg !1563
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1057, metadata !1076) #3, !dbg !1566
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1058, metadata !1076) #3, !dbg !1567
  tail call void @llvm.dbg.value(metadata i32* @_Py_open_cloexec_works, i64 0, metadata !1059, metadata !1076) #3, !dbg !1568
  %0 = load i32, i32* @_Py_open_cloexec_works, align 4, !dbg !1569, !tbaa !1107
  %cmp1.i = icmp eq i32 %0, -1, !dbg !1570
  br i1 %cmp1.i, label %if.then.2.i, label %if.end.7.i, !dbg !1571

if.then.2.i:                                      ; preds = %if.end
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !1049, metadata !1076) #3, !dbg !1572
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1050, metadata !1076) #3, !dbg !1574
  %call.i.i = tail call i32 (i32, i32, ...) @fcntl(i32 %call, i32 1, i32 0) #3, !dbg !1575
  tail call void @llvm.dbg.value(metadata i32 %call.i.i, i64 0, metadata !1051, metadata !1076) #3, !dbg !1576
  %cmp.i.i = icmp eq i32 %call.i.i, -1, !dbg !1577
  br i1 %cmp.i.i, label %if.then.3, label %if.end.i, !dbg !1578

if.end.i:                                         ; preds = %if.then.2.i
  %and.i.i = and i32 %call.i.i, 1, !dbg !1579
  store i32 %and.i.i, i32* @_Py_open_cloexec_works, align 4, !dbg !1580, !tbaa !1107
  br label %if.end.7.i, !dbg !1581

if.end.7.i:                                       ; preds = %if.end.i, %if.end
  %1 = phi i32 [ %and.i.i, %if.end.i ], [ %0, %if.end ], !dbg !1582
  %tobool8.i = icmp eq i32 %1, 0, !dbg !1582
  br i1 %tobool8.i, label %if.end.11.i, label %cleanup, !dbg !1583

if.end.11.i:                                      ; preds = %if.end.7.i
  %call15.i = tail call i32 (i32, i64, ...) @ioctl(i32 %call, i64 21585, i8* null) #3, !dbg !1584
  tail call void @llvm.dbg.value(metadata i32 %call15.i, i64 0, metadata !1061, metadata !1076) #3, !dbg !1585
  %tobool16.i = icmp eq i32 %call15.i, 0, !dbg !1586
  br i1 %tobool16.i, label %cleanup, label %if.then.3, !dbg !1587

if.then.3:                                        ; preds = %if.end.11.i, %if.then.2.i
  %call4 = tail call i32 @close(i32 %call) #3, !dbg !1588
  br label %cleanup, !dbg !1590

cleanup:                                          ; preds = %if.end.11.i, %if.end.7.i, %entry, %if.then.3
  %retval.0 = phi i32 [ -1, %if.then.3 ], [ %call, %entry ], [ %call, %if.end.7.i ], [ %call, %if.end.11.i ]
  ret i32 %retval.0, !dbg !1591
}

declare i32 @open64(i8* nocapture readonly, i32, ...) #4

declare i32 @close(i32) #4

; Function Attrs: nounwind uwtable
define noalias %struct._IO_FILE* @_Py_wfopen(i32* %path, i32* %mode) #0 {
entry:
  %cmode = alloca [10 x i8], align 1
  tail call void @llvm.dbg.value(metadata i32* %path, i64 0, metadata !839, metadata !1076), !dbg !1592
  tail call void @llvm.dbg.value(metadata i32* %mode, i64 0, metadata !840, metadata !1076), !dbg !1593
  %0 = getelementptr inbounds [10 x i8], [10 x i8]* %cmode, i64 0, i64 0, !dbg !1594
  call void @llvm.lifetime.start(i64 10, i8* %0) #3, !dbg !1594
  tail call void @llvm.dbg.declare(metadata [10 x i8]* %cmode, metadata !843, metadata !1076), !dbg !1595
  %call = call i64 @wcstombs(i8* %0, i32* %mode, i64 10) #3, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !847, metadata !1076), !dbg !1597
  %cmp1 = icmp ugt i64 %call, 9, !dbg !1598
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1600

if.then:                                          ; preds = %entry
  %call2 = tail call i32* @__errno_location() #1, !dbg !1601
  store i32 22, i32* %call2, align 4, !dbg !1603, !tbaa !1107
  br label %cleanup, !dbg !1604

if.end:                                           ; preds = %entry
  %call3 = call i8* @_Py_wchar2char(i32* %path, i64* null), !dbg !1605
  call void @llvm.dbg.value(metadata i8* %call3, i64 0, metadata !842, metadata !1076), !dbg !1606
  %cmp4 = icmp eq i8* %call3, null, !dbg !1607
  br i1 %cmp4, label %cleanup, label %if.end.6, !dbg !1609

if.end.6:                                         ; preds = %if.end
  %call8 = call %struct._IO_FILE* @fopen64(i8* %call3, i8* %0) #3, !dbg !1610
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call8, i64 0, metadata !841, metadata !1076), !dbg !1611
  call void @PyMem_Free(i8* %call3) #3, !dbg !1612
  %cmp9 = icmp eq %struct._IO_FILE* %call8, null, !dbg !1613
  br i1 %cmp9, label %cleanup, label %if.end.11, !dbg !1615

if.end.11:                                        ; preds = %if.end.6
  %call12 = call i32 @fileno(%struct._IO_FILE* %call8) #3, !dbg !1616
  call void @llvm.dbg.value(metadata i32 %call12, i64 0, metadata !1069, metadata !1076) #3, !dbg !1618
  call void @llvm.dbg.value(metadata i32 %call12, i64 0, metadata !1056, metadata !1076) #3, !dbg !1620
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1057, metadata !1076) #3, !dbg !1622
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1058, metadata !1076) #3, !dbg !1623
  call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !1059, metadata !1076) #3, !dbg !1624
  %call15.i.i = call i32 (i32, i64, ...) @ioctl(i32 %call12, i64 21585, i8* null) #3, !dbg !1625
  call void @llvm.dbg.value(metadata i32 %call15.i.i, i64 0, metadata !1061, metadata !1076) #3, !dbg !1626
  %not.tobool16.i.i = icmp eq i32 %call15.i.i, 0, !dbg !1627
  br i1 %not.tobool16.i.i, label %cleanup, label %if.then.15, !dbg !1628

if.then.15:                                       ; preds = %if.end.11
  %call16 = call i32 @fclose(%struct._IO_FILE* %call8) #3, !dbg !1629
  br label %cleanup, !dbg !1631

cleanup:                                          ; preds = %if.end.11, %if.end.6, %if.end, %if.then.15, %if.then
  %retval.0 = phi %struct._IO_FILE* [ null, %if.then ], [ null, %if.then.15 ], [ null, %if.end ], [ null, %if.end.6 ], [ %call8, %if.end.11 ]
  call void @llvm.lifetime.end(i64 10, i8* %0) #3, !dbg !1632
  ret %struct._IO_FILE* %retval.0, !dbg !1632
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen64(i8* nocapture readonly, i8* nocapture readonly) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind uwtable
define noalias %struct._IO_FILE* @_Py_fopen(i8* nocapture readonly %pathname, i8* nocapture readonly %mode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %pathname, i64 0, metadata !852, metadata !1076), !dbg !1633
  tail call void @llvm.dbg.value(metadata i8* %mode, i64 0, metadata !853, metadata !1076), !dbg !1634
  %call = tail call %struct._IO_FILE* @fopen64(i8* %pathname, i8* %mode) #3, !dbg !1635
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %call, i64 0, metadata !854, metadata !1076), !dbg !1636
  %cmp = icmp eq %struct._IO_FILE* %call, null, !dbg !1637
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1639

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @fileno(%struct._IO_FILE* %call) #3, !dbg !1640
  tail call void @llvm.dbg.value(metadata i32 %call1, i64 0, metadata !1069, metadata !1076) #3, !dbg !1642
  tail call void @llvm.dbg.value(metadata i32 %call1, i64 0, metadata !1056, metadata !1076) #3, !dbg !1644
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1057, metadata !1076) #3, !dbg !1646
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1058, metadata !1076) #3, !dbg !1647
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !1059, metadata !1076) #3, !dbg !1648
  %call15.i.i = tail call i32 (i32, i64, ...) @ioctl(i32 %call1, i64 21585, i8* null) #3, !dbg !1649
  tail call void @llvm.dbg.value(metadata i32 %call15.i.i, i64 0, metadata !1061, metadata !1076) #3, !dbg !1650
  %not.tobool16.i.i = icmp eq i32 %call15.i.i, 0, !dbg !1651
  br i1 %not.tobool16.i.i, label %cleanup, label %if.then.4, !dbg !1652

if.then.4:                                        ; preds = %if.end
  %call5 = tail call i32 @fclose(%struct._IO_FILE* %call) #3, !dbg !1653
  br label %cleanup, !dbg !1655

cleanup:                                          ; preds = %if.end, %entry, %if.then.4
  %retval.0 = phi %struct._IO_FILE* [ null, %if.then.4 ], [ null, %entry ], [ %call, %if.end ]
  ret %struct._IO_FILE* %retval.0, !dbg !1656
}

; Function Attrs: nounwind uwtable
define noalias %struct._IO_FILE* @_Py_fopen_obj(%struct._object* %path, i8* nocapture readonly %mode) #0 {
entry:
  %bytes = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %path, i64 0, metadata !859, metadata !1076), !dbg !1657
  tail call void @llvm.dbg.value(metadata i8* %mode, i64 0, metadata !860, metadata !1076), !dbg !1658
  %0 = bitcast %struct._object** %bytes to i8*, !dbg !1659
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1659
  %call = call i32 @PyUnicode_FSConverter(%struct._object* %path, i8* %0) #3, !dbg !1660
  %tobool = icmp eq i32 %call, 0, !dbg !1660
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1662

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %bytes, i64 0, metadata !862, metadata !1076), !dbg !1663
  %1 = bitcast %struct._object** %bytes to %struct.PyBytesObject**, !dbg !1664
  %2 = load %struct.PyBytesObject*, %struct.PyBytesObject** %1, align 8, !dbg !1664, !tbaa !1290
  %arraydecay = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %2, i64 0, i32 2, i64 0, !dbg !1664
  %call1 = call %struct._IO_FILE* @fopen64(i8* %arraydecay, i8* %mode) #3, !dbg !1665
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call1, i64 0, metadata !861, metadata !1076), !dbg !1666
  call void @llvm.dbg.value(metadata %struct._object** %bytes, i64 0, metadata !862, metadata !1076), !dbg !1663
  %3 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !1667, !tbaa !1290
  call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !863, metadata !1076), !dbg !1667
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 0, !dbg !1669
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1669, !tbaa !1083
  %dec = add i64 %4, -1, !dbg !1669
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1669, !tbaa !1083
  %cmp = icmp eq i64 %dec, 0, !dbg !1669
  br i1 %cmp, label %if.else, label %if.end.3, !dbg !1671

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 1, !dbg !1672
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1672, !tbaa !1489
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1672
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1672, !tbaa !1490
  call void %6(%struct._object* %3) #3, !dbg !1672
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.else
  %cmp4 = icmp eq %struct._IO_FILE* %call1, null, !dbg !1674
  br i1 %cmp4, label %cleanup, label %if.end.6, !dbg !1676

if.end.6:                                         ; preds = %if.end.3
  %call7 = call i32 @fileno(%struct._IO_FILE* %call1) #3, !dbg !1677
  call void @llvm.dbg.value(metadata i32 %call7, i64 0, metadata !1069, metadata !1076) #3, !dbg !1679
  call void @llvm.dbg.value(metadata i32 %call7, i64 0, metadata !1056, metadata !1076) #3, !dbg !1681
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1057, metadata !1076) #3, !dbg !1683
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1058, metadata !1076) #3, !dbg !1684
  call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !1059, metadata !1076) #3, !dbg !1685
  %call15.i.i = call i32 (i32, i64, ...) @ioctl(i32 %call7, i64 21585, i8* null) #3, !dbg !1686
  call void @llvm.dbg.value(metadata i32 %call15.i.i, i64 0, metadata !1061, metadata !1076) #3, !dbg !1687
  %not.tobool16.i.i = icmp eq i32 %call15.i.i, 0, !dbg !1688
  br i1 %not.tobool16.i.i, label %cleanup, label %if.then.10, !dbg !1689

if.then.10:                                       ; preds = %if.end.6
  %call11 = call i32 @fclose(%struct._IO_FILE* %call1) #3, !dbg !1690
  br label %cleanup, !dbg !1692

cleanup:                                          ; preds = %if.end.6, %if.end.3, %entry, %if.then.10
  %retval.0 = phi %struct._IO_FILE* [ null, %if.then.10 ], [ null, %entry ], [ null, %if.end.3 ], [ %call1, %if.end.6 ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #3, !dbg !1693
  ret %struct._IO_FILE* %retval.0, !dbg !1693
}

declare i32 @PyUnicode_FSConverter(%struct._object*, i8*) #4

; Function Attrs: nounwind uwtable
define i32 @_Py_wreadlink(i32* %path, i32* %buf, i64 %bufsiz) #0 {
entry:
  %cbuf = alloca [4096 x i8], align 16
  %r1 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i32* %path, i64 0, metadata !869, metadata !1076), !dbg !1694
  tail call void @llvm.dbg.value(metadata i32* %buf, i64 0, metadata !870, metadata !1076), !dbg !1695
  tail call void @llvm.dbg.value(metadata i64 %bufsiz, i64 0, metadata !871, metadata !1076), !dbg !1696
  %0 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cbuf, i64 0, i64 0, !dbg !1697
  call void @llvm.lifetime.start(i64 4096, i8* %0) #3, !dbg !1697
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %cbuf, metadata !873, metadata !1076), !dbg !1698
  %1 = bitcast i64* %r1 to i8*, !dbg !1699
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1699
  %call = tail call i8* @_Py_wchar2char(i32* %path, i64* null), !dbg !1700
  tail call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !872, metadata !1076), !dbg !1701
  %cmp = icmp eq i8* %call, null, !dbg !1702
  br i1 %cmp, label %if.then, label %if.end, !dbg !1704

if.then:                                          ; preds = %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !1705
  store i32 22, i32* %call1, align 4, !dbg !1707, !tbaa !1107
  br label %cleanup, !dbg !1708

if.end:                                           ; preds = %entry
  %call2 = call i64 @readlink(i8* %call, i8* %0, i64 4096) #3, !dbg !1709
  %conv = trunc i64 %call2 to i32, !dbg !1710
  tail call void @llvm.dbg.value(metadata i32 %conv, i64 0, metadata !878, metadata !1076), !dbg !1711
  tail call void @PyMem_Free(i8* %call) #3, !dbg !1712
  %cmp3 = icmp eq i32 %conv, -1, !dbg !1713
  br i1 %cmp3, label %cleanup, label %if.end.6, !dbg !1715

if.end.6:                                         ; preds = %if.end
  %sext = shl i64 %call2, 32, !dbg !1716
  %conv7 = ashr exact i64 %sext, 32, !dbg !1716
  %cmp8 = icmp eq i64 %conv7, 4096, !dbg !1718
  br i1 %cmp8, label %if.then.10, label %if.end.12, !dbg !1719

if.then.10:                                       ; preds = %if.end.6
  %call11 = tail call i32* @__errno_location() #1, !dbg !1720
  store i32 22, i32* %call11, align 4, !dbg !1722, !tbaa !1107
  br label %cleanup, !dbg !1723

if.end.12:                                        ; preds = %if.end.6
  %arrayidx = getelementptr [4096 x i8], [4096 x i8]* %cbuf, i64 0, i64 %conv7, !dbg !1724
  store i8 0, i8* %arrayidx, align 1, !dbg !1725, !tbaa !1096
  tail call void @llvm.dbg.value(metadata i64* %r1, i64 0, metadata !879, metadata !1076), !dbg !1726
  %call14 = call i32* @_Py_char2wchar(i8* %0, i64* nonnull %r1), !dbg !1727
  call void @llvm.dbg.value(metadata i32* %call14, i64 0, metadata !877, metadata !1076), !dbg !1728
  %cmp15 = icmp eq i32* %call14, null, !dbg !1729
  br i1 %cmp15, label %if.then.17, label %if.end.19, !dbg !1731

if.then.17:                                       ; preds = %if.end.12
  %call18 = tail call i32* @__errno_location() #1, !dbg !1732
  store i32 22, i32* %call18, align 4, !dbg !1734, !tbaa !1107
  br label %cleanup, !dbg !1735

if.end.19:                                        ; preds = %if.end.12
  call void @llvm.dbg.value(metadata i64* %r1, i64 0, metadata !879, metadata !1076), !dbg !1726
  %2 = load i64, i64* %r1, align 8, !dbg !1736, !tbaa !1146
  %cmp20 = icmp ult i64 %2, %bufsiz, !dbg !1738
  br i1 %cmp20, label %if.end.24, label %if.then.22, !dbg !1739

if.then.22:                                       ; preds = %if.end.19
  %3 = bitcast i32* %call14 to i8*, !dbg !1740
  call void @PyMem_RawFree(i8* %3) #3, !dbg !1742
  %call23 = tail call i32* @__errno_location() #1, !dbg !1743
  store i32 22, i32* %call23, align 4, !dbg !1744, !tbaa !1107
  br label %cleanup, !dbg !1745

if.end.24:                                        ; preds = %if.end.19
  %call25 = call i32* @wcsncpy(i32* %buf, i32* %call14, i64 %bufsiz) #3, !dbg !1746
  %4 = bitcast i32* %call14 to i8*, !dbg !1747
  call void @PyMem_RawFree(i8* %4) #3, !dbg !1748
  call void @llvm.dbg.value(metadata i64* %r1, i64 0, metadata !879, metadata !1076), !dbg !1726
  %5 = load i64, i64* %r1, align 8, !dbg !1749, !tbaa !1146
  %conv26 = trunc i64 %5 to i32, !dbg !1750
  br label %cleanup, !dbg !1751

cleanup:                                          ; preds = %if.end, %if.end.24, %if.then.22, %if.then.17, %if.then.10, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then.10 ], [ -1, %if.then.17 ], [ -1, %if.then.22 ], [ %conv26, %if.end.24 ], [ -1, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #3, !dbg !1752
  call void @llvm.lifetime.end(i64 4096, i8* %0) #3, !dbg !1752
  ret i32 %retval.0, !dbg !1752
}

; Function Attrs: nounwind
declare i64 @readlink(i8* nocapture readonly, i8* nocapture, i64) #2

; Function Attrs: nounwind
declare i32* @wcsncpy(i32*, i32*, i64) #2

; Function Attrs: nounwind uwtable
define i32* @_Py_wrealpath(i32* %path, i32* %resolved_path, i64 %resolved_path_size) #0 {
entry:
  %cresolved_path = alloca [4096 x i8], align 16
  %r = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i32* %path, i64 0, metadata !884, metadata !1076), !dbg !1753
  tail call void @llvm.dbg.value(metadata i32* %resolved_path, i64 0, metadata !885, metadata !1076), !dbg !1754
  tail call void @llvm.dbg.value(metadata i64 %resolved_path_size, i64 0, metadata !886, metadata !1076), !dbg !1755
  %0 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cresolved_path, i64 0, i64 0, !dbg !1756
  call void @llvm.lifetime.start(i64 4096, i8* %0) #3, !dbg !1756
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %cresolved_path, metadata !888, metadata !1076), !dbg !1757
  %1 = bitcast i64* %r to i8*, !dbg !1758
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1758
  %call = tail call i8* @_Py_wchar2char(i32* %path, i64* null), !dbg !1759
  tail call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !887, metadata !1076), !dbg !1760
  %cmp = icmp eq i8* %call, null, !dbg !1761
  br i1 %cmp, label %if.then, label %if.end, !dbg !1763

if.then:                                          ; preds = %entry
  %call1 = tail call i32* @__errno_location() #1, !dbg !1764
  store i32 22, i32* %call1, align 4, !dbg !1766, !tbaa !1107
  br label %cleanup, !dbg !1767

if.end:                                           ; preds = %entry
  %call2 = call i8* @realpath(i8* %call, i8* %0) #3, !dbg !1768
  call void @llvm.dbg.value(metadata i8* %call2, i64 0, metadata !890, metadata !1076), !dbg !1769
  call void @PyMem_Free(i8* %call) #3, !dbg !1770
  %cmp3 = icmp eq i8* %call2, null, !dbg !1771
  br i1 %cmp3, label %cleanup, label %if.end.5, !dbg !1773

if.end.5:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64* %r, i64 0, metadata !891, metadata !1076), !dbg !1774
  %call7 = call i32* @_Py_char2wchar(i8* %0, i64* nonnull %r), !dbg !1775
  call void @llvm.dbg.value(metadata i32* %call7, i64 0, metadata !889, metadata !1076), !dbg !1776
  %cmp8 = icmp eq i32* %call7, null, !dbg !1777
  br i1 %cmp8, label %if.then.9, label %if.end.11, !dbg !1779

if.then.9:                                        ; preds = %if.end.5
  %call10 = tail call i32* @__errno_location() #1, !dbg !1780
  store i32 22, i32* %call10, align 4, !dbg !1782, !tbaa !1107
  br label %cleanup, !dbg !1783

if.end.11:                                        ; preds = %if.end.5
  call void @llvm.dbg.value(metadata i64* %r, i64 0, metadata !891, metadata !1076), !dbg !1774
  %2 = load i64, i64* %r, align 8, !dbg !1784, !tbaa !1146
  %cmp12 = icmp ult i64 %2, %resolved_path_size, !dbg !1786
  br i1 %cmp12, label %if.end.15, label %if.then.13, !dbg !1787

if.then.13:                                       ; preds = %if.end.11
  %3 = bitcast i32* %call7 to i8*, !dbg !1788
  call void @PyMem_RawFree(i8* %3) #3, !dbg !1790
  %call14 = tail call i32* @__errno_location() #1, !dbg !1791
  store i32 22, i32* %call14, align 4, !dbg !1792, !tbaa !1107
  br label %cleanup, !dbg !1793

if.end.15:                                        ; preds = %if.end.11
  %call16 = call i32* @wcsncpy(i32* %resolved_path, i32* %call7, i64 %resolved_path_size) #3, !dbg !1794
  %4 = bitcast i32* %call7 to i8*, !dbg !1795
  call void @PyMem_RawFree(i8* %4) #3, !dbg !1796
  br label %cleanup, !dbg !1797

cleanup:                                          ; preds = %if.end, %if.end.15, %if.then.13, %if.then.9, %if.then
  %retval.0 = phi i32* [ null, %if.then ], [ null, %if.then.9 ], [ null, %if.then.13 ], [ %resolved_path, %if.end.15 ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #3, !dbg !1798
  call void @llvm.lifetime.end(i64 4096, i8* %0) #3, !dbg !1798
  ret i32* %retval.0, !dbg !1798
}

; Function Attrs: nounwind
declare i8* @realpath(i8* nocapture readonly, i8*) #2

; Function Attrs: nounwind uwtable
define i32* @_Py_wgetcwd(i32* %buf, i64 %size) #0 {
entry:
  %fname = alloca [4096 x i8], align 16
  %len = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i32* %buf, i64 0, metadata !896, metadata !1076), !dbg !1799
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !897, metadata !1076), !dbg !1800
  %0 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i64 0, i64 0, !dbg !1801
  call void @llvm.lifetime.start(i64 4096, i8* %0) #3, !dbg !1801
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %fname, metadata !898, metadata !1076), !dbg !1802
  %1 = bitcast i64* %len to i8*, !dbg !1803
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1803
  %call = call i8* @getcwd(i8* %0, i64 4096) #3, !dbg !1804
  %cmp = icmp eq i8* %call, null, !dbg !1806
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1807

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64* %len, i64 0, metadata !900, metadata !1076), !dbg !1808
  %call2 = call i32* @_Py_char2wchar(i8* %0, i64* nonnull %len), !dbg !1809
  call void @llvm.dbg.value(metadata i32* %call2, i64 0, metadata !899, metadata !1076), !dbg !1810
  %cmp3 = icmp eq i32* %call2, null, !dbg !1811
  br i1 %cmp3, label %cleanup, label %if.end.5, !dbg !1813

if.end.5:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64* %len, i64 0, metadata !900, metadata !1076), !dbg !1808
  %2 = load i64, i64* %len, align 8, !dbg !1814, !tbaa !1146
  %cmp6 = icmp ult i64 %2, %size, !dbg !1816
  br i1 %cmp6, label %if.end.8, label %if.then.7, !dbg !1817

if.then.7:                                        ; preds = %if.end.5
  %3 = bitcast i32* %call2 to i8*, !dbg !1818
  call void @PyMem_RawFree(i8* %3) #3, !dbg !1820
  br label %cleanup, !dbg !1821

if.end.8:                                         ; preds = %if.end.5
  %call9 = call i32* @wcsncpy(i32* %buf, i32* %call2, i64 %size) #3, !dbg !1822
  %4 = bitcast i32* %call2 to i8*, !dbg !1823
  call void @PyMem_RawFree(i8* %4) #3, !dbg !1824
  br label %cleanup, !dbg !1825

cleanup:                                          ; preds = %if.end, %entry, %if.end.8, %if.then.7
  %retval.0 = phi i32* [ null, %if.then.7 ], [ %buf, %if.end.8 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #3, !dbg !1826
  call void @llvm.lifetime.end(i64 4096, i8* %0) #3, !dbg !1826
  ret i32* %retval.0, !dbg !1826
}

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @_Py_dup(i32 %fd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %fd, i64 0, metadata !903, metadata !1076), !dbg !1827
  %call = tail call %struct._ts* @PyEval_SaveThread() #3, !dbg !1828
  tail call void @llvm.dbg.value(metadata %struct._ts* %call, i64 0, metadata !904, metadata !1076), !dbg !1828
  %call1 = tail call i32 (i32, i32, ...) @fcntl(i32 %fd, i32 1030, i32 0) #3, !dbg !1829
  tail call void @llvm.dbg.value(metadata i32 %call1, i64 0, metadata !903, metadata !1076), !dbg !1827
  tail call void @PyEval_RestoreThread(%struct._ts* %call) #3, !dbg !1830
  %cmp = icmp slt i32 %call1, 0, !dbg !1831
  br i1 %cmp, label %if.then, label %return, !dbg !1833

if.then:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !1834, !tbaa !1290
  %call2 = tail call %struct._object* @PyErr_SetFromErrno(%struct._object* %0) #3, !dbg !1836
  br label %return, !dbg !1837

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %call1, %entry ]
  ret i32 %retval.0, !dbg !1838
}

declare %struct._ts* @PyEval_SaveThread() #4

declare i32 @fcntl(i32, i32, ...) #4

declare void @PyEval_RestoreThread(%struct._ts*) #4

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

declare i32 @_Py_normalize_encoding(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i32 @__xstat64(i32, i8*, %struct.stat64*) #2

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1073, !1074}
!llvm.ident = !{!1075}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !341, subprograms: !697, globals: !1070)
!1 = !DIFile(filename: "Python/fileutils.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 41, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!344 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!345 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !344, line: 105, size: 128, align: 64, elements: !346)
!346 = !{!347, !355}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !345, file: !344, line: 107, baseType: !348, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !349, line: 177, baseType: !350)
!349 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !351, line: 102, baseType: !352)
!351 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !353, line: 181, baseType: !354)
!353 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!385 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!433 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!619 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!632 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!687 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!688 = !DICompositeType(tag: DW_TAG_structure_type, file: !687, line: 31, size: 320, align: 64, elements: !689)
!689 = !{!690, !691, !692}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !688, file: !687, line: 32, baseType: !360, size: 192, align: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !688, file: !687, line: 33, baseType: !556, size: 64, align: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !688, file: !687, line: 34, baseType: !418, size: 8, align: 8, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64, align: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64, align: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !684)
!697 = !{!698, !705, !739, !759, !804, !814, !819, !827, !835, !848, !855, !865, !880, !892, !901, !964, !1002, !1009, !1018, !1045, !1052, !1067}
!698 = !DISubprogram(name: "_Py_device_encoding", scope: !1, file: !1, line: 37, type: !699, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i32)* @_Py_device_encoding, variables: !701)
!699 = !DISubroutineType(types: !700)
!700 = !{!342, !381}
!701 = !{!702, !703}
!702 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !698, file: !1, line: 37, type: !381)
!703 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codeset", scope: !704, file: !1, line: 58, type: !389)
!704 = distinct !DILexicalBlock(scope: !698, file: !1, line: 57, column: 5)
!705 = !DISubprogram(name: "_Py_char2wchar", scope: !1, file: !1, line: 261, type: !706, isLocal: false, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, function: i32* (i8*, i64*)* @_Py_char2wchar, variables: !709)
!706 = !DISubroutineType(types: !707)
!707 = !{!681, !366, !708}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!709 = !{!710, !711, !712, !713, !714, !715, !716, !717, !732, !737}
!710 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !705, file: !1, line: 261, type: !366)
!711 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !705, file: !1, line: 261, type: !708)
!712 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !705, file: !1, line: 274, type: !681)
!713 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argsize", scope: !705, file: !1, line: 275, type: !432)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !705, file: !1, line: 276, type: !432)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in", scope: !705, file: !1, line: 278, type: !683)
!716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out", scope: !705, file: !1, line: 279, type: !681)
!717 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mbs", scope: !705, file: !1, line: 280, type: !718)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !719, line: 106, baseType: !720)
!719 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !719, line: 94, baseType: !721)
!721 = !DICompositeType(tag: DW_TAG_structure_type, file: !719, line: 82, size: 64, align: 32, elements: !722)
!722 = !{!723, !724}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !721, file: !719, line: 84, baseType: !381, size: 32, align: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !721, file: !719, line: 93, baseType: !725, size: 32, align: 32, offset: 32)
!725 = !DICompositeType(tag: DW_TAG_union_type, scope: !721, file: !719, line: 85, size: 32, align: 32, elements: !726)
!726 = !{!727, !728}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !725, file: !719, line: 88, baseType: !679, size: 32, align: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !725, file: !719, line: 92, baseType: !729, size: 32, align: 8)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 32, align: 8, elements: !730)
!730 = !{!731}
!731 = !DISubrange(count: 4)
!732 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !733, file: !1, line: 311, type: !681)
!733 = distinct !DILexicalBlock(scope: !734, file: !1, line: 310, column: 34)
!734 = distinct !DILexicalBlock(scope: !735, file: !1, line: 310, column: 13)
!735 = distinct !DILexicalBlock(scope: !736, file: !1, line: 305, column: 32)
!736 = distinct !DILexicalBlock(scope: !705, file: !1, line: 305, column: 9)
!737 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "converted", scope: !738, file: !1, line: 339, type: !432)
!738 = distinct !DILexicalBlock(scope: !705, file: !1, line: 338, column: 21)
!739 = !DISubprogram(name: "_Py_wchar2char", scope: !1, file: !1, line: 404, type: !740, isLocal: false, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32*, i64*)* @_Py_wchar2char, variables: !744)
!740 = !DISubroutineType(types: !741)
!741 = !{!389, !742, !708}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64, align: 64)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!744 = !{!745, !746, !747, !749, !750, !751, !752, !753, !754, !755}
!745 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "text", arg: 1, scope: !739, file: !1, line: 404, type: !742)
!746 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "error_pos", arg: 2, scope: !739, file: !1, line: 404, type: !708)
!747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !739, file: !1, line: 437, type: !748)
!748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!749 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !739, file: !1, line: 438, type: !389)
!750 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !739, file: !1, line: 438, type: !389)
!751 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !739, file: !1, line: 439, type: !432)
!752 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !739, file: !1, line: 439, type: !432)
!753 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "converted", scope: !739, file: !1, line: 439, type: !432)
!754 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !739, file: !1, line: 440, type: !682)
!755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !739, file: !1, line: 440, type: !756)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 64, align: 32, elements: !757)
!757 = !{!758}
!758 = !DISubrange(count: 2)
!759 = !DISubprogram(name: "_Py_wstat", scope: !1, file: !1, line: 519, type: !760, isLocal: false, isDefinition: true, scopeLine: 520, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, %struct.stat*)* @_Py_wstat, variables: !799)
!760 = !DISubroutineType(types: !761)
!761 = !{!381, !742, !762}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64, align: 64)
!763 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !764, line: 46, size: 1152, align: 64, elements: !765)
!764 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!765 = !{!766, !768, !770, !772, !774, !776, !778, !779, !780, !781, !783, !785, !793, !794, !795}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !763, file: !764, line: 48, baseType: !767, size: 64, align: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !353, line: 133, baseType: !434)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !763, file: !764, line: 53, baseType: !769, size: 64, align: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !353, line: 136, baseType: !434)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !763, file: !764, line: 61, baseType: !771, size: 64, align: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !353, line: 139, baseType: !434)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !763, file: !764, line: 62, baseType: !773, size: 32, align: 32, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !353, line: 138, baseType: !679)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !763, file: !764, line: 64, baseType: !775, size: 32, align: 32, offset: 224)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !353, line: 134, baseType: !679)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !763, file: !764, line: 65, baseType: !777, size: 32, align: 32, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !353, line: 135, baseType: !679)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !763, file: !764, line: 67, baseType: !381, size: 32, align: 32, offset: 288)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !763, file: !764, line: 69, baseType: !767, size: 64, align: 64, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !763, file: !764, line: 74, baseType: !412, size: 64, align: 64, offset: 384)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !763, file: !764, line: 78, baseType: !782, size: 64, align: 64, offset: 448)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !353, line: 162, baseType: !354)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !763, file: !764, line: 80, baseType: !784, size: 64, align: 64, offset: 512)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !353, line: 167, baseType: !354)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !763, file: !764, line: 91, baseType: !786, size: 128, align: 64, offset: 576)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !787, line: 120, size: 128, align: 64, elements: !788)
!787 = !DIFile(filename: "/usr/include/time.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!788 = !{!789, !791}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !786, file: !787, line: 122, baseType: !790, size: 64, align: 64)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !353, line: 148, baseType: !354)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !786, file: !787, line: 123, baseType: !792, size: 64, align: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !353, line: 184, baseType: !354)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !763, file: !764, line: 92, baseType: !786, size: 128, align: 64, offset: 704)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !763, file: !764, line: 93, baseType: !786, size: 128, align: 64, offset: 832)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !763, file: !764, line: 106, baseType: !796, size: 192, align: 64, offset: 960)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !792, size: 192, align: 64, elements: !797)
!797 = !{!798}
!798 = !DISubrange(count: 3)
!799 = !{!800, !801, !802, !803}
!800 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 1, scope: !759, file: !1, line: 519, type: !742)
!801 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 2, scope: !759, file: !1, line: 519, type: !762)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !759, file: !1, line: 521, type: !381)
!803 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fname", scope: !759, file: !1, line: 522, type: !389)
!804 = !DISubprogram(name: "_Py_stat", scope: !1, file: !1, line: 543, type: !805, isLocal: false, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct.stat*)* @_Py_stat, variables: !807)
!805 = !DISubroutineType(types: !806)
!806 = !{!381, !342, !762}
!807 = !{!808, !809, !810, !811, !812}
!808 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 1, scope: !804, file: !1, line: 543, type: !342)
!809 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "statbuf", arg: 2, scope: !804, file: !1, line: 543, type: !762)
!810 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !804, file: !1, line: 558, type: !381)
!811 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !804, file: !1, line: 559, type: !342)
!812 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !813, file: !1, line: 563, type: !342)
!813 = distinct !DILexicalBlock(scope: !804, file: !1, line: 563, column: 5)
!814 = !DISubprogram(name: "_Py_get_inheritable", scope: !1, file: !1, line: 614, type: !815, isLocal: false, isDefinition: true, scopeLine: 615, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @_Py_get_inheritable, variables: !817)
!815 = !DISubroutineType(types: !816)
!816 = !{!381, !381}
!817 = !{!818}
!818 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !814, file: !1, line: 614, type: !381)
!819 = !DISubprogram(name: "_Py_set_inheritable", scope: !1, file: !1, line: 735, type: !820, isLocal: false, isDefinition: true, scopeLine: 736, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32, i32*)* @_Py_set_inheritable, variables: !823)
!820 = !DISubroutineType(types: !821)
!821 = !{!381, !381, !381, !822}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!823 = !{!824, !825, !826}
!824 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !819, file: !1, line: 735, type: !381)
!825 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inheritable", arg: 2, scope: !819, file: !1, line: 735, type: !381)
!826 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atomic_flag_works", arg: 3, scope: !819, file: !1, line: 735, type: !822)
!827 = !DISubprogram(name: "_Py_open", scope: !1, file: !1, line: 743, type: !828, isLocal: false, isDefinition: true, scopeLine: 744, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32)* @_Py_open, variables: !830)
!828 = !DISubroutineType(types: !829)
!829 = !{!381, !366, !381}
!830 = !{!831, !832, !833, !834}
!831 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pathname", arg: 1, scope: !827, file: !1, line: 743, type: !366)
!832 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 2, scope: !827, file: !1, line: 743, type: !381)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !827, file: !1, line: 745, type: !381)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_flag_works", scope: !827, file: !1, line: 752, type: !822)
!835 = !DISubprogram(name: "_Py_wfopen", scope: !1, file: !1, line: 775, type: !836, isLocal: false, isDefinition: true, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IO_FILE* (i32*, i32*)* @_Py_wfopen, variables: !838)
!836 = !DISubroutineType(types: !837)
!837 = !{!382, !742, !742}
!838 = !{!839, !840, !841, !842, !843, !847}
!839 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 1, scope: !835, file: !1, line: 775, type: !742)
!840 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 2, scope: !835, file: !1, line: 775, type: !742)
!841 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !835, file: !1, line: 777, type: !382)
!842 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cpath", scope: !835, file: !1, line: 779, type: !389)
!843 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmode", scope: !835, file: !1, line: 780, type: !844)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 80, align: 8, elements: !845)
!845 = !{!846}
!846 = !DISubrange(count: 10)
!847 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !835, file: !1, line: 781, type: !432)
!848 = !DISubprogram(name: "_Py_fopen", scope: !1, file: !1, line: 806, type: !849, isLocal: false, isDefinition: true, scopeLine: 807, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IO_FILE* (i8*, i8*)* @_Py_fopen, variables: !851)
!849 = !DISubroutineType(types: !850)
!850 = !{!382, !366, !366}
!851 = !{!852, !853, !854}
!852 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pathname", arg: 1, scope: !848, file: !1, line: 806, type: !366)
!853 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 2, scope: !848, file: !1, line: 806, type: !366)
!854 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !848, file: !1, line: 808, type: !382)
!855 = !DISubprogram(name: "_Py_fopen_obj", scope: !1, file: !1, line: 825, type: !856, isLocal: false, isDefinition: true, scopeLine: 826, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IO_FILE* (%struct._object*, i8*)* @_Py_fopen_obj, variables: !858)
!856 = !DISubroutineType(types: !857)
!857 = !{!382, !342, !366}
!858 = !{!859, !860, !861, !862, !863}
!859 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 1, scope: !855, file: !1, line: 825, type: !342)
!860 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 2, scope: !855, file: !1, line: 825, type: !366)
!861 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !855, file: !1, line: 827, type: !382)
!862 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !855, file: !1, line: 849, type: !342)
!863 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !864, file: !1, line: 853, type: !342)
!864 = distinct !DILexicalBlock(scope: !855, file: !1, line: 853, column: 5)
!865 = !DISubprogram(name: "_Py_wreadlink", scope: !1, file: !1, line: 870, type: !866, isLocal: false, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, i32*, i64)* @_Py_wreadlink, variables: !868)
!866 = !DISubroutineType(types: !867)
!867 = !{!381, !742, !681, !432}
!868 = !{!869, !870, !871, !872, !873, !877, !878, !879}
!869 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 1, scope: !865, file: !1, line: 870, type: !742)
!870 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 2, scope: !865, file: !1, line: 870, type: !681)
!871 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bufsiz", arg: 3, scope: !865, file: !1, line: 870, type: !432)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cpath", scope: !865, file: !1, line: 872, type: !389)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cbuf", scope: !865, file: !1, line: 873, type: !874)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 32768, align: 8, elements: !875)
!875 = !{!876}
!876 = !DISubrange(count: 4096)
!877 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wbuf", scope: !865, file: !1, line: 874, type: !681)
!878 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !865, file: !1, line: 875, type: !381)
!879 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r1", scope: !865, file: !1, line: 876, type: !432)
!880 = !DISubprogram(name: "_Py_wrealpath", scope: !1, file: !1, line: 915, type: !881, isLocal: false, isDefinition: true, scopeLine: 917, flags: DIFlagPrototyped, isOptimized: true, function: i32* (i32*, i32*, i64)* @_Py_wrealpath, variables: !883)
!881 = !DISubroutineType(types: !882)
!882 = !{!681, !742, !681, !432}
!883 = !{!884, !885, !886, !887, !888, !889, !890, !891}
!884 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 1, scope: !880, file: !1, line: 915, type: !742)
!885 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "resolved_path", arg: 2, scope: !880, file: !1, line: 916, type: !681)
!886 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "resolved_path_size", arg: 3, scope: !880, file: !1, line: 916, type: !432)
!887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cpath", scope: !880, file: !1, line: 918, type: !389)
!888 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cresolved_path", scope: !880, file: !1, line: 919, type: !874)
!889 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wresolved_path", scope: !880, file: !1, line: 920, type: !681)
!890 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !880, file: !1, line: 921, type: !389)
!891 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !880, file: !1, line: 922, type: !432)
!892 = !DISubprogram(name: "_Py_wgetcwd", scope: !1, file: !1, line: 954, type: !893, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, function: i32* (i32*, i64)* @_Py_wgetcwd, variables: !895)
!893 = !DISubroutineType(types: !894)
!894 = !{!681, !681, !432}
!895 = !{!896, !897, !898, !899, !900}
!896 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !892, file: !1, line: 954, type: !681)
!897 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !892, file: !1, line: 954, type: !432)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fname", scope: !892, file: !1, line: 960, type: !874)
!899 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wname", scope: !892, file: !1, line: 961, type: !681)
!900 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !892, file: !1, line: 962, type: !432)
!901 = !DISubprogram(name: "_Py_dup", scope: !1, file: !1, line: 985, type: !815, isLocal: false, isDefinition: true, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @_Py_dup, variables: !902)
!902 = !{!903, !904}
!903 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !901, file: !1, line: 985, type: !381)
!904 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !905, file: !1, line: 1023, type: !906)
!905 = distinct !DILexicalBlock(scope: !901, file: !1, line: 1023, column: 5)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64, align: 64)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !908, line: 139, baseType: !909)
!908 = !DIFile(filename: "Include/pystate.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !908, line: 69, size: 1536, align: 64, elements: !910)
!910 = !{!911, !913, !914, !934, !937, !938, !939, !940, !941, !942, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !909, file: !908, line: 72, baseType: !912, size: 64, align: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64, align: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !909, file: !908, line: 73, baseType: !912, size: 64, align: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !909, file: !908, line: 74, baseType: !915, size: 64, align: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64, align: 64)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !908, line: 44, baseType: !917)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !908, line: 19, size: 832, align: 64, elements: !918)
!918 = !{!919, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !917, file: !908, line: 21, baseType: !920, size: 64, align: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64, align: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !917, file: !908, line: 22, baseType: !912, size: 64, align: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !917, file: !908, line: 24, baseType: !342, size: 64, align: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !917, file: !908, line: 25, baseType: !342, size: 64, align: 64, offset: 192)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !917, file: !908, line: 26, baseType: !342, size: 64, align: 64, offset: 256)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !917, file: !908, line: 27, baseType: !342, size: 64, align: 64, offset: 320)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !917, file: !908, line: 28, baseType: !342, size: 64, align: 64, offset: 384)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !917, file: !908, line: 30, baseType: !342, size: 64, align: 64, offset: 448)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !917, file: !908, line: 31, baseType: !342, size: 64, align: 64, offset: 512)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !917, file: !908, line: 32, baseType: !342, size: 64, align: 64, offset: 576)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !917, file: !908, line: 33, baseType: !381, size: 32, align: 32, offset: 640)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !917, file: !908, line: 34, baseType: !381, size: 32, align: 32, offset: 672)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !917, file: !908, line: 37, baseType: !381, size: 32, align: 32, offset: 704)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !917, file: !908, line: 43, baseType: !342, size: 64, align: 64, offset: 768)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !909, file: !908, line: 76, baseType: !935, size: 64, align: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64, align: 64)
!936 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !908, line: 50, flags: DIFlagFwdDecl)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !909, file: !908, line: 77, baseType: !381, size: 32, align: 32, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !909, file: !908, line: 78, baseType: !368, size: 8, align: 8, offset: 288)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !909, file: !908, line: 80, baseType: !368, size: 8, align: 8, offset: 296)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !909, file: !908, line: 85, baseType: !381, size: 32, align: 32, offset: 320)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !909, file: !908, line: 86, baseType: !381, size: 32, align: 32, offset: 352)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !909, file: !908, line: 88, baseType: !943, size: 64, align: 64, offset: 384)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !908, line: 54, baseType: !944)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64, align: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!381, !342, !935, !381, !342}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !909, file: !908, line: 89, baseType: !943, size: 64, align: 64, offset: 448)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !909, file: !908, line: 90, baseType: !342, size: 64, align: 64, offset: 512)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !909, file: !908, line: 91, baseType: !342, size: 64, align: 64, offset: 576)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !909, file: !908, line: 93, baseType: !342, size: 64, align: 64, offset: 640)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !909, file: !908, line: 94, baseType: !342, size: 64, align: 64, offset: 704)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !909, file: !908, line: 95, baseType: !342, size: 64, align: 64, offset: 768)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !909, file: !908, line: 97, baseType: !342, size: 64, align: 64, offset: 832)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !909, file: !908, line: 98, baseType: !342, size: 64, align: 64, offset: 896)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !909, file: !908, line: 99, baseType: !342, size: 64, align: 64, offset: 960)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !909, file: !908, line: 101, baseType: !342, size: 64, align: 64, offset: 1024)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !909, file: !908, line: 103, baseType: !381, size: 32, align: 32, offset: 1088)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !909, file: !908, line: 105, baseType: !342, size: 64, align: 64, offset: 1152)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !909, file: !908, line: 106, baseType: !354, size: 64, align: 64, offset: 1216)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !909, file: !908, line: 108, baseType: !381, size: 32, align: 32, offset: 1280)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !909, file: !908, line: 109, baseType: !342, size: 64, align: 64, offset: 1344)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !909, file: !908, line: 134, baseType: !668, size: 64, align: 64, offset: 1408)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !909, file: !908, line: 135, baseType: !427, size: 64, align: 64, offset: 1472)
!964 = !DISubprogram(name: "check_force_ascii", scope: !1, file: !1, line: 95, type: !965, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @check_force_ascii, variables: !967)
!965 = !DISubroutineType(types: !966)
!966 = !{!381}
!967 = !{!968, !969, !970, !972, !976, !977, !978, !982, !985, !986, !988, !989, !995, !996, !1000, !1001}
!968 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "loc", scope: !964, file: !1, line: 97, type: !389)
!969 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codeset", scope: !964, file: !1, line: 99, type: !389)
!970 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alias", scope: !964, file: !1, line: 99, type: !971)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!972 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "encoding", scope: !964, file: !1, line: 100, type: !973)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 800, align: 8, elements: !974)
!974 = !{!975}
!975 = !DISubrange(count: 100)
!976 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "is_ascii", scope: !964, file: !1, line: 101, type: !381)
!977 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !964, file: !1, line: 102, type: !679)
!978 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ascii_aliases", scope: !964, file: !1, line: 103, type: !979)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 896, align: 64, elements: !980)
!980 = !{!981}
!981 = !DISubrange(count: 14)
!982 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !983, file: !1, line: 124, type: !432)
!983 = distinct !DILexicalBlock(scope: !984, file: !1, line: 124, column: 9)
!984 = distinct !DILexicalBlock(scope: !964, file: !1, line: 124, column: 9)
!985 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !983, file: !1, line: 124, type: !432)
!986 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !987, file: !1, line: 124, type: !695)
!987 = distinct !DILexicalBlock(scope: !983, file: !1, line: 124, column: 9)
!988 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !987, file: !1, line: 124, type: !381)
!989 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !990, file: !1, line: 140, type: !432)
!990 = distinct !DILexicalBlock(scope: !991, file: !1, line: 140, column: 13)
!991 = distinct !DILexicalBlock(scope: !992, file: !1, line: 140, column: 13)
!992 = distinct !DILexicalBlock(scope: !993, file: !1, line: 139, column: 56)
!993 = distinct !DILexicalBlock(scope: !994, file: !1, line: 139, column: 5)
!994 = distinct !DILexicalBlock(scope: !964, file: !1, line: 139, column: 5)
!995 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !990, file: !1, line: 140, type: !432)
!996 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !997, file: !1, line: 151, type: !684)
!997 = distinct !DILexicalBlock(scope: !998, file: !1, line: 150, column: 31)
!998 = distinct !DILexicalBlock(scope: !999, file: !1, line: 150, column: 5)
!999 = distinct !DILexicalBlock(scope: !964, file: !1, line: 150, column: 5)
!1000 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wch", scope: !997, file: !1, line: 152, type: !682)
!1001 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !997, file: !1, line: 153, type: !432)
!1002 = !DISubprogram(name: "decode_ascii_surrogateescape", scope: !1, file: !1, line: 218, type: !706, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, variables: !1003)
!1003 = !{!1004, !1005, !1006, !1007, !1008}
!1004 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !1002, file: !1, line: 218, type: !366)
!1005 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !1002, file: !1, line: 218, type: !708)
!1006 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !1002, file: !1, line: 220, type: !681)
!1007 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in", scope: !1002, file: !1, line: 221, type: !683)
!1008 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out", scope: !1002, file: !1, line: 222, type: !681)
!1009 = !DISubprogram(name: "encode_ascii_surrogateescape", scope: !1, file: !1, line: 177, type: !740, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, variables: !1010)
!1010 = !{!1011, !1012, !1013, !1014, !1015, !1016, !1017}
!1011 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "text", arg: 1, scope: !1009, file: !1, line: 177, type: !742)
!1012 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "error_pos", arg: 2, scope: !1009, file: !1, line: 177, type: !708)
!1013 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !1009, file: !1, line: 179, type: !389)
!1014 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out", scope: !1009, file: !1, line: 179, type: !389)
!1015 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !1009, file: !1, line: 180, type: !432)
!1016 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1009, file: !1, line: 180, type: !432)
!1017 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !1009, file: !1, line: 181, type: !682)
!1018 = !DISubprogram(name: "stat64", scope: !1019, file: !1019, line: 503, type: !1020, isLocal: false, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: true, variables: !1042)
!1019 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!381, !366, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64, align: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !764, line: 119, size: 1152, align: 64, elements: !1024)
!1024 = !{!1025, !1026, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1038, !1039, !1040, !1041}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1023, file: !764, line: 121, baseType: !767, size: 64, align: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1023, file: !764, line: 123, baseType: !1027, size: 64, align: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !353, line: 137, baseType: !434)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1023, file: !764, line: 124, baseType: !771, size: 64, align: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1023, file: !764, line: 125, baseType: !773, size: 32, align: 32, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1023, file: !764, line: 132, baseType: !775, size: 32, align: 32, offset: 224)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1023, file: !764, line: 133, baseType: !777, size: 32, align: 32, offset: 256)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1023, file: !764, line: 135, baseType: !381, size: 32, align: 32, offset: 288)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1023, file: !764, line: 136, baseType: !767, size: 64, align: 64, offset: 320)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1023, file: !764, line: 137, baseType: !412, size: 64, align: 64, offset: 384)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1023, file: !764, line: 143, baseType: !782, size: 64, align: 64, offset: 448)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1023, file: !764, line: 144, baseType: !1037, size: 64, align: 64, offset: 512)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !353, line: 168, baseType: !354)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1023, file: !764, line: 152, baseType: !786, size: 128, align: 64, offset: 576)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1023, file: !764, line: 153, baseType: !786, size: 128, align: 64, offset: 704)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1023, file: !764, line: 154, baseType: !786, size: 128, align: 64, offset: 832)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !1023, file: !764, line: 164, baseType: !796, size: 192, align: 64, offset: 960)
!1042 = !{!1043, !1044}
!1043 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__path", arg: 1, scope: !1018, file: !1019, line: 503, type: !366)
!1044 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__statbuf", arg: 2, scope: !1018, file: !1019, line: 503, type: !1022)
!1045 = !DISubprogram(name: "get_inheritable", scope: !1, file: !1, line: 571, type: !1046, isLocal: true, isDefinition: true, scopeLine: 572, flags: DIFlagPrototyped, isOptimized: true, variables: !1048)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!381, !381, !381}
!1048 = !{!1049, !1050, !1051}
!1049 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !1045, file: !1, line: 571, type: !381)
!1050 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "raise", arg: 2, scope: !1045, file: !1, line: 571, type: !381)
!1051 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flags", scope: !1045, file: !1, line: 598, type: !381)
!1052 = !DISubprogram(name: "set_inheritable", scope: !1, file: !1, line: 620, type: !1053, isLocal: true, isDefinition: true, scopeLine: 621, flags: DIFlagPrototyped, isOptimized: true, variables: !1055)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!381, !381, !381, !381, !822}
!1055 = !{!1056, !1057, !1058, !1059, !1060, !1061, !1062}
!1056 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !1052, file: !1, line: 620, type: !381)
!1057 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inheritable", arg: 2, scope: !1052, file: !1, line: 620, type: !381)
!1058 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "raise", arg: 3, scope: !1052, file: !1, line: 620, type: !381)
!1059 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atomic_flag_works", arg: 4, scope: !1052, file: !1, line: 620, type: !822)
!1060 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "request", scope: !1052, file: !1, line: 626, type: !381)
!1061 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !1052, file: !1, line: 627, type: !381)
!1062 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inheritable", scope: !1063, file: !1, line: 639, type: !381)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 638, column: 39)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !1, line: 638, column: 13)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !1, line: 637, column: 52)
!1066 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 637, column: 9)
!1067 = !DISubprogram(name: "make_non_inheritable", scope: !1, file: !1, line: 712, type: !815, isLocal: true, isDefinition: true, scopeLine: 713, flags: DIFlagPrototyped, isOptimized: true, variables: !1068)
!1068 = !{!1069}
!1069 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !1067, file: !1, line: 712, type: !381)
!1070 = !{!1071, !1072}
!1071 = !DIGlobalVariable(name: "_Py_open_cloexec_works", scope: !0, file: !1, line: 33, type: !381, isLocal: false, isDefinition: true, variable: i32* @_Py_open_cloexec_works)
!1072 = !DIGlobalVariable(name: "force_ascii", scope: !0, file: !1, line: 92, type: !381, isLocal: true, isDefinition: true, variable: i32* @force_ascii)
!1073 = !{i32 2, !"Dwarf Version", i32 4}
!1074 = !{i32 2, !"Debug Info Version", i32 3}
!1075 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1076 = !DIExpression()
!1077 = !DILocation(line: 37, column: 25, scope: !698)
!1078 = !DILocation(line: 42, column: 31, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !698, file: !1, line: 42, column: 9)
!1080 = !DILocation(line: 42, column: 9, scope: !698)
!1081 = !DILocation(line: 43, column: 9, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1079, file: !1, line: 42, column: 43)
!1083 = !{!1084, !1085, i64 0}
!1084 = !{!"_object", !1085, i64 0, !1088, i64 8}
!1085 = !{!"long", !1086, i64 0}
!1086 = !{!"omnipotent char", !1087, i64 0}
!1087 = !{!"Simple C/C++ TBAA"}
!1088 = !{!"any pointer", !1086, i64 0}
!1089 = !DILocation(line: 58, column: 25, scope: !704)
!1090 = !DILocation(line: 58, column: 15, scope: !704)
!1091 = !DILocation(line: 59, column: 21, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !704, file: !1, line: 59, column: 13)
!1093 = !DILocation(line: 59, column: 29, scope: !1092)
!1094 = !DILocation(line: 59, column: 32, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !1092, file: !1, discriminator: 1)
!1096 = !{!1086, !1086, i64 0}
!1097 = !DILocation(line: 59, column: 43, scope: !1092)
!1098 = !DILocation(line: 59, column: 13, scope: !704)
!1099 = !DILocation(line: 60, column: 20, scope: !1092)
!1100 = !DILocation(line: 63, column: 5, scope: !698)
!1101 = !DILocation(line: 64, column: 1, scope: !698)
!1102 = !DILocation(line: 261, column: 28, scope: !705)
!1103 = !DILocation(line: 261, column: 41, scope: !705)
!1104 = !DILocation(line: 280, column: 5, scope: !705)
!1105 = !DILocation(line: 284, column: 9, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !705, file: !1, line: 284, column: 9)
!1107 = !{!1108, !1108, i64 0}
!1108 = !{!"int", !1086, i64 0}
!1109 = !DILocation(line: 284, column: 21, scope: !1106)
!1110 = !DILocation(line: 284, column: 9, scope: !705)
!1111 = !DILocation(line: 285, column: 23, scope: !1106)
!1112 = !DILocation(line: 285, column: 21, scope: !1106)
!1113 = !DILocation(line: 285, column: 9, scope: !1106)
!1114 = !DILocation(line: 287, column: 9, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !705, file: !1, line: 287, column: 9)
!1116 = !DILocation(line: 287, column: 9, scope: !705)
!1117 = !DILocation(line: 218, column: 42, scope: !1002, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 289, column: 15, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !1, line: 287, column: 22)
!1120 = !DILocation(line: 218, column: 55, scope: !1002, inlinedAt: !1118)
!1121 = !DILocation(line: 224, column: 28, scope: !1002, inlinedAt: !1118)
!1122 = !DILocation(line: 224, column: 42, scope: !1002, inlinedAt: !1118)
!1123 = !DILocation(line: 224, column: 11, scope: !1002, inlinedAt: !1118)
!1124 = !DILocation(line: 220, column: 14, scope: !1002, inlinedAt: !1118)
!1125 = !DILocation(line: 225, column: 10, scope: !1126, inlinedAt: !1118)
!1126 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 225, column: 9)
!1127 = !DILocation(line: 225, column: 9, scope: !1002, inlinedAt: !1118)
!1128 = !DILocation(line: 230, column: 11, scope: !1002, inlinedAt: !1118)
!1129 = !DILocation(line: 230, column: 5, scope: !1002, inlinedAt: !1118)
!1130 = !DILocation(line: 231, column: 12, scope: !1131, inlinedAt: !1118)
!1131 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 231, column: 12)
!1132 = !DILocation(line: 289, column: 15, scope: !1119)
!1133 = !DILocation(line: 231, column: 16, scope: !1131, inlinedAt: !1118)
!1134 = !DILocation(line: 232, column: 25, scope: !1131, inlinedAt: !1118)
!1135 = !DILocation(line: 221, column: 20, scope: !1002, inlinedAt: !1118)
!1136 = !DILocation(line: 234, column: 29, scope: !1131, inlinedAt: !1118)
!1137 = !DILocation(line: 231, column: 12, scope: !1002, inlinedAt: !1118)
!1138 = !DILocation(line: 232, column: 17, scope: !1131, inlinedAt: !1118)
!1139 = !DILocation(line: 232, column: 20, scope: !1131, inlinedAt: !1118)
!1140 = !DILocation(line: 235, column: 10, scope: !1002, inlinedAt: !1118)
!1141 = !DILocation(line: 236, column: 14, scope: !1142, inlinedAt: !1118)
!1142 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 236, column: 9)
!1143 = !DILocation(line: 236, column: 9, scope: !1002, inlinedAt: !1118)
!1144 = !DILocation(line: 237, column: 21, scope: !1142, inlinedAt: !1118)
!1145 = !DILocation(line: 237, column: 15, scope: !1142, inlinedAt: !1118)
!1146 = !{!1085, !1085, i64 0}
!1147 = !DILocation(line: 237, column: 9, scope: !1142, inlinedAt: !1118)
!1148 = !DILocation(line: 303, column: 15, scope: !705)
!1149 = !DILocation(line: 275, column: 12, scope: !705)
!1150 = !DILocation(line: 305, column: 17, scope: !736)
!1151 = !DILocation(line: 305, column: 9, scope: !705)
!1152 = !DILocation(line: 306, column: 50, scope: !735)
!1153 = !DILocation(line: 306, column: 53, scope: !735)
!1154 = !DILocation(line: 306, column: 26, scope: !735)
!1155 = !DILocation(line: 306, column: 15, scope: !735)
!1156 = !DILocation(line: 274, column: 14, scope: !705)
!1157 = !DILocation(line: 307, column: 14, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !735, file: !1, line: 307, column: 13)
!1159 = !DILocation(line: 307, column: 13, scope: !735)
!1160 = !DILocation(line: 309, column: 17, scope: !735)
!1161 = !DILocation(line: 276, column: 12, scope: !705)
!1162 = !DILocation(line: 310, column: 19, scope: !734)
!1163 = !DILocation(line: 310, column: 13, scope: !735)
!1164 = !DILocation(line: 314, column: 29, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !1, line: 314, column: 13)
!1166 = distinct !DILexicalBlock(scope: !733, file: !1, line: 314, column: 13)
!1167 = !DILocation(line: 314, column: 34, scope: !1165)
!1168 = !DILocation(line: 314, column: 39, scope: !1165)
!1169 = !DILocation(line: 315, column: 27, scope: !1165)
!1170 = !DILocation(line: 317, column: 17, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !733, file: !1, line: 317, column: 17)
!1172 = !DILocation(line: 314, column: 13, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1166, file: !1, discriminator: 2)
!1174 = !DILocation(line: 315, column: 61, scope: !1165)
!1175 = !DILocation(line: 311, column: 22, scope: !733)
!1176 = !DILocation(line: 318, column: 26, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 318, column: 21)
!1178 = distinct !DILexicalBlock(scope: !1171, file: !1, line: 317, column: 28)
!1179 = !DILocation(line: 318, column: 21, scope: !1178)
!1180 = !DILocation(line: 319, column: 27, scope: !1177)
!1181 = !DILocation(line: 323, column: 9, scope: !735)
!1182 = !DILocation(line: 324, column: 5, scope: !735)
!1183 = !DILocation(line: 331, column: 15, scope: !705)
!1184 = !DILocation(line: 331, column: 27, scope: !705)
!1185 = !DILocation(line: 332, column: 44, scope: !705)
!1186 = !DILocation(line: 332, column: 21, scope: !705)
!1187 = !DILocation(line: 332, column: 11, scope: !705)
!1188 = !DILocation(line: 333, column: 10, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !705, file: !1, line: 333, column: 9)
!1190 = !DILocation(line: 333, column: 9, scope: !705)
!1191 = !DILocation(line: 278, column: 20, scope: !705)
!1192 = !DILocation(line: 279, column: 14, scope: !705)
!1193 = !DILocation(line: 337, column: 5, scope: !705)
!1194 = !DILocation(line: 338, column: 5, scope: !705)
!1195 = !DILocation(line: 365, column: 13, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 361, column: 44)
!1197 = distinct !DILexicalBlock(scope: !738, file: !1, line: 361, column: 13)
!1198 = !DILocation(line: 280, column: 15, scope: !705)
!1199 = !DILocation(line: 339, column: 28, scope: !738)
!1200 = !DILocation(line: 339, column: 16, scope: !738)
!1201 = !DILocation(line: 340, column: 13, scope: !738)
!1202 = !DILocation(line: 348, column: 13, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 343, column: 38)
!1204 = distinct !DILexicalBlock(scope: !738, file: !1, line: 343, column: 13)
!1205 = !DILocation(line: 349, column: 22, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1203, file: !1, line: 349, column: 17)
!1207 = !DILocation(line: 349, column: 17, scope: !1203)
!1208 = !DILocation(line: 350, column: 23, scope: !1206)
!1209 = !DILocation(line: 350, column: 17, scope: !1206)
!1210 = !DILocation(line: 356, column: 34, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !1, line: 353, column: 38)
!1212 = distinct !DILexicalBlock(scope: !738, file: !1, line: 353, column: 13)
!1213 = !DILocation(line: 356, column: 31, scope: !1211)
!1214 = !DILocation(line: 356, column: 29, scope: !1211)
!1215 = !DILocation(line: 356, column: 17, scope: !1211)
!1216 = !DILocation(line: 356, column: 20, scope: !1211)
!1217 = !DILocation(line: 357, column: 20, scope: !1211)
!1218 = !DILocation(line: 358, column: 13, scope: !1211)
!1219 = !DILocation(line: 359, column: 13, scope: !1211)
!1220 = !DILocation(line: 361, column: 13, scope: !1197)
!1221 = !DILocation(line: 364, column: 21, scope: !1196)
!1222 = !DILocation(line: 366, column: 35, scope: !1196)
!1223 = !DILocation(line: 366, column: 33, scope: !1196)
!1224 = !DILocation(line: 366, column: 24, scope: !1196)
!1225 = distinct !{!1225, !1226, !1227}
!1226 = !{!"llvm.loop.vectorize.width", i32 1}
!1227 = !{!"llvm.loop.interleave.count", i32 1}
!1228 = !DILocation(line: 365, column: 29, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1230, file: !1, discriminator: 2)
!1230 = !DILexicalBlockFile(scope: !1196, file: !1, discriminator: 1)
!1231 = !DILocation(line: 366, column: 38, scope: !1196)
!1232 = !DILocation(line: 366, column: 21, scope: !1196)
!1233 = distinct !{!1233, !1234}
!1234 = !{!"llvm.loop.unroll.disable"}
!1235 = distinct !{!1235, !1226, !1227}
!1236 = !DILocation(line: 370, column: 12, scope: !738)
!1237 = !DILocation(line: 371, column: 17, scope: !738)
!1238 = !DILocation(line: 372, column: 12, scope: !738)
!1239 = !DILocation(line: 373, column: 5, scope: !705)
!1240 = !DILocation(line: 374, column: 14, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !705, file: !1, line: 374, column: 9)
!1242 = !DILocation(line: 374, column: 9, scope: !705)
!1243 = !DILocation(line: 375, column: 21, scope: !1241)
!1244 = !DILocation(line: 375, column: 15, scope: !1241)
!1245 = !DILocation(line: 375, column: 9, scope: !1241)
!1246 = !DILocation(line: 386, column: 14, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !705, file: !1, line: 386, column: 9)
!1248 = !DILocation(line: 386, column: 9, scope: !705)
!1249 = !DILocation(line: 387, column: 15, scope: !1247)
!1250 = !DILocation(line: 387, column: 9, scope: !1247)
!1251 = !DILocation(line: 390, column: 1, scope: !705)
!1252 = !DILocation(line: 100, column: 5, scope: !964)
!1253 = !DILocation(line: 100, column: 10, scope: !964)
!1254 = !DILocation(line: 103, column: 5, scope: !964)
!1255 = !DILocation(line: 103, column: 11, scope: !964)
!1256 = !DILocation(line: 121, column: 11, scope: !964)
!1257 = !DILocation(line: 97, column: 11, scope: !964)
!1258 = !DILocation(line: 122, column: 13, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !964, file: !1, line: 122, column: 9)
!1260 = !DILocation(line: 122, column: 9, scope: !964)
!1261 = !DILocation(line: 124, column: 9, scope: !983)
!1262 = !DILocation(line: 124, column: 9, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !987, file: !1, discriminator: 3)
!1264 = !DILocation(line: 124, column: 9, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !1266, file: !1, discriminator: 5)
!1266 = distinct !DILexicalBlock(scope: !987, file: !1, line: 124, column: 9)
!1267 = !DILocation(line: 124, column: 9, scope: !1266)
!1268 = !DILocation(line: 124, column: 9, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1270, file: !1, discriminator: 7)
!1270 = distinct !DILexicalBlock(scope: !1266, file: !1, line: 124, column: 9)
!1271 = !DILocation(line: 124, column: 26, scope: !984)
!1272 = !DILocation(line: 124, column: 9, scope: !964)
!1273 = !DILocation(line: 130, column: 15, scope: !964)
!1274 = !DILocation(line: 99, column: 11, scope: !964)
!1275 = !DILocation(line: 131, column: 10, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !964, file: !1, line: 131, column: 9)
!1277 = !DILocation(line: 131, column: 18, scope: !1276)
!1278 = !DILocation(line: 131, column: 21, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1276, file: !1, discriminator: 1)
!1280 = !DILocation(line: 131, column: 32, scope: !1276)
!1281 = !DILocation(line: 131, column: 9, scope: !964)
!1282 = !DILocation(line: 135, column: 10, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !964, file: !1, line: 135, column: 9)
!1284 = !DILocation(line: 135, column: 9, scope: !964)
!1285 = !DILocation(line: 101, column: 9, scope: !964)
!1286 = !DILocation(line: 99, column: 22, scope: !964)
!1287 = !DILocation(line: 139, column: 16, scope: !994)
!1288 = !DILocation(line: 139, column: 5, scope: !994)
!1289 = !DILocation(line: 139, column: 31, scope: !993)
!1290 = !{!1088, !1088, i64 0}
!1291 = !DILocation(line: 139, column: 38, scope: !993)
!1292 = !DILocation(line: 140, column: 13, scope: !990)
!1293 = !DILocation(line: 140, column: 38, scope: !991)
!1294 = !DILocation(line: 139, column: 52, scope: !993)
!1295 = !DILocation(line: 140, column: 13, scope: !992)
!1296 = !DILocation(line: 152, column: 9, scope: !997)
!1297 = !DILocation(line: 150, column: 5, scope: !999)
!1298 = !DILocation(line: 150, column: 19, scope: !998)
!1299 = !DILocation(line: 151, column: 23, scope: !997)
!1300 = !DILocation(line: 151, column: 9, scope: !997)
!1301 = !DILocation(line: 155, column: 14, scope: !997)
!1302 = !DILocation(line: 155, column: 12, scope: !997)
!1303 = !DILocation(line: 152, column: 17, scope: !997)
!1304 = !DILocation(line: 156, column: 15, scope: !997)
!1305 = !DILocation(line: 153, column: 16, scope: !997)
!1306 = !DILocation(line: 157, column: 17, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !997, file: !1, line: 157, column: 13)
!1308 = !DILocation(line: 162, column: 5, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !998, file: !1, discriminator: 1)
!1310 = !DILocation(line: 150, column: 27, scope: !998)
!1311 = !DILocation(line: 102, column: 18, scope: !964)
!1312 = !DILocation(line: 174, column: 1, scope: !964)
!1313 = !DILocation(line: 404, column: 31, scope: !739)
!1314 = !DILocation(line: 404, column: 45, scope: !739)
!1315 = !DILocation(line: 437, column: 24, scope: !739)
!1316 = !DILocation(line: 437, column: 18, scope: !739)
!1317 = !DILocation(line: 438, column: 11, scope: !739)
!1318 = !DILocation(line: 438, column: 27, scope: !739)
!1319 = !DILocation(line: 440, column: 5, scope: !739)
!1320 = !DILocation(line: 440, column: 16, scope: !739)
!1321 = !DILocation(line: 443, column: 9, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !739, file: !1, line: 443, column: 9)
!1323 = !DILocation(line: 443, column: 21, scope: !1322)
!1324 = !DILocation(line: 443, column: 9, scope: !739)
!1325 = !DILocation(line: 444, column: 23, scope: !1322)
!1326 = !DILocation(line: 444, column: 21, scope: !1322)
!1327 = !DILocation(line: 444, column: 9, scope: !1322)
!1328 = !DILocation(line: 446, column: 9, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !739, file: !1, line: 446, column: 9)
!1330 = !DILocation(line: 446, column: 9, scope: !739)
!1331 = !DILocation(line: 177, column: 45, scope: !1009, inlinedAt: !1332)
!1332 = distinct !DILocation(line: 447, column: 16, scope: !1329)
!1333 = !DILocation(line: 177, column: 59, scope: !1009, inlinedAt: !1332)
!1334 = !DILocation(line: 179, column: 11, scope: !1009, inlinedAt: !1332)
!1335 = !DILocation(line: 183, column: 19, scope: !1336, inlinedAt: !1332)
!1336 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 183, column: 9)
!1337 = !DILocation(line: 183, column: 9, scope: !1009, inlinedAt: !1332)
!1338 = !DILocation(line: 184, column: 20, scope: !1336, inlinedAt: !1332)
!1339 = !DILocation(line: 184, column: 9, scope: !1336, inlinedAt: !1332)
!1340 = !DILocation(line: 186, column: 11, scope: !1009, inlinedAt: !1332)
!1341 = !DILocation(line: 180, column: 12, scope: !1009, inlinedAt: !1332)
!1342 = !DILocation(line: 188, column: 31, scope: !1009, inlinedAt: !1332)
!1343 = !DILocation(line: 188, column: 14, scope: !1009, inlinedAt: !1332)
!1344 = !DILocation(line: 189, column: 16, scope: !1345, inlinedAt: !1332)
!1345 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 189, column: 9)
!1346 = !DILocation(line: 189, column: 9, scope: !1009, inlinedAt: !1332)
!1347 = !DILocation(line: 193, column: 16, scope: !1348, inlinedAt: !1332)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !1, line: 193, column: 5)
!1349 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 193, column: 5)
!1350 = !DILocation(line: 193, column: 5, scope: !1349, inlinedAt: !1332)
!1351 = !DILocation(line: 194, column: 14, scope: !1352, inlinedAt: !1332)
!1352 = distinct !DILexicalBlock(scope: !1348, file: !1, line: 193, column: 27)
!1353 = !DILocation(line: 447, column: 16, scope: !1329)
!1354 = !DILocation(line: 181, column: 13, scope: !1009, inlinedAt: !1332)
!1355 = !DILocation(line: 196, column: 16, scope: !1356, inlinedAt: !1332)
!1356 = distinct !DILexicalBlock(scope: !1352, file: !1, line: 196, column: 13)
!1357 = !DILocation(line: 200, column: 31, scope: !1358, inlinedAt: !1332)
!1358 = distinct !DILexicalBlock(scope: !1356, file: !1, line: 200, column: 18)
!1359 = !DILocation(line: 196, column: 13, scope: !1352, inlinedAt: !1332)
!1360 = !DILocation(line: 205, column: 17, scope: !1361, inlinedAt: !1332)
!1361 = distinct !DILexicalBlock(scope: !1358, file: !1, line: 204, column: 14)
!1362 = !DILocation(line: 206, column: 28, scope: !1363, inlinedAt: !1332)
!1363 = distinct !DILexicalBlock(scope: !1361, file: !1, line: 205, column: 17)
!1364 = !DILocation(line: 206, column: 17, scope: !1363, inlinedAt: !1332)
!1365 = !DILocation(line: 207, column: 13, scope: !1361, inlinedAt: !1332)
!1366 = !DILocation(line: 208, column: 13, scope: !1361, inlinedAt: !1332)
!1367 = !DILocation(line: 198, column: 17, scope: !1368, inlinedAt: !1332)
!1368 = distinct !DILexicalBlock(scope: !1356, file: !1, line: 196, column: 25)
!1369 = !DILocation(line: 202, column: 22, scope: !1370, inlinedAt: !1332)
!1370 = distinct !DILexicalBlock(scope: !1358, file: !1, line: 200, column: 48)
!1371 = !DILocation(line: 198, column: 20, scope: !1368, inlinedAt: !1332)
!1372 = !DILocation(line: 193, column: 23, scope: !1348, inlinedAt: !1332)
!1373 = !DILocation(line: 180, column: 17, scope: !1009, inlinedAt: !1332)
!1374 = !DILocation(line: 211, column: 10, scope: !1009, inlinedAt: !1332)
!1375 = !DILocation(line: 212, column: 5, scope: !1009, inlinedAt: !1332)
!1376 = !DILocation(line: 439, column: 15, scope: !739)
!1377 = !DILocation(line: 454, column: 5, scope: !739)
!1378 = !DILocation(line: 454, column: 12, scope: !739)
!1379 = !DILocation(line: 456, column: 21, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 456, column: 9)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 456, column: 9)
!1382 = distinct !DILexicalBlock(scope: !739, file: !1, line: 455, column: 15)
!1383 = !DILocation(line: 469, column: 17, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !1, line: 468, column: 18)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !1, line: 458, column: 17)
!1386 = distinct !DILexicalBlock(scope: !1380, file: !1, line: 456, column: 33)
!1387 = !DILocation(line: 456, column: 9, scope: !1381)
!1388 = !DILocation(line: 439, column: 12, scope: !739)
!1389 = !DILocation(line: 489, column: 20, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 489, column: 13)
!1391 = !DILocation(line: 489, column: 13, scope: !1382)
!1392 = !DILocation(line: 494, column: 14, scope: !1382)
!1393 = !DILocation(line: 495, column: 18, scope: !1382)
!1394 = !DILocation(line: 496, column: 20, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 496, column: 13)
!1396 = !DILocation(line: 496, column: 13, scope: !1382)
!1397 = !DILocation(line: 457, column: 17, scope: !1386)
!1398 = !DILocation(line: 440, column: 13, scope: !739)
!1399 = !DILocation(line: 458, column: 29, scope: !1385)
!1400 = !DILocation(line: 469, column: 24, scope: !1384)
!1401 = !DILocation(line: 470, column: 27, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1384, file: !1, line: 470, column: 21)
!1403 = !DILocation(line: 470, column: 21, scope: !1384)
!1404 = !DILocation(line: 473, column: 33, scope: !1402)
!1405 = !DILocation(line: 439, column: 21, scope: !739)
!1406 = !DILocation(line: 471, column: 33, scope: !1402)
!1407 = !DILocation(line: 471, column: 21, scope: !1402)
!1408 = !DILocation(line: 474, column: 31, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1384, file: !1, line: 474, column: 21)
!1410 = !DILocation(line: 474, column: 21, scope: !1384)
!1411 = !DILocation(line: 481, column: 21, scope: !1384)
!1412 = !DILocation(line: 486, column: 26, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1384, file: !1, line: 481, column: 21)
!1414 = !DILocation(line: 482, column: 27, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1413, file: !1, line: 481, column: 36)
!1416 = !DILocation(line: 483, column: 26, scope: !1415)
!1417 = !DILocation(line: 484, column: 17, scope: !1415)
!1418 = !DILocation(line: 460, column: 27, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !1, line: 460, column: 21)
!1420 = distinct !DILexicalBlock(scope: !1385, file: !1, line: 458, column: 45)
!1421 = !DILocation(line: 460, column: 21, scope: !1420)
!1422 = !DILocation(line: 461, column: 32, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 460, column: 36)
!1424 = !DILocation(line: 461, column: 27, scope: !1423)
!1425 = !DILocation(line: 461, column: 30, scope: !1423)
!1426 = !DILocation(line: 462, column: 25, scope: !1423)
!1427 = !DILocation(line: 463, column: 17, scope: !1423)
!1428 = !DILocation(line: 465, column: 25, scope: !1419)
!1429 = !DILocation(line: 456, column: 29, scope: !1380)
!1430 = !DILocation(line: 475, column: 32, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !1, line: 475, column: 25)
!1432 = distinct !DILexicalBlock(scope: !1409, file: !1, line: 474, column: 46)
!1433 = !DILocation(line: 475, column: 25, scope: !1432)
!1434 = !DILocation(line: 476, column: 25, scope: !1431)
!1435 = !DILocation(line: 477, column: 35, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1432, file: !1, line: 477, column: 25)
!1437 = !DILocation(line: 477, column: 25, scope: !1432)
!1438 = !DILocation(line: 478, column: 36, scope: !1436)
!1439 = !DILocation(line: 478, column: 25, scope: !1436)
!1440 = !DILocation(line: 490, column: 20, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1390, file: !1, line: 489, column: 29)
!1442 = !DILocation(line: 503, column: 5, scope: !739)
!1443 = !DILocation(line: 497, column: 27, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !1, line: 497, column: 17)
!1445 = distinct !DILexicalBlock(scope: !1395, file: !1, line: 496, column: 29)
!1446 = !DILocation(line: 497, column: 17, scope: !1445)
!1447 = !DILocation(line: 498, column: 28, scope: !1444)
!1448 = !DILocation(line: 498, column: 17, scope: !1444)
!1449 = !DILocation(line: 505, column: 1, scope: !739)
!1450 = !DILocation(line: 519, column: 26, scope: !759)
!1451 = !DILocation(line: 519, column: 45, scope: !759)
!1452 = !DILocation(line: 523, column: 13, scope: !759)
!1453 = !DILocation(line: 522, column: 11, scope: !759)
!1454 = !DILocation(line: 524, column: 15, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !759, file: !1, line: 524, column: 9)
!1456 = !DILocation(line: 524, column: 9, scope: !759)
!1457 = !DILocation(line: 525, column: 9, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1455, file: !1, line: 524, column: 24)
!1459 = !DILocation(line: 525, column: 15, scope: !1458)
!1460 = !DILocation(line: 526, column: 9, scope: !1458)
!1461 = !DILocation(line: 528, column: 11, scope: !759)
!1462 = !DILocation(line: 503, column: 1, scope: !1018, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 528, column: 11, scope: !759)
!1464 = !DILocation(line: 505, column: 10, scope: !1018, inlinedAt: !1463)
!1465 = !DILocation(line: 521, column: 9, scope: !759)
!1466 = !DILocation(line: 529, column: 5, scope: !759)
!1467 = !DILocation(line: 530, column: 5, scope: !759)
!1468 = !DILocation(line: 531, column: 1, scope: !759)
!1469 = !DILocation(line: 543, column: 20, scope: !804)
!1470 = !DILocation(line: 543, column: 39, scope: !804)
!1471 = !DILocation(line: 559, column: 23, scope: !804)
!1472 = !DILocation(line: 559, column: 15, scope: !804)
!1473 = !DILocation(line: 560, column: 15, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !804, file: !1, line: 560, column: 9)
!1475 = !DILocation(line: 560, column: 9, scope: !804)
!1476 = !DILocation(line: 562, column: 16, scope: !804)
!1477 = !DILocation(line: 562, column: 11, scope: !804)
!1478 = !DILocation(line: 503, column: 1, scope: !1018, inlinedAt: !1479)
!1479 = distinct !DILocation(line: 562, column: 11, scope: !804)
!1480 = !DILocation(line: 505, column: 10, scope: !1018, inlinedAt: !1479)
!1481 = !DILocation(line: 558, column: 9, scope: !804)
!1482 = !DILocation(line: 563, column: 5, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !813, file: !1, discriminator: 1)
!1484 = !DILocation(line: 563, column: 5, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !813, file: !1, line: 563, column: 5)
!1486 = !DILocation(line: 563, column: 5, scope: !813)
!1487 = !DILocation(line: 563, column: 5, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !1485, file: !1, discriminator: 3)
!1489 = !{!1084, !1088, i64 8}
!1490 = !{!1491, !1088, i64 48}
!1491 = !{!"_typeobject", !1492, i64 0, !1088, i64 24, !1085, i64 32, !1085, i64 40, !1088, i64 48, !1088, i64 56, !1088, i64 64, !1088, i64 72, !1088, i64 80, !1088, i64 88, !1088, i64 96, !1088, i64 104, !1088, i64 112, !1088, i64 120, !1088, i64 128, !1088, i64 136, !1088, i64 144, !1088, i64 152, !1088, i64 160, !1085, i64 168, !1088, i64 176, !1088, i64 184, !1088, i64 192, !1088, i64 200, !1085, i64 208, !1088, i64 216, !1088, i64 224, !1088, i64 232, !1088, i64 240, !1088, i64 248, !1088, i64 256, !1088, i64 264, !1088, i64 272, !1088, i64 280, !1085, i64 288, !1088, i64 296, !1088, i64 304, !1088, i64 312, !1088, i64 320, !1088, i64 328, !1088, i64 336, !1088, i64 344, !1088, i64 352, !1088, i64 360, !1088, i64 368, !1088, i64 376, !1108, i64 384, !1088, i64 392}
!1492 = !{!"", !1084, i64 0, !1085, i64 16}
!1493 = !DILocation(line: 566, column: 1, scope: !804)
!1494 = !DILocation(line: 614, column: 25, scope: !814)
!1495 = !DILocation(line: 571, column: 21, scope: !1045, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 616, column: 12, scope: !814)
!1497 = !DILocation(line: 571, column: 29, scope: !1045, inlinedAt: !1496)
!1498 = !DILocation(line: 600, column: 13, scope: !1045, inlinedAt: !1496)
!1499 = !DILocation(line: 598, column: 9, scope: !1045, inlinedAt: !1496)
!1500 = !DILocation(line: 601, column: 15, scope: !1501, inlinedAt: !1496)
!1501 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 601, column: 9)
!1502 = !DILocation(line: 601, column: 9, scope: !1045, inlinedAt: !1496)
!1503 = !DILocation(line: 603, column: 32, scope: !1504, inlinedAt: !1496)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !1, line: 602, column: 13)
!1505 = distinct !DILexicalBlock(scope: !1501, file: !1, line: 601, column: 22)
!1506 = !DILocation(line: 603, column: 13, scope: !1504, inlinedAt: !1496)
!1507 = !DILocation(line: 606, column: 20, scope: !1045, inlinedAt: !1496)
!1508 = !DILocation(line: 606, column: 12, scope: !1045, inlinedAt: !1496)
!1509 = !DILocation(line: 606, column: 5, scope: !1045, inlinedAt: !1496)
!1510 = !DILocation(line: 616, column: 12, scope: !814)
!1511 = !DILocation(line: 616, column: 5, scope: !814)
!1512 = !DILocation(line: 735, column: 25, scope: !819)
!1513 = !DILocation(line: 735, column: 33, scope: !819)
!1514 = !DILocation(line: 735, column: 51, scope: !819)
!1515 = !DILocation(line: 620, column: 21, scope: !1052, inlinedAt: !1516)
!1516 = distinct !DILocation(line: 737, column: 12, scope: !819)
!1517 = !DILocation(line: 620, column: 29, scope: !1052, inlinedAt: !1516)
!1518 = !DILocation(line: 620, column: 46, scope: !1052, inlinedAt: !1516)
!1519 = !DILocation(line: 620, column: 58, scope: !1052, inlinedAt: !1516)
!1520 = !DILocation(line: 637, column: 27, scope: !1066, inlinedAt: !1516)
!1521 = !DILocation(line: 637, column: 39, scope: !1522, inlinedAt: !1516)
!1522 = !DILexicalBlockFile(scope: !1066, file: !1, discriminator: 1)
!1523 = !DILocation(line: 637, column: 35, scope: !1066, inlinedAt: !1516)
!1524 = !DILocation(line: 638, column: 13, scope: !1064, inlinedAt: !1516)
!1525 = !DILocation(line: 638, column: 32, scope: !1064, inlinedAt: !1516)
!1526 = !DILocation(line: 638, column: 13, scope: !1065, inlinedAt: !1516)
!1527 = !DILocation(line: 571, column: 21, scope: !1045, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 639, column: 31, scope: !1063, inlinedAt: !1516)
!1529 = !DILocation(line: 571, column: 29, scope: !1045, inlinedAt: !1528)
!1530 = !DILocation(line: 600, column: 13, scope: !1045, inlinedAt: !1528)
!1531 = !DILocation(line: 598, column: 9, scope: !1045, inlinedAt: !1528)
!1532 = !DILocation(line: 601, column: 15, scope: !1501, inlinedAt: !1528)
!1533 = !DILocation(line: 601, column: 9, scope: !1045, inlinedAt: !1528)
!1534 = !DILocation(line: 603, column: 32, scope: !1504, inlinedAt: !1528)
!1535 = !DILocation(line: 603, column: 13, scope: !1504, inlinedAt: !1528)
!1536 = !DILocation(line: 606, column: 20, scope: !1045, inlinedAt: !1528)
!1537 = !DILocation(line: 642, column: 32, scope: !1063, inlinedAt: !1516)
!1538 = !DILocation(line: 737, column: 12, scope: !819)
!1539 = !DILocation(line: 645, column: 13, scope: !1540, inlinedAt: !1516)
!1540 = distinct !DILexicalBlock(scope: !1065, file: !1, line: 645, column: 13)
!1541 = !DILocation(line: 645, column: 13, scope: !1065, inlinedAt: !1516)
!1542 = !DILocation(line: 676, column: 9, scope: !1543, inlinedAt: !1516)
!1543 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 675, column: 9)
!1544 = !DILocation(line: 679, column: 11, scope: !1052, inlinedAt: !1516)
!1545 = !DILocation(line: 627, column: 9, scope: !1052, inlinedAt: !1516)
!1546 = !DILocation(line: 680, column: 9, scope: !1547, inlinedAt: !1516)
!1547 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 680, column: 9)
!1548 = !DILocation(line: 680, column: 9, scope: !1052, inlinedAt: !1516)
!1549 = !DILocation(line: 682, column: 32, scope: !1550, inlinedAt: !1516)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !1, line: 681, column: 13)
!1551 = distinct !DILexicalBlock(scope: !1547, file: !1, line: 680, column: 14)
!1552 = !DILocation(line: 682, column: 13, scope: !1550, inlinedAt: !1516)
!1553 = !DILocation(line: 737, column: 5, scope: !819)
!1554 = !DILocation(line: 743, column: 22, scope: !827)
!1555 = !DILocation(line: 743, column: 36, scope: !827)
!1556 = !DILocation(line: 752, column: 10, scope: !827)
!1557 = !DILocation(line: 755, column: 11, scope: !827)
!1558 = !DILocation(line: 759, column: 10, scope: !827)
!1559 = !DILocation(line: 745, column: 9, scope: !827)
!1560 = !DILocation(line: 760, column: 12, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !827, file: !1, line: 760, column: 9)
!1562 = !DILocation(line: 760, column: 9, scope: !827)
!1563 = !DILocation(line: 620, column: 21, scope: !1052, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 763, column: 9, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !827, file: !1, line: 763, column: 9)
!1566 = !DILocation(line: 620, column: 29, scope: !1052, inlinedAt: !1564)
!1567 = !DILocation(line: 620, column: 46, scope: !1052, inlinedAt: !1564)
!1568 = !DILocation(line: 620, column: 58, scope: !1052, inlinedAt: !1564)
!1569 = !DILocation(line: 638, column: 13, scope: !1064, inlinedAt: !1564)
!1570 = !DILocation(line: 638, column: 32, scope: !1064, inlinedAt: !1564)
!1571 = !DILocation(line: 638, column: 13, scope: !1065, inlinedAt: !1564)
!1572 = !DILocation(line: 571, column: 21, scope: !1045, inlinedAt: !1573)
!1573 = distinct !DILocation(line: 639, column: 31, scope: !1063, inlinedAt: !1564)
!1574 = !DILocation(line: 571, column: 29, scope: !1045, inlinedAt: !1573)
!1575 = !DILocation(line: 600, column: 13, scope: !1045, inlinedAt: !1573)
!1576 = !DILocation(line: 598, column: 9, scope: !1045, inlinedAt: !1573)
!1577 = !DILocation(line: 601, column: 15, scope: !1501, inlinedAt: !1573)
!1578 = !DILocation(line: 601, column: 9, scope: !1045, inlinedAt: !1573)
!1579 = !DILocation(line: 606, column: 20, scope: !1045, inlinedAt: !1573)
!1580 = !DILocation(line: 642, column: 32, scope: !1063, inlinedAt: !1564)
!1581 = !DILocation(line: 763, column: 9, scope: !1565)
!1582 = !DILocation(line: 645, column: 13, scope: !1540, inlinedAt: !1564)
!1583 = !DILocation(line: 645, column: 13, scope: !1065, inlinedAt: !1564)
!1584 = !DILocation(line: 679, column: 11, scope: !1052, inlinedAt: !1564)
!1585 = !DILocation(line: 627, column: 9, scope: !1052, inlinedAt: !1564)
!1586 = !DILocation(line: 680, column: 9, scope: !1547, inlinedAt: !1564)
!1587 = !DILocation(line: 680, column: 9, scope: !1052, inlinedAt: !1564)
!1588 = !DILocation(line: 764, column: 9, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1565, file: !1, line: 763, column: 59)
!1590 = !DILocation(line: 765, column: 9, scope: !1589)
!1591 = !DILocation(line: 769, column: 1, scope: !827)
!1592 = !DILocation(line: 775, column: 27, scope: !835)
!1593 = !DILocation(line: 775, column: 48, scope: !835)
!1594 = !DILocation(line: 780, column: 5, scope: !835)
!1595 = !DILocation(line: 780, column: 10, scope: !835)
!1596 = !DILocation(line: 782, column: 9, scope: !835)
!1597 = !DILocation(line: 781, column: 12, scope: !835)
!1598 = !DILocation(line: 783, column: 30, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !835, file: !1, line: 783, column: 9)
!1600 = !DILocation(line: 783, column: 25, scope: !1599)
!1601 = !DILocation(line: 784, column: 9, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1599, file: !1, line: 783, column: 37)
!1603 = !DILocation(line: 784, column: 15, scope: !1602)
!1604 = !DILocation(line: 785, column: 9, scope: !1602)
!1605 = !DILocation(line: 787, column: 13, scope: !835)
!1606 = !DILocation(line: 779, column: 11, scope: !835)
!1607 = !DILocation(line: 788, column: 15, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !835, file: !1, line: 788, column: 9)
!1609 = !DILocation(line: 788, column: 9, scope: !835)
!1610 = !DILocation(line: 790, column: 9, scope: !835)
!1611 = !DILocation(line: 777, column: 11, scope: !835)
!1612 = !DILocation(line: 791, column: 5, scope: !835)
!1613 = !DILocation(line: 795, column: 11, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !835, file: !1, line: 795, column: 9)
!1615 = !DILocation(line: 795, column: 9, scope: !835)
!1616 = !DILocation(line: 797, column: 30, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !835, file: !1, line: 797, column: 9)
!1618 = !DILocation(line: 712, column: 26, scope: !1067, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 797, column: 9, scope: !1617)
!1620 = !DILocation(line: 620, column: 21, scope: !1052, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 714, column: 12, scope: !1067, inlinedAt: !1619)
!1622 = !DILocation(line: 620, column: 29, scope: !1052, inlinedAt: !1621)
!1623 = !DILocation(line: 620, column: 46, scope: !1052, inlinedAt: !1621)
!1624 = !DILocation(line: 620, column: 58, scope: !1052, inlinedAt: !1621)
!1625 = !DILocation(line: 679, column: 11, scope: !1052, inlinedAt: !1621)
!1626 = !DILocation(line: 627, column: 9, scope: !1052, inlinedAt: !1621)
!1627 = !DILocation(line: 680, column: 9, scope: !1052, inlinedAt: !1621)
!1628 = !DILocation(line: 797, column: 9, scope: !835)
!1629 = !DILocation(line: 798, column: 9, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1617, file: !1, line: 797, column: 46)
!1631 = !DILocation(line: 799, column: 9, scope: !1630)
!1632 = !DILocation(line: 802, column: 1, scope: !835)
!1633 = !DILocation(line: 806, column: 23, scope: !848)
!1634 = !DILocation(line: 806, column: 45, scope: !848)
!1635 = !DILocation(line: 808, column: 15, scope: !848)
!1636 = !DILocation(line: 808, column: 11, scope: !848)
!1637 = !DILocation(line: 809, column: 11, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !848, file: !1, line: 809, column: 9)
!1639 = !DILocation(line: 809, column: 9, scope: !848)
!1640 = !DILocation(line: 811, column: 30, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !848, file: !1, line: 811, column: 9)
!1642 = !DILocation(line: 712, column: 26, scope: !1067, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 811, column: 9, scope: !1641)
!1644 = !DILocation(line: 620, column: 21, scope: !1052, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 714, column: 12, scope: !1067, inlinedAt: !1643)
!1646 = !DILocation(line: 620, column: 29, scope: !1052, inlinedAt: !1645)
!1647 = !DILocation(line: 620, column: 46, scope: !1052, inlinedAt: !1645)
!1648 = !DILocation(line: 620, column: 58, scope: !1052, inlinedAt: !1645)
!1649 = !DILocation(line: 679, column: 11, scope: !1052, inlinedAt: !1645)
!1650 = !DILocation(line: 627, column: 9, scope: !1052, inlinedAt: !1645)
!1651 = !DILocation(line: 680, column: 9, scope: !1052, inlinedAt: !1645)
!1652 = !DILocation(line: 811, column: 9, scope: !848)
!1653 = !DILocation(line: 812, column: 9, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1641, file: !1, line: 811, column: 46)
!1655 = !DILocation(line: 813, column: 9, scope: !1654)
!1656 = !DILocation(line: 816, column: 1, scope: !848)
!1657 = !DILocation(line: 825, column: 25, scope: !855)
!1658 = !DILocation(line: 825, column: 43, scope: !855)
!1659 = !DILocation(line: 849, column: 5, scope: !855)
!1660 = !DILocation(line: 850, column: 10, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !855, file: !1, line: 850, column: 9)
!1662 = !DILocation(line: 850, column: 9, scope: !855)
!1663 = !DILocation(line: 849, column: 15, scope: !855)
!1664 = !DILocation(line: 852, column: 15, scope: !855)
!1665 = !DILocation(line: 852, column: 9, scope: !855)
!1666 = !DILocation(line: 827, column: 11, scope: !855)
!1667 = !DILocation(line: 853, column: 5, scope: !1668)
!1668 = !DILexicalBlockFile(scope: !864, file: !1, discriminator: 1)
!1669 = !DILocation(line: 853, column: 5, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !864, file: !1, line: 853, column: 5)
!1671 = !DILocation(line: 853, column: 5, scope: !864)
!1672 = !DILocation(line: 853, column: 5, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1670, file: !1, discriminator: 3)
!1674 = !DILocation(line: 855, column: 11, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !855, file: !1, line: 855, column: 9)
!1676 = !DILocation(line: 855, column: 9, scope: !855)
!1677 = !DILocation(line: 857, column: 30, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !855, file: !1, line: 857, column: 9)
!1679 = !DILocation(line: 712, column: 26, scope: !1067, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 857, column: 9, scope: !1678)
!1681 = !DILocation(line: 620, column: 21, scope: !1052, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 714, column: 12, scope: !1067, inlinedAt: !1680)
!1683 = !DILocation(line: 620, column: 29, scope: !1052, inlinedAt: !1682)
!1684 = !DILocation(line: 620, column: 46, scope: !1052, inlinedAt: !1682)
!1685 = !DILocation(line: 620, column: 58, scope: !1052, inlinedAt: !1682)
!1686 = !DILocation(line: 679, column: 11, scope: !1052, inlinedAt: !1682)
!1687 = !DILocation(line: 627, column: 9, scope: !1052, inlinedAt: !1682)
!1688 = !DILocation(line: 680, column: 9, scope: !1052, inlinedAt: !1682)
!1689 = !DILocation(line: 857, column: 9, scope: !855)
!1690 = !DILocation(line: 858, column: 9, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1678, file: !1, line: 857, column: 46)
!1692 = !DILocation(line: 859, column: 9, scope: !1691)
!1693 = !DILocation(line: 862, column: 1, scope: !855)
!1694 = !DILocation(line: 870, column: 30, scope: !865)
!1695 = !DILocation(line: 870, column: 45, scope: !865)
!1696 = !DILocation(line: 870, column: 57, scope: !865)
!1697 = !DILocation(line: 873, column: 5, scope: !865)
!1698 = !DILocation(line: 873, column: 10, scope: !865)
!1699 = !DILocation(line: 876, column: 5, scope: !865)
!1700 = !DILocation(line: 878, column: 13, scope: !865)
!1701 = !DILocation(line: 872, column: 11, scope: !865)
!1702 = !DILocation(line: 879, column: 15, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !865, file: !1, line: 879, column: 9)
!1704 = !DILocation(line: 879, column: 9, scope: !865)
!1705 = !DILocation(line: 880, column: 9, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1703, file: !1, line: 879, column: 24)
!1707 = !DILocation(line: 880, column: 15, scope: !1706)
!1708 = !DILocation(line: 881, column: 9, scope: !1706)
!1709 = !DILocation(line: 883, column: 16, scope: !865)
!1710 = !DILocation(line: 883, column: 11, scope: !865)
!1711 = !DILocation(line: 875, column: 9, scope: !865)
!1712 = !DILocation(line: 884, column: 5, scope: !865)
!1713 = !DILocation(line: 885, column: 13, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !865, file: !1, line: 885, column: 9)
!1715 = !DILocation(line: 885, column: 9, scope: !865)
!1716 = !DILocation(line: 887, column: 9, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !865, file: !1, line: 887, column: 9)
!1718 = !DILocation(line: 887, column: 13, scope: !1717)
!1719 = !DILocation(line: 887, column: 9, scope: !865)
!1720 = !DILocation(line: 888, column: 9, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1717, file: !1, line: 887, column: 39)
!1722 = !DILocation(line: 888, column: 15, scope: !1721)
!1723 = !DILocation(line: 889, column: 9, scope: !1721)
!1724 = !DILocation(line: 891, column: 5, scope: !865)
!1725 = !DILocation(line: 891, column: 15, scope: !865)
!1726 = !DILocation(line: 876, column: 12, scope: !865)
!1727 = !DILocation(line: 892, column: 12, scope: !865)
!1728 = !DILocation(line: 874, column: 14, scope: !865)
!1729 = !DILocation(line: 893, column: 14, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !865, file: !1, line: 893, column: 9)
!1731 = !DILocation(line: 893, column: 9, scope: !865)
!1732 = !DILocation(line: 894, column: 9, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1730, file: !1, line: 893, column: 23)
!1734 = !DILocation(line: 894, column: 15, scope: !1733)
!1735 = !DILocation(line: 895, column: 9, scope: !1733)
!1736 = !DILocation(line: 897, column: 19, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !865, file: !1, line: 897, column: 9)
!1738 = !DILocation(line: 897, column: 16, scope: !1737)
!1739 = !DILocation(line: 897, column: 9, scope: !865)
!1740 = !DILocation(line: 898, column: 23, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1737, file: !1, line: 897, column: 23)
!1742 = !DILocation(line: 898, column: 9, scope: !1741)
!1743 = !DILocation(line: 899, column: 9, scope: !1741)
!1744 = !DILocation(line: 899, column: 15, scope: !1741)
!1745 = !DILocation(line: 900, column: 9, scope: !1741)
!1746 = !DILocation(line: 902, column: 5, scope: !865)
!1747 = !DILocation(line: 903, column: 19, scope: !865)
!1748 = !DILocation(line: 903, column: 5, scope: !865)
!1749 = !DILocation(line: 904, column: 17, scope: !865)
!1750 = !DILocation(line: 904, column: 12, scope: !865)
!1751 = !DILocation(line: 904, column: 5, scope: !865)
!1752 = !DILocation(line: 905, column: 1, scope: !865)
!1753 = !DILocation(line: 915, column: 30, scope: !880)
!1754 = !DILocation(line: 916, column: 24, scope: !880)
!1755 = !DILocation(line: 916, column: 46, scope: !880)
!1756 = !DILocation(line: 919, column: 5, scope: !880)
!1757 = !DILocation(line: 919, column: 10, scope: !880)
!1758 = !DILocation(line: 922, column: 5, scope: !880)
!1759 = !DILocation(line: 923, column: 13, scope: !880)
!1760 = !DILocation(line: 918, column: 11, scope: !880)
!1761 = !DILocation(line: 924, column: 15, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !880, file: !1, line: 924, column: 9)
!1763 = !DILocation(line: 924, column: 9, scope: !880)
!1764 = !DILocation(line: 925, column: 9, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1762, file: !1, line: 924, column: 24)
!1766 = !DILocation(line: 925, column: 15, scope: !1765)
!1767 = !DILocation(line: 926, column: 9, scope: !1765)
!1768 = !DILocation(line: 928, column: 11, scope: !880)
!1769 = !DILocation(line: 921, column: 11, scope: !880)
!1770 = !DILocation(line: 929, column: 5, scope: !880)
!1771 = !DILocation(line: 930, column: 13, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !880, file: !1, line: 930, column: 9)
!1773 = !DILocation(line: 930, column: 9, scope: !880)
!1774 = !DILocation(line: 922, column: 12, scope: !880)
!1775 = !DILocation(line: 933, column: 22, scope: !880)
!1776 = !DILocation(line: 920, column: 14, scope: !880)
!1777 = !DILocation(line: 934, column: 24, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !880, file: !1, line: 934, column: 9)
!1779 = !DILocation(line: 934, column: 9, scope: !880)
!1780 = !DILocation(line: 935, column: 9, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1778, file: !1, line: 934, column: 33)
!1782 = !DILocation(line: 935, column: 15, scope: !1781)
!1783 = !DILocation(line: 936, column: 9, scope: !1781)
!1784 = !DILocation(line: 938, column: 31, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !880, file: !1, line: 938, column: 9)
!1786 = !DILocation(line: 938, column: 28, scope: !1785)
!1787 = !DILocation(line: 938, column: 9, scope: !880)
!1788 = !DILocation(line: 939, column: 23, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1785, file: !1, line: 938, column: 34)
!1790 = !DILocation(line: 939, column: 9, scope: !1789)
!1791 = !DILocation(line: 940, column: 9, scope: !1789)
!1792 = !DILocation(line: 940, column: 15, scope: !1789)
!1793 = !DILocation(line: 941, column: 9, scope: !1789)
!1794 = !DILocation(line: 943, column: 5, scope: !880)
!1795 = !DILocation(line: 944, column: 19, scope: !880)
!1796 = !DILocation(line: 944, column: 5, scope: !880)
!1797 = !DILocation(line: 945, column: 5, scope: !880)
!1798 = !DILocation(line: 946, column: 1, scope: !880)
!1799 = !DILocation(line: 954, column: 22, scope: !892)
!1800 = !DILocation(line: 954, column: 34, scope: !892)
!1801 = !DILocation(line: 960, column: 5, scope: !892)
!1802 = !DILocation(line: 960, column: 10, scope: !892)
!1803 = !DILocation(line: 962, column: 5, scope: !892)
!1804 = !DILocation(line: 964, column: 9, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !892, file: !1, line: 964, column: 9)
!1806 = !DILocation(line: 964, column: 47, scope: !1805)
!1807 = !DILocation(line: 964, column: 9, scope: !892)
!1808 = !DILocation(line: 962, column: 12, scope: !892)
!1809 = !DILocation(line: 966, column: 13, scope: !892)
!1810 = !DILocation(line: 961, column: 14, scope: !892)
!1811 = !DILocation(line: 967, column: 15, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !892, file: !1, line: 967, column: 9)
!1813 = !DILocation(line: 967, column: 9, scope: !892)
!1814 = !DILocation(line: 969, column: 17, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !892, file: !1, line: 969, column: 9)
!1816 = !DILocation(line: 969, column: 14, scope: !1815)
!1817 = !DILocation(line: 969, column: 9, scope: !892)
!1818 = !DILocation(line: 970, column: 23, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1815, file: !1, line: 969, column: 22)
!1820 = !DILocation(line: 970, column: 9, scope: !1819)
!1821 = !DILocation(line: 971, column: 9, scope: !1819)
!1822 = !DILocation(line: 973, column: 5, scope: !892)
!1823 = !DILocation(line: 974, column: 19, scope: !892)
!1824 = !DILocation(line: 974, column: 5, scope: !892)
!1825 = !DILocation(line: 975, column: 5, scope: !892)
!1826 = !DILocation(line: 977, column: 1, scope: !892)
!1827 = !DILocation(line: 985, column: 13, scope: !901)
!1828 = !DILocation(line: 1023, column: 5, scope: !905)
!1829 = !DILocation(line: 1024, column: 10, scope: !905)
!1830 = !DILocation(line: 1025, column: 5, scope: !905)
!1831 = !DILocation(line: 1026, column: 12, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !901, file: !1, line: 1026, column: 9)
!1833 = !DILocation(line: 1026, column: 9, scope: !901)
!1834 = !DILocation(line: 1027, column: 28, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1832, file: !1, line: 1026, column: 17)
!1836 = !DILocation(line: 1027, column: 9, scope: !1835)
!1837 = !DILocation(line: 1028, column: 9, scope: !1835)
!1838 = !DILocation(line: 1046, column: 1, scope: !901)
