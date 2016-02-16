; ModuleID = 'bytes_methods.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
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

@_Py_isspace__doc__ = constant [130 x i8] c"B.isspace() -> bool\0A\0AReturn True if all characters in B are whitespace\0Aand there is at least one character in B, False otherwise.\00", align 16
@_Py_ctype_table = external constant [256 x i32], align 16
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@_Py_isalpha__doc__ = constant [130 x i8] c"B.isalpha() -> bool\0A\0AReturn True if all characters in B are alphabetic\0Aand there is at least one character in B, False otherwise.\00", align 16
@_Py_isalnum__doc__ = constant [132 x i8] c"B.isalnum() -> bool\0A\0AReturn True if all characters in B are alphanumeric\0Aand there is at least one character in B, False otherwise.\00", align 16
@_Py_isdigit__doc__ = constant [126 x i8] c"B.isdigit() -> bool\0A\0AReturn True if all characters in B are digits\0Aand there is at least one character in B, False otherwise.\00", align 16
@_Py_islower__doc__ = constant [141 x i8] c"B.islower() -> bool\0A\0AReturn True if all cased characters in B are lowercase and there is\0Aat least one cased character in B, False otherwise.\00", align 16
@_Py_isupper__doc__ = constant [141 x i8] c"B.isupper() -> bool\0A\0AReturn True if all cased characters in B are uppercase and there is\0Aat least one cased character in B, False otherwise.\00", align 16
@_Py_istitle__doc__ = constant [230 x i8] c"B.istitle() -> bool\0A\0AReturn True if B is a titlecased string and there is at least one\0Acharacter in B, i.e. uppercase characters may only follow uncased\0Acharacters and lowercase characters only cased ones. Return False\0Aotherwise.\00", align 16
@_Py_lower__doc__ = constant [93 x i8] c"B.lower() -> copy of B\0A\0AReturn a copy of B with all ASCII characters converted to lowercase.\00", align 16
@_Py_ctype_tolower = external constant [256 x i8], align 16
@_Py_upper__doc__ = constant [93 x i8] c"B.upper() -> copy of B\0A\0AReturn a copy of B with all ASCII characters converted to uppercase.\00", align 16
@_Py_ctype_toupper = external constant [256 x i8], align 16
@_Py_title__doc__ = constant [155 x i8] c"B.title() -> copy of B\0A\0AReturn a titlecased version of B, i.e. ASCII words start with uppercase\0Acharacters, all remaining cased characters have lowercase.\00", align 16
@_Py_capitalize__doc__ = constant [124 x i8] c"B.capitalize() -> copy of B\0A\0AReturn a copy of B with only its first character capitalized (ASCII)\0Aand the rest lower-cased.\00", align 16
@_Py_swapcase__doc__ = constant [123 x i8] c"B.swapcase() -> copy of B\0A\0AReturn a copy of B with uppercase ASCII characters converted\0Ato lowercase ASCII and vice versa.\00", align 16
@_Py_maketrans__doc__ = constant [291 x i8] c"B.maketrans(frm, to) -> translation table\0A\0AReturn a translation table (a bytes object of length 256) suitable\0Afor use in the bytes or bytearray translate method where each byte\0Ain frm is mapped to the byte at the same position in to.\0AThe bytes objects frm and to must be of the same length.\00", align 16
@.str = private unnamed_addr constant [13 x i8] c"OO:maketrans\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"maketrans arguments must have same length\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Type %.100s doesn't support the buffer API\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_isspace(i8* readonly %cptr, i64 %len) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %cptr, i64 0, metadata !358, metadata !522), !dbg !523
  tail call void @llvm.dbg.value(metadata i64 %len, i64 0, metadata !359, metadata !522), !dbg !524
  tail call void @llvm.dbg.value(metadata i8* %cptr, i64 0, metadata !360, metadata !522), !dbg !525
  switch i64 %len, label %if.end.7 [
    i64 1, label %land.lhs.true
    i64 0, label %if.then.5
  ], !dbg !526

land.lhs.true:                                    ; preds = %entry
  %0 = load i8, i8* %cptr, align 1, !dbg !528, !tbaa !530
  %idxprom = zext i8 %0 to i64, !dbg !528
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom, !dbg !528
  %1 = load i32, i32* %arrayidx, align 4, !dbg !528, !tbaa !533
  %and2 = and i32 %1, 8, !dbg !528
  %tobool = icmp eq i32 %and2, 0, !dbg !528
  br i1 %tobool, label %if.end.7, label %if.then, !dbg !535

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !536, !tbaa !537
  %inc = add i64 %2, 1, !dbg !536
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !536, !tbaa !537
  br label %cleanup, !dbg !536

if.then.5:                                        ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !541, !tbaa !537
  %inc6 = add i64 %3, 1, !dbg !541
  store i64 %inc6, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !541, !tbaa !537
  br label %cleanup, !dbg !541

if.end.7:                                         ; preds = %land.lhs.true, %entry
  %add.ptr = getelementptr i8, i8* %cptr, i64 %len, !dbg !543
  tail call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !363, metadata !522), !dbg !544
  %cmp8.30 = icmp ugt i8* %add.ptr, %cptr, !dbg !545
  br i1 %cmp8.30, label %for.body.preheader, label %for.end, !dbg !548

for.body.preheader:                               ; preds = %if.end.7
  br label %for.body, !dbg !549

for.cond:                                         ; preds = %for.body
  %cmp8 = icmp ult i8* %incdec.ptr, %add.ptr, !dbg !545
  br i1 %cmp8, label %for.body, label %for.end.loopexit, !dbg !548

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %p.031 = phi i8* [ %incdec.ptr, %for.cond ], [ %cptr, %for.body.preheader ]
  %4 = load i8, i8* %p.031, align 1, !dbg !549, !tbaa !530
  %idxprom13 = zext i8 %4 to i64, !dbg !549
  %arrayidx14 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom13, !dbg !549
  %5 = load i32, i32* %arrayidx14, align 4, !dbg !549, !tbaa !533
  %and15 = and i32 %5, 8, !dbg !549
  %tobool16 = icmp eq i32 %and15, 0, !dbg !549
  %incdec.ptr = getelementptr i8, i8* %p.031, i64 1, !dbg !552
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !360, metadata !522), !dbg !525
  br i1 %tobool16, label %if.then.17, label %for.cond, !dbg !553

if.then.17:                                       ; preds = %for.body
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !554, !tbaa !537
  %inc18 = add i64 %6, 1, !dbg !554
  store i64 %inc18, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !554, !tbaa !537
  br label %cleanup, !dbg !554

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end, !dbg !555

for.end:                                          ; preds = %for.end.loopexit, %if.end.7
  %7 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !555, !tbaa !537
  %inc20 = add i64 %7, 1, !dbg !555
  store i64 %inc20, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !555, !tbaa !537
  br label %cleanup, !dbg !555

cleanup:                                          ; preds = %for.end, %if.then.17, %if.then.5, %if.then
  %retval.0 = phi %struct._object* [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.then ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then.5 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then.17 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %for.end ]
  ret %struct._object* %retval.0, !dbg !556
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_isalpha(i8* readonly %cptr, i64 %len) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %cptr, i64 0, metadata !366, metadata !522), !dbg !557
  tail call void @llvm.dbg.value(metadata i64 %len, i64 0, metadata !367, metadata !522), !dbg !558
  tail call void @llvm.dbg.value(metadata i8* %cptr, i64 0, metadata !368, metadata !522), !dbg !559
  switch i64 %len, label %if.end.7 [
    i64 1, label %land.lhs.true
    i64 0, label %if.then.5
  ], !dbg !560

land.lhs.true:                                    ; preds = %entry
  %0 = load i8, i8* %cptr, align 1, !dbg !562, !tbaa !530
  %idxprom = zext i8 %0 to i64, !dbg !562
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom, !dbg !562
  %1 = load i32, i32* %arrayidx, align 4, !dbg !562, !tbaa !533
  %and2 = and i32 %1, 3, !dbg !562
  %tobool = icmp eq i32 %and2, 0, !dbg !562
  br i1 %tobool, label %if.end.7, label %if.then, !dbg !564

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !565, !tbaa !537
  %inc = add i64 %2, 1, !dbg !565
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !565, !tbaa !537
  br label %cleanup, !dbg !565

if.then.5:                                        ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !566, !tbaa !537
  %inc6 = add i64 %3, 1, !dbg !566
  store i64 %inc6, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !566, !tbaa !537
  br label %cleanup, !dbg !566

if.end.7:                                         ; preds = %land.lhs.true, %entry
  %add.ptr = getelementptr i8, i8* %cptr, i64 %len, !dbg !568
  tail call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !369, metadata !522), !dbg !569
  %cmp8.30 = icmp ugt i8* %add.ptr, %cptr, !dbg !570
  br i1 %cmp8.30, label %for.body.preheader, label %for.end, !dbg !573

for.body.preheader:                               ; preds = %if.end.7
  br label %for.body, !dbg !574

for.cond:                                         ; preds = %for.body
  %cmp8 = icmp ult i8* %incdec.ptr, %add.ptr, !dbg !570
  br i1 %cmp8, label %for.body, label %for.end.loopexit, !dbg !573

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %p.031 = phi i8* [ %incdec.ptr, %for.cond ], [ %cptr, %for.body.preheader ]
  %4 = load i8, i8* %p.031, align 1, !dbg !574, !tbaa !530
  %idxprom13 = zext i8 %4 to i64, !dbg !574
  %arrayidx14 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom13, !dbg !574
  %5 = load i32, i32* %arrayidx14, align 4, !dbg !574, !tbaa !533
  %and15 = and i32 %5, 3, !dbg !574
  %tobool16 = icmp eq i32 %and15, 0, !dbg !574
  %incdec.ptr = getelementptr i8, i8* %p.031, i64 1, !dbg !577
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !368, metadata !522), !dbg !559
  br i1 %tobool16, label %if.then.17, label %for.cond, !dbg !578

if.then.17:                                       ; preds = %for.body
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !579, !tbaa !537
  %inc18 = add i64 %6, 1, !dbg !579
  store i64 %inc18, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !579, !tbaa !537
  br label %cleanup, !dbg !579

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end, !dbg !580

for.end:                                          ; preds = %for.end.loopexit, %if.end.7
  %7 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !580, !tbaa !537
  %inc20 = add i64 %7, 1, !dbg !580
  store i64 %inc20, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !580, !tbaa !537
  br label %cleanup, !dbg !580

cleanup:                                          ; preds = %for.end, %if.then.17, %if.then.5, %if.then
  %retval.0 = phi %struct._object* [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.then ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then.5 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then.17 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %for.end ]
  ret %struct._object* %retval.0, !dbg !581
}

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_isalnum(i8* readonly %cptr, i64 %len) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %cptr, i64 0, metadata !372, metadata !522), !dbg !582
  tail call void @llvm.dbg.value(metadata i64 %len, i64 0, metadata !373, metadata !522), !dbg !583
  tail call void @llvm.dbg.value(metadata i8* %cptr, i64 0, metadata !374, metadata !522), !dbg !584
  switch i64 %len, label %if.end.7 [
    i64 1, label %land.lhs.true
    i64 0, label %if.then.5
  ], !dbg !585

land.lhs.true:                                    ; preds = %entry
  %0 = load i8, i8* %cptr, align 1, !dbg !587, !tbaa !530
  %idxprom = zext i8 %0 to i64, !dbg !587
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom, !dbg !587
  %1 = load i32, i32* %arrayidx, align 4, !dbg !587, !tbaa !533
  %and2 = and i32 %1, 7, !dbg !587
  %tobool = icmp eq i32 %and2, 0, !dbg !587
  br i1 %tobool, label %if.end.7, label %if.then, !dbg !589

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !590, !tbaa !537
  %inc = add i64 %2, 1, !dbg !590
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !590, !tbaa !537
  br label %cleanup, !dbg !590

if.then.5:                                        ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !591, !tbaa !537
  %inc6 = add i64 %3, 1, !dbg !591
  store i64 %inc6, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !591, !tbaa !537
  br label %cleanup, !dbg !591

if.end.7:                                         ; preds = %land.lhs.true, %entry
  %add.ptr = getelementptr i8, i8* %cptr, i64 %len, !dbg !593
  tail call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !375, metadata !522), !dbg !594
  %cmp8.30 = icmp ugt i8* %add.ptr, %cptr, !dbg !595
  br i1 %cmp8.30, label %for.body.preheader, label %for.end, !dbg !598

for.body.preheader:                               ; preds = %if.end.7
  br label %for.body, !dbg !599

for.cond:                                         ; preds = %for.body
  %cmp8 = icmp ult i8* %incdec.ptr, %add.ptr, !dbg !595
  br i1 %cmp8, label %for.body, label %for.end.loopexit, !dbg !598

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %p.031 = phi i8* [ %incdec.ptr, %for.cond ], [ %cptr, %for.body.preheader ]
  %4 = load i8, i8* %p.031, align 1, !dbg !599, !tbaa !530
  %idxprom13 = zext i8 %4 to i64, !dbg !599
  %arrayidx14 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom13, !dbg !599
  %5 = load i32, i32* %arrayidx14, align 4, !dbg !599, !tbaa !533
  %and15 = and i32 %5, 7, !dbg !599
  %tobool16 = icmp eq i32 %and15, 0, !dbg !599
  %incdec.ptr = getelementptr i8, i8* %p.031, i64 1, !dbg !602
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !374, metadata !522), !dbg !584
  br i1 %tobool16, label %if.then.17, label %for.cond, !dbg !603

if.then.17:                                       ; preds = %for.body
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !604, !tbaa !537
  %inc18 = add i64 %6, 1, !dbg !604
  store i64 %inc18, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !604, !tbaa !537
  br label %cleanup, !dbg !604

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end, !dbg !605

for.end:                                          ; preds = %for.end.loopexit, %if.end.7
  %7 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !605, !tbaa !537
  %inc20 = add i64 %7, 1, !dbg !605
  store i64 %inc20, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !605, !tbaa !537
  br label %cleanup, !dbg !605

cleanup:                                          ; preds = %for.end, %if.then.17, %if.then.5, %if.then
  %retval.0 = phi %struct._object* [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.then ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then.5 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then.17 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %for.end ]
  ret %struct._object* %retval.0, !dbg !606
}

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_isdigit(i8* readonly %cptr, i64 %len) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %cptr, i64 0, metadata !378, metadata !522), !dbg !607
  tail call void @llvm.dbg.value(metadata i64 %len, i64 0, metadata !379, metadata !522), !dbg !608
  tail call void @llvm.dbg.value(metadata i8* %cptr, i64 0, metadata !380, metadata !522), !dbg !609
  switch i64 %len, label %if.end.7 [
    i64 1, label %land.lhs.true
    i64 0, label %if.then.5
  ], !dbg !610

land.lhs.true:                                    ; preds = %entry
  %0 = load i8, i8* %cptr, align 1, !dbg !612, !tbaa !530
  %idxprom = zext i8 %0 to i64, !dbg !612
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom, !dbg !612
  %1 = load i32, i32* %arrayidx, align 4, !dbg !612, !tbaa !533
  %and2 = and i32 %1, 4, !dbg !612
  %tobool = icmp eq i32 %and2, 0, !dbg !612
  br i1 %tobool, label %if.end.7, label %if.then, !dbg !614

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !615, !tbaa !537
  %inc = add i64 %2, 1, !dbg !615
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !615, !tbaa !537
  br label %cleanup, !dbg !615

if.then.5:                                        ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !616, !tbaa !537
  %inc6 = add i64 %3, 1, !dbg !616
  store i64 %inc6, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !616, !tbaa !537
  br label %cleanup, !dbg !616

if.end.7:                                         ; preds = %land.lhs.true, %entry
  %add.ptr = getelementptr i8, i8* %cptr, i64 %len, !dbg !618
  tail call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !381, metadata !522), !dbg !619
  %cmp8.30 = icmp ugt i8* %add.ptr, %cptr, !dbg !620
  br i1 %cmp8.30, label %for.body.preheader, label %for.end, !dbg !623

for.body.preheader:                               ; preds = %if.end.7
  br label %for.body, !dbg !624

for.cond:                                         ; preds = %for.body
  %cmp8 = icmp ult i8* %incdec.ptr, %add.ptr, !dbg !620
  br i1 %cmp8, label %for.body, label %for.end.loopexit, !dbg !623

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %p.031 = phi i8* [ %incdec.ptr, %for.cond ], [ %cptr, %for.body.preheader ]
  %4 = load i8, i8* %p.031, align 1, !dbg !624, !tbaa !530
  %idxprom13 = zext i8 %4 to i64, !dbg !624
  %arrayidx14 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom13, !dbg !624
  %5 = load i32, i32* %arrayidx14, align 4, !dbg !624, !tbaa !533
  %and15 = and i32 %5, 4, !dbg !624
  %tobool16 = icmp eq i32 %and15, 0, !dbg !624
  %incdec.ptr = getelementptr i8, i8* %p.031, i64 1, !dbg !627
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !380, metadata !522), !dbg !609
  br i1 %tobool16, label %if.then.17, label %for.cond, !dbg !628

