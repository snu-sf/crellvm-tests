; ModuleID = 'irs-onlybc/asdl.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asdl_seq = type { i64, [1 x i8*] }
%struct._arena = type opaque
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
%struct.asdl_int_seq = type { i64, [1 x i32] }

; Function Attrs: nounwind uwtable
define %struct.asdl_seq* @_Py_asdl_seq_new(i64 %size, %struct._arena* %arena) #0 {
entry:
  %retval = alloca %struct.asdl_seq*, align 8
  %size.addr = alloca i64, align 8
  %arena.addr = alloca %struct._arena*, align 8
  %seq = alloca %struct.asdl_seq*, align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i64 %size, i64* %size.addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !40, metadata !62), !dbg !63
  store %struct._arena* %arena, %struct._arena** %arena.addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata %struct._arena** %arena.addr, metadata !41, metadata !62), !dbg !66
  %0 = bitcast %struct.asdl_seq** %seq to i8*, !dbg !67
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !67
  call void @llvm.dbg.declare(metadata %struct.asdl_seq** %seq, metadata !42, metadata !62), !dbg !68
  store %struct.asdl_seq* null, %struct.asdl_seq** %seq, align 8, !dbg !68, !tbaa !64
  %1 = bitcast i64* %n to i8*, !dbg !69
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !69
  call void @llvm.dbg.declare(metadata i64* %n, metadata !43, metadata !62), !dbg !70
  %2 = load i64, i64* %size.addr, align 8, !dbg !71, !tbaa !58
  %tobool = icmp ne i64 %2, 0, !dbg !71
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !71

cond.true:                                        ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8, !dbg !72, !tbaa !58
  %sub = sub i64 %3, 1, !dbg !74
  %mul = mul i64 8, %sub, !dbg !75
  br label %cond.end, !dbg !71

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !76

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul, %cond.true ], [ 0, %cond.false ], !dbg !71
  store i64 %cond, i64* %n, align 8, !dbg !78, !tbaa !58
  %4 = load i64, i64* %size.addr, align 8, !dbg !81, !tbaa !58
  %cmp = icmp slt i64 %4, 0, !dbg !83
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !84

lor.lhs.false:                                    ; preds = %cond.end
  %5 = load i64, i64* %size.addr, align 8, !dbg !85, !tbaa !58
  %cmp1 = icmp eq i64 %5, -2147483648, !dbg !87
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2, !dbg !88

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %6 = load i64, i64* %size.addr, align 8, !dbg !89, !tbaa !58
  %tobool3 = icmp ne i64 %6, 0, !dbg !89
  br i1 %tobool3, label %land.lhs.true, label %if.end, !dbg !90

land.lhs.true:                                    ; preds = %lor.lhs.false.2
  %7 = load i64, i64* %size.addr, align 8, !dbg !91, !tbaa !58
  %sub4 = sub i64 %7, 1, !dbg !92
  %cmp5 = icmp ugt i64 %sub4, 2305843009213693951, !dbg !93
  br i1 %cmp5, label %if.then, label %if.end, !dbg !94

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %cond.end
  %call = call %struct._object* @PyErr_NoMemory(), !dbg !95
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval, !dbg !97
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !97

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false.2
  %8 = load i64, i64* %n, align 8, !dbg !98, !tbaa !58
  %cmp6 = icmp ugt i64 %8, -17, !dbg !100
  br i1 %cmp6, label %if.then.7, label %if.end.9, !dbg !101

if.then.7:                                        ; preds = %if.end
  %call8 = call %struct._object* @PyErr_NoMemory(), !dbg !102
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval, !dbg !104
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !104