if.then.17:                                       ; preds = %for.body
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !629, !tbaa !537
  %inc18 = add i64 %6, 1, !dbg !629
  store i64 %inc18, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !629, !tbaa !537
  br label %cleanup, !dbg !629

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end, !dbg !630

for.end:                                          ; preds = %for.end.loopexit, %if.end.7
  %7 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !630, !tbaa !537
  %inc20 = add i64 %7, 1, !dbg !630
  store i64 %inc20, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !630, !tbaa !537
  br label %cleanup, !dbg !630

cleanup:                                          ; preds = %for.end, %if.then.17, %if.then.5, %if.then
  %retval.0 = phi %struct._object* [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.then ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then.5 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then.17 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %for.end ]
  ret %struct._object* %retval.0, !dbg !631
}

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_islower(i8* readonly %cptr, i64 %len) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %cptr, i64 0, metadata !384, metadata !522), !dbg !632
  tail call void @llvm.dbg.value(metadata i64 %len, i64 0, metadata !385, metadata !522), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* %cptr, i64 0, metadata !386, metadata !522), !dbg !634
  switch i64 %len, label %if.end.7 [
    i64 1, label %if.then
    i64 0, label %if.then.6
  ], !dbg !635

if.then:                                          ; preds = %entry
  %0 = load i8, i8* %cptr, align 1, !dbg !636, !tbaa !530
  %idxprom = zext i8 %0 to i64, !dbg !636
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom, !dbg !636
  %1 = load i32, i32* %arrayidx, align 4, !dbg !636, !tbaa !533
  %and2 = and i32 %1, 1, !dbg !636
  %conv3 = zext i32 %and2 to i64, !dbg !636
  %call = tail call %struct._object* @PyBool_FromLong(i64 %conv3) #1, !dbg !638
  br label %cleanup, !dbg !639

if.then.6:                                        ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !640, !tbaa !537
  %inc = add i64 %2, 1, !dbg !640
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !640, !tbaa !537
  br label %cleanup, !dbg !640

if.end.7:                                         ; preds = %entry
  %add.ptr = getelementptr i8, i8* %cptr, i64 %len, !dbg !642
  tail call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !387, metadata !522), !dbg !643
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !388, metadata !522), !dbg !644
  %cmp8.45 = icmp ugt i8* %add.ptr, %cptr, !dbg !645
  br i1 %cmp8.45, label %for.body.preheader, label %for.end, !dbg !648

for.body.preheader:                               ; preds = %if.end.7
  br label %for.body, !dbg !649

for.body:                                         ; preds = %for.body.preheader, %if.else
  %cased.047 = phi i32 [ %cased.1, %if.else ], [ 0, %for.body.preheader ]
  %p.046 = phi i8* [ %incdec.ptr, %if.else ], [ %cptr, %for.body.preheader ]
  %3 = load i8, i8* %p.046, align 1, !dbg !649, !tbaa !530
  %idxprom13 = zext i8 %3 to i64, !dbg !649
  %arrayidx14 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom13, !dbg !649
  %4 = load i32, i32* %arrayidx14, align 4, !dbg !649, !tbaa !533
  %and15 = and i32 %4, 2, !dbg !649
  %tobool = icmp eq i32 %and15, 0, !dbg !649
  br i1 %tobool, label %if.else, label %if.then.16, !dbg !652

if.then.16:                                       ; preds = %for.body
  %5 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !653, !tbaa !537
  %inc17 = add i64 %5, 1, !dbg !653
  store i64 %inc17, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !653, !tbaa !537
  br label %cleanup, !dbg !653

if.else:                                          ; preds = %for.body
  %tobool18 = icmp ne i32 %cased.047, 0, !dbg !654
  %and24 = and i32 %4, 1
  %tobool25 = icmp eq i32 %and24, 0, !dbg !656
  %or.cond = or i1 %tobool18, %tobool25, !dbg !658
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !388, metadata !522), !dbg !644
  %cased.1 = select i1 %or.cond, i32 %cased.047, i32 1, !dbg !658
  %incdec.ptr = getelementptr i8, i8* %p.046, i64 1, !dbg !659
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !386, metadata !522), !dbg !634
  %cmp8 = icmp ult i8* %incdec.ptr, %add.ptr, !dbg !645
  br i1 %cmp8, label %for.body, label %for.cond.for.end_crit_edge, !dbg !648

for.cond.for.end_crit_edge:                       ; preds = %if.else
  %cased.1.lcssa = phi i32 [ %cased.1, %if.else ]
  %phitmp = sext i32 %cased.1.lcssa to i64, !dbg !648
  br label %for.end, !dbg !648

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end.7
  %cased.0.lcssa = phi i64 [ %phitmp, %for.cond.for.end_crit_edge ], [ 0, %if.end.7 ]
  %call30 = tail call %struct._object* @PyBool_FromLong(i64 %cased.0.lcssa) #1, !dbg !660
  br label %cleanup, !dbg !661

cleanup:                                          ; preds = %for.end, %if.then.16, %if.then.6, %if.then
  %retval.0 = phi %struct._object* [ %call, %if.then ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then.6 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then.16 ], [ %call30, %for.end ]
  ret %struct._object* %retval.0, !dbg !662
}

declare %struct._object* @PyBool_FromLong(i64) #2

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_isupper(i8* readonly %cptr, i64 %len) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %cptr, i64 0, metadata !391, metadata !522), !dbg !663
  tail call void @llvm.dbg.value(metadata i64 %len, i64 0, metadata !392, metadata !522), !dbg !664
  tail call void @llvm.dbg.value(metadata i8* %cptr, i64 0, metadata !393, metadata !522), !dbg !665
  switch i64 %len, label %if.end.7 [
    i64 1, label %if.then
    i64 0, label %if.then.6
  ], !dbg !666

if.then:                                          ; preds = %entry
  %0 = load i8, i8* %cptr, align 1, !dbg !667, !tbaa !530
  %idxprom = zext i8 %0 to i64, !dbg !667
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom, !dbg !667
  %1 = load i32, i32* %arrayidx, align 4, !dbg !667, !tbaa !533
  %and2 = and i32 %1, 2, !dbg !667
  %conv3 = zext i32 %and2 to i64, !dbg !667
  %call = tail call %struct._object* @PyBool_FromLong(i64 %conv3) #1, !dbg !669
  br label %cleanup, !dbg !670

if.then.6:                                        ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !671, !tbaa !537
  %inc = add i64 %2, 1, !dbg !671
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !671, !tbaa !537
  br label %cleanup, !dbg !671

if.end.7:                                         ; preds = %entry
  %add.ptr = getelementptr i8, i8* %cptr, i64 %len, !dbg !673
  tail call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !394, metadata !522), !dbg !674
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !395, metadata !522), !dbg !675
  %cmp8.45 = icmp ugt i8* %add.ptr, %cptr, !dbg !676
  br i1 %cmp8.45, label %for.body.preheader, label %for.end, !dbg !679

for.body.preheader:                               ; preds = %if.end.7
  br label %for.body, !dbg !680

for.body:                                         ; preds = %for.body.preheader, %if.else
  %cased.047 = phi i32 [ %cased.1, %if.else ], [ 0, %for.body.preheader ]
  %p.046 = phi i8* [ %incdec.ptr, %if.else ], [ %cptr, %for.body.preheader ]
  %3 = load i8, i8* %p.046, align 1, !dbg !680, !tbaa !530
  %idxprom13 = zext i8 %3 to i64, !dbg !680
  %arrayidx14 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom13, !dbg !680
  %4 = load i32, i32* %arrayidx14, align 4, !dbg !680, !tbaa !533
  %and15 = and i32 %4, 1, !dbg !680
  %tobool = icmp eq i32 %and15, 0, !dbg !680
  br i1 %tobool, label %if.else, label %if.then.16, !dbg !683

if.then.16:                                       ; preds = %for.body
  %5 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !684, !tbaa !537
  %inc17 = add i64 %5, 1, !dbg !684
  store i64 %inc17, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !684, !tbaa !537
  br label %cleanup, !dbg !684

if.else:                                          ; preds = %for.body
  %tobool18 = icmp ne i32 %cased.047, 0, !dbg !685
  %and24 = and i32 %4, 2
  %tobool25 = icmp eq i32 %and24, 0, !dbg !687
  %or.cond = or i1 %tobool18, %tobool25, !dbg !689
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !395, metadata !522), !dbg !675
  %cased.1 = select i1 %or.cond, i32 %cased.047, i32 1, !dbg !689
  %incdec.ptr = getelementptr i8, i8* %p.046, i64 1, !dbg !690
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !393, metadata !522), !dbg !665
  %cmp8 = icmp ult i8* %incdec.ptr, %add.ptr, !dbg !676
  br i1 %cmp8, label %for.body, label %for.cond.for.end_crit_edge, !dbg !679

for.cond.for.end_crit_edge:                       ; preds = %if.else
  %cased.1.lcssa = phi i32 [ %cased.1, %if.else ]
  %phitmp = sext i32 %cased.1.lcssa to i64, !dbg !679
  br label %for.end, !dbg !679

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end.7
  %cased.0.lcssa = phi i64 [ %phitmp, %for.cond.for.end_crit_edge ], [ 0, %if.end.7 ]
  %call30 = tail call %struct._object* @PyBool_FromLong(i64 %cased.0.lcssa) #1, !dbg !691
  br label %cleanup, !dbg !692

cleanup:                                          ; preds = %for.end, %if.then.16, %if.then.6, %if.then
  %retval.0 = phi %struct._object* [ %call, %if.then ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then.6 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then.16 ], [ %call30, %for.end ]
  ret %struct._object* %retval.0, !dbg !693
}

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_istitle(i8* readonly %cptr, i64 %len) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %cptr, i64 0, metadata !398, metadata !522), !dbg !694
  tail call void @llvm.dbg.value(metadata i64 %len, i64 0, metadata !399, metadata !522), !dbg !695
  tail call void @llvm.dbg.value(metadata i8* %cptr, i64 0, metadata !400, metadata !522), !dbg !696
  switch i64 %len, label %if.end.7 [
    i64 1, label %if.then
    i64 0, label %if.then.6
  ], !dbg !697

if.then:                                          ; preds = %entry
  %0 = load i8, i8* %cptr, align 1, !dbg !698, !tbaa !530
  %idxprom = zext i8 %0 to i64, !dbg !698
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom, !dbg !698
  %1 = load i32, i32* %arrayidx, align 4, !dbg !698, !tbaa !533
  %and2 = and i32 %1, 2, !dbg !698
  %conv3 = zext i32 %and2 to i64, !dbg !698
  %call = tail call %struct._object* @PyBool_FromLong(i64 %conv3) #1, !dbg !700
  br label %cleanup.38, !dbg !701

if.then.6:                                        ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !702, !tbaa !537
  %inc = add i64 %2, 1, !dbg !702
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !702, !tbaa !537
  br label %cleanup.38, !dbg !702

if.end.7:                                         ; preds = %entry
  %add.ptr = getelementptr i8, i8* %cptr, i64 %len, !dbg !704
  tail call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !401, metadata !522), !dbg !705
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !402, metadata !522), !dbg !706
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !403, metadata !522), !dbg !707
  %cmp8.58 = icmp ugt i8* %add.ptr, %cptr, !dbg !708
  br i1 %cmp8.58, label %for.body.preheader, label %for.end, !dbg !709

for.body.preheader:                               ; preds = %if.end.7
  br label %for.body, !dbg !710

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %previous_is_cased.061 = phi i32 [ %previous_is_cased.2.ph, %for.inc ], [ 0, %for.body.preheader ]
  %cased.060 = phi i32 [ %cased.2.ph, %for.inc ], [ 0, %for.body.preheader ]
  %p.059 = phi i8* [ %incdec.ptr, %for.inc ], [ %cptr, %for.body.preheader ]
  %3 = load i8, i8* %p.059, align 1, !dbg !710, !tbaa !530
  %idxprom13 = zext i8 %3 to i64, !dbg !711
  %arrayidx14 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom13, !dbg !711
  %4 = load i32, i32* %arrayidx14, align 4, !dbg !711, !tbaa !533
  %and15 = and i32 %4, 2, !dbg !711
  %tobool = icmp eq i32 %and15, 0, !dbg !711
  br i1 %tobool, label %if.else, label %if.then.16, !dbg !713

if.then.16:                                       ; preds = %for.body
  %tobool17 = icmp eq i32 %previous_is_cased.061, 0, !dbg !714
  br i1 %tobool17, label %for.inc, label %if.then.18, !dbg !717

if.then.18:                                       ; preds = %if.then.16
  %5 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !718, !tbaa !537
  %inc19 = add i64 %5, 1, !dbg !718
  store i64 %inc19, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !718, !tbaa !537
  br label %cleanup.38, !dbg !718

if.else:                                          ; preds = %for.body
  %and26 = and i32 %4, 1, !dbg !719
  %tobool27 = icmp eq i32 %and26, 0, !dbg !719
  br i1 %tobool27, label %for.inc, label %if.then.28, !dbg !721

if.then.28:                                       ; preds = %if.else
  %tobool29 = icmp eq i32 %previous_is_cased.061, 0, !dbg !722
  br i1 %tobool29, label %if.then.30, label %for.inc, !dbg !725

if.then.30:                                       ; preds = %if.then.28
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !726, !tbaa !537
  %inc31 = add i64 %6, 1, !dbg !726
  store i64 %inc31, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !726, !tbaa !537
  br label %cleanup.38, !dbg !726

for.inc:                                          ; preds = %if.else, %if.then.28, %if.then.16
  %cased.2.ph = phi i32 [ %cased.060, %if.else ], [ 1, %if.then.28 ], [ 1, %if.then.16 ]
  %previous_is_cased.2.ph = phi i32 [ 0, %if.else ], [ 1, %if.then.28 ], [ 1, %if.then.16 ]
  %incdec.ptr = getelementptr i8, i8* %p.059, i64 1, !dbg !727
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !400, metadata !522), !dbg !696
  %cmp8 = icmp ult i8* %incdec.ptr, %add.ptr, !dbg !708
  br i1 %cmp8, label %for.body, label %for.end.loopexit, !dbg !709

for.end.loopexit:                                 ; preds = %for.inc
  %cased.2.ph.lcssa = phi i32 [ %cased.2.ph, %for.inc ]
  br label %for.end, !dbg !728

for.end:                                          ; preds = %for.end.loopexit, %if.end.7
  %cased.0.lcssa = phi i32 [ 0, %if.end.7 ], [ %cased.2.ph.lcssa, %for.end.loopexit ]
  %conv36 = sext i32 %cased.0.lcssa to i64, !dbg !728
  %call37 = tail call %struct._object* @PyBool_FromLong(i64 %conv36) #1, !dbg !729
  br label %cleanup.38, !dbg !730

cleanup.38:                                       ; preds = %if.then.18, %if.then.30, %for.end, %if.then.6, %if.then
  %retval.2 = phi %struct._object* [ %call, %if.then ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then.6 ], [ %call37, %for.end ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then.30 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then.18 ]
  ret %struct._object* %retval.2, !dbg !731
}

; Function Attrs: nounwind uwtable
define void @_Py_bytes_lower(i8* nocapture %result, i8* nocapture readonly %cptr, i64 %len) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %result, i64 0, metadata !412, metadata !522), !dbg !732
  tail call void @llvm.dbg.value(metadata i8* %cptr, i64 0, metadata !413, metadata !522), !dbg !733
  tail call void @llvm.dbg.value(metadata i64 %len, i64 0, metadata !414, metadata !522), !dbg !734
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !415, metadata !522), !dbg !735
  %cmp.8 = icmp sgt i64 %len, 0, !dbg !736
  br i1 %cmp.8, label %for.body.preheader, label %for.end, !dbg !739

for.body.preheader:                               ; preds = %entry
  %xtraiter = and i64 %len, 1, !dbg !740
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !740
  br i1 %lcmp.mod, label %for.body.preheader.split, label %for.body.prol, !dbg !740

for.body.prol:                                    ; preds = %for.body.preheader
  %0 = load i8, i8* %cptr, align 1, !dbg !740, !tbaa !530
  %idxprom.prol = zext i8 %0 to i64, !dbg !740
  %arrayidx2.prol = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom.prol, !dbg !740
  %1 = load i8, i8* %arrayidx2.prol, align 1, !dbg !740, !tbaa !530
  store i8 %1, i8* %result, align 1, !dbg !742, !tbaa !530
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !415, metadata !522), !dbg !735
  br label %for.body.preheader.split, !dbg !739

for.body.preheader.split:                         ; preds = %for.body.preheader, %for.body.prol
  %i.09.unr = phi i64 [ 0, %for.body.preheader ], [ 1, %for.body.prol ]
  %2 = icmp eq i64 %len, 1, !dbg !740
  br i1 %2, label %for.end.loopexit, label %for.body.preheader.split.split, !dbg !740

for.body.preheader.split.split:                   ; preds = %for.body.preheader.split
  br label %for.body, !dbg !740

for.body:                                         ; preds = %for.body, %for.body.preheader.split.split
  %i.09 = phi i64 [ %i.09.unr, %for.body.preheader.split.split ], [ %inc.1, %for.body ]
  %arrayidx = getelementptr i8, i8* %cptr, i64 %i.09, !dbg !740
  %3 = load i8, i8* %arrayidx, align 1, !dbg !740, !tbaa !530
  %idxprom = zext i8 %3 to i64, !dbg !740
  %arrayidx2 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom, !dbg !740
  %4 = load i8, i8* %arrayidx2, align 1, !dbg !740, !tbaa !530
  %arrayidx3 = getelementptr i8, i8* %result, i64 %i.09, !dbg !743
  store i8 %4, i8* %arrayidx3, align 1, !dbg !742, !tbaa !530
  %inc = add nuw nsw i64 %i.09, 1, !dbg !744
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !415, metadata !522), !dbg !735
  %arrayidx.1 = getelementptr i8, i8* %cptr, i64 %inc, !dbg !740
  %5 = load i8, i8* %arrayidx.1, align 1, !dbg !740, !tbaa !530
  %idxprom.1 = zext i8 %5 to i64, !dbg !740
  %arrayidx2.1 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom.1, !dbg !740
  %6 = load i8, i8* %arrayidx2.1, align 1, !dbg !740, !tbaa !530
  %arrayidx3.1 = getelementptr i8, i8* %result, i64 %inc, !dbg !743
  store i8 %6, i8* %arrayidx3.1, align 1, !dbg !742, !tbaa !530
  %inc.1 = add nsw i64 %i.09, 2, !dbg !744
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !415, metadata !522), !dbg !735
  %exitcond.1 = icmp eq i64 %inc.1, %len, !dbg !739
  br i1 %exitcond.1, label %for.end.loopexit.unr-lcssa, label %for.body, !dbg !739

for.end.loopexit.unr-lcssa:                       ; preds = %for.body
  br label %for.end.loopexit, !dbg !745

for.end.loopexit:                                 ; preds = %for.body.preheader.split, %for.end.loopexit.unr-lcssa
  br label %for.end, !dbg !745

for.end:                                          ; preds = %for.end.loopexit, %entry
  ret void, !dbg !745
}

; Function Attrs: nounwind uwtable
define void @_Py_bytes_upper(i8* nocapture %result, i8* nocapture readonly %cptr, i64 %len) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %result, i64 0, metadata !418, metadata !522), !dbg !746
  tail call void @llvm.dbg.value(metadata i8* %cptr, i64 0, metadata !419, metadata !522), !dbg !747
  tail call void @llvm.dbg.value(metadata i64 %len, i64 0, metadata !420, metadata !522), !dbg !748
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !421, metadata !522), !dbg !749
  %cmp.8 = icmp sgt i64 %len, 0, !dbg !750
  br i1 %cmp.8, label %for.body.preheader, label %for.end, !dbg !753

for.body.preheader:                               ; preds = %entry
  %xtraiter = and i64 %len, 1, !dbg !754
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !754
  br i1 %lcmp.mod, label %for.body.preheader.split, label %for.body.prol, !dbg !754

for.body.prol:                                    ; preds = %for.body.preheader
  %0 = load i8, i8* %cptr, align 1, !dbg !754, !tbaa !530
  %idxprom.prol = zext i8 %0 to i64, !dbg !754
  %arrayidx2.prol = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i64 0, i64 %idxprom.prol, !dbg !754
  %1 = load i8, i8* %arrayidx2.prol, align 1, !dbg !754, !tbaa !530
  store i8 %1, i8* %result, align 1, !dbg !756, !tbaa !530
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !421, metadata !522), !dbg !749
  br label %for.body.preheader.split, !dbg !753

for.body.preheader.split:                         ; preds = %for.body.preheader, %for.body.prol
  %i.09.unr = phi i64 [ 0, %for.body.preheader ], [ 1, %for.body.prol ]
  %2 = icmp eq i64 %len, 1, !dbg !754
  br i1 %2, label %for.end.loopexit, label %for.body.preheader.split.split, !dbg !754

for.body.preheader.split.split:                   ; preds = %for.body.preheader.split
  br label %for.body, !dbg !754

for.body:                                         ; preds = %for.body, %for.body.preheader.split.split
  %i.09 = phi i64 [ %i.09.unr, %for.body.preheader.split.split ], [ %inc.1, %for.body ]
  %arrayidx = getelementptr i8, i8* %cptr, i64 %i.09, !dbg !754
  %3 = load i8, i8* %arrayidx, align 1, !dbg !754, !tbaa !530
  %idxprom = zext i8 %3 to i64, !dbg !754
  %arrayidx2 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i64 0, i64 %idxprom, !dbg !754
  %4 = load i8, i8* %arrayidx2, align 1, !dbg !754, !tbaa !530
  %arrayidx3 = getelementptr i8, i8* %result, i64 %i.09, !dbg !757
  store i8 %4, i8* %arrayidx3, align 1, !dbg !756, !tbaa !530
  %inc = add nuw nsw i64 %i.09, 1, !dbg !758
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !421, metadata !522), !dbg !749
  %arrayidx.1 = getelementptr i8, i8* %cptr, i64 %inc, !dbg !754
  %5 = load i8, i8* %arrayidx.1, align 1, !dbg !754, !tbaa !530
  %idxprom.1 = zext i8 %5 to i64, !dbg !754
  %arrayidx2.1 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i64 0, i64 %idxprom.1, !dbg !754
  %6 = load i8, i8* %arrayidx2.1, align 1, !dbg !754, !tbaa !530
  %arrayidx3.1 = getelementptr i8, i8* %result, i64 %inc, !dbg !757
  store i8 %6, i8* %arrayidx3.1, align 1, !dbg !756, !tbaa !530
  %inc.1 = add nsw i64 %i.09, 2, !dbg !758
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !421, metadata !522), !dbg !749
  %exitcond.1 = icmp eq i64 %inc.1, %len, !dbg !753
  br i1 %exitcond.1, label %for.end.loopexit.unr-lcssa, label %for.body, !dbg !753

for.end.loopexit.unr-lcssa:                       ; preds = %for.body
  br label %for.end.loopexit, !dbg !759

for.end.loopexit:                                 ; preds = %for.body.preheader.split, %for.end.loopexit.unr-lcssa
  br label %for.end, !dbg !759

for.end:                                          ; preds = %for.end.loopexit, %entry
  ret void, !dbg !759
}

; Function Attrs: nounwind uwtable
define void @_Py_bytes_title(i8* nocapture %result, i8* nocapture readonly %s, i64 %len) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %result, i64 0, metadata !426, metadata !522), !dbg !760
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !427, metadata !522), !dbg !761
  tail call void @llvm.dbg.value(metadata i64 %len, i64 0, metadata !428, metadata !522), !dbg !762
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !430, metadata !522), !dbg !763
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !429, metadata !522), !dbg !764
  %cmp.43 = icmp sgt i64 %len, 0, !dbg !765
  br i1 %cmp.43, label %for.body.preheader, label %for.end, !dbg !766

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !767

for.body:                                         ; preds = %for.body.preheader, %if.end.30
  %previous_is_cased.047 = phi i32 [ %previous_is_cased.1, %if.end.30 ], [ 0, %for.body.preheader ]
  %i.046 = phi i64 [ %inc, %if.end.30 ], [ 0, %for.body.preheader ]
  %result.addr.045 = phi i8* [ %incdec.ptr32, %if.end.30 ], [ %result, %for.body.preheader ]
  %s.addr.044 = phi i8* [ %incdec.ptr, %if.end.30 ], [ %s, %for.body.preheader ]
  %incdec.ptr = getelementptr i8, i8* %s.addr.044, i64 1, !dbg !767
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !427, metadata !522), !dbg !761
  %0 = load i8, i8* %s.addr.044, align 1, !dbg !767, !tbaa !530
  %idxprom = zext i8 %0 to i64, !dbg !768
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom, !dbg !768
  %1 = load i32, i32* %arrayidx, align 4, !dbg !768, !tbaa !533
  %and5 = and i32 %1, 1, !dbg !768
  %tobool = icmp eq i32 %and5, 0, !dbg !768
  br i1 %tobool, label %if.else, label %if.then, !dbg !770

if.then:                                          ; preds = %for.body
  %tobool6 = icmp eq i32 %previous_is_cased.047, 0, !dbg !771
  br i1 %tobool6, label %if.then.7, label %if.end.30, !dbg !774

if.then.7:                                        ; preds = %if.then
  %arrayidx11 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i64 0, i64 %idxprom, !dbg !775
  %2 = load i8, i8* %arrayidx11, align 1, !dbg !775, !tbaa !530
  br label %if.end.30, !dbg !776

if.else:                                          ; preds = %for.body
  %and17 = and i32 %1, 2, !dbg !777
  %tobool18 = icmp eq i32 %and17, 0, !dbg !777
  br i1 %tobool18, label %if.end.30, label %if.then.19, !dbg !779

if.then.19:                                       ; preds = %if.else
  %tobool20 = icmp eq i32 %previous_is_cased.047, 0, !dbg !780
  br i1 %tobool20, label %if.end.30, label %if.then.21, !dbg !783

if.then.21:                                       ; preds = %if.then.19
  %arrayidx25 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom, !dbg !784
  %3 = load i8, i8* %arrayidx25, align 1, !dbg !784, !tbaa !530
  br label %if.end.30, !dbg !785

if.end.30:                                        ; preds = %if.else, %if.then.21, %if.then.19, %if.then.7, %if.then
  %previous_is_cased.1 = phi i32 [ 1, %if.then ], [ 1, %if.then.7 ], [ 1, %if.then.19 ], [ 1, %if.then.21 ], [ 0, %if.else ]
  %c.2 = phi i8 [ %0, %if.then ], [ %2, %if.then.7 ], [ %0, %if.then.19 ], [ %3, %if.then.21 ], [ %0, %if.else ]
  %incdec.ptr32 = getelementptr i8, i8* %result.addr.045, i64 1, !dbg !786
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr32, i64 0, metadata !426, metadata !522), !dbg !760
  store i8 %c.2, i8* %result.addr.045, align 1, !dbg !787, !tbaa !530
  %inc = add nuw nsw i64 %i.046, 1, !dbg !788
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !429, metadata !522), !dbg !764
  %exitcond = icmp eq i64 %inc, %len, !dbg !766
  br i1 %exitcond, label %for.end.loopexit, label %for.body, !dbg !766

for.end.loopexit:                                 ; preds = %if.end.30
  br label %for.end, !dbg !789

for.end:                                          ; preds = %for.end.loopexit, %entry
  ret void, !dbg !789
}

; Function Attrs: nounwind uwtable
define void @_Py_bytes_capitalize(i8* nocapture %result, i8* nocapture readonly %s, i64 %len) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %result, i64 0, metadata !437, metadata !522), !dbg !790
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !438, metadata !522), !dbg !791
  tail call void @llvm.dbg.value(metadata i64 %len, i64 0, metadata !439, metadata !522), !dbg !792
  %cmp = icmp sgt i64 %len, 0, !dbg !793
  br i1 %cmp, label %if.then, label %for.end, !dbg !794

if.then:                                          ; preds = %entry
  %0 = load i8, i8* %s, align 1, !dbg !795, !tbaa !530
  %idxprom = zext i8 %0 to i64, !dbg !796
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom, !dbg !796
  %1 = load i32, i32* %arrayidx, align 4, !dbg !796, !tbaa !533
  %and5 = and i32 %1, 1, !dbg !796
  %tobool = icmp eq i32 %and5, 0, !dbg !796
  br i1 %tobool, label %for.cond.preheader, label %if.then.6, !dbg !798

if.then.6:                                        ; preds = %if.then
  %arrayidx10 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i64 0, i64 %idxprom, !dbg !799
  %2 = load i8, i8* %arrayidx10, align 1, !dbg !799, !tbaa !530
  br label %for.cond.preheader, !dbg !800

for.cond.preheader:                               ; preds = %if.then.6, %if.then
  %storemerge.52 = phi i8 [ %2, %if.then.6 ], [ %0, %if.then ]
  store i8 %storemerge.52, i8* %result, align 1, !dbg !801, !tbaa !530
  %cmp14.53 = icmp sgt i64 %len, 1, !dbg !802
  br i1 %cmp14.53, label %for.body.preheader, label %for.end, !dbg !803

for.body.preheader:                               ; preds = %for.cond.preheader
  %3 = and i64 %len, 1, !dbg !804
  %lcmp.mod = icmp eq i64 %3, 0, !dbg !804
  br i1 %lcmp.mod, label %for.body.prol, label %for.body.preheader.split, !dbg !804

for.body.prol:                                    ; preds = %for.body.preheader
  %s.addr.155.prol = getelementptr i8, i8* %s, i64 1, !dbg !804
  %result.addr.156.prol = getelementptr i8, i8* %result, i64 1, !dbg !805
  %4 = load i8, i8* %s.addr.155.prol, align 1, !dbg !804, !tbaa !530
  %idxprom24.prol = zext i8 %4 to i64, !dbg !806
  %arrayidx25.prol = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom24.prol, !dbg !806
  %5 = load i32, i32* %arrayidx25.prol, align 4, !dbg !806, !tbaa !533
  %and26.prol = and i32 %5, 2, !dbg !806
  %tobool27.prol = icmp eq i32 %and26.prol, 0, !dbg !806
  br i1 %tobool27.prol, label %if.end.35.prol, label %if.then.28.prol, !dbg !808

if.then.28.prol:                                  ; preds = %for.body.prol
  %arrayidx32.prol = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom24.prol, !dbg !809
  %6 = load i8, i8* %arrayidx32.prol, align 1, !dbg !809, !tbaa !530
  br label %if.end.35.prol, !dbg !810

if.end.35.prol:                                   ; preds = %if.then.28.prol, %for.body.prol
  %storemerge.prol = phi i8 [ %6, %if.then.28.prol ], [ %4, %for.body.prol ]
  store i8 %storemerge.prol, i8* %result.addr.156.prol, align 1, !dbg !811, !tbaa !530
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !440, metadata !522), !dbg !812
  br label %for.body.preheader.split, !dbg !803

for.body.preheader.split:                         ; preds = %if.end.35.prol, %for.body.preheader
  %result.addr.156.pn.unr = phi i8* [ %result, %for.body.preheader ], [ %result.addr.156.prol, %if.end.35.prol ]
  %s.addr.155.pn.unr = phi i8* [ %s, %for.body.preheader ], [ %s.addr.155.prol, %if.end.35.prol ]
  %i.054.unr = phi i64 [ 1, %for.body.preheader ], [ 2, %if.end.35.prol ]
  %7 = icmp eq i64 %len, 2, !dbg !804
  br i1 %7, label %for.end.loopexit, label %for.body.preheader.split.split, !dbg !804

for.body.preheader.split.split:                   ; preds = %for.body.preheader.split
  br label %for.body, !dbg !804

for.body:                                         ; preds = %if.end.35.1, %for.body.preheader.split.split
  %result.addr.156.pn = phi i8* [ %result.addr.156.pn.unr, %for.body.preheader.split.split ], [ %result.addr.156.1, %if.end.35.1 ]
  %s.addr.155.pn = phi i8* [ %s.addr.155.pn.unr, %for.body.preheader.split.split ], [ %s.addr.155.1, %if.end.35.1 ]
  %i.054 = phi i64 [ %i.054.unr, %for.body.preheader.split.split ], [ %inc.1, %if.end.35.1 ]
  %s.addr.155 = getelementptr i8, i8* %s.addr.155.pn, i64 1, !dbg !804
  %result.addr.156 = getelementptr i8, i8* %result.addr.156.pn, i64 1, !dbg !805
  %8 = load i8, i8* %s.addr.155, align 1, !dbg !804, !tbaa !530
  %idxprom24 = zext i8 %8 to i64, !dbg !806
  %arrayidx25 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom24, !dbg !806
  %9 = load i32, i32* %arrayidx25, align 4, !dbg !806, !tbaa !533
  %and26 = and i32 %9, 2, !dbg !806
  %tobool27 = icmp eq i32 %and26, 0, !dbg !806
  br i1 %tobool27, label %if.end.35, label %if.then.28, !dbg !808

if.then.28:                                       ; preds = %for.body
  %arrayidx32 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom24, !dbg !809
  %10 = load i8, i8* %arrayidx32, align 1, !dbg !809, !tbaa !530
  br label %if.end.35, !dbg !810