if.end.9:                                         ; preds = %if.end
  %9 = load i64, i64* %n, align 8, !dbg !105, !tbaa !58
  %add = add i64 %9, 16, !dbg !105
  store i64 %add, i64* %n, align 8, !dbg !105, !tbaa !58
  %10 = load %struct._arena*, %struct._arena** %arena.addr, align 8, !dbg !106, !tbaa !64
  %11 = load i64, i64* %n, align 8, !dbg !107, !tbaa !58
  %call10 = call i8* @PyArena_Malloc(%struct._arena* %10, i64 %11), !dbg !108
  %12 = bitcast i8* %call10 to %struct.asdl_seq*, !dbg !109
  store %struct.asdl_seq* %12, %struct.asdl_seq** %seq, align 8, !dbg !110, !tbaa !64
  %13 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8, !dbg !111, !tbaa !64
  %tobool11 = icmp ne %struct.asdl_seq* %13, null, !dbg !111
  br i1 %tobool11, label %if.end.14, label %if.then.12, !dbg !113

if.then.12:                                       ; preds = %if.end.9
  %call13 = call %struct._object* @PyErr_NoMemory(), !dbg !114
  store %struct.asdl_seq* null, %struct.asdl_seq** %retval, !dbg !116
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !116

if.end.14:                                        ; preds = %if.end.9
  %14 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8, !dbg !117, !tbaa !64
  %15 = bitcast %struct.asdl_seq* %14 to i8*, !dbg !118
  %16 = load i64, i64* %n, align 8, !dbg !119, !tbaa !58
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 %16, i32 8, i1 false), !dbg !118
  %17 = load i64, i64* %size.addr, align 8, !dbg !120, !tbaa !58
  %18 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8, !dbg !121, !tbaa !64
  %size15 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %18, i32 0, i32 0, !dbg !122
  store i64 %17, i64* %size15, align 8, !dbg !123, !tbaa !124
  %19 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8, !dbg !126, !tbaa !64
  store %struct.asdl_seq* %19, %struct.asdl_seq** %retval, !dbg !127
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !127

cleanup:                                          ; preds = %if.end.14, %if.then.12, %if.then.7, %if.then
  %20 = bitcast i64* %n to i8*, !dbg !128
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !128
  %21 = bitcast %struct.asdl_seq** %seq to i8*, !dbg !128
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !128
  %22 = load %struct.asdl_seq*, %struct.asdl_seq** %retval, !dbg !128
  ret %struct.asdl_seq* %22, !dbg !128
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct._object* @PyErr_NoMemory() #3

declare i8* @PyArena_Malloc(%struct._arena*, i64) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define %struct.asdl_int_seq* @_Py_asdl_int_seq_new(i64 %size, %struct._arena* %arena) #0 {
entry:
  %retval = alloca %struct.asdl_int_seq*, align 8
  %size.addr = alloca i64, align 8
  %arena.addr = alloca %struct._arena*, align 8
  %seq = alloca %struct.asdl_int_seq*, align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i64 %size, i64* %size.addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !51, metadata !62), !dbg !129
  store %struct._arena* %arena, %struct._arena** %arena.addr, align 8, !tbaa !64
  call void @llvm.dbg.declare(metadata %struct._arena** %arena.addr, metadata !52, metadata !62), !dbg !130
  %0 = bitcast %struct.asdl_int_seq** %seq to i8*, !dbg !131
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !131
  call void @llvm.dbg.declare(metadata %struct.asdl_int_seq** %seq, metadata !53, metadata !62), !dbg !132
  store %struct.asdl_int_seq* null, %struct.asdl_int_seq** %seq, align 8, !dbg !132, !tbaa !64
  %1 = bitcast i64* %n to i8*, !dbg !133
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !133
  call void @llvm.dbg.declare(metadata i64* %n, metadata !54, metadata !62), !dbg !134
  %2 = load i64, i64* %size.addr, align 8, !dbg !135, !tbaa !58
  %tobool = icmp ne i64 %2, 0, !dbg !135
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !135

cond.true:                                        ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8, !dbg !136, !tbaa !58
  %sub = sub i64 %3, 1, !dbg !138
  %mul = mul i64 8, %sub, !dbg !139
  br label %cond.end, !dbg !135

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !140

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul, %cond.true ], [ 0, %cond.false ], !dbg !135
  store i64 %cond, i64* %n, align 8, !dbg !142, !tbaa !58
  %4 = load i64, i64* %size.addr, align 8, !dbg !145, !tbaa !58
  %cmp = icmp slt i64 %4, 0, !dbg !147
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !148