if.end.35:                                        ; preds = %for.body, %if.then.28
  %storemerge = phi i8 [ %10, %if.then.28 ], [ %8, %for.body ]
  store i8 %storemerge, i8* %result.addr.156, align 1, !dbg !811, !tbaa !530
  %s.addr.155.1 = getelementptr i8, i8* %s.addr.155.pn, i64 2, !dbg !804
  %result.addr.156.1 = getelementptr i8, i8* %result.addr.156.pn, i64 2, !dbg !805
  %11 = load i8, i8* %s.addr.155.1, align 1, !dbg !804, !tbaa !530
  %idxprom24.1 = zext i8 %11 to i64, !dbg !806
  %arrayidx25.1 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom24.1, !dbg !806
  %12 = load i32, i32* %arrayidx25.1, align 4, !dbg !806, !tbaa !533
  %and26.1 = and i32 %12, 2, !dbg !806
  %tobool27.1 = icmp eq i32 %and26.1, 0, !dbg !806
  br i1 %tobool27.1, label %if.end.35.1, label %if.then.28.1, !dbg !808

for.end.loopexit.unr-lcssa:                       ; preds = %if.end.35.1
  br label %for.end.loopexit, !dbg !813

for.end.loopexit:                                 ; preds = %for.body.preheader.split, %for.end.loopexit.unr-lcssa
  br label %for.end, !dbg !813

for.end:                                          ; preds = %for.end.loopexit, %entry, %for.cond.preheader
  ret void, !dbg !813

if.then.28.1:                                     ; preds = %if.end.35
  %arrayidx32.1 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom24.1, !dbg !809
  %13 = load i8, i8* %arrayidx32.1, align 1, !dbg !809, !tbaa !530
  br label %if.end.35.1, !dbg !810

if.end.35.1:                                      ; preds = %if.then.28.1, %if.end.35
  %storemerge.1 = phi i8 [ %13, %if.then.28.1 ], [ %11, %if.end.35 ]
  store i8 %storemerge.1, i8* %result.addr.156.1, align 1, !dbg !811, !tbaa !530
  %inc.1 = add nsw i64 %i.054, 2, !dbg !814
  %exitcond.1 = icmp eq i64 %inc.1, %len, !dbg !803
  br i1 %exitcond.1, label %for.end.loopexit.unr-lcssa, label %for.body, !dbg !803
}

; Function Attrs: nounwind uwtable
define void @_Py_bytes_swapcase(i8* nocapture %result, i8* nocapture readonly %s, i64 %len) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %result, i64 0, metadata !450, metadata !522), !dbg !815
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !451, metadata !522), !dbg !816
  tail call void @llvm.dbg.value(metadata i64 %len, i64 0, metadata !452, metadata !522), !dbg !817
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !453, metadata !522), !dbg !818
  %cmp.34 = icmp sgt i64 %len, 0, !dbg !819
  br i1 %cmp.34, label %for.body.preheader, label %for.end, !dbg !820

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !821

for.body:                                         ; preds = %for.body.preheader, %if.end.23
  %result.addr.037 = phi i8* [ %incdec.ptr24, %if.end.23 ], [ %result, %for.body.preheader ]
  %i.036 = phi i64 [ %inc, %if.end.23 ], [ 0, %for.body.preheader ]
  %s.addr.035 = phi i8* [ %incdec.ptr, %if.end.23 ], [ %s, %for.body.preheader ]
  %incdec.ptr = getelementptr i8, i8* %s.addr.035, i64 1, !dbg !821
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !451, metadata !522), !dbg !816
  %0 = load i8, i8* %s.addr.035, align 1, !dbg !821, !tbaa !530
  %idxprom = zext i8 %0 to i64, !dbg !822
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom, !dbg !822
  %1 = load i32, i32* %arrayidx, align 4, !dbg !822, !tbaa !533
  %and5 = and i32 %1, 1, !dbg !822
  %tobool = icmp eq i32 %and5, 0, !dbg !822
  br i1 %tobool, label %if.else, label %if.then, !dbg !824

if.then:                                          ; preds = %for.body
  %arrayidx9 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_toupper, i64 0, i64 %idxprom, !dbg !825
  %2 = load i8, i8* %arrayidx9, align 1, !dbg !825, !tbaa !530
  store i8 %2, i8* %result.addr.037, align 1, !dbg !827, !tbaa !530
  br label %if.end.23, !dbg !828

if.else:                                          ; preds = %for.body
  %and14 = and i32 %1, 2, !dbg !829
  %tobool15 = icmp eq i32 %and14, 0, !dbg !829
  br i1 %tobool15, label %if.else.21, label %if.then.16, !dbg !831

if.then.16:                                       ; preds = %if.else
  %arrayidx20 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i64 0, i64 %idxprom, !dbg !832
  %3 = load i8, i8* %arrayidx20, align 1, !dbg !832, !tbaa !530
  store i8 %3, i8* %result.addr.037, align 1, !dbg !834, !tbaa !530
  br label %if.end.23, !dbg !835

if.else.21:                                       ; preds = %if.else
  store i8 %0, i8* %result.addr.037, align 1, !dbg !836, !tbaa !530
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.16, %if.else.21, %if.then
  %incdec.ptr24 = getelementptr i8, i8* %result.addr.037, i64 1, !dbg !837
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr24, i64 0, metadata !450, metadata !522), !dbg !815
  %inc = add nuw nsw i64 %i.036, 1, !dbg !838
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !453, metadata !522), !dbg !818
  %exitcond = icmp eq i64 %inc, %len, !dbg !820
  br i1 %exitcond, label %for.end.loopexit, label %for.body, !dbg !820

for.end.loopexit:                                 ; preds = %if.end.23
  br label %for.end, !dbg !839

for.end:                                          ; preds = %for.end.loopexit, %entry
  ret void, !dbg !839
}

; Function Attrs: nounwind uwtable
define %struct._object* @_Py_bytes_maketrans(%struct._object* %args) #0 {
entry:
  %frm = alloca %struct._object*, align 8
  %to = alloca %struct._object*, align 8
  %bfrm = alloca %struct.bufferinfo, align 8
  %bto = alloca %struct.bufferinfo, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !460, metadata !522), !dbg !840
  %0 = bitcast %struct._object** %frm to i8*, !dbg !841
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !841
  %1 = bitcast %struct._object** %to to i8*, !dbg !841
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !841
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !463, metadata !522), !dbg !842
  %2 = bitcast %struct.bufferinfo* %bfrm to i8*, !dbg !843
  call void @llvm.lifetime.start(i64 80, i8* %2) #1, !dbg !843
  %3 = bitcast %struct.bufferinfo* %bto to i8*, !dbg !843
  call void @llvm.lifetime.start(i64 80, i8* %3) #1, !dbg !843
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bfrm, i64 0, i32 2, !dbg !844
  store i64 -1, i64* %len, align 8, !dbg !845, !tbaa !846
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bto, i64 0, i32 2, !dbg !848
  store i64 -1, i64* %len1, align 8, !dbg !849, !tbaa !846
  tail call void @llvm.dbg.value(metadata %struct._object** %frm, i64 0, metadata !461, metadata !522), !dbg !850
  tail call void @llvm.dbg.value(metadata %struct._object** %to, i64 0, metadata !462, metadata !522), !dbg !851
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct._object** nonnull %frm, %struct._object** nonnull %to) #1, !dbg !852
  %tobool = icmp eq i32 %call, 0, !dbg !852
  br i1 %tobool, label %cleanup, label %if.end, !dbg !854

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %frm, i64 0, metadata !461, metadata !522), !dbg !850
  %4 = load %struct._object*, %struct._object** %frm, align 8, !dbg !855, !tbaa !857
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %bfrm, i64 0, metadata !464, metadata !522), !dbg !858
  call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !472, metadata !522) #1, !dbg !859
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %bfrm, i64 0, metadata !473, metadata !522) #1, !dbg !861
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !862
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !863, !tbaa !866
  %tp_as_buffer.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 18, !dbg !867
  %6 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer.i, align 8, !dbg !867, !tbaa !868
  call void @llvm.dbg.value(metadata %struct.PyBufferProcs* %6, i64 0, metadata !474, metadata !522) #1, !dbg !871
  %cmp.i = icmp eq %struct.PyBufferProcs* %6, null, !dbg !872
  br i1 %cmp.i, label %if.then.i, label %lor.lhs.false.i, !dbg !873

lor.lhs.false.i:                                  ; preds = %if.end
  %bf_getbuffer.i = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %6, i64 0, i32 0, !dbg !874
  %7 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer.i, align 8, !dbg !874, !tbaa !875
  %cmp1.i = icmp eq i32 (%struct._object*, %struct.bufferinfo*, i32)* %7, null, !dbg !877
  br i1 %cmp1.i, label %if.then.i, label %if.end.i, !dbg !878

if.then.i:                                        ; preds = %lor.lhs.false.i, %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !879, !tbaa !857
  %tp_name.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 1, !dbg !880
  %9 = load i8*, i8** %tp_name.i, align 8, !dbg !880, !tbaa !881
  %call.i = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %9) #1, !dbg !882
  br label %cleanup, !dbg !883

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call4.i = call i32 %7(%struct._object* %4, %struct.bufferinfo* nonnull %bfrm, i32 0) #1, !dbg !884
  %cmp5.i = icmp slt i32 %call4.i, 0, !dbg !886
  %10 = load i64, i64* %len, align 8
  %cmp = icmp slt i64 %10, 0, !dbg !887
  %or.cond = or i1 %cmp5.i, %cmp, !dbg !888
  br i1 %or.cond, label %cleanup, label %if.end.4, !dbg !888

if.end.4:                                         ; preds = %if.end.i
  call void @llvm.dbg.value(metadata %struct._object** %to, i64 0, metadata !462, metadata !522), !dbg !851
  %11 = load %struct._object*, %struct._object** %to, align 8, !dbg !889, !tbaa !857
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %bto, i64 0, metadata !465, metadata !522), !dbg !891
  call void @llvm.dbg.value(metadata %struct._object* %11, i64 0, metadata !472, metadata !522) #1, !dbg !892
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %bto, i64 0, metadata !473, metadata !522) #1, !dbg !894
  %ob_type.i.61 = getelementptr inbounds %struct._object, %struct._object* %11, i64 0, i32 1, !dbg !895
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.61, align 8, !dbg !896, !tbaa !866
  %tp_as_buffer.i.62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 18, !dbg !897
  %13 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer.i.62, align 8, !dbg !897, !tbaa !868
  call void @llvm.dbg.value(metadata %struct.PyBufferProcs* %13, i64 0, metadata !474, metadata !522) #1, !dbg !898
  %cmp.i.63 = icmp eq %struct.PyBufferProcs* %13, null, !dbg !899
  br i1 %cmp.i.63, label %if.then.i.69, label %lor.lhs.false.i.66, !dbg !900

lor.lhs.false.i.66:                               ; preds = %if.end.4
  %bf_getbuffer.i.64 = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %13, i64 0, i32 0, !dbg !901
  %14 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer.i.64, align 8, !dbg !901, !tbaa !875
  %cmp1.i.65 = icmp eq i32 (%struct._object*, %struct.bufferinfo*, i32)* %14, null, !dbg !902
  br i1 %cmp1.i.65, label %if.then.i.69, label %if.end.i.72, !dbg !903

if.then.i.69:                                     ; preds = %lor.lhs.false.i.66, %if.end.4
  %15 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !904, !tbaa !857
  %tp_name.i.67 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 1, !dbg !905
  %16 = load i8*, i8** %tp_name.i.67, align 8, !dbg !905, !tbaa !881
  %call.i.68 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %16) #1, !dbg !906
  br label %donethread-pre-split, !dbg !907

if.end.i.72:                                      ; preds = %lor.lhs.false.i.66
  %call4.i.70 = call i32 %14(%struct._object* %11, %struct.bufferinfo* nonnull %bto, i32 0) #1, !dbg !908
  %cmp5.i.71 = icmp slt i32 %call4.i.70, 0, !dbg !909
  %17 = load i64, i64* %len1, align 8, !dbg !910
  %cmp6 = icmp slt i64 %17, 0, !dbg !912
  %or.cond79 = or i1 %cmp5.i.71, %cmp6, !dbg !913
  br i1 %or.cond79, label %donethread-pre-split, label %if.end.8, !dbg !913

if.end.8:                                         ; preds = %if.end.i.72
  %18 = load i64, i64* %len, align 8, !dbg !914, !tbaa !846
  %cmp11 = icmp eq i64 %18, %17, !dbg !915
  br i1 %cmp11, label %if.end.14, label %if.then.12, !dbg !916

if.then.12:                                       ; preds = %if.end.8
  %19 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !917, !tbaa !857
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %19, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0)) #1, !dbg !919
  br label %donethread-pre-split, !dbg !920

if.end.14:                                        ; preds = %if.end.8
  %call15 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 256) #1, !dbg !921
  call void @llvm.dbg.value(metadata %struct._object* %call15, i64 0, metadata !463, metadata !522), !dbg !842
  %tobool16 = icmp eq %struct._object* %call15, null, !dbg !922
  br i1 %tobool16, label %donethread-pre-split, label %if.end.18, !dbg !924

if.end.18:                                        ; preds = %if.end.14
  %ob_sval = getelementptr inbounds %struct._object, %struct._object* %call15, i64 2, !dbg !925
  %arraydecay = bitcast %struct._object* %ob_sval to i8*, !dbg !925
  call void @llvm.dbg.value(metadata i8* %arraydecay, i64 0, metadata !467, metadata !522), !dbg !926
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !466, metadata !522), !dbg !927
  br label %vector.body, !dbg !928

vector.body:                                      ; preds = %if.end.18
  %20 = bitcast %struct._object* %ob_sval to <16 x i8>*, !dbg !930
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, <16 x i8>* %20, align 1, !dbg !930, !tbaa !530
  %21 = getelementptr %struct._object, %struct._object* %call15, i64 3, !dbg !930
  %22 = bitcast %struct._object* %21 to <16 x i8>*, !dbg !930
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, <16 x i8>* %22, align 1, !dbg !930, !tbaa !530
  %23 = getelementptr %struct._object, %struct._object* %call15, i64 4, !dbg !932
  %24 = bitcast %struct._object* %23 to <16 x i8>*, !dbg !930
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, <16 x i8>* %24, align 1, !dbg !930, !tbaa !530
  %25 = getelementptr %struct._object, %struct._object* %call15, i64 5, !dbg !930
  %26 = bitcast %struct._object* %25 to <16 x i8>*, !dbg !930
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <16 x i8>* %26, align 1, !dbg !930, !tbaa !530
  %27 = getelementptr %struct._object, %struct._object* %call15, i64 6, !dbg !932
  %28 = bitcast %struct._object* %27 to <16 x i8>*, !dbg !930
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, <16 x i8>* %28, align 1, !dbg !930, !tbaa !530
  %29 = getelementptr %struct._object, %struct._object* %call15, i64 7, !dbg !930
  %30 = bitcast %struct._object* %29 to <16 x i8>*, !dbg !930
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, <16 x i8>* %30, align 1, !dbg !930, !tbaa !530
  %31 = getelementptr %struct._object, %struct._object* %call15, i64 8, !dbg !932
  %32 = bitcast %struct._object* %31 to <16 x i8>*, !dbg !930
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, <16 x i8>* %32, align 1, !dbg !930, !tbaa !530
  %33 = getelementptr %struct._object, %struct._object* %call15, i64 9, !dbg !930
  %34 = bitcast %struct._object* %33 to <16 x i8>*, !dbg !930
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, <16 x i8>* %34, align 1, !dbg !930, !tbaa !530
  %35 = getelementptr %struct._object, %struct._object* %call15, i64 10, !dbg !932
  %36 = bitcast %struct._object* %35 to <16 x i8>*, !dbg !930
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, <16 x i8>* %36, align 1, !dbg !930, !tbaa !530
  %37 = getelementptr %struct._object, %struct._object* %call15, i64 11, !dbg !930
  %38 = bitcast %struct._object* %37 to <16 x i8>*, !dbg !930
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, <16 x i8>* %38, align 1, !dbg !930, !tbaa !530
  %39 = getelementptr %struct._object, %struct._object* %call15, i64 12, !dbg !932
  %40 = bitcast %struct._object* %39 to <16 x i8>*, !dbg !930
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, <16 x i8>* %40, align 1, !dbg !930, !tbaa !530
  %41 = getelementptr %struct._object, %struct._object* %call15, i64 13, !dbg !930
  %42 = bitcast %struct._object* %41 to <16 x i8>*, !dbg !930
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, <16 x i8>* %42, align 1, !dbg !930, !tbaa !530
  %43 = getelementptr %struct._object, %struct._object* %call15, i64 14, !dbg !932
  %44 = bitcast %struct._object* %43 to <16 x i8>*, !dbg !930
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, <16 x i8>* %44, align 1, !dbg !930, !tbaa !530
  %45 = getelementptr %struct._object, %struct._object* %call15, i64 15, !dbg !930
  %46 = bitcast %struct._object* %45 to <16 x i8>*, !dbg !930
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, <16 x i8>* %46, align 1, !dbg !930, !tbaa !530
  %47 = getelementptr %struct._object, %struct._object* %call15, i64 16, !dbg !932
  %48 = bitcast %struct._object* %47 to <16 x i8>*, !dbg !930
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, <16 x i8>* %48, align 1, !dbg !930, !tbaa !530
  %49 = getelementptr %struct._object, %struct._object* %call15, i64 17, !dbg !930
  %50 = bitcast %struct._object* %49 to <16 x i8>*, !dbg !930
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <16 x i8>* %50, align 1, !dbg !930, !tbaa !530
  %51 = load i64, i64* %len, align 8, !dbg !933, !tbaa !846
  %cmp22.80 = icmp sgt i64 %51, 0, !dbg !936
  br i1 %cmp22.80, label %for.body.24.lr.ph, label %done, !dbg !937

for.body.24.lr.ph:                                ; preds = %vector.body
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bto, i64 0, i32 0, !dbg !938
  %buf26 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bfrm, i64 0, i32 0, !dbg !940
  br label %for.body.24, !dbg !937

for.body.24:                                      ; preds = %for.body.24.lr.ph, %for.body.24
  %i.181 = phi i64 [ 0, %for.body.24.lr.ph ], [ %inc30, %for.body.24 ]
  %52 = load i8*, i8** %buf, align 8, !dbg !938, !tbaa !941
  %arrayidx25 = getelementptr i8, i8* %52, i64 %i.181, !dbg !942
  %53 = load i8, i8* %arrayidx25, align 1, !dbg !942, !tbaa !530
  %54 = load i8*, i8** %buf26, align 8, !dbg !940, !tbaa !941
  %arrayidx27 = getelementptr i8, i8* %54, i64 %i.181, !dbg !943
  %55 = load i8, i8* %arrayidx27, align 1, !dbg !943, !tbaa !530
  %idxprom = zext i8 %55 to i64, !dbg !944
  %arrayidx28 = getelementptr i8, i8* %arraydecay, i64 %idxprom, !dbg !944
  store i8 %53, i8* %arrayidx28, align 1, !dbg !945, !tbaa !530
  %inc30 = add i64 %i.181, 1, !dbg !946
  call void @llvm.dbg.value(metadata i64 %inc30, i64 0, metadata !466, metadata !522), !dbg !927
  %56 = load i64, i64* %len, align 8, !dbg !933, !tbaa !846
  %cmp22 = icmp slt i64 %inc30, %56, !dbg !936
  br i1 %cmp22, label %for.body.24, label %done.loopexit, !dbg !937

donethread-pre-split:                             ; preds = %if.end.i.72, %if.then.i.69, %if.then.12, %if.end.14
  %.pr = load i64, i64* %len, align 8, !dbg !947, !tbaa !846
  br label %done, !dbg !947

done.loopexit:                                    ; preds = %for.body.24
  %.lcssa = phi i64 [ %56, %for.body.24 ]
  br label %done, !dbg !949

done:                                             ; preds = %done.loopexit, %vector.body, %donethread-pre-split
  %57 = phi i64 [ %.pr, %donethread-pre-split ], [ %51, %vector.body ], [ %.lcssa, %done.loopexit ], !dbg !947
  %res.0 = phi %struct._object* [ null, %donethread-pre-split ], [ %call15, %vector.body ], [ %call15, %done.loopexit ]
  %cmp33 = icmp eq i64 %57, -1, !dbg !949
  br i1 %cmp33, label %if.end.36, label %if.then.35, !dbg !950

if.then.35:                                       ; preds = %done
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %bfrm, i64 0, metadata !464, metadata !522), !dbg !858
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %bfrm) #1, !dbg !951
  br label %if.end.36, !dbg !951

if.end.36:                                        ; preds = %done, %if.then.35
  %58 = load i64, i64* %len1, align 8, !dbg !952, !tbaa !846
  %cmp38 = icmp eq i64 %58, -1, !dbg !954
  br i1 %cmp38, label %cleanup, label %if.then.40, !dbg !955

if.then.40:                                       ; preds = %if.end.36
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %bto, i64 0, metadata !465, metadata !522), !dbg !891
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %bto) #1, !dbg !956
  br label %cleanup, !dbg !956

cleanup:                                          ; preds = %if.end.i, %if.then.i, %if.then.40, %if.end.36, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ %res.0, %if.end.36 ], [ %res.0, %if.then.40 ], [ null, %if.then.i ], [ null, %if.end.i ]
  call void @llvm.lifetime.end(i64 80, i8* %3) #1, !dbg !957
  call void @llvm.lifetime.end(i64 80, i8* %2) #1, !dbg !957
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !957
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !957
  ret %struct._object* %retval.0, !dbg !957
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #2

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #2