lor.lhs.false:                                    ; preds = %cond.end
  %5 = load i64, i64* %size.addr, align 8, !dbg !149, !tbaa !58
  %cmp1 = icmp eq i64 %5, -2147483648, !dbg !151
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2, !dbg !152

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %6 = load i64, i64* %size.addr, align 8, !dbg !153, !tbaa !58
  %tobool3 = icmp ne i64 %6, 0, !dbg !153
  br i1 %tobool3, label %land.lhs.true, label %if.end, !dbg !154

land.lhs.true:                                    ; preds = %lor.lhs.false.2
  %7 = load i64, i64* %size.addr, align 8, !dbg !155, !tbaa !58
  %sub4 = sub i64 %7, 1, !dbg !156
  %cmp5 = icmp ugt i64 %sub4, 2305843009213693951, !dbg !157
  br i1 %cmp5, label %if.then, label %if.end, !dbg !158

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %cond.end
  %call = call %struct._object* @PyErr_NoMemory(), !dbg !159
  store %struct.asdl_int_seq* null, %struct.asdl_int_seq** %retval, !dbg !161
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !161

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false.2
  %8 = load i64, i64* %n, align 8, !dbg !162, !tbaa !58
  %cmp6 = icmp ugt i64 %8, -17, !dbg !164
  br i1 %cmp6, label %if.then.7, label %if.end.9, !dbg !165

if.then.7:                                        ; preds = %if.end
  %call8 = call %struct._object* @PyErr_NoMemory(), !dbg !166
  store %struct.asdl_int_seq* null, %struct.asdl_int_seq** %retval, !dbg !168
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !168

if.end.9:                                         ; preds = %if.end
  %9 = load i64, i64* %n, align 8, !dbg !169, !tbaa !58
  %add = add i64 %9, 16, !dbg !169
  store i64 %add, i64* %n, align 8, !dbg !169, !tbaa !58
  %10 = load %struct._arena*, %struct._arena** %arena.addr, align 8, !dbg !170, !tbaa !64
  %11 = load i64, i64* %n, align 8, !dbg !171, !tbaa !58
  %call10 = call i8* @PyArena_Malloc(%struct._arena* %10, i64 %11), !dbg !172
  %12 = bitcast i8* %call10 to %struct.asdl_int_seq*, !dbg !173
  store %struct.asdl_int_seq* %12, %struct.asdl_int_seq** %seq, align 8, !dbg !174, !tbaa !64
  %13 = load %struct.asdl_int_seq*, %struct.asdl_int_seq** %seq, align 8, !dbg !175, !tbaa !64
  %tobool11 = icmp ne %struct.asdl_int_seq* %13, null, !dbg !175
  br i1 %tobool11, label %if.end.14, label %if.then.12, !dbg !177

if.then.12:                                       ; preds = %if.end.9
  %call13 = call %struct._object* @PyErr_NoMemory(), !dbg !178
  store %struct.asdl_int_seq* null, %struct.asdl_int_seq** %retval, !dbg !180
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !180

if.end.14:                                        ; preds = %if.end.9
  %14 = load %struct.asdl_int_seq*, %struct.asdl_int_seq** %seq, align 8, !dbg !181, !tbaa !64
  %15 = bitcast %struct.asdl_int_seq* %14 to i8*, !dbg !182
  %16 = load i64, i64* %n, align 8, !dbg !183, !tbaa !58
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 %16, i32 8, i1 false), !dbg !182
  %17 = load i64, i64* %size.addr, align 8, !dbg !184, !tbaa !58
  %18 = load %struct.asdl_int_seq*, %struct.asdl_int_seq** %seq, align 8, !dbg !185, !tbaa !64
  %size15 = getelementptr inbounds %struct.asdl_int_seq, %struct.asdl_int_seq* %18, i32 0, i32 0, !dbg !186
  store i64 %17, i64* %size15, align 8, !dbg !187, !tbaa !124
  %19 = load %struct.asdl_int_seq*, %struct.asdl_int_seq** %seq, align 8, !dbg !188, !tbaa !64
  store %struct.asdl_int_seq* %19, %struct.asdl_int_seq** %retval, !dbg !189
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !189