declare void @PyBuffer_Release(%struct.bufferinfo*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!519, !520}
!llvm.ident = !{!521}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !353, globals: !475)
!1 = !DIFile(filename: "Objects/bytes_methods.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !6, !345, !32, !53, !91}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !8, line: 109, baseType: !9)
!8 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!9 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !8, line: 105, size: 128, align: 64, elements: !10)
!10 = !{!11, !19}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !9, file: !8, line: 107, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !13, line: 177, baseType: !14)
!13 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !15, line: 102, baseType: !16)
!15 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !17, line: 181, baseType: !18)
!17 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!18 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !9, file: !8, line: 108, baseType: !20, size: 64, align: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !8, line: 334, size: 3200, align: 64, elements: !22)
!22 = !{!23, !29, !33, !34, !35, !40, !104, !109, !114, !115, !120, !172, !203, !215, !221, !222, !223, !225, !227, !258, !259, !260, !269, !270, !275, !276, !278, !280, !290, !293, !311, !312, !313, !315, !317, !318, !320, !325, !330, !335, !336, !337, !338, !339, !340, !341, !342, !344}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !21, file: !8, line: 335, baseType: !24, size: 192, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !8, line: 114, baseType: !25)
!25 = !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 111, size: 192, align: 64, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !25, file: !8, line: 112, baseType: !7, size: 128, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !25, file: !8, line: 113, baseType: !12, size: 64, align: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !21, file: !8, line: 336, baseType: !30, size: 64, align: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !21, file: !8, line: 337, baseType: !12, size: 64, align: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !21, file: !8, line: 337, baseType: !12, size: 64, align: 64, offset: 320)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !21, file: !8, line: 341, baseType: !36, size: 64, align: 64, offset: 384)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !8, line: 308, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !6}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !21, file: !8, line: 342, baseType: !41, size: 64, align: 64, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !8, line: 314, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !6, !46, !45}
!45 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !15, line: 48, baseType: !48)
!48 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !49, line: 246, size: 1728, align: 64, elements: !50)
!49 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!50 = !{!51, !52, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !72, !73, !74, !75, !77, !79, !81, !85, !88, !90, !92, !93, !94, !95, !99, !100}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !48, file: !49, line: 247, baseType: !45, size: 32, align: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !48, file: !49, line: 252, baseType: !53, size: 64, align: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !48, file: !49, line: 253, baseType: !53, size: 64, align: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !48, file: !49, line: 254, baseType: !53, size: 64, align: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !48, file: !49, line: 255, baseType: !53, size: 64, align: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !48, file: !49, line: 256, baseType: !53, size: 64, align: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !48, file: !49, line: 257, baseType: !53, size: 64, align: 64, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !48, file: !49, line: 258, baseType: !53, size: 64, align: 64, offset: 448)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !48, file: !49, line: 259, baseType: !53, size: 64, align: 64, offset: 512)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !48, file: !49, line: 261, baseType: !53, size: 64, align: 64, offset: 576)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !48, file: !49, line: 262, baseType: !53, size: 64, align: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !48, file: !49, line: 263, baseType: !53, size: 64, align: 64, offset: 704)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !48, file: !49, line: 265, baseType: !65, size: 64, align: 64, offset: 768)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !49, line: 161, size: 192, align: 64, elements: !67)
!67 = !{!68, !69, !71}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !66, file: !49, line: 162, baseType: !65, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !66, file: !49, line: 163, baseType: !70, size: 64, align: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !66, file: !49, line: 167, baseType: !45, size: 32, align: 32, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !48, file: !49, line: 267, baseType: !70, size: 64, align: 64, offset: 832)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !48, file: !49, line: 269, baseType: !45, size: 32, align: 32, offset: 896)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !48, file: !49, line: 273, baseType: !45, size: 32, align: 32, offset: 928)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !48, file: !49, line: 275, baseType: !76, size: 64, align: 64, offset: 960)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !17, line: 140, baseType: !18)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !48, file: !49, line: 279, baseType: !78, size: 16, align: 16, offset: 1024)
!78 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !48, file: !49, line: 280, baseType: !80, size: 8, align: 8, offset: 1040)
!80 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !48, file: !49, line: 281, baseType: !82, size: 8, align: 8, offset: 1048)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 8, align: 8, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 1)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !48, file: !49, line: 285, baseType: !86, size: 64, align: 64, offset: 1088)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !49, line: 155, baseType: null)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !48, file: !49, line: 294, baseType: !89, size: 64, align: 64, offset: 1152)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !17, line: 141, baseType: !18)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !48, file: !49, line: 303, baseType: !91, size: 64, align: 64, offset: 1216)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !48, file: !49, line: 304, baseType: !91, size: 64, align: 64, offset: 1280)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !48, file: !49, line: 305, baseType: !91, size: 64, align: 64, offset: 1344)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !48, file: !49, line: 306, baseType: !91, size: 64, align: 64, offset: 1408)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !48, file: !49, line: 307, baseType: !96, size: 64, align: 64, offset: 1472)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !97, line: 62, baseType: !98)
!97 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!98 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !48, file: !49, line: 309, baseType: !45, size: 32, align: 32, offset: 1536)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !48, file: !49, line: 311, baseType: !101, size: 160, align: 8, offset: 1568)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 160, align: 8, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 20)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !21, file: !8, line: 343, baseType: !105, size: 64, align: 64, offset: 512)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !8, line: 316, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!6, !6, !53}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !21, file: !8, line: 344, baseType: !110, size: 64, align: 64, offset: 576)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !8, line: 318, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!45, !6, !53, !6}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !21, file: !8, line: 345, baseType: !91, size: 64, align: 64, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !21, file: !8, line: 346, baseType: !116, size: 64, align: 64, offset: 704)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !8, line: 320, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!6, !6}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !21, file: !8, line: 350, baseType: !121, size: 64, align: 64, offset: 768)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !8, line: 278, baseType: !123)
!123 = !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 236, size: 2176, align: 64, elements: !124)
!124 = !{!125, !130, !131, !132, !133, !134, !139, !141, !142, !143, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !123, file: !8, line: 241, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !8, line: 166, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!6, !6, !6}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !123, file: !8, line: 242, baseType: !126, size: 64, align: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !123, file: !8, line: 243, baseType: !126, size: 64, align: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !123, file: !8, line: 244, baseType: !126, size: 64, align: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !123, file: !8, line: 245, baseType: !126, size: 64, align: 64, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !123, file: !8, line: 246, baseType: !135, size: 64, align: 64, offset: 320)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !8, line: 167, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!6, !6, !6, !6}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !123, file: !8, line: 247, baseType: !140, size: 64, align: 64, offset: 384)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !8, line: 165, baseType: !117)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !123, file: !8, line: 248, baseType: !140, size: 64, align: 64, offset: 448)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !123, file: !8, line: 249, baseType: !140, size: 64, align: 64, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !123, file: !8, line: 250, baseType: !144, size: 64, align: 64, offset: 576)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !8, line: 168, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!45, !6}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !123, file: !8, line: 251, baseType: !140, size: 64, align: 64, offset: 640)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !123, file: !8, line: 252, baseType: !126, size: 64, align: 64, offset: 704)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !123, file: !8, line: 253, baseType: !126, size: 64, align: 64, offset: 768)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !123, file: !8, line: 254, baseType: !126, size: 64, align: 64, offset: 832)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !123, file: !8, line: 255, baseType: !126, size: 64, align: 64, offset: 896)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !123, file: !8, line: 256, baseType: !126, size: 64, align: 64, offset: 960)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !123, file: !8, line: 257, baseType: !140, size: 64, align: 64, offset: 1024)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !123, file: !8, line: 258, baseType: !91, size: 64, align: 64, offset: 1088)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !123, file: !8, line: 259, baseType: !140, size: 64, align: 64, offset: 1152)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !123, file: !8, line: 261, baseType: !126, size: 64, align: 64, offset: 1216)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !123, file: !8, line: 262, baseType: !126, size: 64, align: 64, offset: 1280)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !123, file: !8, line: 263, baseType: !126, size: 64, align: 64, offset: 1344)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !123, file: !8, line: 264, baseType: !126, size: 64, align: 64, offset: 1408)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !123, file: !8, line: 265, baseType: !135, size: 64, align: 64, offset: 1472)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !123, file: !8, line: 266, baseType: !126, size: 64, align: 64, offset: 1536)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !123, file: !8, line: 267, baseType: !126, size: 64, align: 64, offset: 1600)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !123, file: !8, line: 268, baseType: !126, size: 64, align: 64, offset: 1664)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !123, file: !8, line: 269, baseType: !126, size: 64, align: 64, offset: 1728)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !123, file: !8, line: 270, baseType: !126, size: 64, align: 64, offset: 1792)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !123, file: !8, line: 272, baseType: !126, size: 64, align: 64, offset: 1856)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !123, file: !8, line: 273, baseType: !126, size: 64, align: 64, offset: 1920)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !123, file: !8, line: 274, baseType: !126, size: 64, align: 64, offset: 1984)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !123, file: !8, line: 275, baseType: !126, size: 64, align: 64, offset: 2048)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !123, file: !8, line: 277, baseType: !140, size: 64, align: 64, offset: 2112)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !21, file: !8, line: 351, baseType: !173, size: 64, align: 64, offset: 832)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !8, line: 292, baseType: !175)
!175 = !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 280, size: 640, align: 64, elements: !176)
!176 = !{!177, !182, !183, !188, !189, !190, !195, !196, !201, !202}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !175, file: !8, line: 281, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !8, line: 169, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!12, !6}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !175, file: !8, line: 282, baseType: !126, size: 64, align: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !175, file: !8, line: 283, baseType: !184, size: 64, align: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !8, line: 170, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!6, !6, !12}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !175, file: !8, line: 284, baseType: !184, size: 64, align: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !175, file: !8, line: 285, baseType: !91, size: 64, align: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !175, file: !8, line: 286, baseType: !191, size: 64, align: 64, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !8, line: 172, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!45, !6, !12, !6}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !175, file: !8, line: 287, baseType: !91, size: 64, align: 64, offset: 384)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !175, file: !8, line: 288, baseType: !197, size: 64, align: 64, offset: 448)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !8, line: 231, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!45, !6, !6}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !175, file: !8, line: 290, baseType: !126, size: 64, align: 64, offset: 512)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !175, file: !8, line: 291, baseType: !184, size: 64, align: 64, offset: 576)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !21, file: !8, line: 352, baseType: !204, size: 64, align: 64, offset: 896)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !8, line: 298, baseType: !206)
!206 = !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 294, size: 192, align: 64, elements: !207)
!207 = !{!208, !209, !210}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !206, file: !8, line: 295, baseType: !178, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !206, file: !8, line: 296, baseType: !126, size: 64, align: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !206, file: !8, line: 297, baseType: !211, size: 64, align: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !8, line: 174, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!45, !6, !6, !6}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !21, file: !8, line: 356, baseType: !216, size: 64, align: 64, offset: 960)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !8, line: 321, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!220, !6}
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !13, line: 186, baseType: !12)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !21, file: !8, line: 357, baseType: !135, size: 64, align: 64, offset: 1024)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !21, file: !8, line: 358, baseType: !116, size: 64, align: 64, offset: 1088)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !21, file: !8, line: 359, baseType: !224, size: 64, align: 64, offset: 1152)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !8, line: 317, baseType: !127)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !21, file: !8, line: 360, baseType: !226, size: 64, align: 64, offset: 1216)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !8, line: 319, baseType: !212)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !21, file: !8, line: 363, baseType: !228, size: 64, align: 64, offset: 1280)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !8, line: 304, baseType: !230)
!230 = !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 301, size: 128, align: 64, elements: !231)
!231 = !{!232, !253}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !230, file: !8, line: 302, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !8, line: 193, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!45, !6, !237, !45}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !8, line: 191, baseType: !239)
!239 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !8, line: 178, size: 640, align: 64, elements: !240)
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !250, !251, !252}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !239, file: !8, line: 179, baseType: !91, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !239, file: !8, line: 180, baseType: !6, size: 64, align: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !239, file: !8, line: 181, baseType: !12, size: 64, align: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !239, file: !8, line: 182, baseType: !12, size: 64, align: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !239, file: !8, line: 184, baseType: !45, size: 32, align: 32, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !239, file: !8, line: 185, baseType: !45, size: 32, align: 32, offset: 288)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !239, file: !8, line: 186, baseType: !53, size: 64, align: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !239, file: !8, line: 187, baseType: !249, size: 64, align: 64, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !239, file: !8, line: 188, baseType: !249, size: 64, align: 64, offset: 448)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !239, file: !8, line: 189, baseType: !249, size: 64, align: 64, offset: 512)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !239, file: !8, line: 190, baseType: !91, size: 64, align: 64, offset: 576)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !230, file: !8, line: 303, baseType: !254, size: 64, align: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !8, line: 194, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !6, !237}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !21, file: !8, line: 366, baseType: !98, size: 64, align: 64, offset: 1344)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !21, file: !8, line: 368, baseType: !30, size: 64, align: 64, offset: 1408)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !21, file: !8, line: 372, baseType: !261, size: 64, align: 64, offset: 1472)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !8, line: 233, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!45, !6, !265, !91}
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !8, line: 232, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!45, !6, !91}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !21, file: !8, line: 375, baseType: !144, size: 64, align: 64, offset: 1536)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !21, file: !8, line: 379, baseType: !271, size: 64, align: 64, offset: 1600)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !8, line: 322, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!6, !6, !6, !45}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !21, file: !8, line: 382, baseType: !12, size: 64, align: 64, offset: 1664)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !21, file: !8, line: 385, baseType: !277, size: 64, align: 64, offset: 1728)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !8, line: 323, baseType: !117)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !21, file: !8, line: 386, baseType: !279, size: 64, align: 64, offset: 1792)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !8, line: 324, baseType: !117)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !21, file: !8, line: 389, baseType: !281, size: 64, align: 64, offset: 1856)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !283, line: 40, size: 256, align: 64, elements: !284)
!283 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!284 = !{!285, !286, !288, !289}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !282, file: !283, line: 41, baseType: !30, size: 64, align: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !282, file: !283, line: 42, baseType: !287, size: 64, align: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !283, line: 18, baseType: !127)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !282, file: !283, line: 43, baseType: !45, size: 32, align: 32, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !282, file: !283, line: 45, baseType: !30, size: 64, align: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !21, file: !8, line: 390, baseType: !291, size: 64, align: 64, offset: 1920)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !8, line: 390, flags: DIFlagFwdDecl)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !21, file: !8, line: 391, baseType: !294, size: 64, align: 64, offset: 1984)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !296, line: 11, size: 320, align: 64, elements: !297)
!296 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!297 = !{!298, !299, !304, !309, !310}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !295, file: !296, line: 12, baseType: !53, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !295, file: !296, line: 13, baseType: !300, size: 64, align: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !296, line: 8, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!6, !6, !91}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !295, file: !296, line: 14, baseType: !305, size: 64, align: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !296, line: 9, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!45, !6, !6, !91}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !295, file: !296, line: 15, baseType: !53, size: 64, align: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !295, file: !296, line: 16, baseType: !91, size: 64, align: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !21, file: !8, line: 392, baseType: !20, size: 64, align: 64, offset: 2048)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !21, file: !8, line: 393, baseType: !6, size: 64, align: 64, offset: 2112)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !21, file: !8, line: 394, baseType: !314, size: 64, align: 64, offset: 2176)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !8, line: 325, baseType: !136)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !21, file: !8, line: 395, baseType: !316, size: 64, align: 64, offset: 2240)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !8, line: 326, baseType: !212)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !21, file: !8, line: 396, baseType: !12, size: 64, align: 64, offset: 2304)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !21, file: !8, line: 397, baseType: !319, size: 64, align: 64, offset: 2368)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !8, line: 327, baseType: !212)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !21, file: !8, line: 398, baseType: !321, size: 64, align: 64, offset: 2432)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !8, line: 329, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!6, !20, !12}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !21, file: !8, line: 399, baseType: !326, size: 64, align: 64, offset: 2496)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !8, line: 328, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!6, !20, !6, !6}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !21, file: !8, line: 400, baseType: !331, size: 64, align: 64, offset: 2560)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !8, line: 307, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !91}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !21, file: !8, line: 401, baseType: !144, size: 64, align: 64, offset: 2624)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !21, file: !8, line: 402, baseType: !6, size: 64, align: 64, offset: 2688)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !21, file: !8, line: 403, baseType: !6, size: 64, align: 64, offset: 2752)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !21, file: !8, line: 404, baseType: !6, size: 64, align: 64, offset: 2816)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !21, file: !8, line: 405, baseType: !6, size: 64, align: 64, offset: 2880)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !21, file: !8, line: 406, baseType: !6, size: 64, align: 64, offset: 2944)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !21, file: !8, line: 407, baseType: !36, size: 64, align: 64, offset: 3008)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !21, file: !8, line: 410, baseType: !343, size: 32, align: 32, offset: 3072)
!343 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !21, file: !8, line: 412, baseType: !36, size: 64, align: 64, offset: 3136)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !347, line: 41, baseType: !348)
!347 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!348 = !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 31, size: 320, align: 64, elements: !349)
!349 = !{!350, !351, !352}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !348, file: !347, line: 32, baseType: !24, size: 192, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !348, file: !347, line: 33, baseType: !220, size: 64, align: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !348, file: !347, line: 34, baseType: !82, size: 8, align: 8, offset: 256)
!353 = !{!354, !364, !370, !376, !382, !389, !396, !408, !416, !422, !435, !448, !458, !468}
!354 = !DISubprogram(name: "_Py_bytes_isspace", scope: !1, file: !1, line: 11, type: !355, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @_Py_bytes_isspace, variables: !357)
!355 = !DISubroutineType(types: !356)
!356 = !{!6, !30, !12}
!357 = !{!358, !359, !360, !363}
!358 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cptr", arg: 1, scope: !354, file: !1, line: 11, type: !30)
!359 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !354, file: !1, line: 11, type: !12)
!360 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !354, file: !1, line: 13, type: !361)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!363 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !354, file: !1, line: 15, type: !361)
!364 = !DISubprogram(name: "_Py_bytes_isalpha", scope: !1, file: !1, line: 41, type: !355, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @_Py_bytes_isalpha, variables: !365)
!365 = !{!366, !367, !368, !369}
!366 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cptr", arg: 1, scope: !364, file: !1, line: 41, type: !30)
!367 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !364, file: !1, line: 41, type: !12)
!368 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !364, file: !1, line: 43, type: !361)
!369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !364, file: !1, line: 45, type: !361)
!370 = !DISubprogram(name: "_Py_bytes_isalnum", scope: !1, file: !1, line: 71, type: !355, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @_Py_bytes_isalnum, variables: !371)
!371 = !{!372, !373, !374, !375}
!372 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cptr", arg: 1, scope: !370, file: !1, line: 71, type: !30)
!373 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !370, file: !1, line: 71, type: !12)
!374 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !370, file: !1, line: 73, type: !361)
!375 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !370, file: !1, line: 75, type: !361)
!376 = !DISubprogram(name: "_Py_bytes_isdigit", scope: !1, file: !1, line: 101, type: !355, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @_Py_bytes_isdigit, variables: !377)
!377 = !{!378, !379, !380, !381}
!378 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cptr", arg: 1, scope: !376, file: !1, line: 101, type: !30)
!379 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !376, file: !1, line: 101, type: !12)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !376, file: !1, line: 103, type: !361)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !376, file: !1, line: 105, type: !361)
!382 = !DISubprogram(name: "_Py_bytes_islower", scope: !1, file: !1, line: 131, type: !355, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @_Py_bytes_islower, variables: !383)
!383 = !{!384, !385, !386, !387, !388}
!384 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cptr", arg: 1, scope: !382, file: !1, line: 131, type: !30)
!385 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !382, file: !1, line: 131, type: !12)
!386 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !382, file: !1, line: 133, type: !361)
!387 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !382, file: !1, line: 135, type: !361)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cased", scope: !382, file: !1, line: 136, type: !45)
!389 = !DISubprogram(name: "_Py_bytes_isupper", scope: !1, file: !1, line: 165, type: !355, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @_Py_bytes_isupper, variables: !390)
!390 = !{!391, !392, !393, !394, !395}
!391 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cptr", arg: 1, scope: !389, file: !1, line: 165, type: !30)
!392 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !389, file: !1, line: 165, type: !12)
!393 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !389, file: !1, line: 167, type: !361)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !389, file: !1, line: 169, type: !361)
!395 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cased", scope: !389, file: !1, line: 170, type: !45)
!396 = !DISubprogram(name: "_Py_bytes_istitle", scope: !1, file: !1, line: 201, type: !355, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i64)* @_Py_bytes_istitle, variables: !397)
!397 = !{!398, !399, !400, !401, !402, !403, !404}
!398 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cptr", arg: 1, scope: !396, file: !1, line: 201, type: !30)
!399 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !396, file: !1, line: 201, type: !12)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !396, file: !1, line: 203, type: !361)
!401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !396, file: !1, line: 205, type: !361)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cased", scope: !396, file: !1, line: 206, type: !45)
!403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "previous_is_cased", scope: !396, file: !1, line: 206, type: !45)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !405, file: !1, line: 220, type: !362)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 219, column: 24)
!406 = distinct !DILexicalBlock(scope: !407, file: !1, line: 219, column: 5)
!407 = distinct !DILexicalBlock(scope: !396, file: !1, line: 219, column: 5)
!408 = !DISubprogram(name: "_Py_bytes_lower", scope: !1, file: !1, line: 247, type: !409, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i64)* @_Py_bytes_lower, variables: !411)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !53, !30, !12}
!411 = !{!412, !413, !414, !415}
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "result", arg: 1, scope: !408, file: !1, line: 247, type: !53)
!413 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cptr", arg: 2, scope: !408, file: !1, line: 247, type: !30)
!414 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !408, file: !1, line: 247, type: !12)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !408, file: !1, line: 249, type: !12)
!416 = !DISubprogram(name: "_Py_bytes_upper", scope: !1, file: !1, line: 263, type: !409, isLocal: false, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i64)* @_Py_bytes_upper, variables: !417)
!417 = !{!418, !419, !420, !421}
!418 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "result", arg: 1, scope: !416, file: !1, line: 263, type: !53)
!419 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cptr", arg: 2, scope: !416, file: !1, line: 263, type: !30)
!420 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !416, file: !1, line: 263, type: !12)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !416, file: !1, line: 265, type: !12)
!422 = !DISubprogram(name: "_Py_bytes_title", scope: !1, file: !1, line: 280, type: !423, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i64)* @_Py_bytes_title, variables: !425)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !53, !53, !12}
!425 = !{!426, !427, !428, !429, !430, !431}
!426 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "result", arg: 1, scope: !422, file: !1, line: 280, type: !53)
!427 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 2, scope: !422, file: !1, line: 280, type: !53)
!428 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !422, file: !1, line: 280, type: !12)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !422, file: !1, line: 282, type: !12)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "previous_is_cased", scope: !422, file: !1, line: 283, type: !45)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !432, file: !1, line: 286, type: !45)
!432 = distinct !DILexicalBlock(scope: !433, file: !1, line: 285, column: 31)
!433 = distinct !DILexicalBlock(scope: !434, file: !1, line: 285, column: 5)
!434 = distinct !DILexicalBlock(scope: !422, file: !1, line: 285, column: 5)
!435 = !DISubprogram(name: "_Py_bytes_capitalize", scope: !1, file: !1, line: 309, type: !423, isLocal: false, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i64)* @_Py_bytes_capitalize, variables: !436)
!436 = !{!437, !438, !439, !440, !441, !444}
!437 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "result", arg: 1, scope: !435, file: !1, line: 309, type: !53)
!438 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 2, scope: !435, file: !1, line: 309, type: !53)
!439 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !435, file: !1, line: 309, type: !12)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !435, file: !1, line: 311, type: !12)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !442, file: !1, line: 314, type: !45)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 313, column: 18)
!443 = distinct !DILexicalBlock(scope: !435, file: !1, line: 313, column: 9)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !445, file: !1, line: 322, type: !45)
!445 = distinct !DILexicalBlock(scope: !446, file: !1, line: 321, column: 31)
!446 = distinct !DILexicalBlock(scope: !447, file: !1, line: 321, column: 5)
!447 = distinct !DILexicalBlock(scope: !435, file: !1, line: 321, column: 5)
!448 = !DISubprogram(name: "_Py_bytes_swapcase", scope: !1, file: !1, line: 339, type: !423, isLocal: false, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i64)* @_Py_bytes_swapcase, variables: !449)
!449 = !{!450, !451, !452, !453, !454}
!450 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "result", arg: 1, scope: !448, file: !1, line: 339, type: !53)
!451 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 2, scope: !448, file: !1, line: 339, type: !53)
!452 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !448, file: !1, line: 339, type: !12)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !448, file: !1, line: 341, type: !12)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !455, file: !1, line: 344, type: !45)
!455 = distinct !DILexicalBlock(scope: !456, file: !1, line: 343, column: 31)
!456 = distinct !DILexicalBlock(scope: !457, file: !1, line: 343, column: 5)
!457 = distinct !DILexicalBlock(scope: !448, file: !1, line: 343, column: 5)
!458 = !DISubprogram(name: "_Py_bytes_maketrans", scope: !1, file: !1, line: 385, type: !118, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @_Py_bytes_maketrans, variables: !459)
!459 = !{!460, !461, !462, !463, !464, !465, !466, !467}
!460 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !458, file: !1, line: 385, type: !6)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "frm", scope: !458, file: !1, line: 387, type: !6)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "to", scope: !458, file: !1, line: 387, type: !6)
!463 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !458, file: !1, line: 387, type: !6)
!464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bfrm", scope: !458, file: !1, line: 388, type: !238)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bto", scope: !458, file: !1, line: 388, type: !238)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !458, file: !1, line: 389, type: !12)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !458, file: !1, line: 390, type: !53)
!468 = !DISubprogram(name: "_getbuffer", scope: !1, file: !1, line: 367, type: !469, isLocal: true, isDefinition: true, scopeLine: 368, flags: DIFlagPrototyped, isOptimized: true, variables: !471)
!469 = !DISubroutineType(types: !470)
!470 = !{!12, !6, !237}
!471 = !{!472, !473, !474}
!472 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !468, file: !1, line: 367, type: !6)
!473 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "view", arg: 2, scope: !468, file: !1, line: 367, type: !237)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !468, file: !1, line: 369, type: !228)
!475 = !{!476, !480, !481, !485, !489, !493, !494, !498, !502, !503, !507, !511, !515}
!476 = !DIGlobalVariable(name: "_Py_isspace__doc__", scope: !0, file: !1, line: 4, type: !477, isLocal: false, isDefinition: true, variable: [130 x i8]* @_Py_isspace__doc__)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1040, align: 8, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 130)
!480 = !DIGlobalVariable(name: "_Py_isalpha__doc__", scope: !0, file: !1, line: 34, type: !477, isLocal: false, isDefinition: true, variable: [130 x i8]* @_Py_isalpha__doc__)
!481 = !DIGlobalVariable(name: "_Py_isalnum__doc__", scope: !0, file: !1, line: 64, type: !482, isLocal: false, isDefinition: true, variable: [132 x i8]* @_Py_isalnum__doc__)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1056, align: 8, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 132)
!485 = !DIGlobalVariable(name: "_Py_isdigit__doc__", scope: !0, file: !1, line: 94, type: !486, isLocal: false, isDefinition: true, variable: [126 x i8]* @_Py_isdigit__doc__)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1008, align: 8, elements: !487)
!487 = !{!488}
!488 = !DISubrange(count: 126)
!489 = !DIGlobalVariable(name: "_Py_islower__doc__", scope: !0, file: !1, line: 124, type: !490, isLocal: false, isDefinition: true, variable: [141 x i8]* @_Py_islower__doc__)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1128, align: 8, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 141)
!493 = !DIGlobalVariable(name: "_Py_isupper__doc__", scope: !0, file: !1, line: 158, type: !490, isLocal: false, isDefinition: true, variable: [141 x i8]* @_Py_isupper__doc__)
!494 = !DIGlobalVariable(name: "_Py_istitle__doc__", scope: !0, file: !1, line: 192, type: !495, isLocal: false, isDefinition: true, variable: [230 x i8]* @_Py_istitle__doc__)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1840, align: 8, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 230)
!498 = !DIGlobalVariable(name: "_Py_lower__doc__", scope: !0, file: !1, line: 241, type: !499, isLocal: false, isDefinition: true, variable: [93 x i8]* @_Py_lower__doc__)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 744, align: 8, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 93)
!502 = !DIGlobalVariable(name: "_Py_upper__doc__", scope: !0, file: !1, line: 257, type: !499, isLocal: false, isDefinition: true, variable: [93 x i8]* @_Py_upper__doc__)
!503 = !DIGlobalVariable(name: "_Py_title__doc__", scope: !0, file: !1, line: 273, type: !504, isLocal: false, isDefinition: true, variable: [155 x i8]* @_Py_title__doc__)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1240, align: 8, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 155)
!507 = !DIGlobalVariable(name: "_Py_capitalize__doc__", scope: !0, file: !1, line: 302, type: !508, isLocal: false, isDefinition: true, variable: [124 x i8]* @_Py_capitalize__doc__)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 992, align: 8, elements: !509)
!509 = !{!510}
!510 = !DISubrange(count: 124)
!511 = !DIGlobalVariable(name: "_Py_swapcase__doc__", scope: !0, file: !1, line: 332, type: !512, isLocal: false, isDefinition: true, variable: [123 x i8]* @_Py_swapcase__doc__)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 984, align: 8, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 123)
!515 = !DIGlobalVariable(name: "_Py_maketrans__doc__", scope: !0, file: !1, line: 358, type: !516, isLocal: false, isDefinition: true, variable: [291 x i8]* @_Py_maketrans__doc__)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2328, align: 8, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: 291)
!519 = !{i32 2, !"Dwarf Version", i32 4}
!520 = !{i32 2, !"Debug Info Version", i32 3}
!521 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!522 = !DIExpression()
!523 = !DILocation(line: 11, column: 31, scope: !354)
!524 = !DILocation(line: 11, column: 48, scope: !354)
!525 = !DILocation(line: 13, column: 26, scope: !354)
!526 = !DILocation(line: 18, column: 18, scope: !527)
!527 = distinct !DILexicalBlock(scope: !354, file: !1, line: 18, column: 9)
!528 = !DILocation(line: 18, column: 21, scope: !529)
!529 = !DILexicalBlockFile(scope: !527, file: !1, discriminator: 1)
!530 = !{!531, !531, i64 0}
!531 = !{!"omnipotent char", !532, i64 0}
!532 = !{!"Simple C/C++ TBAA"}
!533 = !{!534, !534, i64 0}
!534 = !{!"int", !531, i64 0}
!535 = !DILocation(line: 18, column: 9, scope: !354)
!536 = !DILocation(line: 19, column: 9, scope: !527)
!537 = !{!538, !539, i64 0}
!538 = !{!"_object", !539, i64 0, !540, i64 8}
!539 = !{!"long", !531, i64 0}
!540 = !{!"any pointer", !531, i64 0}
!541 = !DILocation(line: 23, column: 9, scope: !542)
!542 = distinct !DILexicalBlock(scope: !354, file: !1, line: 22, column: 9)
!543 = !DILocation(line: 25, column: 11, scope: !354)
!544 = !DILocation(line: 15, column: 26, scope: !354)
!545 = !DILocation(line: 26, column: 14, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !1, line: 26, column: 5)
!547 = distinct !DILexicalBlock(scope: !354, file: !1, line: 26, column: 5)
!548 = !DILocation(line: 26, column: 5, scope: !547)
!549 = !DILocation(line: 27, column: 14, scope: !550)
!550 = distinct !DILexicalBlock(scope: !551, file: !1, line: 27, column: 13)
!551 = distinct !DILexicalBlock(scope: !546, file: !1, line: 26, column: 24)
!552 = !DILocation(line: 26, column: 20, scope: !546)
!553 = !DILocation(line: 27, column: 13, scope: !551)
!554 = !DILocation(line: 28, column: 13, scope: !550)
!555 = !DILocation(line: 30, column: 5, scope: !354)
!556 = !DILocation(line: 31, column: 1, scope: !354)
!557 = !DILocation(line: 41, column: 31, scope: !364)
!558 = !DILocation(line: 41, column: 48, scope: !364)
!559 = !DILocation(line: 43, column: 26, scope: !364)
!560 = !DILocation(line: 48, column: 18, scope: !561)
!561 = distinct !DILexicalBlock(scope: !364, file: !1, line: 48, column: 9)
!562 = !DILocation(line: 48, column: 21, scope: !563)
!563 = !DILexicalBlockFile(scope: !561, file: !1, discriminator: 1)
!564 = !DILocation(line: 48, column: 9, scope: !364)
!565 = !DILocation(line: 49, column: 9, scope: !561)
!566 = !DILocation(line: 53, column: 9, scope: !567)
!567 = distinct !DILexicalBlock(scope: !364, file: !1, line: 52, column: 9)
!568 = !DILocation(line: 55, column: 11, scope: !364)
!569 = !DILocation(line: 45, column: 26, scope: !364)
!570 = !DILocation(line: 56, column: 14, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !1, line: 56, column: 5)
!572 = distinct !DILexicalBlock(scope: !364, file: !1, line: 56, column: 5)
!573 = !DILocation(line: 56, column: 5, scope: !572)
!574 = !DILocation(line: 57, column: 14, scope: !575)
!575 = distinct !DILexicalBlock(scope: !576, file: !1, line: 57, column: 13)
!576 = distinct !DILexicalBlock(scope: !571, file: !1, line: 56, column: 24)
!577 = !DILocation(line: 56, column: 20, scope: !571)
!578 = !DILocation(line: 57, column: 13, scope: !576)
!579 = !DILocation(line: 58, column: 13, scope: !575)
!580 = !DILocation(line: 60, column: 5, scope: !364)
!581 = !DILocation(line: 61, column: 1, scope: !364)
!582 = !DILocation(line: 71, column: 31, scope: !370)
!583 = !DILocation(line: 71, column: 48, scope: !370)
!584 = !DILocation(line: 73, column: 26, scope: !370)
!585 = !DILocation(line: 78, column: 18, scope: !586)
!586 = distinct !DILexicalBlock(scope: !370, file: !1, line: 78, column: 9)
!587 = !DILocation(line: 78, column: 21, scope: !588)
!588 = !DILexicalBlockFile(scope: !586, file: !1, discriminator: 1)
!589 = !DILocation(line: 78, column: 9, scope: !370)
!590 = !DILocation(line: 79, column: 9, scope: !586)
!591 = !DILocation(line: 83, column: 9, scope: !592)
!592 = distinct !DILexicalBlock(scope: !370, file: !1, line: 82, column: 9)
!593 = !DILocation(line: 85, column: 11, scope: !370)
!594 = !DILocation(line: 75, column: 26, scope: !370)
!595 = !DILocation(line: 86, column: 14, scope: !596)
!596 = distinct !DILexicalBlock(scope: !597, file: !1, line: 86, column: 5)
!597 = distinct !DILexicalBlock(scope: !370, file: !1, line: 86, column: 5)
!598 = !DILocation(line: 86, column: 5, scope: !597)
!599 = !DILocation(line: 87, column: 14, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !1, line: 87, column: 13)
!601 = distinct !DILexicalBlock(scope: !596, file: !1, line: 86, column: 24)
!602 = !DILocation(line: 86, column: 20, scope: !596)
!603 = !DILocation(line: 87, column: 13, scope: !601)
!604 = !DILocation(line: 88, column: 13, scope: !600)
!605 = !DILocation(line: 90, column: 5, scope: !370)
!606 = !DILocation(line: 91, column: 1, scope: !370)
!607 = !DILocation(line: 101, column: 31, scope: !376)
!608 = !DILocation(line: 101, column: 48, scope: !376)
!609 = !DILocation(line: 103, column: 26, scope: !376)
!610 = !DILocation(line: 108, column: 18, scope: !611)
!611 = distinct !DILexicalBlock(scope: !376, file: !1, line: 108, column: 9)
!612 = !DILocation(line: 108, column: 21, scope: !613)
!613 = !DILexicalBlockFile(scope: !611, file: !1, discriminator: 1)
!614 = !DILocation(line: 108, column: 9, scope: !376)
!615 = !DILocation(line: 109, column: 9, scope: !611)
!616 = !DILocation(line: 113, column: 9, scope: !617)
!617 = distinct !DILexicalBlock(scope: !376, file: !1, line: 112, column: 9)
!618 = !DILocation(line: 115, column: 11, scope: !376)
!619 = !DILocation(line: 105, column: 26, scope: !376)
!620 = !DILocation(line: 116, column: 14, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !1, line: 116, column: 5)
!622 = distinct !DILexicalBlock(scope: !376, file: !1, line: 116, column: 5)
!623 = !DILocation(line: 116, column: 5, scope: !622)
!624 = !DILocation(line: 117, column: 14, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !1, line: 117, column: 13)
!626 = distinct !DILexicalBlock(scope: !621, file: !1, line: 116, column: 24)
!627 = !DILocation(line: 116, column: 20, scope: !621)
!628 = !DILocation(line: 117, column: 13, scope: !626)
!629 = !DILocation(line: 118, column: 13, scope: !625)
!630 = !DILocation(line: 120, column: 5, scope: !376)
!631 = !DILocation(line: 121, column: 1, scope: !376)
!632 = !DILocation(line: 131, column: 31, scope: !382)
!633 = !DILocation(line: 131, column: 48, scope: !382)
!634 = !DILocation(line: 133, column: 26, scope: !382)
!635 = !DILocation(line: 139, column: 9, scope: !382)
!636 = !DILocation(line: 140, column: 32, scope: !637)
!637 = distinct !DILexicalBlock(scope: !382, file: !1, line: 139, column: 9)
!638 = !DILocation(line: 140, column: 16, scope: !637)
!639 = !DILocation(line: 140, column: 9, scope: !637)
!640 = !DILocation(line: 144, column: 9, scope: !641)
!641 = distinct !DILexicalBlock(scope: !382, file: !1, line: 143, column: 9)
!642 = !DILocation(line: 146, column: 11, scope: !382)
!643 = !DILocation(line: 135, column: 26, scope: !382)
!644 = !DILocation(line: 136, column: 9, scope: !382)
!645 = !DILocation(line: 148, column: 14, scope: !646)
!646 = distinct !DILexicalBlock(scope: !647, file: !1, line: 148, column: 5)
!647 = distinct !DILexicalBlock(scope: !382, file: !1, line: 148, column: 5)
!648 = !DILocation(line: 148, column: 5, scope: !647)
!649 = !DILocation(line: 149, column: 13, scope: !650)
!650 = distinct !DILexicalBlock(scope: !651, file: !1, line: 149, column: 13)
!651 = distinct !DILexicalBlock(scope: !646, file: !1, line: 148, column: 24)
!652 = !DILocation(line: 149, column: 13, scope: !651)
!653 = !DILocation(line: 150, column: 13, scope: !650)
!654 = !DILocation(line: 151, column: 19, scope: !655)
!655 = distinct !DILexicalBlock(scope: !650, file: !1, line: 151, column: 18)
!656 = !DILocation(line: 151, column: 28, scope: !657)
!657 = !DILexicalBlockFile(scope: !655, file: !1, discriminator: 1)
!658 = !DILocation(line: 151, column: 25, scope: !655)
!659 = !DILocation(line: 148, column: 20, scope: !646)
!660 = !DILocation(line: 154, column: 12, scope: !382)
!661 = !DILocation(line: 154, column: 5, scope: !382)
!662 = !DILocation(line: 155, column: 1, scope: !382)
!663 = !DILocation(line: 165, column: 31, scope: !389)
!664 = !DILocation(line: 165, column: 48, scope: !389)
!665 = !DILocation(line: 167, column: 26, scope: !389)
!666 = !DILocation(line: 173, column: 9, scope: !389)
!667 = !DILocation(line: 174, column: 32, scope: !668)
!668 = distinct !DILexicalBlock(scope: !389, file: !1, line: 173, column: 9)
!669 = !DILocation(line: 174, column: 16, scope: !668)
!670 = !DILocation(line: 174, column: 9, scope: !668)
!671 = !DILocation(line: 178, column: 9, scope: !672)
!672 = distinct !DILexicalBlock(scope: !389, file: !1, line: 177, column: 9)
!673 = !DILocation(line: 180, column: 11, scope: !389)
!674 = !DILocation(line: 169, column: 26, scope: !389)
!675 = !DILocation(line: 170, column: 9, scope: !389)
!676 = !DILocation(line: 182, column: 14, scope: !677)
!677 = distinct !DILexicalBlock(scope: !678, file: !1, line: 182, column: 5)
!678 = distinct !DILexicalBlock(scope: !389, file: !1, line: 182, column: 5)
!679 = !DILocation(line: 182, column: 5, scope: !678)
!680 = !DILocation(line: 183, column: 13, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !1, line: 183, column: 13)
!682 = distinct !DILexicalBlock(scope: !677, file: !1, line: 182, column: 24)
!683 = !DILocation(line: 183, column: 13, scope: !682)
!684 = !DILocation(line: 184, column: 13, scope: !681)
!685 = !DILocation(line: 185, column: 19, scope: !686)
!686 = distinct !DILexicalBlock(scope: !681, file: !1, line: 185, column: 18)
!687 = !DILocation(line: 185, column: 28, scope: !688)
!688 = !DILexicalBlockFile(scope: !686, file: !1, discriminator: 1)
!689 = !DILocation(line: 185, column: 25, scope: !686)
!690 = !DILocation(line: 182, column: 20, scope: !677)
!691 = !DILocation(line: 188, column: 12, scope: !389)
!692 = !DILocation(line: 188, column: 5, scope: !389)
!693 = !DILocation(line: 189, column: 1, scope: !389)
!694 = !DILocation(line: 201, column: 31, scope: !396)
!695 = !DILocation(line: 201, column: 48, scope: !396)
!696 = !DILocation(line: 203, column: 26, scope: !396)
!697 = !DILocation(line: 209, column: 9, scope: !396)
!698 = !DILocation(line: 210, column: 32, scope: !699)
!699 = distinct !DILexicalBlock(scope: !396, file: !1, line: 209, column: 9)
!700 = !DILocation(line: 210, column: 16, scope: !699)
!701 = !DILocation(line: 210, column: 9, scope: !699)
!702 = !DILocation(line: 214, column: 9, scope: !703)
!703 = distinct !DILexicalBlock(scope: !396, file: !1, line: 213, column: 9)
!704 = !DILocation(line: 216, column: 11, scope: !396)
!705 = !DILocation(line: 205, column: 26, scope: !396)
!706 = !DILocation(line: 206, column: 9, scope: !396)
!707 = !DILocation(line: 206, column: 16, scope: !396)
!708 = !DILocation(line: 219, column: 14, scope: !406)
!709 = !DILocation(line: 219, column: 5, scope: !407)
!710 = !DILocation(line: 220, column: 34, scope: !405)
!711 = !DILocation(line: 222, column: 13, scope: !712)
!712 = distinct !DILexicalBlock(scope: !405, file: !1, line: 222, column: 13)
!713 = !DILocation(line: 222, column: 13, scope: !405)
!714 = !DILocation(line: 223, column: 17, scope: !715)
!715 = distinct !DILexicalBlock(scope: !716, file: !1, line: 223, column: 17)
!716 = distinct !DILexicalBlock(scope: !712, file: !1, line: 222, column: 29)
!717 = !DILocation(line: 223, column: 17, scope: !716)
!718 = !DILocation(line: 224, column: 17, scope: !715)
!719 = !DILocation(line: 228, column: 18, scope: !720)
!720 = distinct !DILexicalBlock(scope: !712, file: !1, line: 228, column: 18)
!721 = !DILocation(line: 228, column: 18, scope: !712)
!722 = !DILocation(line: 229, column: 18, scope: !723)
!723 = distinct !DILexicalBlock(scope: !724, file: !1, line: 229, column: 17)
!724 = distinct !DILexicalBlock(scope: !720, file: !1, line: 228, column: 34)
!725 = !DILocation(line: 229, column: 17, scope: !724)
!726 = !DILocation(line: 230, column: 17, scope: !723)
!727 = !DILocation(line: 219, column: 20, scope: !406)
!728 = !DILocation(line: 237, column: 28, scope: !396)
!729 = !DILocation(line: 237, column: 12, scope: !396)
!730 = !DILocation(line: 237, column: 5, scope: !396)
!731 = !DILocation(line: 238, column: 1, scope: !396)
!732 = !DILocation(line: 247, column: 23, scope: !408)
!733 = !DILocation(line: 247, column: 43, scope: !408)
!734 = !DILocation(line: 247, column: 60, scope: !408)
!735 = !DILocation(line: 249, column: 16, scope: !408)
!736 = !DILocation(line: 251, column: 19, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !1, line: 251, column: 5)
!738 = distinct !DILexicalBlock(scope: !408, file: !1, line: 251, column: 5)
!739 = !DILocation(line: 251, column: 5, scope: !738)
!740 = !DILocation(line: 252, column: 21, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !1, line: 251, column: 31)
!742 = !DILocation(line: 252, column: 19, scope: !741)
!743 = !DILocation(line: 252, column: 9, scope: !741)
!744 = !DILocation(line: 251, column: 27, scope: !737)
!745 = !DILocation(line: 254, column: 1, scope: !408)
!746 = !DILocation(line: 263, column: 23, scope: !416)
!747 = !DILocation(line: 263, column: 43, scope: !416)
!748 = !DILocation(line: 263, column: 60, scope: !416)
!749 = !DILocation(line: 265, column: 16, scope: !416)
!750 = !DILocation(line: 267, column: 19, scope: !751)
!751 = distinct !DILexicalBlock(scope: !752, file: !1, line: 267, column: 5)
!752 = distinct !DILexicalBlock(scope: !416, file: !1, line: 267, column: 5)
!753 = !DILocation(line: 267, column: 5, scope: !752)
!754 = !DILocation(line: 268, column: 21, scope: !755)
!755 = distinct !DILexicalBlock(scope: !751, file: !1, line: 267, column: 31)
!756 = !DILocation(line: 268, column: 19, scope: !755)
!757 = !DILocation(line: 268, column: 9, scope: !755)
!758 = !DILocation(line: 267, column: 27, scope: !751)
!759 = !DILocation(line: 270, column: 1, scope: !416)
!760 = !DILocation(line: 280, column: 23, scope: !422)
!761 = !DILocation(line: 280, column: 37, scope: !422)
!762 = !DILocation(line: 280, column: 51, scope: !422)
!763 = !DILocation(line: 283, column: 9, scope: !422)
!764 = !DILocation(line: 282, column: 16, scope: !422)
!765 = !DILocation(line: 285, column: 19, scope: !433)
!766 = !DILocation(line: 285, column: 5, scope: !434)
!767 = !DILocation(line: 286, column: 17, scope: !432)
!768 = !DILocation(line: 287, column: 13, scope: !769)
!769 = distinct !DILexicalBlock(scope: !432, file: !1, line: 287, column: 13)
!770 = !DILocation(line: 287, column: 13, scope: !432)
!771 = !DILocation(line: 288, column: 18, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !1, line: 288, column: 17)
!773 = distinct !DILexicalBlock(scope: !769, file: !1, line: 287, column: 28)
!774 = !DILocation(line: 288, column: 17, scope: !773)
!775 = !DILocation(line: 289, column: 21, scope: !772)
!776 = !DILocation(line: 289, column: 17, scope: !772)
!777 = !DILocation(line: 291, column: 20, scope: !778)
!778 = distinct !DILexicalBlock(scope: !769, file: !1, line: 291, column: 20)
!779 = !DILocation(line: 291, column: 20, scope: !769)
!780 = !DILocation(line: 292, column: 17, scope: !781)
!781 = distinct !DILexicalBlock(scope: !782, file: !1, line: 292, column: 17)
!782 = distinct !DILexicalBlock(scope: !778, file: !1, line: 291, column: 35)
!783 = !DILocation(line: 292, column: 17, scope: !782)
!784 = !DILocation(line: 293, column: 21, scope: !781)
!785 = !DILocation(line: 293, column: 17, scope: !781)
!786 = !DILocation(line: 297, column: 16, scope: !432)
!787 = !DILocation(line: 297, column: 19, scope: !432)
!788 = !DILocation(line: 285, column: 27, scope: !433)
!789 = !DILocation(line: 299, column: 1, scope: !422)
!790 = !DILocation(line: 309, column: 28, scope: !435)
!791 = !DILocation(line: 309, column: 42, scope: !435)
!792 = !DILocation(line: 309, column: 56, scope: !435)
!793 = !DILocation(line: 313, column: 11, scope: !443)
!794 = !DILocation(line: 313, column: 9, scope: !435)
!795 = !DILocation(line: 314, column: 17, scope: !442)
!796 = !DILocation(line: 315, column: 13, scope: !797)
!797 = distinct !DILexicalBlock(scope: !442, file: !1, line: 315, column: 13)
!798 = !DILocation(line: 315, column: 13, scope: !442)
!799 = !DILocation(line: 316, column: 23, scope: !797)
!800 = !DILocation(line: 316, column: 13, scope: !797)
!801 = !DILocation(line: 316, column: 21, scope: !797)
!802 = !DILocation(line: 321, column: 19, scope: !446)
!803 = !DILocation(line: 321, column: 5, scope: !447)
!804 = !DILocation(line: 322, column: 17, scope: !445)
!805 = !DILocation(line: 327, column: 15, scope: !445)
!806 = !DILocation(line: 323, column: 13, scope: !807)
!807 = distinct !DILexicalBlock(scope: !445, file: !1, line: 323, column: 13)
!808 = !DILocation(line: 323, column: 13, scope: !445)
!809 = !DILocation(line: 324, column: 23, scope: !807)
!810 = !DILocation(line: 324, column: 13, scope: !807)
!811 = !DILocation(line: 324, column: 21, scope: !807)
!812 = !DILocation(line: 311, column: 16, scope: !435)
!813 = !DILocation(line: 329, column: 1, scope: !435)
!814 = !DILocation(line: 321, column: 27, scope: !446)
!815 = !DILocation(line: 339, column: 26, scope: !448)
!816 = !DILocation(line: 339, column: 40, scope: !448)
!817 = !DILocation(line: 339, column: 54, scope: !448)
!818 = !DILocation(line: 341, column: 16, scope: !448)
!819 = !DILocation(line: 343, column: 19, scope: !456)
!820 = !DILocation(line: 343, column: 5, scope: !457)
!821 = !DILocation(line: 344, column: 17, scope: !455)
!822 = !DILocation(line: 345, column: 13, scope: !823)
!823 = distinct !DILexicalBlock(scope: !455, file: !1, line: 345, column: 13)
!824 = !DILocation(line: 345, column: 13, scope: !455)
!825 = !DILocation(line: 346, column: 23, scope: !826)
!826 = distinct !DILexicalBlock(scope: !823, file: !1, line: 345, column: 28)
!827 = !DILocation(line: 346, column: 21, scope: !826)
!828 = !DILocation(line: 347, column: 9, scope: !826)
!829 = !DILocation(line: 348, column: 18, scope: !830)
!830 = distinct !DILexicalBlock(scope: !823, file: !1, line: 348, column: 18)
!831 = !DILocation(line: 348, column: 18, scope: !823)
!832 = !DILocation(line: 349, column: 23, scope: !833)
!833 = distinct !DILexicalBlock(scope: !830, file: !1, line: 348, column: 33)
!834 = !DILocation(line: 349, column: 21, scope: !833)
!835 = !DILocation(line: 350, column: 9, scope: !833)
!836 = !DILocation(line: 352, column: 21, scope: !830)
!837 = !DILocation(line: 353, column: 15, scope: !455)
!838 = !DILocation(line: 343, column: 27, scope: !456)
!839 = !DILocation(line: 355, column: 1, scope: !448)
!840 = !DILocation(line: 385, column: 31, scope: !458)
!841 = !DILocation(line: 387, column: 5, scope: !458)
!842 = !DILocation(line: 387, column: 26, scope: !458)
!843 = !DILocation(line: 388, column: 5, scope: !458)
!844 = !DILocation(line: 392, column: 10, scope: !458)
!845 = !DILocation(line: 392, column: 14, scope: !458)
!846 = !{!847, !539, i64 16}
!847 = !{!"bufferinfo", !540, i64 0, !540, i64 8, !539, i64 16, !539, i64 24, !534, i64 32, !534, i64 36, !540, i64 40, !540, i64 48, !540, i64 56, !540, i64 64, !540, i64 72}
!848 = !DILocation(line: 393, column: 9, scope: !458)
!849 = !DILocation(line: 393, column: 13, scope: !458)
!850 = !DILocation(line: 387, column: 15, scope: !458)
!851 = !DILocation(line: 387, column: 21, scope: !458)
!852 = !DILocation(line: 395, column: 10, scope: !853)
!853 = distinct !DILexicalBlock(scope: !458, file: !1, line: 395, column: 9)
!854 = !DILocation(line: 395, column: 9, scope: !458)
!855 = !DILocation(line: 397, column: 20, scope: !856)
!856 = distinct !DILexicalBlock(scope: !458, file: !1, line: 397, column: 9)
!857 = !{!540, !540, i64 0}
!858 = !DILocation(line: 388, column: 15, scope: !458)
!859 = !DILocation(line: 367, column: 22, scope: !468, inlinedAt: !860)
!860 = distinct !DILocation(line: 397, column: 9, scope: !856)
!861 = !DILocation(line: 367, column: 38, scope: !468, inlinedAt: !860)
!862 = !DILocation(line: 369, column: 29, scope: !468, inlinedAt: !860)
!863 = !DILocation(line: 375, column: 22, scope: !864, inlinedAt: !860)
!864 = distinct !DILexicalBlock(scope: !865, file: !1, line: 372, column: 5)
!865 = distinct !DILexicalBlock(scope: !468, file: !1, line: 371, column: 9)
!866 = !{!538, !540, i64 8}
!867 = !DILocation(line: 369, column: 43, scope: !468, inlinedAt: !860)
!868 = !{!869, !540, i64 160}
!869 = !{!"_typeobject", !870, i64 0, !540, i64 24, !539, i64 32, !539, i64 40, !540, i64 48, !540, i64 56, !540, i64 64, !540, i64 72, !540, i64 80, !540, i64 88, !540, i64 96, !540, i64 104, !540, i64 112, !540, i64 120, !540, i64 128, !540, i64 136, !540, i64 144, !540, i64 152, !540, i64 160, !539, i64 168, !540, i64 176, !540, i64 184, !540, i64 192, !540, i64 200, !539, i64 208, !540, i64 216, !540, i64 224, !540, i64 232, !540, i64 240, !540, i64 248, !540, i64 256, !540, i64 264, !540, i64 272, !540, i64 280, !539, i64 288, !540, i64 296, !540, i64 304, !540, i64 312, !540, i64 320, !540, i64 328, !540, i64 336, !540, i64 344, !540, i64 352, !540, i64 360, !540, i64 368, !540, i64 376, !534, i64 384, !540, i64 392}
!870 = !{!"", !538, i64 0, !539, i64 16}
!871 = !DILocation(line: 369, column: 20, scope: !468, inlinedAt: !860)
!872 = !DILocation(line: 371, column: 16, scope: !865, inlinedAt: !860)
!873 = !DILocation(line: 371, column: 24, scope: !865, inlinedAt: !860)
!874 = !DILocation(line: 371, column: 35, scope: !865, inlinedAt: !860)
!875 = !{!876, !540, i64 0}
!876 = !{!"", !540, i64 0, !540, i64 8}
!877 = !DILocation(line: 371, column: 48, scope: !865, inlinedAt: !860)
!878 = !DILocation(line: 371, column: 9, scope: !468, inlinedAt: !860)
!879 = !DILocation(line: 373, column: 22, scope: !864, inlinedAt: !860)
!880 = !DILocation(line: 375, column: 36, scope: !864, inlinedAt: !860)
!881 = !{!869, !540, i64 24}
!882 = !DILocation(line: 373, column: 9, scope: !864, inlinedAt: !860)
!883 = !DILocation(line: 376, column: 9, scope: !864, inlinedAt: !860)
!884 = !DILocation(line: 379, column: 9, scope: !885, inlinedAt: !860)
!885 = distinct !DILexicalBlock(scope: !468, file: !1, line: 379, column: 9)
!886 = !DILocation(line: 379, column: 55, scope: !885, inlinedAt: !860)
!887 = !DILocation(line: 397, column: 32, scope: !856)
!888 = !DILocation(line: 379, column: 9, scope: !468, inlinedAt: !860)
!889 = !DILocation(line: 399, column: 20, scope: !890)
!890 = distinct !DILexicalBlock(scope: !458, file: !1, line: 399, column: 9)
!891 = !DILocation(line: 388, column: 21, scope: !458)
!892 = !DILocation(line: 367, column: 22, scope: !468, inlinedAt: !893)
!893 = distinct !DILocation(line: 399, column: 9, scope: !890)
!894 = !DILocation(line: 367, column: 38, scope: !468, inlinedAt: !893)
!895 = !DILocation(line: 369, column: 29, scope: !468, inlinedAt: !893)
!896 = !DILocation(line: 375, column: 22, scope: !864, inlinedAt: !893)
!897 = !DILocation(line: 369, column: 43, scope: !468, inlinedAt: !893)
!898 = !DILocation(line: 369, column: 20, scope: !468, inlinedAt: !893)
!899 = !DILocation(line: 371, column: 16, scope: !865, inlinedAt: !893)
!900 = !DILocation(line: 371, column: 24, scope: !865, inlinedAt: !893)
!901 = !DILocation(line: 371, column: 35, scope: !865, inlinedAt: !893)
!902 = !DILocation(line: 371, column: 48, scope: !865, inlinedAt: !893)
!903 = !DILocation(line: 371, column: 9, scope: !468, inlinedAt: !893)
!904 = !DILocation(line: 373, column: 22, scope: !864, inlinedAt: !893)
!905 = !DILocation(line: 375, column: 36, scope: !864, inlinedAt: !893)
!906 = !DILocation(line: 373, column: 9, scope: !864, inlinedAt: !893)
!907 = !DILocation(line: 376, column: 9, scope: !864, inlinedAt: !893)
!908 = !DILocation(line: 379, column: 9, scope: !885, inlinedAt: !893)
!909 = !DILocation(line: 379, column: 55, scope: !885, inlinedAt: !893)
!910 = !DILocation(line: 401, column: 25, scope: !911)
!911 = distinct !DILexicalBlock(scope: !458, file: !1, line: 401, column: 9)
!912 = !DILocation(line: 399, column: 30, scope: !890)
!913 = !DILocation(line: 379, column: 9, scope: !468, inlinedAt: !893)
!914 = !DILocation(line: 401, column: 14, scope: !911)
!915 = !DILocation(line: 401, column: 18, scope: !911)
!916 = !DILocation(line: 401, column: 9, scope: !458)
!917 = !DILocation(line: 402, column: 22, scope: !918)
!918 = distinct !DILexicalBlock(scope: !911, file: !1, line: 401, column: 30)
!919 = !DILocation(line: 402, column: 9, scope: !918)
!920 = !DILocation(line: 404, column: 9, scope: !918)
!921 = !DILocation(line: 406, column: 11, scope: !458)
!922 = !DILocation(line: 407, column: 10, scope: !923)
!923 = distinct !DILexicalBlock(scope: !458, file: !1, line: 407, column: 9)
!924 = !DILocation(line: 407, column: 9, scope: !458)
!925 = !DILocation(line: 410, column: 9, scope: !458)
!926 = !DILocation(line: 390, column: 11, scope: !458)
!927 = !DILocation(line: 389, column: 16, scope: !458)
!928 = !DILocation(line: 411, column: 5, scope: !929)
!929 = distinct !DILexicalBlock(scope: !458, file: !1, line: 411, column: 5)
!930 = !DILocation(line: 412, column: 14, scope: !931)
!931 = distinct !DILexicalBlock(scope: !929, file: !1, line: 411, column: 5)
!932 = !DILocation(line: 412, column: 9, scope: !931)
!933 = !DILocation(line: 413, column: 26, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !1, line: 413, column: 5)
!935 = distinct !DILexicalBlock(scope: !458, file: !1, line: 413, column: 5)
!936 = !DILocation(line: 413, column: 19, scope: !934)
!937 = !DILocation(line: 413, column: 5, scope: !935)
!938 = !DILocation(line: 414, column: 58, scope: !939)
!939 = distinct !DILexicalBlock(scope: !934, file: !1, line: 413, column: 36)
!940 = !DILocation(line: 414, column: 34, scope: !939)
!941 = !{!847, !540, i64 0}
!942 = !DILocation(line: 414, column: 45, scope: !939)
!943 = !DILocation(line: 414, column: 11, scope: !939)
!944 = !DILocation(line: 414, column: 9, scope: !939)
!945 = !DILocation(line: 414, column: 43, scope: !939)
!946 = !DILocation(line: 413, column: 32, scope: !934)
!947 = !DILocation(line: 418, column: 14, scope: !948)
!948 = distinct !DILexicalBlock(scope: !458, file: !1, line: 418, column: 9)
!949 = !DILocation(line: 418, column: 18, scope: !948)
!950 = !DILocation(line: 418, column: 9, scope: !458)
!951 = !DILocation(line: 419, column: 9, scope: !948)
!952 = !DILocation(line: 420, column: 13, scope: !953)
!953 = distinct !DILexicalBlock(scope: !458, file: !1, line: 420, column: 9)
!954 = !DILocation(line: 420, column: 17, scope: !953)
!955 = !DILocation(line: 420, column: 9, scope: !458)
!956 = !DILocation(line: 421, column: 9, scope: !953)
!957 = !DILocation(line: 423, column: 1, scope: !458)