cleanup:                                          ; preds = %if.end.14, %if.then.12, %if.then.7, %if.then
  %20 = bitcast i64* %n to i8*, !dbg !190
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !190
  %21 = bitcast %struct.asdl_int_seq** %seq to i8*, !dbg !190
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !190
  %22 = load %struct.asdl_int_seq*, %struct.asdl_int_seq** %retval, !dbg !190
  ret %struct.asdl_int_seq* %22, !dbg !190
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!55, !56}
!llvm.ident = !{!57}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !30)
!1 = !DIFile(filename: "asdl.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !22}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "asdl_seq", file: !6, line: 21, baseType: !7)
!6 = !DIFile(filename: "Include/asdl.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 18, size: 128, align: 64, elements: !8)
!8 = !{!9, !17}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !7, file: !6, line: 19, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !11, line: 177, baseType: !12)
!11 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !13, line: 102, baseType: !14)
!13 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !15, line: 181, baseType: !16)
!15 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!16 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !7, file: !6, line: 20, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 64, align: 64, elements: !20)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!20 = !{!21}
!21 = !DISubrange(count: 1)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "asdl_int_seq", file: !6, line: 26, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 23, size: 128, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !24, file: !6, line: 24, baseType: !10, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !24, file: !6, line: 25, baseType: !28, size: 32, align: 32, offset: 64)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 32, align: 32, elements: !20)
!29 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!30 = !{!31, !47}
!31 = !DISubprogram(name: "_Py_asdl_seq_new", scope: !32, file: !32, line: 5, type: !33, isLocal: false, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: true, function: %struct.asdl_seq* (i64, %struct._arena*)* @_Py_asdl_seq_new, variables: !39)
!32 = !DIFile(filename: "Python/asdl.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!33 = !DISubroutineType(types: !34)
!34 = !{!4, !10, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArena", file: !37, line: 12, baseType: !38)
!37 = !DIFile(filename: "Include/pyarena.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "_arena", file: !37, line: 12, flags: DIFlagFwdDecl)
!39 = !{!40, !41, !42, !43}
!40 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !31, file: !32, line: 5, type: !10)
!41 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arena", arg: 2, scope: !31, file: !32, line: 5, type: !35)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seq", scope: !31, file: !32, line: 7, type: !4)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !31, file: !32, line: 8, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 62, baseType: !46)
!45 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!46 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!47 = !DISubprogram(name: "_Py_asdl_int_seq_new", scope: !32, file: !32, line: 36, type: !48, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: %struct.asdl_int_seq* (i64, %struct._arena*)* @_Py_asdl_int_seq_new, variables: !50)
!48 = !DISubroutineType(types: !49)
!49 = !{!22, !10, !35}
!50 = !{!51, !52, !53, !54}
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !47, file: !32, line: 36, type: !10)
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arena", arg: 2, scope: !47, file: !32, line: 36, type: !35)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seq", scope: !47, file: !32, line: 38, type: !22)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !47, file: !32, line: 39, type: !44)
!55 = !{i32 2, !"Dwarf Version", i32 4}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!58 = !{!59, !59, i64 0}
!59 = !{!"long", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C/C++ TBAA"}
!62 = !DIExpression()
!63 = !DILocation(line: 5, column: 29, scope: !31)
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !60, i64 0}
!66 = !DILocation(line: 5, column: 44, scope: !31)
!67 = !DILocation(line: 7, column: 5, scope: !31)
!68 = !DILocation(line: 7, column: 15, scope: !31)
!69 = !DILocation(line: 8, column: 5, scope: !31)
!70 = !DILocation(line: 8, column: 12, scope: !31)
!71 = !DILocation(line: 8, column: 17, scope: !31)
!72 = !DILocation(line: 8, column: 43, scope: !73)
!73 = !DILexicalBlockFile(scope: !31, file: !32, discriminator: 1)
!74 = !DILocation(line: 8, column: 48, scope: !31)
!75 = !DILocation(line: 8, column: 40, scope: !31)
!76 = !DILocation(line: 8, column: 17, scope: !77)
!77 = !DILexicalBlockFile(scope: !31, file: !32, discriminator: 2)
!78 = !DILocation(line: 8, column: 12, scope: !79)
!79 = !DILexicalBlockFile(scope: !80, file: !32, discriminator: 4)
!80 = !DILexicalBlockFile(scope: !31, file: !32, discriminator: 3)
!81 = !DILocation(line: 11, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !31, file: !32, line: 11, column: 9)
!83 = !DILocation(line: 11, column: 14, scope: !82)
!84 = !DILocation(line: 11, column: 18, scope: !82)
!85 = !DILocation(line: 11, column: 21, scope: !86)
!86 = !DILexicalBlockFile(scope: !82, file: !32, discriminator: 1)
!87 = !DILocation(line: 11, column: 26, scope: !82)
!88 = !DILocation(line: 11, column: 46, scope: !82)
!89 = !DILocation(line: 12, column: 10, scope: !82)
!90 = !DILocation(line: 12, column: 15, scope: !82)
!91 = !DILocation(line: 12, column: 20, scope: !86)
!92 = !DILocation(line: 12, column: 25, scope: !82)
!93 = !DILocation(line: 12, column: 30, scope: !82)
!94 = !DILocation(line: 11, column: 9, scope: !31)
!95 = !DILocation(line: 13, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !82, file: !32, line: 12, column: 79)
!97 = !DILocation(line: 14, column: 9, scope: !96)
!98 = !DILocation(line: 18, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !31, file: !32, line: 18, column: 9)
!100 = !DILocation(line: 18, column: 11, scope: !99)
!101 = !DILocation(line: 18, column: 9, scope: !31)
!102 = !DILocation(line: 19, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !32, line: 18, column: 58)
!104 = !DILocation(line: 20, column: 9, scope: !103)
!105 = !DILocation(line: 23, column: 7, scope: !31)
!106 = !DILocation(line: 25, column: 38, scope: !31)
!107 = !DILocation(line: 25, column: 45, scope: !31)
!108 = !DILocation(line: 25, column: 23, scope: !31)
!109 = !DILocation(line: 25, column: 11, scope: !31)
!110 = !DILocation(line: 25, column: 9, scope: !31)
!111 = !DILocation(line: 26, column: 10, scope: !112)
!112 = distinct !DILexicalBlock(scope: !31, file: !32, line: 26, column: 9)
!113 = !DILocation(line: 26, column: 9, scope: !31)
!114 = !DILocation(line: 27, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !32, line: 26, column: 15)
!116 = !DILocation(line: 28, column: 9, scope: !115)
!117 = !DILocation(line: 30, column: 12, scope: !31)
!118 = !DILocation(line: 30, column: 5, scope: !31)
!119 = !DILocation(line: 30, column: 20, scope: !31)
!120 = !DILocation(line: 31, column: 17, scope: !31)
!121 = !DILocation(line: 31, column: 5, scope: !31)
!122 = !DILocation(line: 31, column: 10, scope: !31)
!123 = !DILocation(line: 31, column: 15, scope: !31)
!124 = !{!125, !59, i64 0}
!125 = !{!"", !59, i64 0, !60, i64 8}
!126 = !DILocation(line: 32, column: 12, scope: !31)
!127 = !DILocation(line: 32, column: 5, scope: !31)
!128 = !DILocation(line: 33, column: 1, scope: !31)
!129 = !DILocation(line: 36, column: 33, scope: !47)
!130 = !DILocation(line: 36, column: 48, scope: !47)
!131 = !DILocation(line: 38, column: 5, scope: !47)
!132 = !DILocation(line: 38, column: 19, scope: !47)
!133 = !DILocation(line: 39, column: 5, scope: !47)
!134 = !DILocation(line: 39, column: 12, scope: !47)
!135 = !DILocation(line: 39, column: 17, scope: !47)
!136 = !DILocation(line: 39, column: 43, scope: !137)
!137 = !DILexicalBlockFile(scope: !47, file: !32, discriminator: 1)
!138 = !DILocation(line: 39, column: 48, scope: !47)
!139 = !DILocation(line: 39, column: 40, scope: !47)
!140 = !DILocation(line: 39, column: 17, scope: !141)
!141 = !DILexicalBlockFile(scope: !47, file: !32, discriminator: 2)
!142 = !DILocation(line: 39, column: 12, scope: !143)
!143 = !DILexicalBlockFile(scope: !144, file: !32, discriminator: 4)
!144 = !DILexicalBlockFile(scope: !47, file: !32, discriminator: 3)
!145 = !DILocation(line: 42, column: 9, scope: !146)
!146 = distinct !DILexicalBlock(scope: !47, file: !32, line: 42, column: 9)
!147 = !DILocation(line: 42, column: 14, scope: !146)
!148 = !DILocation(line: 42, column: 18, scope: !146)
!149 = !DILocation(line: 42, column: 21, scope: !150)
!150 = !DILexicalBlockFile(scope: !146, file: !32, discriminator: 1)
!151 = !DILocation(line: 42, column: 26, scope: !146)
!152 = !DILocation(line: 42, column: 46, scope: !146)
!153 = !DILocation(line: 43, column: 10, scope: !146)
!154 = !DILocation(line: 43, column: 15, scope: !146)
!155 = !DILocation(line: 43, column: 20, scope: !150)
!156 = !DILocation(line: 43, column: 25, scope: !146)
!157 = !DILocation(line: 43, column: 30, scope: !146)
!158 = !DILocation(line: 42, column: 9, scope: !47)
!159 = !DILocation(line: 44, column: 13, scope: !160)
!160 = distinct !DILexicalBlock(scope: !146, file: !32, line: 43, column: 79)
!161 = !DILocation(line: 45, column: 13, scope: !160)
!162 = !DILocation(line: 49, column: 9, scope: !163)
!163 = distinct !DILexicalBlock(scope: !47, file: !32, line: 49, column: 9)
!164 = !DILocation(line: 49, column: 11, scope: !163)
!165 = !DILocation(line: 49, column: 9, scope: !47)
!166 = !DILocation(line: 50, column: 9, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !32, line: 49, column: 58)
!168 = !DILocation(line: 51, column: 9, scope: !167)
!169 = !DILocation(line: 54, column: 7, scope: !47)
!170 = !DILocation(line: 56, column: 42, scope: !47)
!171 = !DILocation(line: 56, column: 49, scope: !47)
!172 = !DILocation(line: 56, column: 27, scope: !47)
!173 = !DILocation(line: 56, column: 11, scope: !47)
!174 = !DILocation(line: 56, column: 9, scope: !47)
!175 = !DILocation(line: 57, column: 10, scope: !176)
!176 = distinct !DILexicalBlock(scope: !47, file: !32, line: 57, column: 9)
!177 = !DILocation(line: 57, column: 9, scope: !47)
!178 = !DILocation(line: 58, column: 9, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !32, line: 57, column: 15)
!180 = !DILocation(line: 59, column: 9, scope: !179)
!181 = !DILocation(line: 61, column: 12, scope: !47)
!182 = !DILocation(line: 61, column: 5, scope: !47)
!183 = !DILocation(line: 61, column: 20, scope: !47)
!184 = !DILocation(line: 62, column: 17, scope: !47)
!185 = !DILocation(line: 62, column: 5, scope: !47)
!186 = !DILocation(line: 62, column: 10, scope: !47)
!187 = !DILocation(line: 62, column: 15, scope: !47)
!188 = !DILocation(line: 63, column: 12, scope: !47)
!189 = !DILocation(line: 63, column: 5, scope: !47)
!190 = !DILocation(line: 64, column: 1, scope: !47)
